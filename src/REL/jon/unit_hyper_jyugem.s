.include "macros.inc"
.file "unit_hyper_jyugem.o"

# 0x00004FB4..0x00005054 | size: 0xA0
.text
.balign 4

# .text:0x0 | 0x4FB4 | size: 0xA0
.fn togezo_copy_status, local
/* 00004FB4 00005078  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00004FB8 0000507C  7C 08 02 A6 */	mflr r0
/* 00004FBC 00005080  90 01 00 24 */	stw r0, 0x24(r1)
/* 00004FC0 00005084  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 00004FC4 00005088  7C 7D 1B 78 */	mr r29, r3
/* 00004FC8 0000508C  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00004FCC 00005090  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00004FD0 00005094  4B FF BA A1 */	bl evtGetValue
/* 00004FD4 00005098  7C 64 1B 78 */	mr r4, r3
/* 00004FD8 0000509C  7F A3 EB 78 */	mr r3, r29
/* 00004FDC 000050A0  4B FF BA 95 */	bl BattleTransID
/* 00004FE0 000050A4  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00004FE4 000050A8  7C 7F 1B 78 */	mr r31, r3
/* 00004FE8 000050AC  7F A3 EB 78 */	mr r3, r29
/* 00004FEC 000050B0  4B FF BA 85 */	bl evtGetValue
/* 00004FF0 000050B4  7C 64 1B 78 */	mr r4, r3
/* 00004FF4 000050B8  7F A3 EB 78 */	mr r3, r29
/* 00004FF8 000050BC  4B FF BA 79 */	bl BattleTransID
/* 00004FFC 000050C0  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00005000 000050C4  7C 7E 1B 78 */	mr r30, r3
/* 00005004 000050C8  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00005008 000050CC  80 05 00 00 */	lwz r0, 0x0(r5)
/* 0000500C 000050D0  7F E4 FB 78 */	mr r4, r31
/* 00005010 000050D4  7C 1D 03 78 */	mr r29, r0
/* 00005014 000050D8  7C 03 03 78 */	mr r3, r0
/* 00005018 000050DC  4B FF BA 59 */	bl BattleGetUnitPtr
/* 0000501C 000050E0  7C 7F 1B 78 */	mr r31, r3
/* 00005020 000050E4  7F A3 EB 78 */	mr r3, r29
/* 00005024 000050E8  7F C4 F3 78 */	mr r4, r30
/* 00005028 000050EC  4B FF BA 49 */	bl BattleGetUnitPtr
/* 0000502C 000050F0  88 1F 01 23 */	lbz r0, 0x123(r31)
/* 00005030 000050F4  98 03 01 23 */	stb r0, 0x123(r3)
/* 00005034 000050F8  88 1F 01 24 */	lbz r0, 0x124(r31)
/* 00005038 000050FC  98 03 01 24 */	stb r0, 0x124(r3)
/* 0000503C 00005100  38 60 00 02 */	li r3, 0x2
/* 00005040 00005104  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 00005044 00005108  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00005048 0000510C  7C 08 03 A6 */	mtlr r0
/* 0000504C 00005110  38 21 00 20 */	addi r1, r1, 0x20
/* 00005050 00005114  4E 80 00 20 */	blr
.endfn togezo_copy_status

# 0x00006178..0x00006380 | size: 0x208
.rodata
.balign 8

# .rodata:0x0 | 0x6178 | size: 0x14
.obj str_btl_un_hyper_jyugem_jon_0000d1a8, local
	.string "btl_un_hyper_jyugem"
.endobj str_btl_un_hyper_jyugem_jon_0000d1a8

# .rodata:0x14 | 0x618C | size: 0x18
.obj str_SFX_ENM_JUGEMU_DAMAG_jon_0000d1bc, local
	.string "SFX_ENM_JUGEMU_DAMAGED1"
.endobj str_SFX_ENM_JUGEMU_DAMAG_jon_0000d1bc

# .rodata:0x2C | 0x61A4 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_jon_0000d1d4, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_jon_0000d1d4

# .rodata:0x41 | 0x61B9 | size: 0x3
.obj gap_03_000061B9_rodata, global
.hidden gap_03_000061B9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000061B9_rodata

# .rodata:0x44 | 0x61BC | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_jon_0000d1ec, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_jon_0000d1ec

