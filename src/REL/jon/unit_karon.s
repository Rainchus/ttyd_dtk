.include "macros.inc"
.file "unit_karon.o"

# 0x00004C84..0x00004D24 | size: 0xA0
.text
.balign 4

# .text:0x0 | 0x4C84 | size: 0xA0
.fn honenoko_copy_status, local
/* 00004C84 00004D48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00004C88 00004D4C  7C 08 02 A6 */	mflr r0
/* 00004C8C 00004D50  90 01 00 24 */	stw r0, 0x24(r1)
/* 00004C90 00004D54  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 00004C94 00004D58  7C 7D 1B 78 */	mr r29, r3
/* 00004C98 00004D5C  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00004C9C 00004D60  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00004CA0 00004D64  4B FF BD D1 */	bl evtGetValue
/* 00004CA4 00004D68  7C 64 1B 78 */	mr r4, r3
/* 00004CA8 00004D6C  7F A3 EB 78 */	mr r3, r29
/* 00004CAC 00004D70  4B FF BD C5 */	bl BattleTransID
/* 00004CB0 00004D74  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00004CB4 00004D78  7C 7F 1B 78 */	mr r31, r3
/* 00004CB8 00004D7C  7F A3 EB 78 */	mr r3, r29
/* 00004CBC 00004D80  4B FF BD B5 */	bl evtGetValue
/* 00004CC0 00004D84  7C 64 1B 78 */	mr r4, r3
/* 00004CC4 00004D88  7F A3 EB 78 */	mr r3, r29
/* 00004CC8 00004D8C  4B FF BD A9 */	bl BattleTransID
/* 00004CCC 00004D90  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00004CD0 00004D94  7C 7E 1B 78 */	mr r30, r3
/* 00004CD4 00004D98  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00004CD8 00004D9C  80 05 00 00 */	lwz r0, 0x0(r5)
/* 00004CDC 00004DA0  7F E4 FB 78 */	mr r4, r31
/* 00004CE0 00004DA4  7C 1D 03 78 */	mr r29, r0
/* 00004CE4 00004DA8  7C 03 03 78 */	mr r3, r0
/* 00004CE8 00004DAC  4B FF BD 89 */	bl BattleGetUnitPtr
/* 00004CEC 00004DB0  7C 7F 1B 78 */	mr r31, r3
/* 00004CF0 00004DB4  7F A3 EB 78 */	mr r3, r29
/* 00004CF4 00004DB8  7F C4 F3 78 */	mr r4, r30
/* 00004CF8 00004DBC  4B FF BD 79 */	bl BattleGetUnitPtr
/* 00004CFC 00004DC0  88 1F 01 23 */	lbz r0, 0x123(r31)
/* 00004D00 00004DC4  98 03 01 23 */	stb r0, 0x123(r3)
/* 00004D04 00004DC8  88 1F 01 24 */	lbz r0, 0x124(r31)
/* 00004D08 00004DCC  98 03 01 24 */	stb r0, 0x124(r3)
/* 00004D0C 00004DD0  38 60 00 02 */	li r3, 0x2
/* 00004D10 00004DD4  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 00004D14 00004DD8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00004D18 00004DDC  7C 08 03 A6 */	mtlr r0
/* 00004D1C 00004DE0  38 21 00 20 */	addi r1, r1, 0x20
/* 00004D20 00004DE4  4E 80 00 20 */	blr
.endfn honenoko_copy_status

# 0x00005D18..0x00005FC0 | size: 0x2A8
.rodata
.balign 8

# .rodata:0x0 | 0x5D18 | size: 0xD
.obj str_btl_un_karon_jon_0000cd48, local
	.string "btl_un_karon"
.endobj str_btl_un_karon_jon_0000cd48

# .rodata:0xD | 0x5D25 | size: 0x3
.obj gap_03_00005D25_rodata, global
.hidden gap_03_00005D25_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005D25_rodata

