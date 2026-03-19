.include "macros.inc"
.file "unit_jyugem.o"

# 0x00001530..0x000015D0 | size: 0xA0
.text
.balign 4

# .text:0x0 | 0x1530 | size: 0xA0
.fn togezo_copy_status, local
/* 00001530 000015F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00001534 000015F8  7C 08 02 A6 */	mflr r0
/* 00001538 000015FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 0000153C 00001600  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 00001540 00001604  7C 7D 1B 78 */	mr r29, r3
/* 00001544 00001608  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00001548 0000160C  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 0000154C 00001610  4B FF F5 25 */	bl evtGetValue
/* 00001550 00001614  7C 64 1B 78 */	mr r4, r3
/* 00001554 00001618  7F A3 EB 78 */	mr r3, r29
/* 00001558 0000161C  4B FF F5 19 */	bl BattleTransID
/* 0000155C 00001620  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00001560 00001624  7C 7F 1B 78 */	mr r31, r3
/* 00001564 00001628  7F A3 EB 78 */	mr r3, r29
/* 00001568 0000162C  4B FF F5 09 */	bl evtGetValue
/* 0000156C 00001630  7C 64 1B 78 */	mr r4, r3
/* 00001570 00001634  7F A3 EB 78 */	mr r3, r29
/* 00001574 00001638  4B FF F4 FD */	bl BattleTransID
/* 00001578 0000163C  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0000157C 00001640  7C 7E 1B 78 */	mr r30, r3
/* 00001580 00001644  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00001584 00001648  80 05 00 00 */	lwz r0, 0x0(r5)
/* 00001588 0000164C  7F E4 FB 78 */	mr r4, r31
/* 0000158C 00001650  7C 1D 03 78 */	mr r29, r0
/* 00001590 00001654  7C 03 03 78 */	mr r3, r0
/* 00001594 00001658  4B FF F4 DD */	bl BattleGetUnitPtr
/* 00001598 0000165C  7C 7F 1B 78 */	mr r31, r3
/* 0000159C 00001660  7F A3 EB 78 */	mr r3, r29
/* 000015A0 00001664  7F C4 F3 78 */	mr r4, r30
/* 000015A4 00001668  4B FF F4 CD */	bl BattleGetUnitPtr
/* 000015A8 0000166C  88 1F 01 23 */	lbz r0, 0x123(r31)
/* 000015AC 00001670  98 03 01 23 */	stb r0, 0x123(r3)
/* 000015B0 00001674  88 1F 01 24 */	lbz r0, 0x124(r31)
/* 000015B4 00001678  98 03 01 24 */	stb r0, 0x124(r3)
/* 000015B8 0000167C  38 60 00 02 */	li r3, 0x2
/* 000015BC 00001680  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 000015C0 00001684  80 01 00 24 */	lwz r0, 0x24(r1)
/* 000015C4 00001688  7C 08 03 A6 */	mtlr r0
/* 000015C8 0000168C  38 21 00 20 */	addi r1, r1, 0x20
/* 000015CC 00001690  4E 80 00 20 */	blr
.endfn togezo_copy_status

# 0x000027B8..0x00002998 | size: 0x1E0
.rodata
.balign 8

# .rodata:0x0 | 0x27B8 | size: 0xE
.obj str_btl_un_jyugem_jon_000097e8, local
	.string "btl_un_jyugem"
.endobj str_btl_un_jyugem_jon_000097e8

# .rodata:0xE | 0x27C6 | size: 0x2
.obj gap_03_000027C6_rodata, global
.hidden gap_03_000027C6_rodata
	.2byte 0x0000
.endobj gap_03_000027C6_rodata

# .rodata:0x10 | 0x27C8 | size: 0x18
.obj str_SFX_ENM_JUGEMU_DAMAG_jon_000097f8, local
	.string "SFX_ENM_JUGEMU_DAMAGED1"
