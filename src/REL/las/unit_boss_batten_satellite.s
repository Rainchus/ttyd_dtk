.include "macros.inc"
.file "unit_boss_batten_satellite.o"

# 0x0000EA4C..0x0000F30C | size: 0x8C0
.text
.balign 4

# .text:0x0 | 0xEA4C | size: 0x48
.fn bts_x_flag_wait_16_text_EA4C, global
/* 0000EA4C 0000EB18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0000EA50 0000EB1C  7C 08 02 A6 */	mflr r0
/* 0000EA54 0000EB20  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000EA58 0000EB24  80 83 00 18 */	lwz r4, 0x18(r3)
/* 0000EA5C 0000EB28  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000EA60 0000EB2C  4B FF 16 DD */	bl evtGetValue
/* 0000EA64 0000EB30  3C 80 00 00 */	lis r4, bts_x_flag_data@ha
/* 0000EA68 0000EB34  38 00 00 02 */	li r0, 0x2
/* 0000EA6C 0000EB38  38 84 00 00 */	addi r4, r4, bts_x_flag_data@l
/* 0000EA70 0000EB3C  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000EA74 0000EB40  7C 64 18 50 */	subf r3, r4, r3
/* 0000EA78 0000EB44  30 63 FF FF */	subic r3, r3, 0x1
/* 0000EA7C 0000EB48  7C 63 19 10 */	subfe r3, r3, r3
/* 0000EA80 0000EB4C  7C 03 18 38 */	and r3, r0, r3
/* 0000EA84 0000EB50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0000EA88 0000EB54  7C 08 03 A6 */	mtlr r0
/* 0000EA8C 0000EB58  38 21 00 10 */	addi r1, r1, 0x10
/* 0000EA90 0000EB5C  4E 80 00 20 */	blr
.endfn bts_x_flag_wait_16_text_EA4C

# .text:0x48 | 0xEA94 | size: 0x38
.fn bts_x_flag_get, local
/* 0000EA94 0000EB60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0000EA98 0000EB64  7C 08 02 A6 */	mflr r0
/* 0000EA9C 0000EB68  3C 80 00 00 */	lis r4, bts_x_flag_data@ha
/* 0000EAA0 0000EB6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000EAA4 0000EB70  38 A4 00 00 */	addi r5, r4, bts_x_flag_data@l
/* 0000EAA8 0000EB74  80 C3 00 18 */	lwz r6, 0x18(r3)
/* 0000EAAC 0000EB78  80 A5 00 00 */	lwz r5, 0x0(r5)
/* 0000EAB0 0000EB7C  80 86 00 00 */	lwz r4, 0x0(r6)
/* 0000EAB4 0000EB80  4B FF 16 89 */	bl evtSetValue
/* 0000EAB8 0000EB84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0000EABC 0000EB88  38 60 00 02 */	li r3, 0x2
/* 0000EAC0 0000EB8C  7C 08 03 A6 */	mtlr r0
/* 0000EAC4 0000EB90  38 21 00 10 */	addi r1, r1, 0x10
/* 0000EAC8 0000EB94  4E 80 00 20 */	blr
.endfn bts_x_flag_get

# .text:0x80 | 0xEACC | size: 0x3C
.fn bts_x_flag_add_16_text_EACC, global
/* 0000EACC 0000EB98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0000EAD0 0000EB9C  7C 08 02 A6 */	mflr r0
/* 0000EAD4 0000EBA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000EAD8 0000EBA4  80 83 00 18 */	lwz r4, 0x18(r3)
/* 0000EADC 0000EBA8  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000EAE0 0000EBAC  4B FF 16 5D */	bl evtGetValue
/* 0000EAE4 0000EBB0  3C 80 00 00 */	lis r4, bts_x_flag_data@ha
/* 0000EAE8 0000EBB4  84 04 00 00 */	lwzu r0, bts_x_flag_data@l(r4)
/* 0000EAEC 0000EBB8  7C 00 1A 14 */	add r0, r0, r3
/* 0000EAF0 0000EBBC  38 60 00 02 */	li r3, 0x2
/* 0000EAF4 0000EBC0  90 04 00 00 */	stw r0, 0x0(r4)
/* 0000EAF8 0000EBC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0000EAFC 0000EBC8  7C 08 03 A6 */	mtlr r0
/* 0000EB00 0000EBCC  38 21 00 10 */	addi r1, r1, 0x10
/* 0000EB04 0000EBD0  4E 80 00 20 */	blr
.endfn bts_x_flag_add_16_text_EACC

# .text:0xBC | 0xEB08 | size: 0x34
.fn bts_x_flag_set_16_text_EB08, global
/* 0000EB08 0000EBD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0000EB0C 0000EBD8  7C 08 02 A6 */	mflr r0
/* 0000EB10 0000EBDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000EB14 0000EBE0  80 83 00 18 */	lwz r4, 0x18(r3)
/* 0000EB18 0000EBE4  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000EB1C 0000EBE8  4B FF 16 21 */	bl evtGetValue
/* 0000EB20 0000EBEC  3C 80 00 00 */	lis r4, bts_x_flag_data@ha
/* 0000EB24 0000EBF0  90 64 00 00 */	stw r3, bts_x_flag_data@l(r4)
/* 0000EB28 0000EBF4  38 60 00 02 */	li r3, 0x2
/* 0000EB2C 0000EBF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0000EB30 0000EBFC  7C 08 03 A6 */	mtlr r0
/* 0000EB34 0000EC00  38 21 00 10 */	addi r1, r1, 0x10
/* 0000EB38 0000EC04  4E 80 00 20 */	blr
.endfn bts_x_flag_set_16_text_EB08

# .text:0xF0 | 0xEB3C | size: 0xCC
.fn bts_wariai_enzan_0f, local
/* 0000EB3C 0000EC08  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 0000EB40 0000EC0C  7C 08 02 A6 */	mflr r0
/* 0000EB44 0000EC10  90 01 00 44 */	stw r0, 0x44(r1)
/* 0000EB48 0000EC14  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 0000EB4C 0000EC18  F3 E1 00 38 */	psq_st f31, 0x38(r1), 0, qr0
/* 0000EB50 0000EC1C  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 0000EB54 0000EC20  F3 C1 00 28 */	psq_st f30, 0x28(r1), 0, qr0
/* 0000EB58 0000EC24  DB A1 00 10 */	stfd f29, 0x10(r1)
/* 0000EB5C 0000EC28  F3 A1 00 18 */	psq_st f29, 0x18(r1), 0, qr0
/* 0000EB60 0000EC2C  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 0000EB64 0000EC30  7C 7E 1B 78 */	mr r30, r3
/* 0000EB68 0000EC34  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 0000EB6C 0000EC38  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 0000EB70 0000EC3C  4B FF 15 CD */	bl evtGetFloat
/* 0000EB74 0000EC40  3C 60 00 00 */	lis r3, float_1_las_000193fc@ha
/* 0000EB78 0000EC44  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 0000EB7C 0000EC48  38 A3 00 00 */	addi r5, r3, float_1_las_000193fc@l
/* 0000EB80 0000EC4C  7F C3 F3 78 */	mr r3, r30
/* 0000EB84 0000EC50  C0 05 00 00 */	lfs f0, 0x0(r5)
/* 0000EB88 0000EC54  EF C1 00 28 */	fsubs f30, f1, f0
/* 0000EB8C 0000EC58  4B FF 15 B1 */	bl evtGetFloat
/* 0000EB90 0000EC5C  3C 60 00 00 */	lis r3, float_1_las_000193fc@ha
/* 0000EB94 0000EC60  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 0000EB98 0000EC64  38 A3 00 00 */	addi r5, r3, float_1_las_000193fc@l
/* 0000EB9C 0000EC68  7F C3 F3 78 */	mr r3, r30
/* 0000EBA0 0000EC6C  C0 05 00 00 */	lfs f0, 0x0(r5)
/* 0000EBA4 0000EC70  EF A1 00 28 */	fsubs f29, f1, f0
/* 0000EBA8 0000EC74  4B FF 15 95 */	bl evtGetFloat
/* 0000EBAC 0000EC78  FF E0 08 90 */	fmr f31, f1
/* 0000EBB0 0000EC7C  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 0000EBB4 0000EC80  7F C3 F3 78 */	mr r3, r30
/* 0000EBB8 0000EC84  4B FF 15 85 */	bl evtGetFloat
/* 0000EBBC 0000EC88  EC 1D F0 28 */	fsubs f0, f29, f30
/* 0000EBC0 0000EC8C  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 0000EBC4 0000EC90  7F C3 F3 78 */	mr r3, r30
/* 0000EBC8 0000EC94  EC 01 00 32 */	fmuls f0, f1, f0
/* 0000EBCC 0000EC98  EC 1E 07 FA */	fmadds f0, f30, f31, f0
/* 0000EBD0 0000EC9C  EC 20 E8 24 */	fdivs f1, f0, f29
/* 0000EBD4 0000ECA0  4B FF 15 69 */	bl evtSetFloat
/* 0000EBD8 0000ECA4  38 60 00 02 */	li r3, 0x2
/* 0000EBDC 0000ECA8  E3 E1 00 38 */	psq_l f31, 0x38(r1), 0, qr0
/* 0000EBE0 0000ECAC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 0000EBE4 0000ECB0  E3 C1 00 28 */	psq_l f30, 0x28(r1), 0, qr0
/* 0000EBE8 0000ECB4  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 0000EBEC 0000ECB8  E3 A1 00 18 */	psq_l f29, 0x18(r1), 0, qr0
/* 0000EBF0 0000ECBC  CB A1 00 10 */	lfd f29, 0x10(r1)
/* 0000EBF4 0000ECC0  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 0000EBF8 0000ECC4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 0000EBFC 0000ECC8  7C 08 03 A6 */	mtlr r0
/* 0000EC00 0000ECCC  38 21 00 40 */	addi r1, r1, 0x40
/* 0000EC04 0000ECD0  4E 80 00 20 */	blr
.endfn bts_wariai_enzan_0f

