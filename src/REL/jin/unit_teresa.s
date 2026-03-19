.include "macros.inc"
.file "unit_teresa.o"

# 0x00006EFC..0x00007154 | size: 0x258
.text
.balign 4

# .text:0x0 | 0x6EFC | size: 0x9C
.fn teresa_check_teresa, local
/* 00006EFC 00006FC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00006F00 00006FC4  7C 08 02 A6 */	mflr r0
/* 00006F04 00006FC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 00006F08 00006FCC  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 00006F0C 00006FD0  7C 7D 1B 78 */	mr r29, r3
/* 00006F10 00006FD4  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00006F14 00006FD8  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00006F18 00006FDC  4B FF 90 E9 */	bl evtGetValue
/* 00006F1C 00006FE0  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00006F20 00006FE4  3B C0 00 00 */	li r30, 0x0
/* 00006F24 00006FE8  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00006F28 00006FEC  7C 64 1B 78 */	mr r4, r3
/* 00006F2C 00006FF0  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00006F30 00006FF4  4B FF 90 D1 */	bl BattleGetUnitPtr
/* 00006F34 00006FF8  28 03 00 00 */	cmplwi r3, 0x0
/* 00006F38 00006FFC  40 82 00 1C */	bne .L_00006F54
/* 00006F3C 00007000  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00006F40 00007004  7F A3 EB 78 */	mr r3, r29
/* 00006F44 00007008  38 A0 00 00 */	li r5, 0x0
/* 00006F48 0000700C  4B FF 90 B9 */	bl evtSetValue
/* 00006F4C 00007010  38 60 00 02 */	li r3, 0x2
/* 00006F50 00007014  48 00 00 34 */	b .L_00006F84
.L_00006F54:
/* 00006F54 00007018  80 03 00 08 */	lwz r0, 0x8(r3)
/* 00006F58 0000701C  2C 00 00 4B */	cmpwi r0, 0x4b
/* 00006F5C 00007020  40 82 00 08 */	bne .L_00006F64
/* 00006F60 00007024  3B C0 00 01 */	li r30, 0x1
.L_00006F64:
/* 00006F64 00007028  2C 00 00 6A */	cmpwi r0, 0x6a
/* 00006F68 0000702C  40 82 00 08 */	bne .L_00006F70
/* 00006F6C 00007030  3B C0 00 01 */	li r30, 0x1
.L_00006F70:
/* 00006F70 00007034  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00006F74 00007038  7F A3 EB 78 */	mr r3, r29
/* 00006F78 0000703C  7F C5 F3 78 */	mr r5, r30
/* 00006F7C 00007040  4B FF 90 85 */	bl evtSetValue
/* 00006F80 00007044  38 60 00 02 */	li r3, 0x2
.L_00006F84:
/* 00006F84 00007048  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 00006F88 0000704C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00006F8C 00007050  7C 08 03 A6 */	mtlr r0
/* 00006F90 00007054  38 21 00 20 */	addi r1, r1, 0x20
/* 00006F94 00007058  4E 80 00 20 */	blr
.endfn teresa_check_teresa

