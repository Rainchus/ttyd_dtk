.include "macros.inc"
.file "unit_purple_teresa.o"

# 0x000011A8..0x00001400 | size: 0x258
.text
.balign 4

# .text:0x0 | 0x11A8 | size: 0x9C
.fn teresa_check_teresa, local
/* 000011A8 00001264  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 000011AC 00001268  7C 08 02 A6 */	mflr r0
/* 000011B0 0000126C  90 01 00 24 */	stw r0, 0x24(r1)
/* 000011B4 00001270  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 000011B8 00001274  7C 7D 1B 78 */	mr r29, r3
/* 000011BC 00001278  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 000011C0 0000127C  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 000011C4 00001280  4B FF EE 3D */	bl evtGetValue
/* 000011C8 00001284  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 000011CC 00001288  3B C0 00 00 */	li r30, 0x0
/* 000011D0 0000128C  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 000011D4 00001290  7C 64 1B 78 */	mr r4, r3
/* 000011D8 00001294  80 65 00 00 */	lwz r3, 0x0(r5)
/* 000011DC 00001298  4B FF EE 25 */	bl BattleGetUnitPtr
/* 000011E0 0000129C  28 03 00 00 */	cmplwi r3, 0x0
/* 000011E4 000012A0  40 82 00 1C */	bne .L_00001200
/* 000011E8 000012A4  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 000011EC 000012A8  7F A3 EB 78 */	mr r3, r29
/* 000011F0 000012AC  38 A0 00 00 */	li r5, 0x0
/* 000011F4 000012B0  4B FF EE 0D */	bl evtSetValue
/* 000011F8 000012B4  38 60 00 02 */	li r3, 0x2
/* 000011FC 000012B8  48 00 00 34 */	b .L_00001230
.L_00001200:
/* 00001200 000012BC  80 03 00 08 */	lwz r0, 0x8(r3)
/* 00001204 000012C0  2C 00 00 4B */	cmpwi r0, 0x4b
/* 00001208 000012C4  40 82 00 08 */	bne .L_00001210
/* 0000120C 000012C8  3B C0 00 01 */	li r30, 0x1
.L_00001210:
/* 00001210 000012CC  2C 00 00 6A */	cmpwi r0, 0x6a
/* 00001214 000012D0  40 82 00 08 */	bne .L_0000121C
/* 00001218 000012D4  3B C0 00 01 */	li r30, 0x1
.L_0000121C:
/* 0000121C 000012D8  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00001220 000012DC  7F A3 EB 78 */	mr r3, r29
/* 00001224 000012E0  7F C5 F3 78 */	mr r5, r30
/* 00001228 000012E4  4B FF ED D9 */	bl evtSetValue
/* 0000122C 000012E8  38 60 00 02 */	li r3, 0x2
.L_00001230:
/* 00001230 000012EC  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 00001234 000012F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00001238 000012F4  7C 08 03 A6 */	mtlr r0
/* 0000123C 000012F8  38 21 00 20 */	addi r1, r1, 0x20
/* 00001240 000012FC  4E 80 00 20 */	blr
.endfn teresa_check_teresa