.endobj str_SFX_ENM_JUGEMU_DAMAG_jon_000097f8

# .rodata:0x28 | 0x27E0 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_jon_00009810, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_jon_00009810

# .rodata:0x3D | 0x27F5 | size: 0x3
.obj gap_03_000027F5_rodata, global
.hidden gap_03_000027F5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000027F5_rodata

# .rodata:0x40 | 0x27F8 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_jon_00009828, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_jon_00009828

# .rodata:0x54 | 0x280C | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_jon_0000983c, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_jon_0000983c

# .rodata:0x6D | 0x2825 | size: 0x3
.obj gap_03_00002825_rodata, global
.hidden gap_03_00002825_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002825_rodata

# .rodata:0x70 | 0x2828 | size: 0x8
.obj str_JGM_N_1_jon_00009858, local
	.string "JGM_N_1"
.endobj str_JGM_N_1_jon_00009858

# .rodata:0x78 | 0x2830 | size: 0x8
.obj str_JGM_Y_1_jon_00009860, local
	.string "JGM_Y_1"
.endobj str_JGM_Y_1_jon_00009860

# .rodata:0x80 | 0x2838 | size: 0x8
.obj str_JGM_K_1_jon_00009868, local
	.string "JGM_K_1"
.endobj str_JGM_K_1_jon_00009868

# .rodata:0x88 | 0x2840 | size: 0x8
.obj str_JGM_X_1_jon_00009870, local
	.string "JGM_X_1"
.endobj str_JGM_X_1_jon_00009870

# .rodata:0x90 | 0x2848 | size: 0x8
.obj str_JGM_S_1_jon_00009878, local
	.string "JGM_S_1"
.endobj str_JGM_S_1_jon_00009878

# .rodata:0x98 | 0x2850 | size: 0x8
.obj str_JGM_Q_1_jon_00009880, local
	.string "JGM_Q_1"
.endobj str_JGM_Q_1_jon_00009880

# .rodata:0xA0 | 0x2858 | size: 0x8
.obj str_JGM_D_1_jon_00009888, local
	.string "JGM_D_1"
.endobj str_JGM_D_1_jon_00009888

# .rodata:0xA8 | 0x2860 | size: 0x8
.obj str_JGM_R_1_jon_00009890, local
	.string "JGM_R_1"
.endobj str_JGM_R_1_jon_00009890

# .rodata:0xB0 | 0x2868 | size: 0x8
.obj str_JGM_W_1_jon_00009898, local
	.string "JGM_W_1"
.endobj str_JGM_W_1_jon_00009898

# .rodata:0xB8 | 0x2870 | size: 0x8
.obj str_JGM_I_1_jon_000098a0, local
	.string "JGM_I_1"
.endobj str_JGM_I_1_jon_000098a0

# .rodata:0xC0 | 0x2878 | size: 0x8
.obj str_JGM_T_1_jon_000098a8, local
	.string "JGM_T_1"
.endobj str_JGM_T_1_jon_000098a8

# .rodata:0xC8 | 0x2880 | size: 0x8
.obj str_JGM_S_2_jon_000098b0, local
	.string "JGM_S_2"
.endobj str_JGM_S_2_jon_000098b0

# .rodata:0xD0 | 0x2888 | size: 0x9
.obj str_c_jugemu_jon_000098b8, local
	.string "c_jugemu"
.endobj str_c_jugemu_jon_000098b8

# .rodata:0xD9 | 0x2891 | size: 0x3
.obj gap_03_00002891_rodata, global
.hidden gap_03_00002891_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002891_rodata

# .rodata:0xDC | 0x2894 | size: 0x7
.obj str_パイポ_jon_000098c4, local
	.4byte 0x83708343
	.byte 0x83, 0x7C, 0x00
.endobj str_パイポ_jon_000098c4

# .rodata:0xE3 | 0x289B | size: 0x1
.obj gap_03_0000289B_rodata, global
.hidden gap_03_0000289B_rodata
	.byte 0x00