# .rodata:0x10 | 0x5D28 | size: 0x1A
.obj str_SFX_ENM_HONENOKO_DAM_jon_0000cd58, local
	.string "SFX_ENM_HONENOKO_DAMAGED1"
.endobj str_SFX_ENM_HONENOKO_DAM_jon_0000cd58

# .rodata:0x2A | 0x5D42 | size: 0x2
.obj gap_03_00005D42_rodata, global
.hidden gap_03_00005D42_rodata
	.2byte 0x0000
.endobj gap_03_00005D42_rodata

# .rodata:0x2C | 0x5D44 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_jon_0000cd74, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_jon_0000cd74

# .rodata:0x41 | 0x5D59 | size: 0x3
.obj gap_03_00005D59_rodata, global
.hidden gap_03_00005D59_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005D59_rodata

# .rodata:0x44 | 0x5D5C | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_jon_0000cd8c, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_jon_0000cd8c

# .rodata:0x58 | 0x5D70 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_jon_0000cda0, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_jon_0000cda0

# .rodata:0x71 | 0x5D89 | size: 0x3
.obj gap_03_00005D89_rodata, global
.hidden gap_03_00005D89_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005D89_rodata

# .rodata:0x74 | 0x5D8C | size: 0xA
.obj str_c_karon_h_jon_0000cdbc, local
	.string "c_karon_h"
.endobj str_c_karon_h_jon_0000cdbc

# .rodata:0x7E | 0x5D96 | size: 0x2
.obj gap_03_00005D96_rodata, global
.hidden gap_03_00005D96_rodata
	.2byte 0x0000
.endobj gap_03_00005D96_rodata

# .rodata:0x80 | 0x5D98 | size: 0xB
.obj str_c_nagehone_jon_0000cdc8, local
	.string "c_nagehone"
.endobj str_c_nagehone_jon_0000cdc8

# .rodata:0x8B | 0x5DA3 | size: 0x1
.obj gap_03_00005DA3_rodata, global
.hidden gap_03_00005DA3_rodata
	.byte 0x00
.endobj gap_03_00005DA3_rodata

# .rodata:0x8C | 0x5DA4 | size: 0x8
.obj str_KRN_N_1_jon_0000cdd4, local
	.string "KRN_N_1"
.endobj str_KRN_N_1_jon_0000cdd4

# .rodata:0x94 | 0x5DAC | size: 0x8
.obj str_KRN_Y_1_jon_0000cddc, local
	.string "KRN_Y_1"
.endobj str_KRN_Y_1_jon_0000cddc

# .rodata:0x9C | 0x5DB4 | size: 0x8
.obj str_KRN_K_1_jon_0000cde4, local
	.string "KRN_K_1"
.endobj str_KRN_K_1_jon_0000cde4

# .rodata:0xA4 | 0x5DBC | size: 0x8
.obj str_KRN_X_1_jon_0000cdec, local
	.string "KRN_X_1"
.endobj str_KRN_X_1_jon_0000cdec

# .rodata:0xAC | 0x5DC4 | size: 0x8
.obj str_KRN_Z_2_jon_0000cdf4, local
	.string "KRN_Z_2"
.endobj str_KRN_Z_2_jon_0000cdf4

# .rodata:0xB4 | 0x5DCC | size: 0x8
.obj str_KRN_S_1_jon_0000cdfc, local
	.string "KRN_S_1"
.endobj str_KRN_S_1_jon_0000cdfc

# .rodata:0xBC | 0x5DD4 | size: 0x8
.obj str_KRN_Q_1_jon_0000ce04, local
	.string "KRN_Q_1"
.endobj str_KRN_Q_1_jon_0000ce04

# .rodata:0xC4 | 0x5DDC | size: 0x8
.obj str_KRN_D_1_jon_0000ce0c, local
	.string "KRN_D_1"
.endobj str_KRN_D_1_jon_0000ce0c

# .rodata:0xCC | 0x5DE4 | size: 0x8
.obj str_KRN_A_1_jon_0000ce14, local
	.string "KRN_A_1"