# .text:0x9C | 0x1244 | size: 0xC0
.fn teresa_check_move, local
/* 00001244 00001300  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00001248 00001304  7C 08 02 A6 */	mflr r0
/* 0000124C 00001308  90 01 00 24 */	stw r0, 0x24(r1)
/* 00001250 0000130C  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 00001254 00001310  7C 7B 1B 78 */	mr r27, r3
/* 00001258 00001314  3C 60 00 00 */	lis r3, _battleWorkPointer@ha
/* 0000125C 00001318  3B A0 00 00 */	li r29, 0x0
/* 00001260 0000131C  3B E3 00 00 */	addi r31, r3, _battleWorkPointer@l
/* 00001264 00001320  3B 80 00 00 */	li r28, 0x0
/* 00001268 00001324  83 DB 00 18 */	lwz r30, 0x18(r27)
.L_0000126C:
/* 0000126C 00001328  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 00001270 0000132C  7F 84 E3 78 */	mr r4, r28
/* 00001274 00001330  4B FF ED 8D */	bl BattleGetUnitPtr
/* 00001278 00001334  28 03 00 00 */	cmplwi r3, 0x0
/* 0000127C 00001338  41 82 00 38 */	beq .L_000012B4
/* 00001280 0000133C  80 83 00 08 */	lwz r4, 0x8(r3)
/* 00001284 00001340  2C 04 00 4B */	cmpwi r4, 0x4b
/* 00001288 00001344  40 82 00 14 */	bne .L_0000129C
/* 0000128C 00001348  80 03 02 18 */	lwz r0, 0x218(r3)
/* 00001290 0000134C  2C 00 00 00 */	cmpwi r0, 0x0
/* 00001294 00001350  40 82 00 08 */	bne .L_0000129C
/* 00001298 00001354  3B BD 00 01 */	addi r29, r29, 0x1
.L_0000129C:
/* 0000129C 00001358  2C 04 00 6A */	cmpwi r4, 0x6a
/* 000012A0 0000135C  40 82 00 14 */	bne .L_000012B4
/* 000012A4 00001360  80 03 02 18 */	lwz r0, 0x218(r3)
/* 000012A8 00001364  2C 00 00 00 */	cmpwi r0, 0x0
/* 000012AC 00001368  40 82 00 08 */	bne .L_000012B4
/* 000012B0 0000136C  3B BD 00 01 */	addi r29, r29, 0x1
.L_000012B4:
/* 000012B4 00001370  3B 9C 00 01 */	addi r28, r28, 0x1
/* 000012B8 00001374  2C 1C 00 40 */	cmpwi r28, 0x40
/* 000012BC 00001378  41 80 FF B0 */	blt .L_0000126C
/* 000012C0 0000137C  2C 1D 00 01 */	cmpwi r29, 0x1
/* 000012C4 00001380  41 80 00 18 */	blt .L_000012DC
/* 000012C8 00001384  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 000012CC 00001388  7F 63 DB 78 */	mr r3, r27
/* 000012D0 0000138C  38 A0 00 01 */	li r5, 0x1
/* 000012D4 00001390  4B FF ED 2D */	bl evtSetValue
/* 000012D8 00001394  48 00 00 14 */	b .L_000012EC
.L_000012DC:
/* 000012DC 00001398  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 000012E0 0000139C  7F 63 DB 78 */	mr r3, r27
/* 000012E4 000013A0  38 A0 00 00 */	li r5, 0x0
/* 000012E8 000013A4  4B FF ED 19 */	bl evtSetValue
.L_000012EC:
/* 000012EC 000013A8  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 000012F0 000013AC  38 60 00 02 */	li r3, 0x2
/* 000012F4 000013B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 000012F8 000013B4  7C 08 03 A6 */	mtlr r0
/* 000012FC 000013B8  38 21 00 20 */	addi r1, r1, 0x20
/* 00001300 000013BC  4E 80 00 20 */	blr
.endfn teresa_check_move

