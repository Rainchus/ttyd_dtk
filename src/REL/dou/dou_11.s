.include "macros.inc"
.file "dou_11.o"

# 0x000010AC..0x0000181C | size: 0x770
.text
.balign 4

# .text:0x0 | 0x10AC | size: 0x21C
.fn dou_mario_kaiten_hosei, local
/* 000010AC 00001170  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 000010B0 00001174  7C 08 02 A6 */	mflr r0
/* 000010B4 00001178  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 000010B8 0000117C  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 000010BC 00001180  F3 E1 00 98 */	psq_st f31, 0x98(r1), 0, qr0
/* 000010C0 00001184  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 000010C4 00001188  F3 C1 00 88 */	psq_st f30, 0x88(r1), 0, qr0
/* 000010C8 0000118C  DB A1 00 70 */	stfd f29, 0x70(r1)
/* 000010CC 00001190  F3 A1 00 78 */	psq_st f29, 0x78(r1), 0, qr0
/* 000010D0 00001194  DB 81 00 60 */	stfd f28, 0x60(r1)
/* 000010D4 00001198  F3 81 00 68 */	psq_st f28, 0x68(r1), 0, qr0
/* 000010D8 0000119C  BF 81 00 50 */	stmw r28, 0x50(r1)
/* 000010DC 000011A0  7C 7D 1B 78 */	mr r29, r3
/* 000010E0 000011A4  7C 9F 23 78 */	mr r31, r4
/* 000010E4 000011A8  80 83 00 18 */	lwz r4, 0x18(r3)
/* 000010E8 000011AC  80 84 00 00 */	lwz r4, 0x0(r4)
/* 000010EC 000011B0  4B FF EF 81 */	bl evtGetValue
/* 000010F0 000011B4  7C 7C 1B 78 */	mr r28, r3
/* 000010F4 000011B8  4B FF EF 79 */	bl hitNameToPtr
/* 000010F8 000011BC  7C 7E 1B 78 */	mr r30, r3
/* 000010FC 000011C0  4B FF EF 71 */	bl marioGetPtr
/* 00001100 000011C4  2C 1F 00 00 */	cmpwi r31, 0x0
/* 00001104 000011C8  7C 7F 1B 78 */	mr r31, r3
/* 00001108 000011CC  41 82 00 18 */	beq .L_00001120
/* 0000110C 000011D0  3C 60 00 00 */	lis r3, zero_dou_0000579c@ha
/* 00001110 000011D4  38 00 00 00 */	li r0, 0x0
/* 00001114 000011D8  C0 03 00 00 */	lfs f0, zero_dou_0000579c@l(r3)
/* 00001118 000011DC  D0 1D 00 7C */	stfs f0, 0x7c(r29)
/* 0000111C 000011E0  90 1D 00 80 */	stw r0, 0x80(r29)
.L_00001120:
/* 00001120 000011E4  80 7F 01 E8 */	lwz r3, 0x1e8(r31)
/* 00001124 000011E8  28 03 00 00 */	cmplwi r3, 0x0
/* 00001128 000011EC  40 82 00 24 */	bne .L_0000114C
/* 0000112C 000011F0  3C 60 00 00 */	lis r3, zero_dou_0000579c@ha
/* 00001130 000011F4  38 00 00 00 */	li r0, 0x0
/* 00001134 000011F8  38 83 00 00 */	addi r4, r3, zero_dou_0000579c@l
/* 00001138 000011FC  38 60 00 00 */	li r3, 0x0
/* 0000113C 00001200  C0 04 00 00 */	lfs f0, 0x0(r4)
/* 00001140 00001204  D0 1D 00 7C */	stfs f0, 0x7c(r29)
/* 00001144 00001208  90 1D 00 80 */	stw r0, 0x80(r29)
/* 00001148 0000120C  48 00 01 4C */	b .L_00001294
.L_0000114C:
/* 0000114C 00001210  7F C4 F3 78 */	mr r4, r30
/* 00001150 00001214  48 00 01 79 */	bl hitIsGroup
/* 00001154 00001218  2C 03 00 00 */	cmpwi r3, 0x0
/* 00001158 0000121C  41 82 01 38 */	beq .L_00001290
/* 0000115C 00001220  3C 60 00 00 */	lis r3, vec3_dou_000055c4@ha
/* 00001160 00001224  38 81 00 14 */	addi r4, r1, 0x14
/* 00001164 00001228  39 03 00 00 */	addi r8, r3, vec3_dou_000055c4@l
/* 00001168 0000122C  38 A0 00 78 */	li r5, 0x78
/* 0000116C 00001230  80 E8 00 00 */	lwz r7, 0x0(r8)
/* 00001170 00001234  38 C0 00 79 */	li r6, 0x79
/* 00001174 00001238  80 68 00 04 */	lwz r3, 0x4(r8)
/* 00001178 0000123C  80 08 00 08 */	lwz r0, 0x8(r8)
/* 0000117C 00001240  90 E1 00 08 */	stw r7, 0x8(r1)
/* 00001180 00001244  90 61 00 0C */	stw r3, 0xc(r1)
/* 00001184 00001248  90 01 00 10 */	stw r0, 0x10(r1)
/* 00001188 0000124C  80 7E 00 D0 */	lwz r3, 0xd0(r30)
/* 0000118C 00001250  38 63 00 AC */	addi r3, r3, 0xac
/* 00001190 00001254  4B FF EE DD */	bl mtxGetRotationElement
/* 00001194 00001258  38 81 00 08 */	addi r4, r1, 0x8
/* 00001198 0000125C  38 61 00 14 */	addi r3, r1, 0x14
/* 0000119C 00001260  7C 85 23 78 */	mr r5, r4
/* 000011A0 00001264  4B FF EE CD */	bl PSMTXMultVec
/* 000011A4 00001268  3C 60 00 00 */	lis r3, zero_dou_0000579c@ha
/* 000011A8 0000126C  C0 61 00 08 */	lfs f3, 0x8(r1)
/* 000011AC 00001270  C0 23 00 00 */	lfs f1, zero_dou_0000579c@l(r3)
/* 000011B0 00001274  C0 81 00 0C */	lfs f4, 0xc(r1)
/* 000011B4 00001278  FC 40 08 90 */	fmr f2, f1
/* 000011B8 0000127C  4B FF EE B5 */	bl angleABf_1
/* 000011BC 00001280  FF A0 08 90 */	fmr f29, f1
/* 000011C0 00001284  C0 1D 00 7C */	lfs f0, 0x7c(r29)
/* 000011C4 00001288  7F 83 E3 78 */	mr r3, r28
/* 000011C8 0000128C  38 81 00 08 */	addi r4, r1, 0x8
/* 000011CC 00001290  EF 9D 00 28 */	fsubs f28, f29, f0
/* 000011D0 00001294  4B FF EE 9D */	bl hitObjGetPos
/* 000011D4 00001298  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 000011D8 0000129C  C0 5F 00 90 */	lfs f2, 0x90(r31)
/* 000011DC 000012A0  C0 61 00 08 */	lfs f3, 0x8(r1)
/* 000011E0 000012A4  C0 81 00 0C */	lfs f4, 0xc(r1)
/* 000011E4 000012A8  4B FF EE 89 */	bl distABf
/* 000011E8 000012AC  FF C0 08 90 */	fmr f30, f1
/* 000011EC 000012B0  C0 21 00 08 */	lfs f1, 0x8(r1)
/* 000011F0 000012B4  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 000011F4 000012B8  C0 7F 00 8C */	lfs f3, 0x8c(r31)
/* 000011F8 000012BC  C0 9F 00 90 */	lfs f4, 0x90(r31)
/* 000011FC 000012C0  4B FF EE 71 */	bl angleABf_1
/* 00001200 000012C4  80 9D 00 80 */	lwz r4, 0x80(r29)
/* 00001204 000012C8  FF E0 08 90 */	fmr f31, f1
/* 00001208 000012CC  28 04 00 00 */	cmplwi r4, 0x0
/* 0000120C 000012D0  41 82 00 7C */	beq .L_00001288
/* 00001210 000012D4  80 7E 00 08 */	lwz r3, 0x8(r30)
/* 00001214 000012D8  80 84 00 08 */	lwz r4, 0x8(r4)
/* 00001218 000012DC  80 63 00 00 */	lwz r3, 0x0(r3)
/* 0000121C 000012E0  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00001220 000012E4  4B FF EE 4D */	bl strcmp
/* 00001224 000012E8  2C 03 00 00 */	cmpwi r3, 0x0
/* 00001228 000012EC  40 82 00 60 */	bne .L_00001288
/* 0000122C 000012F0  3C 80 00 00 */	lis r4, float_6p2832_dou_000057a0@ha
/* 00001230 000012F4  EC 3F E0 2A */	fadds f1, f31, f28
/* 00001234 000012F8  C0 44 00 00 */	lfs f2, float_6p2832_dou_000057a0@l(r4)
/* 00001238 000012FC  3C 60 00 00 */	lis r3, float_360_dou_000057a4@ha
/* 0000123C 00001300  C0 03 00 00 */	lfs f0, float_360_dou_000057a4@l(r3)
/* 00001240 00001304  EC 22 00 72 */	fmuls f1, f2, f1
/* 00001244 00001308  EF E1 00 24 */	fdivs f31, f1, f0
/* 00001248 0000130C  FC 20 F8 90 */	fmr f1, f31
/* 0000124C 00001310  4B FF EE 21 */	bl sin
/* 00001250 00001314  FC 60 08 18 */	frsp f3, f1
/* 00001254 00001318  C0 41 00 08 */	lfs f2, 0x8(r1)
/* 00001258 0000131C  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 0000125C 00001320  FC 20 F8 90 */	fmr f1, f31
/* 00001260 00001324  EC 5E 10 FA */	fmadds f2, f30, f3, f2
/* 00001264 00001328  EC 02 00 28 */	fsubs f0, f2, f0
/* 00001268 0000132C  D0 1F 01 74 */	stfs f0, 0x174(r31)
/* 0000126C 00001330  4B FF EE 01 */	bl cos
/* 00001270 00001334  FC 40 08 18 */	frsp f2, f1
/* 00001274 00001338  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 00001278 0000133C  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 0000127C 00001340  EC 3E 08 BC */	fnmsubs f1, f30, f2, f1
/* 00001280 00001344  EC 01 00 28 */	fsubs f0, f1, f0
/* 00001284 00001348  D0 1F 01 78 */	stfs f0, 0x178(r31)
.L_00001288:
/* 00001288 0000134C  D3 BD 00 7C */	stfs f29, 0x7c(r29)
/* 0000128C 00001350  93 DD 00 80 */	stw r30, 0x80(r29)
.L_00001290:
/* 00001290 00001354  38 60 00 00 */	li r3, 0x0
.L_00001294:
/* 00001294 00001358  E3 E1 00 98 */	psq_l f31, 0x98(r1), 0, qr0
/* 00001298 0000135C  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 0000129C 00001360  E3 C1 00 88 */	psq_l f30, 0x88(r1), 0, qr0
/* 000012A0 00001364  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 000012A4 00001368  E3 A1 00 78 */	psq_l f29, 0x78(r1), 0, qr0
/* 000012A8 0000136C  CB A1 00 70 */	lfd f29, 0x70(r1)
/* 000012AC 00001370  E3 81 00 68 */	psq_l f28, 0x68(r1), 0, qr0
/* 000012B0 00001374  CB 81 00 60 */	lfd f28, 0x60(r1)
/* 000012B4 00001378  BB 81 00 50 */	lmw r28, 0x50(r1)
/* 000012B8 0000137C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 000012BC 00001380  7C 08 03 A6 */	mtlr r0
/* 000012C0 00001384  38 21 00 A0 */	addi r1, r1, 0xa0
/* 000012C4 00001388  4E 80 00 20 */	blr
.endfn dou_mario_kaiten_hosei

# .text:0x21C | 0x12C8 | size: 0x24
.fn hitIsGroup, local
/* 000012C8 0000138C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000012CC 00001390  7C 08 02 A6 */	mflr r0
/* 000012D0 00001394  38 A0 00 00 */	li r5, 0x0
/* 000012D4 00001398  90 01 00 14 */	stw r0, 0x14(r1)
/* 000012D8 0000139C  48 00 00 15 */	bl _hitIsGroupSub
/* 000012DC 000013A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000012E0 000013A4  7C 08 03 A6 */	mtlr r0
/* 000012E4 000013A8  38 21 00 10 */	addi r1, r1, 0x10
/* 000012E8 000013AC  4E 80 00 20 */	blr
.endfn hitIsGroup

