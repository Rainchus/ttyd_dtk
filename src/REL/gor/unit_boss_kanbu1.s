.include "macros.inc"
.file "unit_boss_kanbu1.o"

# 0x0000A45C..0x0000A4D4 | size: 0x78
.text
.balign 4

# .text:0x0 | 0xA45C | size: 0x3C
.fn _mario_ac_failed_check, local
/* 0000A45C 0000A528  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0000A460 0000A52C  7C 08 02 A6 */	mflr r0
/* 0000A464 0000A530  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0000A468 0000A534  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000A46C 0000A538  80 A4 00 00 */	lwz r5, _battleWorkPointer@l(r4)
/* 0000A470 0000A53C  80 C3 00 18 */	lwz r6, 0x18(r3)
/* 0000A474 0000A540  3C A5 00 01 */	addis r5, r5, 0x1
/* 0000A478 0000A544  80 86 00 00 */	lwz r4, 0x0(r6)
/* 0000A47C 0000A548  88 A5 6F 59 */	lbz r5, 0x6f59(r5)
/* 0000A480 0000A54C  4B FF 60 25 */	bl evtSetValue
/* 0000A484 0000A550  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0000A488 0000A554  38 60 00 02 */	li r3, 0x2
/* 0000A48C 0000A558  7C 08 03 A6 */	mtlr r0
/* 0000A490 0000A55C  38 21 00 10 */	addi r1, r1, 0x10
/* 0000A494 0000A560  4E 80 00 20 */	blr
.endfn _mario_ac_failed_check

# .text:0x3C | 0xA498 | size: 0x3C
.fn _mario_ac_success_check, local
/* 0000A498 0000A564  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0000A49C 0000A568  7C 08 02 A6 */	mflr r0
/* 0000A4A0 0000A56C  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0000A4A4 0000A570  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000A4A8 0000A574  80 A4 00 00 */	lwz r5, _battleWorkPointer@l(r4)
/* 0000A4AC 0000A578  80 C3 00 18 */	lwz r6, 0x18(r3)
/* 0000A4B0 0000A57C  3C A5 00 01 */	addis r5, r5, 0x1
/* 0000A4B4 0000A580  80 86 00 00 */	lwz r4, 0x0(r6)
/* 0000A4B8 0000A584  88 A5 6F 58 */	lbz r5, 0x6f58(r5)
/* 0000A4BC 0000A588  4B FF 5F E9 */	bl evtSetValue
/* 0000A4C0 0000A58C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0000A4C4 0000A590  38 60 00 02 */	li r3, 0x2
/* 0000A4C8 0000A594  7C 08 03 A6 */	mtlr r0
/* 0000A4CC 0000A598  38 21 00 10 */	addi r1, r1, 0x10
/* 0000A4D0 0000A59C  4E 80 00 20 */	blr
.endfn _mario_ac_success_check

# 0x0000A6F8..0x0000A920 | size: 0x228
.rodata
.balign 8

# .rodata:0x0 | 0xA6F8 | size: 0xE
.obj str_btl_un_kanbu1_gor_0001e1f8, local
	.string "btl_un_kanbu1"
.endobj str_btl_un_kanbu1_gor_0001e1f8

# .rodata:0xE | 0xA706 | size: 0x2
.obj gap_03_0000A706_rodata, global
.hidden gap_03_0000A706_rodata
	.2byte 0x0000
.endobj gap_03_0000A706_rodata

# .rodata:0x10 | 0xA708 | size: 0x18
.obj str_SFX_BOSS_KANBU_DAMAG_gor_0001e208, local
	.string "SFX_BOSS_KANBU_DAMAGED1"
.endobj str_SFX_BOSS_KANBU_DAMAG_gor_0001e208

# .rodata:0x28 | 0xA720 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_gor_0001e220, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_gor_0001e220

# .rodata:0x3D | 0xA735 | size: 0x3
.obj gap_03_0000A735_rodata, global
.hidden gap_03_0000A735_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000A735_rodata