# .text:0x1BC | 0xEC08 | size: 0xD8
.fn bts_wariai_enzan_0, local
/* 0000EC08 0000ECD4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 0000EC0C 0000ECD8  7C 08 02 A6 */	mflr r0
/* 0000EC10 0000ECDC  90 01 00 54 */	stw r0, 0x54(r1)
/* 0000EC14 0000ECE0  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 0000EC18 0000ECE4  F3 E1 00 48 */	psq_st f31, 0x48(r1), 0, qr0
/* 0000EC1C 0000ECE8  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 0000EC20 0000ECEC  F3 C1 00 38 */	psq_st f30, 0x38(r1), 0, qr0
/* 0000EC24 0000ECF0  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 0000EC28 0000ECF4  F3 A1 00 28 */	psq_st f29, 0x28(r1), 0, qr0
/* 0000EC2C 0000ECF8  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 0000EC30 0000ECFC  7C 7E 1B 78 */	mr r30, r3
/* 0000EC34 0000ED00  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 0000EC38 0000ED04  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 0000EC3C 0000ED08  4B FF 15 01 */	bl evtGetFloat
/* 0000EC40 0000ED0C  3C 60 00 00 */	lis r3, float_1_las_000193fc@ha
/* 0000EC44 0000ED10  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 0000EC48 0000ED14  38 A3 00 00 */	addi r5, r3, float_1_las_000193fc@l
/* 0000EC4C 0000ED18  7F C3 F3 78 */	mr r3, r30
/* 0000EC50 0000ED1C  C0 05 00 00 */	lfs f0, 0x0(r5)
/* 0000EC54 0000ED20  EF C1 00 28 */	fsubs f30, f1, f0
/* 0000EC58 0000ED24  4B FF 14 E5 */	bl evtGetFloat
/* 0000EC5C 0000ED28  3C 60 00 00 */	lis r3, float_1_las_000193fc@ha
/* 0000EC60 0000ED2C  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 0000EC64 0000ED30  38 A3 00 00 */	addi r5, r3, float_1_las_000193fc@l
/* 0000EC68 0000ED34  7F C3 F3 78 */	mr r3, r30
/* 0000EC6C 0000ED38  C0 05 00 00 */	lfs f0, 0x0(r5)
/* 0000EC70 0000ED3C  EF A1 00 28 */	fsubs f29, f1, f0
/* 0000EC74 0000ED40  4B FF 14 C9 */	bl evtGetFloat
/* 0000EC78 0000ED44  FF E0 08 90 */	fmr f31, f1
/* 0000EC7C 0000ED48  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 0000EC80 0000ED4C  7F C3 F3 78 */	mr r3, r30
/* 0000EC84 0000ED50  4B FF 14 B9 */	bl evtGetFloat
/* 0000EC88 0000ED54  EC 1D F0 28 */	fsubs f0, f29, f30
/* 0000EC8C 0000ED58  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 0000EC90 0000ED5C  7F C3 F3 78 */	mr r3, r30
/* 0000EC94 0000ED60  EC 01 00 32 */	fmuls f0, f1, f0
/* 0000EC98 0000ED64  EC 1E 07 FA */	fmadds f0, f30, f31, f0
/* 0000EC9C 0000ED68  EC 00 E8 24 */	fdivs f0, f0, f29
/* 0000ECA0 0000ED6C  FC 00 00 1E */	fctiwz f0, f0
/* 0000ECA4 0000ED70  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 0000ECA8 0000ED74  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 0000ECAC 0000ED78  4B FF 14 91 */	bl evtSetValue
/* 0000ECB0 0000ED7C  38 60 00 02 */	li r3, 0x2
/* 0000ECB4 0000ED80  E3 E1 00 48 */	psq_l f31, 0x48(r1), 0, qr0
/* 0000ECB8 0000ED84  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 0000ECBC 0000ED88  E3 C1 00 38 */	psq_l f30, 0x38(r1), 0, qr0
/* 0000ECC0 0000ED8C  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 0000ECC4 0000ED90  E3 A1 00 28 */	psq_l f29, 0x28(r1), 0, qr0
/* 0000ECC8 0000ED94  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 0000ECCC 0000ED98  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 0000ECD0 0000ED9C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 0000ECD4 0000EDA0  7C 08 03 A6 */	mtlr r0
/* 0000ECD8 0000EDA4  38 21 00 50 */	addi r1, r1, 0x50
/* 0000ECDC 0000EDA8  4E 80 00 20 */	blr
.endfn bts_wariai_enzan_0

