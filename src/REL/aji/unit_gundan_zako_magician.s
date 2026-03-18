.include "macros.inc"
.file "unit_gundan_zako_magician.o"

# 0x0000B278..0x0000B330 | size: 0xB8
.text
.balign 4

# .text:0x0 | 0xB278 | size: 0xB8
.fn kanbu_get_id, local
/* 0000B278 0000B33C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 0000B27C 0000B340  7C 08 02 A6 */	mflr r0
/* 0000B280 0000B344  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0000B284 0000B348  90 01 00 24 */	stw r0, 0x24(r1)
/* 0000B288 0000B34C  BF 41 00 08 */	stmw r26, 0x8(r1)
/* 0000B28C 0000B350  7C 7A 1B 78 */	mr r26, r3
/* 0000B290 0000B354  3B C0 FF FF */	li r30, -0x1
/* 0000B294 0000B358  3B A0 00 00 */	li r29, 0x0
/* 0000B298 0000B35C  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 0000B29C 0000B360  83 84 00 00 */	lwz r28, _battleWorkPointer@l(r4)
.L_0000B2A0:
/* 0000B2A0 0000B364  7F 83 E3 78 */	mr r3, r28
/* 0000B2A4 0000B368  7F A4 EB 78 */	mr r4, r29
/* 0000B2A8 0000B36C  4B FF AF 95 */	bl BattleGetUnitPtr
/* 0000B2AC 0000B370  7C 7B 1B 79 */	mr. r27, r3
/* 0000B2B0 0000B374  41 82 00 18 */	beq .L_0000B2C8
/* 0000B2B4 0000B378  80 1B 00 04 */	lwz r0, 0x4(r27)
/* 0000B2B8 0000B37C  2C 00 00 63 */	cmpwi r0, 0x63
/* 0000B2BC 0000B380  40 82 00 0C */	bne .L_0000B2C8
/* 0000B2C0 0000B384  7F BE EB 78 */	mr r30, r29
/* 0000B2C4 0000B388  48 00 00 10 */	b .L_0000B2D4
.L_0000B2C8:
/* 0000B2C8 0000B38C  3B BD 00 01 */	addi r29, r29, 0x1
/* 0000B2CC 0000B390  2C 1D 00 40 */	cmpwi r29, 0x40
/* 0000B2D0 0000B394  41 80 FF D0 */	blt .L_0000B2A0
.L_0000B2D4:
/* 0000B2D4 0000B398  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 0000B2D8 0000B39C  7F 43 D3 78 */	mr r3, r26
/* 0000B2DC 0000B3A0  7F C5 F3 78 */	mr r5, r30
/* 0000B2E0 0000B3A4  4B FF AF 5D */	bl evtSetValue
/* 0000B2E4 0000B3A8  2C 1E FF FF */	cmpwi r30, -0x1
/* 0000B2E8 0000B3AC  41 82 00 20 */	beq .L_0000B308
/* 0000B2EC 0000B3B0  7F 63 DB 78 */	mr r3, r27
/* 0000B2F0 0000B3B4  4B FF AF 4D */	bl BtlUnit_GetBodyPartsId
/* 0000B2F4 0000B3B8  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 0000B2F8 0000B3BC  7C 65 1B 78 */	mr r5, r3
/* 0000B2FC 0000B3C0  7F 43 D3 78 */	mr r3, r26
/* 0000B300 0000B3C4  4B FF AF 3D */	bl evtSetValue
/* 0000B304 0000B3C8  48 00 00 14 */	b .L_0000B318
.L_0000B308:
/* 0000B308 0000B3CC  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 0000B30C 0000B3D0  7F 43 D3 78 */	mr r3, r26
/* 0000B310 0000B3D4  38 A0 00 00 */	li r5, 0x0
/* 0000B314 0000B3D8  4B FF AF 29 */	bl evtSetValue
.L_0000B318:
/* 0000B318 0000B3DC  BB 41 00 08 */	lmw r26, 0x8(r1)
/* 0000B31C 0000B3E0  38 60 00 02 */	li r3, 0x2
/* 0000B320 0000B3E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 0000B324 0000B3E8  7C 08 03 A6 */	mtlr r0
/* 0000B328 0000B3EC  38 21 00 20 */	addi r1, r1, 0x20
/* 0000B32C 0000B3F0  4E 80 00 20 */	blr
.endfn kanbu_get_id

# 0x00006880..0x00006AB8 | size: 0x238
.rodata
.balign 8

# .rodata:0x0 | 0x6880 | size: 0x1C
.obj str_btl_un_gundan_zako_m_aji_000176e8, local
	.string "btl_un_gundan_zako_magician"
.endobj str_btl_un_gundan_zako_m_aji_000176e8

