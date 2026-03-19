.include "macros.inc"
.file "unit_badge_borodo.o"

# 0x00005DBC..0x00006098 | size: 0x2DC
.text
.balign 4

# .text:0x0 | 0x5DBC | size: 0x2DC
.fn _steal_item, local
/* 00005DBC 00005E80  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00005DC0 00005E84  7C 08 02 A6 */	mflr r0
/* 00005DC4 00005E88  90 01 00 34 */	stw r0, 0x34(r1)
/* 00005DC8 00005E8C  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 00005DCC 00005E90  7C 7F 1B 78 */	mr r31, r3
/* 00005DD0 00005E94  83 83 00 18 */	lwz r28, 0x18(r3)
/* 00005DD4 00005E98  4B FF AC 9D */	bl pouchGetPtr
/* 00005DD8 00005E9C  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 00005DDC 00005EA0  7C 7D 1B 78 */	mr r29, r3
/* 00005DE0 00005EA4  7F E3 FB 78 */	mr r3, r31
/* 00005DE4 00005EA8  4B FF AC 8D */	bl evtGetValue
/* 00005DE8 00005EAC  7C 60 1B 78 */	mr r0, r3
/* 00005DEC 00005EB0  7F E3 FB 78 */	mr r3, r31
/* 00005DF0 00005EB4  7C 04 03 78 */	mr r4, r0
/* 00005DF4 00005EB8  4B FF AC 7D */	bl BattleTransID
/* 00005DF8 00005EBC  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00005DFC 00005EC0  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00005E00 00005EC4  7C 64 1B 78 */	mr r4, r3
/* 00005E04 00005EC8  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00005E08 00005ECC  4B FF AC 69 */	bl BattleGetUnitPtr
/* 00005E0C 00005ED0  7C 7E 1B 79 */	mr. r30, r3
/* 00005E10 00005ED4  40 82 00 0C */	bne .L_00005E1C
/* 00005E14 00005ED8  38 60 00 02 */	li r3, 0x2
/* 00005E18 00005EDC  48 00 02 6C */	b .L_00006084
.L_00005E1C:
/* 00005E1C 00005EE0  80 9C 00 04 */	lwz r4, 0x4(r28)
/* 00005E20 00005EE4  7F E3 FB 78 */	mr r3, r31
/* 00005E24 00005EE8  4B FF AC 4D */	bl evtGetValue
/* 00005E28 00005EEC  7C 60 1B 78 */	mr r0, r3
/* 00005E2C 00005EF0  7F E3 FB 78 */	mr r3, r31
/* 00005E30 00005EF4  7C 04 03 78 */	mr r4, r0
/* 00005E34 00005EF8  4B FF AC 3D */	bl BattleTransID
/* 00005E38 00005EFC  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00005E3C 00005F00  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00005E40 00005F04  7C 64 1B 78 */	mr r4, r3
/* 00005E44 00005F08  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00005E48 00005F0C  4B FF AC 29 */	bl BattleGetUnitPtr
/* 00005E4C 00005F10  7C 7B 1B 79 */	mr. r27, r3
/* 00005E50 00005F14  40 82 00 0C */	bne .L_00005E5C
/* 00005E54 00005F18  38 60 00 02 */	li r3, 0x2
/* 00005E58 00005F1C  48 00 02 2C */	b .L_00006084
.L_00005E5C:
/* 00005E5C 00005F20  83 5C 00 08 */	lwz r26, 0x8(r28)
/* 00005E60 00005F24  7F E3 FB 78 */	mr r3, r31
/* 00005E64 00005F28  83 3C 00 0C */	lwz r25, 0xc(r28)
/* 00005E68 00005F2C  38 A0 00 00 */	li r5, 0x0
/* 00005E6C 00005F30  83 9C 00 10 */	lwz r28, 0x10(r28)
/* 00005E70 00005F34  7F 44 D3 78 */	mr r4, r26
/* 00005E74 00005F38  4B FF AB FD */	bl evtSetValue
/* 00005E78 00005F3C  7F E3 FB 78 */	mr r3, r31
/* 00005E7C 00005F40  7F 24 CB 78 */	mr r4, r25
/* 00005E80 00005F44  38 A0 00 00 */	li r5, 0x0
/* 00005E84 00005F48  4B FF AB ED */	bl evtSetValue
/* 00005E88 00005F4C  7F E3 FB 78 */	mr r3, r31
/* 00005E8C 00005F50  7F 84 E3 78 */	mr r4, r28
/* 00005E90 00005F54  38 A0 00 00 */	li r5, 0x0
/* 00005E94 00005F58  4B FF AB DD */	bl evtSetValue
/* 00005E98 00005F5C  38 60 00 64 */	li r3, 0x64
/* 00005E9C 00005F60  4B FF AB D5 */	bl irand
/* 00005EA0 00005F64  2C 03 00 28 */	cmpwi r3, 0x28
/* 00005EA4 00005F68  40 80 00 70 */	bge .L_00005F14
/* 00005EA8 00005F6C  4B FF AB C9 */	bl pouchGetCoin
/* 00005EAC 00005F70  7C 7B 1B 78 */	mr r27, r3
/* 00005EB0 00005F74  3B A0 00 0A */	li r29, 0xa
/* 00005EB4 00005F78  2C 1B 00 0A */	cmpwi r27, 0xa
/* 00005EB8 00005F7C  40 80 00 08 */	bge .L_00005EC0
/* 00005EBC 00005F80  7F 7D DB 78 */	mr r29, r27
.L_00005EC0:
/* 00005EC0 00005F84  2C 1D 00 00 */	cmpwi r29, 0x0
/* 00005EC4 00005F88  40 81 00 48 */	ble .L_00005F0C
/* 00005EC8 00005F8C  7F E3 FB 78 */	mr r3, r31
/* 00005ECC 00005F90  7F 44 D3 78 */	mr r4, r26
/* 00005ED0 00005F94  38 A0 00 79 */	li r5, 0x79
/* 00005ED4 00005F98  4B FF AB 9D */	bl evtSetValue
/* 00005ED8 00005F9C  7F E3 FB 78 */	mr r3, r31
/* 00005EDC 00005FA0  7F 24 CB 78 */	mr r4, r25
/* 00005EE0 00005FA4  38 A0 01 93 */	li r5, 0x193
/* 00005EE4 00005FA8  4B FF AB 8D */	bl evtSetValue
/* 00005EE8 00005FAC  7F E3 FB 78 */	mr r3, r31
/* 00005EEC 00005FB0  7F 84 E3 78 */	mr r4, r28
/* 00005EF0 00005FB4  7F A5 EB 78 */	mr r5, r29
/* 00005EF4 00005FB8  4B FF AB 7D */	bl evtSetValue
/* 00005EF8 00005FBC  38 00 00 79 */	li r0, 0x79
/* 00005EFC 00005FC0  7C 7D D8 50 */	subf r3, r29, r27
/* 00005F00 00005FC4  90 1E 03 08 */	stw r0, 0x308(r30)
/* 00005F04 00005FC8  9B BE 03 10 */	stb r29, 0x310(r30)
/* 00005F08 00005FCC  4B FF AB 69 */	bl pouchSetCoin
.L_00005F0C:
/* 00005F0C 00005FD0  38 60 00 02 */	li r3, 0x2
/* 00005F10 00005FD4  48 00 01 74 */	b .L_00006084
.L_00005F14:
/* 00005F14 00005FD8  38 00 00 C8 */	li r0, 0xc8
/* 00005F18 00005FDC  3B 80 00 00 */	li r28, 0x0
/* 00005F1C 00005FE0  38 60 00 00 */	li r3, 0x0
/* 00005F20 00005FE4  38 80 00 00 */	li r4, 0x0
/* 00005F24 00005FE8  7C 09 03 A6 */	mtctr r0
.L_00005F28:
/* 00005F28 00005FEC  38 04 01 FA */	addi r0, r4, 0x1fa
/* 00005F2C 00005FF0  7C 1D 02 AE */	lhax r0, r29, r0
/* 00005F30 00005FF4  2C 00 00 00 */	cmpwi r0, 0x0
/* 00005F34 00005FF8  41 82 00 08 */	beq .L_00005F3C
/* 00005F38 00005FFC  38 63 00 01 */	addi r3, r3, 0x1
.L_00005F3C:
/* 00005F3C 00006000  38 84 00 02 */	addi r4, r4, 0x2
/* 00005F40 00006004  42 00 FF E8 */	bdnz .L_00005F28
/* 00005F44 00006008  2C 03 00 00 */	cmpwi r3, 0x0
/* 00005F48 0000600C  41 81 00 0C */	bgt .L_00005F54
/* 00005F4C 00006010  38 60 00 02 */	li r3, 0x2
/* 00005F50 00006014  48 00 01 34 */	b .L_00006084
.L_00005F54:
/* 00005F54 00006018  4B FF AB 1D */	bl irand
/* 00005F58 0000601C  2C 03 00 00 */	cmpwi r3, 0x0
/* 00005F5C 00006020  41 80 00 40 */	blt .L_00005F9C
/* 00005F60 00006024  38 00 00 C8 */	li r0, 0xc8
/* 00005F64 00006028  38 80 00 00 */	li r4, 0x0
/* 00005F68 0000602C  7C 09 03 A6 */	mtctr r0
.L_00005F6C:
/* 00005F6C 00006030  38 04 01 FA */	addi r0, r4, 0x1fa
/* 00005F70 00006034  7C 1D 02 AE */	lhax r0, r29, r0
/* 00005F74 00006038  2C 00 00 00 */	cmpwi r0, 0x0
/* 00005F78 0000603C  41 82 00 18 */	beq .L_00005F90
/* 00005F7C 00006040  34 63 FF FF */	subic. r3, r3, 0x1
/* 00005F80 00006044  40 80 00 10 */	bge .L_00005F90
/* 00005F84 00006048  7C 7D 22 14 */	add r3, r29, r4
/* 00005F88 0000604C  AB 83 01 FA */	lha r28, 0x1fa(r3)
/* 00005F8C 00006050  48 00 00 48 */	b .L_00005FD4
.L_00005F90:
/* 00005F90 00006054  38 84 00 02 */	addi r4, r4, 0x2
/* 00005F94 00006058  42 00 FF D8 */	bdnz .L_00005F6C
/* 00005F98 0000605C  48 00 00 3C */	b .L_00005FD4
.L_00005F9C:
/* 00005F9C 00006060  38 00 00 14 */	li r0, 0x14
/* 00005FA0 00006064  38 80 00 00 */	li r4, 0x0
/* 00005FA4 00006068  7C 09 03 A6 */	mtctr r0
.L_00005FA8:
/* 00005FA8 0000606C  38 04 01 92 */	addi r0, r4, 0x192
/* 00005FAC 00006070  7C 1D 02 AE */	lhax r0, r29, r0
/* 00005FB0 00006074  2C 00 00 00 */	cmpwi r0, 0x0
/* 00005FB4 00006078  41 82 00 18 */	beq .L_00005FCC
/* 00005FB8 0000607C  34 63 FF FF */	subic. r3, r3, 0x1
/* 00005FBC 00006080  40 80 00 10 */	bge .L_00005FCC
/* 00005FC0 00006084  7C 7D 22 14 */	add r3, r29, r4
/* 00005FC4 00006088  AB 83 01 92 */	lha r28, 0x192(r3)
/* 00005FC8 0000608C  48 00 00 0C */	b .L_00005FD4
.L_00005FCC:
/* 00005FCC 00006090  38 84 00 02 */	addi r4, r4, 0x2
/* 00005FD0 00006094  42 00 FF D8 */	bdnz .L_00005FA8
.L_00005FD4:
/* 00005FD4 00006098  2C 1C 00 00 */	cmpwi r28, 0x0
/* 00005FD8 0000609C  41 82 00 A8 */	beq .L_00006080
/* 00005FDC 000060A0  7F 83 E3 78 */	mr r3, r28
/* 00005FE0 000060A4  4B FF AA 91 */	bl pouchRemoveItem
/* 00005FE4 000060A8  2C 03 00 00 */	cmpwi r3, 0x0
/* 00005FE8 000060AC  40 82 00 0C */	bne .L_00005FF4
/* 00005FEC 000060B0  38 60 00 02 */	li r3, 0x2
/* 00005FF0 000060B4  48 00 00 94 */	b .L_00006084
.L_00005FF4:
/* 00005FF4 000060B8  2C 1C 00 F0 */	cmpwi r28, 0xf0
/* 00005FF8 000060BC  93 9E 03 08 */	stw r28, 0x308(r30)
/* 00005FFC 000060C0  41 80 00 54 */	blt .L_00006050
/* 00006000 000060C4  2C 1C 01 53 */	cmpwi r28, 0x153
/* 00006004 000060C8  40 80 00 4C */	bge .L_00006050
/* 00006008 000060CC  80 1B 00 08 */	lwz r0, 0x8(r27)
/* 0000600C 000060D0  2C 00 00 DE */	cmpwi r0, 0xde
/* 00006010 000060D4  40 82 00 18 */	bne .L_00006028
/* 00006014 000060D8  7F 63 DB 78 */	mr r3, r27
/* 00006018 000060DC  38 80 00 03 */	li r4, 0x3
/* 0000601C 000060E0  38 A0 00 00 */	li r5, 0x0
/* 00006020 000060E4  4B FF AA 51 */	bl BtlUnit_EquipItem
/* 00006024 000060E8  48 00 00 24 */	b .L_00006048
.L_00006028:
/* 00006028 000060EC  2C 00 00 E0 */	cmpwi r0, 0xe0
/* 0000602C 000060F0  41 80 00 1C */	blt .L_00006048
/* 00006030 000060F4  2C 00 00 E7 */	cmpwi r0, 0xe7
/* 00006034 000060F8  40 80 00 14 */	bge .L_00006048
/* 00006038 000060FC  7F 63 DB 78 */	mr r3, r27
/* 0000603C 00006100  38 80 00 05 */	li r4, 0x5
/* 00006040 00006104  38 A0 00 00 */	li r5, 0x0
/* 00006044 00006108  4B FF AA 2D */	bl BtlUnit_EquipItem
.L_00006048:
/* 00006048 0000610C  4B FF AA 29 */	bl pouchReviseMarioParam
/* 0000604C 00006110  4B FF AA 25 */	bl pouchRevisePartyParam
.L_00006050:
/* 00006050 00006114  7F E3 FB 78 */	mr r3, r31
/* 00006054 00006118  7F 44 D3 78 */	mr r4, r26
/* 00006058 0000611C  7F 85 E3 78 */	mr r5, r28
/* 0000605C 00006120  4B FF AA 15 */	bl evtSetValue
/* 00006060 00006124  1C 1C 00 28 */	mulli r0, r28, 0x28
/* 00006064 00006128  3C 80 00 00 */	lis r4, itemDataTable@ha
/* 00006068 0000612C  7F E3 FB 78 */	mr r3, r31
/* 0000606C 00006130  38 84 00 00 */	addi r4, r4, itemDataTable@l
/* 00006070 00006134  7C A4 02 14 */	add r5, r4, r0
/* 00006074 00006138  7F 24 CB 78 */	mr r4, r25
/* 00006078 0000613C  A0 A5 00 20 */	lhz r5, 0x20(r5)
/* 0000607C 00006140  4B FF A9 F5 */	bl evtSetValue
.L_00006080:
/* 00006080 00006144  38 60 00 02 */	li r3, 0x2
.L_00006084:
/* 00006084 00006148  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 00006088 0000614C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 0000608C 00006150  7C 08 03 A6 */	mtlr r0
/* 00006090 00006154  38 21 00 30 */	addi r1, r1, 0x30
/* 00006094 00006158  4E 80 00 20 */	blr
.endfn _steal_item