# .rodata:0x40 | 0xA738 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_gor_0001e238, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_gor_0001e238

# .rodata:0x54 | 0xA74C | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_gor_0001e24c, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_gor_0001e24c

# .rodata:0x6D | 0xA765 | size: 0x3
.obj gap_03_0000A765_rodata, global
.hidden gap_03_0000A765_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000A765_rodata

# .rodata:0x70 | 0xA768 | size: 0x8
.obj str_c_kanbu_gor_0001e268, local
	.string "c_kanbu"
.endobj str_c_kanbu_gor_0001e268

# .rodata:0x78 | 0xA770 | size: 0x16
.obj str_SFX_BOSS_KANBU_MOVE1_gor_0001e270, local
	.string "SFX_BOSS_KANBU_MOVE1L"
.endobj str_SFX_BOSS_KANBU_MOVE1_gor_0001e270

# .rodata:0x8E | 0xA786 | size: 0x2
.obj gap_03_0000A786_rodata, global
.hidden gap_03_0000A786_rodata
	.2byte 0x0000
.endobj gap_03_0000A786_rodata

# .rodata:0x90 | 0xA788 | size: 0x16
.obj str_SFX_BOSS_KANBU_MOVE1_gor_0001e288, local
	.string "SFX_BOSS_KANBU_MOVE1R"
.endobj str_SFX_BOSS_KANBU_MOVE1_gor_0001e288

# .rodata:0xA6 | 0xA79E | size: 0x2
.obj gap_03_0000A79E_rodata, global
.hidden gap_03_0000A79E_rodata
	.2byte 0x0000
.endobj gap_03_0000A79E_rodata

# .rodata:0xA8 | 0xA7A0 | size: 0x6
.obj str_M_S_1_gor_0001e2a0, local
	.string "M_S_1"
.endobj str_M_S_1_gor_0001e2a0

# .rodata:0xAE | 0xA7A6 | size: 0x2
.obj gap_03_0000A7A6_rodata, global
.hidden gap_03_0000A7A6_rodata
	.2byte 0x0000
.endobj gap_03_0000A7A6_rodata

# .rodata:0xB0 | 0xA7A8 | size: 0x8
.obj str_PKR_T_1_gor_0001e2a8, local
	.string "PKR_T_1"
.endobj str_PKR_T_1_gor_0001e2a8

# .rodata:0xB8 | 0xA7B0 | size: 0x8
.obj str_PKR_S_1_gor_0001e2b0, local
	.string "PKR_S_1"
.endobj str_PKR_S_1_gor_0001e2b0

# .rodata:0xC0 | 0xA7B8 | size: 0xF
.obj str_mac_0_b_t1_000_gor_0001e2b8, local
	.string "mac_0_b_t1_000"
.endobj str_mac_0_b_t1_000_gor_0001e2b8

# .rodata:0xCF | 0xA7C7 | size: 0x1
.obj gap_03_0000A7C7_rodata, global
.hidden gap_03_0000A7C7_rodata
	.byte 0x00
.endobj gap_03_0000A7C7_rodata

# .rodata:0xD0 | 0xA7C8 | size: 0x1B
.obj str_SFX_VOICE_MARIO_HAND_gor_0001e2c8, local
	.string "SFX_VOICE_MARIO_HAND_UP1_2"
.endobj str_SFX_VOICE_MARIO_HAND_gor_0001e2c8

# .rodata:0xEB | 0xA7E3 | size: 0x1
.obj gap_03_0000A7E3_rodata, global
.hidden gap_03_0000A7E3_rodata
	.byte 0x00
.endobj gap_03_0000A7E3_rodata

# .rodata:0xEC | 0xA7E4 | size: 0x6
.obj str_M_N_2_gor_0001e2e4, local
	.string "M_N_2"
.endobj str_M_N_2_gor_0001e2e4