.endobj gap_03_0000289B_rodata

# .rodata:0xE4 | 0x289C | size: 0x8
.obj str_JGM_P_1_jon_000098cc, local
	.string "JGM_P_1"
.endobj str_JGM_P_1_jon_000098cc

# .rodata:0xEC | 0x28A4 | size: 0x16
.obj str_SFX_ENM_JUGEM_ATTACK_jon_000098d4, local
	.string "SFX_ENM_JUGEM_ATTACK1"
.endobj str_SFX_ENM_JUGEM_ATTACK_jon_000098d4

# .rodata:0x102 | 0x28BA | size: 0x2
.obj gap_03_000028BA_rodata, global
.hidden gap_03_000028BA_rodata
	.2byte 0x0000
.endobj gap_03_000028BA_rodata

# .rodata:0x104 | 0x28BC | size: 0x8
.obj str_JGM_A_1_jon_000098ec, local
	.string "JGM_A_1"
.endobj str_JGM_A_1_jon_000098ec

# .rodata:0x10C | 0x28C4 | size: 0x14
.obj str_SFX_ENM_JUGEM_HOLD1_jon_000098f4, local
	.string "SFX_ENM_JUGEM_HOLD1"
.endobj str_SFX_ENM_JUGEM_HOLD1_jon_000098f4

# .rodata:0x120 | 0x28D8 | size: 0x8
.obj str_JGM_A_2_jon_00009908, local
	.string "JGM_A_2"
.endobj str_JGM_A_2_jon_00009908

# .rodata:0x128 | 0x28E0 | size: 0x1
.obj zero_jon_00009910, local
	.byte 0x00
.endobj zero_jon_00009910

# .rodata:0x129 | 0x28E1 | size: 0x3
.obj gap_03_000028E1_rodata, global
.hidden gap_03_000028E1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000028E1_rodata

# .rodata:0x12C | 0x28E4 | size: 0xB
.obj str_toge_flush_jon_00009914, local
	.string "toge_flush"
.endobj str_toge_flush_jon_00009914

# .rodata:0x137 | 0x28EF | size: 0x1
.obj gap_03_000028EF_rodata, global
.hidden gap_03_000028EF_rodata
	.byte 0x00
.endobj gap_03_000028EF_rodata

# .rodata:0x138 | 0x28F0 | size: 0x16
.obj str_SFX_ENM_JUGEM_ATTACK_jon_00009920, local
	.string "SFX_ENM_JUGEM_ATTACK2"
.endobj str_SFX_ENM_JUGEM_ATTACK_jon_00009920

# .rodata:0x14E | 0x2906 | size: 0x2
.obj gap_03_00002906_rodata, global
.hidden gap_03_00002906_rodata
	.2byte 0x0000
.endobj gap_03_00002906_rodata

# .rodata:0x150 | 0x2908 | size: 0x8
.obj str_JGM_A_3_jon_00009938, local
	.string "JGM_A_3"
.endobj str_JGM_A_3_jon_00009938

# .rodata:0x158 | 0x2910 | size: 0x15
.obj str_SFX_ENM_JUGEM_THROW1_jon_00009940, local
	.string "SFX_ENM_JUGEM_THROW1"
.endobj str_SFX_ENM_JUGEM_THROW1_jon_00009940

# .rodata:0x16D | 0x2925 | size: 0x3
.obj gap_03_00002925_rodata, global
.hidden gap_03_00002925_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002925_rodata

# .rodata:0x170 | 0x2928 | size: 0x14
.obj str_SFX_ENM_JUGEM_JUMP1_jon_00009958, local
	.string "SFX_ENM_JUGEM_JUMP1"
.endobj str_SFX_ENM_JUGEM_JUMP1_jon_00009958

# .rodata:0x184 | 0x293C | size: 0x17
.obj str_SFX_ENM_JUGEM_REBOUN_jon_0000996c, local
	.string "SFX_ENM_JUGEM_REBOUND1"
