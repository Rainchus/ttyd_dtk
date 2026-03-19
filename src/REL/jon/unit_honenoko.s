.include "macros.inc"
.file "unit_honenoko.o"

# 0x00000C64..0x00000D04 | size: 0xA0
.text
.balign 4

# .text:0x0 | 0xC64 | size: 0xA0
.fn honenoko_copy_status, local
/* 00000C64 00000D28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00000C68 00000D2C  7C 08 02 A6 */	mflr r0
/* 00000C6C 00000D30  90 01 00 24 */	stw r0, 0x24(r1)
/* 00000C70 00000D34  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 00000C74 00000D38  7C 7D 1B 78 */	mr r29, r3
/* 00000C78 00000D3C  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00000C7C 00000D40  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00000C80 00000D44  4B FF FD F1 */	bl evtGetValue
/* 00000C84 00000D48  7C 64 1B 78 */	mr r4, r3
/* 00000C88 00000D4C  7F A3 EB 78 */	mr r3, r29
/* 00000C8C 00000D50  4B FF FD E5 */	bl BattleTransID
/* 00000C90 00000D54  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00000C94 00000D58  7C 7F 1B 78 */	mr r31, r3
/* 00000C98 00000D5C  7F A3 EB 78 */	mr r3, r29
/* 00000C9C 00000D60  4B FF FD D5 */	bl evtGetValue
/* 00000CA0 00000D64  7C 64 1B 78 */	mr r4, r3
/* 00000CA4 00000D68  7F A3 EB 78 */	mr r3, r29
/* 00000CA8 00000D6C  4B FF FD C9 */	bl BattleTransID
/* 00000CAC 00000D70  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00000CB0 00000D74  7C 7E 1B 78 */	mr r30, r3
/* 00000CB4 00000D78  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00000CB8 00000D7C  80 05 00 00 */	lwz r0, 0x0(r5)
/* 00000CBC 00000D80  7F E4 FB 78 */	mr r4, r31
/* 00000CC0 00000D84  7C 1D 03 78 */	mr r29, r0
/* 00000CC4 00000D88  7C 03 03 78 */	mr r3, r0
/* 00000CC8 00000D8C  4B FF FD A9 */	bl BattleGetUnitPtr
/* 00000CCC 00000D90  7C 7F 1B 78 */	mr r31, r3
/* 00000CD0 00000D94  7F A3 EB 78 */	mr r3, r29
/* 00000CD4 00000D98  7F C4 F3 78 */	mr r4, r30
/* 00000CD8 00000D9C  4B FF FD 99 */	bl BattleGetUnitPtr
/* 00000CDC 00000DA0  88 1F 01 23 */	lbz r0, 0x123(r31)
/* 00000CE0 00000DA4  98 03 01 23 */	stb r0, 0x123(r3)
/* 00000CE4 00000DA8  88 1F 01 24 */	lbz r0, 0x124(r31)
/* 00000CE8 00000DAC  98 03 01 24 */	stb r0, 0x124(r3)
/* 00000CEC 00000DB0  38 60 00 02 */	li r3, 0x2
/* 00000CF0 00000DB4  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 00000CF4 00000DB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00000CF8 00000DBC  7C 08 03 A6 */	mtlr r0
/* 00000CFC 00000DC0  38 21 00 20 */	addi r1, r1, 0x20
/* 00000D00 00000DC4  4E 80 00 20 */	blr
.endfn honenoko_copy_status

# 0x00001748..0x000019D0 | size: 0x288
.rodata
.balign 8

# .rodata:0x0 | 0x1748 | size: 0x10
.obj str_btl_un_honenoko_jon_00008778, local
	.string "btl_un_honenoko"
.endobj str_btl_un_honenoko_jon_00008778

# .rodata:0x10 | 0x1758 | size: 0x1A
.obj str_SFX_ENM_HONENOKO_DAM_jon_00008788, local
	.string "SFX_ENM_HONENOKO_DAMAGED1"
.endobj str_SFX_ENM_HONENOKO_DAM_jon_00008788

# .rodata:0x2A | 0x1772 | size: 0x2
.obj gap_03_00001772_rodata, global
.hidden gap_03_00001772_rodata
	.2byte 0x0000
