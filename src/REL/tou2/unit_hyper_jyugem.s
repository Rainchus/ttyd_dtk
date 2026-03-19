.include "macros.inc"
.file "unit_hyper_jyugem.o"

# 0x000084C8..0x00008568 | size: 0xA0
.text
.balign 4

# .text:0x0 | 0x84C8 | size: 0xA0
.fn togezo_copy_status, local
/* 000084C8 0000858C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 000084CC 00008590  7C 08 02 A6 */	mflr r0
/* 000084D0 00008594  90 01 00 24 */	stw r0, 0x24(r1)
/* 000084D4 00008598  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 000084D8 0000859C  7C 7D 1B 78 */	mr r29, r3
/* 000084DC 000085A0  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 000084E0 000085A4  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 000084E4 000085A8  4B FF CB 31 */	bl evtGetValue
/* 000084E8 000085AC  7C 64 1B 78 */	mr r4, r3
/* 000084EC 000085B0  7F A3 EB 78 */	mr r3, r29
/* 000084F0 000085B4  4B FF CB 25 */	bl BattleTransID
/* 000084F4 000085B8  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 000084F8 000085BC  7C 7F 1B 78 */	mr r31, r3
/* 000084FC 000085C0  7F A3 EB 78 */	mr r3, r29
/* 00008500 000085C4  4B FF CB 15 */	bl evtGetValue
/* 00008504 000085C8  7C 64 1B 78 */	mr r4, r3
/* 00008508 000085CC  7F A3 EB 78 */	mr r3, r29
/* 0000850C 000085D0  4B FF CB 09 */	bl BattleTransID
/* 00008510 000085D4  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00008514 000085D8  7C 7E 1B 78 */	mr r30, r3
/* 00008518 000085DC  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 0000851C 000085E0  80 05 00 00 */	lwz r0, 0x0(r5)
/* 00008520 000085E4  7F E4 FB 78 */	mr r4, r31
/* 00008524 000085E8  7C 1D 03 78 */	mr r29, r0
/* 00008528 000085EC  7C 03 03 78 */	mr r3, r0
/* 0000852C 000085F0  4B FF CA E9 */	bl BattleGetUnitPtr
/* 00008530 000085F4  7C 7F 1B 78 */	mr r31, r3
/* 00008534 000085F8  7F A3 EB 78 */	mr r3, r29
/* 00008538 000085FC  7F C4 F3 78 */	mr r4, r30
/* 0000853C 00008600  4B FF CA D9 */	bl BattleGetUnitPtr
/* 00008540 00008604  88 1F 01 23 */	lbz r0, 0x123(r31)
/* 00008544 00008608  98 03 01 23 */	stb r0, 0x123(r3)
/* 00008548 0000860C  88 1F 01 24 */	lbz r0, 0x124(r31)
/* 0000854C 00008610  98 03 01 24 */	stb r0, 0x124(r3)
/* 00008550 00008614  38 60 00 02 */	li r3, 0x2
/* 00008554 00008618  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 00008558 0000861C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 0000855C 00008620  7C 08 03 A6 */	mtlr r0
/* 00008560 00008624  38 21 00 20 */	addi r1, r1, 0x20
/* 00008564 00008628  4E 80 00 20 */	blr
.endfn togezo_copy_status

# 0x00007120..0x00007328 | size: 0x208
.rodata
.balign 8

# .rodata:0x0 | 0x7120 | size: 0x14
.obj str_btl_un_hyper_jyugem_tou2_00010860, local
	.string "btl_un_hyper_jyugem"
.endobj str_btl_un_hyper_jyugem_tou2_00010860

# .rodata:0x14 | 0x7134 | size: 0x18
.obj str_SFX_ENM_JUGEMU_DAMAG_tou2_00010874, local
	.string "SFX_ENM_JUGEMU_DAMAGED1"
.endobj str_SFX_ENM_JUGEMU_DAMAG_tou2_00010874

# .rodata:0x2C | 0x714C | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_tou2_0001088c, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_tou2_0001088c

