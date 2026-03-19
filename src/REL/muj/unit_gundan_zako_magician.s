.include "macros.inc"
.file "unit_gundan_zako_magician.o"

# 0x0000B6D4..0x0000B78C | size: 0xB8
.text
.balign 4

# .text:0x0 | 0xB6D4 | size: 0xB8
.fn kanbu_get_id, local
/* 0000B6D4 0000B798  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 0000B6D8 0000B79C  7C 08 02 A6 */	mflr r0
/* 0000B6DC 0000B7A0  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0000B6E0 0000B7A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 0000B6E4 0000B7A8  BF 41 00 08 */	stmw r26, 0x8(r1)
/* 0000B6E8 0000B7AC  7C 7A 1B 78 */	mr r26, r3
/* 0000B6EC 0000B7B0  3B C0 FF FF */	li r30, -0x1
/* 0000B6F0 0000B7B4  3B A0 00 00 */	li r29, 0x0
/* 0000B6F4 0000B7B8  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 0000B6F8 0000B7BC  83 84 00 00 */	lwz r28, _battleWorkPointer@l(r4)
.L_0000B6FC:
/* 0000B6FC 0000B7C0  7F 83 E3 78 */	mr r3, r28
/* 0000B700 0000B7C4  7F A4 EB 78 */	mr r4, r29
/* 0000B704 0000B7C8  4B FF 52 A5 */	bl BattleGetUnitPtr
/* 0000B708 0000B7CC  7C 7B 1B 79 */	mr. r27, r3
/* 0000B70C 0000B7D0  41 82 00 18 */	beq .L_0000B724
/* 0000B710 0000B7D4  80 1B 00 04 */	lwz r0, 0x4(r27)
/* 0000B714 0000B7D8  2C 00 00 63 */	cmpwi r0, 0x63
/* 0000B718 0000B7DC  40 82 00 0C */	bne .L_0000B724
/* 0000B71C 0000B7E0  7F BE EB 78 */	mr r30, r29
/* 0000B720 0000B7E4  48 00 00 10 */	b .L_0000B730
.L_0000B724:
/* 0000B724 0000B7E8  3B BD 00 01 */	addi r29, r29, 0x1
/* 0000B728 0000B7EC  2C 1D 00 40 */	cmpwi r29, 0x40
/* 0000B72C 0000B7F0  41 80 FF D0 */	blt .L_0000B6FC
.L_0000B730:
/* 0000B730 0000B7F4  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 0000B734 0000B7F8  7F 43 D3 78 */	mr r3, r26
/* 0000B738 0000B7FC  7F C5 F3 78 */	mr r5, r30
/* 0000B73C 0000B800  4B FF 52 6D */	bl evtSetValue
/* 0000B740 0000B804  2C 1E FF FF */	cmpwi r30, -0x1
/* 0000B744 0000B808  41 82 00 20 */	beq .L_0000B764
/* 0000B748 0000B80C  7F 63 DB 78 */	mr r3, r27
/* 0000B74C 0000B810  4B FF 52 5D */	bl BtlUnit_GetBodyPartsId
/* 0000B750 0000B814  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 0000B754 0000B818  7C 65 1B 78 */	mr r5, r3
/* 0000B758 0000B81C  7F 43 D3 78 */	mr r3, r26
/* 0000B75C 0000B820  4B FF 52 4D */	bl evtSetValue
/* 0000B760 0000B824  48 00 00 14 */	b .L_0000B774
.L_0000B764:
/* 0000B764 0000B828  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 0000B768 0000B82C  7F 43 D3 78 */	mr r3, r26
/* 0000B76C 0000B830  38 A0 00 00 */	li r5, 0x0
/* 0000B770 0000B834  4B FF 52 39 */	bl evtSetValue
.L_0000B774:
/* 0000B774 0000B838  BB 41 00 08 */	lmw r26, 0x8(r1)
/* 0000B778 0000B83C  38 60 00 02 */	li r3, 0x2
/* 0000B77C 0000B840  80 01 00 24 */	lwz r0, 0x24(r1)
/* 0000B780 0000B844  7C 08 03 A6 */	mtlr r0
/* 0000B784 0000B848  38 21 00 20 */	addi r1, r1, 0x20
/* 0000B788 0000B84C  4E 80 00 20 */	blr
.endfn kanbu_get_id