.endobj str_SFX_ENM_JUGEM_REBOUN_jon_0000996c

# .rodata:0x19B | 0x2953 | size: 0x1
.obj gap_03_00002953_rodata, global
.hidden gap_03_00002953_rodata
	.byte 0x00
.endobj gap_03_00002953_rodata

# .rodata:0x19C | 0x2954 | size: 0x8
.obj str_TGZ_P_1_jon_00009984, local
	.string "TGZ_P_1"
.endobj str_TGZ_P_1_jon_00009984

# .rodata:0x1A4 | 0x295C | size: 0x15
.obj str_SFX_ENM_TOGEZO_TURN2_jon_0000998c, local
	.string "SFX_ENM_TOGEZO_TURN2"
.endobj str_SFX_ENM_TOGEZO_TURN2_jon_0000998c

# .rodata:0x1B9 | 0x2971 | size: 0x3
.obj gap_03_00002971_rodata, global
.hidden gap_03_00002971_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002971_rodata

# .rodata:0x1BC | 0x2974 | size: 0x8
.obj str_TGZ_S_1_jon_000099a4, local
	.string "TGZ_S_1"
.endobj str_TGZ_S_1_jon_000099a4

# .rodata:0x1C4 | 0x297C | size: 0x15
.obj str_SFX_ENM_JUGEM_THROW2_jon_000099ac, local
	.string "SFX_ENM_JUGEM_THROW2"
.endobj str_SFX_ENM_JUGEM_THROW2_jon_000099ac

# .rodata:0x1D9 | 0x2991 | size: 0x7
.obj gap_03_00002991_rodata, global
.hidden gap_03_00002991_rodata
	.4byte 0x00000000
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002991_rodata

# 0x00022E30..0x00024B70 | size: 0x1D40
.data
.balign 8

# .data:0x0 | 0x22E30 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x22E38 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x22E3C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x22E40 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x22E44 | size: 0x4
.obj gap_04_00022E44_data, global
.hidden gap_04_00022E44_data
	.4byte 0x00000000
.endobj gap_04_00022E44_data

# .data:0x18 | 0x22E48 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x22E50 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x22E54 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x22E58 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x22E60 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x22E64 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x22E68 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x22E6C | size: 0x4
.obj gap_04_00022E6C_data, global
.hidden gap_04_00022E6C_data
	.4byte 0x00000000
.endobj gap_04_00022E6C_data

# .data:0x40 | 0x22E70 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x22E78 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x22E7C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x22E80 | size: 0xC4
.obj unit_jyugem_14_data_22E80, global
	.4byte 0x00000028
	.4byte str_btl_un_jyugem_jon_000097e8
	.4byte 0x00050000
	.4byte 0x01010B00
	.4byte 0x02460132
	.4byte 0x270F0020
	.4byte 0x002A0004
	.4byte 0x002A0000
	.4byte 0x00000000
	.4byte 0x41A80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41800000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41800000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x42180000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41A80000
	.4byte 0x00000000
	.4byte 0x42000000
	.4byte 0x42280000
	.4byte 0x00000002
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_ENM_JUGEMU_DAMAG_jon_000097f8
	.4byte str_SFX_BTL_DAMAGE_FIRE1_jon_00009810
	.4byte str_SFX_BTL_DAMAGE_ICE1_jon_00009828
	.4byte str_SFX_BTL_DAMAGE_BIRIB_jon_0000983c
	.4byte 0x00000004
	.4byte regist
	.4byte 0x02000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_jyugem_14_data_22E80

# .data:0x114 | 0x22F44 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x22F49 | size: 0x3
.obj gap_04_00022F49_data, global
.hidden gap_04_00022F49_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00022F49_data

# .data:0x11C | 0x22F4C | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x22F51 | size: 0x3
.obj gap_04_00022F51_data, global
.hidden gap_04_00022F51_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00022F51_data

