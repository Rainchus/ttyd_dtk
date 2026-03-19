.include "macros.inc"
.file "unit_yami_togekuri.o"

# 0x00000F34..0x0000124C | size: 0x318
.text
.balign 4

# .text:0x0 | 0xF34 | size: 0x118
.fn krb_get_dir, local
/* 00000F34 00000FF8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 00000F38 00000FFC  7C 08 02 A6 */	mflr r0
/* 00000F3C 00001000  90 01 00 64 */	stw r0, 0x64(r1)
/* 00000F40 00001004  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 00000F44 00001008  F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 00000F48 0000100C  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 00000F4C 00001010  F3 C1 00 48 */	psq_st f30, 0x48(r1), 0, qr0
/* 00000F50 00001014  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 00000F54 00001018  F3 A1 00 38 */	psq_st f29, 0x38(r1), 0, qr0
/* 00000F58 0000101C  DB 81 00 20 */	stfd f28, 0x20(r1)
/* 00000F5C 00001020  F3 81 00 28 */	psq_st f28, 0x28(r1), 0, qr0
/* 00000F60 00001024  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 00000F64 00001028  7C 7E 1B 78 */	mr r30, r3
/* 00000F68 0000102C  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00000F6C 00001030  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00000F70 00001034  4B FF FB 01 */	bl evtGetFloat
/* 00000F74 00001038  FF 80 08 90 */	fmr f28, f1
/* 00000F78 0000103C  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00000F7C 00001040  7F C3 F3 78 */	mr r3, r30
/* 00000F80 00001044  4B FF FA F1 */	bl evtGetFloat
/* 00000F84 00001048  FF A0 08 90 */	fmr f29, f1
/* 00000F88 0000104C  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 00000F8C 00001050  7F C3 F3 78 */	mr r3, r30
/* 00000F90 00001054  4B FF FA E1 */	bl evtGetFloat
/* 00000F94 00001058  FF C0 08 90 */	fmr f30, f1
/* 00000F98 0000105C  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00000F9C 00001060  7F C3 F3 78 */	mr r3, r30
/* 00000FA0 00001064  4B FF FA D1 */	bl evtGetFloat
/* 00000FA4 00001068  FF E0 08 90 */	fmr f31, f1
/* 00000FA8 0000106C  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00000FAC 00001070  7F C3 F3 78 */	mr r3, r30
/* 00000FB0 00001074  4B FF FA C1 */	bl evtGetValue
/* 00000FB4 00001078  3C 80 00 00 */	lis r4, zero_jon_00009618@ha
/* 00000FB8 0000107C  EC 3E E0 28 */	fsubs f1, f30, f28
/* 00000FBC 00001080  C0 04 00 00 */	lfs f0, zero_jon_00009618@l(r4)
/* 00000FC0 00001084  EC 5F E8 28 */	fsubs f2, f31, f29
/* 00000FC4 00001088  7C 65 1B 78 */	mr r5, r3
/* 00000FC8 0000108C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 00000FCC 00001090  40 82 00 20 */	bne .L_00000FEC
/* 00000FD0 00001094  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 00000FD4 00001098  40 82 00 18 */	bne .L_00000FEC
/* 00000FD8 0000109C  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00000FDC 000010A0  7F C3 F3 78 */	mr r3, r30
/* 00000FE0 000010A4  4B FF FA 91 */	bl evtSetValue
/* 00000FE4 000010A8  38 60 00 02 */	li r3, 0x2
/* 00000FE8 000010AC  48 00 00 30 */	b .L_00001018
.L_00000FEC:
/* 00000FEC 000010B0  3C 60 00 00 */	lis r3, zero_jon_00009618@ha
/* 00000FF0 000010B4  C0 63 00 00 */	lfs f3, zero_jon_00009618@l(r3)
/* 00000FF4 000010B8  FC 80 18 90 */	fmr f4, f3
/* 00000FF8 000010BC  4B FF FA 79 */	bl angleABf_1
/* 00000FFC 000010C0  FC 00 08 1E */	fctiwz f0, f1
/* 00001000 000010C4  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00001004 000010C8  7F C3 F3 78 */	mr r3, r30
/* 00001008 000010CC  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 0000100C 000010D0  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 00001010 000010D4  4B FF FA 61 */	bl evtSetValue
/* 00001014 000010D8  38 60 00 02 */	li r3, 0x2
.L_00001018:
/* 00001018 000010DC  E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 0000101C 000010E0  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 00001020 000010E4  E3 C1 00 48 */	psq_l f30, 0x48(r1), 0, qr0
/* 00001024 000010E8  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 00001028 000010EC  E3 A1 00 38 */	psq_l f29, 0x38(r1), 0, qr0
/* 0000102C 000010F0  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 00001030 000010F4  E3 81 00 28 */	psq_l f28, 0x28(r1), 0, qr0
/* 00001034 000010F8  CB 81 00 20 */	lfd f28, 0x20(r1)
/* 00001038 000010FC  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 0000103C 00001100  80 01 00 64 */	lwz r0, 0x64(r1)
/* 00001040 00001104  7C 08 03 A6 */	mtlr r0
/* 00001044 00001108  38 21 00 60 */	addi r1, r1, 0x60
/* 00001048 0000110C  4E 80 00 20 */	blr
.endfn krb_get_dir

