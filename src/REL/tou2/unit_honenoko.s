.include "macros.inc"
.file "unit_honenoko.o"

# 0x00005814..0x000058B4 | size: 0xA0
.text
.balign 4

# .text:0x0 | 0x5814 | size: 0xA0
.fn honenoko_copy_status, local
/* 00005814 000058D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00005818 000058DC  7C 08 02 A6 */	mflr r0
/* 0000581C 000058E0  90 01 00 24 */	stw r0, 0x24(r1)
/* 00005820 000058E4  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 00005824 000058E8  7C 7D 1B 78 */	mr r29, r3
/* 00005828 000058EC  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 0000582C 000058F0  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00005830 000058F4  4B FF F7 E5 */	bl evtGetValue
/* 00005834 000058F8  7C 64 1B 78 */	mr r4, r3
/* 00005838 000058FC  7F A3 EB 78 */	mr r3, r29
/* 0000583C 00005900  4B FF F7 D9 */	bl BattleTransID
/* 00005840 00005904  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00005844 00005908  7C 7F 1B 78 */	mr r31, r3
/* 00005848 0000590C  7F A3 EB 78 */	mr r3, r29
/* 0000584C 00005910  4B FF F7 C9 */	bl evtGetValue
/* 00005850 00005914  7C 64 1B 78 */	mr r4, r3
/* 00005854 00005918  7F A3 EB 78 */	mr r3, r29
/* 00005858 0000591C  4B FF F7 BD */	bl BattleTransID
/* 0000585C 00005920  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00005860 00005924  7C 7E 1B 78 */	mr r30, r3
/* 00005864 00005928  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00005868 0000592C  80 05 00 00 */	lwz r0, 0x0(r5)
/* 0000586C 00005930  7F E4 FB 78 */	mr r4, r31
/* 00005870 00005934  7C 1D 03 78 */	mr r29, r0
/* 00005874 00005938  7C 03 03 78 */	mr r3, r0
/* 00005878 0000593C  4B FF F7 9D */	bl BattleGetUnitPtr
/* 0000587C 00005940  7C 7F 1B 78 */	mr r31, r3
/* 00005880 00005944  7F A3 EB 78 */	mr r3, r29
/* 00005884 00005948  7F C4 F3 78 */	mr r4, r30
/* 00005888 0000594C  4B FF F7 8D */	bl BattleGetUnitPtr
/* 0000588C 00005950  88 1F 01 23 */	lbz r0, 0x123(r31)
/* 00005890 00005954  98 03 01 23 */	stb r0, 0x123(r3)
/* 00005894 00005958  88 1F 01 24 */	lbz r0, 0x124(r31)
/* 00005898 0000595C  98 03 01 24 */	stb r0, 0x124(r3)
/* 0000589C 00005960  38 60 00 02 */	li r3, 0x2
/* 000058A0 00005964  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 000058A4 00005968  80 01 00 24 */	lwz r0, 0x24(r1)
/* 000058A8 0000596C  7C 08 03 A6 */	mtlr r0
/* 000058AC 00005970  38 21 00 20 */	addi r1, r1, 0x20
/* 000058B0 00005974  4E 80 00 20 */	blr
.endfn honenoko_copy_status

# 0x00004880..0x00004B08 | size: 0x288
.rodata
.balign 8

# .rodata:0x0 | 0x4880 | size: 0x10
.obj str_btl_un_honenoko_tou2_0000dfc0, local
	.string "btl_un_honenoko"
.endobj str_btl_un_honenoko_tou2_0000dfc0

# .rodata:0x10 | 0x4890 | size: 0x1A
.obj str_SFX_ENM_HONENOKO_DAM_tou2_0000dfd0, local
	.string "SFX_ENM_HONENOKO_DAMAGED1"
.endobj str_SFX_ENM_HONENOKO_DAM_tou2_0000dfd0

# .rodata:0x2A | 0x48AA | size: 0x2
.obj gap_03_000048AA_rodata, global
.hidden gap_03_000048AA_rodata
	.2byte 0x0000
.endobj gap_03_000048AA_rodata

# .rodata:0x2C | 0x48AC | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_tou2_0000dfec, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_tou2_0000dfec

# .rodata:0x41 | 0x48C1 | size: 0x3
.obj gap_03_000048C1_rodata, global
.hidden gap_03_000048C1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000048C1_rodata