# .text:0x240 | 0x12EC | size: 0x530
.fn _hitIsGroupSub, local
/* 000012EC 000013B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 000012F0 000013B4  7C 08 02 A6 */	mflr r0
/* 000012F4 000013B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 000012F8 000013BC  BF 81 00 10 */	stmw r28, 0x10(r1)
/* 000012FC 000013C0  7C 7F 1B 78 */	mr r31, r3
/* 00001300 000013C4  7C 9C 23 78 */	mr r28, r4
/* 00001304 000013C8  7C BD 2B 78 */	mr r29, r5
/* 00001308 000013CC  80 63 00 08 */	lwz r3, 0x8(r3)
/* 0000130C 000013D0  80 84 00 08 */	lwz r4, 0x8(r4)
/* 00001310 000013D4  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00001314 000013D8  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00001318 000013DC  4B FF ED 55 */	bl strcmp
/* 0000131C 000013E0  2C 03 00 00 */	cmpwi r3, 0x0
/* 00001320 000013E4  40 82 00 0C */	bne .L_0000132C
/* 00001324 000013E8  38 60 00 01 */	li r3, 0x1
/* 00001328 000013EC  48 00 04 E0 */	b .L_00001808
.L_0000132C:
/* 0000132C 000013F0  83 DC 00 D8 */	lwz r30, 0xd8(r28)
/* 00001330 000013F4  28 1E 00 00 */	cmplwi r30, 0x0
/* 00001334 000013F8  41 82 02 60 */	beq .L_00001594
/* 00001338 000013FC  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 0000133C 00001400  80 9E 00 08 */	lwz r4, 0x8(r30)
/* 00001340 00001404  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00001344 00001408  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00001348 0000140C  4B FF ED 25 */	bl strcmp
/* 0000134C 00001410  2C 03 00 00 */	cmpwi r3, 0x0
/* 00001350 00001414  40 82 00 0C */	bne .L_0000135C
/* 00001354 00001418  38 60 00 01 */	li r3, 0x1
/* 00001358 0000141C  48 00 04 B0 */	b .L_00001808
.L_0000135C:
/* 0000135C 00001420  83 BE 00 D8 */	lwz r29, 0xd8(r30)
/* 00001360 00001424  28 1D 00 00 */	cmplwi r29, 0x0
/* 00001364 00001428  41 82 01 10 */	beq .L_00001474
/* 00001368 0000142C  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 0000136C 00001430  80 9D 00 08 */	lwz r4, 0x8(r29)
/* 00001370 00001434  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00001374 00001438  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00001378 0000143C  4B FF EC F5 */	bl strcmp
/* 0000137C 00001440  2C 03 00 00 */	cmpwi r3, 0x0
/* 00001380 00001444  40 82 00 0C */	bne .L_0000138C
/* 00001384 00001448  38 60 00 01 */	li r3, 0x1
/* 00001388 0000144C  48 00 04 80 */	b .L_00001808
.L_0000138C:
/* 0000138C 00001450  83 DD 00 D8 */	lwz r30, 0xd8(r29)
/* 00001390 00001454  28 1E 00 00 */	cmplwi r30, 0x0
/* 00001394 00001458  41 82 00 68 */	beq .L_000013FC
/* 00001398 0000145C  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 0000139C 00001460  80 9E 00 08 */	lwz r4, 0x8(r30)
/* 000013A0 00001464  80 63 00 00 */	lwz r3, 0x0(r3)
/* 000013A4 00001468  80 84 00 00 */	lwz r4, 0x0(r4)
/* 000013A8 0000146C  4B FF EC C5 */	bl strcmp
/* 000013AC 00001470  2C 03 00 00 */	cmpwi r3, 0x0
/* 000013B0 00001474  40 82 00 0C */	bne .L_000013BC
/* 000013B4 00001478  38 60 00 01 */	li r3, 0x1
/* 000013B8 0000147C  48 00 04 50 */	b .L_00001808
.L_000013BC:
/* 000013BC 00001480  80 9E 00 D8 */	lwz r4, 0xd8(r30)
/* 000013C0 00001484  28 04 00 00 */	cmplwi r4, 0x0
/* 000013C4 00001488  41 82 00 14 */	beq .L_000013D8
/* 000013C8 0000148C  7F E3 FB 78 */	mr r3, r31
/* 000013CC 00001490  38 A0 00 01 */	li r5, 0x1
/* 000013D0 00001494  4B FF FF 1D */	bl _hitIsGroupSub
/* 000013D4 00001498  48 00 04 34 */	b .L_00001808
.L_000013D8:
/* 000013D8 0000149C  80 9E 00 DC */	lwz r4, 0xdc(r30)
/* 000013DC 000014A0  28 04 00 00 */	cmplwi r4, 0x0
/* 000013E0 000014A4  41 82 00 14 */	beq .L_000013F4
/* 000013E4 000014A8  7F E3 FB 78 */	mr r3, r31
/* 000013E8 000014AC  38 A0 00 01 */	li r5, 0x1
/* 000013EC 000014B0  4B FF FF 01 */	bl _hitIsGroupSub
/* 000013F0 000014B4  48 00 04 18 */	b .L_00001808
.L_000013F4:
/* 000013F4 000014B8  38 60 00 00 */	li r3, 0x0
/* 000013F8 000014BC  48 00 04 10 */	b .L_00001808
.L_000013FC:
/* 000013FC 000014C0  83 BD 00 DC */	lwz r29, 0xdc(r29)
/* 00001400 000014C4  28 1D 00 00 */	cmplwi r29, 0x0
/* 00001404 000014C8  41 82 00 68 */	beq .L_0000146C
/* 00001408 000014CC  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 0000140C 000014D0  80 9D 00 08 */	lwz r4, 0x8(r29)
/* 00001410 000014D4  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00001414 000014D8  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00001418 000014DC  4B FF EC 55 */	bl strcmp
/* 0000141C 000014E0  2C 03 00 00 */	cmpwi r3, 0x0
/* 00001420 000014E4  40 82 00 0C */	bne .L_0000142C
/* 00001424 000014E8  38 60 00 01 */	li r3, 0x1
/* 00001428 000014EC  48 00 03 E0 */	b .L_00001808
.L_0000142C:
/* 0000142C 000014F0  80 9D 00 D8 */	lwz r4, 0xd8(r29)
/* 00001430 000014F4  28 04 00 00 */	cmplwi r4, 0x0
/* 00001434 000014F8  41 82 00 14 */	beq .L_00001448
/* 00001438 000014FC  7F E3 FB 78 */	mr r3, r31
/* 0000143C 00001500  38 A0 00 01 */	li r5, 0x1
/* 00001440 00001504  4B FF FE AD */	bl _hitIsGroupSub
/* 00001444 00001508  48 00 03 C4 */	b .L_00001808
.L_00001448:
/* 00001448 0000150C  80 9D 00 DC */	lwz r4, 0xdc(r29)
/* 0000144C 00001510  28 04 00 00 */	cmplwi r4, 0x0
/* 00001450 00001514  41 82 00 14 */	beq .L_00001464
/* 00001454 00001518  7F E3 FB 78 */	mr r3, r31
/* 00001458 0000151C  38 A0 00 01 */	li r5, 0x1
/* 0000145C 00001520  4B FF FE 91 */	bl _hitIsGroupSub
/* 00001460 00001524  48 00 03 A8 */	b .L_00001808
.L_00001464:
/* 00001464 00001528  38 60 00 00 */	li r3, 0x0
/* 00001468 0000152C  48 00 03 A0 */	b .L_00001808
.L_0000146C:
/* 0000146C 00001530  38 60 00 00 */	li r3, 0x0
/* 00001470 00001534  48 00 03 98 */	b .L_00001808
.L_00001474:
/* 00001474 00001538  83 BE 00 DC */	lwz r29, 0xdc(r30)
/* 00001478 0000153C  28 1D 00 00 */	cmplwi r29, 0x0
/* 0000147C 00001540  41 82 01 10 */	beq .L_0000158C
/* 00001480 00001544  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 00001484 00001548  80 9D 00 08 */	lwz r4, 0x8(r29)
/* 00001488 0000154C  80 63 00 00 */	lwz r3, 0x0(r3)
/* 0000148C 00001550  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00001490 00001554  4B FF EB DD */	bl strcmp
/* 00001494 00001558  2C 03 00 00 */	cmpwi r3, 0x0
/* 00001498 0000155C  40 82 00 0C */	bne .L_000014A4
/* 0000149C 00001560  38 60 00 01 */	li r3, 0x1
/* 000014A0 00001564  48 00 03 68 */	b .L_00001808
.L_000014A4:
/* 000014A4 00001568  83 DD 00 D8 */	lwz r30, 0xd8(r29)
/* 000014A8 0000156C  28 1E 00 00 */	cmplwi r30, 0x0
/* 000014AC 00001570  41 82 00 68 */	beq .L_00001514
/* 000014B0 00001574  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 000014B4 00001578  80 9E 00 08 */	lwz r4, 0x8(r30)
/* 000014B8 0000157C  80 63 00 00 */	lwz r3, 0x0(r3)
/* 000014BC 00001580  80 84 00 00 */	lwz r4, 0x0(r4)
/* 000014C0 00001584  4B FF EB AD */	bl strcmp
/* 000014C4 00001588  2C 03 00 00 */	cmpwi r3, 0x0
/* 000014C8 0000158C  40 82 00 0C */	bne .L_000014D4
/* 000014CC 00001590  38 60 00 01 */	li r3, 0x1
/* 000014D0 00001594  48 00 03 38 */	b .L_00001808
.L_000014D4:
/* 000014D4 00001598  80 9E 00 D8 */	lwz r4, 0xd8(r30)
/* 000014D8 0000159C  28 04 00 00 */	cmplwi r4, 0x0
/* 000014DC 000015A0  41 82 00 14 */	beq .L_000014F0
/* 000014E0 000015A4  7F E3 FB 78 */	mr r3, r31
/* 000014E4 000015A8  38 A0 00 01 */	li r5, 0x1
/* 000014E8 000015AC  4B FF FE 05 */	bl _hitIsGroupSub
/* 000014EC 000015B0  48 00 03 1C */	b .L_00001808
.L_000014F0:
/* 000014F0 000015B4  80 9E 00 DC */	lwz r4, 0xdc(r30)
/* 000014F4 000015B8  28 04 00 00 */	cmplwi r4, 0x0
/* 000014F8 000015BC  41 82 00 14 */	beq .L_0000150C
/* 000014FC 000015C0  7F E3 FB 78 */	mr r3, r31
/* 00001500 000015C4  38 A0 00 01 */	li r5, 0x1
/* 00001504 000015C8  4B FF FD E9 */	bl _hitIsGroupSub
/* 00001508 000015CC  48 00 03 00 */	b .L_00001808
.L_0000150C:
/* 0000150C 000015D0  38 60 00 00 */	li r3, 0x0
/* 00001510 000015D4  48 00 02 F8 */	b .L_00001808
.L_00001514:
/* 00001514 000015D8  83 BD 00 DC */	lwz r29, 0xdc(r29)
/* 00001518 000015DC  28 1D 00 00 */	cmplwi r29, 0x0
/* 0000151C 000015E0  41 82 00 68 */	beq .L_00001584
/* 00001520 000015E4  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 00001524 000015E8  80 9D 00 08 */	lwz r4, 0x8(r29)
/* 00001528 000015EC  80 63 00 00 */	lwz r3, 0x0(r3)
/* 0000152C 000015F0  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00001530 000015F4  4B FF EB 3D */	bl strcmp
/* 00001534 000015F8  2C 03 00 00 */	cmpwi r3, 0x0
/* 00001538 000015FC  40 82 00 0C */	bne .L_00001544
/* 0000153C 00001600  38 60 00 01 */	li r3, 0x1
/* 00001540 00001604  48 00 02 C8 */	b .L_00001808
.L_00001544:
/* 00001544 00001608  80 9D 00 D8 */	lwz r4, 0xd8(r29)
/* 00001548 0000160C  28 04 00 00 */	cmplwi r4, 0x0
/* 0000154C 00001610  41 82 00 14 */	beq .L_00001560
/* 00001550 00001614  7F E3 FB 78 */	mr r3, r31
/* 00001554 00001618  38 A0 00 01 */	li r5, 0x1
/* 00001558 0000161C  4B FF FD 95 */	bl _hitIsGroupSub
/* 0000155C 00001620  48 00 02 AC */	b .L_00001808
.L_00001560:
/* 00001560 00001624  80 9D 00 DC */	lwz r4, 0xdc(r29)
/* 00001564 00001628  28 04 00 00 */	cmplwi r4, 0x0
/* 00001568 0000162C  41 82 00 14 */	beq .L_0000157C
/* 0000156C 00001630  7F E3 FB 78 */	mr r3, r31
/* 00001570 00001634  38 A0 00 01 */	li r5, 0x1
/* 00001574 00001638  4B FF FD 79 */	bl _hitIsGroupSub
/* 00001578 0000163C  48 00 02 90 */	b .L_00001808
.L_0000157C:
/* 0000157C 00001640  38 60 00 00 */	li r3, 0x0
/* 00001580 00001644  48 00 02 88 */	b .L_00001808
.L_00001584:
/* 00001584 00001648  38 60 00 00 */	li r3, 0x0
/* 00001588 0000164C  48 00 02 80 */	b .L_00001808
.L_0000158C:
/* 0000158C 00001650  38 60 00 00 */	li r3, 0x0
/* 00001590 00001654  48 00 02 78 */	b .L_00001808
.L_00001594:
/* 00001594 00001658  2C 1D 00 00 */	cmpwi r29, 0x0
/* 00001598 0000165C  41 82 02 6C */	beq .L_00001804
/* 0000159C 00001660  83 BC 00 DC */	lwz r29, 0xdc(r28)
/* 000015A0 00001664  28 1D 00 00 */	cmplwi r29, 0x0
/* 000015A4 00001668  41 82 02 60 */	beq .L_00001804
/* 000015A8 0000166C  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 000015AC 00001670  80 9D 00 08 */	lwz r4, 0x8(r29)
/* 000015B0 00001674  80 63 00 00 */	lwz r3, 0x0(r3)
/* 000015B4 00001678  80 84 00 00 */	lwz r4, 0x0(r4)
/* 000015B8 0000167C  4B FF EA B5 */	bl strcmp
/* 000015BC 00001680  2C 03 00 00 */	cmpwi r3, 0x0
/* 000015C0 00001684  40 82 00 0C */	bne .L_000015CC
/* 000015C4 00001688  38 60 00 01 */	li r3, 0x1
/* 000015C8 0000168C  48 00 02 40 */	b .L_00001808
.L_000015CC:
/* 000015CC 00001690  83 DD 00 D8 */	lwz r30, 0xd8(r29)
/* 000015D0 00001694  28 1E 00 00 */	cmplwi r30, 0x0
/* 000015D4 00001698  41 82 01 10 */	beq .L_000016E4
/* 000015D8 0000169C  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 000015DC 000016A0  80 9E 00 08 */	lwz r4, 0x8(r30)
/* 000015E0 000016A4  80 63 00 00 */	lwz r3, 0x0(r3)
/* 000015E4 000016A8  80 84 00 00 */	lwz r4, 0x0(r4)
/* 000015E8 000016AC  4B FF EA 85 */	bl strcmp
/* 000015EC 000016B0  2C 03 00 00 */	cmpwi r3, 0x0
/* 000015F0 000016B4  40 82 00 0C */	bne .L_000015FC
/* 000015F4 000016B8  38 60 00 01 */	li r3, 0x1
/* 000015F8 000016BC  48 00 02 10 */	b .L_00001808
.L_000015FC:
/* 000015FC 000016C0  83 BE 00 D8 */	lwz r29, 0xd8(r30)
/* 00001600 000016C4  28 1D 00 00 */	cmplwi r29, 0x0
/* 00001604 000016C8  41 82 00 68 */	beq .L_0000166C
/* 00001608 000016CC  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 0000160C 000016D0  80 9D 00 08 */	lwz r4, 0x8(r29)
/* 00001610 000016D4  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00001614 000016D8  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00001618 000016DC  4B FF EA 55 */	bl strcmp
/* 0000161C 000016E0  2C 03 00 00 */	cmpwi r3, 0x0
/* 00001620 000016E4  40 82 00 0C */	bne .L_0000162C
/* 00001624 000016E8  38 60 00 01 */	li r3, 0x1
/* 00001628 000016EC  48 00 01 E0 */	b .L_00001808
.L_0000162C:
/* 0000162C 000016F0  80 9D 00 D8 */	lwz r4, 0xd8(r29)
/* 00001630 000016F4  28 04 00 00 */	cmplwi r4, 0x0
/* 00001634 000016F8  41 82 00 14 */	beq .L_00001648
/* 00001638 000016FC  7F E3 FB 78 */	mr r3, r31
/* 0000163C 00001700  38 A0 00 01 */	li r5, 0x1
/* 00001640 00001704  4B FF FC AD */	bl _hitIsGroupSub
/* 00001644 00001708  48 00 01 C4 */	b .L_00001808
.L_00001648:
/* 00001648 0000170C  80 9D 00 DC */	lwz r4, 0xdc(r29)
/* 0000164C 00001710  28 04 00 00 */	cmplwi r4, 0x0
/* 00001650 00001714  41 82 00 14 */	beq .L_00001664
/* 00001654 00001718  7F E3 FB 78 */	mr r3, r31
/* 00001658 0000171C  38 A0 00 01 */	li r5, 0x1
/* 0000165C 00001720  4B FF FC 91 */	bl _hitIsGroupSub
/* 00001660 00001724  48 00 01 A8 */	b .L_00001808
.L_00001664:
/* 00001664 00001728  38 60 00 00 */	li r3, 0x0
/* 00001668 0000172C  48 00 01 A0 */	b .L_00001808
.L_0000166C:
/* 0000166C 00001730  83 BE 00 DC */	lwz r29, 0xdc(r30)
/* 00001670 00001734  28 1D 00 00 */	cmplwi r29, 0x0
/* 00001674 00001738  41 82 00 68 */	beq .L_000016DC
/* 00001678 0000173C  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 0000167C 00001740  80 9D 00 08 */	lwz r4, 0x8(r29)
/* 00001680 00001744  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00001684 00001748  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00001688 0000174C  4B FF E9 E5 */	bl strcmp
/* 0000168C 00001750  2C 03 00 00 */	cmpwi r3, 0x0
/* 00001690 00001754  40 82 00 0C */	bne .L_0000169C
/* 00001694 00001758  38 60 00 01 */	li r3, 0x1
/* 00001698 0000175C  48 00 01 70 */	b .L_00001808
.L_0000169C:
/* 0000169C 00001760  80 9D 00 D8 */	lwz r4, 0xd8(r29)
/* 000016A0 00001764  28 04 00 00 */	cmplwi r4, 0x0
/* 000016A4 00001768  41 82 00 14 */	beq .L_000016B8
/* 000016A8 0000176C  7F E3 FB 78 */	mr r3, r31
/* 000016AC 00001770  38 A0 00 01 */	li r5, 0x1
/* 000016B0 00001774  4B FF FC 3D */	bl _hitIsGroupSub
/* 000016B4 00001778  48 00 01 54 */	b .L_00001808
.L_000016B8:
/* 000016B8 0000177C  80 9D 00 DC */	lwz r4, 0xdc(r29)
/* 000016BC 00001780  28 04 00 00 */	cmplwi r4, 0x0
/* 000016C0 00001784  41 82 00 14 */	beq .L_000016D4
/* 000016C4 00001788  7F E3 FB 78 */	mr r3, r31
/* 000016C8 0000178C  38 A0 00 01 */	li r5, 0x1
/* 000016CC 00001790  4B FF FC 21 */	bl _hitIsGroupSub
/* 000016D0 00001794  48 00 01 38 */	b .L_00001808
.L_000016D4:
/* 000016D4 00001798  38 60 00 00 */	li r3, 0x0
/* 000016D8 0000179C  48 00 01 30 */	b .L_00001808
.L_000016DC:
/* 000016DC 000017A0  38 60 00 00 */	li r3, 0x0
/* 000016E0 000017A4  48 00 01 28 */	b .L_00001808
.L_000016E4:
/* 000016E4 000017A8  83 BD 00 DC */	lwz r29, 0xdc(r29)
/* 000016E8 000017AC  28 1D 00 00 */	cmplwi r29, 0x0
/* 000016EC 000017B0  41 82 01 10 */	beq .L_000017FC
/* 000016F0 000017B4  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 000016F4 000017B8  80 9D 00 08 */	lwz r4, 0x8(r29)
/* 000016F8 000017BC  80 63 00 00 */	lwz r3, 0x0(r3)
/* 000016FC 000017C0  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00001700 000017C4  4B FF E9 6D */	bl strcmp
/* 00001704 000017C8  2C 03 00 00 */	cmpwi r3, 0x0
/* 00001708 000017CC  40 82 00 0C */	bne .L_00001714
/* 0000170C 000017D0  38 60 00 01 */	li r3, 0x1
/* 00001710 000017D4  48 00 00 F8 */	b .L_00001808
.L_00001714:
/* 00001714 000017D8  83 DD 00 D8 */	lwz r30, 0xd8(r29)
/* 00001718 000017DC  28 1E 00 00 */	cmplwi r30, 0x0
/* 0000171C 000017E0  41 82 00 68 */	beq .L_00001784
/* 00001720 000017E4  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 00001724 000017E8  80 9E 00 08 */	lwz r4, 0x8(r30)
/* 00001728 000017EC  80 63 00 00 */	lwz r3, 0x0(r3)
/* 0000172C 000017F0  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00001730 000017F4  4B FF E9 3D */	bl strcmp
/* 00001734 000017F8  2C 03 00 00 */	cmpwi r3, 0x0
/* 00001738 000017FC  40 82 00 0C */	bne .L_00001744
/* 0000173C 00001800  38 60 00 01 */	li r3, 0x1
/* 00001740 00001804  48 00 00 C8 */	b .L_00001808
.L_00001744:
/* 00001744 00001808  80 9E 00 D8 */	lwz r4, 0xd8(r30)
/* 00001748 0000180C  28 04 00 00 */	cmplwi r4, 0x0
/* 0000174C 00001810  41 82 00 14 */	beq .L_00001760
/* 00001750 00001814  7F E3 FB 78 */	mr r3, r31
/* 00001754 00001818  38 A0 00 01 */	li r5, 0x1
/* 00001758 0000181C  4B FF FB 95 */	bl _hitIsGroupSub
/* 0000175C 00001820  48 00 00 AC */	b .L_00001808
.L_00001760:
/* 00001760 00001824  80 9E 00 DC */	lwz r4, 0xdc(r30)
/* 00001764 00001828  28 04 00 00 */	cmplwi r4, 0x0
/* 00001768 0000182C  41 82 00 14 */	beq .L_0000177C
/* 0000176C 00001830  7F E3 FB 78 */	mr r3, r31
/* 00001770 00001834  38 A0 00 01 */	li r5, 0x1
/* 00001774 00001838  4B FF FB 79 */	bl _hitIsGroupSub
/* 00001778 0000183C  48 00 00 90 */	b .L_00001808
.L_0000177C:
/* 0000177C 00001840  38 60 00 00 */	li r3, 0x0
/* 00001780 00001844  48 00 00 88 */	b .L_00001808
.L_00001784:
/* 00001784 00001848  83 BD 00 DC */	lwz r29, 0xdc(r29)
/* 00001788 0000184C  28 1D 00 00 */	cmplwi r29, 0x0
/* 0000178C 00001850  41 82 00 68 */	beq .L_000017F4
/* 00001790 00001854  80 7F 00 08 */	lwz r3, 0x8(r31)
/* 00001794 00001858  80 9D 00 08 */	lwz r4, 0x8(r29)
/* 00001798 0000185C  80 63 00 00 */	lwz r3, 0x0(r3)
/* 0000179C 00001860  80 84 00 00 */	lwz r4, 0x0(r4)
/* 000017A0 00001864  4B FF E8 CD */	bl strcmp
/* 000017A4 00001868  2C 03 00 00 */	cmpwi r3, 0x0
/* 000017A8 0000186C  40 82 00 0C */	bne .L_000017B4
/* 000017AC 00001870  38 60 00 01 */	li r3, 0x1
/* 000017B0 00001874  48 00 00 58 */	b .L_00001808
.L_000017B4:
/* 000017B4 00001878  80 9D 00 D8 */	lwz r4, 0xd8(r29)
/* 000017B8 0000187C  28 04 00 00 */	cmplwi r4, 0x0
/* 000017BC 00001880  41 82 00 14 */	beq .L_000017D0
/* 000017C0 00001884  7F E3 FB 78 */	mr r3, r31
/* 000017C4 00001888  38 A0 00 01 */	li r5, 0x1
/* 000017C8 0000188C  4B FF FB 25 */	bl _hitIsGroupSub
/* 000017CC 00001890  48 00 00 3C */	b .L_00001808
.L_000017D0:
/* 000017D0 00001894  80 9D 00 DC */	lwz r4, 0xdc(r29)
/* 000017D4 00001898  28 04 00 00 */	cmplwi r4, 0x0
/* 000017D8 0000189C  41 82 00 14 */	beq .L_000017EC
/* 000017DC 000018A0  7F E3 FB 78 */	mr r3, r31
/* 000017E0 000018A4  38 A0 00 01 */	li r5, 0x1
/* 000017E4 000018A8  4B FF FB 09 */	bl _hitIsGroupSub
/* 000017E8 000018AC  48 00 00 20 */	b .L_00001808
.L_000017EC:
/* 000017EC 000018B0  38 60 00 00 */	li r3, 0x0
/* 000017F0 000018B4  48 00 00 18 */	b .L_00001808
.L_000017F4:
/* 000017F4 000018B8  38 60 00 00 */	li r3, 0x0
/* 000017F8 000018BC  48 00 00 10 */	b .L_00001808
.L_000017FC:
/* 000017FC 000018C0  38 60 00 00 */	li r3, 0x0
/* 00001800 000018C4  48 00 00 08 */	b .L_00001808
.L_00001804:
/* 00001804 000018C8  38 60 00 00 */	li r3, 0x0
.L_00001808:
/* 00001808 000018CC  BB 81 00 10 */	lmw r28, 0x10(r1)
/* 0000180C 000018D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00001810 000018D4  7C 08 03 A6 */	mtlr r0
/* 00001814 000018D8  38 21 00 20 */	addi r1, r1, 0x20
/* 00001818 000018DC  4E 80 00 20 */	blr
.endfn _hitIsGroupSub

# 0x000013F8..0x00001B18 | size: 0x720
.rodata
.balign 8

# .rodata:0x0 | 0x13F8 | size: 0x9
.obj str_c_boro_k_dou_00005088, local
	.string "c_boro_k"
.endobj str_c_boro_k_dou_00005088

# .rodata:0x9 | 0x1401 | size: 0x3
.obj gap_03_00001401_rodata, global
.hidden gap_03_00001401_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001401_rodata

# .rodata:0xC | 0x1404 | size: 0x4
.obj str_S_1_dou_00005094, local
	.string "S_1"
.endobj str_S_1_dou_00005094

# .rodata:0x10 | 0x1408 | size: 0x4
.obj str_R_1_dou_00005098, local
	.string "R_1"
.endobj str_R_1_dou_00005098

# .rodata:0x14 | 0x140C | size: 0x3
.obj str_me_dou_0000509c, local
	.string "me"
.endobj str_me_dou_0000509c

# .rodata:0x17 | 0x140F | size: 0x1
.obj gap_03_0000140F_rodata, global
.hidden gap_03_0000140F_rodata
	.byte 0x00
.endobj gap_03_0000140F_rodata

# .rodata:0x18 | 0x1410 | size: 0xF
.obj str_stg5_dou_16_09_dou_000050a0, local
	.string "stg5_dou_16_09"
.endobj str_stg5_dou_16_09_dou_000050a0

# .rodata:0x27 | 0x141F | size: 0x1
.obj gap_03_0000141F_rodata, global
.hidden gap_03_0000141F_rodata
	.byte 0x00
.endobj gap_03_0000141F_rodata

# .rodata:0x28 | 0x1420 | size: 0xF
.obj str_stg5_dou_17_09_dou_000050b0, local
	.string "stg5_dou_17_09"
.endobj str_stg5_dou_17_09_dou_000050b0

# .rodata:0x37 | 0x142F | size: 0x1
.obj gap_03_0000142F_rodata, global
.hidden gap_03_0000142F_rodata
	.byte 0x00
.endobj gap_03_0000142F_rodata

# .rodata:0x38 | 0x1430 | size: 0xF
.obj str_stg5_dou_16_07_dou_000050c0, local
	.string "stg5_dou_16_07"
.endobj str_stg5_dou_16_07_dou_000050c0

# .rodata:0x47 | 0x143F | size: 0x1
.obj gap_03_0000143F_rodata, global
.hidden gap_03_0000143F_rodata
	.byte 0x00
.endobj gap_03_0000143F_rodata

# .rodata:0x48 | 0x1440 | size: 0xF
.obj str_stg5_dou_17_07_dou_000050d0, local
	.string "stg5_dou_17_07"
.endobj str_stg5_dou_17_07_dou_000050d0

# .rodata:0x57 | 0x144F | size: 0x1
.obj gap_03_0000144F_rodata, global
.hidden gap_03_0000144F_rodata
	.byte 0x00
.endobj gap_03_0000144F_rodata

# .rodata:0x58 | 0x1450 | size: 0xF
.obj str_stg5_dou_16_08_dou_000050e0, local
	.string "stg5_dou_16_08"
.endobj str_stg5_dou_16_08_dou_000050e0

# .rodata:0x67 | 0x145F | size: 0x1
.obj gap_03_0000145F_rodata, global
.hidden gap_03_0000145F_rodata
	.byte 0x00
.endobj gap_03_0000145F_rodata

# .rodata:0x68 | 0x1460 | size: 0xF
.obj str_stg5_dou_17_08_dou_000050f0, local
	.string "stg5_dou_17_08"
.endobj str_stg5_dou_17_08_dou_000050f0

# .rodata:0x77 | 0x146F | size: 0x1
.obj gap_03_0000146F_rodata, global
.hidden gap_03_0000146F_rodata
	.byte 0x00
.endobj gap_03_0000146F_rodata

# .rodata:0x78 | 0x1470 | size: 0xF
.obj str_stg5_dou_16_10_dou_00005100, local
	.string "stg5_dou_16_10"
.endobj str_stg5_dou_16_10_dou_00005100

# .rodata:0x87 | 0x147F | size: 0x1
.obj gap_03_0000147F_rodata, global
.hidden gap_03_0000147F_rodata
	.byte 0x00
.endobj gap_03_0000147F_rodata

# .rodata:0x88 | 0x1480 | size: 0x7
.obj str_モニー_dou_00005110, local
	.4byte 0x8382836A
	.byte 0x81, 0x5B, 0x00
.endobj str_モニー_dou_00005110

# .rodata:0x8F | 0x1487 | size: 0x1
.obj gap_03_00001487_rodata, global
.hidden gap_03_00001487_rodata
	.byte 0x00
.endobj gap_03_00001487_rodata

# .rodata:0x90 | 0x1488 | size: 0x9
.obj str_ピートン_dou_00005118, local
	.4byte 0x8373815B
	.4byte 0x83678393
	.byte 0x00
.endobj str_ピートン_dou_00005118

# .rodata:0x99 | 0x1491 | size: 0x3
.obj gap_03_00001491_rodata, global
.hidden gap_03_00001491_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001491_rodata

# .rodata:0x9C | 0x1494 | size: 0xF
.obj str_stg5_dou_16_11_dou_00005124, local
	.string "stg5_dou_16_11"
.endobj str_stg5_dou_16_11_dou_00005124

# .rodata:0xAB | 0x14A3 | size: 0x1
.obj gap_03_000014A3_rodata, global
.hidden gap_03_000014A3_rodata
	.byte 0x00
.endobj gap_03_000014A3_rodata

# .rodata:0xAC | 0x14A4 | size: 0xF
.obj str_stg5_dou_17_10_dou_00005134, local
	.string "stg5_dou_17_10"
.endobj str_stg5_dou_17_10_dou_00005134

# .rodata:0xBB | 0x14B3 | size: 0x1
.obj gap_03_000014B3_rodata, global
.hidden gap_03_000014B3_rodata
	.byte 0x00
.endobj gap_03_000014B3_rodata

# .rodata:0xBC | 0x14B4 | size: 0xF
.obj str_stg5_dou_17_11_dou_00005144, local
	.string "stg5_dou_17_11"
.endobj str_stg5_dou_17_11_dou_00005144

# .rodata:0xCB | 0x14C3 | size: 0x1
.obj gap_03_000014C3_rodata, global
.hidden gap_03_000014C3_rodata
	.byte 0x00
.endobj gap_03_000014C3_rodata

# .rodata:0xCC | 0x14C4 | size: 0x6
.obj str_mario_dou_00005154, local
	.string "mario"
.endobj str_mario_dou_00005154

# .rodata:0xD2 | 0x14CA | size: 0x2
.obj gap_03_000014CA_rodata, global
.hidden gap_03_000014CA_rodata
	.2byte 0x0000
.endobj gap_03_000014CA_rodata

# .rodata:0xD4 | 0x14CC | size: 0x6
.obj str_水夫C_dou_0000515c, local
	.4byte 0x90859576
	.2byte 0x4300
.endobj str_水夫C_dou_0000515c

# .rodata:0xDA | 0x14D2 | size: 0x2
.obj gap_03_000014D2_rodata, global
.hidden gap_03_000014D2_rodata
	.2byte 0x0000
.endobj gap_03_000014D2_rodata

# .rodata:0xDC | 0x14D4 | size: 0x6
.obj str_水夫D_dou_00005164, local
	.4byte 0x90859576
	.2byte 0x4400
.endobj str_水夫D_dou_00005164

# .rodata:0xE2 | 0x14DA | size: 0x2
.obj gap_03_000014DA_rodata, global
.hidden gap_03_000014DA_rodata
	.2byte 0x0000
.endobj gap_03_000014DA_rodata

# .rodata:0xE4 | 0x14DC | size: 0x6
.obj str_水夫E_dou_0000516c, local
	.4byte 0x90859576
	.2byte 0x4500
.endobj str_水夫E_dou_0000516c

# .rodata:0xEA | 0x14E2 | size: 0x2
.obj gap_03_000014E2_rodata, global
.hidden gap_03_000014E2_rodata
	.2byte 0x0000
