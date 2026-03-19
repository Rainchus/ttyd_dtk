.include "macros.inc"
.file "unit_borodo.o"

# 0x0000124C..0x00001530 | size: 0x2E4
.text
.balign 4

# .text:0x0 | 0x124C | size: 0x2E4
.fn _steal_item, local
/* 0000124C 00001310  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00001250 00001314  7C 08 02 A6 */	mflr r0
/* 00001254 00001318  90 01 00 34 */	stw r0, 0x34(r1)
/* 00001258 0000131C  BF 01 00 10 */	stmw r24, 0x10(r1)
/* 0000125C 00001320  7C 79 1B 78 */	mr r25, r3
/* 00001260 00001324  83 A3 00 18 */	lwz r29, 0x18(r3)
/* 00001264 00001328  4B FF F8 0D */	bl pouchGetPtr
/* 00001268 0000132C  80 9D 00 00 */	lwz r4, 0x0(r29)
/* 0000126C 00001330  7C 7E 1B 78 */	mr r30, r3
/* 00001270 00001334  7F 23 CB 78 */	mr r3, r25
/* 00001274 00001338  4B FF F7 FD */	bl evtGetValue
/* 00001278 0000133C  7C 60 1B 78 */	mr r0, r3
/* 0000127C 00001340  7F 23 CB 78 */	mr r3, r25
/* 00001280 00001344  7C 04 03 78 */	mr r4, r0
/* 00001284 00001348  4B FF F7 ED */	bl BattleTransID
/* 00001288 0000134C  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0000128C 00001350  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00001290 00001354  7C 64 1B 78 */	mr r4, r3
/* 00001294 00001358  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00001298 0000135C  4B FF F7 D9 */	bl BattleGetUnitPtr
/* 0000129C 00001360  7C 7F 1B 79 */	mr. r31, r3
/* 000012A0 00001364  40 82 00 0C */	bne .L_000012AC
/* 000012A4 00001368  38 60 00 02 */	li r3, 0x2
/* 000012A8 0000136C  48 00 02 74 */	b .L_0000151C
.L_000012AC:
/* 000012AC 00001370  80 9D 00 04 */	lwz r4, 0x4(r29)
/* 000012B0 00001374  7F 23 CB 78 */	mr r3, r25
/* 000012B4 00001378  4B FF F7 BD */	bl evtGetValue
/* 000012B8 0000137C  7C 60 1B 78 */	mr r0, r3
/* 000012BC 00001380  7F 23 CB 78 */	mr r3, r25
/* 000012C0 00001384  7C 04 03 78 */	mr r4, r0
/* 000012C4 00001388  4B FF F7 AD */	bl BattleTransID
/* 000012C8 0000138C  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 000012CC 00001390  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 000012D0 00001394  7C 64 1B 78 */	mr r4, r3
/* 000012D4 00001398  80 65 00 00 */	lwz r3, 0x0(r5)
/* 000012D8 0000139C  4B FF F7 99 */	bl BattleGetUnitPtr
/* 000012DC 000013A0  7C 7C 1B 79 */	mr. r28, r3
/* 000012E0 000013A4  40 82 00 0C */	bne .L_000012EC
/* 000012E4 000013A8  38 60 00 02 */	li r3, 0x2
/* 000012E8 000013AC  48 00 02 34 */	b .L_0000151C
.L_000012EC:
/* 000012EC 000013B0  83 7D 00 08 */	lwz r27, 0x8(r29)
/* 000012F0 000013B4  7F 23 CB 78 */	mr r3, r25
/* 000012F4 000013B8  83 5D 00 0C */	lwz r26, 0xc(r29)
/* 000012F8 000013BC  38 A0 00 00 */	li r5, 0x0
/* 000012FC 000013C0  83 1D 00 10 */	lwz r24, 0x10(r29)
/* 00001300 000013C4  7F 64 DB 78 */	mr r4, r27
/* 00001304 000013C8  4B FF F7 6D */	bl evtSetValue
/* 00001308 000013CC  7F 23 CB 78 */	mr r3, r25
/* 0000130C 000013D0  7F 44 D3 78 */	mr r4, r26
/* 00001310 000013D4  38 A0 00 00 */	li r5, 0x0
/* 00001314 000013D8  4B FF F7 5D */	bl evtSetValue
/* 00001318 000013DC  7F 23 CB 78 */	mr r3, r25
/* 0000131C 000013E0  7F 04 C3 78 */	mr r4, r24
/* 00001320 000013E4  38 A0 00 00 */	li r5, 0x0
/* 00001324 000013E8  4B FF F7 4D */	bl evtSetValue
/* 00001328 000013EC  38 60 00 64 */	li r3, 0x64
/* 0000132C 000013F0  4B FF F7 45 */	bl irand
/* 00001330 000013F4  2C 03 00 64 */	cmpwi r3, 0x64
/* 00001334 000013F8  40 80 00 70 */	bge .L_000013A4
/* 00001338 000013FC  4B FF F7 39 */	bl pouchGetCoin
/* 0000133C 00001400  7C 7C 1B 78 */	mr r28, r3
/* 00001340 00001404  3B A0 00 05 */	li r29, 0x5
/* 00001344 00001408  2C 1C 00 05 */	cmpwi r28, 0x5
/* 00001348 0000140C  40 80 00 08 */	bge .L_00001350
/* 0000134C 00001410  7F 9D E3 78 */	mr r29, r28
.L_00001350:
/* 00001350 00001414  2C 1D 00 00 */	cmpwi r29, 0x0
/* 00001354 00001418  40 81 00 48 */	ble .L_0000139C
/* 00001358 0000141C  7F 23 CB 78 */	mr r3, r25
/* 0000135C 00001420  7F 64 DB 78 */	mr r4, r27
/* 00001360 00001424  38 A0 00 79 */	li r5, 0x79
/* 00001364 00001428  4B FF F7 0D */	bl evtSetValue
/* 00001368 0000142C  7F 23 CB 78 */	mr r3, r25
/* 0000136C 00001430  7F 44 D3 78 */	mr r4, r26
/* 00001370 00001434  38 A0 01 93 */	li r5, 0x193
/* 00001374 00001438  4B FF F6 FD */	bl evtSetValue
/* 00001378 0000143C  7F 23 CB 78 */	mr r3, r25
/* 0000137C 00001440  7F 04 C3 78 */	mr r4, r24
/* 00001380 00001444  7F A5 EB 78 */	mr r5, r29
/* 00001384 00001448  4B FF F6 ED */	bl evtSetValue
/* 00001388 0000144C  38 00 00 79 */	li r0, 0x79
/* 0000138C 00001450  7C 7D E0 50 */	subf r3, r29, r28
/* 00001390 00001454  90 1F 03 08 */	stw r0, 0x308(r31)
/* 00001394 00001458  9B BF 03 10 */	stb r29, 0x310(r31)
/* 00001398 0000145C  4B FF F6 D9 */	bl pouchSetCoin
.L_0000139C:
/* 0000139C 00001460  38 60 00 02 */	li r3, 0x2
/* 000013A0 00001464  48 00 01 7C */	b .L_0000151C
.L_000013A4:
/* 000013A4 00001468  38 00 00 14 */	li r0, 0x14
/* 000013A8 0000146C  3B A0 00 00 */	li r29, 0x0
/* 000013AC 00001470  3B 00 00 00 */	li r24, 0x0
/* 000013B0 00001474  38 60 00 00 */	li r3, 0x0
/* 000013B4 00001478  7C 09 03 A6 */	mtctr r0
.L_000013B8:
/* 000013B8 0000147C  38 03 01 92 */	addi r0, r3, 0x192
/* 000013BC 00001480  7C 1E 02 AE */	lhax r0, r30, r0
/* 000013C0 00001484  2C 00 00 00 */	cmpwi r0, 0x0
/* 000013C4 00001488  41 82 00 08 */	beq .L_000013CC
/* 000013C8 0000148C  3B 18 00 01 */	addi r24, r24, 0x1
.L_000013CC:
/* 000013CC 00001490  38 63 00 02 */	addi r3, r3, 0x2
/* 000013D0 00001494  42 00 FF E8 */	bdnz .L_000013B8
/* 000013D4 00001498  2C 18 00 00 */	cmpwi r24, 0x0
/* 000013D8 0000149C  41 81 00 0C */	bgt .L_000013E4
/* 000013DC 000014A0  38 60 00 02 */	li r3, 0x2
/* 000013E0 000014A4  48 00 01 3C */	b .L_0000151C
.L_000013E4:
/* 000013E4 000014A8  7F 03 C3 78 */	mr r3, r24
/* 000013E8 000014AC  4B FF F6 89 */	bl irand
/* 000013EC 000014B0  7C 03 C0 00 */	cmpw r3, r24
/* 000013F0 000014B4  41 80 00 44 */	blt .L_00001434
/* 000013F4 000014B8  38 00 00 C8 */	li r0, 0xc8
/* 000013F8 000014BC  7C 78 18 50 */	subf r3, r24, r3
/* 000013FC 000014C0  38 80 00 00 */	li r4, 0x0
/* 00001400 000014C4  7C 09 03 A6 */	mtctr r0
.L_00001404:
/* 00001404 000014C8  38 04 01 FA */	addi r0, r4, 0x1fa
/* 00001408 000014CC  7C 1E 02 AE */	lhax r0, r30, r0
/* 0000140C 000014D0  2C 00 00 00 */	cmpwi r0, 0x0
/* 00001410 000014D4  41 82 00 18 */	beq .L_00001428
/* 00001414 000014D8  34 63 FF FF */	subic. r3, r3, 0x1
/* 00001418 000014DC  40 80 00 10 */	bge .L_00001428
/* 0000141C 000014E0  7C 7E 22 14 */	add r3, r30, r4
/* 00001420 000014E4  AB A3 01 FA */	lha r29, 0x1fa(r3)
/* 00001424 000014E8  48 00 00 48 */	b .L_0000146C
.L_00001428:
/* 00001428 000014EC  38 84 00 02 */	addi r4, r4, 0x2
/* 0000142C 000014F0  42 00 FF D8 */	bdnz .L_00001404
/* 00001430 000014F4  48 00 00 3C */	b .L_0000146C
.L_00001434:
/* 00001434 000014F8  38 00 00 14 */	li r0, 0x14
/* 00001438 000014FC  38 80 00 00 */	li r4, 0x0
/* 0000143C 00001500  7C 09 03 A6 */	mtctr r0
.L_00001440:
/* 00001440 00001504  38 04 01 92 */	addi r0, r4, 0x192
/* 00001444 00001508  7C 1E 02 AE */	lhax r0, r30, r0
/* 00001448 0000150C  2C 00 00 00 */	cmpwi r0, 0x0
/* 0000144C 00001510  41 82 00 18 */	beq .L_00001464
/* 00001450 00001514  34 63 FF FF */	subic. r3, r3, 0x1
/* 00001454 00001518  40 80 00 10 */	bge .L_00001464
/* 00001458 0000151C  7C 7E 22 14 */	add r3, r30, r4
/* 0000145C 00001520  AB A3 01 92 */	lha r29, 0x192(r3)
/* 00001460 00001524  48 00 00 0C */	b .L_0000146C
.L_00001464:
/* 00001464 00001528  38 84 00 02 */	addi r4, r4, 0x2
/* 00001468 0000152C  42 00 FF D8 */	bdnz .L_00001440
.L_0000146C:
/* 0000146C 00001530  2C 1D 00 00 */	cmpwi r29, 0x0
/* 00001470 00001534  41 82 00 A8 */	beq .L_00001518
/* 00001474 00001538  7F A3 EB 78 */	mr r3, r29
/* 00001478 0000153C  4B FF F5 F9 */	bl pouchRemoveItem
/* 0000147C 00001540  2C 03 00 00 */	cmpwi r3, 0x0
/* 00001480 00001544  40 82 00 0C */	bne .L_0000148C
/* 00001484 00001548  38 60 00 02 */	li r3, 0x2
/* 00001488 0000154C  48 00 00 94 */	b .L_0000151C
.L_0000148C:
/* 0000148C 00001550  2C 1D 00 F0 */	cmpwi r29, 0xf0
/* 00001490 00001554  93 BF 03 08 */	stw r29, 0x308(r31)
/* 00001494 00001558  41 80 00 54 */	blt .L_000014E8
/* 00001498 0000155C  2C 1D 01 53 */	cmpwi r29, 0x153
/* 0000149C 00001560  40 80 00 4C */	bge .L_000014E8
/* 000014A0 00001564  80 1C 00 08 */	lwz r0, 0x8(r28)
/* 000014A4 00001568  2C 00 00 DE */	cmpwi r0, 0xde
/* 000014A8 0000156C  40 82 00 18 */	bne .L_000014C0
/* 000014AC 00001570  7F 83 E3 78 */	mr r3, r28
/* 000014B0 00001574  38 80 00 03 */	li r4, 0x3
/* 000014B4 00001578  38 A0 00 00 */	li r5, 0x0
/* 000014B8 0000157C  4B FF F5 B9 */	bl BtlUnit_EquipItem
/* 000014BC 00001580  48 00 00 24 */	b .L_000014E0
.L_000014C0:
/* 000014C0 00001584  2C 00 00 E0 */	cmpwi r0, 0xe0
/* 000014C4 00001588  41 80 00 1C */	blt .L_000014E0
/* 000014C8 0000158C  2C 00 00 E7 */	cmpwi r0, 0xe7
/* 000014CC 00001590  40 80 00 14 */	bge .L_000014E0
/* 000014D0 00001594  7F 83 E3 78 */	mr r3, r28
/* 000014D4 00001598  38 80 00 05 */	li r4, 0x5
/* 000014D8 0000159C  38 A0 00 00 */	li r5, 0x0
/* 000014DC 000015A0  4B FF F5 95 */	bl BtlUnit_EquipItem
.L_000014E0:
/* 000014E0 000015A4  4B FF F5 91 */	bl pouchReviseMarioParam
/* 000014E4 000015A8  4B FF F5 8D */	bl pouchRevisePartyParam
.L_000014E8:
/* 000014E8 000015AC  7F 23 CB 78 */	mr r3, r25
/* 000014EC 000015B0  7F 64 DB 78 */	mr r4, r27
/* 000014F0 000015B4  7F A5 EB 78 */	mr r5, r29
/* 000014F4 000015B8  4B FF F5 7D */	bl evtSetValue
/* 000014F8 000015BC  1C 1D 00 28 */	mulli r0, r29, 0x28
/* 000014FC 000015C0  3C 80 00 00 */	lis r4, itemDataTable@ha
/* 00001500 000015C4  7F 23 CB 78 */	mr r3, r25
/* 00001504 000015C8  38 84 00 00 */	addi r4, r4, itemDataTable@l
/* 00001508 000015CC  7C A4 02 14 */	add r5, r4, r0
/* 0000150C 000015D0  7F 44 D3 78 */	mr r4, r26
/* 00001510 000015D4  A0 A5 00 20 */	lhz r5, 0x20(r5)
/* 00001514 000015D8  4B FF F5 5D */	bl evtSetValue
.L_00001518:
/* 00001518 000015DC  38 60 00 02 */	li r3, 0x2
.L_0000151C:
/* 0000151C 000015E0  BB 01 00 10 */	lmw r24, 0x10(r1)
/* 00001520 000015E4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00001524 000015E8  7C 08 03 A6 */	mtlr r0
/* 00001528 000015EC  38 21 00 30 */	addi r1, r1, 0x30
/* 0000152C 000015F0  4E 80 00 20 */	blr
.endfn _steal_item

