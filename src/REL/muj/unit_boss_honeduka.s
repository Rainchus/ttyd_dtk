.include "macros.inc"
.file "unit_boss_honeduka.o"

# 0x00004E08..0x00004E90 | size: 0x88
.rodata
.balign 8

# .rodata:0x0 | 0x4E08 | size: 0x10
.obj str_btl_un_honeduka_muj_00012ab8, local
	.string "btl_un_honeduka"
.endobj str_btl_un_honeduka_muj_00012ab8

# .rodata:0x10 | 0x4E18 | size: 0x16
.obj str_SFX_BOSS_KOR_DAMAGED_muj_00012ac8, local
	.string "SFX_BOSS_KOR_DAMAGED1"
.endobj str_SFX_BOSS_KOR_DAMAGED_muj_00012ac8

# .rodata:0x26 | 0x4E2E | size: 0x2
.obj gap_03_00004E2E_rodata, global
.hidden gap_03_00004E2E_rodata
	.2byte 0x0000
.endobj gap_03_00004E2E_rodata

# .rodata:0x28 | 0x4E30 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_muj_00012ae0, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_muj_00012ae0

# .rodata:0x3D | 0x4E45 | size: 0x3
.obj gap_03_00004E45_rodata, global
.hidden gap_03_00004E45_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004E45_rodata

# .rodata:0x40 | 0x4E48 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_muj_00012af8, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_muj_00012af8

# .rodata:0x54 | 0x4E5C | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_muj_00012b0c, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_muj_00012b0c

# .rodata:0x6D | 0x4E75 | size: 0x3
.obj gap_03_00004E75_rodata, global
.hidden gap_03_00004E75_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004E75_rodata

# .rodata:0x70 | 0x4E78 | size: 0x8
.obj str_KRT_Z_1_muj_00012b28, local
	.string "KRT_Z_1"
.endobj str_KRT_Z_1_muj_00012b28

# .rodata:0x78 | 0x4E80 | size: 0xB
.obj str_c_honezuka_muj_00012b30, local
	.string "c_honezuka"
.endobj str_c_honezuka_muj_00012b30

# .rodata:0x83 | 0x4E8B | size: 0x5
.obj gap_03_00004E8B_rodata, global
.hidden gap_03_00004E8B_rodata
	.4byte 0x00000000
	.byte 0x00
.endobj gap_03_00004E8B_rodata

# 0x000281D0..0x00028458 | size: 0x288
.data
.balign 8

# .data:0x0 | 0x281D0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x281D8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x281DC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x281E0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x281E4 | size: 0x4
.obj gap_04_000281E4_data, global
.hidden gap_04_000281E4_data
	.4byte 0x00000000
.endobj gap_04_000281E4_data

# .data:0x18 | 0x281E8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x281F0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x281F4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x281F8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x28200 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x28204 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x28208 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x2820C | size: 0x4
.obj gap_04_0002820C_data, global
.hidden gap_04_0002820C_data
	.4byte 0x00000000
.endobj gap_04_0002820C_data

# .data:0x40 | 0x28210 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x28218 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x2821C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x28220 | size: 0xC4
.obj unit_boss_honeduka, local
	.4byte 0x0000005E
	.4byte str_btl_un_honeduka_muj_00012ab8
	.4byte 0x00640000
	.4byte 0x01010000
	.4byte 0x00640032
	.4byte 0x00090064
	.4byte 0x00640000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42480000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42480000
	.4byte 0x42820000
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
	.4byte str_SFX_BOSS_KOR_DAMAGED_muj_00012ac8
	.4byte str_SFX_BTL_DAMAGE_FIRE1_muj_00012ae0
	.4byte str_SFX_BTL_DAMAGE_ICE1_muj_00012af8
	.4byte str_SFX_BTL_DAMAGE_BIRIB_muj_00012b0c
	.4byte 0x52200000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_boss_honeduka

# .data:0x114 | 0x282E4 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x282E9 | size: 0x3
.obj gap_04_000282E9_data, global
.hidden gap_04_000282E9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_000282E9_data

# .data:0x11C | 0x282EC | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x282F1 | size: 0x3
.obj gap_04_000282F1_data, global
.hidden gap_04_000282F1_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_000282F1_data

# .data:0x124 | 0x282F4 | size: 0x16
.obj regist, local
	.4byte 0x00500064
	.4byte 0x00646432
	.4byte 0x00006400
	.4byte 0x64283200
	.4byte 0x00643200
	.2byte 0x0000
.endobj regist

# .data:0x13A | 0x2830A | size: 0x2
.obj gap_04_0002830A_data, global
.hidden gap_04_0002830A_data
	.2byte 0x0000
.endobj gap_04_0002830A_data

# .data:0x13C | 0x2830C | size: 0x20
.obj pose_table, local
	.4byte 0x0000001C
	.4byte str_KRT_Z_1_muj_00012b28
	.4byte 0x0000001F
	.4byte str_KRT_Z_1_muj_00012b28
	.4byte 0x00000027
	.4byte str_KRT_Z_1_muj_00012b28
	.4byte 0x00000045
	.4byte str_KRT_Z_1_muj_00012b28
.endobj pose_table

# .data:0x15C | 0x2832C | size: 0x10
.obj data_table, local
	.4byte 0x00000009
	.4byte honeduka_damage_sub_event
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x16C | 0x2833C | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_honeduka_muj_00012ab8
	.4byte str_c_honezuka_muj_00012b30
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
	.4byte 0x02090009
	.4byte 0x00000000
	.4byte pose_table
.endobj parts

# .data:0x1B8 | 0x28388 | size: 0x54
.obj init_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_OnUnitFlag
	.4byte 0xFFFFFFFE
	.4byte 0x01000000
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventWait
	.4byte 0xFFFFFFFE
	.4byte wait_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventDamage
	.4byte 0xFFFFFFFE
	.4byte damage_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMaxMoveCount
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x20C | 0x283DC | size: 0x28
.obj damage_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte btldefaultevt_Damage
	.4byte 0x00000002
	.4byte 0x00000001
.endobj damage_event

# .data:0x234 | 0x28404 | size: 0x38
.obj honeduka_damage_sub_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte btlevtcmd_RunDataEventChild
	.4byte 0xFE363C83
	.4byte 0x00000047
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj honeduka_damage_sub_event

# .data:0x26C | 0x2843C | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x284 | 0x28454 | size: 0x4
.obj gap_04_00028454_data, global
.hidden gap_04_00028454_data
	.4byte 0x00000000
.endobj gap_04_00028454_data
