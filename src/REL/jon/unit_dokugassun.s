.include "macros.inc"
.file "unit_dokugassun.o"

# 0x000051B4..0x000054DC | size: 0x328
.text
.balign 4

# .text:0x0 | 0x51B4 | size: 0x19C
.fn eff_poison_barrier, local
/* 000051B4 00005278  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 000051B8 0000527C  7C 08 02 A6 */	mflr r0
/* 000051BC 00005280  90 01 00 74 */	stw r0, 0x74(r1)
/* 000051C0 00005284  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 000051C4 00005288  F3 E1 00 68 */	psq_st f31, 0x68(r1), 0, qr0
/* 000051C8 0000528C  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 000051CC 00005290  F3 C1 00 58 */	psq_st f30, 0x58(r1), 0, qr0
/* 000051D0 00005294  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 000051D4 00005298  F3 A1 00 48 */	psq_st f29, 0x48(r1), 0, qr0
/* 000051D8 0000529C  BF A1 00 34 */	stmw r29, 0x34(r1)
/* 000051DC 000052A0  7C 7D 1B 78 */	mr r29, r3
/* 000051E0 000052A4  80 83 00 18 */	lwz r4, 0x18(r3)
/* 000051E4 000052A8  80 84 00 00 */	lwz r4, 0x0(r4)
/* 000051E8 000052AC  4B FF B8 89 */	bl evtGetValue
/* 000051EC 000052B0  7C 64 1B 78 */	mr r4, r3
/* 000051F0 000052B4  7F A3 EB 78 */	mr r3, r29
/* 000051F4 000052B8  4B FF B8 7D */	bl BattleTransID
/* 000051F8 000052BC  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 000051FC 000052C0  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00005200 000052C4  7C 64 1B 78 */	mr r4, r3
/* 00005204 000052C8  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00005208 000052CC  4B FF B8 69 */	bl BattleGetUnitPtr
/* 0000520C 000052D0  3C C0 00 00 */	lis r6, double_to_int_jon_0000d8d8@ha
/* 00005210 000052D4  3C A0 00 00 */	lis r5, float_0p5_jon_0000d8d0@ha
/* 00005214 000052D8  3C 80 00 00 */	lis r4, float_32767_jon_0000d8d4@ha
/* 00005218 000052DC  CB A6 00 00 */	lfd f29, double_to_int_jon_0000d8d8@l(r6)
/* 0000521C 000052E0  C3 C5 00 00 */	lfs f30, float_0p5_jon_0000d8d0@l(r5)
/* 00005220 000052E4  7C 7E 1B 78 */	mr r30, r3
/* 00005224 000052E8  C3 E4 00 00 */	lfs f31, float_32767_jon_0000d8d4@l(r4)
/* 00005228 000052EC  3B A0 00 00 */	li r29, 0x0
/* 0000522C 000052F0  3F E0 43 30 */	lis r31, 0x4330
.L_00005230:
/* 00005230 000052F4  7F C3 F3 78 */	mr r3, r30
/* 00005234 000052F8  38 81 00 10 */	addi r4, r1, 0x10
/* 00005238 000052FC  38 A1 00 0C */	addi r5, r1, 0xc
/* 0000523C 00005300  38 C1 00 08 */	addi r6, r1, 0x8
/* 00005240 00005304  4B FF B8 31 */	bl BtlUnit_GetPos
/* 00005244 00005308  38 60 00 14 */	li r3, 0x14
/* 00005248 0000530C  4B FF B8 29 */	bl irand
/* 0000524C 00005310  38 03 FF F6 */	subi r0, r3, 0xa
/* 00005250 00005314  93 E1 00 18 */	stw r31, 0x18(r1)
/* 00005254 00005318  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 00005258 0000531C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 0000525C 00005320  90 01 00 1C */	stw r0, 0x1c(r1)
/* 00005260 00005324  38 60 00 1E */	li r3, 0x1e
/* 00005264 00005328  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 00005268 0000532C  EC 21 E8 28 */	fsubs f1, f1, f29
/* 0000526C 00005330  EC 00 08 2A */	fadds f0, f0, f1
/* 00005270 00005334  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 00005274 00005338  4B FF B7 FD */	bl irand
/* 00005278 0000533C  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 0000527C 00005340  93 E1 00 20 */	stw r31, 0x20(r1)
/* 00005280 00005344  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 00005284 00005348  90 01 00 24 */	stw r0, 0x24(r1)
/* 00005288 0000534C  C8 21 00 20 */	lfd f1, 0x20(r1)
/* 0000528C 00005350  EC 21 E8 28 */	fsubs f1, f1, f29
/* 00005290 00005354  EC 00 08 2A */	fadds f0, f0, f1
/* 00005294 00005358  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 00005298 0000535C  4B FF B7 D9 */	bl rand
/* 0000529C 00005360  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 000052A0 00005364  38 1D 00 01 */	addi r0, r29, 0x1
/* 000052A4 00005368  90 61 00 2C */	stw r3, 0x2c(r1)
/* 000052A8 0000536C  1C 80 00 0A */	mulli r4, r0, 0xa
/* 000052AC 00005370  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 000052B0 00005374  38 60 00 02 */	li r3, 0x2
/* 000052B4 00005378  93 E1 00 28 */	stw r31, 0x28(r1)
/* 000052B8 0000537C  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 000052BC 00005380  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 000052C0 00005384  C0 61 00 08 */	lfs f3, 0x8(r1)
/* 000052C4 00005388  EC 00 E8 28 */	fsubs f0, f0, f29
/* 000052C8 0000538C  EC 1E 00 32 */	fmuls f0, f30, f0
/* 000052CC 00005390  EC 00 F8 24 */	fdivs f0, f0, f31
/* 000052D0 00005394  EC 9E 00 2A */	fadds f4, f30, f0
/* 000052D4 00005398  4B FF B7 9D */	bl effVaporN64Entry
/* 000052D8 0000539C  80 C3 00 0C */	lwz r6, 0xc(r3)
/* 000052DC 000053A0  38 A0 00 20 */	li r5, 0x20
/* 000052E0 000053A4  3B BD 00 01 */	addi r29, r29, 0x1
/* 000052E4 000053A8  38 80 00 73 */	li r4, 0x73
/* 000052E8 000053AC  90 A6 00 18 */	stw r5, 0x18(r6)
/* 000052EC 000053B0  38 60 00 64 */	li r3, 0x64
/* 000052F0 000053B4  38 00 00 FF */	li r0, 0xff
/* 000052F4 000053B8  2C 1D 00 03 */	cmpwi r29, 0x3
/* 000052F8 000053BC  90 86 00 1C */	stw r4, 0x1c(r6)
/* 000052FC 000053C0  90 66 00 20 */	stw r3, 0x20(r6)
/* 00005300 000053C4  90 06 00 24 */	stw r0, 0x24(r6)
/* 00005304 000053C8  90 A6 00 28 */	stw r5, 0x28(r6)
/* 00005308 000053CC  90 86 00 2C */	stw r4, 0x2c(r6)
/* 0000530C 000053D0  90 66 00 30 */	stw r3, 0x30(r6)
/* 00005310 000053D4  90 06 00 34 */	stw r0, 0x34(r6)
/* 00005314 000053D8  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 00005318 000053DC  D0 06 00 40 */	stfs f0, 0x40(r6)
/* 0000531C 000053E0  41 80 FF 14 */	blt .L_00005230
/* 00005320 000053E4  38 60 00 02 */	li r3, 0x2
/* 00005324 000053E8  E3 E1 00 68 */	psq_l f31, 0x68(r1), 0, qr0
/* 00005328 000053EC  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 0000532C 000053F0  E3 C1 00 58 */	psq_l f30, 0x58(r1), 0, qr0
/* 00005330 000053F4  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 00005334 000053F8  E3 A1 00 48 */	psq_l f29, 0x48(r1), 0, qr0
/* 00005338 000053FC  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 0000533C 00005400  BB A1 00 34 */	lmw r29, 0x34(r1)
/* 00005340 00005404  80 01 00 74 */	lwz r0, 0x74(r1)
/* 00005344 00005408  7C 08 03 A6 */	mtlr r0
/* 00005348 0000540C  38 21 00 70 */	addi r1, r1, 0x70
/* 0000534C 00005410  4E 80 00 20 */	blr
.endfn eff_poison_barrier