# 0x000070D8..0x000072A0 | size: 0x1C8
.rodata
.balign 8

# .rodata:0x0 | 0x70D8 | size: 0x14
.obj str_btl_un_badge_borodo_jon_0000e108, local
	.string "btl_un_badge_borodo"
.endobj str_btl_un_badge_borodo_jon_0000e108

# .rodata:0x14 | 0x70EC | size: 0x18
.obj str_SFX_ENM_BORODO_DAMAG_jon_0000e11c, local
	.string "SFX_ENM_BORODO_DAMAGED1"
.endobj str_SFX_ENM_BORODO_DAMAG_jon_0000e11c

# .rodata:0x2C | 0x7104 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_jon_0000e134, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_jon_0000e134

# .rodata:0x41 | 0x7119 | size: 0x3
.obj gap_03_00007119_rodata, global
.hidden gap_03_00007119_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007119_rodata

# .rodata:0x44 | 0x711C | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_jon_0000e14c, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_jon_0000e14c

# .rodata:0x58 | 0x7130 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_jon_0000e160, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_jon_0000e160

# .rodata:0x71 | 0x7149 | size: 0x3
.obj gap_03_00007149_rodata, global
.hidden gap_03_00007149_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007149_rodata

# .rodata:0x74 | 0x714C | size: 0x4
.obj str_N_1_jon_0000e17c, local
	.string "N_1"
