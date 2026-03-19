.include "macros.inc"
.file "unit_dokugassun.o"

# 0x0001EAE4..0x0001EE0C | size: 0x328
.text
.balign 4

# .text:0x0 | 0x1EAE4 | size: 0x18C
.fn eff_poison_breath, local
/* 0001EAE4 0001EBA8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 0001EAE8 0001EBAC  7C 08 02 A6 */	mflr r0
/* 0001EAEC 0001EBB0  90 01 00 64 */	stw r0, 0x64(r1)
/* 0001EAF0 0001EBB4  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 0001EAF4 0001EBB8  F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 0001EAF8 0001EBBC  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 0001EAFC 0001EBC0  F3 C1 00 48 */	psq_st f30, 0x48(r1), 0, qr0
/* 0001EB00 0001EBC4  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 0001EB04 0001EBC8  F3 A1 00 38 */	psq_st f29, 0x38(r1), 0, qr0
/* 0001EB08 0001EBCC  80 83 00 18 */	lwz r4, 0x18(r3)
/* 0001EB0C 0001EBD0  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0001EB10 0001EBD4  4B FE 17 49 */	bl evtGetValue
/* 0001EB14 0001EBD8  2C 03 00 00 */	cmpwi r3, 0x0
/* 0001EB18 0001EBDC  40 82 00 10 */	bne .L_0001EB28
/* 0001EB1C 0001EBE0  3C 60 00 00 */	lis r3, float_neg125_mri_00027258@ha
/* 0001EB20 0001EBE4  C3 E3 00 00 */	lfs f31, float_neg125_mri_00027258@l(r3)
/* 0001EB24 0001EBE8  48 00 00 0C */	b .L_0001EB30
.L_0001EB28:
/* 0001EB28 0001EBEC  3C 60 00 00 */	lis r3, float_125_mri_0002725c@ha
/* 0001EB2C 0001EBF0  C3 E3 00 00 */	lfs f31, float_125_mri_0002725c@l(r3)
.L_0001EB30:
/* 0001EB30 0001EBF4  38 60 00 96 */	li r3, 0x96
/* 0001EB34 0001EBF8  4B FE 17 25 */	bl irand
/* 0001EB38 0001EBFC  38 63 FF B5 */	subi r3, r3, 0x4b
/* 0001EB3C 0001EC00  3C 00 43 30 */	lis r0, 0x4330
/* 0001EB40 0001EC04  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 0001EB44 0001EC08  3C 80 00 00 */	lis r4, double_to_int_mri_00027268@ha
/* 0001EB48 0001EC0C  90 61 00 0C */	stw r3, 0xc(r1)
/* 0001EB4C 0001EC10  38 60 00 46 */	li r3, 0x46
/* 0001EB50 0001EC14  C8 24 00 00 */	lfd f1, double_to_int_mri_00027268@l(r4)
/* 0001EB54 0001EC18  90 01 00 08 */	stw r0, 0x8(r1)
/* 0001EB58 0001EC1C  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 0001EB5C 0001EC20  EC 00 08 28 */	fsubs f0, f0, f1
/* 0001EB60 0001EC24  EF FF 00 2A */	fadds f31, f31, f0
/* 0001EB64 0001EC28  4B FE 16 F5 */	bl irand
/* 0001EB68 0001EC2C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 0001EB6C 0001EC30  3C 00 43 30 */	lis r0, 0x4330
/* 0001EB70 0001EC34  90 61 00 14 */	stw r3, 0x14(r1)
/* 0001EB74 0001EC38  3C 80 00 00 */	lis r4, double_to_int_mri_00027268@ha
/* 0001EB78 0001EC3C  C8 24 00 00 */	lfd f1, double_to_int_mri_00027268@l(r4)
/* 0001EB7C 0001EC40  38 60 00 50 */	li r3, 0x50
/* 0001EB80 0001EC44  90 01 00 10 */	stw r0, 0x10(r1)
/* 0001EB84 0001EC48  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 0001EB88 0001EC4C  EF C0 08 28 */	fsubs f30, f0, f1
/* 0001EB8C 0001EC50  4B FE 16 CD */	bl irand
/* 0001EB90 0001EC54  38 63 FF D8 */	subi r3, r3, 0x28
/* 0001EB94 0001EC58  3C 00 43 30 */	lis r0, 0x4330
/* 0001EB98 0001EC5C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 0001EB9C 0001EC60  3C 80 00 00 */	lis r4, double_to_int_mri_00027268@ha
/* 0001EBA0 0001EC64  90 61 00 1C */	stw r3, 0x1c(r1)
/* 0001EBA4 0001EC68  C8 24 00 00 */	lfd f1, double_to_int_mri_00027268@l(r4)
/* 0001EBA8 0001EC6C  90 01 00 18 */	stw r0, 0x18(r1)
/* 0001EBAC 0001EC70  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 0001EBB0 0001EC74  EF A0 08 28 */	fsubs f29, f0, f1
/* 0001EBB4 0001EC78  4B FE 16 A5 */	bl rand
/* 0001EBB8 0001EC7C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 0001EBBC 0001EC80  3C 00 43 30 */	lis r0, 0x4330
/* 0001EBC0 0001EC84  3C 80 00 00 */	lis r4, double_to_int_mri_00027268@ha
/* 0001EBC4 0001EC88  90 61 00 24 */	stw r3, 0x24(r1)
/* 0001EBC8 0001EC8C  38 A4 00 00 */	addi r5, r4, double_to_int_mri_00027268@l
/* 0001EBCC 0001EC90  3C 60 00 00 */	lis r3, float_32767_mri_00027264@ha
/* 0001EBD0 0001EC94  90 01 00 20 */	stw r0, 0x20(r1)
/* 0001EBD4 0001EC98  38 83 00 00 */	addi r4, r3, float_32767_mri_00027264@l
/* 0001EBD8 0001EC9C  C8 45 00 00 */	lfd f2, 0x0(r5)
/* 0001EBDC 0001ECA0  3C 60 00 00 */	lis r3, float_2p5_mri_00027260@ha
/* 0001EBE0 0001ECA4  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 0001EBE4 0001ECA8  FC 20 F8 90 */	fmr f1, f31
/* 0001EBE8 0001ECAC  C0 84 00 00 */	lfs f4, 0x0(r4)
/* 0001EBEC 0001ECB0  FC 60 E8 90 */	fmr f3, f29
/* 0001EBF0 0001ECB4  EC A0 10 28 */	fsubs f5, f0, f2
/* 0001EBF4 0001ECB8  C0 03 00 00 */	lfs f0, float_2p5_mri_00027260@l(r3)
/* 0001EBF8 0001ECBC  FC 40 F0 90 */	fmr f2, f30
/* 0001EBFC 0001ECC0  38 60 00 00 */	li r3, 0x0
/* 0001EC00 0001ECC4  38 80 00 0F */	li r4, 0xf
/* 0001EC04 0001ECC8  EC 85 20 24 */	fdivs f4, f5, f4
/* 0001EC08 0001ECCC  EC 80 20 2A */	fadds f4, f0, f4
/* 0001EC0C 0001ECD0  4B FE 16 4D */	bl effVaporN64Entry
/* 0001EC10 0001ECD4  80 E3 00 0C */	lwz r7, 0xc(r3)
/* 0001EC14 0001ECD8  38 C0 00 20 */	li r6, 0x20
/* 0001EC18 0001ECDC  38 A0 00 73 */	li r5, 0x73
/* 0001EC1C 0001ECE0  38 80 00 64 */	li r4, 0x64
/* 0001EC20 0001ECE4  90 C7 00 18 */	stw r6, 0x18(r7)
/* 0001EC24 0001ECE8  38 00 00 FF */	li r0, 0xff
/* 0001EC28 0001ECEC  38 60 00 02 */	li r3, 0x2
/* 0001EC2C 0001ECF0  90 A7 00 1C */	stw r5, 0x1c(r7)
/* 0001EC30 0001ECF4  90 87 00 20 */	stw r4, 0x20(r7)
/* 0001EC34 0001ECF8  90 07 00 24 */	stw r0, 0x24(r7)
/* 0001EC38 0001ECFC  90 C7 00 28 */	stw r6, 0x28(r7)
/* 0001EC3C 0001ED00  90 A7 00 2C */	stw r5, 0x2c(r7)
/* 0001EC40 0001ED04  90 87 00 30 */	stw r4, 0x30(r7)
/* 0001EC44 0001ED08  90 07 00 34 */	stw r0, 0x34(r7)
/* 0001EC48 0001ED0C  E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 0001EC4C 0001ED10  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 0001EC50 0001ED14  E3 C1 00 48 */	psq_l f30, 0x48(r1), 0, qr0
/* 0001EC54 0001ED18  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 0001EC58 0001ED1C  E3 A1 00 38 */	psq_l f29, 0x38(r1), 0, qr0
/* 0001EC5C 0001ED20  80 01 00 64 */	lwz r0, 0x64(r1)
/* 0001EC60 0001ED24  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 0001EC64 0001ED28  7C 08 03 A6 */	mtlr r0
/* 0001EC68 0001ED2C  38 21 00 60 */	addi r1, r1, 0x60
/* 0001EC6C 0001ED30  4E 80 00 20 */	blr
.endfn eff_poison_breath