# .text:0x19C | 0x5350 | size: 0x18C
.fn eff_poison_breath, local
/* 00005350 00005414  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 00005354 00005418  7C 08 02 A6 */	mflr r0
/* 00005358 0000541C  90 01 00 64 */	stw r0, 0x64(r1)
/* 0000535C 00005420  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 00005360 00005424  F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 00005364 00005428  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 00005368 0000542C  F3 C1 00 48 */	psq_st f30, 0x48(r1), 0, qr0
/* 0000536C 00005430  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 00005370 00005434  F3 A1 00 38 */	psq_st f29, 0x38(r1), 0, qr0
/* 00005374 00005438  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00005378 0000543C  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000537C 00005440  4B FF B6 F5 */	bl evtGetValue
/* 00005380 00005444  2C 03 00 00 */	cmpwi r3, 0x0
/* 00005384 00005448  40 82 00 10 */	bne .L_00005394
/* 00005388 0000544C  3C 60 00 00 */	lis r3, float_neg125_jon_0000d8e0@ha
/* 0000538C 00005450  C3 E3 00 00 */	lfs f31, float_neg125_jon_0000d8e0@l(r3)
/* 00005390 00005454  48 00 00 0C */	b .L_0000539C
.L_00005394:
/* 00005394 00005458  3C 60 00 00 */	lis r3, float_125_jon_0000d8e4@ha
/* 00005398 0000545C  C3 E3 00 00 */	lfs f31, float_125_jon_0000d8e4@l(r3)
.L_0000539C:
/* 0000539C 00005460  38 60 00 96 */	li r3, 0x96
/* 000053A0 00005464  4B FF B6 D1 */	bl irand
/* 000053A4 00005468  38 63 FF B5 */	subi r3, r3, 0x4b
/* 000053A8 0000546C  3C 00 43 30 */	lis r0, 0x4330
/* 000053AC 00005470  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 000053B0 00005474  3C 80 00 00 */	lis r4, double_to_int_jon_0000d8d8@ha
/* 000053B4 00005478  90 61 00 0C */	stw r3, 0xc(r1)
/* 000053B8 0000547C  38 60 00 46 */	li r3, 0x46
/* 000053BC 00005480  C8 24 00 00 */	lfd f1, double_to_int_jon_0000d8d8@l(r4)
/* 000053C0 00005484  90 01 00 08 */	stw r0, 0x8(r1)
/* 000053C4 00005488  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 000053C8 0000548C  EC 00 08 28 */	fsubs f0, f0, f1
/* 000053CC 00005490  EF FF 00 2A */	fadds f31, f31, f0
/* 000053D0 00005494  4B FF B6 A1 */	bl irand
/* 000053D4 00005498  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 000053D8 0000549C  3C 00 43 30 */	lis r0, 0x4330
/* 000053DC 000054A0  90 61 00 14 */	stw r3, 0x14(r1)
/* 000053E0 000054A4  3C 80 00 00 */	lis r4, double_to_int_jon_0000d8d8@ha
/* 000053E4 000054A8  C8 24 00 00 */	lfd f1, double_to_int_jon_0000d8d8@l(r4)
/* 000053E8 000054AC  38 60 00 50 */	li r3, 0x50
/* 000053EC 000054B0  90 01 00 10 */	stw r0, 0x10(r1)
/* 000053F0 000054B4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 000053F4 000054B8  EF C0 08 28 */	fsubs f30, f0, f1
/* 000053F8 000054BC  4B FF B6 79 */	bl irand
/* 000053FC 000054C0  38 63 FF D8 */	subi r3, r3, 0x28
/* 00005400 000054C4  3C 00 43 30 */	lis r0, 0x4330
/* 00005404 000054C8  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 00005408 000054CC  3C 80 00 00 */	lis r4, double_to_int_jon_0000d8d8@ha
/* 0000540C 000054D0  90 61 00 1C */	stw r3, 0x1c(r1)
/* 00005410 000054D4  C8 24 00 00 */	lfd f1, double_to_int_jon_0000d8d8@l(r4)
/* 00005414 000054D8  90 01 00 18 */	stw r0, 0x18(r1)
/* 00005418 000054DC  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 0000541C 000054E0  EF A0 08 28 */	fsubs f29, f0, f1
/* 00005420 000054E4  4B FF B6 51 */	bl rand
/* 00005424 000054E8  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 00005428 000054EC  3C 00 43 30 */	lis r0, 0x4330
/* 0000542C 000054F0  3C 80 00 00 */	lis r4, double_to_int_jon_0000d8d8@ha
/* 00005430 000054F4  90 61 00 24 */	stw r3, 0x24(r1)
/* 00005434 000054F8  38 A4 00 00 */	addi r5, r4, double_to_int_jon_0000d8d8@l
/* 00005438 000054FC  3C 60 00 00 */	lis r3, float_32767_jon_0000d8d4@ha
/* 0000543C 00005500  90 01 00 20 */	stw r0, 0x20(r1)
/* 00005440 00005504  38 83 00 00 */	addi r4, r3, float_32767_jon_0000d8d4@l
/* 00005444 00005508  C8 45 00 00 */	lfd f2, 0x0(r5)
/* 00005448 0000550C  3C 60 00 00 */	lis r3, float_2p5_jon_0000d8e8@ha
/* 0000544C 00005510  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 00005450 00005514  FC 20 F8 90 */	fmr f1, f31
/* 00005454 00005518  C0 84 00 00 */	lfs f4, 0x0(r4)
/* 00005458 0000551C  FC 60 E8 90 */	fmr f3, f29
/* 0000545C 00005520  EC A0 10 28 */	fsubs f5, f0, f2
/* 00005460 00005524  C0 03 00 00 */	lfs f0, float_2p5_jon_0000d8e8@l(r3)
/* 00005464 00005528  FC 40 F0 90 */	fmr f2, f30
/* 00005468 0000552C  38 60 00 00 */	li r3, 0x0
/* 0000546C 00005530  38 80 00 0F */	li r4, 0xf
/* 00005470 00005534  EC 85 20 24 */	fdivs f4, f5, f4
/* 00005474 00005538  EC 80 20 2A */	fadds f4, f0, f4
/* 00005478 0000553C  4B FF B5 F9 */	bl effVaporN64Entry
/* 0000547C 00005540  80 E3 00 0C */	lwz r7, 0xc(r3)
/* 00005480 00005544  38 C0 00 20 */	li r6, 0x20
/* 00005484 00005548  38 A0 00 73 */	li r5, 0x73
/* 00005488 0000554C  38 80 00 64 */	li r4, 0x64
/* 0000548C 00005550  90 C7 00 18 */	stw r6, 0x18(r7)
/* 00005490 00005554  38 00 00 FF */	li r0, 0xff
/* 00005494 00005558  38 60 00 02 */	li r3, 0x2
/* 00005498 0000555C  90 A7 00 1C */	stw r5, 0x1c(r7)
/* 0000549C 00005560  90 87 00 20 */	stw r4, 0x20(r7)
/* 000054A0 00005564  90 07 00 24 */	stw r0, 0x24(r7)
/* 000054A4 00005568  90 C7 00 28 */	stw r6, 0x28(r7)
/* 000054A8 0000556C  90 A7 00 2C */	stw r5, 0x2c(r7)
/* 000054AC 00005570  90 87 00 30 */	stw r4, 0x30(r7)
/* 000054B0 00005574  90 07 00 34 */	stw r0, 0x34(r7)
/* 000054B4 00005578  E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 000054B8 0000557C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 000054BC 00005580  E3 C1 00 48 */	psq_l f30, 0x48(r1), 0, qr0
/* 000054C0 00005584  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 000054C4 00005588  E3 A1 00 38 */	psq_l f29, 0x38(r1), 0, qr0
/* 000054C8 0000558C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 000054CC 00005590  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 000054D0 00005594  7C 08 03 A6 */	mtlr r0
/* 000054D4 00005598  38 21 00 60 */	addi r1, r1, 0x60
/* 000054D8 0000559C  4E 80 00 20 */	blr
.endfn eff_poison_breath