# .rodata:0x44 | 0x48C4 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_tou2_0000e004, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_tou2_0000e004

# .rodata:0x58 | 0x48D8 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_tou2_0000e018, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_tou2_0000e018

# .rodata:0x71 | 0x48F1 | size: 0x3
.obj gap_03_000048F1_rodata, global
.hidden gap_03_000048F1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000048F1_rodata

# .rodata:0x74 | 0x48F4 | size: 0xC
.obj str_c_karon_g_h_tou2_0000e034, local
	.string "c_karon_g_h"
.endobj str_c_karon_g_h_tou2_0000e034

# .rodata:0x80 | 0x4900 | size: 0xD
.obj str_c_nagehone_g_tou2_0000e040, local
	.string "c_nagehone_g"
.endobj str_c_nagehone_g_tou2_0000e040

# .rodata:0x8D | 0x490D | size: 0x3
.obj gap_03_0000490D_rodata, global
.hidden gap_03_0000490D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000490D_rodata

# .rodata:0x90 | 0x4910 | size: 0x8
.obj str_KRN_N_1_tou2_0000e050, local
	.string "KRN_N_1"
.endobj str_KRN_N_1_tou2_0000e050

# .rodata:0x98 | 0x4918 | size: 0x8
.obj str_KRN_Y_1_tou2_0000e058, local
	.string "KRN_Y_1"
.endobj str_KRN_Y_1_tou2_0000e058

# .rodata:0xA0 | 0x4920 | size: 0x8
.obj str_KRN_K_1_tou2_0000e060, local
	.string "KRN_K_1"
.endobj str_KRN_K_1_tou2_0000e060

# .rodata:0xA8 | 0x4928 | size: 0x8
.obj str_KRN_X_1_tou2_0000e068, local
	.string "KRN_X_1"
.endobj str_KRN_X_1_tou2_0000e068

# .rodata:0xB0 | 0x4930 | size: 0x8
.obj str_KRN_Z_2_tou2_0000e070, local
	.string "KRN_Z_2"
.endobj str_KRN_Z_2_tou2_0000e070

# .rodata:0xB8 | 0x4938 | size: 0x8
.obj str_KRN_S_1_tou2_0000e078, local
	.string "KRN_S_1"
.endobj str_KRN_S_1_tou2_0000e078

# .rodata:0xC0 | 0x4940 | size: 0x8
.obj str_KRN_Q_1_tou2_0000e080, local
	.string "KRN_Q_1"
.endobj str_KRN_Q_1_tou2_0000e080

# .rodata:0xC8 | 0x4948 | size: 0x8
.obj str_KRN_D_1_tou2_0000e088, local
	.string "KRN_D_1"
.endobj str_KRN_D_1_tou2_0000e088

# .rodata:0xD0 | 0x4950 | size: 0x8
.obj str_KRN_A_1_tou2_0000e090, local
	.string "KRN_A_1"
.endobj str_KRN_A_1_tou2_0000e090

# .rodata:0xD8 | 0x4958 | size: 0x8
.obj str_KRN_R_1_tou2_0000e098, local
	.string "KRN_R_1"
.endobj str_KRN_R_1_tou2_0000e098

# .rodata:0xE0 | 0x4960 | size: 0x8
.obj str_KRN_W_1_tou2_0000e0a0, local
	.string "KRN_W_1"
.endobj str_KRN_W_1_tou2_0000e0a0

# .rodata:0xE8 | 0x4968 | size: 0x8
.obj str_KRN_T_1_tou2_0000e0a8, local
	.string "KRN_T_1"
.endobj str_KRN_T_1_tou2_0000e0a8

# .rodata:0xF0 | 0x4970 | size: 0x2
.obj str_0_tou2_0000e0b0, local
	.string "0"
.endobj str_0_tou2_0000e0b0

# .rodata:0xF2 | 0x4972 | size: 0x2
.obj gap_03_00004972_rodata, global
.hidden gap_03_00004972_rodata
	.2byte 0x0000
.endobj gap_03_00004972_rodata

# .rodata:0xF4 | 0x4974 | size: 0x1A
.obj str_SFX_ENM_HONENOKO_LAN_tou2_0000e0b4, local
	.string "SFX_ENM_HONENOKO_LANDING1"
