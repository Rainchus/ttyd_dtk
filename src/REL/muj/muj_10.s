.include "macros.inc"
.file "muj_10.o"

# 0x0000342C..0x00003674 | size: 0x248
.text
.balign 4

# .text:0x0 | 0x342C | size: 0x64
.fn tornade_alpha_func, local
/* 0000342C 000034F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00003430 000034F4  7C 08 02 A6 */	mflr r0
/* 00003434 000034F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 00003438 000034FC  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 0000343C 00003500  BF C1 00 10 */	stmw r30, 0x10(r1)
/* 00003440 00003504  7C 7E 1B 78 */	mr r30, r3
/* 00003444 00003508  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00003448 0000350C  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 0000344C 00003510  4B FF D5 5D */	bl evtGetValue
/* 00003450 00003514  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00003454 00003518  7C 7F 1B 78 */	mr r31, r3
/* 00003458 0000351C  7F C3 F3 78 */	mr r3, r30
/* 0000345C 00003520  4B FF D5 4D */	bl evtGetFloat
/* 00003460 00003524  FF E0 08 90 */	fmr f31, f1
/* 00003464 00003528  7F E3 FB 78 */	mr r3, r31
/* 00003468 0000352C  4B FF D5 41 */	bl effNameToPtr
/* 0000346C 00003530  80 83 00 0C */	lwz r4, 0xc(r3)
/* 00003470 00003534  38 60 00 02 */	li r3, 0x2
/* 00003474 00003538  D3 E4 01 48 */	stfs f31, 0x148(r4)
/* 00003478 0000353C  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 0000347C 00003540  BB C1 00 10 */	lmw r30, 0x10(r1)
/* 00003480 00003544  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00003484 00003548  7C 08 03 A6 */	mtlr r0
/* 00003488 0000354C  38 21 00 20 */	addi r1, r1, 0x20
/* 0000348C 00003550  4E 80 00 20 */	blr
.endfn tornade_alpha_func

# .text:0x64 | 0x3490 | size: 0x5C
.fn suifu_option_func, local
/* 00003490 00003554  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00003494 00003558  7C 08 02 A6 */	mflr r0
/* 00003498 0000355C  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000349C 00003560  80 83 00 18 */	lwz r4, 0x18(r3)
/* 000034A0 00003564  80 84 00 00 */	lwz r4, 0x0(r4)
/* 000034A4 00003568  4B FF D5 05 */	bl evtGetFloat
/* 000034A8 0000356C  3C 60 00 00 */	lis r3, nanNPCWork@ha
/* 000034AC 00003570  38 00 00 5F */	li r0, 0x5f
/* 000034B0 00003574  80 A3 00 00 */	lwz r5, nanNPCWork@l(r3)
/* 000034B4 00003578  38 60 00 00 */	li r3, 0x0
/* 000034B8 0000357C  7C 09 03 A6 */	mtctr r0
.L_000034BC:
/* 000034BC 00003580  80 05 00 00 */	lwz r0, 0x0(r5)
/* 000034C0 00003584  7C 80 1A 14 */	add r4, r0, r3
/* 000034C4 00003588  38 63 00 C0 */	addi r3, r3, 0xc0
/* 000034C8 0000358C  C0 04 00 34 */	lfs f0, 0x34(r4)
/* 000034CC 00003590  EC 00 08 2A */	fadds f0, f0, f1
/* 000034D0 00003594  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 000034D4 00003598  42 00 FF E8 */	bdnz .L_000034BC
/* 000034D8 0000359C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000034DC 000035A0  38 60 00 02 */	li r3, 0x2
/* 000034E0 000035A4  7C 08 03 A6 */	mtlr r0
/* 000034E4 000035A8  38 21 00 10 */	addi r1, r1, 0x10
/* 000034E8 000035AC  4E 80 00 20 */	blr
.endfn suifu_option_func

# .text:0xC0 | 0x34EC | size: 0x44
.fn suifu_option_init_func, local
/* 000034EC 000035B0  3C 60 00 00 */	lis r3, nanNPCWork@ha
/* 000034F0 000035B4  38 00 00 5F */	li r0, 0x5f
/* 000034F4 000035B8  80 C3 00 00 */	lwz r6, nanNPCWork@l(r3)
/* 000034F8 000035BC  38 60 00 00 */	li r3, 0x0
/* 000034FC 000035C0  7C 09 03 A6 */	mtctr r0
.L_00003500:
/* 00003500 000035C4  80 06 00 00 */	lwz r0, 0x0(r6)
/* 00003504 000035C8  7C A0 1A 14 */	add r5, r0, r3
/* 00003508 000035CC  38 63 00 C0 */	addi r3, r3, 0xc0
/* 0000350C 000035D0  80 85 00 18 */	lwz r4, 0x18(r5)
/* 00003510 000035D4  80 05 00 1C */	lwz r0, 0x1c(r5)
/* 00003514 000035D8  90 85 00 30 */	stw r4, 0x30(r5)
/* 00003518 000035DC  90 05 00 34 */	stw r0, 0x34(r5)
/* 0000351C 000035E0  80 05 00 20 */	lwz r0, 0x20(r5)
/* 00003520 000035E4  90 05 00 38 */	stw r0, 0x38(r5)
/* 00003524 000035E8  42 00 FF DC */	bdnz .L_00003500
/* 00003528 000035EC  38 60 00 02 */	li r3, 0x2
/* 0000352C 000035F0  4E 80 00 20 */	blr
.endfn suifu_option_init_func

# .text:0x104 | 0x3530 | size: 0x144
.fn elmosalpha_func, local
/* 00003530 000035F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00003534 000035F8  7C 08 02 A6 */	mflr r0
/* 00003538 000035FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 0000353C 00003600  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 00003540 00003604  7C 7F 1B 78 */	mr r31, r3
/* 00003544 00003608  80 03 00 68 */	lwz r0, 0x68(r3)
/* 00003548 0000360C  2C 00 00 02 */	cmpwi r0, 0x2
/* 0000354C 00003610  41 82 00 A4 */	beq .L_000035F0
/* 00003550 00003614  40 80 01 10 */	bge .L_00003660
/* 00003554 00003618  2C 00 00 00 */	cmpwi r0, 0x0
/* 00003558 0000361C  41 82 00 10 */	beq .L_00003568
/* 0000355C 00003620  40 80 00 3C */	bge .L_00003598
/* 00003560 00003624  48 00 01 00 */	b .L_00003660
/* 00003564 00003628  48 00 00 FC */	b .L_00003660
.L_00003568:
/* 00003568 0000362C  3C 80 00 00 */	lis r4, gp@ha
/* 0000356C 00003630  38 60 03 E8 */	li r3, 0x3e8
/* 00003570 00003634  38 84 00 00 */	addi r4, r4, gp@l
/* 00003574 00003638  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00003578 0000363C  80 04 00 38 */	lwz r0, 0x38(r4)
/* 0000357C 00003640  80 84 00 3C */	lwz r4, 0x3c(r4)
/* 00003580 00003644  90 9F 00 54 */	stw r4, 0x54(r31)
/* 00003584 00003648  90 1F 00 50 */	stw r0, 0x50(r31)
/* 00003588 0000364C  4B FF D4 21 */	bl irand
/* 0000358C 00003650  90 7F 00 6C */	stw r3, 0x6c(r31)
/* 00003590 00003654  38 00 00 01 */	li r0, 0x1
/* 00003594 00003658  90 1F 00 68 */	stw r0, 0x68(r31)
.L_00003598:
/* 00003598 0000365C  3C 60 80 00 */	lis r3, 0x8000
/* 0000359C 00003660  3C 80 00 00 */	lis r4, gp@ha
/* 000035A0 00003664  80 63 00 F8 */	lwz r3, 0xf8(r3)
/* 000035A4 00003668  38 00 03 E8 */	li r0, 0x3e8
/* 000035A8 0000366C  80 A4 00 00 */	lwz r5, gp@l(r4)
/* 000035AC 00003670  54 63 F0 BE */	srwi r3, r3, 2
/* 000035B0 00003674  80 9F 00 54 */	lwz r4, 0x54(r31)
/* 000035B4 00003678  7C 63 03 96 */	divwu r3, r3, r0
/* 000035B8 0000367C  80 C5 00 3C */	lwz r6, 0x3c(r5)
/* 000035BC 00003680  80 1F 00 6C */	lwz r0, 0x6c(r31)
/* 000035C0 00003684  7C 84 30 50 */	subf r4, r4, r6
/* 000035C4 00003688  80 A5 00 38 */	lwz r5, 0x38(r5)
/* 000035C8 0000368C  7C 64 1B 96 */	divwu r3, r4, r3
/* 000035CC 00003690  7C 03 00 00 */	cmpw r3, r0
/* 000035D0 00003694  41 80 00 90 */	blt .L_00003660
/* 000035D4 00003698  90 DF 00 54 */	stw r6, 0x54(r31)
/* 000035D8 0000369C  38 60 01 F4 */	li r3, 0x1f4
/* 000035DC 000036A0  38 00 00 02 */	li r0, 0x2
/* 000035E0 000036A4  90 BF 00 50 */	stw r5, 0x50(r31)
/* 000035E4 000036A8  90 7F 00 6C */	stw r3, 0x6c(r31)
/* 000035E8 000036AC  90 1F 00 68 */	stw r0, 0x68(r31)
/* 000035EC 000036B0  48 00 00 74 */	b .L_00003660
.L_000035F0:
/* 000035F0 000036B4  3C 60 80 00 */	lis r3, 0x8000
/* 000035F4 000036B8  3C 80 00 00 */	lis r4, gp@ha
/* 000035F8 000036BC  80 63 00 F8 */	lwz r3, 0xf8(r3)
/* 000035FC 000036C0  38 84 00 00 */	addi r4, r4, gp@l
/* 00003600 000036C4  38 00 03 E8 */	li r0, 0x3e8
/* 00003604 000036C8  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00003608 000036CC  54 63 F0 BE */	srwi r3, r3, 2
/* 0000360C 000036D0  80 DF 00 54 */	lwz r6, 0x54(r31)
/* 00003610 000036D4  7C 03 03 96 */	divwu r0, r3, r0
/* 00003614 000036D8  80 64 00 3C */	lwz r3, 0x3c(r4)
/* 00003618 000036DC  80 BF 00 6C */	lwz r5, 0x6c(r31)
/* 0000361C 000036E0  7C 66 18 50 */	subf r3, r6, r3
/* 00003620 000036E4  7C 83 03 96 */	divwu r4, r3, r0
/* 00003624 000036E8  7C 04 28 00 */	cmpw r4, r5
/* 00003628 000036EC  40 80 00 30 */	bge .L_00003658
/* 0000362C 000036F0  3C C0 00 00 */	lis r6, zero_muj_00011360@ha
/* 00003630 000036F4  3C 60 00 00 */	lis r3, float_255_muj_00011364@ha
/* 00003634 000036F8  C0 43 00 00 */	lfs f2, float_255_muj_00011364@l(r3)
/* 00003638 000036FC  38 60 00 00 */	li r3, 0x0
/* 0000363C 00003700  C0 26 00 00 */	lfs f1, zero_muj_00011360@l(r6)
/* 00003640 00003704  4B FF D3 69 */	bl intplGetValue
/* 00003644 00003708  FC 00 08 1E */	fctiwz f0, f1
/* 00003648 0000370C  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 0000364C 00003710  80 01 00 0C */	lwz r0, 0xc(r1)
/* 00003650 00003714  98 1F 00 BF */	stb r0, 0xbf(r31)
/* 00003654 00003718  48 00 00 0C */	b .L_00003660
.L_00003658:
/* 00003658 0000371C  38 00 00 03 */	li r0, 0x3
/* 0000365C 00003720  90 1F 00 68 */	stw r0, 0x68(r31)
.L_00003660:
/* 00003660 00003724  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00003664 00003728  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 00003668 0000372C  7C 08 03 A6 */	mtlr r0
/* 0000366C 00003730  38 21 00 20 */	addi r1, r1, 0x20
/* 00003670 00003734  4E 80 00 20 */	blr
.endfn elmosalpha_func