# 0x00006710..0x000068C0 | size: 0x1B0
.rodata
.balign 8

# .rodata:0x0 | 0x6710 | size: 0x12
.obj str_btl_un_dokugassun_jon_0000d740, local
	.string "btl_un_dokugassun"
.endobj str_btl_un_dokugassun_jon_0000d740

# .rodata:0x12 | 0x6722 | size: 0x2
.obj gap_03_00006722_rodata, global
.hidden gap_03_00006722_rodata
	.2byte 0x0000
.endobj gap_03_00006722_rodata

# .rodata:0x14 | 0x6724 | size: 0x16
.obj str_SFX_ENM_KUMO_DAMAGED_jon_0000d754, local
	.string "SFX_ENM_KUMO_DAMAGED1"
.endobj str_SFX_ENM_KUMO_DAMAGED_jon_0000d754

# .rodata:0x2A | 0x673A | size: 0x2
.obj gap_03_0000673A_rodata, global
.hidden gap_03_0000673A_rodata
	.2byte 0x0000
.endobj gap_03_0000673A_rodata

# .rodata:0x2C | 0x673C | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_jon_0000d76c, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_jon_0000d76c

# .rodata:0x41 | 0x6751 | size: 0x3
.obj gap_03_00006751_rodata, global
.hidden gap_03_00006751_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006751_rodata