# .data:0x124 | 0x22F54 | size: 0x16
.obj regist, local
	.ascii "PZidPddddZdZd_PZddPdd_"
.endobj regist

# .data:0x13A | 0x22F6A | size: 0x2
.obj gap_04_00022F6A_data, global
.hidden gap_04_00022F6A_data
	.2byte 0x0000
.endobj gap_04_00022F6A_data

# .data:0x13C | 0x22F6C | size: 0x88
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_JGM_N_1_jon_00009858
	.4byte 0x00000002
	.4byte str_JGM_Y_1_jon_00009860
	.4byte 0x00000009
	.4byte str_JGM_Y_1_jon_00009860
	.4byte 0x00000005
	.4byte str_JGM_K_1_jon_00009868
	.4byte 0x00000004
	.4byte str_JGM_X_1_jon_00009870
	.4byte 0x00000003
	.4byte str_JGM_X_1_jon_00009870
	.4byte 0x0000001C
	.4byte str_JGM_S_1_jon_00009878
	.4byte 0x0000001D
	.4byte str_JGM_Q_1_jon_00009880
	.4byte 0x0000001E
	.4byte str_JGM_Q_1_jon_00009880
	.4byte 0x0000001F
	.4byte str_JGM_S_1_jon_00009878
	.4byte 0x00000027
	.4byte str_JGM_D_1_jon_00009888
	.4byte 0x0000002A
	.4byte str_JGM_R_1_jon_00009890
	.4byte 0x00000028
	.4byte str_JGM_W_1_jon_00009898
	.4byte 0x00000038
	.4byte str_JGM_I_1_jon_000098a0
	.4byte 0x00000039
	.4byte str_JGM_I_1_jon_000098a0
	.4byte 0x00000041
	.4byte str_JGM_T_1_jon_000098a8
	.4byte 0x00000045
	.4byte str_JGM_S_1_jon_00009878
.endobj pose_table

# .data:0x1C4 | 0x22FF4 | size: 0x88
.obj pose_table_hold, local
	.4byte 0x00000001
	.4byte str_JGM_S_2_jon_000098b0
	.4byte 0x00000002
	.4byte str_JGM_S_2_jon_000098b0
	.4byte 0x00000009
	.4byte str_JGM_S_2_jon_000098b0
	.4byte 0x00000005
	.4byte str_JGM_S_2_jon_000098b0
	.4byte 0x00000004
	.4byte str_JGM_S_2_jon_000098b0
	.4byte 0x00000003
	.4byte str_JGM_S_2_jon_000098b0
	.4byte 0x0000001C
	.4byte str_JGM_S_2_jon_000098b0
	.4byte 0x0000001D
	.4byte str_JGM_Q_1_jon_00009880
	.4byte 0x0000001E
	.4byte str_JGM_Q_1_jon_00009880
	.4byte 0x0000001F
	.4byte str_JGM_S_2_jon_000098b0
	.4byte 0x00000027
	.4byte str_JGM_D_1_jon_00009888
	.4byte 0x0000002A
	.4byte str_JGM_S_2_jon_000098b0
	.4byte 0x00000028
	.4byte str_JGM_S_2_jon_000098b0
	.4byte 0x00000038
	.4byte str_JGM_S_2_jon_000098b0
	.4byte 0x00000039
	.4byte str_JGM_S_2_jon_000098b0
	.4byte 0x00000041
	.4byte str_JGM_S_2_jon_000098b0
	.4byte 0x00000045
	.4byte str_JGM_S_2_jon_000098b0
.endobj pose_table_hold

# .data:0x24C | 0x2307C | size: 0x18
.obj data_table, local
	.4byte 0x00000025
	.4byte avoid_counter_thorn_head_event
	.4byte 0x00000030
	.4byte dmg_first_attack_pos_event
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x264 | 0x23094 | size: 0x98
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_jyugem_jon_000097e8
	.4byte str_c_jugemu_jon_000098b8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x420C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42480000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x00600009
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000002
	.4byte str_パイポ_jon_000098c4
	.4byte str_c_jugemu_jon_000098b8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x13010000
	.4byte 0x00000000
	.4byte pose_table
