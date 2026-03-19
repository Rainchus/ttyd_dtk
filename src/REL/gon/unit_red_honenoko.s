.include "macros.inc"
.file "unit_red_honenoko.o"

# 0x000025CC..0x0000266C | size: 0xA0
.text
.balign 4

# .text:0x0 | 0x25CC | size: 0xA0
.fn honenoko_copy_status, local
/* 000025CC 000026B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 000025D0 000026B4  7C 08 02 A6 */	mflr r0
/* 000025D4 000026B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 000025D8 000026BC  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 000025DC 000026C0  7C 7D 1B 78 */	mr r29, r3
/* 000025E0 000026C4  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 000025E4 000026C8  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 000025E8 000026CC  4B FF DB F9 */	bl evtGetValue
/* 000025EC 000026D0  7C 64 1B 78 */	mr r4, r3
/* 000025F0 000026D4  7F A3 EB 78 */	mr r3, r29
/* 000025F4 000026D8  4B FF DB ED */	bl BattleTransID
/* 000025F8 000026DC  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 000025FC 000026E0  7C 7F 1B 78 */	mr r31, r3
/* 00002600 000026E4  7F A3 EB 78 */	mr r3, r29
/* 00002604 000026E8  4B FF DB DD */	bl evtGetValue
/* 00002608 000026EC  7C 64 1B 78 */	mr r4, r3
/* 0000260C 000026F0  7F A3 EB 78 */	mr r3, r29
/* 00002610 000026F4  4B FF DB D1 */	bl BattleTransID
/* 00002614 000026F8  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00002618 000026FC  7C 7E 1B 78 */	mr r30, r3
/* 0000261C 00002700  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00002620 00002704  80 05 00 00 */	lwz r0, 0x0(r5)
/* 00002624 00002708  7F E4 FB 78 */	mr r4, r31
/* 00002628 0000270C  7C 1D 03 78 */	mr r29, r0
/* 0000262C 00002710  7C 03 03 78 */	mr r3, r0
/* 00002630 00002714  4B FF DB B1 */	bl BattleGetUnitPtr
/* 00002634 00002718  7C 7F 1B 78 */	mr r31, r3
/* 00002638 0000271C  7F A3 EB 78 */	mr r3, r29
/* 0000263C 00002720  7F C4 F3 78 */	mr r4, r30
/* 00002640 00002724  4B FF DB A1 */	bl BattleGetUnitPtr
/* 00002644 00002728  88 1F 01 23 */	lbz r0, 0x123(r31)
/* 00002648 0000272C  98 03 01 23 */	stb r0, 0x123(r3)
/* 0000264C 00002730  88 1F 01 24 */	lbz r0, 0x124(r31)
/* 00002650 00002734  98 03 01 24 */	stb r0, 0x124(r3)
/* 00002654 00002738  38 60 00 02 */	li r3, 0x2
/* 00002658 0000273C  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 0000265C 00002740  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00002660 00002744  7C 08 03 A6 */	mtlr r0
/* 00002664 00002748  38 21 00 20 */	addi r1, r1, 0x20
/* 00002668 0000274C  4E 80 00 20 */	blr
.endfn honenoko_copy_status

# 0x00002CF8..0x00002F90 | size: 0x298
.rodata
.balign 8

# .rodata:0x0 | 0x2CF8 | size: 0x14
.obj str_btl_un_red_honenoko_gon_00006ac8, local
	.string "btl_un_red_honenoko"
.endobj str_btl_un_red_honenoko_gon_00006ac8

# .rodata:0x14 | 0x2D0C | size: 0x1A
.obj str_SFX_ENM_HONENOKO_DAM_gon_00006adc, local
	.string "SFX_ENM_HONENOKO_DAMAGED1"
.endobj str_SFX_ENM_HONENOKO_DAM_gon_00006adc

# .rodata:0x2E | 0x2D26 | size: 0x2
.obj gap_03_00002D26_rodata, global
.hidden gap_03_00002D26_rodata
	.2byte 0x0000
.endobj gap_03_00002D26_rodata

# .rodata:0x30 | 0x2D28 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_gon_00006af8, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_gon_00006af8