# .rodata:0x44 | 0x6754 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_jon_0000d784, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_jon_0000d784

# .rodata:0x58 | 0x6768 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_jon_0000d798, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_jon_0000d798

# .rodata:0x71 | 0x6781 | size: 0x3
.obj gap_03_00006781_rodata, global
.hidden gap_03_00006781_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006781_rodata

# .rodata:0x74 | 0x6784 | size: 0xA
.obj str_c_kmoon_g_jon_0000d7b4, local
	.string "c_kmoon_g"
.endobj str_c_kmoon_g_jon_0000d7b4

# .rodata:0x7E | 0x678E | size: 0x2
.obj gap_03_0000678E_rodata, global
.hidden gap_03_0000678E_rodata
	.2byte 0x0000
.endobj gap_03_0000678E_rodata

# .rodata:0x80 | 0x6790 | size: 0x4
.obj str_R_1_jon_0000d7c0, local
	.string "R_1"
.endobj str_R_1_jon_0000d7c0

# .rodata:0x84 | 0x6794 | size: 0x13
.obj str_SFX_ENM_KUMO_MOVE3_jon_0000d7c4, local
	.string "SFX_ENM_KUMO_MOVE3"
.endobj str_SFX_ENM_KUMO_MOVE3_jon_0000d7c4