# .text:0x9C | 0x6F98 | size: 0xC0
.fn teresa_check_move, local
/* 00006F98 0000705C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00006F9C 00007060  7C 08 02 A6 */	mflr r0
/* 00006FA0 00007064  90 01 00 24 */	stw r0, 0x24(r1)
/* 00006FA4 00007068  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 00006FA8 0000706C  7C 7B 1B 78 */	mr r27, r3
/* 00006FAC 00007070  3C 60 00 00 */	lis r3, _battleWorkPointer@ha
/* 00006FB0 00007074  3B A0 00 00 */	li r29, 0x0
/* 00006FB4 00007078  3B E3 00 00 */	addi r31, r3, _battleWorkPointer@l
/* 00006FB8 0000707C  3B 80 00 00 */	li r28, 0x0
/* 00006FBC 00007080  83 DB 00 18 */	lwz r30, 0x18(r27)
.L_00006FC0:
/* 00006FC0 00007084  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 00006FC4 00007088  7F 84 E3 78 */	mr r4, r28
/* 00006FC8 0000708C  4B FF 90 39 */	bl BattleGetUnitPtr
/* 00006FCC 00007090  28 03 00 00 */	cmplwi r3, 0x0
/* 00006FD0 00007094  41 82 00 38 */	beq .L_00007008
/* 00006FD4 00007098  80 83 00 08 */	lwz r4, 0x8(r3)
/* 00006FD8 0000709C  2C 04 00 4B */	cmpwi r4, 0x4b
/* 00006FDC 000070A0  40 82 00 14 */	bne .L_00006FF0
/* 00006FE0 000070A4  80 03 02 18 */	lwz r0, 0x218(r3)
/* 00006FE4 000070A8  2C 00 00 00 */	cmpwi r0, 0x0
/* 00006FE8 000070AC  40 82 00 08 */	bne .L_00006FF0
/* 00006FEC 000070B0  3B BD 00 01 */	addi r29, r29, 0x1
.L_00006FF0:
/* 00006FF0 000070B4  2C 04 00 6A */	cmpwi r4, 0x6a
/* 00006FF4 000070B8  40 82 00 14 */	bne .L_00007008
/* 00006FF8 000070BC  80 03 02 18 */	lwz r0, 0x218(r3)
/* 00006FFC 000070C0  2C 00 00 00 */	cmpwi r0, 0x0
/* 00007000 000070C4  40 82 00 08 */	bne .L_00007008
/* 00007004 000070C8  3B BD 00 01 */	addi r29, r29, 0x1
.L_00007008:
/* 00007008 000070CC  3B 9C 00 01 */	addi r28, r28, 0x1
/* 0000700C 000070D0  2C 1C 00 40 */	cmpwi r28, 0x40
/* 00007010 000070D4  41 80 FF B0 */	blt .L_00006FC0
/* 00007014 000070D8  2C 1D 00 01 */	cmpwi r29, 0x1
/* 00007018 000070DC  41 80 00 18 */	blt .L_00007030
/* 0000701C 000070E0  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 00007020 000070E4  7F 63 DB 78 */	mr r3, r27
/* 00007024 000070E8  38 A0 00 01 */	li r5, 0x1
/* 00007028 000070EC  4B FF 8F D9 */	bl evtSetValue
/* 0000702C 000070F0  48 00 00 14 */	b .L_00007040
.L_00007030:
/* 00007030 000070F4  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 00007034 000070F8  7F 63 DB 78 */	mr r3, r27
/* 00007038 000070FC  38 A0 00 00 */	li r5, 0x0
/* 0000703C 00007100  4B FF 8F C5 */	bl evtSetValue
.L_00007040:
/* 00007040 00007104  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 00007044 00007108  38 60 00 02 */	li r3, 0x2
/* 00007048 0000710C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 0000704C 00007110  7C 08 03 A6 */	mtlr r0
/* 00007050 00007114  38 21 00 20 */	addi r1, r1, 0x20
/* 00007054 00007118  4E 80 00 20 */	blr
.endfn teresa_check_move