# .text:0x294 | 0xECE0 | size: 0x2E0
.fn bts_wariai_enzan_1f_intpl_w, local
/* 0000ECE0 0000EDAC  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 0000ECE4 0000EDB0  7C 08 02 A6 */	mflr r0
/* 0000ECE8 0000EDB4  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 0000ECEC 0000EDB8  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 0000ECF0 0000EDBC  F3 E1 00 98 */	psq_st f31, 0x98(r1), 0, qr0
/* 0000ECF4 0000EDC0  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 0000ECF8 0000EDC4  F3 C1 00 88 */	psq_st f30, 0x88(r1), 0, qr0
/* 0000ECFC 0000EDC8  DB A1 00 70 */	stfd f29, 0x70(r1)
/* 0000ED00 0000EDCC  F3 A1 00 78 */	psq_st f29, 0x78(r1), 0, qr0
/* 0000ED04 0000EDD0  DB 81 00 60 */	stfd f28, 0x60(r1)
/* 0000ED08 0000EDD4  F3 81 00 68 */	psq_st f28, 0x68(r1), 0, qr0
/* 0000ED0C 0000EDD8  DB 61 00 50 */	stfd f27, 0x50(r1)
/* 0000ED10 0000EDDC  F3 61 00 58 */	psq_st f27, 0x58(r1), 0, qr0
/* 0000ED14 0000EDE0  DB 41 00 40 */	stfd f26, 0x40(r1)
/* 0000ED18 0000EDE4  F3 41 00 48 */	psq_st f26, 0x48(r1), 0, qr0
/* 0000ED1C 0000EDE8  DB 21 00 30 */	stfd f25, 0x30(r1)
/* 0000ED20 0000EDEC  F3 21 00 38 */	psq_st f25, 0x38(r1), 0, qr0
/* 0000ED24 0000EDF0  BF A1 00 24 */	stmw r29, 0x24(r1)
/* 0000ED28 0000EDF4  7C 7E 1B 78 */	mr r30, r3
/* 0000ED2C 0000EDF8  83 A3 00 18 */	lwz r29, 0x18(r3)
/* 0000ED30 0000EDFC  80 9D 00 00 */	lwz r4, 0x0(r29)
/* 0000ED34 0000EE00  4B FF 14 09 */	bl evtGetFloat
/* 0000ED38 0000EE04  3C 60 00 00 */	lis r3, float_1_las_000193fc@ha
/* 0000ED3C 0000EE08  80 9D 00 04 */	lwz r4, 0x4(r29)
/* 0000ED40 0000EE0C  38 A3 00 00 */	addi r5, r3, float_1_las_000193fc@l
/* 0000ED44 0000EE10  7F C3 F3 78 */	mr r3, r30
/* 0000ED48 0000EE14  C0 05 00 00 */	lfs f0, 0x0(r5)
/* 0000ED4C 0000EE18  EF 81 00 28 */	fsubs f28, f1, f0
/* 0000ED50 0000EE1C  4B FF 13 ED */	bl evtGetFloat
/* 0000ED54 0000EE20  FF A0 08 90 */	fmr f29, f1
/* 0000ED58 0000EE24  80 9D 00 08 */	lwz r4, 0x8(r29)
/* 0000ED5C 0000EE28  7F C3 F3 78 */	mr r3, r30
/* 0000ED60 0000EE2C  4B FF 13 DD */	bl evtGetFloat
/* 0000ED64 0000EE30  FF 60 08 90 */	fmr f27, f1
/* 0000ED68 0000EE34  80 9D 00 0C */	lwz r4, 0xc(r29)
/* 0000ED6C 0000EE38  7F C3 F3 78 */	mr r3, r30
/* 0000ED70 0000EE3C  4B FF 13 CD */	bl evtGetFloat
/* 0000ED74 0000EE40  FF C0 08 90 */	fmr f30, f1
/* 0000ED78 0000EE44  83 FD 00 10 */	lwz r31, 0x10(r29)
/* 0000ED7C 0000EE48  80 9D 00 14 */	lwz r4, 0x14(r29)
/* 0000ED80 0000EE4C  7F C3 F3 78 */	mr r3, r30
/* 0000ED84 0000EE50  4B FF 13 B9 */	bl evtGetFloat
/* 0000ED88 0000EE54  FF 40 08 90 */	fmr f26, f1
/* 0000ED8C 0000EE58  80 9D 00 18 */	lwz r4, 0x18(r29)
/* 0000ED90 0000EE5C  7F C3 F3 78 */	mr r3, r30
/* 0000ED94 0000EE60  4B FF 13 A9 */	bl evtGetFloat
/* 0000ED98 0000EE64  3C 60 00 00 */	lis r3, float_14_las_00019400@ha
/* 0000ED9C 0000EE68  FF E0 08 90 */	fmr f31, f1
/* 0000EDA0 0000EE6C  C0 03 00 00 */	lfs f0, float_14_las_00019400@l(r3)
/* 0000EDA4 0000EE70  FC 1A 00 40 */	fcmpo cr0, f26, f0
/* 0000EDA8 0000EE74  4C 41 13 82 */	cror eq, gt, eq
/* 0000EDAC 0000EE78  40 82 00 80 */	bne .L_0000EE2C
/* 0000EDB0 0000EE7C  EF 5A 00 28 */	fsubs f26, f26, f0
/* 0000EDB4 0000EE80  FC 1A 00 40 */	fcmpo cr0, f26, f0
/* 0000EDB8 0000EE84  4C 41 13 82 */	cror eq, gt, eq
/* 0000EDBC 0000EE88  40 82 00 1C */	bne .L_0000EDD8
/* 0000EDC0 0000EE8C  FC 20 D8 90 */	fmr f1, f27
/* 0000EDC4 0000EE90  7F C3 F3 78 */	mr r3, r30
/* 0000EDC8 0000EE94  7F E4 FB 78 */	mr r4, r31
/* 0000EDCC 0000EE98  4B FF 13 71 */	bl evtSetFloat
/* 0000EDD0 0000EE9C  38 60 00 02 */	li r3, 0x2
/* 0000EDD4 0000EEA0  48 00 01 A0 */	b .L_0000EF74
.L_0000EDD8:
/* 0000EDD8 0000EEA4  EC 3D E0 28 */	fsubs f1, f29, f28
/* 0000EDDC 0000EEA8  3C 80 00 00 */	lis r4, float_1_las_000193fc@ha
/* 0000EDE0 0000EEAC  FC 60 D0 1E */	fctiwz f3, f26
/* 0000EDE4 0000EEB0  3C 60 00 00 */	lis r3, zero_las_00019404@ha
/* 0000EDE8 0000EEB4  FC 00 E8 1E */	fctiwz f0, f29
/* 0000EDEC 0000EEB8  38 A4 00 00 */	addi r5, r4, float_1_las_000193fc@l
/* 0000EDF0 0000EEBC  FC 40 08 1E */	fctiwz f2, f1
/* 0000EDF4 0000EEC0  D8 61 00 08 */	stfd f3, 0x8(r1)
/* 0000EDF8 0000EEC4  38 83 00 00 */	addi r4, r3, zero_las_00019404@l
/* 0000EDFC 0000EEC8  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 0000EE00 0000EECC  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 0000EE04 0000EED0  80 61 00 0C */	lwz r3, 0xc(r1)
/* 0000EE08 0000EED4  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 0000EE0C 0000EED8  C0 44 00 00 */	lfs f2, 0x0(r4)
/* 0000EE10 0000EEDC  80 81 00 14 */	lwz r4, 0x14(r1)
/* 0000EE14 0000EEE0  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 0000EE18 0000EEE4  4B FF 13 25 */	bl intplGetValue
/* 0000EE1C 0000EEE8  3C 60 00 00 */	lis r3, float_1_las_000193fc@ha
/* 0000EE20 0000EEEC  C0 03 00 00 */	lfs f0, float_1_las_000193fc@l(r3)
/* 0000EE24 0000EEF0  EF 20 08 28 */	fsubs f25, f0, f1
/* 0000EE28 0000EEF4  48 00 00 4C */	b .L_0000EE74
.L_0000EE2C:
/* 0000EE2C 0000EEF8  EC 3D E0 28 */	fsubs f1, f29, f28
/* 0000EE30 0000EEFC  3C 80 00 00 */	lis r4, zero_las_00019404@ha
/* 0000EE34 0000EF00  FC 60 D0 1E */	fctiwz f3, f26
/* 0000EE38 0000EF04  3C 60 00 00 */	lis r3, float_1_las_000193fc@ha
/* 0000EE3C 0000EF08  FC 00 E8 1E */	fctiwz f0, f29
/* 0000EE40 0000EF0C  38 A4 00 00 */	addi r5, r4, zero_las_00019404@l
/* 0000EE44 0000EF10  FC 40 08 1E */	fctiwz f2, f1
/* 0000EE48 0000EF14  D8 61 00 18 */	stfd f3, 0x18(r1)
/* 0000EE4C 0000EF18  38 83 00 00 */	addi r4, r3, float_1_las_000193fc@l
/* 0000EE50 0000EF1C  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 0000EE54 0000EF20  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 0000EE58 0000EF24  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 0000EE5C 0000EF28  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 0000EE60 0000EF2C  C0 44 00 00 */	lfs f2, 0x0(r4)
/* 0000EE64 0000EF30  80 81 00 14 */	lwz r4, 0x14(r1)
/* 0000EE68 0000EF34  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 0000EE6C 0000EF38  4B FF 12 D1 */	bl intplGetValue
/* 0000EE70 0000EF3C  FF 20 08 90 */	fmr f25, f1
.L_0000EE74:
/* 0000EE74 0000EF40  3C 60 00 00 */	lis r3, float_14_las_00019400@ha
/* 0000EE78 0000EF44  C0 03 00 00 */	lfs f0, float_14_las_00019400@l(r3)
/* 0000EE7C 0000EF48  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 0000EE80 0000EF4C  4C 41 13 82 */	cror eq, gt, eq
/* 0000EE84 0000EF50  40 82 00 80 */	bne .L_0000EF04
/* 0000EE88 0000EF54  EC 5A 00 28 */	fsubs f2, f26, f0
/* 0000EE8C 0000EF58  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 0000EE90 0000EF5C  4C 41 13 82 */	cror eq, gt, eq
/* 0000EE94 0000EF60  40 82 00 1C */	bne .L_0000EEB0
/* 0000EE98 0000EF64  FC 20 D8 90 */	fmr f1, f27
/* 0000EE9C 0000EF68  7F C3 F3 78 */	mr r3, r30
/* 0000EEA0 0000EF6C  7F E4 FB 78 */	mr r4, r31
/* 0000EEA4 0000EF70  4B FF 12 99 */	bl evtSetFloat
/* 0000EEA8 0000EF74  38 60 00 02 */	li r3, 0x2
/* 0000EEAC 0000EF78  48 00 00 C8 */	b .L_0000EF74
.L_0000EEB0:
/* 0000EEB0 0000EF7C  EC 3D E0 28 */	fsubs f1, f29, f28
/* 0000EEB4 0000EF80  3C 80 00 00 */	lis r4, float_1_las_000193fc@ha
/* 0000EEB8 0000EF84  FC 60 10 1E */	fctiwz f3, f2
/* 0000EEBC 0000EF88  3C 60 00 00 */	lis r3, zero_las_00019404@ha
/* 0000EEC0 0000EF8C  FC 00 E8 1E */	fctiwz f0, f29
/* 0000EEC4 0000EF90  38 A4 00 00 */	addi r5, r4, float_1_las_000193fc@l
/* 0000EEC8 0000EF94  FC 40 08 1E */	fctiwz f2, f1
/* 0000EECC 0000EF98  D8 61 00 18 */	stfd f3, 0x18(r1)
/* 0000EED0 0000EF9C  38 83 00 00 */	addi r4, r3, zero_las_00019404@l
/* 0000EED4 0000EFA0  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 0000EED8 0000EFA4  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 0000EEDC 0000EFA8  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 0000EEE0 0000EFAC  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 0000EEE4 0000EFB0  C0 44 00 00 */	lfs f2, 0x0(r4)
/* 0000EEE8 0000EFB4  80 81 00 14 */	lwz r4, 0x14(r1)
/* 0000EEEC 0000EFB8  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 0000EEF0 0000EFBC  4B FF 12 4D */	bl intplGetValue
/* 0000EEF4 0000EFC0  3C 60 00 00 */	lis r3, float_1_las_000193fc@ha
/* 0000EEF8 0000EFC4  C0 03 00 00 */	lfs f0, float_1_las_000193fc@l(r3)
/* 0000EEFC 0000EFC8  EC 20 08 28 */	fsubs f1, f0, f1
/* 0000EF00 0000EFCC  48 00 00 48 */	b .L_0000EF48
.L_0000EF04:
/* 0000EF04 0000EFD0  EC 3D E0 28 */	fsubs f1, f29, f28
/* 0000EF08 0000EFD4  3C 80 00 00 */	lis r4, zero_las_00019404@ha
/* 0000EF0C 0000EFD8  FC 60 F8 1E */	fctiwz f3, f31
/* 0000EF10 0000EFDC  3C 60 00 00 */	lis r3, float_1_las_000193fc@ha
/* 0000EF14 0000EFE0  FC 00 E8 1E */	fctiwz f0, f29
/* 0000EF18 0000EFE4  38 A4 00 00 */	addi r5, r4, zero_las_00019404@l
/* 0000EF1C 0000EFE8  FC 40 08 1E */	fctiwz f2, f1
/* 0000EF20 0000EFEC  D8 61 00 18 */	stfd f3, 0x18(r1)
/* 0000EF24 0000EFF0  38 83 00 00 */	addi r4, r3, float_1_las_000193fc@l
/* 0000EF28 0000EFF4  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 0000EF2C 0000EFF8  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 0000EF30 0000EFFC  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 0000EF34 0000F000  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 0000EF38 0000F004  C0 44 00 00 */	lfs f2, 0x0(r4)
/* 0000EF3C 0000F008  80 81 00 14 */	lwz r4, 0x14(r1)
/* 0000EF40 0000F00C  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 0000EF44 0000F010  4B FF 11 F9 */	bl intplGetValue
.L_0000EF48:
/* 0000EF48 0000F014  3C 60 00 00 */	lis r3, float_1_las_000193fc@ha
/* 0000EF4C 0000F018  EC 59 00 72 */	fmuls f2, f25, f1
/* 0000EF50 0000F01C  38 83 00 00 */	addi r4, r3, float_1_las_000193fc@l
/* 0000EF54 0000F020  7F C3 F3 78 */	mr r3, r30
/* 0000EF58 0000F024  C0 24 00 00 */	lfs f1, 0x0(r4)
/* 0000EF5C 0000F028  7F E4 FB 78 */	mr r4, r31
/* 0000EF60 0000F02C  EC 1E 00 B2 */	fmuls f0, f30, f2
/* 0000EF64 0000F030  EC 21 10 28 */	fsubs f1, f1, f2
/* 0000EF68 0000F034  EC 3B 00 7A */	fmadds f1, f27, f1, f0
/* 0000EF6C 0000F038  4B FF 11 D1 */	bl evtSetFloat
/* 0000EF70 0000F03C  38 60 00 02 */	li r3, 0x2
.L_0000EF74:
/* 0000EF74 0000F040  E3 E1 00 98 */	psq_l f31, 0x98(r1), 0, qr0
/* 0000EF78 0000F044  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 0000EF7C 0000F048  E3 C1 00 88 */	psq_l f30, 0x88(r1), 0, qr0
/* 0000EF80 0000F04C  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 0000EF84 0000F050  E3 A1 00 78 */	psq_l f29, 0x78(r1), 0, qr0
/* 0000EF88 0000F054  CB A1 00 70 */	lfd f29, 0x70(r1)
/* 0000EF8C 0000F058  E3 81 00 68 */	psq_l f28, 0x68(r1), 0, qr0
/* 0000EF90 0000F05C  CB 81 00 60 */	lfd f28, 0x60(r1)
/* 0000EF94 0000F060  E3 61 00 58 */	psq_l f27, 0x58(r1), 0, qr0
/* 0000EF98 0000F064  CB 61 00 50 */	lfd f27, 0x50(r1)
/* 0000EF9C 0000F068  E3 41 00 48 */	psq_l f26, 0x48(r1), 0, qr0
/* 0000EFA0 0000F06C  CB 41 00 40 */	lfd f26, 0x40(r1)
/* 0000EFA4 0000F070  E3 21 00 38 */	psq_l f25, 0x38(r1), 0, qr0
/* 0000EFA8 0000F074  CB 21 00 30 */	lfd f25, 0x30(r1)
/* 0000EFAC 0000F078  BB A1 00 24 */	lmw r29, 0x24(r1)
/* 0000EFB0 0000F07C  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 0000EFB4 0000F080  7C 08 03 A6 */	mtlr r0
/* 0000EFB8 0000F084  38 21 00 A0 */	addi r1, r1, 0xa0
/* 0000EFBC 0000F088  4E 80 00 20 */	blr
.endfn bts_wariai_enzan_1f_intpl_w

