.include "macros.inc"
.file "unit_borodo.o"

# 0x0000510C..0x000053F0 | size: 0x2E4
.text
.balign 4

# .text:0x0 | 0x510C | size: 0x2E4
.fn _steal_item, local
/* 0000510C 000051D0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00005110 000051D4  7C 08 02 A6 */	mflr r0
/* 00005114 000051D8  90 01 00 34 */	stw r0, 0x34(r1)
/* 00005118 000051DC  BF 01 00 10 */	stmw r24, 0x10(r1)
/* 0000511C 000051E0  7C 79 1B 78 */	mr r25, r3
/* 00005120 000051E4  83 A3 00 18 */	lwz r29, 0x18(r3)
/* 00005124 000051E8  4B FF FE F1 */	bl pouchGetPtr
/* 00005128 000051EC  80 9D 00 00 */	lwz r4, 0x0(r29)
/* 0000512C 000051F0  7C 7E 1B 78 */	mr r30, r3
/* 00005130 000051F4  7F 23 CB 78 */	mr r3, r25
/* 00005134 000051F8  4B FF FE E1 */	bl evtGetValue
/* 00005138 000051FC  7C 60 1B 78 */	mr r0, r3
/* 0000513C 00005200  7F 23 CB 78 */	mr r3, r25
/* 00005140 00005204  7C 04 03 78 */	mr r4, r0
/* 00005144 00005208  4B FF FE D1 */	bl BattleTransID
/* 00005148 0000520C  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0000514C 00005210  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00005150 00005214  7C 64 1B 78 */	mr r4, r3
/* 00005154 00005218  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00005158 0000521C  4B FF FE BD */	bl BattleGetUnitPtr
/* 0000515C 00005220  7C 7F 1B 79 */	mr. r31, r3
/* 00005160 00005224  40 82 00 0C */	bne .L_0000516C
/* 00005164 00005228  38 60 00 02 */	li r3, 0x2
/* 00005168 0000522C  48 00 02 74 */	b .L_000053DC
.L_0000516C:
/* 0000516C 00005230  80 9D 00 04 */	lwz r4, 0x4(r29)
/* 00005170 00005234  7F 23 CB 78 */	mr r3, r25
/* 00005174 00005238  4B FF FE A1 */	bl evtGetValue
/* 00005178 0000523C  7C 60 1B 78 */	mr r0, r3
/* 0000517C 00005240  7F 23 CB 78 */	mr r3, r25
/* 00005180 00005244  7C 04 03 78 */	mr r4, r0
/* 00005184 00005248  4B FF FE 91 */	bl BattleTransID
/* 00005188 0000524C  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0000518C 00005250  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00005190 00005254  7C 64 1B 78 */	mr r4, r3
/* 00005194 00005258  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00005198 0000525C  4B FF FE 7D */	bl BattleGetUnitPtr
/* 0000519C 00005260  7C 7C 1B 79 */	mr. r28, r3
/* 000051A0 00005264  40 82 00 0C */	bne .L_000051AC
/* 000051A4 00005268  38 60 00 02 */	li r3, 0x2
/* 000051A8 0000526C  48 00 02 34 */	b .L_000053DC
.L_000051AC:
/* 000051AC 00005270  83 7D 00 08 */	lwz r27, 0x8(r29)
/* 000051B0 00005274  7F 23 CB 78 */	mr r3, r25
/* 000051B4 00005278  83 5D 00 0C */	lwz r26, 0xc(r29)
/* 000051B8 0000527C  38 A0 00 00 */	li r5, 0x0
/* 000051BC 00005280  83 1D 00 10 */	lwz r24, 0x10(r29)
/* 000051C0 00005284  7F 64 DB 78 */	mr r4, r27
/* 000051C4 00005288  4B FF FE 51 */	bl evtSetValue
/* 000051C8 0000528C  7F 23 CB 78 */	mr r3, r25
/* 000051CC 00005290  7F 44 D3 78 */	mr r4, r26
/* 000051D0 00005294  38 A0 00 00 */	li r5, 0x0
/* 000051D4 00005298  4B FF FE 41 */	bl evtSetValue
/* 000051D8 0000529C  7F 23 CB 78 */	mr r3, r25
/* 000051DC 000052A0  7F 04 C3 78 */	mr r4, r24
/* 000051E0 000052A4  38 A0 00 00 */	li r5, 0x0
/* 000051E4 000052A8  4B FF FE 31 */	bl evtSetValue
/* 000051E8 000052AC  38 60 00 64 */	li r3, 0x64
/* 000051EC 000052B0  4B FF FE 29 */	bl irand
/* 000051F0 000052B4  2C 03 00 64 */	cmpwi r3, 0x64
/* 000051F4 000052B8  40 80 00 70 */	bge .L_00005264
/* 000051F8 000052BC  4B FF FE 1D */	bl pouchGetCoin
/* 000051FC 000052C0  7C 7C 1B 78 */	mr r28, r3
/* 00005200 000052C4  3B A0 00 05 */	li r29, 0x5
/* 00005204 000052C8  2C 1C 00 05 */	cmpwi r28, 0x5
/* 00005208 000052CC  40 80 00 08 */	bge .L_00005210
/* 0000520C 000052D0  7F 9D E3 78 */	mr r29, r28
.L_00005210:
/* 00005210 000052D4  2C 1D 00 00 */	cmpwi r29, 0x0
/* 00005214 000052D8  40 81 00 48 */	ble .L_0000525C
/* 00005218 000052DC  7F 23 CB 78 */	mr r3, r25
/* 0000521C 000052E0  7F 64 DB 78 */	mr r4, r27
/* 00005220 000052E4  38 A0 00 79 */	li r5, 0x79
/* 00005224 000052E8  4B FF FD F1 */	bl evtSetValue
/* 00005228 000052EC  7F 23 CB 78 */	mr r3, r25
/* 0000522C 000052F0  7F 44 D3 78 */	mr r4, r26
/* 00005230 000052F4  38 A0 01 93 */	li r5, 0x193
/* 00005234 000052F8  4B FF FD E1 */	bl evtSetValue
/* 00005238 000052FC  7F 23 CB 78 */	mr r3, r25
/* 0000523C 00005300  7F 04 C3 78 */	mr r4, r24
/* 00005240 00005304  7F A5 EB 78 */	mr r5, r29
/* 00005244 00005308  4B FF FD D1 */	bl evtSetValue
/* 00005248 0000530C  38 00 00 79 */	li r0, 0x79
/* 0000524C 00005310  7C 7D E0 50 */	subf r3, r29, r28
/* 00005250 00005314  90 1F 03 08 */	stw r0, 0x308(r31)
/* 00005254 00005318  9B BF 03 10 */	stb r29, 0x310(r31)
/* 00005258 0000531C  4B FF FD BD */	bl pouchSetCoin
.L_0000525C:
/* 0000525C 00005320  38 60 00 02 */	li r3, 0x2
/* 00005260 00005324  48 00 01 7C */	b .L_000053DC
.L_00005264:
/* 00005264 00005328  38 00 00 14 */	li r0, 0x14
/* 00005268 0000532C  3B A0 00 00 */	li r29, 0x0
/* 0000526C 00005330  3B 00 00 00 */	li r24, 0x0
/* 00005270 00005334  38 60 00 00 */	li r3, 0x0
/* 00005274 00005338  7C 09 03 A6 */	mtctr r0
.L_00005278:
/* 00005278 0000533C  38 03 01 92 */	addi r0, r3, 0x192
/* 0000527C 00005340  7C 1E 02 AE */	lhax r0, r30, r0
/* 00005280 00005344  2C 00 00 00 */	cmpwi r0, 0x0
/* 00005284 00005348  41 82 00 08 */	beq .L_0000528C
/* 00005288 0000534C  3B 18 00 01 */	addi r24, r24, 0x1
.L_0000528C:
/* 0000528C 00005350  38 63 00 02 */	addi r3, r3, 0x2
/* 00005290 00005354  42 00 FF E8 */	bdnz .L_00005278
/* 00005294 00005358  2C 18 00 00 */	cmpwi r24, 0x0
/* 00005298 0000535C  41 81 00 0C */	bgt .L_000052A4
/* 0000529C 00005360  38 60 00 02 */	li r3, 0x2
/* 000052A0 00005364  48 00 01 3C */	b .L_000053DC
.L_000052A4:
/* 000052A4 00005368  7F 03 C3 78 */	mr r3, r24
/* 000052A8 0000536C  4B FF FD 6D */	bl irand
/* 000052AC 00005370  7C 03 C0 00 */	cmpw r3, r24
/* 000052B0 00005374  41 80 00 44 */	blt .L_000052F4
/* 000052B4 00005378  38 00 00 C8 */	li r0, 0xc8
/* 000052B8 0000537C  7C 78 18 50 */	subf r3, r24, r3
/* 000052BC 00005380  38 80 00 00 */	li r4, 0x0
/* 000052C0 00005384  7C 09 03 A6 */	mtctr r0
.L_000052C4:
/* 000052C4 00005388  38 04 01 FA */	addi r0, r4, 0x1fa
/* 000052C8 0000538C  7C 1E 02 AE */	lhax r0, r30, r0
/* 000052CC 00005390  2C 00 00 00 */	cmpwi r0, 0x0
/* 000052D0 00005394  41 82 00 18 */	beq .L_000052E8
/* 000052D4 00005398  34 63 FF FF */	subic. r3, r3, 0x1
/* 000052D8 0000539C  40 80 00 10 */	bge .L_000052E8
/* 000052DC 000053A0  7C 7E 22 14 */	add r3, r30, r4
/* 000052E0 000053A4  AB A3 01 FA */	lha r29, 0x1fa(r3)
/* 000052E4 000053A8  48 00 00 48 */	b .L_0000532C
.L_000052E8:
/* 000052E8 000053AC  38 84 00 02 */	addi r4, r4, 0x2
/* 000052EC 000053B0  42 00 FF D8 */	bdnz .L_000052C4
/* 000052F0 000053B4  48 00 00 3C */	b .L_0000532C
.L_000052F4:
/* 000052F4 000053B8  38 00 00 14 */	li r0, 0x14
/* 000052F8 000053BC  38 80 00 00 */	li r4, 0x0
/* 000052FC 000053C0  7C 09 03 A6 */	mtctr r0
.L_00005300:
/* 00005300 000053C4  38 04 01 92 */	addi r0, r4, 0x192
/* 00005304 000053C8  7C 1E 02 AE */	lhax r0, r30, r0
/* 00005308 000053CC  2C 00 00 00 */	cmpwi r0, 0x0
/* 0000530C 000053D0  41 82 00 18 */	beq .L_00005324
/* 00005310 000053D4  34 63 FF FF */	subic. r3, r3, 0x1
/* 00005314 000053D8  40 80 00 10 */	bge .L_00005324
/* 00005318 000053DC  7C 7E 22 14 */	add r3, r30, r4
/* 0000531C 000053E0  AB A3 01 92 */	lha r29, 0x192(r3)
/* 00005320 000053E4  48 00 00 0C */	b .L_0000532C
.L_00005324:
/* 00005324 000053E8  38 84 00 02 */	addi r4, r4, 0x2
/* 00005328 000053EC  42 00 FF D8 */	bdnz .L_00005300
.L_0000532C:
/* 0000532C 000053F0  2C 1D 00 00 */	cmpwi r29, 0x0
/* 00005330 000053F4  41 82 00 A8 */	beq .L_000053D8
/* 00005334 000053F8  7F A3 EB 78 */	mr r3, r29
/* 00005338 000053FC  4B FF FC DD */	bl pouchRemoveItem
/* 0000533C 00005400  2C 03 00 00 */	cmpwi r3, 0x0
/* 00005340 00005404  40 82 00 0C */	bne .L_0000534C
/* 00005344 00005408  38 60 00 02 */	li r3, 0x2
/* 00005348 0000540C  48 00 00 94 */	b .L_000053DC
.L_0000534C:
/* 0000534C 00005410  2C 1D 00 F0 */	cmpwi r29, 0xf0
/* 00005350 00005414  93 BF 03 08 */	stw r29, 0x308(r31)
/* 00005354 00005418  41 80 00 54 */	blt .L_000053A8
/* 00005358 0000541C  2C 1D 01 53 */	cmpwi r29, 0x153
/* 0000535C 00005420  40 80 00 4C */	bge .L_000053A8
/* 00005360 00005424  80 1C 00 08 */	lwz r0, 0x8(r28)
/* 00005364 00005428  2C 00 00 DE */	cmpwi r0, 0xde
/* 00005368 0000542C  40 82 00 18 */	bne .L_00005380
/* 0000536C 00005430  7F 83 E3 78 */	mr r3, r28
/* 00005370 00005434  38 80 00 03 */	li r4, 0x3
/* 00005374 00005438  38 A0 00 00 */	li r5, 0x0
/* 00005378 0000543C  4B FF FC 9D */	bl BtlUnit_EquipItem
/* 0000537C 00005440  48 00 00 24 */	b .L_000053A0
.L_00005380:
/* 00005380 00005444  2C 00 00 E0 */	cmpwi r0, 0xe0
/* 00005384 00005448  41 80 00 1C */	blt .L_000053A0
/* 00005388 0000544C  2C 00 00 E7 */	cmpwi r0, 0xe7
/* 0000538C 00005450  40 80 00 14 */	bge .L_000053A0
/* 00005390 00005454  7F 83 E3 78 */	mr r3, r28
/* 00005394 00005458  38 80 00 05 */	li r4, 0x5
/* 00005398 0000545C  38 A0 00 00 */	li r5, 0x0
/* 0000539C 00005460  4B FF FC 79 */	bl BtlUnit_EquipItem
.L_000053A0:
/* 000053A0 00005464  4B FF FC 75 */	bl pouchReviseMarioParam
/* 000053A4 00005468  4B FF FC 71 */	bl pouchRevisePartyParam
.L_000053A8:
/* 000053A8 0000546C  7F 23 CB 78 */	mr r3, r25
/* 000053AC 00005470  7F 64 DB 78 */	mr r4, r27
/* 000053B0 00005474  7F A5 EB 78 */	mr r5, r29
/* 000053B4 00005478  4B FF FC 61 */	bl evtSetValue
/* 000053B8 0000547C  1C 1D 00 28 */	mulli r0, r29, 0x28
/* 000053BC 00005480  3C 80 00 00 */	lis r4, itemDataTable@ha
/* 000053C0 00005484  7F 23 CB 78 */	mr r3, r25
/* 000053C4 00005488  38 84 00 00 */	addi r4, r4, itemDataTable@l
/* 000053C8 0000548C  7C A4 02 14 */	add r5, r4, r0
/* 000053CC 00005490  7F 44 D3 78 */	mr r4, r26
/* 000053D0 00005494  A0 A5 00 20 */	lhz r5, 0x20(r5)
/* 000053D4 00005498  4B FF FC 41 */	bl evtSetValue
.L_000053D8:
/* 000053D8 0000549C  38 60 00 02 */	li r3, 0x2
.L_000053DC:
/* 000053DC 000054A0  BB 01 00 10 */	lmw r24, 0x10(r1)
/* 000053E0 000054A4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 000053E4 000054A8  7C 08 03 A6 */	mtlr r0
/* 000053E8 000054AC  38 21 00 30 */	addi r1, r1, 0x30
/* 000053EC 000054B0  4E 80 00 20 */	blr
.endfn _steal_item

