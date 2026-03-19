.include "macros.inc"
.file "unit_honenoko.o"

# 0x00002414..0x000024B4 | size: 0xA0
.text
.balign 4

# .text:0x0 | 0x2414 | size: 0xA0
.fn honenoko_copy_status, local
/* 00002414 000024F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00002418 000024FC  7C 08 02 A6 */	mflr r0
/* 0000241C 00002500  90 01 00 24 */	stw r0, 0x24(r1)
/* 00002420 00002504  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 00002424 00002508  7C 7D 1B 78 */	mr r29, r3
/* 00002428 0000250C  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 0000242C 00002510  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00002430 00002514  4B FF DD B1 */	bl evtGetValue
/* 00002434 00002518  7C 64 1B 78 */	mr r4, r3
/* 00002438 0000251C  7F A3 EB 78 */	mr r3, r29
/* 0000243C 00002520  4B FF DD A5 */	bl BattleTransID
/* 00002440 00002524  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00002444 00002528  7C 7F 1B 78 */	mr r31, r3
/* 00002448 0000252C  7F A3 EB 78 */	mr r3, r29
/* 0000244C 00002530  4B FF DD 95 */	bl evtGetValue
/* 00002450 00002534  7C 64 1B 78 */	mr r4, r3
/* 00002454 00002538  7F A3 EB 78 */	mr r3, r29
/* 00002458 0000253C  4B FF DD 89 */	bl BattleTransID
/* 0000245C 00002540  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00002460 00002544  7C 7E 1B 78 */	mr r30, r3
/* 00002464 00002548  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00002468 0000254C  80 05 00 00 */	lwz r0, 0x0(r5)
/* 0000246C 00002550  7F E4 FB 78 */	mr r4, r31
/* 00002470 00002554  7C 1D 03 78 */	mr r29, r0
/* 00002474 00002558  7C 03 03 78 */	mr r3, r0
/* 00002478 0000255C  4B FF DD 69 */	bl BattleGetUnitPtr
/* 0000247C 00002560  7C 7F 1B 78 */	mr r31, r3
/* 00002480 00002564  7F A3 EB 78 */	mr r3, r29
/* 00002484 00002568  7F C4 F3 78 */	mr r4, r30
/* 00002488 0000256C  4B FF DD 59 */	bl BattleGetUnitPtr
/* 0000248C 00002570  88 1F 01 23 */	lbz r0, 0x123(r31)
/* 00002490 00002574  98 03 01 23 */	stb r0, 0x123(r3)
/* 00002494 00002578  88 1F 01 24 */	lbz r0, 0x124(r31)
/* 00002498 0000257C  98 03 01 24 */	stb r0, 0x124(r3)
/* 0000249C 00002580  38 60 00 02 */	li r3, 0x2
/* 000024A0 00002584  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 000024A4 00002588  80 01 00 24 */	lwz r0, 0x24(r1)
/* 000024A8 0000258C  7C 08 03 A6 */	mtlr r0
/* 000024AC 00002590  38 21 00 20 */	addi r1, r1, 0x20
/* 000024B0 00002594  4E 80 00 20 */	blr
.endfn honenoko_copy_status

# 0x00002918..0x00002BA0 | size: 0x288
.rodata
.balign 8

# .rodata:0x0 | 0x2918 | size: 0x10
.obj str_btl_un_honenoko_gon_000066e8, local
	.string "btl_un_honenoko"
.endobj str_btl_un_honenoko_gon_000066e8

# .rodata:0x10 | 0x2928 | size: 0x1A
.obj str_SFX_ENM_HONENOKO_DAM_gon_000066f8, local
	.string "SFX_ENM_HONENOKO_DAMAGED1"
.endobj str_SFX_ENM_HONENOKO_DAM_gon_000066f8

# .rodata:0x2A | 0x2942 | size: 0x2
.obj gap_03_00002942_rodata, global
.hidden gap_03_00002942_rodata
	.2byte 0x0000
.endobj gap_03_00002942_rodata

# .rodata:0x2C | 0x2944 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_gon_00006714, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_gon_00006714