# 0x00003348..0x000036B8 | size: 0x370
.rodata
.balign 8

# .rodata:0x0 | 0x3348 | size: 0x3
.obj str_me_muj_00010ff8, local
	.string "me"
.endobj str_me_muj_00010ff8

# .rodata:0x3 | 0x334B | size: 0x1
.obj gap_03_0000334B_rodata, global
.hidden gap_03_0000334B_rodata
	.byte 0x00
.endobj gap_03_0000334B_rodata

# .rodata:0x4 | 0x334C | size: 0xF
.obj str_stg5_dou_19_00_muj_00010ffc, local
	.string "stg5_dou_19_00"
.endobj str_stg5_dou_19_00_muj_00010ffc

# .rodata:0x13 | 0x335B | size: 0x1
.obj gap_03_0000335B_rodata, global
.hidden gap_03_0000335B_rodata
	.byte 0x00
.endobj gap_03_0000335B_rodata

# .rodata:0x14 | 0x335C | size: 0xB
.obj str_めがね水夫_muj_0001100c, local
	.4byte 0x82DF82AA
	.4byte 0x82CB9085
	.byte 0x95, 0x76, 0x00
.endobj str_めがね水夫_muj_0001100c

# .rodata:0x1F | 0x3367 | size: 0x1
.obj gap_03_00003367_rodata, global
.hidden gap_03_00003367_rodata
	.byte 0x00
.endobj gap_03_00003367_rodata

# .rodata:0x20 | 0x3368 | size: 0x8
.obj str_S_b_doa_muj_00011018, local
	.string "S_b_doa"
.endobj str_S_b_doa_muj_00011018

# .rodata:0x28 | 0x3370 | size: 0x7
.obj str_w_bero_muj_00011020, local
	.string "w_bero"
.endobj str_w_bero_muj_00011020

# .rodata:0x2F | 0x3377 | size: 0x1
.obj gap_03_00003377_rodata, global
.hidden gap_03_00003377_rodata
	.byte 0x00
.endobj gap_03_00003377_rodata

# .rodata:0x30 | 0x3378 | size: 0x7
.obj str_dou_11_muj_00011028, local
	.string "dou_11"
.endobj str_dou_11_muj_00011028

# .rodata:0x37 | 0x337F | size: 0x1
.obj gap_03_0000337F_rodata, global
.hidden gap_03_0000337F_rodata
	.byte 0x00
.endobj gap_03_0000337F_rodata

# .rodata:0x38 | 0x3380 | size: 0x7
.obj str_e_bero_muj_00011030, local
	.string "e_bero"
.endobj str_e_bero_muj_00011030

# .rodata:0x3F | 0x3387 | size: 0x1
.obj gap_03_00003387_rodata, global
.hidden gap_03_00003387_rodata
	.byte 0x00
.endobj gap_03_00003387_rodata

# .rodata:0x40 | 0x3388 | size: 0xB
.obj str_A_b_bero03_muj_00011038, local
	.string "A_b_bero03"
.endobj str_A_b_bero03_muj_00011038

# .rodata:0x4B | 0x3393 | size: 0x1
.obj gap_03_00003393_rodata, global
.hidden gap_03_00003393_rodata
	.byte 0x00
.endobj gap_03_00003393_rodata

# .rodata:0x4C | 0x3394 | size: 0x7
.obj str_muj_11_muj_00011044, local
	.string "muj_11"
.endobj str_muj_11_muj_00011044

# .rodata:0x53 | 0x339B | size: 0x1
.obj gap_03_0000339B_rodata, global
.hidden gap_03_0000339B_rodata
	.byte 0x00
.endobj gap_03_0000339B_rodata

# .rodata:0x54 | 0x339C | size: 0xB
.obj str_A_hasi_ita_muj_0001104c, local
	.string "A_hasi_ita"
.endobj str_A_hasi_ita_muj_0001104c

# .rodata:0x5F | 0x33A7 | size: 0x1
.obj gap_03_000033A7_rodata, global
.hidden gap_03_000033A7_rodata
	.byte 0x00
.endobj gap_03_000033A7_rodata

# .rodata:0x60 | 0x33A8 | size: 0x18
.obj str_SFX_VOICE_MARIO_FIND_muj_00011058, local
	.string "SFX_VOICE_MARIO_FIND1_2"
.endobj str_SFX_VOICE_MARIO_FIND_muj_00011058

# .rodata:0x78 | 0x33C0 | size: 0x1
.obj zero_muj_00011070, local
	.byte 0x00
.endobj zero_muj_00011070

# .rodata:0x79 | 0x33C1 | size: 0x3
.obj gap_03_000033C1_rodata, global
.hidden gap_03_000033C1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000033C1_rodata

# .rodata:0x7C | 0x33C4 | size: 0x12
.obj str_stg5_dou_19_00_00_muj_00011074, local
	.string "stg5_dou_19_00_00"
.endobj str_stg5_dou_19_00_00_muj_00011074

# .rodata:0x8E | 0x33D6 | size: 0x2
.obj gap_03_000033D6_rodata, global
.hidden gap_03_000033D6_rodata
	.2byte 0x0000
.endobj gap_03_000033D6_rodata

# .rodata:0x90 | 0x33D8 | size: 0xC
.obj str_stg5_dou_19_muj_00011088, local
	.string "stg5_dou_19"
.endobj str_stg5_dou_19_muj_00011088

# .rodata:0x9C | 0x33E4 | size: 0x14
.obj str_SFX_DOOR_OPEN_WOOD1_muj_00011094, local
	.string "SFX_DOOR_OPEN_WOOD1"
.endobj str_SFX_DOOR_OPEN_WOOD1_muj_00011094

# .rodata:0xB0 | 0x33F8 | size: 0x7
.obj str_M_A_1A_muj_000110a8, local
	.string "M_A_1A"
.endobj str_M_A_1A_muj_000110a8

# .rodata:0xB7 | 0x33FF | size: 0x1
.obj gap_03_000033FF_rodata, global
.hidden gap_03_000033FF_rodata
	.byte 0x00
.endobj gap_03_000033FF_rodata

# .rodata:0xB8 | 0x3400 | size: 0x7
.obj str_M_D_7B_muj_000110b0, local
	.string "M_D_7B"
.endobj str_M_D_7B_muj_000110b0

# .rodata:0xBF | 0x3407 | size: 0x1
.obj gap_03_00003407_rodata, global
.hidden gap_03_00003407_rodata
	.byte 0x00
.endobj gap_03_00003407_rodata

# .rodata:0xC0 | 0x3408 | size: 0x1D
.obj str_SFX_VOICE_MARIO_LAND_muj_000110b8, local
	.string "SFX_VOICE_MARIO_LAND_DAMAGE1"
.endobj str_SFX_VOICE_MARIO_LAND_muj_000110b8

# .rodata:0xDD | 0x3425 | size: 0x3
.obj gap_03_00003425_rodata, global
.hidden gap_03_00003425_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003425_rodata

# .rodata:0xE0 | 0x3428 | size: 0x16
.obj str_SFX_MARIO_FALL_CRUSH_muj_000110d8, local
	.string "SFX_MARIO_FALL_CRUSH1"
.endobj str_SFX_MARIO_FALL_CRUSH_muj_000110d8

# .rodata:0xF6 | 0x343E | size: 0x2
.obj gap_03_0000343E_rodata, global
.hidden gap_03_0000343E_rodata
	.2byte 0x0000
.endobj gap_03_0000343E_rodata

# .rodata:0xF8 | 0x3440 | size: 0x6
.obj str_M_D_8_muj_000110f0, local
	.string "M_D_8"
.endobj str_M_D_8_muj_000110f0

# .rodata:0xFE | 0x3446 | size: 0x2
.obj gap_03_00003446_rodata, global
.hidden gap_03_00003446_rodata
	.2byte 0x0000
.endobj gap_03_00003446_rodata

# .rodata:0x100 | 0x3448 | size: 0x9
.obj str_c_boro_k_muj_000110f8, local
	.string "c_boro_k"