# 0x00003AD0..0x00003C98 | size: 0x1C8
.rodata
.balign 8

# .rodata:0x0 | 0x3AD0 | size: 0xE
.obj str_btl_un_borodo_tou2_0000d210, local
	.string "btl_un_borodo"
.endobj str_btl_un_borodo_tou2_0000d210

# .rodata:0xE | 0x3ADE | size: 0x2
.obj gap_03_00003ADE_rodata, global
.hidden gap_03_00003ADE_rodata
	.2byte 0x0000
.endobj gap_03_00003ADE_rodata

# .rodata:0x10 | 0x3AE0 | size: 0x18
.obj str_SFX_ENM_BORODO_DAMAG_tou2_0000d220, local
	.string "SFX_ENM_BORODO_DAMAGED1"
.endobj str_SFX_ENM_BORODO_DAMAG_tou2_0000d220

# .rodata:0x28 | 0x3AF8 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_tou2_0000d238, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_tou2_0000d238

# .rodata:0x3D | 0x3B0D | size: 0x3
.obj gap_03_00003B0D_rodata, global
.hidden gap_03_00003B0D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003B0D_rodata

# .rodata:0x40 | 0x3B10 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_tou2_0000d250, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_tou2_0000d250

# .rodata:0x54 | 0x3B24 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_tou2_0000d264, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_tou2_0000d264