# 0x000025F0..0x000027B8 | size: 0x1C8
.rodata
.balign 8

# .rodata:0x0 | 0x25F0 | size: 0xE
.obj str_btl_un_borodo_jon_00009620, local
	.string "btl_un_borodo"
.endobj str_btl_un_borodo_jon_00009620

# .rodata:0xE | 0x25FE | size: 0x2
.obj gap_03_000025FE_rodata, global
.hidden gap_03_000025FE_rodata
	.2byte 0x0000
.endobj gap_03_000025FE_rodata

# .rodata:0x10 | 0x2600 | size: 0x18
.obj str_SFX_ENM_BORODO_DAMAG_jon_00009630, local
	.string "SFX_ENM_BORODO_DAMAGED1"
.endobj str_SFX_ENM_BORODO_DAMAG_jon_00009630

# .rodata:0x28 | 0x2618 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_jon_00009648, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_jon_00009648

# .rodata:0x3D | 0x262D | size: 0x3
.obj gap_03_0000262D_rodata, global
.hidden gap_03_0000262D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000262D_rodata

# .rodata:0x40 | 0x2630 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_jon_00009660, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_jon_00009660

# .rodata:0x54 | 0x2644 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_jon_00009674, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_jon_00009674

# .rodata:0x6D | 0x265D | size: 0x3
.obj gap_03_0000265D_rodata, global
.hidden gap_03_0000265D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000265D_rodata