# .text:0x118 | 0x104C | size: 0x170
.fn krb_comp_dir, local
/* 0000104C 00001110  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00001050 00001114  7C 08 02 A6 */	mflr r0
/* 00001054 00001118  90 01 00 34 */	stw r0, 0x34(r1)
/* 00001058 0000111C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 0000105C 00001120  F3 E1 00 28 */	psq_st f31, 0x28(r1), 0, qr0
/* 00001060 00001124  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 00001064 00001128  F3 C1 00 18 */	psq_st f30, 0x18(r1), 0, qr0
/* 00001068 0000112C  FF C0 08 90 */	fmr f30, f1
/* 0000106C 00001130  FF E0 10 90 */	fmr f31, f2
/* 00001070 00001134  4B FF FA 01 */	bl hypot
/* 00001074 00001138  FC 20 08 18 */	frsp f1, f1
/* 00001078 0000113C  3C 60 00 00 */	lis r3, SinTable@ha
/* 0000107C 00001140  FC 00 FA 10 */	fabs f0, f31
/* 00001080 00001144  38 63 00 00 */	addi r3, r3, SinTable@l
/* 00001084 00001148  38 C0 00 00 */	li r6, 0x0
/* 00001088 0000114C  38 E0 00 5A */	li r7, 0x5a
/* 0000108C 00001150  FC 40 08 24 */	fdiv f2, f0, f1
/* 00001090 00001154  38 A0 00 00 */	li r5, 0x0
/* 00001094 00001158  FC 40 10 18 */	frsp f2, f2
/* 00001098 0000115C  48 00 00 54 */	b .L_000010EC
.L_0000109C:
/* 0000109C 00001160  54 C4 04 3E */	clrlwi r4, r6, 16
/* 000010A0 00001164  54 E0 04 3E */	clrlwi r0, r7, 16
/* 000010A4 00001168  7C 04 00 50 */	subf r0, r4, r0
/* 000010A8 0000116C  7C 00 0E 70 */	srawi r0, r0, 1
/* 000010AC 00001170  7C 00 01 94 */	addze r0, r0
/* 000010B0 00001174  7C 84 02 14 */	add r4, r4, r0
/* 000010B4 00001178  54 80 13 BA */	clrlslwi r0, r4, 16, 2
/* 000010B8 0000117C  7C 03 04 2E */	lfsx f0, r3, r0
/* 000010BC 00001180  54 84 04 3E */	clrlwi r4, r4, 16
/* 000010C0 00001184  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 000010C4 00001188  40 80 00 08 */	bge .L_000010CC
/* 000010C8 0000118C  7C 86 23 78 */	mr r6, r4
.L_000010CC:
/* 000010CC 00001190  54 80 13 BA */	clrlslwi r0, r4, 16, 2
/* 000010D0 00001194  7C 03 04 2E */	lfsx f0, r3, r0
/* 000010D4 00001198  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 000010D8 0000119C  7C 00 00 26 */	mfcr r0
/* 000010DC 000011A0  54 00 0F FF */	srwi. r0, r0, 31
/* 000010E0 000011A4  40 82 00 08 */	bne .L_000010E8
/* 000010E4 000011A8  7C 87 23 78 */	mr r7, r4
.L_000010E8:
/* 000010E8 000011AC  38 A5 00 01 */	addi r5, r5, 0x1
.L_000010EC:
/* 000010EC 000011B0  54 A0 04 3E */	clrlwi r0, r5, 16
/* 000010F0 000011B4  28 00 00 07 */	cmplwi r0, 0x7
/* 000010F4 000011B8  41 80 FF A8 */	blt .L_0000109C
/* 000010F8 000011BC  3C 60 00 00 */	lis r3, SinTable@ha
/* 000010FC 000011C0  54 C4 13 BA */	clrlslwi r4, r6, 16, 2
/* 00001100 000011C4  38 63 00 00 */	addi r3, r3, SinTable@l
/* 00001104 000011C8  54 E0 13 BA */	clrlslwi r0, r7, 16, 2
/* 00001108 000011CC  7C 23 24 2E */	lfsx f1, r3, r4
/* 0000110C 000011D0  7C 03 04 2E */	lfsx f0, r3, r0
/* 00001110 000011D4  EC 21 10 28 */	fsubs f1, f1, f2
/* 00001114 000011D8  EC 00 10 28 */	fsubs f0, f0, f2
/* 00001118 000011DC  FC 20 0A 10 */	fabs f1, f1
/* 0000111C 000011E0  FC 00 02 10 */	fabs f0, f0
/* 00001120 000011E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 00001124 000011E8  40 80 00 0C */	bge .L_00001130
/* 00001128 000011EC  7C C4 33 78 */	mr r4, r6
/* 0000112C 000011F0  48 00 00 08 */	b .L_00001134
.L_00001130:
/* 00001130 000011F4  7C E4 3B 78 */	mr r4, r7
.L_00001134:
/* 00001134 000011F8  3C 60 00 00 */	lis r3, zero_jon_00009618@ha
/* 00001138 000011FC  C0 03 00 00 */	lfs f0, zero_jon_00009618@l(r3)
/* 0000113C 00001200  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 00001140 00001204  40 80 00 18 */	bge .L_00001158
/* 00001144 00001208  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 00001148 0000120C  4C 41 13 82 */	cror eq, gt, eq
/* 0000114C 00001210  40 82 00 0C */	bne .L_00001158
/* 00001150 00001214  20 04 00 B4 */	subfic r0, r4, 0xb4
/* 00001154 00001218  54 04 04 3E */	clrlwi r4, r0, 16
.L_00001158:
/* 00001158 0000121C  3C 60 00 00 */	lis r3, zero_jon_00009618@ha
/* 0000115C 00001220  C0 03 00 00 */	lfs f0, zero_jon_00009618@l(r3)
/* 00001160 00001224  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 00001164 00001228  40 80 00 10 */	bge .L_00001174
/* 00001168 0000122C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 0000116C 00001230  40 80 00 08 */	bge .L_00001174
/* 00001170 00001234  38 84 00 B4 */	addi r4, r4, 0xb4
.L_00001174:
/* 00001174 00001238  3C 60 00 00 */	lis r3, zero_jon_00009618@ha
/* 00001178 0000123C  C0 03 00 00 */	lfs f0, zero_jon_00009618@l(r3)
/* 0000117C 00001240  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 00001180 00001244  4C 41 13 82 */	cror eq, gt, eq
/* 00001184 00001248  40 82 00 14 */	bne .L_00001198
/* 00001188 0000124C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 0000118C 00001250  40 80 00 0C */	bge .L_00001198
/* 00001190 00001254  20 04 01 68 */	subfic r0, r4, 0x168
/* 00001194 00001258  54 04 04 3E */	clrlwi r4, r0, 16
.L_00001198:
/* 00001198 0000125C  54 83 04 3E */	clrlwi r3, r4, 16
/* 0000119C 00001260  E3 E1 00 28 */	psq_l f31, 0x28(r1), 0, qr0
/* 000011A0 00001264  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 000011A4 00001268  E3 C1 00 18 */	psq_l f30, 0x18(r1), 0, qr0
/* 000011A8 0000126C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 000011AC 00001270  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 000011B0 00001274  7C 08 03 A6 */	mtlr r0
/* 000011B4 00001278  38 21 00 30 */	addi r1, r1, 0x30
/* 000011B8 0000127C  4E 80 00 20 */	blr
.endfn krb_comp_dir