# .rodata:0x97 | 0x67A7 | size: 0x1
.obj gap_03_000067A7_rodata, global
.hidden gap_03_000067A7_rodata
	.byte 0x00
.endobj gap_03_000067A7_rodata

# .rodata:0x98 | 0x67A8 | size: 0x1A
.obj str_SFX_ENM_DOKU_KUMO_CH_jon_0000d7d8, local
	.string "SFX_ENM_DOKU_KUMO_CHARGE1"
.endobj str_SFX_ENM_DOKU_KUMO_CH_jon_0000d7d8

# .rodata:0xB2 | 0x67C2 | size: 0x2
.obj gap_03_000067C2_rodata, global
.hidden gap_03_000067C2_rodata
	.2byte 0x0000
.endobj gap_03_000067C2_rodata

# .rodata:0xB4 | 0x67C4 | size: 0x5
.obj str_A_2B_jon_0000d7f4, local
	.string "A_2B"
.endobj str_A_2B_jon_0000d7f4

# .rodata:0xB9 | 0x67C9 | size: 0x3
.obj gap_03_000067C9_rodata, global
.hidden gap_03_000067C9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000067C9_rodata

# .rodata:0xBC | 0x67CC | size: 0x21
.obj str_SFX_ENM_DOKU_KUMO_CH_jon_0000d7fc, local
	.string "SFX_ENM_DOKU_KUMO_CHARGE_ATTACK1"
.endobj str_SFX_ENM_DOKU_KUMO_CH_jon_0000d7fc

# .rodata:0xDD | 0x67ED | size: 0x3
.obj gap_03_000067ED_rodata, global
.hidden gap_03_000067ED_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000067ED_rodata

# .rodata:0xE0 | 0x67F0 | size: 0x5
.obj str_A_3A_jon_0000d820, local
	.string "A_3A"
.endobj str_A_3A_jon_0000d820

# .rodata:0xE5 | 0x67F5 | size: 0x3
.obj gap_03_000067F5_rodata, global
.hidden gap_03_000067F5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000067F5_rodata

# .rodata:0xE8 | 0x67F8 | size: 0x5
.obj str_A_3B_jon_0000d828, local
	.string "A_3B"
.endobj str_A_3B_jon_0000d828

# .rodata:0xED | 0x67FD | size: 0x3
.obj gap_03_000067FD_rodata, global
.hidden gap_03_000067FD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000067FD_rodata

# .rodata:0xF0 | 0x6800 | size: 0x4
.obj str_S_1_jon_0000d830, local
	.string "S_1"
.endobj str_S_1_jon_0000d830

# .rodata:0xF4 | 0x6804 | size: 0x4
.obj str_N_1_jon_0000d834, local
	.string "N_1"
.endobj str_N_1_jon_0000d834

# .rodata:0xF8 | 0x6808 | size: 0x4
.obj str_Y_1_jon_0000d838, local
	.string "Y_1"
.endobj str_Y_1_jon_0000d838

# .rodata:0xFC | 0x680C | size: 0x4
.obj str_K_1_jon_0000d83c, local
	.string "K_1"
.endobj str_K_1_jon_0000d83c

# .rodata:0x100 | 0x6810 | size: 0x4
.obj str_X_1_jon_0000d840, local
	.string "X_1"
.endobj str_X_1_jon_0000d840

# .rodata:0x104 | 0x6814 | size: 0x4
.obj str_Q_1_jon_0000d844, local
	.string "Q_1"
.endobj str_Q_1_jon_0000d844

# .rodata:0x108 | 0x6818 | size: 0x4
.obj str_A_1_jon_0000d848, local
	.string "A_1"
.endobj str_A_1_jon_0000d848

# .rodata:0x10C | 0x681C | size: 0x4
.obj str_D_1_jon_0000d84c, local
	.string "D_1"
.endobj str_D_1_jon_0000d84c

# .rodata:0x110 | 0x6820 | size: 0x4
.obj str_W_1_jon_0000d850, local
	.string "W_1"
.endobj str_W_1_jon_0000d850

# .rodata:0x114 | 0x6824 | size: 0x4
.obj str_T_1_jon_0000d854, local
	.string "T_1"
.endobj str_T_1_jon_0000d854

# .rodata:0x118 | 0x6828 | size: 0x13
.obj str_SFX_ENM_KUMO_MOVE4_jon_0000d858, local
	.string "SFX_ENM_KUMO_MOVE4"
.endobj str_SFX_ENM_KUMO_MOVE4_jon_0000d858