.endobj str_N_1_jon_0000e17c

# .rodata:0x78 | 0x7150 | size: 0x4
.obj str_Y_1_jon_0000e180, local
	.string "Y_1"
.endobj str_Y_1_jon_0000e180

# .rodata:0x7C | 0x7154 | size: 0x4
.obj str_K_1_jon_0000e184, local
	.string "K_1"
.endobj str_K_1_jon_0000e184

# .rodata:0x80 | 0x7158 | size: 0x4
.obj str_X_1_jon_0000e188, local
	.string "X_1"
.endobj str_X_1_jon_0000e188

# .rodata:0x84 | 0x715C | size: 0x4
.obj str_S_1_jon_0000e18c, local
	.string "S_1"
.endobj str_S_1_jon_0000e18c

# .rodata:0x88 | 0x7160 | size: 0x4
.obj str_Q_1_jon_0000e190, local
	.string "Q_1"
.endobj str_Q_1_jon_0000e190

# .rodata:0x8C | 0x7164 | size: 0x4
.obj str_D_1_jon_0000e194, local
	.string "D_1"
.endobj str_D_1_jon_0000e194

# .rodata:0x90 | 0x7168 | size: 0x4
.obj str_A_1_jon_0000e198, local
	.string "A_1"
.endobj str_A_1_jon_0000e198