.endobj gap_03_00001772_rodata

# .rodata:0x2C | 0x1774 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_jon_000087a4, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_jon_000087a4

# .rodata:0x41 | 0x1789 | size: 0x3
.obj gap_03_00001789_rodata, global
.hidden gap_03_00001789_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001789_rodata

# .rodata:0x44 | 0x178C | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_jon_000087bc, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_jon_000087bc

# .rodata:0x58 | 0x17A0 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_jon_000087d0, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_jon_000087d0

# .rodata:0x71 | 0x17B9 | size: 0x3
.obj gap_03_000017B9_rodata, global
.hidden gap_03_000017B9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000017B9_rodata

# .rodata:0x74 | 0x17BC | size: 0xC
.obj str_c_karon_g_h_jon_000087ec, local
	.string "c_karon_g_h"
.endobj str_c_karon_g_h_jon_000087ec

# .rodata:0x80 | 0x17C8 | size: 0xD
.obj str_c_nagehone_g_jon_000087f8, local
	.string "c_nagehone_g"
.endobj str_c_nagehone_g_jon_000087f8

# .rodata:0x8D | 0x17D5 | size: 0x3
.obj gap_03_000017D5_rodata, global
.hidden gap_03_000017D5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000017D5_rodata

# .rodata:0x90 | 0x17D8 | size: 0x8
.obj str_KRN_N_1_jon_00008808, local
	.string "KRN_N_1"
.endobj str_KRN_N_1_jon_00008808

# .rodata:0x98 | 0x17E0 | size: 0x8
.obj str_KRN_Y_1_jon_00008810, local
	.string "KRN_Y_1"
.endobj str_KRN_Y_1_jon_00008810

# .rodata:0xA0 | 0x17E8 | size: 0x8
.obj str_KRN_K_1_jon_00008818, local
	.string "KRN_K_1"
.endobj str_KRN_K_1_jon_00008818

# .rodata:0xA8 | 0x17F0 | size: 0x8
.obj str_KRN_X_1_jon_00008820, local
	.string "KRN_X_1"
.endobj str_KRN_X_1_jon_00008820

# .rodata:0xB0 | 0x17F8 | size: 0x8
.obj str_KRN_Z_2_jon_00008828, local
	.string "KRN_Z_2"
.endobj str_KRN_Z_2_jon_00008828

# .rodata:0xB8 | 0x1800 | size: 0x8
.obj str_KRN_S_1_jon_00008830, local
	.string "KRN_S_1"
.endobj str_KRN_S_1_jon_00008830

# .rodata:0xC0 | 0x1808 | size: 0x8
.obj str_KRN_Q_1_jon_00008838, local
	.string "KRN_Q_1"
.endobj str_KRN_Q_1_jon_00008838

# .rodata:0xC8 | 0x1810 | size: 0x8
.obj str_KRN_D_1_jon_00008840, local
	.string "KRN_D_1"
.endobj str_KRN_D_1_jon_00008840

# .rodata:0xD0 | 0x1818 | size: 0x8
.obj str_KRN_A_1_jon_00008848, local
	.string "KRN_A_1"
.endobj str_KRN_A_1_jon_00008848

# .rodata:0xD8 | 0x1820 | size: 0x8
.obj str_KRN_R_1_jon_00008850, local
	.string "KRN_R_1"
.endobj str_KRN_R_1_jon_00008850

# .rodata:0xE0 | 0x1828 | size: 0x8
.obj str_KRN_W_1_jon_00008858, local
	.string "KRN_W_1"
.endobj str_KRN_W_1_jon_00008858

# .rodata:0xE8 | 0x1830 | size: 0x8
.obj str_KRN_T_1_jon_00008860, local
	.string "KRN_T_1"
.endobj str_KRN_T_1_jon_00008860

# .rodata:0xF0 | 0x1838 | size: 0x2
.obj str_0_jon_00008868, local
	.string "0"
.endobj str_0_jon_00008868

# .rodata:0xF2 | 0x183A | size: 0x2
.obj gap_03_0000183A_rodata, global
.hidden gap_03_0000183A_rodata
	.2byte 0x0000
