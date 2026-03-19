.include "macros.inc"
.file "unit_poison_pakkun.o"

# 0x0000B8A0..0x0000BCBC | size: 0x41C
.text
.balign 4

# .text:0x0 | 0xB8A0 | size: 0xDC
.fn shadow_scale_return, local
/* 0000B8A0 0000B964  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 0000B8A4 0000B968  7C 08 02 A6 */	mflr r0
/* 0000B8A8 0000B96C  90 01 00 24 */	stw r0, 0x24(r1)
/* 0000B8AC 0000B970  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 0000B8B0 0000B974  7C 9F 23 78 */	mr r31, r4
/* 0000B8B4 0000B978  7C 7E 1B 78 */	mr r30, r3
/* 0000B8B8 0000B97C  80 83 00 18 */	lwz r4, 0x18(r3)
/* 0000B8BC 0000B980  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000B8C0 0000B984  4B FF 50 E9 */	bl evtGetValue
/* 0000B8C4 0000B988  7C 64 1B 78 */	mr r4, r3
/* 0000B8C8 0000B98C  7F C3 F3 78 */	mr r3, r30
/* 0000B8CC 0000B990  4B FF 50 DD */	bl BattleTransID
/* 0000B8D0 0000B994  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0000B8D4 0000B998  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 0000B8D8 0000B99C  7C 64 1B 78 */	mr r4, r3
/* 0000B8DC 0000B9A0  80 65 00 00 */	lwz r3, 0x0(r5)
/* 0000B8E0 0000B9A4  4B FF 50 C9 */	bl BattleGetUnitPtr
/* 0000B8E4 0000B9A8  7C 7E 1B 78 */	mr r30, r3
/* 0000B8E8 0000B9AC  38 80 00 01 */	li r4, 0x1
/* 0000B8EC 0000B9B0  4B FF 50 BD */	bl BtlUnit_GetPartsPtr
/* 0000B8F0 0000B9B4  2C 1F 00 00 */	cmpwi r31, 0x0
/* 0000B8F4 0000B9B8  7C 7F 1B 78 */	mr r31, r3
/* 0000B8F8 0000B9BC  41 82 00 0C */	beq .L_0000B904
/* 0000B8FC 0000B9C0  38 00 00 00 */	li r0, 0x0
/* 0000B900 0000B9C4  90 1E 02 1C */	stw r0, 0x21c(r30)
.L_0000B904:
/* 0000B904 0000B9C8  80 7E 02 18 */	lwz r3, 0x218(r30)
/* 0000B908 0000B9CC  3C 00 43 30 */	lis r0, 0x4330
/* 0000B90C 0000B9D0  3C 80 00 00 */	lis r4, double_to_int_muj_00014138@ha
/* 0000B910 0000B9D4  3C A0 00 00 */	lis r5, zero_muj_00014134@ha
/* 0000B914 0000B9D8  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 0000B918 0000B9DC  C8 44 00 00 */	lfd f2, double_to_int_muj_00014138@l(r4)
/* 0000B91C 0000B9E0  90 61 00 0C */	stw r3, 0xc(r1)
/* 0000B920 0000B9E4  38 C5 00 00 */	addi r6, r5, zero_muj_00014134@l
/* 0000B924 0000B9E8  C0 26 00 00 */	lfs f1, 0x0(r6)
/* 0000B928 0000B9EC  38 60 00 00 */	li r3, 0x0
/* 0000B92C 0000B9F0  90 01 00 08 */	stw r0, 0x8(r1)
/* 0000B930 0000B9F4  38 A0 00 0F */	li r5, 0xf
/* 0000B934 0000B9F8  80 9E 02 1C */	lwz r4, 0x21c(r30)
/* 0000B938 0000B9FC  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 0000B93C 0000BA00  EC 40 10 28 */	fsubs f2, f0, f2
/* 0000B940 0000BA04  4B FF 50 69 */	bl intplGetValue
/* 0000B944 0000BA08  D0 3F 00 78 */	stfs f1, 0x78(r31)
/* 0000B948 0000BA0C  80 7E 02 1C */	lwz r3, 0x21c(r30)
/* 0000B94C 0000BA10  2C 03 00 0F */	cmpwi r3, 0xf
/* 0000B950 0000BA14  41 80 00 0C */	blt .L_0000B95C
/* 0000B954 0000BA18  38 60 00 02 */	li r3, 0x2
/* 0000B958 0000BA1C  48 00 00 10 */	b .L_0000B968
.L_0000B95C:
/* 0000B95C 0000BA20  38 03 00 01 */	addi r0, r3, 0x1
/* 0000B960 0000BA24  38 60 00 00 */	li r3, 0x0
/* 0000B964 0000BA28  90 1E 02 1C */	stw r0, 0x21c(r30)
.L_0000B968:
/* 0000B968 0000BA2C  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 0000B96C 0000BA30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 0000B970 0000BA34  7C 08 03 A6 */	mtlr r0
/* 0000B974 0000BA38  38 21 00 20 */	addi r1, r1, 0x20
/* 0000B978 0000BA3C  4E 80 00 20 */	blr
.endfn shadow_scale_return

