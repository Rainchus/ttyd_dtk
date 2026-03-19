.include "macros.inc"
.file "unit_togenoko_ace.o"

# 0x00007CE0..0x00007D60 | size: 0x80
.text
.balign 4

# .text:0x0 | 0x7CE0 | size: 0x80
.fn togenoko_getnum, local
/* 00007CE0 00007DA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00007CE4 00007DA8  7C 08 02 A6 */	mflr r0
/* 00007CE8 00007DAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 00007CEC 00007DB0  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 00007CF0 00007DB4  7C 7B 1B 78 */	mr r27, r3
/* 00007CF4 00007DB8  3C 60 00 00 */	lis r3, _battleWorkPointer@ha
/* 00007CF8 00007DBC  3B A0 00 00 */	li r29, 0x0
/* 00007CFC 00007DC0  3B E3 00 00 */	addi r31, r3, _battleWorkPointer@l
/* 00007D00 00007DC4  3B 80 00 00 */	li r28, 0x0
/* 00007D04 00007DC8  83 DB 00 18 */	lwz r30, 0x18(r27)
.L_00007D08:
/* 00007D08 00007DCC  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 00007D0C 00007DD0  7F 84 E3 78 */	mr r4, r28
/* 00007D10 00007DD4  4B FF D3 05 */	bl BattleGetUnitPtr
/* 00007D14 00007DD8  28 03 00 00 */	cmplwi r3, 0x0
/* 00007D18 00007DDC  41 82 00 14 */	beq .L_00007D2C
/* 00007D1C 00007DE0  80 03 00 08 */	lwz r0, 0x8(r3)
/* 00007D20 00007DE4  2C 00 00 3C */	cmpwi r0, 0x3c
/* 00007D24 00007DE8  40 82 00 08 */	bne .L_00007D2C
/* 00007D28 00007DEC  3B BD 00 01 */	addi r29, r29, 0x1
.L_00007D2C:
/* 00007D2C 00007DF0  3B 9C 00 01 */	addi r28, r28, 0x1
/* 00007D30 00007DF4  2C 1C 00 40 */	cmpwi r28, 0x40
/* 00007D34 00007DF8  41 80 FF D4 */	blt .L_00007D08
/* 00007D38 00007DFC  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 00007D3C 00007E00  7F 63 DB 78 */	mr r3, r27
/* 00007D40 00007E04  7F A5 EB 78 */	mr r5, r29
/* 00007D44 00007E08  4B FF D2 D1 */	bl evtSetValue
/* 00007D48 00007E0C  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 00007D4C 00007E10  38 60 00 02 */	li r3, 0x2
/* 00007D50 00007E14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00007D54 00007E18  7C 08 03 A6 */	mtlr r0
/* 00007D58 00007E1C  38 21 00 20 */	addi r1, r1, 0x20
/* 00007D5C 00007E20  4E 80 00 20 */	blr
.endfn togenoko_getnum

# 0x00006CE8..0x00006F28 | size: 0x240
.rodata
.balign 8

# .rodata:0x0 | 0x6CE8 | size: 0x14
.obj str_btl_un_togenoko_ace_tou2_00010428, local
	.string "btl_un_togenoko_ace"
.endobj str_btl_un_togenoko_ace_tou2_00010428

# .rodata:0x14 | 0x6CFC | size: 0x1A
.obj str_SFX_ENM_TOGENOKO_DAM_tou2_0001043c, local
	.string "SFX_ENM_TOGENOKO_DAMAGED1"
.endobj str_SFX_ENM_TOGENOKO_DAM_tou2_0001043c

# .rodata:0x2E | 0x6D16 | size: 0x2
.obj gap_03_00006D16_rodata, global
.hidden gap_03_00006D16_rodata
	.2byte 0x0000
.endobj gap_03_00006D16_rodata

# .rodata:0x30 | 0x6D18 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_tou2_00010458, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_tou2_00010458

# .rodata:0x45 | 0x6D2D | size: 0x3
.obj gap_03_00006D2D_rodata, global
.hidden gap_03_00006D2D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006D2D_rodata

# .rodata:0x48 | 0x6D30 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_tou2_00010470, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_tou2_00010470

# .rodata:0x5C | 0x6D44 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_tou2_00010484, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_tou2_00010484

# .rodata:0x75 | 0x6D5D | size: 0x3
.obj gap_03_00006D5D_rodata, global
.hidden gap_03_00006D5D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006D5D_rodata

# .rodata:0x78 | 0x6D60 | size: 0x4
.obj str_N_1_tou2_000104a0, local
	.string "N_1"
.endobj str_N_1_tou2_000104a0

# .rodata:0x7C | 0x6D64 | size: 0x4
.obj str_Y_1_tou2_000104a4, local
	.string "Y_1"
.endobj str_Y_1_tou2_000104a4

# .rodata:0x80 | 0x6D68 | size: 0x4
.obj str_K_1_tou2_000104a8, local
	.string "K_1"
