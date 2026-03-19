.include "macros.inc"
.file "unit_purple_teresa.o"

# 0x00003134..0x0000338C | size: 0x258
.text
.balign 4

# .text:0x0 | 0x3134 | size: 0x9C
.fn teresa_check_teresa, local
/* 00003134 000031F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00003138 000031FC  7C 08 02 A6 */	mflr r0
/* 0000313C 00003200  90 01 00 24 */	stw r0, 0x24(r1)
/* 00003140 00003204  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 00003144 00003208  7C 7D 1B 78 */	mr r29, r3
/* 00003148 0000320C  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 0000314C 00003210  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00003150 00003214  4B FF D9 21 */	bl evtGetValue
/* 00003154 00003218  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00003158 0000321C  3B C0 00 00 */	li r30, 0x0
/* 0000315C 00003220  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00003160 00003224  7C 64 1B 78 */	mr r4, r3
/* 00003164 00003228  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00003168 0000322C  4B FF D9 09 */	bl BattleGetUnitPtr
/* 0000316C 00003230  28 03 00 00 */	cmplwi r3, 0x0
/* 00003170 00003234  40 82 00 1C */	bne .L_0000318C
/* 00003174 00003238  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00003178 0000323C  7F A3 EB 78 */	mr r3, r29
/* 0000317C 00003240  38 A0 00 00 */	li r5, 0x0
/* 00003180 00003244  4B FF D8 F1 */	bl evtSetValue
/* 00003184 00003248  38 60 00 02 */	li r3, 0x2
/* 00003188 0000324C  48 00 00 34 */	b .L_000031BC
.L_0000318C:
/* 0000318C 00003250  80 03 00 08 */	lwz r0, 0x8(r3)
/* 00003190 00003254  2C 00 00 4B */	cmpwi r0, 0x4b
/* 00003194 00003258  40 82 00 08 */	bne .L_0000319C
/* 00003198 0000325C  3B C0 00 01 */	li r30, 0x1
.L_0000319C:
/* 0000319C 00003260  2C 00 00 6A */	cmpwi r0, 0x6a
/* 000031A0 00003264  40 82 00 08 */	bne .L_000031A8
/* 000031A4 00003268  3B C0 00 01 */	li r30, 0x1
.L_000031A8:
/* 000031A8 0000326C  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 000031AC 00003270  7F A3 EB 78 */	mr r3, r29
/* 000031B0 00003274  7F C5 F3 78 */	mr r5, r30
/* 000031B4 00003278  4B FF D8 BD */	bl evtSetValue
/* 000031B8 0000327C  38 60 00 02 */	li r3, 0x2
.L_000031BC:
/* 000031BC 00003280  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 000031C0 00003284  80 01 00 24 */	lwz r0, 0x24(r1)
/* 000031C4 00003288  7C 08 03 A6 */	mtlr r0
/* 000031C8 0000328C  38 21 00 20 */	addi r1, r1, 0x20
/* 000031CC 00003290  4E 80 00 20 */	blr
.endfn teresa_check_teresa