# .rodata:0x58 | 0x61D0 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_jon_0000d200, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_jon_0000d200

# .rodata:0x71 | 0x61E9 | size: 0x3
.obj gap_03_000061E9_rodata, global
.hidden gap_03_000061E9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000061E9_rodata

# .rodata:0x74 | 0x61EC | size: 0x8
.obj str_JGM_N_1_jon_0000d21c, local
	.string "JGM_N_1"
.endobj str_JGM_N_1_jon_0000d21c

# .rodata:0x7C | 0x61F4 | size: 0x8
.obj str_JGM_Y_1_jon_0000d224, local
	.string "JGM_Y_1"
.endobj str_JGM_Y_1_jon_0000d224

# .rodata:0x84 | 0x61FC | size: 0x8
.obj str_JGM_K_1_jon_0000d22c, local
	.string "JGM_K_1"
.endobj str_JGM_K_1_jon_0000d22c

# .rodata:0x8C | 0x6204 | size: 0x8
.obj str_JGM_X_1_jon_0000d234, local
	.string "JGM_X_1"
.endobj str_JGM_X_1_jon_0000d234

# .rodata:0x94 | 0x620C | size: 0x8
.obj str_JGM_S_1_jon_0000d23c, local
	.string "JGM_S_1"
.endobj str_JGM_S_1_jon_0000d23c

# .rodata:0x9C | 0x6214 | size: 0x8
.obj str_JGM_Q_1_jon_0000d244, local
	.string "JGM_Q_1"
.endobj str_JGM_Q_1_jon_0000d244

# .rodata:0xA4 | 0x621C | size: 0x8
.obj str_JGM_D_1_jon_0000d24c, local
	.string "JGM_D_1"
.endobj str_JGM_D_1_jon_0000d24c

# .rodata:0xAC | 0x6224 | size: 0x8
.obj str_JGM_R_1_jon_0000d254, local
	.string "JGM_R_1"
.endobj str_JGM_R_1_jon_0000d254

# .rodata:0xB4 | 0x622C | size: 0x8
.obj str_JGM_W_1_jon_0000d25c, local
	.string "JGM_W_1"
.endobj str_JGM_W_1_jon_0000d25c

# .rodata:0xBC | 0x6234 | size: 0x8
.obj str_JGM_I_1_jon_0000d264, local
	.string "JGM_I_1"
.endobj str_JGM_I_1_jon_0000d264

# .rodata:0xC4 | 0x623C | size: 0x8
.obj str_JGM_T_1_jon_0000d26c, local
	.string "JGM_T_1"
.endobj str_JGM_T_1_jon_0000d26c

# .rodata:0xCC | 0x6244 | size: 0x8
.obj str_JGM_S_2_jon_0000d274, local
	.string "JGM_S_2"
.endobj str_JGM_S_2_jon_0000d274

# .rodata:0xD4 | 0x624C | size: 0xB
.obj str_c_jugemu_b_jon_0000d27c, local
	.string "c_jugemu_b"
.endobj str_c_jugemu_b_jon_0000d27c

# .rodata:0xDF | 0x6257 | size: 0x1
.obj gap_03_00006257_rodata, global
.hidden gap_03_00006257_rodata
	.byte 0x00
.endobj gap_03_00006257_rodata

# .rodata:0xE0 | 0x6258 | size: 0xF
.obj str_ハイパーパイポ_jon_0000d288, local
	.4byte 0x836E8343
	.4byte 0x8370815B
	.4byte 0x83708343
	.byte 0x83, 0x7C, 0x00
.endobj str_ハイパーパイポ_jon_0000d288

# .rodata:0xEF | 0x6267 | size: 0x1
.obj gap_03_00006267_rodata, global
.hidden gap_03_00006267_rodata
	.byte 0x00
.endobj gap_03_00006267_rodata

# .rodata:0xF0 | 0x6268 | size: 0x8
.obj str_JGM_P_1_jon_0000d298, local
	.string "JGM_P_1"
.endobj str_JGM_P_1_jon_0000d298

# .rodata:0xF8 | 0x6270 | size: 0x16
.obj str_SFX_ENM_JUGEM_ATTACK_jon_0000d2a0, local
	.string "SFX_ENM_JUGEM_ATTACK1"