# .text:0x18C | 0x1EC70 | size: 0x19C
.fn eff_poison_barrier, local
/* 0001EC70 0001ED34  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 0001EC74 0001ED38  7C 08 02 A6 */	mflr r0
/* 0001EC78 0001ED3C  90 01 00 74 */	stw r0, 0x74(r1)
/* 0001EC7C 0001ED40  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 0001EC80 0001ED44  F3 E1 00 68 */	psq_st f31, 0x68(r1), 0, qr0
/* 0001EC84 0001ED48  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 0001EC88 0001ED4C  F3 C1 00 58 */	psq_st f30, 0x58(r1), 0, qr0
/* 0001EC8C 0001ED50  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 0001EC90 0001ED54  F3 A1 00 48 */	psq_st f29, 0x48(r1), 0, qr0
/* 0001EC94 0001ED58  BF A1 00 34 */	stmw r29, 0x34(r1)
/* 0001EC98 0001ED5C  7C 7D 1B 78 */	mr r29, r3
/* 0001EC9C 0001ED60  80 83 00 18 */	lwz r4, 0x18(r3)
/* 0001ECA0 0001ED64  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0001ECA4 0001ED68  4B FE 15 B5 */	bl evtGetValue
/* 0001ECA8 0001ED6C  7C 64 1B 78 */	mr r4, r3
/* 0001ECAC 0001ED70  7F A3 EB 78 */	mr r3, r29
/* 0001ECB0 0001ED74  4B FE 15 A9 */	bl BattleTransID
/* 0001ECB4 0001ED78  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0001ECB8 0001ED7C  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 0001ECBC 0001ED80  7C 64 1B 78 */	mr r4, r3
/* 0001ECC0 0001ED84  80 65 00 00 */	lwz r3, 0x0(r5)
/* 0001ECC4 0001ED88  4B FE 15 95 */	bl BattleGetUnitPtr
/* 0001ECC8 0001ED8C  3C C0 00 00 */	lis r6, double_to_int_mri_00027268@ha
/* 0001ECCC 0001ED90  3C A0 00 00 */	lis r5, float_0p5_mri_00027308@ha
/* 0001ECD0 0001ED94  3C 80 00 00 */	lis r4, float_32767_mri_00027264@ha
/* 0001ECD4 0001ED98  CB A6 00 00 */	lfd f29, double_to_int_mri_00027268@l(r6)
/* 0001ECD8 0001ED9C  C3 C5 00 00 */	lfs f30, float_0p5_mri_00027308@l(r5)
/* 0001ECDC 0001EDA0  7C 7E 1B 78 */	mr r30, r3
/* 0001ECE0 0001EDA4  C3 E4 00 00 */	lfs f31, float_32767_mri_00027264@l(r4)
/* 0001ECE4 0001EDA8  3B A0 00 00 */	li r29, 0x0
/* 0001ECE8 0001EDAC  3F E0 43 30 */	lis r31, 0x4330
.L_0001ECEC:
/* 0001ECEC 0001EDB0  7F C3 F3 78 */	mr r3, r30
/* 0001ECF0 0001EDB4  38 81 00 10 */	addi r4, r1, 0x10
/* 0001ECF4 0001EDB8  38 A1 00 0C */	addi r5, r1, 0xc
/* 0001ECF8 0001EDBC  38 C1 00 08 */	addi r6, r1, 0x8
/* 0001ECFC 0001EDC0  4B FE 15 5D */	bl BtlUnit_GetPos
/* 0001ED00 0001EDC4  38 60 00 14 */	li r3, 0x14
/* 0001ED04 0001EDC8  4B FE 15 55 */	bl irand
/* 0001ED08 0001EDCC  38 03 FF F6 */	subi r0, r3, 0xa
/* 0001ED0C 0001EDD0  93 E1 00 18 */	stw r31, 0x18(r1)
/* 0001ED10 0001EDD4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 0001ED14 0001EDD8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 0001ED18 0001EDDC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 0001ED1C 0001EDE0  38 60 00 1E */	li r3, 0x1e
/* 0001ED20 0001EDE4  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 0001ED24 0001EDE8  EC 21 E8 28 */	fsubs f1, f1, f29
/* 0001ED28 0001EDEC  EC 00 08 2A */	fadds f0, f0, f1
/* 0001ED2C 0001EDF0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 0001ED30 0001EDF4  4B FE 15 29 */	bl irand
/* 0001ED34 0001EDF8  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 0001ED38 0001EDFC  93 E1 00 20 */	stw r31, 0x20(r1)
/* 0001ED3C 0001EE00  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 0001ED40 0001EE04  90 01 00 24 */	stw r0, 0x24(r1)
/* 0001ED44 0001EE08  C8 21 00 20 */	lfd f1, 0x20(r1)
/* 0001ED48 0001EE0C  EC 21 E8 28 */	fsubs f1, f1, f29
/* 0001ED4C 0001EE10  EC 00 08 2A */	fadds f0, f0, f1
/* 0001ED50 0001EE14  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 0001ED54 0001EE18  4B FE 15 05 */	bl rand
/* 0001ED58 0001EE1C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 0001ED5C 0001EE20  38 1D 00 01 */	addi r0, r29, 0x1
/* 0001ED60 0001EE24  90 61 00 2C */	stw r3, 0x2c(r1)
/* 0001ED64 0001EE28  1C 80 00 0A */	mulli r4, r0, 0xa
/* 0001ED68 0001EE2C  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 0001ED6C 0001EE30  38 60 00 02 */	li r3, 0x2
/* 0001ED70 0001EE34  93 E1 00 28 */	stw r31, 0x28(r1)
/* 0001ED74 0001EE38  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 0001ED78 0001EE3C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 0001ED7C 0001EE40  C0 61 00 08 */	lfs f3, 0x8(r1)
/* 0001ED80 0001EE44  EC 00 E8 28 */	fsubs f0, f0, f29
/* 0001ED84 0001EE48  EC 1E 00 32 */	fmuls f0, f30, f0
/* 0001ED88 0001EE4C  EC 00 F8 24 */	fdivs f0, f0, f31
/* 0001ED8C 0001EE50  EC 9E 00 2A */	fadds f4, f30, f0
/* 0001ED90 0001EE54  4B FE 14 C9 */	bl effVaporN64Entry
/* 0001ED94 0001EE58  80 C3 00 0C */	lwz r6, 0xc(r3)
/* 0001ED98 0001EE5C  38 A0 00 20 */	li r5, 0x20
/* 0001ED9C 0001EE60  3B BD 00 01 */	addi r29, r29, 0x1
/* 0001EDA0 0001EE64  38 80 00 73 */	li r4, 0x73
/* 0001EDA4 0001EE68  90 A6 00 18 */	stw r5, 0x18(r6)
/* 0001EDA8 0001EE6C  38 60 00 64 */	li r3, 0x64
/* 0001EDAC 0001EE70  38 00 00 FF */	li r0, 0xff
/* 0001EDB0 0001EE74  2C 1D 00 03 */	cmpwi r29, 0x3
/* 0001EDB4 0001EE78  90 86 00 1C */	stw r4, 0x1c(r6)
/* 0001EDB8 0001EE7C  90 66 00 20 */	stw r3, 0x20(r6)
/* 0001EDBC 0001EE80  90 06 00 24 */	stw r0, 0x24(r6)
/* 0001EDC0 0001EE84  90 A6 00 28 */	stw r5, 0x28(r6)
/* 0001EDC4 0001EE88  90 86 00 2C */	stw r4, 0x2c(r6)
/* 0001EDC8 0001EE8C  90 66 00 30 */	stw r3, 0x30(r6)
/* 0001EDCC 0001EE90  90 06 00 34 */	stw r0, 0x34(r6)
/* 0001EDD0 0001EE94  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 0001EDD4 0001EE98  D0 06 00 40 */	stfs f0, 0x40(r6)
/* 0001EDD8 0001EE9C  41 80 FF 14 */	blt .L_0001ECEC
/* 0001EDDC 0001EEA0  38 60 00 02 */	li r3, 0x2
/* 0001EDE0 0001EEA4  E3 E1 00 68 */	psq_l f31, 0x68(r1), 0, qr0
/* 0001EDE4 0001EEA8  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 0001EDE8 0001EEAC  E3 C1 00 58 */	psq_l f30, 0x58(r1), 0, qr0
/* 0001EDEC 0001EEB0  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 0001EDF0 0001EEB4  E3 A1 00 48 */	psq_l f29, 0x48(r1), 0, qr0
/* 0001EDF4 0001EEB8  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 0001EDF8 0001EEBC  BB A1 00 34 */	lmw r29, 0x34(r1)
/* 0001EDFC 0001EEC0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 0001EE00 0001EEC4  7C 08 03 A6 */	mtlr r0
/* 0001EE04 0001EEC8  38 21 00 70 */	addi r1, r1, 0x70
/* 0001EE08 0001EECC  4E 80 00 20 */	blr
.endfn eff_poison_barrier