.endobj str_KRN_A_1_jon_0000ce14

# .rodata:0xD4 | 0x5DEC | size: 0x8
.obj str_KRN_R_1_jon_0000ce1c, local
	.string "KRN_R_1"
.endobj str_KRN_R_1_jon_0000ce1c

# .rodata:0xDC | 0x5DF4 | size: 0x8
.obj str_KRN_W_1_jon_0000ce24, local
	.string "KRN_W_1"
.endobj str_KRN_W_1_jon_0000ce24

# .rodata:0xE4 | 0x5DFC | size: 0x8
.obj str_KRN_T_1_jon_0000ce2c, local
	.string "KRN_T_1"
.endobj str_KRN_T_1_jon_0000ce2c

# .rodata:0xEC | 0x5E04 | size: 0x8
.obj str_KRN_H_1_jon_0000ce34, local
	.string "KRN_H_1"
.endobj str_KRN_H_1_jon_0000ce34

# .rodata:0xF4 | 0x5E0C | size: 0x2
.obj str_0_jon_0000ce3c, local
	.string "0"
.endobj str_0_jon_0000ce3c

# .rodata:0xF6 | 0x5E0E | size: 0x2
.obj gap_03_00005E0E_rodata, global
.hidden gap_03_00005E0E_rodata
	.2byte 0x0000
.endobj gap_03_00005E0E_rodata

# .rodata:0xF8 | 0x5E10 | size: 0x1A
.obj str_SFX_ENM_HONENOKO_LAN_jon_0000ce40, local
	.string "SFX_ENM_HONENOKO_LANDING1"
.endobj str_SFX_ENM_HONENOKO_LAN_jon_0000ce40

# .rodata:0x112 | 0x5E2A | size: 0x2
.obj gap_03_00005E2A_rodata, global
.hidden gap_03_00005E2A_rodata
	.2byte 0x0000
.endobj gap_03_00005E2A_rodata

# .rodata:0x114 | 0x5E2C | size: 0x15
.obj str_SFX_BTL_ENEMY_DIE1_1_jon_0000ce5c, local
	.string "SFX_BTL_ENEMY_DIE1_1"
.endobj str_SFX_BTL_ENEMY_DIE1_1_jon_0000ce5c

# .rodata:0x129 | 0x5E41 | size: 0x3
.obj gap_03_00005E41_rodata, global
.hidden gap_03_00005E41_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005E41_rodata

# .rodata:0x12C | 0x5E44 | size: 0x15
.obj str_SFX_BTL_ENEMY_DIE1_2_jon_0000ce74, local
	.string "SFX_BTL_ENEMY_DIE1_2"
.endobj str_SFX_BTL_ENEMY_DIE1_2_jon_0000ce74

# .rodata:0x141 | 0x5E59 | size: 0x3
.obj gap_03_00005E59_rodata, global
.hidden gap_03_00005E59_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005E59_rodata

# .rodata:0x144 | 0x5E5C | size: 0xC
.obj str_kemuri_test_jon_0000ce8c, local
	.string "kemuri_test"
.endobj str_kemuri_test_jon_0000ce8c

# .rodata:0x150 | 0x5E68 | size: 0x1
.obj zero_jon_0000ce98, local
	.byte 0x00
.endobj zero_jon_0000ce98

# .rodata:0x151 | 0x5E69 | size: 0x3
.obj gap_03_00005E69_rodata, global
.hidden gap_03_00005E69_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005E69_rodata

# .rodata:0x154 | 0x5E6C | size: 0xB
.obj str_star_point_jon_0000ce9c, local
	.string "star_point"
.endobj str_star_point_jon_0000ce9c

# .rodata:0x15F | 0x5E77 | size: 0x1
.obj gap_03_00005E77_rodata, global
.hidden gap_03_00005E77_rodata
	.byte 0x00
.endobj gap_03_00005E77_rodata

# .rodata:0x160 | 0x5E78 | size: 0x8
.obj str_KRN_D_2_jon_0000cea8, local
	.string "KRN_D_2"