# .rodata:0x41 | 0x7161 | size: 0x3
.obj gap_03_00007161_rodata, global
.hidden gap_03_00007161_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007161_rodata

# .rodata:0x44 | 0x7164 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_tou2_000108a4, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_tou2_000108a4

# .rodata:0x58 | 0x7178 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_tou2_000108b8, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_tou2_000108b8

# .rodata:0x71 | 0x7191 | size: 0x3
.obj gap_03_00007191_rodata, global
.hidden gap_03_00007191_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007191_rodata

# .rodata:0x74 | 0x7194 | size: 0x8
.obj str_JGM_N_1_tou2_000108d4, local
	.string "JGM_N_1"
.endobj str_JGM_N_1_tou2_000108d4

# .rodata:0x7C | 0x719C | size: 0x8
.obj str_JGM_Y_1_tou2_000108dc, local
	.string "JGM_Y_1"
.endobj str_JGM_Y_1_tou2_000108dc

# .rodata:0x84 | 0x71A4 | size: 0x8
.obj str_JGM_K_1_tou2_000108e4, local
	.string "JGM_K_1"
.endobj str_JGM_K_1_tou2_000108e4

# .rodata:0x8C | 0x71AC | size: 0x8
.obj str_JGM_X_1_tou2_000108ec, local
	.string "JGM_X_1"
.endobj str_JGM_X_1_tou2_000108ec

# .rodata:0x94 | 0x71B4 | size: 0x8
.obj str_JGM_S_1_tou2_000108f4, local
	.string "JGM_S_1"
.endobj str_JGM_S_1_tou2_000108f4

# .rodata:0x9C | 0x71BC | size: 0x8
.obj str_JGM_Q_1_tou2_000108fc, local
	.string "JGM_Q_1"
.endobj str_JGM_Q_1_tou2_000108fc

# .rodata:0xA4 | 0x71C4 | size: 0x8
.obj str_JGM_D_1_tou2_00010904, local
	.string "JGM_D_1"
.endobj str_JGM_D_1_tou2_00010904

# .rodata:0xAC | 0x71CC | size: 0x8
.obj str_JGM_R_1_tou2_0001090c, local
	.string "JGM_R_1"
.endobj str_JGM_R_1_tou2_0001090c

# .rodata:0xB4 | 0x71D4 | size: 0x8
.obj str_JGM_W_1_tou2_00010914, local
	.string "JGM_W_1"
.endobj str_JGM_W_1_tou2_00010914

# .rodata:0xBC | 0x71DC | size: 0x8
.obj str_JGM_I_1_tou2_0001091c, local
	.string "JGM_I_1"
.endobj str_JGM_I_1_tou2_0001091c

# .rodata:0xC4 | 0x71E4 | size: 0x8
.obj str_JGM_T_1_tou2_00010924, local
	.string "JGM_T_1"
.endobj str_JGM_T_1_tou2_00010924

# .rodata:0xCC | 0x71EC | size: 0x8
.obj str_JGM_S_2_tou2_0001092c, local
	.string "JGM_S_2"
.endobj str_JGM_S_2_tou2_0001092c

# .rodata:0xD4 | 0x71F4 | size: 0xB
.obj str_c_jugemu_b_tou2_00010934, local
	.string "c_jugemu_b"
.endobj str_c_jugemu_b_tou2_00010934

# .rodata:0xDF | 0x71FF | size: 0x1
.obj gap_03_000071FF_rodata, global
.hidden gap_03_000071FF_rodata
	.byte 0x00
.endobj gap_03_000071FF_rodata

# .rodata:0xE0 | 0x7200 | size: 0xF
.obj str_ハイパーパイポ_tou2_00010940, local
	.4byte 0x836E8343
	.4byte 0x8370815B
	.4byte 0x83708343
	.byte 0x83, 0x7C, 0x00
.endobj str_ハイパーパイポ_tou2_00010940

# .rodata:0xEF | 0x720F | size: 0x1
.obj gap_03_0000720F_rodata, global
.hidden gap_03_0000720F_rodata
	.byte 0x00
