.include "macros.inc"
.file "unit_hyper_togekuri.o"

# 0x000010D8..0x000013F0 | size: 0x318
.text
.balign 4

# .text:0x0 | 0x10D8 | size: 0x118
.fn krb_get_dir, local
/* 000010D8 0000119C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 000010DC 000011A0  7C 08 02 A6 */	mflr r0
/* 000010E0 000011A4  90 01 00 64 */	stw r0, 0x64(r1)
/* 000010E4 000011A8  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 000010E8 000011AC  F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 000010EC 000011B0  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 000010F0 000011B4  F3 C1 00 48 */	psq_st f30, 0x48(r1), 0, qr0
/* 000010F4 000011B8  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 000010F8 000011BC  F3 A1 00 38 */	psq_st f29, 0x38(r1), 0, qr0
/* 000010FC 000011C0  DB 81 00 20 */	stfd f28, 0x20(r1)
/* 00001100 000011C4  F3 81 00 28 */	psq_st f28, 0x28(r1), 0, qr0
/* 00001104 000011C8  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 00001108 000011CC  7C 7E 1B 78 */	mr r30, r3
/* 0000110C 000011D0  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00001110 000011D4  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00001114 000011D8  4B FF F3 FD */	bl evtGetFloat
/* 00001118 000011DC  FF 80 08 90 */	fmr f28, f1
/* 0000111C 000011E0  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00001120 000011E4  7F C3 F3 78 */	mr r3, r30
/* 00001124 000011E8  4B FF F3 ED */	bl evtGetFloat
/* 00001128 000011EC  FF A0 08 90 */	fmr f29, f1
/* 0000112C 000011F0  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 00001130 000011F4  7F C3 F3 78 */	mr r3, r30
/* 00001134 000011F8  4B FF F3 DD */	bl evtGetFloat
/* 00001138 000011FC  FF C0 08 90 */	fmr f30, f1
/* 0000113C 00001200  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00001140 00001204  7F C3 F3 78 */	mr r3, r30
/* 00001144 00001208  4B FF F3 CD */	bl evtGetFloat
/* 00001148 0000120C  FF E0 08 90 */	fmr f31, f1
/* 0000114C 00001210  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00001150 00001214  7F C3 F3 78 */	mr r3, r30
/* 00001154 00001218  4B FF F3 BD */	bl evtGetValue
/* 00001158 0000121C  3C 80 00 00 */	lis r4, zero_gra_00002acc@ha
/* 0000115C 00001220  EC 3E E0 28 */	fsubs f1, f30, f28
/* 00001160 00001224  C0 04 00 00 */	lfs f0, zero_gra_00002acc@l(r4)
/* 00001164 00001228  EC 5F E8 28 */	fsubs f2, f31, f29
/* 00001168 0000122C  7C 65 1B 78 */	mr r5, r3
/* 0000116C 00001230  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 00001170 00001234  40 82 00 20 */	bne .L_00001190
/* 00001174 00001238  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 00001178 0000123C  40 82 00 18 */	bne .L_00001190
/* 0000117C 00001240  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00001180 00001244  7F C3 F3 78 */	mr r3, r30
/* 00001184 00001248  4B FF F3 8D */	bl evtSetValue
/* 00001188 0000124C  38 60 00 02 */	li r3, 0x2
/* 0000118C 00001250  48 00 00 30 */	b .L_000011BC
.L_00001190:
/* 00001190 00001254  3C 60 00 00 */	lis r3, zero_gra_00002acc@ha
/* 00001194 00001258  C0 63 00 00 */	lfs f3, zero_gra_00002acc@l(r3)
/* 00001198 0000125C  FC 80 18 90 */	fmr f4, f3
/* 0000119C 00001260  4B FF F3 75 */	bl angleABf_1
/* 000011A0 00001264  FC 00 08 1E */	fctiwz f0, f1
/* 000011A4 00001268  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 000011A8 0000126C  7F C3 F3 78 */	mr r3, r30
/* 000011AC 00001270  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 000011B0 00001274  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 000011B4 00001278  4B FF F3 5D */	bl evtSetValue
/* 000011B8 0000127C  38 60 00 02 */	li r3, 0x2
.L_000011BC:
/* 000011BC 00001280  E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 000011C0 00001284  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 000011C4 00001288  E3 C1 00 48 */	psq_l f30, 0x48(r1), 0, qr0
/* 000011C8 0000128C  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 000011CC 00001290  E3 A1 00 38 */	psq_l f29, 0x38(r1), 0, qr0
/* 000011D0 00001294  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 000011D4 00001298  E3 81 00 28 */	psq_l f28, 0x28(r1), 0, qr0
/* 000011D8 0000129C  CB 81 00 20 */	lfd f28, 0x20(r1)
/* 000011DC 000012A0  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 000011E0 000012A4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 000011E4 000012A8  7C 08 03 A6 */	mtlr r0
/* 000011E8 000012AC  38 21 00 60 */	addi r1, r1, 0x60
/* 000011EC 000012B0  4E 80 00 20 */	blr
.endfn krb_get_dir