# 0x00005C40..0x00005E78 | size: 0x238
.rodata
.balign 8

# .rodata:0x0 | 0x5C40 | size: 0x1C
.obj str_btl_un_gundan_zako_m_muj_000138f0, local
	.string "btl_un_gundan_zako_magician"
.endobj str_btl_un_gundan_zako_m_muj_000138f0

# .rodata:0x1C | 0x5C5C | size: 0x16
.obj str_SFX_ENM_3RD2_DAMAGED_muj_0001390c, local
	.string "SFX_ENM_3RD2_DAMAGED1"
.endobj str_SFX_ENM_3RD2_DAMAGED_muj_0001390c

# .rodata:0x32 | 0x5C72 | size: 0x2
.obj gap_03_00005C72_rodata, global
.hidden gap_03_00005C72_rodata
	.2byte 0x0000
.endobj gap_03_00005C72_rodata

# .rodata:0x34 | 0x5C74 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_muj_00013924, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_muj_00013924

# .rodata:0x49 | 0x5C89 | size: 0x3
.obj gap_03_00005C89_rodata, global
.hidden gap_03_00005C89_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005C89_rodata

# .rodata:0x4C | 0x5C8C | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_muj_0001393c, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_muj_0001393c

# .rodata:0x60 | 0x5CA0 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_muj_00013950, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_muj_00013950

# .rodata:0x79 | 0x5CB9 | size: 0x3
.obj gap_03_00005CB9_rodata, global
.hidden gap_03_00005CB9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005CB9_rodata

# .rodata:0x7C | 0x5CBC | size: 0x4
.obj str_N_1_muj_0001396c, local
	.string "N_1"
.endobj str_N_1_muj_0001396c

# .rodata:0x80 | 0x5CC0 | size: 0x4
.obj str_Y_1_muj_00013970, local
	.string "Y_1"
.endobj str_Y_1_muj_00013970

# .rodata:0x84 | 0x5CC4 | size: 0x4
.obj str_K_1_muj_00013974, local
	.string "K_1"
.endobj str_K_1_muj_00013974

# .rodata:0x88 | 0x5CC8 | size: 0x4
.obj str_X_1_muj_00013978, local
	.string "X_1"
.endobj str_X_1_muj_00013978

# .rodata:0x8C | 0x5CCC | size: 0x4
.obj str_Z_1_muj_0001397c, local
	.string "Z_1"
.endobj str_Z_1_muj_0001397c

# .rodata:0x90 | 0x5CD0 | size: 0x4
.obj str_S_1_muj_00013980, local
	.string "S_1"
.endobj str_S_1_muj_00013980

# .rodata:0x94 | 0x5CD4 | size: 0x4
.obj str_D_1_muj_00013984, local
	.string "D_1"
.endobj str_D_1_muj_00013984

# .rodata:0x98 | 0x5CD8 | size: 0x4
.obj str_R_1_muj_00013988, local
	.string "R_1"
.endobj str_R_1_muj_00013988

# .rodata:0x9C | 0x5CDC | size: 0x4
.obj str_W_1_muj_0001398c, local
	.string "W_1"
.endobj str_W_1_muj_0001398c

# .rodata:0xA0 | 0x5CE0 | size: 0x4
.obj str_T_1_muj_00013990, local
	.string "T_1"
.endobj str_T_1_muj_00013990

# .rodata:0xA4 | 0x5CE4 | size: 0x9
.obj str_c_zako_m_muj_00013994, local
	.string "c_zako_m"
.endobj str_c_zako_m_muj_00013994

# .rodata:0xAD | 0x5CED | size: 0x3
.obj gap_03_00005CED_rodata, global
.hidden gap_03_00005CED_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005CED_rodata

# .rodata:0xB0 | 0x5CF0 | size: 0x15
.obj str_SFX_ENM_3RD2_ATTACK1_muj_000139a0, local
	.string "SFX_ENM_3RD2_ATTACK1"
.endobj str_SFX_ENM_3RD2_ATTACK1_muj_000139a0

# .rodata:0xC5 | 0x5D05 | size: 0x3
.obj gap_03_00005D05_rodata, global
.hidden gap_03_00005D05_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005D05_rodata

# .rodata:0xC8 | 0x5D08 | size: 0x15
.obj str_SFX_ENM_3RD2_ATTACK2_muj_000139b8, local
	.string "SFX_ENM_3RD2_ATTACK2"