# .text:0x288 | 0x11BC | size: 0x90
.fn get_attacker, local
/* 000011BC 00001280  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000011C0 00001284  7C 08 02 A6 */	mflr r0
/* 000011C4 00001288  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 000011C8 0000128C  90 01 00 14 */	stw r0, 0x14(r1)
/* 000011CC 00001290  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 000011D0 00001294  7C 7E 1B 78 */	mr r30, r3
/* 000011D4 00001298  38 64 00 00 */	addi r3, r4, _battleWorkPointer@l
/* 000011D8 0000129C  80 63 00 00 */	lwz r3, 0x0(r3)
/* 000011DC 000012A0  83 FE 00 18 */	lwz r31, 0x18(r30)
/* 000011E0 000012A4  80 83 04 20 */	lwz r4, 0x420(r3)
/* 000011E4 000012A8  4B FF F8 8D */	bl BattleGetUnitPtr
/* 000011E8 000012AC  80 03 00 04 */	lwz r0, 0x4(r3)
/* 000011EC 000012B0  2C 00 00 DE */	cmpwi r0, 0xde
/* 000011F0 000012B4  40 82 00 18 */	bne .L_00001208
/* 000011F4 000012B8  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 000011F8 000012BC  7F C3 F3 78 */	mr r3, r30
/* 000011FC 000012C0  38 A0 00 00 */	li r5, 0x0
/* 00001200 000012C4  4B FF F8 71 */	bl evtSetValue
/* 00001204 000012C8  48 00 00 30 */	b .L_00001234
.L_00001208:
/* 00001208 000012CC  2C 00 00 E0 */	cmpwi r0, 0xe0
/* 0000120C 000012D0  40 82 00 18 */	bne .L_00001224
/* 00001210 000012D4  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00001214 000012D8  7F C3 F3 78 */	mr r3, r30
/* 00001218 000012DC  38 A0 00 01 */	li r5, 0x1
/* 0000121C 000012E0  4B FF F8 55 */	bl evtSetValue
/* 00001220 000012E4  48 00 00 14 */	b .L_00001234
.L_00001224:
/* 00001224 000012E8  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00001228 000012EC  7F C3 F3 78 */	mr r3, r30
/* 0000122C 000012F0  38 A0 00 02 */	li r5, 0x2
/* 00001230 000012F4  4B FF F8 41 */	bl evtSetValue
.L_00001234:
/* 00001234 000012F8  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00001238 000012FC  38 60 00 02 */	li r3, 0x2
/* 0000123C 00001300  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00001240 00001304  7C 08 03 A6 */	mtlr r0
/* 00001244 00001308  38 21 00 10 */	addi r1, r1, 0x10
/* 00001248 0000130C  4E 80 00 20 */	blr
.endfn get_attacker