# .text:0x574 | 0xEFC0 | size: 0x1C0
.fn bts_wariai_enzan_1f_intpl, local
/* 0000EFC0 0000F08C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 0000EFC4 0000F090  7C 08 02 A6 */	mflr r0
/* 0000EFC8 0000F094  90 01 00 74 */	stw r0, 0x74(r1)
/* 0000EFCC 0000F098  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 0000EFD0 0000F09C  F3 E1 00 68 */	psq_st f31, 0x68(r1), 0, qr0
/* 0000EFD4 0000F0A0  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 0000EFD8 0000F0A4  F3 C1 00 58 */	psq_st f30, 0x58(r1), 0, qr0
/* 0000EFDC 0000F0A8  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 0000EFE0 0000F0AC  F3 A1 00 48 */	psq_st f29, 0x48(r1), 0, qr0
/* 0000EFE4 0000F0B0  DB 81 00 30 */	stfd f28, 0x30(r1)
/* 0000EFE8 0000F0B4  F3 81 00 38 */	psq_st f28, 0x38(r1), 0, qr0
/* 0000EFEC 0000F0B8  BF A1 00 24 */	stmw r29, 0x24(r1)
/* 0000EFF0 0000F0BC  7C 7F 1B 78 */	mr r31, r3
/* 0000EFF4 0000F0C0  83 C3 00 18 */	lwz r30, 0x18(r3)
/* 0000EFF8 0000F0C4  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 0000EFFC 0000F0C8  4B FF 11 41 */	bl evtGetFloat
/* 0000F000 0000F0CC  3C 60 00 00 */	lis r3, float_1_las_000193fc@ha
/* 0000F004 0000F0D0  80 9E 00 04 */	lwz r4, 0x4(r30)
/* 0000F008 0000F0D4  38 A3 00 00 */	addi r5, r3, float_1_las_000193fc@l
/* 0000F00C 0000F0D8  7F E3 FB 78 */	mr r3, r31
/* 0000F010 0000F0DC  C0 05 00 00 */	lfs f0, 0x0(r5)
/* 0000F014 0000F0E0  EF 81 00 28 */	fsubs f28, f1, f0
/* 0000F018 0000F0E4  4B FF 11 25 */	bl evtGetFloat
/* 0000F01C 0000F0E8  FF A0 08 90 */	fmr f29, f1
/* 0000F020 0000F0EC  80 9E 00 08 */	lwz r4, 0x8(r30)
/* 0000F024 0000F0F0  7F E3 FB 78 */	mr r3, r31
/* 0000F028 0000F0F4  4B FF 11 15 */	bl evtGetFloat
/* 0000F02C 0000F0F8  FF E0 08 90 */	fmr f31, f1
/* 0000F030 0000F0FC  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 0000F034 0000F100  7F E3 FB 78 */	mr r3, r31
/* 0000F038 0000F104  4B FF 11 05 */	bl evtGetFloat
/* 0000F03C 0000F108  FF C0 08 90 */	fmr f30, f1
/* 0000F040 0000F10C  83 BE 00 10 */	lwz r29, 0x10(r30)
/* 0000F044 0000F110  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 0000F048 0000F114  7F E3 FB 78 */	mr r3, r31
/* 0000F04C 0000F118  4B FF 10 F1 */	bl evtGetFloat
/* 0000F050 0000F11C  3C 60 00 00 */	lis r3, float_14_las_00019400@ha
/* 0000F054 0000F120  C0 03 00 00 */	lfs f0, float_14_las_00019400@l(r3)
/* 0000F058 0000F124  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 0000F05C 0000F128  4C 41 13 82 */	cror eq, gt, eq
/* 0000F060 0000F12C  40 82 00 80 */	bne .L_0000F0E0
/* 0000F064 0000F130  EC 41 00 28 */	fsubs f2, f1, f0
/* 0000F068 0000F134  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 0000F06C 0000F138  4C 41 13 82 */	cror eq, gt, eq
/* 0000F070 0000F13C  40 82 00 1C */	bne .L_0000F08C
/* 0000F074 0000F140  FC 20 F8 90 */	fmr f1, f31
/* 0000F078 0000F144  7F E3 FB 78 */	mr r3, r31
/* 0000F07C 0000F148  7F A4 EB 78 */	mr r4, r29
/* 0000F080 0000F14C  4B FF 10 BD */	bl evtSetFloat
/* 0000F084 0000F150  38 60 00 02 */	li r3, 0x2
/* 0000F088 0000F154  48 00 00 C4 */	b .L_0000F14C
.L_0000F08C:
/* 0000F08C 0000F158  EC 3D E0 28 */	fsubs f1, f29, f28
/* 0000F090 0000F15C  3C 80 00 00 */	lis r4, float_1_las_000193fc@ha
/* 0000F094 0000F160  FC 60 10 1E */	fctiwz f3, f2
/* 0000F098 0000F164  3C 60 00 00 */	lis r3, zero_las_00019404@ha
/* 0000F09C 0000F168  FC 00 E8 1E */	fctiwz f0, f29
/* 0000F0A0 0000F16C  38 A4 00 00 */	addi r5, r4, float_1_las_000193fc@l
/* 0000F0A4 0000F170  FC 40 08 1E */	fctiwz f2, f1
/* 0000F0A8 0000F174  D8 61 00 08 */	stfd f3, 0x8(r1)
/* 0000F0AC 0000F178  38 83 00 00 */	addi r4, r3, zero_las_00019404@l
/* 0000F0B0 0000F17C  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 0000F0B4 0000F180  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 0000F0B8 0000F184  80 61 00 0C */	lwz r3, 0xc(r1)
/* 0000F0BC 0000F188  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 0000F0C0 0000F18C  C0 44 00 00 */	lfs f2, 0x0(r4)
/* 0000F0C4 0000F190  80 81 00 14 */	lwz r4, 0x14(r1)
/* 0000F0C8 0000F194  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 0000F0CC 0000F198  4B FF 10 71 */	bl intplGetValue
/* 0000F0D0 0000F19C  3C 60 00 00 */	lis r3, float_1_las_000193fc@ha
/* 0000F0D4 0000F1A0  C0 03 00 00 */	lfs f0, float_1_las_000193fc@l(r3)
/* 0000F0D8 0000F1A4  EC 20 08 28 */	fsubs f1, f0, f1
/* 0000F0DC 0000F1A8  48 00 00 48 */	b .L_0000F124
.L_0000F0E0:
/* 0000F0E0 0000F1AC  EC 5D E0 28 */	fsubs f2, f29, f28
/* 0000F0E4 0000F1B0  3C 80 00 00 */	lis r4, zero_las_00019404@ha
/* 0000F0E8 0000F1B4  FC 20 08 1E */	fctiwz f1, f1
/* 0000F0EC 0000F1B8  3C 60 00 00 */	lis r3, float_1_las_000193fc@ha
/* 0000F0F0 0000F1BC  FC 00 E8 1E */	fctiwz f0, f29
/* 0000F0F4 0000F1C0  38 A4 00 00 */	addi r5, r4, zero_las_00019404@l
/* 0000F0F8 0000F1C4  FC 40 10 1E */	fctiwz f2, f2
/* 0000F0FC 0000F1C8  D8 21 00 18 */	stfd f1, 0x18(r1)
/* 0000F100 0000F1CC  38 83 00 00 */	addi r4, r3, float_1_las_000193fc@l
/* 0000F104 0000F1D0  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 0000F108 0000F1D4  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 0000F10C 0000F1D8  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 0000F110 0000F1DC  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 0000F114 0000F1E0  C0 44 00 00 */	lfs f2, 0x0(r4)
/* 0000F118 0000F1E4  80 81 00 14 */	lwz r4, 0x14(r1)
/* 0000F11C 0000F1E8  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 0000F120 0000F1EC  4B FF 10 1D */	bl intplGetValue
.L_0000F124:
/* 0000F124 0000F1F0  3C 60 00 00 */	lis r3, float_1_las_000193fc@ha
/* 0000F128 0000F1F4  EC 01 07 B2 */	fmuls f0, f1, f30
/* 0000F12C 0000F1F8  38 83 00 00 */	addi r4, r3, float_1_las_000193fc@l
/* 0000F130 0000F1FC  7F E3 FB 78 */	mr r3, r31
/* 0000F134 0000F200  C0 44 00 00 */	lfs f2, 0x0(r4)
/* 0000F138 0000F204  7F A4 EB 78 */	mr r4, r29
/* 0000F13C 0000F208  EC 22 08 28 */	fsubs f1, f2, f1
/* 0000F140 0000F20C  EC 21 07 FA */	fmadds f1, f1, f31, f0
/* 0000F144 0000F210  4B FF 0F F9 */	bl evtSetFloat
/* 0000F148 0000F214  38 60 00 02 */	li r3, 0x2
.L_0000F14C:
/* 0000F14C 0000F218  E3 E1 00 68 */	psq_l f31, 0x68(r1), 0, qr0
/* 0000F150 0000F21C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 0000F154 0000F220  E3 C1 00 58 */	psq_l f30, 0x58(r1), 0, qr0
/* 0000F158 0000F224  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 0000F15C 0000F228  E3 A1 00 48 */	psq_l f29, 0x48(r1), 0, qr0
/* 0000F160 0000F22C  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 0000F164 0000F230  E3 81 00 38 */	psq_l f28, 0x38(r1), 0, qr0
/* 0000F168 0000F234  CB 81 00 30 */	lfd f28, 0x30(r1)
/* 0000F16C 0000F238  BB A1 00 24 */	lmw r29, 0x24(r1)
/* 0000F170 0000F23C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 0000F174 0000F240  7C 08 03 A6 */	mtlr r0
/* 0000F178 0000F244  38 21 00 70 */	addi r1, r1, 0x70
/* 0000F17C 0000F248  4E 80 00 20 */	blr
.endfn bts_wariai_enzan_1f_intpl

