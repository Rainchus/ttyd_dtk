.include "macros.inc"
.file "unit_ice_pakkun.o"

# 0x00005F00..0x00006190 | size: 0x290
.text
.balign 4

# .text:0x0 | 0x5F00 | size: 0xDC
.fn shadow_scale_return, local
/* 00005F00 00005FC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00005F04 00005FC8  7C 08 02 A6 */	mflr r0
/* 00005F08 00005FCC  90 01 00 24 */	stw r0, 0x24(r1)
/* 00005F0C 00005FD0  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 00005F10 00005FD4  7C 9F 23 78 */	mr r31, r4
/* 00005F14 00005FD8  7C 7E 1B 78 */	mr r30, r3
/* 00005F18 00005FDC  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00005F1C 00005FE0  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00005F20 00005FE4  4B FF A0 E1 */	bl evtGetValue
/* 00005F24 00005FE8  7C 64 1B 78 */	mr r4, r3
/* 00005F28 00005FEC  7F C3 F3 78 */	mr r3, r30
/* 00005F2C 00005FF0  4B FF A0 D5 */	bl BattleTransID
/* 00005F30 00005FF4  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00005F34 00005FF8  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00005F38 00005FFC  7C 64 1B 78 */	mr r4, r3
/* 00005F3C 00006000  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00005F40 00006004  4B FF A0 C1 */	bl BattleGetUnitPtr
/* 00005F44 00006008  7C 7E 1B 78 */	mr r30, r3
/* 00005F48 0000600C  38 80 00 01 */	li r4, 0x1
/* 00005F4C 00006010  4B FF A0 B5 */	bl BtlUnit_GetPartsPtr
/* 00005F50 00006014  2C 1F 00 00 */	cmpwi r31, 0x0
/* 00005F54 00006018  7C 7F 1B 78 */	mr r31, r3
/* 00005F58 0000601C  41 82 00 0C */	beq .L_00005F64
/* 00005F5C 00006020  38 00 00 00 */	li r0, 0x0
/* 00005F60 00006024  90 1E 02 1C */	stw r0, 0x21c(r30)
.L_00005F64:
/* 00005F64 00006028  80 7E 02 18 */	lwz r3, 0x218(r30)
/* 00005F68 0000602C  3C 00 43 30 */	lis r0, 0x4330
/* 00005F6C 00006030  3C 80 00 00 */	lis r4, double_to_int_bom_00008618@ha
/* 00005F70 00006034  3C A0 00 00 */	lis r5, zero_bom_00008614@ha
/* 00005F74 00006038  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 00005F78 0000603C  C8 44 00 00 */	lfd f2, double_to_int_bom_00008618@l(r4)
/* 00005F7C 00006040  90 61 00 0C */	stw r3, 0xc(r1)
/* 00005F80 00006044  38 C5 00 00 */	addi r6, r5, zero_bom_00008614@l
/* 00005F84 00006048  C0 26 00 00 */	lfs f1, 0x0(r6)
/* 00005F88 0000604C  38 60 00 00 */	li r3, 0x0
/* 00005F8C 00006050  90 01 00 08 */	stw r0, 0x8(r1)
/* 00005F90 00006054  38 A0 00 0F */	li r5, 0xf
/* 00005F94 00006058  80 9E 02 1C */	lwz r4, 0x21c(r30)
/* 00005F98 0000605C  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 00005F9C 00006060  EC 40 10 28 */	fsubs f2, f0, f2
/* 00005FA0 00006064  4B FF A0 61 */	bl intplGetValue
/* 00005FA4 00006068  D0 3F 00 78 */	stfs f1, 0x78(r31)
/* 00005FA8 0000606C  80 7E 02 1C */	lwz r3, 0x21c(r30)
/* 00005FAC 00006070  2C 03 00 0F */	cmpwi r3, 0xf
/* 00005FB0 00006074  41 80 00 0C */	blt .L_00005FBC
/* 00005FB4 00006078  38 60 00 02 */	li r3, 0x2
/* 00005FB8 0000607C  48 00 00 10 */	b .L_00005FC8
.L_00005FBC:
/* 00005FBC 00006080  38 03 00 01 */	addi r0, r3, 0x1
/* 00005FC0 00006084  38 60 00 00 */	li r3, 0x0
/* 00005FC4 00006088  90 1E 02 1C */	stw r0, 0x21c(r30)
.L_00005FC8:
/* 00005FC8 0000608C  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 00005FCC 00006090  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00005FD0 00006094  7C 08 03 A6 */	mtlr r0
/* 00005FD4 00006098  38 21 00 20 */	addi r1, r1, 0x20
/* 00005FD8 0000609C  4E 80 00 20 */	blr
.endfn shadow_scale_return