# .text:0xDC | 0xB97C | size: 0xE0
.fn shadow_scale_small, local
/* 0000B97C 0000BA40  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 0000B980 0000BA44  7C 08 02 A6 */	mflr r0
/* 0000B984 0000BA48  90 01 00 24 */	stw r0, 0x24(r1)
/* 0000B988 0000BA4C  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 0000B98C 0000BA50  7C 9F 23 78 */	mr r31, r4
/* 0000B990 0000BA54  7C 7E 1B 78 */	mr r30, r3
/* 0000B994 0000BA58  80 83 00 18 */	lwz r4, 0x18(r3)
/* 0000B998 0000BA5C  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000B99C 0000BA60  4B FF 50 0D */	bl evtGetValue
/* 0000B9A0 0000BA64  7C 64 1B 78 */	mr r4, r3
/* 0000B9A4 0000BA68  7F C3 F3 78 */	mr r3, r30
/* 0000B9A8 0000BA6C  4B FF 50 01 */	bl BattleTransID
/* 0000B9AC 0000BA70  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0000B9B0 0000BA74  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 0000B9B4 0000BA78  7C 64 1B 78 */	mr r4, r3
/* 0000B9B8 0000BA7C  80 65 00 00 */	lwz r3, 0x0(r5)
/* 0000B9BC 0000BA80  4B FF 4F ED */	bl BattleGetUnitPtr
/* 0000B9C0 0000BA84  7C 7E 1B 78 */	mr r30, r3
/* 0000B9C4 0000BA88  38 80 00 01 */	li r4, 0x1
/* 0000B9C8 0000BA8C  4B FF 4F E1 */	bl BtlUnit_GetPartsPtr
/* 0000B9CC 0000BA90  2C 1F 00 00 */	cmpwi r31, 0x0
/* 0000B9D0 0000BA94  7C 7F 1B 78 */	mr r31, r3
/* 0000B9D4 0000BA98  41 82 00 0C */	beq .L_0000B9E0
/* 0000B9D8 0000BA9C  38 00 00 00 */	li r0, 0x0
/* 0000B9DC 0000BAA0  90 1E 02 1C */	stw r0, 0x21c(r30)
.L_0000B9E0:
/* 0000B9E0 0000BAA4  80 BE 02 18 */	lwz r5, 0x218(r30)
/* 0000B9E4 0000BAA8  3C 00 43 30 */	lis r0, 0x4330
/* 0000B9E8 0000BAAC  3C 80 00 00 */	lis r4, double_to_int_muj_00014138@ha
/* 0000B9EC 0000BAB0  3C 60 00 00 */	lis r3, zero_muj_00014134@ha
/* 0000B9F0 0000BAB4  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 0000B9F4 0000BAB8  90 01 00 08 */	stw r0, 0x8(r1)
/* 0000B9F8 0000BABC  38 C4 00 00 */	addi r6, r4, double_to_int_muj_00014138@l
/* 0000B9FC 0000BAC0  38 83 00 00 */	addi r4, r3, zero_muj_00014134@l
/* 0000BA00 0000BAC4  90 A1 00 0C */	stw r5, 0xc(r1)
/* 0000BA04 0000BAC8  38 60 00 00 */	li r3, 0x0
/* 0000BA08 0000BACC  C8 26 00 00 */	lfd f1, 0x0(r6)
/* 0000BA0C 0000BAD0  38 A0 00 0F */	li r5, 0xf
/* 0000BA10 0000BAD4  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 0000BA14 0000BAD8  C0 44 00 00 */	lfs f2, 0x0(r4)
/* 0000BA18 0000BADC  EC 20 08 28 */	fsubs f1, f0, f1
/* 0000BA1C 0000BAE0  80 9E 02 1C */	lwz r4, 0x21c(r30)
/* 0000BA20 0000BAE4  4B FF 4F 89 */	bl intplGetValue
/* 0000BA24 0000BAE8  D0 3F 00 78 */	stfs f1, 0x78(r31)
/* 0000BA28 0000BAEC  80 7E 02 1C */	lwz r3, 0x21c(r30)
/* 0000BA2C 0000BAF0  2C 03 00 0F */	cmpwi r3, 0xf
/* 0000BA30 0000BAF4  41 80 00 0C */	blt .L_0000BA3C
/* 0000BA34 0000BAF8  38 60 00 02 */	li r3, 0x2
/* 0000BA38 0000BAFC  48 00 00 10 */	b .L_0000BA48
.L_0000BA3C:
/* 0000BA3C 0000BB00  38 03 00 01 */	addi r0, r3, 0x1
/* 0000BA40 0000BB04  38 60 00 00 */	li r3, 0x0
/* 0000BA44 0000BB08  90 1E 02 1C */	stw r0, 0x21c(r30)
.L_0000BA48:
/* 0000BA48 0000BB0C  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 0000BA4C 0000BB10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 0000BA50 0000BB14  7C 08 03 A6 */	mtlr r0
/* 0000BA54 0000BB18  38 21 00 20 */	addi r1, r1, 0x20
/* 0000BA58 0000BB1C  4E 80 00 20 */	blr
.endfn shadow_scale_small

# .text:0x1BC | 0xBA5C | size: 0x78
.fn shadow_scale_memory, local
/* 0000BA5C 0000BB20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 0000BA60 0000BB24  7C 08 02 A6 */	mflr r0
/* 0000BA64 0000BB28  90 01 00 24 */	stw r0, 0x24(r1)
/* 0000BA68 0000BB2C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 0000BA6C 0000BB30  7C 7F 1B 78 */	mr r31, r3
/* 0000BA70 0000BB34  80 83 00 18 */	lwz r4, 0x18(r3)
/* 0000BA74 0000BB38  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000BA78 0000BB3C  4B FF 4F 31 */	bl evtGetValue
/* 0000BA7C 0000BB40  7C 64 1B 78 */	mr r4, r3
/* 0000BA80 0000BB44  7F E3 FB 78 */	mr r3, r31
/* 0000BA84 0000BB48  4B FF 4F 25 */	bl BattleTransID
/* 0000BA88 0000BB4C  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0000BA8C 0000BB50  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 0000BA90 0000BB54  7C 64 1B 78 */	mr r4, r3
/* 0000BA94 0000BB58  80 65 00 00 */	lwz r3, 0x0(r5)
/* 0000BA98 0000BB5C  4B FF 4F 11 */	bl BattleGetUnitPtr
/* 0000BA9C 0000BB60  7C 7F 1B 78 */	mr r31, r3
/* 0000BAA0 0000BB64  38 80 00 01 */	li r4, 0x1
/* 0000BAA4 0000BB68  4B FF 4F 05 */	bl BtlUnit_GetPartsPtr
/* 0000BAA8 0000BB6C  C0 03 00 78 */	lfs f0, 0x78(r3)
/* 0000BAAC 0000BB70  38 60 00 02 */	li r3, 0x2
/* 0000BAB0 0000BB74  FC 00 00 1E */	fctiwz f0, f0
/* 0000BAB4 0000BB78  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 0000BAB8 0000BB7C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 0000BABC 0000BB80  90 1F 02 18 */	stw r0, 0x218(r31)
/* 0000BAC0 0000BB84  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 0000BAC4 0000BB88  80 01 00 24 */	lwz r0, 0x24(r1)
/* 0000BAC8 0000BB8C  7C 08 03 A6 */	mtlr r0
/* 0000BACC 0000BB90  38 21 00 20 */	addi r1, r1, 0x20
/* 0000BAD0 0000BB94  4E 80 00 20 */	blr
.endfn shadow_scale_memory