.endobj gap_03_000014E2_rodata

# .rodata:0xEC | 0x14E4 | size: 0x7
.obj str_w_bero_dou_00005174, local
	.string "w_bero"
.endobj str_w_bero_dou_00005174

# .rodata:0xF3 | 0x14EB | size: 0x1
.obj gap_03_000014EB_rodata, global
.hidden gap_03_000014EB_rodata
	.byte 0x00
.endobj gap_03_000014EB_rodata

# .rodata:0xF4 | 0x14EC | size: 0x7
.obj str_dou_10_dou_0000517c, local
	.string "dou_10"
.endobj str_dou_10_dou_0000517c

# .rodata:0xFB | 0x14F3 | size: 0x1
.obj gap_03_000014F3_rodata, global
.hidden gap_03_000014F3_rodata
	.byte 0x00
.endobj gap_03_000014F3_rodata

# .rodata:0xFC | 0x14F4 | size: 0x7
.obj str_e_bero_dou_00005184, local
	.string "e_bero"
.endobj str_e_bero_dou_00005184

# .rodata:0x103 | 0x14FB | size: 0x1
.obj gap_03_000014FB_rodata, global
.hidden gap_03_000014FB_rodata
	.byte 0x00
.endobj gap_03_000014FB_rodata

# .rodata:0x104 | 0x14FC | size: 0x7
.obj str_muj_10_dou_0000518c, local
	.string "muj_10"
.endobj str_muj_10_dou_0000518c

# .rodata:0x10B | 0x1503 | size: 0x1
.obj gap_03_00001503_rodata, global
.hidden gap_03_00001503_rodata
	.byte 0x00
.endobj gap_03_00001503_rodata

# .rodata:0x10C | 0x1504 | size: 0x7
.obj str_n_bero_dou_00005194, local
	.string "n_bero"
.endobj str_n_bero_dou_00005194

# .rodata:0x113 | 0x150B | size: 0x1
.obj gap_03_0000150B_rodata, global
.hidden gap_03_0000150B_rodata
	.byte 0x00
.endobj gap_03_0000150B_rodata

# .rodata:0x114 | 0x150C | size: 0x7
.obj str_muj_00_dou_0000519c, local
	.string "muj_00"
.endobj str_muj_00_dou_0000519c

# .rodata:0x11B | 0x1513 | size: 0x1
.obj gap_03_00001513_rodata, global
.hidden gap_03_00001513_rodata
	.byte 0x00
.endobj gap_03_00001513_rodata

# .rodata:0x11C | 0x1514 | size: 0xA
.obj str_n_bero_02_dou_000051a4, local
	.string "n_bero_02"
.endobj str_n_bero_02_dou_000051a4

# .rodata:0x126 | 0x151E | size: 0x2
.obj gap_03_0000151E_rodata, global
.hidden gap_03_0000151E_rodata
	.2byte 0x0000
.endobj gap_03_0000151E_rodata

# .rodata:0x128 | 0x1520 | size: 0x8
.obj str_dokan_1_dou_000051b0, local
	.string "dokan_1"
.endobj str_dokan_1_dou_000051b0

# .rodata:0x130 | 0x1528 | size: 0x8
.obj str_dokan_4_dou_000051b8, local
	.string "dokan_4"
.endobj str_dokan_4_dou_000051b8

# .rodata:0x138 | 0x1530 | size: 0x8
.obj str_dokan_2_dou_000051c0, local
	.string "dokan_2"
.endobj str_dokan_2_dou_000051c0

# .rodata:0x140 | 0x1538 | size: 0x8
.obj str_dokan_6_dou_000051c8, local
	.string "dokan_6"
.endobj str_dokan_6_dou_000051c8

# .rodata:0x148 | 0x1540 | size: 0x8
.obj str_dokan_3_dou_000051d0, local
	.string "dokan_3"
.endobj str_dokan_3_dou_000051d0

# .rodata:0x150 | 0x1548 | size: 0x8
.obj str_dokan_5_dou_000051d8, local
	.string "dokan_5"
.endobj str_dokan_5_dou_000051d8

# .rodata:0x158 | 0x1550 | size: 0x8
.obj str_dokan_7_dou_000051e0, local
	.string "dokan_7"
.endobj str_dokan_7_dou_000051e0

# .rodata:0x160 | 0x1558 | size: 0x8
.obj str_dokan_8_dou_000051e8, local
	.string "dokan_8"
.endobj str_dokan_8_dou_000051e8

# .rodata:0x168 | 0x1560 | size: 0xC
.obj str_stg5_dou_14_dou_000051f0, local
	.string "stg5_dou_14"
.endobj str_stg5_dou_14_dou_000051f0

# .rodata:0x174 | 0x156C | size: 0xC
.obj str_stg5_dou_15_dou_000051fc, local
	.string "stg5_dou_15"
.endobj str_stg5_dou_15_dou_000051fc

# .rodata:0x180 | 0x1578 | size: 0x19
.obj str_SFX_STG5_KINOPIO_MOV_dou_00005208, local
	.string "SFX_STG5_KINOPIO_MOVE1_2"
.endobj str_SFX_STG5_KINOPIO_MOV_dou_00005208

# .rodata:0x199 | 0x1591 | size: 0x3
.obj gap_03_00001591_rodata, global
.hidden gap_03_00001591_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001591_rodata

# .rodata:0x19C | 0x1594 | size: 0xB
.obj str_fune_atari_dou_00005224, local
	.string "fune_atari"
.endobj str_fune_atari_dou_00005224

# .rodata:0x1A7 | 0x159F | size: 0x1
.obj gap_03_0000159F_rodata, global
.hidden gap_03_0000159F_rodata
	.byte 0x00
.endobj gap_03_0000159F_rodata

# .rodata:0x1A8 | 0x15A0 | size: 0x14
.obj str_BGM_FF_ENV_SUCCESS1_dou_00005230, local
	.string "BGM_FF_ENV_SUCCESS1"
.endobj str_BGM_FF_ENV_SUCCESS1_dou_00005230

# .rodata:0x1BC | 0x15B4 | size: 0x18
.obj str_SFX_STG5_BARREL_APPE_dou_00005244, local
	.string "SFX_STG5_BARREL_APPEAR1"
.endobj str_SFX_STG5_BARREL_APPE_dou_00005244

# .rodata:0x1D4 | 0x15CC | size: 0x1
.obj zero_dou_0000525c, local
	.byte 0x00
.endobj zero_dou_0000525c

# .rodata:0x1D5 | 0x15CD | size: 0x3
.obj gap_03_000015CD_rodata, global
.hidden gap_03_000015CD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000015CD_rodata

# .rodata:0x1D8 | 0x15D0 | size: 0xB
.obj str_ripple_n64_dou_00005260, local
	.string "ripple_n64"
.endobj str_ripple_n64_dou_00005260

# .rodata:0x1E3 | 0x15DB | size: 0x1
.obj gap_03_000015DB_rodata, global
.hidden gap_03_000015DB_rodata
	.byte 0x00
.endobj gap_03_000015DB_rodata

# .rodata:0x1E4 | 0x15DC | size: 0xB
.obj str_S_taru_n01_dou_0000526c, local
	.string "S_taru_n01"
.endobj str_S_taru_n01_dou_0000526c

# .rodata:0x1EF | 0x15E7 | size: 0x1
.obj gap_03_000015E7_rodata, global
.hidden gap_03_000015E7_rodata
	.byte 0x00
.endobj gap_03_000015E7_rodata

# .rodata:0x1F0 | 0x15E8 | size: 0xB
.obj str_A_taru_n01_dou_00005278, local
	.string "A_taru_n01"
.endobj str_A_taru_n01_dou_00005278

# .rodata:0x1FB | 0x15F3 | size: 0x1
.obj gap_03_000015F3_rodata, global
.hidden gap_03_000015F3_rodata
	.byte 0x00
.endobj gap_03_000015F3_rodata

# .rodata:0x1FC | 0x15F4 | size: 0xB
.obj str_S_taru_n02_dou_00005284, local
	.string "S_taru_n02"
.endobj str_S_taru_n02_dou_00005284

# .rodata:0x207 | 0x15FF | size: 0x1
.obj gap_03_000015FF_rodata, global
.hidden gap_03_000015FF_rodata
	.byte 0x00
.endobj gap_03_000015FF_rodata

# .rodata:0x208 | 0x1600 | size: 0xB
.obj str_A_taru_n02_dou_00005290, local
	.string "A_taru_n02"
.endobj str_A_taru_n02_dou_00005290

# .rodata:0x213 | 0x160B | size: 0x1
.obj gap_03_0000160B_rodata, global
.hidden gap_03_0000160B_rodata
	.byte 0x00
.endobj gap_03_0000160B_rodata

# .rodata:0x214 | 0x160C | size: 0xB
.obj str_S_taru_n03_dou_0000529c, local
	.string "S_taru_n03"
.endobj str_S_taru_n03_dou_0000529c

# .rodata:0x21F | 0x1617 | size: 0x1
.obj gap_03_00001617_rodata, global
.hidden gap_03_00001617_rodata
	.byte 0x00
.endobj gap_03_00001617_rodata

# .rodata:0x220 | 0x1618 | size: 0xB
.obj str_A_taru_n03_dou_000052a8, local
	.string "A_taru_n03"
.endobj str_A_taru_n03_dou_000052a8

# .rodata:0x22B | 0x1623 | size: 0x1
.obj gap_03_00001623_rodata, global
.hidden gap_03_00001623_rodata
	.byte 0x00
.endobj gap_03_00001623_rodata

# .rodata:0x22C | 0x1624 | size: 0xB
.obj str_S_taru_n04_dou_000052b4, local
	.string "S_taru_n04"
.endobj str_S_taru_n04_dou_000052b4

# .rodata:0x237 | 0x162F | size: 0x1
.obj gap_03_0000162F_rodata, global
.hidden gap_03_0000162F_rodata
	.byte 0x00
.endobj gap_03_0000162F_rodata

# .rodata:0x238 | 0x1630 | size: 0xB
.obj str_A_taru_n04_dou_000052c0, local
	.string "A_taru_n04"
.endobj str_A_taru_n04_dou_000052c0

# .rodata:0x243 | 0x163B | size: 0x1
.obj gap_03_0000163B_rodata, global
.hidden gap_03_0000163B_rodata
	.byte 0x00
.endobj gap_03_0000163B_rodata

# .rodata:0x244 | 0x163C | size: 0xF
.obj str_stg5_dou_13_01_dou_000052cc, local
	.string "stg5_dou_13_01"
.endobj str_stg5_dou_13_01_dou_000052cc

# .rodata:0x253 | 0x164B | size: 0x1
.obj gap_03_0000164B_rodata, global
.hidden gap_03_0000164B_rodata
	.byte 0x00
.endobj gap_03_0000164B_rodata

# .rodata:0x254 | 0x164C | size: 0xF
.obj str_stg5_dou_13_03_dou_000052dc, local
	.string "stg5_dou_13_03"
.endobj str_stg5_dou_13_03_dou_000052dc

# .rodata:0x263 | 0x165B | size: 0x1
.obj gap_03_0000165B_rodata, global
.hidden gap_03_0000165B_rodata
	.byte 0x00
.endobj gap_03_0000165B_rodata

# .rodata:0x264 | 0x165C | size: 0xF
.obj str_stg5_dou_13_05_dou_000052ec, local
	.string "stg5_dou_13_05"
.endobj str_stg5_dou_13_05_dou_000052ec

# .rodata:0x273 | 0x166B | size: 0x1
.obj gap_03_0000166B_rodata, global
.hidden gap_03_0000166B_rodata
	.byte 0x00
.endobj gap_03_0000166B_rodata

# .rodata:0x274 | 0x166C | size: 0xF
.obj str_stg5_dou_13_02_dou_000052fc, local
	.string "stg5_dou_13_02"
.endobj str_stg5_dou_13_02_dou_000052fc

# .rodata:0x283 | 0x167B | size: 0x1
.obj gap_03_0000167B_rodata, global
.hidden gap_03_0000167B_rodata
	.byte 0x00
.endobj gap_03_0000167B_rodata

# .rodata:0x284 | 0x167C | size: 0xF
.obj str_stg5_dou_13_06_dou_0000530c, local
	.string "stg5_dou_13_06"
.endobj str_stg5_dou_13_06_dou_0000530c

# .rodata:0x293 | 0x168B | size: 0x1
.obj gap_03_0000168B_rodata, global
.hidden gap_03_0000168B_rodata
	.byte 0x00
.endobj gap_03_0000168B_rodata

# .rodata:0x294 | 0x168C | size: 0xF
.obj str_stg5_dou_13_04_dou_0000531c, local
	.string "stg5_dou_13_04"
.endobj str_stg5_dou_13_04_dou_0000531c

# .rodata:0x2A3 | 0x169B | size: 0x1
.obj gap_03_0000169B_rodata, global
.hidden gap_03_0000169B_rodata
	.byte 0x00
.endobj gap_03_0000169B_rodata

# .rodata:0x2A4 | 0x169C | size: 0xC
.obj str_stg5_dou_11_dou_0000532c, local
	.string "stg5_dou_11"
.endobj str_stg5_dou_11_dou_0000532c

# .rodata:0x2B0 | 0x16A8 | size: 0x9
.obj str_small_00_dou_00005338, local
	.string "small_00"
.endobj str_small_00_dou_00005338

# .rodata:0x2B9 | 0x16B1 | size: 0x3
.obj gap_03_000016B1_rodata, global
.hidden gap_03_000016B1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000016B1_rodata

# .rodata:0x2BC | 0x16B4 | size: 0x9
.obj str_small_01_dou_00005344, local
	.string "small_01"
.endobj str_small_01_dou_00005344

# .rodata:0x2C5 | 0x16BD | size: 0x3
.obj gap_03_000016BD_rodata, global
.hidden gap_03_000016BD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000016BD_rodata

# .rodata:0x2C8 | 0x16C0 | size: 0x9
.obj str_small_02_dou_00005350, local
	.string "small_02"
.endobj str_small_02_dou_00005350

# .rodata:0x2D1 | 0x16C9 | size: 0x3
.obj gap_03_000016C9_rodata, global
.hidden gap_03_000016C9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000016C9_rodata

# .rodata:0x2D4 | 0x16CC | size: 0x9
.obj str_small_03_dou_0000535c, local
	.string "small_03"
.endobj str_small_03_dou_0000535c

# .rodata:0x2DD | 0x16D5 | size: 0x3
.obj gap_03_000016D5_rodata, global
.hidden gap_03_000016D5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000016D5_rodata

# .rodata:0x2E0 | 0x16D8 | size: 0x9
.obj str_small_04_dou_00005368, local
	.string "small_04"
.endobj str_small_04_dou_00005368

# .rodata:0x2E9 | 0x16E1 | size: 0x3
.obj gap_03_000016E1_rodata, global
.hidden gap_03_000016E1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000016E1_rodata

# .rodata:0x2EC | 0x16E4 | size: 0x9
.obj str_small_05_dou_00005374, local
	.string "small_05"
.endobj str_small_05_dou_00005374

# .rodata:0x2F5 | 0x16ED | size: 0x3
.obj gap_03_000016ED_rodata, global
.hidden gap_03_000016ED_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000016ED_rodata

# .rodata:0x2F8 | 0x16F0 | size: 0xC
.obj str_stg5_dou_13_dou_00005380, local
	.string "stg5_dou_13"
.endobj str_stg5_dou_13_dou_00005380

# .rodata:0x304 | 0x16FC | size: 0x7
.obj str_mod_01_dou_0000538c, local
	.string "mod_01"
.endobj str_mod_01_dou_0000538c

# .rodata:0x30B | 0x1703 | size: 0x1
.obj gap_03_00001703_rodata, global
.hidden gap_03_00001703_rodata
	.byte 0x00
.endobj gap_03_00001703_rodata

# .rodata:0x30C | 0x1704 | size: 0xC
.obj str_stg5_dou_16_dou_00005394, local
	.string "stg5_dou_16"
.endobj str_stg5_dou_16_dou_00005394

# .rodata:0x318 | 0x1710 | size: 0xF
.obj str_stg5_dou_16_01_dou_000053a0, local
	.string "stg5_dou_16_01"
.endobj str_stg5_dou_16_01_dou_000053a0

# .rodata:0x327 | 0x171F | size: 0x1
.obj gap_03_0000171F_rodata, global
.hidden gap_03_0000171F_rodata
	.byte 0x00
.endobj gap_03_0000171F_rodata

# .rodata:0x328 | 0x1720 | size: 0xF
.obj str_stg5_dou_16_02_dou_000053b0, local
	.string "stg5_dou_16_02"
.endobj str_stg5_dou_16_02_dou_000053b0

# .rodata:0x337 | 0x172F | size: 0x1
.obj gap_03_0000172F_rodata, global
.hidden gap_03_0000172F_rodata
	.byte 0x00
.endobj gap_03_0000172F_rodata

# .rodata:0x338 | 0x1730 | size: 0xF
.obj str_stg5_dou_16_03_dou_000053c0, local
	.string "stg5_dou_16_03"
.endobj str_stg5_dou_16_03_dou_000053c0

# .rodata:0x347 | 0x173F | size: 0x1
.obj gap_03_0000173F_rodata, global
.hidden gap_03_0000173F_rodata
	.byte 0x00
.endobj gap_03_0000173F_rodata

# .rodata:0x348 | 0x1740 | size: 0xF
.obj str_stg5_dou_16_04_dou_000053d0, local
	.string "stg5_dou_16_04"
.endobj str_stg5_dou_16_04_dou_000053d0

# .rodata:0x357 | 0x174F | size: 0x1
.obj gap_03_0000174F_rodata, global
.hidden gap_03_0000174F_rodata
	.byte 0x00
.endobj gap_03_0000174F_rodata

# .rodata:0x358 | 0x1750 | size: 0x6
.obj str_M_I_2_dou_000053e0, local
	.string "M_I_2"
.endobj str_M_I_2_dou_000053e0

# .rodata:0x35E | 0x1756 | size: 0x2
.obj gap_03_00001756_rodata, global
.hidden gap_03_00001756_rodata
	.2byte 0x0000
.endobj gap_03_00001756_rodata

# .rodata:0x360 | 0x1758 | size: 0xF
.obj str_stg5_dou_16_05_dou_000053e8, local
	.string "stg5_dou_16_05"
.endobj str_stg5_dou_16_05_dou_000053e8

# .rodata:0x36F | 0x1767 | size: 0x1
.obj gap_03_00001767_rodata, global
.hidden gap_03_00001767_rodata
	.byte 0x00
.endobj gap_03_00001767_rodata

# .rodata:0x370 | 0x1768 | size: 0x14
.obj str_SFX_VOICE_MARIO_NO1_dou_000053f8, local
	.string "SFX_VOICE_MARIO_NO1"
.endobj str_SFX_VOICE_MARIO_NO1_dou_000053f8

# .rodata:0x384 | 0x177C | size: 0x6
.obj str_M_N_B_dou_0000540c, local
	.string "M_N_B"
.endobj str_M_N_B_dou_0000540c

# .rodata:0x38A | 0x1782 | size: 0x2
.obj gap_03_00001782_rodata, global
.hidden gap_03_00001782_rodata
	.2byte 0x0000
.endobj gap_03_00001782_rodata

# .rodata:0x38C | 0x1784 | size: 0x6
.obj str_M_S_1_dou_00005414, local
	.string "M_S_1"
.endobj str_M_S_1_dou_00005414

# .rodata:0x392 | 0x178A | size: 0x2
.obj gap_03_0000178A_rodata, global
.hidden gap_03_0000178A_rodata
	.2byte 0x0000
.endobj gap_03_0000178A_rodata

# .rodata:0x394 | 0x178C | size: 0x1B
.obj str_SFX_VOICE_MARIO_HAND_dou_0000541c, local
	.string "SFX_VOICE_MARIO_HAND_UP1_3"
.endobj str_SFX_VOICE_MARIO_HAND_dou_0000541c

# .rodata:0x3AF | 0x17A7 | size: 0x1
.obj gap_03_000017A7_rodata, global
.hidden gap_03_000017A7_rodata
	.byte 0x00
.endobj gap_03_000017A7_rodata

# .rodata:0x3B0 | 0x17A8 | size: 0xF
.obj str_stg5_dou_16_06_dou_00005438, local
	.string "stg5_dou_16_06"
.endobj str_stg5_dou_16_06_dou_00005438

# .rodata:0x3BF | 0x17B7 | size: 0x1
.obj gap_03_000017B7_rodata, global
.hidden gap_03_000017B7_rodata
	.byte 0x00
.endobj gap_03_000017B7_rodata

# .rodata:0x3C0 | 0x17B8 | size: 0xF
.obj str_stg5_dou_17_01_dou_00005448, local
	.string "stg5_dou_17_01"
.endobj str_stg5_dou_17_01_dou_00005448

# .rodata:0x3CF | 0x17C7 | size: 0x1
.obj gap_03_000017C7_rodata, global
.hidden gap_03_000017C7_rodata
	.byte 0x00
.endobj gap_03_000017C7_rodata

# .rodata:0x3D0 | 0x17C8 | size: 0x1B
.obj str_SFX_VOICE_MARIO_HAND_dou_00005458, local
	.string "SFX_VOICE_MARIO_HAND_UP1_4"
.endobj str_SFX_VOICE_MARIO_HAND_dou_00005458

# .rodata:0x3EB | 0x17E3 | size: 0x1
.obj gap_03_000017E3_rodata, global
.hidden gap_03_000017E3_rodata
	.byte 0x00
.endobj gap_03_000017E3_rodata

# .rodata:0x3EC | 0x17E4 | size: 0xF
.obj str_stg5_dou_17_02_dou_00005474, local
	.string "stg5_dou_17_02"
.endobj str_stg5_dou_17_02_dou_00005474

# .rodata:0x3FB | 0x17F3 | size: 0x1
.obj gap_03_000017F3_rodata, global
.hidden gap_03_000017F3_rodata
	.byte 0x00
.endobj gap_03_000017F3_rodata

# .rodata:0x3FC | 0x17F4 | size: 0xF
.obj str_stg5_dou_17_03_dou_00005484, local
	.string "stg5_dou_17_03"
.endobj str_stg5_dou_17_03_dou_00005484

# .rodata:0x40B | 0x1803 | size: 0x1
.obj gap_03_00001803_rodata, global
.hidden gap_03_00001803_rodata
	.byte 0x00
.endobj gap_03_00001803_rodata

# .rodata:0x40C | 0x1804 | size: 0xF
.obj str_stg5_dou_17_04_dou_00005494, local
	.string "stg5_dou_17_04"
.endobj str_stg5_dou_17_04_dou_00005494

# .rodata:0x41B | 0x1813 | size: 0x1
.obj gap_03_00001813_rodata, global
.hidden gap_03_00001813_rodata
	.byte 0x00
.endobj gap_03_00001813_rodata

# .rodata:0x41C | 0x1814 | size: 0xF
.obj str_stg5_dou_17_05_dou_000054a4, local
	.string "stg5_dou_17_05"
.endobj str_stg5_dou_17_05_dou_000054a4

# .rodata:0x42B | 0x1823 | size: 0x1
.obj gap_03_00001823_rodata, global
.hidden gap_03_00001823_rodata
	.byte 0x00
.endobj gap_03_00001823_rodata

# .rodata:0x42C | 0x1824 | size: 0xF
.obj str_stg5_dou_17_06_dou_000054b4, local
	.string "stg5_dou_17_06"