# .text:0x9C | 0x31D0 | size: 0xC0
.fn teresa_check_move, local
/* 000031D0 00003294  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 000031D4 00003298  7C 08 02 A6 */	mflr r0
/* 000031D8 0000329C  90 01 00 24 */	stw r0, 0x24(r1)
/* 000031DC 000032A0  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 000031E0 000032A4  7C 7B 1B 78 */	mr r27, r3
/* 000031E4 000032A8  3C 60 00 00 */	lis r3, _battleWorkPointer@ha
/* 000031E8 000032AC  3B A0 00 00 */	li r29, 0x0
/* 000031EC 000032B0  3B E3 00 00 */	addi r31, r3, _battleWorkPointer@l
/* 000031F0 000032B4  3B 80 00 00 */	li r28, 0x0
/* 000031F4 000032B8  83 DB 00 18 */	lwz r30, 0x18(r27)
.L_000031F8:
/* 000031F8 000032BC  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 000031FC 000032C0  7F 84 E3 78 */	mr r4, r28
/* 00003200 000032C4  4B FF D8 71 */	bl BattleGetUnitPtr
/* 00003204 000032C8  28 03 00 00 */	cmplwi r3, 0x0
/* 00003208 000032CC  41 82 00 38 */	beq .L_00003240
/* 0000320C 000032D0  80 83 00 08 */	lwz r4, 0x8(r3)
/* 00003210 000032D4  2C 04 00 4B */	cmpwi r4, 0x4b
/* 00003214 000032D8  40 82 00 14 */	bne .L_00003228
/* 00003218 000032DC  80 03 02 18 */	lwz r0, 0x218(r3)
/* 0000321C 000032E0  2C 00 00 00 */	cmpwi r0, 0x0
/* 00003220 000032E4  40 82 00 08 */	bne .L_00003228
/* 00003224 000032E8  3B BD 00 01 */	addi r29, r29, 0x1
.L_00003228:
/* 00003228 000032EC  2C 04 00 6A */	cmpwi r4, 0x6a
/* 0000322C 000032F0  40 82 00 14 */	bne .L_00003240
/* 00003230 000032F4  80 03 02 18 */	lwz r0, 0x218(r3)
/* 00003234 000032F8  2C 00 00 00 */	cmpwi r0, 0x0
/* 00003238 000032FC  40 82 00 08 */	bne .L_00003240
/* 0000323C 00003300  3B BD 00 01 */	addi r29, r29, 0x1
.L_00003240:
/* 00003240 00003304  3B 9C 00 01 */	addi r28, r28, 0x1
/* 00003244 00003308  2C 1C 00 40 */	cmpwi r28, 0x40
/* 00003248 0000330C  41 80 FF B0 */	blt .L_000031F8
/* 0000324C 00003310  2C 1D 00 01 */	cmpwi r29, 0x1
/* 00003250 00003314  41 80 00 18 */	blt .L_00003268
/* 00003254 00003318  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 00003258 0000331C  7F 63 DB 78 */	mr r3, r27
/* 0000325C 00003320  38 A0 00 01 */	li r5, 0x1
/* 00003260 00003324  4B FF D8 11 */	bl evtSetValue
/* 00003264 00003328  48 00 00 14 */	b .L_00003278
.L_00003268:
/* 00003268 0000332C  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 0000326C 00003330  7F 63 DB 78 */	mr r3, r27
/* 00003270 00003334  38 A0 00 00 */	li r5, 0x0
/* 00003274 00003338  4B FF D7 FD */	bl evtSetValue
.L_00003278:
/* 00003278 0000333C  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 0000327C 00003340  38 60 00 02 */	li r3, 0x2
/* 00003280 00003344  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00003284 00003348  7C 08 03 A6 */	mtlr r0
/* 00003288 0000334C  38 21 00 20 */	addi r1, r1, 0x20
/* 0000328C 00003350  4E 80 00 20 */	blr
.endfn teresa_check_move