.endobj str_KRN_D_2_jon_0000cea8

# .rodata:0x168 | 0x5E80 | size: 0x1A
.obj str_SFX_ENM_HONENOKO_CRU_jon_0000ceb0, local
	.string "SFX_ENM_HONENOKO_CRUMBLE1"
.endobj str_SFX_ENM_HONENOKO_CRU_jon_0000ceb0

# .rodata:0x182 | 0x5E9A | size: 0x2
.obj gap_03_00005E9A_rodata, global
.hidden gap_03_00005E9A_rodata
	.2byte 0x0000
.endobj gap_03_00005E9A_rodata

# .rodata:0x184 | 0x5E9C | size: 0x8
.obj str_KRN_D_3_jon_0000cecc, local
	.string "KRN_D_3"
.endobj str_KRN_D_3_jon_0000cecc

# .rodata:0x18C | 0x5EA4 | size: 0x18
.obj str_SFX_ENM_HONENOKO_UNI_jon_0000ced4, local
	.string "SFX_ENM_HONENOKO_UNITE1"
.endobj str_SFX_ENM_HONENOKO_UNI_jon_0000ced4

# .rodata:0x1A4 | 0x5EBC | size: 0x8
.obj str_KRN_D_4_jon_0000ceec, local
	.string "KRN_D_4"
.endobj str_KRN_D_4_jon_0000ceec

# .rodata:0x1AC | 0x5EC4 | size: 0x18
.obj str_SFX_ENM_HONENOKO_UNI_jon_0000cef4, local
	.string "SFX_ENM_HONENOKO_UNITE2"
.endobj str_SFX_ENM_HONENOKO_UNI_jon_0000cef4

# .rodata:0x1C4 | 0x5EDC | size: 0x8
.obj str_KRN_A_2_jon_0000cf0c, local
	.string "KRN_A_2"
.endobj str_KRN_A_2_jon_0000cf0c

# .rodata:0x1CC | 0x5EE4 | size: 0x1D
.obj str_SFX_ENM_HONENOKO_SEN_jon_0000cf14, local
	.string "SFX_ENM_HONENOKO_SEND_GROUP1"
.endobj str_SFX_ENM_HONENOKO_SEN_jon_0000cf14

# .rodata:0x1E9 | 0x5F01 | size: 0x3
.obj gap_03_00005F01_rodata, global
.hidden gap_03_00005F01_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005F01_rodata

# .rodata:0x1EC | 0x5F04 | size: 0x1D
.obj str_SFX_ENM_HONENOKO_BON_jon_0000cf34, local
	.string "SFX_ENM_HONENOKO_BONE_THROW2"
.endobj str_SFX_ENM_HONENOKO_BON_jon_0000cf34

# .rodata:0x209 | 0x5F21 | size: 0x3
.obj gap_03_00005F21_rodata, global
.hidden gap_03_00005F21_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005F21_rodata

# .rodata:0x20C | 0x5F24 | size: 0x1D
.obj str_SFX_ENM_HONENOKO_BON_jon_0000cf54, local
	.string "SFX_ENM_HONENOKO_BONE_THROW3"
.endobj str_SFX_ENM_HONENOKO_BON_jon_0000cf54

# .rodata:0x229 | 0x5F41 | size: 0x3
.obj gap_03_00005F41_rodata, global
.hidden gap_03_00005F41_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005F41_rodata

# .rodata:0x22C | 0x5F44 | size: 0x8
.obj str_KRN_A_3_jon_0000cf74, local
	.string "KRN_A_3"
.endobj str_KRN_A_3_jon_0000cf74

# .rodata:0x234 | 0x5F4C | size: 0x8
.obj str_KRN_A_4_jon_0000cf7c, local
	.string "KRN_A_4"
.endobj str_KRN_A_4_jon_0000cf7c

# .rodata:0x23C | 0x5F54 | size: 0x8
.obj str_KRN_H_4_jon_0000cf84, local
	.string "KRN_H_4"