# .text:0x15C | 0x1304 | size: 0xFC
.fn teresa_check_trans, local
/* 00001304 000013C0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00001308 000013C4  7C 08 02 A6 */	mflr r0
/* 0000130C 000013C8  90 01 00 34 */	stw r0, 0x34(r1)
/* 00001310 000013CC  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 00001314 000013D0  7C 79 1B 78 */	mr r25, r3
/* 00001318 000013D4  3B 80 00 00 */	li r28, 0x0
/* 0000131C 000013D8  83 A3 00 18 */	lwz r29, 0x18(r3)
/* 00001320 000013DC  80 9D 00 00 */	lwz r4, 0x0(r29)
/* 00001324 000013E0  4B FF EC DD */	bl evtGetValue
/* 00001328 000013E4  7C 60 1B 78 */	mr r0, r3
/* 0000132C 000013E8  7F 23 CB 78 */	mr r3, r25
/* 00001330 000013EC  7C 04 03 78 */	mr r4, r0
/* 00001334 000013F0  4B FF EC CD */	bl BattleTransID
/* 00001338 000013F4  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0000133C 000013F8  7C 7E 1B 78 */	mr r30, r3
/* 00001340 000013FC  3B E4 00 00 */	addi r31, r4, _battleWorkPointer@l
/* 00001344 00001400  3B 60 00 00 */	li r27, 0x0
.L_00001348:
/* 00001348 00001404  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 0000134C 00001408  7F 64 DB 78 */	mr r4, r27
/* 00001350 0000140C  4B FF EC B1 */	bl BattleGetUnitPtr
/* 00001354 00001410  7C 7A 1B 79 */	mr. r26, r3
/* 00001358 00001414  41 82 00 58 */	beq .L_000013B0
/* 0000135C 00001418  80 1A 00 08 */	lwz r0, 0x8(r26)
/* 00001360 0000141C  2C 00 00 4B */	cmpwi r0, 0x4b
/* 00001364 00001420  40 82 00 20 */	bne .L_00001384
/* 00001368 00001424  38 80 00 12 */	li r4, 0x12
/* 0000136C 00001428  4B FF EC 95 */	bl BtlUnit_CheckStatus
/* 00001370 0000142C  2C 03 00 00 */	cmpwi r3, 0x0
/* 00001374 00001430  40 82 00 10 */	bne .L_00001384
/* 00001378 00001434  7C 1B F0 00 */	cmpw r27, r30
/* 0000137C 00001438  41 82 00 08 */	beq .L_00001384
/* 00001380 0000143C  3B 9C 00 01 */	addi r28, r28, 0x1
.L_00001384:
/* 00001384 00001440  80 1A 00 08 */	lwz r0, 0x8(r26)
/* 00001388 00001444  2C 00 00 6A */	cmpwi r0, 0x6a
/* 0000138C 00001448  40 82 00 24 */	bne .L_000013B0
/* 00001390 0000144C  7F 43 D3 78 */	mr r3, r26
/* 00001394 00001450  38 80 00 12 */	li r4, 0x12
/* 00001398 00001454  4B FF EC 69 */	bl BtlUnit_CheckStatus
/* 0000139C 00001458  2C 03 00 00 */	cmpwi r3, 0x0
/* 000013A0 0000145C  40 82 00 10 */	bne .L_000013B0
/* 000013A4 00001460  7C 1B F0 00 */	cmpw r27, r30
/* 000013A8 00001464  41 82 00 08 */	beq .L_000013B0
/* 000013AC 00001468  3B 9C 00 01 */	addi r28, r28, 0x1
.L_000013B0:
/* 000013B0 0000146C  3B 7B 00 01 */	addi r27, r27, 0x1
/* 000013B4 00001470  2C 1B 00 40 */	cmpwi r27, 0x40
/* 000013B8 00001474  41 80 FF 90 */	blt .L_00001348
/* 000013BC 00001478  2C 1C 00 01 */	cmpwi r28, 0x1
/* 000013C0 0000147C  41 80 00 18 */	blt .L_000013D8
/* 000013C4 00001480  80 9D 00 04 */	lwz r4, 0x4(r29)
/* 000013C8 00001484  7F 23 CB 78 */	mr r3, r25
/* 000013CC 00001488  38 A0 00 01 */	li r5, 0x1
/* 000013D0 0000148C  4B FF EC 31 */	bl evtSetValue
/* 000013D4 00001490  48 00 00 14 */	b .L_000013E8
.L_000013D8:
/* 000013D8 00001494  80 9D 00 04 */	lwz r4, 0x4(r29)
/* 000013DC 00001498  7F 23 CB 78 */	mr r3, r25
/* 000013E0 0000149C  38 A0 00 00 */	li r5, 0x0
/* 000013E4 000014A0  4B FF EC 1D */	bl evtSetValue
.L_000013E8:
/* 000013E8 000014A4  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 000013EC 000014A8  38 60 00 02 */	li r3, 0x2
/* 000013F0 000014AC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 000013F4 000014B0  7C 08 03 A6 */	mtlr r0
/* 000013F8 000014B4  38 21 00 30 */	addi r1, r1, 0x30
/* 000013FC 000014B8  4E 80 00 20 */	blr
.endfn teresa_check_trans