.endobj gap_03_0000720F_rodata

# .rodata:0xF0 | 0x7210 | size: 0x8
.obj str_JGM_P_1_tou2_00010950, local
	.string "JGM_P_1"
.endobj str_JGM_P_1_tou2_00010950

# .rodata:0xF8 | 0x7218 | size: 0x16
.obj str_SFX_ENM_JUGEM_ATTACK_tou2_00010958, local
	.string "SFX_ENM_JUGEM_ATTACK1"
.endobj str_SFX_ENM_JUGEM_ATTACK_tou2_00010958

# .rodata:0x10E | 0x722E | size: 0x2
.obj gap_03_0000722E_rodata, global
.hidden gap_03_0000722E_rodata
	.2byte 0x0000
.endobj gap_03_0000722E_rodata

# .rodata:0x110 | 0x7230 | size: 0x8
.obj str_JGM_A_1_tou2_00010970, local
	.string "JGM_A_1"
.endobj str_JGM_A_1_tou2_00010970

# .rodata:0x118 | 0x7238 | size: 0x14
.obj str_SFX_ENM_JUGEM_HOLD1_tou2_00010978, local
	.string "SFX_ENM_JUGEM_HOLD1"
.endobj str_SFX_ENM_JUGEM_HOLD1_tou2_00010978

# .rodata:0x12C | 0x724C | size: 0x8
.obj str_JGM_A_2_tou2_0001098c, local
	.string "JGM_A_2"
.endobj str_JGM_A_2_tou2_0001098c

# .rodata:0x134 | 0x7254 | size: 0x1
.obj zero_tou2_00010994, local
	.byte 0x00
.endobj zero_tou2_00010994

# .rodata:0x135 | 0x7255 | size: 0x3
.obj gap_03_00007255_rodata, global
.hidden gap_03_00007255_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007255_rodata

# .rodata:0x138 | 0x7258 | size: 0xB
.obj str_toge_flush_tou2_00010998, local
	.string "toge_flush"
.endobj str_toge_flush_tou2_00010998

# .rodata:0x143 | 0x7263 | size: 0x1
.obj gap_03_00007263_rodata, global
.hidden gap_03_00007263_rodata
	.byte 0x00
.endobj gap_03_00007263_rodata

# .rodata:0x144 | 0x7264 | size: 0x16
.obj str_SFX_ENM_JUGEM_ATTACK_tou2_000109a4, local
	.string "SFX_ENM_JUGEM_ATTACK2"
.endobj str_SFX_ENM_JUGEM_ATTACK_tou2_000109a4

# .rodata:0x15A | 0x727A | size: 0x2
.obj gap_03_0000727A_rodata, global
.hidden gap_03_0000727A_rodata
	.2byte 0x0000
.endobj gap_03_0000727A_rodata

# .rodata:0x15C | 0x727C | size: 0x8
.obj str_JGM_A_3_tou2_000109bc, local
	.string "JGM_A_3"
.endobj str_JGM_A_3_tou2_000109bc

# .rodata:0x164 | 0x7284 | size: 0x15
.obj str_SFX_ENM_JUGEM_THROW1_tou2_000109c4, local
	.string "SFX_ENM_JUGEM_THROW1"
.endobj str_SFX_ENM_JUGEM_THROW1_tou2_000109c4

# .rodata:0x179 | 0x7299 | size: 0x3
.obj gap_03_00007299_rodata, global
.hidden gap_03_00007299_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007299_rodata

# .rodata:0x17C | 0x729C | size: 0x14
.obj str_SFX_ENM_JUGEM_JUMP1_tou2_000109dc, local
	.string "SFX_ENM_JUGEM_JUMP1"
.endobj str_SFX_ENM_JUGEM_JUMP1_tou2_000109dc

# .rodata:0x190 | 0x72B0 | size: 0x17
.obj str_SFX_ENM_JUGEM_REBOUN_tou2_000109f0, local
	.string "SFX_ENM_JUGEM_REBOUND1"