# .rodata:0x41 | 0x2959 | size: 0x3
.obj gap_03_00002959_rodata, global
.hidden gap_03_00002959_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002959_rodata

# .rodata:0x44 | 0x295C | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_gon_0000672c, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_gon_0000672c

# .rodata:0x58 | 0x2970 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_gon_00006740, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_gon_00006740

# .rodata:0x71 | 0x2989 | size: 0x3
.obj gap_03_00002989_rodata, global
.hidden gap_03_00002989_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002989_rodata

# .rodata:0x74 | 0x298C | size: 0xC
.obj str_c_karon_g_h_gon_0000675c, local
	.string "c_karon_g_h"
.endobj str_c_karon_g_h_gon_0000675c

# .rodata:0x80 | 0x2998 | size: 0xD
.obj str_c_nagehone_g_gon_00006768, local
	.string "c_nagehone_g"
.endobj str_c_nagehone_g_gon_00006768

# .rodata:0x8D | 0x29A5 | size: 0x3
.obj gap_03_000029A5_rodata, global
.hidden gap_03_000029A5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000029A5_rodata

# .rodata:0x90 | 0x29A8 | size: 0x8
.obj str_KRN_N_1_gon_00006778, local
	.string "KRN_N_1"
.endobj str_KRN_N_1_gon_00006778

# .rodata:0x98 | 0x29B0 | size: 0x8
.obj str_KRN_Y_1_gon_00006780, local
	.string "KRN_Y_1"
.endobj str_KRN_Y_1_gon_00006780

# .rodata:0xA0 | 0x29B8 | size: 0x8
.obj str_KRN_K_1_gon_00006788, local
	.string "KRN_K_1"
.endobj str_KRN_K_1_gon_00006788

# .rodata:0xA8 | 0x29C0 | size: 0x8
.obj str_KRN_X_1_gon_00006790, local
	.string "KRN_X_1"
.endobj str_KRN_X_1_gon_00006790

# .rodata:0xB0 | 0x29C8 | size: 0x8
.obj str_KRN_Z_2_gon_00006798, local
	.string "KRN_Z_2"
.endobj str_KRN_Z_2_gon_00006798

# .rodata:0xB8 | 0x29D0 | size: 0x8
.obj str_KRN_S_1_gon_000067a0, local
	.string "KRN_S_1"
.endobj str_KRN_S_1_gon_000067a0

# .rodata:0xC0 | 0x29D8 | size: 0x8
.obj str_KRN_Q_1_gon_000067a8, local
	.string "KRN_Q_1"
.endobj str_KRN_Q_1_gon_000067a8

# .rodata:0xC8 | 0x29E0 | size: 0x8
.obj str_KRN_D_1_gon_000067b0, local
	.string "KRN_D_1"
.endobj str_KRN_D_1_gon_000067b0

# .rodata:0xD0 | 0x29E8 | size: 0x8
.obj str_KRN_A_1_gon_000067b8, local
	.string "KRN_A_1"
.endobj str_KRN_A_1_gon_000067b8

# .rodata:0xD8 | 0x29F0 | size: 0x8
.obj str_KRN_R_1_gon_000067c0, local
	.string "KRN_R_1"
.endobj str_KRN_R_1_gon_000067c0

# .rodata:0xE0 | 0x29F8 | size: 0x8
.obj str_KRN_W_1_gon_000067c8, local
	.string "KRN_W_1"
.endobj str_KRN_W_1_gon_000067c8

# .rodata:0xE8 | 0x2A00 | size: 0x8
.obj str_KRN_T_1_gon_000067d0, local
	.string "KRN_T_1"
.endobj str_KRN_T_1_gon_000067d0

# .rodata:0xF0 | 0x2A08 | size: 0x2
.obj str_0_gon_000067d8, local
	.string "0"
.endobj str_0_gon_000067d8

# .rodata:0xF2 | 0x2A0A | size: 0x2
.obj gap_03_00002A0A_rodata, global
.hidden gap_03_00002A0A_rodata
	.2byte 0x0000
.endobj gap_03_00002A0A_rodata