.endobj str_SFX_ENM_HONENOKO_LAN_tou2_0000e0b4

# .rodata:0x10E | 0x498E | size: 0x2
.obj gap_03_0000498E_rodata, global
.hidden gap_03_0000498E_rodata
	.2byte 0x0000
.endobj gap_03_0000498E_rodata

# .rodata:0x110 | 0x4990 | size: 0x15
.obj str_SFX_BTL_ENEMY_DIE1_1_tou2_0000e0d0, local
	.string "SFX_BTL_ENEMY_DIE1_1"
.endobj str_SFX_BTL_ENEMY_DIE1_1_tou2_0000e0d0

# .rodata:0x125 | 0x49A5 | size: 0x3
.obj gap_03_000049A5_rodata, global
.hidden gap_03_000049A5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000049A5_rodata

# .rodata:0x128 | 0x49A8 | size: 0x15
.obj str_SFX_BTL_ENEMY_DIE1_2_tou2_0000e0e8, local
	.string "SFX_BTL_ENEMY_DIE1_2"
.endobj str_SFX_BTL_ENEMY_DIE1_2_tou2_0000e0e8

# .rodata:0x13D | 0x49BD | size: 0x3
.obj gap_03_000049BD_rodata, global
.hidden gap_03_000049BD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000049BD_rodata

# .rodata:0x140 | 0x49C0 | size: 0xC
.obj str_kemuri_test_tou2_0000e100, local
	.string "kemuri_test"
.endobj str_kemuri_test_tou2_0000e100

# .rodata:0x14C | 0x49CC | size: 0x1
.obj zero_tou2_0000e10c, local
	.byte 0x00
.endobj zero_tou2_0000e10c

# .rodata:0x14D | 0x49CD | size: 0x3
.obj gap_03_000049CD_rodata, global
.hidden gap_03_000049CD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000049CD_rodata

# .rodata:0x150 | 0x49D0 | size: 0xB
.obj str_star_point_tou2_0000e110, local
	.string "star_point"
.endobj str_star_point_tou2_0000e110

# .rodata:0x15B | 0x49DB | size: 0x1
.obj gap_03_000049DB_rodata, global
.hidden gap_03_000049DB_rodata
	.byte 0x00
.endobj gap_03_000049DB_rodata

# .rodata:0x15C | 0x49DC | size: 0x8
.obj str_KRN_D_2_tou2_0000e11c, local
	.string "KRN_D_2"
.endobj str_KRN_D_2_tou2_0000e11c

# .rodata:0x164 | 0x49E4 | size: 0x1A
.obj str_SFX_ENM_HONENOKO_CRU_tou2_0000e124, local
	.string "SFX_ENM_HONENOKO_CRUMBLE1"
.endobj str_SFX_ENM_HONENOKO_CRU_tou2_0000e124

# .rodata:0x17E | 0x49FE | size: 0x2
.obj gap_03_000049FE_rodata, global
.hidden gap_03_000049FE_rodata
	.2byte 0x0000
.endobj gap_03_000049FE_rodata

# .rodata:0x180 | 0x4A00 | size: 0x8
.obj str_KRN_D_3_tou2_0000e140, local
	.string "KRN_D_3"
.endobj str_KRN_D_3_tou2_0000e140

# .rodata:0x188 | 0x4A08 | size: 0x18
.obj str_SFX_ENM_HONENOKO_UNI_tou2_0000e148, local
	.string "SFX_ENM_HONENOKO_UNITE1"
.endobj str_SFX_ENM_HONENOKO_UNI_tou2_0000e148

# .rodata:0x1A0 | 0x4A20 | size: 0x8
.obj str_KRN_D_4_tou2_0000e160, local
	.string "KRN_D_4"
.endobj str_KRN_D_4_tou2_0000e160

# .rodata:0x1A8 | 0x4A28 | size: 0x18
.obj str_SFX_ENM_HONENOKO_UNI_tou2_0000e168, local
	.string "SFX_ENM_HONENOKO_UNITE2"
.endobj str_SFX_ENM_HONENOKO_UNI_tou2_0000e168

# .rodata:0x1C0 | 0x4A40 | size: 0x8
.obj str_KRN_A_2_tou2_0000e180, local
	.string "KRN_A_2"
.endobj str_KRN_A_2_tou2_0000e180

