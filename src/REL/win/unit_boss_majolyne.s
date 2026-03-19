.include "macros.inc"
.file "unit_boss_majolyne.o"

# 0x00001D54..0x00001E58 | size: 0x104
.text
.balign 4

# .text:0x0 | 0x1D54 | size: 0x104
.fn majo3_sort, local
/* 00001D54 00001E18  38 00 00 03 */	li r0, 0x3
/* 00001D58 00001E1C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 00001D5C 00001E20  38 80 00 00 */	li r4, 0x0
/* 00001D60 00001E24  38 A0 00 00 */	li r5, 0x0
/* 00001D64 00001E28  7C 09 03 A6 */	mtctr r0
.L_00001D68:
/* 00001D68 00001E2C  7C E3 2A 14 */	add r7, r3, r5
/* 00001D6C 00001E30  39 01 00 20 */	addi r8, r1, 0x20
/* 00001D70 00001E34  80 C7 00 A8 */	lwz r6, 0xa8(r7)
/* 00001D74 00001E38  7D 08 22 14 */	add r8, r8, r4
/* 00001D78 00001E3C  80 07 00 9C */	lwz r0, 0x9c(r7)
/* 00001D7C 00001E40  38 84 00 08 */	addi r4, r4, 0x8
/* 00001D80 00001E44  90 C8 00 00 */	stw r6, 0x0(r8)
/* 00001D84 00001E48  38 A5 00 04 */	addi r5, r5, 0x4
/* 00001D88 00001E4C  90 08 00 04 */	stw r0, 0x4(r8)
/* 00001D8C 00001E50  42 00 FF DC */	bdnz .L_00001D68
/* 00001D90 00001E54  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 00001D94 00001E58  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 00001D98 00001E5C  7C 06 28 00 */	cmpw r6, r5
/* 00001D9C 00001E60  40 80 00 24 */	bge .L_00001DC0
/* 00001DA0 00001E64  80 81 00 20 */	lwz r4, 0x20(r1)
/* 00001DA4 00001E68  80 01 00 28 */	lwz r0, 0x28(r1)
/* 00001DA8 00001E6C  90 81 00 18 */	stw r4, 0x18(r1)
/* 00001DAC 00001E70  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 00001DB0 00001E74  90 01 00 20 */	stw r0, 0x20(r1)
/* 00001DB4 00001E78  90 A1 00 24 */	stw r5, 0x24(r1)
/* 00001DB8 00001E7C  90 81 00 28 */	stw r4, 0x28(r1)
/* 00001DBC 00001E80  90 C1 00 2C */	stw r6, 0x2c(r1)
.L_00001DC0:
/* 00001DC0 00001E84  80 C1 00 2C */	lwz r6, 0x2c(r1)
/* 00001DC4 00001E88  80 A1 00 34 */	lwz r5, 0x34(r1)
/* 00001DC8 00001E8C  7C 06 28 00 */	cmpw r6, r5
/* 00001DCC 00001E90  40 80 00 24 */	bge .L_00001DF0
/* 00001DD0 00001E94  80 81 00 28 */	lwz r4, 0x28(r1)
/* 00001DD4 00001E98  80 01 00 30 */	lwz r0, 0x30(r1)
/* 00001DD8 00001E9C  90 81 00 08 */	stw r4, 0x8(r1)
/* 00001DDC 00001EA0  90 C1 00 0C */	stw r6, 0xc(r1)
/* 00001DE0 00001EA4  90 01 00 28 */	stw r0, 0x28(r1)
/* 00001DE4 00001EA8  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 00001DE8 00001EAC  90 81 00 30 */	stw r4, 0x30(r1)
/* 00001DEC 00001EB0  90 C1 00 34 */	stw r6, 0x34(r1)
.L_00001DF0:
/* 00001DF0 00001EB4  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 00001DF4 00001EB8  80 A1 00 2C */	lwz r5, 0x2c(r1)
/* 00001DF8 00001EBC  7C 06 28 00 */	cmpw r6, r5
/* 00001DFC 00001EC0  40 80 00 24 */	bge .L_00001E20
/* 00001E00 00001EC4  80 81 00 20 */	lwz r4, 0x20(r1)
/* 00001E04 00001EC8  80 01 00 28 */	lwz r0, 0x28(r1)
/* 00001E08 00001ECC  90 81 00 10 */	stw r4, 0x10(r1)
/* 00001E0C 00001ED0  90 C1 00 14 */	stw r6, 0x14(r1)
/* 00001E10 00001ED4  90 01 00 20 */	stw r0, 0x20(r1)
/* 00001E14 00001ED8  90 A1 00 24 */	stw r5, 0x24(r1)
/* 00001E18 00001EDC  90 81 00 28 */	stw r4, 0x28(r1)
/* 00001E1C 00001EE0  90 C1 00 2C */	stw r6, 0x2c(r1)
.L_00001E20:
/* 00001E20 00001EE4  38 00 00 03 */	li r0, 0x3
/* 00001E24 00001EE8  38 E1 00 20 */	addi r7, r1, 0x20
/* 00001E28 00001EEC  38 80 00 00 */	li r4, 0x0
/* 00001E2C 00001EF0  38 A0 00 00 */	li r5, 0x0
/* 00001E30 00001EF4  7C 09 03 A6 */	mtctr r0
.L_00001E34:
/* 00001E34 00001EF8  7C C7 28 2E */	lwzx r6, r7, r5
/* 00001E38 00001EFC  38 04 00 9C */	addi r0, r4, 0x9c
/* 00001E3C 00001F00  38 84 00 04 */	addi r4, r4, 0x4
/* 00001E40 00001F04  38 A5 00 08 */	addi r5, r5, 0x8
/* 00001E44 00001F08  7C C3 01 2E */	stwx r6, r3, r0
/* 00001E48 00001F0C  42 00 FF EC */	bdnz .L_00001E34
/* 00001E4C 00001F10  38 60 00 02 */	li r3, 0x2
/* 00001E50 00001F14  38 21 00 40 */	addi r1, r1, 0x40
/* 00001E54 00001F18  4E 80 00 20 */	blr
.endfn majo3_sort