# .rodata:0x1C | 0x689C | size: 0x16
.obj str_SFX_ENM_3RD2_DAMAGED_aji_00017704, local
	.string "SFX_ENM_3RD2_DAMAGED1"
.endobj str_SFX_ENM_3RD2_DAMAGED_aji_00017704

# .rodata:0x32 | 0x68B2 | size: 0x2
.obj gap_03_000068B2_rodata, global
.hidden gap_03_000068B2_rodata
	.2byte 0x0000
.endobj gap_03_000068B2_rodata

# .rodata:0x34 | 0x68B4 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_aji_0001771c, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_aji_0001771c

# .rodata:0x49 | 0x68C9 | size: 0x3
.obj gap_03_000068C9_rodata, global
.hidden gap_03_000068C9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000068C9_rodata

# .rodata:0x4C | 0x68CC | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_aji_00017734, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_aji_00017734

# .rodata:0x60 | 0x68E0 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_aji_00017748, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_aji_00017748

# .rodata:0x79 | 0x68F9 | size: 0x3
.obj gap_03_000068F9_rodata, global
.hidden gap_03_000068F9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000068F9_rodata

# .rodata:0x7C | 0x68FC | size: 0x4
.obj str_N_1_aji_00017764, local
	.string "N_1"
.endobj str_N_1_aji_00017764

# .rodata:0x80 | 0x6900 | size: 0x4
.obj str_Y_1_aji_00017768, local
	.string "Y_1"
.endobj str_Y_1_aji_00017768

# .rodata:0x84 | 0x6904 | size: 0x4
.obj str_K_1_aji_0001776c, local
	.string "K_1"
.endobj str_K_1_aji_0001776c

# .rodata:0x88 | 0x6908 | size: 0x4
.obj str_X_1_aji_00017770, local
	.string "X_1"
.endobj str_X_1_aji_00017770

# .rodata:0x8C | 0x690C | size: 0x4
.obj str_Z_1_aji_00017774, local
	.string "Z_1"
.endobj str_Z_1_aji_00017774

# .rodata:0x90 | 0x6910 | size: 0x4
.obj str_S_1_aji_00017778, local
	.string "S_1"
.endobj str_S_1_aji_00017778

# .rodata:0x94 | 0x6914 | size: 0x4
.obj str_D_1_aji_0001777c, local
	.string "D_1"
.endobj str_D_1_aji_0001777c

# .rodata:0x98 | 0x6918 | size: 0x4
.obj str_R_1_aji_00017780, local
	.string "R_1"
.endobj str_R_1_aji_00017780

# .rodata:0x9C | 0x691C | size: 0x4
.obj str_W_1_aji_00017784, local
	.string "W_1"
.endobj str_W_1_aji_00017784

# .rodata:0xA0 | 0x6920 | size: 0x4
.obj str_T_1_aji_00017788, local
	.string "T_1"
.endobj str_T_1_aji_00017788

# .rodata:0xA4 | 0x6924 | size: 0x9
.obj str_c_zako_m_aji_0001778c, local
	.string "c_zako_m"
.endobj str_c_zako_m_aji_0001778c

# .rodata:0xAD | 0x692D | size: 0x3
.obj gap_03_0000692D_rodata, global
.hidden gap_03_0000692D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000692D_rodata

# .rodata:0xB0 | 0x6930 | size: 0x15
.obj str_SFX_ENM_3RD2_ATTACK1_aji_00017798, local
	.string "SFX_ENM_3RD2_ATTACK1"
.endobj str_SFX_ENM_3RD2_ATTACK1_aji_00017798

# .rodata:0xC5 | 0x6945 | size: 0x3
.obj gap_03_00006945_rodata, global
.hidden gap_03_00006945_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006945_rodata

# .rodata:0xC8 | 0x6948 | size: 0x15
.obj str_SFX_ENM_3RD2_ATTACK2_aji_000177b0, local
	.string "SFX_ENM_3RD2_ATTACK2"
.endobj str_SFX_ENM_3RD2_ATTACK2_aji_000177b0

# .rodata:0xDD | 0x695D | size: 0x3
.obj gap_03_0000695D_rodata, global
.hidden gap_03_0000695D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000695D_rodata

# .rodata:0xE0 | 0x6960 | size: 0x5
.obj str_A_1A_aji_000177c8, local
	.string "A_1A"
.endobj str_A_1A_aji_000177c8

# .rodata:0xE5 | 0x6965 | size: 0x3
.obj gap_03_00006965_rodata, global
.hidden gap_03_00006965_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006965_rodata

# .rodata:0xE8 | 0x6968 | size: 0x5
.obj str_A_2A_aji_000177d0, local
	.string "A_2A"
.endobj str_A_2A_aji_000177d0

# .rodata:0xED | 0x696D | size: 0x3
.obj gap_03_0000696D_rodata, global
.hidden gap_03_0000696D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000696D_rodata