.endobj str_c_boro_k_muj_000110f8

# .rodata:0x109 | 0x3451 | size: 0x3
.obj gap_03_00003451_rodata, global
.hidden gap_03_00003451_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003451_rodata

# .rodata:0x10C | 0x3454 | size: 0x4
.obj str_S_1_muj_00011104, local
	.string "S_1"
.endobj str_S_1_muj_00011104

# .rodata:0x110 | 0x3458 | size: 0x8
.obj str_c_elmos_muj_00011108, local
	.string "c_elmos"
.endobj str_c_elmos_muj_00011108

# .rodata:0x118 | 0x3460 | size: 0x4
.obj str_A_b_muj_00011110, local
	.string "A_b"
.endobj str_A_b_muj_00011110

# .rodata:0x11C | 0x3464 | size: 0x4
.obj str_S_b_muj_00011114, local
	.string "S_b"
.endobj str_S_b_muj_00011114

# .rodata:0x120 | 0x3468 | size: 0xD
.obj str_オドオド水夫_muj_00011118, local
	.4byte 0x83498368
	.4byte 0x83498368
	.4byte 0x90859576
	.byte 0x00
.endobj str_オドオド水夫_muj_00011118

# .rodata:0x12D | 0x3475 | size: 0x3
.obj gap_03_00003475_rodata, global
.hidden gap_03_00003475_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003475_rodata

# .rodata:0x130 | 0x3478 | size: 0x8
.obj str_c_odo_k_muj_00011128, local
	.string "c_odo_k"
.endobj str_c_odo_k_muj_00011128

# .rodata:0x138 | 0x3480 | size: 0x9
.obj str_ピートン_muj_00011130, local
	.4byte 0x8373815B
	.4byte 0x83678393
	.byte 0x00
.endobj str_ピートン_muj_00011130

# .rodata:0x141 | 0x3489 | size: 0x3
.obj gap_03_00003489_rodata, global
.hidden gap_03_00003489_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003489_rodata

# .rodata:0x144 | 0x348C | size: 0x9
.obj str_c_m_waka_muj_0001113c, local
	.string "c_m_waka"
.endobj str_c_m_waka_muj_0001113c

# .rodata:0x14D | 0x3495 | size: 0x3
.obj gap_03_00003495_rodata, global
.hidden gap_03_00003495_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003495_rodata

# .rodata:0x150 | 0x3498 | size: 0x11
.obj str_ピートン（指輪）_muj_00011148, local
	.4byte 0x8373815B
	.4byte 0x83678393
	.4byte 0x81698E77
	.4byte 0x97D6816A
	.byte 0x00
.endobj str_ピートン（指輪）_muj_00011148

# .rodata:0x161 | 0x34A9 | size: 0x3
.obj gap_03_000034A9_rodata, global
.hidden gap_03_000034A9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000034A9_rodata

# .rodata:0x164 | 0x34AC | size: 0x7
.obj str_モニー_muj_0001115c, local
	.4byte 0x8382836A
	.byte 0x81, 0x5B, 0x00
.endobj str_モニー_muj_0001115c

# .rodata:0x16B | 0x34B3 | size: 0x1
.obj gap_03_000034B3_rodata, global
.hidden gap_03_000034B3_rodata
	.byte 0x00
.endobj gap_03_000034B3_rodata

# .rodata:0x16C | 0x34B4 | size: 0xF
.obj str_モニー（指輪）_muj_00011164, local
	.4byte 0x8382836A
	.4byte 0x815B8169
	.4byte 0x8E7797D6
	.byte 0x81, 0x6A, 0x00
.endobj str_モニー（指輪）_muj_00011164

# .rodata:0x17B | 0x34C3 | size: 0x1
.obj gap_03_000034C3_rodata, global
.hidden gap_03_000034C3_rodata
	.byte 0x00
.endobj gap_03_000034C3_rodata

# .rodata:0x17C | 0x34C4 | size: 0x9
.obj str_コルテス_muj_00011174, local
	.4byte 0x8352838B
	.4byte 0x83658358
	.byte 0x00
.endobj str_コルテス_muj_00011174

# .rodata:0x185 | 0x34CD | size: 0x3
.obj gap_03_000034CD_rodata, global
.hidden gap_03_000034CD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000034CD_rodata

# .rodata:0x188 | 0x34D0 | size: 0x6
.obj str_水夫D_muj_00011180, local
	.4byte 0x90859576
	.2byte 0x4400
.endobj str_水夫D_muj_00011180

# .rodata:0x18E | 0x34D6 | size: 0x2
.obj gap_03_000034D6_rodata, global
.hidden gap_03_000034D6_rodata
	.2byte 0x0000
.endobj gap_03_000034D6_rodata

# .rodata:0x190 | 0x34D8 | size: 0xF
.obj str_ガラの悪い水夫_muj_00011188, local
	.4byte 0x834B8389
	.4byte 0x82CC88AB
	.4byte 0x82A29085
	.byte 0x95, 0x76, 0x00
.endobj str_ガラの悪い水夫_muj_00011188

# .rodata:0x19F | 0x34E7 | size: 0x1
.obj gap_03_000034E7_rodata, global
.hidden gap_03_000034E7_rodata
	.byte 0x00
.endobj gap_03_000034E7_rodata

# .rodata:0x1A0 | 0x34E8 | size: 0xF
.obj str_stg5_dou_19_01_muj_00011198, local
	.string "stg5_dou_19_01"
.endobj str_stg5_dou_19_01_muj_00011198

# .rodata:0x1AF | 0x34F7 | size: 0x1
.obj gap_03_000034F7_rodata, global
.hidden gap_03_000034F7_rodata
	.byte 0x00
.endobj gap_03_000034F7_rodata

# .rodata:0x1B0 | 0x34F8 | size: 0xF
.obj str_stg5_dou_19_02_muj_000111a8, local
	.string "stg5_dou_19_02"
.endobj str_stg5_dou_19_02_muj_000111a8

# .rodata:0x1BF | 0x3507 | size: 0x1
.obj gap_03_00003507_rodata, global
.hidden gap_03_00003507_rodata
	.byte 0x00
.endobj gap_03_00003507_rodata

# .rodata:0x1C0 | 0x3508 | size: 0xF
.obj str_stg5_dou_19_03_muj_000111b8, local
	.string "stg5_dou_19_03"
.endobj str_stg5_dou_19_03_muj_000111b8

# .rodata:0x1CF | 0x3517 | size: 0x1
.obj gap_03_00003517_rodata, global
.hidden gap_03_00003517_rodata
	.byte 0x00
.endobj gap_03_00003517_rodata

# .rodata:0x1D0 | 0x3518 | size: 0xF
.obj str_stg5_dou_19_04_muj_000111c8, local
	.string "stg5_dou_19_04"
.endobj str_stg5_dou_19_04_muj_000111c8

# .rodata:0x1DF | 0x3527 | size: 0x1
.obj gap_03_00003527_rodata, global
.hidden gap_03_00003527_rodata
	.byte 0x00
.endobj gap_03_00003527_rodata

# .rodata:0x1E0 | 0x3528 | size: 0x17
.obj str_SFX_STG5_ELMOS_APPEA_muj_000111d8, local
	.string "SFX_STG5_ELMOS_APPEAR3"
.endobj str_SFX_STG5_ELMOS_APPEA_muj_000111d8

# .rodata:0x1F7 | 0x353F | size: 0x1
.obj gap_03_0000353F_rodata, global
.hidden gap_03_0000353F_rodata
	.byte 0x00
.endobj gap_03_0000353F_rodata

# .rodata:0x1F8 | 0x3540 | size: 0x7
.obj str_muj_00_muj_000111f0, local
	.string "muj_00"
.endobj str_muj_00_muj_000111f0

# .rodata:0x1FF | 0x3547 | size: 0x1
.obj gap_03_00003547_rodata, global
.hidden gap_03_00003547_rodata
	.byte 0x00
.endobj gap_03_00003547_rodata

# .rodata:0x200 | 0x3548 | size: 0xB
.obj str_hokori_n64_muj_000111f8, local
	.string "hokori_n64"
.endobj str_hokori_n64_muj_000111f8

# .rodata:0x20B | 0x3553 | size: 0x1
.obj gap_03_00003553_rodata, global
.hidden gap_03_00003553_rodata
	.byte 0x00
.endobj gap_03_00003553_rodata

# .rodata:0x20C | 0x3554 | size: 0x9
.obj str_A_yuka01_muj_00011204, local
	.string "A_yuka01"
.endobj str_A_yuka01_muj_00011204

# .rodata:0x215 | 0x355D | size: 0x3
.obj gap_03_0000355D_rodata, global
.hidden gap_03_0000355D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000355D_rodata

# .rodata:0x218 | 0x3560 | size: 0x9
.obj str_A_yuka02_muj_00011210, local
	.string "A_yuka02"
.endobj str_A_yuka02_muj_00011210

# .rodata:0x221 | 0x3569 | size: 0x3
.obj gap_03_00003569_rodata, global
.hidden gap_03_00003569_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003569_rodata

# .rodata:0x224 | 0x356C | size: 0x9
.obj str_A_yuka03_muj_0001121c, local
	.string "A_yuka03"
.endobj str_A_yuka03_muj_0001121c

# .rodata:0x22D | 0x3575 | size: 0x3
.obj gap_03_00003575_rodata, global
.hidden gap_03_00003575_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003575_rodata

# .rodata:0x230 | 0x3578 | size: 0x9
.obj str_A_yuka04_muj_00011228, local
	.string "A_yuka04"
.endobj str_A_yuka04_muj_00011228

# .rodata:0x239 | 0x3581 | size: 0x3
.obj gap_03_00003581_rodata, global
.hidden gap_03_00003581_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003581_rodata

# .rodata:0x23C | 0x3584 | size: 0xD
.obj str_ship_change_muj_00011234, local
	.string "ship_change_"
.endobj str_ship_change_muj_00011234

# .rodata:0x249 | 0x3591 | size: 0x3
.obj gap_03_00003591_rodata, global
.hidden gap_03_00003591_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003591_rodata

