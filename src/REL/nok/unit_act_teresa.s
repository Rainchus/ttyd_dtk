.include "macros.inc"
.file "unit_act_teresa.o"

# 0x00001BE0..0x00001C80 | size: 0xA0
.rodata
.balign 8

# .rodata:0x0 | 0x1BE0 | size: 0x12
.obj str_btl_un_act_teresa_nok_00002640, local
	.string "btl_un_act_teresa"
.endobj str_btl_un_act_teresa_nok_00002640

# .rodata:0x12 | 0x1BF2 | size: 0x2
.obj gap_03_00001BF2_rodata, global
.hidden gap_03_00001BF2_rodata
	.2byte 0x0000
.endobj gap_03_00001BF2_rodata

# .rodata:0x14 | 0x1BF4 | size: 0x10
.obj str_SFX_BTL_DAMAGE1_nok_00002654, local
	.string "SFX_BTL_DAMAGE1"
.endobj str_SFX_BTL_DAMAGE1_nok_00002654

# .rodata:0x24 | 0x1C04 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_nok_00002664, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_nok_00002664

# .rodata:0x39 | 0x1C19 | size: 0x3
.obj gap_03_00001C19_rodata, global
.hidden gap_03_00001C19_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001C19_rodata

# .rodata:0x3C | 0x1C1C | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_nok_0000267c, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_nok_0000267c

# .rodata:0x50 | 0x1C30 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_nok_00002690, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_nok_00002690

# .rodata:0x69 | 0x1C49 | size: 0x3
.obj gap_03_00001C49_rodata, global
.hidden gap_03_00001C49_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001C49_rodata

# .rodata:0x6C | 0x1C4C | size: 0x4
.obj str_S_1_nok_000026ac, local
	.string "S_1"
.endobj str_S_1_nok_000026ac

# .rodata:0x70 | 0x1C50 | size: 0x4
.obj str_A_2_nok_000026b0, local
	.string "A_2"
.endobj str_A_2_nok_000026b0

# .rodata:0x74 | 0x1C54 | size: 0x4
.obj str_D_1_nok_000026b4, local
	.string "D_1"
.endobj str_D_1_nok_000026b4

# .rodata:0x78 | 0x1C58 | size: 0x4
.obj str_W_1_nok_000026b8, local
	.string "W_1"
.endobj str_W_1_nok_000026b8

# .rodata:0x7C | 0x1C5C | size: 0x4
.obj str_R_1_nok_000026bc, local
	.string "R_1"
.endobj str_R_1_nok_000026bc

# .rodata:0x80 | 0x1C60 | size: 0x4
.obj str_T_1_nok_000026c0, local
	.string "T_1"
.endobj str_T_1_nok_000026c0

# .rodata:0x84 | 0x1C64 | size: 0xE
.obj str_btl_un_teresa_nok_000026c4, local
	.string "btl_un_teresa"
.endobj str_btl_un_teresa_nok_000026c4

# .rodata:0x92 | 0x1C72 | size: 0x2
.obj gap_03_00001C72_rodata, global
.hidden gap_03_00001C72_rodata
	.2byte 0x0000
.endobj gap_03_00001C72_rodata

# .rodata:0x94 | 0x1C74 | size: 0x9
.obj str_c_teresa_nok_000026d4, local
	.string "c_teresa"
.endobj str_c_teresa_nok_000026d4

# .rodata:0x9D | 0x1C7D | size: 0x3
.obj gap_03_00001C7D_rodata, global
.hidden gap_03_00001C7D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001C7D_rodata

# 0x00009830..0x00009A50 | size: 0x220
.data
.balign 8

# .data:0x0 | 0x9830 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x9838 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x983C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x9840 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x9844 | size: 0x4
.obj gap_04_00009844_data, global
.hidden gap_04_00009844_data
	.4byte 0x00000000
.endobj gap_04_00009844_data

# .data:0x18 | 0x9848 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x9850 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x9854 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x9858 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x9860 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x9864 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x9868 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x986C | size: 0x4
.obj gap_04_0000986C_data, global
.hidden gap_04_0000986C_data
	.4byte 0x00000000
.endobj gap_04_0000986C_data

# .data:0x40 | 0x9870 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x9878 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x987C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x9880 | size: 0xC4
.obj unit_act_teresa_20_data_9880, global
	.4byte 0x000000B7
	.4byte str_btl_un_act_teresa_nok_00002640
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
	.4byte str_SFX_BTL_DAMAGE1_nok_00002654
	.4byte str_SFX_BTL_DAMAGE_FIRE1_nok_00002664
	.4byte str_SFX_BTL_DAMAGE_ICE1_nok_0000267c
	.4byte str_SFX_BTL_DAMAGE_BIRIB_nok_00002690
	.4byte 0x00000000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_act_teresa_20_data_9880

# .data:0x114 | 0x9944 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x9949 | size: 0x3
.obj gap_04_00009949_data, global
.hidden gap_04_00009949_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00009949_data

# .data:0x11C | 0x994C | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x9951 | size: 0x3
.obj gap_04_00009951_data, global
.hidden gap_04_00009951_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00009951_data

# .data:0x124 | 0x9954 | size: 0x16
.obj regist, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.2byte 0x0000
.endobj regist

# .data:0x13A | 0x996A | size: 0x2
.obj gap_04_0000996A_data, global
.hidden gap_04_0000996A_data
	.2byte 0x0000
.endobj gap_04_0000996A_data

# .data:0x13C | 0x996C | size: 0x38
.obj pose_table, local
	.4byte 0x0000001C
	.4byte str_S_1_nok_000026ac
	.4byte 0x0000001F
	.4byte str_A_2_nok_000026b0
	.4byte 0x00000027
	.4byte str_D_1_nok_000026b4
	.4byte 0x00000028
	.4byte str_W_1_nok_000026b8
	.4byte 0x0000002A
	.4byte str_R_1_nok_000026bc
	.4byte 0x00000041
	.4byte str_T_1_nok_000026c0
	.4byte 0x00000045
	.4byte str_S_1_nok_000026ac
.endobj pose_table

# .data:0x174 | 0x99A4 | size: 0x8
.obj data_table, local
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x17C | 0x99AC | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_teresa_nok_000026c4
	.4byte str_c_teresa_nok_000026d4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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

# .data:0x1C8 | 0x99F8 | size: 0x24
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

# .data:0x1EC | 0x9A1C | size: 0x8
.obj damage_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj damage_event

# .data:0x1F4 | 0x9A24 | size: 0x8
.obj phase_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0x1FC | 0x9A2C | size: 0x8
.obj attack_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x204 | 0x9A34 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x21C | 0x9A4C | size: 0x4
.obj gap_04_00009A4C_data, global
.hidden gap_04_00009A4C_data
	.4byte 0x00000000
.endobj gap_04_00009A4C_data