# .rodata:0x1C8 | 0x4A48 | size: 0x1D
.obj str_SFX_ENM_HONENOKO_SEN_tou2_0000e188, local
	.string "SFX_ENM_HONENOKO_SEND_GROUP1"
.endobj str_SFX_ENM_HONENOKO_SEN_tou2_0000e188

# .rodata:0x1E5 | 0x4A65 | size: 0x3
.obj gap_03_00004A65_rodata, global
.hidden gap_03_00004A65_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004A65_rodata

# .rodata:0x1E8 | 0x4A68 | size: 0x1D
.obj str_SFX_ENM_HONENOKO_BON_tou2_0000e1a8, local
	.string "SFX_ENM_HONENOKO_BONE_THROW1"
.endobj str_SFX_ENM_HONENOKO_BON_tou2_0000e1a8

# .rodata:0x205 | 0x4A85 | size: 0x3
.obj gap_03_00004A85_rodata, global
.hidden gap_03_00004A85_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004A85_rodata

# .rodata:0x208 | 0x4A88 | size: 0x8
.obj str_KRN_H_1_tou2_0000e1c8, local
	.string "KRN_H_1"
.endobj str_KRN_H_1_tou2_0000e1c8

# .rodata:0x210 | 0x4A90 | size: 0x8
.obj str_KRN_A_3_tou2_0000e1d0, local
	.string "KRN_A_3"
.endobj str_KRN_A_3_tou2_0000e1d0

# .rodata:0x218 | 0x4A98 | size: 0x8
.obj str_KRN_A_4_tou2_0000e1d8, local
	.string "KRN_A_4"
.endobj str_KRN_A_4_tou2_0000e1d8

# .rodata:0x220 | 0x4AA0 | size: 0x8
.obj str_KRN_H_4_tou2_0000e1e0, local
	.string "KRN_H_4"
.endobj str_KRN_H_4_tou2_0000e1e0

# .rodata:0x228 | 0x4AA8 | size: 0x8
.obj str_KRN_H_5_tou2_0000e1e8, local
	.string "KRN_H_5"
.endobj str_KRN_H_5_tou2_0000e1e8

# .rodata:0x230 | 0x4AB0 | size: 0x8
.obj str_KRN_H_3_tou2_0000e1f0, local
	.string "KRN_H_3"
.endobj str_KRN_H_3_tou2_0000e1f0

# .rodata:0x238 | 0x4AB8 | size: 0x8
.obj str_KRN_H_2_tou2_0000e1f8, local
	.string "KRN_H_2"
.endobj str_KRN_H_2_tou2_0000e1f8

# .rodata:0x240 | 0x4AC0 | size: 0x1D
.obj str_SFX_ENM_HONENOKO_SEN_tou2_0000e200, local
	.string "SFX_ENM_HONENOKO_SEND_GROUP2"
.endobj str_SFX_ENM_HONENOKO_SEN_tou2_0000e200

# .rodata:0x25D | 0x4ADD | size: 0x3
.obj gap_03_00004ADD_rodata, global
.hidden gap_03_00004ADD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004ADD_rodata

# .rodata:0x260 | 0x4AE0 | size: 0x8
.obj str_KRN_C_5_tou2_0000e220, local
	.string "KRN_C_5"
.endobj str_KRN_C_5_tou2_0000e220

# .rodata:0x268 | 0x4AE8 | size: 0x8
.obj str_KRN_C_4_tou2_0000e228, local
	.string "KRN_C_4"
.endobj str_KRN_C_4_tou2_0000e228

# .rodata:0x270 | 0x4AF0 | size: 0x8
.obj str_KRN_C_3_tou2_0000e230, local
	.string "KRN_C_3"
.endobj str_KRN_C_3_tou2_0000e230

# .rodata:0x278 | 0x4AF8 | size: 0x8
.obj str_KRN_C_2_tou2_0000e238, local
	.string "KRN_C_2"
.endobj str_KRN_C_2_tou2_0000e238

# .rodata:0x280 | 0x4B00 | size: 0x8
.obj str_KRN_C_1_tou2_0000e240, local
	.string "KRN_C_1"
.endobj str_KRN_C_1_tou2_0000e240

# 0x00028160..0x00029BA0 | size: 0x1A40
.data
.balign 8

