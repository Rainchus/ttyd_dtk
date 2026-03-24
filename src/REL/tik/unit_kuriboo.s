.include "macros.inc"
.file "unit_kuriboo.o"

# 0x00005818..0x00005930 | size: 0x118
.text
.balign 4

# .text:0x0 | 0x5818 | size: 0x118
.fn krb_get_dir, local
/* 00005818 000058DC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 0000581C 000058E0  7C 08 02 A6 */	mflr r0
/* 00005820 000058E4  90 01 00 64 */	stw r0, 0x64(r1)
/* 00005824 000058E8  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 00005828 000058EC  F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 0000582C 000058F0  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 00005830 000058F4  F3 C1 00 48 */	psq_st f30, 0x48(r1), 0, qr0
/* 00005834 000058F8  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 00005838 000058FC  F3 A1 00 38 */	psq_st f29, 0x38(r1), 0, qr0
/* 0000583C 00005900  DB 81 00 20 */	stfd f28, 0x20(r1)
/* 00005840 00005904  F3 81 00 28 */	psq_st f28, 0x28(r1), 0, qr0
/* 00005844 00005908  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 00005848 0000590C  7C 7E 1B 78 */	mr r30, r3
/* 0000584C 00005910  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00005850 00005914  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00005854 00005918  4B FF A8 F5 */	bl evtGetFloat
/* 00005858 0000591C  FF 80 08 90 */	fmr f28, f1
/* 0000585C 00005920  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00005860 00005924  7F C3 F3 78 */	mr r3, r30
/* 00005864 00005928  4B FF A8 E5 */	bl evtGetFloat
/* 00005868 0000592C  FF A0 08 90 */	fmr f29, f1
/* 0000586C 00005930  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 00005870 00005934  7F C3 F3 78 */	mr r3, r30
/* 00005874 00005938  4B FF A8 D5 */	bl evtGetFloat
/* 00005878 0000593C  FF C0 08 90 */	fmr f30, f1
/* 0000587C 00005940  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00005880 00005944  7F C3 F3 78 */	mr r3, r30
/* 00005884 00005948  4B FF A8 C5 */	bl evtGetFloat
/* 00005888 0000594C  FF E0 08 90 */	fmr f31, f1
/* 0000588C 00005950  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00005890 00005954  7F C3 F3 78 */	mr r3, r30
/* 00005894 00005958  4B FF A8 B5 */	bl evtGetValue
/* 00005898 0000595C  3C 80 00 00 */	lis r4, zero_tik_0000bbe8@ha
/* 0000589C 00005960  EC 3E E0 28 */	fsubs f1, f30, f28
/* 000058A0 00005964  C0 04 00 00 */	lfs f0, zero_tik_0000bbe8@l(r4)
/* 000058A4 00005968  EC 5F E8 28 */	fsubs f2, f31, f29
/* 000058A8 0000596C  7C 65 1B 78 */	mr r5, r3
/* 000058AC 00005970  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 000058B0 00005974  40 82 00 20 */	bne .L_000058D0
/* 000058B4 00005978  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 000058B8 0000597C  40 82 00 18 */	bne .L_000058D0
/* 000058BC 00005980  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 000058C0 00005984  7F C3 F3 78 */	mr r3, r30
/* 000058C4 00005988  4B FF A8 85 */	bl evtSetValue
/* 000058C8 0000598C  38 60 00 02 */	li r3, 0x2
/* 000058CC 00005990  48 00 00 30 */	b .L_000058FC
.L_000058D0:
/* 000058D0 00005994  3C 60 00 00 */	lis r3, zero_tik_0000bbe8@ha
/* 000058D4 00005998  C0 63 00 00 */	lfs f3, zero_tik_0000bbe8@l(r3)
/* 000058D8 0000599C  FC 80 18 90 */	fmr f4, f3
/* 000058DC 000059A0  4B FF A8 6D */	bl angleABf_1
/* 000058E0 000059A4  FC 00 08 1E */	fctiwz f0, f1
/* 000058E4 000059A8  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 000058E8 000059AC  7F C3 F3 78 */	mr r3, r30
/* 000058EC 000059B0  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 000058F0 000059B4  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 000058F4 000059B8  4B FF A8 55 */	bl evtSetValue
/* 000058F8 000059BC  38 60 00 02 */	li r3, 0x2
.L_000058FC:
/* 000058FC 000059C0  E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 00005900 000059C4  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 00005904 000059C8  E3 C1 00 48 */	psq_l f30, 0x48(r1), 0, qr0
/* 00005908 000059CC  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 0000590C 000059D0  E3 A1 00 38 */	psq_l f29, 0x38(r1), 0, qr0
/* 00005910 000059D4  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 00005914 000059D8  E3 81 00 28 */	psq_l f28, 0x28(r1), 0, qr0
/* 00005918 000059DC  CB 81 00 20 */	lfd f28, 0x20(r1)
/* 0000591C 000059E0  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 00005920 000059E4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 00005924 000059E8  7C 08 03 A6 */	mtlr r0
/* 00005928 000059EC  38 21 00 60 */	addi r1, r1, 0x60
/* 0000592C 000059F0  4E 80 00 20 */	blr
.endfn krb_get_dir