# .text:0x15C | 0x3290 | size: 0xFC
.fn teresa_check_trans, local
/* 00003290 00003354  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00003294 00003358  7C 08 02 A6 */	mflr r0
/* 00003298 0000335C  90 01 00 34 */	stw r0, 0x34(r1)
/* 0000329C 00003360  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 000032A0 00003364  7C 79 1B 78 */	mr r25, r3
/* 000032A4 00003368  3B 80 00 00 */	li r28, 0x0
/* 000032A8 0000336C  83 A3 00 18 */	lwz r29, 0x18(r3)
/* 000032AC 00003370  80 9D 00 00 */	lwz r4, 0x0(r29)
/* 000032B0 00003374  4B FF D7 C1 */	bl evtGetValue
/* 000032B4 00003378  7C 60 1B 78 */	mr r0, r3
/* 000032B8 0000337C  7F 23 CB 78 */	mr r3, r25
/* 000032BC 00003380  7C 04 03 78 */	mr r4, r0
/* 000032C0 00003384  4B FF D7 B1 */	bl BattleTransID
/* 000032C4 00003388  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 000032C8 0000338C  7C 7E 1B 78 */	mr r30, r3
/* 000032CC 00003390  3B E4 00 00 */	addi r31, r4, _battleWorkPointer@l
/* 000032D0 00003394  3B 60 00 00 */	li r27, 0x0
.L_000032D4:
/* 000032D4 00003398  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 000032D8 0000339C  7F 64 DB 78 */	mr r4, r27
/* 000032DC 000033A0  4B FF D7 95 */	bl BattleGetUnitPtr
/* 000032E0 000033A4  7C 7A 1B 79 */	mr. r26, r3
/* 000032E4 000033A8  41 82 00 58 */	beq .L_0000333C
/* 000032E8 000033AC  80 1A 00 08 */	lwz r0, 0x8(r26)
/* 000032EC 000033B0  2C 00 00 4B */	cmpwi r0, 0x4b
/* 000032F0 000033B4  40 82 00 20 */	bne .L_00003310
/* 000032F4 000033B8  38 80 00 12 */	li r4, 0x12
/* 000032F8 000033BC  4B FF D7 79 */	bl BtlUnit_CheckStatus
/* 000032FC 000033C0  2C 03 00 00 */	cmpwi r3, 0x0
/* 00003300 000033C4  40 82 00 10 */	bne .L_00003310
/* 00003304 000033C8  7C 1B F0 00 */	cmpw r27, r30
/* 00003308 000033CC  41 82 00 08 */	beq .L_00003310
/* 0000330C 000033D0  3B 9C 00 01 */	addi r28, r28, 0x1
.L_00003310:
/* 00003310 000033D4  80 1A 00 08 */	lwz r0, 0x8(r26)
/* 00003314 000033D8  2C 00 00 6A */	cmpwi r0, 0x6a
/* 00003318 000033DC  40 82 00 24 */	bne .L_0000333C
/* 0000331C 000033E0  7F 43 D3 78 */	mr r3, r26
/* 00003320 000033E4  38 80 00 12 */	li r4, 0x12
/* 00003324 000033E8  4B FF D7 4D */	bl BtlUnit_CheckStatus
/* 00003328 000033EC  2C 03 00 00 */	cmpwi r3, 0x0
/* 0000332C 000033F0  40 82 00 10 */	bne .L_0000333C
/* 00003330 000033F4  7C 1B F0 00 */	cmpw r27, r30
/* 00003334 000033F8  41 82 00 08 */	beq .L_0000333C
/* 00003338 000033FC  3B 9C 00 01 */	addi r28, r28, 0x1
.L_0000333C:
/* 0000333C 00003400  3B 7B 00 01 */	addi r27, r27, 0x1
/* 00003340 00003404  2C 1B 00 40 */	cmpwi r27, 0x40
/* 00003344 00003408  41 80 FF 90 */	blt .L_000032D4
/* 00003348 0000340C  2C 1C 00 01 */	cmpwi r28, 0x1
/* 0000334C 00003410  41 80 00 18 */	blt .L_00003364
/* 00003350 00003414  80 9D 00 04 */	lwz r4, 0x4(r29)
/* 00003354 00003418  7F 23 CB 78 */	mr r3, r25
/* 00003358 0000341C  38 A0 00 01 */	li r5, 0x1
/* 0000335C 00003420  4B FF D7 15 */	bl evtSetValue
/* 00003360 00003424  48 00 00 14 */	b .L_00003374
.L_00003364:
/* 00003364 00003428  80 9D 00 04 */	lwz r4, 0x4(r29)
/* 00003368 0000342C  7F 23 CB 78 */	mr r3, r25
/* 0000336C 00003430  38 A0 00 00 */	li r5, 0x0
/* 00003370 00003434  4B FF D7 01 */	bl evtSetValue
.L_00003374:
/* 00003374 00003438  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 00003378 0000343C  38 60 00 02 */	li r3, 0x2
/* 0000337C 00003440  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00003380 00003444  7C 08 03 A6 */	mtlr r0
/* 00003384 00003448  38 21 00 30 */	addi r1, r1, 0x30
/* 00003388 0000344C  4E 80 00 20 */	blr
.endfn teresa_check_trans

# 0x00005300..0x00005430 | size: 0x130
.rodata
.balign 8

# .rodata:0x0 | 0x5300 | size: 0x15
.obj str_btl_un_purple_teresa_jon_0000c330, local
	.string "btl_un_purple_teresa"