# .text:0x118 | 0x11F0 | size: 0x170
.fn krb_comp_dir, local
/* 000011F0 000012B4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 000011F4 000012B8  7C 08 02 A6 */	mflr r0
/* 000011F8 000012BC  90 01 00 34 */	stw r0, 0x34(r1)
/* 000011FC 000012C0  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 00001200 000012C4  F3 E1 00 28 */	psq_st f31, 0x28(r1), 0, qr0
/* 00001204 000012C8  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 00001208 000012CC  F3 C1 00 18 */	psq_st f30, 0x18(r1), 0, qr0
/* 0000120C 000012D0  FF C0 08 90 */	fmr f30, f1
/* 00001210 000012D4  FF E0 10 90 */	fmr f31, f2
/* 00001214 000012D8  4B FF F2 FD */	bl hypot
/* 00001218 000012DC  FC 20 08 18 */	frsp f1, f1
/* 0000121C 000012E0  3C 60 00 00 */	lis r3, SinTable@ha
/* 00001220 000012E4  FC 00 FA 10 */	fabs f0, f31
/* 00001224 000012E8  38 63 00 00 */	addi r3, r3, SinTable@l
/* 00001228 000012EC  38 C0 00 00 */	li r6, 0x0
/* 0000122C 000012F0  38 E0 00 5A */	li r7, 0x5a
/* 00001230 000012F4  FC 40 08 24 */	fdiv f2, f0, f1
/* 00001234 000012F8  38 A0 00 00 */	li r5, 0x0
/* 00001238 000012FC  FC 40 10 18 */	frsp f2, f2
/* 0000123C 00001300  48 00 00 54 */	b .L_00001290
.L_00001240:
/* 00001240 00001304  54 C4 04 3E */	clrlwi r4, r6, 16
/* 00001244 00001308  54 E0 04 3E */	clrlwi r0, r7, 16
/* 00001248 0000130C  7C 04 00 50 */	subf r0, r4, r0
/* 0000124C 00001310  7C 00 0E 70 */	srawi r0, r0, 1
/* 00001250 00001314  7C 00 01 94 */	addze r0, r0
/* 00001254 00001318  7C 84 02 14 */	add r4, r4, r0
/* 00001258 0000131C  54 80 13 BA */	clrlslwi r0, r4, 16, 2
/* 0000125C 00001320  7C 03 04 2E */	lfsx f0, r3, r0
/* 00001260 00001324  54 84 04 3E */	clrlwi r4, r4, 16
/* 00001264 00001328  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 00001268 0000132C  40 80 00 08 */	bge .L_00001270
/* 0000126C 00001330  7C 86 23 78 */	mr r6, r4
.L_00001270:
/* 00001270 00001334  54 80 13 BA */	clrlslwi r0, r4, 16, 2
/* 00001274 00001338  7C 03 04 2E */	lfsx f0, r3, r0
/* 00001278 0000133C  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 0000127C 00001340  7C 00 00 26 */	mfcr r0
/* 00001280 00001344  54 00 0F FF */	srwi. r0, r0, 31
/* 00001284 00001348  40 82 00 08 */	bne .L_0000128C
/* 00001288 0000134C  7C 87 23 78 */	mr r7, r4
.L_0000128C:
/* 0000128C 00001350  38 A5 00 01 */	addi r5, r5, 0x1
.L_00001290:
/* 00001290 00001354  54 A0 04 3E */	clrlwi r0, r5, 16
/* 00001294 00001358  28 00 00 07 */	cmplwi r0, 0x7
/* 00001298 0000135C  41 80 FF A8 */	blt .L_00001240
/* 0000129C 00001360  3C 60 00 00 */	lis r3, SinTable@ha
/* 000012A0 00001364  54 C4 13 BA */	clrlslwi r4, r6, 16, 2
/* 000012A4 00001368  38 63 00 00 */	addi r3, r3, SinTable@l
/* 000012A8 0000136C  54 E0 13 BA */	clrlslwi r0, r7, 16, 2
/* 000012AC 00001370  7C 23 24 2E */	lfsx f1, r3, r4
/* 000012B0 00001374  7C 03 04 2E */	lfsx f0, r3, r0
/* 000012B4 00001378  EC 21 10 28 */	fsubs f1, f1, f2
/* 000012B8 0000137C  EC 00 10 28 */	fsubs f0, f0, f2
/* 000012BC 00001380  FC 20 0A 10 */	fabs f1, f1
/* 000012C0 00001384  FC 00 02 10 */	fabs f0, f0
/* 000012C4 00001388  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 000012C8 0000138C  40 80 00 0C */	bge .L_000012D4
/* 000012CC 00001390  7C C4 33 78 */	mr r4, r6
/* 000012D0 00001394  48 00 00 08 */	b .L_000012D8
.L_000012D4:
/* 000012D4 00001398  7C E4 3B 78 */	mr r4, r7
.L_000012D8:
/* 000012D8 0000139C  3C 60 00 00 */	lis r3, zero_gra_00002acc@ha
/* 000012DC 000013A0  C0 03 00 00 */	lfs f0, zero_gra_00002acc@l(r3)
/* 000012E0 000013A4  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 000012E4 000013A8  40 80 00 18 */	bge .L_000012FC
/* 000012E8 000013AC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 000012EC 000013B0  4C 41 13 82 */	cror eq, gt, eq
/* 000012F0 000013B4  40 82 00 0C */	bne .L_000012FC
/* 000012F4 000013B8  20 04 00 B4 */	subfic r0, r4, 0xb4
/* 000012F8 000013BC  54 04 04 3E */	clrlwi r4, r0, 16
.L_000012FC:
/* 000012FC 000013C0  3C 60 00 00 */	lis r3, zero_gra_00002acc@ha
/* 00001300 000013C4  C0 03 00 00 */	lfs f0, zero_gra_00002acc@l(r3)
/* 00001304 000013C8  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 00001308 000013CC  40 80 00 10 */	bge .L_00001318
/* 0000130C 000013D0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 00001310 000013D4  40 80 00 08 */	bge .L_00001318
/* 00001314 000013D8  38 84 00 B4 */	addi r4, r4, 0xb4
.L_00001318:
/* 00001318 000013DC  3C 60 00 00 */	lis r3, zero_gra_00002acc@ha
/* 0000131C 000013E0  C0 03 00 00 */	lfs f0, zero_gra_00002acc@l(r3)
/* 00001320 000013E4  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 00001324 000013E8  4C 41 13 82 */	cror eq, gt, eq
/* 00001328 000013EC  40 82 00 14 */	bne .L_0000133C
/* 0000132C 000013F0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 00001330 000013F4  40 80 00 0C */	bge .L_0000133C
/* 00001334 000013F8  20 04 01 68 */	subfic r0, r4, 0x168
/* 00001338 000013FC  54 04 04 3E */	clrlwi r4, r0, 16
.L_0000133C:
/* 0000133C 00001400  54 83 04 3E */	clrlwi r3, r4, 16
/* 00001340 00001404  E3 E1 00 28 */	psq_l f31, 0x28(r1), 0, qr0
/* 00001344 00001408  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 00001348 0000140C  E3 C1 00 18 */	psq_l f30, 0x18(r1), 0, qr0
/* 0000134C 00001410  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00001350 00001414  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 00001354 00001418  7C 08 03 A6 */	mtlr r0
/* 00001358 0000141C  38 21 00 30 */	addi r1, r1, 0x30
/* 0000135C 00001420  4E 80 00 20 */	blr
.endfn krb_comp_dir