# .text:0x734 | 0xF180 | size: 0xC0
.fn bts_wariai_enzan_1f, local
/* 0000F180 0000F24C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 0000F184 0000F250  7C 08 02 A6 */	mflr r0
/* 0000F188 0000F254  90 01 00 44 */	stw r0, 0x44(r1)
/* 0000F18C 0000F258  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 0000F190 0000F25C  F3 E1 00 38 */	psq_st f31, 0x38(r1), 0, qr0
/* 0000F194 0000F260  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 0000F198 0000F264  F3 C1 00 28 */	psq_st f30, 0x28(r1), 0, qr0
/* 0000F19C 0000F268  DB A1 00 10 */	stfd f29, 0x10(r1)
/* 0000F1A0 0000F26C  F3 A1 00 18 */	psq_st f29, 0x18(r1), 0, qr0
/* 0000F1A4 0000F270  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 0000F1A8 0000F274  7C 7E 1B 78 */	mr r30, r3
/* 0000F1AC 0000F278  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 0000F1B0 0000F27C  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 0000F1B4 0000F280  4B FF 0F 89 */	bl evtGetFloat
/* 0000F1B8 0000F284  3C 60 00 00 */	lis r3, float_1_las_000193fc@ha
/* 0000F1BC 0000F288  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 0000F1C0 0000F28C  38 A3 00 00 */	addi r5, r3, float_1_las_000193fc@l
/* 0000F1C4 0000F290  7F C3 F3 78 */	mr r3, r30
/* 0000F1C8 0000F294  C0 05 00 00 */	lfs f0, 0x0(r5)
/* 0000F1CC 0000F298  EF A1 00 28 */	fsubs f29, f1, f0
/* 0000F1D0 0000F29C  4B FF 0F 6D */	bl evtGetFloat
/* 0000F1D4 0000F2A0  FF C0 08 90 */	fmr f30, f1
/* 0000F1D8 0000F2A4  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 0000F1DC 0000F2A8  7F C3 F3 78 */	mr r3, r30
/* 0000F1E0 0000F2AC  4B FF 0F 5D */	bl evtGetFloat
/* 0000F1E4 0000F2B0  FF E0 08 90 */	fmr f31, f1
/* 0000F1E8 0000F2B4  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 0000F1EC 0000F2B8  7F C3 F3 78 */	mr r3, r30
/* 0000F1F0 0000F2BC  4B FF 0F 4D */	bl evtGetFloat
/* 0000F1F4 0000F2C0  EC 1E E8 28 */	fsubs f0, f30, f29
/* 0000F1F8 0000F2C4  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 0000F1FC 0000F2C8  7F C3 F3 78 */	mr r3, r30
/* 0000F200 0000F2CC  EC 01 00 32 */	fmuls f0, f1, f0
/* 0000F204 0000F2D0  EC 1D 07 FA */	fmadds f0, f29, f31, f0
/* 0000F208 0000F2D4  EC 20 F0 24 */	fdivs f1, f0, f30
/* 0000F20C 0000F2D8  4B FF 0F 31 */	bl evtSetFloat
/* 0000F210 0000F2DC  38 60 00 02 */	li r3, 0x2
/* 0000F214 0000F2E0  E3 E1 00 38 */	psq_l f31, 0x38(r1), 0, qr0
/* 0000F218 0000F2E4  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 0000F21C 0000F2E8  E3 C1 00 28 */	psq_l f30, 0x28(r1), 0, qr0
/* 0000F220 0000F2EC  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 0000F224 0000F2F0  E3 A1 00 18 */	psq_l f29, 0x18(r1), 0, qr0
/* 0000F228 0000F2F4  CB A1 00 10 */	lfd f29, 0x10(r1)
/* 0000F22C 0000F2F8  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 0000F230 0000F2FC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 0000F234 0000F300  7C 08 03 A6 */	mtlr r0
/* 0000F238 0000F304  38 21 00 40 */	addi r1, r1, 0x40
/* 0000F23C 0000F308  4E 80 00 20 */	blr
.endfn bts_wariai_enzan_1f