# .rodata:0x12B | 0x683B | size: 0x1
.obj gap_03_0000683B_rodata, global
.hidden gap_03_0000683B_rodata
	.byte 0x00
.endobj gap_03_0000683B_rodata

# .rodata:0x12C | 0x683C | size: 0x13
.obj str_SFX_ENM_KUMO_MOVE5_jon_0000d86c, local
	.string "SFX_ENM_KUMO_MOVE5"
.endobj str_SFX_ENM_KUMO_MOVE5_jon_0000d86c

# .rodata:0x13F | 0x684F | size: 0x1
.obj gap_03_0000684F_rodata, global
.hidden gap_03_0000684F_rodata
	.byte 0x00
.endobj gap_03_0000684F_rodata

# .rodata:0x140 | 0x6850 | size: 0x13
.obj str_SFX_ENM_KUMO_MOVE1_jon_0000d880, local
	.string "SFX_ENM_KUMO_MOVE1"
.endobj str_SFX_ENM_KUMO_MOVE1_jon_0000d880

# .rodata:0x153 | 0x6863 | size: 0x1
.obj gap_03_00006863_rodata, global
.hidden gap_03_00006863_rodata
	.byte 0x00
.endobj gap_03_00006863_rodata

# .rodata:0x154 | 0x6864 | size: 0x15
.obj str_SFX_ENM_KUMO_ATTACK1_jon_0000d894, local
	.string "SFX_ENM_KUMO_ATTACK1"
.endobj str_SFX_ENM_KUMO_ATTACK1_jon_0000d894

# .rodata:0x169 | 0x6879 | size: 0x3
.obj gap_03_00006879_rodata, global
.hidden gap_03_00006879_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006879_rodata

# .rodata:0x16C | 0x687C | size: 0x5
.obj str_A_2A_jon_0000d8ac, local
	.string "A_2A"
.endobj str_A_2A_jon_0000d8ac

# .rodata:0x171 | 0x6881 | size: 0x3
.obj gap_03_00006881_rodata, global
.hidden gap_03_00006881_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006881_rodata

# .rodata:0x174 | 0x6884 | size: 0x13
.obj str_SFX_ENM_KUMO_MOVE2_jon_0000d8b4, local
	.string "SFX_ENM_KUMO_MOVE2"
.endobj str_SFX_ENM_KUMO_MOVE2_jon_0000d8b4

# .rodata:0x187 | 0x6897 | size: 0x1
.obj gap_03_00006897_rodata, global
.hidden gap_03_00006897_rodata
	.byte 0x00
.endobj gap_03_00006897_rodata

# .rodata:0x188 | 0x6898 | size: 0x5
.obj str_A_1A_jon_0000d8c8, local
	.string "A_1A"
.endobj str_A_1A_jon_0000d8c8
	.byte 0x00, 0x00, 0x00

# .rodata:0x190 | 0x68A0 | size: 0x4
.obj float_0p5_jon_0000d8d0, local
	.float 0.5
.endobj float_0p5_jon_0000d8d0

# .rodata:0x194 | 0x68A4 | size: 0x4
.obj float_32767_jon_0000d8d4, local
	.float 32767
.endobj float_32767_jon_0000d8d4

# .rodata:0x198 | 0x68A8 | size: 0x8
.obj double_to_int_jon_0000d8d8, local
	.double 4503601774854144
.endobj double_to_int_jon_0000d8d8

# .rodata:0x1A0 | 0x68B0 | size: 0x4
.obj float_neg125_jon_0000d8e0, local
	.float -125
.endobj float_neg125_jon_0000d8e0

# .rodata:0x1A4 | 0x68B4 | size: 0x4
.obj float_125_jon_0000d8e4, local
	.float 125
.endobj float_125_jon_0000d8e4

# .rodata:0x1A8 | 0x68B8 | size: 0x4
.obj float_2p5_jon_0000d8e8, local
	.float 2.5
.endobj float_2p5_jon_0000d8e8

# .rodata:0x1AC | 0x68BC | size: 0x4
.obj gap_03_000068BC_rodata, global
.hidden gap_03_000068BC_rodata
	.4byte 0x00000000
.endobj gap_03_000068BC_rodata

# 0x0005CFE0..0x0005E440 | size: 0x1460
.data
.balign 8

# .data:0x0 | 0x5CFE0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x5CFE8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x5CFEC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x5CFF0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x5CFF4 | size: 0x4
.obj gap_04_0005CFF4_data, global
.hidden gap_04_0005CFF4_data
	.4byte 0x00000000
.endobj gap_04_0005CFF4_data

# .data:0x18 | 0x5CFF8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x5D000 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x5D004 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x5D008 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x5D010 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x5D014 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x5D018 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x5D01C | size: 0x4
.obj gap_04_0005D01C_data, global
.hidden gap_04_0005D01C_data
	.4byte 0x00000000