.endobj str_SFX_ENM_JUGEM_ATTACK_jon_0000d2a0

# .rodata:0x10E | 0x6286 | size: 0x2
.obj gap_03_00006286_rodata, global
.hidden gap_03_00006286_rodata
	.2byte 0x0000
.endobj gap_03_00006286_rodata

# .rodata:0x110 | 0x6288 | size: 0x8
.obj str_JGM_A_1_jon_0000d2b8, local
	.string "JGM_A_1"
.endobj str_JGM_A_1_jon_0000d2b8

# .rodata:0x118 | 0x6290 | size: 0x14
.obj str_SFX_ENM_JUGEM_HOLD1_jon_0000d2c0, local
	.string "SFX_ENM_JUGEM_HOLD1"
.endobj str_SFX_ENM_JUGEM_HOLD1_jon_0000d2c0

# .rodata:0x12C | 0x62A4 | size: 0x8
.obj str_JGM_A_2_jon_0000d2d4, local
	.string "JGM_A_2"
.endobj str_JGM_A_2_jon_0000d2d4

# .rodata:0x134 | 0x62AC | size: 0x1
.obj zero_jon_0000d2dc, local
	.byte 0x00
.endobj zero_jon_0000d2dc

# .rodata:0x135 | 0x62AD | size: 0x3
.obj gap_03_000062AD_rodata, global
.hidden gap_03_000062AD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000062AD_rodata

# .rodata:0x138 | 0x62B0 | size: 0xB
.obj str_toge_flush_jon_0000d2e0, local
	.string "toge_flush"
.endobj str_toge_flush_jon_0000d2e0

# .rodata:0x143 | 0x62BB | size: 0x1
.obj gap_03_000062BB_rodata, global
.hidden gap_03_000062BB_rodata
	.byte 0x00
.endobj gap_03_000062BB_rodata

# .rodata:0x144 | 0x62BC | size: 0x16
.obj str_SFX_ENM_JUGEM_ATTACK_jon_0000d2ec, local
	.string "SFX_ENM_JUGEM_ATTACK2"
.endobj str_SFX_ENM_JUGEM_ATTACK_jon_0000d2ec

# .rodata:0x15A | 0x62D2 | size: 0x2
.obj gap_03_000062D2_rodata, global
.hidden gap_03_000062D2_rodata
	.2byte 0x0000
.endobj gap_03_000062D2_rodata

# .rodata:0x15C | 0x62D4 | size: 0x8
.obj str_JGM_A_3_jon_0000d304, local
	.string "JGM_A_3"
.endobj str_JGM_A_3_jon_0000d304

# .rodata:0x164 | 0x62DC | size: 0x15
.obj str_SFX_ENM_JUGEM_THROW1_jon_0000d30c, local
	.string "SFX_ENM_JUGEM_THROW1"
.endobj str_SFX_ENM_JUGEM_THROW1_jon_0000d30c

# .rodata:0x179 | 0x62F1 | size: 0x3
.obj gap_03_000062F1_rodata, global
.hidden gap_03_000062F1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000062F1_rodata

# .rodata:0x17C | 0x62F4 | size: 0x14
.obj str_SFX_ENM_JUGEM_JUMP1_jon_0000d324, local
	.string "SFX_ENM_JUGEM_JUMP1"
.endobj str_SFX_ENM_JUGEM_JUMP1_jon_0000d324

# .rodata:0x190 | 0x6308 | size: 0x17
.obj str_SFX_ENM_JUGEM_REBOUN_jon_0000d338, local
	.string "SFX_ENM_JUGEM_REBOUND1"
.endobj str_SFX_ENM_JUGEM_REBOUN_jon_0000d338

# .rodata:0x1A7 | 0x631F | size: 0x1
.obj gap_03_0000631F_rodata, global
.hidden gap_03_0000631F_rodata
	.byte 0x00
.endobj gap_03_0000631F_rodata

# .rodata:0x1A8 | 0x6320 | size: 0x8
.obj str_TGZ_P_1_jon_0000d350, local
	.string "TGZ_P_1"
.endobj str_TGZ_P_1_jon_0000d350

# .rodata:0x1B0 | 0x6328 | size: 0x15
.obj str_SFX_ENM_TOGEZO_TURN2_jon_0000d358, local
	.string "SFX_ENM_TOGEZO_TURN2"