# .text:0x7F4 | 0xF240 | size: 0xCC
.fn bts_wariai_enzan_1, local
/* 0000F240 0000F30C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 0000F244 0000F310  7C 08 02 A6 */	mflr r0
/* 0000F248 0000F314  90 01 00 54 */	stw r0, 0x54(r1)
/* 0000F24C 0000F318  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 0000F250 0000F31C  F3 E1 00 48 */	psq_st f31, 0x48(r1), 0, qr0
/* 0000F254 0000F320  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 0000F258 0000F324  F3 C1 00 38 */	psq_st f30, 0x38(r1), 0, qr0
/* 0000F25C 0000F328  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 0000F260 0000F32C  F3 A1 00 28 */	psq_st f29, 0x28(r1), 0, qr0
/* 0000F264 0000F330  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 0000F268 0000F334  7C 7E 1B 78 */	mr r30, r3
/* 0000F26C 0000F338  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 0000F270 0000F33C  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 0000F274 0000F340  4B FF 0E C9 */	bl evtGetFloat
/* 0000F278 0000F344  3C 60 00 00 */	lis r3, float_1_las_000193fc@ha
/* 0000F27C 0000F348  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 0000F280 0000F34C  38 A3 00 00 */	addi r5, r3, float_1_las_000193fc@l
/* 0000F284 0000F350  7F C3 F3 78 */	mr r3, r30
/* 0000F288 0000F354  C0 05 00 00 */	lfs f0, 0x0(r5)
/* 0000F28C 0000F358  EF A1 00 28 */	fsubs f29, f1, f0
/* 0000F290 0000F35C  4B FF 0E AD */	bl evtGetFloat
/* 0000F294 0000F360  FF C0 08 90 */	fmr f30, f1
/* 0000F298 0000F364  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 0000F29C 0000F368  7F C3 F3 78 */	mr r3, r30
/* 0000F2A0 0000F36C  4B FF 0E 9D */	bl evtGetFloat
/* 0000F2A4 0000F370  FF E0 08 90 */	fmr f31, f1
/* 0000F2A8 0000F374  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 0000F2AC 0000F378  7F C3 F3 78 */	mr r3, r30
/* 0000F2B0 0000F37C  4B FF 0E 8D */	bl evtGetFloat
/* 0000F2B4 0000F380  EC 1E E8 28 */	fsubs f0, f30, f29
/* 0000F2B8 0000F384  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 0000F2BC 0000F388  7F C3 F3 78 */	mr r3, r30
/* 0000F2C0 0000F38C  EC 01 00 32 */	fmuls f0, f1, f0
/* 0000F2C4 0000F390  EC 1D 07 FA */	fmadds f0, f29, f31, f0
/* 0000F2C8 0000F394  EC 00 F0 24 */	fdivs f0, f0, f30
/* 0000F2CC 0000F398  FC 00 00 1E */	fctiwz f0, f0
/* 0000F2D0 0000F39C  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 0000F2D4 0000F3A0  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 0000F2D8 0000F3A4  4B FF 0E 65 */	bl evtSetValue
/* 0000F2DC 0000F3A8  38 60 00 02 */	li r3, 0x2
/* 0000F2E0 0000F3AC  E3 E1 00 48 */	psq_l f31, 0x48(r1), 0, qr0
/* 0000F2E4 0000F3B0  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 0000F2E8 0000F3B4  E3 C1 00 38 */	psq_l f30, 0x38(r1), 0, qr0
/* 0000F2EC 0000F3B8  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 0000F2F0 0000F3BC  E3 A1 00 28 */	psq_l f29, 0x28(r1), 0, qr0
/* 0000F2F4 0000F3C0  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 0000F2F8 0000F3C4  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 0000F2FC 0000F3C8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 0000F300 0000F3CC  7C 08 03 A6 */	mtlr r0
/* 0000F304 0000F3D0  38 21 00 50 */	addi r1, r1, 0x50
/* 0000F308 0000F3D4  4E 80 00 20 */	blr
.endfn bts_wariai_enzan_1

# 0x00007898..0x000079A0 | size: 0x108
.rodata
.balign 8

# .rodata:0x0 | 0x7898 | size: 0x18
.obj str_btl_un_batten_satell_las_00019300, local
	.string "btl_un_batten_satellite"
.endobj str_btl_un_batten_satell_las_00019300

# .rodata:0x18 | 0x78B0 | size: 0x1C
.obj str_SFX_BOSS_SATELLITE_D_las_00019318, local
	.string "SFX_BOSS_SATELLITE_DAMAGED1"
.endobj str_SFX_BOSS_SATELLITE_D_las_00019318

# .rodata:0x34 | 0x78CC | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_las_00019334, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_las_00019334

# .rodata:0x49 | 0x78E1 | size: 0x3
.obj gap_03_000078E1_rodata, global
.hidden gap_03_000078E1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000078E1_rodata

