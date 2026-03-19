.include "macros.inc"
.file "unit_npc_christine.o"

# 0x0000B930..0x0000B9B0 | size: 0x80
.rodata
.balign 8

# .rodata:0x0 | 0xB930 | size: 0x11
.obj str_btl_un_christine_gor_0001f430, local
	.string "btl_un_christine"
.endobj str_btl_un_christine_gor_0001f430

# .rodata:0x11 | 0xB941 | size: 0x3
.obj gap_03_0000B941_rodata, global
.hidden gap_03_0000B941_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000B941_rodata

# .rodata:0x14 | 0xB944 | size: 0x10
.obj str_SFX_BTL_DAMAGE1_gor_0001f444, local
	.string "SFX_BTL_DAMAGE1"
.endobj str_SFX_BTL_DAMAGE1_gor_0001f444

# .rodata:0x24 | 0xB954 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_gor_0001f454, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_gor_0001f454

# .rodata:0x39 | 0xB969 | size: 0x3
.obj gap_03_0000B969_rodata, global
.hidden gap_03_0000B969_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000B969_rodata

# .rodata:0x3C | 0xB96C | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_gor_0001f46c, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_gor_0001f46c

# .rodata:0x50 | 0xB980 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_gor_0001f480, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_gor_0001f480

# .rodata:0x69 | 0xB999 | size: 0x3
.obj gap_03_0000B999_rodata, global
.hidden gap_03_0000B999_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000B999_rodata

# .rodata:0x6C | 0xB99C | size: 0x8
.obj str_PKR_S_1_gor_0001f49c, local
	.string "PKR_S_1"
.endobj str_PKR_S_1_gor_0001f49c

# .rodata:0x74 | 0xB9A4 | size: 0x6
.obj str_c_pkr_gor_0001f4a4, local
	.string "c_pkr"
.endobj str_c_pkr_gor_0001f4a4

# .rodata:0x7A | 0xB9AA | size: 0x6
.obj gap_03_0000B9AA_rodata, global
.hidden gap_03_0000B9AA_rodata
	.4byte 0x00000000
	.2byte 0x0000
.endobj gap_03_0000B9AA_rodata

# 0x00046CA0..0x00046F10 | size: 0x270
.data
.balign 8

# .data:0x0 | 0x46CA0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x46CA8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x46CAC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x46CB0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x46CB4 | size: 0x4
.obj gap_04_00046CB4_data, global
.hidden gap_04_00046CB4_data
	.4byte 0x00000000
.endobj gap_04_00046CB4_data

# .data:0x18 | 0x46CB8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x46CC0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x46CC4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x46CC8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x46CD0 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x46CD4 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x46CD8 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x46CDC | size: 0x4
.obj gap_04_00046CDC_data, global
.hidden gap_04_00046CDC_data
	.4byte 0x00000000
.endobj gap_04_00046CDC_data

# .data:0x40 | 0x46CE0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x46CE8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x46CEC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x46CF0 | size: 0xC4
.obj unit_npc_christine_9_data_46CF0, global
	.4byte 0x000000DD
	.4byte str_btl_un_christine_gor_0001f430
	.4byte 0x000A0000
	.4byte 0x01010100
	.4byte 0x00000064
	.4byte 0x00090018
	.4byte 0x00180000
	.4byte 0x00140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41400000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41400000
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
	.4byte str_SFX_BTL_DAMAGE1_gor_0001f444
	.4byte str_SFX_BTL_DAMAGE_FIRE1_gor_0001f454
	.4byte str_SFX_BTL_DAMAGE_ICE1_gor_0001f46c
	.4byte str_SFX_BTL_DAMAGE_BIRIB_gor_0001f480
	.4byte 0x12000000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_npc_christine_9_data_46CF0

# .data:0x114 | 0x46DB4 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x46DB9 | size: 0x3
.obj gap_04_00046DB9_data, global
.hidden gap_04_00046DB9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00046DB9_data

# .data:0x11C | 0x46DBC | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x46DC1 | size: 0x3
.obj gap_04_00046DC1_data, global
.hidden gap_04_00046DC1_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00046DC1_data

# .data:0x124 | 0x46DC4 | size: 0x16
.obj regist, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.2byte 0x0000
.endobj regist

# .data:0x13A | 0x46DDA | size: 0x2
.obj gap_04_00046DDA_data, global
.hidden gap_04_00046DDA_data
	.2byte 0x0000
.endobj gap_04_00046DDA_data

# .data:0x13C | 0x46DDC | size: 0x20
.obj pose_table, local
	.4byte 0x0000001C
	.4byte str_PKR_S_1_gor_0001f49c
	.4byte 0x0000001F
	.4byte str_PKR_S_1_gor_0001f49c
	.4byte 0x00000027
	.4byte str_PKR_S_1_gor_0001f49c
	.4byte 0x00000045
	.4byte str_PKR_S_1_gor_0001f49c
.endobj pose_table

# .data:0x15C | 0x46DFC | size: 0x8
.obj data_table, local
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x164 | 0x46E04 | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_christine_gor_0001f430
	.4byte str_c_pkr_gor_0001f4a4
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
	.4byte 0x00090009
	.4byte 0x00000000
	.4byte pose_table
.endobj parts

# .data:0x1B0 | 0x46E50 | size: 0x64
.obj init_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventWait
	.4byte 0xFFFFFFFE
	.4byte wait_event
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

# .data:0x214 | 0x46EB4 | size: 0x28
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

# .data:0x23C | 0x46EDC | size: 0x8
.obj phase_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0x244 | 0x46EE4 | size: 0x14
.obj attack_event, local
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x258 | 0x46EF8 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event
