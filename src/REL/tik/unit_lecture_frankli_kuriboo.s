.include "macros.inc"
.file "unit_lecture_frankli_kuriboo.o"

# 0x00007D54..0x00007D9C | size: 0x48
.text
.balign 4

# .text:0x0 | 0x7D54 | size: 0x8
.fn lecture_init, local
/* 00007D54 00007E18  38 60 00 02 */	li r3, 0x2
/* 00007D58 00007E1C  4E 80 00 20 */	blr
.endfn lecture_init

# .text:0x8 | 0x7D5C | size: 0x40
.fn _battle_set_lecture_unit_id, local
/* 00007D5C 00007E20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00007D60 00007E24  7C 08 02 A6 */	mflr r0
/* 00007D64 00007E28  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00007D68 00007E2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 00007D6C 00007E30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 00007D70 00007E34  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 00007D74 00007E38  83 E4 00 00 */	lwz r31, _battleWorkPointer@l(r4)
/* 00007D78 00007E3C  80 85 00 00 */	lwz r4, 0x0(r5)
/* 00007D7C 00007E40  4B FF 83 CD */	bl evtGetValue
/* 00007D80 00007E44  90 7F 04 24 */	stw r3, 0x424(r31)
/* 00007D84 00007E48  38 60 00 02 */	li r3, 0x2
/* 00007D88 00007E4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00007D8C 00007E50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 00007D90 00007E54  7C 08 03 A6 */	mtlr r0
/* 00007D94 00007E58  38 21 00 10 */	addi r1, r1, 0x10
/* 00007D98 00007E5C  4E 80 00 20 */	blr
.endfn _battle_set_lecture_unit_id

# 0x000059C0..0x00005AA8 | size: 0xE8
.rodata
.balign 8

# .rodata:0x0 | 0x59C0 | size: 0xF
.obj str_btl_un_frankli_tik_0000d828, local
	.string "btl_un_frankli"
.endobj str_btl_un_frankli_tik_0000d828

# .rodata:0xF | 0x59CF | size: 0x1
.obj gap_03_000059CF_rodata, global
.hidden gap_03_000059CF_rodata
	.byte 0x00
.endobj gap_03_000059CF_rodata

# .rodata:0x10 | 0x59D0 | size: 0x17
.obj str_SFX_ENM_KURI_DAMAGED_tik_0000d838, local
	.string "SFX_ENM_KURI_DAMAGED11"
.endobj str_SFX_ENM_KURI_DAMAGED_tik_0000d838

# .rodata:0x27 | 0x59E7 | size: 0x1
.obj gap_03_000059E7_rodata, global
.hidden gap_03_000059E7_rodata
	.byte 0x00
.endobj gap_03_000059E7_rodata

# .rodata:0x28 | 0x59E8 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_tik_0000d850, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_tik_0000d850

# .rodata:0x3D | 0x59FD | size: 0x3
.obj gap_03_000059FD_rodata, global
.hidden gap_03_000059FD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000059FD_rodata

# .rodata:0x40 | 0x5A00 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_tik_0000d868, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_tik_0000d868

# .rodata:0x54 | 0x5A14 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_tik_0000d87c, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_tik_0000d87c

# .rodata:0x6D | 0x5A2D | size: 0x3
.obj gap_03_00005A2D_rodata, global
.hidden gap_03_00005A2D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005A2D_rodata

# .rodata:0x70 | 0x5A30 | size: 0x4
.obj str_D_1_tik_0000d898, local
	.string "D_1"
.endobj str_D_1_tik_0000d898

# .rodata:0x74 | 0x5A34 | size: 0x4
.obj str_S_1_tik_0000d89c, local
	.string "S_1"
.endobj str_S_1_tik_0000d89c

# .rodata:0x78 | 0x5A38 | size: 0x4
.obj str_D_2_tik_0000d8a0, local
	.string "D_2"
.endobj str_D_2_tik_0000d8a0

# .rodata:0x7C | 0x5A3C | size: 0x9
.obj str_c_kuri_h_tik_0000d8a4, local
	.string "c_kuri_h"
.endobj str_c_kuri_h_tik_0000d8a4

# .rodata:0x85 | 0x5A45 | size: 0x3
.obj gap_03_00005A45_rodata, global
.hidden gap_03_00005A45_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005A45_rodata