# .text:0x288 | 0x1360 | size: 0x90
.fn get_attacker, local
/* 00001360 00001424  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00001364 00001428  7C 08 02 A6 */	mflr r0
/* 00001368 0000142C  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0000136C 00001430  90 01 00 14 */	stw r0, 0x14(r1)
/* 00001370 00001434  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00001374 00001438  7C 7E 1B 78 */	mr r30, r3
/* 00001378 0000143C  38 64 00 00 */	addi r3, r4, _battleWorkPointer@l
/* 0000137C 00001440  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00001380 00001444  83 FE 00 18 */	lwz r31, 0x18(r30)
/* 00001384 00001448  80 83 04 20 */	lwz r4, 0x420(r3)
/* 00001388 0000144C  4B FF F1 89 */	bl BattleGetUnitPtr
/* 0000138C 00001450  80 03 00 04 */	lwz r0, 0x4(r3)
/* 00001390 00001454  2C 00 00 DE */	cmpwi r0, 0xde
/* 00001394 00001458  40 82 00 18 */	bne .L_000013AC
/* 00001398 0000145C  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 0000139C 00001460  7F C3 F3 78 */	mr r3, r30
/* 000013A0 00001464  38 A0 00 00 */	li r5, 0x0
/* 000013A4 00001468  4B FF F1 6D */	bl evtSetValue
/* 000013A8 0000146C  48 00 00 30 */	b .L_000013D8
.L_000013AC:
/* 000013AC 00001470  2C 00 00 E0 */	cmpwi r0, 0xe0
/* 000013B0 00001474  40 82 00 18 */	bne .L_000013C8
/* 000013B4 00001478  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 000013B8 0000147C  7F C3 F3 78 */	mr r3, r30
/* 000013BC 00001480  38 A0 00 01 */	li r5, 0x1
/* 000013C0 00001484  4B FF F1 51 */	bl evtSetValue
/* 000013C4 00001488  48 00 00 14 */	b .L_000013D8
.L_000013C8:
/* 000013C8 0000148C  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 000013CC 00001490  7F C3 F3 78 */	mr r3, r30
/* 000013D0 00001494  38 A0 00 02 */	li r5, 0x2
/* 000013D4 00001498  4B FF F1 3D */	bl evtSetValue
.L_000013D8:
/* 000013D8 0000149C  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 000013DC 000014A0  38 60 00 02 */	li r3, 0x2
/* 000013E0 000014A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000013E4 000014A8  7C 08 03 A6 */	mtlr r0
/* 000013E8 000014AC  38 21 00 10 */	addi r1, r1, 0x10
/* 000013EC 000014B0  4E 80 00 20 */	blr
.endfn get_attacker