# 0x00002000..0x00002218 | size: 0x218
.rodata
.balign 8

# .rodata:0x0 | 0x2000 | size: 0x11
.obj str_btl_un_majolyne1_win_00005748, local
	.string "btl_un_majolyne1"
.endobj str_btl_un_majolyne1_win_00005748

# .rodata:0x11 | 0x2011 | size: 0x3
.obj gap_03_00002011_rodata, global
.hidden gap_03_00002011_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002011_rodata

# .rodata:0x14 | 0x2014 | size: 0x17
.obj str_SFX_BOSS_MAJO_DAMAGE_win_0000575c, local
	.string "SFX_BOSS_MAJO_DAMAGED1"
.endobj str_SFX_BOSS_MAJO_DAMAGE_win_0000575c

# .rodata:0x2B | 0x202B | size: 0x1
.obj gap_03_0000202B_rodata, global
.hidden gap_03_0000202B_rodata
	.byte 0x00
.endobj gap_03_0000202B_rodata

# .rodata:0x2C | 0x202C | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_win_00005774, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_win_00005774

# .rodata:0x41 | 0x2041 | size: 0x3
.obj gap_03_00002041_rodata, global
.hidden gap_03_00002041_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002041_rodata

# .rodata:0x44 | 0x2044 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_win_0000578c, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_win_0000578c

# .rodata:0x58 | 0x2058 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_win_000057a0, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_win_000057a0

# .rodata:0x71 | 0x2071 | size: 0x3
.obj gap_03_00002071_rodata, global
.hidden gap_03_00002071_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002071_rodata

# .rodata:0x74 | 0x2074 | size: 0x8
.obj str_MJR_N_1_win_000057bc, local
	.string "MJR_N_1"
.endobj str_MJR_N_1_win_000057bc

# .rodata:0x7C | 0x207C | size: 0x8
.obj str_MJR_Z_1_win_000057c4, local
	.string "MJR_Z_1"
.endobj str_MJR_Z_1_win_000057c4

# .rodata:0x84 | 0x2084 | size: 0x8
.obj str_MJR_X_1_win_000057cc, local
	.string "MJR_X_1"
.endobj str_MJR_X_1_win_000057cc

# .rodata:0x8C | 0x208C | size: 0x8
.obj str_MJR_S_1_win_000057d4, local
	.string "MJR_S_1"
.endobj str_MJR_S_1_win_000057d4

# .rodata:0x94 | 0x2094 | size: 0x8
.obj str_MJR_Q_1_win_000057dc, local
	.string "MJR_Q_1"
.endobj str_MJR_Q_1_win_000057dc

# .rodata:0x9C | 0x209C | size: 0x8
.obj str_MJR_D_1_win_000057e4, local
	.string "MJR_D_1"
.endobj str_MJR_D_1_win_000057e4

# .rodata:0xA4 | 0x20A4 | size: 0x8
.obj str_MJR_R_1_win_000057ec, local
	.string "MJR_R_1"
.endobj str_MJR_R_1_win_000057ec

# .rodata:0xAC | 0x20AC | size: 0x8
.obj str_MJR_W_1_win_000057f4, local
	.string "MJR_W_1"
.endobj str_MJR_W_1_win_000057f4