# .rodata:0x70 | 0x2660 | size: 0x4
.obj str_N_1_jon_00009690, local
	.string "N_1"
.endobj str_N_1_jon_00009690

# .rodata:0x74 | 0x2664 | size: 0x4
.obj str_Y_1_jon_00009694, local
	.string "Y_1"
.endobj str_Y_1_jon_00009694

# .rodata:0x78 | 0x2668 | size: 0x4
.obj str_K_1_jon_00009698, local
	.string "K_1"
.endobj str_K_1_jon_00009698

# .rodata:0x7C | 0x266C | size: 0x4
.obj str_X_1_jon_0000969c, local
	.string "X_1"
.endobj str_X_1_jon_0000969c

# .rodata:0x80 | 0x2670 | size: 0x4
.obj str_S_1_jon_000096a0, local
	.string "S_1"
.endobj str_S_1_jon_000096a0

# .rodata:0x84 | 0x2674 | size: 0x4
.obj str_Q_1_jon_000096a4, local
	.string "Q_1"
.endobj str_Q_1_jon_000096a4

# .rodata:0x88 | 0x2678 | size: 0x4
.obj str_D_1_jon_000096a8, local
	.string "D_1"
.endobj str_D_1_jon_000096a8

# .rodata:0x8C | 0x267C | size: 0x4
.obj str_A_1_jon_000096ac, local
	.string "A_1"