.endobj str_KRN_H_4_jon_0000cf84

# .rodata:0x244 | 0x5F5C | size: 0x8
.obj str_KRN_H_5_jon_0000cf8c, local
	.string "KRN_H_5"
.endobj str_KRN_H_5_jon_0000cf8c

# .rodata:0x24C | 0x5F64 | size: 0x8
.obj str_KRN_H_3_jon_0000cf94, local
	.string "KRN_H_3"
.endobj str_KRN_H_3_jon_0000cf94

# .rodata:0x254 | 0x5F6C | size: 0x8
.obj str_KRN_H_2_jon_0000cf9c, local
	.string "KRN_H_2"
.endobj str_KRN_H_2_jon_0000cf9c

# .rodata:0x25C | 0x5F74 | size: 0x1D
.obj str_SFX_ENM_HONENOKO_SEN_jon_0000cfa4, local
	.string "SFX_ENM_HONENOKO_SEND_GROUP2"
.endobj str_SFX_ENM_HONENOKO_SEN_jon_0000cfa4

# .rodata:0x279 | 0x5F91 | size: 0x3
.obj gap_03_00005F91_rodata, global
.hidden gap_03_00005F91_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005F91_rodata

# .rodata:0x27C | 0x5F94 | size: 0x8
.obj str_KRN_C_5_jon_0000cfc4, local
	.string "KRN_C_5"
.endobj str_KRN_C_5_jon_0000cfc4

# .rodata:0x284 | 0x5F9C | size: 0x8
.obj str_KRN_C_4_jon_0000cfcc, local
	.string "KRN_C_4"
.endobj str_KRN_C_4_jon_0000cfcc

# .rodata:0x28C | 0x5FA4 | size: 0x8
.obj str_KRN_C_3_jon_0000cfd4, local
	.string "KRN_C_3"
.endobj str_KRN_C_3_jon_0000cfd4

# .rodata:0x294 | 0x5FAC | size: 0x8
.obj str_KRN_C_2_jon_0000cfdc, local
	.string "KRN_C_2"
.endobj str_KRN_C_2_jon_0000cfdc

# .rodata:0x29C | 0x5FB4 | size: 0x8
.obj str_KRN_C_1_jon_0000cfe4, local
	.string "KRN_C_1"
.endobj str_KRN_C_1_jon_0000cfe4

# .rodata:0x2A4 | 0x5FBC | size: 0x4
.obj gap_03_00005FBC_rodata, global
.hidden gap_03_00005FBC_rodata
	.4byte 0x00000000
.endobj gap_03_00005FBC_rodata

# 0x000556A0..0x00057B10 | size: 0x2470
.data
.balign 8

# .data:0x0 | 0x556A0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x556A8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x556AC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x556B0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x556B4 | size: 0x4
.obj gap_04_000556B4_data, global
.hidden gap_04_000556B4_data
	.4byte 0x00000000
.endobj gap_04_000556B4_data

# .data:0x18 | 0x556B8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x556C0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x556C4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x556C8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x556D0 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x556D4 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x556D8 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x556DC | size: 0x4
.obj gap_04_000556DC_data, global
.hidden gap_04_000556DC_data
	.4byte 0x00000000
.endobj gap_04_000556DC_data

# .data:0x40 | 0x556E0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x556E8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x556EC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x556F0 | size: 0xC4
.obj unit_karon_14_data_556F0, global
	.4byte 0x00000082
	.4byte str_btl_un_karon_jon_0000cd48
	.4byte 0x00080000
	.4byte 0x01011E00
	.4byte 0x02460232
	.4byte 0x270F0024
	.4byte 0x0028FFFC
	.4byte 0x00280000
	.4byte 0x00000000
	.4byte 0x41A00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41900000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41700000
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
	.4byte str_SFX_ENM_HONENOKO_DAM_jon_0000cd58
	.4byte str_SFX_BTL_DAMAGE_FIRE1_jon_0000cd74
	.4byte str_SFX_BTL_DAMAGE_ICE1_jon_0000cd8c
	.4byte str_SFX_BTL_DAMAGE_BIRIB_jon_0000cda0
	.4byte 0x00010000
	.4byte regist
	.4byte 0x06000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_karon_14_data_556F0