# .data:0x0 | 0x28160 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x28168 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x2816C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x28170 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x28174 | size: 0x4
.obj gap_04_00028174_data, global
.hidden gap_04_00028174_data
	.4byte 0x00000000
.endobj gap_04_00028174_data

# .data:0x18 | 0x28178 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x28180 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x28184 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x28188 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x28190 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x28194 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x28198 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x2819C | size: 0x4
.obj gap_04_0002819C_data, global
.hidden gap_04_0002819C_data
	.4byte 0x00000000
.endobj gap_04_0002819C_data

# .data:0x40 | 0x281A0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x281A8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x281AC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x281B0 | size: 0xC4
.obj unit_honenoko_26_data_281B0, global
	.4byte 0x00000011
	.4byte str_btl_un_honenoko_tou2_0000dfc0
	.4byte 0x00010000
	.4byte 0x01010900
	.4byte 0x00460146
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
	.4byte str_SFX_ENM_HONENOKO_DAM_tou2_0000dfd0
	.4byte str_SFX_BTL_DAMAGE_FIRE1_tou2_0000dfec
	.4byte str_SFX_BTL_DAMAGE_ICE1_tou2_0000e004
	.4byte str_SFX_BTL_DAMAGE_BIRIB_tou2_0000e018
	.4byte 0x00000000
	.4byte regist
	.4byte 0x04000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_honenoko_26_data_281B0

# .data:0x114 | 0x28274 | size: 0x5
.obj defence, local
	.4byte 0x01010101
	.byte 0x01
.endobj defence

# .data:0x119 | 0x28279 | size: 0x3
.obj gap_04_00028279_data, global
.hidden gap_04_00028279_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00028279_data

# .data:0x11C | 0x2827C | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x28281 | size: 0x3
.obj gap_04_00028281_data, global
.hidden gap_04_00028281_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00028281_data

# .data:0x124 | 0x28284 | size: 0x16
.obj regist, local
	.4byte 0x005F3200
	.4byte 0x3264645A
	.4byte 0x64646464
	.4byte 0x645F5A0A
	.4byte 0x5A645A64
	.2byte 0x6432
.endobj regist

# .data:0x13A | 0x2829A | size: 0x2
.obj gap_04_0002829A_data, global
.hidden gap_04_0002829A_data
	.2byte 0x0000
.endobj gap_04_0002829A_data

# .data:0x13C | 0x2829C | size: 0x130
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_honenoko_tou2_0000dfc0
	.4byte str_c_karon_g_h_tou2_0000e034
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
	.4byte str_btl_un_honenoko_tou2_0000dfc0
	.4byte str_c_karon_g_h_tou2_0000e034
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
	.4byte str_btl_un_honenoko_tou2_0000dfc0
	.4byte str_c_nagehone_g_tou2_0000e040
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
	.4byte str_btl_un_honenoko_tou2_0000dfc0
	.4byte str_c_karon_g_h_tou2_0000e034
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

# .data:0x26C | 0x283CC | size: 0xC0
.obj weapon_honenoko_attack, local
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

# .data:0x32C | 0x2848C | size: 0x30
.obj entry_honenoko, local
	.4byte unit_honenoko_26_data_281B0
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

# .data:0x35C | 0x284BC | size: 0x98
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_KRN_N_1_tou2_0000e050
	.4byte 0x00000002
	.4byte str_KRN_Y_1_tou2_0000e058
	.4byte 0x00000009
	.4byte str_KRN_Y_1_tou2_0000e058
	.4byte 0x00000005
	.4byte str_KRN_K_1_tou2_0000e060
	.4byte 0x00000004
	.4byte str_KRN_X_1_tou2_0000e068
	.4byte 0x00000003
	.4byte str_KRN_X_1_tou2_0000e068
	.4byte 0x0000001B
	.4byte str_KRN_Z_2_tou2_0000e070
	.4byte 0x0000001C
	.4byte str_KRN_S_1_tou2_0000e078
	.4byte 0x0000001D
	.4byte str_KRN_Q_1_tou2_0000e080
	.4byte 0x0000001E
	.4byte str_KRN_Q_1_tou2_0000e080
	.4byte 0x0000001F
	.4byte str_KRN_S_1_tou2_0000e078
	.4byte 0x00000027
	.4byte str_KRN_D_1_tou2_0000e088
	.4byte 0x00000032
	.4byte str_KRN_A_1_tou2_0000e090
	.4byte 0x0000002A
	.4byte str_KRN_R_1_tou2_0000e098
	.4byte 0x00000028
	.4byte str_KRN_W_1_tou2_0000e0a0
	.4byte 0x00000038
	.4byte str_KRN_X_1_tou2_0000e068
	.4byte 0x00000039
	.4byte str_KRN_X_1_tou2_0000e068
	.4byte 0x00000041
	.4byte str_KRN_T_1_tou2_0000e0a8
	.4byte 0x00000045
	.4byte str_KRN_S_1_tou2_0000e078