# .text:0x15C | 0x7058 | size: 0xFC
.fn teresa_check_trans, local
/* 00007058 0000711C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 0000705C 00007120  7C 08 02 A6 */	mflr r0
/* 00007060 00007124  90 01 00 34 */	stw r0, 0x34(r1)
/* 00007064 00007128  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 00007068 0000712C  7C 79 1B 78 */	mr r25, r3
/* 0000706C 00007130  3B 80 00 00 */	li r28, 0x0
/* 00007070 00007134  83 A3 00 18 */	lwz r29, 0x18(r3)
/* 00007074 00007138  80 9D 00 00 */	lwz r4, 0x0(r29)
/* 00007078 0000713C  4B FF 8F 89 */	bl evtGetValue
/* 0000707C 00007140  7C 60 1B 78 */	mr r0, r3
/* 00007080 00007144  7F 23 CB 78 */	mr r3, r25
/* 00007084 00007148  7C 04 03 78 */	mr r4, r0
/* 00007088 0000714C  4B FF 8F 79 */	bl BattleTransID
/* 0000708C 00007150  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00007090 00007154  7C 7E 1B 78 */	mr r30, r3
/* 00007094 00007158  3B E4 00 00 */	addi r31, r4, _battleWorkPointer@l
/* 00007098 0000715C  3B 60 00 00 */	li r27, 0x0
.L_0000709C:
/* 0000709C 00007160  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 000070A0 00007164  7F 64 DB 78 */	mr r4, r27
/* 000070A4 00007168  4B FF 8F 5D */	bl BattleGetUnitPtr
/* 000070A8 0000716C  7C 7A 1B 79 */	mr. r26, r3
/* 000070AC 00007170  41 82 00 58 */	beq .L_00007104
/* 000070B0 00007174  80 1A 00 08 */	lwz r0, 0x8(r26)
/* 000070B4 00007178  2C 00 00 4B */	cmpwi r0, 0x4b
/* 000070B8 0000717C  40 82 00 20 */	bne .L_000070D8
/* 000070BC 00007180  38 80 00 12 */	li r4, 0x12
/* 000070C0 00007184  4B FF 8F 41 */	bl BtlUnit_CheckStatus
/* 000070C4 00007188  2C 03 00 00 */	cmpwi r3, 0x0
/* 000070C8 0000718C  40 82 00 10 */	bne .L_000070D8
/* 000070CC 00007190  7C 1B F0 00 */	cmpw r27, r30
/* 000070D0 00007194  41 82 00 08 */	beq .L_000070D8
/* 000070D4 00007198  3B 9C 00 01 */	addi r28, r28, 0x1
.L_000070D8:
/* 000070D8 0000719C  80 1A 00 08 */	lwz r0, 0x8(r26)
/* 000070DC 000071A0  2C 00 00 6A */	cmpwi r0, 0x6a
/* 000070E0 000071A4  40 82 00 24 */	bne .L_00007104
/* 000070E4 000071A8  7F 43 D3 78 */	mr r3, r26
/* 000070E8 000071AC  38 80 00 12 */	li r4, 0x12
/* 000070EC 000071B0  4B FF 8F 15 */	bl BtlUnit_CheckStatus
/* 000070F0 000071B4  2C 03 00 00 */	cmpwi r3, 0x0
/* 000070F4 000071B8  40 82 00 10 */	bne .L_00007104
/* 000070F8 000071BC  7C 1B F0 00 */	cmpw r27, r30
/* 000070FC 000071C0  41 82 00 08 */	beq .L_00007104
/* 00007100 000071C4  3B 9C 00 01 */	addi r28, r28, 0x1
.L_00007104:
/* 00007104 000071C8  3B 7B 00 01 */	addi r27, r27, 0x1
/* 00007108 000071CC  2C 1B 00 40 */	cmpwi r27, 0x40
/* 0000710C 000071D0  41 80 FF 90 */	blt .L_0000709C
/* 00007110 000071D4  2C 1C 00 01 */	cmpwi r28, 0x1
/* 00007114 000071D8  41 80 00 18 */	blt .L_0000712C
/* 00007118 000071DC  80 9D 00 04 */	lwz r4, 0x4(r29)
/* 0000711C 000071E0  7F 23 CB 78 */	mr r3, r25
/* 00007120 000071E4  38 A0 00 01 */	li r5, 0x1
/* 00007124 000071E8  4B FF 8E DD */	bl evtSetValue
/* 00007128 000071EC  48 00 00 14 */	b .L_0000713C
.L_0000712C:
/* 0000712C 000071F0  80 9D 00 04 */	lwz r4, 0x4(r29)
/* 00007130 000071F4  7F 23 CB 78 */	mr r3, r25
/* 00007134 000071F8  38 A0 00 00 */	li r5, 0x0
/* 00007138 000071FC  4B FF 8E C9 */	bl evtSetValue
.L_0000713C:
/* 0000713C 00007200  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 00007140 00007204  38 60 00 02 */	li r3, 0x2
/* 00007144 00007208  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00007148 0000720C  7C 08 03 A6 */	mtlr r0
/* 0000714C 00007210  38 21 00 30 */	addi r1, r1, 0x30
/* 00007150 00007214  4E 80 00 20 */	blr
.endfn teresa_check_trans

# 0x00002EC0..0x00002FE1 | size: 0x121
.rodata
.balign 8