# .rodata:0xB4 | 0x20B4 | size: 0x8
.obj str_MJR_T_1_win_000057fc, local
	.string "MJR_T_1"
.endobj str_MJR_T_1_win_000057fc

# .rodata:0xBC | 0x20BC | size: 0xB
.obj str_c_majyorin_win_00005804, local
	.string "c_majyorin"
.endobj str_c_majyorin_win_00005804

# .rodata:0xC7 | 0x20C7 | size: 0x1
.obj gap_03_000020C7_rodata, global
.hidden gap_03_000020C7_rodata
	.byte 0x00
.endobj gap_03_000020C7_rodata

# .rodata:0xC8 | 0x20C8 | size: 0x16
.obj str_SFX_BOSS_MAJO_SHADOW_win_00005810, local
	.string "SFX_BOSS_MAJO_SHADOW1"
.endobj str_SFX_BOSS_MAJO_SHADOW_win_00005810

# .rodata:0xDE | 0x20DE | size: 0x2
.obj gap_03_000020DE_rodata, global
.hidden gap_03_000020DE_rodata
	.2byte 0x0000
.endobj gap_03_000020DE_rodata

# .rodata:0xE0 | 0x20E0 | size: 0x16
.obj str_SFX_BOSS_MAJO_SHADOW_win_00005828, local
	.string "SFX_BOSS_MAJO_SHADOW2"
.endobj str_SFX_BOSS_MAJO_SHADOW_win_00005828

# .rodata:0xF6 | 0x20F6 | size: 0x2
.obj gap_03_000020F6_rodata, global
.hidden gap_03_000020F6_rodata
	.2byte 0x0000
.endobj gap_03_000020F6_rodata

# .rodata:0xF8 | 0x20F8 | size: 0xD
.obj str_btl_majo3_11_win_00005840, local
	.string "btl_majo3_11"
.endobj str_btl_majo3_11_win_00005840

# .rodata:0x105 | 0x2105 | size: 0x3
.obj gap_03_00002105_rodata, global
.hidden gap_03_00002105_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002105_rodata

# .rodata:0x108 | 0x2108 | size: 0xD
.obj str_btl_majo3_08_win_00005850, local
	.string "btl_majo3_08"
.endobj str_btl_majo3_08_win_00005850

# .rodata:0x115 | 0x2115 | size: 0x3
.obj gap_03_00002115_rodata, global
.hidden gap_03_00002115_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002115_rodata

# .rodata:0x118 | 0x2118 | size: 0x8
.obj str_MJR_D_3_win_00005860, local
	.string "MJR_D_3"
.endobj str_MJR_D_3_win_00005860

# .rodata:0x120 | 0x2120 | size: 0xD
.obj str_btl_majo3_03_win_00005868, local
	.string "btl_majo3_03"
.endobj str_btl_majo3_03_win_00005868

# .rodata:0x12D | 0x212D | size: 0x3
.obj gap_03_0000212D_rodata, global
.hidden gap_03_0000212D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000212D_rodata

# .rodata:0x130 | 0x2130 | size: 0xD
.obj str_btl_majo3_04_win_00005878, local
	.string "btl_majo3_04"
.endobj str_btl_majo3_04_win_00005878

# .rodata:0x13D | 0x213D | size: 0x3
.obj gap_03_0000213D_rodata, global
.hidden gap_03_0000213D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000213D_rodata

# .rodata:0x140 | 0x2140 | size: 0xD
.obj str_btl_majo3_05_win_00005888, local
	.string "btl_majo3_05"
.endobj str_btl_majo3_05_win_00005888

# .rodata:0x14D | 0x214D | size: 0x3
.obj gap_03_0000214D_rodata, global
.hidden gap_03_0000214D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000214D_rodata

# .rodata:0x150 | 0x2150 | size: 0xD
.obj str_btl_majo3_06_win_00005898, local
	.string "btl_majo3_06"
.endobj str_btl_majo3_06_win_00005898

# .rodata:0x15D | 0x215D | size: 0x3
.obj gap_03_0000215D_rodata, global
.hidden gap_03_0000215D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000215D_rodata

# .rodata:0x160 | 0x2160 | size: 0xD
.obj str_btl_majo3_07_win_000058a8, local
	.string "btl_majo3_07"
.endobj str_btl_majo3_07_win_000058a8

# .rodata:0x16D | 0x216D | size: 0x3
.obj gap_03_0000216D_rodata, global
.hidden gap_03_0000216D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000216D_rodata

# .rodata:0x170 | 0x2170 | size: 0x9
.obj str_MJR_A1_1_win_000058b8, local
	.string "MJR_A1_1"
.endobj str_MJR_A1_1_win_000058b8