# .text:0xDC | 0x5FDC | size: 0xE0
.fn shadow_scale_small, local
/* 00005FDC 000060A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00005FE0 000060A4  7C 08 02 A6 */	mflr r0
/* 00005FE4 000060A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 00005FE8 000060AC  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 00005FEC 000060B0  7C 9F 23 78 */	mr r31, r4
/* 00005FF0 000060B4  7C 7E 1B 78 */	mr r30, r3
/* 00005FF4 000060B8  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00005FF8 000060BC  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00005FFC 000060C0  4B FF A0 05 */	bl evtGetValue
/* 00006000 000060C4  7C 64 1B 78 */	mr r4, r3
/* 00006004 000060C8  7F C3 F3 78 */	mr r3, r30
/* 00006008 000060CC  4B FF 9F F9 */	bl BattleTransID
/* 0000600C 000060D0  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00006010 000060D4  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00006014 000060D8  7C 64 1B 78 */	mr r4, r3
/* 00006018 000060DC  80 65 00 00 */	lwz r3, 0x0(r5)
/* 0000601C 000060E0  4B FF 9F E5 */	bl BattleGetUnitPtr
/* 00006020 000060E4  7C 7E 1B 78 */	mr r30, r3
/* 00006024 000060E8  38 80 00 01 */	li r4, 0x1
/* 00006028 000060EC  4B FF 9F D9 */	bl BtlUnit_GetPartsPtr
/* 0000602C 000060F0  2C 1F 00 00 */	cmpwi r31, 0x0
/* 00006030 000060F4  7C 7F 1B 78 */	mr r31, r3
/* 00006034 000060F8  41 82 00 0C */	beq .L_00006040
/* 00006038 000060FC  38 00 00 00 */	li r0, 0x0
/* 0000603C 00006100  90 1E 02 1C */	stw r0, 0x21c(r30)
.L_00006040:
/* 00006040 00006104  80 BE 02 18 */	lwz r5, 0x218(r30)
/* 00006044 00006108  3C 00 43 30 */	lis r0, 0x4330
/* 00006048 0000610C  3C 80 00 00 */	lis r4, double_to_int_bom_00008618@ha
/* 0000604C 00006110  3C 60 00 00 */	lis r3, zero_bom_00008614@ha
/* 00006050 00006114  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 00006054 00006118  90 01 00 08 */	stw r0, 0x8(r1)
/* 00006058 0000611C  38 C4 00 00 */	addi r6, r4, double_to_int_bom_00008618@l
/* 0000605C 00006120  38 83 00 00 */	addi r4, r3, zero_bom_00008614@l
/* 00006060 00006124  90 A1 00 0C */	stw r5, 0xc(r1)
/* 00006064 00006128  38 60 00 00 */	li r3, 0x0
/* 00006068 0000612C  C8 26 00 00 */	lfd f1, 0x0(r6)
/* 0000606C 00006130  38 A0 00 0F */	li r5, 0xf
/* 00006070 00006134  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 00006074 00006138  C0 44 00 00 */	lfs f2, 0x0(r4)
/* 00006078 0000613C  EC 20 08 28 */	fsubs f1, f0, f1
/* 0000607C 00006140  80 9E 02 1C */	lwz r4, 0x21c(r30)
/* 00006080 00006144  4B FF 9F 81 */	bl intplGetValue
/* 00006084 00006148  D0 3F 00 78 */	stfs f1, 0x78(r31)
/* 00006088 0000614C  80 7E 02 1C */	lwz r3, 0x21c(r30)
/* 0000608C 00006150  2C 03 00 0F */	cmpwi r3, 0xf
/* 00006090 00006154  41 80 00 0C */	blt .L_0000609C
/* 00006094 00006158  38 60 00 02 */	li r3, 0x2
/* 00006098 0000615C  48 00 00 10 */	b .L_000060A8
.L_0000609C:
/* 0000609C 00006160  38 03 00 01 */	addi r0, r3, 0x1
/* 000060A0 00006164  38 60 00 00 */	li r3, 0x0
/* 000060A4 00006168  90 1E 02 1C */	stw r0, 0x21c(r30)
.L_000060A8:
/* 000060A8 0000616C  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 000060AC 00006170  80 01 00 24 */	lwz r0, 0x24(r1)
/* 000060B0 00006174  7C 08 03 A6 */	mtlr r0
/* 000060B4 00006178  38 21 00 20 */	addi r1, r1, 0x20
/* 000060B8 0000617C  4E 80 00 20 */	blr
.endfn shadow_scale_small

