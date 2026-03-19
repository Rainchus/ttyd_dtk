.include "macros.inc"
.file "unit_borodo_king.o"

# 0x000090FC..0x000093E0 | size: 0x2E4
.text
.balign 4

# .text:0x0 | 0x90FC | size: 0x2E4
.fn _steal_item, local
/* 000090FC 000091C0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00009100 000091C4  7C 08 02 A6 */	mflr r0
/* 00009104 000091C8  90 01 00 34 */	stw r0, 0x34(r1)
/* 00009108 000091CC  BF 01 00 10 */	stmw r24, 0x10(r1)
/* 0000910C 000091D0  7C 79 1B 78 */	mr r25, r3
/* 00009110 000091D4  83 A3 00 18 */	lwz r29, 0x18(r3)
/* 00009114 000091D8  4B FF BF 01 */	bl pouchGetPtr
/* 00009118 000091DC  80 9D 00 00 */	lwz r4, 0x0(r29)
/* 0000911C 000091E0  7C 7E 1B 78 */	mr r30, r3
/* 00009120 000091E4  7F 23 CB 78 */	mr r3, r25
/* 00009124 000091E8  4B FF BE F1 */	bl evtGetValue
/* 00009128 000091EC  7C 60 1B 78 */	mr r0, r3
/* 0000912C 000091F0  7F 23 CB 78 */	mr r3, r25
/* 00009130 000091F4  7C 04 03 78 */	mr r4, r0
/* 00009134 000091F8  4B FF BE E1 */	bl BattleTransID
/* 00009138 000091FC  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0000913C 00009200  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00009140 00009204  7C 64 1B 78 */	mr r4, r3
/* 00009144 00009208  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00009148 0000920C  4B FF BE CD */	bl BattleGetUnitPtr
/* 0000914C 00009210  7C 7F 1B 79 */	mr. r31, r3
/* 00009150 00009214  40 82 00 0C */	bne .L_0000915C
/* 00009154 00009218  38 60 00 02 */	li r3, 0x2
/* 00009158 0000921C  48 00 02 74 */	b .L_000093CC
.L_0000915C:
/* 0000915C 00009220  80 9D 00 04 */	lwz r4, 0x4(r29)
/* 00009160 00009224  7F 23 CB 78 */	mr r3, r25
/* 00009164 00009228  4B FF BE B1 */	bl evtGetValue
/* 00009168 0000922C  7C 60 1B 78 */	mr r0, r3
/* 0000916C 00009230  7F 23 CB 78 */	mr r3, r25
/* 00009170 00009234  7C 04 03 78 */	mr r4, r0
/* 00009174 00009238  4B FF BE A1 */	bl BattleTransID
/* 00009178 0000923C  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0000917C 00009240  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00009180 00009244  7C 64 1B 78 */	mr r4, r3
/* 00009184 00009248  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00009188 0000924C  4B FF BE 8D */	bl BattleGetUnitPtr
/* 0000918C 00009250  7C 7C 1B 79 */	mr. r28, r3
/* 00009190 00009254  40 82 00 0C */	bne .L_0000919C
/* 00009194 00009258  38 60 00 02 */	li r3, 0x2
/* 00009198 0000925C  48 00 02 34 */	b .L_000093CC
.L_0000919C:
/* 0000919C 00009260  83 7D 00 08 */	lwz r27, 0x8(r29)
/* 000091A0 00009264  7F 23 CB 78 */	mr r3, r25
/* 000091A4 00009268  83 5D 00 0C */	lwz r26, 0xc(r29)
/* 000091A8 0000926C  38 A0 00 00 */	li r5, 0x0
/* 000091AC 00009270  83 1D 00 10 */	lwz r24, 0x10(r29)
/* 000091B0 00009274  7F 64 DB 78 */	mr r4, r27
/* 000091B4 00009278  4B FF BE 61 */	bl evtSetValue
/* 000091B8 0000927C  7F 23 CB 78 */	mr r3, r25
/* 000091BC 00009280  7F 44 D3 78 */	mr r4, r26
/* 000091C0 00009284  38 A0 00 00 */	li r5, 0x0
/* 000091C4 00009288  4B FF BE 51 */	bl evtSetValue
/* 000091C8 0000928C  7F 23 CB 78 */	mr r3, r25
/* 000091CC 00009290  7F 04 C3 78 */	mr r4, r24
/* 000091D0 00009294  38 A0 00 00 */	li r5, 0x0
/* 000091D4 00009298  4B FF BE 41 */	bl evtSetValue
/* 000091D8 0000929C  38 60 00 64 */	li r3, 0x64
/* 000091DC 000092A0  4B FF BE 39 */	bl irand
/* 000091E0 000092A4  2C 03 00 28 */	cmpwi r3, 0x28
/* 000091E4 000092A8  40 80 00 70 */	bge .L_00009254
/* 000091E8 000092AC  4B FF BE 2D */	bl pouchGetCoin
/* 000091EC 000092B0  7C 7C 1B 78 */	mr r28, r3
/* 000091F0 000092B4  3B A0 00 0A */	li r29, 0xa
/* 000091F4 000092B8  2C 1C 00 0A */	cmpwi r28, 0xa
/* 000091F8 000092BC  40 80 00 08 */	bge .L_00009200
/* 000091FC 000092C0  7F 9D E3 78 */	mr r29, r28
.L_00009200:
/* 00009200 000092C4  2C 1D 00 00 */	cmpwi r29, 0x0
/* 00009204 000092C8  40 81 00 48 */	ble .L_0000924C
/* 00009208 000092CC  7F 23 CB 78 */	mr r3, r25
/* 0000920C 000092D0  7F 64 DB 78 */	mr r4, r27
/* 00009210 000092D4  38 A0 00 79 */	li r5, 0x79
/* 00009214 000092D8  4B FF BE 01 */	bl evtSetValue
/* 00009218 000092DC  7F 23 CB 78 */	mr r3, r25
/* 0000921C 000092E0  7F 44 D3 78 */	mr r4, r26
/* 00009220 000092E4  38 A0 01 93 */	li r5, 0x193
/* 00009224 000092E8  4B FF BD F1 */	bl evtSetValue
/* 00009228 000092EC  7F 23 CB 78 */	mr r3, r25
/* 0000922C 000092F0  7F 04 C3 78 */	mr r4, r24
/* 00009230 000092F4  7F A5 EB 78 */	mr r5, r29
/* 00009234 000092F8  4B FF BD E1 */	bl evtSetValue
/* 00009238 000092FC  38 00 00 79 */	li r0, 0x79
/* 0000923C 00009300  7C 7D E0 50 */	subf r3, r29, r28
/* 00009240 00009304  90 1F 03 08 */	stw r0, 0x308(r31)
/* 00009244 00009308  9B BF 03 10 */	stb r29, 0x310(r31)
/* 00009248 0000930C  4B FF BD CD */	bl pouchSetCoin
.L_0000924C:
/* 0000924C 00009310  38 60 00 02 */	li r3, 0x2
/* 00009250 00009314  48 00 01 7C */	b .L_000093CC
.L_00009254:
/* 00009254 00009318  38 00 00 14 */	li r0, 0x14
/* 00009258 0000931C  3B A0 00 00 */	li r29, 0x0
/* 0000925C 00009320  3B 00 00 00 */	li r24, 0x0
/* 00009260 00009324  38 60 00 00 */	li r3, 0x0
/* 00009264 00009328  7C 09 03 A6 */	mtctr r0
.L_00009268:
/* 00009268 0000932C  38 03 01 92 */	addi r0, r3, 0x192
/* 0000926C 00009330  7C 1E 02 AE */	lhax r0, r30, r0
/* 00009270 00009334  2C 00 00 00 */	cmpwi r0, 0x0
/* 00009274 00009338  41 82 00 08 */	beq .L_0000927C
/* 00009278 0000933C  3B 18 00 01 */	addi r24, r24, 0x1
.L_0000927C:
/* 0000927C 00009340  38 63 00 02 */	addi r3, r3, 0x2
/* 00009280 00009344  42 00 FF E8 */	bdnz .L_00009268
/* 00009284 00009348  2C 18 00 00 */	cmpwi r24, 0x0
/* 00009288 0000934C  41 81 00 0C */	bgt .L_00009294
/* 0000928C 00009350  38 60 00 02 */	li r3, 0x2
/* 00009290 00009354  48 00 01 3C */	b .L_000093CC
.L_00009294:
/* 00009294 00009358  7F 03 C3 78 */	mr r3, r24
/* 00009298 0000935C  4B FF BD 7D */	bl irand
/* 0000929C 00009360  7C 03 C0 00 */	cmpw r3, r24
/* 000092A0 00009364  41 80 00 44 */	blt .L_000092E4
/* 000092A4 00009368  38 00 00 C8 */	li r0, 0xc8
/* 000092A8 0000936C  7C 78 18 50 */	subf r3, r24, r3
/* 000092AC 00009370  38 80 00 00 */	li r4, 0x0
/* 000092B0 00009374  7C 09 03 A6 */	mtctr r0
.L_000092B4:
/* 000092B4 00009378  38 04 01 FA */	addi r0, r4, 0x1fa
/* 000092B8 0000937C  7C 1E 02 AE */	lhax r0, r30, r0
/* 000092BC 00009380  2C 00 00 00 */	cmpwi r0, 0x0
/* 000092C0 00009384  41 82 00 18 */	beq .L_000092D8
/* 000092C4 00009388  34 63 FF FF */	subic. r3, r3, 0x1
/* 000092C8 0000938C  40 80 00 10 */	bge .L_000092D8
/* 000092CC 00009390  7C 7E 22 14 */	add r3, r30, r4
/* 000092D0 00009394  AB A3 01 FA */	lha r29, 0x1fa(r3)
/* 000092D4 00009398  48 00 00 48 */	b .L_0000931C
.L_000092D8:
/* 000092D8 0000939C  38 84 00 02 */	addi r4, r4, 0x2
/* 000092DC 000093A0  42 00 FF D8 */	bdnz .L_000092B4
/* 000092E0 000093A4  48 00 00 3C */	b .L_0000931C
.L_000092E4:
/* 000092E4 000093A8  38 00 00 14 */	li r0, 0x14
/* 000092E8 000093AC  38 80 00 00 */	li r4, 0x0
/* 000092EC 000093B0  7C 09 03 A6 */	mtctr r0
.L_000092F0:
/* 000092F0 000093B4  38 04 01 92 */	addi r0, r4, 0x192
/* 000092F4 000093B8  7C 1E 02 AE */	lhax r0, r30, r0
/* 000092F8 000093BC  2C 00 00 00 */	cmpwi r0, 0x0
/* 000092FC 000093C0  41 82 00 18 */	beq .L_00009314
/* 00009300 000093C4  34 63 FF FF */	subic. r3, r3, 0x1
/* 00009304 000093C8  40 80 00 10 */	bge .L_00009314
/* 00009308 000093CC  7C 7E 22 14 */	add r3, r30, r4
/* 0000930C 000093D0  AB A3 01 92 */	lha r29, 0x192(r3)
/* 00009310 000093D4  48 00 00 0C */	b .L_0000931C
.L_00009314:
/* 00009314 000093D8  38 84 00 02 */	addi r4, r4, 0x2
/* 00009318 000093DC  42 00 FF D8 */	bdnz .L_000092F0
.L_0000931C:
/* 0000931C 000093E0  2C 1D 00 00 */	cmpwi r29, 0x0
/* 00009320 000093E4  41 82 00 A8 */	beq .L_000093C8
/* 00009324 000093E8  7F A3 EB 78 */	mr r3, r29
/* 00009328 000093EC  4B FF BC ED */	bl pouchRemoveItem
/* 0000932C 000093F0  2C 03 00 00 */	cmpwi r3, 0x0
/* 00009330 000093F4  40 82 00 0C */	bne .L_0000933C
/* 00009334 000093F8  38 60 00 02 */	li r3, 0x2
/* 00009338 000093FC  48 00 00 94 */	b .L_000093CC
.L_0000933C:
/* 0000933C 00009400  2C 1D 00 F0 */	cmpwi r29, 0xf0
/* 00009340 00009404  93 BF 03 08 */	stw r29, 0x308(r31)
/* 00009344 00009408  41 80 00 54 */	blt .L_00009398
/* 00009348 0000940C  2C 1D 01 53 */	cmpwi r29, 0x153
/* 0000934C 00009410  40 80 00 4C */	bge .L_00009398
/* 00009350 00009414  80 1C 00 08 */	lwz r0, 0x8(r28)
/* 00009354 00009418  2C 00 00 DE */	cmpwi r0, 0xde
/* 00009358 0000941C  40 82 00 18 */	bne .L_00009370
/* 0000935C 00009420  7F 83 E3 78 */	mr r3, r28
/* 00009360 00009424  38 80 00 03 */	li r4, 0x3
/* 00009364 00009428  38 A0 00 00 */	li r5, 0x0
/* 00009368 0000942C  4B FF BC AD */	bl BtlUnit_EquipItem
/* 0000936C 00009430  48 00 00 24 */	b .L_00009390
.L_00009370:
/* 00009370 00009434  2C 00 00 E0 */	cmpwi r0, 0xe0
/* 00009374 00009438  41 80 00 1C */	blt .L_00009390
/* 00009378 0000943C  2C 00 00 E7 */	cmpwi r0, 0xe7
/* 0000937C 00009440  40 80 00 14 */	bge .L_00009390
/* 00009380 00009444  7F 83 E3 78 */	mr r3, r28
/* 00009384 00009448  38 80 00 05 */	li r4, 0x5
/* 00009388 0000944C  38 A0 00 00 */	li r5, 0x0
/* 0000938C 00009450  4B FF BC 89 */	bl BtlUnit_EquipItem
.L_00009390:
/* 00009390 00009454  4B FF BC 85 */	bl pouchReviseMarioParam
/* 00009394 00009458  4B FF BC 81 */	bl pouchRevisePartyParam
.L_00009398:
/* 00009398 0000945C  7F 23 CB 78 */	mr r3, r25
/* 0000939C 00009460  7F 64 DB 78 */	mr r4, r27
/* 000093A0 00009464  7F A5 EB 78 */	mr r5, r29
/* 000093A4 00009468  4B FF BC 71 */	bl evtSetValue
/* 000093A8 0000946C  1C 1D 00 28 */	mulli r0, r29, 0x28
/* 000093AC 00009470  3C 80 00 00 */	lis r4, itemDataTable@ha
/* 000093B0 00009474  7F 23 CB 78 */	mr r3, r25
/* 000093B4 00009478  38 84 00 00 */	addi r4, r4, itemDataTable@l
/* 000093B8 0000947C  7C A4 02 14 */	add r5, r4, r0
/* 000093BC 00009480  7F 44 D3 78 */	mr r4, r26
/* 000093C0 00009484  A0 A5 00 20 */	lhz r5, 0x20(r5)
/* 000093C4 00009488  4B FF BC 51 */	bl evtSetValue
.L_000093C8:
/* 000093C8 0000948C  38 60 00 02 */	li r3, 0x2
.L_000093CC:
/* 000093CC 00009490  BB 01 00 10 */	lmw r24, 0x10(r1)
/* 000093D0 00009494  80 01 00 34 */	lwz r0, 0x34(r1)
/* 000093D4 00009498  7C 08 03 A6 */	mtlr r0
/* 000093D8 0000949C  38 21 00 30 */	addi r1, r1, 0x30
/* 000093DC 000094A0  4E 80 00 20 */	blr
.endfn _steal_item