# .text:0x234 | 0xBAD4 | size: 0x5C
.fn pakkun_ceil_exist, local
/* 0000BAD4 0000BB98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0000BAD8 0000BB9C  7C 08 02 A6 */	mflr r0
/* 0000BADC 0000BBA0  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0000BAE0 0000BBA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000BAE4 0000BBA8  38 84 00 00 */	addi r4, r4, _battleWorkPointer@l
/* 0000BAE8 0000BBAC  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000BAEC 0000BBB0  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 0000BAF0 0000BBB4  3C 84 00 02 */	addis r4, r4, 0x2
/* 0000BAF4 0000BBB8  88 04 80 F8 */	lbz r0, -0x7f08(r4)
/* 0000BAF8 0000BBBC  54 00 06 B5 */	rlwinm. r0, r0, 0, 26, 26
/* 0000BAFC 0000BBC0  41 82 00 14 */	beq .L_0000BB10
/* 0000BB00 0000BBC4  80 85 00 00 */	lwz r4, 0x0(r5)
/* 0000BB04 0000BBC8  38 A0 00 00 */	li r5, 0x0
/* 0000BB08 0000BBCC  4B FF 4E A1 */	bl evtSetValue
/* 0000BB0C 0000BBD0  48 00 00 10 */	b .L_0000BB1C
.L_0000BB10:
/* 0000BB10 0000BBD4  80 85 00 00 */	lwz r4, 0x0(r5)
/* 0000BB14 0000BBD8  38 A0 00 01 */	li r5, 0x1
/* 0000BB18 0000BBDC  4B FF 4E 91 */	bl evtSetValue
.L_0000BB1C:
/* 0000BB1C 0000BBE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0000BB20 0000BBE4  38 60 00 02 */	li r3, 0x2
/* 0000BB24 0000BBE8  7C 08 03 A6 */	mtlr r0
/* 0000BB28 0000BBEC  38 21 00 10 */	addi r1, r1, 0x10
/* 0000BB2C 0000BBF0  4E 80 00 20 */	blr
.endfn pakkun_ceil_exist

