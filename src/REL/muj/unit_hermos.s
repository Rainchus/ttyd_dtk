.include "macros.inc"
.file "unit_hermos.o"

# 0x0000BCBC..0x0000C18C | size: 0x4D0
.text
.balign 4

# .text:0x0 | 0xBCBC | size: 0x21C
.fn eff_all_fire, local
/* 0000BCBC 0000BD80  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 0000BCC0 0000BD84  7C 08 02 A6 */	mflr r0
/* 0000BCC4 0000BD88  90 01 00 74 */	stw r0, 0x74(r1)
/* 0000BCC8 0000BD8C  BF 81 00 60 */	stmw r28, 0x60(r1)
/* 0000BCCC 0000BD90  7C 9E 23 78 */	mr r30, r4
/* 0000BCD0 0000BD94  7C 7D 1B 78 */	mr r29, r3
/* 0000BCD4 0000BD98  83 83 00 18 */	lwz r28, 0x18(r3)
/* 0000BCD8 0000BD9C  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 0000BCDC 0000BDA0  4B FF 4C CD */	bl evtGetValue
/* 0000BCE0 0000BDA4  7C 64 1B 78 */	mr r4, r3
/* 0000BCE4 0000BDA8  7F A3 EB 78 */	mr r3, r29
/* 0000BCE8 0000BDAC  4B FF 4C C1 */	bl BattleTransID
/* 0000BCEC 0000BDB0  80 9C 00 04 */	lwz r4, 0x4(r28)
/* 0000BCF0 0000BDB4  7C 7C 1B 78 */	mr r28, r3
/* 0000BCF4 0000BDB8  7F A3 EB 78 */	mr r3, r29
/* 0000BCF8 0000BDBC  4B FF 4C B1 */	bl evtGetValue
/* 0000BCFC 0000BDC0  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0000BD00 0000BDC4  7C 7F 1B 78 */	mr r31, r3
/* 0000BD04 0000BDC8  38 64 00 00 */	addi r3, r4, _battleWorkPointer@l
/* 0000BD08 0000BDCC  7F 84 E3 78 */	mr r4, r28
/* 0000BD0C 0000BDD0  80 63 00 00 */	lwz r3, 0x0(r3)
/* 0000BD10 0000BDD4  4B FF 4C 99 */	bl BattleGetUnitPtr
/* 0000BD14 0000BDD8  3C 80 00 00 */	lis r4, dat_muj_000142b8@ha
/* 0000BD18 0000BDDC  38 00 00 05 */	li r0, 0x5
/* 0000BD1C 0000BDE0  38 84 00 00 */	addi r4, r4, dat_muj_000142b8@l
/* 0000BD20 0000BDE4  7C 7D 1B 78 */	mr r29, r3
/* 0000BD24 0000BDE8  38 A1 00 1C */	addi r5, r1, 0x1c
/* 0000BD28 0000BDEC  38 84 FF FC */	subi r4, r4, 0x4
/* 0000BD2C 0000BDF0  7C 09 03 A6 */	mtctr r0
.L_0000BD30:
/* 0000BD30 0000BDF4  80 64 00 04 */	lwz r3, 0x4(r4)
/* 0000BD34 0000BDF8  84 04 00 08 */	lwzu r0, 0x8(r4)
/* 0000BD38 0000BDFC  90 65 00 04 */	stw r3, 0x4(r5)
/* 0000BD3C 0000BE00  94 05 00 08 */	stwu r0, 0x8(r5)
/* 0000BD40 0000BE04  42 00 FF F0 */	bdnz .L_0000BD30
/* 0000BD44 0000BE08  2C 1E 00 00 */	cmpwi r30, 0x0
/* 0000BD48 0000BE0C  41 82 00 70 */	beq .L_0000BDB8
/* 0000BD4C 0000BE10  3C 60 00 00 */	lis r3, zero_muj_0001430c@ha
/* 0000BD50 0000BE14  3C 80 00 00 */	lis r4, float_neg1000_muj_00014310@ha
/* 0000BD54 0000BE18  38 A3 00 00 */	addi r5, r3, zero_muj_0001430c@l
/* 0000BD58 0000BE1C  C0 44 00 00 */	lfs f2, float_neg1000_muj_00014310@l(r4)
/* 0000BD5C 0000BE20  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 0000BD60 0000BE24  3C 60 00 00 */	lis r3, float_1_muj_00014314@ha
/* 0000BD64 0000BE28  C0 83 00 00 */	lfs f4, float_1_muj_00014314@l(r3)
/* 0000BD68 0000BE2C  38 60 00 06 */	li r3, 0x6
/* 0000BD6C 0000BE30  FC 60 08 90 */	fmr f3, f1
/* 0000BD70 0000BE34  38 80 00 78 */	li r4, 0x78
/* 0000BD74 0000BE38  4B FF 4C 35 */	bl effFireEntry
/* 0000BD78 0000BE3C  3C C0 00 00 */	lis r6, eff2@ha
/* 0000BD7C 0000BE40  3C A0 00 00 */	lis r5, float_2_muj_00014318@ha
/* 0000BD80 0000BE44  57 E0 10 3A */	slwi r0, r31, 2
/* 0000BD84 0000BE48  C0 05 00 00 */	lfs f0, float_2_muj_00014318@l(r5)
/* 0000BD88 0000BE4C  38 C6 00 00 */	addi r6, r6, eff2@l
/* 0000BD8C 0000BE50  38 81 00 20 */	addi r4, r1, 0x20
/* 0000BD90 0000BE54  7C 66 01 2E */	stwx r3, r6, r0
/* 0000BD94 0000BE58  7C 66 00 2E */	lwzx r3, r6, r0
/* 0000BD98 0000BE5C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 0000BD9C 0000BE60  D0 03 00 78 */	stfs f0, 0x78(r3)
/* 0000BDA0 0000BE64  7C 66 00 2E */	lwzx r3, r6, r0
/* 0000BDA4 0000BE68  C0 3D 01 14 */	lfs f1, 0x114(r29)
/* 0000BDA8 0000BE6C  7C 04 04 2E */	lfsx f0, r4, r0
/* 0000BDAC 0000BE70  80 63 00 0C */	lwz r3, 0xc(r3)
/* 0000BDB0 0000BE74  EC 01 00 32 */	fmuls f0, f1, f0
/* 0000BDB4 0000BE78  D0 03 00 7C */	stfs f0, 0x7c(r3)
.L_0000BDB8:
/* 0000BDB8 0000BE7C  3C 60 00 00 */	lis r3, eff2@ha
/* 0000BDBC 0000BE80  57 FE 10 3A */	slwi r30, r31, 2
/* 0000BDC0 0000BE84  38 63 00 00 */	addi r3, r3, eff2@l
/* 0000BDC4 0000BE88  7C 63 F0 2E */	lwzx r3, r3, r30
/* 0000BDC8 0000BE8C  83 83 00 0C */	lwz r28, 0xc(r3)
/* 0000BDCC 0000BE90  28 1C 00 00 */	cmplwi r28, 0x0
/* 0000BDD0 0000BE94  41 82 00 F0 */	beq .L_0000BEC0
/* 0000BDD4 0000BE98  7F A3 EB 78 */	mr r3, r29
/* 0000BDD8 0000BE9C  38 81 00 10 */	addi r4, r1, 0x10
/* 0000BDDC 0000BEA0  38 A1 00 0C */	addi r5, r1, 0xc
/* 0000BDE0 0000BEA4  38 C1 00 08 */	addi r6, r1, 0x8
/* 0000BDE4 0000BEA8  4B FF 4B C5 */	bl BtlUnit_GetPos
/* 0000BDE8 0000BEAC  88 7D 01 89 */	lbz r3, 0x189(r29)
/* 0000BDEC 0000BEB0  3C A0 43 30 */	lis r5, 0x4330
/* 0000BDF0 0000BEB4  3C 80 00 00 */	lis r4, double_to_int_muj_00014328@ha
/* 0000BDF4 0000BEB8  38 1F 00 01 */	addi r0, r31, 0x1
/* 0000BDF8 0000BEBC  7C 63 07 74 */	extsb r3, r3
/* 0000BDFC 0000BEC0  3C E0 00 00 */	lis r7, float_24_muj_0001431c@ha
/* 0000BE00 0000BEC4  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 0000BE04 0000BEC8  38 C4 00 00 */	addi r6, r4, double_to_int_muj_00014328@l
/* 0000BE08 0000BECC  90 61 00 4C */	stw r3, 0x4c(r1)
/* 0000BE0C 0000BED0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 0000BE10 0000BED4  3C 60 00 00 */	lis r3, float_15_muj_00014320@ha
/* 0000BE14 0000BED8  C8 A6 00 00 */	lfd f5, 0x0(r6)
/* 0000BE18 0000BEDC  90 A1 00 48 */	stw r5, 0x48(r1)
/* 0000BE1C 0000BEE0  38 83 00 00 */	addi r4, r3, float_15_muj_00014320@l
/* 0000BE20 0000BEE4  3C 60 00 00 */	lis r3, vec3_muj_000142e0@ha
/* 0000BE24 0000BEE8  C0 87 00 00 */	lfs f4, float_24_muj_0001431c@l(r7)
/* 0000BE28 0000BEEC  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 0000BE2C 0000BEF0  39 03 00 00 */	addi r8, r3, vec3_muj_000142e0@l
/* 0000BE30 0000BEF4  90 01 00 54 */	stw r0, 0x54(r1)
/* 0000BE34 0000BEF8  3C 60 00 00 */	lis r3, float_2_muj_00014318@ha
/* 0000BE38 0000BEFC  EC 60 28 28 */	fsubs f3, f0, f5
/* 0000BE3C 0000BF00  C0 04 00 00 */	lfs f0, 0x0(r4)
/* 0000BE40 0000BF04  90 A1 00 50 */	stw r5, 0x50(r1)
/* 0000BE44 0000BF08  38 C3 00 00 */	addi r6, r3, float_2_muj_00014318@l
/* 0000BE48 0000BF0C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 0000BE4C 0000BF10  38 A1 00 20 */	addi r5, r1, 0x20
/* 0000BE50 0000BF14  80 E8 00 00 */	lwz r7, 0x0(r8)
/* 0000BE54 0000BF18  EC 01 00 28 */	fsubs f0, f1, f0
/* 0000BE58 0000BF1C  80 08 00 04 */	lwz r0, 0x4(r8)
/* 0000BE5C 0000BF20  EC 84 00 F2 */	fmuls f4, f4, f3
/* 0000BE60 0000BF24  C8 41 00 50 */	lfd f2, 0x50(r1)
/* 0000BE64 0000BF28  3C 60 00 00 */	lis r3, float_10_muj_00014324@ha
/* 0000BE68 0000BF2C  80 88 00 08 */	lwz r4, 0x8(r8)
/* 0000BE6C 0000BF30  EC 62 28 28 */	fsubs f3, f2, f5
/* 0000BE70 0000BF34  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 0000BE74 0000BF38  7C 25 F4 2E */	lfsx f1, r5, r30
/* 0000BE78 0000BF3C  90 E1 00 14 */	stw r7, 0x14(r1)
/* 0000BE7C 0000BF40  EC 64 10 FA */	fmadds f3, f4, f3, f2
/* 0000BE80 0000BF44  C0 46 00 00 */	lfs f2, 0x0(r6)
/* 0000BE84 0000BF48  90 01 00 18 */	stw r0, 0x18(r1)
/* 0000BE88 0000BF4C  EC 42 00 7C */	fnmsubs f2, f2, f1, f0
/* 0000BE8C 0000BF50  C0 21 00 08 */	lfs f1, 0x8(r1)
/* 0000BE90 0000BF54  C0 03 00 00 */	lfs f0, float_10_muj_00014324@l(r3)
/* 0000BE94 0000BF58  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 0000BE98 0000BF5C  EC 01 00 28 */	fsubs f0, f1, f0
/* 0000BE9C 0000BF60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0000BEA0 0000BF64  90 81 00 1C */	stw r4, 0x1c(r1)
/* 0000BEA4 0000BF68  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 0000BEA8 0000BF6C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 0000BEAC 0000BF70  80 61 00 18 */	lwz r3, 0x18(r1)
/* 0000BEB0 0000BF74  90 1C 00 04 */	stw r0, 0x4(r28)
/* 0000BEB4 0000BF78  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 0000BEB8 0000BF7C  90 7C 00 08 */	stw r3, 0x8(r28)
/* 0000BEBC 0000BF80  90 1C 00 0C */	stw r0, 0xc(r28)
.L_0000BEC0:
/* 0000BEC0 0000BF84  BB 81 00 60 */	lmw r28, 0x60(r1)
/* 0000BEC4 0000BF88  38 60 00 00 */	li r3, 0x0
/* 0000BEC8 0000BF8C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 0000BECC 0000BF90  7C 08 03 A6 */	mtlr r0
/* 0000BED0 0000BF94  38 21 00 70 */	addi r1, r1, 0x70
/* 0000BED4 0000BF98  4E 80 00 20 */	blr
.endfn eff_all_fire