# .rodata:0x45 | 0x2D3D | size: 0x3
.obj gap_03_00002D3D_rodata, global
.hidden gap_03_00002D3D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002D3D_rodata

# .rodata:0x48 | 0x2D40 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_gon_00006b10, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_gon_00006b10

# .rodata:0x5C | 0x2D54 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_gon_00006b24, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_gon_00006b24

# .rodata:0x75 | 0x2D6D | size: 0x3
.obj gap_03_00002D6D_rodata, global
.hidden gap_03_00002D6D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002D6D_rodata

# .rodata:0x78 | 0x2D70 | size: 0xC
.obj str_c_karon_r_h_gon_00006b40, local
	.string "c_karon_r_h"
.endobj str_c_karon_r_h_gon_00006b40

# .rodata:0x84 | 0x2D7C | size: 0xD
.obj str_c_nagehone_g_gon_00006b4c, local
	.string "c_nagehone_g"
.endobj str_c_nagehone_g_gon_00006b4c

# .rodata:0x91 | 0x2D89 | size: 0x3
.obj gap_03_00002D89_rodata, global
.hidden gap_03_00002D89_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002D89_rodata

# .rodata:0x94 | 0x2D8C | size: 0xC
.obj str_c_karon_g_h_gon_00006b5c, local
	.string "c_karon_g_h"
.endobj str_c_karon_g_h_gon_00006b5c

# .rodata:0xA0 | 0x2D98 | size: 0x8
.obj str_KRN_N_1_gon_00006b68, local
	.string "KRN_N_1"
.endobj str_KRN_N_1_gon_00006b68

# .rodata:0xA8 | 0x2DA0 | size: 0x8
.obj str_KRN_Y_1_gon_00006b70, local
	.string "KRN_Y_1"
.endobj str_KRN_Y_1_gon_00006b70

# .rodata:0xB0 | 0x2DA8 | size: 0x8
.obj str_KRN_K_1_gon_00006b78, local
	.string "KRN_K_1"
.endobj str_KRN_K_1_gon_00006b78

# .rodata:0xB8 | 0x2DB0 | size: 0x8
.obj str_KRN_X_1_gon_00006b80, local
	.string "KRN_X_1"
.endobj str_KRN_X_1_gon_00006b80

# .rodata:0xC0 | 0x2DB8 | size: 0x8
.obj str_KRN_Z_2_gon_00006b88, local
	.string "KRN_Z_2"
.endobj str_KRN_Z_2_gon_00006b88

# .rodata:0xC8 | 0x2DC0 | size: 0x8
.obj str_KRN_S_1_gon_00006b90, local
	.string "KRN_S_1"
.endobj str_KRN_S_1_gon_00006b90

# .rodata:0xD0 | 0x2DC8 | size: 0x8
.obj str_KRN_Q_1_gon_00006b98, local
	.string "KRN_Q_1"
.endobj str_KRN_Q_1_gon_00006b98

# .rodata:0xD8 | 0x2DD0 | size: 0x8
.obj str_KRN_D_1_gon_00006ba0, local
	.string "KRN_D_1"
.endobj str_KRN_D_1_gon_00006ba0

# .rodata:0xE0 | 0x2DD8 | size: 0x8
.obj str_KRN_A_1_gon_00006ba8, local
	.string "KRN_A_1"
.endobj str_KRN_A_1_gon_00006ba8

# .rodata:0xE8 | 0x2DE0 | size: 0x8
.obj str_KRN_R_1_gon_00006bb0, local
	.string "KRN_R_1"
.endobj str_KRN_R_1_gon_00006bb0

# .rodata:0xF0 | 0x2DE8 | size: 0x8
.obj str_KRN_W_1_gon_00006bb8, local
	.string "KRN_W_1"
.endobj str_KRN_W_1_gon_00006bb8

# .rodata:0xF8 | 0x2DF0 | size: 0x8
.obj str_KRN_T_1_gon_00006bc0, local
	.string "KRN_T_1"
.endobj str_KRN_T_1_gon_00006bc0

# .rodata:0x100 | 0x2DF8 | size: 0x2
.obj str_0_gon_00006bc8, local
	.string "0"
.endobj str_0_gon_00006bc8

# .rodata:0x102 | 0x2DFA | size: 0x2
.obj gap_03_00002DFA_rodata, global
.hidden gap_03_00002DFA_rodata
	.2byte 0x0000