# .rodata:0x24C | 0x3594 | size: 0x14
.obj str_BGM_EVT_STG5_GHOST1_muj_00011244, local
	.string "BGM_EVT_STG5_GHOST1"
.endobj str_BGM_EVT_STG5_GHOST1_muj_00011244

# .rodata:0x260 | 0x35A8 | size: 0xE
.obj str_ENV_STG5_MUJ8_muj_00011258, local
	.string "ENV_STG5_MUJ8"
.endobj str_ENV_STG5_MUJ8_muj_00011258

# .rodata:0x26E | 0x35B6 | size: 0x2
.obj gap_03_000035B6_rodata, global
.hidden gap_03_000035B6_rodata
	.2byte 0x0000
.endobj gap_03_000035B6_rodata

# .rodata:0x270 | 0x35B8 | size: 0xE
.obj str_BGM_STG5_DOU1_muj_00011268, local
	.string "BGM_STG5_DOU1"
.endobj str_BGM_STG5_DOU1_muj_00011268

# .rodata:0x27E | 0x35C6 | size: 0x2
.obj gap_03_000035C6_rodata, global
.hidden gap_03_000035C6_rodata
	.2byte 0x0000
.endobj gap_03_000035C6_rodata

# .rodata:0x280 | 0x35C8 | size: 0x1E
.obj str_SFX_STG5_KANBU_GLASS_muj_00011278, local
	.string "SFX_STG5_KANBU_GLASSES_MOVE1L"
.endobj str_SFX_STG5_KANBU_GLASS_muj_00011278

# .rodata:0x29E | 0x35E6 | size: 0x2
.obj gap_03_000035E6_rodata, global
.hidden gap_03_000035E6_rodata
	.2byte 0x0000
.endobj gap_03_000035E6_rodata

# .rodata:0x2A0 | 0x35E8 | size: 0x1E
.obj str_SFX_STG5_KANBU_GLASS_muj_00011298, local
	.string "SFX_STG5_KANBU_GLASSES_MOVE1R"
.endobj str_SFX_STG5_KANBU_GLASS_muj_00011298

# .rodata:0x2BE | 0x3606 | size: 0x2
.obj gap_03_00003606_rodata, global
.hidden gap_03_00003606_rodata
	.2byte 0x0000
.endobj gap_03_00003606_rodata

# .rodata:0x2C0 | 0x3608 | size: 0x5
.obj str_mizu_muj_000112b8, local
	.string "mizu"
.endobj str_mizu_muj_000112b8

# .rodata:0x2C5 | 0x360D | size: 0x3
.obj gap_03_0000360D_rodata, global
.hidden gap_03_0000360D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000360D_rodata

# .rodata:0x2C8 | 0x3610 | size: 0x7
.obj str_noname_muj_000112c0, local
	.string "noname"
.endobj str_noname_muj_000112c0

# .rodata:0x2CF | 0x3617 | size: 0x1
.obj gap_03_00003617_rodata, global
.hidden gap_03_00003617_rodata
	.byte 0x00
.endobj gap_03_00003617_rodata

# .rodata:0x2D0 | 0x3618 | size: 0x5
.obj str_fune_muj_000112c8, local
	.string "fune"
.endobj str_fune_muj_000112c8

# .rodata:0x2D5 | 0x361D | size: 0x3
.obj gap_03_0000361D_rodata, global
.hidden gap_03_0000361D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000361D_rodata

# .rodata:0x2D8 | 0x3620 | size: 0x19
.obj str_SFX_STG5_SHIP_KOR_SH_muj_000112d0, local
	.string "SFX_STG5_SHIP_KOR_SHAKE1"
.endobj str_SFX_STG5_SHIP_KOR_SH_muj_000112d0

# .rodata:0x2F1 | 0x3639 | size: 0x3
.obj gap_03_00003639_rodata, global
.hidden gap_03_00003639_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003639_rodata

# .rodata:0x2F4 | 0x363C | size: 0xE
.obj str_S_hasi_rope01_muj_000112ec, local
	.string "S_hasi_rope01"
.endobj str_S_hasi_rope01_muj_000112ec

# .rodata:0x302 | 0x364A | size: 0x2
.obj gap_03_0000364A_rodata, global
.hidden gap_03_0000364A_rodata
	.2byte 0x0000
.endobj gap_03_0000364A_rodata

# .rodata:0x304 | 0x364C | size: 0xE
.obj str_S_hasi_rope02_muj_000112fc, local
	.string "S_hasi_rope02"
.endobj str_S_hasi_rope02_muj_000112fc

# .rodata:0x312 | 0x365A | size: 0x2
.obj gap_03_0000365A_rodata, global
.hidden gap_03_0000365A_rodata
	.2byte 0x0000
.endobj gap_03_0000365A_rodata

# .rodata:0x314 | 0x365C | size: 0x9
.obj str_S_hasi_m_muj_0001130c, local
	.string "S_hasi_m"
.endobj str_S_hasi_m_muj_0001130c

# .rodata:0x31D | 0x3665 | size: 0x3
.obj gap_03_00003665_rodata, global
.hidden gap_03_00003665_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003665_rodata

# .rodata:0x320 | 0x3668 | size: 0xE
.obj str_S_10_sui02_01_muj_00011318, local
	.string "S_10_sui02_01"
.endobj str_S_10_sui02_01_muj_00011318

# .rodata:0x32E | 0x3676 | size: 0x2
.obj gap_03_00003676_rodata, global
.hidden gap_03_00003676_rodata
	.2byte 0x0000
.endobj gap_03_00003676_rodata

# .rodata:0x330 | 0x3678 | size: 0xB
.obj str_S_hasi_zan_muj_00011328, local
	.string "S_hasi_zan"
.endobj str_S_hasi_zan_muj_00011328

# .rodata:0x33B | 0x3683 | size: 0x1
.obj gap_03_00003683_rodata, global
.hidden gap_03_00003683_rodata
	.byte 0x00
.endobj gap_03_00003683_rodata

# .rodata:0x33C | 0x3684 | size: 0xE
.obj str_S_10_sui02_02_muj_00011334, local
	.string "S_10_sui02_02"
.endobj str_S_10_sui02_02_muj_00011334

# .rodata:0x34A | 0x3692 | size: 0x2
.obj gap_03_00003692_rodata, global
.hidden gap_03_00003692_rodata
	.2byte 0x0000
.endobj gap_03_00003692_rodata

# .rodata:0x34C | 0x3694 | size: 0xB
.obj str_A_b_bero02_muj_00011344, local
	.string "A_b_bero02"
.endobj str_A_b_bero02_muj_00011344

# .rodata:0x357 | 0x369F | size: 0x1
.obj gap_03_0000369F_rodata, global
.hidden gap_03_0000369F_rodata
	.byte 0x00
.endobj gap_03_0000369F_rodata

# .rodata:0x358 | 0x36A0 | size: 0x6
.obj str_r_blk_muj_00011350, local
	.string "r_blk"
.endobj str_r_blk_muj_00011350

# .rodata:0x35E | 0x36A6 | size: 0x2
.obj gap_03_000036A6_rodata, global
.hidden gap_03_000036A6_rodata
	.2byte 0x0000
.endobj gap_03_000036A6_rodata

# .rodata:0x360 | 0x36A8 | size: 0x6
.obj str_s_blk_muj_00011358, local
	.string "s_blk"
.endobj str_s_blk_muj_00011358
	.2byte 0x0000

# .rodata:0x368 | 0x36B0 | size: 0x4
.obj zero_muj_00011360, local
	.float 0
.endobj zero_muj_00011360

# .rodata:0x36C | 0x36B4 | size: 0x4
.obj float_255_muj_00011364, local
	.float 255
.endobj float_255_muj_00011364

# 0x000169D0..0x00018898 | size: 0x1EC8
.data
.balign 8

# .data:0x0 | 0x169D0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x169D8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x169DC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x169E0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x169E4 | size: 0x4
.obj gap_04_000169E4_data, global
.hidden gap_04_000169E4_data
	.4byte 0x00000000
.endobj gap_04_000169E4_data

# .data:0x18 | 0x169E8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x169F0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x169F4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x169F8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x16A00 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x16A04 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x16A08 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x16A0C | size: 0x4
.obj gap_04_00016A0C_data, global
.hidden gap_04_00016A0C_data
	.4byte 0x00000000
.endobj gap_04_00016A0C_data

# .data:0x40 | 0x16A10 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x16A18 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x16A1C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x16A20 | size: 0x48
.obj megane_init, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x000000FB
	.4byte 0x000000FC
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_muj_00010ff8
	.4byte 0xFFFFFE39
	.4byte 0x00000019
	.4byte 0xFFFFFFD8
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_muj_00010ff8
	.4byte 0x0000005A
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj megane_init

# .data:0x98 | 0x16A68 | size: 0x20
.obj megane_talk, local
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_19_00_muj_00010ffc
	.4byte 0x00000000
	.4byte str_me_muj_00010ff8
	.4byte 0x00000002
	.4byte 0x00000001
.endobj megane_talk

# .data:0xB8 | 0x16A88 | size: 0xB8
.obj npcEnt, local
	.4byte str_めがね水夫_muj_0001100c
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte megane_init
	.4byte 0x00000000
	.4byte megane_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj npcEnt

# .data:0x170 | 0x16B40 | size: 0x30
.obj e_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78B9
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_b_doa_muj_00011018
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e_close

# .data:0x1A0 | 0x16B70 | size: 0x30
.obj e_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_b_doa_muj_00011018
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e_open

# .data:0x1D0 | 0x16BA0 | size: 0xD4
.obj door_custom, local
	.4byte 0x0006005B
	.4byte evt_bero_get_info_anime
	.4byte 0xFE363C81
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24D4A80
	.4byte 0x0001005E
	.4byte 0xFE363C8C
	.4byte 0x0001005B
	.4byte evt_bero_mario_go
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0001005C
	.4byte bero_close_door_play_se
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte 0xFE363C8C
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x0001005E
	.4byte 0xFE363C89
	.4byte 0x00000007
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte 0xFE363C89
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj door_custom