.endobj str_SFX_ENM_TOGEZO_TURN2_jon_0000d358

# .rodata:0x1C5 | 0x633D | size: 0x3
.obj gap_03_0000633D_rodata, global
.hidden gap_03_0000633D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000633D_rodata

# .rodata:0x1C8 | 0x6340 | size: 0x8
.obj str_TGZ_S_1_jon_0000d370, local
	.string "TGZ_S_1"
.endobj str_TGZ_S_1_jon_0000d370

# .rodata:0x1D0 | 0x6348 | size: 0x15
.obj str_SFX_ENM_JUGEM_THROW2_jon_0000d378, local
	.string "SFX_ENM_JUGEM_THROW2"
.endobj str_SFX_ENM_JUGEM_THROW2_jon_0000d378

# .rodata:0x1E5 | 0x635D | size: 0x3
.obj gap_03_0000635D_rodata, global
.hidden gap_03_0000635D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000635D_rodata

# .rodata:0x1E8 | 0x6360 | size: 0x10
.obj str_SFX_ENM_CHARGE1_jon_0000d390, local
	.string "SFX_ENM_CHARGE1"
.endobj str_SFX_ENM_CHARGE1_jon_0000d390

# .rodata:0x1F8 | 0x6370 | size: 0xC
.obj str_crystal_n64_jon_0000d3a0, local
	.string "crystal_n64"
.endobj str_crystal_n64_jon_0000d3a0

# .rodata:0x204 | 0x637C | size: 0x4
.obj gap_03_0000637C_rodata, global
.hidden gap_03_0000637C_rodata
	.4byte 0x00000000
.endobj gap_03_0000637C_rodata

# 0x00058CD0..0x0005ACF8 | size: 0x2028
.data
.balign 8

# .data:0x0 | 0x58CD0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x58CD8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x58CDC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x58CE0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x58CE4 | size: 0x4
.obj gap_04_00058CE4_data, global
.hidden gap_04_00058CE4_data
	.4byte 0x00000000
.endobj gap_04_00058CE4_data

# .data:0x18 | 0x58CE8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x58CF0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x58CF4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x58CF8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x58D00 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x58D04 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x58D08 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x58D0C | size: 0x4
.obj gap_04_00058D0C_data, global
.hidden gap_04_00058D0C_data
	.4byte 0x00000000
.endobj gap_04_00058D0C_data

# .data:0x40 | 0x58D10 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x58D18 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x58D1C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x58D20 | size: 0xC4
.obj unit_hyper_jyugem_14_data_58D20, global
	.4byte 0x0000009F
	.4byte str_btl_un_hyper_jyugem_jon_0000d1a8
	.4byte 0x000D0000
	.4byte 0x01011A01
	.4byte 0x02460132
	.4byte 0x270F0020
	.4byte 0x001E0004
	.4byte 0x002A0000
	.4byte 0x00000000
	.4byte 0x41700000
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
	.4byte str_SFX_ENM_JUGEMU_DAMAG_jon_0000d1bc
	.4byte str_SFX_BTL_DAMAGE_FIRE1_jon_0000d1d4
	.4byte str_SFX_BTL_DAMAGE_ICE1_jon_0000d1ec
	.4byte str_SFX_BTL_DAMAGE_BIRIB_jon_0000d200
	.4byte 0x00000004
	.4byte regist
	.4byte 0x02000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_hyper_jyugem_14_data_58D20

# .data:0x114 | 0x58DE4 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x58DE9 | size: 0x3
.obj gap_04_00058DE9_data, global
.hidden gap_04_00058DE9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00058DE9_data

# .data:0x11C | 0x58DEC | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x58DF1 | size: 0x3
.obj gap_04_00058DF1_data, global
.hidden gap_04_00058DF1_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00058DF1_data

# .data:0x124 | 0x58DF4 | size: 0x16
.obj regist, local
	.ascii "<F_d<ddPdUdUdZ<FPd<dd2"
.endobj regist

# .data:0x13A | 0x58E0A | size: 0x2
.obj gap_04_00058E0A_data, global
.hidden gap_04_00058E0A_data
	.2byte 0x0000
.endobj gap_04_00058E0A_data