.endobj str_SFX_ENM_JUGEM_REBOUN_tou2_000109f0

# .rodata:0x1A7 | 0x72C7 | size: 0x1
.obj gap_03_000072C7_rodata, global
.hidden gap_03_000072C7_rodata
	.byte 0x00
.endobj gap_03_000072C7_rodata

# .rodata:0x1A8 | 0x72C8 | size: 0x8
.obj str_TGZ_P_1_tou2_00010a08, local
	.string "TGZ_P_1"
.endobj str_TGZ_P_1_tou2_00010a08

# .rodata:0x1B0 | 0x72D0 | size: 0x15
.obj str_SFX_ENM_TOGEZO_TURN2_tou2_00010a10, local
	.string "SFX_ENM_TOGEZO_TURN2"
.endobj str_SFX_ENM_TOGEZO_TURN2_tou2_00010a10

# .rodata:0x1C5 | 0x72E5 | size: 0x3
.obj gap_03_000072E5_rodata, global
.hidden gap_03_000072E5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000072E5_rodata

# .rodata:0x1C8 | 0x72E8 | size: 0x8
.obj str_TGZ_S_1_tou2_00010a28, local
	.string "TGZ_S_1"
.endobj str_TGZ_S_1_tou2_00010a28

# .rodata:0x1D0 | 0x72F0 | size: 0x15
.obj str_SFX_ENM_JUGEM_THROW2_tou2_00010a30, local
	.string "SFX_ENM_JUGEM_THROW2"
.endobj str_SFX_ENM_JUGEM_THROW2_tou2_00010a30

# .rodata:0x1E5 | 0x7305 | size: 0x3
.obj gap_03_00007305_rodata, global
.hidden gap_03_00007305_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007305_rodata

# .rodata:0x1E8 | 0x7308 | size: 0x10
.obj str_SFX_ENM_CHARGE1_tou2_00010a48, local
	.string "SFX_ENM_CHARGE1"
.endobj str_SFX_ENM_CHARGE1_tou2_00010a48

# .rodata:0x1F8 | 0x7318 | size: 0xC
.obj str_crystal_n64_tou2_00010a58, local
	.string "crystal_n64"
.endobj str_crystal_n64_tou2_00010a58

# .rodata:0x204 | 0x7324 | size: 0x4
.obj gap_03_00007324_rodata, global
.hidden gap_03_00007324_rodata
	.4byte 0x00000000
.endobj gap_03_00007324_rodata

# 0x0004CF08..0x0004EF30 | size: 0x2028
.data
.balign 8

# .data:0x0 | 0x4CF08 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x4CF10 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x4CF14 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x4CF18 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x4CF1C | size: 0x4
.obj gap_04_0004CF1C_data, global
.hidden gap_04_0004CF1C_data
	.4byte 0x00000000
.endobj gap_04_0004CF1C_data

# .data:0x18 | 0x4CF20 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x4CF28 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x4CF2C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x4CF30 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x4CF38 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x4CF3C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x4CF40 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x4CF44 | size: 0x4
.obj gap_04_0004CF44_data, global
.hidden gap_04_0004CF44_data
	.4byte 0x00000000
.endobj gap_04_0004CF44_data

# .data:0x40 | 0x4CF48 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x4CF50 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x4CF54 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x4CF58 | size: 0xC4
.obj unit_hyper_jyugem, local
	.4byte 0x0000009F
	.4byte str_btl_un_hyper_jyugem_tou2_00010860
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
	.4byte str_SFX_ENM_JUGEMU_DAMAG_tou2_00010874
	.4byte str_SFX_BTL_DAMAGE_FIRE1_tou2_0001088c
	.4byte str_SFX_BTL_DAMAGE_ICE1_tou2_000108a4
	.4byte str_SFX_BTL_DAMAGE_BIRIB_tou2_000108b8
	.4byte 0x00000004
	.4byte regist
	.4byte 0x02000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_hyper_jyugem

# .data:0x114 | 0x4D01C | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x4D021 | size: 0x3
.obj gap_04_0004D021_data, global
.hidden gap_04_0004D021_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0004D021_data