# .rodata:0xF2 | 0xA7EA | size: 0x2
.obj gap_03_0000A7EA_rodata, global
.hidden gap_03_0000A7EA_rodata
	.2byte 0x0000
.endobj gap_03_0000A7EA_rodata

# .rodata:0xF4 | 0xA7EC | size: 0xF
.obj str_mac_0_b_t1_003_gor_0001e2ec, local
	.string "mac_0_b_t1_003"
.endobj str_mac_0_b_t1_003_gor_0001e2ec

# .rodata:0x103 | 0xA7FB | size: 0x1
.obj gap_03_0000A7FB_rodata, global
.hidden gap_03_0000A7FB_rodata
	.byte 0x00
.endobj gap_03_0000A7FB_rodata

# .rodata:0x104 | 0xA7FC | size: 0xF
.obj str_mac_0_b_t1_001_gor_0001e2fc, local
	.string "mac_0_b_t1_001"
.endobj str_mac_0_b_t1_001_gor_0001e2fc

# .rodata:0x113 | 0xA80B | size: 0x1
.obj gap_03_0000A80B_rodata, global
.hidden gap_03_0000A80B_rodata
	.byte 0x00
.endobj gap_03_0000A80B_rodata

# .rodata:0x114 | 0xA80C | size: 0xF
.obj str_mac_0_b_t1_002_gor_0001e30c, local
	.string "mac_0_b_t1_002"
.endobj str_mac_0_b_t1_002_gor_0001e30c

# .rodata:0x123 | 0xA81B | size: 0x1
.obj gap_03_0000A81B_rodata, global
.hidden gap_03_0000A81B_rodata
	.byte 0x00
.endobj gap_03_0000A81B_rodata

# .rodata:0x124 | 0xA81C | size: 0x15
.obj str_SFX_BTL_ENEMY_DIE1_1_gor_0001e31c, local
	.string "SFX_BTL_ENEMY_DIE1_1"
.endobj str_SFX_BTL_ENEMY_DIE1_1_gor_0001e31c

# .rodata:0x139 | 0xA831 | size: 0x3
.obj gap_03_0000A831_rodata, global
.hidden gap_03_0000A831_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000A831_rodata

# .rodata:0x13C | 0xA834 | size: 0x15
.obj str_SFX_BTL_ENEMY_DIE1_2_gor_0001e334, local
	.string "SFX_BTL_ENEMY_DIE1_2"
.endobj str_SFX_BTL_ENEMY_DIE1_2_gor_0001e334

# .rodata:0x151 | 0xA849 | size: 0x3
.obj gap_03_0000A849_rodata, global
.hidden gap_03_0000A849_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000A849_rodata

# .rodata:0x154 | 0xA84C | size: 0xC
.obj str_kemuri_test_gor_0001e34c, local
	.string "kemuri_test"
.endobj str_kemuri_test_gor_0001e34c

# .rodata:0x160 | 0xA858 | size: 0x1
.obj zero_gor_0001e358, local
	.byte 0x00
.endobj zero_gor_0001e358

# .rodata:0x161 | 0xA859 | size: 0x3
.obj gap_03_0000A859_rodata, global
.hidden gap_03_0000A859_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000A859_rodata

# .rodata:0x164 | 0xA85C | size: 0xB
.obj str_star_point_gor_0001e35c, local
	.string "star_point"
.endobj str_star_point_gor_0001e35c

# .rodata:0x16F | 0xA867 | size: 0x1
.obj gap_03_0000A867_rodata, global
.hidden gap_03_0000A867_rodata
	.byte 0x00
.endobj gap_03_0000A867_rodata

# .rodata:0x170 | 0xA868 | size: 0xF
.obj str_mac_0_b_t1_004_gor_0001e368, local
	.string "mac_0_b_t1_004"
.endobj str_mac_0_b_t1_004_gor_0001e368

# .rodata:0x17F | 0xA877 | size: 0x1
.obj gap_03_0000A877_rodata, global
.hidden gap_03_0000A877_rodata
	.byte 0x00