.endobj str_SFX_ENM_3RD2_ATTACK2_muj_000139b8

# .rodata:0xDD | 0x5D1D | size: 0x3
.obj gap_03_00005D1D_rodata, global
.hidden gap_03_00005D1D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005D1D_rodata

# .rodata:0xE0 | 0x5D20 | size: 0x5
.obj str_A_1A_muj_000139d0, local
	.string "A_1A"
.endobj str_A_1A_muj_000139d0

# .rodata:0xE5 | 0x5D25 | size: 0x3
.obj gap_03_00005D25_rodata, global
.hidden gap_03_00005D25_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005D25_rodata

# .rodata:0xE8 | 0x5D28 | size: 0x5
.obj str_A_2A_muj_000139d8, local
	.string "A_2A"
.endobj str_A_2A_muj_000139d8

# .rodata:0xED | 0x5D2D | size: 0x3
.obj gap_03_00005D2D_rodata, global
.hidden gap_03_00005D2D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005D2D_rodata

# .rodata:0xF0 | 0x5D30 | size: 0x5
.obj str_A_3A_muj_000139e0, local
	.string "A_3A"
.endobj str_A_3A_muj_000139e0

# .rodata:0xF5 | 0x5D35 | size: 0x3
.obj gap_03_00005D35_rodata, global
.hidden gap_03_00005D35_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005D35_rodata

# .rodata:0xF8 | 0x5D38 | size: 0x5
.obj str_A_5A_muj_000139e8, local
	.string "A_5A"
.endobj str_A_5A_muj_000139e8

# .rodata:0xFD | 0x5D3D | size: 0x3
.obj gap_03_00005D3D_rodata, global
.hidden gap_03_00005D3D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005D3D_rodata

# .rodata:0x100 | 0x5D40 | size: 0x5
.obj str_A_4A_muj_000139f0, local
	.string "A_4A"
.endobj str_A_4A_muj_000139f0

# .rodata:0x105 | 0x5D45 | size: 0x3
.obj gap_03_00005D45_rodata, global
.hidden gap_03_00005D45_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005D45_rodata

# .rodata:0x108 | 0x5D48 | size: 0x5
.obj str_B_1A_muj_000139f8, local
	.string "B_1A"
.endobj str_B_1A_muj_000139f8

# .rodata:0x10D | 0x5D4D | size: 0x3
.obj gap_03_00005D4D_rodata, global
.hidden gap_03_00005D4D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005D4D_rodata

# .rodata:0x110 | 0x5D50 | size: 0x5
.obj str_B_1B_muj_00013a00, local
	.string "B_1B"
.endobj str_B_1B_muj_00013a00

# .rodata:0x115 | 0x5D55 | size: 0x3
.obj gap_03_00005D55_rodata, global
.hidden gap_03_00005D55_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005D55_rodata

# .rodata:0x118 | 0x5D58 | size: 0x15
.obj str_SFX_ENM_3RD2_ATTACK3_muj_00013a08, local
	.string "SFX_ENM_3RD2_ATTACK3"
.endobj str_SFX_ENM_3RD2_ATTACK3_muj_00013a08

# .rodata:0x12D | 0x5D6D | size: 0x3
.obj gap_03_00005D6D_rodata, global
.hidden gap_03_00005D6D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005D6D_rodata

# .rodata:0x130 | 0x5D70 | size: 0x5
.obj str_A_1B_muj_00013a20, local
	.string "A_1B"
.endobj str_A_1B_muj_00013a20

# .rodata:0x135 | 0x5D75 | size: 0x3
.obj gap_03_00005D75_rodata, global
.hidden gap_03_00005D75_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005D75_rodata

# .rodata:0x138 | 0x5D78 | size: 0x5
.obj str_A_2B_muj_00013a28, local
	.string "A_2B"
.endobj str_A_2B_muj_00013a28

# .rodata:0x13D | 0x5D7D | size: 0x3
.obj gap_03_00005D7D_rodata, global
.hidden gap_03_00005D7D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005D7D_rodata

# .rodata:0x140 | 0x5D80 | size: 0x15
.obj str_SFX_ENM_3RD2_ATTACK4_muj_00013a30, local
	.string "SFX_ENM_3RD2_ATTACK4"