# 0x00002650..0x00002779 | size: 0x129
.rodata
.balign 8

# .rodata:0x0 | 0x2650 | size: 0x15
.obj str_btl_un_purple_teresa_pik_00003b18, local
	.string "btl_un_purple_teresa"
.endobj str_btl_un_purple_teresa_pik_00003b18

# .rodata:0x15 | 0x2665 | size: 0x3
.obj gap_03_00002665_rodata, global
.hidden gap_03_00002665_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002665_rodata

# .rodata:0x18 | 0x2668 | size: 0x18
.obj str_SFX_ENM_TELESA_DAMAG_pik_00003b30, local
	.string "SFX_ENM_TELESA_DAMAGED1"
.endobj str_SFX_ENM_TELESA_DAMAG_pik_00003b30

# .rodata:0x30 | 0x2680 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_pik_00003b48, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_pik_00003b48

# .rodata:0x45 | 0x2695 | size: 0x3
.obj gap_03_00002695_rodata, global
.hidden gap_03_00002695_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002695_rodata

# .rodata:0x48 | 0x2698 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_pik_00003b60, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_pik_00003b60

# .rodata:0x5C | 0x26AC | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_pik_00003b74, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_pik_00003b74

# .rodata:0x75 | 0x26C5 | size: 0x3
.obj gap_03_000026C5_rodata, global
.hidden gap_03_000026C5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000026C5_rodata

# .rodata:0x78 | 0x26C8 | size: 0xB
.obj str_c_teresa_p_pik_00003b90, local
	.string "c_teresa_p"
.endobj str_c_teresa_p_pik_00003b90

# .rodata:0x83 | 0x26D3 | size: 0x1
.obj gap_03_000026D3_rodata, global
.hidden gap_03_000026D3_rodata
	.byte 0x00
.endobj gap_03_000026D3_rodata

# .rodata:0x84 | 0x26D4 | size: 0x4
.obj str_N_1_pik_00003b9c, local
	.string "N_1"
.endobj str_N_1_pik_00003b9c

# .rodata:0x88 | 0x26D8 | size: 0x4
.obj str_Y_1_pik_00003ba0, local
	.string "Y_1"
.endobj str_Y_1_pik_00003ba0

# .rodata:0x8C | 0x26DC | size: 0x4
.obj str_K_1_pik_00003ba4, local
	.string "K_1"
.endobj str_K_1_pik_00003ba4

# .rodata:0x90 | 0x26E0 | size: 0x4
.obj str_X_1_pik_00003ba8, local
	.string "X_1"
.endobj str_X_1_pik_00003ba8

# .rodata:0x94 | 0x26E4 | size: 0x4
.obj str_S_1_pik_00003bac, local
	.string "S_1"
.endobj str_S_1_pik_00003bac

# .rodata:0x98 | 0x26E8 | size: 0x4
.obj str_Q_1_pik_00003bb0, local
	.string "Q_1"
.endobj str_Q_1_pik_00003bb0

# .rodata:0x9C | 0x26EC | size: 0x4
.obj str_A_2_pik_00003bb4, local
	.string "A_2"
.endobj str_A_2_pik_00003bb4

# .rodata:0xA0 | 0x26F0 | size: 0x4
.obj str_D_1_pik_00003bb8, local
	.string "D_1"
.endobj str_D_1_pik_00003bb8

# .rodata:0xA4 | 0x26F4 | size: 0x4
.obj str_W_1_pik_00003bbc, local
	.string "W_1"
.endobj str_W_1_pik_00003bbc

# .rodata:0xA8 | 0x26F8 | size: 0x4
.obj str_R_1_pik_00003bc0, local
	.string "R_1"
.endobj str_R_1_pik_00003bc0

# .rodata:0xAC | 0x26FC | size: 0x4
.obj str_T_1_pik_00003bc4, local
	.string "T_1"
.endobj str_T_1_pik_00003bc4

# .rodata:0xB0 | 0x2700 | size: 0x15
.obj str_SFX_ENM_TELESA_MOVE3_pik_00003bc8, local
	.string "SFX_ENM_TELESA_MOVE3"