# .rodata:0x0 | 0x2EC0 | size: 0xE
.obj str_btl_un_teresa_jin_0000a0e0, local
	.string "btl_un_teresa"
.endobj str_btl_un_teresa_jin_0000a0e0

# .rodata:0xE | 0x2ECE | size: 0x2
.obj gap_03_00002ECE_rodata, global
.hidden gap_03_00002ECE_rodata
	.2byte 0x0000
.endobj gap_03_00002ECE_rodata

# .rodata:0x10 | 0x2ED0 | size: 0x18
.obj str_SFX_ENM_TELESA_DAMAG_jin_0000a0f0, local
	.string "SFX_ENM_TELESA_DAMAGED1"
.endobj str_SFX_ENM_TELESA_DAMAG_jin_0000a0f0

# .rodata:0x28 | 0x2EE8 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_jin_0000a108, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_jin_0000a108

# .rodata:0x3D | 0x2EFD | size: 0x3
.obj gap_03_00002EFD_rodata, global
.hidden gap_03_00002EFD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002EFD_rodata

# .rodata:0x40 | 0x2F00 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_jin_0000a120, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_jin_0000a120

# .rodata:0x54 | 0x2F14 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_jin_0000a134, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_jin_0000a134

# .rodata:0x6D | 0x2F2D | size: 0x3
.obj gap_03_00002F2D_rodata, global
.hidden gap_03_00002F2D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002F2D_rodata

# .rodata:0x70 | 0x2F30 | size: 0x9
.obj str_c_teresa_jin_0000a150, local
	.string "c_teresa"
.endobj str_c_teresa_jin_0000a150

# .rodata:0x79 | 0x2F39 | size: 0x3
.obj gap_03_00002F39_rodata, global
.hidden gap_03_00002F39_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002F39_rodata

# .rodata:0x7C | 0x2F3C | size: 0x4
.obj str_N_1_jin_0000a15c, local
	.string "N_1"
.endobj str_N_1_jin_0000a15c

# .rodata:0x80 | 0x2F40 | size: 0x4
.obj str_Y_1_jin_0000a160, local
	.string "Y_1"
.endobj str_Y_1_jin_0000a160

# .rodata:0x84 | 0x2F44 | size: 0x4
.obj str_K_1_jin_0000a164, local
	.string "K_1"
.endobj str_K_1_jin_0000a164

# .rodata:0x88 | 0x2F48 | size: 0x4
.obj str_X_1_jin_0000a168, local
	.string "X_1"
.endobj str_X_1_jin_0000a168

# .rodata:0x8C | 0x2F4C | size: 0x4
.obj str_S_1_jin_0000a16c, local
	.string "S_1"
.endobj str_S_1_jin_0000a16c

# .rodata:0x90 | 0x2F50 | size: 0x4
.obj str_Q_1_jin_0000a170, local
	.string "Q_1"
.endobj str_Q_1_jin_0000a170

# .rodata:0x94 | 0x2F54 | size: 0x4
.obj str_A_2_jin_0000a174, local
	.string "A_2"
.endobj str_A_2_jin_0000a174

# .rodata:0x98 | 0x2F58 | size: 0x4
.obj str_D_1_jin_0000a178, local
	.string "D_1"
.endobj str_D_1_jin_0000a178

# .rodata:0x9C | 0x2F5C | size: 0x4
.obj str_W_1_jin_0000a17c, local
	.string "W_1"
.endobj str_W_1_jin_0000a17c

# .rodata:0xA0 | 0x2F60 | size: 0x4
.obj str_R_1_jin_0000a180, local
	.string "R_1"
.endobj str_R_1_jin_0000a180

# .rodata:0xA4 | 0x2F64 | size: 0x4
.obj str_T_1_jin_0000a184, local
	.string "T_1"
.endobj str_T_1_jin_0000a184

# .rodata:0xA8 | 0x2F68 | size: 0x15
.obj str_SFX_ENM_TELESA_MOVE3_jin_0000a188, local
	.string "SFX_ENM_TELESA_MOVE3"
.endobj str_SFX_ENM_TELESA_MOVE3_jin_0000a188

# .rodata:0xBD | 0x2F7D | size: 0x3
.obj gap_03_00002F7D_rodata, global
.hidden gap_03_00002F7D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002F7D_rodata