# 0x00006B38..0x00006CE8 | size: 0x1B0
.rodata
.balign 8

# .rodata:0x0 | 0x6B38 | size: 0x12
.obj str_btl_un_dokugassun_mri_000271d8, local
	.string "btl_un_dokugassun"
.endobj str_btl_un_dokugassun_mri_000271d8

# .rodata:0x12 | 0x6B4A | size: 0x2
.obj gap_03_00006B4A_rodata, global
.hidden gap_03_00006B4A_rodata
	.2byte 0x0000
.endobj gap_03_00006B4A_rodata

# .rodata:0x14 | 0x6B4C | size: 0x16
.obj str_SFX_ENM_KUMO_DAMAGED_mri_000271ec, local
	.string "SFX_ENM_KUMO_DAMAGED1"
.endobj str_SFX_ENM_KUMO_DAMAGED_mri_000271ec

# .rodata:0x2A | 0x6B62 | size: 0x2
.obj gap_03_00006B62_rodata, global
.hidden gap_03_00006B62_rodata
	.2byte 0x0000
.endobj gap_03_00006B62_rodata

# .rodata:0x2C | 0x6B64 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_mri_00027204, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_mri_00027204

# .rodata:0x41 | 0x6B79 | size: 0x3
.obj gap_03_00006B79_rodata, global
.hidden gap_03_00006B79_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006B79_rodata