.endobj gap_03_0000183A_rodata

# .rodata:0xF4 | 0x183C | size: 0x1A
.obj str_SFX_ENM_HONENOKO_LAN_jon_0000886c, local
	.string "SFX_ENM_HONENOKO_LANDING1"
.endobj str_SFX_ENM_HONENOKO_LAN_jon_0000886c

# .rodata:0x10E | 0x1856 | size: 0x2
.obj gap_03_00001856_rodata, global
.hidden gap_03_00001856_rodata
	.2byte 0x0000
.endobj gap_03_00001856_rodata

# .rodata:0x110 | 0x1858 | size: 0x15
.obj str_SFX_BTL_ENEMY_DIE1_1_jon_00008888, local
	.string "SFX_BTL_ENEMY_DIE1_1"
.endobj str_SFX_BTL_ENEMY_DIE1_1_jon_00008888

# .rodata:0x125 | 0x186D | size: 0x3
.obj gap_03_0000186D_rodata, global
.hidden gap_03_0000186D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000186D_rodata

# .rodata:0x128 | 0x1870 | size: 0x15
.obj str_SFX_BTL_ENEMY_DIE1_2_jon_000088a0, local
	.string "SFX_BTL_ENEMY_DIE1_2"
.endobj str_SFX_BTL_ENEMY_DIE1_2_jon_000088a0

# .rodata:0x13D | 0x1885 | size: 0x3
.obj gap_03_00001885_rodata, global
.hidden gap_03_00001885_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001885_rodata

# .rodata:0x140 | 0x1888 | size: 0xC
.obj str_kemuri_test_jon_000088b8, local
	.string "kemuri_test"
.endobj str_kemuri_test_jon_000088b8

# .rodata:0x14C | 0x1894 | size: 0x1
.obj zero_jon_000088c4, local
	.byte 0x00
.endobj zero_jon_000088c4

# .rodata:0x14D | 0x1895 | size: 0x3
.obj gap_03_00001895_rodata, global
.hidden gap_03_00001895_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001895_rodata

# .rodata:0x150 | 0x1898 | size: 0xB
.obj str_star_point_jon_000088c8, local
	.string "star_point"
.endobj str_star_point_jon_000088c8

# .rodata:0x15B | 0x18A3 | size: 0x1
.obj gap_03_000018A3_rodata, global
.hidden gap_03_000018A3_rodata
	.byte 0x00
.endobj gap_03_000018A3_rodata

# .rodata:0x15C | 0x18A4 | size: 0x8
.obj str_KRN_D_2_jon_000088d4, local
	.string "KRN_D_2"
.endobj str_KRN_D_2_jon_000088d4

# .rodata:0x164 | 0x18AC | size: 0x1A
.obj str_SFX_ENM_HONENOKO_CRU_jon_000088dc, local
	.string "SFX_ENM_HONENOKO_CRUMBLE1"
.endobj str_SFX_ENM_HONENOKO_CRU_jon_000088dc

# .rodata:0x17E | 0x18C6 | size: 0x2
.obj gap_03_000018C6_rodata, global
.hidden gap_03_000018C6_rodata
	.2byte 0x0000
.endobj gap_03_000018C6_rodata

# .rodata:0x180 | 0x18C8 | size: 0x8
.obj str_KRN_D_3_jon_000088f8, local
	.string "KRN_D_3"
.endobj str_KRN_D_3_jon_000088f8

# .rodata:0x188 | 0x18D0 | size: 0x18
.obj str_SFX_ENM_HONENOKO_UNI_jon_00008900, local
	.string "SFX_ENM_HONENOKO_UNITE1"
.endobj str_SFX_ENM_HONENOKO_UNI_jon_00008900

# .rodata:0x1A0 | 0x18E8 | size: 0x8
.obj str_KRN_D_4_jon_00008918, local
	.string "KRN_D_4"
.endobj str_KRN_D_4_jon_00008918

# .rodata:0x1A8 | 0x18F0 | size: 0x18
.obj str_SFX_ENM_HONENOKO_UNI_jon_00008920, local
	.string "SFX_ENM_HONENOKO_UNITE2"