# 0x00007A40..0x00007C08 | size: 0x1C8
.rodata
.balign 8

# .rodata:0x0 | 0x7A40 | size: 0x13
.obj str_btl_un_borodo_king_tou2_00011180, local
	.string "btl_un_borodo_king"
.endobj str_btl_un_borodo_king_tou2_00011180

# .rodata:0x13 | 0x7A53 | size: 0x1
.obj gap_03_00007A53_rodata, global
.hidden gap_03_00007A53_rodata
	.byte 0x00
.endobj gap_03_00007A53_rodata

# .rodata:0x14 | 0x7A54 | size: 0x18
.obj str_SFX_ENM_BORODO_DAMAG_tou2_00011194, local
	.string "SFX_ENM_BORODO_DAMAGED1"
.endobj str_SFX_ENM_BORODO_DAMAG_tou2_00011194

# .rodata:0x2C | 0x7A6C | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_tou2_000111ac, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_tou2_000111ac

# .rodata:0x41 | 0x7A81 | size: 0x3
.obj gap_03_00007A81_rodata, global
.hidden gap_03_00007A81_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007A81_rodata

# .rodata:0x44 | 0x7A84 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_tou2_000111c4, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_tou2_000111c4

# .rodata:0x58 | 0x7A98 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_tou2_000111d8, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_tou2_000111d8

