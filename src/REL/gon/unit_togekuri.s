.include "macros.inc"
.file "unit_togekuri.o"

# 0x00002784..0x00002ABC | size: 0x338
.text
.balign 4

# .text:0x0 | 0x2784 | size: 0x90
.fn get_attacker, local
/* 00002784 00002868  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00002788 0000286C  7C 08 02 A6 */	mflr r0
/* 0000278C 00002870  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00002790 00002874  90 01 00 14 */	stw r0, 0x14(r1)
/* 00002794 00002878  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00002798 0000287C  7C 7E 1B 78 */	mr r30, r3
/* 0000279C 00002880  38 64 00 00 */	addi r3, r4, _battleWorkPointer@l
/* 000027A0 00002884  80 63 00 00 */	lwz r3, 0x0(r3)
/* 000027A4 00002888  83 FE 00 18 */	lwz r31, 0x18(r30)
/* 000027A8 0000288C  80 83 04 20 */	lwz r4, 0x420(r3)
/* 000027AC 00002890  4B FF DA 35 */	bl BattleGetUnitPtr
/* 000027B0 00002894  80 03 00 04 */	lwz r0, 0x4(r3)
/* 000027B4 00002898  2C 00 00 DE */	cmpwi r0, 0xde
/* 000027B8 0000289C  40 82 00 18 */	bne .L_000027D0
/* 000027BC 000028A0  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 000027C0 000028A4  7F C3 F3 78 */	mr r3, r30
/* 000027C4 000028A8  38 A0 00 00 */	li r5, 0x0
/* 000027C8 000028AC  4B FF DA 19 */	bl evtSetValue
/* 000027CC 000028B0  48 00 00 30 */	b .L_000027FC
.L_000027D0:
/* 000027D0 000028B4  2C 00 00 E0 */	cmpwi r0, 0xe0
/* 000027D4 000028B8  40 82 00 18 */	bne .L_000027EC
/* 000027D8 000028BC  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 000027DC 000028C0  7F C3 F3 78 */	mr r3, r30
/* 000027E0 000028C4  38 A0 00 01 */	li r5, 0x1
/* 000027E4 000028C8  4B FF D9 FD */	bl evtSetValue
/* 000027E8 000028CC  48 00 00 14 */	b .L_000027FC
.L_000027EC:
/* 000027EC 000028D0  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 000027F0 000028D4  7F C3 F3 78 */	mr r3, r30
/* 000027F4 000028D8  38 A0 00 02 */	li r5, 0x2
/* 000027F8 000028DC  4B FF D9 E9 */	bl evtSetValue
.L_000027FC:
/* 000027FC 000028E0  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00002800 000028E4  38 60 00 02 */	li r3, 0x2
/* 00002804 000028E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00002808 000028EC  7C 08 03 A6 */	mtlr r0
/* 0000280C 000028F0  38 21 00 10 */	addi r1, r1, 0x10
/* 00002810 000028F4  4E 80 00 20 */	blr
.endfn get_attacker