# .rodata:0xF4 | 0x2A0C | size: 0x1A
.obj str_SFX_ENM_HONENOKO_LAN_gon_000067dc, local
	.string "SFX_ENM_HONENOKO_LANDING1"
.endobj str_SFX_ENM_HONENOKO_LAN_gon_000067dc

# .rodata:0x10E | 0x2A26 | size: 0x2
.obj gap_03_00002A26_rodata, global
.hidden gap_03_00002A26_rodata
	.2byte 0x0000
.endobj gap_03_00002A26_rodata

# .rodata:0x110 | 0x2A28 | size: 0x15
.obj str_SFX_BTL_ENEMY_DIE1_1_gon_000067f8, local
	.string "SFX_BTL_ENEMY_DIE1_1"
.endobj str_SFX_BTL_ENEMY_DIE1_1_gon_000067f8

# .rodata:0x125 | 0x2A3D | size: 0x3
.obj gap_03_00002A3D_rodata, global
.hidden gap_03_00002A3D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002A3D_rodata

# .rodata:0x128 | 0x2A40 | size: 0x15
.obj str_SFX_BTL_ENEMY_DIE1_2_gon_00006810, local
	.string "SFX_BTL_ENEMY_DIE1_2"
.endobj str_SFX_BTL_ENEMY_DIE1_2_gon_00006810

# .rodata:0x13D | 0x2A55 | size: 0x3
.obj gap_03_00002A55_rodata, global
.hidden gap_03_00002A55_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002A55_rodata

# .rodata:0x140 | 0x2A58 | size: 0xC
.obj str_kemuri_test_gon_00006828, local
	.string "kemuri_test"
.endobj str_kemuri_test_gon_00006828

# .rodata:0x14C | 0x2A64 | size: 0x1
.obj zero_gon_00006834, local
	.byte 0x00
.endobj zero_gon_00006834

# .rodata:0x14D | 0x2A65 | size: 0x3
.obj gap_03_00002A65_rodata, global
.hidden gap_03_00002A65_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002A65_rodata

# .rodata:0x150 | 0x2A68 | size: 0xB
.obj str_star_point_gon_00006838, local
	.string "star_point"
.endobj str_star_point_gon_00006838

# .rodata:0x15B | 0x2A73 | size: 0x1
.obj gap_03_00002A73_rodata, global
.hidden gap_03_00002A73_rodata
	.byte 0x00
.endobj gap_03_00002A73_rodata

# .rodata:0x15C | 0x2A74 | size: 0x8
.obj str_KRN_D_2_gon_00006844, local
	.string "KRN_D_2"
.endobj str_KRN_D_2_gon_00006844

# .rodata:0x164 | 0x2A7C | size: 0x1A
.obj str_SFX_ENM_HONENOKO_CRU_gon_0000684c, local
	.string "SFX_ENM_HONENOKO_CRUMBLE1"
.endobj str_SFX_ENM_HONENOKO_CRU_gon_0000684c

# .rodata:0x17E | 0x2A96 | size: 0x2
.obj gap_03_00002A96_rodata, global
.hidden gap_03_00002A96_rodata
	.2byte 0x0000
.endobj gap_03_00002A96_rodata

# .rodata:0x180 | 0x2A98 | size: 0x8
.obj str_KRN_D_3_gon_00006868, local
	.string "KRN_D_3"
.endobj str_KRN_D_3_gon_00006868

# .rodata:0x188 | 0x2AA0 | size: 0x18
.obj str_SFX_ENM_HONENOKO_UNI_gon_00006870, local
	.string "SFX_ENM_HONENOKO_UNITE1"
.endobj str_SFX_ENM_HONENOKO_UNI_gon_00006870

# .rodata:0x1A0 | 0x2AB8 | size: 0x8
.obj str_KRN_D_4_gon_00006888, local
	.string "KRN_D_4"
.endobj str_KRN_D_4_gon_00006888

# .rodata:0x1A8 | 0x2AC0 | size: 0x18
.obj str_SFX_ENM_HONENOKO_UNI_gon_00006890, local
	.string "SFX_ENM_HONENOKO_UNITE2"