.endobj gap_03_00002DFA_rodata

# .rodata:0x104 | 0x2DFC | size: 0x1A
.obj str_SFX_ENM_HONENOKO_LAN_gon_00006bcc, local
	.string "SFX_ENM_HONENOKO_LANDING1"
.endobj str_SFX_ENM_HONENOKO_LAN_gon_00006bcc

# .rodata:0x11E | 0x2E16 | size: 0x2
.obj gap_03_00002E16_rodata, global
.hidden gap_03_00002E16_rodata
	.2byte 0x0000
.endobj gap_03_00002E16_rodata

# .rodata:0x120 | 0x2E18 | size: 0x15
.obj str_SFX_BTL_ENEMY_DIE1_1_gon_00006be8, local
	.string "SFX_BTL_ENEMY_DIE1_1"
.endobj str_SFX_BTL_ENEMY_DIE1_1_gon_00006be8

# .rodata:0x135 | 0x2E2D | size: 0x3
.obj gap_03_00002E2D_rodata, global
.hidden gap_03_00002E2D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002E2D_rodata

# .rodata:0x138 | 0x2E30 | size: 0x15
.obj str_SFX_BTL_ENEMY_DIE1_2_gon_00006c00, local
	.string "SFX_BTL_ENEMY_DIE1_2"
.endobj str_SFX_BTL_ENEMY_DIE1_2_gon_00006c00

# .rodata:0x14D | 0x2E45 | size: 0x3
.obj gap_03_00002E45_rodata, global
.hidden gap_03_00002E45_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002E45_rodata

# .rodata:0x150 | 0x2E48 | size: 0xC
.obj str_kemuri_test_gon_00006c18, local
	.string "kemuri_test"
.endobj str_kemuri_test_gon_00006c18

# .rodata:0x15C | 0x2E54 | size: 0x1
.obj zero_gon_00006c24, local
	.byte 0x00
.endobj zero_gon_00006c24

# .rodata:0x15D | 0x2E55 | size: 0x3
.obj gap_03_00002E55_rodata, global
.hidden gap_03_00002E55_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002E55_rodata

# .rodata:0x160 | 0x2E58 | size: 0xB
.obj str_star_point_gon_00006c28, local
	.string "star_point"
.endobj str_star_point_gon_00006c28

# .rodata:0x16B | 0x2E63 | size: 0x1
.obj gap_03_00002E63_rodata, global
.hidden gap_03_00002E63_rodata
	.byte 0x00
.endobj gap_03_00002E63_rodata

# .rodata:0x16C | 0x2E64 | size: 0x8
.obj str_KRN_D_2_gon_00006c34, local
	.string "KRN_D_2"
.endobj str_KRN_D_2_gon_00006c34

# .rodata:0x174 | 0x2E6C | size: 0x1A
.obj str_SFX_ENM_HONENOKO_CRU_gon_00006c3c, local
	.string "SFX_ENM_HONENOKO_CRUMBLE1"
.endobj str_SFX_ENM_HONENOKO_CRU_gon_00006c3c

# .rodata:0x18E | 0x2E86 | size: 0x2
.obj gap_03_00002E86_rodata, global
.hidden gap_03_00002E86_rodata
	.2byte 0x0000
.endobj gap_03_00002E86_rodata

# .rodata:0x190 | 0x2E88 | size: 0x8
.obj str_KRN_D_3_gon_00006c58, local
	.string "KRN_D_3"
.endobj str_KRN_D_3_gon_00006c58

# .rodata:0x198 | 0x2E90 | size: 0x18
.obj str_SFX_ENM_HONENOKO_UNI_gon_00006c60, local
	.string "SFX_ENM_HONENOKO_UNITE1"
.endobj str_SFX_ENM_HONENOKO_UNI_gon_00006c60

# .rodata:0x1B0 | 0x2EA8 | size: 0x8
.obj str_KRN_D_4_gon_00006c78, local
	.string "KRN_D_4"
.endobj str_KRN_D_4_gon_00006c78

# .rodata:0x1B8 | 0x2EB0 | size: 0x18
.obj str_SFX_ENM_HONENOKO_UNI_gon_00006c80, local
	.string "SFX_ENM_HONENOKO_UNITE2"