# .rodata:0x71 | 0x7AB1 | size: 0x3
.obj gap_03_00007AB1_rodata, global
.hidden gap_03_00007AB1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007AB1_rodata

# .rodata:0x74 | 0x7AB4 | size: 0x4
.obj str_N_1_tou2_000111f4, local
	.string "N_1"
.endobj str_N_1_tou2_000111f4

# .rodata:0x78 | 0x7AB8 | size: 0x4
.obj str_Y_1_tou2_000111f8, local
	.string "Y_1"
.endobj str_Y_1_tou2_000111f8

# .rodata:0x7C | 0x7ABC | size: 0x4
.obj str_K_1_tou2_000111fc, local
	.string "K_1"
.endobj str_K_1_tou2_000111fc

# .rodata:0x80 | 0x7AC0 | size: 0x4
.obj str_X_1_tou2_00011200, local
	.string "X_1"
.endobj str_X_1_tou2_00011200

# .rodata:0x84 | 0x7AC4 | size: 0x4
.obj str_S_1_tou2_00011204, local
	.string "S_1"
.endobj str_S_1_tou2_00011204

# .rodata:0x88 | 0x7AC8 | size: 0x4
.obj str_Q_1_tou2_00011208, local
	.string "Q_1"
.endobj str_Q_1_tou2_00011208