.endobj gap_04_0005D01C_data

# .data:0x40 | 0x5D020 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x5D028 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x5D02C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x5D030 | size: 0xC4
.obj unit_dokugassun_14_data_5D030, global
	.4byte 0x000000A6
	.4byte str_btl_un_dokugassun_jon_0000d740
	.4byte 0x000F0000
	.4byte 0x01012202
	.4byte 0x02460232
	.4byte 0x270F0023
	.4byte 0x001E0004
	.4byte 0x001E0000
	.4byte 0x00000000
	.4byte 0x41700000
	.4byte 0x00000000
	.4byte 0x0000FFFD
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
	.4byte 0x418C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x418C0000
	.4byte 0x419C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41700000
	.4byte 0x00000000
	.4byte 0x420C0000
	.4byte 0x41F00000
	.4byte 0x00000002
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_ENM_KUMO_DAMAGED_jon_0000d754
	.4byte str_SFX_BTL_DAMAGE_FIRE1_jon_0000d76c
	.4byte str_SFX_BTL_DAMAGE_ICE1_jon_0000d784
	.4byte str_SFX_BTL_DAMAGE_BIRIB_jon_0000d798
	.4byte 0x00000004
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_dokugassun_14_data_5D030

# .data:0x114 | 0x5D0F4 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x5D0F9 | size: 0x3
.obj gap_04_0005D0F9_data, global
.hidden gap_04_0005D0F9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0005D0F9_data

# .data:0x11C | 0x5D0FC | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x5D101 | size: 0x3
.obj gap_04_0005D101_data, global
.hidden gap_04_0005D101_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0005D101_data

# .data:0x124 | 0x5D104 | size: 0x16
.obj regist, local
	.4byte 0x41415A00
	.4byte 0x3C646464
	.4byte 0x64506450
	.4byte 0x6450323C
	.4byte 0x55643C64
	.2byte 0x6414
.endobj regist

# .data:0x13A | 0x5D11A | size: 0x2
.obj gap_04_0005D11A_data, global
.hidden gap_04_0005D11A_data
	.2byte 0x0000
.endobj gap_04_0005D11A_data

# .data:0x13C | 0x5D11C | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_dokugassun_jon_0000d740
	.4byte str_c_kmoon_g_jon_0000d7b4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41C80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x001E001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x00600009
	.4byte 0x00000000
	.4byte pose_table
.endobj parts

# .data:0x188 | 0x5D168 | size: 0xC0
.obj weapon_dokugassun_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x20001000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00005087
	.4byte 0x00000040
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
.endobj weapon_dokugassun_attack

# .data:0x248 | 0x5D228 | size: 0xC0
.obj weapon_dokugassun_poisongas_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000047
	.4byte 0x000007FF
	.4byte 0x80000004
	.4byte 0x00000000
	.4byte 0x0000460A
	.4byte 0x01000000
	.4byte 0x00000000
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
.endobj weapon_dokugassun_poisongas_attack

# .data:0x308 | 0x5D2E8 | size: 0x114
.obj attack_event, local
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
	.4byte btlevtcmd_CheckPartsCounterAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000200
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_dokugassun_poisongas_attack
	.4byte 0x0001005E
	.4byte poisongas_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000041
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
	.4byte 0x00000041
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_dokugassun_attack
	.4byte 0x0001005E
	.4byte normal_attack_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte charge_event
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

# .data:0x41C | 0x5D3FC | size: 0x4BC
.obj poisongas_event, local
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
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte 0xFE363C89
	.4byte 0x0002005B
	.4byte btlevtcmd_AttackDeclareAll
	.4byte 0xFFFFFFFE
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitGuardMove
	.4byte 0x0003005B
	.4byte btlevtcmd_PayWeaponCost
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C89
	.4byte 0x0003005B
	.4byte btlevtcmd_GetSelectEnemy
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_R_1_jon_0000d7c0
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KUMO_MOVE3_jon_0000d7c4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFD8
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x00000000
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
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_DOKU_KUMO_CH_jon_0000d7d8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2B_jon_0000d7f4
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_DOKU_KUMO_CH_jon_0000d7fc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_3A_jon_0000d820
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_3B_jon_0000d828
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsCounterAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000200
	.4byte 0x0000006E
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFE363C83
	.4byte 0xFE363C8A
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000014
	.4byte 0x0002005B
	.4byte eff_poison_breath
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x00000003
	.4byte 0x00000006
	.4byte 0x00000020
	.4byte 0x00010005
	.4byte 0x00000014
	.4byte 0x0002005B
	.4byte eff_poison_breath
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000003
	.4byte 0x00000006
	.4byte 0x00000021
	.4byte 0x00000070
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x00000000
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
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_R_1_jon_0000d7c0
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KUMO_MOVE3_jon_0000d7c4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
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
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_jon_0000d830
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj poisongas_event