.endobj str_SFX_ENM_HONENOKO_UNI_gon_00006c80

# .rodata:0x1D0 | 0x2EC8 | size: 0x8
.obj str_KRN_A_2_gon_00006c98, local
	.string "KRN_A_2"
.endobj str_KRN_A_2_gon_00006c98

# .rodata:0x1D8 | 0x2ED0 | size: 0x1D
.obj str_SFX_ENM_HONENOKO_SEN_gon_00006ca0, local
	.string "SFX_ENM_HONENOKO_SEND_GROUP1"
.endobj str_SFX_ENM_HONENOKO_SEN_gon_00006ca0

# .rodata:0x1F5 | 0x2EED | size: 0x3
.obj gap_03_00002EED_rodata, global
.hidden gap_03_00002EED_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002EED_rodata

# .rodata:0x1F8 | 0x2EF0 | size: 0x1D
.obj str_SFX_ENM_HONENOKO_BON_gon_00006cc0, local
	.string "SFX_ENM_HONENOKO_BONE_THROW1"
.endobj str_SFX_ENM_HONENOKO_BON_gon_00006cc0

# .rodata:0x215 | 0x2F0D | size: 0x3
.obj gap_03_00002F0D_rodata, global
.hidden gap_03_00002F0D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002F0D_rodata

# .rodata:0x218 | 0x2F10 | size: 0x8
.obj str_KRN_H_1_gon_00006ce0, local
	.string "KRN_H_1"
.endobj str_KRN_H_1_gon_00006ce0

# .rodata:0x220 | 0x2F18 | size: 0x8
.obj str_KRN_A_3_gon_00006ce8, local
	.string "KRN_A_3"
.endobj str_KRN_A_3_gon_00006ce8

# .rodata:0x228 | 0x2F20 | size: 0x8
.obj str_KRN_A_4_gon_00006cf0, local
	.string "KRN_A_4"
.endobj str_KRN_A_4_gon_00006cf0

# .rodata:0x230 | 0x2F28 | size: 0x8
.obj str_KRN_H_4_gon_00006cf8, local
	.string "KRN_H_4"
.endobj str_KRN_H_4_gon_00006cf8

# .rodata:0x238 | 0x2F30 | size: 0x8
.obj str_KRN_H_5_gon_00006d00, local
	.string "KRN_H_5"
.endobj str_KRN_H_5_gon_00006d00

# .rodata:0x240 | 0x2F38 | size: 0x8
.obj str_KRN_H_3_gon_00006d08, local
	.string "KRN_H_3"
.endobj str_KRN_H_3_gon_00006d08

# .rodata:0x248 | 0x2F40 | size: 0x8
.obj str_KRN_H_2_gon_00006d10, local
	.string "KRN_H_2"
.endobj str_KRN_H_2_gon_00006d10

# .rodata:0x250 | 0x2F48 | size: 0x1D
.obj str_SFX_ENM_HONENOKO_SEN_gon_00006d18, local
	.string "SFX_ENM_HONENOKO_SEND_GROUP2"
.endobj str_SFX_ENM_HONENOKO_SEN_gon_00006d18

# .rodata:0x26D | 0x2F65 | size: 0x3
.obj gap_03_00002F65_rodata, global
.hidden gap_03_00002F65_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002F65_rodata

# .rodata:0x270 | 0x2F68 | size: 0x8
.obj str_KRN_C_5_gon_00006d38, local
	.string "KRN_C_5"
.endobj str_KRN_C_5_gon_00006d38

# .rodata:0x278 | 0x2F70 | size: 0x8
.obj str_KRN_C_4_gon_00006d40, local
	.string "KRN_C_4"
.endobj str_KRN_C_4_gon_00006d40

# .rodata:0x280 | 0x2F78 | size: 0x8
.obj str_KRN_C_3_gon_00006d48, local
	.string "KRN_C_3"
.endobj str_KRN_C_3_gon_00006d48

# .rodata:0x288 | 0x2F80 | size: 0x8
.obj str_KRN_C_2_gon_00006d50, local
	.string "KRN_C_2"
.endobj str_KRN_C_2_gon_00006d50