# .text:0x1BC | 0x60BC | size: 0x78
.fn shadow_scale_memory, local
/* 000060BC 00006180  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 000060C0 00006184  7C 08 02 A6 */	mflr r0
/* 000060C4 00006188  90 01 00 24 */	stw r0, 0x24(r1)
/* 000060C8 0000618C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 000060CC 00006190  7C 7F 1B 78 */	mr r31, r3
/* 000060D0 00006194  80 83 00 18 */	lwz r4, 0x18(r3)
/* 000060D4 00006198  80 84 00 00 */	lwz r4, 0x0(r4)
/* 000060D8 0000619C  4B FF 9F 29 */	bl evtGetValue
/* 000060DC 000061A0  7C 64 1B 78 */	mr r4, r3
/* 000060E0 000061A4  7F E3 FB 78 */	mr r3, r31
/* 000060E4 000061A8  4B FF 9F 1D */	bl BattleTransID
/* 000060E8 000061AC  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 000060EC 000061B0  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 000060F0 000061B4  7C 64 1B 78 */	mr r4, r3
/* 000060F4 000061B8  80 65 00 00 */	lwz r3, 0x0(r5)
/* 000060F8 000061BC  4B FF 9F 09 */	bl BattleGetUnitPtr
/* 000060FC 000061C0  7C 7F 1B 78 */	mr r31, r3
/* 00006100 000061C4  38 80 00 01 */	li r4, 0x1
/* 00006104 000061C8  4B FF 9E FD */	bl BtlUnit_GetPartsPtr
/* 00006108 000061CC  C0 03 00 78 */	lfs f0, 0x78(r3)
/* 0000610C 000061D0  38 60 00 02 */	li r3, 0x2
/* 00006110 000061D4  FC 00 00 1E */	fctiwz f0, f0
/* 00006114 000061D8  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 00006118 000061DC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 0000611C 000061E0  90 1F 02 18 */	stw r0, 0x218(r31)
/* 00006120 000061E4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 00006124 000061E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00006128 000061EC  7C 08 03 A6 */	mtlr r0
/* 0000612C 000061F0  38 21 00 20 */	addi r1, r1, 0x20
/* 00006130 000061F4  4E 80 00 20 */	blr
.endfn shadow_scale_memory

# .text:0x234 | 0x6134 | size: 0x5C
.fn pakkun_ceil_exist, local
/* 00006134 000061F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00006138 000061FC  7C 08 02 A6 */	mflr r0
/* 0000613C 00006200  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00006140 00006204  90 01 00 14 */	stw r0, 0x14(r1)
/* 00006144 00006208  38 84 00 00 */	addi r4, r4, _battleWorkPointer@l
/* 00006148 0000620C  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000614C 00006210  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 00006150 00006214  3C 84 00 02 */	addis r4, r4, 0x2
/* 00006154 00006218  88 04 80 F8 */	lbz r0, -0x7f08(r4)
/* 00006158 0000621C  54 00 06 B5 */	rlwinm. r0, r0, 0, 26, 26
/* 0000615C 00006220  41 82 00 14 */	beq .L_00006170
/* 00006160 00006224  80 85 00 00 */	lwz r4, 0x0(r5)
/* 00006164 00006228  38 A0 00 00 */	li r5, 0x0
/* 00006168 0000622C  4B FF 9E 99 */	bl evtSetValue
/* 0000616C 00006230  48 00 00 10 */	b .L_0000617C
.L_00006170:
/* 00006170 00006234  80 85 00 00 */	lwz r4, 0x0(r5)
/* 00006174 00006238  38 A0 00 01 */	li r5, 0x1
/* 00006178 0000623C  4B FF 9E 89 */	bl evtSetValue
.L_0000617C:
/* 0000617C 00006240  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00006180 00006244  38 60 00 02 */	li r3, 0x2
/* 00006184 00006248  7C 08 03 A6 */	mtlr r0
/* 00006188 0000624C  38 21 00 10 */	addi r1, r1, 0x10
/* 0000618C 00006250  4E 80 00 20 */	blr
.endfn pakkun_ceil_exist

# 0x00002208..0x000023C0 | size: 0x1B8
.rodata
.balign 8

