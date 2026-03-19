.include "macros.inc"
.file "unit_boss_cortez_rapier.o"

# 0x00005080..0x00005140 | size: 0xC0
.rodata
.balign 8

# .rodata:0x0 | 0x5080 | size: 0x15
.obj str_btl_un_cortez_rapier_muj_00012d30, local
	.string "btl_un_cortez_rapier"
.endobj str_btl_un_cortez_rapier_muj_00012d30

# .rodata:0x15 | 0x5095 | size: 0x3
.obj gap_03_00005095_rodata, global
.hidden gap_03_00005095_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005095_rodata

# .rodata:0x18 | 0x5098 | size: 0x16
.obj str_SFX_BOSS_KOR_DAMAGED_muj_00012d48, local
	.string "SFX_BOSS_KOR_DAMAGED1"
.endobj str_SFX_BOSS_KOR_DAMAGED_muj_00012d48

# .rodata:0x2E | 0x50AE | size: 0x2
.obj gap_03_000050AE_rodata, global
.hidden gap_03_000050AE_rodata
	.2byte 0x0000
.endobj gap_03_000050AE_rodata

# .rodata:0x30 | 0x50B0 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_muj_00012d60, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_muj_00012d60

# .rodata:0x45 | 0x50C5 | size: 0x3
.obj gap_03_000050C5_rodata, global
.hidden gap_03_000050C5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000050C5_rodata

# .rodata:0x48 | 0x50C8 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_muj_00012d78, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_muj_00012d78

# .rodata:0x5C | 0x50DC | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_muj_00012d8c, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_muj_00012d8c

# .rodata:0x75 | 0x50F5 | size: 0x3
.obj gap_03_000050F5_rodata, global
.hidden gap_03_000050F5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000050F5_rodata

# .rodata:0x78 | 0x50F8 | size: 0x8
.obj str_KRT_Z_1_muj_00012da8, local
	.string "KRT_Z_1"
.endobj str_KRT_Z_1_muj_00012da8

# .rodata:0x80 | 0x5100 | size: 0x8
.obj str_KRT_S_1_muj_00012db0, local
	.string "KRT_S_1"
.endobj str_KRT_S_1_muj_00012db0

# .rodata:0x88 | 0x5108 | size: 0x8
.obj str_c_buki3_muj_00012db8, local
	.string "c_buki3"
.endobj str_c_buki3_muj_00012db8

# .rodata:0x90 | 0x5110 | size: 0x1
.obj zero_muj_00012dc0, local
	.byte 0x00
.endobj zero_muj_00012dc0

# .rodata:0x91 | 0x5111 | size: 0x3
.obj gap_03_00005111_rodata, global
.hidden gap_03_00005111_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005111_rodata

# .rodata:0x94 | 0x5114 | size: 0xB
.obj str_toge_flush_muj_00012dc4, local
	.string "toge_flush"
.endobj str_toge_flush_muj_00012dc4

# .rodata:0x9F | 0x511F | size: 0x1
.obj gap_03_0000511F_rodata, global
.hidden gap_03_0000511F_rodata
	.byte 0x00
.endobj gap_03_0000511F_rodata

# .rodata:0xA0 | 0x5120 | size: 0x1A
.obj str_SFX_BOSS_KOR_SWORD_D_muj_00012dd0, local
	.string "SFX_BOSS_KOR_SWORD_DANCE2"
.endobj str_SFX_BOSS_KOR_SWORD_D_muj_00012dd0

# .rodata:0xBA | 0x513A | size: 0x6
.obj gap_03_0000513A_rodata, global
.hidden gap_03_0000513A_rodata
	.4byte 0x00000000
	.2byte 0x0000
.endobj gap_03_0000513A_rodata

# 0x0002AD78..0x0002BB18 | size: 0xDA0
.data
.balign 8

# .data:0x0 | 0x2AD78 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x2AD80 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x2AD84 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x2AD88 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x2AD8C | size: 0x4
.obj gap_04_0002AD8C_data, global
.hidden gap_04_0002AD8C_data
	.4byte 0x00000000
.endobj gap_04_0002AD8C_data

# .data:0x18 | 0x2AD90 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x2AD98 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x2AD9C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x2ADA0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x2ADA8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x2ADAC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x2ADB0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x2ADB4 | size: 0x4
.obj gap_04_0002ADB4_data, global
.hidden gap_04_0002ADB4_data
	.4byte 0x00000000
.endobj gap_04_0002ADB4_data