# .rodata:0x94 | 0x716C | size: 0x4
.obj str_A_2_jon_0000e19c, local
	.string "A_2"
.endobj str_A_2_jon_0000e19c

# .rodata:0x98 | 0x7170 | size: 0x4
.obj str_R_1_jon_0000e1a0, local
	.string "R_1"
.endobj str_R_1_jon_0000e1a0

# .rodata:0x9C | 0x7174 | size: 0x4
.obj str_W_1_jon_0000e1a4, local
	.string "W_1"
.endobj str_W_1_jon_0000e1a4

# .rodata:0xA0 | 0x7178 | size: 0x4
.obj str_T_1_jon_0000e1a8, local
	.string "T_1"
.endobj str_T_1_jon_0000e1a8

# .rodata:0xA4 | 0x717C | size: 0x4
.obj str_S_2_jon_0000e1ac, local
	.string "S_2"
.endobj str_S_2_jon_0000e1ac

# .rodata:0xA8 | 0x7180 | size: 0x4
.obj str_R_2_jon_0000e1b0, local
	.string "R_2"
.endobj str_R_2_jon_0000e1b0

# .rodata:0xAC | 0x7184 | size: 0x4
.obj str_W_2_jon_0000e1b4, local
	.string "W_2"
.endobj str_W_2_jon_0000e1b4

# .rodata:0xB0 | 0x7188 | size: 0xB
.obj str_c_borodo_t_jon_0000e1b8, local
	.string "c_borodo_t"
.endobj str_c_borodo_t_jon_0000e1b8

# .rodata:0xBB | 0x7193 | size: 0x1
.obj gap_03_00007193_rodata, global
.hidden gap_03_00007193_rodata
	.byte 0x00
.endobj gap_03_00007193_rodata

# .rodata:0xBC | 0x7194 | size: 0x16
.obj str_SFX_ENM_BORODO_MOVE1_jon_0000e1c4, local
	.string "SFX_ENM_BORODO_MOVE1L"