.endobj str_stg5_dou_17_06_dou_000054b4

# .rodata:0x43B | 0x1833 | size: 0x1
.obj gap_03_00001833_rodata, global
.hidden gap_03_00001833_rodata
	.byte 0x00
.endobj gap_03_00001833_rodata

# .rodata:0x43C | 0x1834 | size: 0xD
.obj str_S_ana_before_dou_000054c4, local
	.string "S_ana_before"
.endobj str_S_ana_before_dou_000054c4

# .rodata:0x449 | 0x1841 | size: 0x3
.obj gap_03_00001841_rodata, global
.hidden gap_03_00001841_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001841_rodata

# .rodata:0x44C | 0x1844 | size: 0x14
.obj str_SFX_OFF_WALL_BREAK1_dou_000054d4, local
	.string "SFX_OFF_WALL_BREAK1"
.endobj str_SFX_OFF_WALL_BREAK1_dou_000054d4

# .rodata:0x460 | 0x1858 | size: 0xC
.obj str_capture_img_dou_000054e8, local
	.string "capture_img"
.endobj str_capture_img_dou_000054e8

# .rodata:0x46C | 0x1864 | size: 0xF
.obj str_OFF_d_bom_ver2_dou_000054f4, local
	.string "OFF_d_bom_ver2"
.endobj str_OFF_d_bom_ver2_dou_000054f4

# .rodata:0x47B | 0x1873 | size: 0x1
.obj gap_03_00001873_rodata, global
.hidden gap_03_00001873_rodata
	.byte 0x00
.endobj gap_03_00001873_rodata

# .rodata:0x47C | 0x1874 | size: 0xA
.obj str_offscreen_dou_00005504, local
	.string "offscreen"
.endobj str_offscreen_dou_00005504

# .rodata:0x486 | 0x187E | size: 0x2
.obj gap_03_0000187E_rodata, global
.hidden gap_03_0000187E_rodata
	.2byte 0x0000
.endobj gap_03_0000187E_rodata

# .rodata:0x488 | 0x1880 | size: 0x4
.obj str_A_1_dou_00005510, local
	.string "A_1"
.endobj str_A_1_dou_00005510

# .rodata:0x48C | 0x1884 | size: 0xE
.obj str_S_ana_before1_dou_00005514, local
	.string "S_ana_before1"
.endobj str_S_ana_before1_dou_00005514

# .rodata:0x49A | 0x1892 | size: 0x2
.obj gap_03_00001892_rodata, global
.hidden gap_03_00001892_rodata
	.2byte 0x0000
.endobj gap_03_00001892_rodata

# .rodata:0x49C | 0x1894 | size: 0xC
.obj str_S_ana_after_dou_00005524, local
	.string "S_ana_after"
.endobj str_S_ana_after_dou_00005524

# .rodata:0x4A8 | 0x18A0 | size: 0xA
.obj str_S_hibiato_dou_00005530, local
	.string "S_hibiato"
.endobj str_S_hibiato_dou_00005530

# .rodata:0x4B2 | 0x18AA | size: 0x2
.obj gap_03_000018AA_rodata, global
.hidden gap_03_000018AA_rodata
	.2byte 0x0000
.endobj gap_03_000018AA_rodata

# .rodata:0x4B4 | 0x18AC | size: 0xA
.obj str_S_hibimae_dou_0000553c, local
	.string "S_hibimae"
.endobj str_S_hibimae_dou_0000553c

# .rodata:0x4BE | 0x18B6 | size: 0x2
.obj gap_03_000018B6_rodata, global
.hidden gap_03_000018B6_rodata
	.2byte 0x0000
.endobj gap_03_000018B6_rodata

# .rodata:0x4C0 | 0x18B8 | size: 0x17
.obj str_SFX_STG5_KINOPIO_MOV_dou_00005548, local
	.string "SFX_STG5_KINOPIO_MOVE1"
.endobj str_SFX_STG5_KINOPIO_MOV_dou_00005548

# .rodata:0x4D7 | 0x18CF | size: 0x1
.obj gap_03_000018CF_rodata, global
.hidden gap_03_000018CF_rodata
	.byte 0x00
.endobj gap_03_000018CF_rodata

# .rodata:0x4D8 | 0x18D0 | size: 0xF
.obj str_stg5_dou_17_12_dou_00005560, local
	.string "stg5_dou_17_12"
.endobj str_stg5_dou_17_12_dou_00005560

# .rodata:0x4E7 | 0x18DF | size: 0x1
.obj gap_03_000018DF_rodata, global
.hidden gap_03_000018DF_rodata
	.byte 0x00
.endobj gap_03_000018DF_rodata

# .rodata:0x4E8 | 0x18E0 | size: 0xF
.obj str_stg5_dou_17_13_dou_00005570, local
	.string "stg5_dou_17_13"
.endobj str_stg5_dou_17_13_dou_00005570

# .rodata:0x4F7 | 0x18EF | size: 0x1
.obj gap_03_000018EF_rodata, global
.hidden gap_03_000018EF_rodata
	.byte 0x00
.endobj gap_03_000018EF_rodata

# .rodata:0x4F8 | 0x18F0 | size: 0xF
.obj str_stg5_dou_17_14_dou_00005580, local
	.string "stg5_dou_17_14"
.endobj str_stg5_dou_17_14_dou_00005580

# .rodata:0x507 | 0x18FF | size: 0x1
.obj gap_03_000018FF_rodata, global
.hidden gap_03_000018FF_rodata
	.byte 0x00
.endobj gap_03_000018FF_rodata

# .rodata:0x508 | 0x1900 | size: 0x17
.obj str_SFX_STG5_KINOPIO_MOV_dou_00005590, local
	.string "SFX_STG5_KINOPIO_MOVE3"
.endobj str_SFX_STG5_KINOPIO_MOV_dou_00005590

# .rodata:0x51F | 0x1917 | size: 0x1
.obj gap_03_00001917_rodata, global
.hidden gap_03_00001917_rodata
	.byte 0x00
.endobj gap_03_00001917_rodata

# .rodata:0x520 | 0x1918 | size: 0xF
.obj str_stg5_dou_17_15_dou_000055a8, local
	.string "stg5_dou_17_15"
.endobj str_stg5_dou_17_15_dou_000055a8

# .rodata:0x52F | 0x1927 | size: 0x1
.obj gap_03_00001927_rodata, global
.hidden gap_03_00001927_rodata
	.byte 0x00
.endobj gap_03_00001927_rodata

# .rodata:0x530 | 0x1928 | size: 0xB
.obj str_hokori_n64_dou_000055b8, local
	.string "hokori_n64"
.endobj str_hokori_n64_dou_000055b8

# .rodata:0x53B | 0x1933 | size: 0x1
.obj gap_03_00001933_rodata, global
.hidden gap_03_00001933_rodata
	.byte 0x00
.endobj gap_03_00001933_rodata

# .rodata:0x53C | 0x1934 | size: 0xC
.obj vec3_dou_000055c4, local
	.4byte 0x00000000
	.4byte 0x3F800000
	.4byte 0x00000000
.endobj vec3_dou_000055c4

# .rodata:0x548 | 0x1940 | size: 0x9
.obj str_A_h_fune_dou_000055d0, local
	.string "A_h_fune"
.endobj str_A_h_fune_dou_000055d0

# .rodata:0x551 | 0x1949 | size: 0x3
.obj gap_03_00001949_rodata, global
.hidden gap_03_00001949_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001949_rodata

# .rodata:0x554 | 0x194C | size: 0x9
.obj str_S_h_fune_dou_000055dc, local
	.string "S_h_fune"
.endobj str_S_h_fune_dou_000055dc

# .rodata:0x55D | 0x1955 | size: 0x3
.obj gap_03_00001955_rodata, global
.hidden gap_03_00001955_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001955_rodata

# .rodata:0x560 | 0x1958 | size: 0x15
.obj str_SFX_STG5_SHIP_SHAKE1_dou_000055e8, local
	.string "SFX_STG5_SHIP_SHAKE1"
.endobj str_SFX_STG5_SHIP_SHAKE1_dou_000055e8

# .rodata:0x575 | 0x196D | size: 0x3
.obj gap_03_0000196D_rodata, global
.hidden gap_03_0000196D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000196D_rodata

# .rodata:0x578 | 0x1970 | size: 0x14
.obj str_SFX_STG5_BARREL_ON1_dou_00005600, local
	.string "SFX_STG5_BARREL_ON1"
.endobj str_SFX_STG5_BARREL_ON1_dou_00005600

# .rodata:0x58C | 0x1984 | size: 0x7
.obj str_mod_02_dou_00005614, local
	.string "mod_02"
.endobj str_mod_02_dou_00005614

# .rodata:0x593 | 0x198B | size: 0x1
.obj gap_03_0000198B_rodata, global
.hidden gap_03_0000198B_rodata
	.byte 0x00
.endobj gap_03_0000198B_rodata

# .rodata:0x594 | 0x198C | size: 0x7
.obj str_mod_03_dou_0000561c, local
	.string "mod_03"
.endobj str_mod_03_dou_0000561c

# .rodata:0x59B | 0x1993 | size: 0x1
.obj gap_03_00001993_rodata, global
.hidden gap_03_00001993_rodata
	.byte 0x00
.endobj gap_03_00001993_rodata

# .rodata:0x59C | 0x1994 | size: 0x7
.obj str_mod_04_dou_00005624, local
	.string "mod_04"
.endobj str_mod_04_dou_00005624

# .rodata:0x5A3 | 0x199B | size: 0x1
.obj gap_03_0000199B_rodata, global
.hidden gap_03_0000199B_rodata
	.byte 0x00
.endobj gap_03_0000199B_rodata

# .rodata:0x5A4 | 0x199C | size: 0x8
.obj str_mod_010_dou_0000562c, local
	.string "mod_010"
.endobj str_mod_010_dou_0000562c

# .rodata:0x5AC | 0x19A4 | size: 0xF
.obj str_Ship_Change_01_dou_00005634, local
	.string "Ship_Change_01"
.endobj str_Ship_Change_01_dou_00005634

# .rodata:0x5BB | 0x19B3 | size: 0x1
.obj gap_03_000019B3_rodata, global
.hidden gap_03_000019B3_rodata
	.byte 0x00
.endobj gap_03_000019B3_rodata

# .rodata:0x5BC | 0x19B4 | size: 0xF
.obj str_Ship_Change_02_dou_00005644, local
	.string "Ship_Change_02"
.endobj str_Ship_Change_02_dou_00005644

# .rodata:0x5CB | 0x19C3 | size: 0x1
.obj gap_03_000019C3_rodata, global
.hidden gap_03_000019C3_rodata
	.byte 0x00
.endobj gap_03_000019C3_rodata

# .rodata:0x5CC | 0x19C4 | size: 0xF
.obj str_Ship_Change_03_dou_00005654, local
	.string "Ship_Change_03"
.endobj str_Ship_Change_03_dou_00005654

# .rodata:0x5DB | 0x19D3 | size: 0x1
.obj gap_03_000019D3_rodata, global
.hidden gap_03_000019D3_rodata
	.byte 0x00
.endobj gap_03_000019D3_rodata

# .rodata:0x5DC | 0x19D4 | size: 0xF
.obj str_Ship_Change_04_dou_00005664, local
	.string "Ship_Change_04"
.endobj str_Ship_Change_04_dou_00005664

# .rodata:0x5EB | 0x19E3 | size: 0x1
.obj gap_03_000019E3_rodata, global
.hidden gap_03_000019E3_rodata
	.byte 0x00
.endobj gap_03_000019E3_rodata

# .rodata:0x5EC | 0x19E4 | size: 0xC
.obj str_a11_a_usiro_dou_00005674, local
	.string "a11_a_usiro"
.endobj str_a11_a_usiro_dou_00005674

# .rodata:0x5F8 | 0x19F0 | size: 0x11
.obj str_a11_a_kaidana_01_dou_00005680, local
	.string "a11_a_kaidana_01"
.endobj str_a11_a_kaidana_01_dou_00005680

# .rodata:0x609 | 0x1A01 | size: 0x3
.obj gap_03_00001A01_rodata, global
.hidden gap_03_00001A01_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001A01_rodata

# .rodata:0x60C | 0x1A04 | size: 0x11
.obj str_a11_a_kaidanb_01_dou_00005694, local
	.string "a11_a_kaidanb_01"
.endobj str_a11_a_kaidanb_01_dou_00005694

# .rodata:0x61D | 0x1A15 | size: 0x3
.obj gap_03_00001A15_rodata, global
.hidden gap_03_00001A15_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001A15_rodata

# .rodata:0x620 | 0x1A18 | size: 0xE
.obj str_BGM_STG5_DOU1_dou_000056a8, local
	.string "BGM_STG5_DOU1"
.endobj str_BGM_STG5_DOU1_dou_000056a8

# .rodata:0x62E | 0x1A26 | size: 0x2
.obj gap_03_00001A26_rodata, global
.hidden gap_03_00001A26_rodata
	.2byte 0x0000
.endobj gap_03_00001A26_rodata

# .rodata:0x630 | 0x1A28 | size: 0xF
.obj str_ENV_STG5_DOU12_dou_000056b8, local
	.string "ENV_STG5_DOU12"
.endobj str_ENV_STG5_DOU12_dou_000056b8

# .rodata:0x63F | 0x1A37 | size: 0x1
.obj gap_03_00001A37_rodata, global
.hidden gap_03_00001A37_rodata
	.byte 0x00
.endobj gap_03_00001A37_rodata

# .rodata:0x640 | 0x1A38 | size: 0xF
.obj str_モニー（指輪）_dou_000056c8, local
	.4byte 0x8382836A
	.4byte 0x815B8169
	.4byte 0x8E7797D6
	.byte 0x81, 0x6A, 0x00
.endobj str_モニー（指輪）_dou_000056c8

# .rodata:0x64F | 0x1A47 | size: 0x1
.obj gap_03_00001A47_rodata, global
.hidden gap_03_00001A47_rodata
	.byte 0x00
.endobj gap_03_00001A47_rodata

# .rodata:0x650 | 0x1A48 | size: 0x11
.obj str_ピートン（指輪）_dou_000056d8, local
	.4byte 0x8373815B
	.4byte 0x83678393
	.4byte 0x81698E77
	.4byte 0x97D6816A
	.byte 0x00
.endobj str_ピートン（指輪）_dou_000056d8

# .rodata:0x661 | 0x1A59 | size: 0x3
.obj gap_03_00001A59_rodata, global
.hidden gap_03_00001A59_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001A59_rodata

# .rodata:0x664 | 0x1A5C | size: 0x5
.obj str_nami_dou_000056ec, local
	.string "nami"
.endobj str_nami_dou_000056ec

# .rodata:0x669 | 0x1A61 | size: 0x3
.obj gap_03_00001A61_rodata, global
.hidden gap_03_00001A61_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001A61_rodata

# .rodata:0x66C | 0x1A64 | size: 0x5
.obj str_moku_dou_000056f4, local
	.string "moku"
.endobj str_moku_dou_000056f4

# .rodata:0x671 | 0x1A69 | size: 0x3
.obj gap_03_00001A69_rodata, global
.hidden gap_03_00001A69_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001A69_rodata

# .rodata:0x674 | 0x1A6C | size: 0x7
.obj str_mobj01_dou_000056fc, local
	.string "mobj01"
.endobj str_mobj01_dou_000056fc

# .rodata:0x67B | 0x1A73 | size: 0x1
.obj gap_03_00001A73_rodata, global
.hidden gap_03_00001A73_rodata
	.byte 0x00
.endobj gap_03_00001A73_rodata

# .rodata:0x67C | 0x1A74 | size: 0x7
.obj str_mobj02_dou_00005704, local
	.string "mobj02"
.endobj str_mobj02_dou_00005704

# .rodata:0x683 | 0x1A7B | size: 0x1
.obj gap_03_00001A7B_rodata, global
.hidden gap_03_00001A7B_rodata
	.byte 0x00
.endobj gap_03_00001A7B_rodata

# .rodata:0x684 | 0x1A7C | size: 0x8
.obj str_S_hikou_dou_0000570c, local
	.string "S_hikou"
.endobj str_S_hikou_dou_0000570c

# .rodata:0x68C | 0x1A84 | size: 0x8
.obj str_A_hikou_dou_00005714, local
	.string "A_hikou"
.endobj str_A_hikou_dou_00005714

# .rodata:0x694 | 0x1A8C | size: 0x9
.obj str_s11fune1_dou_0000571c, local
	.string "s11fune1"
.endobj str_s11fune1_dou_0000571c

# .rodata:0x69D | 0x1A95 | size: 0x3
.obj gap_03_00001A95_rodata, global
.hidden gap_03_00001A95_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001A95_rodata

# .rodata:0x6A0 | 0x1A98 | size: 0x9
.obj str_S_taru01_dou_00005728, local
	.string "S_taru01"
.endobj str_S_taru01_dou_00005728

# .rodata:0x6A9 | 0x1AA1 | size: 0x3
.obj gap_03_00001AA1_rodata, global
.hidden gap_03_00001AA1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001AA1_rodata

# .rodata:0x6AC | 0x1AA4 | size: 0x9
.obj str_S_taru02_dou_00005734, local
	.string "S_taru02"
.endobj str_S_taru02_dou_00005734

# .rodata:0x6B5 | 0x1AAD | size: 0x3
.obj gap_03_00001AAD_rodata, global
.hidden gap_03_00001AAD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001AAD_rodata

# .rodata:0x6B8 | 0x1AB0 | size: 0x9
.obj str_S_taru03_dou_00005740, local
	.string "S_taru03"
.endobj str_S_taru03_dou_00005740

# .rodata:0x6C1 | 0x1AB9 | size: 0x3
.obj gap_03_00001AB9_rodata, global
.hidden gap_03_00001AB9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001AB9_rodata

# .rodata:0x6C4 | 0x1ABC | size: 0x9
.obj str_S_taru04_dou_0000574c, local
	.string "S_taru04"
.endobj str_S_taru04_dou_0000574c

# .rodata:0x6CD | 0x1AC5 | size: 0x3
.obj gap_03_00001AC5_rodata, global
.hidden gap_03_00001AC5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001AC5_rodata

# .rodata:0x6D0 | 0x1AC8 | size: 0x8
.obj str_S_bin01_dou_00005758, local
	.string "S_bin01"
.endobj str_S_bin01_dou_00005758

# .rodata:0x6D8 | 0x1AD0 | size: 0x8
.obj str_S_bin02_dou_00005760, local
	.string "S_bin02"
.endobj str_S_bin02_dou_00005760

# .rodata:0x6E0 | 0x1AD8 | size: 0x8
.obj str_S_bin03_dou_00005768, local
	.string "S_bin03"
.endobj str_S_bin03_dou_00005768

# .rodata:0x6E8 | 0x1AE0 | size: 0x8
.obj str_S_bin04_dou_00005770, local
	.string "S_bin04"
.endobj str_S_bin04_dou_00005770

# .rodata:0x6F0 | 0x1AE8 | size: 0x11
.obj str_S_Ship_Change_01_dou_00005778, local
	.string "S_Ship_Change_01"
.endobj str_S_Ship_Change_01_dou_00005778

# .rodata:0x701 | 0x1AF9 | size: 0x3
.obj gap_03_00001AF9_rodata, global
.hidden gap_03_00001AF9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001AF9_rodata

# .rodata:0x704 | 0x1AFC | size: 0xD
.obj str_A_ana_before_dou_0000578c, local
	.string "A_ana_before"
.endobj str_A_ana_before_dou_0000578c
	.byte 0x00, 0x00, 0x00

# .rodata:0x714 | 0x1B0C | size: 0x4
.obj zero_dou_0000579c, local
	.float 0
.endobj zero_dou_0000579c

# .rodata:0x718 | 0x1B10 | size: 0x4
.obj float_6p2832_dou_000057a0, local
	.float 6.2831855
.endobj float_6p2832_dou_000057a0

# .rodata:0x71C | 0x1B14 | size: 0x4
.obj float_360_dou_000057a4, local
	.float 360
.endobj float_360_dou_000057a4

# 0x00007FE0..0x0000E888 | size: 0x68A8
.data
.balign 8

# .data:0x0 | 0x7FE0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x7FE8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x7FEC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x7FF0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x7FF4 | size: 0x4
.obj gap_04_00007FF4_data, global
.hidden gap_04_00007FF4_data
	.4byte 0x00000000
.endobj gap_04_00007FF4_data

# .data:0x18 | 0x7FF8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x8000 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x8004 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x8008 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x8010 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x8014 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x8018 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x801C | size: 0x4
.obj gap_04_0000801C_data, global
.hidden gap_04_0000801C_data
	.4byte 0x00000000
.endobj gap_04_0000801C_data

# .data:0x40 | 0x8020 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x8028 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x802C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x8030 | size: 0x174
.obj ext_entry_data, local
	.4byte str_c_boro_k_dou_00005088
	.4byte str_S_1_dou_00005094
	.4byte 0x00000000
	.4byte str_c_boro_k_dou_00005088
	.4byte str_S_1_dou_00005094
	.4byte 0x40000000
	.4byte str_c_boro_k_dou_00005088
	.4byte str_S_1_dou_00005094
	.4byte 0x40800000
	.4byte str_c_boro_k_dou_00005088
	.4byte str_S_1_dou_00005094
	.4byte 0x40C00000
	.4byte str_c_boro_k_dou_00005088
	.4byte str_S_1_dou_00005094
	.4byte 0x41000000
	.4byte str_c_boro_k_dou_00005088
	.4byte str_S_1_dou_00005094
	.4byte 0x41200000
	.4byte str_c_boro_k_dou_00005088
	.4byte str_S_1_dou_00005094
	.4byte 0x41400000
	.4byte str_c_boro_k_dou_00005088
	.4byte str_S_1_dou_00005094
	.4byte 0x41600000
	.4byte str_c_boro_k_dou_00005088
	.4byte str_S_1_dou_00005094
	.4byte 0x41800000
	.4byte str_c_boro_k_dou_00005088
	.4byte str_S_1_dou_00005094
	.4byte 0x41900000
	.4byte str_c_boro_k_dou_00005088
	.4byte str_S_1_dou_00005094
	.4byte 0x41A00000
	.4byte str_c_boro_k_dou_00005088
	.4byte str_S_1_dou_00005094
	.4byte 0x41B00000
	.4byte str_c_boro_k_dou_00005088
	.4byte str_S_1_dou_00005094
	.4byte 0x41C00000
	.4byte str_c_boro_k_dou_00005088
	.4byte str_S_1_dou_00005094
	.4byte 0x41D00000
	.4byte str_c_boro_k_dou_00005088
	.4byte str_S_1_dou_00005094
	.4byte 0x41E00000
	.4byte str_c_boro_k_dou_00005088
	.4byte str_S_1_dou_00005094
	.4byte 0x41F00000
	.4byte str_c_boro_k_dou_00005088
	.4byte str_S_1_dou_00005094
	.4byte 0x42000000
	.4byte str_c_boro_k_dou_00005088
	.4byte str_S_1_dou_00005094
	.4byte 0x42080000
	.4byte str_c_boro_k_dou_00005088
	.4byte str_S_1_dou_00005094
	.4byte 0x42100000
	.4byte str_c_boro_k_dou_00005088
	.4byte str_S_1_dou_00005094
	.4byte 0x42180000
	.4byte str_c_boro_k_dou_00005088
	.4byte str_R_1_dou_00005098
	.4byte 0x00000000
	.4byte str_c_boro_k_dou_00005088
	.4byte str_R_1_dou_00005098
	.4byte 0x40000000
	.4byte str_c_boro_k_dou_00005088
	.4byte str_R_1_dou_00005098
	.4byte 0x40800000
	.4byte str_c_boro_k_dou_00005088
	.4byte str_R_1_dou_00005098
	.4byte 0x40C00000
	.4byte str_c_boro_k_dou_00005088
	.4byte str_R_1_dou_00005098
	.4byte 0x41000000
	.4byte str_c_boro_k_dou_00005088
	.4byte str_R_1_dou_00005098
	.4byte 0x41200000
	.4byte str_c_boro_k_dou_00005088
	.4byte str_R_1_dou_00005098
	.4byte 0x41400000
	.4byte str_c_boro_k_dou_00005088
	.4byte str_R_1_dou_00005098
	.4byte 0x41600000
	.4byte str_c_boro_k_dou_00005088
	.4byte str_R_1_dou_00005098
	.4byte 0x41800000
	.4byte str_c_boro_k_dou_00005088
	.4byte str_R_1_dou_00005098
	.4byte 0x41900000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj ext_entry_data