# .data:0x40 | 0x2ADB8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x2ADC0 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x2ADC4 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x2ADC8 | size: 0xC4
.obj unit_boss_cortez_rapier_19_data_2ADC8, global
	.4byte 0x00000060
	.4byte str_btl_un_cortez_rapier_muj_00012d30
	.4byte 0x00040000
	.4byte 0x01010000
	.4byte 0x00640032
	.4byte 0x0014008C
	.4byte 0x001E0000
	.4byte 0x001E0000
	.4byte 0x00000000
	.4byte 0x41700000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x428C0000
	.4byte 0x419C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41700000
	.4byte 0x00000000
	.4byte 0x430C0000
	.4byte 0x41F00000
	.4byte 0x0000FF00
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KOR_DAMAGED_muj_00012d48
	.4byte str_SFX_BTL_DAMAGE_FIRE1_muj_00012d60
	.4byte str_SFX_BTL_DAMAGE_ICE1_muj_00012d78
	.4byte str_SFX_BTL_DAMAGE_BIRIB_muj_00012d8c
	.4byte 0x02000004
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_boss_cortez_rapier_19_data_2ADC8

# .data:0x114 | 0x2AE8C | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x2AE91 | size: 0x3
.obj gap_04_0002AE91_data, global
.hidden gap_04_0002AE91_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0002AE91_data

# .data:0x11C | 0x2AE94 | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x2AE99 | size: 0x3
.obj gap_04_0002AE99_data, global
.hidden gap_04_0002AE99_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0002AE99_data

# .data:0x124 | 0x2AE9C | size: 0x16
.obj regist, local
	.4byte 0x00505F64
	.4byte 0x5A646455
	.4byte 0x00006400
	.4byte 0x645A3200
	.4byte 0x5A643200
	.2byte 0x0000
.endobj regist

# .data:0x13A | 0x2AEB2 | size: 0x2
.obj gap_04_0002AEB2_data, global
.hidden gap_04_0002AEB2_data
	.2byte 0x0000
.endobj gap_04_0002AEB2_data

# .data:0x13C | 0x2AEB4 | size: 0xC0
.obj weapon_cortez_rapier_float_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000002
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
	.4byte 0x02101260
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x000000C7
	.4byte 0x000007FF
	.4byte 0x00000004
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
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_cortez_rapier_float_attack

# .data:0x1FC | 0x2AF74 | size: 0x30
.obj pose_table, local
	.4byte 0x00000002
	.4byte str_KRT_Z_1_muj_00012da8
	.4byte 0x00000009
	.4byte str_KRT_Z_1_muj_00012da8
	.4byte 0x0000001C
	.4byte str_KRT_S_1_muj_00012db0
	.4byte 0x0000001F
	.4byte str_KRT_S_1_muj_00012db0
	.4byte 0x00000027
	.4byte str_KRT_S_1_muj_00012db0
	.4byte 0x00000045
	.4byte str_KRT_S_1_muj_00012db0
.endobj pose_table

# .data:0x22C | 0x2AFA4 | size: 0xA8
.obj data_table, local
	.4byte 0x00000009
	.4byte cortez_damage_sub_event
	.4byte 0x00000031
	.4byte cortez_weapon_dead_event_19_data_29EA4
	.4byte 0x00000047
	.4byte cortez_weapon_break_event_19_data_2A034
	.4byte 0x0000003A
	.4byte cortez_weapon_blow_dead_event_19_data_2A194
	.4byte 0x00000024
	.4byte cortez_weapon_counter_damage_event_19_data_29CD8
	.4byte 0x00000018
	.4byte cortez_weapon_counter_damage_event_19_data_29CD8
	.4byte 0x00000019
	.4byte cortez_weapon_counter_damage_event_19_data_29CD8
	.4byte 0x0000001A
	.4byte cortez_weapon_counter_damage_event_19_data_29CD8
	.4byte 0x0000001B
	.4byte cortez_weapon_counter_damage_event_19_data_29CD8
	.4byte 0x0000001C
	.4byte cortez_weapon_counter_damage_event_19_data_29CD8
	.4byte 0x0000001D
	.4byte cortez_weapon_counter_damage_event_19_data_29CD8
	.4byte 0x0000001E
	.4byte cortez_weapon_counter_damage_event_19_data_29CD8
	.4byte 0x0000001F
	.4byte cortez_weapon_counter_damage_event_19_data_29CD8
	.4byte 0x00000020
	.4byte cortez_weapon_counter_damage_event_19_data_29CD8
	.4byte 0x00000021
	.4byte cortez_weapon_counter_damage_event_19_data_29CD8
	.4byte 0x00000022
	.4byte cortez_weapon_counter_damage_event_19_data_29CD8
	.4byte 0x00000023
	.4byte cortez_weapon_counter_damage_event_19_data_29CD8
	.4byte 0x00000027
	.4byte avoid_thorn_event
	.4byte 0x00000025
	.4byte avoid_thorn_event
	.4byte 0x00000026
	.4byte avoid_thorn_event
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x2D4 | 0x2B04C | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_cortez_rapier_muj_00012d30
	.4byte str_c_buki3_muj_00012db8
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
	.4byte 0x03010009
	.4byte 0x00000006
	.4byte pose_table