# 0x00001430..0x00001610 | size: 0x1E0
.rodata
.balign 8

# .rodata:0x0 | 0x1430 | size: 0x16
.obj str_btl_un_hyper_togekur_gra_000028f0, local
	.string "btl_un_hyper_togekuri"
.endobj str_btl_un_hyper_togekur_gra_000028f0

# .rodata:0x16 | 0x1446 | size: 0x2
.obj gap_03_00001446_rodata, global
.hidden gap_03_00001446_rodata
	.2byte 0x0000
.endobj gap_03_00001446_rodata

# .rodata:0x18 | 0x1448 | size: 0x1A
.obj str_SFX_ENM_TOGEKURI_DAM_gra_00002908, local
	.string "SFX_ENM_TOGEKURI_DAMAGED1"
.endobj str_SFX_ENM_TOGEKURI_DAM_gra_00002908

# .rodata:0x32 | 0x1462 | size: 0x2
.obj gap_03_00001462_rodata, global
.hidden gap_03_00001462_rodata
	.2byte 0x0000
.endobj gap_03_00001462_rodata

# .rodata:0x34 | 0x1464 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_gra_00002924, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_gra_00002924

# .rodata:0x49 | 0x1479 | size: 0x3
.obj gap_03_00001479_rodata, global
.hidden gap_03_00001479_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001479_rodata