.endobj str_btl_un_purple_teresa_jon_0000c330

# .rodata:0x15 | 0x5315 | size: 0x3
.obj gap_03_00005315_rodata, global
.hidden gap_03_00005315_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005315_rodata

# .rodata:0x18 | 0x5318 | size: 0x18
.obj str_SFX_ENM_TELESA_DAMAG_jon_0000c348, local
	.string "SFX_ENM_TELESA_DAMAGED1"
.endobj str_SFX_ENM_TELESA_DAMAG_jon_0000c348

# .rodata:0x30 | 0x5330 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_jon_0000c360, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_jon_0000c360

# .rodata:0x45 | 0x5345 | size: 0x3
.obj gap_03_00005345_rodata, global
.hidden gap_03_00005345_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005345_rodata

# .rodata:0x48 | 0x5348 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_jon_0000c378, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_jon_0000c378

# .rodata:0x5C | 0x535C | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_jon_0000c38c, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_jon_0000c38c

# .rodata:0x75 | 0x5375 | size: 0x3
.obj gap_03_00005375_rodata, global
.hidden gap_03_00005375_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005375_rodata

# .rodata:0x78 | 0x5378 | size: 0xB
.obj str_c_teresa_p_jon_0000c3a8, local
	.string "c_teresa_p"
.endobj str_c_teresa_p_jon_0000c3a8

# .rodata:0x83 | 0x5383 | size: 0x1
.obj gap_03_00005383_rodata, global
.hidden gap_03_00005383_rodata
	.byte 0x00
.endobj gap_03_00005383_rodata

# .rodata:0x84 | 0x5384 | size: 0x4
.obj str_N_1_jon_0000c3b4, local
	.string "N_1"
.endobj str_N_1_jon_0000c3b4

# .rodata:0x88 | 0x5388 | size: 0x4
.obj str_Y_1_jon_0000c3b8, local
	.string "Y_1"
.endobj str_Y_1_jon_0000c3b8

# .rodata:0x8C | 0x538C | size: 0x4
.obj str_K_1_jon_0000c3bc, local
	.string "K_1"
.endobj str_K_1_jon_0000c3bc

# .rodata:0x90 | 0x5390 | size: 0x4
.obj str_X_1_jon_0000c3c0, local
	.string "X_1"
.endobj str_X_1_jon_0000c3c0

# .rodata:0x94 | 0x5394 | size: 0x4
.obj str_S_1_jon_0000c3c4, local
	.string "S_1"
.endobj str_S_1_jon_0000c3c4

# .rodata:0x98 | 0x5398 | size: 0x4
.obj str_Q_1_jon_0000c3c8, local
	.string "Q_1"
.endobj str_Q_1_jon_0000c3c8

# .rodata:0x9C | 0x539C | size: 0x4
.obj str_A_2_jon_0000c3cc, local
	.string "A_2"
.endobj str_A_2_jon_0000c3cc

# .rodata:0xA0 | 0x53A0 | size: 0x4
.obj str_D_1_jon_0000c3d0, local
	.string "D_1"
.endobj str_D_1_jon_0000c3d0

# .rodata:0xA4 | 0x53A4 | size: 0x4
.obj str_W_1_jon_0000c3d4, local
	.string "W_1"
.endobj str_W_1_jon_0000c3d4

# .rodata:0xA8 | 0x53A8 | size: 0x4
.obj str_R_1_jon_0000c3d8, local
	.string "R_1"
.endobj str_R_1_jon_0000c3d8

# .rodata:0xAC | 0x53AC | size: 0x4
.obj str_T_1_jon_0000c3dc, local
	.string "T_1"
.endobj str_T_1_jon_0000c3dc

# .rodata:0xB0 | 0x53B0 | size: 0x15
.obj str_SFX_ENM_TELESA_MOVE3_jon_0000c3e0, local
	.string "SFX_ENM_TELESA_MOVE3"
.endobj str_SFX_ENM_TELESA_MOVE3_jon_0000c3e0