.endobj str_SFX_ENM_3RD2_ATTACK4_muj_00013a30

# .rodata:0x155 | 0x5D95 | size: 0x3
.obj gap_03_00005D95_rodata, global
.hidden gap_03_00005D95_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005D95_rodata

# .rodata:0x158 | 0x5D98 | size: 0x1
.obj zero_muj_00013a48, local
	.byte 0x00
.endobj zero_muj_00013a48

# .rodata:0x159 | 0x5D99 | size: 0x3
.obj gap_03_00005D99_rodata, global
.hidden gap_03_00005D99_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005D99_rodata

# .rodata:0x15C | 0x5D9C | size: 0xA
.obj str_glass_n64_muj_00013a4c, local
	.string "glass_n64"
.endobj str_glass_n64_muj_00013a4c

# .rodata:0x166 | 0x5DA6 | size: 0x2
.obj gap_03_00005DA6_rodata, global
.hidden gap_03_00005DA6_rodata
	.2byte 0x0000
.endobj gap_03_00005DA6_rodata

# .rodata:0x168 | 0x5DA8 | size: 0x14
.obj str_SFX_ENM_3RD2_CRASH1_muj_00013a58, local
	.string "SFX_ENM_3RD2_CRASH1"
.endobj str_SFX_ENM_3RD2_CRASH1_muj_00013a58

# .rodata:0x17C | 0x5DBC | size: 0x4
.obj str_B_2_muj_00013a6c, local
	.string "B_2"
.endobj str_B_2_muj_00013a6c

# .rodata:0x180 | 0x5DC0 | size: 0xC
.obj str_kemuri_test_muj_00013a70, local
	.string "kemuri_test"
.endobj str_kemuri_test_muj_00013a70

# .rodata:0x18C | 0x5DCC | size: 0x5
.obj str_B_1D_muj_00013a7c, local
	.string "B_1D"
.endobj str_B_1D_muj_00013a7c

# .rodata:0x191 | 0x5DD1 | size: 0x3
.obj gap_03_00005DD1_rodata, global
.hidden gap_03_00005DD1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005DD1_rodata

# .rodata:0x194 | 0x5DD4 | size: 0x5
.obj str_B_1C_muj_00013a84, local
	.string "B_1C"
.endobj str_B_1C_muj_00013a84

# .rodata:0x199 | 0x5DD9 | size: 0x3
.obj gap_03_00005DD9_rodata, global
.hidden gap_03_00005DD9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005DD9_rodata

# .rodata:0x19C | 0x5DDC | size: 0x5
.obj str_A_5C_muj_00013a8c, local
	.string "A_5C"
.endobj str_A_5C_muj_00013a8c

# .rodata:0x1A1 | 0x5DE1 | size: 0x3
.obj gap_03_00005DE1_rodata, global
.hidden gap_03_00005DE1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005DE1_rodata

# .rodata:0x1A4 | 0x5DE4 | size: 0x5
.obj str_A_4C_muj_00013a94, local
	.string "A_4C"
.endobj str_A_4C_muj_00013a94

# .rodata:0x1A9 | 0x5DE9 | size: 0x3
.obj gap_03_00005DE9_rodata, global
.hidden gap_03_00005DE9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005DE9_rodata

# .rodata:0x1AC | 0x5DEC | size: 0x15
.obj str_SFX_ENM_3RD2_BOTTLE3_muj_00013a9c, local
	.string "SFX_ENM_3RD2_BOTTLE3"
.endobj str_SFX_ENM_3RD2_BOTTLE3_muj_00013a9c

# .rodata:0x1C1 | 0x5E01 | size: 0x3
.obj gap_03_00005E01_rodata, global
.hidden gap_03_00005E01_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005E01_rodata

# .rodata:0x1C4 | 0x5E04 | size: 0x15
.obj str_SFX_ENM_3RD2_BOTTLE4_muj_00013ab4, local
	.string "SFX_ENM_3RD2_BOTTLE4"
.endobj str_SFX_ENM_3RD2_BOTTLE4_muj_00013ab4

# .rodata:0x1D9 | 0x5E19 | size: 0x3
.obj gap_03_00005E19_rodata, global
.hidden gap_03_00005E19_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005E19_rodata

# .rodata:0x1DC | 0x5E1C | size: 0x5
.obj str_A_5B_muj_00013acc, local
	.string "A_5B"