# .rodata:0x8C | 0x7ACC | size: 0x4
.obj str_D_1_tou2_0001120c, local
	.string "D_1"
.endobj str_D_1_tou2_0001120c

# .rodata:0x90 | 0x7AD0 | size: 0x4
.obj str_A_1_tou2_00011210, local
	.string "A_1"
.endobj str_A_1_tou2_00011210

# .rodata:0x94 | 0x7AD4 | size: 0x4
.obj str_A_2_tou2_00011214, local
	.string "A_2"
.endobj str_A_2_tou2_00011214

# .rodata:0x98 | 0x7AD8 | size: 0x4
.obj str_R_1_tou2_00011218, local
	.string "R_1"
.endobj str_R_1_tou2_00011218

# .rodata:0x9C | 0x7ADC | size: 0x4
.obj str_W_1_tou2_0001121c, local
	.string "W_1"
.endobj str_W_1_tou2_0001121c

# .rodata:0xA0 | 0x7AE0 | size: 0x4
.obj str_T_1_tou2_00011220, local
	.string "T_1"
.endobj str_T_1_tou2_00011220

# .rodata:0xA4 | 0x7AE4 | size: 0x4
.obj str_S_2_tou2_00011224, local
	.string "S_2"
.endobj str_S_2_tou2_00011224