.endobj parts

# .data:0x2FC | 0x2312C | size: 0xC0
.obj weapon_jyugem_attack, local
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
	.4byte 0x01101260
	.4byte 0x20001000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000087
	.4byte 0x000007FF
	.4byte 0x80002000
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
.endobj weapon_jyugem_attack

# .data:0x3BC | 0x231EC | size: 0x30
.obj entry_togezo, local
	.4byte unit_togezo_14_data_27920
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0xC47A0000
	.4byte 0xC47A0000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj entry_togezo

# .data:0x3EC | 0x2321C | size: 0xA0
.obj init_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventWait
	.4byte 0xFFFFFFFE
	.4byte wait_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventUnisonPhase
	.4byte 0xFFFFFFFE
	.4byte unison_phase_event
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
	.4byte attack_event
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_JGM_P_1_jon_000098cc
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x48C | 0x232BC | size: 0x508
.obj damage_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte btldefaultevt_Damage
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte btlevtcmd_GetDamage
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFE363C8A
	.4byte 0x0000001B
	.4byte 0xFE363C8E
	.4byte 0x0002004F
	.4byte 0xFE363C8F
	.4byte 0xFE363C8E
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0xFE363C8E
	.4byte 0x0002004F
	.4byte 0xFE363C8F
	.4byte 0xFE363C8E
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFE363C8A
	.4byte 0x00000003
	.4byte 0xFE363C8E
	.4byte 0x0002004F
	.4byte 0xFE363C8F
	.4byte 0xFE363C8E
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFE363C8A
	.4byte 0x00000005
	.4byte 0xFE363C8E
	.4byte 0x0002004F
	.4byte 0xFE363C8F
	.4byte 0xFE363C8E
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFE363C8A
	.4byte 0x00000006
	.4byte 0xFE363C8E
	.4byte 0x0002004F
	.4byte 0xFE363C8F
	.4byte 0xFE363C8E
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFE363C8A
	.4byte 0x00000009
	.4byte 0xFE363C8E
	.4byte 0x0002004F
	.4byte 0xFE363C8F
	.4byte 0xFE363C8E
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFE363C8A
	.4byte 0x00000002
	.4byte 0xFE363C8E
	.4byte 0x0002004F
	.4byte 0xFE363C8F
	.4byte 0xFE363C8E
	.4byte 0x00020019
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x03000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000023
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x000000C8
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFE363C8A
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0xF24A8E80
	.4byte 0xF24A7BB3
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFE363C8A
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFE363C8A
	.4byte 0x00000002
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFE363C8A
	.4byte 0x00000002
	.4byte 0x02000000
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsCounterAttribute
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte pose_table
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte btldefaultevt_Damage
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte btlevtcmd_GetDamageCode
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000016
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x0000001F
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000026
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000027
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000029
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFE363C8A
	.4byte 0x00000004
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFE363C8A
	.4byte 0x00000008
	.4byte 0xFE363C8E
	.4byte 0x0002004F
	.4byte 0xFE363C8F
	.4byte 0xFE363C8E
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFE363C8A
	.4byte 0x0000000B
	.4byte 0xFE363C8E
	.4byte 0x0002004F
	.4byte 0xFE363C8F
	.4byte 0xFE363C8E
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFE363C8A
	.4byte 0x0000000F
	.4byte 0xFE363C8E
	.4byte 0x0002004F
	.4byte 0xFE363C8F
	.4byte 0xFE363C8E
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFE363C8A
	.4byte 0x00000014
	.4byte 0xFE363C8E
	.4byte 0x0002004F
	.4byte 0xFE363C8F
	.4byte 0xFE363C8E
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0xFE363C8E
	.4byte 0x0002004F
	.4byte 0xFE363C8F
	.4byte 0xFE363C8E
	.4byte 0x00020019
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x03000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000023
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFE363C8A
	.4byte 0x00000002
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0xF24A7AE6
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFE363C8A
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFE363C8A
	.4byte 0x00000002
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFE363C8A
	.4byte 0x00000002
	.4byte 0x02000000
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x0001005E
	.4byte btldefaultevt_Damage
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj damage_event