.endobj str_A_5B_muj_00013acc

# .rodata:0x1E1 | 0x5E21 | size: 0x3
.obj gap_03_00005E21_rodata, global
.hidden gap_03_00005E21_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005E21_rodata

# .rodata:0x1E4 | 0x5E24 | size: 0x15
.obj str_SFX_ENM_3RD2_BOTTLE5_muj_00013ad4, local
	.string "SFX_ENM_3RD2_BOTTLE5"
.endobj str_SFX_ENM_3RD2_BOTTLE5_muj_00013ad4

# .rodata:0x1F9 | 0x5E39 | size: 0x3
.obj gap_03_00005E39_rodata, global
.hidden gap_03_00005E39_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005E39_rodata

# .rodata:0x1FC | 0x5E3C | size: 0x5
.obj str_B_1E_muj_00013aec, local
	.string "B_1E"
.endobj str_B_1E_muj_00013aec

# .rodata:0x201 | 0x5E41 | size: 0x3
.obj gap_03_00005E41_rodata, global
.hidden gap_03_00005E41_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005E41_rodata

# .rodata:0x204 | 0x5E44 | size: 0x5
.obj str_A_3C_muj_00013af4, local
	.string "A_3C"
.endobj str_A_3C_muj_00013af4

# .rodata:0x209 | 0x5E49 | size: 0x3
.obj gap_03_00005E49_rodata, global
.hidden gap_03_00005E49_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005E49_rodata

# .rodata:0x20C | 0x5E4C | size: 0x14
.obj str_SFX_ENM_3RD2_SHAKE1_muj_00013afc, local
	.string "SFX_ENM_3RD2_SHAKE1"
.endobj str_SFX_ENM_3RD2_SHAKE1_muj_00013afc

# .rodata:0x220 | 0x5E60 | size: 0x5
.obj str_A_4B_muj_00013b10, local
	.string "A_4B"
.endobj str_A_4B_muj_00013b10

# .rodata:0x225 | 0x5E65 | size: 0x3
.obj gap_03_00005E65_rodata, global
.hidden gap_03_00005E65_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005E65_rodata

# .rodata:0x228 | 0x5E68 | size: 0x9
.obj str_recovery_muj_00013b18, local
	.string "recovery"
.endobj str_recovery_muj_00013b18

# .rodata:0x231 | 0x5E71 | size: 0x7
.obj gap_03_00005E71_rodata, global
.hidden gap_03_00005E71_rodata
	.4byte 0x00000000
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005E71_rodata

# 0x00032590..0x00034940 | size: 0x23B0
.data
.balign 8

# .data:0x0 | 0x32590 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x32598 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x3259C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x325A0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x325A4 | size: 0x4
.obj gap_04_000325A4_data, global
.hidden gap_04_000325A4_data
	.4byte 0x00000000
.endobj gap_04_000325A4_data

# .data:0x18 | 0x325A8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x325B0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x325B4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x325B8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x325C0 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x325C4 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x325C8 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x325CC | size: 0x4
.obj gap_04_000325CC_data, global
.hidden gap_04_000325CC_data
	.4byte 0x00000000
.endobj gap_04_000325CC_data

# .data:0x40 | 0x325D0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x325D8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x325DC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x325E0 | size: 0xC4
.obj unit_gundan_zako_magician_19_data_325E0, global
	.4byte 0x00000077
	.4byte str_btl_un_gundan_zako_m_muj_000138f0
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
	.4byte str_SFX_ENM_3RD2_DAMAGED_muj_0001390c
	.4byte str_SFX_BTL_DAMAGE_FIRE1_muj_00013924
	.4byte str_SFX_BTL_DAMAGE_ICE1_muj_0001393c
	.4byte str_SFX_BTL_DAMAGE_BIRIB_muj_00013950
	.4byte 0x00000000
	.4byte regist
	.4byte 0x02000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_gundan_zako_magician_19_data_325E0

# .data:0x114 | 0x326A4 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x326A9 | size: 0x3
.obj gap_04_000326A9_data, global
.hidden gap_04_000326A9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_000326A9_data

# .data:0x11C | 0x326AC | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x326B1 | size: 0x3
.obj gap_04_000326B1_data, global
.hidden gap_04_000326B1_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_000326B1_data