# .rodata:0x179 | 0x2179 | size: 0x3
.obj gap_03_00002179_rodata, global
.hidden gap_03_00002179_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002179_rodata

# .rodata:0x17C | 0x217C | size: 0x14
.obj str_SFX_BOSS_MAJO_PUSH1_win_000058c4, local
	.string "SFX_BOSS_MAJO_PUSH1"
.endobj str_SFX_BOSS_MAJO_PUSH1_win_000058c4

# .rodata:0x190 | 0x2190 | size: 0x9
.obj str_MJR_A1_2_win_000058d8, local
	.string "MJR_A1_2"
.endobj str_MJR_A1_2_win_000058d8

# .rodata:0x199 | 0x2199 | size: 0x3
.obj gap_03_00002199_rodata, global
.hidden gap_03_00002199_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002199_rodata

# .rodata:0x19C | 0x219C | size: 0x9
.obj str_MJR_A1_3_win_000058e4, local
	.string "MJR_A1_3"
.endobj str_MJR_A1_3_win_000058e4

# .rodata:0x1A5 | 0x21A5 | size: 0x3
.obj gap_03_000021A5_rodata, global
.hidden gap_03_000021A5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000021A5_rodata

# .rodata:0x1A8 | 0x21A8 | size: 0x9
.obj str_MJR_A1_4_win_000058f0, local
	.string "MJR_A1_4"
.endobj str_MJR_A1_4_win_000058f0

# .rodata:0x1B1 | 0x21B1 | size: 0x3
.obj gap_03_000021B1_rodata, global
.hidden gap_03_000021B1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000021B1_rodata

# .rodata:0x1B4 | 0x21B4 | size: 0x19
.obj str_SFX_BOSS_MAJO_HAND_O_win_000058fc, local
	.string "SFX_BOSS_MAJO_HAND_OPEN1"
.endobj str_SFX_BOSS_MAJO_HAND_O_win_000058fc

# .rodata:0x1CD | 0x21CD | size: 0x3
.obj gap_03_000021CD_rodata, global
.hidden gap_03_000021CD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000021CD_rodata

# .rodata:0x1D0 | 0x21D0 | size: 0x1A
.obj str_SFX_BOSS_MAJO_ATTACK_win_00005918, local
	.string "SFX_BOSS_MAJO_ATTACK_ICE1"
.endobj str_SFX_BOSS_MAJO_ATTACK_win_00005918

# .rodata:0x1EA | 0x21EA | size: 0x2
.obj gap_03_000021EA_rodata, global
.hidden gap_03_000021EA_rodata
	.2byte 0x0000
.endobj gap_03_000021EA_rodata

# .rodata:0x1EC | 0x21EC | size: 0x6
.obj str_ibuki_win_00005934, local
	.string "ibuki"
.endobj str_ibuki_win_00005934

# .rodata:0x1F2 | 0x21F2 | size: 0x2
.obj gap_03_000021F2_rodata, global
.hidden gap_03_000021F2_rodata
	.2byte 0x0000
.endobj gap_03_000021F2_rodata

# .rodata:0x1F4 | 0x21F4 | size: 0x9
.obj str_MJR_A2_1_win_0000593c, local
	.string "MJR_A2_1"
.endobj str_MJR_A2_1_win_0000593c

# .rodata:0x1FD | 0x21FD | size: 0x3
.obj gap_03_000021FD_rodata, global
.hidden gap_03_000021FD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000021FD_rodata

# .rodata:0x200 | 0x2200 | size: 0x9
.obj str_MJR_A2_2_win_00005948, local
	.string "MJR_A2_2"
.endobj str_MJR_A2_2_win_00005948

# .rodata:0x209 | 0x2209 | size: 0x3
.obj gap_03_00002209_rodata, global
.hidden gap_03_00002209_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002209_rodata

# .rodata:0x20C | 0x220C | size: 0x9
.obj str_MJR_A2_3_win_00005954, local
	.string "MJR_A2_3"
.endobj str_MJR_A2_3_win_00005954

# .rodata:0x215 | 0x2215 | size: 0x3
.obj gap_03_00002215_rodata, global
.hidden gap_03_00002215_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002215_rodata

# 0x00011D80..0x000140C8 | size: 0x2348
.data
.balign 8

# .data:0x0 | 0x11D80 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x11D88 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x11D8C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x11D90 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x11D94 | size: 0x4
.obj gap_04_00011D94_data, global
.hidden gap_04_00011D94_data
	.4byte 0x00000000
.endobj gap_04_00011D94_data

# .data:0x18 | 0x11D98 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x11DA0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x11DA4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x11DA8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x11DB0 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x11DB4 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x11DB8 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x11DBC | size: 0x4
.obj gap_04_00011DBC_data, global
.hidden gap_04_00011DBC_data
	.4byte 0x00000000