# .data:0x114 | 0x557B4 | size: 0x5
.obj defence, local
	.4byte 0x02020202
	.byte 0x02
.endobj defence

# .data:0x119 | 0x557B9 | size: 0x3
.obj gap_04_000557B9_data, global
.hidden gap_04_000557B9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_000557B9_data

# .data:0x11C | 0x557BC | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x557C1 | size: 0x3
.obj gap_04_000557C1_data, global
.hidden gap_04_000557C1_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_000557C1_data

# .data:0x124 | 0x557C4 | size: 0x16
.obj regist, local
	.4byte 0x004B1E00
	.4byte 0x1E646446
	.4byte 0x645A645A
	.4byte 0x64554600
	.4byte 0x46644664
	.2byte 0x645A
.endobj regist

# .data:0x13A | 0x557DA | size: 0x2
.obj gap_04_000557DA_data, global
.hidden gap_04_000557DA_data
	.2byte 0x0000
.endobj gap_04_000557DA_data

# .data:0x13C | 0x557DC | size: 0x1C8
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_karon_jon_0000cd48
	.4byte str_c_karon_h_jon_0000cdbc
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
	.4byte str_btl_un_karon_jon_0000cd48
	.4byte str_c_karon_h_jon_0000cdbc
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
	.4byte str_btl_un_karon_jon_0000cd48
	.4byte str_c_karon_h_jon_0000cdbc
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
	.4byte str_btl_un_karon_jon_0000cd48
	.4byte str_c_karon_h_jon_0000cdbc
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
	.4byte 0x00000005
	.4byte str_btl_un_karon_jon_0000cd48
	.4byte str_c_nagehone_jon_0000cdc8
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
	.4byte 0x00000006
	.4byte str_btl_un_karon_jon_0000cd48
	.4byte str_c_karon_h_jon_0000cdbc
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

# .data:0x304 | 0x559A4 | size: 0xC0
.obj weapon_honenoko_attack, local
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

# .data:0x3C4 | 0x55A64 | size: 0xC0
.obj weapon_honenoko_link_attack, local
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
.endobj weapon_honenoko_link_attack

# .data:0x484 | 0x55B24 | size: 0x30
.obj entry_honenoko, local
	.4byte unit_karon_14_data_556F0
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

# .data:0x4B4 | 0x55B54 | size: 0x98
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_KRN_N_1_jon_0000cdd4
	.4byte 0x00000002
	.4byte str_KRN_Y_1_jon_0000cddc
	.4byte 0x00000009
	.4byte str_KRN_Y_1_jon_0000cddc
	.4byte 0x00000005
	.4byte str_KRN_K_1_jon_0000cde4
	.4byte 0x00000004
	.4byte str_KRN_X_1_jon_0000cdec
	.4byte 0x00000003
	.4byte str_KRN_X_1_jon_0000cdec
	.4byte 0x0000001B
	.4byte str_KRN_Z_2_jon_0000cdf4
	.4byte 0x0000001C
	.4byte str_KRN_S_1_jon_0000cdfc
	.4byte 0x0000001D
	.4byte str_KRN_Q_1_jon_0000ce04
	.4byte 0x0000001E
	.4byte str_KRN_Q_1_jon_0000ce04
	.4byte 0x0000001F
	.4byte str_KRN_S_1_jon_0000cdfc
	.4byte 0x00000027
	.4byte str_KRN_D_1_jon_0000ce0c
	.4byte 0x00000032
	.4byte str_KRN_A_1_jon_0000ce14
	.4byte 0x0000002A
	.4byte str_KRN_R_1_jon_0000ce1c
	.4byte 0x00000028
	.4byte str_KRN_W_1_jon_0000ce24
	.4byte 0x00000038
	.4byte str_KRN_X_1_jon_0000cdec
	.4byte 0x00000039
	.4byte str_KRN_X_1_jon_0000cdec
	.4byte 0x00000041
	.4byte str_KRN_T_1_jon_0000ce2c
	.4byte 0x00000045
	.4byte str_KRN_S_1_jon_0000cdfc