# .rodata:0x0 | 0x2208 | size: 0x12
.obj str_btl_un_ice_pakkun_bom_00008468, local
	.string "btl_un_ice_pakkun"
.endobj str_btl_un_ice_pakkun_bom_00008468

# .rodata:0x12 | 0x221A | size: 0x2
.obj gap_03_0000221A_rodata, global
.hidden gap_03_0000221A_rodata
	.2byte 0x0000
.endobj gap_03_0000221A_rodata

# .rodata:0x14 | 0x221C | size: 0x18
.obj str_SFX_ENM_PAKKUN_DAMAG_bom_0000847c, local
	.string "SFX_ENM_PAKKUN_DAMAGED1"
.endobj str_SFX_ENM_PAKKUN_DAMAG_bom_0000847c

# .rodata:0x2C | 0x2234 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_bom_00008494, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_bom_00008494

# .rodata:0x41 | 0x2249 | size: 0x3
.obj gap_03_00002249_rodata, global
.hidden gap_03_00002249_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002249_rodata

# .rodata:0x44 | 0x224C | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_bom_000084ac, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_bom_000084ac

# .rodata:0x58 | 0x2260 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_bom_000084c0, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_bom_000084c0

# .rodata:0x71 | 0x2279 | size: 0x3
.obj gap_03_00002279_rodata, global
.hidden gap_03_00002279_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002279_rodata

# .rodata:0x74 | 0x227C | size: 0xC
.obj str_c_pakflwr_a_bom_000084dc, local
	.string "c_pakflwr_a"
.endobj str_c_pakflwr_a_bom_000084dc

# .rodata:0x80 | 0x2288 | size: 0x8
.obj str_PKF_N_1_bom_000084e8, local
	.string "PKF_N_1"
.endobj str_PKF_N_1_bom_000084e8

# .rodata:0x88 | 0x2290 | size: 0x8
.obj str_PKF_Y_1_bom_000084f0, local
	.string "PKF_Y_1"
.endobj str_PKF_Y_1_bom_000084f0

# .rodata:0x90 | 0x2298 | size: 0x8
.obj str_PKF_K_1_bom_000084f8, local
	.string "PKF_K_1"
.endobj str_PKF_K_1_bom_000084f8

# .rodata:0x98 | 0x22A0 | size: 0x8
.obj str_PKF_X_1_bom_00008500, local
	.string "PKF_X_1"
.endobj str_PKF_X_1_bom_00008500

# .rodata:0xA0 | 0x22A8 | size: 0x8
.obj str_PKF_S_1_bom_00008508, local
	.string "PKF_S_1"
.endobj str_PKF_S_1_bom_00008508

# .rodata:0xA8 | 0x22B0 | size: 0x8
.obj str_PKF_Q_1_bom_00008510, local
	.string "PKF_Q_1"
.endobj str_PKF_Q_1_bom_00008510

# .rodata:0xB0 | 0x22B8 | size: 0x8
.obj str_PKF_S_2_bom_00008518, local
	.string "PKF_S_2"
.endobj str_PKF_S_2_bom_00008518

# .rodata:0xB8 | 0x22C0 | size: 0x8
.obj str_PKF_D_1_bom_00008520, local
	.string "PKF_D_1"
.endobj str_PKF_D_1_bom_00008520

# .rodata:0xC0 | 0x22C8 | size: 0x9
.obj str_PKF_A_1B_bom_00008528, local
	.string "PKF_A_1B"
.endobj str_PKF_A_1B_bom_00008528

# .rodata:0xC9 | 0x22D1 | size: 0x3
.obj gap_03_000022D1_rodata, global
.hidden gap_03_000022D1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000022D1_rodata

# .rodata:0xCC | 0x22D4 | size: 0x8
.obj str_PKF_T_1_bom_00008534, local
	.string "PKF_T_1"
.endobj str_PKF_T_1_bom_00008534

# .rodata:0xD4 | 0x22DC | size: 0x8
.obj str_PKF_N_2_bom_0000853c, local
	.string "PKF_N_2"
.endobj str_PKF_N_2_bom_0000853c

# .rodata:0xDC | 0x22E4 | size: 0x8
.obj str_PKF_Y_2_bom_00008544, local
	.string "PKF_Y_2"
.endobj str_PKF_Y_2_bom_00008544

# .rodata:0xE4 | 0x22EC | size: 0x8
.obj str_PKF_K_2_bom_0000854c, local
	.string "PKF_K_2"