.endobj str_SFX_ENM_BORODO_MOVE1_jon_0000e1c4

# .rodata:0xD2 | 0x71AA | size: 0x2
.obj gap_03_000071AA_rodata, global
.hidden gap_03_000071AA_rodata
	.2byte 0x0000
.endobj gap_03_000071AA_rodata

# .rodata:0xD4 | 0x71AC | size: 0x16
.obj str_SFX_ENM_BORODO_MOVE1_jon_0000e1dc, local
	.string "SFX_ENM_BORODO_MOVE1R"
.endobj str_SFX_ENM_BORODO_MOVE1_jon_0000e1dc

# .rodata:0xEA | 0x71C2 | size: 0x2
.obj gap_03_000071C2_rodata, global
.hidden gap_03_000071C2_rodata
	.2byte 0x0000
.endobj gap_03_000071C2_rodata

# .rodata:0xEC | 0x71C4 | size: 0x14
.obj str_SFX_ENM_BORODO_ATT1_jon_0000e1f4, local
	.string "SFX_ENM_BORODO_ATT1"
.endobj str_SFX_ENM_BORODO_ATT1_jon_0000e1f4

# .rodata:0x100 | 0x71D8 | size: 0x4
.obj str_O_1_jon_0000e208, local
	.string "O_1"
.endobj str_O_1_jon_0000e208

# .rodata:0x104 | 0x71DC | size: 0x18
.obj str_SFX_ENM_BORODO_SUCCE_jon_0000e20c, local
	.string "SFX_ENM_BORODO_SUCCESS1"
.endobj str_SFX_ENM_BORODO_SUCCE_jon_0000e20c

# .rodata:0x11C | 0x71F4 | size: 0x18
.obj str_btl_msg_steal_item_l_jon_0000e224, local
	.string "btl_msg_steal_item_lost"
.endobj str_btl_msg_steal_item_l_jon_0000e224

# .rodata:0x134 | 0x720C | size: 0x18
.obj str_SFX_ENM_BORODO_INCLI_jon_0000e23c, local
	.string "SFX_ENM_BORODO_INCLINE1"
.endobj str_SFX_ENM_BORODO_INCLI_jon_0000e23c

# .rodata:0x14C | 0x7224 | size: 0x4
.obj str_B_1_jon_0000e254, local
	.string "B_1"
.endobj str_B_1_jon_0000e254

# .rodata:0x150 | 0x7228 | size: 0x4
.obj str_R_4_jon_0000e258, local
	.string "R_4"
.endobj str_R_4_jon_0000e258

# .rodata:0x154 | 0x722C | size: 0x4
.obj str_O_2_jon_0000e25c, local
	.string "O_2"
.endobj str_O_2_jon_0000e25c

# .rodata:0x158 | 0x7230 | size: 0x16
.obj str_SFX_ENM_BORODO_LAUGH_jon_0000e260, local
	.string "SFX_ENM_BORODO_LAUGH1"
.endobj str_SFX_ENM_BORODO_LAUGH_jon_0000e260

# .rodata:0x16E | 0x7246 | size: 0x2
.obj gap_03_00007246_rodata, global
.hidden gap_03_00007246_rodata
	.2byte 0x0000
.endobj gap_03_00007246_rodata

# .rodata:0x170 | 0x7248 | size: 0x15
.obj str_SFX_ENM_BORODO_WAIT1_jon_0000e278, local
	.string "SFX_ENM_BORODO_WAIT1"
.endobj str_SFX_ENM_BORODO_WAIT1_jon_0000e278

# .rodata:0x185 | 0x725D | size: 0x3
.obj gap_03_0000725D_rodata, global
.hidden gap_03_0000725D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000725D_rodata

# .rodata:0x188 | 0x7260 | size: 0x4
.obj str_R_3_jon_0000e290, local
	.string "R_3"
.endobj str_R_3_jon_0000e290

# .rodata:0x18C | 0x7264 | size: 0x15
.obj str_SFX_ENM_BORODO_JUMP1_jon_0000e294, local
	.string "SFX_ENM_BORODO_JUMP1"
.endobj str_SFX_ENM_BORODO_JUMP1_jon_0000e294

# .rodata:0x1A1 | 0x7279 | size: 0x3
.obj gap_03_00007279_rodata, global
.hidden gap_03_00007279_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007279_rodata

# .rodata:0x1A4 | 0x727C | size: 0x17
.obj str_SFX_ENM_BORODO_ESCAP_jon_0000e2ac, local
	.string "SFX_ENM_BORODO_ESCAPE1"
.endobj str_SFX_ENM_BORODO_ESCAP_jon_0000e2ac

# .rodata:0x1BB | 0x7293 | size: 0x1
.obj gap_03_00007293_rodata, global
.hidden gap_03_00007293_rodata
	.byte 0x00
.endobj gap_03_00007293_rodata

# .rodata:0x1BC | 0x7294 | size: 0x9
.obj str_recovery_jon_0000e2c4, local
	.string "recovery"
.endobj str_recovery_jon_0000e2c4

# .rodata:0x1C5 | 0x729D | size: 0x3
.obj gap_03_0000729D_rodata, global
.hidden gap_03_0000729D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000729D_rodata