# .rodata:0xA8 | 0x7AE8 | size: 0x4
.obj str_R_2_tou2_00011228, local
	.string "R_2"
.endobj str_R_2_tou2_00011228

# .rodata:0xAC | 0x7AEC | size: 0x4
.obj str_W_2_tou2_0001122c, local
	.string "W_2"
.endobj str_W_2_tou2_0001122c

# .rodata:0xB0 | 0x7AF0 | size: 0xB
.obj str_c_borodo_g_tou2_00011230, local
	.string "c_borodo_g"
.endobj str_c_borodo_g_tou2_00011230

# .rodata:0xBB | 0x7AFB | size: 0x1
.obj gap_03_00007AFB_rodata, global
.hidden gap_03_00007AFB_rodata
	.byte 0x00
.endobj gap_03_00007AFB_rodata

# .rodata:0xBC | 0x7AFC | size: 0x16
.obj str_SFX_ENM_BORODO_MOVE1_tou2_0001123c, local
	.string "SFX_ENM_BORODO_MOVE1L"
.endobj str_SFX_ENM_BORODO_MOVE1_tou2_0001123c

# .rodata:0xD2 | 0x7B12 | size: 0x2
.obj gap_03_00007B12_rodata, global
.hidden gap_03_00007B12_rodata
	.2byte 0x0000
.endobj gap_03_00007B12_rodata

# .rodata:0xD4 | 0x7B14 | size: 0x16
.obj str_SFX_ENM_BORODO_MOVE1_tou2_00011254, local
	.string "SFX_ENM_BORODO_MOVE1R"
.endobj str_SFX_ENM_BORODO_MOVE1_tou2_00011254

# .rodata:0xEA | 0x7B2A | size: 0x2
.obj gap_03_00007B2A_rodata, global
.hidden gap_03_00007B2A_rodata
	.2byte 0x0000
.endobj gap_03_00007B2A_rodata

# .rodata:0xEC | 0x7B2C | size: 0x14
.obj str_SFX_ENM_BORODO_ATT1_tou2_0001126c, local
	.string "SFX_ENM_BORODO_ATT1"
.endobj str_SFX_ENM_BORODO_ATT1_tou2_0001126c

# .rodata:0x100 | 0x7B40 | size: 0x4
.obj str_O_1_tou2_00011280, local
	.string "O_1"
.endobj str_O_1_tou2_00011280

# .rodata:0x104 | 0x7B44 | size: 0x18
.obj str_SFX_ENM_BORODO_SUCCE_tou2_00011284, local
	.string "SFX_ENM_BORODO_SUCCESS1"