.endobj str_A_1_jon_000096ac

# .rodata:0x90 | 0x2680 | size: 0x4
.obj str_A_2_jon_000096b0, local
	.string "A_2"
.endobj str_A_2_jon_000096b0

# .rodata:0x94 | 0x2684 | size: 0x4
.obj str_R_1_jon_000096b4, local
	.string "R_1"
.endobj str_R_1_jon_000096b4

# .rodata:0x98 | 0x2688 | size: 0x4
.obj str_W_1_jon_000096b8, local
	.string "W_1"
.endobj str_W_1_jon_000096b8

# .rodata:0x9C | 0x268C | size: 0x4
.obj str_T_1_jon_000096bc, local
	.string "T_1"
.endobj str_T_1_jon_000096bc

# .rodata:0xA0 | 0x2690 | size: 0x4
.obj str_S_2_jon_000096c0, local
	.string "S_2"
.endobj str_S_2_jon_000096c0

# .rodata:0xA4 | 0x2694 | size: 0x4
.obj str_R_2_jon_000096c4, local
	.string "R_2"
.endobj str_R_2_jon_000096c4

# .rodata:0xA8 | 0x2698 | size: 0x4
.obj str_W_2_jon_000096c8, local
	.string "W_2"
.endobj str_W_2_jon_000096c8