# 0x00065098..0x00066CC8 | size: 0x1C30
.data
.balign 8

# .data:0x0 | 0x65098 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x650A0 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x650A4 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x650A8 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x650AC | size: 0x4
.obj gap_04_000650AC_data, global
.hidden gap_04_000650AC_data
	.4byte 0x00000000
.endobj gap_04_000650AC_data

# .data:0x18 | 0x650B0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x650B8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x650BC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x650C0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x650C8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x650CC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x650D0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x650D4 | size: 0x4
.obj gap_04_000650D4_data, global
.hidden gap_04_000650D4_data
	.4byte 0x00000000
.endobj gap_04_000650D4_data

# .data:0x40 | 0x650D8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x650E0 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x650E4 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x650E8 | size: 0xC4
.obj unit_badge_borodo_14_data_650E8, global
	.4byte 0x0000009E
	.4byte str_btl_un_badge_borodo_jon_0000e108
	.4byte 0x000C0000
	.4byte 0x01011400
	.4byte 0x01460232
	.4byte 0x270F001A
	.4byte 0x00220000
	.4byte 0x00220000
	.4byte 0x00000000
	.4byte 0x41880000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x41100000
	.4byte 0x41D00000
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
	.4byte str_SFX_ENM_BORODO_DAMAG_jon_0000e11c
	.4byte str_SFX_BTL_DAMAGE_FIRE1_jon_0000e134
	.4byte str_SFX_BTL_DAMAGE_ICE1_jon_0000e14c
	.4byte str_SFX_BTL_DAMAGE_BIRIB_jon_0000e160
	.4byte 0x00000000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_badge_borodo_14_data_650E8

# .data:0x114 | 0x651AC | size: 0xC0
.obj weapon_borodo_attack, local
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
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000002
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
.endobj weapon_borodo_attack

# .data:0x1D4 | 0x6526C | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x1D9 | 0x65271 | size: 0x3
.obj gap_04_00065271_data, global
.hidden gap_04_00065271_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00065271_data

# .data:0x1DC | 0x65274 | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x1E1 | 0x65279 | size: 0x3
.obj gap_04_00065279_data, global
.hidden gap_04_00065279_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00065279_data

# .data:0x1E4 | 0x6527C | size: 0x16
.obj regist, local
	.ascii "PF2dPdd2dUdUdZPK<dFdd<"
.endobj regist

# .data:0x1FA | 0x65292 | size: 0x2
.obj gap_04_00065292_data, global
.hidden gap_04_00065292_data
	.2byte 0x0000
.endobj gap_04_00065292_data

# .data:0x1FC | 0x65294 | size: 0xA0
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_N_1_jon_0000e17c
	.4byte 0x00000002
	.4byte str_Y_1_jon_0000e180
	.4byte 0x00000009
	.4byte str_Y_1_jon_0000e180
	.4byte 0x00000005
	.4byte str_K_1_jon_0000e184
	.4byte 0x00000004
	.4byte str_X_1_jon_0000e188
	.4byte 0x00000003
	.4byte str_X_1_jon_0000e188
	.4byte 0x0000001C
	.4byte str_S_1_jon_0000e18c
	.4byte 0x0000001D
	.4byte str_Q_1_jon_0000e190
	.4byte 0x0000001E
	.4byte str_Q_1_jon_0000e190
	.4byte 0x0000001F
	.4byte str_S_1_jon_0000e18c
	.4byte 0x00000027
	.4byte str_D_1_jon_0000e194
	.4byte 0x00000032
	.4byte str_A_1_jon_0000e198
	.4byte 0x00000033
	.4byte str_A_2_jon_0000e19c
	.4byte 0x0000002A
	.4byte str_R_1_jon_0000e1a0
	.4byte 0x00000029
	.4byte str_R_1_jon_0000e1a0
	.4byte 0x00000028
	.4byte str_W_1_jon_0000e1a4
	.4byte 0x00000038
	.4byte str_X_1_jon_0000e188
	.4byte 0x00000039
	.4byte str_X_1_jon_0000e188
	.4byte 0x00000041
	.4byte str_T_1_jon_0000e1a8
	.4byte 0x00000045
	.4byte str_S_1_jon_0000e18c
.endobj pose_table

# .data:0x29C | 0x65334 | size: 0x90
.obj pose_table_item_have, local
	.4byte 0x00000001
	.4byte str_N_1_jon_0000e17c
	.4byte 0x00000002
	.4byte str_Y_1_jon_0000e180
	.4byte 0x00000009
	.4byte str_Y_1_jon_0000e180
	.4byte 0x00000005
	.4byte str_K_1_jon_0000e184
	.4byte 0x00000004
	.4byte str_X_1_jon_0000e188
	.4byte 0x00000003
	.4byte str_X_1_jon_0000e188
	.4byte 0x0000001C
	.4byte str_S_2_jon_0000e1ac
	.4byte 0x0000001D
	.4byte str_Q_1_jon_0000e190
	.4byte 0x0000001E
	.4byte str_Q_1_jon_0000e190
	.4byte 0x0000001F
	.4byte str_S_2_jon_0000e1ac
	.4byte 0x00000027
	.4byte str_D_1_jon_0000e194
	.4byte 0x00000032
	.4byte str_A_1_jon_0000e198
	.4byte 0x00000033
	.4byte str_A_2_jon_0000e19c
	.4byte 0x0000002A
	.4byte str_R_2_jon_0000e1b0
	.4byte 0x00000029
	.4byte str_R_2_jon_0000e1b0
	.4byte 0x00000028
	.4byte str_W_2_jon_0000e1b4
	.4byte 0x00000041
	.4byte str_S_2_jon_0000e1ac
	.4byte 0x00000045
	.4byte str_S_2_jon_0000e1ac