# .data:0x11C | 0x4D024 | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x4D029 | size: 0x3
.obj gap_04_0004D029_data, global
.hidden gap_04_0004D029_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0004D029_data

# .data:0x124 | 0x4D02C | size: 0x16
.obj regist, local
	.ascii "<F_d<ddPdUdUdZ<FPd<dd2"
.endobj regist

# .data:0x13A | 0x4D042 | size: 0x2
.obj gap_04_0004D042_data, global
.hidden gap_04_0004D042_data
	.2byte 0x0000
.endobj gap_04_0004D042_data

# .data:0x13C | 0x4D044 | size: 0x88
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_JGM_N_1_tou2_000108d4
	.4byte 0x00000002
	.4byte str_JGM_Y_1_tou2_000108dc
	.4byte 0x00000009
	.4byte str_JGM_Y_1_tou2_000108dc
	.4byte 0x00000005
	.4byte str_JGM_K_1_tou2_000108e4
	.4byte 0x00000004
	.4byte str_JGM_X_1_tou2_000108ec
	.4byte 0x00000003
	.4byte str_JGM_X_1_tou2_000108ec
	.4byte 0x0000001C
	.4byte str_JGM_S_1_tou2_000108f4
	.4byte 0x0000001D
	.4byte str_JGM_Q_1_tou2_000108fc
	.4byte 0x0000001E
	.4byte str_JGM_Q_1_tou2_000108fc
	.4byte 0x0000001F
	.4byte str_JGM_S_1_tou2_000108f4
	.4byte 0x00000027
	.4byte str_JGM_D_1_tou2_00010904
	.4byte 0x0000002A
	.4byte str_JGM_R_1_tou2_0001090c
	.4byte 0x00000028
	.4byte str_JGM_W_1_tou2_00010914
	.4byte 0x00000038
	.4byte str_JGM_I_1_tou2_0001091c
	.4byte 0x00000039
	.4byte str_JGM_I_1_tou2_0001091c
	.4byte 0x00000041
	.4byte str_JGM_T_1_tou2_00010924
	.4byte 0x00000045
	.4byte str_JGM_S_1_tou2_000108f4
.endobj pose_table

# .data:0x1C4 | 0x4D0CC | size: 0x88
.obj pose_table_hold, local
	.4byte 0x00000001
	.4byte str_JGM_S_2_tou2_0001092c
	.4byte 0x00000002
	.4byte str_JGM_S_2_tou2_0001092c
	.4byte 0x00000009
	.4byte str_JGM_S_2_tou2_0001092c
	.4byte 0x00000005
	.4byte str_JGM_S_2_tou2_0001092c
	.4byte 0x00000004
	.4byte str_JGM_S_2_tou2_0001092c
	.4byte 0x00000003
	.4byte str_JGM_S_2_tou2_0001092c
	.4byte 0x0000001C
	.4byte str_JGM_S_2_tou2_0001092c
	.4byte 0x0000001D
	.4byte str_JGM_Q_1_tou2_000108fc
	.4byte 0x0000001E
	.4byte str_JGM_Q_1_tou2_000108fc
	.4byte 0x0000001F
	.4byte str_JGM_S_2_tou2_0001092c
	.4byte 0x00000027
	.4byte str_JGM_D_1_tou2_00010904
	.4byte 0x0000002A
	.4byte str_JGM_S_2_tou2_0001092c
	.4byte 0x00000028
	.4byte str_JGM_S_2_tou2_0001092c
	.4byte 0x00000038
	.4byte str_JGM_S_2_tou2_0001092c
	.4byte 0x00000039
	.4byte str_JGM_S_2_tou2_0001092c
	.4byte 0x00000041
	.4byte str_JGM_S_2_tou2_0001092c
	.4byte 0x00000045
	.4byte str_JGM_S_2_tou2_0001092c
.endobj pose_table_hold