# 0x00002428..0x000025F0 | size: 0x1C8
.rodata
.balign 8

# .rodata:0x0 | 0x2428 | size: 0x15
.obj str_btl_un_yami_togekuri_jon_00009458, local
	.string "btl_un_yami_togekuri"
.endobj str_btl_un_yami_togekuri_jon_00009458

# .rodata:0x15 | 0x243D | size: 0x3
.obj gap_03_0000243D_rodata, global
.hidden gap_03_0000243D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000243D_rodata

# .rodata:0x18 | 0x2440 | size: 0x1A
.obj str_SFX_ENM_TOGEKURI_DAM_jon_00009470, local
	.string "SFX_ENM_TOGEKURI_DAMAGED1"
.endobj str_SFX_ENM_TOGEKURI_DAM_jon_00009470

# .rodata:0x32 | 0x245A | size: 0x2
.obj gap_03_0000245A_rodata, global
.hidden gap_03_0000245A_rodata
	.2byte 0x0000
.endobj gap_03_0000245A_rodata

# .rodata:0x34 | 0x245C | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_jon_0000948c, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_jon_0000948c

# .rodata:0x49 | 0x2471 | size: 0x3
.obj gap_03_00002471_rodata, global
.hidden gap_03_00002471_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002471_rodata

# .rodata:0x4C | 0x2474 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_jon_000094a4, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_jon_000094a4