.endobj gap_03_0000A877_rodata

# .rodata:0x180 | 0xA878 | size: 0xF
.obj str_mac_0_b_t1_005_gor_0001e378, local
	.string "mac_0_b_t1_005"
.endobj str_mac_0_b_t1_005_gor_0001e378

# .rodata:0x18F | 0xA887 | size: 0x1
.obj gap_03_0000A887_rodata, global
.hidden gap_03_0000A887_rodata
	.byte 0x00
.endobj gap_03_0000A887_rodata

# .rodata:0x190 | 0xA888 | size: 0x4
.obj str_N_1_gor_0001e388, local
	.string "N_1"
.endobj str_N_1_gor_0001e388

# .rodata:0x194 | 0xA88C | size: 0x4
.obj str_Y_1_gor_0001e38c, local
	.string "Y_1"
.endobj str_Y_1_gor_0001e38c

# .rodata:0x198 | 0xA890 | size: 0x4
.obj str_K_1_gor_0001e390, local
	.string "K_1"
.endobj str_K_1_gor_0001e390

# .rodata:0x19C | 0xA894 | size: 0x4
.obj str_X_1_gor_0001e394, local
	.string "X_1"
.endobj str_X_1_gor_0001e394

# .rodata:0x1A0 | 0xA898 | size: 0x4
.obj str_S_1_gor_0001e398, local
	.string "S_1"
.endobj str_S_1_gor_0001e398

# .rodata:0x1A4 | 0xA89C | size: 0x4
.obj str_T_1_gor_0001e39c, local
	.string "T_1"
.endobj str_T_1_gor_0001e39c

# .rodata:0x1A8 | 0xA8A0 | size: 0x4
.obj str_Q_1_gor_0001e3a0, local
	.string "Q_1"
.endobj str_Q_1_gor_0001e3a0

# .rodata:0x1AC | 0xA8A4 | size: 0x4
.obj str_D_1_gor_0001e3a4, local
	.string "D_1"
.endobj str_D_1_gor_0001e3a4

# .rodata:0x1B0 | 0xA8A8 | size: 0x4
.obj str_R_2_gor_0001e3a8, local
	.string "R_2"
.endobj str_R_2_gor_0001e3a8

# .rodata:0x1B4 | 0xA8AC | size: 0x4
.obj str_W_1_gor_0001e3ac, local
	.string "W_1"
.endobj str_W_1_gor_0001e3ac

# .rodata:0x1B8 | 0xA8B0 | size: 0x4
.obj str_G_2_gor_0001e3b0, local
	.string "G_2"
.endobj str_G_2_gor_0001e3b0

# .rodata:0x1BC | 0xA8B4 | size: 0x15
.obj str_SFX_BOSS_KANBU_JUMP1_gor_0001e3b4, local
	.string "SFX_BOSS_KANBU_JUMP1"
.endobj str_SFX_BOSS_KANBU_JUMP1_gor_0001e3b4

# .rodata:0x1D1 | 0xA8C9 | size: 0x3
.obj gap_03_0000A8C9_rodata, global
.hidden gap_03_0000A8C9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000A8C9_rodata

# .rodata:0x1D4 | 0xA8CC | size: 0x5
.obj str_A_1A_gor_0001e3cc, local
	.string "A_1A"
.endobj str_A_1A_gor_0001e3cc

# .rodata:0x1D9 | 0xA8D1 | size: 0x3
.obj gap_03_0000A8D1_rodata, global
.hidden gap_03_0000A8D1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000A8D1_rodata

# .rodata:0x1DC | 0xA8D4 | size: 0x5
.obj str_A_1B_gor_0001e3d4, local
	.string "A_1B"
.endobj str_A_1B_gor_0001e3d4

# .rodata:0x1E1 | 0xA8D9 | size: 0x3
.obj gap_03_0000A8D9_rodata, global
.hidden gap_03_0000A8D9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000A8D9_rodata