.endobj str_PKF_K_2_bom_0000854c

# .rodata:0xEC | 0x22F4 | size: 0x8
.obj str_PKF_X_2_bom_00008554, local
	.string "PKF_X_2"
.endobj str_PKF_X_2_bom_00008554

# .rodata:0xF4 | 0x22FC | size: 0x8
.obj str_PKF_S_3_bom_0000855c, local
	.string "PKF_S_3"
.endobj str_PKF_S_3_bom_0000855c

# .rodata:0xFC | 0x2304 | size: 0x8
.obj str_PKF_Q_2_bom_00008564, local
	.string "PKF_Q_2"
.endobj str_PKF_Q_2_bom_00008564

# .rodata:0x104 | 0x230C | size: 0x8
.obj str_PKF_S_4_bom_0000856c, local
	.string "PKF_S_4"
.endobj str_PKF_S_4_bom_0000856c

# .rodata:0x10C | 0x2314 | size: 0x8
.obj str_PKF_D_2_bom_00008574, local
	.string "PKF_D_2"
.endobj str_PKF_D_2_bom_00008574

# .rodata:0x114 | 0x231C | size: 0x8
.obj str_PKF_A_5_bom_0000857c, local
	.string "PKF_A_5"
.endobj str_PKF_A_5_bom_0000857c

# .rodata:0x11C | 0x2324 | size: 0x1
.obj zero_bom_00008584, local
	.byte 0x00
.endobj zero_bom_00008584

# .rodata:0x11D | 0x2325 | size: 0x3
.obj gap_03_00002325_rodata, global
.hidden gap_03_00002325_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002325_rodata

# .rodata:0x120 | 0x2328 | size: 0xB
.obj str_toge_flush_bom_00008588, local
	.string "toge_flush"
.endobj str_toge_flush_bom_00008588

# .rodata:0x12B | 0x2333 | size: 0x1
.obj gap_03_00002333_rodata, global
.hidden gap_03_00002333_rodata
	.byte 0x00
.endobj gap_03_00002333_rodata

# .rodata:0x12C | 0x2334 | size: 0x15
.obj str_SFX_ENM_PAKKUN_MOVE1_bom_00008594, local
	.string "SFX_ENM_PAKKUN_MOVE1"
.endobj str_SFX_ENM_PAKKUN_MOVE1_bom_00008594

# .rodata:0x141 | 0x2349 | size: 0x3
.obj gap_03_00002349_rodata, global
.hidden gap_03_00002349_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002349_rodata

# .rodata:0x144 | 0x234C | size: 0x8
.obj str_PKF_E_4_bom_000085ac, local
	.string "PKF_E_4"
.endobj str_PKF_E_4_bom_000085ac

# .rodata:0x14C | 0x2354 | size: 0x15
.obj str_SFX_ENM_PAKKUN_MOVE2_bom_000085b4, local
	.string "SFX_ENM_PAKKUN_MOVE2"
.endobj str_SFX_ENM_PAKKUN_MOVE2_bom_000085b4

# .rodata:0x161 | 0x2369 | size: 0x3
.obj gap_03_00002369_rodata, global
.hidden gap_03_00002369_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002369_rodata

# .rodata:0x164 | 0x236C | size: 0x8
.obj str_PKF_E_1_bom_000085cc, local
	.string "PKF_E_1"
.endobj str_PKF_E_1_bom_000085cc

# .rodata:0x16C | 0x2374 | size: 0x8
.obj str_PKF_E_2_bom_000085d4, local
	.string "PKF_E_2"
.endobj str_PKF_E_2_bom_000085d4

# .rodata:0x174 | 0x237C | size: 0x8
.obj str_PKF_E_3_bom_000085dc, local
	.string "PKF_E_3"
.endobj str_PKF_E_3_bom_000085dc

# .rodata:0x17C | 0x2384 | size: 0x9
.obj str_PKF_A_1A_bom_000085e4, local
	.string "PKF_A_1A"
.endobj str_PKF_A_1A_bom_000085e4

# .rodata:0x185 | 0x238D | size: 0x3
.obj gap_03_0000238D_rodata, global
.hidden gap_03_0000238D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000238D_rodata

# .rodata:0x188 | 0x2390 | size: 0x17
.obj str_SFX_ENM_PAKKUN_ATTAC_bom_000085f0, local
	.string "SFX_ENM_PAKKUN_ATTACK1"
.endobj str_SFX_ENM_PAKKUN_ATTAC_bom_000085f0