# .rodata:0x4C | 0x147C | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_gra_0000293c, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_gra_0000293c

# .rodata:0x60 | 0x1490 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_gra_00002950, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_gra_00002950

# .rodata:0x79 | 0x14A9 | size: 0x3
.obj gap_03_000014A9_rodata, global
.hidden gap_03_000014A9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000014A9_rodata

# .rodata:0x7C | 0x14AC | size: 0xB
.obj str_c_kuribo_h_gra_0000296c, local
	.string "c_kuribo_h"
.endobj str_c_kuribo_h_gra_0000296c

# .rodata:0x87 | 0x14B7 | size: 0x1
.obj gap_03_000014B7_rodata, global
.hidden gap_03_000014B7_rodata
	.byte 0x00
.endobj gap_03_000014B7_rodata

# .rodata:0x88 | 0x14B8 | size: 0x8
.obj str_TGK_N_1_gra_00002978, local
	.string "TGK_N_1"
.endobj str_TGK_N_1_gra_00002978

# .rodata:0x90 | 0x14C0 | size: 0x8
.obj str_TGK_Y_1_gra_00002980, local
	.string "TGK_Y_1"
.endobj str_TGK_Y_1_gra_00002980

# .rodata:0x98 | 0x14C8 | size: 0x8
.obj str_TGK_K_1_gra_00002988, local
	.string "TGK_K_1"
.endobj str_TGK_K_1_gra_00002988

# .rodata:0xA0 | 0x14D0 | size: 0x8
.obj str_TGK_I_1_gra_00002990, local
	.string "TGK_I_1"
.endobj str_TGK_I_1_gra_00002990

# .rodata:0xA8 | 0x14D8 | size: 0x8
.obj str_TGK_S_1_gra_00002998, local
	.string "TGK_S_1"
.endobj str_TGK_S_1_gra_00002998

# .rodata:0xB0 | 0x14E0 | size: 0x8
.obj str_TGK_Q_1_gra_000029a0, local
	.string "TGK_Q_1"
.endobj str_TGK_Q_1_gra_000029a0

# .rodata:0xB8 | 0x14E8 | size: 0x8
.obj str_TGK_D_1_gra_000029a8, local
	.string "TGK_D_1"
.endobj str_TGK_D_1_gra_000029a8

# .rodata:0xC0 | 0x14F0 | size: 0x8
.obj str_TGK_A_1_gra_000029b0, local
	.string "TGK_A_1"
.endobj str_TGK_A_1_gra_000029b0

# .rodata:0xC8 | 0x14F8 | size: 0x8
.obj str_TGK_R_2_gra_000029b8, local
	.string "TGK_R_2"
.endobj str_TGK_R_2_gra_000029b8

# .rodata:0xD0 | 0x1500 | size: 0x8
.obj str_TGK_R_1_gra_000029c0, local
	.string "TGK_R_1"
.endobj str_TGK_R_1_gra_000029c0

# .rodata:0xD8 | 0x1508 | size: 0x8
.obj str_TGK_W_1_gra_000029c8, local
	.string "TGK_W_1"
.endobj str_TGK_W_1_gra_000029c8

# .rodata:0xE0 | 0x1510 | size: 0x8
.obj str_TGK_T_1_gra_000029d0, local
	.string "TGK_T_1"
.endobj str_TGK_T_1_gra_000029d0

# .rodata:0xE8 | 0x1518 | size: 0x17
.obj str_SFX_ENM_TOGEKURI_MOV_gra_000029d8, local
	.string "SFX_ENM_TOGEKURI_MOVE1"
.endobj str_SFX_ENM_TOGEKURI_MOV_gra_000029d8