# .rodata:0xF0 | 0x6970 | size: 0x5
.obj str_A_3A_aji_000177d8, local
	.string "A_3A"
.endobj str_A_3A_aji_000177d8

# .rodata:0xF5 | 0x6975 | size: 0x3
.obj gap_03_00006975_rodata, global
.hidden gap_03_00006975_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006975_rodata

# .rodata:0xF8 | 0x6978 | size: 0x5
.obj str_A_5A_aji_000177e0, local
	.string "A_5A"
.endobj str_A_5A_aji_000177e0

# .rodata:0xFD | 0x697D | size: 0x3
.obj gap_03_0000697D_rodata, global
.hidden gap_03_0000697D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000697D_rodata

# .rodata:0x100 | 0x6980 | size: 0x5
.obj str_A_4A_aji_000177e8, local
	.string "A_4A"
.endobj str_A_4A_aji_000177e8

# .rodata:0x105 | 0x6985 | size: 0x3
.obj gap_03_00006985_rodata, global
.hidden gap_03_00006985_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006985_rodata

# .rodata:0x108 | 0x6988 | size: 0x5
.obj str_B_1A_aji_000177f0, local
	.string "B_1A"
.endobj str_B_1A_aji_000177f0

# .rodata:0x10D | 0x698D | size: 0x3
.obj gap_03_0000698D_rodata, global
.hidden gap_03_0000698D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000698D_rodata

# .rodata:0x110 | 0x6990 | size: 0x5
.obj str_B_1B_aji_000177f8, local
	.string "B_1B"
.endobj str_B_1B_aji_000177f8

# .rodata:0x115 | 0x6995 | size: 0x3
.obj gap_03_00006995_rodata, global
.hidden gap_03_00006995_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006995_rodata

# .rodata:0x118 | 0x6998 | size: 0x15
.obj str_SFX_ENM_3RD2_ATTACK3_aji_00017800, local
	.string "SFX_ENM_3RD2_ATTACK3"
.endobj str_SFX_ENM_3RD2_ATTACK3_aji_00017800

# .rodata:0x12D | 0x69AD | size: 0x3
.obj gap_03_000069AD_rodata, global
.hidden gap_03_000069AD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000069AD_rodata

# .rodata:0x130 | 0x69B0 | size: 0x5
.obj str_A_1B_aji_00017818, local
	.string "A_1B"
.endobj str_A_1B_aji_00017818

# .rodata:0x135 | 0x69B5 | size: 0x3
.obj gap_03_000069B5_rodata, global
.hidden gap_03_000069B5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000069B5_rodata

# .rodata:0x138 | 0x69B8 | size: 0x5
.obj str_A_2B_aji_00017820, local
	.string "A_2B"
.endobj str_A_2B_aji_00017820

# .rodata:0x13D | 0x69BD | size: 0x3
.obj gap_03_000069BD_rodata, global
.hidden gap_03_000069BD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000069BD_rodata

# .rodata:0x140 | 0x69C0 | size: 0x15
.obj str_SFX_ENM_3RD2_ATTACK4_aji_00017828, local
	.string "SFX_ENM_3RD2_ATTACK4"
.endobj str_SFX_ENM_3RD2_ATTACK4_aji_00017828

# .rodata:0x155 | 0x69D5 | size: 0x3
.obj gap_03_000069D5_rodata, global
.hidden gap_03_000069D5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000069D5_rodata

# .rodata:0x158 | 0x69D8 | size: 0x1
.obj zero_aji_00017840, local
	.byte 0x00
.endobj zero_aji_00017840

# .rodata:0x159 | 0x69D9 | size: 0x3
.obj gap_03_000069D9_rodata, global
.hidden gap_03_000069D9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000069D9_rodata

# .rodata:0x15C | 0x69DC | size: 0xA
.obj str_glass_n64_aji_00017844, local
	.string "glass_n64"
.endobj str_glass_n64_aji_00017844

# .rodata:0x166 | 0x69E6 | size: 0x2
.obj gap_03_000069E6_rodata, global
.hidden gap_03_000069E6_rodata
	.2byte 0x0000
.endobj gap_03_000069E6_rodata

# .rodata:0x168 | 0x69E8 | size: 0x14
.obj str_SFX_ENM_3RD2_CRASH1_aji_00017850, local
	.string "SFX_ENM_3RD2_CRASH1"
.endobj str_SFX_ENM_3RD2_CRASH1_aji_00017850

# .rodata:0x17C | 0x69FC | size: 0x4
.obj str_B_2_aji_00017864, local
	.string "B_2"
.endobj str_B_2_aji_00017864

# .rodata:0x180 | 0x6A00 | size: 0xC
.obj str_kemuri_test_aji_00017868, local
	.string "kemuri_test"