.endobj str_SFX_ENM_HONENOKO_UNI_gon_00006890

# .rodata:0x1C0 | 0x2AD8 | size: 0x8
.obj str_KRN_A_2_gon_000068a8, local
	.string "KRN_A_2"
.endobj str_KRN_A_2_gon_000068a8

# .rodata:0x1C8 | 0x2AE0 | size: 0x1D
.obj str_SFX_ENM_HONENOKO_SEN_gon_000068b0, local
	.string "SFX_ENM_HONENOKO_SEND_GROUP1"
.endobj str_SFX_ENM_HONENOKO_SEN_gon_000068b0

# .rodata:0x1E5 | 0x2AFD | size: 0x3
.obj gap_03_00002AFD_rodata, global
.hidden gap_03_00002AFD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002AFD_rodata

# .rodata:0x1E8 | 0x2B00 | size: 0x1D
.obj str_SFX_ENM_HONENOKO_BON_gon_000068d0, local
	.string "SFX_ENM_HONENOKO_BONE_THROW1"
.endobj str_SFX_ENM_HONENOKO_BON_gon_000068d0

# .rodata:0x205 | 0x2B1D | size: 0x3
.obj gap_03_00002B1D_rodata, global
.hidden gap_03_00002B1D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002B1D_rodata

# .rodata:0x208 | 0x2B20 | size: 0x8
.obj str_KRN_H_1_gon_000068f0, local
	.string "KRN_H_1"
.endobj str_KRN_H_1_gon_000068f0

# .rodata:0x210 | 0x2B28 | size: 0x8
.obj str_KRN_A_3_gon_000068f8, local
	.string "KRN_A_3"
.endobj str_KRN_A_3_gon_000068f8

# .rodata:0x218 | 0x2B30 | size: 0x8
.obj str_KRN_A_4_gon_00006900, local
	.string "KRN_A_4"
.endobj str_KRN_A_4_gon_00006900

# .rodata:0x220 | 0x2B38 | size: 0x8
.obj str_KRN_H_4_gon_00006908, local
	.string "KRN_H_4"
.endobj str_KRN_H_4_gon_00006908

# .rodata:0x228 | 0x2B40 | size: 0x8
.obj str_KRN_H_5_gon_00006910, local
	.string "KRN_H_5"
.endobj str_KRN_H_5_gon_00006910

# .rodata:0x230 | 0x2B48 | size: 0x8
.obj str_KRN_H_3_gon_00006918, local
	.string "KRN_H_3"
.endobj str_KRN_H_3_gon_00006918

# .rodata:0x238 | 0x2B50 | size: 0x8
.obj str_KRN_H_2_gon_00006920, local
	.string "KRN_H_2"
.endobj str_KRN_H_2_gon_00006920

# .rodata:0x240 | 0x2B58 | size: 0x1D
.obj str_SFX_ENM_HONENOKO_SEN_gon_00006928, local
	.string "SFX_ENM_HONENOKO_SEND_GROUP2"
.endobj str_SFX_ENM_HONENOKO_SEN_gon_00006928

# .rodata:0x25D | 0x2B75 | size: 0x3
.obj gap_03_00002B75_rodata, global
.hidden gap_03_00002B75_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002B75_rodata

# .rodata:0x260 | 0x2B78 | size: 0x8
.obj str_KRN_C_5_gon_00006948, local
	.string "KRN_C_5"
.endobj str_KRN_C_5_gon_00006948

# .rodata:0x268 | 0x2B80 | size: 0x8
.obj str_KRN_C_4_gon_00006950, local
	.string "KRN_C_4"
.endobj str_KRN_C_4_gon_00006950

# .rodata:0x270 | 0x2B88 | size: 0x8
.obj str_KRN_C_3_gon_00006958, local
	.string "KRN_C_3"
.endobj str_KRN_C_3_gon_00006958

# .rodata:0x278 | 0x2B90 | size: 0x8
.obj str_KRN_C_2_gon_00006960, local
	.string "KRN_C_2"
.endobj str_KRN_C_2_gon_00006960

# .rodata:0x280 | 0x2B98 | size: 0x8
.obj str_KRN_C_1_gon_00006968, local
	.string "KRN_C_1"