# .rodata:0x1E4 | 0xA8DC | size: 0x5
.obj str_A_1C_gor_0001e3dc, local
	.string "A_1C"
.endobj str_A_1C_gor_0001e3dc

# .rodata:0x1E9 | 0xA8E1 | size: 0x3
.obj gap_03_0000A8E1_rodata, global
.hidden gap_03_0000A8E1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000A8E1_rodata

# .rodata:0x1EC | 0xA8E4 | size: 0x1B
.obj str_SFX_BOSS_KANBU_HIP_A_gor_0001e3e4, local
	.string "SFX_BOSS_KANBU_HIP_ATTACK1"
.endobj str_SFX_BOSS_KANBU_HIP_A_gor_0001e3e4

# .rodata:0x207 | 0xA8FF | size: 0x1
.obj gap_03_0000A8FF_rodata, global
.hidden gap_03_0000A8FF_rodata
	.byte 0x00
.endobj gap_03_0000A8FF_rodata

# .rodata:0x208 | 0xA900 | size: 0x1B
.obj str_SFX_BOSS_KANBU_HIP_A_gor_0001e400, local
	.string "SFX_BOSS_KANBU_HIP_ATTACK2"
.endobj str_SFX_BOSS_KANBU_HIP_A_gor_0001e400

# .rodata:0x223 | 0xA91B | size: 0x1
.obj gap_03_0000A91B_rodata, global
.hidden gap_03_0000A91B_rodata
	.byte 0x00
.endobj gap_03_0000A91B_rodata

# .rodata:0x224 | 0xA91C | size: 0x4
.obj str_R_1_gor_0001e41c, local
	.string "R_1"
.endobj str_R_1_gor_0001e41c

# 0x000444F0..0x000458F8 | size: 0x1408
.data
.balign 8

# .data:0x0 | 0x444F0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x444F8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x444FC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x44500 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x44504 | size: 0x4
.obj gap_04_00044504_data, global
.hidden gap_04_00044504_data
	.4byte 0x00000000
.endobj gap_04_00044504_data

# .data:0x18 | 0x44508 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x44510 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x44514 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x44518 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x44520 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x44524 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x44528 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x4452C | size: 0x4
.obj gap_04_0004452C_data, global
.hidden gap_04_0004452C_data
	.4byte 0x00000000
.endobj gap_04_0004452C_data

# .data:0x40 | 0x44530 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x44538 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x4453C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x44540 | size: 0xC4
.obj unit_boss_kanbu1_9_data_44540, global
	.4byte 0x00000006
	.4byte str_btl_un_kanbu1_gor_0001e1f8
	.4byte 0x00050000
	.4byte 0x01011400
	.4byte 0x00640032
	.4byte 0x00090038
	.4byte 0x003B0000
	.4byte 0x00380000
	.4byte 0x00000000
	.4byte 0x41D00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41E00000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41E00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41E00000
	.4byte 0x42196666
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41D00000
	.4byte 0x00000000
	.4byte 0x42280000
	.4byte 0x42500000
	.4byte 0x00000002
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KANBU_DAMAG_gor_0001e208
	.4byte str_SFX_BTL_DAMAGE_FIRE1_gor_0001e220
	.4byte str_SFX_BTL_DAMAGE_ICE1_gor_0001e238
	.4byte str_SFX_BTL_DAMAGE_BIRIB_gor_0001e24c
	.4byte 0x00000000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_boss_kanbu1_9_data_44540

# .data:0x114 | 0x44604 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x44609 | size: 0x3
.obj gap_04_00044609_data, global
.hidden gap_04_00044609_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00044609_data

# .data:0x11C | 0x4460C | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x44611 | size: 0x3
.obj gap_04_00044611_data, global
.hidden gap_04_00044611_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00044611_data

# .data:0x124 | 0x44614 | size: 0x16
.obj regist, local
	.4byte 0x64646464
	.4byte 0x64646464
	.4byte 0x64646464
	.4byte 0x64646400
	.4byte 0x64646464
	.2byte 0x6400