# .text:0x90 | 0x2814 | size: 0x16C
.fn krb_comp_dir, local
/* 00002814 000028F8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00002818 000028FC  7C 08 02 A6 */	mflr r0
/* 0000281C 00002900  90 01 00 34 */	stw r0, 0x34(r1)
/* 00002820 00002904  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 00002824 00002908  F3 E1 00 28 */	psq_st f31, 0x28(r1), 0, qr0
/* 00002828 0000290C  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 0000282C 00002910  F3 C1 00 18 */	psq_st f30, 0x18(r1), 0, qr0
/* 00002830 00002914  FF C0 08 90 */	fmr f30, f1
/* 00002834 00002918  FF E0 10 90 */	fmr f31, f2
/* 00002838 0000291C  48 00 01 49 */	bl hypotf
/* 0000283C 00002920  FC 00 FA 10 */	fabs f0, f31
/* 00002840 00002924  3C 60 00 00 */	lis r3, SinTable@ha
/* 00002844 00002928  38 63 00 00 */	addi r3, r3, SinTable@l
/* 00002848 0000292C  38 C0 00 00 */	li r6, 0x0
/* 0000284C 00002930  38 E0 00 5A */	li r7, 0x5a
/* 00002850 00002934  38 A0 00 00 */	li r5, 0x0
/* 00002854 00002938  FC 40 08 24 */	fdiv f2, f0, f1
/* 00002858 0000293C  FC 40 10 18 */	frsp f2, f2
/* 0000285C 00002940  48 00 00 54 */	b .L_000028B0
.L_00002860:
/* 00002860 00002944  54 C4 04 3E */	clrlwi r4, r6, 16
/* 00002864 00002948  54 E0 04 3E */	clrlwi r0, r7, 16
/* 00002868 0000294C  7C 04 00 50 */	subf r0, r4, r0
/* 0000286C 00002950  7C 00 0E 70 */	srawi r0, r0, 1
/* 00002870 00002954  7C 00 01 94 */	addze r0, r0
/* 00002874 00002958  7C 84 02 14 */	add r4, r4, r0
/* 00002878 0000295C  54 80 13 BA */	clrlslwi r0, r4, 16, 2
/* 0000287C 00002960  7C 03 04 2E */	lfsx f0, r3, r0
/* 00002880 00002964  54 84 04 3E */	clrlwi r4, r4, 16
/* 00002884 00002968  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 00002888 0000296C  40 80 00 08 */	bge .L_00002890
/* 0000288C 00002970  7C 86 23 78 */	mr r6, r4
.L_00002890:
/* 00002890 00002974  54 80 13 BA */	clrlslwi r0, r4, 16, 2
/* 00002894 00002978  7C 03 04 2E */	lfsx f0, r3, r0
/* 00002898 0000297C  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 0000289C 00002980  7C 00 00 26 */	mfcr r0
/* 000028A0 00002984  54 00 0F FF */	srwi. r0, r0, 31
/* 000028A4 00002988  40 82 00 08 */	bne .L_000028AC
/* 000028A8 0000298C  7C 87 23 78 */	mr r7, r4
.L_000028AC:
/* 000028AC 00002990  38 A5 00 01 */	addi r5, r5, 0x1
.L_000028B0:
/* 000028B0 00002994  54 A0 04 3E */	clrlwi r0, r5, 16
/* 000028B4 00002998  28 00 00 07 */	cmplwi r0, 0x7
/* 000028B8 0000299C  41 80 FF A8 */	blt .L_00002860
/* 000028BC 000029A0  3C 60 00 00 */	lis r3, SinTable@ha
/* 000028C0 000029A4  54 C4 13 BA */	clrlslwi r4, r6, 16, 2
/* 000028C4 000029A8  38 63 00 00 */	addi r3, r3, SinTable@l
/* 000028C8 000029AC  54 E0 13 BA */	clrlslwi r0, r7, 16, 2
/* 000028CC 000029B0  7C 23 24 2E */	lfsx f1, r3, r4
/* 000028D0 000029B4  7C 03 04 2E */	lfsx f0, r3, r0
/* 000028D4 000029B8  EC 21 10 28 */	fsubs f1, f1, f2
/* 000028D8 000029BC  EC 00 10 28 */	fsubs f0, f0, f2
/* 000028DC 000029C0  FC 20 0A 10 */	fabs f1, f1
/* 000028E0 000029C4  FC 00 02 10 */	fabs f0, f0
/* 000028E4 000029C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 000028E8 000029CC  40 80 00 0C */	bge .L_000028F4
/* 000028EC 000029D0  7C C4 33 78 */	mr r4, r6
/* 000028F0 000029D4  48 00 00 08 */	b .L_000028F8
.L_000028F4:
/* 000028F4 000029D8  7C E4 3B 78 */	mr r4, r7
.L_000028F8:
/* 000028F8 000029DC  3C 60 00 00 */	lis r3, zero_gon_00007544@ha
/* 000028FC 000029E0  C0 03 00 00 */	lfs f0, zero_gon_00007544@l(r3)
/* 00002900 000029E4  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 00002904 000029E8  40 80 00 18 */	bge .L_0000291C
/* 00002908 000029EC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 0000290C 000029F0  4C 41 13 82 */	cror eq, gt, eq
/* 00002910 000029F4  40 82 00 0C */	bne .L_0000291C
/* 00002914 000029F8  20 04 00 B4 */	subfic r0, r4, 0xb4
/* 00002918 000029FC  54 04 04 3E */	clrlwi r4, r0, 16
.L_0000291C:
/* 0000291C 00002A00  3C 60 00 00 */	lis r3, zero_gon_00007544@ha
/* 00002920 00002A04  C0 03 00 00 */	lfs f0, zero_gon_00007544@l(r3)
/* 00002924 00002A08  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 00002928 00002A0C  40 80 00 10 */	bge .L_00002938
/* 0000292C 00002A10  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 00002930 00002A14  40 80 00 08 */	bge .L_00002938
/* 00002934 00002A18  38 84 00 B4 */	addi r4, r4, 0xb4
.L_00002938:
/* 00002938 00002A1C  3C 60 00 00 */	lis r3, zero_gon_00007544@ha
/* 0000293C 00002A20  C0 03 00 00 */	lfs f0, zero_gon_00007544@l(r3)
/* 00002940 00002A24  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 00002944 00002A28  4C 41 13 82 */	cror eq, gt, eq
/* 00002948 00002A2C  40 82 00 14 */	bne .L_0000295C
/* 0000294C 00002A30  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 00002950 00002A34  40 80 00 0C */	bge .L_0000295C
/* 00002954 00002A38  20 04 01 68 */	subfic r0, r4, 0x168
/* 00002958 00002A3C  54 04 04 3E */	clrlwi r4, r0, 16
.L_0000295C:
/* 0000295C 00002A40  54 83 04 3E */	clrlwi r3, r4, 16
/* 00002960 00002A44  E3 E1 00 28 */	psq_l f31, 0x28(r1), 0, qr0
/* 00002964 00002A48  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 00002968 00002A4C  E3 C1 00 18 */	psq_l f30, 0x18(r1), 0, qr0
/* 0000296C 00002A50  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00002970 00002A54  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 00002974 00002A58  7C 08 03 A6 */	mtlr r0
/* 00002978 00002A5C  38 21 00 30 */	addi r1, r1, 0x30
/* 0000297C 00002A60  4E 80 00 20 */	blr
.endfn krb_comp_dir