# .data:0x2A4 | 0x16C74 | size: 0x140
.obj bero_in_event, local
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000102
	.4byte 0x0001005C
	.4byte door_custom
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFFD2
	.4byte 0x0000002D
	.4byte 0xFFFFFEE1
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFFA1
	.4byte 0xFFFFFF69
	.4byte 0xF24C5A80
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFFD2
	.4byte 0x0000002D
	.4byte 0xFFFFFEE1
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFFB1
	.4byte 0xFFFFFF42
	.4byte 0xF24C5A80
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000001
	.4byte 0xFFFFFFD2
	.4byte 0x0000002D
	.4byte 0xFFFFFEE1
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000001
	.4byte 0x0000010E
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000001
	.4byte 0xFFFFFFA1
	.4byte 0xFFFFFF1D
	.4byte 0xF24C5A80
	.4byte 0x0000006D
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bero_in_event

# .data:0x3E4 | 0x16DB4 | size: 0xB4
.obj bero_entry_data, local
	.4byte str_w_bero_muj_00011020
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte bero_in_event
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_dou_11_muj_00011028
	.4byte str_e_bero_muj_00011030
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_A_b_bero03_muj_00011038
	.4byte 0x00010002
	.4byte 0x00000002
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte bero_in_event
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_muj_11_muj_00011044
	.4byte str_w_bero_muj_00011020
	.4byte 0x00050005
	.4byte e_close
	.4byte e_open
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj bero_entry_data

# .data:0x498 | 0x16E68 | size: 0x2C8
.obj nazo_event, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002005B
	.4byte evt_mario_get_name_hitobj_ride
	.4byte 0xFE363C83
	.4byte 0x0002005B
	.4byte evt_mario_get_motion
	.4byte 0xFE363C84
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0xFFFFFF06
	.4byte 0x0002000C
	.4byte 0xFE363C83
	.4byte str_A_hasi_ita_muj_0001104c
	.4byte 0x00020019
	.4byte 0xFE363C84
	.4byte 0x0000001F
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_めがね水夫_muj_0001100c
	.4byte 0x00000600
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_めがね水夫_muj_0001100c
	.4byte 0x00010000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_めがね水夫_muj_0001100c
	.4byte 0xFFFFFDE4
	.4byte 0x00000019
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_めがね水夫_muj_0001100c
	.4byte 0x0000005A
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xF2447FB4
	.4byte 0xF24CF280
	.4byte 0xF252B9B3
	.4byte 0xF2447FB4
	.4byte 0xF24B7480
	.4byte 0xF24A434D
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_FIND_muj_00011058
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000000
	.4byte zero_muj_00011070
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000003
	.4byte zero_muj_00011070
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_19_00_00_muj_00011074
	.4byte 0x00000000
	.4byte str_めがね水夫_muj_0001100c
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_めがね水夫_muj_0001100c
	.4byte 0xFFFFFE3A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_19_muj_00011088
	.4byte 0x00000000
	.4byte str_めがね水夫_muj_0001100c
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_めがね水夫_muj_0001100c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_めがね水夫_muj_0001100c
	.4byte 0xFE363C80
	.4byte 0xFFFFFFD8
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x000000FB
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nazo_event

# .data:0x760 | 0x17130 | size: 0x270
.obj oidasare_event, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x0000001E
	.4byte 0x00000032
	.4byte 0xFFFFFEEA
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x00000032
	.4byte 0xFFFFFEEA
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000000DC
	.4byte 0x000000C8
	.4byte 0x000001E0
	.4byte 0x000000DC
	.4byte 0x00000046
	.4byte 0xFFFFFEFE
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_DOOR_OPEN_WOOD1_muj_00011094
	.4byte 0x00000013
	.4byte 0x00000076
	.4byte 0xFFFFFF14
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0008005B
	.4byte evt_party_jump_pos
	.4byte 0x00000000
	.4byte 0x000000BE
	.4byte 0x00000032
	.4byte 0xFFFFFF06
	.4byte 0x00000258
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0008005B
	.4byte evt_party_jump_pos
	.4byte 0x00000000
	.4byte 0x000000D2
	.4byte 0x00000032
	.4byte 0xFFFFFF06
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_A_1A_muj_000110a8
	.4byte 0x0007005B
	.4byte evt_mario_jump_pos
	.4byte 0x000000E6
	.4byte 0x00000032
	.4byte 0xFFFFFF06
	.4byte 0x000001F4
	.4byte 0x00000002
	.4byte 0x0000001E
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_D_7B_muj_000110b0
	.4byte 0x0007005B
	.4byte evt_mario_jump_pos
	.4byte 0x000000FA
	.4byte 0x00000032
	.4byte 0xFFFFFF06
	.4byte 0x000000FA
	.4byte 0x00000002
	.4byte 0xFFFFFC18
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x000000FA
	.4byte 0x00000032
	.4byte 0xFFFFFF06
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_LAND_muj_000110b8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_MARIO_FALL_CRUSH_muj_000110d8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_D_8_muj_000110f0
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x000000FE
	.4byte 0x0001005B
	.4byte N_evt_bero_set_mario_bottomless_respawn_pos_to_current_mario_pos
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj oidasare_event

# .data:0x9D0 | 0x173A0 | size: 0x174
.obj test_ext_entry_data, local
	.4byte str_c_boro_k_muj_000110f8
	.4byte str_S_1_muj_00011104
	.4byte 0x00000000
	.4byte str_c_boro_k_muj_000110f8
	.4byte str_S_1_muj_00011104
	.4byte 0x40000000
	.4byte str_c_boro_k_muj_000110f8
	.4byte str_S_1_muj_00011104
	.4byte 0x40800000
	.4byte str_c_boro_k_muj_000110f8
	.4byte str_S_1_muj_00011104
	.4byte 0x40C00000
	.4byte str_c_boro_k_muj_000110f8
	.4byte str_S_1_muj_00011104
	.4byte 0x41000000
	.4byte str_c_boro_k_muj_000110f8
	.4byte str_S_1_muj_00011104
	.4byte 0x41200000
	.4byte str_c_boro_k_muj_000110f8
	.4byte str_S_1_muj_00011104
	.4byte 0x41400000
	.4byte str_c_boro_k_muj_000110f8
	.4byte str_S_1_muj_00011104
	.4byte 0x41600000
	.4byte str_c_boro_k_muj_000110f8
	.4byte str_S_1_muj_00011104
	.4byte 0x41800000
	.4byte str_c_boro_k_muj_000110f8
	.4byte str_S_1_muj_00011104
	.4byte 0x41900000
	.4byte str_c_boro_k_muj_000110f8
	.4byte str_S_1_muj_00011104
	.4byte 0x41A00000
	.4byte str_c_boro_k_muj_000110f8
	.4byte str_S_1_muj_00011104
	.4byte 0x41B00000
	.4byte str_c_boro_k_muj_000110f8
	.4byte str_S_1_muj_00011104
	.4byte 0x41C00000
	.4byte str_c_boro_k_muj_000110f8
	.4byte str_S_1_muj_00011104
	.4byte 0x41D00000
	.4byte str_c_boro_k_muj_000110f8
	.4byte str_S_1_muj_00011104
	.4byte 0x41E00000
	.4byte str_c_boro_k_muj_000110f8
	.4byte str_S_1_muj_00011104
	.4byte 0x41F00000
	.4byte str_c_boro_k_muj_000110f8
	.4byte str_S_1_muj_00011104
	.4byte 0x42000000
	.4byte str_c_boro_k_muj_000110f8
	.4byte str_S_1_muj_00011104
	.4byte 0x42080000
	.4byte str_c_boro_k_muj_000110f8
	.4byte str_S_1_muj_00011104
	.4byte 0x42100000
	.4byte str_c_boro_k_muj_000110f8
	.4byte str_S_1_muj_00011104
	.4byte 0x42180000
	.4byte str_c_elmos_muj_00011108
	.4byte str_S_1_muj_00011104
	.4byte 0x00000000
	.4byte str_c_elmos_muj_00011108
	.4byte str_S_1_muj_00011104
	.4byte 0x40000000
	.4byte str_c_elmos_muj_00011108
	.4byte str_S_1_muj_00011104
	.4byte 0x40800000
	.4byte str_c_elmos_muj_00011108
	.4byte str_S_1_muj_00011104
	.4byte 0x40C00000
	.4byte str_c_elmos_muj_00011108
	.4byte str_S_1_muj_00011104
	.4byte 0x41000000
	.4byte str_c_elmos_muj_00011108
	.4byte str_S_1_muj_00011104
	.4byte 0x41200000
	.4byte str_c_elmos_muj_00011108
	.4byte str_S_1_muj_00011104
	.4byte 0x41400000
	.4byte str_c_elmos_muj_00011108
	.4byte str_S_1_muj_00011104
	.4byte 0x41600000
	.4byte str_c_elmos_muj_00011108
	.4byte str_S_1_muj_00011104
	.4byte 0x41800000
	.4byte str_c_elmos_muj_00011108
	.4byte str_S_1_muj_00011104
	.4byte 0x41900000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj test_ext_entry_data

# .data:0xB44 | 0x17514 | size: 0x54
.obj suifu_animtbl, local
	.4byte 0x00000000
	.4byte 0x00010001
	.4byte 0x00020002
	.4byte 0x00030003
	.4byte 0x00040004
	.4byte 0x00050005
	.4byte 0x00060006
	.4byte 0x00070007
	.4byte 0x00080008
	.4byte 0x00090009
	.4byte 0x000A000A
	.4byte 0x000B000B
	.4byte 0x000C000C
	.4byte 0x000D000D
	.4byte 0x000E000E
	.4byte 0x000F000F
	.4byte 0x00100010
	.4byte 0x00110011
	.4byte 0x00120012
	.4byte 0x00130013
	.4byte 0xFFFF0000
.endobj suifu_animtbl

# .data:0xB98 | 0x17568 | size: 0x2C
.obj elmos_animtbl, local
	.4byte 0x00140014
	.4byte 0x00150015
	.4byte 0x00160016
	.4byte 0x00170017
	.4byte 0x00180018
	.4byte 0x00190019
	.4byte 0x001A001A
	.4byte 0x001B001B
	.4byte 0x001C001C
	.4byte 0x001D001D
	.4byte 0xFFFF0000