# .rodata:0x88 | 0x5A48 | size: 0x4
.obj str_R_1_tik_0000d8b0, local
	.string "R_1"
.endobj str_R_1_tik_0000d8b0

# .rodata:0x8C | 0x5A4C | size: 0x6
.obj str_M_S_1_tik_0000d8b4, local
	.string "M_S_1"
.endobj str_M_S_1_tik_0000d8b4

# .rodata:0x92 | 0x5A52 | size: 0x2
.obj gap_03_00005A52_rodata, global
.hidden gap_03_00005A52_rodata
	.2byte 0x0000
.endobj gap_03_00005A52_rodata

# .rodata:0x94 | 0x5A54 | size: 0x4
.obj str_T_1_tik_0000d8bc, local
	.string "T_1"
.endobj str_T_1_tik_0000d8bc

# .rodata:0x98 | 0x5A58 | size: 0xD
.obj str_mac_0_092_01_tik_0000d8c0, local
	.string "mac_0_092_01"
.endobj str_mac_0_092_01_tik_0000d8c0

# .rodata:0xA5 | 0x5A65 | size: 0x3
.obj gap_03_00005A65_rodata, global
.hidden gap_03_00005A65_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005A65_rodata

# .rodata:0xA8 | 0x5A68 | size: 0xD
.obj str_mac_0_092_02_tik_0000d8d0, local
	.string "mac_0_092_02"
.endobj str_mac_0_092_02_tik_0000d8d0

# .rodata:0xB5 | 0x5A75 | size: 0x3
.obj gap_03_00005A75_rodata, global
.hidden gap_03_00005A75_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005A75_rodata

# .rodata:0xB8 | 0x5A78 | size: 0xD
.obj str_mac_0_092_03_tik_0000d8e0, local
	.string "mac_0_092_03"
.endobj str_mac_0_092_03_tik_0000d8e0

# .rodata:0xC5 | 0x5A85 | size: 0x3
.obj gap_03_00005A85_rodata, global
.hidden gap_03_00005A85_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005A85_rodata

# .rodata:0xC8 | 0x5A88 | size: 0xD
.obj str_mac_0_092_04_tik_0000d8f0, local
	.string "mac_0_092_04"
.endobj str_mac_0_092_04_tik_0000d8f0

# .rodata:0xD5 | 0x5A95 | size: 0x3
.obj gap_03_00005A95_rodata, global
.hidden gap_03_00005A95_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005A95_rodata

# .rodata:0xD8 | 0x5A98 | size: 0xD
.obj str_mac_0_092_05_tik_0000d900, local
	.string "mac_0_092_05"
.endobj str_mac_0_092_05_tik_0000d900

# .rodata:0xE5 | 0x5AA5 | size: 0x3
.obj gap_03_00005AA5_rodata, global
.hidden gap_03_00005AA5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005AA5_rodata

# 0x0002FF10..0x000304D0 | size: 0x5C0
.data
.balign 8

# .data:0x0 | 0x2FF10 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x2FF18 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x2FF1C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x2FF20 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x2FF24 | size: 0x4
.obj gap_04_0002FF24_data, global
.hidden gap_04_0002FF24_data
	.4byte 0x00000000
.endobj gap_04_0002FF24_data

# .data:0x18 | 0x2FF28 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x2FF30 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x2FF34 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x2FF38 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x2FF40 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x2FF44 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x2FF48 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x2FF4C | size: 0x4
.obj gap_04_0002FF4C_data, global
.hidden gap_04_0002FF4C_data
	.4byte 0x00000000
.endobj gap_04_0002FF4C_data

# .data:0x40 | 0x2FF50 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x2FF58 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x2FF5C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x2FF60 | size: 0xC4
.obj unit_lecture_frankli_kuriboo_24_data_2FF60, global
	.4byte 0x000000B4
	.4byte str_btl_un_frankli_tik_0000d828
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
	.4byte str_SFX_ENM_KURI_DAMAGED_tik_0000d838
	.4byte str_SFX_BTL_DAMAGE_FIRE1_tik_0000d850
	.4byte str_SFX_BTL_DAMAGE_ICE1_tik_0000d868
	.4byte str_SFX_BTL_DAMAGE_BIRIB_tik_0000d87c
	.4byte 0x12000000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_lecture_frankli_kuriboo_24_data_2FF60