# .data:0x1C4 | 0x81A4 | size: 0x54
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

# .data:0x218 | 0x81F8 | size: 0x2C
.obj suifu_run_animtbl, local
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
.endobj suifu_run_animtbl

# .data:0x244 | 0x8224 | size: 0x58
.obj suifu_c_init, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x000000FA
	.4byte 0x000000FF
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_dou_0000509c
	.4byte 0x00000339
	.4byte 0x00000064
	.4byte 0xFFFFFF83
	.4byte 0x00000031
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x000000FE
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_dou_0000509c
	.4byte 0x0000005A
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj suifu_c_init

# .data:0x29C | 0x827C | size: 0x58
.obj suifu_c_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x000000FA
	.4byte 0x000000FE
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_16_09_dou_000050a0
	.4byte 0x00000000
	.4byte str_me_dou_0000509c
	.4byte 0x00010024
	.4byte 0x000000FF
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_17_09_dou_000050b0
	.4byte 0x00000000
	.4byte str_me_dou_0000509c
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj suifu_c_talk

# .data:0x2F4 | 0x82D4 | size: 0x58
.obj suifu_d_init, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x000000FA
	.4byte 0x000000FF
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_dou_0000509c
	.4byte 0x00000307
	.4byte 0x00000032
	.4byte 0x00000032
	.4byte 0x00000031
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x000000FE
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_dou_0000509c
	.4byte 0x0000005A
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj suifu_d_init

# .data:0x34C | 0x832C | size: 0x58
.obj suifu_d_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x000000FA
	.4byte 0x000000FE
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_16_07_dou_000050c0
	.4byte 0x00000000
	.4byte str_me_dou_0000509c
	.4byte 0x00010024
	.4byte 0x000000FF
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_17_07_dou_000050d0
	.4byte 0x00000000
	.4byte str_me_dou_0000509c
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj suifu_d_talk

# .data:0x3A4 | 0x8384 | size: 0x58
.obj suifu_e_init, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x000000FA
	.4byte 0x000000FF
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_dou_0000509c
	.4byte 0x000002E0
	.4byte 0x00000032
	.4byte 0x00000071
	.4byte 0x00000031
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x000000FE
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_dou_0000509c
	.4byte 0x0000005A
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj suifu_e_init

# .data:0x3FC | 0x83DC | size: 0x58
.obj suifu_e_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x000000FA
	.4byte 0x000000FE
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_16_08_dou_000050e0
	.4byte 0x00000000
	.4byte str_me_dou_0000509c
	.4byte 0x00010024
	.4byte 0x000000FF
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_17_08_dou_000050f0
	.4byte 0x00000000
	.4byte str_me_dou_0000509c
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj suifu_e_talk

# .data:0x454 | 0x8434 | size: 0x38
.obj mony_init, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x000000FA
	.4byte 0x000000FF
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_dou_0000509c
	.4byte 0x000002BC
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mony_init

# .data:0x48C | 0x846C | size: 0xA8
.obj mony_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x000000FA
	.4byte 0x000000FE
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_16_10_dou_00005100
	.4byte 0x00000000
	.4byte str_モニー_dou_00005110
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_ピートン_dou_00005118
	.4byte str_モニー_dou_00005110
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_16_11_dou_00005124
	.4byte 0x00000000
	.4byte str_ピートン_dou_00005118
	.4byte 0x00010024
	.4byte 0x000000FF
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_17_10_dou_00005134
	.4byte 0x00000000
	.4byte str_モニー_dou_00005110
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_ピートン_dou_00005118
	.4byte str_モニー_dou_00005110
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_17_11_dou_00005144
	.4byte 0x00000000
	.4byte str_ピートン_dou_00005118
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mony_talk

# .data:0x534 | 0x8514 | size: 0x38
.obj peton_init, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x000000FA
	.4byte 0x000000FF
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_dou_0000509c
	.4byte 0x000002EE
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peton_init

# .data:0x56C | 0x854C | size: 0xE8
.obj peton_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x000000FA
	.4byte 0x000000FE
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_モニー_dou_00005110
	.4byte str_mario_dou_00005154
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_16_10_dou_00005100
	.4byte 0x00000000
	.4byte str_モニー_dou_00005110
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_ピートン_dou_00005118
	.4byte str_モニー_dou_00005110
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_16_11_dou_00005124
	.4byte 0x00000000
	.4byte str_ピートン_dou_00005118
	.4byte 0x00010024
	.4byte 0x000000FF
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_モニー_dou_00005110
	.4byte str_mario_dou_00005154
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_17_10_dou_00005134
	.4byte 0x00000000
	.4byte str_モニー_dou_00005110
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_ピートン_dou_00005118
	.4byte str_モニー_dou_00005110
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_17_11_dou_00005144
	.4byte 0x00000000
	.4byte str_ピートン_dou_00005118
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peton_talk

# .data:0x654 | 0x8634 | size: 0x228
.obj npcEnt, local
	.4byte str_水夫C_dou_0000515c
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte suifu_c_init
	.4byte 0x00000000
	.4byte suifu_c_talk
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
	.4byte str_水夫D_dou_00005164
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte suifu_d_init
	.4byte 0x00000000
	.4byte suifu_d_talk
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
	.4byte str_水夫E_dou_0000516c
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte suifu_e_init
	.4byte 0x00000000
	.4byte suifu_e_talk
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
	.4byte str_モニー_dou_00005110
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte mony_init
	.4byte 0x00000000
	.4byte mony_talk
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
	.4byte str_ピートン_dou_00005118
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte peton_init
	.4byte 0x00000000
	.4byte peton_talk
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

# .data:0x87C | 0x885C | size: 0x2D0
.obj bero_entry_data, local
	.4byte str_w_bero_dou_00005174
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_dou_10_dou_0000517c
	.4byte str_e_bero_dou_00005184
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_e_bero_dou_00005184
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_muj_10_dou_0000518c
	.4byte str_w_bero_dou_00005174
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_n_bero_dou_00005194
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_muj_00_dou_0000519c
	.4byte str_n_bero_02_dou_000051a4
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan_1_dou_000051b0
	.4byte 0x00020000
	.4byte 0x00000009
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan_4_dou_000051b8
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan_4_dou_000051b8
	.4byte 0x10020000
	.4byte 0x00000009
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan_1_dou_000051b0
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan_2_dou_000051c0
	.4byte 0x00020000
	.4byte 0x00000009
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan_6_dou_000051c8
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan_6_dou_000051c8
	.4byte 0x10020000
	.4byte 0x00000009
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan_2_dou_000051c0
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan_3_dou_000051d0
	.4byte 0x00020000
	.4byte 0x00000009
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan_5_dou_000051d8
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan_5_dou_000051d8
	.4byte 0x10020000
	.4byte 0x00000009
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan_3_dou_000051d0
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan_7_dou_000051e0
	.4byte 0x00020000
	.4byte 0x00000009
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan_8_dou_000051e8
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan_8_dou_000051e8
	.4byte 0x10020000
	.4byte 0x00000009
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan_7_dou_000051e0
	.4byte 0x00010001
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
.endobj bero_entry_data

# .data:0xB4C | 0x8B2C | size: 0x640
.obj suifudata, local
	.4byte 0x0000009B
	.4byte 0x0000003F
	.4byte 0xFFFFFFFD
	.4byte 0x0000010E
	.4byte 0x000000A2
	.4byte 0x0000003C
	.4byte 0xFFFFFFCE
	.4byte 0x0000010E
	.4byte 0x0000007A
	.4byte 0x00000056
	.4byte 0xFFFFFFEF
	.4byte 0x0000005A
	.4byte 0x000000B4
	.4byte 0x00000060
	.4byte 0x00000002
	.4byte 0x0000005A
	.4byte 0x00000082
	.4byte 0x0000005A
	.4byte 0xFFFFFFF7
	.4byte 0x0000010E
	.4byte 0x000000BF
	.4byte 0x00000068
	.4byte 0x00000003
	.4byte 0x0000005A
	.4byte 0x000000AA
	.4byte 0x00000026
	.4byte 0xFFFFFFEC
	.4byte 0x0000005A
	.4byte 0x000000B8
	.4byte 0x0000003F
	.4byte 0xFFFFFFF4
	.4byte 0x0000010E
	.4byte 0x000000C0
	.4byte 0x00000030
	.4byte 0x00000002
	.4byte 0x0000005A
	.4byte 0x00000089
	.4byte 0x00000070
	.4byte 0x0000000E
	.4byte 0x0000010E
	.4byte 0x000000BD
	.4byte 0x00000049
	.4byte 0xFFFFFFF6
	.4byte 0x0000005A
	.4byte 0x0000008E
	.4byte 0x00000042
	.4byte 0xFFFFFFCE
	.4byte 0x0000010E
	.4byte 0x000000A6
	.4byte 0x00000061
	.4byte 0x00000013
	.4byte 0x0000010E
	.4byte 0x0000008B
	.4byte 0x0000004F
	.4byte 0x00000013
	.4byte 0x0000005A
	.4byte 0x00000080
	.4byte 0x00000029
	.4byte 0xFFFFFFE5
	.4byte 0x0000005A
	.4byte 0x000000A5
	.4byte 0x00000055
	.4byte 0xFFFFFFFE
	.4byte 0x0000010E
	.4byte 0x00000098
	.4byte 0x00000048
	.4byte 0xFFFFFFF6
	.4byte 0x0000010E
	.4byte 0x000000A9
	.4byte 0x0000002B
	.4byte 0x00000016
	.4byte 0x0000005A
	.4byte 0x00000083
	.4byte 0x00000058
	.4byte 0xFFFFFFD6
	.4byte 0x0000005A
	.4byte 0x000000B2
	.4byte 0x00000052
	.4byte 0xFFFFFFD5
	.4byte 0x0000010E
	.4byte 0x000000B2
	.4byte 0x00000057
	.4byte 0x00000010
	.4byte 0x0000005A
	.4byte 0x000000BB
	.4byte 0x0000002F
	.4byte 0xFFFFFFDD
	.4byte 0x0000005A
	.4byte 0x0000008E
	.4byte 0x00000045
	.4byte 0xFFFFFFF6
	.4byte 0x0000010E
	.4byte 0x000000A7
	.4byte 0x00000066
	.4byte 0x00000010
	.4byte 0x0000005A
	.4byte 0x000000A6
	.4byte 0x00000044
	.4byte 0xFFFFFFEA
	.4byte 0x0000010E
	.4byte 0x0000008D
	.4byte 0x00000059
	.4byte 0x00000010
	.4byte 0x0000005A
	.4byte 0x000000B8
	.4byte 0x00000050
	.4byte 0xFFFFFFF4
	.4byte 0x0000010E
	.4byte 0x000000C2
	.4byte 0x00000047
	.4byte 0xFFFFFFC7
	.4byte 0x0000010E
	.4byte 0x00000087
	.4byte 0x00000051
	.4byte 0x0000000E
	.4byte 0x0000005A
	.4byte 0x00000082
	.4byte 0x00000072
	.4byte 0xFFFFFFD5
	.4byte 0x0000005A
	.4byte 0x000000A2
	.4byte 0x0000003E
	.4byte 0x00000003
	.4byte 0x0000010E
	.4byte 0x00000086
	.4byte 0x00000046
	.4byte 0xFFFFFFE1
	.4byte 0x0000010E
	.4byte 0x000000B9
	.4byte 0x0000003F
	.4byte 0xFFFFFFF0
	.4byte 0x0000005A
	.4byte 0x000000BC
	.4byte 0x00000032
	.4byte 0xFFFFFFCF
	.4byte 0x0000005A
	.4byte 0x000000A6
	.4byte 0x0000003C
	.4byte 0x00000013
	.4byte 0x0000010E
	.4byte 0x0000008C
	.4byte 0x00000025
	.4byte 0x0000000E
	.4byte 0x0000005A
	.4byte 0x000000B3
	.4byte 0x0000006F
	.4byte 0xFFFFFFEC
	.4byte 0x0000005A
	.4byte 0x0000008C
	.4byte 0x00000060
	.4byte 0xFFFFFFDF
	.4byte 0x0000010E
	.4byte 0x000000B3
	.4byte 0x00000073
	.4byte 0xFFFFFFCE
	.4byte 0x0000005A
	.4byte 0x00000087
	.4byte 0x00000057
	.4byte 0xFFFFFFD2
	.4byte 0x0000010E
	.4byte 0x000000AA
	.4byte 0x0000002E
	.4byte 0xFFFFFFD2
	.4byte 0x0000005A
	.4byte 0x00000099
	.4byte 0x0000004A
	.4byte 0xFFFFFFE9
	.4byte 0x0000010E
	.4byte 0x00000094
	.4byte 0x0000006F
	.4byte 0xFFFFFFD2
	.4byte 0x0000005A
	.4byte 0x00000089
	.4byte 0x0000006B
	.4byte 0xFFFFFFD1
	.4byte 0x0000005A
	.4byte 0x0000009E
	.4byte 0x0000004E
	.4byte 0x00000003
	.4byte 0x0000010E
	.4byte 0x000000B3
	.4byte 0x0000003A
	.4byte 0xFFFFFFC8
	.4byte 0x0000005A
	.4byte 0x000000B4
	.4byte 0x0000004F
	.4byte 0xFFFFFFD2
	.4byte 0x0000010E
	.4byte 0x00000089
	.4byte 0x00000047
	.4byte 0xFFFFFFDF
	.4byte 0x0000010E
	.4byte 0x00000091
	.4byte 0x00000063
	.4byte 0xFFFFFFD8
	.4byte 0x0000005A
	.4byte 0x000000B4
	.4byte 0x00000034
	.4byte 0x00000012
	.4byte 0x0000010E
	.4byte 0x00000092
	.4byte 0x0000004C
	.4byte 0x0000000B
	.4byte 0x0000005A
	.4byte 0x000000A1
	.4byte 0x00000035
	.4byte 0xFFFFFFC5
	.4byte 0x0000010E
	.4byte 0x0000008C
	.4byte 0x00000074
	.4byte 0xFFFFFFD8
	.4byte 0x0000010E
	.4byte 0x0000008B
	.4byte 0x00000060
	.4byte 0xFFFFFFDA
	.4byte 0x0000005A
	.4byte 0x00000075
	.4byte 0x0000003A
	.4byte 0xFFFFFFF9
	.4byte 0x0000005A
	.4byte 0x00000098
	.4byte 0x00000060
	.4byte 0xFFFFFFD3
	.4byte 0x0000010E
	.4byte 0x00000080
	.4byte 0x0000002E
	.4byte 0xFFFFFFF6
	.4byte 0x0000010E
	.4byte 0x00000097
	.4byte 0x0000004A
	.4byte 0xFFFFFFF9
	.4byte 0x0000010E
	.4byte 0x000000AF
	.4byte 0x0000006F
	.4byte 0x00000006
	.4byte 0x0000005A
	.4byte 0x00000084
	.4byte 0x0000006B
	.4byte 0xFFFFFFE7
	.4byte 0x0000010E
	.4byte 0x0000008E
	.4byte 0x00000037
	.4byte 0xFFFFFFED
	.4byte 0x0000005A
	.4byte 0x000000A5
	.4byte 0x0000006B
	.4byte 0x0000000D
	.4byte 0x0000010E
	.4byte 0x000000C1
	.4byte 0x00000035
	.4byte 0x00000006
	.4byte 0x0000010E
	.4byte 0x0000009E
	.4byte 0x00000066
	.4byte 0x00000011
	.4byte 0x0000005A
	.4byte 0x000000B7
	.4byte 0x00000027
	.4byte 0xFFFFFFDC
	.4byte 0x0000005A
	.4byte 0x0000009A
	.4byte 0x00000027
	.4byte 0xFFFFFFDC
	.4byte 0x0000010E
	.4byte 0x00000083
	.4byte 0x00000071
	.4byte 0xFFFFFFF4
	.4byte 0x0000010E
	.4byte 0x000000A3
	.4byte 0x00000040
	.4byte 0xFFFFFFE4
	.4byte 0x0000010E
	.4byte 0x000000A1
	.4byte 0x00000037
	.4byte 0x00000010
	.4byte 0x0000005A
	.4byte 0x0000007F
	.4byte 0x00000033
	.4byte 0xFFFFFFF0
	.4byte 0x0000010E
	.4byte 0x000000A1
	.4byte 0x00000051
	.4byte 0xFFFFFFFB
	.4byte 0x0000005A
	.4byte 0x0000007D
	.4byte 0x0000004C
	.4byte 0xFFFFFFDB
	.4byte 0x0000010E
	.4byte 0x0000008E
	.4byte 0x00000046
	.4byte 0xFFFFFFE5
	.4byte 0x0000005A
	.4byte 0x00000080
	.4byte 0x0000004D
	.4byte 0x00000003
	.4byte 0x0000005A
	.4byte 0x00000085
	.4byte 0x00000048
	.4byte 0x00000005
	.4byte 0x0000010E
	.4byte 0x00000095
	.4byte 0x00000045
	.4byte 0x00000001
	.4byte 0x0000005A
	.4byte 0x0000007D
	.4byte 0x0000006F
	.4byte 0xFFFFFFFA
	.4byte 0x0000010E
	.4byte 0x000000A2
	.4byte 0x0000006B
	.4byte 0xFFFFFFD4
	.4byte 0x0000010E
	.4byte 0x000000A8
	.4byte 0x00000069
	.4byte 0x00000004
	.4byte 0x0000005A
	.4byte 0x00000096
	.4byte 0x00000040
	.4byte 0xFFFFFFCF
	.4byte 0x0000010E
	.4byte 0x0000008E
	.4byte 0x0000002C
	.4byte 0x00000008
	.4byte 0x0000005A
	.4byte 0x00000078
	.4byte 0x0000002F
	.4byte 0xFFFFFFE0
	.4byte 0x0000010E
	.4byte 0x000000B6
	.4byte 0x00000074
	.4byte 0xFFFFFFF3
	.4byte 0x0000010E
	.4byte 0x000000B2
	.4byte 0x00000054
	.4byte 0xFFFFFFE3
	.4byte 0x0000005A
	.4byte 0x00000087
	.4byte 0x00000058
	.4byte 0xFFFFFFF1
	.4byte 0x0000005A
	.4byte 0x00000093
	.4byte 0x00000040
	.4byte 0xFFFFFFD1
	.4byte 0x0000010E
	.4byte 0x00000075
	.4byte 0x00000073
	.4byte 0xFFFFFFDA
	.4byte 0x0000010E
	.4byte 0x000000A6
	.4byte 0x0000005A
	.4byte 0xFFFFFFD5
	.4byte 0x0000010E
	.4byte 0x00000079
	.4byte 0x00000057
	.4byte 0xFFFFFFDA
	.4byte 0x0000005A
	.4byte 0x0000009D
	.4byte 0x00000059
	.4byte 0x00000005
	.4byte 0x0000010E
	.4byte 0x00000084
	.4byte 0x00000053
	.4byte 0xFFFFFFC4
	.4byte 0x0000005A
	.4byte 0x0000008C
	.4byte 0x00000055
	.4byte 0x00000008
	.4byte 0x0000010E
	.4byte 0x00000080
	.4byte 0x00000036
	.4byte 0xFFFFFFD8
	.4byte 0x0000010E
	.4byte 0x000000A4
	.4byte 0x0000004E
	.4byte 0xFFFFFFDF
	.4byte 0x0000005A
	.4byte 0x00000084
	.4byte 0x00000063
	.4byte 0xFFFFFFF2
	.4byte 0x0000005A
	.4byte 0x000000AA
	.4byte 0x00000031
	.4byte 0xFFFFFFD9
	.4byte 0x0000005A
	.4byte 0x00000087
	.4byte 0x00000031
	.4byte 0xFFFFFFD9
	.4byte 0x0000005A
	.4byte 0x0000007E
	.4byte 0x00000018
	.4byte 0x00000019
	.4byte 0x0000010E
	.4byte 0x0000008C
	.4byte 0x00000018
	.4byte 0x00000014
	.4byte 0x0000010E
	.4byte 0x000000BE
	.4byte 0x00000018
	.4byte 0x00000019
	.4byte 0x0000010E
.endobj suifudata