# .text:0x1FC | 0x2980 | size: 0x24
.fn hypotf, local
/* 00002980 00002A64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00002984 00002A68  7C 08 02 A6 */	mflr r0
/* 00002988 00002A6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000298C 00002A70  4B FF D8 55 */	bl hypot
/* 00002990 00002A74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00002994 00002A78  FC 20 08 18 */	frsp f1, f1
/* 00002998 00002A7C  7C 08 03 A6 */	mtlr r0
/* 0000299C 00002A80  38 21 00 10 */	addi r1, r1, 0x10
/* 000029A0 00002A84  4E 80 00 20 */	blr
.endfn hypotf

# .text:0x220 | 0x29A4 | size: 0x118
.fn krb_get_dir, local
/* 000029A4 00002A88  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 000029A8 00002A8C  7C 08 02 A6 */	mflr r0
/* 000029AC 00002A90  90 01 00 64 */	stw r0, 0x64(r1)
/* 000029B0 00002A94  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 000029B4 00002A98  F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 000029B8 00002A9C  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 000029BC 00002AA0  F3 C1 00 48 */	psq_st f30, 0x48(r1), 0, qr0
/* 000029C0 00002AA4  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 000029C4 00002AA8  F3 A1 00 38 */	psq_st f29, 0x38(r1), 0, qr0
/* 000029C8 00002AAC  DB 81 00 20 */	stfd f28, 0x20(r1)
/* 000029CC 00002AB0  F3 81 00 28 */	psq_st f28, 0x28(r1), 0, qr0
/* 000029D0 00002AB4  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 000029D4 00002AB8  7C 7E 1B 78 */	mr r30, r3
/* 000029D8 00002ABC  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 000029DC 00002AC0  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 000029E0 00002AC4  4B FF D8 01 */	bl evtGetFloat
/* 000029E4 00002AC8  FF 80 08 90 */	fmr f28, f1
/* 000029E8 00002ACC  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 000029EC 00002AD0  7F C3 F3 78 */	mr r3, r30
/* 000029F0 00002AD4  4B FF D7 F1 */	bl evtGetFloat
/* 000029F4 00002AD8  FF A0 08 90 */	fmr f29, f1
/* 000029F8 00002ADC  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 000029FC 00002AE0  7F C3 F3 78 */	mr r3, r30
/* 00002A00 00002AE4  4B FF D7 E1 */	bl evtGetFloat
/* 00002A04 00002AE8  FF C0 08 90 */	fmr f30, f1
/* 00002A08 00002AEC  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00002A0C 00002AF0  7F C3 F3 78 */	mr r3, r30
/* 00002A10 00002AF4  4B FF D7 D1 */	bl evtGetFloat
/* 00002A14 00002AF8  FF E0 08 90 */	fmr f31, f1
/* 00002A18 00002AFC  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00002A1C 00002B00  7F C3 F3 78 */	mr r3, r30
/* 00002A20 00002B04  4B FF D7 C1 */	bl evtGetValue
/* 00002A24 00002B08  3C 80 00 00 */	lis r4, zero_gon_00007544@ha
/* 00002A28 00002B0C  EC 3E E0 28 */	fsubs f1, f30, f28
/* 00002A2C 00002B10  C0 04 00 00 */	lfs f0, zero_gon_00007544@l(r4)
/* 00002A30 00002B14  EC 5F E8 28 */	fsubs f2, f31, f29
/* 00002A34 00002B18  7C 65 1B 78 */	mr r5, r3
/* 00002A38 00002B1C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 00002A3C 00002B20  40 82 00 20 */	bne .L_00002A5C
/* 00002A40 00002B24  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 00002A44 00002B28  40 82 00 18 */	bne .L_00002A5C
/* 00002A48 00002B2C  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00002A4C 00002B30  7F C3 F3 78 */	mr r3, r30
/* 00002A50 00002B34  4B FF D7 91 */	bl evtSetValue
/* 00002A54 00002B38  38 60 00 02 */	li r3, 0x2
/* 00002A58 00002B3C  48 00 00 30 */	b .L_00002A88
.L_00002A5C:
/* 00002A5C 00002B40  3C 60 00 00 */	lis r3, zero_gon_00007544@ha
/* 00002A60 00002B44  C0 63 00 00 */	lfs f3, zero_gon_00007544@l(r3)
/* 00002A64 00002B48  FC 80 18 90 */	fmr f4, f3
/* 00002A68 00002B4C  4B FF D7 79 */	bl angleABf_1
/* 00002A6C 00002B50  FC 00 08 1E */	fctiwz f0, f1
/* 00002A70 00002B54  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00002A74 00002B58  7F C3 F3 78 */	mr r3, r30
/* 00002A78 00002B5C  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 00002A7C 00002B60  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 00002A80 00002B64  4B FF D7 61 */	bl evtSetValue
/* 00002A84 00002B68  38 60 00 02 */	li r3, 0x2
.L_00002A88:
/* 00002A88 00002B6C  E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 00002A8C 00002B70  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 00002A90 00002B74  E3 C1 00 48 */	psq_l f30, 0x48(r1), 0, qr0
/* 00002A94 00002B78  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 00002A98 00002B7C  E3 A1 00 38 */	psq_l f29, 0x38(r1), 0, qr0
/* 00002A9C 00002B80  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 00002AA0 00002B84  E3 81 00 28 */	psq_l f28, 0x28(r1), 0, qr0
/* 00002AA4 00002B88  CB 81 00 20 */	lfd f28, 0x20(r1)
/* 00002AA8 00002B8C  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 00002AAC 00002B90  80 01 00 64 */	lwz r0, 0x64(r1)
/* 00002AB0 00002B94  7C 08 03 A6 */	mtlr r0
/* 00002AB4 00002B98  38 21 00 60 */	addi r1, r1, 0x60
/* 00002AB8 00002B9C  4E 80 00 20 */	blr
.endfn krb_get_dir