.endobj regist

# .data:0x13A | 0x4462A | size: 0x2
.obj gap_04_0004462A_data, global
.hidden gap_04_0004462A_data
	.2byte 0x0000
.endobj gap_04_0004462A_data

# .data:0x13C | 0x4462C | size: 0x18
.obj data_table, local
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000031
	.4byte dead_event
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x154 | 0x44644 | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_kanbu1_gor_0001e1f8
	.4byte str_c_kanbu_gor_0001e268
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42340000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42480000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte pose_table
.endobj parts

# .data:0x1A0 | 0x44690 | size: 0xC0
.obj weapon_kanbu1_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000001
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
	.4byte 0x21002000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00001087
	.4byte 0x00000000
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
.endobj weapon_kanbu1_attack

# .data:0x260 | 0x44750 | size: 0x30
.obj entry_npc_christine, local
	.4byte unit_npc_christine_9_data_46CF0
	.4byte 0x02000000
	.4byte 0x04000001
	.4byte 0x447A0000
	.4byte 0x00000000
	.4byte 0x447A0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj entry_npc_christine

# .data:0x290 | 0x44780 | size: 0x148
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
	.4byte btlevtcmd_SetEventPhase
	.4byte 0xFFFFFFFE
	.4byte phase_event
	.4byte 0x0003005B
	.4byte btlevtcmd_onoff_battleflag
	.4byte 0x00000001
	.4byte 0x00001000
	.4byte 0x0004005B
	.4byte btlevtcmd_SpawnUnit
	.4byte 0xFE363C83
	.4byte entry_npc_christine
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFE363C83
	.4byte 0xFFFFFF74
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFE363C83
	.4byte 0xFFFFFF74
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte btlevtcmd_SetWalkSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KANBU_MOVE1_gor_0001e270
	.4byte str_SFX_BOSS_KANBU_MOVE1_gor_0001e288
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x0000000A
	.4byte 0x0007005B
	.4byte btlevtcmd_SetRunSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KANBU_MOVE1_gor_0001e270
	.4byte str_SFX_BOSS_KANBU_MOVE1_gor_0001e288
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x3D8 | 0x448C8 | size: 0x468
.obj phase_event, local
	.4byte 0x0002005B
	.4byte btlevtcmd_get_turn
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_CheckPhase
	.4byte 0xFE363C80
	.4byte 0x04000001
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StopWaitEvent
	.4byte 0xFFFFFFFD
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFD
	.4byte 0x00000001
	.4byte str_M_S_1_gor_0001e2a0
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0xFFFFFF8B
	.4byte 0x0000003E
	.4byte 0x0000011C
	.4byte 0xFFFFFF8D
	.4byte 0x0000002B
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0001006F
	.4byte 0xFE363C85
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x0000000F
	.4byte 0x00010005
	.4byte 0x00000010
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFD
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0002005B
	.4byte btlevtcmd_WaitEventEnd
	.4byte 0xFE363C85
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte btlevtcmd_SetTalkPose
	.4byte 0xFE363C83
	.4byte str_PKR_T_1_gor_0001e2a8
	.4byte 0x0003005B
	.4byte btlevtcmd_SetStayPose
	.4byte 0xFE363C83
	.4byte str_PKR_S_1_gor_0001e2b0
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_mac_0_b_t1_000_gor_0001e2b8
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFD
	.4byte str_SFX_VOICE_MARIO_HAND_gor_0001e2c8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFD
	.4byte 0x00000001
	.4byte str_M_N_2_gor_0001e2e4
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeWaitPlayComplete
	.4byte 0xFFFFFFFD
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFD
	.4byte 0x00000001
	.4byte 0x0000002B
	.4byte 0x0001006F
	.4byte 0xFE363C85
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0x0000000F
	.4byte 0x00010005
	.4byte 0x00000010
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFD
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0002005B
	.4byte btlevtcmd_WaitEventEnd
	.4byte 0xFE363C85
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFD
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_CheckPhase
	.4byte 0xFE363C80
	.4byte 0x04000003
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetMaxHp
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C81
	.4byte 0x00020038
	.4byte 0xFE363C81
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_mac_0_b_t1_003_gor_0001e2ec
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte _mario_ac_success_check
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_mac_0_b_t1_001_gor_0001e2fc
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte _mario_ac_failed_check
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_mac_0_b_t1_002_gor_0001e30c
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0x840 | 0x44D30 | size: 0x28
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