# .text:0x21C | 0xBED8 | size: 0x1A0
.fn eff_fire, local
/* 0000BED8 0000BF9C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 0000BEDC 0000BFA0  7C 08 02 A6 */	mflr r0
/* 0000BEE0 0000BFA4  90 01 00 34 */	stw r0, 0x34(r1)
/* 0000BEE4 0000BFA8  BF A1 00 24 */	stmw r29, 0x24(r1)
/* 0000BEE8 0000BFAC  7C 9D 23 78 */	mr r29, r4
/* 0000BEEC 0000BFB0  7C 7E 1B 78 */	mr r30, r3
/* 0000BEF0 0000BFB4  80 83 00 18 */	lwz r4, 0x18(r3)
/* 0000BEF4 0000BFB8  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000BEF8 0000BFBC  4B FF 4A B1 */	bl evtGetValue
/* 0000BEFC 0000BFC0  7C 64 1B 78 */	mr r4, r3
/* 0000BF00 0000BFC4  7F C3 F3 78 */	mr r3, r30
/* 0000BF04 0000BFC8  4B FF 4A A5 */	bl BattleTransID
/* 0000BF08 0000BFCC  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0000BF0C 0000BFD0  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 0000BF10 0000BFD4  7C 64 1B 78 */	mr r4, r3
/* 0000BF14 0000BFD8  80 65 00 00 */	lwz r3, 0x0(r5)
/* 0000BF18 0000BFDC  4B FF 4A 91 */	bl BattleGetUnitPtr
/* 0000BF1C 0000BFE0  7C 7F 1B 78 */	mr r31, r3
/* 0000BF20 0000BFE4  38 80 00 02 */	li r4, 0x2
/* 0000BF24 0000BFE8  4B FF 4A 85 */	bl BtlUnit_GetPartsPtr
/* 0000BF28 0000BFEC  2C 1D 00 00 */	cmpwi r29, 0x0
/* 0000BF2C 0000BFF0  7C 7E 1B 78 */	mr r30, r3
/* 0000BF30 0000BFF4  41 82 00 54 */	beq .L_0000BF84
/* 0000BF34 0000BFF8  3C 60 00 00 */	lis r3, zero_muj_0001430c@ha
/* 0000BF38 0000BFFC  3C 80 00 00 */	lis r4, float_neg1000_muj_00014310@ha
/* 0000BF3C 0000C000  38 A3 00 00 */	addi r5, r3, zero_muj_0001430c@l
/* 0000BF40 0000C004  C0 44 00 00 */	lfs f2, float_neg1000_muj_00014310@l(r4)
/* 0000BF44 0000C008  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 0000BF48 0000C00C  3C 60 00 00 */	lis r3, float_1_muj_00014314@ha
/* 0000BF4C 0000C010  C0 83 00 00 */	lfs f4, float_1_muj_00014314@l(r3)
/* 0000BF50 0000C014  38 60 00 06 */	li r3, 0x6
/* 0000BF54 0000C018  FC 60 08 90 */	fmr f3, f1
/* 0000BF58 0000C01C  38 80 00 6A */	li r4, 0x6a
/* 0000BF5C 0000C020  4B FF 4A 4D */	bl effFireEntry
/* 0000BF60 0000C024  3C A0 00 00 */	lis r5, eff@ha
/* 0000BF64 0000C028  94 65 00 00 */	stwu r3, eff@l(r5)
/* 0000BF68 0000C02C  3C 80 00 00 */	lis r4, zero_muj_0001430c@ha
/* 0000BF6C 0000C030  C0 04 00 00 */	lfs f0, zero_muj_0001430c@l(r4)
/* 0000BF70 0000C034  80 63 00 0C */	lwz r3, 0xc(r3)
/* 0000BF74 0000C038  D0 03 00 78 */	stfs f0, 0x78(r3)
/* 0000BF78 0000C03C  80 65 00 00 */	lwz r3, 0x0(r5)
/* 0000BF7C 0000C040  80 63 00 0C */	lwz r3, 0xc(r3)
/* 0000BF80 0000C044  D0 03 00 7C */	stfs f0, 0x7c(r3)
.L_0000BF84:
/* 0000BF84 0000C048  3C 60 00 00 */	lis r3, eff@ha
/* 0000BF88 0000C04C  38 63 00 00 */	addi r3, r3, eff@l
/* 0000BF8C 0000C050  80 63 00 00 */	lwz r3, 0x0(r3)
/* 0000BF90 0000C054  83 A3 00 0C */	lwz r29, 0xc(r3)
/* 0000BF94 0000C058  28 1D 00 00 */	cmplwi r29, 0x0
/* 0000BF98 0000C05C  41 82 00 C8 */	beq .L_0000C060
/* 0000BF9C 0000C060  7F C3 F3 78 */	mr r3, r30
/* 0000BFA0 0000C064  38 81 00 10 */	addi r4, r1, 0x10
/* 0000BFA4 0000C068  38 A1 00 0C */	addi r5, r1, 0xc
/* 0000BFA8 0000C06C  38 C1 00 08 */	addi r6, r1, 0x8
/* 0000BFAC 0000C070  4B FF 49 FD */	bl BtlUnit_GetPartsPos
/* 0000BFB0 0000C074  3C 80 00 00 */	lis r4, vec3_muj_0001426c@ha
/* 0000BFB4 0000C078  3C 60 00 00 */	lis r3, float_0p1_muj_00014330@ha
/* 0000BFB8 0000C07C  38 A4 00 00 */	addi r5, r4, vec3_muj_0001426c@l
/* 0000BFBC 0000C080  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 0000BFC0 0000C084  80 05 00 00 */	lwz r0, 0x0(r5)
/* 0000BFC4 0000C088  80 85 00 04 */	lwz r4, 0x4(r5)
/* 0000BFC8 0000C08C  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000BFCC 0000C090  80 05 00 08 */	lwz r0, 0x8(r5)
/* 0000BFD0 0000C094  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 0000BFD4 0000C098  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 0000BFD8 0000C09C  90 81 00 18 */	stw r4, 0x18(r1)
/* 0000BFDC 0000C0A0  C0 01 00 08 */	lfs f0, 0x8(r1)
/* 0000BFE0 0000C0A4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 0000BFE4 0000C0A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0000BFE8 0000C0AC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 0000BFEC 0000C0B0  C0 43 00 00 */	lfs f2, float_0p1_muj_00014330@l(r3)
/* 0000BFF0 0000C0B4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 0000BFF4 0000C0B8  80 61 00 18 */	lwz r3, 0x18(r1)
/* 0000BFF8 0000C0BC  90 1D 00 04 */	stw r0, 0x4(r29)
/* 0000BFFC 0000C0C0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 0000C000 0000C0C4  90 7D 00 08 */	stw r3, 0x8(r29)
/* 0000C004 0000C0C8  90 1D 00 0C */	stw r0, 0xc(r29)
/* 0000C008 0000C0CC  C0 3F 01 14 */	lfs f1, 0x114(r31)
/* 0000C00C 0000C0D0  C0 1D 00 78 */	lfs f0, 0x78(r29)
/* 0000C010 0000C0D4  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 0000C014 0000C0D8  D0 1D 00 78 */	stfs f0, 0x78(r29)
/* 0000C018 0000C0DC  C0 1D 00 78 */	lfs f0, 0x78(r29)
/* 0000C01C 0000C0E0  C0 3F 01 14 */	lfs f1, 0x114(r31)
/* 0000C020 0000C0E4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 0000C024 0000C0E8  4C 41 13 82 */	cror eq, gt, eq
/* 0000C028 0000C0EC  40 82 00 08 */	bne .L_0000C030
/* 0000C02C 0000C0F0  D0 3D 00 78 */	stfs f1, 0x78(r29)
.L_0000C030:
/* 0000C030 0000C0F4  3C 60 00 00 */	lis r3, float_0p1_muj_00014330@ha
/* 0000C034 0000C0F8  C0 3F 01 14 */	lfs f1, 0x114(r31)
/* 0000C038 0000C0FC  C0 1D 00 7C */	lfs f0, 0x7c(r29)
/* 0000C03C 0000C100  C0 43 00 00 */	lfs f2, float_0p1_muj_00014330@l(r3)
/* 0000C040 0000C104  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 0000C044 0000C108  D0 1D 00 7C */	stfs f0, 0x7c(r29)
/* 0000C048 0000C10C  C0 1D 00 7C */	lfs f0, 0x7c(r29)
/* 0000C04C 0000C110  C0 3F 01 14 */	lfs f1, 0x114(r31)
/* 0000C050 0000C114  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 0000C054 0000C118  4C 41 13 82 */	cror eq, gt, eq
/* 0000C058 0000C11C  40 82 00 08 */	bne .L_0000C060
/* 0000C05C 0000C120  D0 3D 00 7C */	stfs f1, 0x7c(r29)
.L_0000C060:
/* 0000C060 0000C124  BB A1 00 24 */	lmw r29, 0x24(r1)
/* 0000C064 0000C128  38 60 00 00 */	li r3, 0x0
/* 0000C068 0000C12C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 0000C06C 0000C130  7C 08 03 A6 */	mtlr r0
/* 0000C070 0000C134  38 21 00 30 */	addi r1, r1, 0x30
/* 0000C074 0000C138  4E 80 00 20 */	blr
.endfn eff_fire