# 0x00003608..0x000037C8 | size: 0x1C0
.rodata
.balign 8

# .rodata:0x0 | 0x3608 | size: 0x10
.obj str_btl_un_togekuri_gon_000073d8, local
	.string "btl_un_togekuri"
.endobj str_btl_un_togekuri_gon_000073d8

# .rodata:0x10 | 0x3618 | size: 0x1A
.obj str_SFX_ENM_TOGEKURI_DAM_gon_000073e8, local
	.string "SFX_ENM_TOGEKURI_DAMAGED1"
.endobj str_SFX_ENM_TOGEKURI_DAM_gon_000073e8

# .rodata:0x2A | 0x3632 | size: 0x2
.obj gap_03_00003632_rodata, global
.hidden gap_03_00003632_rodata
	.2byte 0x0000
.endobj gap_03_00003632_rodata

# .rodata:0x2C | 0x3634 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_gon_00007404, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_gon_00007404

# .rodata:0x41 | 0x3649 | size: 0x3
.obj gap_03_00003649_rodata, global
.hidden gap_03_00003649_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003649_rodata

# .rodata:0x44 | 0x364C | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_gon_0000741c, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_gon_0000741c

# .rodata:0x58 | 0x3660 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_gon_00007430, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_gon_00007430

# .rodata:0x71 | 0x3679 | size: 0x3
.obj gap_03_00003679_rodata, global
.hidden gap_03_00003679_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003679_rodata

# .rodata:0x74 | 0x367C | size: 0x9
.obj str_c_kuribo_gon_0000744c, local
	.string "c_kuribo"
.endobj str_c_kuribo_gon_0000744c

# .rodata:0x7D | 0x3685 | size: 0x3
.obj gap_03_00003685_rodata, global
.hidden gap_03_00003685_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003685_rodata

# .rodata:0x80 | 0x3688 | size: 0x8
.obj str_TGK_N_1_gon_00007458, local
	.string "TGK_N_1"
.endobj str_TGK_N_1_gon_00007458

# .rodata:0x88 | 0x3690 | size: 0x8
.obj str_TGK_Y_1_gon_00007460, local
	.string "TGK_Y_1"
.endobj str_TGK_Y_1_gon_00007460

# .rodata:0x90 | 0x3698 | size: 0x8
.obj str_TGK_K_1_gon_00007468, local
	.string "TGK_K_1"
.endobj str_TGK_K_1_gon_00007468

# .rodata:0x98 | 0x36A0 | size: 0x8
.obj str_TGK_I_1_gon_00007470, local
	.string "TGK_I_1"
.endobj str_TGK_I_1_gon_00007470

# .rodata:0xA0 | 0x36A8 | size: 0x8
.obj str_TGK_S_1_gon_00007478, local
	.string "TGK_S_1"
.endobj str_TGK_S_1_gon_00007478

# .rodata:0xA8 | 0x36B0 | size: 0x8
.obj str_TGK_Q_1_gon_00007480, local
	.string "TGK_Q_1"
.endobj str_TGK_Q_1_gon_00007480

# .rodata:0xB0 | 0x36B8 | size: 0x8
.obj str_TGK_D_1_gon_00007488, local
	.string "TGK_D_1"
.endobj str_TGK_D_1_gon_00007488

# .rodata:0xB8 | 0x36C0 | size: 0x8
.obj str_TGK_A_1_gon_00007490, local
	.string "TGK_A_1"
.endobj str_TGK_A_1_gon_00007490