# .data:0x868 | 0x44D58 | size: 0x60
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
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_kanbu1_attack
	.4byte 0x0001005E
	.4byte normal_attack_event
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x8C8 | 0x44DB8 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x8E0 | 0x44DD0 | size: 0x450
.obj dead_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckDataOfDataTable
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_RunDataEventChild
	.4byte 0xFE363C8A
	.4byte 0x00000032
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000030
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFE363C8A
	.4byte str_SFX_BTL_ENEMY_DIE1_1_gor_0001e31c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0xFFFFFFF1
	.4byte 0x00000000
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFE363C8A
	.4byte str_SFX_BTL_ENEMY_DIE1_2_gor_0001e334
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_kemuri_test_gor_0001e34c
	.4byte 0x00000004
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A7DB3
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetCoin
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte btlevtcmd_StoreCoin
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte btlevtcmd_GetExp
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte btlevtcmd_StoreExp
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C8A
	.4byte 0xFE363C83
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte _add_star_point_disp_offset
	.4byte 0xFE363C8A
	.4byte 0xFE363C83
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_gor_0001e358
	.4byte str_star_point_gor_0001e35c
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotateOffset
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x00010003
	.4byte 0x00000014
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFE363C8A
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000014
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_GetBackItem
	.4byte 0xFE363C8A
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x03000000
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitAttackEnd
	.4byte 0x0002005B
	.4byte btlevtcmd_StopWaitEvent
	.4byte 0xFFFFFFFD
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFD
	.4byte 0x00000001
	.4byte str_M_S_1_gor_0001e2a0
	.4byte 0x0001006F
	.4byte 0xFE363C85
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x0000000F
	.4byte 0x00010005
	.4byte 0x00000010
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFD
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0002005B
	.4byte btlevtcmd_WaitEventEnd
	.4byte 0xFE363C85
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte btlevtcmd_SetTalkPose
	.4byte 0xFE363C83
	.4byte str_PKR_T_1_gor_0001e2a8
	.4byte 0x0003005B
	.4byte btlevtcmd_SetStayPose
	.4byte 0xFE363C83
	.4byte str_PKR_S_1_gor_0001e2b0
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_mac_0_b_t1_004_gor_0001e368
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000011
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_mac_0_b_t1_005_gor_0001e378
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0001006F
	.4byte 0xFE363C85
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0x0000000F
	.4byte 0x00010005
	.4byte 0x00000010
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFD
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0002005B
	.4byte btlevtcmd_WaitEventEnd
	.4byte 0xFE363C85
	.4byte 0x0003005B
	.4byte btlevtcmd_KillUnit
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dead_event