.endobj str_K_1_tou2_000104a8

# .rodata:0x84 | 0x6D6C | size: 0x4
.obj str_X_1_tou2_000104ac, local
	.string "X_1"
.endobj str_X_1_tou2_000104ac

# .rodata:0x88 | 0x6D70 | size: 0x4
.obj str_S_1_tou2_000104b0, local
	.string "S_1"
.endobj str_S_1_tou2_000104b0

# .rodata:0x8C | 0x6D74 | size: 0x4
.obj str_Q_1_tou2_000104b4, local
	.string "Q_1"
.endobj str_Q_1_tou2_000104b4

# .rodata:0x90 | 0x6D78 | size: 0x4
.obj str_D_1_tou2_000104b8, local
	.string "D_1"
.endobj str_D_1_tou2_000104b8

# .rodata:0x94 | 0x6D7C | size: 0x4
.obj str_A_1_tou2_000104bc, local
	.string "A_1"
.endobj str_A_1_tou2_000104bc

# .rodata:0x98 | 0x6D80 | size: 0x4
.obj str_R_1_tou2_000104c0, local
	.string "R_1"
.endobj str_R_1_tou2_000104c0

# .rodata:0x9C | 0x6D84 | size: 0x4
.obj str_W_1_tou2_000104c4, local
	.string "W_1"
.endobj str_W_1_tou2_000104c4

# .rodata:0xA0 | 0x6D88 | size: 0x4
.obj str_T_1_tou2_000104c8, local
	.string "T_1"
.endobj str_T_1_tou2_000104c8

# .rodata:0xA4 | 0x6D8C | size: 0x4
.obj str_N_2_tou2_000104cc, local
	.string "N_2"
.endobj str_N_2_tou2_000104cc

# .rodata:0xA8 | 0x6D90 | size: 0x4
.obj str_Z_2_tou2_000104d0, local
	.string "Z_2"
.endobj str_Z_2_tou2_000104d0

# .rodata:0xAC | 0x6D94 | size: 0x4
.obj str_K_2_tou2_000104d4, local
	.string "K_2"
.endobj str_K_2_tou2_000104d4

# .rodata:0xB0 | 0x6D98 | size: 0x4
.obj str_S_2_tou2_000104d8, local
	.string "S_2"
.endobj str_S_2_tou2_000104d8

# .rodata:0xB4 | 0x6D9C | size: 0x4
.obj str_G_1_tou2_000104dc, local
	.string "G_1"
.endobj str_G_1_tou2_000104dc

# .rodata:0xB8 | 0x6DA0 | size: 0xD
.obj str_c_togenoko_b_tou2_000104e0, local
	.string "c_togenoko_b"
.endobj str_c_togenoko_b_tou2_000104e0

# .rodata:0xC5 | 0x6DAD | size: 0x3
.obj gap_03_00006DAD_rodata, global
.hidden gap_03_00006DAD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006DAD_rodata

# .rodata:0xC8 | 0x6DB0 | size: 0x17
.obj str_SFX_ENM_TOGENOKO_MOV_tou2_000104f0, local
	.string "SFX_ENM_TOGENOKO_MOVE3"
.endobj str_SFX_ENM_TOGENOKO_MOV_tou2_000104f0

# .rodata:0xDF | 0x6DC7 | size: 0x1
.obj gap_03_00006DC7_rodata, global
.hidden gap_03_00006DC7_rodata
	.byte 0x00
.endobj gap_03_00006DC7_rodata

# .rodata:0xE0 | 0x6DC8 | size: 0x17
.obj str_SFX_ENM_TOGENOKO_MOV_tou2_00010508, local
	.string "SFX_ENM_TOGENOKO_MOVE4"
.endobj str_SFX_ENM_TOGENOKO_MOV_tou2_00010508

# .rodata:0xF7 | 0x6DDF | size: 0x1
.obj gap_03_00006DDF_rodata, global
.hidden gap_03_00006DDF_rodata
	.byte 0x00
.endobj gap_03_00006DDF_rodata

# .rodata:0xF8 | 0x6DE0 | size: 0x1
.obj zero_tou2_00010520, local
	.byte 0x00
.endobj zero_tou2_00010520

# .rodata:0xF9 | 0x6DE1 | size: 0x3
.obj gap_03_00006DE1_rodata, global
.hidden gap_03_00006DE1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006DE1_rodata

# .rodata:0xFC | 0x6DE4 | size: 0xB
.obj str_toge_flush_tou2_00010524, local
	.string "toge_flush"
.endobj str_toge_flush_tou2_00010524

# .rodata:0x107 | 0x6DEF | size: 0x1
.obj gap_03_00006DEF_rodata, global
.hidden gap_03_00006DEF_rodata
	.byte 0x00
.endobj gap_03_00006DEF_rodata