# .rodata:0xC0 | 0x36C8 | size: 0x8
.obj str_TGK_R_2_gon_00007498, local
	.string "TGK_R_2"
.endobj str_TGK_R_2_gon_00007498

# .rodata:0xC8 | 0x36D0 | size: 0x8
.obj str_TGK_R_1_gon_000074a0, local
	.string "TGK_R_1"
.endobj str_TGK_R_1_gon_000074a0

# .rodata:0xD0 | 0x36D8 | size: 0x8
.obj str_TGK_W_1_gon_000074a8, local
	.string "TGK_W_1"
.endobj str_TGK_W_1_gon_000074a8

# .rodata:0xD8 | 0x36E0 | size: 0x8
.obj str_TGK_T_1_gon_000074b0, local
	.string "TGK_T_1"
.endobj str_TGK_T_1_gon_000074b0

# .rodata:0xE0 | 0x36E8 | size: 0x17
.obj str_SFX_ENM_TOGEKURI_MOV_gon_000074b8, local
	.string "SFX_ENM_TOGEKURI_MOVE1"
.endobj str_SFX_ENM_TOGEKURI_MOV_gon_000074b8

# .rodata:0xF7 | 0x36FF | size: 0x1
.obj gap_03_000036FF_rodata, global
.hidden gap_03_000036FF_rodata
	.byte 0x00
.endobj gap_03_000036FF_rodata

# .rodata:0xF8 | 0x3700 | size: 0x17
.obj str_SFX_ENM_TOGEKURI_MOV_gon_000074d0, local
	.string "SFX_ENM_TOGEKURI_MOVE2"
.endobj str_SFX_ENM_TOGEKURI_MOV_gon_000074d0

# .rodata:0x10F | 0x3717 | size: 0x1
.obj gap_03_00003717_rodata, global
.hidden gap_03_00003717_rodata
	.byte 0x00
.endobj gap_03_00003717_rodata

# .rodata:0x110 | 0x3718 | size: 0x13
.obj str_SFX_ENM_KURI_JUMP1_gon_000074e8, local
	.string "SFX_ENM_KURI_JUMP1"
.endobj str_SFX_ENM_KURI_JUMP1_gon_000074e8

# .rodata:0x123 | 0x372B | size: 0x1
.obj gap_03_0000372B_rodata, global
.hidden gap_03_0000372B_rodata
	.byte 0x00
.endobj gap_03_0000372B_rodata

# .rodata:0x124 | 0x372C | size: 0x16
.obj str_SFX_ENM_KURI_LANDING_gon_000074fc, local
	.string "SFX_ENM_KURI_LANDING1"
.endobj str_SFX_ENM_KURI_LANDING_gon_000074fc

# .rodata:0x13A | 0x3742 | size: 0x2
.obj gap_03_00003742_rodata, global
.hidden gap_03_00003742_rodata
	.2byte 0x0000
.endobj gap_03_00003742_rodata

# .rodata:0x13C | 0x3744 | size: 0x1
.obj zero_gon_00007514, local
	.byte 0x00
.endobj zero_gon_00007514

# .rodata:0x13D | 0x3745 | size: 0x3
.obj gap_03_00003745_rodata, global
.hidden gap_03_00003745_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003745_rodata

# .rodata:0x140 | 0x3748 | size: 0xB
.obj str_toge_flush_gon_00007518, local
	.string "toge_flush"
.endobj str_toge_flush_gon_00007518

# .rodata:0x14B | 0x3753 | size: 0x1
.obj gap_03_00003753_rodata, global
.hidden gap_03_00003753_rodata
	.byte 0x00
.endobj gap_03_00003753_rodata

# .rodata:0x14C | 0x3754 | size: 0xD
.obj str_mac_0_092_06_gon_00007524, local
	.string "mac_0_092_06"
.endobj str_mac_0_092_06_gon_00007524

# .rodata:0x159 | 0x3761 | size: 0x3
.obj gap_03_00003761_rodata, global
.hidden gap_03_00003761_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003761_rodata

# .rodata:0x15C | 0x3764 | size: 0xD
.obj str_mac_0_092_07_gon_00007534, local
	.string "mac_0_092_07"
.endobj str_mac_0_092_07_gon_00007534
	.byte 0x00, 0x00, 0x00

# .rodata:0x16C | 0x3774 | size: 0x4
.obj zero_gon_00007544, local
	.float 0
.endobj zero_gon_00007544

# .rodata:0x170 | 0x3778 | size: 0x1B
.obj str_SFX_ENM_KURI_LANDING_gon_00007548, local
	.string "SFX_ENM_KURI_LANDING_MISS1"
.endobj str_SFX_ENM_KURI_LANDING_gon_00007548

# .rodata:0x18B | 0x3793 | size: 0x1
.obj gap_03_00003793_rodata, global
.hidden gap_03_00003793_rodata
	.byte 0x00
.endobj gap_03_00003793_rodata

# .rodata:0x18C | 0x3794 | size: 0x8
.obj str_TGK_A_2_gon_00007564, local
	.string "TGK_A_2"