.endobj parts

# .data:0x320 | 0x2B098 | size: 0xBC
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
	.4byte btlevtcmd_SetEventPhase
	.4byte 0xFFFFFFFE
	.4byte cortez_weapon_phase_event_19_data_28D08
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventUnisonPhase
	.4byte 0xFFFFFFFE
	.4byte cortez_weapon_unison_phase_event_19_data_28BCC
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventAttack
	.4byte 0xFFFFFFFE
	.4byte attack_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventDamage
	.4byte 0xFFFFFFFE
	.4byte damage_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventConfusion
	.4byte 0xFFFFFFFE
	.4byte btldefaultevt_Confuse
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
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

# .data:0x3DC | 0x2B154 | size: 0x28
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

# .data:0x404 | 0x2B17C | size: 0x84
.obj avoid_thorn_event, local
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_muj_00012dc0
	.4byte str_toge_flush_muj_00012dc4
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj avoid_thorn_event

# .data:0x488 | 0x2B200 | size: 0x8
.obj phase_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0x490 | 0x2B208 | size: 0x884
.obj attack_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte weapon_cortez_rapier_float_attack
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C8C
	.4byte 0x0003005B
	.4byte btlevtcmd_GetSelectEnemy
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte 0xFE363C8C
	.4byte 0x0002005B
	.4byte btlevtcmd_AttackDeclareAll
	.4byte 0xFFFFFFFE
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitGuardMove
	.4byte 0x0003005B
	.4byte btlevtcmd_PayWeaponCost
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8C
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeWaitPlayLoopTiming
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRT_Z_1_muj_00012da8
	.4byte 0x0000006E
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotateOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x0000000D
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFF790
	.4byte 0x0000003C
	.4byte 0x00010005
	.4byte 0x0000003C
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000070
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_TransStageFloorPosition
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KOR_SWORD_D_muj_00012dd0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C89
	.4byte 0x0001006F
	.4byte 0xFE363C8D
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x00000005
	.4byte 0x00010005
	.4byte 0xFE363C85
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_snd_sfx_pos
	.4byte 0xFE363C89
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x00000005
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0001006F
	.4byte 0xFE363C8E
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotateOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x0000000D
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x00000005
	.4byte 0x00010005
	.4byte 0xFE363C85
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0x00000076
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00020038
	.4byte 0xFE363C81
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x00000005
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0001006F
	.4byte 0xFE363C8F
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetStageSize
	.4byte 0xFE363C85
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C85
	.4byte 0x0007005B
	.4byte btlevtcmd_GetMoveFrame
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A9680
	.4byte 0xFE363C8E
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000070
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C81
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFE363C83
	.4byte 0xFE363C81
	.4byte 0x00000028
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000010
	.4byte 0xFE363C82
	.4byte 0x0002001D
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8C
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00010022
	.4byte 0xFE363C85
	.4byte 0x0001002B
	.4byte 0x00000004
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x0000002E
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000026
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000027
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000028
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000005B
	.4byte 0x0000002A
	.4byte 0x00010004
	.4byte 0x00000061
	.4byte 0x00000031
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x00010004
	.4byte 0x00000061
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C8C
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8C
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000015
	.4byte 0x0001005F
	.4byte 0xFE363C8D
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C89
	.4byte 0x0001005F
	.4byte 0xFE363C8E
	.4byte 0x0001005F
	.4byte 0xFE363C8F
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000000F
	.4byte 0x0000006E
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0xFFFFFFE2
	.4byte 0x00000014
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x00010005
	.4byte 0x00000015
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000015
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0000006E
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x00000004
	.4byte 0xFFFFFFE2
	.4byte 0x00000000
	.4byte 0x00000014
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x00010005
	.4byte 0x00000015
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000061
	.4byte 0x0003005B
	.4byte btlevtcmd_GetSelectNextEnemy
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_WaitEventEnd
	.4byte 0xFE363C8F
	.4byte 0x0001005F
	.4byte 0xFE363C8E
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_GetStageSize
	.4byte 0xFE363C80
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte btlevtcmd_GetMoveFrame
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A9280
	.4byte 0xFE363C8E
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0001005F
	.4byte 0xFE363C8D
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C89
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0xD14 | 0x2BA8C | size: 0x28
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeWaitPlayLoopTiming
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0xD3C | 0x2BAB4 | size: 0x64
.obj cortez_damage_sub_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_GetDamage
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_GetDamagePartsId
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8B
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte str_KRT_Z_1_muj_00012da8
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x00000002
	.4byte 0x00000001
.endobj cortez_damage_sub_event