# .data:0x118C | 0x916C | size: 0x640
.obj suifudata_after, local
	.4byte 0x0000027D
	.4byte 0x00000046
	.4byte 0xFFFFFF93
	.4byte 0x0000010E
	.4byte 0x000002B6
	.4byte 0x00000046
	.4byte 0xFFFFFF75
	.4byte 0x0000010E
	.4byte 0x000002B0
	.4byte 0x00000046
	.4byte 0xFFFFFF7E
	.4byte 0x0000010E
	.4byte 0x00000290
	.4byte 0x00000046
	.4byte 0xFFFFFF76
	.4byte 0x0000005A
	.4byte 0x00000287
	.4byte 0x00000046
	.4byte 0xFFFFFF7F
	.4byte 0x0000010E
	.4byte 0x0000027D
	.4byte 0x00000046
	.4byte 0xFFFFFF85
	.4byte 0x0000010E
	.4byte 0x000002A2
	.4byte 0x00000046
	.4byte 0xFFFFFF77
	.4byte 0x0000005A
	.4byte 0x0000028F
	.4byte 0x00000046
	.4byte 0xFFFFFF87
	.4byte 0x0000005A
	.4byte 0x0000029F
	.4byte 0x00000046
	.4byte 0xFFFFFF89
	.4byte 0x0000010E
	.4byte 0x000002B2
	.4byte 0x00000046
	.4byte 0xFFFFFF92
	.4byte 0x0000005A
	.4byte 0x000002BE
	.4byte 0x00000046
	.4byte 0xFFFFFF94
	.4byte 0x0000005A
	.4byte 0x000002B0
	.4byte 0x00000046
	.4byte 0xFFFFFF9D
	.4byte 0x0000005A
	.4byte 0x000002A9
	.4byte 0x00000046
	.4byte 0xFFFFFFA2
	.4byte 0x0000010E
	.4byte 0x0000027B
	.4byte 0x00000046
	.4byte 0xFFFFFF9D
	.4byte 0x0000005A
	.4byte 0x0000028F
	.4byte 0x00000046
	.4byte 0xFFFFFF94
	.4byte 0x0000010E
	.4byte 0x00000293
	.4byte 0x00000046
	.4byte 0xFFFFFFA0
	.4byte 0x0000005A
	.4byte 0x000002AF
	.4byte 0x00000032
	.4byte 0xFFFFFFCE
	.4byte 0x0000010E
	.4byte 0x00000287
	.4byte 0x00000032
	.4byte 0xFFFFFFDD
	.4byte 0x0000010E
	.4byte 0x0000026F
	.4byte 0x00000032
	.4byte 0xFFFFFFD9
	.4byte 0x0000010E
	.4byte 0x00000271
	.4byte 0x00000032
	.4byte 0xFFFFFFC8
	.4byte 0x0000005A
	.4byte 0x00000276
	.4byte 0x00000032
	.4byte 0xFFFFFFBC
	.4byte 0x0000005A
	.4byte 0x0000027E
	.4byte 0x00000032
	.4byte 0xFFFFFFAD
	.4byte 0x0000010E
	.4byte 0x00000292
	.4byte 0x00000032
	.4byte 0xFFFFFFB0
	.4byte 0x0000010E
	.4byte 0x0000028E
	.4byte 0x00000032
	.4byte 0xFFFFFFC2
	.4byte 0x0000005A
	.4byte 0x00000293
	.4byte 0x00000032
	.4byte 0xFFFFFFD8
	.4byte 0x0000005A
	.4byte 0x000002A0
	.4byte 0x00000032
	.4byte 0xFFFFFFD2
	.4byte 0x0000010E
	.4byte 0x000002A5
	.4byte 0x00000032
	.4byte 0xFFFFFFC7
	.4byte 0x0000005A
	.4byte 0x000002A2
	.4byte 0x00000032
	.4byte 0xFFFFFFB9
	.4byte 0x0000005A
	.4byte 0x000002A8
	.4byte 0x00000032
	.4byte 0xFFFFFFAE
	.4byte 0x0000010E
	.4byte 0x000002B5
	.4byte 0x00000032
	.4byte 0xFFFFFFBF
	.4byte 0x0000010E
	.4byte 0x0000029B
	.4byte 0x00000032
	.4byte 0xFFFFFFC1
	.4byte 0x0000005A
	.4byte 0x00000287
	.4byte 0x00000032
	.4byte 0xFFFFFFBA
	.4byte 0x0000010E
	.4byte 0x0000027F
	.4byte 0x00000032
	.4byte 0xFFFFFFBE
	.4byte 0x0000005A
	.4byte 0x00000286
	.4byte 0x00000032
	.4byte 0xFFFFFFD3
	.4byte 0x0000010E
	.4byte 0x000002B7
	.4byte 0x00000032
	.4byte 0xFFFFFFAC
	.4byte 0x0000005A
	.4byte 0x000002AD
	.4byte 0x00000032
	.4byte 0xFFFFFFE1
	.4byte 0x0000005A
	.4byte 0x000002BB
	.4byte 0x00000032
	.4byte 0xFFFFFFCA
	.4byte 0x0000010E
	.4byte 0x0000033A
	.4byte 0x00000032
	.4byte 0xFFFFFFB0
	.4byte 0x0000010E
	.4byte 0x00000327
	.4byte 0x00000032
	.4byte 0xFFFFFFAD
	.4byte 0x0000010E
	.4byte 0x0000032C
	.4byte 0x00000032
	.4byte 0xFFFFFFE2
	.4byte 0x0000005A
	.4byte 0x00000343
	.4byte 0x00000032
	.4byte 0xFFFFFFE2
	.4byte 0x0000005A
	.4byte 0x0000032B
	.4byte 0x00000032
	.4byte 0xFFFFFFCE
	.4byte 0x0000010E
	.4byte 0x0000034D
	.4byte 0x00000032
	.4byte 0xFFFFFFD1
	.4byte 0x0000005A
	.4byte 0x00000335
	.4byte 0x00000032
	.4byte 0xFFFFFFD2
	.4byte 0x0000005A
	.4byte 0x00000335
	.4byte 0x00000032
	.4byte 0xFFFFFFD2
	.4byte 0x0000010E
	.4byte 0x00000336
	.4byte 0x00000032
	.4byte 0xFFFFFFB8
	.4byte 0x0000010E
	.4byte 0x00000343
	.4byte 0x00000032
	.4byte 0xFFFFFFB3
	.4byte 0x0000010E
	.4byte 0x00000323
	.4byte 0x00000032
	.4byte 0xFFFFFFBD
	.4byte 0x0000005A
	.4byte 0x00000325
	.4byte 0x00000032
	.4byte 0xFFFFFFDC
	.4byte 0x0000010E
	.4byte 0x00000331
	.4byte 0x00000032
	.4byte 0xFFFFFFC8
	.4byte 0x0000010E
	.4byte 0x00000342
	.4byte 0x00000032
	.4byte 0xFFFFFFBE
	.4byte 0x0000010E
	.4byte 0x0000033D
	.4byte 0x00000032
	.4byte 0xFFFFFFA7
	.4byte 0x0000005A
	.4byte 0x00000332
	.4byte 0x00000032
	.4byte 0xFFFFFFA8
	.4byte 0x0000010E
	.4byte 0x0000032D
	.4byte 0x00000032
	.4byte 0xFFFFFFB3
	.4byte 0x0000005A
	.4byte 0x000002BE
	.4byte 0x00000032
	.4byte 0xFFFFFFBD
	.4byte 0x0000010E
	.4byte 0x000002BE
	.4byte 0x00000032
	.4byte 0xFFFFFFBD
	.4byte 0x0000010E
	.4byte 0x000002D6
	.4byte 0x00000032
	.4byte 0xFFFFFFC1
	.4byte 0x0000010E
	.4byte 0x000002EB
	.4byte 0x00000032
	.4byte 0xFFFFFFBD
	.4byte 0x0000005A
	.4byte 0x00000301
	.4byte 0x00000032
	.4byte 0xFFFFFFC2
	.4byte 0x0000010E
	.4byte 0x0000030C
	.4byte 0x00000032
	.4byte 0xFFFFFFCA
	.4byte 0x0000005A
	.4byte 0x0000030D
	.4byte 0x00000032
	.4byte 0xFFFFFFB1
	.4byte 0x0000010E
	.4byte 0x000002F8
	.4byte 0x00000032
	.4byte 0xFFFFFFBE
	.4byte 0x0000005A
	.4byte 0x000002DC
	.4byte 0x00000032
	.4byte 0xFFFFFFBB
	.4byte 0x0000005A
	.4byte 0x0000031C
	.4byte 0x00000032
	.4byte 0xFFFFFFB2
	.4byte 0x0000010E
	.4byte 0x00000304
	.4byte 0x00000032
	.4byte 0xFFFFFFB3
	.4byte 0x0000005A
	.4byte 0x000002F5
	.4byte 0x00000032
	.4byte 0xFFFFFFB5
	.4byte 0x0000010E
	.4byte 0x000002E4
	.4byte 0x00000032
	.4byte 0xFFFFFFC0
	.4byte 0x0000010E
	.4byte 0x000002D3
	.4byte 0x00000032
	.4byte 0xFFFFFFD8
	.4byte 0x0000005A
	.4byte 0x000002C1
	.4byte 0x00000032
	.4byte 0xFFFFFFD5
	.4byte 0x0000005A
	.4byte 0x0000031C
	.4byte 0x00000032
	.4byte 0xFFFFFFD3
	.4byte 0x0000005A
	.4byte 0x00000312
	.4byte 0x00000032
	.4byte 0xFFFFFFE5
	.4byte 0x0000010E
	.4byte 0x000002FA
	.4byte 0x00000032
	.4byte 0xFFFFFFE1
	.4byte 0x0000005A
	.4byte 0x000002F2
	.4byte 0x00000032
	.4byte 0xFFFFFFC7
	.4byte 0x0000010E
	.4byte 0x000002ED
	.4byte 0x00000032
	.4byte 0xFFFFFFDA
	.4byte 0x0000005A
	.4byte 0x000002D6
	.4byte 0x00000032
	.4byte 0xFFFFFFAE
	.4byte 0x0000010E
	.4byte 0x00000308
	.4byte 0x00000032
	.4byte 0xFFFFFFC1
	.4byte 0x0000010E
	.4byte 0x00000317
	.4byte 0x00000032
	.4byte 0xFFFFFFC7
	.4byte 0x0000005A
	.4byte 0x000002E2
	.4byte 0x00000032
	.4byte 0xFFFFFFAD
	.4byte 0x0000005A
	.4byte 0x00000307
	.4byte 0x00000032
	.4byte 0xFFFFFFAA
	.4byte 0x0000010E
	.4byte 0x000002ED
	.4byte 0x00000032
	.4byte 0xFFFFFFAB
	.4byte 0x0000005A
	.4byte 0x000002E2
	.4byte 0x00000032
	.4byte 0xFFFFFFDF
	.4byte 0x0000005A
	.4byte 0x000002D0
	.4byte 0x00000032
	.4byte 0xFFFFFFC7
	.4byte 0x0000010E
	.4byte 0x000002C8
	.4byte 0x00000032
	.4byte 0xFFFFFFD9
	.4byte 0x0000005A
	.4byte 0x000002C8
	.4byte 0x00000032
	.4byte 0xFFFFFFB5
	.4byte 0x0000005A
	.4byte 0x000002C8
	.4byte 0x00000032
	.4byte 0xFFFFFFC2
	.4byte 0x0000010E
	.4byte 0x000002C3
	.4byte 0x00000032
	.4byte 0xFFFFFFE2
	.4byte 0x0000005A
	.4byte 0x000002D6
	.4byte 0x00000032
	.4byte 0xFFFFFFE3
	.4byte 0x0000010E
	.4byte 0x000002DD
	.4byte 0x00000032
	.4byte 0xFFFFFFD5
	.4byte 0x0000005A
	.4byte 0x000002EB
	.4byte 0x00000032
	.4byte 0xFFFFFFB4
	.4byte 0x0000005A
	.4byte 0x000002FE
	.4byte 0x00000032
	.4byte 0xFFFFFFAA
	.4byte 0x0000010E
	.4byte 0x00000311
	.4byte 0x00000032
	.4byte 0xFFFFFFA9
	.4byte 0x0000005A
	.4byte 0x00000314
	.4byte 0x00000032
	.4byte 0xFFFFFFBA
	.4byte 0x0000010E
	.4byte 0x00000310
	.4byte 0x00000032
	.4byte 0xFFFFFFDC
	.4byte 0x0000010E
	.4byte 0x000002FB
	.4byte 0x00000032
	.4byte 0xFFFFFFD8
	.4byte 0x0000005A
	.4byte 0x00000306
	.4byte 0x00000032
	.4byte 0xFFFFFFE2
	.4byte 0x0000010E
	.4byte 0x000002A9
	.4byte 0x00000032
	.4byte 0xFFFFFFB5
	.4byte 0x0000005A
	.4byte 0x000002CA
	.4byte 0x00000032
	.4byte 0xFFFFFFB2
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000000
.endobj suifudata_after

# .data:0x17CC | 0x97AC | size: 0x200
.obj watarikiri_suifu_init, local
	.4byte 0x0006005B
	.4byte evt_nannpc_init
	.4byte ext_entry_data
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000065
	.4byte 0x0003005B
	.4byte evt_nannpc_set_subfunc
	.4byte 0x00000001
	.4byte nannpc_ext_main_sub_fast
	.4byte 0x0003005B
	.4byte evt_nannpc_set_subfunc
	.4byte 0x00000002
	.4byte nanNPCOption
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
	.4byte 0x0001003E
	.4byte suifudata_after
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x00020037
	.4byte 0xFE363C8A
	.4byte 0x00000004
	.4byte 0x00020043
	.4byte 0xFE363C81
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020043
	.4byte 0xFE363C82
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020043
	.4byte 0xFE363C83
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020043
	.4byte 0xFE363C84
	.4byte 0xFE363C8A
	.4byte 0x0005005B
	.4byte evt_nannpc_set_position
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0004005B
	.4byte evt_nannpc_flag_onoff
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x0004005B
	.4byte evt_nannpc_set_size
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x00000008
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x000000FE
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0x0000005A
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_nannpc_set_dir
	.4byte 0xFE363C80
	.4byte 0xFE363C84
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006B
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x0002005B
	.4byte evt_nannpc_entry
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte evt_nannpc_flag_onoff
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte evt_nannpc_set_size
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x0000000F
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0005005B
	.4byte evt_nannpc_set_position
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x00000002
	.4byte 0x00000001
.endobj watarikiri_suifu_init

# .data:0x19CC | 0x99AC | size: 0x728
.obj ukishima_watari_run, local
	.4byte 0x0004005B
	.4byte evt_nannpc_set_work
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_nannpc_set_dir
	.4byte 0xFE363C80
	.4byte 0x0000005A
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000014
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x000000A0
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000000A
	.4byte 0xFE363C8C
	.4byte 0x00020035
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFF6
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000001E
	.4byte 0xFE363C8D
	.4byte 0x00020035
	.4byte 0xFE363C8D
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000012C
	.4byte 0xFE363C8E
	.4byte 0x00020035
	.4byte 0xFE363C8E
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_nannpc_get_position
	.4byte 0xFE363C80
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte evt_nannpc_jump_position
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x00000025
	.4byte 0xFE363C8C
	.4byte 0xFE363C8E
	.4byte 0xFE363C8D
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000001E
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000032
	.4byte 0x0001000A
	.4byte 0xFE363C8A
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000000F
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x000000FA
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000014
	.4byte 0xFE363C8C
	.4byte 0x00020035
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFF6
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000001E
	.4byte 0xFE363C8D
	.4byte 0x00020035
	.4byte 0xFE363C8D
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000012C
	.4byte 0xFE363C8E
	.4byte 0x00020035
	.4byte 0xFE363C8E
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_nannpc_get_position
	.4byte 0xFE363C80
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte evt_nannpc_jump_position
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x00000019
	.4byte 0xFE363C8C
	.4byte 0xFE363C8E
	.4byte 0xFE363C8D
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000001E
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000032
	.4byte 0x0001000A
	.4byte 0xFE363C8A
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000000F
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000014
	.4byte 0xFE363C8C
	.4byte 0x00020035
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFF6
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000001E
	.4byte 0xFE363C8D
	.4byte 0x00020035
	.4byte 0xFE363C8D
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000012C
	.4byte 0xFE363C8E
	.4byte 0x00020035
	.4byte 0xFE363C8E
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_nannpc_get_position
	.4byte 0xFE363C80
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte evt_nannpc_jump_position
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x00000019
	.4byte 0xFE363C8C
	.4byte 0xFE363C8E
	.4byte 0xFE363C8D
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000001E
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000032
	.4byte 0x0001000A
	.4byte 0xFE363C8A
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000000F
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x0000018B
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000014
	.4byte 0xFE363C8C
	.4byte 0x00020035
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFF6
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000001E
	.4byte 0xFE363C8D
	.4byte 0x00020035
	.4byte 0xFE363C8D
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000012C
	.4byte 0xFE363C8E
	.4byte 0x00020035
	.4byte 0xFE363C8E
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_nannpc_get_position
	.4byte 0xFE363C80
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte evt_nannpc_jump_position
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x00000019
	.4byte 0xFE363C8C
	.4byte 0xFE363C8E
	.4byte 0xFE363C8D
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000001E
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000032
	.4byte 0x0001000A
	.4byte 0xFE363C8A
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000014
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x000001EA
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000014
	.4byte 0xFE363C8C
	.4byte 0x00020035
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFF6
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000001E
	.4byte 0xFE363C8D
	.4byte 0x00020035
	.4byte 0xFE363C8D
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000012C
	.4byte 0xFE363C8E
	.4byte 0x00020035
	.4byte 0xFE363C8E
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_nannpc_get_position
	.4byte 0xFE363C80
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte evt_nannpc_jump_position
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x00000019
	.4byte 0xFE363C8C
	.4byte 0xFE363C8E
	.4byte 0xFE363C8D
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000001E
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000032
	.4byte 0x0001000A
	.4byte 0xFE363C8A
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000000F
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000226
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000014
	.4byte 0xFE363C8C
	.4byte 0x00020035
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFF6
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000001E
	.4byte 0xFE363C8D
	.4byte 0x00020035
	.4byte 0xFE363C8D
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000012C
	.4byte 0xFE363C8E
	.4byte 0x00020035
	.4byte 0xFE363C8E
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_nannpc_get_position
	.4byte 0xFE363C80
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte evt_nannpc_jump_position
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x00000019
	.4byte 0xFE363C8C
	.4byte 0xFE363C8E
	.4byte 0xFE363C8D
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000001E
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000032
	.4byte 0x0001000A
	.4byte 0xFE363C8A
	.4byte 0x0005005B
	.4byte evt_nannpc_get_position
	.4byte 0xFE363C80
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte evt_nannpc_jump_position
	.4byte 0xFE363C80
	.4byte 0x00000271
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x000000FA
	.4byte 0x00000032
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000061
	.4byte 0x0005005B
	.4byte evt_nannpc_set_position
	.4byte 0x00000061
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_nannpc_ppflag_onoff
	.4byte 0x00000061
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_水夫C_dou_0000515c
	.4byte 0x00000339
	.4byte 0x00000064
	.4byte 0xFFFFFF83
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_水夫C_dou_0000515c
	.4byte 0x0000010E
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_水夫C_dou_0000515c
	.4byte 0x40000020
	.4byte 0x00010024
	.4byte 0x00000062
	.4byte 0x0005005B
	.4byte evt_nannpc_set_position
	.4byte 0x00000062
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_nannpc_ppflag_onoff
	.4byte 0x00000062
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_水夫D_dou_00005164
	.4byte 0x00000307
	.4byte 0x00000032
	.4byte 0x00000032
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_水夫D_dou_00005164
	.4byte 0x0000010E
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_水夫D_dou_00005164
	.4byte 0x40000020
	.4byte 0x00010024
	.4byte 0x00000063
	.4byte 0x0005005B
	.4byte evt_nannpc_set_position
	.4byte 0x00000063
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_nannpc_ppflag_onoff
	.4byte 0x00000063
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_水夫E_dou_0000516c
	.4byte 0x000002E0
	.4byte 0x00000032
	.4byte 0x00000071
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_水夫E_dou_0000516c
	.4byte 0x0000010E
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_水夫E_dou_0000516c
	.4byte 0x40000020
	.4byte 0x0000002A
	.4byte 0x0001003E
	.4byte suifudata_after
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x00020037
	.4byte 0xFE363C8A
	.4byte 0x00000004
	.4byte 0x00020043
	.4byte 0xFE363C81
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020043
	.4byte 0xFE363C82
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020043
	.4byte 0xFE363C83
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020043
	.4byte 0xFE363C84
	.4byte 0xFE363C8A
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
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj ukishima_watari_run

# .data:0x20F4 | 0xA0D4 | size: 0x2E8
.obj ukishima_watari, local
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000000A0
	.4byte 0x000000AE
	.4byte 0x0000020F
	.4byte 0x000000A0
	.4byte 0x0000004F
	.4byte 0xFFFFFFF2
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_nannpc_get_position
	.4byte 0x00000063
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte evt_nannpc_set_dir
	.4byte 0x00000063
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_14_dou_000051f0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000064
	.4byte 0x0003005B
	.4byte evt_nannpc_set_dir
	.4byte 0xFE363C80
	.4byte 0x0000005A
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_nannpc_get_position
	.4byte 0x00000062
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte evt_nannpc_set_dir
	.4byte 0x00000062
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_15_dou_000051fc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG5_KINOPIO_MOV_dou_00005208
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000064
	.4byte 0x0004005B
	.4byte evt_nannpc_get_work
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0xFE363C84
	.4byte 0x0005005B
	.4byte evt_nannpc_get_position
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0002001D
	.4byte 0xFE363C8B
	.4byte 0xFE363C86
	.4byte 0x00020018
	.4byte 0xFE363C84
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_nannpc_set_work
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000032
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000064
	.4byte 0x0001000A
	.4byte 0xFE363C8A
	.4byte 0x0001005C
	.4byte ukishima_watari_run
	.4byte 0x00020035
	.4byte 0xFE363C85
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000064
	.4byte 0x00010004
	.4byte 0x00000064
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00020035
	.4byte 0xFE363C86
	.4byte 0xFFFFFFF6
	.4byte 0x00000006
	.4byte 0x00010003
	.4byte 0x00000064
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0003005B
	.4byte evt_nannpc_set_subfunc
	.4byte 0x00000002
	.4byte nanNPCOption
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x0000005F
	.4byte 0x0004005B
	.4byte evt_nannpc_flag_onoff
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x0004005B
	.4byte evt_nannpc_set_size
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x00000008
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xF8406730
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_fune_atari_dou_00005224
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte suifu_orei
	.4byte 0x00000002
	.4byte 0x00000001
.endobj ukishima_watari

# .data:0x23DC | 0xA3BC | size: 0xA0
.obj ukishima_check, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xF8406727
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xF8406728
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00000020
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000001
	.4byte str_BGM_FF_ENV_SUCCESS1_dou_00005230
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000201
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000120
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte ukishima_watari
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj ukishima_check

# .data:0x247C | 0xA45C | size: 0x478
.obj ukishima_apper, local
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte 0xFE363C82
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_BARREL_APPE_dou_00005244
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte 0xFE363C82
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte zero_dou_0000525c
	.4byte str_ripple_n64_dou_00005260
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x00000005
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte zero_dou_0000525c
	.4byte str_ripple_n64_dou_00005260
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x00000005
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte 0xFE363C83
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000001
	.4byte 0xFFFFFF9C
	.4byte 0x00000000
	.4byte 0x00000320
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte 0xFE363C83
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0xFFFFFFF6
	.4byte 0x0000012C
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte 0xFE363C83
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFFFFFFF6
	.4byte 0x00000000
	.4byte 0x0000012C
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte 0xFE363C83
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0xFFFFFFFB
	.4byte 0x000000C8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte 0xFE363C83
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFFFFFFFB
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte 0xFE363C83
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000064
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte 0xFE363C83
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte 0xFE363C83
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj ukishima_apper

# .data:0x28F4 | 0xA8D4 | size: 0x88
.obj ukishima_init1, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xF8406727
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xF8406728
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_taru_n01_dou_0000526c
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_taru_n01_dou_00005278
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_taru_n02_dou_00005284
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_taru_n02_dou_00005290
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj ukishima_init1

# .data:0x297C | 0xA95C | size: 0xC8
.obj ukishima_part1, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000118
	.4byte 0x000000AE
	.4byte 0x0000020F
	.4byte 0x00000118
	.4byte 0x0000004F
	.4byte 0xFFFFFFF2
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte str_S_taru_n01_dou_0000526c
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte str_A_taru_n01_dou_00005278
	.4byte 0x0001005C
	.4byte ukishima_apper
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte str_S_taru_n02_dou_00005284
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte str_A_taru_n02_dou_00005290
	.4byte 0x0001005C
	.4byte ukishima_apper
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000009C4
	.4byte 0x0001005C
	.4byte pukapuka_watari_init01
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0001005E
	.4byte ukishima_check
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj ukishima_part1

# .data:0x2A44 | 0xAA24 | size: 0x88
.obj ukishima_init2, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xF8406727
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xF8406728
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_taru_n03_dou_0000529c
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_taru_n03_dou_000052a8
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_taru_n04_dou_000052b4
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_taru_n04_dou_000052c0
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj ukishima_init2