.endobj str_SFX_ENM_HONENOKO_UNI_jon_00008920

# .rodata:0x1C0 | 0x1908 | size: 0x8
.obj str_KRN_A_2_jon_00008938, local
	.string "KRN_A_2"
.endobj str_KRN_A_2_jon_00008938

# .rodata:0x1C8 | 0x1910 | size: 0x1D
.obj str_SFX_ENM_HONENOKO_SEN_jon_00008940, local
	.string "SFX_ENM_HONENOKO_SEND_GROUP1"
.endobj str_SFX_ENM_HONENOKO_SEN_jon_00008940

# .rodata:0x1E5 | 0x192D | size: 0x3
.obj gap_03_0000192D_rodata, global
.hidden gap_03_0000192D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000192D_rodata

# .rodata:0x1E8 | 0x1930 | size: 0x1D
.obj str_SFX_ENM_HONENOKO_BON_jon_00008960, local
	.string "SFX_ENM_HONENOKO_BONE_THROW1"
.endobj str_SFX_ENM_HONENOKO_BON_jon_00008960

# .rodata:0x205 | 0x194D | size: 0x3
.obj gap_03_0000194D_rodata, global
.hidden gap_03_0000194D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000194D_rodata

# .rodata:0x208 | 0x1950 | size: 0x8
.obj str_KRN_H_1_jon_00008980, local
	.string "KRN_H_1"
.endobj str_KRN_H_1_jon_00008980

# .rodata:0x210 | 0x1958 | size: 0x8
.obj str_KRN_A_3_jon_00008988, local
	.string "KRN_A_3"
.endobj str_KRN_A_3_jon_00008988

# .rodata:0x218 | 0x1960 | size: 0x8
.obj str_KRN_A_4_jon_00008990, local
	.string "KRN_A_4"
.endobj str_KRN_A_4_jon_00008990

# .rodata:0x220 | 0x1968 | size: 0x8
.obj str_KRN_H_4_jon_00008998, local
	.string "KRN_H_4"
.endobj str_KRN_H_4_jon_00008998

# .rodata:0x228 | 0x1970 | size: 0x8
.obj str_KRN_H_5_jon_000089a0, local
	.string "KRN_H_5"
.endobj str_KRN_H_5_jon_000089a0

# .rodata:0x230 | 0x1978 | size: 0x8
.obj str_KRN_H_3_jon_000089a8, local
	.string "KRN_H_3"
.endobj str_KRN_H_3_jon_000089a8

# .rodata:0x238 | 0x1980 | size: 0x8
.obj str_KRN_H_2_jon_000089b0, local
	.string "KRN_H_2"
.endobj str_KRN_H_2_jon_000089b0

# .rodata:0x240 | 0x1988 | size: 0x1D
.obj str_SFX_ENM_HONENOKO_SEN_jon_000089b8, local
	.string "SFX_ENM_HONENOKO_SEND_GROUP2"
.endobj str_SFX_ENM_HONENOKO_SEN_jon_000089b8

# .rodata:0x25D | 0x19A5 | size: 0x3
.obj gap_03_000019A5_rodata, global
.hidden gap_03_000019A5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000019A5_rodata

# .rodata:0x260 | 0x19A8 | size: 0x8
.obj str_KRN_C_5_jon_000089d8, local
	.string "KRN_C_5"
.endobj str_KRN_C_5_jon_000089d8

# .rodata:0x268 | 0x19B0 | size: 0x8
.obj str_KRN_C_4_jon_000089e0, local
	.string "KRN_C_4"
.endobj str_KRN_C_4_jon_000089e0

# .rodata:0x270 | 0x19B8 | size: 0x8
.obj str_KRN_C_3_jon_000089e8, local
	.string "KRN_C_3"
.endobj str_KRN_C_3_jon_000089e8

# .rodata:0x278 | 0x19C0 | size: 0x8
.obj str_KRN_C_2_jon_000089f0, local
	.string "KRN_C_2"
.endobj str_KRN_C_2_jon_000089f0