# .rodata:0x6D | 0x3B3D | size: 0x3
.obj gap_03_00003B3D_rodata, global
.hidden gap_03_00003B3D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003B3D_rodata

# .rodata:0x70 | 0x3B40 | size: 0x4
.obj str_N_1_tou2_0000d280, local
	.string "N_1"
.endobj str_N_1_tou2_0000d280

# .rodata:0x74 | 0x3B44 | size: 0x4
.obj str_Y_1_tou2_0000d284, local
	.string "Y_1"
.endobj str_Y_1_tou2_0000d284

# .rodata:0x78 | 0x3B48 | size: 0x4
.obj str_K_1_tou2_0000d288, local
	.string "K_1"
.endobj str_K_1_tou2_0000d288

# .rodata:0x7C | 0x3B4C | size: 0x4
.obj str_X_1_tou2_0000d28c, local
	.string "X_1"
.endobj str_X_1_tou2_0000d28c

# .rodata:0x80 | 0x3B50 | size: 0x4
.obj str_S_1_tou2_0000d290, local
	.string "S_1"
.endobj str_S_1_tou2_0000d290

# .rodata:0x84 | 0x3B54 | size: 0x4
.obj str_Q_1_tou2_0000d294, local
	.string "Q_1"
.endobj str_Q_1_tou2_0000d294