# .text:0x3BC | 0xC078 | size: 0x114
.fn bubble_copy_status, local
/* 0000C078 0000C13C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 0000C07C 0000C140  7C 08 02 A6 */	mflr r0
/* 0000C080 0000C144  90 01 00 34 */	stw r0, 0x34(r1)
/* 0000C084 0000C148  BF A1 00 24 */	stmw r29, 0x24(r1)
/* 0000C088 0000C14C  7C 7D 1B 78 */	mr r29, r3
/* 0000C08C 0000C150  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 0000C090 0000C154  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 0000C094 0000C158  4B FF 49 15 */	bl evtGetValue
/* 0000C098 0000C15C  7C 64 1B 78 */	mr r4, r3
/* 0000C09C 0000C160  7F A3 EB 78 */	mr r3, r29
/* 0000C0A0 0000C164  4B FF 49 09 */	bl BattleTransID
/* 0000C0A4 0000C168  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 0000C0A8 0000C16C  7C 7F 1B 78 */	mr r31, r3
/* 0000C0AC 0000C170  7F A3 EB 78 */	mr r3, r29
/* 0000C0B0 0000C174  4B FF 48 F9 */	bl evtGetValue
/* 0000C0B4 0000C178  7C 64 1B 78 */	mr r4, r3
/* 0000C0B8 0000C17C  7F A3 EB 78 */	mr r3, r29
/* 0000C0BC 0000C180  4B FF 48 ED */	bl BattleTransID
/* 0000C0C0 0000C184  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0000C0C4 0000C188  7C 7E 1B 78 */	mr r30, r3
/* 0000C0C8 0000C18C  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 0000C0CC 0000C190  80 05 00 00 */	lwz r0, 0x0(r5)
/* 0000C0D0 0000C194  7F E4 FB 78 */	mr r4, r31
/* 0000C0D4 0000C198  7C 1D 03 78 */	mr r29, r0
/* 0000C0D8 0000C19C  7C 03 03 78 */	mr r3, r0
/* 0000C0DC 0000C1A0  4B FF 48 CD */	bl BattleGetUnitPtr
/* 0000C0E0 0000C1A4  7C 7F 1B 78 */	mr r31, r3
/* 0000C0E4 0000C1A8  7F A3 EB 78 */	mr r3, r29
/* 0000C0E8 0000C1AC  7F C4 F3 78 */	mr r4, r30
/* 0000C0EC 0000C1B0  4B FF 48 BD */	bl BattleGetUnitPtr
/* 0000C0F0 0000C1B4  A8 1F 01 0C */	lha r0, 0x10c(r31)
/* 0000C0F4 0000C1B8  B0 03 01 0C */	sth r0, 0x10c(r3)
/* 0000C0F8 0000C1BC  A8 03 01 0C */	lha r0, 0x10c(r3)
/* 0000C0FC 0000C1C0  A8 83 01 08 */	lha r4, 0x108(r3)
/* 0000C100 0000C1C4  7C 00 20 00 */	cmpw r0, r4
/* 0000C104 0000C1C8  40 81 00 08 */	ble .L_0000C10C
/* 0000C108 0000C1CC  B0 83 01 0C */	sth r4, 0x10c(r3)
.L_0000C10C:
/* 0000C10C 0000C1D0  88 BF 01 23 */	lbz r5, 0x123(r31)
/* 0000C110 0000C1D4  3C 00 43 30 */	lis r0, 0x4330
/* 0000C114 0000C1D8  3C 80 00 00 */	lis r4, double_to_int_muj_00014328@ha
/* 0000C118 0000C1DC  90 01 00 08 */	stw r0, 0x8(r1)
/* 0000C11C 0000C1E0  C8 44 00 00 */	lfd f2, double_to_int_muj_00014328@l(r4)
/* 0000C120 0000C1E4  98 A3 01 23 */	stb r5, 0x123(r3)
/* 0000C124 0000C1E8  88 9F 01 24 */	lbz r4, 0x124(r31)
/* 0000C128 0000C1EC  90 01 00 10 */	stw r0, 0x10(r1)
/* 0000C12C 0000C1F0  98 83 01 24 */	stb r4, 0x124(r3)
/* 0000C130 0000C1F4  A8 03 01 0C */	lha r0, 0x10c(r3)
/* 0000C134 0000C1F8  90 03 02 08 */	stw r0, 0x208(r3)
/* 0000C138 0000C1FC  A8 03 01 0C */	lha r0, 0x10c(r3)
/* 0000C13C 0000C200  90 03 02 0C */	stw r0, 0x20c(r3)
/* 0000C140 0000C204  A8 83 01 0C */	lha r4, 0x10c(r3)
/* 0000C144 0000C208  A8 03 01 08 */	lha r0, 0x108(r3)
/* 0000C148 0000C20C  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 0000C14C 0000C210  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 0000C150 0000C214  90 81 00 0C */	stw r4, 0xc(r1)
/* 0000C154 0000C218  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000C158 0000C21C  C8 21 00 08 */	lfd f1, 0x8(r1)
/* 0000C15C 0000C220  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 0000C160 0000C224  EC 21 10 28 */	fsubs f1, f1, f2
/* 0000C164 0000C228  EC 00 10 28 */	fsubs f0, f0, f2
/* 0000C168 0000C22C  EC 01 00 24 */	fdivs f0, f1, f0
/* 0000C16C 0000C230  D0 03 02 14 */	stfs f0, 0x214(r3)
/* 0000C170 0000C234  D0 03 02 10 */	stfs f0, 0x210(r3)
/* 0000C174 0000C238  38 60 00 02 */	li r3, 0x2
/* 0000C178 0000C23C  BB A1 00 24 */	lmw r29, 0x24(r1)
/* 0000C17C 0000C240  80 01 00 34 */	lwz r0, 0x34(r1)
/* 0000C180 0000C244  7C 08 03 A6 */	mtlr r0
/* 0000C184 0000C248  38 21 00 30 */	addi r1, r1, 0x30
/* 0000C188 0000C24C  4E 80 00 20 */	blr
.endfn bubble_copy_status