# .text:0x290 | 0xBB30 | size: 0x18C
.fn eff_poison_breath, local
/* 0000BB30 0000BBF4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 0000BB34 0000BBF8  7C 08 02 A6 */	mflr r0
/* 0000BB38 0000BBFC  90 01 00 64 */	stw r0, 0x64(r1)
/* 0000BB3C 0000BC00  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 0000BB40 0000BC04  F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 0000BB44 0000BC08  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 0000BB48 0000BC0C  F3 C1 00 48 */	psq_st f30, 0x48(r1), 0, qr0
/* 0000BB4C 0000BC10  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 0000BB50 0000BC14  F3 A1 00 38 */	psq_st f29, 0x38(r1), 0, qr0
/* 0000BB54 0000BC18  80 83 00 18 */	lwz r4, 0x18(r3)
/* 0000BB58 0000BC1C  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000BB5C 0000BC20  4B FF 4E 4D */	bl evtGetValue
/* 0000BB60 0000BC24  2C 03 00 00 */	cmpwi r3, 0x0
/* 0000BB64 0000BC28  40 82 00 10 */	bne .L_0000BB74
/* 0000BB68 0000BC2C  3C 60 00 00 */	lis r3, float_neg125_muj_00014140@ha
/* 0000BB6C 0000BC30  C3 E3 00 00 */	lfs f31, float_neg125_muj_00014140@l(r3)
/* 0000BB70 0000BC34  48 00 00 0C */	b .L_0000BB7C
.L_0000BB74:
/* 0000BB74 0000BC38  3C 60 00 00 */	lis r3, float_125_muj_00014144@ha
/* 0000BB78 0000BC3C  C3 E3 00 00 */	lfs f31, float_125_muj_00014144@l(r3)
.L_0000BB7C:
/* 0000BB7C 0000BC40  38 60 00 96 */	li r3, 0x96
/* 0000BB80 0000BC44  4B FF 4E 29 */	bl irand
/* 0000BB84 0000BC48  38 63 FF B5 */	subi r3, r3, 0x4b
/* 0000BB88 0000BC4C  3C 00 43 30 */	lis r0, 0x4330
/* 0000BB8C 0000BC50  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 0000BB90 0000BC54  3C 80 00 00 */	lis r4, double_to_int_muj_00014138@ha
/* 0000BB94 0000BC58  90 61 00 0C */	stw r3, 0xc(r1)
/* 0000BB98 0000BC5C  38 60 00 46 */	li r3, 0x46
/* 0000BB9C 0000BC60  C8 24 00 00 */	lfd f1, double_to_int_muj_00014138@l(r4)
/* 0000BBA0 0000BC64  90 01 00 08 */	stw r0, 0x8(r1)
/* 0000BBA4 0000BC68  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 0000BBA8 0000BC6C  EC 00 08 28 */	fsubs f0, f0, f1
/* 0000BBAC 0000BC70  EF FF 00 2A */	fadds f31, f31, f0
/* 0000BBB0 0000BC74  4B FF 4D F9 */	bl irand
/* 0000BBB4 0000BC78  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 0000BBB8 0000BC7C  3C 00 43 30 */	lis r0, 0x4330
/* 0000BBBC 0000BC80  90 61 00 14 */	stw r3, 0x14(r1)
/* 0000BBC0 0000BC84  3C 80 00 00 */	lis r4, double_to_int_muj_00014138@ha
/* 0000BBC4 0000BC88  C8 24 00 00 */	lfd f1, double_to_int_muj_00014138@l(r4)
/* 0000BBC8 0000BC8C  38 60 00 50 */	li r3, 0x50
/* 0000BBCC 0000BC90  90 01 00 10 */	stw r0, 0x10(r1)
/* 0000BBD0 0000BC94  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 0000BBD4 0000BC98  EF C0 08 28 */	fsubs f30, f0, f1
/* 0000BBD8 0000BC9C  4B FF 4D D1 */	bl irand
/* 0000BBDC 0000BCA0  38 63 FF D8 */	subi r3, r3, 0x28
/* 0000BBE0 0000BCA4  3C 00 43 30 */	lis r0, 0x4330
/* 0000BBE4 0000BCA8  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 0000BBE8 0000BCAC  3C 80 00 00 */	lis r4, double_to_int_muj_00014138@ha
/* 0000BBEC 0000BCB0  90 61 00 1C */	stw r3, 0x1c(r1)
/* 0000BBF0 0000BCB4  C8 24 00 00 */	lfd f1, double_to_int_muj_00014138@l(r4)
/* 0000BBF4 0000BCB8  90 01 00 18 */	stw r0, 0x18(r1)
/* 0000BBF8 0000BCBC  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 0000BBFC 0000BCC0  EF A0 08 28 */	fsubs f29, f0, f1
/* 0000BC00 0000BCC4  4B FF 4D A9 */	bl rand
/* 0000BC04 0000BCC8  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 0000BC08 0000BCCC  3C 00 43 30 */	lis r0, 0x4330
/* 0000BC0C 0000BCD0  3C 80 00 00 */	lis r4, double_to_int_muj_00014138@ha
/* 0000BC10 0000BCD4  90 61 00 24 */	stw r3, 0x24(r1)
/* 0000BC14 0000BCD8  38 A4 00 00 */	addi r5, r4, double_to_int_muj_00014138@l
/* 0000BC18 0000BCDC  3C 60 00 00 */	lis r3, float_32767_muj_0001414c@ha
/* 0000BC1C 0000BCE0  90 01 00 20 */	stw r0, 0x20(r1)
/* 0000BC20 0000BCE4  38 83 00 00 */	addi r4, r3, float_32767_muj_0001414c@l
/* 0000BC24 0000BCE8  C8 45 00 00 */	lfd f2, 0x0(r5)
/* 0000BC28 0000BCEC  3C 60 00 00 */	lis r3, float_2p5_muj_00014148@ha
/* 0000BC2C 0000BCF0  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 0000BC30 0000BCF4  FC 20 F8 90 */	fmr f1, f31
/* 0000BC34 0000BCF8  C0 84 00 00 */	lfs f4, 0x0(r4)
/* 0000BC38 0000BCFC  FC 60 E8 90 */	fmr f3, f29
/* 0000BC3C 0000BD00  EC A0 10 28 */	fsubs f5, f0, f2
/* 0000BC40 0000BD04  C0 03 00 00 */	lfs f0, float_2p5_muj_00014148@l(r3)
/* 0000BC44 0000BD08  FC 40 F0 90 */	fmr f2, f30
/* 0000BC48 0000BD0C  38 60 00 00 */	li r3, 0x0
/* 0000BC4C 0000BD10  38 80 00 0F */	li r4, 0xf
/* 0000BC50 0000BD14  EC 85 20 24 */	fdivs f4, f5, f4
/* 0000BC54 0000BD18  EC 80 20 2A */	fadds f4, f0, f4
/* 0000BC58 0000BD1C  4B FF 4D 51 */	bl effVaporN64Entry
/* 0000BC5C 0000BD20  80 E3 00 0C */	lwz r7, 0xc(r3)
/* 0000BC60 0000BD24  38 C0 00 20 */	li r6, 0x20
/* 0000BC64 0000BD28  38 A0 00 73 */	li r5, 0x73
/* 0000BC68 0000BD2C  38 80 00 64 */	li r4, 0x64
/* 0000BC6C 0000BD30  90 C7 00 18 */	stw r6, 0x18(r7)
/* 0000BC70 0000BD34  38 00 00 FF */	li r0, 0xff
/* 0000BC74 0000BD38  38 60 00 02 */	li r3, 0x2
/* 0000BC78 0000BD3C  90 A7 00 1C */	stw r5, 0x1c(r7)
/* 0000BC7C 0000BD40  90 87 00 20 */	stw r4, 0x20(r7)
/* 0000BC80 0000BD44  90 07 00 24 */	stw r0, 0x24(r7)
/* 0000BC84 0000BD48  90 C7 00 28 */	stw r6, 0x28(r7)
/* 0000BC88 0000BD4C  90 A7 00 2C */	stw r5, 0x2c(r7)
/* 0000BC8C 0000BD50  90 87 00 30 */	stw r4, 0x30(r7)
/* 0000BC90 0000BD54  90 07 00 34 */	stw r0, 0x34(r7)
/* 0000BC94 0000BD58  E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 0000BC98 0000BD5C  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 0000BC9C 0000BD60  E3 C1 00 48 */	psq_l f30, 0x48(r1), 0, qr0
/* 0000BCA0 0000BD64  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 0000BCA4 0000BD68  E3 A1 00 38 */	psq_l f29, 0x38(r1), 0, qr0
/* 0000BCA8 0000BD6C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 0000BCAC 0000BD70  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 0000BCB0 0000BD74  7C 08 03 A6 */	mtlr r0
/* 0000BCB4 0000BD78  38 21 00 60 */	addi r1, r1, 0x60
/* 0000BCB8 0000BD7C  4E 80 00 20 */	blr
.endfn eff_poison_breath