# .data:0x124 | 0x326B4 | size: 0x16
.obj regist, local
	.ascii "PPPdPddFdZdZdZFZFdFdd_"
.endobj regist

# .data:0x13A | 0x326CA | size: 0x2
.obj gap_04_000326CA_data, global
.hidden gap_04_000326CA_data
	.2byte 0x0000
.endobj gap_04_000326CA_data

# .data:0x13C | 0x326CC | size: 0x80
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_N_1_muj_0001396c
	.4byte 0x00000002
	.4byte str_Y_1_muj_00013970
	.4byte 0x00000009
	.4byte str_Y_1_muj_00013970
	.4byte 0x00000005
	.4byte str_K_1_muj_00013974
	.4byte 0x00000004
	.4byte str_X_1_muj_00013978
	.4byte 0x00000003
	.4byte str_X_1_muj_00013978
	.4byte 0x0000001B
	.4byte str_Z_1_muj_0001397c
	.4byte 0x0000001C
	.4byte str_S_1_muj_00013980
	.4byte 0x0000001D
	.4byte str_D_1_muj_00013984
	.4byte 0x0000001E
	.4byte str_D_1_muj_00013984
	.4byte 0x0000001F
	.4byte str_S_1_muj_00013980
	.4byte 0x00000027
	.4byte str_D_1_muj_00013984
	.4byte 0x0000002A
	.4byte str_R_1_muj_00013988
	.4byte 0x00000028
	.4byte str_W_1_muj_0001398c
	.4byte 0x00000041
	.4byte str_T_1_muj_00013990
	.4byte 0x00000045
	.4byte str_S_1_muj_00013980
.endobj pose_table

# .data:0x1BC | 0x3274C | size: 0x8
.obj data_table, local
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x1C4 | 0x32754 | size: 0x98
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_gundan_zako_m_muj_000138f0
	.4byte str_c_zako_m_muj_00013994
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
	.4byte str_btl_un_gundan_zako_m_muj_000138f0
	.4byte str_c_zako_m_muj_00013994
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

# .data:0x25C | 0x327EC | size: 0xC0
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

# .data:0x31C | 0x328AC | size: 0xC0
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

# .data:0x3DC | 0x3296C | size: 0xC0
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

# .data:0x49C | 0x32A2C | size: 0xC0
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

# .data:0x55C | 0x32AEC | size: 0xC0
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

# .data:0x61C | 0x32BAC | size: 0xC0
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

# .data:0x6DC | 0x32C6C | size: 0xC0
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

# .data:0x79C | 0x32D2C | size: 0x54
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

# .data:0x7F0 | 0x32D80 | size: 0x28
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

# .data:0x818 | 0x32DA8 | size: 0x3AC
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

# .data:0xBC4 | 0x33154 | size: 0x234
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
	.4byte str_SFX_ENM_3RD2_ATTACK1_muj_000139a0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_3RD2_ATTACK2_muj_000139b8
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
	.4byte str_A_1A_muj_000139d0
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C89
	.4byte weapon_gundan_zako_magician_hunyahunya_bottle
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2A_muj_000139d8
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C89
	.4byte weapon_gundan_zako_magician_minimini_bottle
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_3A_muj_000139e0
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C89
	.4byte weapon_gundan_zako_magician_yokeyoke_bottle
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_5A_muj_000139e8
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C89
	.4byte weapon_gundan_zako_magician_one_recover
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_4A_muj_000139f0
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C89
	.4byte weapon_gundan_zako_magician_all_recover
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_4A_muj_000139f0
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C89
	.4byte weapon_gundan_zako_magician_ziwaziwa_bottle
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_4A_muj_000139f0
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000050
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_common_event1