.endobj str_KRN_C_1_gon_00006968

# 0x00014AE8..0x00016528 | size: 0x1A40
.data
.balign 8

# .data:0x0 | 0x14AE8 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x14AF0 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x14AF4 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x14AF8 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x14AFC | size: 0x4
.obj gap_04_00014AFC_data, global
.hidden gap_04_00014AFC_data
	.4byte 0x00000000
.endobj gap_04_00014AFC_data

# .data:0x18 | 0x14B00 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x14B08 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x14B0C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x14B10 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x14B18 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x14B1C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x14B20 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x14B24 | size: 0x4
.obj gap_04_00014B24_data, global
.hidden gap_04_00014B24_data
	.4byte 0x00000000
.endobj gap_04_00014B24_data

# .data:0x40 | 0x14B28 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x14B30 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x14B34 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x14B38 | size: 0xC4
.obj unit_honenoko_8_data_14B38, global
	.4byte 0x00000011
	.4byte str_btl_un_honenoko_gon_000066e8
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
	.4byte str_SFX_ENM_HONENOKO_DAM_gon_000066f8
	.4byte str_SFX_BTL_DAMAGE_FIRE1_gon_00006714
	.4byte str_SFX_BTL_DAMAGE_ICE1_gon_0000672c
	.4byte str_SFX_BTL_DAMAGE_BIRIB_gon_00006740
	.4byte 0x00000000
	.4byte regist
	.4byte 0x04000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_honenoko_8_data_14B38

# .data:0x114 | 0x14BFC | size: 0x5
.obj defence, local
	.4byte 0x01010101
	.byte 0x01
.endobj defence

# .data:0x119 | 0x14C01 | size: 0x3
.obj gap_04_00014C01_data, global
.hidden gap_04_00014C01_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00014C01_data

# .data:0x11C | 0x14C04 | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x14C09 | size: 0x3
.obj gap_04_00014C09_data, global
.hidden gap_04_00014C09_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00014C09_data

# .data:0x124 | 0x14C0C | size: 0x16
.obj regist, local
	.4byte 0x005F3200
	.4byte 0x3264645A
	.4byte 0x64646464
	.4byte 0x645F5A0A
	.4byte 0x5A645A64
	.2byte 0x6432
.endobj regist

# .data:0x13A | 0x14C22 | size: 0x2
.obj gap_04_00014C22_data, global
.hidden gap_04_00014C22_data
	.2byte 0x0000
.endobj gap_04_00014C22_data

# .data:0x13C | 0x14C24 | size: 0x130
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_honenoko_gon_000066e8
	.4byte str_c_karon_g_h_gon_0000675c
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
	.4byte str_btl_un_honenoko_gon_000066e8
	.4byte str_c_karon_g_h_gon_0000675c
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
	.4byte str_btl_un_honenoko_gon_000066e8
	.4byte str_c_nagehone_g_gon_00006768
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
	.4byte str_btl_un_honenoko_gon_000066e8
	.4byte str_c_karon_g_h_gon_0000675c
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

# .data:0x26C | 0x14D54 | size: 0xC0
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

# .data:0x32C | 0x14E14 | size: 0x30
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

# .data:0x35C | 0x14E44 | size: 0x98
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_KRN_N_1_gon_00006778
	.4byte 0x00000002
	.4byte str_KRN_Y_1_gon_00006780
	.4byte 0x00000009
	.4byte str_KRN_Y_1_gon_00006780
	.4byte 0x00000005
	.4byte str_KRN_K_1_gon_00006788
	.4byte 0x00000004
	.4byte str_KRN_X_1_gon_00006790
	.4byte 0x00000003
	.4byte str_KRN_X_1_gon_00006790
	.4byte 0x0000001B
	.4byte str_KRN_Z_2_gon_00006798
	.4byte 0x0000001C
	.4byte str_KRN_S_1_gon_000067a0
	.4byte 0x0000001D
	.4byte str_KRN_Q_1_gon_000067a8
	.4byte 0x0000001E
	.4byte str_KRN_Q_1_gon_000067a8
	.4byte 0x0000001F
	.4byte str_KRN_S_1_gon_000067a0
	.4byte 0x00000027
	.4byte str_KRN_D_1_gon_000067b0
	.4byte 0x00000032
	.4byte str_KRN_A_1_gon_000067b8
	.4byte 0x0000002A
	.4byte str_KRN_R_1_gon_000067c0
	.4byte 0x00000028
	.4byte str_KRN_W_1_gon_000067c8
	.4byte 0x00000038
	.4byte str_KRN_X_1_gon_00006790
	.4byte 0x00000039
	.4byte str_KRN_X_1_gon_00006790
	.4byte 0x00000041
	.4byte str_KRN_T_1_gon_000067d0
	.4byte 0x00000045
	.4byte str_KRN_S_1_gon_000067a0