# .rodata:0xAC | 0x269C | size: 0x9
.obj str_c_borodo_jon_000096cc, local
	.string "c_borodo"
.endobj str_c_borodo_jon_000096cc

# .rodata:0xB5 | 0x26A5 | size: 0x3
.obj gap_03_000026A5_rodata, global
.hidden gap_03_000026A5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000026A5_rodata

# .rodata:0xB8 | 0x26A8 | size: 0x16
.obj str_SFX_ENM_BORODO_MOVE1_jon_000096d8, local
	.string "SFX_ENM_BORODO_MOVE1L"
.endobj str_SFX_ENM_BORODO_MOVE1_jon_000096d8

# .rodata:0xCE | 0x26BE | size: 0x2
.obj gap_03_000026BE_rodata, global
.hidden gap_03_000026BE_rodata
	.2byte 0x0000
.endobj gap_03_000026BE_rodata

# .rodata:0xD0 | 0x26C0 | size: 0x16
.obj str_SFX_ENM_BORODO_MOVE1_jon_000096f0, local
	.string "SFX_ENM_BORODO_MOVE1R"
.endobj str_SFX_ENM_BORODO_MOVE1_jon_000096f0

# .rodata:0xE6 | 0x26D6 | size: 0x2
.obj gap_03_000026D6_rodata, global
.hidden gap_03_000026D6_rodata
	.2byte 0x0000
.endobj gap_03_000026D6_rodata

# .rodata:0xE8 | 0x26D8 | size: 0x14
.obj str_SFX_ENM_BORODO_ATT1_jon_00009708, local
	.string "SFX_ENM_BORODO_ATT1"
.endobj str_SFX_ENM_BORODO_ATT1_jon_00009708