# .rodata:0xFF | 0x152F | size: 0x1
.obj gap_03_0000152F_rodata, global
.hidden gap_03_0000152F_rodata
	.byte 0x00
.endobj gap_03_0000152F_rodata

# .rodata:0x100 | 0x1530 | size: 0x17
.obj str_SFX_ENM_TOGEKURI_MOV_gra_000029f0, local
	.string "SFX_ENM_TOGEKURI_MOVE2"
.endobj str_SFX_ENM_TOGEKURI_MOV_gra_000029f0

# .rodata:0x117 | 0x1547 | size: 0x1
.obj gap_03_00001547_rodata, global
.hidden gap_03_00001547_rodata
	.byte 0x00
.endobj gap_03_00001547_rodata

# .rodata:0x118 | 0x1548 | size: 0x13
.obj str_SFX_ENM_KURI_JUMP1_gra_00002a08, local
	.string "SFX_ENM_KURI_JUMP1"
.endobj str_SFX_ENM_KURI_JUMP1_gra_00002a08

# .rodata:0x12B | 0x155B | size: 0x1
.obj gap_03_0000155B_rodata, global
.hidden gap_03_0000155B_rodata
	.byte 0x00
.endobj gap_03_0000155B_rodata

# .rodata:0x12C | 0x155C | size: 0x16
.obj str_SFX_ENM_KURI_LANDING_gra_00002a1c, local
	.string "SFX_ENM_KURI_LANDING1"
.endobj str_SFX_ENM_KURI_LANDING_gra_00002a1c

# .rodata:0x142 | 0x1572 | size: 0x2
.obj gap_03_00001572_rodata, global
.hidden gap_03_00001572_rodata
	.2byte 0x0000
.endobj gap_03_00001572_rodata

# .rodata:0x144 | 0x1574 | size: 0x1
.obj zero_gra_00002a34, local
	.byte 0x00
.endobj zero_gra_00002a34

# .rodata:0x145 | 0x1575 | size: 0x3
.obj gap_03_00001575_rodata, global
.hidden gap_03_00001575_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001575_rodata

# .rodata:0x148 | 0x1578 | size: 0xB
.obj str_toge_flush_gra_00002a38, local
	.string "toge_flush"
.endobj str_toge_flush_gra_00002a38

# .rodata:0x153 | 0x1583 | size: 0x1
.obj gap_03_00001583_rodata, global
.hidden gap_03_00001583_rodata
	.byte 0x00
.endobj gap_03_00001583_rodata

# .rodata:0x154 | 0x1584 | size: 0xD
.obj str_mac_0_092_06_gra_00002a44, local
	.string "mac_0_092_06"
.endobj str_mac_0_092_06_gra_00002a44

# .rodata:0x161 | 0x1591 | size: 0x3
.obj gap_03_00001591_rodata, global
.hidden gap_03_00001591_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001591_rodata

# .rodata:0x164 | 0x1594 | size: 0xD
.obj str_mac_0_092_07_gra_00002a54, local
	.string "mac_0_092_07"
.endobj str_mac_0_092_07_gra_00002a54

# .rodata:0x171 | 0x15A1 | size: 0x3
.obj gap_03_000015A1_rodata, global
.hidden gap_03_000015A1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000015A1_rodata

# .rodata:0x174 | 0x15A4 | size: 0x10
.obj str_SFX_ENM_CHARGE1_gra_00002a64, local
	.string "SFX_ENM_CHARGE1"
.endobj str_SFX_ENM_CHARGE1_gra_00002a64

# .rodata:0x184 | 0x15B4 | size: 0xC
.obj str_crystal_n64_gra_00002a74, local
	.string "crystal_n64"
.endobj str_crystal_n64_gra_00002a74

# .rodata:0x190 | 0x15C0 | size: 0x1B
.obj str_SFX_ENM_KURI_LANDING_gra_00002a80, local
	.string "SFX_ENM_KURI_LANDING_MISS1"
.endobj str_SFX_ENM_KURI_LANDING_gra_00002a80