# .rodata:0x4C | 0x78E4 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_las_0001934c, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_las_0001934c

# .rodata:0x60 | 0x78F8 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_las_00019360, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_las_00019360

# .rodata:0x79 | 0x7911 | size: 0x3
.obj gap_03_00007911_rodata, global
.hidden gap_03_00007911_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007911_rodata

# .rodata:0x7C | 0x7914 | size: 0x4
.obj str_N_1_las_0001937c, local
	.string "N_1"
.endobj str_N_1_las_0001937c

# .rodata:0x80 | 0x7918 | size: 0x4
.obj str_Y_1_las_00019380, local
	.string "Y_1"
.endobj str_Y_1_las_00019380

# .rodata:0x84 | 0x791C | size: 0x4
.obj str_K_1_las_00019384, local
	.string "K_1"
.endobj str_K_1_las_00019384

# .rodata:0x88 | 0x7920 | size: 0x4
.obj str_X_1_las_00019388, local
	.string "X_1"
.endobj str_X_1_las_00019388

# .rodata:0x8C | 0x7924 | size: 0x4
.obj str_S_1_las_0001938c, local
	.string "S_1"
.endobj str_S_1_las_0001938c

# .rodata:0x90 | 0x7928 | size: 0x4
.obj str_Q_1_las_00019390, local
	.string "Q_1"
.endobj str_Q_1_las_00019390

# .rodata:0x94 | 0x792C | size: 0x4
.obj str_D_1_las_00019394, local
	.string "D_1"
.endobj str_D_1_las_00019394

# .rodata:0x98 | 0x7930 | size: 0x4
.obj str_A_1_las_00019398, local
	.string "A_1"
.endobj str_A_1_las_00019398

# .rodata:0x9C | 0x7934 | size: 0x15
.obj str_SFX_BTL_ATTACK_MISS3_las_0001939c, local
	.string "SFX_BTL_ATTACK_MISS3"
.endobj str_SFX_BTL_ATTACK_MISS3_las_0001939c

# .rodata:0xB1 | 0x7949 | size: 0x3
.obj gap_03_00007949_rodata, global
.hidden gap_03_00007949_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007949_rodata

# .rodata:0xB4 | 0x794C | size: 0x1B
.obj str_SFX_BOSS_SATELLITE_A_las_000193b4, local
	.string "SFX_BOSS_SATELLITE_ATTACK2"
.endobj str_SFX_BOSS_SATELLITE_A_las_000193b4

# .rodata:0xCF | 0x7967 | size: 0x1
.obj gap_03_00007967_rodata, global
.hidden gap_03_00007967_rodata
	.byte 0x00
.endobj gap_03_00007967_rodata

# .rodata:0xD0 | 0x7968 | size: 0xB
.obj str_c_shuryo_p_las_000193d0, local
	.string "c_shuryo_p"
.endobj str_c_shuryo_p_las_000193d0

# .rodata:0xDB | 0x7973 | size: 0x1
.obj gap_03_00007973_rodata, global
.hidden gap_03_00007973_rodata
	.byte 0x00
.endobj gap_03_00007973_rodata

# .rodata:0xDC | 0x7974 | size: 0x4
.obj str_F_1_las_000193dc, local
	.string "F_1"
.endobj str_F_1_las_000193dc

# .rodata:0xE0 | 0x7978 | size: 0x1B
.obj str_SFX_BOSS_SATELLITE_A_las_000193e0, local
	.string "SFX_BOSS_SATELLITE_ATTACK1"
.endobj str_SFX_BOSS_SATELLITE_A_las_000193e0
	.byte 0x00

# .rodata:0xFC | 0x7994 | size: 0x4
.obj float_1_las_000193fc, local
	.float 1
.endobj float_1_las_000193fc

# .rodata:0x100 | 0x7998 | size: 0x4
.obj float_14_las_00019400, local
	.float 14
.endobj float_14_las_00019400

# .rodata:0x104 | 0x799C | size: 0x4
.obj zero_las_00019404, local
	.float 0
.endobj zero_las_00019404

# 0x00046ED0..0x00047A30 | size: 0xB60
.data
.balign 8

# .data:0x0 | 0x46ED0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x46ED8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x46EDC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x46EE0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x46EE4 | size: 0x4
.obj gap_04_00046EE4_data, global
.hidden gap_04_00046EE4_data
	.4byte 0x00000000
.endobj gap_04_00046EE4_data

# .data:0x18 | 0x46EE8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x46EF0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x46EF4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x46EF8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x46F00 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x46F04 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x46F08 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x46F0C | size: 0x4
.obj gap_04_00046F0C_data, global
.hidden gap_04_00046F0C_data
	.4byte 0x00000000
.endobj gap_04_00046F0C_data

# .data:0x40 | 0x46F10 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x46F18 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x46F1C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x46F20 | size: 0xC0
.obj weapon_batten_satellite_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
.endobj weapon_batten_satellite_attack

# .data:0x110 | 0x46FE0 | size: 0xC4
.obj unit_boss_batten_satellite_16_data_46FE0, global
	.4byte 0x00000093
	.4byte str_btl_un_batten_satell_las_00019300
	.4byte 0x00030000
	.4byte 0x01010000
	.4byte 0x01640032
	.4byte 0x00090010
	.4byte 0x00100000
	.4byte 0x00080000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFDFFFA
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41000000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x40C00000
	.4byte 0x40E00000
	.4byte 0x00000000
	.4byte 0xBF800000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41800000
	.4byte 0x41800000
	.4byte 0x00000002
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_BOSS_SATELLITE_D_las_00019318
	.4byte str_SFX_BTL_DAMAGE_FIRE1_las_00019334
	.4byte str_SFX_BTL_DAMAGE_ICE1_las_0001934c
	.4byte str_SFX_BTL_DAMAGE_BIRIB_las_00019360
	.4byte 0x00000004
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_boss_batten_satellite_16_data_46FE0

# .data:0x1D4 | 0x470A4 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x1D9 | 0x470A9 | size: 0x3
.obj gap_04_000470A9_data, global
.hidden gap_04_000470A9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_000470A9_data

# .data:0x1DC | 0x470AC | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x1E1 | 0x470B1 | size: 0x3
.obj gap_04_000470B1_data, global
.hidden gap_04_000470B1_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_000470B1_data

# .data:0x1E4 | 0x470B4 | size: 0x16
.obj regist, local
	.4byte 0x004B5A00
	.4byte 0x0A64644B
	.4byte 0x644B644B
	.4byte 0x645F4B00
	.4byte 0x5A644B64
	.2byte 0x645A
.endobj regist

# .data:0x1FA | 0x470CA | size: 0x2
.obj gap_04_000470CA_data, global
.hidden gap_04_000470CA_data
	.2byte 0x0000
.endobj gap_04_000470CA_data

# .data:0x1FC | 0x470CC | size: 0x90
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_N_1_las_0001937c
	.4byte 0x00000002
	.4byte str_Y_1_las_00019380
	.4byte 0x00000009
	.4byte str_Y_1_las_00019380
	.4byte 0x00000005
	.4byte str_K_1_las_00019384
	.4byte 0x00000004
	.4byte str_X_1_las_00019388
	.4byte 0x00000003
	.4byte str_K_1_las_00019384
	.4byte 0x0000001C
	.4byte str_S_1_las_0001938c
	.4byte 0x0000001D
	.4byte str_Q_1_las_00019390
	.4byte 0x0000001E
	.4byte str_Q_1_las_00019390
	.4byte 0x0000001F
	.4byte str_D_1_las_00019394
	.4byte 0x00000027
	.4byte str_D_1_las_00019394
	.4byte 0x00000032
	.4byte str_A_1_las_00019398
	.4byte 0x0000002A
	.4byte str_S_1_las_0001938c
	.4byte 0x00000028
	.4byte str_S_1_las_0001938c
	.4byte 0x00000038
	.4byte str_X_1_las_00019388
	.4byte 0x00000039
	.4byte str_X_1_las_00019388
	.4byte 0x00000041
	.4byte str_A_1_las_00019398
	.4byte 0x00000045
	.4byte str_S_1_las_0001938c
.endobj pose_table