# .rodata:0x19F | 0x23A7 | size: 0x1
.obj gap_03_000023A7_rodata, global
.hidden gap_03_000023A7_rodata
	.byte 0x00
.endobj gap_03_000023A7_rodata

# .rodata:0x1A0 | 0x23A8 | size: 0x9
.obj str_PKF_A_1C_bom_00008608, local
	.string "PKF_A_1C"
.endobj str_PKF_A_1C_bom_00008608
	.byte 0x00, 0x00, 0x00

# .rodata:0x1AC | 0x23B4 | size: 0x4
.obj zero_bom_00008614, local
	.float 0
.endobj zero_bom_00008614

# .rodata:0x1B0 | 0x23B8 | size: 0x8
.obj double_to_int_bom_00008618, local
	.double 4503601774854144
.endobj double_to_int_bom_00008618

# 0x0000CE10..0x0000DFCC | size: 0x11BC
.data
.balign 8

# .data:0x0 | 0xCE10 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0xCE18 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0xCE1C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0xCE20 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0xCE24 | size: 0x4
.obj gap_04_0000CE24_data, global
.hidden gap_04_0000CE24_data
	.4byte 0x00000000
.endobj gap_04_0000CE24_data

# .data:0x18 | 0xCE28 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0xCE30 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0xCE34 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0xCE38 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0xCE40 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0xCE44 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0xCE48 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0xCE4C | size: 0x4
.obj gap_04_0000CE4C_data, global
.hidden gap_04_0000CE4C_data
	.4byte 0x00000000
.endobj gap_04_0000CE4C_data

# .data:0x40 | 0xCE50 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0xCE58 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0xCE5C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0xCE60 | size: 0xC4
.obj unit_ice_pakkun_3_data_CE60, global
	.4byte 0x00000071
	.4byte str_btl_un_ice_pakkun_bom_00008468
	.4byte 0x000A0000
	.4byte 0x01011A00
	.4byte 0x03460132
	.4byte 0x270F0028
	.4byte 0x00300004
	.4byte 0x00300000
	.4byte 0x00000000
	.4byte 0x41C00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41A00000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41A00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41800000
	.4byte 0x42000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41C00000
	.4byte 0x00000000
	.4byte 0x42200000
	.4byte 0x42400000
	.4byte 0x00000002
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_ENM_PAKKUN_DAMAG_bom_0000847c
	.4byte str_SFX_BTL_DAMAGE_FIRE1_bom_00008494
	.4byte str_SFX_BTL_DAMAGE_ICE1_bom_000084ac
	.4byte str_SFX_BTL_DAMAGE_BIRIB_bom_000084c0
	.4byte 0x00000000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_ice_pakkun_3_data_CE60

# .data:0x114 | 0xCF24 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0xCF29 | size: 0x3
.obj gap_04_0000CF29_data, global
.hidden gap_04_0000CF29_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0000CF29_data

# .data:0x11C | 0xCF2C | size: 0x5
.obj defence_attr, local
	.4byte 0x00010300
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0xCF31 | size: 0x3
.obj gap_04_0000CF31_data, global
.hidden gap_04_0000CF31_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0000CF31_data

# .data:0x124 | 0xCF34 | size: 0x16
.obj regist, local
	.4byte 0x64462864
	.4byte 0x50646400
	.4byte 0x64556455
	.4byte 0x6455460A
	.4byte 0x28644664
	.2byte 0x645F
.endobj regist

# .data:0x13A | 0xCF4A | size: 0x2
.obj gap_04_0000CF4A_data, global
.hidden gap_04_0000CF4A_data
	.2byte 0x0000
.endobj gap_04_0000CF4A_data

# .data:0x13C | 0xCF4C | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_ice_pakkun_bom_00008468
	.4byte str_c_pakflwr_a_bom_000084dc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte pose_table
.endobj parts

# .data:0x188 | 0xCF98 | size: 0xC0
.obj weapon_ice_pakkun_attack, local
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
	.4byte 0x21002000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000087
	.4byte 0x00000002
	.4byte 0x00002004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x001E0200
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
.endobj weapon_ice_pakkun_attack