# 0x00006280..0x000064A0 | size: 0x220
.rodata
.balign 8

# .rodata:0x0 | 0x6280 | size: 0x15
.obj str_btl_un_poison_pakkun_muj_00013f30, local
	.string "btl_un_poison_pakkun"
.endobj str_btl_un_poison_pakkun_muj_00013f30

# .rodata:0x15 | 0x6295 | size: 0x3
.obj gap_03_00006295_rodata, global
.hidden gap_03_00006295_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006295_rodata

# .rodata:0x18 | 0x6298 | size: 0x18
.obj str_SFX_ENM_PAKKUN_DAMAG_muj_00013f48, local
	.string "SFX_ENM_PAKKUN_DAMAGED1"
.endobj str_SFX_ENM_PAKKUN_DAMAG_muj_00013f48

# .rodata:0x30 | 0x62B0 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_muj_00013f60, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_muj_00013f60

# .rodata:0x45 | 0x62C5 | size: 0x3
.obj gap_03_000062C5_rodata, global
.hidden gap_03_000062C5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000062C5_rodata

# .rodata:0x48 | 0x62C8 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_muj_00013f78, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_muj_00013f78

# .rodata:0x5C | 0x62DC | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_muj_00013f8c, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_muj_00013f8c

# .rodata:0x75 | 0x62F5 | size: 0x3
.obj gap_03_000062F5_rodata, global
.hidden gap_03_000062F5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000062F5_rodata

# .rodata:0x78 | 0x62F8 | size: 0xC
.obj str_c_pakflwr_p_muj_00013fa8, local
	.string "c_pakflwr_p"
.endobj str_c_pakflwr_p_muj_00013fa8

# .rodata:0x84 | 0x6304 | size: 0x15
.obj str_SFX_ENM_PAKKUN_MOVE1_muj_00013fb4, local
	.string "SFX_ENM_PAKKUN_MOVE1"
.endobj str_SFX_ENM_PAKKUN_MOVE1_muj_00013fb4

# .rodata:0x99 | 0x6319 | size: 0x3
.obj gap_03_00006319_rodata, global
.hidden gap_03_00006319_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006319_rodata

# .rodata:0x9C | 0x631C | size: 0x8
.obj str_PKF_E_2_muj_00013fcc, local
	.string "PKF_E_2"
.endobj str_PKF_E_2_muj_00013fcc

# .rodata:0xA4 | 0x6324 | size: 0x8
.obj str_PKF_E_4_muj_00013fd4, local
	.string "PKF_E_4"
.endobj str_PKF_E_4_muj_00013fd4

# .rodata:0xAC | 0x632C | size: 0x15
.obj str_SFX_ENM_PAKKUN_MOVE2_muj_00013fdc, local
	.string "SFX_ENM_PAKKUN_MOVE2"
.endobj str_SFX_ENM_PAKKUN_MOVE2_muj_00013fdc

# .rodata:0xC1 | 0x6341 | size: 0x3
.obj gap_03_00006341_rodata, global
.hidden gap_03_00006341_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006341_rodata

# .rodata:0xC4 | 0x6344 | size: 0x8
.obj str_PKF_E_1_muj_00013ff4, local
	.string "PKF_E_1"
.endobj str_PKF_E_1_muj_00013ff4

# .rodata:0xCC | 0x634C | size: 0x16
.obj str_SFX_ENM_PAKKUN_MOUTH_muj_00013ffc, local
	.string "SFX_ENM_PAKKUN_MOUTH1"
.endobj str_SFX_ENM_PAKKUN_MOUTH_muj_00013ffc

# .rodata:0xE2 | 0x6362 | size: 0x2
.obj gap_03_00006362_rodata, global
.hidden gap_03_00006362_rodata
	.2byte 0x0000
.endobj gap_03_00006362_rodata

# .rodata:0xE4 | 0x6364 | size: 0x8
.obj str_PKF_S_2_muj_00014014, local
	.string "PKF_S_2"
.endobj str_PKF_S_2_muj_00014014

# .rodata:0xEC | 0x636C | size: 0x17
.obj str_SFX_ENM_PAKKUN_POISO_muj_0001401c, local
	.string "SFX_ENM_PAKKUN_POISON1"
.endobj str_SFX_ENM_PAKKUN_POISO_muj_0001401c

# .rodata:0x103 | 0x6383 | size: 0x1
.obj gap_03_00006383_rodata, global
.hidden gap_03_00006383_rodata
	.byte 0x00
.endobj gap_03_00006383_rodata

# .rodata:0x104 | 0x6384 | size: 0x9
.obj str_PKF_A_3A_muj_00014034, local
	.string "PKF_A_3A"
.endobj str_PKF_A_3A_muj_00014034

# .rodata:0x10D | 0x638D | size: 0x3
.obj gap_03_0000638D_rodata, global
.hidden gap_03_0000638D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000638D_rodata

# .rodata:0x110 | 0x6390 | size: 0x9
.obj str_PKF_A_3B_muj_00014040, local
	.string "PKF_A_3B"
.endobj str_PKF_A_3B_muj_00014040

# .rodata:0x119 | 0x6399 | size: 0x3
.obj gap_03_00006399_rodata, global
.hidden gap_03_00006399_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006399_rodata

# .rodata:0x11C | 0x639C | size: 0x9
.obj str_PKF_A_3C_muj_0001404c, local
	.string "PKF_A_3C"
.endobj str_PKF_A_3C_muj_0001404c

# .rodata:0x125 | 0x63A5 | size: 0x3
.obj gap_03_000063A5_rodata, global
.hidden gap_03_000063A5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000063A5_rodata