# .rodata:0xFC | 0x26EC | size: 0x4
.obj str_O_1_jon_0000971c, local
	.string "O_1"
.endobj str_O_1_jon_0000971c

# .rodata:0x100 | 0x26F0 | size: 0x18
.obj str_SFX_ENM_BORODO_SUCCE_jon_00009720, local
	.string "SFX_ENM_BORODO_SUCCESS1"
.endobj str_SFX_ENM_BORODO_SUCCE_jon_00009720

# .rodata:0x118 | 0x2708 | size: 0x18
.obj str_btl_msg_steal_item_l_jon_00009738, local
	.string "btl_msg_steal_item_lost"
.endobj str_btl_msg_steal_item_l_jon_00009738

# .rodata:0x130 | 0x2720 | size: 0x18
.obj str_SFX_ENM_BORODO_INCLI_jon_00009750, local
	.string "SFX_ENM_BORODO_INCLINE1"
.endobj str_SFX_ENM_BORODO_INCLI_jon_00009750

# .rodata:0x148 | 0x2738 | size: 0x4
.obj str_B_1_jon_00009768, local
	.string "B_1"
.endobj str_B_1_jon_00009768

# .rodata:0x14C | 0x273C | size: 0x4
.obj str_R_4_jon_0000976c, local
	.string "R_4"
.endobj str_R_4_jon_0000976c

# .rodata:0x150 | 0x2740 | size: 0x4
.obj str_O_2_jon_00009770, local
	.string "O_2"
.endobj str_O_2_jon_00009770

# .rodata:0x154 | 0x2744 | size: 0x16
.obj str_SFX_ENM_BORODO_LAUGH_jon_00009774, local
	.string "SFX_ENM_BORODO_LAUGH1"
.endobj str_SFX_ENM_BORODO_LAUGH_jon_00009774

# .rodata:0x16A | 0x275A | size: 0x2
.obj gap_03_0000275A_rodata, global
.hidden gap_03_0000275A_rodata
	.2byte 0x0000
.endobj gap_03_0000275A_rodata

# .rodata:0x16C | 0x275C | size: 0x15
.obj str_SFX_ENM_BORODO_WAIT1_jon_0000978c, local
	.string "SFX_ENM_BORODO_WAIT1"
.endobj str_SFX_ENM_BORODO_WAIT1_jon_0000978c

# .rodata:0x181 | 0x2771 | size: 0x3
.obj gap_03_00002771_rodata, global
.hidden gap_03_00002771_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002771_rodata

# .rodata:0x184 | 0x2774 | size: 0x4
.obj str_R_3_jon_000097a4, local
	.string "R_3"
.endobj str_R_3_jon_000097a4

# .rodata:0x188 | 0x2778 | size: 0x15
.obj str_SFX_ENM_BORODO_JUMP1_jon_000097a8, local
	.string "SFX_ENM_BORODO_JUMP1"
.endobj str_SFX_ENM_BORODO_JUMP1_jon_000097a8

# .rodata:0x19D | 0x278D | size: 0x3
.obj gap_03_0000278D_rodata, global
.hidden gap_03_0000278D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000278D_rodata

# .rodata:0x1A0 | 0x2790 | size: 0x17
.obj str_SFX_ENM_BORODO_ESCAP_jon_000097c0, local
	.string "SFX_ENM_BORODO_ESCAPE1"
.endobj str_SFX_ENM_BORODO_ESCAP_jon_000097c0

# .rodata:0x1B7 | 0x27A7 | size: 0x1
.obj gap_03_000027A7_rodata, global
.hidden gap_03_000027A7_rodata
	.byte 0x00
.endobj gap_03_000027A7_rodata

# .rodata:0x1B8 | 0x27A8 | size: 0x9
.obj str_recovery_jon_000097d8, local
	.string "recovery"
.endobj str_recovery_jon_000097d8

# .rodata:0x1C1 | 0x27B1 | size: 0x7
.obj gap_03_000027B1_rodata, global
.hidden gap_03_000027B1_rodata
	.4byte 0x00000000
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000027B1_rodata

# 0x00021200..0x00022E30 | size: 0x1C30
.data
.balign 8

# .data:0x0 | 0x21200 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x21208 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x2120C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x21210 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x21214 | size: 0x4
.obj gap_04_00021214_data, global
.hidden gap_04_00021214_data
	.4byte 0x00000000