# .rodata:0x280 | 0x19C8 | size: 0x8
.obj str_KRN_C_1_jon_000089f8, local
	.string "KRN_C_1"
.endobj str_KRN_C_1_jon_000089f8

# 0x00015570..0x00016FB0 | size: 0x1A40
.data
.balign 8

# .data:0x0 | 0x15570 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x15578 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x1557C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x15580 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x15584 | size: 0x4
.obj gap_04_00015584_data, global
.hidden gap_04_00015584_data
	.4byte 0x00000000
.endobj gap_04_00015584_data

# .data:0x18 | 0x15588 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x15590 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x15594 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x15598 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x155A0 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x155A4 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x155A8 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x155AC | size: 0x4
.obj gap_04_000155AC_data, global
.hidden gap_04_000155AC_data
	.4byte 0x00000000
.endobj gap_04_000155AC_data

# .data:0x40 | 0x155B0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x155B8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x155BC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x155C0 | size: 0xC4
.obj unit_honenoko_14_data_155C0, global
	.4byte 0x00000011
	.4byte str_btl_un_honenoko_jon_00008778
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
	.4byte str_SFX_ENM_HONENOKO_DAM_jon_00008788
	.4byte str_SFX_BTL_DAMAGE_FIRE1_jon_000087a4
	.4byte str_SFX_BTL_DAMAGE_ICE1_jon_000087bc
	.4byte str_SFX_BTL_DAMAGE_BIRIB_jon_000087d0
	.4byte 0x00000000
	.4byte regist
	.4byte 0x04000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_honenoko_14_data_155C0

# .data:0x114 | 0x15684 | size: 0x5
.obj defence, local
	.4byte 0x01010101
	.byte 0x01
.endobj defence

# .data:0x119 | 0x15689 | size: 0x3
.obj gap_04_00015689_data, global
.hidden gap_04_00015689_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00015689_data

# .data:0x11C | 0x1568C | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x15691 | size: 0x3
.obj gap_04_00015691_data, global
.hidden gap_04_00015691_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00015691_data

# .data:0x124 | 0x15694 | size: 0x16
.obj regist, local
	.4byte 0x005F3200
	.4byte 0x3264645A
	.4byte 0x64646464
	.4byte 0x645F5A0A
	.4byte 0x5A645A64
	.2byte 0x6432
.endobj regist

# .data:0x13A | 0x156AA | size: 0x2
.obj gap_04_000156AA_data, global
.hidden gap_04_000156AA_data
	.2byte 0x0000
.endobj gap_04_000156AA_data

# .data:0x13C | 0x156AC | size: 0x130
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_honenoko_jon_00008778
	.4byte str_c_karon_g_h_jon_000087ec
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
	.4byte str_btl_un_honenoko_jon_00008778
	.4byte str_c_karon_g_h_jon_000087ec
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
	.4byte str_btl_un_honenoko_jon_00008778
	.4byte str_c_nagehone_g_jon_000087f8
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
	.4byte str_btl_un_honenoko_jon_00008778
	.4byte str_c_karon_g_h_jon_000087ec
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

# .data:0x26C | 0x157DC | size: 0xC0
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

# .data:0x32C | 0x1589C | size: 0x30
.obj entry_honenoko, local
	.4byte unit_honenoko_14_data_155C0
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

# .data:0x35C | 0x158CC | size: 0x98
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_KRN_N_1_jon_00008808
	.4byte 0x00000002
	.4byte str_KRN_Y_1_jon_00008810
	.4byte 0x00000009
	.4byte str_KRN_Y_1_jon_00008810
	.4byte 0x00000005
	.4byte str_KRN_K_1_jon_00008818
	.4byte 0x00000004
	.4byte str_KRN_X_1_jon_00008820
	.4byte 0x00000003
	.4byte str_KRN_X_1_jon_00008820
	.4byte 0x0000001B
	.4byte str_KRN_Z_2_jon_00008828
	.4byte 0x0000001C
	.4byte str_KRN_S_1_jon_00008830
	.4byte 0x0000001D
	.4byte str_KRN_Q_1_jon_00008838
	.4byte 0x0000001E
	.4byte str_KRN_Q_1_jon_00008838
	.4byte 0x0000001F
	.4byte str_KRN_S_1_jon_00008830
	.4byte 0x00000027
	.4byte str_KRN_D_1_jon_00008840
	.4byte 0x00000032
	.4byte str_KRN_A_1_jon_00008848
	.4byte 0x0000002A
	.4byte str_KRN_R_1_jon_00008850
	.4byte 0x00000028
	.4byte str_KRN_W_1_jon_00008858
	.4byte 0x00000038
	.4byte str_KRN_X_1_jon_00008820
	.4byte 0x00000039
	.4byte str_KRN_X_1_jon_00008820
	.4byte 0x00000041
	.4byte str_KRN_T_1_jon_00008860
	.4byte 0x00000045
	.4byte str_KRN_S_1_jon_00008830