# .data:0xDF8 | 0x33388 | size: 0x530
.obj attack_common_event2, local
	.4byte 0x00020018
	.4byte 0xFE363C89
	.4byte weapon_gundan_zako_magician_fire_bottle
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_B_1A_muj_000139f8
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C89
	.4byte weapon_gundan_zako_magician_hunyahunya_bottle
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_B_1B_muj_00013a00
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
	.4byte str_SFX_ENM_3RD2_ATTACK3_muj_00013a08
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
	.4byte str_A_1B_muj_00013a20
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C89
	.4byte weapon_gundan_zako_magician_hunyahunya_bottle
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2B_muj_00013a28
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000018
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_3RD2_ATTACK4_muj_00013a30
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
	.4byte str_S_1_muj_00013980
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
	.4byte zero_muj_00013a48
	.4byte str_glass_n64_muj_00013a4c
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
	.4byte str_SFX_ENM_3RD2_CRASH1_muj_00013a58
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_B_2_muj_00013a6c
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
	.4byte zero_muj_00013a48
	.4byte str_kemuri_test_muj_00013a70
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
	.4byte zero_muj_00013a48
	.4byte str_glass_n64_muj_00013a4c
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
	.4byte str_SFX_ENM_3RD2_CRASH1_muj_00013a58
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_B_2_muj_00013a6c
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

# .data:0x1328 | 0x338B8 | size: 0x3EC
.obj attack_common_event3, local
	.4byte 0x00020018
	.4byte 0xFE363C89
	.4byte weapon_gundan_zako_magician_yokeyoke_bottle
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_B_1D_muj_00013a7c
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C89
	.4byte weapon_gundan_zako_magician_ziwaziwa_bottle
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_B_1C_muj_00013a84
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
	.4byte str_SFX_ENM_3RD2_ATTACK3_muj_00013a08
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
	.4byte str_A_5C_muj_00013a8c
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C89
	.4byte weapon_gundan_zako_magician_ziwaziwa_bottle
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_4C_muj_00013a94
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000018
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_3RD2_ATTACK4_muj_00013a30
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
	.4byte str_S_1_muj_00013980
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
	.4byte zero_muj_00013a48
	.4byte str_glass_n64_muj_00013a4c
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
	.4byte str_SFX_ENM_3RD2_CRASH1_muj_00013a58
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_B_2_muj_00013a6c
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

# .data:0x1714 | 0x33CA4 | size: 0xE0
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

# .data:0x17F4 | 0x33D84 | size: 0xAC
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

# .data:0x18A0 | 0x33E30 | size: 0x128
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
	.4byte str_SFX_ENM_3RD2_BOTTLE3_muj_00013a9c
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
	.4byte str_SFX_ENM_3RD2_BOTTLE4_muj_00013ab4
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
	.4byte str_A_5B_muj_00013acc
	.4byte 0x00010009
	.4byte 0x00000078
	.4byte 0x0000006B
	.4byte 0x00010009
	.4byte 0x00000005
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_3RD2_BOTTLE5_muj_00013ad4
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

# .data:0x19C8 | 0x33F58 | size: 0x4E8
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
	.4byte str_B_1E_muj_00013aec
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
	.4byte str_SFX_ENM_3RD2_ATTACK3_muj_00013a08
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_3C_muj_00013af4
	.4byte 0x00010009
	.4byte 0x00000018
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_3RD2_ATTACK4_muj_00013a30
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
	.4byte str_S_1_muj_00013980
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
	.4byte zero_muj_00013a48
	.4byte str_kemuri_test_muj_00013a70
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
	.4byte zero_muj_00013a48
	.4byte str_glass_n64_muj_00013a4c
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
	.4byte str_SFX_ENM_3RD2_CRASH1_muj_00013a58
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_B_2_muj_00013a6c
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

# .data:0x1EB0 | 0x34440 | size: 0x200
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
	.4byte str_SFX_ENM_3RD2_SHAKE1_muj_00013afc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_3RD2_SHAKE1_muj_00013afc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_3RD2_SHAKE1_muj_00013afc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_4B_muj_00013b10
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
	.4byte zero_muj_00013a48
	.4byte str_recovery_muj_00013b18
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

# .data:0x20B0 | 0x34640 | size: 0x26C
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
	.4byte str_SFX_ENM_3RD2_SHAKE1_muj_00013afc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_3RD2_SHAKE1_muj_00013afc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_3RD2_SHAKE1_muj_00013afc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_4B_muj_00013b10
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
	.4byte zero_muj_00013a48
	.4byte str_recovery_muj_00013b18
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

# .data:0x231C | 0x348AC | size: 0x3C
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

# .data:0x2358 | 0x348E8 | size: 0x3C
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

# .data:0x2394 | 0x34924 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x23AC | 0x3493C | size: 0x4
.obj gap_04_0003493C_data, global
.hidden gap_04_0003493C_data
	.4byte 0x00000000
.endobj gap_04_0003493C_data