# .data:0x2ACC | 0xAAAC | size: 0xC8
.obj ukishima_part2, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000020D
	.4byte 0x000000AE
	.4byte 0x0000020F
	.4byte 0x0000020D
	.4byte 0x0000004F
	.4byte 0xFFFFFFF2
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte str_S_taru_n03_dou_0000529c
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte str_A_taru_n03_dou_000052a8
	.4byte 0x0001005C
	.4byte ukishima_apper
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte str_S_taru_n04_dou_000052b4
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte str_A_taru_n04_dou_000052c0
	.4byte 0x0001005E
	.4byte ukishima_apper
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000009C4
	.4byte 0x0001005C
	.4byte pukapuka_watari_init02
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0001005E
	.4byte ukishima_check
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj ukishima_part2

# .data:0x2B94 | 0xAB74 | size: 0x5C
.obj unk_evt_dou_00011774, local
	.4byte 0x00020032
	.4byte 0xF8406727
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xF8406727
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xF8406728
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte ukishima_part1
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0001005C
	.4byte ukishima_part2
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj unk_evt_dou_00011774

# .data:0x2BF0 | 0xABD0 | size: 0x5C
.obj unk_evt_dou_000117d0, local
	.4byte 0x00020032
	.4byte 0xF8406728
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xF8406727
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xF8406728
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte ukishima_part1
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0001005C
	.4byte ukishima_part2
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj unk_evt_dou_000117d0

# .data:0x2C4C | 0xAC2C | size: 0x114
.obj torinoko_suifu_pukapuka, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000064
	.4byte 0x0004005B
	.4byte evt_nannpc_get_work
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020034
	.4byte 0xFE363C8A
	.4byte 0xFD050F80
	.4byte 0x0005005B
	.4byte evt_nannpc_set_hosei_position
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_nannpc_get_position
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0002001C
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFE363C81
	.4byte 0xF24B1680
	.4byte 0x00000020
	.4byte 0x00020034
	.4byte 0xFE363C81
	.4byte 0xF24AE280
	.4byte 0x00000021
	.4byte 0x0002003A
	.4byte 0xFE363C81
	.4byte 0xFE363C8A
	.4byte 0x0003005B
	.4byte evt_nannpc_set_shadow_position
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_nannpc_get_position
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte evt_nannpc_set_shadow_position
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj torinoko_suifu_pukapuka

# .data:0x2D60 | 0xAD40 | size: 0x194
.obj _suifu_sakebu, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0x00000073
	.4byte 0x00000082
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_13_01_dou_000052cc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0x00000069
	.4byte 0x00000050
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_13_03_dou_000052dc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0x0000007B
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_13_05_dou_000052ec
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0x000000D2
	.4byte 0x00000087
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_13_02_dou_000052fc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0x000000E1
	.4byte 0x00000055
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_13_06_dou_0000530c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0x000000C3
	.4byte 0x00000025
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_13_04_dou_0000531c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj _suifu_sakebu

# .data:0x2EF4 | 0xAED4 | size: 0x19C
.obj torinoko_suifu_sakebu, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0x0000012C
	.4byte 0x0002001D
	.4byte 0xFE363C81
	.4byte 0xFFFFFFFE
	.4byte 0x0002001C
	.4byte 0xFE363C81
	.4byte 0x00000002
	.4byte 0x0002001D
	.4byte 0xFE363C82
	.4byte 0xFFFFFF74
	.4byte 0x0002001C
	.4byte 0xFE363C82
	.4byte 0x0000008C
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406727
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF8406728
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005D
	.4byte _suifu_sakebu
	.4byte 0xFE363C8A
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0x0000012C
	.4byte 0x0002001D
	.4byte 0xFE363C81
	.4byte 0xFFFFFFFE
	.4byte 0x0002001C
	.4byte 0xFE363C81
	.4byte 0x00000002
	.4byte 0x0002001D
	.4byte 0xFE363C82
	.4byte 0xFFFFFF74
	.4byte 0x0002001C
	.4byte 0xFE363C82
	.4byte 0x0000008C
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001005F
	.4byte 0xFE363C8A
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj torinoko_suifu_sakebu

# .data:0x3090 | 0xB070 | size: 0x300
.obj torinoko_suifu_init, local
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_水夫C_dou_0000515c
	.4byte 0x40000020
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_水夫D_dou_00005164
	.4byte 0x40000020
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_水夫E_dou_0000516c
	.4byte 0x40000020
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_モニー_dou_00005110
	.4byte 0x40000020
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_モニー_dou_00005110
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ピートン_dou_00005118
	.4byte 0x40000020
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_ピートン_dou_00005118
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_nannpc_init
	.4byte ext_entry_data
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000065
	.4byte 0x0003005B
	.4byte evt_nannpc_set_subfunc
	.4byte 0x00000001
	.4byte nannpc_ext_main_sub_fast
	.4byte 0x0001005C
	.4byte torinoko_suifu_pukapuka
	.4byte 0x0001003E
	.4byte suifudata
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000064
	.4byte 0x00030041
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0001003F
	.4byte 0xFE363C84
	.4byte 0x0002005B
	.4byte evt_nannpc_entry
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_nannpc_set_func
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_nannpc_set_position
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000060
	.4byte 0x0004005B
	.4byte evt_nannpc_flag_onoff
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte evt_nannpc_ppflag_onoff
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00010024
	.4byte 0x0000005F
	.4byte 0x0004005B
	.4byte evt_nannpc_flag_onoff
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte evt_nannpc_ppflag_onoff
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000031
	.4byte 0x0003005B
	.4byte evt_nannpc_set_animtbl
	.4byte 0xFE363C80
	.4byte suifu_animtbl
	.4byte 0x0003005B
	.4byte evt_nannpc_set_dir
	.4byte 0xFE363C80
	.4byte 0xFE363C84
	.4byte 0x0004005B
	.4byte evt_nannpc_set_work
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_nannpc_set_work
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006B
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x0002005B
	.4byte evt_nannpc_entry
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte evt_nannpc_flag_onoff
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte evt_nannpc_set_size
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x0000000F
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0005005B
	.4byte evt_nannpc_set_position
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0001006C
	.4byte 0xFD050F8A
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_nannpc_get_position
	.4byte 0x00000060
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ピートン_dou_00005118
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0005005B
	.4byte evt_nannpc_get_position
	.4byte 0x0000005F
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_モニー_dou_00005110
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x00000002
	.4byte 0x00000001
.endobj torinoko_suifu_init

# .data:0x3390 | 0xB370 | size: 0x2B0
.obj torinoko_suifu, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_水夫C_dou_0000515c
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_水夫D_dou_00005164
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_水夫E_dou_0000516c
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFFFFFE70
	.4byte 0x0000003C
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_11_dou_0000532c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000000A0
	.4byte 0x000000B4
	.4byte 0x0000022F
	.4byte 0x000000A0
	.4byte 0x00000055
	.4byte 0x00000011
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000708
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0x00000073
	.4byte 0x00000082
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_small_00_dou_00005338
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000004B0
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0x00000069
	.4byte 0x00000050
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_small_01_dou_00005344
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000384
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0x0000007B
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_small_02_dou_00005350
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0x000000D2
	.4byte 0x00000087
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_small_03_dou_0000535c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0x000000E1
	.4byte 0x00000055
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_small_04_dou_00005368
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000834
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0x000000C3
	.4byte 0x00000025
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_small_05_dou_00005374
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00000FA0
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFFFFFE70
	.4byte 0x0000003C
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_13_dou_00005380
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF8406726
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj torinoko_suifu

# .data:0x3640 | 0xB620 | size: 0x54C
.obj suifu_orei, local
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_水夫C_dou_0000515c
	.4byte 0x00000339
	.4byte 0x00000064
	.4byte 0xFFFFFF83
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_水夫C_dou_0000515c
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_水夫D_dou_00005164
	.4byte 0x00000307
	.4byte 0x00000032
	.4byte 0x00000032
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_水夫D_dou_00005164
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_水夫E_dou_0000516c
	.4byte 0x000002E0
	.4byte 0x00000032
	.4byte 0x00000071
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_水夫E_dou_0000516c
	.4byte 0x0000010E
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
	.4byte 0xFE363C84
	.4byte 0x0002000C
	.4byte 0xFE363C84
	.4byte str_mod_01_dou_0000538c
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000276
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0002001C
	.4byte 0xFE363C82
	.4byte 0xFFFFFFEC
	.4byte 0x0002001D
	.4byte 0xFE363C82
	.4byte 0xFFFFFF74
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001005F
	.4byte 0xFD050F8A
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_モニー_dou_00005110
	.4byte 0x40000020
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ピートン_dou_00005118
	.4byte 0x40000020
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_party_wait_landon
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_snd_bgmoff_f
	.4byte 0x00000200
	.4byte 0x00000BB8
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_水夫D_dou_00005164
	.4byte str_mario_dou_00005154
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_16_dou_00005394
	.4byte 0x00000000
	.4byte str_水夫D_dou_00005164
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_水夫E_dou_0000516c
	.4byte str_mario_dou_00005154
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_16_01_dou_000053a0
	.4byte 0x00000000
	.4byte str_水夫E_dou_0000516c
	.4byte 0x0001003E
	.4byte suifudata_after
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x0000005F
	.4byte 0x00020037
	.4byte 0xFE363C8A
	.4byte 0x00000004
	.4byte 0x00020043
	.4byte 0xFE363C81
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020043
	.4byte 0xFE363C82
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020043
	.4byte 0xFE363C83
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020043
	.4byte 0xFE363C84
	.4byte 0xFE363C8A
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_モニー_dou_00005110
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte zero_dou_0000525c
	.4byte str_モニー_dou_00005110
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
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_16_02_dou_000053b0
	.4byte 0x00000000
	.4byte str_モニー_dou_00005110
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_モニー_dou_00005110
	.4byte 0x000002BC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24D4A80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_モニー_dou_00005110
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_16_03_dou_000053c0
	.4byte 0x00000000
	.4byte str_モニー_dou_00005110
	.4byte 0x0001003E
	.4byte suifudata_after
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000060
	.4byte 0x00020037
	.4byte 0xFE363C8A
	.4byte 0x00000004
	.4byte 0x00020043
	.4byte 0xFE363C81
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020043
	.4byte 0xFE363C82
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020043
	.4byte 0xFE363C83
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020043
	.4byte 0xFE363C84
	.4byte 0xFE363C8A
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ピートン_dou_00005118
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ピートン_dou_00005118
	.4byte 0x000002EE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24D4A80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ピートン_dou_00005118
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_16_04_dou_000053d0
	.4byte 0x00000000
	.4byte str_モニー_dou_00005110
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_2_dou_000053e0
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_16_05_dou_000053e8
	.4byte 0x00000000
	.4byte str_モニー_dou_00005110
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_NO1_dou_000053f8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_B_dou_0000540c
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_dou_00005414
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
	.4byte str_SFX_VOICE_MARIO_HAND_dou_0000541c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_2_dou_000053e0
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_16_06_dou_00005438
	.4byte 0x00000000
	.4byte str_モニー_dou_00005110
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_モニー_dou_00005110
	.4byte 0x40000020
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_モニー_dou_00005110
	.4byte 0x00000006
	.4byte mony_talk
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_ピートン_dou_00005118
	.4byte 0x40000020
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_ピートン_dou_00005118
	.4byte 0x00000006
	.4byte peton_talk
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x000000FA
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj suifu_orei

# .data:0x3B8C | 0xBB6C | size: 0x188
.obj escapeway_event, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_17_01_dou_00005448
	.4byte 0x00000000
	.4byte str_水夫D_dou_00005164
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_HAND_dou_00005458
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_2_dou_000053e0
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_17_02_dou_00005474
	.4byte 0x00000000
	.4byte str_水夫D_dou_00005164
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_17_03_dou_00005484
	.4byte 0x00000000
	.4byte str_水夫E_dou_0000516c
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_17_04_dou_00005494
	.4byte 0x00000000
	.4byte str_水夫C_dou_0000515c
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000307
	.4byte 0x000000DC
	.4byte 0x0000014B
	.4byte 0x00000307
	.4byte 0x00000096
	.4byte 0xFFFFFFC1
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_水夫C_dou_0000515c
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_17_05_dou_000054a4
	.4byte 0x00000000
	.4byte str_水夫C_dou_0000515c
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_17_06_dou_000054b4
	.4byte 0x00000000
	.4byte str_水夫E_dou_0000516c
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x000000FF
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj escapeway_event

# .data:0x3D14 | 0xBCF4 | size: 0xE8
.obj unk_evt_dou_000128f4, local
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_水夫C_dou_0000515c
	.4byte 0x40000020
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0x00000064
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0x000002C8
	.4byte 0xFFFFFF82
	.4byte 0xF24C5A80
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0x00000064
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x000002DA
	.4byte 0xFFFFFF88
	.4byte 0xF24C5A80
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj unk_evt_dou_000128f4

# .data:0x3DFC | 0xBDDC | size: 0x2EC
.obj bombwall_bomb, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_ana_before_dou_000054c4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_OFF_WALL_BREAK1_dou_000054d4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001005B
	.4byte evt_mario_wait_landon
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0001005C
	.4byte unk_evt_dou_000128f4
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_img_entry
	.4byte str_capture_img_dou_000054e8
	.4byte 0x0003005B
	.4byte evt_img_set_paper
	.4byte str_capture_img_dou_000054e8
	.4byte str_OFF_d_bom_ver2_dou_000054f4
	.4byte 0x0002005B
	.4byte evt_offscreen_entry
	.4byte str_offscreen_dou_00005504
	.4byte 0x0004005B
	.4byte evt_mapobj_set_offscreen
	.4byte 0x00000001
	.4byte str_S_ana_before_dou_000054c4
	.4byte str_offscreen_dou_00005504
	.4byte 0x0006005B
	.4byte evt_offscreen_get_boundingbox2
	.4byte str_offscreen_dou_00005504
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C8D
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_img_alloc_capture
	.4byte str_capture_img_dou_000054e8
	.4byte 0x00000000
	.4byte str_offscreen_dou_00005504
	.4byte 0x00000001
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0x0002005B
	.4byte evt_img_clear_virtual_point
	.4byte str_capture_img_dou_000054e8
	.4byte 0x0003005B
	.4byte evt_img_set_paper_anim
	.4byte str_capture_img_dou_000054e8
	.4byte str_A_1_dou_00005510
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_ana_before1_dou_00005514
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_ana_before_dou_000054c4
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_ana_after_dou_00005524
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_img_wait_animend
	.4byte str_capture_img_dou_000054e8
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_ana_before1_dou_00005514
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_ana_before_dou_000054c4
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_ana_after_dou_00005524
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_mapobj_clear_offscreen
	.4byte 0x00000001
	.4byte str_S_ana_before_dou_000054c4
	.4byte 0x0003005B
	.4byte evt_img_free_capture
	.4byte str_capture_img_dou_000054e8
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_img_free_capture
	.4byte str_capture_img_dou_000054e8
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_capture_img_dou_000054e8
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_img_release
	.4byte str_capture_img_dou_000054e8
	.4byte 0x0002005B
	.4byte evt_offscreen_delete
	.4byte str_offscreen_dou_00005504
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_party_use_check
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0001005B
	.4byte evt_mario_wait_landon
	.4byte 0x0001005C
	.4byte bombwall_after
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_n_bero_dou_00005194
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x0005005B
	.4byte evt_hitobj_attr_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_n_bero_dou_00005194
	.4byte 0x00000004
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000100
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bombwall_bomb

# .data:0x40E8 | 0xC0C8 | size: 0x200
.obj bombwall_init, local
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_ana_after_dou_00005524
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_ana_before_dou_000054c4
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_ana_before1_dou_00005514
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_hibiato_dou_00005530
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_hibimae_dou_0000553c
	.4byte 0x00000001
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010028
	.4byte 0x000000FD
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_hibimae_dou_0000553c
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_ana_before_dou_000054c4
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_n_bero_dou_00005194
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x0005005B
	.4byte evt_hitobj_attr_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_n_bero_dou_00005194
	.4byte 0x00000004
	.4byte 0x0002002F
	.4byte 0x000000FE
	.4byte 0x000000FF
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_hibiato_dou_00005530
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_ana_before_dou_000054c4
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_ana_before1_dou_00005514
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_n_bero_dou_00005194
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x0005005B
	.4byte evt_hitobj_attr_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_n_bero_dou_00005194
	.4byte 0x00000004
	.4byte 0x0002005B
	.4byte evt_paper_entry
	.4byte str_OFF_d_bom_ver2_dou_000054f4
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x0000000F
	.4byte 0x00000001
	.4byte str_n_bero_dou_00005194
	.4byte 0x00000000
	.4byte bombwall_bomb
	.4byte 0x00000000
	.4byte 0x00010029
	.4byte 0x00000100
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_hibiato_dou_00005530
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_ana_after_dou_00005524
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_n_bero_dou_00005194
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x0005005B
	.4byte evt_hitobj_attr_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_n_bero_dou_00005194
	.4byte 0x00000004
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bombwall_init

# .data:0x42E8 | 0xC2C8 | size: 0x134
.obj bombwall_suifuout_secheck, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_nannpc_get_work
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0xFE363C80
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x0000005F
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00020018
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_nannpc_get_position
	.4byte 0xFE363C8E
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_KINOPIO_MOV_dou_00005548
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C8D
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8D
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bombwall_suifuout_secheck

# .data:0x441C | 0xC3FC | size: 0x350
.obj bombwall_suifuout, local
	.4byte 0x0004005B
	.4byte evt_nannpc_set_work
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_nannpc_get_position
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00020018
	.4byte 0xFE363C82
	.4byte 0x00000032
	.4byte 0x0002001D
	.4byte 0xFE363C81
	.4byte 0x000002C6
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000020
	.4byte 0x00010004
	.4byte 0x00000014
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00010004
	.4byte 0x0000001E
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x0003005B
	.4byte evt_nannpc_set_dir
	.4byte 0xFE363C80
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_nannpc_get_position
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000032
	.4byte 0xFE363C81
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000276
	.4byte 0x0004005B
	.4byte evt_nannpc_set_work
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte evt_nannpc_move_position2
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xF24E3A80
	.4byte 0x0004005B
	.4byte evt_nannpc_set_work
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000096
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000064
	.4byte 0x0001000A
	.4byte 0xFE363C8A
	.4byte 0x00010003
	.4byte 0x00000014
	.4byte 0x0003005B
	.4byte evt_nannpc_set_dir
	.4byte 0xFE363C80
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_nannpc_get_position
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000019
	.4byte 0xFE363C83
	.4byte 0x00020035
	.4byte 0xFE363C83
	.4byte 0xFFFFFF83
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x000000C8
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000190
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000014
	.4byte 0xFE363C8B
	.4byte 0x00020035
	.4byte 0xFE363C8B
	.4byte 0x0000001E
	.4byte 0x0007005B
	.4byte evt_nannpc_jump_position
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00000046
	.4byte 0xFE363C83
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000096
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000064
	.4byte 0x0001000A
	.4byte 0xFE363C8A
	.4byte 0x00010003
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte evt_nannpc_set_dir
	.4byte 0xFE363C80
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_nannpc_get_position
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000003C
	.4byte 0xFE363C81
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x000002EE
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x000000C8
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000190
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000001E
	.4byte 0xFE363C8B
	.4byte 0x00020035
	.4byte 0xFE363C8B
	.4byte 0x00000028
	.4byte 0x0007005B
	.4byte evt_nannpc_jump_position
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00000064
	.4byte 0xFE363C83
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000096
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000064
	.4byte 0x0001000A
	.4byte 0xFE363C8A
	.4byte 0x00010003
	.4byte 0x00000028
	.4byte 0x0003005B
	.4byte evt_nannpc_set_animtbl
	.4byte 0xFE363C80
	.4byte suifu_run_animtbl
	.4byte 0x0005005B
	.4byte evt_nannpc_get_position
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00020035
	.4byte 0xFE363C83
	.4byte 0xFFFFFFCE
	.4byte 0x0004005B
	.4byte evt_nannpc_set_work
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte evt_nannpc_move_position2
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xF24E3A80
	.4byte 0x0004005B
	.4byte evt_nannpc_set_work
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_nannpc_set_position
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bombwall_suifuout

# .data:0x476C | 0xC74C | size: 0x668
.obj bombwall_after, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0x0000030C
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_水夫C_dou_0000515c
	.4byte 0x40000020
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_水夫D_dou_00005164
	.4byte 0x40000020
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_水夫E_dou_0000516c
	.4byte 0x40000020
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_モニー_dou_00005110
	.4byte 0x40000020
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ピートン_dou_00005118
	.4byte 0x40000020
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000002E6
	.4byte 0x000000E9
	.4byte 0x000001AD
	.4byte 0x000002E6
	.4byte 0x00000093
	.4byte 0xFFFFFFC1
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_水夫C_dou_0000515c
	.4byte 0x0000030C
	.4byte 0xFFFFFF79
	.4byte 0x00000000
	.4byte 0xF24D4A80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_水夫C_dou_0000515c
	.4byte str_mario_dou_00005154
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_17_12_dou_00005560
	.4byte 0x00000000
	.4byte str_水夫C_dou_0000515c
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_水夫C_dou_0000515c
	.4byte 0x0000030C
	.4byte 0xFFFFFF47
	.4byte 0x00000000
	.4byte 0xF24D4A80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_水夫C_dou_0000515c
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_水夫D_dou_00005164
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_水夫D_dou_00005164
	.4byte 0x000002A1
	.4byte 0xFFFFFFDA
	.4byte 0x00000000
	.4byte 0xF24D4A80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_水夫D_dou_00005164
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_水夫D_dou_00005164
	.4byte 0x000002A4
	.4byte 0x00000046
	.4byte 0xFFFFFF92
	.4byte 0x00000190
	.4byte 0x00000032
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_水夫D_dou_00005164
	.4byte 0x0000030C
	.4byte 0x00000064
	.4byte 0xFFFFFF79
	.4byte 0x000001F4
	.4byte 0x00000046
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_水夫D_dou_00005164
	.4byte str_mario_dou_00005154
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_17_13_dou_00005570
	.4byte 0x00000000
	.4byte str_水夫D_dou_00005164
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_水夫D_dou_00005164
	.4byte 0x0000030C
	.4byte 0xFFFFFF47
	.4byte 0x00000000
	.4byte 0xF24D4A80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_水夫D_dou_00005164
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ピートン_dou_00005118
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ピートン_dou_00005118
	.4byte 0x000002AD
	.4byte 0xFFFFFFD0
	.4byte 0x00000000
	.4byte 0xF24D4A80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ピートン_dou_00005118
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_ピートン_dou_00005118
	.4byte 0x000002A8
	.4byte 0x00000046
	.4byte 0xFFFFFF92
	.4byte 0x00000190
	.4byte 0x00000032
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_ピートン_dou_00005118
	.4byte 0x00000320
	.4byte 0x00000064
	.4byte 0xFFFFFF79
	.4byte 0x000001F4
	.4byte 0x00000032
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_ピートン_dou_00005118
	.4byte str_mario_dou_00005154
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_モニー_dou_00005110
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_モニー_dou_00005110
	.4byte 0x0000028F
	.4byte 0xFFFFFFD0
	.4byte 0x00000000
	.4byte 0xF24D4A80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_モニー_dou_00005110
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_モニー_dou_00005110
	.4byte 0x0000028A
	.4byte 0x00000046
	.4byte 0xFFFFFF92
	.4byte 0x00000190
	.4byte 0x00000032
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_モニー_dou_00005110
	.4byte 0x00000302
	.4byte 0x00000064
	.4byte 0xFFFFFF79
	.4byte 0x000001F4
	.4byte 0x00000032
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_モニー_dou_00005110
	.4byte str_mario_dou_00005154
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0001000B
	.4byte 0xFAA2B580
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_17_14_dou_00005580
	.4byte 0x00000000
	.4byte str_モニー_dou_00005110
	.4byte 0x0003005B
	.4byte evt_nannpc_set_subfunc
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ピートン_dou_00005118
	.4byte 0x00000320
	.4byte 0xFFFFFF47
	.4byte 0x00000000
	.4byte 0xF24D4A80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ピートン_dou_00005118
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_モニー_dou_00005110
	.4byte 0x00000302
	.4byte 0xFFFFFF47
	.4byte 0x00000000
	.4byte 0xF24D4A80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_モニー_dou_00005110
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001005C
	.4byte bombwall_suifuout_secheck
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG5_KINOPIO_MOV_dou_00005590
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte bombwall_suifuout
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x0000005F
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x0000003C
	.4byte 0x0001005C
	.4byte bombwall_suifuout
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x0000005F
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x0000003C
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_水夫E_dou_0000516c
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_水夫E_dou_0000516c
	.4byte 0x000002A1
	.4byte 0xFFFFFFDA
	.4byte 0x00000000
	.4byte 0xF24D4A80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_水夫E_dou_0000516c
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_水夫E_dou_0000516c
	.4byte 0x000002A4
	.4byte 0x00000046
	.4byte 0xFFFFFF92
	.4byte 0x00000190
	.4byte 0x00000032
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_水夫E_dou_0000516c
	.4byte 0x0000030C
	.4byte 0x00000064
	.4byte 0xFFFFFF79
	.4byte 0x000001F4
	.4byte 0x00000046
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_水夫E_dou_0000516c
	.4byte str_mario_dou_00005154
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_dou_17_15_dou_000055a8
	.4byte 0x00000000
	.4byte str_水夫E_dou_0000516c
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_水夫E_dou_0000516c
	.4byte 0x0000030C
	.4byte 0xFFFFFF47
	.4byte 0x00000000
	.4byte 0xF24D4A80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_水夫E_dou_0000516c
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bombwall_after