# .rodata:0x88 | 0x3B58 | size: 0x4
.obj str_D_1_tou2_0000d298, local
	.string "D_1"
.endobj str_D_1_tou2_0000d298

# .rodata:0x8C | 0x3B5C | size: 0x4
.obj str_A_1_tou2_0000d29c, local
	.string "A_1"
.endobj str_A_1_tou2_0000d29c

# .rodata:0x90 | 0x3B60 | size: 0x4
.obj str_A_2_tou2_0000d2a0, local
	.string "A_2"
.endobj str_A_2_tou2_0000d2a0

# .rodata:0x94 | 0x3B64 | size: 0x4
.obj str_R_1_tou2_0000d2a4, local
	.string "R_1"
.endobj str_R_1_tou2_0000d2a4

# .rodata:0x98 | 0x3B68 | size: 0x4
.obj str_W_1_tou2_0000d2a8, local
	.string "W_1"
.endobj str_W_1_tou2_0000d2a8

# .rodata:0x9C | 0x3B6C | size: 0x4
.obj str_T_1_tou2_0000d2ac, local
	.string "T_1"
.endobj str_T_1_tou2_0000d2ac

# .rodata:0xA0 | 0x3B70 | size: 0x4
.obj str_S_2_tou2_0000d2b0, local
	.string "S_2"