.endobj gap_04_00011DBC_data

# .data:0x40 | 0x11DC0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x11DC8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x11DCC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x11DD0 | size: 0xC4
.obj unit_boss_majolyne_28_data_11DD0, global
	.4byte 0x0000001F
	.4byte str_btl_un_majolyne1_win_00005748
	.4byte 0x00090000
	.4byte 0x01011A00
	.4byte 0x00640032
	.4byte 0x0009001A
	.4byte 0x00220000
	.4byte 0x00220000
	.4byte 0x00000000
	.4byte 0x41880000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x40C00000
	.4byte 0x40000000
	.4byte 0x00000000
	.4byte 0x41500000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41500000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41000000
	.4byte 0x41B0CCCD
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41880000
	.4byte 0x00000000
	.4byte 0x41D00000
	.4byte 0x42080000
	.4byte 0x00000002
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_BOSS_MAJO_DAMAGE_win_0000575c
	.4byte str_SFX_BTL_DAMAGE_FIRE1_win_00005774
	.4byte str_SFX_BTL_DAMAGE_ICE1_win_0000578c
	.4byte str_SFX_BTL_DAMAGE_BIRIB_win_000057a0
	.4byte 0x00000000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_boss_majolyne_28_data_11DD0

# .data:0x114 | 0x11E94 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x11E99 | size: 0x3
.obj gap_04_00011E99_data, global
.hidden gap_04_00011E99_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00011E99_data

# .data:0x11C | 0x11E9C | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x11EA1 | size: 0x3
.obj gap_04_00011EA1_data, global
.hidden gap_04_00011EA1_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00011EA1_data

# .data:0x124 | 0x11EA4 | size: 0x16
.obj regist, local
	.4byte 0x46504664
	.4byte 0x46646432
	.4byte 0x64506450
	.4byte 0x645F4600
	.4byte 0x00644664
	.2byte 0x6400
.endobj regist

# .data:0x13A | 0x11EBA | size: 0x2
.obj gap_04_00011EBA_data, global
.hidden gap_04_00011EBA_data
	.2byte 0x0000
.endobj gap_04_00011EBA_data

# .data:0x13C | 0x11EBC | size: 0x90
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_MJR_N_1_win_000057bc
	.4byte 0x00000002
	.4byte str_MJR_Z_1_win_000057c4
	.4byte 0x00000009
	.4byte str_MJR_Z_1_win_000057c4
	.4byte 0x00000005
	.4byte str_MJR_X_1_win_000057cc
	.4byte 0x00000004
	.4byte str_MJR_X_1_win_000057cc
	.4byte 0x00000003
	.4byte str_MJR_X_1_win_000057cc
	.4byte 0x0000001C
	.4byte str_MJR_S_1_win_000057d4
	.4byte 0x0000001D
	.4byte str_MJR_Q_1_win_000057dc
	.4byte 0x0000001E
	.4byte str_MJR_Q_1_win_000057dc
	.4byte 0x0000001F
	.4byte str_MJR_D_1_win_000057e4
	.4byte 0x00000027
	.4byte str_MJR_D_1_win_000057e4
	.4byte 0x00000032
	.4byte str_MJR_S_1_win_000057d4
	.4byte 0x0000002A
	.4byte str_MJR_R_1_win_000057ec
	.4byte 0x00000028
	.4byte str_MJR_W_1_win_000057f4
	.4byte 0x00000038
	.4byte str_MJR_S_1_win_000057d4
	.4byte 0x00000039
	.4byte str_MJR_S_1_win_000057d4
	.4byte 0x00000041
	.4byte str_MJR_T_1_win_000057fc
	.4byte 0x00000045
	.4byte str_MJR_S_1_win_000057d4
.endobj pose_table

# .data:0x1CC | 0x11F4C | size: 0x10
.obj data_table, local
	.4byte 0x00000031
	.4byte dead_event
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x1DC | 0x11F5C | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_majolyne1_win_00005748
	.4byte str_c_majyorin_win_00005804
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x40A00000
	.4byte 0x41A00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte pose_table
.endobj parts

# .data:0x228 | 0x11FA8 | size: 0xC0
.obj weapon_majolyne_kagenuke_attack1, local
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
	.4byte 0x20000000
	.4byte 0x02000302
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000002
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
.endobj weapon_majolyne_kagenuke_attack1

# .data:0x2E8 | 0x12068 | size: 0xC0
.obj weapon_majolyne_blizzard_attack1, local
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
	.4byte 0x02101260
	.4byte 0x20000000
	.4byte 0x02000302
	.4byte 0x00000000
	.4byte 0x00000043
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
.endobj weapon_majolyne_blizzard_attack1