# .data:0x248 | 0xD058 | size: 0xA4
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
	.4byte weapon_ice_pakkun_attack
	.4byte 0x0001005E
	.4byte normal_attack_event
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
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
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_ice_pakkun_attack
	.4byte 0x0001005E
	.4byte normal_attack_event
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x2EC | 0xD0FC | size: 0x90
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_PKF_N_1_bom_000084e8
	.4byte 0x00000002
	.4byte str_PKF_Y_1_bom_000084f0
	.4byte 0x00000009
	.4byte str_PKF_Y_1_bom_000084f0
	.4byte 0x00000005
	.4byte str_PKF_K_1_bom_000084f8
	.4byte 0x00000004
	.4byte str_PKF_X_1_bom_00008500
	.4byte 0x00000003
	.4byte str_PKF_X_1_bom_00008500
	.4byte 0x0000001C
	.4byte str_PKF_S_1_bom_00008508
	.4byte 0x0000001D
	.4byte str_PKF_Q_1_bom_00008510
	.4byte 0x0000001E
	.4byte str_PKF_Q_1_bom_00008510
	.4byte 0x0000001F
	.4byte str_PKF_S_2_bom_00008518
	.4byte 0x00000027
	.4byte str_PKF_D_1_bom_00008520
	.4byte 0x00000032
	.4byte str_PKF_A_1B_bom_00008528
	.4byte 0x00000028
	.4byte str_PKF_S_1_bom_00008508
	.4byte 0x0000002A
	.4byte str_PKF_S_1_bom_00008508
	.4byte 0x00000038
	.4byte str_PKF_X_1_bom_00008500
	.4byte 0x00000039
	.4byte str_PKF_X_1_bom_00008500
	.4byte 0x00000041
	.4byte str_PKF_T_1_bom_00008534
	.4byte 0x00000045
	.4byte str_PKF_S_1_bom_00008508
.endobj pose_table

# .data:0x37C | 0xD18C | size: 0x90
.obj pose_table_ceil, local
	.4byte 0x00000001
	.4byte str_PKF_N_2_bom_0000853c
	.4byte 0x00000002
	.4byte str_PKF_Y_2_bom_00008544
	.4byte 0x00000009
	.4byte str_PKF_Y_2_bom_00008544
	.4byte 0x00000005
	.4byte str_PKF_K_2_bom_0000854c
	.4byte 0x00000004
	.4byte str_PKF_X_2_bom_00008554
	.4byte 0x00000003
	.4byte str_PKF_X_2_bom_00008554
	.4byte 0x0000001C
	.4byte str_PKF_S_3_bom_0000855c
	.4byte 0x0000001D
	.4byte str_PKF_Q_2_bom_00008564
	.4byte 0x0000001E
	.4byte str_PKF_Q_2_bom_00008564
	.4byte 0x0000001F
	.4byte str_PKF_S_4_bom_0000856c
	.4byte 0x00000027
	.4byte str_PKF_D_2_bom_00008574
	.4byte 0x00000032
	.4byte str_PKF_A_5_bom_0000857c
	.4byte 0x00000028
	.4byte str_PKF_S_3_bom_0000855c
	.4byte 0x0000002A
	.4byte str_PKF_S_3_bom_0000855c
	.4byte 0x00000038
	.4byte str_PKF_X_2_bom_00008554
	.4byte 0x00000039
	.4byte str_PKF_X_2_bom_00008554
	.4byte 0x00000041
	.4byte str_PKF_S_3_bom_0000855c
	.4byte 0x00000045
	.4byte str_PKF_S_3_bom_0000855c
.endobj pose_table_ceil

# .data:0x40C | 0xD21C | size: 0x78
.obj data_table, local
	.4byte 0x00000025
	.4byte dmg_avoid_counter_thorn_head_event
	.4byte 0x0000001A
	.4byte counter_damage_event
	.4byte 0x00000019
	.4byte counter_damage_event
	.4byte 0x0000001B
	.4byte counter_damage_event
	.4byte 0x0000001C
	.4byte counter_damage_event
	.4byte 0x0000001D
	.4byte counter_damage_event
	.4byte 0x0000001E
	.4byte counter_damage_event
	.4byte 0x0000001F
	.4byte counter_damage_event
	.4byte 0x00000020
	.4byte counter_damage_event
	.4byte 0x00000021
	.4byte counter_damage_event
	.4byte 0x00000022
	.4byte counter_damage_event
	.4byte 0x00000023
	.4byte counter_damage_event
	.4byte 0x00000024
	.4byte counter_damage_event
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x484 | 0xD294 | size: 0x7C
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
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitCursorOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte shadow_scale_memory
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x500 | 0xD310 | size: 0x11C
.obj dmg_avoid_counter_thorn_head_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000001F
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_S_1_bom_00008508
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
	.4byte 0x0000003F
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
	.4byte 0x00000025
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000032
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_bom_00008584
	.4byte str_toge_flush_bom_00008588
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