.endobj str_kemuri_test_aji_00017868

# .rodata:0x18C | 0x6A0C | size: 0x5
.obj str_B_1D_aji_00017874, local
	.string "B_1D"
.endobj str_B_1D_aji_00017874

# .rodata:0x191 | 0x6A11 | size: 0x3
.obj gap_03_00006A11_rodata, global
.hidden gap_03_00006A11_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006A11_rodata

# .rodata:0x194 | 0x6A14 | size: 0x5
.obj str_B_1C_aji_0001787c, local
	.string "B_1C"
.endobj str_B_1C_aji_0001787c

# .rodata:0x199 | 0x6A19 | size: 0x3
.obj gap_03_00006A19_rodata, global
.hidden gap_03_00006A19_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006A19_rodata

# .rodata:0x19C | 0x6A1C | size: 0x5
.obj str_A_5C_aji_00017884, local
	.string "A_5C"
.endobj str_A_5C_aji_00017884

# .rodata:0x1A1 | 0x6A21 | size: 0x3
.obj gap_03_00006A21_rodata, global
.hidden gap_03_00006A21_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006A21_rodata

# .rodata:0x1A4 | 0x6A24 | size: 0x5
.obj str_A_4C_aji_0001788c, local
	.string "A_4C"
.endobj str_A_4C_aji_0001788c

# .rodata:0x1A9 | 0x6A29 | size: 0x3
.obj gap_03_00006A29_rodata, global
.hidden gap_03_00006A29_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006A29_rodata

# .rodata:0x1AC | 0x6A2C | size: 0x15
.obj str_SFX_ENM_3RD2_BOTTLE3_aji_00017894, local
	.string "SFX_ENM_3RD2_BOTTLE3"
.endobj str_SFX_ENM_3RD2_BOTTLE3_aji_00017894

# .rodata:0x1C1 | 0x6A41 | size: 0x3
.obj gap_03_00006A41_rodata, global
.hidden gap_03_00006A41_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006A41_rodata

# .rodata:0x1C4 | 0x6A44 | size: 0x15
.obj str_SFX_ENM_3RD2_BOTTLE4_aji_000178ac, local
	.string "SFX_ENM_3RD2_BOTTLE4"
.endobj str_SFX_ENM_3RD2_BOTTLE4_aji_000178ac

# .rodata:0x1D9 | 0x6A59 | size: 0x3
.obj gap_03_00006A59_rodata, global
.hidden gap_03_00006A59_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006A59_rodata

# .rodata:0x1DC | 0x6A5C | size: 0x5
.obj str_A_5B_aji_000178c4, local
	.string "A_5B"
.endobj str_A_5B_aji_000178c4

# .rodata:0x1E1 | 0x6A61 | size: 0x3
.obj gap_03_00006A61_rodata, global
.hidden gap_03_00006A61_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006A61_rodata

# .rodata:0x1E4 | 0x6A64 | size: 0x15
.obj str_SFX_ENM_3RD2_BOTTLE5_aji_000178cc, local
	.string "SFX_ENM_3RD2_BOTTLE5"
.endobj str_SFX_ENM_3RD2_BOTTLE5_aji_000178cc

# .rodata:0x1F9 | 0x6A79 | size: 0x3
.obj gap_03_00006A79_rodata, global
.hidden gap_03_00006A79_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006A79_rodata

# .rodata:0x1FC | 0x6A7C | size: 0x5
.obj str_B_1E_aji_000178e4, local
	.string "B_1E"
.endobj str_B_1E_aji_000178e4

# .rodata:0x201 | 0x6A81 | size: 0x3
.obj gap_03_00006A81_rodata, global
.hidden gap_03_00006A81_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006A81_rodata

# .rodata:0x204 | 0x6A84 | size: 0x5
.obj str_A_3C_aji_000178ec, local
	.string "A_3C"
.endobj str_A_3C_aji_000178ec

# .rodata:0x209 | 0x6A89 | size: 0x3
.obj gap_03_00006A89_rodata, global
.hidden gap_03_00006A89_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006A89_rodata

# .rodata:0x20C | 0x6A8C | size: 0x14
.obj str_SFX_ENM_3RD2_SHAKE1_aji_000178f4, local
	.string "SFX_ENM_3RD2_SHAKE1"
.endobj str_SFX_ENM_3RD2_SHAKE1_aji_000178f4

# .rodata:0x220 | 0x6AA0 | size: 0x5
.obj str_A_4B_aji_00017908, local
	.string "A_4B"
.endobj str_A_4B_aji_00017908

# .rodata:0x225 | 0x6AA5 | size: 0x3
.obj gap_03_00006AA5_rodata, global
.hidden gap_03_00006AA5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006AA5_rodata

# .rodata:0x228 | 0x6AA8 | size: 0x9
.obj str_recovery_aji_00017910, local
	.string "recovery"