# .data:0x4DD4 | 0xCDB4 | size: 0xB8
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
	.4byte zero_dou_0000525c
	.4byte str_hokori_n64_dou_000055b8
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

# .data:0x4E8C | 0xCE6C | size: 0x190
.obj haikei_funeyure, local
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte dou_mario_kaiten_hosei
	.4byte str_A_h_fune_dou_000055d0
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_A_h_fune_dou_000055d0
	.4byte str_S_h_fune_dou_000055dc
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_h_fune_dou_000055dc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_SHIP_SHAKE1_dou_000055e8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFFFFFFF6
	.4byte 0x0000000A
	.4byte 0x00000BB8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_h_fune_dou_000055dc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_A_h_fune_dou_000055d0
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_h_fune_dou_000055dc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_SHIP_SHAKE1_dou_000055e8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x0000000A
	.4byte 0xFFFFFFF6
	.4byte 0x00000BB8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_h_fune_dou_000055dc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_A_h_fune_dou_000055d0
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj haikei_funeyure

# .data:0x501C | 0xCFFC | size: 0x3C
.obj evt_ride_taru, local
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_BARREL_ON1_dou_00005600
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_ride_taru

# .data:0x5058 | 0xD038 | size: 0xF0
.obj dou_puka_event_main0, local
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000190
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x000000C8
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_dou_normal_puka_5_text_2C
	.4byte 0xFE363C8B
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00020033
	.4byte 0xFE363C8C
	.4byte 0xFD050F80
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFD050F80
	.4byte 0xFE363C8B
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte 0xFE363C81
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x00000082
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dou_puka_event_main0

# .data:0x5148 | 0xD128 | size: 0xF0
.obj dou_puka_event_main10, local
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000190
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x000000C8
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_dou_normal_puka_5_text_2C
	.4byte 0xFE363C8B
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00020033
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0x00000000
	.4byte 0xFE363C8B
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte 0xFE363C81
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x00000082
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dou_puka_event_main10

# .data:0x5238 | 0xD218 | size: 0xF0
.obj dou_puka_event_main11, local
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000190
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x000000C8
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_dou_normal_puka_5_text_2C
	.4byte 0xFE363C8B
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00020033
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0x00000000
	.4byte 0xFE363C8B
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte 0xFE363C81
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x00000082
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dou_puka_event_main11

# .data:0x5328 | 0xD308 | size: 0xF0
.obj dou_puka_event_main12, local
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000190
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x000000C8
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_dou_normal_puka_5_text_2C
	.4byte 0xFE363C8B
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00020033
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0x00000000
	.4byte 0xFE363C8B
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte 0xFE363C81
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x00000082
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dou_puka_event_main12

# .data:0x5418 | 0xD3F8 | size: 0xF0
.obj dou_puka_event_main13, local
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000190
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x000000C8
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_dou_normal_puka_5_text_2C
	.4byte 0xFE363C8B
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00020033
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0x00000000
	.4byte 0xFE363C8B
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte 0xFE363C81
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x00000082
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dou_puka_event_main13

# .data:0x5508 | 0xD4E8 | size: 0xF0
.obj dou_puka_event_main14, local
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000190
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x000000C8
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_dou_normal_puka_5_text_2C
	.4byte 0xFE363C8B
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00020033
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0x00000000
	.4byte 0xFE363C8B
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte 0xFE363C81
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x00000082
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dou_puka_event_main14

# .data:0x55F8 | 0xD5D8 | size: 0xF0
.obj dou_puka_event_main15, local
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000190
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x000000C8
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_dou_normal_puka_5_text_2C
	.4byte 0xFE363C8B
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00020033
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0x00000000
	.4byte 0xFE363C8B
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte 0xFE363C81
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x00000082
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dou_puka_event_main15

# .data:0x56E8 | 0xD6C8 | size: 0xF0
.obj dou_puka_event_main16, local
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000190
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x000000C8
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_dou_normal_puka_5_text_2C
	.4byte 0xFE363C8B
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00020033
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0x00000000
	.4byte 0xFE363C8B
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte 0xFE363C81
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x00000082
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dou_puka_event_main16

# .data:0x57D8 | 0xD7B8 | size: 0xF0
.obj dou_puka_event_main17, local
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000190
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x000000C8
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_dou_normal_puka_5_text_2C
	.4byte 0xFE363C8B
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00020033
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0x00000000
	.4byte 0xFE363C8B
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte 0xFE363C81
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x00000082
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dou_puka_event_main17

# .data:0x58C8 | 0xD8A8 | size: 0x20
.obj dou_puka_event_init1, local
	.4byte 0x00020032
	.4byte 0xFD050F81
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFD050F82
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dou_puka_event_init1

# .data:0x58E8 | 0xD8C8 | size: 0x60
.obj dou_puka_event_1, local
	.4byte 0x00020019
	.4byte 0xFD050F81
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFD050F81
	.4byte 0x00000001
	.4byte 0x00020033
	.4byte 0xFE363C86
	.4byte 0xFD050F82
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte 0xFE363C83
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte dou_puka_event_5_data_1C4
	.4byte 0x00020032
	.4byte 0xFD050F81
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dou_puka_event_1

# .data:0x5948 | 0xD928 | size: 0x28
.obj dou_puka_event_rev_1, local
	.4byte 0x00020019
	.4byte 0xFD050F81
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFD050F81
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dou_puka_event_rev_1

# .data:0x5970 | 0xD950 | size: 0x54
.obj dou_puka_event_main1, local
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFD050F82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte 0xFE363C81
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dou_puka_event_main1

# .data:0x59C4 | 0xD9A4 | size: 0xB4
.obj dou_puka_event_sub1, local
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000190
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x000000C8
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x00020033
	.4byte 0xFE363C86
	.4byte 0xFD050F82
	.4byte 0x0002005D
	.4byte dou_normal_puka_5_data_A0
	.4byte 0xFE363C80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFD050F81
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001005F
	.4byte 0xFE363C80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFD050F81
	.4byte 0x00000002
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005D
	.4byte dou_normal_puka_5_data_A0
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dou_puka_event_sub1

# .data:0x5A78 | 0xDA58 | size: 0x20
.obj dou_puka_event_init2, local
	.4byte 0x00020032
	.4byte 0xFD050F83
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFD050F84
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dou_puka_event_init2

# .data:0x5A98 | 0xDA78 | size: 0x60
.obj dou_puka_event_2, local
	.4byte 0x00020019
	.4byte 0xFD050F83
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFD050F83
	.4byte 0x00000001
	.4byte 0x00020033
	.4byte 0xFE363C86
	.4byte 0xFD050F84
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte 0xFE363C83
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte dou_puka_event_5_data_1C4
	.4byte 0x00020032
	.4byte 0xFD050F83
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dou_puka_event_2

# .data:0x5AF8 | 0xDAD8 | size: 0x28
.obj dou_puka_event_rev_2, local
	.4byte 0x00020019
	.4byte 0xFD050F83
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFD050F83
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dou_puka_event_rev_2

# .data:0x5B20 | 0xDB00 | size: 0x54
.obj dou_puka_event_main2, local
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFD050F84
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte 0xFE363C81
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dou_puka_event_main2

# .data:0x5B74 | 0xDB54 | size: 0xB4
.obj dou_puka_event_sub2, local
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000190
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x000000C8
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x00020033
	.4byte 0xFE363C86
	.4byte 0xFD050F84
	.4byte 0x0002005D
	.4byte dou_normal_puka_5_data_A0
	.4byte 0xFE363C80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFD050F83
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001005F
	.4byte 0xFE363C80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFD050F83
	.4byte 0x00000002
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005D
	.4byte dou_normal_puka_5_data_A0
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dou_puka_event_sub2

# .data:0x5C28 | 0xDC08 | size: 0x20
.obj dou_puka_event_init3, local
	.4byte 0x00020032
	.4byte 0xFD050F85
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFD050F86
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dou_puka_event_init3

# .data:0x5C48 | 0xDC28 | size: 0x60
.obj dou_puka_event_3, local
	.4byte 0x00020019
	.4byte 0xFD050F85
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFD050F85
	.4byte 0x00000001
	.4byte 0x00020033
	.4byte 0xFE363C86
	.4byte 0xFD050F86
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte 0xFE363C83
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte dou_puka_event_5_data_1C4
	.4byte 0x00020032
	.4byte 0xFD050F85
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dou_puka_event_3

# .data:0x5CA8 | 0xDC88 | size: 0x28
.obj dou_puka_event_rev_3, local
	.4byte 0x00020019
	.4byte 0xFD050F85
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFD050F85
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dou_puka_event_rev_3

# .data:0x5CD0 | 0xDCB0 | size: 0x54
.obj dou_puka_event_main3, local
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFD050F86
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte 0xFE363C81
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dou_puka_event_main3

# .data:0x5D24 | 0xDD04 | size: 0xB4
.obj dou_puka_event_sub3, local
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000190
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x000000C8
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x00020033
	.4byte 0xFE363C86
	.4byte 0xFD050F86
	.4byte 0x0002005D
	.4byte dou_normal_puka_5_data_A0
	.4byte 0xFE363C80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFD050F85
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001005F
	.4byte 0xFE363C80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFD050F85
	.4byte 0x00000002
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005D
	.4byte dou_normal_puka_5_data_A0
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dou_puka_event_sub3

# .data:0x5DD8 | 0xDDB8 | size: 0x20
.obj dou_puka_event_init4, local
	.4byte 0x00020032
	.4byte 0xFD050F87
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFD050F88
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dou_puka_event_init4

# .data:0x5DF8 | 0xDDD8 | size: 0x60
.obj dou_puka_event_4, local
	.4byte 0x00020019
	.4byte 0xFD050F87
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFD050F87
	.4byte 0x00000001
	.4byte 0x00020033
	.4byte 0xFE363C86
	.4byte 0xFD050F88
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte 0xFE363C83
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte dou_puka_event_5_data_1C4
	.4byte 0x00020032
	.4byte 0xFD050F87
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dou_puka_event_4

# .data:0x5E58 | 0xDE38 | size: 0x28
.obj dou_puka_event_rev_4, local
	.4byte 0x00020019
	.4byte 0xFD050F87
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFD050F87
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dou_puka_event_rev_4

# .data:0x5E80 | 0xDE60 | size: 0x54
.obj dou_puka_event_main4, local
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFD050F88
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte 0xFE363C81
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dou_puka_event_main4

# .data:0x5ED4 | 0xDEB4 | size: 0xB4
.obj dou_puka_event_sub4, local
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000190
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x000000C8
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x00020033
	.4byte 0xFE363C86
	.4byte 0xFD050F88
	.4byte 0x0002005D
	.4byte dou_normal_puka_5_data_A0
	.4byte 0xFE363C80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFD050F87
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001005F
	.4byte 0xFE363C80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFD050F87
	.4byte 0x00000002
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005D
	.4byte dou_normal_puka_5_data_A0
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dou_puka_event_sub4

# .data:0x5F88 | 0xDF68 | size: 0x118
.obj pukapuka_watari_init01, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_S_taru_n01_dou_0000526c
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_A_taru_n01_dou_00005278
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte str_A_taru_n01_dou_00005278
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte evt_ride_taru
	.4byte 0x0001005E
	.4byte dou_puka_event_init1
	.4byte 0x0001005C
	.4byte dou_puka_event_main1
	.4byte 0x0001005C
	.4byte dou_puka_event_sub1
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_A_taru_n01_dou_00005278
	.4byte 0x00000000
	.4byte dou_puka_event_1
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_A_taru_n01_dou_00005278
	.4byte 0x00000000
	.4byte dou_puka_event_rev_1
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_S_taru_n02_dou_00005284
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_A_taru_n02_dou_00005290
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte str_A_taru_n02_dou_00005290
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte evt_ride_taru
	.4byte 0x0001005E
	.4byte dou_puka_event_init2
	.4byte 0x0001005C
	.4byte dou_puka_event_main2
	.4byte 0x0001005C
	.4byte dou_puka_event_sub2
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_A_taru_n02_dou_00005290
	.4byte 0x00000000
	.4byte dou_puka_event_2
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_A_taru_n02_dou_00005290
	.4byte 0x00000000
	.4byte dou_puka_event_rev_2
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj pukapuka_watari_init01

# .data:0x60A0 | 0xE080 | size: 0x118
.obj pukapuka_watari_init02, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_S_taru_n03_dou_0000529c
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_A_taru_n03_dou_000052a8
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte str_A_taru_n03_dou_000052a8
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte evt_ride_taru
	.4byte 0x0001005E
	.4byte dou_puka_event_init3
	.4byte 0x0001005C
	.4byte dou_puka_event_main3
	.4byte 0x0001005C
	.4byte dou_puka_event_sub3
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_A_taru_n03_dou_000052a8
	.4byte 0x00000000
	.4byte dou_puka_event_3
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_A_taru_n03_dou_000052a8
	.4byte 0x00000000
	.4byte dou_puka_event_rev_3
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_S_taru_n04_dou_000052b4
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_A_taru_n04_dou_000052c0
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte str_A_taru_n04_dou_000052c0
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte evt_ride_taru
	.4byte 0x0001005E
	.4byte dou_puka_event_init4
	.4byte 0x0001005C
	.4byte dou_puka_event_main4
	.4byte 0x0001005C
	.4byte dou_puka_event_sub4
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_A_taru_n04_dou_000052c0
	.4byte 0x00000000
	.4byte dou_puka_event_4
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_A_taru_n04_dou_000052c0
	.4byte 0x00000000
	.4byte dou_puka_event_rev_4
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj pukapuka_watari_init02

# .data:0x61B8 | 0xE198 | size: 0x110
.obj hitDmgRetPoints_1st, local
	.4byte str_mod_01_dou_0000538c
	.4byte 0x43C80000
	.4byte 0x41700000
	.4byte 0x00000000
	.4byte str_mod_02_dou_00005614
	.4byte 0xC4228000
	.4byte 0x43480000
	.4byte 0x00000000
	.4byte str_mod_03_dou_0000561c
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_04_dou_00005624
	.4byte 0xC3500000
	.4byte 0x42480000
	.4byte 0xC2C00000
	.4byte str_mod_010_dou_0000562c
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_Ship_Change_01_dou_00005634
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_Ship_Change_02_dou_00005644
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_Ship_Change_03_dou_00005654
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_Ship_Change_04_dou_00005664
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_a11_a_usiro_dou_00005674
	.4byte 0x43200000
	.4byte 0x42140000
	.4byte 0x00000000
	.4byte str_a11_a_kaidana_01_dou_00005680
	.4byte 0x43200000
	.4byte 0x42140000
	.4byte 0x00000000
	.4byte str_a11_a_kaidanb_01_dou_00005694
	.4byte 0x43200000
	.4byte 0x42140000
	.4byte 0x00000000
	.4byte str_dokan_1_dou_000051b0
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_dokan_2_dou_000051c0
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_dokan_3_dou_000051d0
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_dokan_7_dou_000051e0
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj hitDmgRetPoints_1st

# .data:0x62C8 | 0xE2A8 | size: 0x110
.obj hitDmgRetPoints, local
	.4byte str_mod_01_dou_0000538c
	.4byte 0x44354000
	.4byte 0x42480000
	.4byte 0x42B40000
	.4byte str_mod_02_dou_00005614
	.4byte 0xC4228000
	.4byte 0x43480000
	.4byte 0x00000000
	.4byte str_mod_03_dou_0000561c
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_mod_04_dou_00005624
	.4byte 0xC3500000
	.4byte 0x42480000
	.4byte 0xC2C00000
	.4byte str_mod_010_dou_0000562c
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_Ship_Change_01_dou_00005634
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_Ship_Change_02_dou_00005644
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_Ship_Change_03_dou_00005654
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_Ship_Change_04_dou_00005664
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_a11_a_usiro_dou_00005674
	.4byte 0x43200000
	.4byte 0x42140000
	.4byte 0x00000000
	.4byte str_a11_a_kaidana_01_dou_00005680
	.4byte 0x43200000
	.4byte 0x42140000
	.4byte 0x00000000
	.4byte str_a11_a_kaidanb_01_dou_00005694
	.4byte 0x43200000
	.4byte 0x42140000
	.4byte 0x00000000
	.4byte str_dokan_1_dou_000051b0
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_dokan_2_dou_000051c0
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_dokan_3_dou_000051d0
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte str_dokan_7_dou_000051e0
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj hitDmgRetPoints

# .data:0x63D8 | 0xE3B8 | size: 0x4CC
.obj dou_11_init_evt_5_data_E3B8, global
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG5_DOU1_dou_000056a8
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG5_DOU12_dou_000056b8
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
	.4byte 0x0002005B
	.4byte evt_npc_setup
	.4byte npcEnt
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_モニー_dou_00005110
	.4byte str_モニー（指輪）_dou_000056c8
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_ピートン_dou_00005118
	.4byte str_ピートン（指輪）_dou_000056d8
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_nami_dou_000056ec
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_moku_dou_000056f4
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte bombwall_init
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010024
	.4byte 0x000000F9
	.4byte 0x00020018
	.4byte 0xF8406726
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte torinoko_suifu
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406730
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte torinoko_suifu_init
	.4byte 0x0001005C
	.4byte torinoko_suifu_sakebu
	.4byte 0x00000021
	.4byte 0x00010024
	.4byte 0x000000FE
	.4byte 0x0001005C
	.4byte escapeway_event
	.4byte 0x00000031
	.4byte 0x00020018
	.4byte 0xF8406730
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_fune_atari_dou_00005224
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x000000F9
	.4byte 0x00020018
	.4byte 0xF8406730
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte watarikiri_suifu_init
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_モニー_dou_00005110
	.4byte 0x000002A9
	.4byte 0x00000032
	.4byte 0xFFFFFFB5
	.4byte 0x0003005B
	.4byte evt_npc_set_ry_lr
	.4byte str_モニー_dou_00005110
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ピートン_dou_00005118
	.4byte 0x000002CA
	.4byte 0x00000032
	.4byte 0xFFFFFFB2
	.4byte 0x0003005B
	.4byte evt_npc_set_ry_lr
	.4byte str_ピートン_dou_00005118
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFD050F8A
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte suifu_orei
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x000000FA
	.4byte 0x0002001C
	.4byte 0xF5DE0180
	.4byte 0x000000FF
	.4byte 0x0001005C
	.4byte watarikiri_suifu_init
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0008005B
	.4byte evt_mobj_switch_blue
	.4byte 0x00000002
	.4byte str_mobj01_dou_000056fc
	.4byte 0xFFFFFF24
	.4byte 0x00000078
	.4byte 0xFFFFFE3E
	.4byte unk_evt_dou_00011774
	.4byte 0xF8406727
	.4byte 0x0008005B
	.4byte evt_mobj_switch_blue
	.4byte 0x00000002
	.4byte str_mobj02_dou_00005704
	.4byte 0x00000050
	.4byte 0x00000078
	.4byte 0xFFFFFE3E
	.4byte unk_evt_dou_000117d0
	.4byte 0xF8406728
	.4byte 0x0001005C
	.4byte ukishima_init1
	.4byte 0x0001005C
	.4byte ukishima_init2
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x000000FD
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_taru_n03_dou_0000529c
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_taru_n03_dou_000052a8
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_taru_n04_dou_000052b4
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_taru_n04_dou_000052c0
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0001005C
	.4byte haikei_funeyure
	.4byte 0x0004005B
	.4byte evt_map_entry_airport_harbor
	.4byte 0x00000000
	.4byte str_S_hikou_dou_0000570c
	.4byte str_A_hikou_dou_00005714
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x000000FA
	.4byte 0x0002005B
	.4byte evt_hit_damage_return_set
	.4byte hitDmgRetPoints_1st
	.4byte 0x00000020
	.4byte 0x0002005B
	.4byte evt_hit_damage_return_set
	.4byte hitDmgRetPoints
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte evt_gazigazi_entry
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_s11fune1_dou_0000571c
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0002005D
	.4byte dou_puka_event_main0
	.4byte 0xFE363C8A
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_S_taru01_dou_00005728
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0002005D
	.4byte dou_puka_event_main10
	.4byte 0xFE363C8A
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_S_taru02_dou_00005734
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0002005D
	.4byte dou_puka_event_main11
	.4byte 0xFE363C8A
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_S_taru03_dou_00005740
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0002005D
	.4byte dou_puka_event_main12
	.4byte 0xFE363C8A
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_S_taru04_dou_0000574c
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0002005D
	.4byte dou_puka_event_main13
	.4byte 0xFE363C8A
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_S_bin01_dou_00005758
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0002005D
	.4byte dou_puka_event_main14
	.4byte 0xFE363C8A
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_S_bin02_dou_00005760
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0002005D
	.4byte dou_puka_event_main15
	.4byte 0xFE363C8A
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_S_bin03_dou_00005768
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0002005D
	.4byte dou_puka_event_main16
	.4byte 0xFE363C8A
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_S_bin04_dou_00005770
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0002005D
	.4byte dou_puka_event_main17
	.4byte 0xFE363C8A
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xF8406727
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xF8406728
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte pukapuka_watari_init01
	.4byte 0x00000021
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0001005C
	.4byte pukapuka_watari_init02
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_map_entry_airport_harbor
	.4byte 0x00000001
	.4byte str_S_Ship_Change_01_dou_00005778
	.4byte str_Ship_Change_01_dou_00005634
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
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_ana_before_dou_0000578c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dou_11_init_evt_5_data_E3B8

# .data:0x68A4 | 0xE884 | size: 0x4
.obj gap_04_0000E884_data, global
.hidden gap_04_0000E884_data
	.4byte 0x00000000
.endobj gap_04_0000E884_data