# 0x000064A0..0x00006688 | size: 0x1E8
.rodata
.balign 8

# .rodata:0x0 | 0x64A0 | size: 0xE
.obj str_btl_un_hermos_muj_00014150, local
	.string "btl_un_hermos"
.endobj str_btl_un_hermos_muj_00014150

# .rodata:0xE | 0x64AE | size: 0x2
.obj gap_03_000064AE_rodata, global
.hidden gap_03_000064AE_rodata
	.2byte 0x0000
.endobj gap_03_000064AE_rodata

# .rodata:0x10 | 0x64B0 | size: 0x18
.obj str_SFX_ENM_BUBBLE_DAMAG_muj_00014160, local
	.string "SFX_ENM_BUBBLE_DAMAGED1"
.endobj str_SFX_ENM_BUBBLE_DAMAG_muj_00014160

# .rodata:0x28 | 0x64C8 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_muj_00014178, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_muj_00014178

# .rodata:0x3D | 0x64DD | size: 0x3
.obj gap_03_000064DD_rodata, global
.hidden gap_03_000064DD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000064DD_rodata

# .rodata:0x40 | 0x64E0 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_muj_00014190, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_muj_00014190

# .rodata:0x54 | 0x64F4 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_muj_000141a4, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_muj_000141a4

# .rodata:0x6D | 0x650D | size: 0x3
.obj gap_03_0000650D_rodata, global
.hidden gap_03_0000650D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000650D_rodata