# .data:0x3A8 | 0x12128 | size: 0xC0
.obj weapon_majolyne_powder_attack1, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000000
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000003
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
	.4byte 0x01100160
	.4byte 0x10000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x0000008F
	.4byte 0x000007FF
	.4byte 0x80002000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x03020000
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
.endobj weapon_majolyne_powder_attack1

# .data:0x468 | 0x121E8 | size: 0xC0
.obj weapon_majolyne_powder_attack2, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x00000003
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
	.4byte 0x01101260
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000087
	.4byte 0x000007FF
	.4byte 0x80002000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x03FE0000
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
.endobj weapon_majolyne_powder_attack2

# .data:0x528 | 0x122A8 | size: 0x4C
.obj majolyne_down, local
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_MAJO_SHADOW_win_00005810
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte battle_evt_majo_disp_off
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj majolyne_down

# .data:0x574 | 0x122F4 | size: 0x6C
.obj majolyne_up, local
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_MAJO_SHADOW_win_00005828
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte battle_evt_majo_disp_on
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000002
	.4byte 0x00000001
.endobj majolyne_up

# .data:0x5E0 | 0x12360 | size: 0x64
.obj majo3_zoom, local
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000041
	.4byte 0x0000014C
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0xFFFFFEAC
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000025
	.4byte 0x00000002
	.4byte 0x00000001
.endobj majo3_zoom

# .data:0x644 | 0x123C4 | size: 0x1C
.obj btl_vivian_zoom_28_data_123C4, global
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFD050F8A
	.4byte 0x0001005E
	.4byte majo3_zoom
	.4byte 0x00000002
	.4byte 0x00000001
.endobj btl_vivian_zoom_28_data_123C4

# .data:0x660 | 0x123E0 | size: 0x1C
.obj btl_marilyn_zoom_28_data_123E0, global
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFD050F89
	.4byte 0x0001005E
	.4byte majo3_zoom
	.4byte 0x00000002
	.4byte 0x00000001
.endobj btl_marilyn_zoom_28_data_123E0

# .data:0x67C | 0x123FC | size: 0x1C
.obj btl_majolyne_zoom_28_data_123FC, global
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFD050F88
	.4byte 0x0001005E
	.4byte majo3_zoom
	.4byte 0x00000002
	.4byte 0x00000001
.endobj btl_majolyne_zoom_28_data_123FC

# .data:0x698 | 0x12418 | size: 0xB4
.obj init_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventWait
	.4byte 0xFFFFFFFE
	.4byte wait_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventPhase
	.4byte 0xFFFFFFFE
	.4byte phase_event
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
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte majo3_shadow_tail_event_28_data_13F8C
	.4byte 0x0002004C
	.4byte 0x0000000A
	.4byte 0xFD050F8F
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x74C | 0x124CC | size: 0x58
.obj damage_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckDamageCode
	.4byte 0xFFFFFFFE
	.4byte 0x00000400
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFD050F8B
	.4byte 0x00000001
	.4byte 0x00000021
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

# .data:0x7A4 | 0x12524 | size: 0x1E8
.obj dead_event, local
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0xFE363C84
	.4byte 0x00020018
	.4byte 0xFE363C82
	.4byte 0xFE363C85
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A9280
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000028
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitAttackEnd
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte btl_majolyne_zoom_28_data_123FC
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte btlevtcmd_SetTalkPose
	.4byte 0xFFFFFFFE
	.4byte str_MJR_D_1_win_000057e4
	.4byte 0x0003005B
	.4byte btlevtcmd_SetStayPose
	.4byte 0xFFFFFFFE
	.4byte str_MJR_D_1_win_000057e4
	.4byte 0x00020019
	.4byte 0xFD050F8C
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFD050F8D
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_btl_majo3_11_win_00005840
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_btl_majo3_08_win_00005850
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_MJR_D_3_win_00005860
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFD050F8B
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x0001005E
	.4byte subsetevt_dead_core_nospin_norotate
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dead_event