.endobj pose_table_item_have

# .data:0x32C | 0x653C4 | size: 0x10
.obj data_table, local
	.4byte 0x00000033
	.4byte unk_evt_jon_00075258
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x33C | 0x653D4 | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_badge_borodo_jon_0000e108
	.4byte str_c_borodo_t_jon_0000e1b8
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

# .data:0x388 | 0x65420 | size: 0xE4
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
	.4byte str_SFX_ENM_BORODO_MOVE1_jon_0000e1c4
	.4byte str_SFX_ENM_BORODO_MOVE1_jon_0000e1dc
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0007005B
	.4byte btlevtcmd_SetWalkSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BORODO_MOVE1_jon_0000e1c4
	.4byte str_SFX_ENM_BORODO_MOVE1_jon_0000e1dc
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x0000000A
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckUnitFlag
	.4byte 0xFFFFFFFE
	.4byte 0x40000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_item_have
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x46C | 0x65504 | size: 0x28
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

# .data:0x494 | 0x6552C | size: 0x8
.obj phase_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0x49C | 0x65534 | size: 0xEC
.obj attack_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckUnitFlag
	.4byte 0xFFFFFFFE
	.4byte 0x40000000
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte escape_event
	.4byte 0x00000002
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
	.4byte btlevtcmd_CheckToken
	.4byte 0xFFFFFFFE
	.4byte 0x00000010
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte _borodo_normal_attack
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x000000D2
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0x00000046
	.4byte 0x0001005E
	.4byte _borodo_normal_attack
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte _borodo_steal_attack
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x588 | 0x65620 | size: 0x7DC
.obj _borodo_normal_attack, local
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte weapon_borodo_attack
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte weapon_borodo_attack
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
	.4byte 0x000000FA
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte weapon_borodo_attack
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
	.4byte weapon_borodo_attack
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000028
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x0000003C
	.4byte 0x0004005B
	.4byte btlevtcmd_TransStageFloorPosition
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8A80
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
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
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002A
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x0000015E
	.4byte 0x00010005
	.4byte 0x00000008
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BORODO_MOVE1_jon_0000e1c4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8E
	.4byte 0x00010009
	.4byte 0x00000003
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BORODO_MOVE1_jon_0000e1dc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8E
	.4byte 0x00010009
	.4byte 0x00000003
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_borodo_attack
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000005
	.4byte 0x0003005B
	.4byte btlevtcmd_GetStatusMg
	.4byte 0xFE363C83
	.4byte 0xFE363C86
	.4byte 0x0002003C
	.4byte 0xFE363C86
	.4byte 0x00000028
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_TransStageFloorPosition
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C86
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BORODO_ATT1_jon_0000e1f4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000032
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8E80
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
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8E
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_borodo_attack
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BORODO_ATT1_jon_0000e1f4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000032
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8E80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x0004005B
	.4byte btlevtcmd_TransStageFloorPosition
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
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8E
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
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7C19
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000012
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BORODO_MOVE1_jon_0000e1c4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000000C
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BORODO_MOVE1_jon_0000e1dc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte weapon_borodo_attack
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_borodo_attack
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7B80
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_O_1_jon_0000e208
	.4byte 0x0000006E
	.4byte 0x0003005B
	.4byte btlevtcmd_GetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000168
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x00000168
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_SetRotateOffsetFromCenterOffset
	.4byte 0xFFFFFFFE
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x0000000D
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x00000018
	.4byte 0x00010005
	.4byte 0x00000019
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000024
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_X_1_jon_0000e188
	.4byte 0x0001000A
	.4byte 0x000003E8
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
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8A80
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
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
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
.endobj _borodo_normal_attack