.endobj str_SFX_ENM_TELESA_MOVE3_pik_00003bc8

# .rodata:0xC5 | 0x2715 | size: 0x3
.obj gap_03_00002715_rodata, global
.hidden gap_03_00002715_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002715_rodata

# .rodata:0xC8 | 0x2718 | size: 0x15
.obj str_SFX_ENM_TELESA_MOVE4_pik_00003be0, local
	.string "SFX_ENM_TELESA_MOVE4"
.endobj str_SFX_ENM_TELESA_MOVE4_pik_00003be0

# .rodata:0xDD | 0x272D | size: 0x3
.obj gap_03_0000272D_rodata, global
.hidden gap_03_0000272D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000272D_rodata

# .rodata:0xE0 | 0x2730 | size: 0x4
.obj str_A_1_pik_00003bf8, local
	.string "A_1"
.endobj str_A_1_pik_00003bf8

# .rodata:0xE4 | 0x2734 | size: 0x17
.obj str_SFX_ENM_TELESA_ATTAC_pik_00003bfc, local
	.string "SFX_ENM_TELESA_ATTACK1"
.endobj str_SFX_ENM_TELESA_ATTAC_pik_00003bfc

# .rodata:0xFB | 0x274B | size: 0x1
.obj gap_03_0000274B_rodata, global
.hidden gap_03_0000274B_rodata
	.byte 0x00
.endobj gap_03_0000274B_rodata

# .rodata:0xFC | 0x274C | size: 0x15
.obj str_SFX_ENM_TELESA_MOVE2_pik_00003c14, local
	.string "SFX_ENM_TELESA_MOVE2"
.endobj str_SFX_ENM_TELESA_MOVE2_pik_00003c14

# .rodata:0x111 | 0x2761 | size: 0x3
.obj gap_03_00002761_rodata, global
.hidden gap_03_00002761_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002761_rodata

# .rodata:0x114 | 0x2764 | size: 0x15
.obj str_SFX_ENM_TELESA_MOVE1_pik_00003c2c, local
	.string "SFX_ENM_TELESA_MOVE1"
.endobj str_SFX_ENM_TELESA_MOVE1_pik_00003c2c

# 0x0000E5F0..0x0000FE70 | size: 0x1880
.data
.balign 8

# .data:0x0 | 0xE5F0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0xE5F8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0xE5FC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0xE600 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0xE604 | size: 0x4
.obj gap_04_0000E604_data, global
.hidden gap_04_0000E604_data
	.4byte 0x00000000
.endobj gap_04_0000E604_data

# .data:0x18 | 0xE608 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0xE610 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0xE614 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0xE618 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0xE620 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0xE624 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0xE628 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0xE62C | size: 0x4
.obj gap_04_0000E62C_data, global
.hidden gap_04_0000E62C_data
	.4byte 0x00000000
.endobj gap_04_0000E62C_data

# .data:0x40 | 0xE630 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0xE638 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0xE63C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0xE640 | size: 0xC4
.obj unit_purple_teresa_21_data_E640, global
	.4byte 0x0000006A
	.4byte str_btl_un_purple_teresa_pik_00003b18
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
	.4byte str_SFX_ENM_TELESA_DAMAG_pik_00003b30
	.4byte str_SFX_BTL_DAMAGE_FIRE1_pik_00003b48
	.4byte str_SFX_BTL_DAMAGE_ICE1_pik_00003b60
	.4byte str_SFX_BTL_DAMAGE_BIRIB_pik_00003b74
	.4byte 0x00000004
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_purple_teresa_21_data_E640

# .data:0x114 | 0xE704 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0xE709 | size: 0x3
.obj gap_04_0000E709_data, global
.hidden gap_04_0000E709_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0000E709_data

# .data:0x11C | 0xE70C | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0xE711 | size: 0x3
.obj gap_04_0000E711_data, global
.hidden gap_04_0000E711_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0000E711_data