.endobj elmos_animtbl

# .data:0xBC4 | 0x17594 | size: 0x5F0
.obj senin_event_suifupos, local
	.4byte 0x00000008
	.4byte 0x00000078
	.4byte 0xFFFFFF32
	.4byte 0x0000010D
	.4byte 0xFFFFFFEF
	.4byte 0x00000078
	.4byte 0xFFFFFEE5
	.4byte 0x0000010E
	.4byte 0x00000015
	.4byte 0x00000078
	.4byte 0xFFFFFECC
	.4byte 0x0000010E
	.4byte 0x00000021
	.4byte 0x00000078
	.4byte 0xFFFFFECC
	.4byte 0x0000010E
	.4byte 0xFFFFFFEF
	.4byte 0x00000078
	.4byte 0xFFFFFED9
	.4byte 0x0000010E
	.4byte 0xFFFFFFFA
	.4byte 0x00000078
	.4byte 0xFFFFFF24
	.4byte 0x0000010E
	.4byte 0xFFFFFFFC
	.4byte 0x00000078
	.4byte 0xFFFFFF33
	.4byte 0x0000010E
	.4byte 0x00000000
	.4byte 0x00000078
	.4byte 0xFFFFFF3F
	.4byte 0x0000010E
	.4byte 0x00000017
	.4byte 0x00000078
	.4byte 0xFFFFFF06
	.4byte 0x0000010E
	.4byte 0x00000007
	.4byte 0x00000078
	.4byte 0xFFFFFF41
	.4byte 0x0000010E
	.4byte 0x0000002B
	.4byte 0x00000078
	.4byte 0xFFFFFF29
	.4byte 0x0000010E
	.4byte 0x00000036
	.4byte 0x00000078
	.4byte 0xFFFFFF37
	.4byte 0x0000010E
	.4byte 0x00000017
	.4byte 0x00000078
	.4byte 0xFFFFFF4F
	.4byte 0x0000010E
	.4byte 0x0000000B
	.4byte 0x00000078
	.4byte 0xFFFFFF57
	.4byte 0x0000010E
	.4byte 0x00000006
	.4byte 0x00000078
	.4byte 0xFFFFFF66
	.4byte 0x0000010E
	.4byte 0x00000016
	.4byte 0x00000078
	.4byte 0xFFFFFF61
	.4byte 0x0000010E
	.4byte 0xFFFFFFF9
	.4byte 0x00000078
	.4byte 0xFFFFFEFA
	.4byte 0x0000010E
	.4byte 0x00000028
	.4byte 0x00000078
	.4byte 0xFFFFFF35
	.4byte 0x0000010E
	.4byte 0xFFFFFFFC
	.4byte 0x00000078
	.4byte 0xFFFFFF47
	.4byte 0x0000010E
	.4byte 0x00000000
	.4byte 0x00000078
	.4byte 0xFFFFFEED
	.4byte 0x0000010E
	.4byte 0x0000001A
	.4byte 0x00000078
	.4byte 0xFFFFFEF8
	.4byte 0x0000010E
	.4byte 0x00000028
	.4byte 0x00000078
	.4byte 0xFFFFFF21
	.4byte 0x0000010E
	.4byte 0x00000022
	.4byte 0x00000078
	.4byte 0xFFFFFF57
	.4byte 0x0000010E
	.4byte 0x00000021
	.4byte 0x00000078
	.4byte 0xFFFFFF46
	.4byte 0x0000010E
	.4byte 0x0000001E
	.4byte 0x00000078
	.4byte 0xFFFFFF28
	.4byte 0x0000010E
	.4byte 0x00000009
	.4byte 0x00000078
	.4byte 0xFFFFFF17
	.4byte 0x0000010E
	.4byte 0x0000000E
	.4byte 0x00000078
	.4byte 0xFFFFFF25
	.4byte 0x0000010E
	.4byte 0x00000019
	.4byte 0x00000078
	.4byte 0xFFFFFF38
	.4byte 0x0000010E
	.4byte 0x00000032
	.4byte 0x00000078
	.4byte 0xFFFFFF2D
	.4byte 0x0000010E
	.4byte 0x00000021
	.4byte 0x00000078
	.4byte 0xFFFFFEFD
	.4byte 0x0000010E
	.4byte 0x0000000A
	.4byte 0x00000078
	.4byte 0xFFFFFED9
	.4byte 0x0000010E
	.4byte 0x0000000A
	.4byte 0x00000078
	.4byte 0xFFFFFEE4
	.4byte 0x0000010E
	.4byte 0xFFFFFFFF
	.4byte 0x00000078
	.4byte 0xFFFFFECD
	.4byte 0x0000010E
	.4byte 0x00000004
	.4byte 0x00000078
	.4byte 0xFFFFFED5
	.4byte 0x0000010E
	.4byte 0x0000000D
	.4byte 0x00000078
	.4byte 0xFFFFFF03
	.4byte 0x0000010E
	.4byte 0x00000014
	.4byte 0x00000078
	.4byte 0xFFFFFEDC
	.4byte 0x0000010E
	.4byte 0x0000000D
	.4byte 0x00000078
	.4byte 0xFFFFFF03
	.4byte 0x0000010E
	.4byte 0x00000022
	.4byte 0x00000078
	.4byte 0xFFFFFF14
	.4byte 0x0000010D
	.4byte 0x00000023
	.4byte 0x00000078
	.4byte 0xFFFFFF09
	.4byte 0x0000010E
	.4byte 0x0000001F
	.4byte 0x00000078
	.4byte 0xFFFFFF0F
	.4byte 0x0000010E
	.4byte 0x00000031
	.4byte 0x00000078
	.4byte 0xFFFFFF3F
	.4byte 0x0000010E
	.4byte 0x00000003
	.4byte 0x00000078
	.4byte 0xFFFFFEFE
	.4byte 0x0000010E
	.4byte 0x0000000B
	.4byte 0x00000078
	.4byte 0xFFFFFF10
	.4byte 0x0000010E
	.4byte 0x00000001
	.4byte 0x00000078
	.4byte 0xFFFFFEF8
	.4byte 0x0000010E
	.4byte 0x00000027
	.4byte 0x00000078
	.4byte 0xFFFFFF18
	.4byte 0x0000010E
	.4byte 0x0000000F
	.4byte 0x00000078
	.4byte 0xFFFFFEF6
	.4byte 0x0000010E
	.4byte 0x00000019
	.4byte 0x00000078
	.4byte 0xFFFFFEE2
	.4byte 0x0000010E
	.4byte 0x00000028
	.4byte 0x00000078
	.4byte 0xFFFFFF04
	.4byte 0x0000010E
	.4byte 0x0000000E
	.4byte 0x00000078
	.4byte 0xFFFFFEF0
	.4byte 0x0000010E
	.4byte 0x00000016
	.4byte 0x00000078
	.4byte 0xFFFFFEE8
	.4byte 0x0000010F
	.4byte 0xFFFFFECF
	.4byte 0x0000004F
	.4byte 0xFFFFFF84
	.4byte 0x0000005A
	.4byte 0xFFFFFEE2
	.4byte 0x0000004F
	.4byte 0xFFFFFF8C
	.4byte 0x0000005A
	.4byte 0xFFFFFEDE
	.4byte 0x0000004F
	.4byte 0xFFFFFF75
	.4byte 0x0000005A
	.4byte 0xFFFFFEEF
	.4byte 0x0000004F
	.4byte 0xFFFFFF84
	.4byte 0x0000005A
	.4byte 0xFFFFFEFD
	.4byte 0x0000004F
	.4byte 0xFFFFFF90
	.4byte 0x0000005A
	.4byte 0xFFFFFF17
	.4byte 0x0000004F
	.4byte 0xFFFFFF8F
	.4byte 0x0000005A
	.4byte 0xFFFFFF34
	.4byte 0x0000004F
	.4byte 0xFFFFFF86
	.4byte 0x0000005A
	.4byte 0xFFFFFF09
	.4byte 0x0000004F
	.4byte 0xFFFFFF80
	.4byte 0x0000005A
	.4byte 0xFFFFFF19
	.4byte 0x0000004F
	.4byte 0xFFFFFF7E
	.4byte 0x0000005A
	.4byte 0xFFFFFF13
	.4byte 0x0000004F
	.4byte 0xFFFFFF35
	.4byte 0x0000005A
	.4byte 0xFFFFFF07
	.4byte 0x0000004F
	.4byte 0xFFFFFF40
	.4byte 0x0000005A
	.4byte 0xFFFFFEFB
	.4byte 0x0000004F
	.4byte 0xFFFFFF48
	.4byte 0x0000005A
	.4byte 0xFFFFFEF0
	.4byte 0x0000004F
	.4byte 0xFFFFFF52
	.4byte 0x0000005A
	.4byte 0xFFFFFEE1
	.4byte 0x0000004F
	.4byte 0xFFFFFF66
	.4byte 0x0000005A
	.4byte 0xFFFFFEEE
	.4byte 0x0000004F
	.4byte 0xFFFFFF69
	.4byte 0x0000005A
	.4byte 0xFFFFFEF2
	.4byte 0x0000004F
	.4byte 0xFFFFFF5D
	.4byte 0x0000005A
	.4byte 0xFFFFFEEE
	.4byte 0x0000004F
	.4byte 0xFFFFFF79
	.4byte 0x0000005A
	.4byte 0xFFFFFEFE
	.4byte 0x0000004F
	.4byte 0xFFFFFF80
	.4byte 0x0000005A
	.4byte 0xFFFFFF05
	.4byte 0x0000004F
	.4byte 0xFFFFFF50
	.4byte 0x0000005A
	.4byte 0xFFFFFF15
	.4byte 0x0000004F
	.4byte 0xFFFFFF9A
	.4byte 0x0000005A
	.4byte 0xFFFFFF12
	.4byte 0x0000004F
	.4byte 0xFFFFFF75
	.4byte 0x0000005A
	.4byte 0xFFFFFF06
	.4byte 0x0000004F
	.4byte 0xFFFFFF67
	.4byte 0x0000005A
	.4byte 0xFFFFFF09
	.4byte 0x0000004F
	.4byte 0xFFFFFF70
	.4byte 0x0000005A
	.4byte 0xFFFFFF02
	.4byte 0x0000004F
	.4byte 0xFFFFFF6F
	.4byte 0x0000005A
	.4byte 0xFFFFFF02
	.4byte 0x0000004F
	.4byte 0xFFFFFF5D
	.4byte 0x0000005A
	.4byte 0xFFFFFF13
	.4byte 0x0000004F
	.4byte 0xFFFFFF5D
	.4byte 0x0000005A
	.4byte 0xFFFFFF33
	.4byte 0x00000045
	.4byte 0xFFFFFF97
	.4byte 0x0000005A
	.4byte 0xFFFFFF3F
	.4byte 0x00000045
	.4byte 0xFFFFFF9C
	.4byte 0x0000005A
	.4byte 0xFFFFFF45
	.4byte 0x00000045
	.4byte 0xFFFFFF8D
	.4byte 0x0000005A
	.4byte 0xFFFFFF31
	.4byte 0x00000045
	.4byte 0xFFFFFF73
	.4byte 0x0000005A
	.4byte 0xFFFFFF27
	.4byte 0x00000045
	.4byte 0xFFFFFF4C
	.4byte 0x0000005A
	.4byte 0xFFFFFF39
	.4byte 0x00000045
	.4byte 0xFFFFFF58
	.4byte 0x0000005A
	.4byte 0xFFFFFF2F
	.4byte 0x00000045
	.4byte 0xFFFFFF3D
	.4byte 0x0000005A
	.4byte 0xFFFFFF2A
	.4byte 0x00000045
	.4byte 0xFFFFFF29
	.4byte 0x0000005A
	.4byte 0xFFFFFF1D
	.4byte 0x00000045
	.4byte 0xFFFFFF24
	.4byte 0x0000005A
	.4byte 0xFFFFFF1A
	.4byte 0x00000045
	.4byte 0xFFFFFF40
	.4byte 0x0000005A
	.4byte 0xFFFFFF2B
	.4byte 0x00000045
	.4byte 0xFFFFFF72
	.4byte 0x0000005A
	.4byte 0xFFFFFF2D
	.4byte 0x00000045
	.4byte 0xFFFFFF62
	.4byte 0x0000005A
	.4byte 0xFFFFFF3D
	.4byte 0x00000045
	.4byte 0xFFFFFF68
	.4byte 0x0000005A
	.4byte 0xFFFFFF46
	.4byte 0x00000045
	.4byte 0xFFFFFF77
	.4byte 0x0000005A
	.4byte 0xFFFFFF26
	.4byte 0x00000045
	.4byte 0xFFFFFF59
	.4byte 0x0000005A
	.4byte 0xFFFFFF31
	.4byte 0x00000045
	.4byte 0xFFFFFF52
	.4byte 0x0000005A
	.4byte 0xFFFFFF20
	.4byte 0x00000045
	.4byte 0xFFFFFF37
	.4byte 0x0000005A
	.4byte 0xFFFFFF47
	.4byte 0x00000045
	.4byte 0xFFFFFF83
	.4byte 0x0000005A
	.4byte 0xFFFFFF26
	.4byte 0x00000045
	.4byte 0xFFFFFF68
	.4byte 0x0000005A