# .data:0x114 | 0x30024 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x30029 | size: 0x3
.obj gap_04_00030029_data, global
.hidden gap_04_00030029_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00030029_data

# .data:0x11C | 0x3002C | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x30031 | size: 0x3
.obj gap_04_00030031_data, global
.hidden gap_04_00030031_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00030031_data

# .data:0x124 | 0x30034 | size: 0x16
.obj regist, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.2byte 0x0000
.endobj regist

# .data:0x13A | 0x3004A | size: 0x2
.obj gap_04_0003004A_data, global
.hidden gap_04_0003004A_data
	.2byte 0x0000
.endobj gap_04_0003004A_data

# .data:0x13C | 0x3004C | size: 0x28
.obj pose_table, local
	.4byte 0x0000001B
	.4byte str_D_1_tik_0000d898
	.4byte 0x0000001C
	.4byte str_S_1_tik_0000d89c
	.4byte 0x0000001F
	.4byte str_D_2_tik_0000d8a0
	.4byte 0x00000027
	.4byte str_D_2_tik_0000d8a0
	.4byte 0x00000045
	.4byte str_S_1_tik_0000d89c
.endobj pose_table

# .data:0x164 | 0x30074 | size: 0x8
.obj data_table, local
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x16C | 0x3007C | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_frankli_tik_0000d828
	.4byte str_c_kuri_h_tik_0000d8a4
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
	.4byte 0x00890009
	.4byte 0x00000000
	.4byte pose_table
.endobj parts

# .data:0x1B8 | 0x300C8 | size: 0xD4
.obj init_event, local
	.4byte 0x0001005B
	.4byte lecture_init
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventWait
	.4byte 0xFFFFFFFE
	.4byte wait_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventEntry
	.4byte 0xFFFFFFFE
	.4byte entry_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventPhase
	.4byte 0xFFFFFFFE
	.4byte phase_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventDamage
	.4byte 0xFFFFFFFE
	.4byte damage_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventConfusion
	.4byte 0xFFFFFFFE
	.4byte btldefaultevt_Confuse
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitId
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte _battle_set_lecture_unit_id
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
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

# .data:0x28C | 0x3019C | size: 0x74
.obj entry_event, local
	.4byte 0x0001000A
	.4byte 0x00000384
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFF06
	.4byte 0x00000000
	.4byte 0xFFFFFFE2
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_R_1_tik_0000d8b0
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFC4
	.4byte 0x00000000
	.4byte 0xFFFFFFE2
	.4byte 0x0000002D
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_tik_0000d89c
	.4byte 0x00000002
	.4byte 0x00000001
.endobj entry_event

# .data:0x300 | 0x30210 | size: 0x280
.obj phase_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_CheckPhase
	.4byte 0xFE363C80
	.4byte 0x04000001
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_get_turn
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte btlevtcmd_StopWaitEvent
	.4byte 0xFFFFFFFD
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFD
	.4byte 0x00000001
	.4byte str_M_S_1_tik_0000d8b4
	.4byte 0x0003005B
	.4byte btlevtcmd_SetTalkPose
	.4byte 0xFFFFFFFE
	.4byte str_T_1_tik_0000d8bc
	.4byte 0x0003005B
	.4byte btlevtcmd_SetStayPose
	.4byte 0xFFFFFFFE
	.4byte str_S_1_tik_0000d89c
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_mac_0_092_01_tik_0000d8c0
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0x00000047
	.4byte 0x00000031
	.4byte 0x000000D5
	.4byte 0x00000047
	.4byte 0x00000023
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_mac_0_092_02_tik_0000d8d0
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0x0000006F
	.4byte 0x00000055
	.4byte 0x000000D5
	.4byte 0x0000006F
	.4byte 0x00000047
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_mac_0_092_03_tik_0000d8e0
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_mac_0_092_04_tik_0000d8f0
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0xFFFFFFC4
	.4byte 0x00000052
	.4byte 0x00000154
	.4byte 0xFFFFFFC4
	.4byte 0x0000003C
	.4byte 0x0000000D
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_mac_0_092_05_tik_0000d900
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0x580 | 0x30490 | size: 0x28
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

# .data:0x5A8 | 0x304B8 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event