.endobj str_recovery_aji_00017910

# .rodata:0x231 | 0x6AB1 | size: 0x7
.obj gap_03_00006AB1_rodata, global
.hidden gap_03_00006AB1_rodata
	.4byte 0x00000000
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006AB1_rodata

# 0x00034C58..0x00037008 | size: 0x23B0
.data
.balign 8

# .data:0x0 | 0x34C58 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x34C60 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x34C64 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x34C68 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x34C6C | size: 0x4
.obj gap_04_00034C6C_data, global
.hidden gap_04_00034C6C_data
	.4byte 0x00000000
.endobj gap_04_00034C6C_data

# .data:0x18 | 0x34C70 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x34C78 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x34C7C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x34C80 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x34C88 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x34C8C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x34C90 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x34C94 | size: 0x4
.obj gap_04_00034C94_data, global
.hidden gap_04_00034C94_data
	.4byte 0x00000000
.endobj gap_04_00034C94_data

# .data:0x40 | 0x34C98 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x34CA0 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x34CA4 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x34CA8 | size: 0xC4
.obj unit_gundan_zako_magician_2_data_34CA8, global
	.4byte 0x00000077
	.4byte str_btl_un_gundan_zako_m_aji_000176e8
	.4byte 0x00090000
	.4byte 0x01011B00
	.4byte 0x03460132
	.4byte 0x270F001E
	.4byte 0x00240000
	.4byte 0x00240000
	.4byte 0x00000000
	.4byte 0x41900000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41700000
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
	.4byte 0x41400000
	.4byte 0x41D80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41900000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x42100000
	.4byte 0x00000002
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_ENM_3RD2_DAMAGED_aji_00017704
	.4byte str_SFX_BTL_DAMAGE_FIRE1_aji_0001771c
	.4byte str_SFX_BTL_DAMAGE_ICE1_aji_00017734
	.4byte str_SFX_BTL_DAMAGE_BIRIB_aji_00017748
	.4byte 0x00000000
	.4byte regist
	.4byte 0x02000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_gundan_zako_magician_2_data_34CA8

# .data:0x114 | 0x34D6C | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x34D71 | size: 0x3
.obj gap_04_00034D71_data, global
.hidden gap_04_00034D71_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00034D71_data

# .data:0x11C | 0x34D74 | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x34D79 | size: 0x3
.obj gap_04_00034D79_data, global
.hidden gap_04_00034D79_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00034D79_data

# .data:0x124 | 0x34D7C | size: 0x16
.obj regist, local
	.ascii "PPPdPddFdZdZdZFZFdFdd_"
.endobj regist

# .data:0x13A | 0x34D92 | size: 0x2
.obj gap_04_00034D92_data, global
.hidden gap_04_00034D92_data
	.2byte 0x0000
.endobj gap_04_00034D92_data

# .data:0x13C | 0x34D94 | size: 0x80
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_N_1_aji_00017764
	.4byte 0x00000002
	.4byte str_Y_1_aji_00017768
	.4byte 0x00000009
	.4byte str_Y_1_aji_00017768
	.4byte 0x00000005
	.4byte str_K_1_aji_0001776c
	.4byte 0x00000004
	.4byte str_X_1_aji_00017770
	.4byte 0x00000003
	.4byte str_X_1_aji_00017770
	.4byte 0x0000001B
	.4byte str_Z_1_aji_00017774
	.4byte 0x0000001C
	.4byte str_S_1_aji_00017778
	.4byte 0x0000001D
	.4byte str_D_1_aji_0001777c
	.4byte 0x0000001E
	.4byte str_D_1_aji_0001777c
	.4byte 0x0000001F
	.4byte str_S_1_aji_00017778
	.4byte 0x00000027
	.4byte str_D_1_aji_0001777c
	.4byte 0x0000002A
	.4byte str_R_1_aji_00017780
	.4byte 0x00000028
	.4byte str_W_1_aji_00017784
	.4byte 0x00000041
	.4byte str_T_1_aji_00017788
	.4byte 0x00000045
	.4byte str_S_1_aji_00017778
.endobj pose_table

# .data:0x1BC | 0x34E14 | size: 0x8
.obj data_table, local
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x1C4 | 0x34E1C | size: 0x98
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_gundan_zako_m_aji_000176e8
	.4byte str_c_zako_m_aji_0001778c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41E00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42180000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000002
	.4byte str_btl_un_gundan_zako_m_aji_000176e8
	.4byte str_c_zako_m_aji_0001778c
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
	.4byte 0x13018000
	.4byte 0x00000000
	.4byte pose_table
.endobj parts