.endobj pose_table

# .data:0x54C | 0x55BEC | size: 0x20
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

# .data:0x56C | 0x55C0C | size: 0xB8
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
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_KRN_H_1_jon_0000ce34
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte str_KRN_H_1_jon_0000ce34
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte str_KRN_H_1_jon_0000ce34
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetJumpSound
	.4byte 0xFFFFFFFE
	.4byte str_0_jon_0000ce3c
	.4byte str_SFX_ENM_HONENOKO_LAN_jon_0000ce40
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x624 | 0x55CC4 | size: 0x28
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

# .data:0x64C | 0x55CEC | size: 0x2F8
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
	.4byte str_SFX_BTL_ENEMY_DIE1_1_jon_0000ce5c
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
	.4byte str_SFX_BTL_ENEMY_DIE1_2_jon_0000ce74
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
	.4byte str_kemuri_test_jon_0000ce8c
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
	.4byte zero_jon_0000ce98
	.4byte str_star_point_jon_0000ce9c
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

# .data:0x944 | 0x55FE4 | size: 0x294
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
	.4byte str_SFX_BTL_ENEMY_DIE1_2_jon_0000ce74
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
	.4byte str_kemuri_test_jon_0000ce8c
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
	.4byte zero_jon_0000ce98
	.4byte str_star_point_jon_0000ce9c
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
	.4byte str_KRN_D_2_jon_0000cea8
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HONENOKO_CRU_jon_0000ceb0
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

# .data:0xBD8 | 0x56278 | size: 0x10C
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
	.4byte str_KRN_D_3_jon_0000cecc
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HONENOKO_UNI_jon_0000ced4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRN_D_4_jon_0000ceec
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HONENOKO_UNI_jon_0000cef4
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

# .data:0xCE4 | 0x56384 | size: 0x310
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
	.4byte 0x00000032
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x0001005E
	.4byte normal_attack_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x0001005E
	.4byte link_attack_event
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
	.4byte 0x00000000
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

# .data:0xFF4 | 0x56694 | size: 0x68
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

# .data:0x105C | 0x566FC | size: 0x6B0
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
	.4byte str_KRN_A_1_jon_0000ce14
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRN_A_2_jon_0000cf0c
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HONENOKO_SEN_jon_0000cf14
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HONENOKO_BON_jon_0000cf34
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_KRN_H_1_jon_0000ce34
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
	.4byte 0xF24A9A80
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
	.4byte 0xF24A9A80
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

# .data:0x170C | 0x56DAC | size: 0x68
.obj start_avoid2, local
	.4byte 0x00020018
	.4byte 0xFE363C8B
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000026
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C8B
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000027
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C8B
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000028
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj start_avoid2

# .data:0x1774 | 0x56E14 | size: 0x1BC
.obj link_attack_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte weapon_honenoko_link_attack
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte weapon_honenoko_link_attack
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
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte weapon_honenoko_link_attack
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
	.4byte weapon_honenoko_link_attack
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
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte 0x00000002
	.4byte 0x0001005C
	.4byte link_attack_event_sub
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte 0x00000003
	.4byte 0x0001005C
	.4byte link_attack_event_sub
	.4byte 0x00010009
	.4byte 0x00000023
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte 0x00000004
	.4byte 0x0001005C
	.4byte link_attack_event_sub
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x00000002
	.4byte 0x00000001
.endobj link_attack_event