.endobj str_SFX_ENM_BORODO_SUCCE_tou2_00011284

# .rodata:0x11C | 0x7B5C | size: 0x18
.obj str_btl_msg_steal_item_l_tou2_0001129c, local
	.string "btl_msg_steal_item_lost"
.endobj str_btl_msg_steal_item_l_tou2_0001129c

# .rodata:0x134 | 0x7B74 | size: 0x18
.obj str_SFX_ENM_BORODO_INCLI_tou2_000112b4, local
	.string "SFX_ENM_BORODO_INCLINE1"
.endobj str_SFX_ENM_BORODO_INCLI_tou2_000112b4

# .rodata:0x14C | 0x7B8C | size: 0x4
.obj str_B_1_tou2_000112cc, local
	.string "B_1"
.endobj str_B_1_tou2_000112cc

# .rodata:0x150 | 0x7B90 | size: 0x4
.obj str_R_4_tou2_000112d0, local
	.string "R_4"
.endobj str_R_4_tou2_000112d0

# .rodata:0x154 | 0x7B94 | size: 0x4
.obj str_O_2_tou2_000112d4, local
	.string "O_2"
.endobj str_O_2_tou2_000112d4

# .rodata:0x158 | 0x7B98 | size: 0x16
.obj str_SFX_ENM_BORODO_LAUGH_tou2_000112d8, local
	.string "SFX_ENM_BORODO_LAUGH1"
.endobj str_SFX_ENM_BORODO_LAUGH_tou2_000112d8

# .rodata:0x16E | 0x7BAE | size: 0x2
.obj gap_03_00007BAE_rodata, global
.hidden gap_03_00007BAE_rodata
	.2byte 0x0000
.endobj gap_03_00007BAE_rodata

# .rodata:0x170 | 0x7BB0 | size: 0x15
.obj str_SFX_ENM_BORODO_WAIT1_tou2_000112f0, local
	.string "SFX_ENM_BORODO_WAIT1"
.endobj str_SFX_ENM_BORODO_WAIT1_tou2_000112f0

# .rodata:0x185 | 0x7BC5 | size: 0x3
.obj gap_03_00007BC5_rodata, global
.hidden gap_03_00007BC5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007BC5_rodata

# .rodata:0x188 | 0x7BC8 | size: 0x4
.obj str_R_3_tou2_00011308, local
	.string "R_3"
.endobj str_R_3_tou2_00011308

# .rodata:0x18C | 0x7BCC | size: 0x15
.obj str_SFX_ENM_BORODO_JUMP1_tou2_0001130c, local
	.string "SFX_ENM_BORODO_JUMP1"
.endobj str_SFX_ENM_BORODO_JUMP1_tou2_0001130c

# .rodata:0x1A1 | 0x7BE1 | size: 0x3
.obj gap_03_00007BE1_rodata, global
.hidden gap_03_00007BE1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007BE1_rodata

# .rodata:0x1A4 | 0x7BE4 | size: 0x17
.obj str_SFX_ENM_BORODO_ESCAP_tou2_00011324, local
	.string "SFX_ENM_BORODO_ESCAPE1"
.endobj str_SFX_ENM_BORODO_ESCAP_tou2_00011324

# .rodata:0x1BB | 0x7BFB | size: 0x1
.obj gap_03_00007BFB_rodata, global
.hidden gap_03_00007BFB_rodata
	.byte 0x00
.endobj gap_03_00007BFB_rodata

# .rodata:0x1BC | 0x7BFC | size: 0x9
.obj str_recovery_tou2_0001133c, local
	.string "recovery"
.endobj str_recovery_tou2_0001133c

# .rodata:0x1C5 | 0x7C05 | size: 0x3
.obj gap_03_00007C05_rodata, global
.hidden gap_03_00007C05_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007C05_rodata

# 0x00052FB8..0x00054BE8 | size: 0x1C30
.data
.balign 8

# .data:0x0 | 0x52FB8 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x52FC0 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x52FC4 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x52FC8 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x52FCC | size: 0x4
.obj gap_04_00052FCC_data, global
.hidden gap_04_00052FCC_data
	.4byte 0x00000000
.endobj gap_04_00052FCC_data

# .data:0x18 | 0x52FD0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x52FD8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x52FDC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x52FE0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x52FE8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x52FEC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x52FF0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x52FF4 | size: 0x4
.obj gap_04_00052FF4_data, global
.hidden gap_04_00052FF4_data
	.4byte 0x00000000