# .data:0x25C | 0x34EB4 | size: 0xC0
.obj weapon_gundan_zako_magician_fire_bottle, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x01101260
	.4byte 0x20001000
	.4byte 0x01000302
	.4byte 0x00000000
	.4byte 0x00000087
	.4byte 0x000007FF
	.4byte 0x80002000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000004B
	.4byte 0x03000000
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
.endobj weapon_gundan_zako_magician_fire_bottle

# .data:0x31C | 0x34F74 | size: 0xC0
.obj weapon_gundan_zako_magician_hunyahunya_bottle, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
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
	.4byte 0x004B03FD
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_gundan_zako_magician_hunyahunya_bottle

# .data:0x3DC | 0x35034 | size: 0xC0
.obj weapon_gundan_zako_magician_yokeyoke_bottle, local
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
	.4byte 0x00640300
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
.endobj weapon_gundan_zako_magician_yokeyoke_bottle

# .data:0x49C | 0x350F4 | size: 0xC0
.obj weapon_gundan_zako_magician_minimini_bottle, local
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
	.4byte 0x02101260
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x000007FF
	.4byte 0x80000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000004B
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
.endobj weapon_gundan_zako_magician_minimini_bottle

# .data:0x55C | 0x351B4 | size: 0xC0
.obj weapon_gundan_zako_magician_one_recover, local
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
	.4byte 0x01100160
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000007FF
	.4byte 0x80001500
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
.endobj weapon_gundan_zako_magician_one_recover

# .data:0x61C | 0x35274 | size: 0xC0
.obj weapon_gundan_zako_magician_all_recover, local
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
	.4byte 0x02100160
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000007FF
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
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_gundan_zako_magician_all_recover

# .data:0x6DC | 0x35334 | size: 0xC0
.obj weapon_gundan_zako_magician_ziwaziwa_bottle, local
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
	.4byte 0x01100160
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000008
	.4byte 0x000007FF
	.4byte 0x80001500
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
	.4byte 0x00000502
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_gundan_zako_magician_ziwaziwa_bottle

# .data:0x79C | 0x353F4 | size: 0x54
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
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x7F0 | 0x35448 | size: 0x28
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

# .data:0x818 | 0x35470 | size: 0x3AC
.obj attack_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_check_battleflag
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte fire_bottle_event
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
	.4byte 0x0003005B
	.4byte kanbu_get_id
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000020
	.4byte 0x00010004
	.4byte 0x00000014
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000005
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x0001005E
	.4byte fire_bottle_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x0001005E
	.4byte hunyahunya_bottle_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x00000007
	.4byte 0xFE363C82
	.4byte 0x00020018
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte yokeyoke_bottle_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x0001005E
	.4byte minimini_bottle_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x0001005E
	.4byte one_recover_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000005
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x0001005E
	.4byte all_recover_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00010003
	.4byte 0x00000014
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000003C
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000014
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
	.4byte 0x0000003C
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x0001005E
	.4byte fire_bottle_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte kanbu_get_id
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFE363C83
	.4byte 0x00000007
	.4byte 0xFE363C82
	.4byte 0x00020018
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte yokeyoke_bottle_event_with_kanbu
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte kanbu_get_id
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFE363C83
	.4byte 0x00000017
	.4byte 0xFE363C82
	.4byte 0x00020018
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte ziwaziwa_bottle_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000014
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0xBC4 | 0x3581C | size: 0x234
.obj attack_common_event1, local
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
	.4byte 0x00020018
	.4byte 0xFE363C89
	.4byte weapon_gundan_zako_magician_minimini_bottle
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFE363C83
	.4byte 0xFE363C8A
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x0000007D
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFF83
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0xFE363C8E
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8E
	.4byte 0x00000020
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000010
	.4byte 0xFE363C8E
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8E
	.4byte 0x00000021
	.4byte 0x0000006E
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_3RD2_ATTACK1_aji_00017798
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_3RD2_ATTACK2_aji_000177b0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000070
	.4byte 0x00020018
	.4byte 0xFE363C89
	.4byte weapon_gundan_zako_magician_fire_bottle
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1A_aji_000177c8
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C89
	.4byte weapon_gundan_zako_magician_hunyahunya_bottle
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2A_aji_000177d0
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C89
	.4byte weapon_gundan_zako_magician_minimini_bottle
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_3A_aji_000177d8
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C89
	.4byte weapon_gundan_zako_magician_yokeyoke_bottle
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_5A_aji_000177e0
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C89
	.4byte weapon_gundan_zako_magician_one_recover
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_4A_aji_000177e8
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C89
	.4byte weapon_gundan_zako_magician_all_recover
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_4A_aji_000177e8
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C89
	.4byte weapon_gundan_zako_magician_ziwaziwa_bottle
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_4A_aji_000177e8
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000050
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_common_event1