# .rodata:0x44 | 0x6B7C | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_mri_0002721c, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_mri_0002721c

# .rodata:0x58 | 0x6B90 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_mri_00027230, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_mri_00027230

# .rodata:0x71 | 0x6BA9 | size: 0x3
.obj gap_03_00006BA9_rodata, global
.hidden gap_03_00006BA9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006BA9_rodata

# .rodata:0x74 | 0x6BAC | size: 0xA
.obj str_c_kmoon_g_mri_0002724c, local
	.string "c_kmoon_g"
.endobj str_c_kmoon_g_mri_0002724c
	.2byte 0x0000

# .rodata:0x80 | 0x6BB8 | size: 0x4
.obj float_neg125_mri_00027258, local
	.float -125
.endobj float_neg125_mri_00027258

# .rodata:0x84 | 0x6BBC | size: 0x4
.obj float_125_mri_0002725c, local
	.float 125
.endobj float_125_mri_0002725c

# .rodata:0x88 | 0x6BC0 | size: 0x4
.obj float_2p5_mri_00027260, local
	.float 2.5
.endobj float_2p5_mri_00027260

# .rodata:0x8C | 0x6BC4 | size: 0x4
.obj float_32767_mri_00027264, local
	.float 32767
.endobj float_32767_mri_00027264