.endobj pose_table

# .data:0x3F4 | 0x14EDC | size: 0x20
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

# .data:0x414 | 0x14EFC | size: 0x7C
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
	.4byte str_0_gon_000067d8
	.4byte str_SFX_ENM_HONENOKO_LAN_gon_000067dc
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x490 | 0x14F78 | size: 0x28
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

# .data:0x4B8 | 0x14FA0 | size: 0x2F8
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
	.4byte str_SFX_BTL_ENEMY_DIE1_1_gon_000067f8
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
	.4byte str_SFX_BTL_ENEMY_DIE1_2_gon_00006810
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
	.4byte str_kemuri_test_gon_00006828
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
	.4byte zero_gon_00006834
	.4byte str_star_point_gon_00006838
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

# .data:0x7B0 | 0x15298 | size: 0x294
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
	.4byte str_SFX_BTL_ENEMY_DIE1_2_gon_00006810
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
	.4byte str_kemuri_test_gon_00006828
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
	.4byte zero_gon_00006834
	.4byte str_star_point_gon_00006838
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
	.4byte str_KRN_D_2_gon_00006844
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HONENOKO_CRU_gon_0000684c
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

# .data:0xA44 | 0x1552C | size: 0x10C
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
	.4byte str_KRN_D_3_gon_00006868
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HONENOKO_UNI_gon_00006870
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRN_D_4_gon_00006888
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HONENOKO_UNI_gon_00006890
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

# .data:0xB50 | 0x15638 | size: 0x2E4
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

# .data:0xE34 | 0x1591C | size: 0x68
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

# .data:0xE9C | 0x15984 | size: 0x6B0
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
	.4byte str_KRN_A_1_gon_000067b8
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRN_A_2_gon_000068a8
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HONENOKO_SEN_gon_000068b0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HONENOKO_BON_gon_000068d0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_KRN_H_1_gon_000068f0
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

# .data:0x154C | 0x16034 | size: 0x4DC
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
	.4byte str_KRN_A_3_gon_000068f8
	.4byte 0x00010009
	.4byte 0x00000005
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRN_A_4_gon_00006900
	.4byte 0x00010009
	.4byte 0x0000000F
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HONENOKO_SEN_gon_000068b0
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
	.4byte str_KRN_H_4_gon_00006908
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte str_KRN_H_5_gon_00006910
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte str_KRN_H_5_gon_00006910
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte str_KRN_H_3_gon_00006918
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte str_KRN_H_3_gon_00006918
	.4byte 0x0000002A
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte str_KRN_H_2_gon_00006920
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
	.4byte str_SFX_ENM_HONENOKO_SEN_gon_00006928
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
	.4byte str_KRN_C_5_gon_00006948
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
	.4byte str_KRN_C_4_gon_00006950
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte str_KRN_C_3_gon_00006958
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte str_KRN_C_2_gon_00006960
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte str_KRN_C_1_gon_00006968
	.4byte 0x0000002A
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte str_KRN_Z_2_gon_00006798
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
	.4byte str_KRN_D_3_gon_00006868
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HONENOKO_UNI_gon_00006870
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte str_KRN_D_4_gon_00006888
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HONENOKO_UNI_gon_00006890
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRN_S_1_gon_000067a0
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

# .data:0x1A28 | 0x16510 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event