.endobj gap_04_00021214_data

# .data:0x18 | 0x21218 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x21220 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x21224 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x21228 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x21230 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x21234 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x21238 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x2123C | size: 0x4
.obj gap_04_0002123C_data, global
.hidden gap_04_0002123C_data
	.4byte 0x00000000
.endobj gap_04_0002123C_data

# .data:0x40 | 0x21240 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x21248 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x2124C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x21250 | size: 0xC4
.obj unit_borodo_14_data_21250, global
	.4byte 0x0000002C
	.4byte str_btl_un_borodo_jon_00009620
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
	.4byte str_SFX_ENM_BORODO_DAMAG_jon_00009630
	.4byte str_SFX_BTL_DAMAGE_FIRE1_jon_00009648
	.4byte str_SFX_BTL_DAMAGE_ICE1_jon_00009660
	.4byte str_SFX_BTL_DAMAGE_BIRIB_jon_00009674
	.4byte 0x00000000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_borodo_14_data_21250

# .data:0x114 | 0x21314 | size: 0xC0
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

# .data:0x1D4 | 0x213D4 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x1D9 | 0x213D9 | size: 0x3
.obj gap_04_000213D9_data, global
.hidden gap_04_000213D9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_000213D9_data

# .data:0x1DC | 0x213DC | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x1E1 | 0x213E1 | size: 0x3
.obj gap_04_000213E1_data, global
.hidden gap_04_000213E1_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_000213E1_data

# .data:0x1E4 | 0x213E4 | size: 0x16
.obj regist, local
	.ascii "dZFddddFd_d_ddZ_PdZdd_"
.endobj regist

# .data:0x1FA | 0x213FA | size: 0x2
.obj gap_04_000213FA_data, global
.hidden gap_04_000213FA_data
	.2byte 0x0000
.endobj gap_04_000213FA_data

# .data:0x1FC | 0x213FC | size: 0xA0
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_N_1_jon_00009690
	.4byte 0x00000002
	.4byte str_Y_1_jon_00009694
	.4byte 0x00000009
	.4byte str_Y_1_jon_00009694
	.4byte 0x00000005
	.4byte str_K_1_jon_00009698
	.4byte 0x00000004
	.4byte str_X_1_jon_0000969c
	.4byte 0x00000003
	.4byte str_X_1_jon_0000969c
	.4byte 0x0000001C
	.4byte str_S_1_jon_000096a0
	.4byte 0x0000001D
	.4byte str_Q_1_jon_000096a4
	.4byte 0x0000001E
	.4byte str_Q_1_jon_000096a4
	.4byte 0x0000001F
	.4byte str_S_1_jon_000096a0
	.4byte 0x00000027
	.4byte str_D_1_jon_000096a8
	.4byte 0x00000032
	.4byte str_A_1_jon_000096ac
	.4byte 0x00000033
	.4byte str_A_2_jon_000096b0
	.4byte 0x0000002A
	.4byte str_R_1_jon_000096b4
	.4byte 0x00000029
	.4byte str_R_1_jon_000096b4
	.4byte 0x00000028
	.4byte str_W_1_jon_000096b8
	.4byte 0x00000038
	.4byte str_X_1_jon_0000969c
	.4byte 0x00000039
	.4byte str_X_1_jon_0000969c
	.4byte 0x00000041
	.4byte str_T_1_jon_000096bc
	.4byte 0x00000045
	.4byte str_S_1_jon_000096a0
.endobj pose_table

# .data:0x29C | 0x2149C | size: 0x90
.obj pose_table_item_have, local
	.4byte 0x00000001
	.4byte str_N_1_jon_00009690
	.4byte 0x00000002
	.4byte str_Y_1_jon_00009694
	.4byte 0x00000009
	.4byte str_Y_1_jon_00009694
	.4byte 0x00000005
	.4byte str_K_1_jon_00009698
	.4byte 0x00000004
	.4byte str_X_1_jon_0000969c
	.4byte 0x00000003
	.4byte str_X_1_jon_0000969c
	.4byte 0x0000001C
	.4byte str_S_2_jon_000096c0
	.4byte 0x0000001D
	.4byte str_Q_1_jon_000096a4
	.4byte 0x0000001E
	.4byte str_Q_1_jon_000096a4
	.4byte 0x0000001F
	.4byte str_S_2_jon_000096c0
	.4byte 0x00000027
	.4byte str_D_1_jon_000096a8
	.4byte 0x00000032
	.4byte str_A_1_jon_000096ac
	.4byte 0x00000033
	.4byte str_A_2_jon_000096b0
	.4byte 0x0000002A
	.4byte str_R_2_jon_000096c4
	.4byte 0x00000029
	.4byte str_R_2_jon_000096c4
	.4byte 0x00000028
	.4byte str_W_2_jon_000096c8
	.4byte 0x00000041
	.4byte str_S_2_jon_000096c0
	.4byte 0x00000045
	.4byte str_S_2_jon_000096c0