.endobj str_S_2_tou2_0000d2b0

# .rodata:0xA4 | 0x3B74 | size: 0x4
.obj str_R_2_tou2_0000d2b4, local
	.string "R_2"
.endobj str_R_2_tou2_0000d2b4

# .rodata:0xA8 | 0x3B78 | size: 0x4
.obj str_W_2_tou2_0000d2b8, local
	.string "W_2"
.endobj str_W_2_tou2_0000d2b8

# .rodata:0xAC | 0x3B7C | size: 0x9
.obj str_c_borodo_tou2_0000d2bc, local
	.string "c_borodo"
.endobj str_c_borodo_tou2_0000d2bc

# .rodata:0xB5 | 0x3B85 | size: 0x3
.obj gap_03_00003B85_rodata, global
.hidden gap_03_00003B85_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003B85_rodata

# .rodata:0xB8 | 0x3B88 | size: 0x16
.obj str_SFX_ENM_BORODO_MOVE1_tou2_0000d2c8, local
	.string "SFX_ENM_BORODO_MOVE1L"
.endobj str_SFX_ENM_BORODO_MOVE1_tou2_0000d2c8

# .rodata:0xCE | 0x3B9E | size: 0x2
.obj gap_03_00003B9E_rodata, global
.hidden gap_03_00003B9E_rodata
	.2byte 0x0000
.endobj gap_03_00003B9E_rodata

# .rodata:0xD0 | 0x3BA0 | size: 0x16
.obj str_SFX_ENM_BORODO_MOVE1_tou2_0000d2e0, local
	.string "SFX_ENM_BORODO_MOVE1R"
.endobj str_SFX_ENM_BORODO_MOVE1_tou2_0000d2e0

# .rodata:0xE6 | 0x3BB6 | size: 0x2
.obj gap_03_00003BB6_rodata, global
.hidden gap_03_00003BB6_rodata
	.2byte 0x0000
.endobj gap_03_00003BB6_rodata

# .rodata:0xE8 | 0x3BB8 | size: 0x14
.obj str_SFX_ENM_BORODO_ATT1_tou2_0000d2f8, local
	.string "SFX_ENM_BORODO_ATT1"
.endobj str_SFX_ENM_BORODO_ATT1_tou2_0000d2f8

# .rodata:0xFC | 0x3BCC | size: 0x4
.obj str_O_1_tou2_0000d30c, local
	.string "O_1"
.endobj str_O_1_tou2_0000d30c

# .rodata:0x100 | 0x3BD0 | size: 0x18
.obj str_SFX_ENM_BORODO_SUCCE_tou2_0000d310, local
	.string "SFX_ENM_BORODO_SUCCESS1"
.endobj str_SFX_ENM_BORODO_SUCCE_tou2_0000d310