# .rodata:0x108 | 0x6DF0 | size: 0x10
.obj str_SFX_ENM_INSIDE1_tou2_00010530, local
	.string "SFX_ENM_INSIDE1"
.endobj str_SFX_ENM_INSIDE1_tou2_00010530

# .rodata:0x118 | 0x6E00 | size: 0x10
.obj str_SFX_ENM_INSIDE2_tou2_00010540, local
	.string "SFX_ENM_INSIDE2"
.endobj str_SFX_ENM_INSIDE2_tou2_00010540

# .rodata:0x128 | 0x6E10 | size: 0x4
.obj str_R_3_tou2_00010550, local
	.string "R_3"
.endobj str_R_3_tou2_00010550

# .rodata:0x12C | 0x6E14 | size: 0x17
.obj str_SFX_ENM_TOGENOKO_MOV_tou2_00010554, local
	.string "SFX_ENM_TOGENOKO_MOVE5"
.endobj str_SFX_ENM_TOGENOKO_MOV_tou2_00010554

# .rodata:0x143 | 0x6E2B | size: 0x1
.obj gap_03_00006E2B_rodata, global
.hidden gap_03_00006E2B_rodata
	.byte 0x00
.endobj gap_03_00006E2B_rodata

# .rodata:0x144 | 0x6E2C | size: 0x4
.obj str_A_2_tou2_0001056c, local
	.string "A_2"
.endobj str_A_2_tou2_0001056c

# .rodata:0x148 | 0x6E30 | size: 0x17
.obj str_SFX_ENM_TOGENOKO_MOV_tou2_00010570, local
	.string "SFX_ENM_TOGENOKO_MOVE6"
.endobj str_SFX_ENM_TOGENOKO_MOV_tou2_00010570

# .rodata:0x15F | 0x6E47 | size: 0x1
.obj gap_03_00006E47_rodata, global
.hidden gap_03_00006E47_rodata
	.byte 0x00
.endobj gap_03_00006E47_rodata

# .rodata:0x160 | 0x6E48 | size: 0x17
.obj str_SFX_ENM_TOGENOKO_MOV_tou2_00010588, local
	.string "SFX_ENM_TOGENOKO_MOVE1"
.endobj str_SFX_ENM_TOGENOKO_MOV_tou2_00010588

# .rodata:0x177 | 0x6E5F | size: 0x1
.obj gap_03_00006E5F_rodata, global
.hidden gap_03_00006E5F_rodata
	.byte 0x00
.endobj gap_03_00006E5F_rodata

# .rodata:0x178 | 0x6E60 | size: 0x18
.obj str_SFX_ENM_TOGENOKO_SHE_tou2_000105a0, local
	.string "SFX_ENM_TOGENOKO_SHELL1"
.endobj str_SFX_ENM_TOGENOKO_SHE_tou2_000105a0

# .rodata:0x190 | 0x6E78 | size: 0x17
.obj str_SFX_ENM_TOGENOKO_MOV_tou2_000105b8, local
	.string "SFX_ENM_TOGENOKO_MOVE2"
.endobj str_SFX_ENM_TOGENOKO_MOV_tou2_000105b8

# .rodata:0x1A7 | 0x6E8F | size: 0x1
.obj gap_03_00006E8F_rodata, global
.hidden gap_03_00006E8F_rodata
	.byte 0x00
.endobj gap_03_00006E8F_rodata

# .rodata:0x1A8 | 0x6E90 | size: 0xC
.obj str_kemuri_test_tou2_000105d0, local
	.string "kemuri_test"
.endobj str_kemuri_test_tou2_000105d0

# .rodata:0x1B4 | 0x6E9C | size: 0x19
.obj str_SFX_ENM_TOGENOKO_ATT_tou2_000105dc, local
	.string "SFX_ENM_TOGENOKO_ATTACK1"
.endobj str_SFX_ENM_TOGENOKO_ATT_tou2_000105dc

# .rodata:0x1CD | 0x6EB5 | size: 0x3
.obj gap_03_00006EB5_rodata, global
.hidden gap_03_00006EB5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006EB5_rodata

# .rodata:0x1D0 | 0x6EB8 | size: 0x18
.obj str_SFX_ENM_TOGENOKO_SHE_tou2_000105f8, local
	.string "SFX_ENM_TOGENOKO_SHELL2"
.endobj str_SFX_ENM_TOGENOKO_SHE_tou2_000105f8

# .rodata:0x1E8 | 0x6ED0 | size: 0x19
.obj str_SFX_ENM_TOGENOKO_ATT_tou2_00010610, local
	.string "SFX_ENM_TOGENOKO_ATTACK2"
.endobj str_SFX_ENM_TOGENOKO_ATT_tou2_00010610

# .rodata:0x201 | 0x6EE9 | size: 0x3
.obj gap_03_00006EE9_rodata, global
.hidden gap_03_00006EE9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006EE9_rodata