# .rodata:0xC5 | 0x53C5 | size: 0x3
.obj gap_03_000053C5_rodata, global
.hidden gap_03_000053C5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000053C5_rodata

# .rodata:0xC8 | 0x53C8 | size: 0x15
.obj str_SFX_ENM_TELESA_MOVE4_jon_0000c3f8, local
	.string "SFX_ENM_TELESA_MOVE4"
.endobj str_SFX_ENM_TELESA_MOVE4_jon_0000c3f8

# .rodata:0xDD | 0x53DD | size: 0x3
.obj gap_03_000053DD_rodata, global
.hidden gap_03_000053DD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000053DD_rodata

# .rodata:0xE0 | 0x53E0 | size: 0x4
.obj str_A_1_jon_0000c410, local
	.string "A_1"
.endobj str_A_1_jon_0000c410

# .rodata:0xE4 | 0x53E4 | size: 0x17
.obj str_SFX_ENM_TELESA_ATTAC_jon_0000c414, local
	.string "SFX_ENM_TELESA_ATTACK1"
.endobj str_SFX_ENM_TELESA_ATTAC_jon_0000c414

# .rodata:0xFB | 0x53FB | size: 0x1
.obj gap_03_000053FB_rodata, global
.hidden gap_03_000053FB_rodata
	.byte 0x00
.endobj gap_03_000053FB_rodata

# .rodata:0xFC | 0x53FC | size: 0x15
.obj str_SFX_ENM_TELESA_MOVE2_jon_0000c42c, local
	.string "SFX_ENM_TELESA_MOVE2"
.endobj str_SFX_ENM_TELESA_MOVE2_jon_0000c42c

# .rodata:0x111 | 0x5411 | size: 0x3
.obj gap_03_00005411_rodata, global
.hidden gap_03_00005411_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005411_rodata

# .rodata:0x114 | 0x5414 | size: 0x15
.obj str_SFX_ENM_TELESA_MOVE1_jon_0000c444, local
	.string "SFX_ENM_TELESA_MOVE1"
.endobj str_SFX_ENM_TELESA_MOVE1_jon_0000c444

# .rodata:0x129 | 0x5429 | size: 0x7
.obj gap_03_00005429_rodata, global
.hidden gap_03_00005429_rodata
	.4byte 0x00000000
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005429_rodata

# 0x000496F0..0x0004AF70 | size: 0x1880
.data
.balign 8

# .data:0x0 | 0x496F0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x496F8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x496FC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x49700 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x49704 | size: 0x4
.obj gap_04_00049704_data, global
.hidden gap_04_00049704_data
	.4byte 0x00000000
.endobj gap_04_00049704_data

# .data:0x18 | 0x49708 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x49710 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x49714 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x49718 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x49720 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x49724 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x49728 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x4972C | size: 0x4
.obj gap_04_0004972C_data, global
.hidden gap_04_0004972C_data
	.4byte 0x00000000
.endobj gap_04_0004972C_data

# .data:0x40 | 0x49730 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x49738 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x4973C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x49740 | size: 0xC4
.obj unit_purple_teresa_14_data_49740, global
	.4byte 0x0000006A
	.4byte str_btl_un_purple_teresa_jon_0000c330
	.4byte 0x00080000
	.4byte 0x01011800
	.4byte 0x04460032
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
	.4byte str_SFX_ENM_TELESA_DAMAG_jon_0000c348
	.4byte str_SFX_BTL_DAMAGE_FIRE1_jon_0000c360
	.4byte str_SFX_BTL_DAMAGE_ICE1_jon_0000c378
	.4byte str_SFX_BTL_DAMAGE_BIRIB_jon_0000c38c
	.4byte 0x00000004
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_purple_teresa_14_data_49740

# .data:0x114 | 0x49804 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x49809 | size: 0x3
.obj gap_04_00049809_data, global
.hidden gap_04_00049809_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00049809_data

# .data:0x11C | 0x4980C | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x49811 | size: 0x3
.obj gap_04_00049811_data, global
.hidden gap_04_00049811_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00049811_data

# .data:0x124 | 0x49814 | size: 0x16
.obj regist, local
	.4byte 0x28286400
	.4byte 0x28646428
	.4byte 0x64556455
	.4byte 0x645A3228
	.4byte 0x55640064
	.2byte 0x640A