# .data:0x28C | 0x4715C | size: 0x78
.obj data_table, local
	.4byte 0x00000018
	.4byte dmg_counter_event
	.4byte 0x00000019
	.4byte dmg_counter_event
	.4byte 0x0000001A
	.4byte dmg_counter_event
	.4byte 0x0000001B
	.4byte dmg_counter_event
	.4byte 0x0000001C
	.4byte dmg_counter_event
	.4byte 0x0000001D
	.4byte dmg_counter_event
	.4byte 0x0000001E
	.4byte dmg_counter_event
	.4byte 0x0000001F
	.4byte dmg_counter_event
	.4byte 0x00000020
	.4byte dmg_counter_event
	.4byte 0x00000021
	.4byte dmg_counter_event
	.4byte 0x00000022
	.4byte dmg_counter_event
	.4byte 0x00000023
	.4byte dmg_counter_event
	.4byte 0x00000024
	.4byte dmg_counter_event
	.4byte 0x00000032
	.4byte dead_event
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x304 | 0x471D4 | size: 0x254
.obj dmg_counter_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_OnUnitFlag
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x0000002B
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_BTL_ATTACK_MISS3_las_0001939c
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x00000024
	.4byte 0x0001002B
	.4byte 0x0000002E
	.4byte 0x0001002B
	.4byte 0x00000031
	.4byte 0x0001002B
	.4byte 0x00000032
	.4byte 0x0001002B
	.4byte 0x00000036
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x0000001D
	.4byte 0x0000002E
	.4byte 0x0000002A
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x00000027
	.4byte 0x00000031
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8E
	.4byte 0x0000006E
	.4byte 0x0003005B
	.4byte btlevtcmd_RunDataEventChild
	.4byte 0xFE363C8A
	.4byte 0x0000000A
	.4byte 0x00000070
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFE363C8A
	.4byte 0xF24A7E80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C8A
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFE363C8A
	.4byte 0xFE363C82
	.4byte 0x00000019
	.4byte 0x00020035
	.4byte 0xFE363C83
	.4byte 0x00000019
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFE363C8A
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckDamageCode
	.4byte 0xFE363C8A
	.4byte 0x00000200
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckDamageCode
	.4byte 0xFE363C8A
	.4byte 0x00000800
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_SATELLITE_A_las_000193b4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFE363C8A
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x0001000A
	.4byte 0x00000050
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0x0000002A
	.4byte 0x00010005
	.4byte 0xFE363C88
	.4byte 0x0006005B
	.4byte bts_wariai_enzan_1
	.4byte 0xFE363C88
	.4byte 0x0000002A
	.4byte 0xFE363C82
	.4byte 0xFE363C85
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte bts_wariai_enzan_1
	.4byte 0xFE363C88
	.4byte 0x0000002A
	.4byte 0xFE363C83
	.4byte 0xFE363C86
	.4byte 0xFE363C8D
	.4byte 0x0006005B
	.4byte bts_wariai_enzan_1
	.4byte 0xFE363C88
	.4byte 0x0000002A
	.4byte 0xFE363C84
	.4byte 0xFE363C87
	.4byte 0xFE363C8E
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0xFE363C8E
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dmg_counter_event

# .data:0x558 | 0x47428 | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_batten_satell_las_00019300
	.4byte str_c_shuryo_p_las_000193d0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xC0800000
	.4byte 0xC0000000
	.4byte 0x00000000
	.4byte 0xC0C00000
	.4byte 0x3F800000
	.4byte 0x00000000
	.4byte 0x000E000E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x00600009
	.4byte 0x00000000
	.4byte pose_table
.endobj parts

# .data:0x5A4 | 0x47474 | size: 0x78
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
	.4byte btldefaultevt_Confuse
	.4byte 0x0004005B
	.4byte btlevtcmd_SetHpGaugeOffset
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFB
	.4byte 0xFFFFFFF3
	.4byte 0x0003005B
	.4byte btlevtcmd_OnUnitFlag
	.4byte 0xFFFFFFFE
	.4byte 0x00300000
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x61C | 0x474EC | size: 0x8
.obj entry_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj entry_event

# .data:0x624 | 0x474F4 | size: 0x28
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

# .data:0x64C | 0x4751C | size: 0x8
.obj phase_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0x654 | 0x47524 | size: 0x8
.obj dead_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dead_event

# .data:0x65C | 0x4752C | size: 0x28
.obj attack_event, local
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_batten_satellite_attack
	.4byte 0x0001005E
	.4byte batten_satellite_attack_attack_event
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x684 | 0x47554 | size: 0x4C0
.obj batten_satellite_attack_attack_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_F_1_las_000193dc
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000045
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
	.4byte 0x00000021
	.4byte 0x00000002
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
	.4byte str_SFX_BOSS_SATELLITE_A_las_000193e0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8D
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0x00000009
	.4byte 0x00010005
	.4byte 0xFE363C88
	.4byte 0x0006005B
	.4byte bts_wariai_enzan_1
	.4byte 0xFE363C88
	.4byte 0x00000009
	.4byte 0xFE363C80
	.4byte 0xFE363C8D
	.4byte 0xFE363C8A
	.4byte 0x0006005B
	.4byte bts_wariai_enzan_1
	.4byte 0xFE363C88
	.4byte 0x00000009
	.4byte 0xFE363C81
	.4byte 0xFE363C86
	.4byte 0xFE363C8B
	.4byte 0x0006005B
	.4byte bts_wariai_enzan_1
	.4byte 0xFE363C88
	.4byte 0x00000009
	.4byte 0xFE363C82
	.4byte 0xFE363C87
	.4byte 0xFE363C8C
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00020036
	.4byte 0xFE363C8D
	.4byte 0xFE363C80
	.4byte 0x00020038
	.4byte 0xFE363C8D
	.4byte 0x00000002
	.4byte 0x00020036
	.4byte 0xFE363C86
	.4byte 0xFE363C81
	.4byte 0x00020038
	.4byte 0xFE363C86
	.4byte 0x00000002
	.4byte 0x00020036
	.4byte 0xFE363C87
	.4byte 0xFE363C82
	.4byte 0x00020038
	.4byte 0xFE363C87
	.4byte 0x00000002
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C8D
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C86
	.4byte 0xFE363C81
	.4byte 0x00020035
	.4byte 0xFE363C87
	.4byte 0xFE363C82
	.4byte 0x0000006E
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0x00000004
	.4byte 0x00010005
	.4byte 0xFE363C88
	.4byte 0x0006005B
	.4byte bts_wariai_enzan_1
	.4byte 0xFE363C88
	.4byte 0x00000004
	.4byte 0xFE363C80
	.4byte 0xFE363C8D
	.4byte 0xFE363C8A
	.4byte 0x0006005B
	.4byte bts_wariai_enzan_1
	.4byte 0xFE363C88
	.4byte 0x00000004
	.4byte 0xFE363C81
	.4byte 0xFE363C86
	.4byte 0xFE363C8B
	.4byte 0x0006005B
	.4byte bts_wariai_enzan_1
	.4byte 0xFE363C88
	.4byte 0x00000004
	.4byte 0xFE363C82
	.4byte 0xFE363C87
	.4byte 0xFE363C8C
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000070
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
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_SATELLITE_A_las_000193b4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0001000A
	.4byte 0x00000050
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0x0000002A
	.4byte 0x00010005
	.4byte 0xFE363C88
	.4byte 0x0006005B
	.4byte bts_wariai_enzan_1
	.4byte 0xFE363C88
	.4byte 0x0000002A
	.4byte 0xFE363C8D
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x0006005B
	.4byte bts_wariai_enzan_1
	.4byte 0xFE363C88
	.4byte 0x0000002A
	.4byte 0xFE363C86
	.4byte 0xFE363C81
	.4byte 0xFE363C8B
	.4byte 0x0006005B
	.4byte bts_wariai_enzan_1
	.4byte 0xFE363C88
	.4byte 0x0000002A
	.4byte 0xFE363C87
	.4byte 0xFE363C82
	.4byte 0xFE363C8C
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj batten_satellite_attack_attack_event

# .data:0xB44 | 0x47A14 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0xB5C | 0x47A2C | size: 0x4
.obj gap_04_00047A2C_data, global
.hidden gap_04_00047A2C_data
	.4byte 0x00000000
.endobj gap_04_00047A2C_data

# 0x000002F0..0x000002F8 | size: 0x8
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x2F0 | size: 0x4
.obj bts_x_flag_data, local
	.skip 0x4
.endobj bts_x_flag_data

# .bss:0x4 | 0x2F4 | size: 0x4
.obj gap_05_000002F4_bss, global
.hidden gap_05_000002F4_bss
	.skip 0x4
.endobj gap_05_000002F4_bss