.endobj pose_table

# .data:0x3F4 | 0x15964 | size: 0x20
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

# .data:0x414 | 0x15984 | size: 0x7C
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
	.4byte str_0_jon_00008868
	.4byte str_SFX_ENM_HONENOKO_LAN_jon_0000886c
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x490 | 0x15A00 | size: 0x28
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

# .data:0x4B8 | 0x15A28 | size: 0x2F8
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
	.4byte str_SFX_BTL_ENEMY_DIE1_1_jon_00008888
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
	.4byte str_SFX_BTL_ENEMY_DIE1_2_jon_000088a0
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
	.4byte str_kemuri_test_jon_000088b8
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
	.4byte zero_jon_000088c4
	.4byte str_star_point_jon_000088c8
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

# .data:0x7B0 | 0x15D20 | size: 0x294
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
	.4byte str_SFX_BTL_ENEMY_DIE1_2_jon_000088a0
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
	.4byte str_kemuri_test_jon_000088b8
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
	.4byte zero_jon_000088c4
	.4byte str_star_point_jon_000088c8
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
	.4byte str_KRN_D_2_jon_000088d4
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HONENOKO_CRU_jon_000088dc
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

# .data:0xA44 | 0x15FB4 | size: 0x10C
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
	.4byte str_KRN_D_3_jon_000088f8
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HONENOKO_UNI_jon_00008900
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRN_D_4_jon_00008918
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HONENOKO_UNI_jon_00008920
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

# .data:0xB50 | 0x160C0 | size: 0x2E4
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

# .data:0xE34 | 0x163A4 | size: 0x68
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

# .data:0xE9C | 0x1640C | size: 0x6B0
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
	.4byte str_KRN_A_1_jon_00008848
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRN_A_2_jon_00008938
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HONENOKO_SEN_jon_00008940
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HONENOKO_BON_jon_00008960
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_KRN_H_1_jon_00008980
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

# .data:0x154C | 0x16ABC | size: 0x4DC
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
	.4byte str_KRN_A_3_jon_00008988
	.4byte 0x00010009
	.4byte 0x00000005
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRN_A_4_jon_00008990
	.4byte 0x00010009
	.4byte 0x0000000F
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HONENOKO_SEN_jon_00008940
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
	.4byte str_KRN_H_4_jon_00008998
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte str_KRN_H_5_jon_000089a0
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte str_KRN_H_5_jon_000089a0
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte str_KRN_H_3_jon_000089a8
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte str_KRN_H_3_jon_000089a8
	.4byte 0x0000002A
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte str_KRN_H_2_jon_000089b0
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
	.4byte str_SFX_ENM_HONENOKO_SEN_jon_000089b8
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
	.4byte str_KRN_C_5_jon_000089d8
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
	.4byte str_KRN_C_4_jon_000089e0
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte str_KRN_C_3_jon_000089e8
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte str_KRN_C_2_jon_000089f0
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte str_KRN_C_1_jon_000089f8
	.4byte 0x0000002A
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte str_KRN_Z_2_jon_00008828
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
	.4byte str_KRN_D_3_jon_000088f8
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HONENOKO_UNI_jon_00008900
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte str_KRN_D_4_jon_00008918
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HONENOKO_UNI_jon_00008920
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_KRN_S_1_jon_00008830
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

# .data:0x1A28 | 0x16F98 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event