# .rodata:0x204 | 0x6EEC | size: 0x19
.obj str_SFX_ENM_TOGENOKO_CHA_tou2_0001062c, local
	.string "SFX_ENM_TOGENOKO_CHARGE1"
.endobj str_SFX_ENM_TOGENOKO_CHA_tou2_0001062c

# .rodata:0x21D | 0x6F05 | size: 0x3
.obj gap_03_00006F05_rodata, global
.hidden gap_03_00006F05_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006F05_rodata

# .rodata:0x220 | 0x6F08 | size: 0x17
.obj str_SFX_ENM_TOGENOKO_CAL_tou2_00010648, local
	.string "SFX_ENM_TOGENOKO_CALL1"
.endobj str_SFX_ENM_TOGENOKO_CAL_tou2_00010648

# .rodata:0x237 | 0x6F1F | size: 0x1
.obj gap_03_00006F1F_rodata, global
.hidden gap_03_00006F1F_rodata
	.byte 0x00
.endobj gap_03_00006F1F_rodata

# .rodata:0x238 | 0x6F20 | size: 0x4
.obj str_B_1_tou2_00010660, local
	.string "B_1"
.endobj str_B_1_tou2_00010660

# .rodata:0x23C | 0x6F24 | size: 0x4
.obj gap_03_00006F24_rodata, global
.hidden gap_03_00006F24_rodata
	.4byte 0x00000000
.endobj gap_03_00006F24_rodata

# 0x00048EE0..0x0004B430 | size: 0x2550
.data
.balign 8

# .data:0x0 | 0x48EE0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x48EE8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x48EEC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x48EF0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x48EF4 | size: 0x4
.obj gap_04_00048EF4_data, global
.hidden gap_04_00048EF4_data
	.4byte 0x00000000
.endobj gap_04_00048EF4_data

# .data:0x18 | 0x48EF8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x48F00 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x48F04 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x48F08 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x48F10 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x48F14 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x48F18 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x48F1C | size: 0x4
.obj gap_04_00048F1C_data, global
.hidden gap_04_00048F1C_data
	.4byte 0x00000000
.endobj gap_04_00048F1C_data

# .data:0x40 | 0x48F20 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x48F28 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x48F2C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x48F30 | size: 0xC4
.obj unit_togenoko_ace_26_data_48F30, global
	.4byte 0x0000003C
	.4byte str_btl_un_togenoko_ace_tou2_00010428
	.4byte 0x00190000
	.4byte 0x01011E01
	.4byte 0x03460232
	.4byte 0x270F0024
	.4byte 0x0032FFFC
	.4byte 0x00320000
	.4byte 0x00000000
	.4byte 0x41C80000
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
	.4byte 0x41500000
	.4byte 0x42000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41C80000
	.4byte 0x00000000
	.4byte 0x42100000
	.4byte 0x42480000
	.4byte 0x00000002
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_ENM_TOGENOKO_DAM_tou2_0001043c
	.4byte str_SFX_BTL_DAMAGE_FIRE1_tou2_00010458
	.4byte str_SFX_BTL_DAMAGE_ICE1_tou2_00010470
	.4byte str_SFX_BTL_DAMAGE_BIRIB_tou2_00010484
	.4byte 0x00000000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_togenoko_ace_26_data_48F30

# .data:0x114 | 0x48FF4 | size: 0x5
.obj defence, local
	.4byte 0x02020202
	.byte 0x02
.endobj defence

# .data:0x119 | 0x48FF9 | size: 0x3
.obj gap_04_00048FF9_data, global
.hidden gap_04_00048FF9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00048FF9_data

# .data:0x11C | 0x48FFC | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x49001 | size: 0x3
.obj gap_04_00049001_data, global
.hidden gap_04_00049001_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00049001_data

# .data:0x124 | 0x49004 | size: 0x16
.obj regist, local
	.ascii "<AAdAdd<dUdUdZF<<dFdd_"
.endobj regist

# .data:0x13A | 0x4901A | size: 0x2
.obj gap_04_0004901A_data, global
.hidden gap_04_0004901A_data
	.2byte 0x0000
.endobj gap_04_0004901A_data

# .data:0x13C | 0x4901C | size: 0x5
.obj defence_turn, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_turn

# .data:0x141 | 0x49021 | size: 0x3
.obj gap_04_00049021_data, global
.hidden gap_04_00049021_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00049021_data

# .data:0x144 | 0x49024 | size: 0x5
.obj defence_attr_turn, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr_turn

# .data:0x149 | 0x49029 | size: 0x3
.obj gap_04_00049029_data, global
.hidden gap_04_00049029_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00049029_data

# .data:0x14C | 0x4902C | size: 0x16
.obj regist_turn, local
	.ascii "dddddddddddddddddddddd"
.endobj regist_turn

# .data:0x162 | 0x49042 | size: 0x2
.obj gap_04_00049042_data, global
.hidden gap_04_00049042_data
	.2byte 0x0000
.endobj gap_04_00049042_data