# .rodata:0x1AB | 0x15DB | size: 0x1
.obj gap_03_000015DB_rodata, global
.hidden gap_03_000015DB_rodata
	.byte 0x00
.endobj gap_03_000015DB_rodata

# .rodata:0x1AC | 0x15DC | size: 0x8
.obj str_TGK_A_2_gra_00002a9c, local
	.string "TGK_A_2"
.endobj str_TGK_A_2_gra_00002a9c

# .rodata:0x1B4 | 0x15E4 | size: 0x13
.obj str_SFX_ENM_KURI_MOVE1_gra_00002aa4, local
	.string "SFX_ENM_KURI_MOVE1"
.endobj str_SFX_ENM_KURI_MOVE1_gra_00002aa4

# .rodata:0x1C7 | 0x15F7 | size: 0x1
.obj gap_03_000015F7_rodata, global
.hidden gap_03_000015F7_rodata
	.byte 0x00
.endobj gap_03_000015F7_rodata

# .rodata:0x1C8 | 0x15F8 | size: 0x13
.obj str_SFX_ENM_KURI_MOVE2_gra_00002ab8, local
	.string "SFX_ENM_KURI_MOVE2"
.endobj str_SFX_ENM_KURI_MOVE2_gra_00002ab8
	.byte 0x00

# .rodata:0x1DC | 0x160C | size: 0x4
.obj zero_gra_00002acc, local
	.float 0
.endobj zero_gra_00002acc

# 0x0000C728..0x0000DAB8 | size: 0x1390
.data
.balign 8

# .data:0x0 | 0xC728 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0xC730 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0xC734 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0xC738 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0xC73C | size: 0x4
.obj gap_04_0000C73C_data, global
.hidden gap_04_0000C73C_data
	.4byte 0x00000000
.endobj gap_04_0000C73C_data

# .data:0x18 | 0xC740 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0xC748 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0xC74C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0xC750 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0xC758 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0xC75C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0xC760 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0xC764 | size: 0x4
.obj gap_04_0000C764_data, global
.hidden gap_04_0000C764_data
	.4byte 0x00000000
.endobj gap_04_0000C764_data

# .data:0x40 | 0xC768 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0xC770 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0xC774 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0xC778 | size: 0xC4
.obj unit_hyper_togekuri_10_data_C778, global
	.4byte 0x00000044
	.4byte str_btl_un_hyper_togekur_gra_000028f0
	.4byte 0x00080000
	.4byte 0x01011000
	.4byte 0x02460146
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
	.4byte 0x41400000
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
	.4byte str_SFX_ENM_TOGEKURI_DAM_gra_00002908
	.4byte str_SFX_BTL_DAMAGE_FIRE1_gra_00002924
	.4byte str_SFX_BTL_DAMAGE_ICE1_gra_0000293c
	.4byte str_SFX_BTL_DAMAGE_BIRIB_gra_00002950
	.4byte 0x00040000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_hyper_togekuri_10_data_C778

# .data:0x114 | 0xC83C | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0xC841 | size: 0x3
.obj gap_04_0000C841_data, global
.hidden gap_04_0000C841_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0000C841_data

# .data:0x11C | 0xC844 | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0xC849 | size: 0x3
.obj gap_04_0000C849_data, global
.hidden gap_04_0000C849_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0000C849_data

# .data:0x124 | 0xC84C | size: 0x16
.obj regist, local
	.ascii "PZPdPddPdZdZd_PZZdPdd_"
.endobj regist

# .data:0x13A | 0xC862 | size: 0x2
.obj gap_04_0000C862_data, global
.hidden gap_04_0000C862_data
	.2byte 0x0000
.endobj gap_04_0000C862_data

# .data:0x13C | 0xC864 | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_hyper_togekur_gra_000028f0
	.4byte str_c_kuribo_h_gra_0000296c
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

# .data:0x188 | 0xC8B0 | size: 0xC0
.obj weapon_togekuri_attack, local
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

# .data:0x248 | 0xC970 | size: 0xC0
.obj weapon_togekuri_charge, local
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
	.4byte 0x01004020
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
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_togekuri_charge