# .rodata:0x60 | 0x2488 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_jon_000094b8, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_jon_000094b8

# .rodata:0x79 | 0x24A1 | size: 0x3
.obj gap_03_000024A1_rodata, global
.hidden gap_03_000024A1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000024A1_rodata

# .rodata:0x7C | 0x24A4 | size: 0xB
.obj str_c_kuribo_y_jon_000094d4, local
	.string "c_kuribo_y"
.endobj str_c_kuribo_y_jon_000094d4

# .rodata:0x87 | 0x24AF | size: 0x1
.obj gap_03_000024AF_rodata, global
.hidden gap_03_000024AF_rodata
	.byte 0x00
.endobj gap_03_000024AF_rodata

# .rodata:0x88 | 0x24B0 | size: 0x8
.obj str_TGK_N_1_jon_000094e0, local
	.string "TGK_N_1"
.endobj str_TGK_N_1_jon_000094e0

# .rodata:0x90 | 0x24B8 | size: 0x8
.obj str_TGK_Y_1_jon_000094e8, local
	.string "TGK_Y_1"
.endobj str_TGK_Y_1_jon_000094e8

# .rodata:0x98 | 0x24C0 | size: 0x8
.obj str_TGK_K_1_jon_000094f0, local
	.string "TGK_K_1"
.endobj str_TGK_K_1_jon_000094f0

# .rodata:0xA0 | 0x24C8 | size: 0x8
.obj str_TGK_I_1_jon_000094f8, local
	.string "TGK_I_1"
.endobj str_TGK_I_1_jon_000094f8

# .rodata:0xA8 | 0x24D0 | size: 0x8
.obj str_TGK_S_1_jon_00009500, local
	.string "TGK_S_1"
.endobj str_TGK_S_1_jon_00009500

# .rodata:0xB0 | 0x24D8 | size: 0x8
.obj str_TGK_Q_1_jon_00009508, local
	.string "TGK_Q_1"
.endobj str_TGK_Q_1_jon_00009508

# .rodata:0xB8 | 0x24E0 | size: 0x8
.obj str_TGK_D_1_jon_00009510, local
	.string "TGK_D_1"
.endobj str_TGK_D_1_jon_00009510

# .rodata:0xC0 | 0x24E8 | size: 0x8
.obj str_TGK_A_1_jon_00009518, local
	.string "TGK_A_1"
.endobj str_TGK_A_1_jon_00009518

# .rodata:0xC8 | 0x24F0 | size: 0x8
.obj str_TGK_R_2_jon_00009520, local
	.string "TGK_R_2"
.endobj str_TGK_R_2_jon_00009520

# .rodata:0xD0 | 0x24F8 | size: 0x8
.obj str_TGK_R_1_jon_00009528, local
	.string "TGK_R_1"
.endobj str_TGK_R_1_jon_00009528