.endobj regist

# .data:0x13A | 0x4982A | size: 0x2
.obj gap_04_0004982A_data, global
.hidden gap_04_0004982A_data
	.2byte 0x0000
.endobj gap_04_0004982A_data

# .data:0x13C | 0x4982C | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_purple_teresa_jon_0000c330
	.4byte str_c_teresa_p_jon_0000c3a8
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

# .data:0x188 | 0x49878 | size: 0xC0
.obj weapon_teresa_attack, local
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

# .data:0x248 | 0x49938 | size: 0xC0
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

# .data:0x308 | 0x499F8 | size: 0xC0
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

# .data:0x3C8 | 0x49AB8 | size: 0xC0
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

# .data:0x488 | 0x49B78 | size: 0x88
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_N_1_jon_0000c3b4
	.4byte 0x00000002
	.4byte str_Y_1_jon_0000c3b8
	.4byte 0x00000009
	.4byte str_Y_1_jon_0000c3b8
	.4byte 0x00000005
	.4byte str_K_1_jon_0000c3bc
	.4byte 0x00000004
	.4byte str_X_1_jon_0000c3c0
	.4byte 0x00000003
	.4byte str_X_1_jon_0000c3c0
	.4byte 0x0000001C
	.4byte str_S_1_jon_0000c3c4
	.4byte 0x0000001D
	.4byte str_Q_1_jon_0000c3c8
	.4byte 0x0000001E
	.4byte str_Q_1_jon_0000c3c8
	.4byte 0x0000001F
	.4byte str_A_2_jon_0000c3cc
	.4byte 0x00000027
	.4byte str_D_1_jon_0000c3d0
	.4byte 0x00000028
	.4byte str_W_1_jon_0000c3d4
	.4byte 0x0000002A
	.4byte str_R_1_jon_0000c3d8
	.4byte 0x00000038
	.4byte str_X_1_jon_0000c3c0
	.4byte 0x00000039
	.4byte str_X_1_jon_0000c3c0
	.4byte 0x00000041
	.4byte str_T_1_jon_0000c3dc
	.4byte 0x00000045
	.4byte str_S_1_jon_0000c3c4
.endobj pose_table

# .data:0x510 | 0x49C00 | size: 0x8
.obj data_table, local
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x518 | 0x49C08 | size: 0xBC
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

# .data:0x5D4 | 0x49CC4 | size: 0x28
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

# .data:0x5FC | 0x49CEC | size: 0x264
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

# .data:0x860 | 0x49F50 | size: 0x588
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
	.4byte str_SFX_ENM_TELESA_MOVE3_jon_0000c3e0
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
	.4byte str_SFX_ENM_TELESA_MOVE4_jon_0000c3f8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1_jon_0000c410
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
	.4byte str_SFX_ENM_TELESA_ATTAC_jon_0000c414
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2_jon_0000c3cc
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
	.4byte str_X_1_jon_0000c3c0
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

# .data:0xDE8 | 0x4A4D8 | size: 0x310
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
	.4byte str_SFX_ENM_TELESA_MOVE2_jon_0000c42c
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
	.4byte str_A_1_jon_0000c410
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
	.4byte str_S_1_jon_0000c3c4
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
	.4byte str_S_1_jon_0000c3c4
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

# .data:0x10F8 | 0x4A7E8 | size: 0x484
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
	.4byte str_SFX_ENM_TELESA_MOVE3_jon_0000c3e0
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
	.4byte str_SFX_ENM_TELESA_MOVE4_jon_0000c3f8
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
	.4byte str_S_1_jon_0000c3c4
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

# .data:0x157C | 0x4AC6C | size: 0x150
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
	.4byte str_S_1_jon_0000c3c4
	.4byte 0x00000002
	.4byte 0x00000001
.endobj move_event

# .data:0x16CC | 0x4ADBC | size: 0x19C
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
	.4byte str_T_1_jon_0000c3dc
	.4byte 0x00000021
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TELESA_MOVE1_jon_0000c444
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

# .data:0x1868 | 0x4AF58 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event