.endobj senin_event_suifupos

# .data:0x11B4 | 0x17B84 | size: 0x2D0
.obj senin_event_erumospos, local
	.4byte 0xFFFFFF80
	.4byte 0x000000A7
	.4byte 0xFFFFFF7C
	.4byte 0xFFFFFF87
	.4byte 0x000000BF
	.4byte 0xFFFFFF7B
	.4byte 0xFFFFFF8B
	.4byte 0x0000009D
	.4byte 0xFFFFFFA3
	.4byte 0xFFFFFF90
	.4byte 0x00000091
	.4byte 0xFFFFFFB2
	.4byte 0xFFFFFF8E
	.4byte 0x000000A7
	.4byte 0xFFFFFFB1
	.4byte 0xFFFFFF71
	.4byte 0x00000091
	.4byte 0xFFFFFF60
	.4byte 0xFFFFFF67
	.4byte 0x00000090
	.4byte 0xFFFFFF40
	.4byte 0xFFFFFF4A
	.4byte 0x00000091
	.4byte 0xFFFFFF1A
	.4byte 0xFFFFFF42
	.4byte 0x00000091
	.4byte 0xFFFFFF02
	.4byte 0xFFFFFF37
	.4byte 0x00000091
	.4byte 0xFFFFFEDE
	.4byte 0xFFFFFF6E
	.4byte 0x000000AF
	.4byte 0xFFFFFF45
	.4byte 0xFFFFFF41
	.4byte 0x000000B3
	.4byte 0xFFFFFEDD
	.4byte 0xFFFFFF50
	.4byte 0x000000AF
	.4byte 0xFFFFFF0F
	.4byte 0xFFFFFF49
	.4byte 0x000000DA
	.4byte 0xFFFFFEF9
	.4byte 0xFFFFFF2C
	.4byte 0x000000DB
	.4byte 0xFFFFFEED
	.4byte 0xFFFFFF63
	.4byte 0x000000DB
	.4byte 0xFFFFFF12
	.4byte 0xFFFFFF6A
	.4byte 0x000000DA
	.4byte 0xFFFFFF3F
	.4byte 0xFFFFFF87
	.4byte 0x000000D9
	.4byte 0xFFFFFF75
	.4byte 0xFFFFFF84
	.4byte 0x000000DB
	.4byte 0xFFFFFFA9
	.4byte 0xFFFFFF88
	.4byte 0x000000DA
	.4byte 0xFFFFFF93
	.4byte 0xFFFFFF8E
	.4byte 0x0000011B
	.4byte 0xFFFFFFC1
	.4byte 0xFFFFFF87
	.4byte 0x0000011B
	.4byte 0xFFFFFF99
	.4byte 0xFFFFFF69
	.4byte 0x000000F0
	.4byte 0xFFFFFF54
	.4byte 0xFFFFFF7E
	.4byte 0x0000011B
	.4byte 0xFFFFFF7C
	.4byte 0xFFFFFF62
	.4byte 0x0000011B
	.4byte 0xFFFFFF23
	.4byte 0xFFFFFF4E
	.4byte 0x0000011B
	.4byte 0xFFFFFF2F
	.4byte 0xFFFFFF55
	.4byte 0x0000011B
	.4byte 0xFFFFFEFB
	.4byte 0xFFFFFF4B
	.4byte 0x0000011B
	.4byte 0xFFFFFEE0
	.4byte 0xFFFFFF4E
	.4byte 0x000000F9
	.4byte 0xFFFFFEE6
	.4byte 0xFFFFFF5A
	.4byte 0x000000C6
	.4byte 0xFFFFFF02
	.4byte 0xFFFFFF55
	.4byte 0x000000FC
	.4byte 0xFFFFFEF9
	.4byte 0xFFFFFF4C
	.4byte 0x000000FD
	.4byte 0xFFFFFF24
	.4byte 0xFFFFFF49
	.4byte 0x000000C4
	.4byte 0xFFFFFF24
	.4byte 0xFFFFFF68
	.4byte 0x000000C4
	.4byte 0xFFFFFF2B
	.4byte 0xFFFFFF5E
	.4byte 0x000000C4
	.4byte 0xFFFFFF3E
	.4byte 0xFFFFFF73
	.4byte 0x000000D5
	.4byte 0xFFFFFF59
	.4byte 0xFFFFFF68
	.4byte 0x000000D5
	.4byte 0xFFFFFF76
	.4byte 0xFFFFFF6E
	.4byte 0x000000E9
	.4byte 0xFFFFFF5B
	.4byte 0xFFFFFF78
	.4byte 0x000000E9
	.4byte 0xFFFFFF90
	.4byte 0xFFFFFF87
	.4byte 0x000000D0
	.4byte 0xFFFFFF9C
	.4byte 0xFFFFFF8C
	.4byte 0x000000D1
	.4byte 0xFFFFFF82
	.4byte 0xFFFFFF70
	.4byte 0x000000B8
	.4byte 0xFFFFFF4D
	.4byte 0xFFFFFF61
	.4byte 0x000000B7
	.4byte 0xFFFFFF13
	.4byte 0xFFFFFF4E
	.4byte 0x000000B8
	.4byte 0xFFFFFEE2
	.4byte 0xFFFFFF3F
	.4byte 0x00000108
	.4byte 0xFFFFFEDD
	.4byte 0xFFFFFF58
	.4byte 0x000000F5
	.4byte 0xFFFFFF09
	.4byte 0xFFFFFF6D
	.4byte 0x000000EE
	.4byte 0xFFFFFF32
	.4byte 0xFFFFFF83
	.4byte 0x000000F3
	.4byte 0xFFFFFF66
	.4byte 0xFFFFFF93
	.4byte 0x000000F3
	.4byte 0xFFFFFFA9
	.4byte 0xFFFFFFA8
	.4byte 0x000000F4
	.4byte 0xFFFFFFB5
	.4byte 0xFFFFFFB2
	.4byte 0x000000D1
	.4byte 0xFFFFFFA2
	.4byte 0xFFFFFFA9
	.4byte 0x000000FB
	.4byte 0xFFFFFF77
	.4byte 0xFFFFFFA9
	.4byte 0x0000010A
	.4byte 0xFFFFFF46
	.4byte 0xFFFFFF8A
	.4byte 0x0000010A
	.4byte 0xFFFFFF28
	.4byte 0xFFFFFF84
	.4byte 0x000000FD
	.4byte 0xFFFFFEF1
	.4byte 0xFFFFFF84
	.4byte 0x000000FD
	.4byte 0xFFFFFEF1
	.4byte 0xFFFFFF7C
	.4byte 0x000000FC
	.4byte 0xFFFFFEED
	.4byte 0xFFFFFF6D
	.4byte 0x000000FC
	.4byte 0xFFFFFEE8
	.4byte 0xFFFFFF6B
	.4byte 0x000000FA
	.4byte 0xFFFFFECF
	.4byte 0xFFFFFF82
	.4byte 0x000000FC
	.4byte 0xFFFFFF0E