# .data:0x164 | 0x49044 | size: 0x5
.obj defence_guard, local
	.ascii "ccccc"
.endobj defence_guard

# .data:0x169 | 0x49049 | size: 0x3
.obj gap_04_00049049_data, global
.hidden gap_04_00049049_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00049049_data

# .data:0x16C | 0x4904C | size: 0x5
.obj defence_attr_guard, local
	.4byte 0x02020202
	.byte 0x02
.endobj defence_attr_guard

# .data:0x171 | 0x49051 | size: 0x3
.obj gap_04_00049051_data, global
.hidden gap_04_00049051_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00049051_data

# .data:0x174 | 0x49054 | size: 0x16
.obj regist_guard, local
	.ascii "dddddddddddddddddddddd"
.endobj regist_guard

# .data:0x18A | 0x4906A | size: 0x2
.obj gap_04_0004906A_data, global
.hidden gap_04_0004906A_data
	.2byte 0x0000
.endobj gap_04_0004906A_data

# .data:0x18C | 0x4906C | size: 0x90
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_N_1_tou2_000104a0
	.4byte 0x00000002
	.4byte str_Y_1_tou2_000104a4
	.4byte 0x00000009
	.4byte str_Y_1_tou2_000104a4
	.4byte 0x00000005
	.4byte str_K_1_tou2_000104a8
	.4byte 0x00000004
	.4byte str_X_1_tou2_000104ac
	.4byte 0x00000003
	.4byte str_X_1_tou2_000104ac
	.4byte 0x0000001C
	.4byte str_S_1_tou2_000104b0
	.4byte 0x0000001D
	.4byte str_Q_1_tou2_000104b4
	.4byte 0x0000001E
	.4byte str_Q_1_tou2_000104b4
	.4byte 0x0000001F
	.4byte str_S_1_tou2_000104b0
	.4byte 0x00000027
	.4byte str_D_1_tou2_000104b8
	.4byte 0x00000032
	.4byte str_A_1_tou2_000104bc
	.4byte 0x0000002A
	.4byte str_R_1_tou2_000104c0
	.4byte 0x00000028
	.4byte str_W_1_tou2_000104c4
	.4byte 0x00000038
	.4byte str_X_1_tou2_000104ac
	.4byte 0x00000039
	.4byte str_X_1_tou2_000104ac
	.4byte 0x00000041
	.4byte str_T_1_tou2_000104c8
	.4byte 0x00000045
	.4byte str_S_1_tou2_000104b0
.endobj pose_table

# .data:0x21C | 0x490FC | size: 0x78
.obj pose_table_turn, local
	.4byte 0x00000001
	.4byte str_N_2_tou2_000104cc
	.4byte 0x00000002
	.4byte str_Z_2_tou2_000104d0
	.4byte 0x00000009
	.4byte str_Z_2_tou2_000104d0
	.4byte 0x00000005
	.4byte str_K_2_tou2_000104d4
	.4byte 0x00000004
	.4byte str_S_2_tou2_000104d8
	.4byte 0x00000003
	.4byte str_S_2_tou2_000104d8
	.4byte 0x0000001C
	.4byte str_S_2_tou2_000104d8
	.4byte 0x0000001D
	.4byte str_Q_1_tou2_000104b4
	.4byte 0x0000001E
	.4byte str_Q_1_tou2_000104b4
	.4byte 0x0000001F
	.4byte str_D_1_tou2_000104b8
	.4byte 0x00000027
	.4byte str_D_1_tou2_000104b8
	.4byte 0x00000038
	.4byte str_S_2_tou2_000104d8
	.4byte 0x00000039
	.4byte str_S_2_tou2_000104d8
	.4byte 0x00000041
	.4byte str_S_2_tou2_000104d8
	.4byte 0x00000045
	.4byte str_S_2_tou2_000104d8
.endobj pose_table_turn

# .data:0x294 | 0x49174 | size: 0x78
.obj pose_table_guard, local
	.4byte 0x00000001
	.4byte str_A_1_tou2_000104bc
	.4byte 0x00000002
	.4byte str_A_1_tou2_000104bc
	.4byte 0x00000009
	.4byte str_A_1_tou2_000104bc
	.4byte 0x00000005
	.4byte str_A_1_tou2_000104bc
	.4byte 0x00000004
	.4byte str_A_1_tou2_000104bc
	.4byte 0x00000003
	.4byte str_A_1_tou2_000104bc
	.4byte 0x0000001C
	.4byte str_A_1_tou2_000104bc
	.4byte 0x0000001D
	.4byte str_A_1_tou2_000104bc
	.4byte 0x0000001E
	.4byte str_A_1_tou2_000104bc
	.4byte 0x0000001F
	.4byte str_A_1_tou2_000104bc
	.4byte 0x00000027
	.4byte str_A_1_tou2_000104bc
	.4byte 0x00000038
	.4byte str_A_1_tou2_000104bc
	.4byte 0x00000039
	.4byte str_A_1_tou2_000104bc
	.4byte 0x00000041
	.4byte str_A_1_tou2_000104bc
	.4byte 0x00000045
	.4byte str_A_1_tou2_000104bc