# .rodata:0x128 | 0x63A8 | size: 0x8
.obj str_PKF_N_1_muj_00014058, local
	.string "PKF_N_1"
.endobj str_PKF_N_1_muj_00014058

# .rodata:0x130 | 0x63B0 | size: 0x8
.obj str_PKF_Y_1_muj_00014060, local
	.string "PKF_Y_1"
.endobj str_PKF_Y_1_muj_00014060

# .rodata:0x138 | 0x63B8 | size: 0x8
.obj str_PKF_K_1_muj_00014068, local
	.string "PKF_K_1"
.endobj str_PKF_K_1_muj_00014068

# .rodata:0x140 | 0x63C0 | size: 0x8
.obj str_PKF_X_1_muj_00014070, local
	.string "PKF_X_1"
.endobj str_PKF_X_1_muj_00014070

# .rodata:0x148 | 0x63C8 | size: 0x8
.obj str_PKF_S_1_muj_00014078, local
	.string "PKF_S_1"
.endobj str_PKF_S_1_muj_00014078

# .rodata:0x150 | 0x63D0 | size: 0x8
.obj str_PKF_Q_1_muj_00014080, local
	.string "PKF_Q_1"
.endobj str_PKF_Q_1_muj_00014080

# .rodata:0x158 | 0x63D8 | size: 0x8
.obj str_PKF_D_1_muj_00014088, local
	.string "PKF_D_1"
.endobj str_PKF_D_1_muj_00014088

# .rodata:0x160 | 0x63E0 | size: 0x9
.obj str_PKF_A_1B_muj_00014090, local
	.string "PKF_A_1B"
.endobj str_PKF_A_1B_muj_00014090

# .rodata:0x169 | 0x63E9 | size: 0x3
.obj gap_03_000063E9_rodata, global
.hidden gap_03_000063E9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000063E9_rodata

# .rodata:0x16C | 0x63EC | size: 0x8
.obj str_PKF_T_1_muj_0001409c, local
	.string "PKF_T_1"
.endobj str_PKF_T_1_muj_0001409c

# .rodata:0x174 | 0x63F4 | size: 0x8
.obj str_PKF_N_2_muj_000140a4, local
	.string "PKF_N_2"
.endobj str_PKF_N_2_muj_000140a4

# .rodata:0x17C | 0x63FC | size: 0x8
.obj str_PKF_Y_2_muj_000140ac, local
	.string "PKF_Y_2"
.endobj str_PKF_Y_2_muj_000140ac

# .rodata:0x184 | 0x6404 | size: 0x8
.obj str_PKF_K_2_muj_000140b4, local
	.string "PKF_K_2"
.endobj str_PKF_K_2_muj_000140b4

# .rodata:0x18C | 0x640C | size: 0x8
.obj str_PKF_X_2_muj_000140bc, local
	.string "PKF_X_2"
.endobj str_PKF_X_2_muj_000140bc

# .rodata:0x194 | 0x6414 | size: 0x8
.obj str_PKF_S_3_muj_000140c4, local
	.string "PKF_S_3"
.endobj str_PKF_S_3_muj_000140c4

# .rodata:0x19C | 0x641C | size: 0x8
.obj str_PKF_Q_2_muj_000140cc, local
	.string "PKF_Q_2"
.endobj str_PKF_Q_2_muj_000140cc

# .rodata:0x1A4 | 0x6424 | size: 0x8
.obj str_PKF_S_4_muj_000140d4, local
	.string "PKF_S_4"
.endobj str_PKF_S_4_muj_000140d4

# .rodata:0x1AC | 0x642C | size: 0x8
.obj str_PKF_D_2_muj_000140dc, local
	.string "PKF_D_2"
.endobj str_PKF_D_2_muj_000140dc

# .rodata:0x1B4 | 0x6434 | size: 0x8
.obj str_PKF_A_5_muj_000140e4, local
	.string "PKF_A_5"
.endobj str_PKF_A_5_muj_000140e4

# .rodata:0x1BC | 0x643C | size: 0x1
.obj zero_muj_000140ec, local
	.byte 0x00
.endobj zero_muj_000140ec

# .rodata:0x1BD | 0x643D | size: 0x3
.obj gap_03_0000643D_rodata, global
.hidden gap_03_0000643D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000643D_rodata

# .rodata:0x1C0 | 0x6440 | size: 0xB
.obj str_toge_flush_muj_000140f0, local
	.string "toge_flush"
.endobj str_toge_flush_muj_000140f0

# .rodata:0x1CB | 0x644B | size: 0x1
.obj gap_03_0000644B_rodata, global
.hidden gap_03_0000644B_rodata
	.byte 0x00
.endobj gap_03_0000644B_rodata

# .rodata:0x1CC | 0x644C | size: 0x8
.obj str_PKF_E_3_muj_000140fc, local
	.string "PKF_E_3"
.endobj str_PKF_E_3_muj_000140fc

# .rodata:0x1D4 | 0x6454 | size: 0x9
.obj str_PKF_A_1A_muj_00014104, local
	.string "PKF_A_1A"
.endobj str_PKF_A_1A_muj_00014104

# .rodata:0x1DD | 0x645D | size: 0x3
.obj gap_03_0000645D_rodata, global
.hidden gap_03_0000645D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000645D_rodata

# .rodata:0x1E0 | 0x6460 | size: 0x17
.obj str_SFX_ENM_PAKKUN_ATTAC_muj_00014110, local
	.string "SFX_ENM_PAKKUN_ATTACK1"
.endobj str_SFX_ENM_PAKKUN_ATTAC_muj_00014110

# .rodata:0x1F7 | 0x6477 | size: 0x1
.obj gap_03_00006477_rodata, global
.hidden gap_03_00006477_rodata
	.byte 0x00
.endobj gap_03_00006477_rodata

# .rodata:0x1F8 | 0x6478 | size: 0x9
.obj str_PKF_A_1C_muj_00014128, local
	.string "PKF_A_1C"