# .data:0x1930 | 0x56FD0 | size: 0x648
.obj link_attack_event_sub, local
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRN_A_1_jon_0000ce14
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRN_A_2_jon_0000cf0c
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0004005B
	.4byte btlevtcmd_AddUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0xFE363C8D
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HONENOKO_SEN_jon_0000cf14
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HONENOKO_BON_jon_0000cf54
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8C
	.4byte str_KRN_H_1_jon_0000ce34
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8C
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8C
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
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000019
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x00020018
	.4byte 0xFE363C8D
	.4byte 0x00000003
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_honenoko_link_attack
	.4byte 0x00000100
	.4byte 0xFE363C8B
	.4byte 0x00000020
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_honenoko_link_attack
	.4byte 0x00000100
	.4byte 0xFE363C8B
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C8D
	.4byte 0x00000003
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xFE363C8E
	.4byte 0x00020018
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000005B
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010022
	.4byte 0xFE363C8B
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
	.4byte 0xFE363C8C
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
	.4byte start_avoid2
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0006005B
	.4byte btlevtcmd_GetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8C
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
	.4byte start_avoid2
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
	.4byte 0xFE363C8C
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
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0xF24A9A80
	.4byte 0xF24A7AB3
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8C
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
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0x00000001
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
	.4byte 0xFE363C8C
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
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0xF24A9A80
	.4byte 0xF24A7B4C
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8C
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte weapon_honenoko_link_attack
	.4byte 0x00020018
	.4byte 0xFE363C8D
	.4byte 0x00000003
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_honenoko_link_attack
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00000020
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_honenoko_link_attack
	.4byte 0x00000000
	.4byte 0xFE363C85
	.4byte 0x00000021
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
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0xF24A8280
	.4byte 0xF24A7BB3
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8C
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x00020018
	.4byte 0xFE363C8D
	.4byte 0x00000003
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0xFFFFFFFF
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8C
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8C
	.4byte 0x02000000
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj link_attack_event_sub

# .data:0x1F78 | 0x57618 | size: 0x4DC
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
	.4byte str_KRN_A_3_jon_0000cf74
	.4byte 0x00010009
	.4byte 0x00000005
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRN_A_4_jon_0000cf7c
	.4byte 0x00010009
	.4byte 0x0000000F
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HONENOKO_SEN_jon_0000cf14
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
	.4byte 0x00000005
	.4byte str_KRN_H_4_jon_0000cf84
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte str_KRN_H_5_jon_0000cf8c
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte str_KRN_H_5_jon_0000cf8c
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte str_KRN_H_3_jon_0000cf94
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte str_KRN_H_3_jon_0000cf94
	.4byte 0x0000002A
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte str_KRN_H_2_jon_0000cf9c
	.4byte 0x00000031
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
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
	.4byte 0x00000005
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
	.4byte 0x00000005
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
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0xF24A9280
	.4byte 0xF24A7E80
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_GetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000006
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HONENOKO_SEN_jon_0000cfa4
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
	.4byte 0x00000006
	.4byte str_KRN_C_5_jon_0000cfc4
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000006
	.4byte 0x03000000
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000006
	.4byte str_KRN_C_4_jon_0000cfcc
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000006
	.4byte str_KRN_C_3_jon_0000cfd4
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000006
	.4byte str_KRN_C_2_jon_0000cfdc
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000006
	.4byte str_KRN_C_1_jon_0000cfe4
	.4byte 0x0000002A
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000006
	.4byte str_KRN_Z_2_jon_0000cdf4
	.4byte 0x00000031
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
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
	.4byte 0x00000006
	.4byte str_KRN_D_3_jon_0000cecc
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HONENOKO_UNI_jon_0000ced4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000006
	.4byte str_KRN_D_4_jon_0000ceec
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HONENOKO_UNI_jon_0000cef4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRN_S_1_jon_0000cdfc
	.4byte 0x0004005B
	.4byte btlevtcmd_SpawnUnit
	.4byte 0xFE363C83
	.4byte entry_honenoko
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000006
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

# .data:0x2454 | 0x57AF4 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x246C | 0x57B0C | size: 0x4
.obj gap_04_00057B0C_data, global
.hidden gap_04_00057B0C_data
	.4byte 0x00000000
.endobj gap_04_00057B0C_data