.endobj str_TGK_A_2_gon_00007564

# .rodata:0x194 | 0x379C | size: 0x13
.obj str_SFX_ENM_KURI_MOVE1_gon_0000756c, local
	.string "SFX_ENM_KURI_MOVE1"
.endobj str_SFX_ENM_KURI_MOVE1_gon_0000756c

# .rodata:0x1A7 | 0x37AF | size: 0x1
.obj gap_03_000037AF_rodata, global
.hidden gap_03_000037AF_rodata
	.byte 0x00
.endobj gap_03_000037AF_rodata

# .rodata:0x1A8 | 0x37B0 | size: 0x13
.obj str_SFX_ENM_KURI_MOVE2_gon_00007580, local
	.string "SFX_ENM_KURI_MOVE2"
.endobj str_SFX_ENM_KURI_MOVE2_gon_00007580

# .rodata:0x1BB | 0x37C3 | size: 0x5
.obj gap_03_000037C3_rodata, global
.hidden gap_03_000037C3_rodata
	.4byte 0x00000000
	.byte 0x00
.endobj gap_03_000037C3_rodata

# 0x0001D8E0..0x0001E980 | size: 0x10A0
.data
.balign 8

# .data:0x0 | 0x1D8E0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x1D8E8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x1D8EC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x1D8F0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x1D8F4 | size: 0x4
.obj gap_04_0001D8F4_data, global
.hidden gap_04_0001D8F4_data
	.4byte 0x00000000
.endobj gap_04_0001D8F4_data

# .data:0x18 | 0x1D8F8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x1D900 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x1D904 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x1D908 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x1D910 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x1D914 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x1D918 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x1D91C | size: 0x4
.obj gap_04_0001D91C_data, global
.hidden gap_04_0001D91C_data
	.4byte 0x00000000
.endobj gap_04_0001D91C_data

# .data:0x40 | 0x1D920 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x1D928 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x1D92C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x1D930 | size: 0xC4
.obj unit_togekuri_8_data_1D930, global
	.4byte 0x00000003
	.4byte str_btl_un_togekuri_gon_000073d8
	.4byte 0x00020000
	.4byte 0x01010800
	.4byte 0x013C0046
	.4byte 0x270F0017
	.4byte 0x001E0005
	.4byte 0x001E0000
	.4byte 0x00000000
	.4byte 0x41700000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41400000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41380000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41380000
	.4byte 0x41900000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41700000
	.4byte 0x00000000
	.4byte 0x41B80000
	.4byte 0x41F00000
	.4byte 0x00000002
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_ENM_TOGEKURI_DAM_gon_000073e8
	.4byte str_SFX_BTL_DAMAGE_FIRE1_gon_00007404
	.4byte str_SFX_BTL_DAMAGE_ICE1_gon_0000741c
	.4byte str_SFX_BTL_DAMAGE_BIRIB_gon_00007430
	.4byte 0x00040000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_togekuri_8_data_1D930

# .data:0x114 | 0x1D9F4 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x1D9F9 | size: 0x3
.obj gap_04_0001D9F9_data, global
.hidden gap_04_0001D9F9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0001D9F9_data

# .data:0x11C | 0x1D9FC | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x1DA01 | size: 0x3
.obj gap_04_0001DA01_data, global
.hidden gap_04_0001DA01_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0001DA01_data

# .data:0x124 | 0x1DA04 | size: 0x16
.obj regist, local
	.4byte 0x646E6464
	.4byte 0x64646464
	.4byte 0x64646464
	.4byte 0x6464646E
	.4byte 0x6E646464
	.2byte 0x6496
.endobj regist

# .data:0x13A | 0x1DA1A | size: 0x2
.obj gap_04_0001DA1A_data, global
.hidden gap_04_0001DA1A_data
	.2byte 0x0000
.endobj gap_04_0001DA1A_data

# .data:0x13C | 0x1DA1C | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_togekuri_gon_000073d8
	.4byte str_c_kuribo_gon_0000744c
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
	.4byte 0x00000001
	.4byte pose_table
.endobj parts

# .data:0x188 | 0x1DA68 | size: 0xC0
.obj weapon_togekuri_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
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
	.4byte 0x00005087
	.4byte 0x00000000
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
.endobj weapon_togekuri_attack