# .rodata:0x290 | 0x2F88 | size: 0x8
.obj str_KRN_C_1_gon_00006d58, local
	.string "KRN_C_1"
.endobj str_KRN_C_1_gon_00006d58

# 0x000170C0..0x00018B00 | size: 0x1A40
.data
.balign 8

# .data:0x0 | 0x170C0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x170C8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x170CC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x170D0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x170D4 | size: 0x4
.obj gap_04_000170D4_data, global
.hidden gap_04_000170D4_data
	.4byte 0x00000000
.endobj gap_04_000170D4_data

# .data:0x18 | 0x170D8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x170E0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x170E4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x170E8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x170F0 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x170F4 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x170F8 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x170FC | size: 0x4
.obj gap_04_000170FC_data, global
.hidden gap_04_000170FC_data
	.4byte 0x00000000
.endobj gap_04_000170FC_data

# .data:0x40 | 0x17100 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x17108 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x1710C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x17110 | size: 0xC4
.obj unit_red_honenoko_8_data_17110, global
	.4byte 0x00000016
	.4byte str_btl_un_red_honenoko_gon_00006ac8
	.4byte 0x00050000
	.4byte 0x01010E00
	.4byte 0x01640232
	.4byte 0x00090024
	.4byte 0x0028FFFC
	.4byte 0x00280000
	.4byte 0x00000000
	.4byte 0x41A00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41100000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41900000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41100000
	.4byte 0x41C00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41A00000
	.4byte 0x00000000
	.4byte 0x42100000
	.4byte 0x42200000
	.4byte 0x00000002
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_ENM_HONENOKO_DAM_gon_00006adc
	.4byte str_SFX_BTL_DAMAGE_FIRE1_gon_00006af8
	.4byte str_SFX_BTL_DAMAGE_ICE1_gon_00006b10
	.4byte str_SFX_BTL_DAMAGE_BIRIB_gon_00006b24
	.4byte 0x00010000
	.4byte regist
	.4byte 0x04000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_red_honenoko_8_data_17110

# .data:0x114 | 0x171D4 | size: 0x5
.obj defence, local
	.4byte 0x01010101
	.byte 0x01
.endobj defence

# .data:0x119 | 0x171D9 | size: 0x3
.obj gap_04_000171D9_data, global
.hidden gap_04_000171D9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_000171D9_data

# .data:0x11C | 0x171DC | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x171E1 | size: 0x3
.obj gap_04_000171E1_data, global
.hidden gap_04_000171E1_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_000171E1_data

# .data:0x124 | 0x171E4 | size: 0x16
.obj regist, local
	.4byte 0x00552800
	.4byte 0x28645A50
	.4byte 0x645A645A
	.4byte 0x645A5000
	.4byte 0x50645064
	.2byte 0x6400
.endobj regist

# .data:0x13A | 0x171FA | size: 0x2
.obj gap_04_000171FA_data, global
.hidden gap_04_000171FA_data
	.2byte 0x0000
.endobj gap_04_000171FA_data

# .data:0x13C | 0x171FC | size: 0x130
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_red_honenoko_gon_00006ac8
	.4byte str_c_karon_r_h_gon_00006b40
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x420C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42340000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000002
	.4byte str_btl_un_red_honenoko_gon_00006ac8
	.4byte str_c_karon_r_h_gon_00006b40
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41700000
	.4byte 0x41C80000
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
	.4byte 0x00000003
	.4byte str_btl_un_red_honenoko_gon_00006ac8
	.4byte str_c_nagehone_g_gon_00006b4c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41700000
	.4byte 0x41C80000
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
	.4byte 0x00000004
	.4byte str_btl_un_red_honenoko_gon_00006ac8
	.4byte str_c_karon_g_h_gon_00006b5c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41700000
	.4byte 0x41C80000
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

# .data:0x26C | 0x1732C | size: 0xC0
.obj weapon_honenoko_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000003
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
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000087
	.4byte 0x000007FF
	.4byte 0x80002004
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
.endobj weapon_honenoko_attack

# .data:0x32C | 0x173EC | size: 0x30
.obj entry_honenoko, local
	.4byte unit_honenoko_8_data_14B38
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
.endobj entry_honenoko