# .data:0x8D8 | 0x5D8B8 | size: 0x88
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_N_1_jon_0000d834
	.4byte 0x00000002
	.4byte str_Y_1_jon_0000d838
	.4byte 0x00000009
	.4byte str_Y_1_jon_0000d838
	.4byte 0x00000005
	.4byte str_K_1_jon_0000d83c
	.4byte 0x00000004
	.4byte str_X_1_jon_0000d840
	.4byte 0x00000003
	.4byte str_X_1_jon_0000d840
	.4byte 0x0000001C
	.4byte str_S_1_jon_0000d830
	.4byte 0x0000001D
	.4byte str_Q_1_jon_0000d844
	.4byte 0x0000001E
	.4byte str_Q_1_jon_0000d844
	.4byte 0x0000001F
	.4byte str_A_1_jon_0000d848
	.4byte 0x00000027
	.4byte str_D_1_jon_0000d84c
	.4byte 0x00000028
	.4byte str_W_1_jon_0000d850
	.4byte 0x0000002A
	.4byte str_R_1_jon_0000d7c0
	.4byte 0x00000038
	.4byte str_X_1_jon_0000d840
	.4byte 0x00000039
	.4byte str_X_1_jon_0000d840
	.4byte 0x00000041
	.4byte str_T_1_jon_0000d854
	.4byte 0x00000045
	.4byte str_S_1_jon_0000d830
.endobj pose_table

# .data:0x960 | 0x5D940 | size: 0x18
.obj data_table, local
	.4byte 0x0000002B
	.4byte counter_event
	.4byte 0x00000030
	.4byte dmg_first_attack_pos
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x978 | 0x5D958 | size: 0x94
.obj init_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventWait
	.4byte 0xFFFFFFFE
	.4byte wait_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventUnisonPhase
	.4byte 0xFFFFFFFE
	.4byte unison_phase_event
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
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte barrier_event
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0xA0C | 0x5D9EC | size: 0x84
.obj barrier_event, local
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000001F
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitId
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte btlevtcmd_CheckPartsCounterAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000200
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte eff_poison_barrier
	.4byte 0xFFFFFFFE
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj barrier_event

# .data:0xA90 | 0x5DA70 | size: 0x4C
.obj dmg_first_attack_pos, local
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitAttackEnd
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dmg_first_attack_pos

# .data:0xADC | 0x5DABC | size: 0x28
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

# .data:0xB04 | 0x5DAE4 | size: 0x8
.obj counter_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj counter_event

# .data:0xB0C | 0x5DAEC | size: 0x230
.obj unison_phase_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_CheckPhase
	.4byte 0xFE363C80
	.4byte 0x04000001
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_CheckActStatus
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte btlevtcmd_CheckPartsCounterAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000200
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000063
	.4byte 0xFE363C80
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0x00000019
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KUMO_MOVE4_jon_0000d858
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000028
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
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
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00600000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KUMO_MOVE5_jon_0000d86c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000003C
	.4byte 0xFFFFFFF6
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00600000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj unison_phase_event

# .data:0xD3C | 0x5DD1C | size: 0x608
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
	.4byte 0x000000FA
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KUMO_MOVE1_jon_0000d880
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte btlevtcmd_SetDispOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte btlevtcmd_SetDispOffset
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte btlevtcmd_SetDispOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000028
	.4byte 0x0005005B
	.4byte btlevtcmd_AddScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7A76
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KUMO_ATTACK1_jon_0000d894
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2A_jon_0000d8ac
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
	.4byte 0xFFFFFFD8
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x0000003C
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte btlevtcmd_SetScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KUMO_MOVE2_jon_0000d8b4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1A_jon_0000d8c8
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000028
	.4byte 0xFFFFFFD8
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
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
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000001
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
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000028
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8A
	.4byte 0x00000028
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8A
	.4byte 0xFE363C81
	.4byte 0xFE363C8C
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KUMO_MOVE3_jon_0000d7c4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
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
	.4byte 0x00000028
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_jon_0000d830
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0005005B
	.4byte btlevtcmd_SetScale
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj normal_attack_event

# .data:0x1344 | 0x5E324 | size: 0xE8
.obj charge_event, local
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
	.4byte str_SFX_ENM_DOKU_KUMO_CH_jon_0000d7d8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsCounterAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000200
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2A_jon_0000d8ac
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2B_jon_0000d7f4
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_jon_0000d830
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj charge_event

# .data:0x142C | 0x5E40C | size: 0x34
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte btlevtcmd_SetScale
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0x00000000
.endobj wait_event