# .data:0xD64 | 0x65DFC | size: 0x988
.obj _borodo_steal_attack, local
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte weapon_borodo_attack
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte weapon_borodo_attack
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
	.4byte 0x000000FA
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte weapon_borodo_attack
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
	.4byte weapon_borodo_attack
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000028
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x0000003C
	.4byte 0x0004005B
	.4byte btlevtcmd_TransStageFloorPosition
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8A80
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
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
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002A
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x0000015E
	.4byte 0x00010005
	.4byte 0x00000008
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BORODO_MOVE1_jon_0000e1c4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8E
	.4byte 0x00010009
	.4byte 0x00000003
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BORODO_MOVE1_jon_0000e1dc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8E
	.4byte 0x00010009
	.4byte 0x00000003
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_borodo_attack
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000005
	.4byte 0x0003005B
	.4byte btlevtcmd_GetStatusMg
	.4byte 0xFE363C83
	.4byte 0xFE363C86
	.4byte 0x0002003C
	.4byte 0xFE363C86
	.4byte 0x00000028
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_TransStageFloorPosition
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C86
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BORODO_ATT1_jon_0000e1f4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000032
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8E80
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
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8E
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_borodo_attack
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BORODO_ATT1_jon_0000e1f4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000032
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8E80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x0004005B
	.4byte btlevtcmd_TransStageFloorPosition
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
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8E
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
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7C19
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000012
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BORODO_MOVE1_jon_0000e1c4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000000C
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BORODO_MOVE1_jon_0000e1dc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte weapon_borodo_attack
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_borodo_attack
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_GetResultACDefence
	.4byte 0xFE363C87
	.4byte 0x0002001C
	.4byte 0xFE363C87
	.4byte 0x00000003
	.4byte 0x0006005B
	.4byte _steal_item
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0xFE363C87
	.4byte 0x00020019
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BORODO_SUCCE_jon_0000e20c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006B
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0003005B
	.4byte btlevtcmd_AnnounceSetParam
	.4byte 0x00000000
	.4byte 0xFE363C88
	.4byte 0x0006005B
	.4byte btlevtcmd_AnnounceMessage
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_btl_msg_steal_item_l_jon_0000e224
	.4byte 0x0000005A
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_BtlIconEntry
	.4byte 0xFE363C89
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C8A
	.4byte 0x0003005B
	.4byte btlevtcmd_BtlIconSetFallAccel
	.4byte 0xFE363C8A
	.4byte 0xF24A7C80
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte btlevtcmd_TransStageFloorPosition
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_BtlIconJumpPosition
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0x0002005B
	.4byte btlevtcmd_BtlIconDelete
	.4byte 0xFE363C8A
	.4byte 0x0003005B
	.4byte btlevtcmd_OnUnitFlag
	.4byte 0xFFFFFFFE
	.4byte 0x40000000
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7C80
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_O_1_jon_0000e208
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x00020018
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BORODO_INCLI_jon_0000e23c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_B_1_jon_0000e254
	.4byte 0x00010009
	.4byte 0x00000034
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_R_4_jon_0000e258
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8A80
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
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_O_2_jon_0000e25c
	.4byte 0x00010009
	.4byte 0x0000000E
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BORODO_LAUGH_jon_0000e260
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_item_have
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
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8A80
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
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj _borodo_steal_attack

# .data:0x16EC | 0x66784 | size: 0x1CC
.obj escape_event, local
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BORODO_WAIT1_jon_0000e278
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_R_3_jon_0000e290
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7C80
	.4byte 0x0009005B
	.4byte btlevtcmd_SetMoveSoundDataWork
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BORODO_JUMP1_jon_0000e294
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24ACA80
	.4byte 0xFFFFFFFE
	.4byte 0x000C005B
	.4byte btlevtcmd_SetPartsBlur
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x04000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BORODO_ESCAP_jon_0000e2ac
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A9E80
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0x0000012C
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000C005B
	.4byte btlevtcmd_SetPartsBlur
	.4byte 0xFFFFFFFE
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
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x04000000
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_KillUnit
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj escape_event

# .data:0x18B8 | 0x66950 | size: 0x68
.obj wait_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckUnitFlag
	.4byte 0xFFFFFFFE
	.4byte 0x40000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_item_have
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x1920 | 0x669B8 | size: 0x30C
.obj unk_evt_jon_00075258, local
	.4byte 0x0003005B
	.4byte btlevtcmd_OnUnitFlag
	.4byte 0xFE363C8A
	.4byte 0x08000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000030
	.4byte 0x00010003
	.4byte 0x00000005
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
	.4byte 0x00000005
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x00000006
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
	.4byte 0x00000006
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_ClearAllStatus
	.4byte 0xFE363C8A
	.4byte 0x0003005B
	.4byte btlevtcmd_ConsumeItemReserve
	.4byte 0xFE363C8A
	.4byte 0x00000097
	.4byte 0x0000006E
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000028
	.4byte 0x0006005B
	.4byte btlevtcmd_DispItemIcon
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000097
	.4byte 0x00000078
	.4byte 0x00000070
	.4byte 0x00010009
	.4byte 0x0000005A
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x00010003
	.4byte 0x00000007
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFD
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte btlevtcmd_OnOffStatus
	.4byte 0xFE363C8A
	.4byte 0x0000001B
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_SetHp
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_RecoverHp
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_recovery_jon_0000e2c4
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
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0xF24A7A80
	.4byte 0xF24A7D4C
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C8A
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
	.4byte 0x0003005B
	.4byte btlevtcmd_OffUnitFlag
	.4byte 0xFE363C8A
	.4byte 0x08000000
	.4byte 0x0003005B
	.4byte btlevtcmd_OffUnitFlag
	.4byte 0xFE363C8A
	.4byte 0x40000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj unk_evt_jon_00075258

# .data:0x1C2C | 0x66CC4 | size: 0x4
.obj gap_04_00066CC4_data, global
.hidden gap_04_00066CC4_data
	.4byte 0x00000000
.endobj gap_04_00066CC4_data