# .rodata:0xD8 | 0x2500 | size: 0x8
.obj str_TGK_W_1_jon_00009530, local
	.string "TGK_W_1"
.endobj str_TGK_W_1_jon_00009530

# .rodata:0xE0 | 0x2508 | size: 0x8
.obj str_TGK_T_1_jon_00009538, local
	.string "TGK_T_1"
.endobj str_TGK_T_1_jon_00009538

# .rodata:0xE8 | 0x2510 | size: 0x17
.obj str_SFX_ENM_TOGEKURI_MOV_jon_00009540, local
	.string "SFX_ENM_TOGEKURI_MOVE1"
.endobj str_SFX_ENM_TOGEKURI_MOV_jon_00009540

# .rodata:0xFF | 0x2527 | size: 0x1
.obj gap_03_00002527_rodata, global
.hidden gap_03_00002527_rodata
	.byte 0x00
.endobj gap_03_00002527_rodata

# .rodata:0x100 | 0x2528 | size: 0x17
.obj str_SFX_ENM_TOGEKURI_MOV_jon_00009558, local
	.string "SFX_ENM_TOGEKURI_MOVE2"
.endobj str_SFX_ENM_TOGEKURI_MOV_jon_00009558

# .rodata:0x117 | 0x253F | size: 0x1
.obj gap_03_0000253F_rodata, global
.hidden gap_03_0000253F_rodata
	.byte 0x00
.endobj gap_03_0000253F_rodata

# .rodata:0x118 | 0x2540 | size: 0x13
.obj str_SFX_ENM_KURI_JUMP1_jon_00009570, local
	.string "SFX_ENM_KURI_JUMP1"
.endobj str_SFX_ENM_KURI_JUMP1_jon_00009570

# .rodata:0x12B | 0x2553 | size: 0x1
.obj gap_03_00002553_rodata, global
.hidden gap_03_00002553_rodata
	.byte 0x00
.endobj gap_03_00002553_rodata

# .rodata:0x12C | 0x2554 | size: 0x16
.obj str_SFX_ENM_KURI_LANDING_jon_00009584, local
	.string "SFX_ENM_KURI_LANDING1"
.endobj str_SFX_ENM_KURI_LANDING_jon_00009584

# .rodata:0x142 | 0x256A | size: 0x2
.obj gap_03_0000256A_rodata, global
.hidden gap_03_0000256A_rodata
	.2byte 0x0000
.endobj gap_03_0000256A_rodata

# .rodata:0x144 | 0x256C | size: 0x1
.obj zero_jon_0000959c, local
	.byte 0x00
.endobj zero_jon_0000959c

# .rodata:0x145 | 0x256D | size: 0x3
.obj gap_03_0000256D_rodata, global
.hidden gap_03_0000256D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000256D_rodata

# .rodata:0x148 | 0x2570 | size: 0xB
.obj str_toge_flush_jon_000095a0, local
	.string "toge_flush"
.endobj str_toge_flush_jon_000095a0

# .rodata:0x153 | 0x257B | size: 0x1
.obj gap_03_0000257B_rodata, global
.hidden gap_03_0000257B_rodata
	.byte 0x00
.endobj gap_03_0000257B_rodata

# .rodata:0x154 | 0x257C | size: 0xD
.obj str_mac_0_092_06_jon_000095ac, local
	.string "mac_0_092_06"
.endobj str_mac_0_092_06_jon_000095ac

# .rodata:0x161 | 0x2589 | size: 0x3
.obj gap_03_00002589_rodata, global
.hidden gap_03_00002589_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002589_rodata

# .rodata:0x164 | 0x258C | size: 0xD
.obj str_mac_0_092_07_jon_000095bc, local
	.string "mac_0_092_07"
.endobj str_mac_0_092_07_jon_000095bc

# .rodata:0x171 | 0x2599 | size: 0x3
.obj gap_03_00002599_rodata, global
.hidden gap_03_00002599_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002599_rodata