# .rodata:0x90 | 0x6BC8 | size: 0x8
.obj double_to_int_mri_00027268, local
	.double 4503601774854144
.endobj double_to_int_mri_00027268

# .rodata:0x98 | 0x6BD0 | size: 0x4
.obj str_R_1_mri_00027270, local
	.string "R_1"
.endobj str_R_1_mri_00027270

# .rodata:0x9C | 0x6BD4 | size: 0x13
.obj str_SFX_ENM_KUMO_MOVE3_mri_00027274, local
	.string "SFX_ENM_KUMO_MOVE3"
.endobj str_SFX_ENM_KUMO_MOVE3_mri_00027274

# .rodata:0xAF | 0x6BE7 | size: 0x1
.obj gap_03_00006BE7_rodata, global
.hidden gap_03_00006BE7_rodata
	.byte 0x00
.endobj gap_03_00006BE7_rodata

# .rodata:0xB0 | 0x6BE8 | size: 0x1A
.obj str_SFX_ENM_DOKU_KUMO_CH_mri_00027288, local
	.string "SFX_ENM_DOKU_KUMO_CHARGE1"
.endobj str_SFX_ENM_DOKU_KUMO_CH_mri_00027288

# .rodata:0xCA | 0x6C02 | size: 0x2
.obj gap_03_00006C02_rodata, global
.hidden gap_03_00006C02_rodata
	.2byte 0x0000