# .rodata:0xC0 | 0x2F80 | size: 0x15
.obj str_SFX_ENM_TELESA_MOVE4_jin_0000a1a0, local
	.string "SFX_ENM_TELESA_MOVE4"
.endobj str_SFX_ENM_TELESA_MOVE4_jin_0000a1a0

# .rodata:0xD5 | 0x2F95 | size: 0x3
.obj gap_03_00002F95_rodata, global
.hidden gap_03_00002F95_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002F95_rodata

# .rodata:0xD8 | 0x2F98 | size: 0x4
.obj str_A_1_jin_0000a1b8, local
	.string "A_1"
.endobj str_A_1_jin_0000a1b8

# .rodata:0xDC | 0x2F9C | size: 0x17
.obj str_SFX_ENM_TELESA_ATTAC_jin_0000a1bc, local
	.string "SFX_ENM_TELESA_ATTACK1"
.endobj str_SFX_ENM_TELESA_ATTAC_jin_0000a1bc

# .rodata:0xF3 | 0x2FB3 | size: 0x1
.obj gap_03_00002FB3_rodata, global
.hidden gap_03_00002FB3_rodata
	.byte 0x00
.endobj gap_03_00002FB3_rodata

# .rodata:0xF4 | 0x2FB4 | size: 0x15
.obj str_SFX_ENM_TELESA_MOVE2_jin_0000a1d4, local
	.string "SFX_ENM_TELESA_MOVE2"
.endobj str_SFX_ENM_TELESA_MOVE2_jin_0000a1d4

# .rodata:0x109 | 0x2FC9 | size: 0x3
.obj gap_03_00002FC9_rodata, global
.hidden gap_03_00002FC9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002FC9_rodata

# .rodata:0x10C | 0x2FCC | size: 0x15
.obj str_SFX_ENM_TELESA_MOVE1_jin_0000a1ec, local
	.string "SFX_ENM_TELESA_MOVE1"
.endobj str_SFX_ENM_TELESA_MOVE1_jin_0000a1ec

# 0x0001EEE0..0x00020760 | size: 0x1880
.data
.balign 8

# .data:0x0 | 0x1EEE0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x1EEE8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x1EEEC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x1EEF0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x1EEF4 | size: 0x4
.obj gap_04_0001EEF4_data, global
.hidden gap_04_0001EEF4_data
	.4byte 0x00000000
.endobj gap_04_0001EEF4_data

# .data:0x18 | 0x1EEF8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x1EF00 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x1EF04 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x1EF08 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x1EF10 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x1EF14 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x1EF18 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x1EF1C | size: 0x4
.obj gap_04_0001EF1C_data, global
.hidden gap_04_0001EF1C_data
	.4byte 0x00000000
.endobj gap_04_0001EF1C_data

# .data:0x40 | 0x1EF20 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x1EF28 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x1EF2C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x1EF30 | size: 0xC4
.obj unit_teresa_13_data_1EF30, global
	.4byte 0x0000004B
	.4byte str_btl_un_teresa_jin_0000a0e0
	.4byte 0x00070000
	.4byte 0x01011100
	.4byte 0x02460132
	.4byte 0x270F0022
	.4byte 0x00200000
	.4byte 0x00200000
	.4byte 0x00000000
	.4byte 0x41800000
	.4byte 0x00000000
	.4byte 0x0000FFFD
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41880000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41880000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41880000
	.4byte 0x41A66666
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41800000
	.4byte 0x00000000
	.4byte 0x42080000
	.4byte 0x42000000
	.4byte 0x00000002
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_ENM_TELESA_DAMAG_jin_0000a0f0
	.4byte str_SFX_BTL_DAMAGE_FIRE1_jin_0000a108
	.4byte str_SFX_BTL_DAMAGE_ICE1_jin_0000a120
	.4byte str_SFX_BTL_DAMAGE_BIRIB_jin_0000a134
	.4byte 0x00000004
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_teresa_13_data_1EF30

# .data:0x114 | 0x1EFF4 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x1EFF9 | size: 0x3
.obj gap_04_0001EFF9_data, global
.hidden gap_04_0001EFF9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0001EFF9_data