# .rodata:0x118 | 0x3BE8 | size: 0x18
.obj str_btl_msg_steal_item_l_tou2_0000d328, local
	.string "btl_msg_steal_item_lost"
.endobj str_btl_msg_steal_item_l_tou2_0000d328

# .rodata:0x130 | 0x3C00 | size: 0x18
.obj str_SFX_ENM_BORODO_INCLI_tou2_0000d340, local
	.string "SFX_ENM_BORODO_INCLINE1"
.endobj str_SFX_ENM_BORODO_INCLI_tou2_0000d340

# .rodata:0x148 | 0x3C18 | size: 0x4
.obj str_B_1_tou2_0000d358, local
	.string "B_1"
.endobj str_B_1_tou2_0000d358

# .rodata:0x14C | 0x3C1C | size: 0x4
.obj str_R_4_tou2_0000d35c, local
	.string "R_4"
.endobj str_R_4_tou2_0000d35c

# .rodata:0x150 | 0x3C20 | size: 0x4
.obj str_O_2_tou2_0000d360, local
	.string "O_2"
.endobj str_O_2_tou2_0000d360

# .rodata:0x154 | 0x3C24 | size: 0x16
.obj str_SFX_ENM_BORODO_LAUGH_tou2_0000d364, local
	.string "SFX_ENM_BORODO_LAUGH1"
.endobj str_SFX_ENM_BORODO_LAUGH_tou2_0000d364

# .rodata:0x16A | 0x3C3A | size: 0x2
.obj gap_03_00003C3A_rodata, global
.hidden gap_03_00003C3A_rodata
	.2byte 0x0000
.endobj gap_03_00003C3A_rodata

# .rodata:0x16C | 0x3C3C | size: 0x15
.obj str_SFX_ENM_BORODO_WAIT1_tou2_0000d37c, local
	.string "SFX_ENM_BORODO_WAIT1"
.endobj str_SFX_ENM_BORODO_WAIT1_tou2_0000d37c

# .rodata:0x181 | 0x3C51 | size: 0x3
.obj gap_03_00003C51_rodata, global
.hidden gap_03_00003C51_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003C51_rodata

# .rodata:0x184 | 0x3C54 | size: 0x4
.obj str_R_3_tou2_0000d394, local
	.string "R_3"
.endobj str_R_3_tou2_0000d394

# .rodata:0x188 | 0x3C58 | size: 0x15
.obj str_SFX_ENM_BORODO_JUMP1_tou2_0000d398, local
	.string "SFX_ENM_BORODO_JUMP1"
.endobj str_SFX_ENM_BORODO_JUMP1_tou2_0000d398

# .rodata:0x19D | 0x3C6D | size: 0x3
.obj gap_03_00003C6D_rodata, global
.hidden gap_03_00003C6D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003C6D_rodata

# .rodata:0x1A0 | 0x3C70 | size: 0x17
.obj str_SFX_ENM_BORODO_ESCAP_tou2_0000d3b0, local
	.string "SFX_ENM_BORODO_ESCAPE1"
.endobj str_SFX_ENM_BORODO_ESCAP_tou2_0000d3b0

# .rodata:0x1B7 | 0x3C87 | size: 0x1
.obj gap_03_00003C87_rodata, global
.hidden gap_03_00003C87_rodata
	.byte 0x00
.endobj gap_03_00003C87_rodata

# .rodata:0x1B8 | 0x3C88 | size: 0x9
.obj str_recovery_tou2_0000d3c8, local
	.string "recovery"
.endobj str_recovery_tou2_0000d3c8

# .rodata:0x1C1 | 0x3C91 | size: 0x7
.obj gap_03_00003C91_rodata, global
.hidden gap_03_00003C91_rodata
	.4byte 0x00000000
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003C91_rodata

# 0x0001B130..0x0001CD60 | size: 0x1C30
.data
.balign 8

# .data:0x0 | 0x1B130 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x1B138 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x1B13C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x1B140 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x1B144 | size: 0x4
.obj gap_04_0001B144_data, global
.hidden gap_04_0001B144_data
	.4byte 0x00000000
.endobj gap_04_0001B144_data

# .data:0x18 | 0x1B148 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x1B150 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x1B154 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x1B158 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x1B160 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x1B164 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x1B168 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x1B16C | size: 0x4
.obj gap_04_0001B16C_data, global
.hidden gap_04_0001B16C_data
	.4byte 0x00000000
.endobj gap_04_0001B16C_data