# .data:0x35C | 0x1741C | size: 0x98
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_KRN_N_1_gon_00006b68
	.4byte 0x00000002
	.4byte str_KRN_Y_1_gon_00006b70
	.4byte 0x00000009
	.4byte str_KRN_Y_1_gon_00006b70
	.4byte 0x00000005
	.4byte str_KRN_K_1_gon_00006b78
	.4byte 0x00000004
	.4byte str_KRN_X_1_gon_00006b80
	.4byte 0x00000003
	.4byte str_KRN_X_1_gon_00006b80
	.4byte 0x0000001B
	.4byte str_KRN_Z_2_gon_00006b88
	.4byte 0x0000001C
	.4byte str_KRN_S_1_gon_00006b90
	.4byte 0x0000001D
	.4byte str_KRN_Q_1_gon_00006b98
	.4byte 0x0000001E
	.4byte str_KRN_Q_1_gon_00006b98
	.4byte 0x0000001F
	.4byte str_KRN_S_1_gon_00006b90
	.4byte 0x00000027
	.4byte str_KRN_D_1_gon_00006ba0
	.4byte 0x00000032
	.4byte str_KRN_A_1_gon_00006ba8
	.4byte 0x0000002A
	.4byte str_KRN_R_1_gon_00006bb0
	.4byte 0x00000028
	.4byte str_KRN_W_1_gon_00006bb8
	.4byte 0x00000038
	.4byte str_KRN_X_1_gon_00006b80
	.4byte 0x00000039
	.4byte str_KRN_X_1_gon_00006b80
	.4byte 0x00000041
	.4byte str_KRN_T_1_gon_00006bc0
	.4byte 0x00000045
	.4byte str_KRN_S_1_gon_00006b90
.endobj pose_table

# .data:0x3F4 | 0x174B4 | size: 0x20
.obj data_table, local
	.4byte 0x00000031
	.4byte dead_event
	.4byte 0x0000000F
	.4byte fake_dead_event
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x414 | 0x174D4 | size: 0x7C
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
	.4byte attack_event
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetJumpSound
	.4byte 0xFFFFFFFE
	.4byte str_0_gon_00006bc8
	.4byte str_SFX_ENM_HONENOKO_LAN_gon_00006bcc
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x490 | 0x17550 | size: 0x28
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

# .data:0x4B8 | 0x17578 | size: 0x2F8
.obj dead_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000030
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFE363C8A
	.4byte str_SFX_BTL_ENEMY_DIE1_1_gon_00006be8
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
	.4byte str_SFX_BTL_ENEMY_DIE1_2_gon_00006c00
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
	.4byte str_kemuri_test_gon_00006c18
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
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000001
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
	.4byte zero_gon_00006c24
	.4byte str_star_point_gon_00006c28
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
	.4byte btlevtcmd_CheckDamageCode
	.4byte 0xFE363C8A
	.4byte 0x00000400
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_KillUnit
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte btlevtcmd_KillUnit
	.4byte 0xFE363C8A
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dead_event

# .data:0x7B0 | 0x17870 | size: 0x294
.obj fake_dead_event, local
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8A80
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFE363C8A
	.4byte str_SFX_BTL_ENEMY_DIE1_2_gon_00006c00
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
	.4byte str_kemuri_test_gon_00006c18
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
	.4byte zero_gon_00006c24
	.4byte str_star_point_gon_00006c28
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
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRN_D_2_gon_00006c34
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HONENOKO_CRU_gon_00006c3c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte btlevtcmd_KillUnit
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitOffset
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xFFFFFFEC
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj fake_dead_event

# .data:0xA44 | 0x17B04 | size: 0x10C
.obj rebirth_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRN_D_3_gon_00006c58
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HONENOKO_UNI_gon_00006c60
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRN_D_4_gon_00006c78
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HONENOKO_UNI_gon_00006c80
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte btlevtcmd_OffAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00020000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetMaxHp
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte btlevtcmd_SetHp
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj rebirth_event

# .data:0xB50 | 0x17C10 | size: 0x2E4
.obj attack_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_check_battleflag
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte normal_attack_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte rebirth_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
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
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x0000003C
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x0000003C
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x0001005E
	.4byte normal_attack_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010005
	.4byte 0x00000001
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
	.4byte call_friend_event
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010005
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0x000000AA
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
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte call_friend_event
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0xE34 | 0x17EF4 | size: 0x68
.obj start_avoid, local
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000026
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000027
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000028
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj start_avoid