# .data:0x11C | 0x1EFFC | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x1F001 | size: 0x3
.obj gap_04_0001F001_data, global
.hidden gap_04_0001F001_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0001F001_data

# .data:0x124 | 0x1F004 | size: 0x16
.obj regist, local
	.4byte 0x32326900
	.4byte 0x32646432
	.4byte 0x645A645A
	.4byte 0x645F3C32
	.4byte 0x5A640A64
	.2byte 0x640A
.endobj regist

# .data:0x13A | 0x1F01A | size: 0x2
.obj gap_04_0001F01A_data, global
.hidden gap_04_0001F01A_data
	.2byte 0x0000
.endobj gap_04_0001F01A_data

# .data:0x13C | 0x1F01C | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_teresa_jin_0000a0e0
	.4byte str_c_teresa_jin_0000a150
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41C80000
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

# .data:0x188 | 0x1F068 | size: 0xC0
.obj weapon_teresa_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
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
.endobj weapon_teresa_attack

# .data:0x248 | 0x1F128 | size: 0xC0
.obj weapon_teresa_trans_myself, local
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
	.4byte 0x01101260
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64020000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_teresa_trans_myself

# .data:0x308 | 0x1F1E8 | size: 0xC0
.obj weapon_teresa_trans, local
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
	.4byte 0x01101160
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000108
	.4byte 0x000007FF
	.4byte 0x80000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64020000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_teresa_trans

# .data:0x3C8 | 0x1F2A8 | size: 0xC0
.obj weapon_teresa_move, local
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
.endobj weapon_teresa_move

# .data:0x488 | 0x1F368 | size: 0x88
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_N_1_jin_0000a15c
	.4byte 0x00000002
	.4byte str_Y_1_jin_0000a160
	.4byte 0x00000009
	.4byte str_Y_1_jin_0000a160
	.4byte 0x00000005
	.4byte str_K_1_jin_0000a164
	.4byte 0x00000004
	.4byte str_X_1_jin_0000a168
	.4byte 0x00000003
	.4byte str_X_1_jin_0000a168
	.4byte 0x0000001C
	.4byte str_S_1_jin_0000a16c
	.4byte 0x0000001D
	.4byte str_Q_1_jin_0000a170
	.4byte 0x0000001E
	.4byte str_Q_1_jin_0000a170
	.4byte 0x0000001F
	.4byte str_A_2_jin_0000a174
	.4byte 0x00000027
	.4byte str_D_1_jin_0000a178
	.4byte 0x00000028
	.4byte str_W_1_jin_0000a17c
	.4byte 0x0000002A
	.4byte str_R_1_jin_0000a180
	.4byte 0x00000038
	.4byte str_X_1_jin_0000a168
	.4byte 0x00000039
	.4byte str_X_1_jin_0000a168
	.4byte 0x00000041
	.4byte str_T_1_jin_0000a184
	.4byte 0x00000045
	.4byte str_S_1_jin_0000a16c
.endobj pose_table

# .data:0x510 | 0x1F3F0 | size: 0x8
.obj data_table, local
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x518 | 0x1F3F8 | size: 0xBC
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x0000000F
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x5D4 | 0x1F4B4 | size: 0x28
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

# .data:0x5FC | 0x1F4DC | size: 0x264
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
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x00000012
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte teresa_check_trans
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8E
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0002005B
	.4byte teresa_check_move
	.4byte 0xFE363C8F
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000019
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000019
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
	.4byte 0x00000019
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte trans_myself_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000019
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte trans_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000000F
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte move_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte normal_attack_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x860 | 0x1F740 | size: 0x588
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
	.4byte weapon_teresa_attack
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte weapon_teresa_attack
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
	.4byte weapon_teresa_attack
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
	.4byte weapon_teresa_attack
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
	.4byte 0x000000FA
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002A
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TELESA_MOVE3_jin_0000a188
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006E
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0x00000100
	.4byte 0x00010005
	.4byte 0x00000010
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020036
	.4byte 0xFE363C87
	.4byte 0x00000010
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C87
	.4byte 0x00000006
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TELESA_MOVE4_jin_0000a1a0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1_jin_0000a1b8
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0xFFFFFFFF
	.4byte 0x00010005
	.4byte 0x00000008
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C87
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C87
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x0000000F
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000003C
	.4byte 0xFFFFFFFB
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
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
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0x00010009
	.4byte 0x0000000F
	.4byte 0x0000006E
	.4byte 0x00010009
	.4byte 0x00000009
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TELESA_ATTAC_jin_0000a1bc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2_jin_0000a174
	.4byte 0x00010009
	.4byte 0x0000000F
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_teresa_attack
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
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_X_1_jin_0000a168
	.4byte 0x00010009
	.4byte 0x0000003C
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
	.4byte weapon_teresa_attack
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_teresa_attack
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002A
	.4byte 0x0006005B
	.4byte btlevtcmd_AddPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj normal_attack_event