# .data:0x24C | 0x4D154 | size: 0x18
.obj data_table, local
	.4byte 0x00000025
	.4byte avoid_counter_thorn_head_event
	.4byte 0x00000030
	.4byte dmg_first_attack_pos_event
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x264 | 0x4D16C | size: 0x98
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_hyper_jyugem_tou2_00010860
	.4byte str_c_jugemu_b_tou2_00010934
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
	.4byte str_ハイパーパイポ_tou2_00010940
	.4byte str_c_jugemu_b_tou2_00010934
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

# .data:0x2FC | 0x4D204 | size: 0xC0
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

# .data:0x3BC | 0x4D2C4 | size: 0xC0
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

# .data:0x47C | 0x4D384 | size: 0x30
.obj entry_togezo, local
	.4byte unit_hyper_togezo_26_data_4EF80
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

# .data:0x4AC | 0x4D3B4 | size: 0xA0
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
	.4byte str_JGM_P_1_tou2_00010950
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x54C | 0x4D454 | size: 0x508
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

# .data:0xA54 | 0x4D95C | size: 0x22C
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
	.4byte str_SFX_ENM_JUGEM_ATTACK_tou2_00010958
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_JGM_A_1_tou2_00010970
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_JUGEM_HOLD1_tou2_00010978
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_JGM_A_2_tou2_0001098c
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

# .data:0xC80 | 0x4DB88 | size: 0xF4
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
	.4byte zero_tou2_00010994
	.4byte str_toge_flush_tou2_00010998
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

# .data:0xD74 | 0x4DC7C | size: 0x4C
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

# .data:0xDC0 | 0x4DCC8 | size: 0x374
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

# .data:0x1134 | 0x4E03C | size: 0x924
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
	.4byte str_SFX_ENM_JUGEM_ATTACK_tou2_00010958
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_JGM_A_1_tou2_00010970
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_JUGEM_ATTACK_tou2_000109a4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_JGM_A_2_tou2_0001098c
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
	.4byte str_JGM_A_3_tou2_000109bc
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
	.4byte str_SFX_ENM_JUGEM_THROW1_tou2_000109c4
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
	.4byte str_SFX_ENM_JUGEM_JUMP1_tou2_000109dc
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
	.4byte str_SFX_ENM_JUGEM_REBOUN_tou2_000109f0
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
	.4byte str_SFX_ENM_JUGEM_JUMP1_tou2_000109dc
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
	.4byte str_SFX_ENM_JUGEM_JUMP1_tou2_000109dc
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
	.4byte str_TGZ_P_1_tou2_00010a08
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFE363C83
	.4byte str_SFX_ENM_TOGEZO_TURN2_tou2_00010a10
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
	.4byte str_TGZ_S_1_tou2_00010a28
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

# .data:0x1A58 | 0x4E960 | size: 0x41C
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
	.4byte str_SFX_ENM_JUGEM_ATTACK_tou2_00010958
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_JGM_A_1_tou2_00010970
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_JUGEM_ATTACK_tou2_000109a4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_JGM_A_2_tou2_0001098c
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
	.4byte str_JGM_A_3_tou2_000109bc
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_JUGEM_THROW2_tou2_00010a30
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
	.4byte str_SFX_ENM_JUGEM_JUMP1_tou2_000109dc
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
	.4byte str_SFX_ENM_JUGEM_JUMP1_tou2_000109dc
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
	.4byte str_TGZ_P_1_tou2_00010a08
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFE363C83
	.4byte str_SFX_ENM_TOGEZO_TURN2_tou2_00010a10
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
	.4byte str_TGZ_S_1_tou2_00010a28
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

# .data:0x1E74 | 0x4ED7C | size: 0x198
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
	.4byte str_SFX_ENM_CHARGE1_tou2_00010a48
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte zero_tou2_00010994
	.4byte str_crystal_n64_tou2_00010a58
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

# .data:0x200C | 0x4EF14 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x2024 | 0x4EF2C | size: 0x4
.obj gap_04_0004EF2C_data, global
.hidden gap_04_0004EF2C_data
	.4byte 0x00000000
.endobj gap_04_0004EF2C_data