.endobj gap_03_00006C02_rodata

# .rodata:0xCC | 0x6C04 | size: 0x5
.obj str_A_2B_mri_000272a4, local
	.string "A_2B"
.endobj str_A_2B_mri_000272a4

# .rodata:0xD1 | 0x6C09 | size: 0x3
.obj gap_03_00006C09_rodata, global
.hidden gap_03_00006C09_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006C09_rodata

# .rodata:0xD4 | 0x6C0C | size: 0x21
.obj str_SFX_ENM_DOKU_KUMO_CH_mri_000272ac, local
	.string "SFX_ENM_DOKU_KUMO_CHARGE_ATTACK1"
.endobj str_SFX_ENM_DOKU_KUMO_CH_mri_000272ac

# .rodata:0xF5 | 0x6C2D | size: 0x3
.obj gap_03_00006C2D_rodata, global
.hidden gap_03_00006C2D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006C2D_rodata

# .rodata:0xF8 | 0x6C30 | size: 0x5
.obj str_A_3A_mri_000272d0, local
	.string "A_3A"
.endobj str_A_3A_mri_000272d0

# .rodata:0xFD | 0x6C35 | size: 0x3
.obj gap_03_00006C35_rodata, global
.hidden gap_03_00006C35_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006C35_rodata

# .rodata:0x100 | 0x6C38 | size: 0x5
.obj str_A_3B_mri_000272d8, local
	.string "A_3B"
.endobj str_A_3B_mri_000272d8

# .rodata:0x105 | 0x6C3D | size: 0x3
.obj gap_03_00006C3D_rodata, global
.hidden gap_03_00006C3D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006C3D_rodata

# .rodata:0x108 | 0x6C40 | size: 0x4
.obj str_S_1_mri_000272e0, local
	.string "S_1"
.endobj str_S_1_mri_000272e0

# .rodata:0x10C | 0x6C44 | size: 0x4
.obj str_N_1_mri_000272e4, local
	.string "N_1"
.endobj str_N_1_mri_000272e4

# .rodata:0x110 | 0x6C48 | size: 0x4
.obj str_Y_1_mri_000272e8, local
	.string "Y_1"
.endobj str_Y_1_mri_000272e8

# .rodata:0x114 | 0x6C4C | size: 0x4
.obj str_K_1_mri_000272ec, local
	.string "K_1"
.endobj str_K_1_mri_000272ec

# .rodata:0x118 | 0x6C50 | size: 0x4
.obj str_X_1_mri_000272f0, local
	.string "X_1"
.endobj str_X_1_mri_000272f0

# .rodata:0x11C | 0x6C54 | size: 0x4
.obj str_Q_1_mri_000272f4, local
	.string "Q_1"
.endobj str_Q_1_mri_000272f4

# .rodata:0x120 | 0x6C58 | size: 0x4
.obj str_A_1_mri_000272f8, local
	.string "A_1"
.endobj str_A_1_mri_000272f8

# .rodata:0x124 | 0x6C5C | size: 0x4
.obj str_D_1_mri_000272fc, local
	.string "D_1"
.endobj str_D_1_mri_000272fc

# .rodata:0x128 | 0x6C60 | size: 0x4
.obj str_W_1_mri_00027300, local
	.string "W_1"
.endobj str_W_1_mri_00027300

# .rodata:0x12C | 0x6C64 | size: 0x4
.obj str_T_1_mri_00027304, local
	.string "T_1"
.endobj str_T_1_mri_00027304

# .rodata:0x130 | 0x6C68 | size: 0x4
.obj float_0p5_mri_00027308, local
	.float 0.5
.endobj float_0p5_mri_00027308

# .rodata:0x134 | 0x6C6C | size: 0x13
.obj str_SFX_ENM_KUMO_MOVE4_mri_0002730c, local
	.string "SFX_ENM_KUMO_MOVE4"
.endobj str_SFX_ENM_KUMO_MOVE4_mri_0002730c

# .rodata:0x147 | 0x6C7F | size: 0x1
.obj gap_03_00006C7F_rodata, global
.hidden gap_03_00006C7F_rodata
	.byte 0x00
.endobj gap_03_00006C7F_rodata