# .data:0x124 | 0xE714 | size: 0x16
.obj regist, local
	.4byte 0x28286400
	.4byte 0x28646428
	.4byte 0x64556455
	.4byte 0x645A3228
	.4byte 0x55640064
	.2byte 0x640A
.endobj regist

# .data:0x13A | 0xE72A | size: 0x2
.obj gap_04_0000E72A_data, global
.hidden gap_04_0000E72A_data
	.2byte 0x0000
.endobj gap_04_0000E72A_data

# .data:0x13C | 0xE72C | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_purple_teresa_pik_00003b18
	.4byte str_c_teresa_p_pik_00003b90
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

# .data:0x188 | 0xE778 | size: 0xC0
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

# .data:0x248 | 0xE838 | size: 0xC0
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

# .data:0x308 | 0xE8F8 | size: 0xC0
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

# .data:0x3C8 | 0xE9B8 | size: 0xC0
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

# .data:0x488 | 0xEA78 | size: 0x88
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_N_1_pik_00003b9c
	.4byte 0x00000002
	.4byte str_Y_1_pik_00003ba0
	.4byte 0x00000009
	.4byte str_Y_1_pik_00003ba0
	.4byte 0x00000005
	.4byte str_K_1_pik_00003ba4
	.4byte 0x00000004
	.4byte str_X_1_pik_00003ba8
	.4byte 0x00000003
	.4byte str_X_1_pik_00003ba8
	.4byte 0x0000001C
	.4byte str_S_1_pik_00003bac
	.4byte 0x0000001D
	.4byte str_Q_1_pik_00003bb0
	.4byte 0x0000001E
	.4byte str_Q_1_pik_00003bb0
	.4byte 0x0000001F
	.4byte str_A_2_pik_00003bb4
	.4byte 0x00000027
	.4byte str_D_1_pik_00003bb8
	.4byte 0x00000028
	.4byte str_W_1_pik_00003bbc
	.4byte 0x0000002A
	.4byte str_R_1_pik_00003bc0
	.4byte 0x00000038
	.4byte str_X_1_pik_00003ba8
	.4byte 0x00000039
	.4byte str_X_1_pik_00003ba8
	.4byte 0x00000041
	.4byte str_T_1_pik_00003bc4
	.4byte 0x00000045
	.4byte str_S_1_pik_00003bac
.endobj pose_table

# .data:0x510 | 0xEB00 | size: 0x8
.obj data_table, local
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x518 | 0xEB08 | size: 0xBC
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

# .data:0x5D4 | 0xEBC4 | size: 0x28
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

# .data:0x5FC | 0xEBEC | size: 0x264
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

# .data:0x860 | 0xEE50 | size: 0x588
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
	.4byte str_SFX_ENM_TELESA_MOVE3_pik_00003bc8
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
	.4byte str_SFX_ENM_TELESA_MOVE4_pik_00003be0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1_pik_00003bf8
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
	.4byte str_SFX_ENM_TELESA_ATTAC_pik_00003bfc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2_pik_00003bb4
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
	.4byte str_X_1_pik_00003ba8
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

# .data:0xDE8 | 0xF3D8 | size: 0x310
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
	.4byte str_SFX_ENM_TELESA_MOVE2_pik_00003c14
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
	.4byte str_A_1_pik_00003bf8
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
	.4byte str_S_1_pik_00003bac
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
	.4byte str_S_1_pik_00003bac
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

# .data:0x10F8 | 0xF6E8 | size: 0x484
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
	.4byte str_SFX_ENM_TELESA_MOVE3_pik_00003bc8
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
	.4byte str_SFX_ENM_TELESA_MOVE4_pik_00003be0
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
	.4byte str_S_1_pik_00003bac
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

# .data:0x157C | 0xFB6C | size: 0x150
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
	.4byte str_S_1_pik_00003bac
	.4byte 0x00000002
	.4byte 0x00000001
.endobj move_event

# .data:0x16CC | 0xFCBC | size: 0x19C
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
	.4byte str_T_1_pik_00003bc4
	.4byte 0x00000021
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TELESA_MOVE1_pik_00003c2c
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

# .data:0x1868 | 0xFE58 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event