# .rodata:0x174 | 0x259C | size: 0x1B
.obj str_SFX_ENM_KURI_LANDING_jon_000095cc, local
	.string "SFX_ENM_KURI_LANDING_MISS1"
.endobj str_SFX_ENM_KURI_LANDING_jon_000095cc

# .rodata:0x18F | 0x25B7 | size: 0x1
.obj gap_03_000025B7_rodata, global
.hidden gap_03_000025B7_rodata
	.byte 0x00
.endobj gap_03_000025B7_rodata

# .rodata:0x190 | 0x25B8 | size: 0x8
.obj str_TGK_A_2_jon_000095e8, local
	.string "TGK_A_2"
.endobj str_TGK_A_2_jon_000095e8

# .rodata:0x198 | 0x25C0 | size: 0x13
.obj str_SFX_ENM_KURI_MOVE1_jon_000095f0, local
	.string "SFX_ENM_KURI_MOVE1"
.endobj str_SFX_ENM_KURI_MOVE1_jon_000095f0

# .rodata:0x1AB | 0x25D3 | size: 0x1
.obj gap_03_000025D3_rodata, global
.hidden gap_03_000025D3_rodata
	.byte 0x00
.endobj gap_03_000025D3_rodata

# .rodata:0x1AC | 0x25D4 | size: 0x13
.obj str_SFX_ENM_KURI_MOVE2_jon_00009604, local
	.string "SFX_ENM_KURI_MOVE2"
.endobj str_SFX_ENM_KURI_MOVE2_jon_00009604
	.byte 0x00

# .rodata:0x1C0 | 0x25E8 | size: 0x4
.obj zero_jon_00009618, local
	.float 0
.endobj zero_jon_00009618

# .rodata:0x1C4 | 0x25EC | size: 0x4
.obj gap_03_000025EC_rodata, global
.hidden gap_03_000025EC_rodata
	.4byte 0x00000000
.endobj gap_03_000025EC_rodata

# 0x00020160..0x00021200 | size: 0x10A0
.data
.balign 8

# .data:0x0 | 0x20160 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x20168 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x2016C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x20170 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x20174 | size: 0x4
.obj gap_04_00020174_data, global
.hidden gap_04_00020174_data
	.4byte 0x00000000
.endobj gap_04_00020174_data

# .data:0x18 | 0x20178 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x20180 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x20184 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x20188 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x20190 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x20194 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x20198 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x2019C | size: 0x4
.obj gap_04_0002019C_data, global
.hidden gap_04_0002019C_data
	.4byte 0x00000000
.endobj gap_04_0002019C_data

# .data:0x40 | 0x201A0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x201A8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x201AC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x201B0 | size: 0xC4
.obj unit_yami_togekuri_14_data_201B0, global
	.4byte 0x0000009B
	.4byte str_btl_un_yami_togekuri_jon_00009458
	.4byte 0x00070000
	.4byte 0x01010D00
	.4byte 0x02460032
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
	.4byte str_SFX_ENM_TOGEKURI_DAM_jon_00009470
	.4byte str_SFX_BTL_DAMAGE_FIRE1_jon_0000948c
	.4byte str_SFX_BTL_DAMAGE_ICE1_jon_000094a4
	.4byte str_SFX_BTL_DAMAGE_BIRIB_jon_000094b8
	.4byte 0x00040000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_yami_togekuri_14_data_201B0

# .data:0x114 | 0x20274 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x20279 | size: 0x3
.obj gap_04_00020279_data, global
.hidden gap_04_00020279_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00020279_data

# .data:0x11C | 0x2027C | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x20281 | size: 0x3
.obj gap_04_00020281_data, global
.hidden gap_04_00020281_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00020281_data

# .data:0x124 | 0x20284 | size: 0x16
.obj regist, local
	.ascii "PZPdPddPdZdZdZPZZdPddP"
.endobj regist

# .data:0x13A | 0x2029A | size: 0x2
.obj gap_04_0002029A_data, global
.hidden gap_04_0002029A_data
	.2byte 0x0000