# .data:0x40 | 0x1B170 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x1B178 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x1B17C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x1B180 | size: 0xC4
.obj unit_borodo_26_data_1B180, global
	.4byte 0x0000002C
	.4byte str_btl_un_borodo_tou2_0000d210
	.4byte 0x00050000
	.4byte 0x01010B00
	.4byte 0x02460132
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
	.4byte str_SFX_ENM_BORODO_DAMAG_tou2_0000d220
	.4byte str_SFX_BTL_DAMAGE_FIRE1_tou2_0000d238
	.4byte str_SFX_BTL_DAMAGE_ICE1_tou2_0000d250
	.4byte str_SFX_BTL_DAMAGE_BIRIB_tou2_0000d264
	.4byte 0x00000000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_borodo_26_data_1B180

# .data:0x114 | 0x1B244 | size: 0xC0
.obj weapon_borodo_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
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

# .data:0x1D4 | 0x1B304 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x1D9 | 0x1B309 | size: 0x3
.obj gap_04_0001B309_data, global
.hidden gap_04_0001B309_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0001B309_data

# .data:0x1DC | 0x1B30C | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x1E1 | 0x1B311 | size: 0x3
.obj gap_04_0001B311_data, global
.hidden gap_04_0001B311_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0001B311_data

# .data:0x1E4 | 0x1B314 | size: 0x16
.obj regist, local
	.ascii "dZFddddFd_d_ddZ_PdZdd_"
.endobj regist

# .data:0x1FA | 0x1B32A | size: 0x2
.obj gap_04_0001B32A_data, global
.hidden gap_04_0001B32A_data
	.2byte 0x0000
.endobj gap_04_0001B32A_data

# .data:0x1FC | 0x1B32C | size: 0xA0
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_N_1_tou2_0000d280
	.4byte 0x00000002
	.4byte str_Y_1_tou2_0000d284
	.4byte 0x00000009
	.4byte str_Y_1_tou2_0000d284
	.4byte 0x00000005
	.4byte str_K_1_tou2_0000d288
	.4byte 0x00000004
	.4byte str_X_1_tou2_0000d28c
	.4byte 0x00000003
	.4byte str_X_1_tou2_0000d28c
	.4byte 0x0000001C
	.4byte str_S_1_tou2_0000d290
	.4byte 0x0000001D
	.4byte str_Q_1_tou2_0000d294
	.4byte 0x0000001E
	.4byte str_Q_1_tou2_0000d294
	.4byte 0x0000001F
	.4byte str_S_1_tou2_0000d290
	.4byte 0x00000027
	.4byte str_D_1_tou2_0000d298
	.4byte 0x00000032
	.4byte str_A_1_tou2_0000d29c
	.4byte 0x00000033
	.4byte str_A_2_tou2_0000d2a0
	.4byte 0x0000002A
	.4byte str_R_1_tou2_0000d2a4
	.4byte 0x00000029
	.4byte str_R_1_tou2_0000d2a4
	.4byte 0x00000028
	.4byte str_W_1_tou2_0000d2a8
	.4byte 0x00000038
	.4byte str_X_1_tou2_0000d28c
	.4byte 0x00000039
	.4byte str_X_1_tou2_0000d28c
	.4byte 0x00000041
	.4byte str_T_1_tou2_0000d2ac
	.4byte 0x00000045
	.4byte str_S_1_tou2_0000d290
.endobj pose_table

# .data:0x29C | 0x1B3CC | size: 0x90
.obj pose_table_item_have, local
	.4byte 0x00000001
	.4byte str_N_1_tou2_0000d280
	.4byte 0x00000002
	.4byte str_Y_1_tou2_0000d284
	.4byte 0x00000009
	.4byte str_Y_1_tou2_0000d284
	.4byte 0x00000005
	.4byte str_K_1_tou2_0000d288
	.4byte 0x00000004
	.4byte str_X_1_tou2_0000d28c
	.4byte 0x00000003
	.4byte str_X_1_tou2_0000d28c
	.4byte 0x0000001C
	.4byte str_S_2_tou2_0000d2b0
	.4byte 0x0000001D
	.4byte str_Q_1_tou2_0000d294
	.4byte 0x0000001E
	.4byte str_Q_1_tou2_0000d294
	.4byte 0x0000001F
	.4byte str_S_2_tou2_0000d2b0
	.4byte 0x00000027
	.4byte str_D_1_tou2_0000d298
	.4byte 0x00000032
	.4byte str_A_1_tou2_0000d29c
	.4byte 0x00000033
	.4byte str_A_2_tou2_0000d2a0
	.4byte 0x0000002A
	.4byte str_R_2_tou2_0000d2b4
	.4byte 0x00000029
	.4byte str_R_2_tou2_0000d2b4
	.4byte 0x00000028
	.4byte str_W_2_tou2_0000d2b8
	.4byte 0x00000041
	.4byte str_S_2_tou2_0000d2b0
	.4byte 0x00000045
	.4byte str_S_2_tou2_0000d2b0