# .rodata:0x148 | 0x6C80 | size: 0x13
.obj str_SFX_ENM_KUMO_MOVE5_mri_00027320, local
	.string "SFX_ENM_KUMO_MOVE5"
.endobj str_SFX_ENM_KUMO_MOVE5_mri_00027320

# .rodata:0x15B | 0x6C93 | size: 0x1
.obj gap_03_00006C93_rodata, global
.hidden gap_03_00006C93_rodata
	.byte 0x00
.endobj gap_03_00006C93_rodata

# .rodata:0x15C | 0x6C94 | size: 0x13
.obj str_SFX_ENM_KUMO_MOVE1_mri_00027334, local
	.string "SFX_ENM_KUMO_MOVE1"
.endobj str_SFX_ENM_KUMO_MOVE1_mri_00027334

# .rodata:0x16F | 0x6CA7 | size: 0x1
.obj gap_03_00006CA7_rodata, global
.hidden gap_03_00006CA7_rodata
	.byte 0x00
.endobj gap_03_00006CA7_rodata

# .rodata:0x170 | 0x6CA8 | size: 0x15
.obj str_SFX_ENM_KUMO_ATTACK1_mri_00027348, local
	.string "SFX_ENM_KUMO_ATTACK1"
.endobj str_SFX_ENM_KUMO_ATTACK1_mri_00027348

# .rodata:0x185 | 0x6CBD | size: 0x3
.obj gap_03_00006CBD_rodata, global
.hidden gap_03_00006CBD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006CBD_rodata

# .rodata:0x188 | 0x6CC0 | size: 0x5
.obj str_A_2A_mri_00027360, local
	.string "A_2A"
.endobj str_A_2A_mri_00027360

# .rodata:0x18D | 0x6CC5 | size: 0x3
.obj gap_03_00006CC5_rodata, global
.hidden gap_03_00006CC5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006CC5_rodata

# .rodata:0x190 | 0x6CC8 | size: 0x13
.obj str_SFX_ENM_KUMO_MOVE2_mri_00027368, local
	.string "SFX_ENM_KUMO_MOVE2"
.endobj str_SFX_ENM_KUMO_MOVE2_mri_00027368

# .rodata:0x1A3 | 0x6CDB | size: 0x1
.obj gap_03_00006CDB_rodata, global
.hidden gap_03_00006CDB_rodata
	.byte 0x00
.endobj gap_03_00006CDB_rodata

# .rodata:0x1A4 | 0x6CDC | size: 0x5
.obj str_A_1A_mri_0002737c, local
	.string "A_1A"
.endobj str_A_1A_mri_0002737c

# .rodata:0x1A9 | 0x6CE1 | size: 0x7
.obj gap_03_00006CE1_rodata, global
.hidden gap_03_00006CE1_rodata
	.4byte 0x00000000
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006CE1_rodata

# 0x00031138..0x00032598 | size: 0x1460
.data
.balign 8

# .data:0x0 | 0x31138 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x31140 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x31144 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x31148 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x3114C | size: 0x4
.obj gap_04_0003114C_data, global
.hidden gap_04_0003114C_data
	.4byte 0x00000000
.endobj gap_04_0003114C_data

# .data:0x18 | 0x31150 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x31158 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x3115C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x31160 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x31168 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x3116C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x31170 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x31174 | size: 0x4
.obj gap_04_00031174_data, global
.hidden gap_04_00031174_data
	.4byte 0x00000000
.endobj gap_04_00031174_data

# .data:0x40 | 0x31178 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x31180 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x31184 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x31188 | size: 0xC4
.obj unit_dokugassun, local
	.4byte 0x000000A6
	.4byte str_btl_un_dokugassun_mri_000271d8
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
	.4byte str_SFX_ENM_KUMO_DAMAGED_mri_000271ec
	.4byte str_SFX_BTL_DAMAGE_FIRE1_mri_00027204
	.4byte str_SFX_BTL_DAMAGE_ICE1_mri_0002721c
	.4byte str_SFX_BTL_DAMAGE_BIRIB_mri_00027230
	.4byte 0x00000004
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_dokugassun

# .data:0x114 | 0x3124C | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x31251 | size: 0x3
.obj gap_04_00031251_data, global
.hidden gap_04_00031251_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00031251_data

# .data:0x11C | 0x31254 | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x31259 | size: 0x3
.obj gap_04_00031259_data, global
.hidden gap_04_00031259_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00031259_data