.endobj pose_table

# .data:0x3F4 | 0x28554 | size: 0x20
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

# .data:0x414 | 0x28574 | size: 0x7C
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
	.4byte str_0_tou2_0000e0b0
	.4byte str_SFX_ENM_HONENOKO_LAN_tou2_0000e0b4
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x490 | 0x285F0 | size: 0x28
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

# .data:0x4B8 | 0x28618 | size: 0x2F8
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
	.4byte str_SFX_BTL_ENEMY_DIE1_1_tou2_0000e0d0
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
	.4byte str_SFX_BTL_ENEMY_DIE1_2_tou2_0000e0e8
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
	.4byte str_kemuri_test_tou2_0000e100
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
	.4byte zero_tou2_0000e10c
	.4byte str_star_point_tou2_0000e110
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

# .data:0x7B0 | 0x28910 | size: 0x294
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
	.4byte str_SFX_BTL_ENEMY_DIE1_2_tou2_0000e0e8
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
	.4byte str_kemuri_test_tou2_0000e100
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
	.4byte zero_tou2_0000e10c
	.4byte str_star_point_tou2_0000e110
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
	.4byte str_KRN_D_2_tou2_0000e11c
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HONENOKO_CRU_tou2_0000e124
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

# .data:0xA44 | 0x28BA4 | size: 0x10C
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
	.4byte str_KRN_D_3_tou2_0000e140
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HONENOKO_UNI_tou2_0000e148
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRN_D_4_tou2_0000e160
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HONENOKO_UNI_tou2_0000e168
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

# .data:0xB50 | 0x28CB0 | size: 0x2E4
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
	.4byte 0x00000055
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000000F
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000055
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

# .data:0xE34 | 0x28F94 | size: 0x68
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

# .data:0xE9C | 0x28FFC | size: 0x6B0
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
	.4byte str_KRN_A_1_tou2_0000e090
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRN_A_2_tou2_0000e180
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HONENOKO_SEN_tou2_0000e188
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HONENOKO_BON_tou2_0000e1a8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_KRN_H_1_tou2_0000e1c8
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

# .data:0x154C | 0x296AC | size: 0x4DC
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
	.4byte str_KRN_A_3_tou2_0000e1d0
	.4byte 0x00010009
	.4byte 0x00000005
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRN_A_4_tou2_0000e1d8
	.4byte 0x00010009
	.4byte 0x0000000F
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HONENOKO_SEN_tou2_0000e188
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
	.4byte str_KRN_H_4_tou2_0000e1e0
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte str_KRN_H_5_tou2_0000e1e8
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte str_KRN_H_5_tou2_0000e1e8
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte str_KRN_H_3_tou2_0000e1f0
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte str_KRN_H_3_tou2_0000e1f0
	.4byte 0x0000002A
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte str_KRN_H_2_tou2_0000e1f8
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
	.4byte str_SFX_ENM_HONENOKO_SEN_tou2_0000e200
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
	.4byte str_KRN_C_5_tou2_0000e220
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
	.4byte str_KRN_C_4_tou2_0000e228
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte str_KRN_C_3_tou2_0000e230
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte str_KRN_C_2_tou2_0000e238
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte str_KRN_C_1_tou2_0000e240
	.4byte 0x0000002A
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte str_KRN_Z_2_tou2_0000e070
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
	.4byte str_KRN_D_3_tou2_0000e140
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HONENOKO_UNI_tou2_0000e148
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte str_KRN_D_4_tou2_0000e160
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HONENOKO_UNI_tou2_0000e168
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRN_S_1_tou2_0000e078
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

# .data:0x1A28 | 0x29B88 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event