.endobj pose_table_item_have

# .data:0x32C | 0x1B45C | size: 0x10
.obj data_table, local
	.4byte 0x00000033
	.4byte unk_evt_tou2_0002e7b0
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x33C | 0x1B46C | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_borodo_tou2_0000d210
	.4byte str_c_borodo_tou2_0000d2bc
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

# .data:0x388 | 0x1B4B8 | size: 0xE4
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
	.4byte str_SFX_ENM_BORODO_MOVE1_tou2_0000d2c8
	.4byte str_SFX_ENM_BORODO_MOVE1_tou2_0000d2e0
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0007005B
	.4byte btlevtcmd_SetWalkSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BORODO_MOVE1_tou2_0000d2c8
	.4byte str_SFX_ENM_BORODO_MOVE1_tou2_0000d2e0
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

# .data:0x46C | 0x1B59C | size: 0x28
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

# .data:0x494 | 0x1B5C4 | size: 0x8
.obj phase_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0x49C | 0x1B5CC | size: 0xEC
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
	.4byte 0x000000E1
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0x00000019
	.4byte 0x0001005E
	.4byte _borodo_normal_attack
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte _borodo_steal_attack
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x588 | 0x1B6B8 | size: 0x7DC
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
	.4byte str_SFX_ENM_BORODO_MOVE1_tou2_0000d2c8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8E
	.4byte 0x00010009
	.4byte 0x00000003
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BORODO_MOVE1_tou2_0000d2e0
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
	.4byte str_SFX_ENM_BORODO_ATT1_tou2_0000d2f8
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
	.4byte str_SFX_ENM_BORODO_ATT1_tou2_0000d2f8
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
	.4byte str_SFX_ENM_BORODO_MOVE1_tou2_0000d2c8
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
	.4byte str_SFX_ENM_BORODO_MOVE1_tou2_0000d2e0
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
	.4byte str_O_1_tou2_0000d30c
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
	.4byte str_X_1_tou2_0000d28c
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

# .data:0xD64 | 0x1BE94 | size: 0x988
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
	.4byte str_SFX_ENM_BORODO_MOVE1_tou2_0000d2c8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8E
	.4byte 0x00010009
	.4byte 0x00000003
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BORODO_MOVE1_tou2_0000d2e0
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
	.4byte str_SFX_ENM_BORODO_ATT1_tou2_0000d2f8
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
	.4byte str_SFX_ENM_BORODO_ATT1_tou2_0000d2f8
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
	.4byte str_SFX_ENM_BORODO_MOVE1_tou2_0000d2c8
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
	.4byte str_SFX_ENM_BORODO_MOVE1_tou2_0000d2e0
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
	.4byte str_SFX_ENM_BORODO_SUCCE_tou2_0000d310
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
	.4byte str_btl_msg_steal_item_l_tou2_0000d328
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
	.4byte str_O_1_tou2_0000d30c
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
	.4byte str_SFX_ENM_BORODO_INCLI_tou2_0000d340
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_B_1_tou2_0000d358
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
	.4byte str_R_4_tou2_0000d35c
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
	.4byte str_O_2_tou2_0000d360
	.4byte 0x00010009
	.4byte 0x0000000E
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BORODO_LAUGH_tou2_0000d364
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

# .data:0x16EC | 0x1C81C | size: 0x1CC
.obj escape_event, local
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BORODO_WAIT1_tou2_0000d37c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_R_3_tou2_0000d394
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
	.4byte str_SFX_ENM_BORODO_JUMP1_tou2_0000d398
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
	.4byte str_SFX_ENM_BORODO_ESCAP_tou2_0000d3b0
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

# .data:0x18B8 | 0x1C9E8 | size: 0x68
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

# .data:0x1920 | 0x1CA50 | size: 0x310
.obj unk_evt_tou2_0002e7b0, local
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
	.4byte str_recovery_tou2_0000d3c8
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
	.4byte 0x00000000
.endobj unk_evt_tou2_0002e7b0