# .data:0x98C | 0x1270C | size: 0x3B8
.obj majo_unison_phase_event_28_data_1270C, global
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0xFFFFFFFF
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0xFFFFFFFF
	.4byte 0x00020018
	.4byte 0xFD050F8D
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFD050F8A
	.4byte 0x00000005
	.4byte 0xFE363C86
	.4byte 0x00010022
	.4byte 0xFE363C86
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFD050F8A
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFD050F8A
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0x00000001
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFD050F8A
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x00000001
	.4byte 0x00000031
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFD050F8C
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFD050F89
	.4byte 0x00000005
	.4byte 0xFE363C86
	.4byte 0x00010022
	.4byte 0xFE363C86
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFD050F89
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0x00000002
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFD050F89
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0x00000002
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFD050F89
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x00000002
	.4byte 0x00000031
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFD050F8B
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFD050F88
	.4byte 0x00000005
	.4byte 0xFE363C86
	.4byte 0x00010022
	.4byte 0xFE363C86
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFD050F88
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0x00000003
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFD050F88
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0x00000003
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFD050F88
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x00000003
	.4byte 0x00000031
	.4byte 0x00000021
	.4byte 0x0001005B
	.4byte majo3_sort
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFD050F8D
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFD050F8A
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020018
	.4byte 0xFD050F8C
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFD050F89
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x00020018
	.4byte 0xFD050F8B
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFD050F88
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00010022
	.4byte 0xFE363C81
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFD050F8D
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFD050F8A
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020018
	.4byte 0xFD050F8C
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFD050F89
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x00020018
	.4byte 0xFD050F8B
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFD050F88
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00010022
	.4byte 0xFE363C82
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFD050F8D
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFD050F8A
	.4byte 0x00000005
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020018
	.4byte 0xFD050F8C
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFD050F89
	.4byte 0x00000005
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x00020018
	.4byte 0xFD050F8B
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFD050F88
	.4byte 0x00000005
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj majo_unison_phase_event_28_data_1270C

# .data:0xD44 | 0x12AC4 | size: 0x14C
.obj unison_phase_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_CheckPhase
	.4byte 0xFE363C80
	.4byte 0x04000003
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte majo_unison_phase_event_28_data_1270C
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0xFE363C83
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xFE363C84
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0xFE363C84
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0001005E
	.4byte majolyne_down
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00010022
	.4byte 0xFE363C84
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000037
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000069
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x0000009B
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0x00000031
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0001005E
	.4byte majolyne_up
	.4byte 0x0001005B
	.4byte btlevtcmd_SortPhaseMoveTable
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj unison_phase_event

# .data:0xE90 | 0x12C10 | size: 0x544
.obj phase_event, local
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
	.4byte 0x00000009
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000009
	.4byte 0xFE363C80
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_CheckActStatus
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000006
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetMaxHp
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00010073
	.4byte 0xFE363C80
	.4byte 0x00020037
	.4byte 0xFE363C80
	.4byte 0x00000042
	.4byte 0x00010073
	.4byte 0xFE363C80
	.4byte 0x00020038
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x00010073
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C81
	.4byte 0x00010073
	.4byte 0xFE363C81
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000006
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte btl_majolyne_zoom_28_data_123FC
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_btl_majo3_03_win_00005868
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000007
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000008
	.4byte 0x00000003
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFD050F8C
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFD050F89
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFD050F8D
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFD050F8A
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFD050F8C
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFD050F89
	.4byte 0x00000006
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetMaxHp
	.4byte 0xFD050F89
	.4byte 0xFE363C80
	.4byte 0x00020037
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x00020038
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFD050F89
	.4byte 0xFE363C81
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFD050F89
	.4byte 0x00000006
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte btl_majolyne_zoom_28_data_123FC
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFD050F89
	.4byte 0xFFFFFFFF
	.4byte 0x00000010
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_btl_majo3_04_win_00005878
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFD050F89
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_CheckActStatus
	.4byte 0xFD050F89
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte btl_marilyn_zoom_28_data_123E0
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_btl_majo3_05_win_00005888
	.4byte 0x00000000
	.4byte 0xFD050F89
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFD050F8D
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFD050F8A
	.4byte 0x00000006
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetMaxHp
	.4byte 0xFD050F8A
	.4byte 0xFE363C80
	.4byte 0x00020037
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x00020038
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFD050F8A
	.4byte 0xFE363C81
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFD050F8A
	.4byte 0x00000006
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte btl_majolyne_zoom_28_data_123FC
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFD050F8A
	.4byte 0xFFFFFFFF
	.4byte 0x00000010
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_btl_majo3_06_win_00005898
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFD050F8A
	.4byte 0x00000007
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_CheckActStatus
	.4byte 0xFD050F8A
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte btl_vivian_zoom_28_data_123C4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_btl_majo3_07_win_000058a8
	.4byte 0x00000000
	.4byte 0xFD050F8A
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0x13D4 | 0x13154 | size: 0x3C4
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
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000008
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000008
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_majolyne_kagenuke_attack1
	.4byte 0x0001005E
	.4byte kagenuke_attack_event
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000008
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_majolyne_powder_attack2
	.4byte 0x0001005E
	.4byte powder_attack_check
	.4byte 0x0001005E
	.4byte powder_attack_event
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000008
	.4byte 0x00000004
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_majolyne_powder_attack1
	.4byte 0x0001005E
	.4byte powder_attack_check
	.4byte 0x0001005E
	.4byte powder_attack_event
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000008
	.4byte 0x00000004
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000009
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_majolyne_blizzard_attack1
	.4byte 0x0001005E
	.4byte blizzard_attack_event
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x00000028
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_majolyne_powder_attack1
	.4byte 0x0001005E
	.4byte powder_attack_check
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFE363C83
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0xFE363C84
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFE363C83
	.4byte 0x0000000A
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C8E
	.4byte 0x00000014
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_majolyne_powder_attack2
	.4byte 0x0001005E
	.4byte powder_attack_check
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte 0xFE363C83
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte 0xFE363C84
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFE363C83
	.4byte 0x0000000B
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C8E
	.4byte 0x00000014
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000007
	.4byte 0xFE363C82
	.4byte 0x00020019
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000009
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C8E
	.4byte 0x00000014
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020036
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0xFE363C8E
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000028
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_majolyne_kagenuke_attack1
	.4byte 0x0001005E
	.4byte kagenuke_attack_event
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_majolyne_powder_attack1
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0xFE363C8A
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0xFE363C8B
	.4byte 0x0001005E
	.4byte powder_attack_event
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_majolyne_powder_attack2
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0xFE363C8C
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0xFE363C8D
	.4byte 0x0001005E
	.4byte powder_attack_event
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000009
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_majolyne_blizzard_attack1
	.4byte 0x0001005E
	.4byte blizzard_attack_event
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x1798 | 0x13518 | size: 0x384
.obj kagenuke_attack_event, local
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
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte 0xFE363C89
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
	.4byte 0xFE363C89
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
	.4byte str_MJR_A1_1_win_000058b8
	.4byte 0x0001005E
	.4byte majolyne_down
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte majolyne_up
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_MAJO_PUSH1_win_000058c4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_MJR_A1_2_win_000058d8
	.4byte 0x00010009
	.4byte 0x00000019
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_MJR_A1_3_win_000058e4
	.4byte 0x0001000A
	.4byte 0x0000015E
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_MJR_A1_4_win_000058f0
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
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
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_MJR_A1_1_win_000058b8
	.4byte 0x0001005E
	.4byte majolyne_down
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0001005E
	.4byte majolyne_up
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kagenuke_attack_event