# .data:0x124 | 0x3125C | size: 0x16
.obj regist, local
	.4byte 0x41415A00
	.4byte 0x3C646464
	.4byte 0x64506450
	.4byte 0x6450323C
	.4byte 0x55643C64
	.2byte 0x6414
.endobj regist

# .data:0x13A | 0x31272 | size: 0x2
.obj gap_04_00031272_data, global
.hidden gap_04_00031272_data
	.2byte 0x0000
.endobj gap_04_00031272_data

# .data:0x13C | 0x31274 | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_dokugassun_mri_000271d8
	.4byte str_c_kmoon_g_mri_0002724c
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

# .data:0x188 | 0x312C0 | size: 0xC0
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

# .data:0x248 | 0x31380 | size: 0xC0
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

# .data:0x308 | 0x31440 | size: 0x114
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

# .data:0x41C | 0x31554 | size: 0x4BC
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
	.4byte str_R_1_mri_00027270
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KUMO_MOVE3_mri_00027274
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
	.4byte str_SFX_ENM_DOKU_KUMO_CH_mri_00027288
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2B_mri_000272a4
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_DOKU_KUMO_CH_mri_000272ac
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_3A_mri_000272d0
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_3B_mri_000272d8
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
	.4byte str_R_1_mri_00027270
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KUMO_MOVE3_mri_00027274
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
	.4byte str_S_1_mri_000272e0
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

# .data:0x8D8 | 0x31A10 | size: 0x88
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_N_1_mri_000272e4
	.4byte 0x00000002
	.4byte str_Y_1_mri_000272e8
	.4byte 0x00000009
	.4byte str_Y_1_mri_000272e8
	.4byte 0x00000005
	.4byte str_K_1_mri_000272ec
	.4byte 0x00000004
	.4byte str_X_1_mri_000272f0
	.4byte 0x00000003
	.4byte str_X_1_mri_000272f0
	.4byte 0x0000001C
	.4byte str_S_1_mri_000272e0
	.4byte 0x0000001D
	.4byte str_Q_1_mri_000272f4
	.4byte 0x0000001E
	.4byte str_Q_1_mri_000272f4
	.4byte 0x0000001F
	.4byte str_A_1_mri_000272f8
	.4byte 0x00000027
	.4byte str_D_1_mri_000272fc
	.4byte 0x00000028
	.4byte str_W_1_mri_00027300
	.4byte 0x0000002A
	.4byte str_R_1_mri_00027270
	.4byte 0x00000038
	.4byte str_X_1_mri_000272f0
	.4byte 0x00000039
	.4byte str_X_1_mri_000272f0
	.4byte 0x00000041
	.4byte str_T_1_mri_00027304
	.4byte 0x00000045
	.4byte str_S_1_mri_000272e0
.endobj pose_table

# .data:0x960 | 0x31A98 | size: 0x18
.obj data_table, local
	.4byte 0x0000002B
	.4byte counter_event
	.4byte 0x00000030
	.4byte dmg_first_attack_pos
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x978 | 0x31AB0 | size: 0x94
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

# .data:0xA0C | 0x31B44 | size: 0x84
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

# .data:0xA90 | 0x31BC8 | size: 0x4C
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

# .data:0xADC | 0x31C14 | size: 0x28
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

# .data:0xB04 | 0x31C3C | size: 0x8
.obj counter_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj counter_event

# .data:0xB0C | 0x31C44 | size: 0x230
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
	.4byte str_SFX_ENM_KUMO_MOVE4_mri_0002730c
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
	.4byte str_SFX_ENM_KUMO_MOVE5_mri_00027320
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

# .data:0xD3C | 0x31E74 | size: 0x608
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
	.4byte str_SFX_ENM_KUMO_MOVE1_mri_00027334
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
	.4byte str_SFX_ENM_KUMO_ATTACK1_mri_00027348
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2A_mri_00027360
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
	.4byte str_SFX_ENM_KUMO_MOVE2_mri_00027368
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1A_mri_0002737c
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
	.4byte str_SFX_ENM_KUMO_MOVE3_mri_00027274
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
	.4byte str_S_1_mri_000272e0
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

# .data:0x1344 | 0x3247C | size: 0xE8
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
	.4byte str_SFX_ENM_DOKU_KUMO_CH_mri_00027288
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
	.4byte str_A_2A_mri_00027360
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2B_mri_000272a4
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
	.4byte str_S_1_mri_000272e0
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj charge_event

# .data:0x142C | 0x32564 | size: 0x34
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