# .rodata:0x70 | 0x6510 | size: 0x4
.obj str_N_1_muj_000141c0, local
	.string "N_1"
.endobj str_N_1_muj_000141c0

# .rodata:0x74 | 0x6514 | size: 0x4
.obj str_Y_1_muj_000141c4, local
	.string "Y_1"
.endobj str_Y_1_muj_000141c4

# .rodata:0x78 | 0x6518 | size: 0x4
.obj str_K_1_muj_000141c8, local
	.string "K_1"
.endobj str_K_1_muj_000141c8

# .rodata:0x7C | 0x651C | size: 0x4
.obj str_X_1_muj_000141cc, local
	.string "X_1"
.endobj str_X_1_muj_000141cc

# .rodata:0x80 | 0x6520 | size: 0x4
.obj str_S_1_muj_000141d0, local
	.string "S_1"
.endobj str_S_1_muj_000141d0

# .rodata:0x84 | 0x6524 | size: 0x4
.obj str_Q_1_muj_000141d4, local
	.string "Q_1"
.endobj str_Q_1_muj_000141d4

# .rodata:0x88 | 0x6528 | size: 0x5
.obj str_A_2B_muj_000141d8, local
	.string "A_2B"
.endobj str_A_2B_muj_000141d8

# .rodata:0x8D | 0x652D | size: 0x3
.obj gap_03_0000652D_rodata, global
.hidden gap_03_0000652D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000652D_rodata

# .rodata:0x90 | 0x6530 | size: 0x4
.obj str_D_1_muj_000141e0, local
	.string "D_1"
.endobj str_D_1_muj_000141e0

# .rodata:0x94 | 0x6534 | size: 0x4
.obj str_A_1_muj_000141e4, local
	.string "A_1"
.endobj str_A_1_muj_000141e4

# .rodata:0x98 | 0x6538 | size: 0x4
.obj str_R_1_muj_000141e8, local
	.string "R_1"
.endobj str_R_1_muj_000141e8

# .rodata:0x9C | 0x653C | size: 0x4
.obj str_W_1_muj_000141ec, local
	.string "W_1"
.endobj str_W_1_muj_000141ec

# .rodata:0xA0 | 0x6540 | size: 0x4
.obj str_T_1_muj_000141f0, local
	.string "T_1"
.endobj str_T_1_muj_000141f0

# .rodata:0xA4 | 0x6544 | size: 0x8
.obj str_c_elmos_muj_000141f4, local
	.string "c_elmos"
.endobj str_c_elmos_muj_000141f4

# .rodata:0xAC | 0x654C | size: 0x15
.obj str_SFX_ENM_BUBBLE_FIRE1_muj_000141fc, local
	.string "SFX_ENM_BUBBLE_FIRE1"
.endobj str_SFX_ENM_BUBBLE_FIRE1_muj_000141fc

# .rodata:0xC1 | 0x6561 | size: 0x3
.obj gap_03_00006561_rodata, global
.hidden gap_03_00006561_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006561_rodata

# .rodata:0xC4 | 0x6564 | size: 0x16
.obj str_SFX_ENM_BUBBLE_SPLIT_muj_00014214, local
	.string "SFX_ENM_BUBBLE_SPLIT1"