.endobj senin_event_erumospos

# .data:0x1484 | 0x17E54 | size: 0x468
.obj senin_event, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_nannpc_init
	.4byte test_ext_entry_data
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000009B
	.4byte 0x0003005B
	.4byte evt_nannpc_set_subfunc
	.4byte 0x00000001
	.4byte nannpc_ext_main_sub_fast
	.4byte 0x0003005B
	.4byte evt_nannpcwork_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0001003E
	.4byte senin_event_suifupos
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x0000005F
	.4byte 0x0002005B
	.4byte evt_nannpc_entry
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_nannpc_set_func
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_nannpc_set_animtbl
	.4byte 0xFE363C80
	.4byte suifu_animtbl
	.4byte 0x00040042
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0005005B
	.4byte evt_nannpc_set_position
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte evt_nannpc_set_dir
	.4byte 0xFE363C80
	.4byte 0xFE363C84
	.4byte 0x0004005B
	.4byte evt_nannpc_ppflag_onoff
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001003E
	.4byte senin_event_erumospos
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x0000005F
	.4byte 0x00010005
	.4byte 0x0000003C
	.4byte 0x0002005B
	.4byte evt_nannpc_entry
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_nannpc_set_func
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_nannpc_set_animtbl
	.4byte 0xFE363C80
	.4byte elmos_animtbl
	.4byte 0x00030041
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0005005B
	.4byte evt_nannpc_set_position
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte evt_nannpc_set_dir
	.4byte 0xFE363C80
	.4byte 0x0000005A
	.4byte 0x0006005B
	.4byte evt_nannpc_set_color
	.4byte 0xFE363C80
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_nannpc_ppflag_onoff
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00020033
	.4byte 0xFE363C80
	.4byte 0xFD050F80
	.4byte 0x00020034
	.4byte 0xFE363C81
	.4byte 0xF24A8080
	.4byte 0x0001005C
	.4byte muj_ship_puka_19_data_A0
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_A_b_muj_00011110
	.4byte str_S_b_muj_00011114
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_b_muj_00011114
	.4byte 0x00000000
	.4byte 0xFD050F80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_A_b_muj_00011110
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001005B
	.4byte suifu_option_init_func
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte suifu_option_func
	.4byte 0xFD050F80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_オドオド水夫_muj_00011118
	.4byte str_c_odo_k_muj_00011128
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_オドオド水夫_muj_00011118
	.4byte str_オドオド水夫_muj_00011118
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_ピートン_muj_00011130
	.4byte str_c_m_waka_muj_0001113c
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_ピートン_muj_00011130
	.4byte str_ピートン（指輪）_muj_00011148
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_モニー_muj_0001115c
	.4byte str_モニー（指輪）_muj_00011164
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_コルテス_muj_00011174
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_コルテス_muj_00011174
	.4byte 0x0000005A
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_コルテス_muj_00011174
	.4byte 0x000C8000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_水夫D_muj_00011180
	.4byte 0xFFFFFF62
	.4byte 0x0000002C
	.4byte 0xFFFFFF60
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_水夫D_muj_00011180
	.4byte 0x0000005A
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_水夫D_muj_00011180
	.4byte 0x000A8210
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_水夫D_muj_00011180
	.4byte 0x00000400
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_モニー_muj_0001115c
	.4byte 0xFFFFFF61
	.4byte 0x0000002C
	.4byte 0xFFFFFEFF
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_モニー_muj_0001115c
	.4byte 0x0000005A
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_モニー_muj_0001115c
	.4byte 0x000A8210
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_モニー_muj_0001115c
	.4byte 0x00000400
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ピートン_muj_00011130
	.4byte 0xFFFFFF3D
	.4byte 0x0000002C
	.4byte 0xFFFFFEF8
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ピートン_muj_00011130
	.4byte 0x0000005A
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ピートン_muj_00011130
	.4byte 0x000A8210
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_ピートン_muj_00011130
	.4byte 0x00000400
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ガラの悪い水夫_muj_00011188
	.4byte 0xFFFFFFD3
	.4byte 0x00000078
	.4byte 0xFFFFFEDF
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ガラの悪い水夫_muj_00011188
	.4byte 0x0000010E
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ガラの悪い水夫_muj_00011188
	.4byte 0x000A8210
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_ガラの悪い水夫_muj_00011188
	.4byte 0x00000400
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_オドオド水夫_muj_00011118
	.4byte 0xFFFFFFEE
	.4byte 0x00000078
	.4byte 0xFFFFFF4D
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_オドオド水夫_muj_00011118
	.4byte 0x000A8210
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_オドオド水夫_muj_00011118
	.4byte 0x00000400
	.4byte 0x00000002
	.4byte 0x00000001
.endobj senin_event

# .data:0x18EC | 0x182BC | size: 0x178
.obj unk_evt_muj_0002cb0c, local
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFB9
	.4byte 0x000000B2
	.4byte 0x00000103
	.4byte 0xFFFFFFB9
	.4byte 0x00000053
	.4byte 0xFFFFFEE6
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_19_01_muj_00011198
	.4byte 0x00000000
	.4byte str_水夫D_muj_00011180
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_19_02_muj_000111a8
	.4byte 0x00000000
	.4byte str_モニー_muj_0001115c
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_19_03_muj_000111b8
	.4byte 0x00000000
	.4byte str_ガラの悪い水夫_muj_00011188
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF6A
	.4byte 0x0000012C
	.4byte 0x000002AA
	.4byte 0xFFFFFF6A
	.4byte 0x00000096
	.4byte 0xFFFFFF51
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_コルテス_muj_00011174
	.4byte 0xFFFFFF29
	.4byte 0x00000078
	.4byte 0xFFFFFF60
	.4byte 0x0001005E
	.4byte korutesu_apper_19_data_F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_19_04_muj_000111c8
	.4byte 0x00000000
	.4byte str_コルテス_muj_00011174
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG5_ELMOS_APPEA_muj_000111d8
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x0000005F
	.4byte 0x00010005
	.4byte 0x0000003C
	.4byte 0x0003005B
	.4byte evt_nannpc_set_func
	.4byte 0xFE363C80
	.4byte elmosalpha_func
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x00000BB8
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000103
	.4byte 0x0006005B
	.4byte evt_fade_set_mapchange_type
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x000001F4
	.4byte 0x00000001
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_muj_00_muj_000111f0
	.4byte zero_muj_00011070
	.4byte 0x00000002
	.4byte 0x00000001
.endobj unk_evt_muj_0002cb0c

# .data:0x1A64 | 0x18434 | size: 0xB8
.obj dai3_shurai_after, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x000009C4
	.4byte 0xFE363C8A
	.4byte 0x0001000A
	.4byte 0xFE363C8A
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A85
	.4byte 0xF24A7A80
	.4byte 0x000001F4
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x000000FA
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte zero_muj_00011070
	.4byte str_hokori_n64_muj_000111f8
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
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dai3_shurai_after

# .data:0x1B1C | 0x184EC | size: 0x70
.obj hitDmgRetPoints, local
	.4byte str_A_yuka01_muj_00011204
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_A_yuka02_muj_00011210
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_A_yuka03_muj_0001121c
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_A_yuka04_muj_00011228
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_A_hasi_ita_muj_0001104c
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_ship_change_muj_00011234
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj hitDmgRetPoints

# .data:0x1B8C | 0x1855C | size: 0x33C
.obj muj_10_init_evt_19_data_1855C, global
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x000000FD
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_STG5_GHOST1_muj_00011244
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG5_MUJ8_muj_00011258
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG5_DOU1_muj_00011268
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG5_MUJ8_muj_00011258
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_snd_set_rev_mode
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0001005B
	.4byte evt_cam_road_reset
	.4byte 0x0002005B
	.4byte evt_npc_setup
	.4byte npcEnt
	.4byte 0x0007005B
	.4byte evt_npc_sound_data_set
	.4byte str_めがね水夫_muj_0001100c
	.4byte str_SFX_STG5_KANBU_GLASS_muj_00011278
	.4byte str_SFX_STG5_KANBU_GLASS_muj_00011298
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x000000FA
	.4byte 0x0001005C
	.4byte nazo_event
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x000000FD
	.4byte 0x0001005C
	.4byte oidasare_event
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000102
	.4byte 0x0001005E
	.4byte senin_event
	.4byte 0x0001005C
	.4byte unk_evt_muj_0002cb0c
	.4byte 0x00000021
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x00000104
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_b_muj_00011114
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_mizu_muj_000112b8
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_noname_muj_000112c0
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000104
	.4byte 0x00020019
	.4byte 0xF5DE0180
	.4byte 0x00000102
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_fune_muj_000112c8
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_b_muj_00011114
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_SHIP_KOR_SH_muj_000112d0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x00000104
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_hasi_rope01_muj_000112ec
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_hasi_rope02_muj_000112fc
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_hasi_m_muj_0001130c
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_10_sui02_01_muj_00011318
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_hasi_ita_muj_0001104c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_hasi_zan_muj_00011328
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_10_sui02_02_muj_00011334
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x00000101
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000102
	.4byte 0x0001005C
	.4byte dai3_shurai_after
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_hit_damage_return_set
	.4byte hitDmgRetPoints
	.4byte 0x0001005E
	.4byte evt_gazigazi_entry
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_b_bero02_muj_00011344
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000102
	.4byte 0x0008005B
	.4byte evt_mobj_recovery_blk
	.4byte str_r_blk_muj_00011350
	.4byte 0x0000000C
	.4byte 0xFFFFFEFC
	.4byte 0x00000087
	.4byte 0xFFFFFF6F
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_mobj_save_blk
	.4byte str_s_blk_muj_00011358
	.4byte 0xFFFFFFD3
	.4byte 0x00000053
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0x00000000
.endobj muj_10_init_evt_19_data_1855C