.endobj str_PKF_A_1C_muj_00014128
	.byte 0x00, 0x00, 0x00

# .rodata:0x204 | 0x6484 | size: 0x4
.obj zero_muj_00014134, local
	.float 0
.endobj zero_muj_00014134

# .rodata:0x208 | 0x6488 | size: 0x8
.obj double_to_int_muj_00014138, local
	.double 4503601774854144
.endobj double_to_int_muj_00014138

# .rodata:0x210 | 0x6490 | size: 0x4
.obj float_neg125_muj_00014140, local
	.float -125
.endobj float_neg125_muj_00014140

# .rodata:0x214 | 0x6494 | size: 0x4
.obj float_125_muj_00014144, local
	.float 125
.endobj float_125_muj_00014144

# .rodata:0x218 | 0x6498 | size: 0x4
.obj float_2p5_muj_00014148, local
	.float 2.5
.endobj float_2p5_muj_00014148

# .rodata:0x21C | 0x649C | size: 0x4
.obj float_32767_muj_0001414c, local
	.float 32767
.endobj float_32767_muj_0001414c

# 0x00038218..0x00039AF0 | size: 0x18D8
.data
.balign 8

# .data:0x0 | 0x38218 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x38220 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x38224 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x38228 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x3822C | size: 0x4
.obj gap_04_0003822C_data, global
.hidden gap_04_0003822C_data
	.4byte 0x00000000
.endobj gap_04_0003822C_data

# .data:0x18 | 0x38230 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x38238 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x3823C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x38240 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x38248 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x3824C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x38250 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x38254 | size: 0x4
.obj gap_04_00038254_data, global
.hidden gap_04_00038254_data
	.4byte 0x00000000
.endobj gap_04_00038254_data

# .data:0x40 | 0x38258 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x38260 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x38264 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x38268 | size: 0xC4
.obj unit_poison_pakkun_19_data_38268, global
	.4byte 0x00000058
	.4byte str_btl_un_poison_pakkun_muj_00013f30
	.4byte 0x00080000
	.4byte 0x01011400
	.4byte 0x0346003C
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
	.4byte str_SFX_ENM_PAKKUN_DAMAG_muj_00013f48
	.4byte str_SFX_BTL_DAMAGE_FIRE1_muj_00013f60
	.4byte str_SFX_BTL_DAMAGE_ICE1_muj_00013f78
	.4byte str_SFX_BTL_DAMAGE_BIRIB_muj_00013f8c
	.4byte 0x00000000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_poison_pakkun_19_data_38268

# .data:0x114 | 0x3832C | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x38331 | size: 0x3
.obj gap_04_00038331_data, global
.hidden gap_04_00038331_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00038331_data

# .data:0x11C | 0x38334 | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x38339 | size: 0x3
.obj gap_04_00038339_data, global
.hidden gap_04_00038339_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00038339_data

# .data:0x124 | 0x3833C | size: 0x16
.obj regist, local
	.4byte 0x69503200
	.4byte 0x5F646446
	.4byte 0x645A645A
	.4byte 0x645F5014
	.4byte 0x28645064
	.2byte 0x645F
.endobj regist

# .data:0x13A | 0x38352 | size: 0x2
.obj gap_04_00038352_data, global
.hidden gap_04_00038352_data
	.2byte 0x0000
.endobj gap_04_00038352_data

# .data:0x13C | 0x38354 | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_poison_pakkun_muj_00013f30
	.4byte str_c_pakflwr_p_muj_00013fa8
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

# .data:0x188 | 0x383A0 | size: 0xC0
.obj weapon_poison_pakkun_attack, local
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
	.4byte 0x00000087
	.4byte 0x00000002
	.4byte 0x00002004
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
.endobj weapon_poison_pakkun_attack

# .data:0x248 | 0x38460 | size: 0xC0
.obj weapon_poison_pakkun_breath_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
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
	.4byte 0x20001000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000047
	.4byte 0x000007FF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000320A
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
.endobj weapon_poison_pakkun_breath_attack

# .data:0x308 | 0x38520 | size: 0x13C
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
	.4byte weapon_poison_pakkun_attack
	.4byte 0x0001005E
	.4byte normal_attack_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_check_battleflag
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_poison_pakkun_attack
	.4byte 0x0001005E
	.4byte normal_attack_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000020
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
	.4byte 0xFE363C80
	.4byte 0x0000003C
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0x0000003C
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_poison_pakkun_attack
	.4byte 0x0001005E
	.4byte normal_attack_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte breath_event
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

# .data:0x444 | 0x3865C | size: 0x5C4
.obj breath_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_check_battleflag
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte weapon_poison_pakkun_breath_attack
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte weapon_poison_pakkun_breath_attack
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
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte weapon_poison_pakkun_breath_attack
	.4byte 0x0002005B
	.4byte btlevtcmd_AttackDeclareAll
	.4byte 0xFFFFFFFE
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitGuardMove
	.4byte 0x0003005B
	.4byte btlevtcmd_PayWeaponCost
	.4byte 0xFFFFFFFE
	.4byte weapon_poison_pakkun_breath_attack
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAKKUN_MOVE1_muj_00013fb4
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
	.4byte str_PKF_E_2_muj_00013fcc
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_E_4_muj_00013fd4
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
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFD8
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
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x000000C8
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
	.4byte str_SFX_ENM_PAKKUN_MOVE2_muj_00013fdc
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
	.4byte str_PKF_E_1_muj_00013ff4
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000003
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAKKUN_MOUTH_muj_00013ffc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_S_2_muj_00014014
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAKKUN_POISO_muj_0001401c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_A_3A_muj_00014034
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_A_3B_muj_00014040
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x0003005B
	.4byte btlevtcmd_GetSelectEnemy
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_poison_pakkun_breath_attack
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
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte weapon_poison_pakkun_breath_attack
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_poison_pakkun_breath_attack
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
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_A_3C_muj_0001404c
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0001005E
	.4byte return_event
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj breath_event