# .data:0x13C | 0x58E0C | size: 0x88
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_JGM_N_1_jon_0000d21c
	.4byte 0x00000002
	.4byte str_JGM_Y_1_jon_0000d224
	.4byte 0x00000009
	.4byte str_JGM_Y_1_jon_0000d224
	.4byte 0x00000005
	.4byte str_JGM_K_1_jon_0000d22c
	.4byte 0x00000004
	.4byte str_JGM_X_1_jon_0000d234
	.4byte 0x00000003
	.4byte str_JGM_X_1_jon_0000d234
	.4byte 0x0000001C
	.4byte str_JGM_S_1_jon_0000d23c
	.4byte 0x0000001D
	.4byte str_JGM_Q_1_jon_0000d244
	.4byte 0x0000001E
	.4byte str_JGM_Q_1_jon_0000d244
	.4byte 0x0000001F
	.4byte str_JGM_S_1_jon_0000d23c
	.4byte 0x00000027
	.4byte str_JGM_D_1_jon_0000d24c
	.4byte 0x0000002A
	.4byte str_JGM_R_1_jon_0000d254
	.4byte 0x00000028
	.4byte str_JGM_W_1_jon_0000d25c
	.4byte 0x00000038
	.4byte str_JGM_I_1_jon_0000d264
	.4byte 0x00000039
	.4byte str_JGM_I_1_jon_0000d264
	.4byte 0x00000041
	.4byte str_JGM_T_1_jon_0000d26c
	.4byte 0x00000045
	.4byte str_JGM_S_1_jon_0000d23c
.endobj pose_table

# .data:0x1C4 | 0x58E94 | size: 0x88
.obj pose_table_hold, local
	.4byte 0x00000001
	.4byte str_JGM_S_2_jon_0000d274
	.4byte 0x00000002
	.4byte str_JGM_S_2_jon_0000d274
	.4byte 0x00000009
	.4byte str_JGM_S_2_jon_0000d274
	.4byte 0x00000005
	.4byte str_JGM_S_2_jon_0000d274
	.4byte 0x00000004
	.4byte str_JGM_S_2_jon_0000d274
	.4byte 0x00000003
	.4byte str_JGM_S_2_jon_0000d274
	.4byte 0x0000001C
	.4byte str_JGM_S_2_jon_0000d274
	.4byte 0x0000001D
	.4byte str_JGM_Q_1_jon_0000d244
	.4byte 0x0000001E
	.4byte str_JGM_Q_1_jon_0000d244
	.4byte 0x0000001F
	.4byte str_JGM_S_2_jon_0000d274
	.4byte 0x00000027
	.4byte str_JGM_D_1_jon_0000d24c
	.4byte 0x0000002A
	.4byte str_JGM_S_2_jon_0000d274
	.4byte 0x00000028
	.4byte str_JGM_S_2_jon_0000d274
	.4byte 0x00000038
	.4byte str_JGM_S_2_jon_0000d274
	.4byte 0x00000039
	.4byte str_JGM_S_2_jon_0000d274
	.4byte 0x00000041
	.4byte str_JGM_S_2_jon_0000d274
	.4byte 0x00000045
	.4byte str_JGM_S_2_jon_0000d274
.endobj pose_table_hold

# .data:0x24C | 0x58F1C | size: 0x18
.obj data_table, local
	.4byte 0x00000025
	.4byte avoid_counter_thorn_head_event
	.4byte 0x00000030
	.4byte dmg_first_attack_pos_event
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x264 | 0x58F34 | size: 0x98
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_hyper_jyugem_jon_0000d1a8
	.4byte str_c_jugemu_b_jon_0000d27c
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
	.4byte str_ハイパーパイポ_jon_0000d288
	.4byte str_c_jugemu_b_jon_0000d27c
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

# .data:0x2FC | 0x58FCC | size: 0xC0
.obj weapon_jyugem_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000005
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

# .data:0x3BC | 0x5908C | size: 0xC0
.obj weapon_jyugem_charge, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000000
	.4byte 0x3F800000
	.4byte 0x01010101
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
	.4byte 0x01004020
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000108
	.4byte 0x000007FF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_jyugem_charge

# .data:0x47C | 0x5914C | size: 0x30
.obj entry_togezo, local
	.4byte unit_hyper_togezo_14_data_68E58
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

# .data:0x4AC | 0x5917C | size: 0xA0
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
	.4byte str_JGM_P_1_jon_0000d298
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x54C | 0x5921C | size: 0x508
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