# .data:0x994 | 0x237C4 | size: 0x22C
.obj unison_phase_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_CheckPhase
	.4byte 0xFE363C80
	.4byte 0x04000001
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_get_turn
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x0000001B
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_CheckActStatus
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xFE363C8E
	.4byte 0x0002004F
	.4byte 0xFE363C8F
	.4byte 0xFE363C8E
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xFE363C8E
	.4byte 0x0002004F
	.4byte 0xFE363C8F
	.4byte 0xFE363C8E
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x00000006
	.4byte 0xFE363C8E
	.4byte 0x0002004F
	.4byte 0xFE363C8F
	.4byte 0xFE363C8E
	.4byte 0x00020019
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000063
	.4byte 0xFE363C80
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_JUGEM_ATTACK_jon_000098d4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_JGM_A_1_jon_000098ec
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_JUGEM_HOLD1_jon_000098f4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_JGM_A_2_jon_00009908
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsCounterAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_hold
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj unison_phase_event

# .data:0xBC0 | 0x239F0 | size: 0xF4
.obj avoid_counter_thorn_head_event, local
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x0000000A
	.4byte 0xFE363C83
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000002D
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x0000000B
	.4byte 0xFE363C83
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000019
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000023
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_jon_00009910
	.4byte str_toge_flush_jon_00009914
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
.endobj avoid_counter_thorn_head_event

# .data:0xCB4 | 0x23AE4 | size: 0x4C
.obj dmg_first_attack_pos_event, local
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitAttackEnd
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dmg_first_attack_pos_event