# .data:0x308 | 0xCA30 | size: 0x98
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_TGK_N_1_gra_00002978
	.4byte 0x00000002
	.4byte str_TGK_Y_1_gra_00002980
	.4byte 0x00000009
	.4byte str_TGK_Y_1_gra_00002980
	.4byte 0x00000005
	.4byte str_TGK_K_1_gra_00002988
	.4byte 0x00000004
	.4byte str_TGK_I_1_gra_00002990
	.4byte 0x00000003
	.4byte str_TGK_I_1_gra_00002990
	.4byte 0x0000001C
	.4byte str_TGK_S_1_gra_00002998
	.4byte 0x0000001D
	.4byte str_TGK_Q_1_gra_000029a0
	.4byte 0x0000001E
	.4byte str_TGK_Q_1_gra_000029a0
	.4byte 0x0000001F
	.4byte str_TGK_S_1_gra_00002998
	.4byte 0x00000027
	.4byte str_TGK_D_1_gra_000029a8
	.4byte 0x00000032
	.4byte str_TGK_A_1_gra_000029b0
	.4byte 0x00000029
	.4byte str_TGK_R_2_gra_000029b8
	.4byte 0x0000002A
	.4byte str_TGK_R_1_gra_000029c0
	.4byte 0x00000028
	.4byte str_TGK_W_1_gra_000029c8
	.4byte 0x00000038
	.4byte str_TGK_I_1_gra_00002990
	.4byte 0x00000039
	.4byte str_TGK_I_1_gra_00002990
	.4byte 0x00000041
	.4byte str_TGK_T_1_gra_000029d0
	.4byte 0x00000045
	.4byte str_TGK_S_1_gra_00002998
.endobj pose_table

# .data:0x3A0 | 0xCAC8 | size: 0x18
.obj data_table, local
	.4byte 0x00000025
	.4byte dmg_avoid_counter_thorn_head_event
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x3B8 | 0xCAE0 | size: 0xA8
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
	.4byte str_SFX_ENM_TOGEKURI_MOV_gra_000029d8
	.4byte str_SFX_ENM_TOGEKURI_MOV_gra_000029f0
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0007005B
	.4byte btlevtcmd_SetWalkSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TOGEKURI_MOV_gra_000029d8
	.4byte str_SFX_ENM_TOGEKURI_MOV_gra_000029f0
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_SetJumpSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KURI_JUMP1_gra_00002a08
	.4byte str_SFX_ENM_KURI_LANDING_gra_00002a1c
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x460 | 0xCB88 | size: 0x1FC
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
	.4byte zero_gra_00002a34
	.4byte str_toge_flush_gra_00002a38
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
	.4byte str_mac_0_092_06_gra_00002a44
	.4byte 0x00000000
	.4byte 0xFFFFFFFA
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_mac_0_092_07_gra_00002a54
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

# .data:0x65C | 0xCD84 | size: 0x28
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

# .data:0x684 | 0xCDAC | size: 0x16C
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

# .data:0x7F0 | 0xCF18 | size: 0xB88
.obj attack_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x00000010
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000000A
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
	.4byte 0x0002005B
	.4byte btlevtcmd_get_turn
	.4byte 0xFE363C80
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte btlevtcmd_DrawLots
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000019
	.4byte 0x0000004B
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte btlevtcmd_DrawLots
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_togekuri_charge
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
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x0000012C
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000000F
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_CHARGE1_gra_00002a64
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte zero_gra_00002a34
	.4byte str_crystal_n64_gra_00002a74
	.4byte 0x00000007
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A8080
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0xFFFFFFFF
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C89
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x0000000A
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
	.4byte str_SFX_ENM_KURI_LANDING_gra_00002a80
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
	.4byte str_TGK_D_1_gra_000029a8
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_TGK_A_2_gra_00002a9c
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
	.4byte str_TGK_K_1_gra_00002988
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
	.4byte str_SFX_ENM_KURI_MOVE1_gra_00002aa4
	.4byte str_SFX_ENM_KURI_MOVE2_gra_00002ab8
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

# .data:0x1378 | 0xDAA0 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event