# .data:0xE9C | 0x17F5C | size: 0x6B0
.obj normal_attack_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_check_battleflag
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000002EE
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
	.4byte weapon_honenoko_attack
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte weapon_honenoko_attack
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
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte weapon_honenoko_attack
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
	.4byte weapon_honenoko_attack
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
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRN_A_1_gon_00006ba8
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRN_A_2_gon_00006c98
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HONENOKO_SEN_gon_00006ca0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HONENOKO_BON_gon_00006cc0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_KRN_H_1_gon_00006ce0
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x02000000
	.4byte 0x0006005B
	.4byte btlevtcmd_GetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000006E
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C8E
	.4byte 0x00020018
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte btlevtcmd_AddPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000019
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_honenoko_attack
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
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x0000002E
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00010024
	.4byte 0x00000002
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
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_GetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0xFE363C86
	.4byte 0x0001005E
	.4byte start_avoid
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0006005B
	.4byte btlevtcmd_GetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0xFE363C86
	.4byte 0x0001005E
	.4byte start_avoid
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0000000F
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000000E
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_GetStageSize
	.4byte 0xFE363C80
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_GetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C89
	.4byte 0x00020037
	.4byte 0xFE363C80
	.4byte 0xFE363C89
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0xF24A9280
	.4byte 0xF24A7AB3
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0000000F
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000000E
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
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
	.4byte 0x00000000
	.4byte 0xF24A9280
	.4byte 0xF24A7B4C
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte weapon_honenoko_attack
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_honenoko_attack
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFFFFFFCE
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0xF24A8280
	.4byte 0xF24A7BB3
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x02000000
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj normal_attack_event

# .data:0x154C | 0x1860C | size: 0x4DC
.obj call_friend_event, local
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
	.4byte 0x000000C8
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRN_A_3_gon_00006ce8
	.4byte 0x00010009
	.4byte 0x00000005
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRN_A_4_gon_00006cf0
	.4byte 0x00010009
	.4byte 0x0000000F
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HONENOKO_SEN_gon_00006ca0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010022
	.4byte 0xFE363C8A
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte str_KRN_H_4_gon_00006cf8
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte str_KRN_H_5_gon_00006d00
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte str_KRN_H_5_gon_00006d00
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte str_KRN_H_3_gon_00006d08
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte str_KRN_H_3_gon_00006d08
	.4byte 0x0000002A
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte str_KRN_H_2_gon_00006d10
	.4byte 0x00000031
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0x03000000
	.4byte 0x0006005B
	.4byte btlevtcmd_GetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C84
	.4byte 0x0000000F
	.4byte 0x00020035
	.4byte 0xFE363C85
	.4byte 0x0000000E
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x0000006E
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C8E
	.4byte 0x00020018
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x00020035
	.4byte 0xFE363C8F
	.4byte 0x00000019
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0xF24A9280
	.4byte 0xF24A7E80
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_GetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HONENOKO_SEN_gon_00006d18
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010022
	.4byte 0xFE363C8A
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte str_KRN_C_5_gon_00006d38
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0x03000000
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte str_KRN_C_4_gon_00006d40
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte str_KRN_C_3_gon_00006d48
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte str_KRN_C_2_gon_00006d50
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte str_KRN_C_1_gon_00006d58
	.4byte 0x0000002A
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte str_KRN_Z_2_gon_00006b88
	.4byte 0x00000031
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0x03000000
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010009
	.4byte 0x0000000F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte str_KRN_D_3_gon_00006c58
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HONENOKO_UNI_gon_00006c60
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte str_KRN_D_4_gon_00006c78
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HONENOKO_UNI_gon_00006c80
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRN_S_1_gon_00006b90
	.4byte 0x0004005B
	.4byte btlevtcmd_SpawnUnit
	.4byte 0xFE363C83
	.4byte entry_honenoko
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
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
	.4byte 0x0003005B
	.4byte honenoko_copy_status
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj call_friend_event

# .data:0x1A28 | 0x18AE8 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event