.endobj pose_table_guard

# .data:0x30C | 0x491EC | size: 0x78
.obj pose_table_guard_turn, local
	.4byte 0x00000001
	.4byte str_G_1_tou2_000104dc
	.4byte 0x00000002
	.4byte str_G_1_tou2_000104dc
	.4byte 0x00000009
	.4byte str_G_1_tou2_000104dc
	.4byte 0x00000005
	.4byte str_G_1_tou2_000104dc
	.4byte 0x00000004
	.4byte str_G_1_tou2_000104dc
	.4byte 0x00000003
	.4byte str_G_1_tou2_000104dc
	.4byte 0x0000001C
	.4byte str_G_1_tou2_000104dc
	.4byte 0x0000001D
	.4byte str_G_1_tou2_000104dc
	.4byte 0x0000001E
	.4byte str_G_1_tou2_000104dc
	.4byte 0x0000001F
	.4byte str_G_1_tou2_000104dc
	.4byte 0x00000027
	.4byte str_G_1_tou2_000104dc
	.4byte 0x00000038
	.4byte str_G_1_tou2_000104dc
	.4byte 0x00000039
	.4byte str_G_1_tou2_000104dc
	.4byte 0x00000041
	.4byte str_G_1_tou2_000104dc
	.4byte 0x00000045
	.4byte str_G_1_tou2_000104dc
.endobj pose_table_guard_turn

# .data:0x384 | 0x49264 | size: 0x20
.obj data_table, local
	.4byte 0x0000000D
	.4byte dmg_turn_event
	.4byte 0x00000025
	.4byte dmg_avoid_counter_thorn_head_event
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x3A4 | 0x49284 | size: 0x18
.obj data_table_turn, local
	.4byte 0x0000000D
	.4byte dmg_turn_event
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table_turn

# .data:0x3BC | 0x4929C | size: 0x20
.obj data_table_guard, local
	.4byte 0x00000025
	.4byte dmg_avoid_counter_thorn_head_event
	.4byte 0x0000000D
	.4byte dmg_turn_event
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table_guard

# .data:0x3DC | 0x492BC | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_togenoko_ace_tou2_00010428
	.4byte str_c_togenoko_b_tou2_000104e0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42480000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x00001009
	.4byte 0x00000001
	.4byte pose_table
.endobj parts

# .data:0x428 | 0x49308 | size: 0xC0
.obj weapon_togenoko_normal_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
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
	.4byte 0x21002000
	.4byte 0x00080302
	.4byte 0x00000000
	.4byte 0x00000087
	.4byte 0x00000002
	.4byte 0x00002004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
.endobj weapon_togenoko_normal_attack

# .data:0x4E8 | 0x493C8 | size: 0xC0
.obj weapon_togenoko_shell_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
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
	.4byte 0x02101260
	.4byte 0x20004004
	.4byte 0x00080302
	.4byte 0x00000000
	.4byte 0x00000087
	.4byte 0x000005FF
	.4byte 0x00002000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
.endobj weapon_togenoko_shell_attack

# .data:0x5A8 | 0x49488 | size: 0xC0
.obj weapon_togenoko_charge, local
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
.endobj weapon_togenoko_charge

# .data:0x668 | 0x49548 | size: 0x94
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
	.4byte 0x0007005B
	.4byte btlevtcmd_SetRunSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TOGENOKO_MOV_tou2_000104f0
	.4byte str_SFX_ENM_TOGENOKO_MOV_tou2_00010508
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00000003
	.4byte 0x0007005B
	.4byte btlevtcmd_SetWalkSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TOGENOKO_MOV_tou2_000104f0
	.4byte str_SFX_ENM_TOGENOKO_MOV_tou2_00010508
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x6FC | 0x495DC | size: 0x28
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

# .data:0x724 | 0x49604 | size: 0xF4
.obj dmg_avoid_counter_thorn_head_event, local
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
	.4byte 0x00000046
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
	.4byte 0x00000028
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000037
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_tou2_00010520
	.4byte str_toge_flush_tou2_00010524
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
.endobj dmg_avoid_counter_thorn_head_event

# .data:0x818 | 0x496F8 | size: 0x1D0
.obj dmg_turn_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitOffset
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xFFFFFFEC
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsDefenceTable
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte defence_turn
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsDefenceAttrTable
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte defence_attr_turn
	.4byte 0x0003005B
	.4byte btlevtcmd_SetRegistStatus
	.4byte 0xFE363C8A
	.4byte regist_turn
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte pose_table_turn
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x00000027
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte pose_table_guard_turn
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x00000045
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeDataTable
	.4byte 0xFE363C8A
	.4byte data_table_turn
	.4byte 0x0003005B
	.4byte btlevtcmd_OnStatusFlag
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsCounterAttribute
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_SetOverTurnCount
	.4byte 0xFE363C8A
	.4byte 0x00000002
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_INSIDE1_tou2_00010530
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFE363C8A
	.4byte 0xF24A7D4C
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000000F
	.4byte 0xFFFFFFFF
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x00000045
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dmg_turn_event