.endobj str_SFX_ENM_BUBBLE_SPLIT_muj_00014214

# .rodata:0xDA | 0x657A | size: 0x2
.obj gap_03_0000657A_rodata, global
.hidden gap_03_0000657A_rodata
	.2byte 0x0000
.endobj gap_03_0000657A_rodata

# .rodata:0xDC | 0x657C | size: 0x15
.obj str_SFX_ENM_BUBBLE_MOVE1_muj_0001422c, local
	.string "SFX_ENM_BUBBLE_MOVE1"
.endobj str_SFX_ENM_BUBBLE_MOVE1_muj_0001422c

# .rodata:0xF1 | 0x6591 | size: 0x3
.obj gap_03_00006591_rodata, global
.hidden gap_03_00006591_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006591_rodata

# .rodata:0xF4 | 0x6594 | size: 0x5
.obj str_A_1A_muj_00014244, local
	.string "A_1A"
.endobj str_A_1A_muj_00014244

# .rodata:0xF9 | 0x6599 | size: 0x3
.obj gap_03_00006599_rodata, global
.hidden gap_03_00006599_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006599_rodata

# .rodata:0xFC | 0x659C | size: 0x5
.obj str_A_1B_muj_0001424c, local
	.string "A_1B"
.endobj str_A_1B_muj_0001424c

# .rodata:0x101 | 0x65A1 | size: 0x3
.obj gap_03_000065A1_rodata, global
.hidden gap_03_000065A1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000065A1_rodata

# .rodata:0x104 | 0x65A4 | size: 0x15
.obj str_SFX_ENM_BUBBLE_MOVE2_muj_00014254, local
	.string "SFX_ENM_BUBBLE_MOVE2"
.endobj str_SFX_ENM_BUBBLE_MOVE2_muj_00014254

# .rodata:0x119 | 0x65B9 | size: 0x3
.obj gap_03_000065B9_rodata, global
.hidden gap_03_000065B9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000065B9_rodata

# .rodata:0x11C | 0x65BC | size: 0xC
.obj vec3_muj_0001426c, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj vec3_muj_0001426c

# .rodata:0x128 | 0x65C8 | size: 0x17
.obj str_SFX_ENM_BUBBLE_ATTAC_muj_00014278, local
	.string "SFX_ENM_BUBBLE_ATTACK2"
.endobj str_SFX_ENM_BUBBLE_ATTAC_muj_00014278

# .rodata:0x13F | 0x65DF | size: 0x1
.obj gap_03_000065DF_rodata, global
.hidden gap_03_000065DF_rodata
	.byte 0x00
.endobj gap_03_000065DF_rodata

# .rodata:0x140 | 0x65E0 | size: 0x17
.obj str_SFX_ENM_BUBBLE_ATTAC_muj_00014290, local
	.string "SFX_ENM_BUBBLE_ATTACK3"
.endobj str_SFX_ENM_BUBBLE_ATTAC_muj_00014290

# .rodata:0x157 | 0x65F7 | size: 0x1
.obj gap_03_000065F7_rodata, global
.hidden gap_03_000065F7_rodata
	.byte 0x00
.endobj gap_03_000065F7_rodata

# .rodata:0x158 | 0x65F8 | size: 0x1
.obj zero_muj_000142a8, local
	.byte 0x00
.endobj zero_muj_000142a8

# .rodata:0x159 | 0x65F9 | size: 0x3
.obj gap_03_000065F9_rodata, global
.hidden gap_03_000065F9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000065F9_rodata

# .rodata:0x15C | 0x65FC | size: 0xC
.obj str_kemuri_test_muj_000142ac, local
	.string "kemuri_test"
.endobj str_kemuri_test_muj_000142ac

# .rodata:0x168 | 0x6608 | size: 0x28
.obj dat_muj_000142b8, local
	.4byte 0x3F800000
	.4byte 0x3FA00000
	.4byte 0x3FC00000
	.4byte 0x3FE00000
	.4byte 0x40000000
	.4byte 0x40100000
	.4byte 0x40000000
	.4byte 0x3FE00000
	.4byte 0x3FC00000
	.4byte 0x3FA00000
.endobj dat_muj_000142b8

# .rodata:0x190 | 0x6630 | size: 0xC
.obj vec3_muj_000142e0, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj vec3_muj_000142e0

# .rodata:0x19C | 0x663C | size: 0x17
.obj str_SFX_ENM_BUBBLE_ATTAC_muj_000142ec, local
	.string "SFX_ENM_BUBBLE_ATTACK4"
.endobj str_SFX_ENM_BUBBLE_ATTAC_muj_000142ec

# .rodata:0x1B3 | 0x6653 | size: 0x1
.obj gap_03_00006653_rodata, global
.hidden gap_03_00006653_rodata
	.byte 0x00
.endobj gap_03_00006653_rodata

# .rodata:0x1B4 | 0x6654 | size: 0x5
.obj str_A_2A_muj_00014304, local
	.string "A_2A"
.endobj str_A_2A_muj_00014304
	.byte 0x00, 0x00, 0x00

# .rodata:0x1BC | 0x665C | size: 0x4
.obj zero_muj_0001430c, local
	.float 0
.endobj zero_muj_0001430c

# .rodata:0x1C0 | 0x6660 | size: 0x4
.obj float_neg1000_muj_00014310, local
	.float -1000
.endobj float_neg1000_muj_00014310

# .rodata:0x1C4 | 0x6664 | size: 0x4
.obj float_1_muj_00014314, local
	.float 1
.endobj float_1_muj_00014314

# .rodata:0x1C8 | 0x6668 | size: 0x4
.obj float_2_muj_00014318, local
	.float 2
.endobj float_2_muj_00014318

# .rodata:0x1CC | 0x666C | size: 0x4
.obj float_24_muj_0001431c, local
	.float 24
.endobj float_24_muj_0001431c

# .rodata:0x1D0 | 0x6670 | size: 0x4
.obj float_15_muj_00014320, local
	.float 15
.endobj float_15_muj_00014320

# .rodata:0x1D4 | 0x6674 | size: 0x4
.obj float_10_muj_00014324, local
	.float 10
.endobj float_10_muj_00014324

# .rodata:0x1D8 | 0x6678 | size: 0x8
.obj double_to_int_muj_00014328, local
	.double 4503601774854144
.endobj double_to_int_muj_00014328

# .rodata:0x1E0 | 0x6680 | size: 0x4
.obj float_0p1_muj_00014330, local
	.float 0.1
.endobj float_0p1_muj_00014330

# .rodata:0x1E4 | 0x6684 | size: 0x4
.obj gap_03_00006684_rodata, global
.hidden gap_03_00006684_rodata
	.4byte 0x00000000