# .data:0xA08 | 0x38C20 | size: 0x90
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_PKF_N_1_muj_00014058
	.4byte 0x00000002
	.4byte str_PKF_Y_1_muj_00014060
	.4byte 0x00000009
	.4byte str_PKF_Y_1_muj_00014060
	.4byte 0x00000005
	.4byte str_PKF_K_1_muj_00014068
	.4byte 0x00000004
	.4byte str_PKF_X_1_muj_00014070
	.4byte 0x00000003
	.4byte str_PKF_X_1_muj_00014070
	.4byte 0x0000001C
	.4byte str_PKF_S_1_muj_00014078
	.4byte 0x0000001D
	.4byte str_PKF_Q_1_muj_00014080
	.4byte 0x0000001E
	.4byte str_PKF_Q_1_muj_00014080
	.4byte 0x0000001F
	.4byte str_PKF_S_2_muj_00014014
	.4byte 0x00000027
	.4byte str_PKF_D_1_muj_00014088
	.4byte 0x00000032
	.4byte str_PKF_A_1B_muj_00014090
	.4byte 0x00000028
	.4byte str_PKF_S_1_muj_00014078
	.4byte 0x0000002A
	.4byte str_PKF_S_1_muj_00014078
	.4byte 0x00000038
	.4byte str_PKF_X_1_muj_00014070
	.4byte 0x00000039
	.4byte str_PKF_X_1_muj_00014070
	.4byte 0x00000041
	.4byte str_PKF_T_1_muj_0001409c
	.4byte 0x00000045
	.4byte str_PKF_S_1_muj_00014078
.endobj pose_table

# .data:0xA98 | 0x38CB0 | size: 0x90
.obj pose_table_ceil, local
	.4byte 0x00000001
	.4byte str_PKF_N_2_muj_000140a4
	.4byte 0x00000002
	.4byte str_PKF_Y_2_muj_000140ac
	.4byte 0x00000009
	.4byte str_PKF_Y_2_muj_000140ac
	.4byte 0x00000005
	.4byte str_PKF_K_2_muj_000140b4
	.4byte 0x00000004
	.4byte str_PKF_X_2_muj_000140bc
	.4byte 0x00000003
	.4byte str_PKF_X_2_muj_000140bc
	.4byte 0x0000001C
	.4byte str_PKF_S_3_muj_000140c4
	.4byte 0x0000001D
	.4byte str_PKF_Q_2_muj_000140cc
	.4byte 0x0000001E
	.4byte str_PKF_Q_2_muj_000140cc
	.4byte 0x0000001F
	.4byte str_PKF_S_4_muj_000140d4
	.4byte 0x00000027
	.4byte str_PKF_D_2_muj_000140dc
	.4byte 0x00000032
	.4byte str_PKF_A_5_muj_000140e4
	.4byte 0x00000028
	.4byte str_PKF_S_3_muj_000140c4
	.4byte 0x0000002A
	.4byte str_PKF_S_3_muj_000140c4
	.4byte 0x00000038
	.4byte str_PKF_X_2_muj_000140bc
	.4byte 0x00000039
	.4byte str_PKF_X_2_muj_000140bc
	.4byte 0x00000041
	.4byte str_PKF_S_3_muj_000140c4
	.4byte 0x00000045
	.4byte str_PKF_S_3_muj_000140c4
.endobj pose_table_ceil

# .data:0xB28 | 0x38D40 | size: 0x78
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

# .data:0xBA0 | 0x38DB8 | size: 0x7C
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

# .data:0xC1C | 0x38E34 | size: 0x11C
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
	.4byte str_PKF_S_1_muj_00014078
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
	.4byte zero_muj_000140ec
	.4byte str_toge_flush_muj_000140f0
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

# .data:0xD38 | 0x38F50 | size: 0x28
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

# .data:0xD60 | 0x38F78 | size: 0x78
.obj counter_damage_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_D_1_muj_00014088
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

# .data:0xDD8 | 0x38FF0 | size: 0x20C
.obj ceil_fall_ready_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventCeilFall
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAKKUN_MOVE1_muj_00013fb4
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
	.4byte str_PKF_E_4_muj_00013fd4
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
	.4byte str_SFX_ENM_PAKKUN_MOVE2_muj_00013fdc
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
	.4byte str_PKF_E_1_muj_00013ff4
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
	.4byte str_PKF_S_1_muj_00014078
	.4byte 0x00000002
	.4byte 0x00000001
.endobj ceil_fall_ready_event

# .data:0xFE4 | 0x391FC | size: 0x400
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
	.4byte str_SFX_ENM_PAKKUN_MOVE1_muj_00013fb4
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
	.4byte str_PKF_E_2_muj_00013fcc
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
	.4byte str_SFX_ENM_PAKKUN_MOVE2_muj_00013fdc
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
	.4byte str_PKF_E_1_muj_00013ff4
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
	.4byte str_PKF_S_1_muj_00014078
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
	.4byte str_SFX_ENM_PAKKUN_MOVE2_muj_00013fdc
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
	.4byte str_PKF_E_3_muj_000140fc
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
	.4byte str_PKF_S_3_muj_000140c4
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj return_event

# .data:0x13E4 | 0x395FC | size: 0x4DC
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
	.4byte str_SFX_ENM_PAKKUN_MOVE1_muj_00013fb4
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
	.4byte str_PKF_E_2_muj_00013fcc
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_E_4_muj_00013fd4
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
	.4byte str_SFX_ENM_PAKKUN_MOVE2_muj_00013fdc
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
	.4byte str_PKF_E_1_muj_00013ff4
	.4byte 0x0001000A
	.4byte 0x00000096
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_A_1A_muj_00014104
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAKKUN_ATTAC_muj_00014110
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_A_1B_muj_00014090
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKF_A_1C_muj_00014128
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

# .data:0x18C0 | 0x39AD8 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event