# .data:0x9E8 | 0x498C8 | size: 0x1A0
.obj wakeup_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_GetOverTurnCount
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_SetOverTurnCount
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFE363C8A
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsDefenceTable
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte defence
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsDefenceAttrTable
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte defence_attr
	.4byte 0x0003005B
	.4byte btlevtcmd_SetRegistStatus
	.4byte 0xFE363C8A
	.4byte regist
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte pose_table
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeDataTable
	.4byte 0xFE363C8A
	.4byte data_table
	.4byte 0x0003005B
	.4byte btlevtcmd_OffStatusFlag
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsCounterAttribute
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_INSIDE2_tou2_00010540
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte str_S_1_tou2_000104b0
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFE363C8A
	.4byte 0xF24A7E80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000000C
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitOffset
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFE363C8A
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wakeup_event

# .data:0xB88 | 0x49A68 | size: 0x30
.obj entry_togenoko, local
	.4byte unit_togenoko_ace_26_data_48F30
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
.endobj entry_togenoko

# .data:0xBB8 | 0x49A98 | size: 0x534
.obj attack_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_check_battleflag
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_togenoko_normal_attack
	.4byte 0x0001005E
	.4byte normal_attack_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_GetOverTurnCount
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte wakeup_event
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000050
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
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0x00000050
	.4byte 0x0001005E
	.4byte guard_cancel_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x00000010
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000023
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
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_togenoko_normal_attack
	.4byte 0x0001005E
	.4byte normal_attack_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_togenoko_shell_attack
	.4byte 0x0001005E
	.4byte shell_attack_event
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
	.4byte 0x00010004
	.4byte 0x0000000A
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
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0x00000082
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
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00010004
	.4byte 0x0000000B
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x0002005B
	.4byte togenoko_getnum
	.4byte 0xFE363C8A
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000063
	.4byte 0xFE363C8B
	.4byte 0x00010022
	.4byte 0xFE363C8A
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0002001A
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte friend_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0000002E
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0002001A
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte friend_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0000002E
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0002001A
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte friend_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0000002E
	.4byte 0x00000031
	.4byte 0x00010003
	.4byte 0x0000000B
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000023
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000000F
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000000
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
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_togenoko_normal_attack
	.4byte 0x0001005E
	.4byte normal_attack_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000023
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_togenoko_shell_attack
	.4byte 0x0001005E
	.4byte shell_attack_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000000F
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_togenoko_charge
	.4byte 0x0001005E
	.4byte charge_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte guard_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x10EC | 0x49FCC | size: 0x658
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
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x0000000A
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TOGENOKO_MOV_tou2_000104f0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000003
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TOGENOKO_MOV_tou2_00010508
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000003
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_R_3_tou2_00010550
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TOGENOKO_MOV_tou2_00010554
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2_tou2_0001056c
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
	.4byte 0x0000000A
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24AA280
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
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
	.4byte 0x00000031
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x000001F4
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_R_1_tou2_000104c0
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0x0000012C
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24AA280
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_tou2_000104b0
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_btl_camera_add_zoom
	.4byte 0x00000000
	.4byte 0xFFFFFFCE
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
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_tou2_000104b0
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0002003B
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0002003B
	.4byte 0xFE363C8B
	.4byte 0xFE363C81
	.4byte 0x0002003B
	.4byte 0xFE363C8C
	.4byte 0xFE363C82
	.4byte 0x0002003C
	.4byte 0xFE363C8A
	.4byte 0xF24A7D80
	.4byte 0x0002003C
	.4byte 0xFE363C8B
	.4byte 0xF24A7D80
	.4byte 0x0002003C
	.4byte 0xFE363C8C
	.4byte 0xF24A7D80
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x0002003A
	.4byte 0xFE363C81
	.4byte 0xFE363C8B
	.4byte 0x0002003A
	.4byte 0xFE363C82
	.4byte 0xFE363C8C
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000014
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
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TOGENOKO_MOV_tou2_00010570
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000014
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
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TOGENOKO_MOV_tou2_00010570
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00000002
	.4byte 0x00000001
.endobj normal_attack_event