.endobj gap_03_00006684_rodata

# 0x00039AF0..0x0003B698 | size: 0x1BA8
.data
.balign 8

# .data:0x0 | 0x39AF0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x39AF8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x39AFC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x39B00 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x39B04 | size: 0x4
.obj gap_04_00039B04_data, global
.hidden gap_04_00039B04_data
	.4byte 0x00000000
.endobj gap_04_00039B04_data

# .data:0x18 | 0x39B08 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x39B10 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x39B14 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x39B18 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x39B20 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x39B24 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x39B28 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x39B2C | size: 0x4
.obj gap_04_00039B2C_data, global
.hidden gap_04_00039B2C_data
	.4byte 0x00000000
.endobj gap_04_00039B2C_data

# .data:0x40 | 0x39B30 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x39B38 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x39B3C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x39B40 | size: 0xC4
.obj unit_hermos_19_data_39B40, global
	.4byte 0x00000054
	.4byte str_btl_un_hermos_muj_00014150
	.4byte 0x00080000
	.4byte 0x01011400
	.4byte 0x03460132
	.4byte 0x270F001A
	.4byte 0x00240008
	.4byte 0x00180000
	.4byte 0x00000000
	.4byte 0x41900000
	.4byte 0x00000000
	.4byte 0x0000FFFD
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
	.4byte 0x41500000
	.4byte 0x41BB3333
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41900000
	.4byte 0x00000000
	.4byte 0x41D00000
	.4byte 0x42100000
	.4byte 0x00000002
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_ENM_BUBBLE_DAMAG_muj_00014160
	.4byte str_SFX_BTL_DAMAGE_FIRE1_muj_00014178
	.4byte str_SFX_BTL_DAMAGE_ICE1_muj_00014190
	.4byte str_SFX_BTL_DAMAGE_BIRIB_muj_000141a4
	.4byte 0x00000004
	.4byte regist
	.4byte 0x02000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_hermos_19_data_39B40

# .data:0x114 | 0x39C04 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x39C09 | size: 0x3
.obj gap_04_00039C09_data, global
.hidden gap_04_00039C09_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00039C09_data

# .data:0x11C | 0x39C0C | size: 0x5
.obj defence_attr, local
	.4byte 0x00030101
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x39C11 | size: 0x3
.obj gap_04_00039C11_data, global
.hidden gap_04_00039C11_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00039C11_data

# .data:0x124 | 0x39C14 | size: 0x16
.obj regist, local
	.4byte 0x325A6964
	.4byte 0x4B640032
	.4byte 0x645A645A
	.4byte 0x645F4B32
	.4byte 0x5A644B64
	.2byte 0x645F
.endobj regist

# .data:0x13A | 0x39C2A | size: 0x2
.obj gap_04_00039C2A_data, global
.hidden gap_04_00039C2A_data
	.2byte 0x0000
.endobj gap_04_00039C2A_data

# .data:0x13C | 0x39C2C | size: 0x90
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_N_1_muj_000141c0
	.4byte 0x00000002
	.4byte str_Y_1_muj_000141c4
	.4byte 0x00000009
	.4byte str_Y_1_muj_000141c4
	.4byte 0x00000005
	.4byte str_K_1_muj_000141c8
	.4byte 0x00000004
	.4byte str_X_1_muj_000141cc
	.4byte 0x00000003
	.4byte str_X_1_muj_000141cc
	.4byte 0x0000001C
	.4byte str_S_1_muj_000141d0
	.4byte 0x0000001D
	.4byte str_Q_1_muj_000141d4
	.4byte 0x0000001E
	.4byte str_Q_1_muj_000141d4
	.4byte 0x0000001F
	.4byte str_A_2B_muj_000141d8
	.4byte 0x00000027
	.4byte str_D_1_muj_000141e0
	.4byte 0x00000032
	.4byte str_A_1_muj_000141e4
	.4byte 0x0000002A
	.4byte str_R_1_muj_000141e8
	.4byte 0x00000028
	.4byte str_W_1_muj_000141ec
	.4byte 0x00000038
	.4byte str_X_1_muj_000141cc
	.4byte 0x00000039
	.4byte str_X_1_muj_000141cc
	.4byte 0x00000041
	.4byte str_T_1_muj_000141f0
	.4byte 0x00000045
	.4byte str_S_1_muj_000141d0
.endobj pose_table

# .data:0x1CC | 0x39CBC | size: 0x20
.obj data_table, local
	.4byte 0x0000000B
	.4byte damage_fire_explosion_event
	.4byte 0x00000028
	.4byte avoid_fire_event
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x1EC | 0x39CDC | size: 0x98
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_hermos_muj_00014150
	.4byte str_c_elmos_muj_000141f4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41C80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x420C0000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x00000109
	.4byte 0x00000010
	.4byte pose_table
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte str_c_elmos_muj_000141f4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000F000F
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x13010000
	.4byte 0x00000000
	.4byte pose_table
.endobj parts

# .data:0x284 | 0x39D74 | size: 0xC0
.obj weapon_bubble_attack, local
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
	.4byte 0x20000000
	.4byte 0x01000302
	.4byte 0x00000000
	.4byte 0x00000087
	.4byte 0x00000070
	.4byte 0x00002004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03000000
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
.endobj weapon_bubble_attack

# .data:0x344 | 0x39E34 | size: 0xC0
.obj weapon_bubble_fire_attack, local
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
	.4byte 0x20000000
	.4byte 0x01000302
	.4byte 0x00000000
	.4byte 0x000000C7
	.4byte 0x000007FF
	.4byte 0x80002004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000004B
	.4byte 0x03000000
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
.endobj weapon_bubble_fire_attack

# .data:0x404 | 0x39EF4 | size: 0xC0
.obj weapon_bubble_all_fire_attack, local
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
	.4byte 0x02101260
	.4byte 0x20000000
	.4byte 0x01000302
	.4byte 0x00000000
	.4byte 0x000000C7
	.4byte 0x000007FF
	.4byte 0x80000004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000004B
	.4byte 0x03000000
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
.endobj weapon_bubble_all_fire_attack

# .data:0x4C4 | 0x39FB4 | size: 0x30
.obj entry_bubble, local
	.4byte unit_hermos_19_data_39B40
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0xC47A0000
	.4byte 0xC47A0000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj entry_bubble

# .data:0x4F4 | 0x39FE4 | size: 0x9C
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
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0xFE363C82
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x590 | 0x3A080 | size: 0x28
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

# .data:0x5B8 | 0x3A0A8 | size: 0x40
.obj avoid_fire_event, local
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_FIRE1_muj_000141fc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2B_muj_000141d8
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00000002
	.4byte 0x00000001