# .data:0xDE8 | 0x1FCC8 | size: 0x310
.obj trans_myself_event, local
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x00000012
	.4byte 0xFE363C88
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte weapon_teresa_trans_myself
	.4byte 0x0004005B
	.4byte btlevtcmd_AttackDeclare
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0003005B
	.4byte btlevtcmd_PayWeaponCost
	.4byte 0xFFFFFFFE
	.4byte weapon_teresa_trans_myself
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
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000028
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
	.4byte 0x0000001E
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x0000000A
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TELESA_MOVE2_jin_0000a1d4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00020018
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0x00000100
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000010
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020036
	.4byte 0xFE363C87
	.4byte 0x00000008
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C87
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1_jin_0000a1b8
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x00010005
	.4byte 0x00000006
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte btlevtcmd_AddPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_jin_0000a16c
	.4byte 0x00010005
	.4byte 0x00000006
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte btlevtcmd_AddPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00010009
	.4byte 0x0000000C
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_jin_0000a16c
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte weapon_teresa_trans_myself
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_teresa_trans_myself
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00000002
	.4byte 0x00000001
.endobj trans_myself_event

# .data:0x10F8 | 0x1FFD8 | size: 0x484
.obj trans_event, local
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte weapon_teresa_trans
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte weapon_teresa_trans
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte teresa_check_teresa
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFE363C83
	.4byte 0x00000012
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte weapon_teresa_trans
	.4byte 0x0004005B
	.4byte btlevtcmd_AttackDeclare
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0003005B
	.4byte btlevtcmd_PayWeaponCost
	.4byte 0xFFFFFFFE
	.4byte weapon_teresa_trans
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
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TELESA_MOVE3_jin_0000a188
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0x00000100
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000010
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020036
	.4byte 0xFE363C87
	.4byte 0x00000010
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C87
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000028
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000003C
	.4byte 0xFFFFFFFB
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte str_SFX_ENM_TELESA_MOVE4_jin_0000a1a0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0xFFFFFFFF
	.4byte 0x00010005
	.4byte 0x00000010
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C87
	.4byte 0x00000010
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C87
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte weapon_teresa_trans_myself
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_teresa_trans_myself
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0xFFFFFFFB
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_jin_0000a16c
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj trans_event

# .data:0x157C | 0x2045C | size: 0x150
.obj move_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte weapon_teresa_move
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte weapon_teresa_move
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
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte 0x00000050
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte teresa_check_teresa
	.4byte 0xFE363C83
	.4byte 0xFE363C85
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0xFE363C86
	.4byte 0x00020018
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte move_event_sub
	.4byte 0x00020035
	.4byte 0xFE363C8C
	.4byte 0x00000014
	.4byte 0x00000021
	.4byte 0x00000021
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
	.4byte 0xFE363C8C
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_jin_0000a16c
	.4byte 0x00000002
	.4byte 0x00000001
.endobj move_event

# .data:0x16CC | 0x205AC | size: 0x19C
.obj move_event_sub, local
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitId
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C81
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000014
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000003C
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x0000000C
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x00600000
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x0000003C
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitId
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_T_1_jin_0000a184
	.4byte 0x00000021
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TELESA_MOVE1_jin_0000a1ec
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte btlevtcmd_GetPartsPos
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000028
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000003C
	.4byte 0x0000000A
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000002
	.4byte 0x00000001
.endobj move_event_sub

# .data:0x1868 | 0x20748 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event