# .data:0xDF8 | 0x35A50 | size: 0x530
.obj attack_common_event2, local
	.4byte 0x00020018
	.4byte 0xFE363C89
	.4byte weapon_gundan_zako_magician_fire_bottle
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_B_1A_aji_000177f0
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C89
	.4byte weapon_gundan_zako_magician_hunyahunya_bottle
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_B_1B_aji_000177f8
	.4byte 0x00000021
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
	.4byte 0x0000000A
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000014
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
	.4byte str_SFX_ENM_3RD2_ATTACK3_aji_00017800
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00020018
	.4byte 0xFE363C89
	.4byte weapon_gundan_zako_magician_fire_bottle
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1B_aji_00017818
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C89
	.4byte weapon_gundan_zako_magician_hunyahunya_bottle
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2B_aji_00017820
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000018
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_3RD2_ATTACK4_aji_00017828
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006E
	.4byte 0x00010009
	.4byte 0x00000018
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_aji_00017778
	.4byte 0x00000070
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
	.4byte 0xF24A7BB3
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
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
	.4byte 0x0003005B
	.4byte btlevtcmd_JumpPartsContinue
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x0006005B
	.4byte btlevtcmd_GetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010005
	.4byte 0x0000000C
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte zero_aji_00017840
	.4byte str_glass_n64_aji_00017844
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A7E80
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_3RD2_CRASH1_aji_00017850
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_B_2_aji_00017864
	.4byte 0x00010009
	.4byte 0x00000008
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
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x00020018
	.4byte 0xFE363C89
	.4byte weapon_gundan_zako_magician_fire_bottle
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_aji_00017840
	.4byte str_kemuri_test_aji_00017868
	.4byte 0x00000010
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A7E80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010005
	.4byte 0x0000000C
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte zero_aji_00017840
	.4byte str_glass_n64_aji_00017844
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A7E80
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000006
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
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_3RD2_CRASH1_aji_00017850
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_B_2_aji_00017864
	.4byte 0x00010009
	.4byte 0x00000008
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
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_common_event2

# .data:0x1328 | 0x35F80 | size: 0x3EC
.obj attack_common_event3, local
	.4byte 0x00020018
	.4byte 0xFE363C89
	.4byte weapon_gundan_zako_magician_yokeyoke_bottle
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_B_1D_aji_00017874
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C89
	.4byte weapon_gundan_zako_magician_ziwaziwa_bottle
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_B_1C_aji_0001787c
	.4byte 0x00000021
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
	.4byte 0x0000000A
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000014
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
	.4byte str_SFX_ENM_3RD2_ATTACK3_aji_00017800
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00020018
	.4byte 0xFE363C89
	.4byte weapon_gundan_zako_magician_yokeyoke_bottle
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_5C_aji_00017884
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C89
	.4byte weapon_gundan_zako_magician_ziwaziwa_bottle
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_4C_aji_0001788c
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000018
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_3RD2_ATTACK4_aji_00017828
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006E
	.4byte 0x00010009
	.4byte 0x00000018
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_aji_00017778
	.4byte 0x00000070
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
	.4byte 0xF24A7E80
	.4byte 0xF24A7C80
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010005
	.4byte 0x0000000C
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte zero_aji_00017840
	.4byte str_glass_n64_aji_00017844
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0xF24A7E80
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000006
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
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_3RD2_CRASH1_aji_00017850
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_B_2_aji_00017864
	.4byte 0x00010009
	.4byte 0x00000008
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
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_common_event3

# .data:0x1714 | 0x3636C | size: 0xE0
.obj fire_bottle_event, local
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_gundan_zako_magician_fire_bottle
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
	.4byte 0x0001005E
	.4byte attack_common_event1
	.4byte 0x0001005E
	.4byte attack_common_event2
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj fire_bottle_event

# .data:0x17F4 | 0x3644C | size: 0xAC
.obj hunyahunya_bottle_event, local
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_gundan_zako_magician_hunyahunya_bottle
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
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte attack_common_event1
	.4byte 0x0001005E
	.4byte attack_common_event2
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hunyahunya_bottle_event

# .data:0x18A0 | 0x364F8 | size: 0x128
.obj yokeyoke_bottle_event, local
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_gundan_zako_magician_yokeyoke_bottle
	.4byte 0x0001005E
	.4byte attack_common_event1
	.4byte 0x0000006E
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_3RD2_BOTTLE3_aji_00017894
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x00010005
	.4byte 0x00000003
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_3RD2_BOTTLE4_aji_000178ac
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_5B_aji_000178c4
	.4byte 0x00010009
	.4byte 0x00000078
	.4byte 0x0000006B
	.4byte 0x00010009
	.4byte 0x00000005
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_3RD2_BOTTLE5_aji_000178cc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000037
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
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
	.4byte 0x00000002
	.4byte 0x00000001
.endobj yokeyoke_bottle_event