.endobj avoid_fire_event

# .data:0x5F8 | 0x3A0E8 | size: 0x19C
.obj damage_fire_explosion_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2B_muj_000141d8
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0x000000AA
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x0009005B
	.4byte btlevtcmd_CheckSpace
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x0001005E
	.4byte friend_event
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x0009005B
	.4byte btlevtcmd_CheckSpace
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x0001005E
	.4byte friend_event
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj damage_fire_explosion_event

# .data:0x794 | 0x3A284 | size: 0x18C
.obj friend_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte str_S_1_muj_000141d0
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0xFE363C8E
	.4byte 0x0004005B
	.4byte btlevtcmd_SpawnUnit
	.4byte 0xFE363C83
	.4byte entry_bubble
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte bubble_copy_status
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0xFE363C8E
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0xF24A7C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_SPLIT_muj_00014214
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006E
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotateOffset
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte 0x0002001D
	.4byte 0xFE363C8C
	.4byte 0x0000001E
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000028
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotateOffset
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000070
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24AF280
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00000002
	.4byte 0x00000001
.endobj friend_event

# .data:0x920 | 0x3A410 | size: 0x11C
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
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_bubble_attack
	.4byte 0x0001005E
	.4byte normal_attack_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_bubble_fire_attack
	.4byte 0x0001005E
	.4byte fire_attack_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_bubble_all_fire_attack
	.4byte 0x0001005E
	.4byte all_fire_attack_event
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

# .data:0xA3C | 0x3A52C | size: 0x670
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
	.4byte 0x0001006F
	.4byte 0xFE363C8F
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_MOVE1_muj_0001422c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000078
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1A_muj_00014244
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0000000D
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000005
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
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
	.4byte 0x0001005F
	.4byte 0xFE363C8F
	.4byte 0x00010009
	.4byte 0x0000001E
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
	.4byte 0x0000002E
	.4byte 0x00000031
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_FIRE1_muj_000141fc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010005
	.4byte 0x00000004
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1B_muj_0001424c
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x00000006
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
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_FIRE1_muj_000141fc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1B_muj_0001424c
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
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x00010005
	.4byte 0x00000003
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1B_muj_0001424c
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x00000006
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_MOVE2_muj_00014254
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006E
	.4byte 0x00010009
	.4byte 0x00000005
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1A_muj_00014244
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0xFFFFFFE2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
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
	.4byte 0x00000019
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_muj_000141d0
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj normal_attack_event

# .data:0x10AC | 0x3AB9C | size: 0x5B4
.obj fire_attack_event, local
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
	.4byte 0x00000000
	.4byte 0x0000006E
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_T_1_muj_000141f0
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_muj_000141d0
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_ATTAC_muj_00014278
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x02000000
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
	.4byte 0x00000005
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000006E
	.4byte 0x0002005B
	.4byte eff_fire
	.4byte 0xFFFFFFFE
	.4byte 0x00000070
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
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0002003B
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0002003B
	.4byte 0xFE363C8C
	.4byte 0xFE363C82
	.4byte 0x0002003C
	.4byte 0xFE363C8A
	.4byte 0xF24A7D4C
	.4byte 0x0002003C
	.4byte 0xFE363C8C
	.4byte 0xF24A7CE6
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x0002003A
	.4byte 0xFE363C82
	.4byte 0xFE363C8C
	.4byte 0x000B005B
	.4byte btlevtcmd_DivePartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
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
	.4byte 0x00000005
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0002003B
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0002003B
	.4byte 0xFE363C8C
	.4byte 0xFE363C82
	.4byte 0x0002003C
	.4byte 0xFE363C8A
	.4byte 0xF24A7C19
	.4byte 0x0002003C
	.4byte 0xFE363C8C
	.4byte 0xF24A7C19
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x0002003A
	.4byte 0xFE363C82
	.4byte 0xFE363C8C
	.4byte 0x000B005B
	.4byte btlevtcmd_DivePartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
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
	.4byte 0xF1194D80
	.4byte 0xFE363C81
	.4byte 0xF1194D80
	.4byte 0x000B005B
	.4byte btlevtcmd_DivePartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_ATTAC_muj_00014290
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x02000000
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
	.4byte 0x0000002E
	.4byte 0x00000031
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_muj_000142a8
	.4byte str_kemuri_test_muj_000142ac
	.4byte 0x00000010
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A7E80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj fire_attack_event

# .data:0x1660 | 0x3B150 | size: 0x28
.obj all_fire_attackEvent_sub, local
	.4byte 0x0000006E
	.4byte 0x0003005B
	.4byte eff_all_fire
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000070
	.4byte 0x00010009
	.4byte 0x00000078
	.4byte 0x00000002
	.4byte 0x00000001
.endobj all_fire_attackEvent_sub

# .data:0x1688 | 0x3B178 | size: 0x504
.obj all_fire_attack_event, local
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
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000007
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
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1A_muj_00014244
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_MOVE1_muj_0001422c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
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
	.4byte 0xFFFFFFF1
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
	.4byte str_SFX_ENM_BUBBLE_ATTAC_muj_000142ec
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2A_muj_00014304
	.4byte 0x00010005
	.4byte 0x00000014
	.4byte 0x0005005B
	.4byte btlevtcmd_AddPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte btlevtcmd_AddPos
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x00000006
	.4byte 0x0000006E
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x0000000A
	.4byte 0x0001005C
	.4byte all_fire_attackEvent_sub
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_ATTAC_muj_00014278
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2B_muj_000141d8
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetSelectEnemy
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x00000000
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
	.4byte 0x0000002E
	.4byte 0x00000031
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C89
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
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x00010009
	.4byte 0x000000B4
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1A_muj_00014244
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_MOVE1_muj_0001422c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
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
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj all_fire_attack_event

# .data:0x1B8C | 0x3B67C | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x1BA4 | 0x3B694 | size: 0x4
.obj gap_04_0003B694_data, global
.hidden gap_04_0003B694_data
	.4byte 0x00000000
.endobj gap_04_0003B694_data

# 0x00000070..0x000000C8 | size: 0x58
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x70 | size: 0x28
.obj step, local
	.skip 0x28
.endobj step

# .bss:0x28 | 0x98 | size: 0x28
.obj eff2, local
	.skip 0x28
.endobj eff2

# .bss:0x50 | 0xC0 | size: 0x4
.obj eff, local
	.skip 0x4
.endobj eff

# .bss:0x54 | 0xC4 | size: 0x4
.obj gap_05_000000C4_bss, global
.hidden gap_05_000000C4_bss
	.skip 0x4
.endobj gap_05_000000C4_bss