# .data:0x1B1C | 0x1389C | size: 0x3CC
.obj blizzard_attack_event, local
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
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte 0xFE363C89
	.4byte 0x0002005B
	.4byte btlevtcmd_AttackDeclareAll
	.4byte 0xFFFFFFFE
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitGuardMove
	.4byte 0x0003005B
	.4byte btlevtcmd_PayWeaponCost
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C89
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_MAJO_HAND_O_win_000058fc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_MJR_A1_2_win_000058d8
	.4byte 0x00010009
	.4byte 0x00000019
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_MJR_A1_3_win_000058e4
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_MJR_A1_4_win_000058f0
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_GetSelectEnemy
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_MAJO_ATTACK_win_00005918
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_TransStageFloorPosition
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte btlevtcmd_GetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0x0002001D
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_ibuki_win_00005934
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_ibuki_win_00005934
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000096
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
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
	.4byte 0x00010004
	.4byte 0x00000061
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C89
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00010003
	.4byte 0x00000061
	.4byte 0x0003005B
	.4byte btlevtcmd_GetSelectNextEnemy
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00000002
	.4byte 0x00000001
.endobj blizzard_attack_event

# .data:0x1EE8 | 0x13C68 | size: 0x40
.obj powder_attack_check, local
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
	.4byte 0x00000002
	.4byte 0x00000001
.endobj powder_attack_check

# .data:0x1F28 | 0x13CA8 | size: 0x2CC
.obj powder_attack_event, local
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
	.4byte 0xFE363C89
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
	.4byte 0xFE363C89
	.4byte 0x00020018
	.4byte 0xFE363C89
	.4byte weapon_majolyne_powder_attack1
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000009
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
	.4byte 0x00000021
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
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_MAJO_HAND_O_win_000058fc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_MJR_A2_1_win_0000593c
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_MJR_A2_2_win_00005948
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_MJR_A2_3_win_00005954
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
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
	.4byte 0x00010004
	.4byte 0x00000063
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
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj powder_attack_event

# .data:0x21F4 | 0x13F74 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x220C | 0x13F8C | size: 0x13C
.obj majo3_shadow_tail_event_28_data_13F8C, global
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_TransStageFloorPosition
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C81
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C82
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitId
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0xFFFFFFFF
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xFE363C85
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_TransStageFloorPosition
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C81
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C82
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0x00000000
.endobj majo3_shadow_tail_event_28_data_13F8C