# .data:0x61C | 0xD42C | size: 0x28
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

# .data:0x644 | 0xD454 | size: 0x78
.obj counter_damage_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_D_1_bom_00008520
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckDamageCode
	.4byte 0xFFFFFFFE
	.4byte 0x00000200
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckDamageCode
	.4byte 0xFFFFFFFE
	.4byte 0x00000800
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte return_event
	.4byte 0x00000002
	.4byte 0x00000001
.endobj counter_damage_event

# .data:0x6BC | 0xD4CC | size: 0x20C
.obj ceil_fall_ready_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventCeilFall
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAKKUN_MOVE1_bom_00008594
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006E
	.4byte 0x0002005B
	.4byte shadow_scale_small
	.4byte 0xFFFFFFFE
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_E_4_bom_000085ac
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte btlevtcmd_OnAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x02000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAKKUN_MOVE2_bom_000085b4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006E
	.4byte 0x0002005B
	.4byte shadow_scale_return
	.4byte 0xFFFFFFFE
	.4byte 0x00000070
	.4byte 0x0003005B
	.4byte btlevtcmd_OffAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x02000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_E_1_bom_000085cc
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitCursorOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetStatusIconOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0x00000030
	.4byte 0x0005005B
	.4byte btlevtcmd_SetKissHitOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000010
	.4byte 0x00000020
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_OffAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00400000
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00200000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_S_1_bom_00008508
	.4byte 0x00000002
	.4byte 0x00000001
.endobj ceil_fall_ready_event

# .data:0x8C8 | 0xD6D8 | size: 0x400
.obj return_event, local
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte pakkun_ceil_exist
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000001
	.4byte 0xFE363C8F
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAKKUN_MOVE1_bom_00008594
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006E
	.4byte 0x0002005B
	.4byte shadow_scale_small
	.4byte 0xFFFFFFFE
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_E_2_bom_000085d4
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte btlevtcmd_OnAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x02000000
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventCeilFall
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAKKUN_MOVE2_bom_000085b4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006E
	.4byte 0x0002005B
	.4byte shadow_scale_return
	.4byte 0xFFFFFFFE
	.4byte 0x00000070
	.4byte 0x0003005B
	.4byte btlevtcmd_OffAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x02000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_E_1_bom_000085cc
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitCursorOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetStatusIconOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0x00000030
	.4byte 0x0005005B
	.4byte btlevtcmd_SetKissHitOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000010
	.4byte 0x00000020
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_OffAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00400000
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00200000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_S_1_bom_00008508
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventCeilFall
	.4byte 0xFFFFFFFE
	.4byte ceil_fall_ready_event
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000082
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000082
	.4byte 0xFE363C82
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAKKUN_MOVE2_bom_000085b4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006E
	.4byte 0x0002005B
	.4byte shadow_scale_return
	.4byte 0xFFFFFFFE
	.4byte 0x00000070
	.4byte 0x0003005B
	.4byte btlevtcmd_OffAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x02000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_E_3_bom_000085dc
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFFFFFFB0
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitCursorOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFFFFFFCE
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetStatusIconOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte btlevtcmd_SetKissHitOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000010
	.4byte 0xFFFFFFE0
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_OnAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00400000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00200000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_ceil
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_S_3_bom_0000855c
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj return_event

# .data:0xCC8 | 0xDAD8 | size: 0x4DC
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
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAKKUN_MOVE1_bom_00008594
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006E
	.4byte 0x0002005B
	.4byte shadow_scale_small
	.4byte 0xFFFFFFFE
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C8F
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_E_2_bom_000085d4
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_E_4_bom_000085ac
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte btlevtcmd_OnAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x02000000
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
	.4byte 0x0000002D
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
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
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAKKUN_MOVE2_bom_000085b4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006E
	.4byte 0x0002005B
	.4byte shadow_scale_return
	.4byte 0xFFFFFFFE
	.4byte 0x00000070
	.4byte 0x0003005B
	.4byte btlevtcmd_OffAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x02000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_E_1_bom_000085cc
	.4byte 0x0001000A
	.4byte 0x00000096
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_A_1A_bom_000085e4
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAKKUN_ATTAC_bom_000085f0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_A_1B_bom_00008528
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_A_1C_bom_00008608
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
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0001005E
	.4byte return_event
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj normal_attack_event

# .data:0x11A4 | 0xDFB4 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event