.endobj gap_04_0002029A_data

# .data:0x13C | 0x2029C | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_yami_togekuri_jon_00009458
	.4byte str_c_kuribo_y_jon_000094d4
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

# .data:0x188 | 0x202E8 | size: 0xC0
.obj weapon_togekuri_attack, local
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

# .data:0x248 | 0x203A8 | size: 0x98
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_TGK_N_1_jon_000094e0
	.4byte 0x00000002
	.4byte str_TGK_Y_1_jon_000094e8
	.4byte 0x00000009
	.4byte str_TGK_Y_1_jon_000094e8
	.4byte 0x00000005
	.4byte str_TGK_K_1_jon_000094f0
	.4byte 0x00000004
	.4byte str_TGK_I_1_jon_000094f8
	.4byte 0x00000003
	.4byte str_TGK_I_1_jon_000094f8
	.4byte 0x0000001C
	.4byte str_TGK_S_1_jon_00009500
	.4byte 0x0000001D
	.4byte str_TGK_Q_1_jon_00009508
	.4byte 0x0000001E
	.4byte str_TGK_Q_1_jon_00009508
	.4byte 0x0000001F
	.4byte str_TGK_S_1_jon_00009500
	.4byte 0x00000027
	.4byte str_TGK_D_1_jon_00009510
	.4byte 0x00000032
	.4byte str_TGK_A_1_jon_00009518
	.4byte 0x00000029
	.4byte str_TGK_R_2_jon_00009520
	.4byte 0x0000002A
	.4byte str_TGK_R_1_jon_00009528
	.4byte 0x00000028
	.4byte str_TGK_W_1_jon_00009530
	.4byte 0x00000038
	.4byte str_TGK_I_1_jon_000094f8
	.4byte 0x00000039
	.4byte str_TGK_I_1_jon_000094f8
	.4byte 0x00000041
	.4byte str_TGK_T_1_jon_00009538
	.4byte 0x00000045
	.4byte str_TGK_S_1_jon_00009500
.endobj pose_table

# .data:0x2E0 | 0x20440 | size: 0x18
.obj data_table, local
	.4byte 0x00000025
	.4byte dmg_avoid_counter_thorn_head_event
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x2F8 | 0x20458 | size: 0xA8
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
	.4byte str_SFX_ENM_TOGEKURI_MOV_jon_00009540
	.4byte str_SFX_ENM_TOGEKURI_MOV_jon_00009558
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0007005B
	.4byte btlevtcmd_SetWalkSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_TOGEKURI_MOV_jon_00009540
	.4byte str_SFX_ENM_TOGEKURI_MOV_jon_00009558
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_SetJumpSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KURI_JUMP1_jon_00009570
	.4byte str_SFX_ENM_KURI_LANDING_jon_00009584
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x3A0 | 0x20500 | size: 0x1FC
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
	.4byte zero_jon_0000959c
	.4byte str_toge_flush_jon_000095a0
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
	.4byte str_mac_0_092_06_jon_000095ac
	.4byte 0x00000000
	.4byte 0xFFFFFFFA
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_mac_0_092_07_jon_000095bc
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

# .data:0x59C | 0x206FC | size: 0x28
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

# .data:0x5C4 | 0x20724 | size: 0x16C
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

# .data:0x730 | 0x20890 | size: 0x954
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
	.4byte str_SFX_ENM_KURI_LANDING_jon_000095cc
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
	.4byte str_TGK_D_1_jon_00009510
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_TGK_A_2_jon_000095e8
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
	.4byte str_TGK_K_1_jon_000094f0
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
	.4byte str_SFX_ENM_KURI_MOVE1_jon_000095f0
	.4byte str_SFX_ENM_KURI_MOVE2_jon_00009604
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

# .data:0x1084 | 0x211E4 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x109C | 0x211FC | size: 0x4
.obj gap_04_000211FC_data, global
.hidden gap_04_000211FC_data
	.4byte 0x00000000
.endobj gap_04_000211FC_data