.endobj gap_04_00052FF4_data

# .data:0x40 | 0x52FF8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x53000 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x53004 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x53008 | size: 0xC4
.obj unit_borodo_king_26_data_53008, global
	.4byte 0x0000002D
	.4byte str_btl_un_borodo_king_tou2_00011180
	.4byte 0x00080000
	.4byte 0x01010D00
	.4byte 0x03460132
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
	.4byte str_SFX_ENM_BORODO_DAMAG_tou2_00011194
	.4byte str_SFX_BTL_DAMAGE_FIRE1_tou2_000111ac
	.4byte str_SFX_BTL_DAMAGE_ICE1_tou2_000111c4
	.4byte str_SFX_BTL_DAMAGE_BIRIB_tou2_000111d8
	.4byte 0x00000000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_borodo_king_26_data_53008

# .data:0x114 | 0x530CC | size: 0xC0
.obj weapon_borodo_attack, local
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

# .data:0x1D4 | 0x5318C | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x1D9 | 0x53191 | size: 0x3
.obj gap_04_00053191_data, global
.hidden gap_04_00053191_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00053191_data

# .data:0x1DC | 0x53194 | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x1E1 | 0x53199 | size: 0x3
.obj gap_04_00053199_data, global
.hidden gap_04_00053199_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00053199_data

# .data:0x1E4 | 0x5319C | size: 0x16
.obj regist, local
	.ascii "ZP<dZdd<dZdZd_PUFdPdd_"
.endobj regist

# .data:0x1FA | 0x531B2 | size: 0x2
.obj gap_04_000531B2_data, global
.hidden gap_04_000531B2_data
	.2byte 0x0000
.endobj gap_04_000531B2_data

# .data:0x1FC | 0x531B4 | size: 0xA0
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_N_1_tou2_000111f4
	.4byte 0x00000002
	.4byte str_Y_1_tou2_000111f8
	.4byte 0x00000009
	.4byte str_Y_1_tou2_000111f8
	.4byte 0x00000005
	.4byte str_K_1_tou2_000111fc
	.4byte 0x00000004
	.4byte str_X_1_tou2_00011200
	.4byte 0x00000003
	.4byte str_X_1_tou2_00011200
	.4byte 0x0000001C
	.4byte str_S_1_tou2_00011204
	.4byte 0x0000001D
	.4byte str_Q_1_tou2_00011208
	.4byte 0x0000001E
	.4byte str_Q_1_tou2_00011208
	.4byte 0x0000001F
	.4byte str_S_1_tou2_00011204
	.4byte 0x00000027
	.4byte str_D_1_tou2_0001120c
	.4byte 0x00000032
	.4byte str_A_1_tou2_00011210
	.4byte 0x00000033
	.4byte str_A_2_tou2_00011214
	.4byte 0x0000002A
	.4byte str_R_1_tou2_00011218
	.4byte 0x00000029
	.4byte str_R_1_tou2_00011218
	.4byte 0x00000028
	.4byte str_W_1_tou2_0001121c
	.4byte 0x00000038
	.4byte str_X_1_tou2_00011200
	.4byte 0x00000039
	.4byte str_X_1_tou2_00011200
	.4byte 0x00000041
	.4byte str_T_1_tou2_00011220
	.4byte 0x00000045
	.4byte str_S_1_tou2_00011204
.endobj pose_table

# .data:0x29C | 0x53254 | size: 0x90
.obj pose_table_item_have, local
	.4byte 0x00000001
	.4byte str_N_1_tou2_000111f4
	.4byte 0x00000002
	.4byte str_Y_1_tou2_000111f8
	.4byte 0x00000009
	.4byte str_Y_1_tou2_000111f8
	.4byte 0x00000005
	.4byte str_K_1_tou2_000111fc
	.4byte 0x00000004
	.4byte str_X_1_tou2_00011200
	.4byte 0x00000003
	.4byte str_X_1_tou2_00011200
	.4byte 0x0000001C
	.4byte str_S_2_tou2_00011224
	.4byte 0x0000001D
	.4byte str_Q_1_tou2_00011208
	.4byte 0x0000001E
	.4byte str_Q_1_tou2_00011208
	.4byte 0x0000001F
	.4byte str_S_2_tou2_00011224
	.4byte 0x00000027
	.4byte str_D_1_tou2_0001120c
	.4byte 0x00000032
	.4byte str_A_1_tou2_00011210
	.4byte 0x00000033
	.4byte str_A_2_tou2_00011214
	.4byte 0x0000002A
	.4byte str_R_2_tou2_00011228
	.4byte 0x00000029
	.4byte str_R_2_tou2_00011228
	.4byte 0x00000028
	.4byte str_W_2_tou2_0001122c
	.4byte 0x00000041
	.4byte str_S_2_tou2_00011224
	.4byte 0x00000045
	.4byte str_S_2_tou2_00011224