# .data:0xA54 | 0x59724 | size: 0x22C
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
	.4byte str_SFX_ENM_JUGEM_ATTACK_jon_0000d2a0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_JGM_A_1_jon_0000d2b8
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_JUGEM_HOLD1_jon_0000d2c0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_JGM_A_2_jon_0000d2d4
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

# .data:0xC80 | 0x59950 | size: 0xF4
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
	.4byte zero_jon_0000d2dc
	.4byte str_toge_flush_jon_0000d2e0
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

# .data:0xD74 | 0x59A44 | size: 0x4C
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

# .data:0xDC0 | 0x59A90 | size: 0x374
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
	.4byte 0x0002005B
	.4byte btlevtcmd_get_turn
	.4byte 0xFE363C80
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte btlevtcmd_DrawLots
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000028
	.4byte 0x0000005A
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte btlevtcmd_DrawLots
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000028
	.4byte 0x00000046
	.4byte 0x00000021
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
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
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x00000031
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte normal_attack_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_get_turn
	.4byte 0xFE363C80
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte btlevtcmd_DrawLots
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x0000001E
	.4byte 0x0000001E
	.4byte 0x0000001E
	.4byte 0x00000020
	.4byte 0x0006005B
	.4byte btlevtcmd_DrawLots
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x0000001E
	.4byte 0x0000001E
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte normal_attack_event
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte normal_attack_event
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_jyugem_charge
	.4byte 0x0001005E
	.4byte charge_event
	.4byte 0x00000031
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x1134 | 0x59E04 | size: 0x924
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
	.4byte str_SFX_ENM_JUGEM_ATTACK_jon_0000d2a0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_JGM_A_1_jon_0000d2b8
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_JUGEM_ATTACK_jon_0000d2ec
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_JGM_A_2_jon_0000d2d4
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
	.4byte str_JGM_A_3_jon_0000d304
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
	.4byte str_SFX_ENM_JUGEM_THROW1_jon_0000d30c
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
	.4byte str_SFX_ENM_JUGEM_JUMP1_jon_0000d324
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
	.4byte str_SFX_ENM_JUGEM_REBOUN_jon_0000d338
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
	.4byte str_SFX_ENM_JUGEM_JUMP1_jon_0000d324
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
	.4byte str_SFX_ENM_JUGEM_JUMP1_jon_0000d324
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
	.4byte str_TGZ_P_1_jon_0000d350
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFE363C83
	.4byte str_SFX_ENM_TOGEZO_TURN2_jon_0000d358
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
	.4byte str_TGZ_S_1_jon_0000d370
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

# .data:0x1A58 | 0x5A728 | size: 0x41C
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
	.4byte str_SFX_ENM_JUGEM_ATTACK_jon_0000d2a0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_JGM_A_1_jon_0000d2b8
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_JUGEM_ATTACK_jon_0000d2ec
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_JGM_A_2_jon_0000d2d4
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
	.4byte str_JGM_A_3_jon_0000d304
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_JUGEM_THROW2_jon_0000d378
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
	.4byte str_SFX_ENM_JUGEM_JUMP1_jon_0000d324
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
	.4byte str_SFX_ENM_JUGEM_JUMP1_jon_0000d324
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
	.4byte str_TGZ_P_1_jon_0000d350
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFE363C83
	.4byte str_SFX_ENM_TOGEZO_TURN2_jon_0000d358
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
	.4byte str_TGZ_S_1_jon_0000d370
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

# .data:0x1E74 | 0x5AB44 | size: 0x198
.obj charge_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_PayWeaponCost
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C89
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x0004005B
	.4byte evt_btl_camera_set_homing_unit
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x0000012C
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000000F
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_CHARGE1_jon_0000d390
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte zero_jon_0000d2dc
	.4byte str_crystal_n64_jon_0000d3a0
	.4byte 0x00000007
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A8080
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0xFFFFFFFF
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C89
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00000002
	.4byte 0x00000001
.endobj charge_event

# .data:0x200C | 0x5ACDC | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x2024 | 0x5ACF4 | size: 0x4
.obj gap_04_0005ACF4_data, global
.hidden gap_04_0005ACF4_data
	.4byte 0x00000000
.endobj gap_04_0005ACF4_data