.endobj pose_table_item_have

# .data:0x32C | 0x2152C | size: 0x10
.obj data_table, local
	.4byte 0x00000033
	.4byte unk_evt_jon_000313c0
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x33C | 0x2153C | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_borodo_jon_00009620
	.4byte str_c_borodo_jon_000096cc
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

# .data:0x388 | 0x21588 | size: 0xE4
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
	.4byte str_SFX_ENM_BORODO_MOVE1_jon_000096d8
	.4byte str_SFX_ENM_BORODO_MOVE1_jon_000096f0
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0007005B
	.4byte btlevtcmd_SetWalkSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BORODO_MOVE1_jon_000096d8
	.4byte str_SFX_ENM_BORODO_MOVE1_jon_000096f0
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

# .data:0x46C | 0x2166C | size: 0x28
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

# .data:0x494 | 0x21694 | size: 0x8
.obj phase_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0x49C | 0x2169C | size: 0xEC
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

# .data:0x588 | 0x21788 | size: 0x7DC
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
	.4byte str_SFX_ENM_BORODO_MOVE1_jon_000096d8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8E
	.4byte 0x00010009
	.4byte 0x00000003
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BORODO_MOVE1_jon_000096f0
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
	.4byte str_SFX_ENM_BORODO_ATT1_jon_00009708
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
	.4byte str_SFX_ENM_BORODO_ATT1_jon_00009708
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
	.4byte str_SFX_ENM_BORODO_MOVE1_jon_000096d8
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
	.4byte str_SFX_ENM_BORODO_MOVE1_jon_000096f0
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
	.4byte str_O_1_jon_0000971c
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
	.4byte str_X_1_jon_0000969c
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

# .data:0xD64 | 0x21F64 | size: 0x988
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
	.4byte str_SFX_ENM_BORODO_MOVE1_jon_000096d8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8E
	.4byte 0x00010009
	.4byte 0x00000003
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BORODO_MOVE1_jon_000096f0
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
	.4byte str_SFX_ENM_BORODO_ATT1_jon_00009708
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
	.4byte str_SFX_ENM_BORODO_ATT1_jon_00009708
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
	.4byte str_SFX_ENM_BORODO_MOVE1_jon_000096d8
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
	.4byte str_SFX_ENM_BORODO_MOVE1_jon_000096f0
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
	.4byte str_SFX_ENM_BORODO_SUCCE_jon_00009720
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
	.4byte str_btl_msg_steal_item_l_jon_00009738
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
	.4byte str_O_1_jon_0000971c
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
	.4byte str_SFX_ENM_BORODO_INCLI_jon_00009750
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_B_1_jon_00009768
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
	.4byte str_R_4_jon_0000976c
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
	.4byte str_O_2_jon_00009770
	.4byte 0x00010009
	.4byte 0x0000000E
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BORODO_LAUGH_jon_00009774
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

# .data:0x16EC | 0x228EC | size: 0x1CC
.obj escape_event, local
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BORODO_WAIT1_jon_0000978c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_R_3_jon_000097a4
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
	.4byte str_SFX_ENM_BORODO_JUMP1_jon_000097a8
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
	.4byte str_SFX_ENM_BORODO_ESCAP_jon_000097c0
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

# .data:0x18B8 | 0x22AB8 | size: 0x68
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

# .data:0x1920 | 0x22B20 | size: 0x30C
.obj unk_evt_jon_000313c0, local
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
	.4byte str_recovery_jon_000097d8
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
.endobj unk_evt_jon_000313c0

# .data:0x1C2C | 0x22E2C | size: 0x4
.obj gap_04_00022E2C_data, global
.hidden gap_04_00022E2C_data
	.4byte 0x00000000
.endobj gap_04_00022E2C_data