.endobj pose_table_item_have

# .data:0x32C | 0x532E4 | size: 0x10
.obj data_table, local
	.4byte 0x00000033
	.4byte unk_evt_tou2_00066638
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x33C | 0x532F4 | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_borodo_king_tou2_00011180
	.4byte str_c_borodo_g_tou2_00011230
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

# .data:0x388 | 0x53340 | size: 0xE4
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
	.4byte str_SFX_ENM_BORODO_MOVE1_tou2_0001123c
	.4byte str_SFX_ENM_BORODO_MOVE1_tou2_00011254
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0007005B
	.4byte btlevtcmd_SetWalkSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BORODO_MOVE1_tou2_0001123c
	.4byte str_SFX_ENM_BORODO_MOVE1_tou2_00011254
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

# .data:0x46C | 0x53424 | size: 0x28
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

# .data:0x494 | 0x5344C | size: 0x8
.obj phase_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0x49C | 0x53454 | size: 0xEC
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
	.4byte 0x000000D7
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0x0000004B
	.4byte 0x0001005E
	.4byte _borodo_normal_attack
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte _borodo_steal_attack
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x588 | 0x53540 | size: 0x7DC
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
	.4byte str_SFX_ENM_BORODO_MOVE1_tou2_0001123c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8E
	.4byte 0x00010009
	.4byte 0x00000003
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BORODO_MOVE1_tou2_00011254
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
	.4byte str_SFX_ENM_BORODO_ATT1_tou2_0001126c
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
	.4byte str_SFX_ENM_BORODO_ATT1_tou2_0001126c
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
	.4byte str_SFX_ENM_BORODO_MOVE1_tou2_0001123c
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
	.4byte str_SFX_ENM_BORODO_MOVE1_tou2_00011254
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
	.4byte str_O_1_tou2_00011280
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
	.4byte str_X_1_tou2_00011200
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

# .data:0xD64 | 0x53D1C | size: 0x988
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
	.4byte str_SFX_ENM_BORODO_MOVE1_tou2_0001123c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8E
	.4byte 0x00010009
	.4byte 0x00000003
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BORODO_MOVE1_tou2_00011254
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
	.4byte str_SFX_ENM_BORODO_ATT1_tou2_0001126c
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
	.4byte str_SFX_ENM_BORODO_ATT1_tou2_0001126c
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
	.4byte str_SFX_ENM_BORODO_MOVE1_tou2_0001123c
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
	.4byte str_SFX_ENM_BORODO_MOVE1_tou2_00011254
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
	.4byte str_SFX_ENM_BORODO_SUCCE_tou2_00011284
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
	.4byte str_btl_msg_steal_item_l_tou2_0001129c
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
	.4byte str_O_1_tou2_00011280
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
	.4byte str_SFX_ENM_BORODO_INCLI_tou2_000112b4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_B_1_tou2_000112cc
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
	.4byte str_R_4_tou2_000112d0
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
	.4byte str_O_2_tou2_000112d4
	.4byte 0x00010009
	.4byte 0x0000000E
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BORODO_LAUGH_tou2_000112d8
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

# .data:0x16EC | 0x546A4 | size: 0x1CC
.obj escape_event, local
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BORODO_WAIT1_tou2_000112f0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_R_3_tou2_00011308
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
	.4byte str_SFX_ENM_BORODO_JUMP1_tou2_0001130c
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
	.4byte str_SFX_ENM_BORODO_ESCAP_tou2_00011324
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

# .data:0x18B8 | 0x54870 | size: 0x68
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

# .data:0x1920 | 0x548D8 | size: 0x30C
.obj unk_evt_tou2_00066638, local
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
	.4byte str_recovery_tou2_0001133c
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
.endobj unk_evt_tou2_00066638

# .data:0x1C2C | 0x54BE4 | size: 0x4
.obj gap_04_00054BE4_data, global
.hidden gap_04_00054BE4_data
	.4byte 0x00000000
.endobj gap_04_00054BE4_data