# .text:0x0 | 0x846C | size: 0x118
.fn _krb_get_dir_tik_kuribo, global
/* 0000846C 00008538  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 00008470 0000853C  7C 08 02 A6 */	mflr r0
/* 00008474 00008540  90 01 00 64 */	stw r0, 0x64(r1)
/* 00008478 00008544  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 0000847C 00008548  F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 00008480 0000854C  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 00008484 00008550  F3 C1 00 48 */	psq_st f30, 0x48(r1), 0, qr0
/* 00008488 00008554  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 0000848C 00008558  F3 A1 00 38 */	psq_st f29, 0x38(r1), 0, qr0
/* 00008490 0000855C  DB 81 00 20 */	stfd f28, 0x20(r1)
/* 00008494 00008560  F3 81 00 28 */	psq_st f28, 0x28(r1), 0, qr0
/* 00008498 00008564  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 0000849C 00008568  7C 7E 1B 78 */	mr r30, r3
/* 000084A0 0000856C  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 000084A4 00008570  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 000084A8 00008574  4B FF 7C 95 */	bl evtGetFloat
/* 000084AC 00008578  FF 80 08 90 */	fmr f28, f1
/* 000084B0 0000857C  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 000084B4 00008580  7F C3 F3 78 */	mr r3, r30
/* 000084B8 00008584  4B FF 7C 85 */	bl evtGetFloat
/* 000084BC 00008588  FF A0 08 90 */	fmr f29, f1
/* 000084C0 0000858C  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 000084C4 00008590  7F C3 F3 78 */	mr r3, r30
/* 000084C8 00008594  4B FF 7C 75 */	bl evtGetFloat
/* 000084CC 00008598  FF C0 08 90 */	fmr f30, f1
/* 000084D0 0000859C  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 000084D4 000085A0  7F C3 F3 78 */	mr r3, r30
/* 000084D8 000085A4  4B FF 7C 65 */	bl evtGetFloat
/* 000084DC 000085A8  FF E0 08 90 */	fmr f31, f1
/* 000084E0 000085AC  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 000084E4 000085B0  7F C3 F3 78 */	mr r3, r30
/* 000084E8 000085B4  4B FF 7C 55 */	bl evtGetValue
/* 000084EC 000085B8  3C 80 00 00 */	lis r4, zero_tik_0000bbe8@ha
/* 000084F0 000085BC  EC 3E E0 28 */	fsubs f1, f30, f28
/* 000084F4 000085C0  C0 04 00 00 */	lfs f0, zero_tik_0000bbe8@l(r4)
/* 000084F8 000085C4  EC 5F E8 28 */	fsubs f2, f31, f29
/* 000084FC 000085C8  7C 65 1B 78 */	mr r5, r3
/* 00008500 000085CC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 00008504 000085D0  40 82 00 20 */	bne .L_00008524
/* 00008508 000085D4  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 0000850C 000085D8  40 82 00 18 */	bne .L_00008524
/* 00008510 000085DC  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00008514 000085E0  7F C3 F3 78 */	mr r3, r30
/* 00008518 000085E4  4B FF 7C 25 */	bl evtSetValue
/* 0000851C 000085E8  38 60 00 02 */	li r3, 0x2
/* 00008520 000085EC  48 00 00 30 */	b .L_00008550
.L_00008524:
/* 00008524 000085F0  3C 60 00 00 */	lis r3, zero_tik_0000bbe8@ha
/* 00008528 000085F4  C0 63 00 00 */	lfs f3, zero_tik_0000bbe8@l(r3)
/* 0000852C 000085F8  FC 80 18 90 */	fmr f4, f3
/* 00008530 000085FC  4B FF 7C 0D */	bl angleABf_1
/* 00008534 00008600  FC 00 08 1E */	fctiwz f0, f1
/* 00008538 00008604  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 0000853C 00008608  7F C3 F3 78 */	mr r3, r30
/* 00008540 0000860C  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 00008544 00008610  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 00008548 00008614  4B FF 7B F5 */	bl evtSetValue
/* 0000854C 00008618  38 60 00 02 */	li r3, 0x2
.L_00008550:
/* 00008550 0000861C  E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 00008554 00008620  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 00008558 00008624  E3 C1 00 48 */	psq_l f30, 0x48(r1), 0, qr0
/* 0000855C 00008628  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 00008560 0000862C  E3 A1 00 38 */	psq_l f29, 0x38(r1), 0, qr0
/* 00008564 00008630  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 00008568 00008634  E3 81 00 28 */	psq_l f28, 0x28(r1), 0, qr0
/* 0000856C 00008638  CB 81 00 20 */	lfd f28, 0x20(r1)
/* 00008570 0000863C  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 00008574 00008640  80 01 00 64 */	lwz r0, 0x64(r1)
/* 00008578 00008644  7C 08 03 A6 */	mtlr r0
/* 0000857C 00008648  38 21 00 60 */	addi r1, r1, 0x60
/* 00008580 0000864C  4E 80 00 20 */	blr
.endfn _krb_get_dir_tik_kuribo

# 0x00003C30..0x00003D88 | size: 0x158
.rodata
.balign 8

# .rodata:0x150 | 0x3D80 | size: 0x4
.obj zero_tik_0000bbe8, local
	.float 0
.endobj zero_tik_0000bbe8

# 0x0001CD58..0x0001D8F0 | size: 0xB98
.data
.balign 8

# .data:0x0 | 0x1CD58 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x1CD60 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x1CD64 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x1CD68 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x1CD6C | size: 0x4
.obj gap_04_0001CD6C_data, global
.hidden gap_04_0001CD6C_data
	.4byte 0x00000000
.endobj gap_04_0001CD6C_data

# .data:0x18 | 0x1CD70 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x1CD78 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x1CD7C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x1CD80 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x1CD88 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x1CD8C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x1CD90 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x1CD94 | size: 0x4
.obj gap_04_0001CD94_data, global
.hidden gap_04_0001CD94_data
	.4byte 0x00000000
.endobj gap_04_0001CD94_data

# .data:0x40 | 0x1CD98 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x1CDA0 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x1CDA4 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364