# .data:0x248 | 0x1DB28 | size: 0x98
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_TGK_N_1_gon_00007458
	.4byte 0x00000002
	.4byte str_TGK_Y_1_gon_00007460
	.4byte 0x00000009
	.4byte str_TGK_Y_1_gon_00007460
	.4byte 0x00000005
	.4byte str_TGK_K_1_gon_00007468
	.4byte 0x00000004
	.4byte str_TGK_I_1_gon_00007470
	.4byte 0x00000003
	.4byte str_TGK_I_1_gon_00007470
	.4byte 0x0000001C
	.4byte str_TGK_S_1_gon_00007478
	.4byte 0x0000001D
	.4byte str_TGK_Q_1_gon_00007480
	.4byte 0x0000001E
	.4byte str_TGK_Q_1_gon_00007480
	.4byte 0x0000001F
	.4byte str_TGK_S_1_gon_00007478
	.4byte 0x00000027
	.4byte str_TGK_D_1_gon_00007488
	.4byte 0x00000032
	.4byte str_TGK_A_1_gon_00007490
	.4byte 0x00000029
	.4byte str_TGK_R_2_gon_00007498
	.4byte 0x0000002A
	.4byte str_TGK_R_1_gon_000074a0
	.4byte 0x00000028
	.4byte str_TGK_W_1_gon_000074a8
	.4byte 0x00000038
	.4byte str_TGK_I_1_gon_00007470
	.4byte 0x00000039
	.4byte str_TGK_I_1_gon_00007470
	.4byte 0x00000041
	.4byte str_TGK_T_1_gon_000074b0
	.4byte 0x00000045
	.4byte str_TGK_S_1_gon_00007478
.endobj pose_table

# .data:0x2E0 | 0x1DBC0 | size: 0x18
.obj data_table, local
	.4byte 0x00000025
	.4byte dmg_avoid_counter_thorn_head_event
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x2F8 | 0x1DBD8 | size: 0xA8
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
	.4byte 0x0007005B
	.4byte btlevtcmd_SetRunSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TOGEKURI_MOV_gon_000074b8
	.4byte str_SFX_ENM_TOGEKURI_MOV_gon_000074d0
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0007005B
	.4byte btlevtcmd_SetWalkSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TOGEKURI_MOV_gon_000074b8
	.4byte str_SFX_ENM_TOGEKURI_MOV_gon_000074d0
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_SetJumpSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KURI_JUMP1_gon_000074e8
	.4byte str_SFX_ENM_KURI_LANDING_gon_000074fc
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x3A0 | 0x1DC80 | size: 0x1FC
.obj dmg_avoid_counter_thorn_head_event, local
	.4byte 0x00010009
	.4byte 0x0000001E
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
	.4byte 0x00000032
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
	.4byte 0x0000001E
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000028
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_gon_00007514
	.4byte str_toge_flush_gon_00007518
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
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitId
	.4byte 0xFFFFFFFA
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFA
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte get_attacker
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x000009C4
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFA
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte get_attacker
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_mac_0_092_06_gon_00007524
	.4byte 0x00000000
	.4byte 0xFFFFFFFA
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_mac_0_092_07_gon_00007534
	.4byte 0x00000000
	.4byte 0xFFFFFFFA
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFA
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFA
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dmg_avoid_counter_thorn_head_event

# .data:0x59C | 0x1DE7C | size: 0x28
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

# .data:0x5C4 | 0x1DEA4 | size: 0x16C
.obj SinTable, local
	.4byte 0x00000000
	.4byte 0x3C8EF77F
	.4byte 0x3D0EF241
	.4byte 0x3D565E46
	.4byte 0x3D8EDC3C
	.4byte 0x3DB27ED8
	.4byte 0x3DD612C7
	.4byte 0x3DF99674
	.4byte 0x3E0E835E
	.4byte 0x3E20303C
	.4byte 0x3E31D0C8
	.4byte 0x3E43636F
	.4byte 0x3E54E6E2
	.4byte 0x3E66598E
	.4byte 0x3E77BA67
	.4byte 0x3E8483ED
	.4byte 0x3E8D204B
	.4byte 0x3E95B1C8
	.4byte 0x3E9E377A
	.4byte 0x3EA6B0D9
	.4byte 0x3EAF1D3F
	.4byte 0x3EB77C03
	.4byte 0x3EBFCC7D
	.4byte 0x3EC80DE5
	.4byte 0x3ED03FD5
	.4byte 0x3ED86163
	.4byte 0x3EE0722A
	.4byte 0x3EE87161
	.4byte 0x3EF05EA2
	.4byte 0x3EF83904
	.4byte 0x3F000000
	.4byte 0x3F03D988
	.4byte 0x3F07A8C6
	.4byte 0x3F0B6D76
	.4byte 0x3F0F2746
	.4byte 0x3F12D5E0
	.4byte 0x3F167914
	.4byte 0x3F1A108C
	.4byte 0x3F1D9BF6
	.4byte 0x3F211B1E
	.4byte 0x3F248DC1
	.4byte 0x3F27F37C
	.4byte 0x3F2B4C2B
	.4byte 0x3F2E976C
	.4byte 0x3F31D51B
	.4byte 0x3F3504F7
	.4byte 0x3F3826AB
	.4byte 0x3F3B3A04
	.4byte 0x3F3E3EC0
	.4byte 0x3F4134AD
	.4byte 0x3F441B76
	.4byte 0x3F46F30A
	.4byte 0x3F49BB17
	.4byte 0x3F4C7369
	.4byte 0x3F4F1BBD
	.4byte 0x3F51B3F2
	.4byte 0x3F543BD6
	.4byte 0x3F56B325
	.4byte 0x3F5919AC
	.4byte 0x3F5B6F4C
	.4byte 0x3F5DB3D0
	.4byte 0x3F5FE719
	.4byte 0x3F6208E1
	.4byte 0x3F641909
	.4byte 0x3F66175D
	.4byte 0x3F6803CD
	.4byte 0x3F69DE16
	.4byte 0x3F6BA637
	.4byte 0x3F6D5BEE
	.4byte 0x3F6EFF19
	.4byte 0x3F708FB8
	.4byte 0x3F720D88
	.4byte 0x3F737879
	.4byte 0x3F74D068
	.4byte 0x3F761544
	.4byte 0x3F7746ED
	.4byte 0x3F786552
	.4byte 0x3F797050
	.4byte 0x3F7A67E8
	.4byte 0x3F7B4BE8
	.4byte 0x3F7C1C61
	.4byte 0x3F7CD91F
	.4byte 0x3F7D8234
	.4byte 0x3F7E177F
	.4byte 0x3F7E98FE
	.4byte 0x3F7F06A3
	.4byte 0x3F7F605B
	.4byte 0x3F7FA637
	.4byte 0x3F7FD817
	.4byte 0x3F7FF60A
	.4byte 0x3F800000