# .data:0x19C8 | 0x36620 | size: 0x4E8
.obj minimini_bottle_event, local
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_gundan_zako_magician_minimini_bottle
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
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte attack_common_event1
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_B_1E_aji_000178e4
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
	.4byte 0x0000000A
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000014
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
	.4byte str_SFX_ENM_3RD2_ATTACK3_aji_00017800
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_3C_aji_000178ec
	.4byte 0x00010009
	.4byte 0x00000018
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_3RD2_ATTACK4_aji_00017828
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006E
	.4byte 0x00010009
	.4byte 0x00000018
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_aji_00017778
	.4byte 0x00000070
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
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFE363C83
	.4byte 0xFE363C8A
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x0000007D
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFF83
	.4byte 0x00000021
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
	.4byte 0xF24A7BB3
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_aji_00017840
	.4byte str_kemuri_test_aji_00017868
	.4byte 0x00000014
	.4byte 0xFE363C8A
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0xF24A8419
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x0000000C
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte zero_aji_00017840
	.4byte str_glass_n64_aji_00017844
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x0000006B
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_3RD2_CRASH1_aji_00017850
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_B_2_aji_00017864
	.4byte 0x00010009
	.4byte 0x00000008
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
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte btlevtcmd_GetSelectEnemy
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x00000000
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
	.4byte 0x00010004
	.4byte 0x00000061
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
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj minimini_bottle_event

# .data:0x1EB0 | 0x36B08 | size: 0x200
.obj one_recover_event, local
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_gundan_zako_magician_one_recover
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
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte attack_common_event1
	.4byte 0x0000006E
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_3RD2_SHAKE1_aji_000178f4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_3RD2_SHAKE1_aji_000178f4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_3RD2_SHAKE1_aji_000178f4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_4B_aji_00017908
	.4byte 0x00010009
	.4byte 0x00000050
	.4byte 0x0004005B
	.4byte btlevtcmd_RecoverHp
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0000000A
	.4byte 0x0006005B
	.4byte btlevtcmd_GetPartsPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHeight
	.4byte 0xFE363C83
	.4byte 0xFE363C85
	.4byte 0x0003005B
	.4byte btlevtcmd_GetStatusMg
	.4byte 0xFE363C83
	.4byte 0xFE363C86
	.4byte 0x0002003C
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0xFE363C85
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_aji_00017840
	.4byte str_recovery_aji_00017910
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj one_recover_event

# .data:0x20B0 | 0x36D08 | size: 0x26C
.obj all_recover_event, local
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_gundan_zako_magician_all_recover
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
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte attack_common_event1
	.4byte 0x0000006E
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_3RD2_SHAKE1_aji_000178f4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_3RD2_SHAKE1_aji_000178f4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_3RD2_SHAKE1_aji_000178f4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_4B_aji_00017908
	.4byte 0x00010009
	.4byte 0x00000050
	.4byte 0x0003005B
	.4byte btlevtcmd_GetSelectEnemy
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0000006E
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000000A
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000005
	.4byte 0x00010009
	.4byte 0xFE363C8A
	.4byte 0x0004005B
	.4byte btlevtcmd_RecoverHp
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000005
	.4byte 0x0006005B
	.4byte btlevtcmd_GetPartsPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHeight
	.4byte 0xFE363C83
	.4byte 0xFE363C85
	.4byte 0x0003005B
	.4byte btlevtcmd_GetStatusMg
	.4byte 0xFE363C83
	.4byte 0xFE363C86
	.4byte 0x0002003C
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0xFE363C85
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_aji_00017840
	.4byte str_recovery_aji_00017910
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000070
	.4byte 0x0003005B
	.4byte btlevtcmd_GetSelectNextEnemy
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x0000005A
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj all_recover_event

# .data:0x231C | 0x36F74 | size: 0x3C
.obj yokeyoke_bottle_event_with_kanbu, local
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_gundan_zako_magician_yokeyoke_bottle
	.4byte 0x0003005B
	.4byte kanbu_get_id
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0001005E
	.4byte attack_common_event1
	.4byte 0x0001005E
	.4byte attack_common_event3
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj yokeyoke_bottle_event_with_kanbu

# .data:0x2358 | 0x36FB0 | size: 0x3C
.obj ziwaziwa_bottle_event, local
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_gundan_zako_magician_ziwaziwa_bottle
	.4byte 0x0003005B
	.4byte kanbu_get_id
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0001005E
	.4byte attack_common_event1
	.4byte 0x0001005E
	.4byte attack_common_event3
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj ziwaziwa_bottle_event

# .data:0x2394 | 0x36FEC | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x23AC | 0x37004 | size: 0x4
.obj gap_04_00037004_data, global
.hidden gap_04_00037004_data
	.4byte 0x00000000
.endobj gap_04_00037004_data