# .data:0xD30 | 0x45220 | size: 0x90
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_N_1_gor_0001e388
	.4byte 0x00000002
	.4byte str_Y_1_gor_0001e38c
	.4byte 0x00000009
	.4byte str_Y_1_gor_0001e38c
	.4byte 0x00000005
	.4byte str_K_1_gor_0001e390
	.4byte 0x00000004
	.4byte str_X_1_gor_0001e394
	.4byte 0x00000003
	.4byte str_X_1_gor_0001e394
	.4byte 0x0000001C
	.4byte str_S_1_gor_0001e398
	.4byte 0x00000041
	.4byte str_T_1_gor_0001e39c
	.4byte 0x0000001D
	.4byte str_Q_1_gor_0001e3a0
	.4byte 0x0000001E
	.4byte str_Q_1_gor_0001e3a0
	.4byte 0x0000001F
	.4byte str_S_1_gor_0001e398
	.4byte 0x00000027
	.4byte str_D_1_gor_0001e3a4
	.4byte 0x0000002A
	.4byte str_R_2_gor_0001e3a8
	.4byte 0x00000028
	.4byte str_W_1_gor_0001e3ac
	.4byte 0x00000038
	.4byte str_X_1_gor_0001e394
	.4byte 0x00000039
	.4byte str_X_1_gor_0001e394
	.4byte 0x00000041
	.4byte str_T_1_gor_0001e39c
	.4byte 0x00000045
	.4byte str_S_1_gor_0001e398
.endobj pose_table

# .data:0xDC0 | 0x452B0 | size: 0x90
.obj pose_table_guard, local
	.4byte 0x00000001
	.4byte str_N_1_gor_0001e388
	.4byte 0x00000002
	.4byte str_Y_1_gor_0001e38c
	.4byte 0x00000009
	.4byte str_Y_1_gor_0001e38c
	.4byte 0x00000005
	.4byte str_K_1_gor_0001e390
	.4byte 0x00000004
	.4byte str_X_1_gor_0001e394
	.4byte 0x00000003
	.4byte str_X_1_gor_0001e394
	.4byte 0x0000001C
	.4byte str_G_2_gor_0001e3b0
	.4byte 0x00000041
	.4byte str_T_1_gor_0001e39c
	.4byte 0x0000001D
	.4byte str_Q_1_gor_0001e3a0
	.4byte 0x0000001E
	.4byte str_Q_1_gor_0001e3a0
	.4byte 0x0000001F
	.4byte str_G_2_gor_0001e3b0
	.4byte 0x00000027
	.4byte str_D_1_gor_0001e3a4
	.4byte 0x0000002A
	.4byte str_R_2_gor_0001e3a8
	.4byte 0x00000028
	.4byte str_W_1_gor_0001e3ac
	.4byte 0x00000038
	.4byte str_X_1_gor_0001e394
	.4byte 0x00000039
	.4byte str_X_1_gor_0001e394
	.4byte 0x00000041
	.4byte str_T_1_gor_0001e39c
	.4byte 0x00000045
	.4byte str_G_2_gor_0001e3b0
.endobj pose_table_guard

# .data:0xE50 | 0x45340 | size: 0x5B4
.obj normal_attack_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_check_battleflag
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetFirstAttackTarget
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte 0xFE363C89
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000021
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
	.4byte 0x00000008
	.4byte 0x0004005B
	.4byte evt_btl_camera_set_homing_unit
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_R_2_gor_0001e3a8
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0000003C
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8A80
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KANBU_JUMP1_gor_0001e3b4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006E
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1A_gor_0001e3cc
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1B_gor_0001e3d4
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xF24A8280
	.4byte 0xF24A7B4C
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000000
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
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0002005B
	.4byte btlevtcmd_JumpContinue
	.4byte 0xFFFFFFFE
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1C_gor_0001e3dc
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KANBU_HIP_A_gor_0001e3e4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7B4C
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1C_gor_0001e3dc
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7B4C
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1C_gor_0001e3dc
	.4byte 0x00010009
	.4byte 0x00000019
	.4byte 0x0000006E
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KANBU_HIP_A_gor_0001e400
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000007
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KANBU_HIP_A_gor_0001e400
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_D_1_gor_0001e3a4
	.4byte 0x00010009
	.4byte 0x0000000F
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_gor_0001e398
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_R_1_gor_0001e41c
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A9680
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj normal_attack_event

# .data:0x1404 | 0x458F4 | size: 0x4
.obj gap_04_000458F4_data, global
.hidden gap_04_000458F4_data
	.4byte 0x00000000
.endobj gap_04_000458F4_data