.endobj SinTable

# .data:0x730 | 0x1E010 | size: 0x954
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
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000014
	.4byte 0xF24A7A80
	.4byte 0xF24A7CE6
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte weapon_togekuri_attack
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte weapon_togekuri_attack
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
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte weapon_togekuri_attack
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
	.4byte weapon_togekuri_attack
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002A
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
	.4byte 0x00000050
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8A80
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002B
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
	.4byte 0x000000AA
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte evt_btl_camera_nomove_y_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000032
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotateOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPosFloat
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x0000001C
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPosFloat
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C89
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x0006005B
	.4byte krb_get_dir
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C89
	.4byte 0xFE363C8A
	.4byte 0xFE363C88
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C88
	.4byte 0x00020034
	.4byte 0xFE363C85
	.4byte 0xFE363C89
	.4byte 0x00020034
	.4byte 0xFE363C86
	.4byte 0xFE363C8A
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x0000000C
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000033
	.4byte 0x0000006D
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000002
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0x00000004
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001C
	.4byte 0xFFFFFFFF
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_togekuri_attack
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
	.4byte 0x0002005B
	.4byte btlevtcmd_JumpContinue
	.4byte 0xFFFFFFFE
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KURI_LANDING_gon_00007548
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_SetDispOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xF24A4A80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_TGK_D_1_gon_00007488
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_TGK_A_2_gon_00007564
	.4byte 0x0005005B
	.4byte btlevtcmd_SetDispOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotateOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x0000000C
	.4byte 0x00000000
	.4byte 0x0000006E
	.4byte 0x0005005B
	.4byte btlevtcmd_GetRotate
	.4byte 0xFFFFFFFE
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0xFE363C86
	.4byte 0x00020038
	.4byte 0xFE363C86
	.4byte 0x0000000A
	.4byte 0x00020037
	.4byte 0xFE363C86
	.4byte 0xFFFFFFFF
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0x0000000A
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C86
	.4byte 0x00020036
	.4byte 0xFE363C87
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002001D
	.4byte 0xFE363C87
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_TGK_K_1_gon_00007468
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000070
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_MoveDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFFFFFFE2
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotateOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x00010004
	.4byte 0x0000005F
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
	.4byte 0x00010005
	.4byte 0x00000004
	.4byte 0x0005005B
	.4byte btlevtcmd_AddScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7AD1
	.4byte 0xF24A7A06
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte btlevtcmd_SetScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte weapon_togekuri_attack
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_togekuri_attack
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002B
	.4byte 0x0000006E
	.4byte 0x0005005B
	.4byte btlevtcmd_GetRotate
	.4byte 0xFFFFFFFE
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0xFE363C86
	.4byte 0x00020038
	.4byte 0xFE363C86
	.4byte 0x0000000A
	.4byte 0x00020037
	.4byte 0xFE363C86
	.4byte 0xFFFFFFFF
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0x0000000A
	.4byte 0x00010003
	.4byte 0x00000014
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C86
	.4byte 0x00020036
	.4byte 0xFE363C87
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002001D
	.4byte 0xFE363C87
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000014
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000070
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001C
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000000C
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000006
	.4byte 0xFFFFFFFF
	.4byte 0x00010004
	.4byte 0x0000005F
	.4byte 0x00010003
	.4byte 0x0000005F
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte btlevtcmd_SetMoveSoundDataWork
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KURI_MOVE1_gon_0000756c
	.4byte str_SFX_ENM_KURI_MOVE2_gon_00007580
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000029
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8E80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x1084 | 0x1E964 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x109C | 0x1E97C | size: 0x4
.obj gap_04_0001E97C_data, global
.hidden gap_04_0001E97C_data
	.4byte 0x00000000
.endobj gap_04_0001E97C_data