# .data:0xD00 | 0x23B30 | size: 0x2E4
.obj attack_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_EnemyItemUseCheck
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte 0xFE363C80
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000014
	.4byte 0x00020035
	.4byte 0xFE363C8B
	.4byte 0x00000041
	.4byte 0x00020035
	.4byte 0xFE363C8B
	.4byte 0x0000000F
	.4byte 0x00020036
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0xFE363C8B
	.4byte 0xFE363C8A
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000014
	.4byte 0x0002001A
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte btlevtcmd_GetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0x00020037
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0002001A
	.4byte 0xFE363C84
	.4byte 0x00000000
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x0009005B
	.4byte btlevtcmd_CheckSpace
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x0001005E
	.4byte friend_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00010004
	.4byte 0x00000009
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00010003
	.4byte 0x00000009
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0x00000096
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x0009005B
	.4byte btlevtcmd_CheckSpace
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x0001005E
	.4byte friend_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000041
	.4byte 0x00020035
	.4byte 0xFE363C8B
	.4byte 0x0000000F
	.4byte 0x00020036
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0xFE363C8B
	.4byte 0xFE363C8A
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000041
	.4byte 0x0002001A
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte normal_attack_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte normal_attack_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0xFE4 | 0x23E14 | size: 0x924
.obj normal_attack_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte weapon_jyugem_attack
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte weapon_jyugem_attack
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckToken
	.4byte 0xFFFFFFFE
	.4byte 0x00000010
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte subsetevt_confuse_flustered
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte weapon_jyugem_attack
	.4byte 0x0004005B
	.4byte btlevtcmd_AttackDeclare
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitGuardMove
	.4byte 0x0003005B
	.4byte btlevtcmd_PayWeaponCost
	.4byte 0xFFFFFFFE
	.4byte weapon_jyugem_attack
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000010
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_JUGEM_ATTACK_jon_000098d4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_JGM_A_1_jon_000098ec
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_JUGEM_ATTACK_jon_00009920
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_JGM_A_2_jon_00009908
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsCounterAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_JGM_A_3_jon_00009938
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x03000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000023
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_JUGEM_THROW1_jon_00009940
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x0000002D
	.4byte 0x00000000
	.4byte 0xF24A7BB3
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000002D
	.4byte 0xFFFFFFFF
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_jyugem_attack
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
	.4byte 0x0000002E
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
	.4byte 0x0000002E
	.4byte 0x0000002A
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x0000002E
	.4byte 0x00000031
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x0003005B
	.4byte btlevtcmd_JumpPartsContinue
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_JUGEM_JUMP1_jon_00009958
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte weapon_jyugem_attack
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_jyugem_attack
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckDamageCode
	.4byte 0xFE363C83
	.4byte 0x00040000
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte btlevtcmd_GetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0x00020037
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0002001A
	.4byte 0xFE363C84
	.4byte 0x00000000
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x0009005B
	.4byte btlevtcmd_CheckSpace
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00010004
	.4byte 0x00000061
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00010004
	.4byte 0x00000060
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00010003
	.4byte 0x00000060
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0x00000096
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x0009005B
	.4byte btlevtcmd_CheckSpace
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00010004
	.4byte 0x00000061
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x00000061
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_JUGEM_REBOUN_jon_0000996c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x0000002D
	.4byte 0x00000000
	.4byte 0xF24A7BB3
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000002D
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_JUGEM_JUMP1_jon_00009958
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0xF24A7BB3
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000000F
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_JUGEM_JUMP1_jon_00009958
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0004005B
	.4byte btlevtcmd_SpawnUnit
	.4byte 0xFE363C83
	.4byte entry_togezo
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte togezo_copy_status
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte btlevtcmd_GetBodyId
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x03000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte str_TGZ_P_1_jon_00009984
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFE363C83
	.4byte str_SFX_ENM_TOGEZO_TURN2_jon_0000998c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotateOffset
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000005
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFDC
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte str_TGZ_S_1_jon_000099a4
	.4byte 0x00010005
	.4byte 0x00000005
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFDC
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotateOffset
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_GetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000096
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0xF24A8E80
	.4byte 0xF24A7BB3
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x03000000
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj normal_attack_event

# .data:0x1908 | 0x24738 | size: 0x41C
.obj friend_event, local
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_JUGEM_ATTACK_jon_000098d4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_JGM_A_1_jon_000098ec
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_JUGEM_ATTACK_jon_00009920
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_JGM_A_2_jon_00009908
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsCounterAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_JGM_A_3_jon_00009938
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_JUGEM_THROW2_jon_000099ac
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x03000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00020035
	.4byte 0xFE363C8B
	.4byte 0x00000023
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x0000002D
	.4byte 0x00000000
	.4byte 0xF24A7BB3
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000002D
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_JUGEM_JUMP1_jon_00009958
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0000000F
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0xF24A7BB3
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000000F
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_JUGEM_JUMP1_jon_00009958
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0004005B
	.4byte btlevtcmd_SpawnUnit
	.4byte 0xFE363C83
	.4byte entry_togezo
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte togezo_copy_status
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte btlevtcmd_GetBodyId
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x03000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte str_TGZ_P_1_jon_00009984
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFE363C83
	.4byte str_SFX_ENM_TOGEZO_TURN2_jon_0000998c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotateOffset
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000005
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFDC
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte str_TGZ_S_1_jon_000099a4
	.4byte 0x00010005
	.4byte 0x00000005
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFDC
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotateOffset
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj friend_event

# .data:0x1D24 | 0x24B54 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x1D3C | 0x24B6C | size: 0x4
.obj gap_04_00024B6C_data, global
.hidden gap_04_00024B6C_data
	.4byte 0x00000000
.endobj gap_04_00024B6C_data