# .data:0x1744 | 0x4A624 | size: 0x7A4
.obj shell_attack_event, local
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
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x000000C8
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
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TOGENOKO_MOV_tou2_00010588
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000014
	.4byte 0xF24A7A80
	.4byte 0xF24A7D4C
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TOGENOKO_SHE_tou2_000105a0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1_tou2_000104bc
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TOGENOKO_MOV_tou2_000105b8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x0000000A
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C8F
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C8E
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000014
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000028
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0003005B
	.4byte btlevtcmd_GetSelectEnemy
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0001006F
	.4byte 0xFE363C8D
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_tou2_00010520
	.4byte str_kemuri_test_tou2_000105d0
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A7BB3
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000003
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24AAA80
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xF1194D80
	.4byte 0xFE363C85
	.4byte 0xF1194D80
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C85
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24AAA80
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xF1194D80
	.4byte 0xFE363C85
	.4byte 0xF1194D80
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
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C85
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000061
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x00020018
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C89
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000001
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
	.4byte 0x00010004
	.4byte 0x0000000A
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
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24AAA80
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0x000000FA
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TOGENOKO_ATT_tou2_000105dc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24AAA80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C8D
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TOGENOKO_SHE_tou2_000105f8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TOGENOKO_ATT_tou2_00010610
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000014
	.4byte 0xF24AA280
	.4byte 0xF24A7C19
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x00000003
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj shell_attack_event

# .data:0x1EE8 | 0x4ADC8 | size: 0x18C
.obj charge_event, local
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte weapon_togenoko_charge
	.4byte 0x0004005B
	.4byte btlevtcmd_AttackDeclare
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0003005B
	.4byte btlevtcmd_PayWeaponCost
	.4byte 0xFFFFFFFE
	.4byte weapon_togenoko_charge
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
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TOGENOKO_CHA_tou2_0001062c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000008
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TOGENOKO_MOV_tou2_000104f0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000003
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TOGENOKO_MOV_tou2_00010508
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000003
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_R_3_tou2_00010550
	.4byte 0x00010009
	.4byte 0x00000030
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_tou2_000104b0
	.4byte 0x0000006B
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte weapon_togenoko_charge
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_togenoko_charge
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00000002
	.4byte 0x00000001
.endobj charge_event

# .data:0x2074 | 0x4AF54 | size: 0x1FC
.obj guard_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0000006E
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TOGENOKO_SHE_tou2_000105a0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000005
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte str_A_1_tou2_000104bc
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TOGENOKO_MOV_tou2_00010588
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFE363C8A
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0xF24A7C80
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0xFFFFFFFF
	.4byte 0x00020034
	.4byte 0xFE363C8C
	.4byte 0xF24AF280
	.4byte 0x00020034
	.4byte 0xFE363C8D
	.4byte 0xF24A7A80
	.4byte 0x00010005
	.4byte 0x0000000F
	.4byte 0x0004005B
	.4byte evt_sub_get_sincos
	.4byte 0xFE363C8D
	.4byte 0xFE363C8E
	.4byte 0xFE363C8F
	.4byte 0x0002003C
	.4byte 0xFE363C8E
	.4byte 0xFE363C8C
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C8E
	.4byte 0x0002003B
	.4byte 0xFE363C8C
	.4byte 0xF24A8280
	.4byte 0x0002003A
	.4byte 0xFE363C8D
	.4byte 0xF24AF280
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsDefenceTable
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte defence_guard
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsDefenceAttrTable
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte defence_attr_guard
	.4byte 0x0003005B
	.4byte btlevtcmd_SetRegistStatus
	.4byte 0xFE363C8A
	.4byte regist_guard
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte pose_table_guard
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeDataTable
	.4byte 0xFE363C8A
	.4byte data_table_guard
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitOffset
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0xFFFFFFEC
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x00000002
	.4byte 0x00000001
.endobj guard_event

# .data:0x2270 | 0x4B150 | size: 0x168
.obj guard_cancel_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0000006E
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TOGENOKO_SHE_tou2_000105f8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000005
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte str_S_1_tou2_000104b0
	.4byte 0x00000070
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFE363C8A
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0xF24A7C80
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TOGENOKO_MOV_tou2_00010570
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsDefenceTable
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte defence
	.4byte 0x0004005B
	.4byte btlevtcmd_SetPartsDefenceAttrTable
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte defence_attr
	.4byte 0x0003005B
	.4byte btlevtcmd_SetRegistStatus
	.4byte 0xFE363C8A
	.4byte regist
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte pose_table
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeDataTable
	.4byte 0xFE363C8A
	.4byte data_table
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitOffset
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x00000002
	.4byte 0x00000001
.endobj guard_cancel_event

# .data:0x23D8 | 0x4B2B8 | size: 0x160
.obj friend_event, local
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
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TOGENOKO_CAL_tou2_00010648
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_B_1_tou2_00010660
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_tou2_000104b0
	.4byte 0x0004005B
	.4byte btlevtcmd_SpawnUnit
	.4byte 0xFE363C83
	.4byte entry_togenoko
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFE363C83
	.4byte 0x0000012C
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte str_R_1_tou2_000104c0
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFE363C83
	.4byte 0x00000008
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte str_S_1_tou2_000104b0
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x00000002
	.4byte 0x00000001
.endobj friend_event

# .data:0x2538 | 0x4B418 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event
