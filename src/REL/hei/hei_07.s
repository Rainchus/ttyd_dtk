.include "macros.inc"
.file "hei_07.o"

# 0x00000E44..0x00001184 | size: 0x340
.text
.balign 4

# .text:0x0 | 0xE44 | size: 0x1DC
.fn callback, local
/* 00000E44 00000F08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00000E48 00000F0C  7C 08 02 A6 */	mflr r0
/* 00000E4C 00000F10  90 01 00 24 */	stw r0, 0x24(r1)
/* 00000E50 00000F14  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 00000E54 00000F18  7C 7E 1B 78 */	mr r30, r3
/* 00000E58 00000F1C  80 A4 00 00 */	lwz r5, 0x0(r4)
/* 00000E5C 00000F20  3C 80 00 00 */	lis r4, str_stg1_hei_23_hei_00007548@ha
/* 00000E60 00000F24  38 84 00 00 */	addi r4, r4, str_stg1_hei_23_hei_00007548@l
/* 00000E64 00000F28  3C 65 00 01 */	addis r3, r5, 0x1
/* 00000E68 00000F2C  83 E3 F2 00 */	lwz r31, -0xe00(r3)
/* 00000E6C 00000F30  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00000E70 00000F34  4B FF F1 91 */	bl strcmp
/* 00000E74 00000F38  2C 03 00 00 */	cmpwi r3, 0x0
/* 00000E78 00000F3C  40 82 00 30 */	bne .L_00000EA8
/* 00000E7C 00000F40  2C 1E 00 03 */	cmpwi r30, 0x3
/* 00000E80 00000F44  40 82 00 28 */	bne .L_00000EA8
/* 00000E84 00000F48  80 7F 00 D4 */	lwz r3, 0xd4(r31)
/* 00000E88 00000F4C  38 03 00 01 */	addi r0, r3, 0x1
/* 00000E8C 00000F50  90 1F 00 D4 */	stw r0, 0xd4(r31)
/* 00000E90 00000F54  80 1F 00 D4 */	lwz r0, 0xd4(r31)
/* 00000E94 00000F58  2C 00 00 03 */	cmpwi r0, 0x3
/* 00000E98 00000F5C  40 82 00 10 */	bne .L_00000EA8
/* 00000E9C 00000F60  3C 60 00 00 */	lis r3, str_SFX_QUIZ_START1_hei_0000776c@ha
/* 00000EA0 00000F64  38 63 00 00 */	addi r3, r3, str_SFX_QUIZ_START1_hei_0000776c@l
/* 00000EA4 00000F68  4B FF F1 5D */	bl psndSFXOn
.L_00000EA8:
/* 00000EA8 00000F6C  80 1F 00 D8 */	lwz r0, 0xd8(r31)
/* 00000EAC 00000F70  2C 00 00 01 */	cmpwi r0, 0x1
/* 00000EB0 00000F74  41 82 00 64 */	beq .L_00000F14
/* 00000EB4 00000F78  40 80 00 10 */	bge .L_00000EC4
/* 00000EB8 00000F7C  2C 00 00 00 */	cmpwi r0, 0x0
/* 00000EBC 00000F80  40 80 00 14 */	bge .L_00000ED0
/* 00000EC0 00000F84  48 00 01 4C */	b .L_0000100C
.L_00000EC4:
/* 00000EC4 00000F88  2C 00 00 03 */	cmpwi r0, 0x3
/* 00000EC8 00000F8C  40 80 01 44 */	bge .L_0000100C
/* 00000ECC 00000F90  48 00 00 AC */	b .L_00000F78
.L_00000ED0:
/* 00000ED0 00000F94  2C 1E 00 05 */	cmpwi r30, 0x5
/* 00000ED4 00000F98  41 82 00 08 */	beq .L_00000EDC
/* 00000ED8 00000F9C  48 00 01 34 */	b .L_0000100C
.L_00000EDC:
/* 00000EDC 00000FA0  3C 60 00 00 */	lis r3, str_anm_kuti_1_hei_00007520@ha
/* 00000EE0 00000FA4  38 81 00 0C */	addi r4, r1, 0xc
/* 00000EE4 00000FA8  38 63 00 00 */	addi r3, r3, str_anm_kuti_1_hei_00007520@l
/* 00000EE8 00000FAC  38 A1 00 08 */	addi r5, r1, 0x8
/* 00000EEC 00000FB0  4B FF F1 15 */	bl mapCheckAnimation
/* 00000EF0 00000FB4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 00000EF4 00000FB8  2C 00 00 00 */	cmpwi r0, 0x0
/* 00000EF8 00000FBC  41 82 01 14 */	beq .L_0000100C
/* 00000EFC 00000FC0  3C 60 00 00 */	lis r3, str_anm_kuti_1_hei_00007520@ha
/* 00000F00 00000FC4  38 80 00 00 */	li r4, 0x0
/* 00000F04 00000FC8  38 63 00 00 */	addi r3, r3, str_anm_kuti_1_hei_00007520@l
/* 00000F08 00000FCC  38 A0 00 00 */	li r5, 0x0
/* 00000F0C 00000FD0  4B FF F0 F5 */	bl mapPlayAnimationLv
/* 00000F10 00000FD4  48 00 00 FC */	b .L_0000100C
.L_00000F14:
/* 00000F14 00000FD8  2C 1E 00 05 */	cmpwi r30, 0x5
/* 00000F18 00000FDC  41 82 00 08 */	beq .L_00000F20
/* 00000F1C 00000FE0  48 00 00 F0 */	b .L_0000100C
.L_00000F20:
/* 00000F20 00000FE4  3C 60 00 00 */	lis r3, str_anm_egao_hei_000078fc@ha
/* 00000F24 00000FE8  38 81 00 0C */	addi r4, r1, 0xc
/* 00000F28 00000FEC  38 63 00 00 */	addi r3, r3, str_anm_egao_hei_000078fc@l
/* 00000F2C 00000FF0  38 A1 00 08 */	addi r5, r1, 0x8
/* 00000F30 00000FF4  4B FF F0 D1 */	bl mapCheckAnimation
/* 00000F34 00000FF8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 00000F38 00000FFC  2C 00 00 00 */	cmpwi r0, 0x0
/* 00000F3C 00001000  41 82 00 D0 */	beq .L_0000100C
/* 00000F40 00001004  3C 60 00 00 */	lis r3, str_anm_egao_hei_000078fc@ha
/* 00000F44 00001008  38 80 00 00 */	li r4, 0x0
/* 00000F48 0000100C  38 63 00 00 */	addi r3, r3, str_anm_egao_hei_000078fc@l
/* 00000F4C 00001010  38 A0 00 00 */	li r5, 0x0
/* 00000F50 00001014  4B FF F0 B1 */	bl mapPlayAnimationLv
/* 00000F54 00001018  80 7F 00 D4 */	lwz r3, 0xd4(r31)
/* 00000F58 0000101C  38 03 00 01 */	addi r0, r3, 0x1
/* 00000F5C 00001020  90 1F 00 D4 */	stw r0, 0xd4(r31)
/* 00000F60 00001024  80 1F 00 D4 */	lwz r0, 0xd4(r31)
/* 00000F64 00001028  2C 00 00 01 */	cmpwi r0, 0x1
/* 00000F68 0000102C  40 81 00 A4 */	ble .L_0000100C
/* 00000F6C 00001030  38 00 00 00 */	li r0, 0x0
/* 00000F70 00001034  90 1F 00 D8 */	stw r0, 0xd8(r31)
/* 00000F74 00001038  48 00 00 98 */	b .L_0000100C
.L_00000F78:
/* 00000F78 0000103C  2C 1E 00 04 */	cmpwi r30, 0x4
/* 00000F7C 00001040  41 82 00 90 */	beq .L_0000100C
/* 00000F80 00001044  40 80 00 10 */	bge .L_00000F90
/* 00000F84 00001048  2C 1E 00 03 */	cmpwi r30, 0x3
/* 00000F88 0000104C  40 80 00 48 */	bge .L_00000FD0
/* 00000F8C 00001050  48 00 00 80 */	b .L_0000100C
.L_00000F90:
/* 00000F90 00001054  2C 1E 00 06 */	cmpwi r30, 0x6
/* 00000F94 00001058  40 80 00 78 */	bge .L_0000100C
/* 00000F98 0000105C  3C 60 00 00 */	lis r3, str_anm_kuti_1_hei_00007520@ha
/* 00000F9C 00001060  38 81 00 0C */	addi r4, r1, 0xc
/* 00000FA0 00001064  38 63 00 00 */	addi r3, r3, str_anm_kuti_1_hei_00007520@l
/* 00000FA4 00001068  38 A1 00 08 */	addi r5, r1, 0x8
/* 00000FA8 0000106C  4B FF F0 59 */	bl mapCheckAnimation
/* 00000FAC 00001070  80 01 00 0C */	lwz r0, 0xc(r1)
/* 00000FB0 00001074  2C 00 00 00 */	cmpwi r0, 0x0
/* 00000FB4 00001078  41 82 00 58 */	beq .L_0000100C
/* 00000FB8 0000107C  3C 60 00 00 */	lis r3, str_anm_kuti_1_hei_00007520@ha
/* 00000FBC 00001080  38 80 00 00 */	li r4, 0x0
/* 00000FC0 00001084  38 63 00 00 */	addi r3, r3, str_anm_kuti_1_hei_00007520@l
/* 00000FC4 00001088  38 A0 00 00 */	li r5, 0x0
/* 00000FC8 0000108C  4B FF F0 39 */	bl mapPlayAnimationLv
/* 00000FCC 00001090  48 00 00 40 */	b .L_0000100C
.L_00000FD0:
/* 00000FD0 00001094  80 7F 00 D4 */	lwz r3, 0xd4(r31)
/* 00000FD4 00001098  38 03 00 01 */	addi r0, r3, 0x1
/* 00000FD8 0000109C  90 1F 00 D4 */	stw r0, 0xd4(r31)
/* 00000FDC 000010A0  80 1F 00 D4 */	lwz r0, 0xd4(r31)
/* 00000FE0 000010A4  2C 00 00 02 */	cmpwi r0, 0x2
/* 00000FE4 000010A8  41 80 00 28 */	blt .L_0000100C
/* 00000FE8 000010AC  3C 60 00 00 */	lis r3, str_anm_egao_hei_000078fc@ha
/* 00000FEC 000010B0  38 80 00 00 */	li r4, 0x0
/* 00000FF0 000010B4  38 63 00 00 */	addi r3, r3, str_anm_egao_hei_000078fc@l
/* 00000FF4 000010B8  38 A0 00 00 */	li r5, 0x0
/* 00000FF8 000010BC  4B FF F0 09 */	bl mapPlayAnimationLv
/* 00000FFC 000010C0  38 60 00 00 */	li r3, 0x0
/* 00001000 000010C4  38 00 00 01 */	li r0, 0x1
/* 00001004 000010C8  90 7F 00 D4 */	stw r3, 0xd4(r31)
/* 00001008 000010CC  90 1F 00 D8 */	stw r0, 0xd8(r31)
.L_0000100C:
/* 0000100C 000010D0  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 00001010 000010D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00001014 000010D8  7C 08 03 A6 */	mtlr r0
/* 00001018 000010DC  38 21 00 20 */	addi r1, r1, 0x20
/* 0000101C 000010E0  4E 80 00 20 */	blr
.endfn callback

# .text:0x1DC | 0x1020 | size: 0x164
.fn mario_set_dir, local
/* 00001020 000010E4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00001024 000010E8  7C 08 02 A6 */	mflr r0
/* 00001028 000010EC  90 01 00 34 */	stw r0, 0x34(r1)
/* 0000102C 000010F0  BF A1 00 24 */	stmw r29, 0x24(r1)
/* 00001030 000010F4  7C 7E 1B 78 */	mr r30, r3
/* 00001034 000010F8  7C 9F 23 78 */	mr r31, r4
/* 00001038 000010FC  83 A3 00 18 */	lwz r29, 0x18(r3)
/* 0000103C 00001100  4B FF EF C5 */	bl marioGetPtr
/* 00001040 00001104  2C 1F 00 00 */	cmpwi r31, 0x0
/* 00001044 00001108  7C 7F 1B 78 */	mr r31, r3
/* 00001048 0000110C  41 82 00 84 */	beq .L_000010CC
/* 0000104C 00001110  C0 1F 01 A0 */	lfs f0, 0x1a0(r31)
/* 00001050 00001114  7F C3 F3 78 */	mr r3, r30
/* 00001054 00001118  D0 1E 00 7C */	stfs f0, 0x7c(r30)
/* 00001058 0000111C  80 9D 00 00 */	lwz r4, 0x0(r29)
/* 0000105C 00001120  4B FF EF A5 */	bl evtGetFloat
/* 00001060 00001124  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 00001064 00001128  7F C3 F3 78 */	mr r3, r30
/* 00001068 0000112C  EC 01 00 28 */	fsubs f0, f1, f0
/* 0000106C 00001130  D0 1E 00 80 */	stfs f0, 0x80(r30)
/* 00001070 00001134  80 9D 00 04 */	lwz r4, 0x4(r29)
/* 00001074 00001138  4B FF EF 8D */	bl evtGetValue
/* 00001078 0000113C  90 7E 00 84 */	stw r3, 0x84(r30)
/* 0000107C 00001140  38 00 00 00 */	li r0, 0x0
/* 00001080 00001144  3C 60 00 00 */	lis r3, float_neg180_hei_00007908@ha
/* 00001084 00001148  90 1F 00 48 */	stw r0, 0x48(r31)
/* 00001088 0000114C  C0 03 00 00 */	lfs f0, float_neg180_hei_00007908@l(r3)
/* 0000108C 00001150  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 00001090 00001154  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 00001094 00001158  40 80 00 14 */	bge .L_000010A8
/* 00001098 0000115C  3C 60 00 00 */	lis r3, float_360_hei_0000790c@ha
/* 0000109C 00001160  C0 03 00 00 */	lfs f0, float_360_hei_0000790c@l(r3)
/* 000010A0 00001164  EC 00 08 2A */	fadds f0, f0, f1
/* 000010A4 00001168  D0 1E 00 80 */	stfs f0, 0x80(r30)
.L_000010A8:
/* 000010A8 0000116C  3C 60 00 00 */	lis r3, float_180_hei_00007910@ha
/* 000010AC 00001170  C0 3E 00 80 */	lfs f1, 0x80(r30)
/* 000010B0 00001174  C0 03 00 00 */	lfs f0, float_180_hei_00007910@l(r3)
/* 000010B4 00001178  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 000010B8 0000117C  40 81 00 14 */	ble .L_000010CC
/* 000010BC 00001180  3C 60 00 00 */	lis r3, float_360_hei_0000790c@ha
/* 000010C0 00001184  C0 03 00 00 */	lfs f0, float_360_hei_0000790c@l(r3)
/* 000010C4 00001188  EC 01 00 28 */	fsubs f0, f1, f0
/* 000010C8 0000118C  D0 1E 00 80 */	stfs f0, 0x80(r30)
.L_000010CC:
/* 000010CC 00001190  80 1E 00 84 */	lwz r0, 0x84(r30)
/* 000010D0 00001194  2C 00 00 00 */	cmpwi r0, 0x0
/* 000010D4 00001198  40 81 00 84 */	ble .L_00001158
/* 000010D8 0000119C  80 BF 00 48 */	lwz r5, 0x48(r31)
/* 000010DC 000011A0  3C 60 43 30 */	lis r3, 0x4330
/* 000010E0 000011A4  3C 80 00 00 */	lis r4, double_to_int_hei_00007918@ha
/* 000010E4 000011A8  90 61 00 08 */	stw r3, 0x8(r1)
/* 000010E8 000011AC  38 05 00 01 */	addi r0, r5, 0x1
/* 000010EC 000011B0  C8 44 00 00 */	lfd f2, double_to_int_hei_00007918@l(r4)
/* 000010F0 000011B4  90 1F 00 48 */	stw r0, 0x48(r31)
/* 000010F4 000011B8  80 9F 00 48 */	lwz r4, 0x48(r31)
/* 000010F8 000011BC  80 1E 00 84 */	lwz r0, 0x84(r30)
/* 000010FC 000011C0  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 00001100 000011C4  90 61 00 10 */	stw r3, 0x10(r1)
/* 00001104 000011C8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 00001108 000011CC  C0 7E 00 80 */	lfs f3, 0x80(r30)
/* 0000110C 000011D0  90 81 00 0C */	stw r4, 0xc(r1)
/* 00001110 000011D4  C0 9E 00 7C */	lfs f4, 0x7c(r30)
/* 00001114 000011D8  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 00001118 000011DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000111C 000011E0  EC 20 10 28 */	fsubs f1, f0, f2
/* 00001120 000011E4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 00001124 000011E8  EC 23 00 72 */	fmuls f1, f3, f1
/* 00001128 000011EC  EC 00 10 28 */	fsubs f0, f0, f2
/* 0000112C 000011F0  EC 01 00 24 */	fdivs f0, f1, f0
/* 00001130 000011F4  EC 24 00 2A */	fadds f1, f4, f0
/* 00001134 000011F8  4B FF EE CD */	bl reviseAngle
/* 00001138 000011FC  D0 3F 01 A0 */	stfs f1, 0x1a0(r31)
/* 0000113C 00001200  80 BF 00 48 */	lwz r5, 0x48(r31)
/* 00001140 00001204  80 1E 00 84 */	lwz r0, 0x84(r30)
/* 00001144 00001208  7C A4 FE 70 */	srawi r4, r5, 31
/* 00001148 0000120C  54 03 0F FE */	srwi r3, r0, 31
/* 0000114C 00001210  7C 00 28 10 */	subfc r0, r0, r5
/* 00001150 00001214  7C 64 19 14 */	adde r3, r4, r3
/* 00001154 00001218  48 00 00 1C */	b .L_00001170
.L_00001158:
/* 00001158 0000121C  C0 3F 01 A0 */	lfs f1, 0x1a0(r31)
/* 0000115C 00001220  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 00001160 00001224  EC 21 00 2A */	fadds f1, f1, f0
/* 00001164 00001228  4B FF EE 9D */	bl reviseAngle
/* 00001168 0000122C  D0 3F 01 A0 */	stfs f1, 0x1a0(r31)
/* 0000116C 00001230  38 60 00 02 */	li r3, 0x2
.L_00001170:
/* 00001170 00001234  BB A1 00 24 */	lmw r29, 0x24(r1)
/* 00001174 00001238  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00001178 0000123C  7C 08 03 A6 */	mtlr r0
/* 0000117C 00001240  38 21 00 30 */	addi r1, r1, 0x30
/* 00001180 00001244  4E 80 00 20 */	blr
.endfn mario_set_dir

# 0x00001488..0x00001A40 | size: 0x5B8
.rodata
.balign 8

# .rodata:0x0 | 0x1488 | size: 0x7
.obj str_w_bero_hei_00007368, local
	.string "w_bero"
.endobj str_w_bero_hei_00007368

# .rodata:0x7 | 0x148F | size: 0x1
.obj gap_03_0000148F_rodata, global
.hidden gap_03_0000148F_rodata
	.byte 0x00
.endobj gap_03_0000148F_rodata

# .rodata:0x8 | 0x1490 | size: 0x7
.obj str_hei_06_hei_00007370, local
	.string "hei_06"
.endobj str_hei_06_hei_00007370

# .rodata:0xF | 0x1497 | size: 0x1
.obj gap_03_00001497_rodata, global
.hidden gap_03_00001497_rodata
	.byte 0x00
.endobj gap_03_00001497_rodata

# .rodata:0x10 | 0x1498 | size: 0x7
.obj str_e_bero_hei_00007378, local
	.string "e_bero"
.endobj str_e_bero_hei_00007378

# .rodata:0x17 | 0x149F | size: 0x1
.obj gap_03_0000149F_rodata, global
.hidden gap_03_0000149F_rodata
	.byte 0x00
.endobj gap_03_0000149F_rodata

# .rodata:0x18 | 0x14A0 | size: 0x6
.obj str_dokan_hei_00007380, local
	.string "dokan"
.endobj str_dokan_hei_00007380

# .rodata:0x1E | 0x14A6 | size: 0x2
.obj gap_03_000014A6_rodata, global
.hidden gap_03_000014A6_rodata
	.2byte 0x0000
.endobj gap_03_000014A6_rodata

# .rodata:0x20 | 0x14A8 | size: 0x7
.obj str_hei_10_hei_00007388, local
	.string "hei_10"
.endobj str_hei_10_hei_00007388

# .rodata:0x27 | 0x14AF | size: 0x1
.obj gap_03_000014AF_rodata, global
.hidden gap_03_000014AF_rodata
	.byte 0x00
.endobj gap_03_000014AF_rodata

# .rodata:0x28 | 0x14B0 | size: 0x1C
.obj str_SFX_STG1_SINNOSUKE_L_hei_00007390, local
	.string "SFX_STG1_SINNOSUKE_LANDING2"
.endobj str_SFX_STG1_SINNOSUKE_L_hei_00007390

# .rodata:0x44 | 0x14CC | size: 0x1C
.obj str_SFX_STG1_SINNOSUKE_L_hei_000073ac, local
	.string "SFX_STG1_SINNOSUKE_LANDING3"
.endobj str_SFX_STG1_SINNOSUKE_L_hei_000073ac

# .rodata:0x60 | 0x14E8 | size: 0x10
.obj str_SFX_STG1_QUAKE1_hei_000073c8, local
	.string "SFX_STG1_QUAKE1"
.endobj str_SFX_STG1_QUAKE1_hei_000073c8

# .rodata:0x70 | 0x14F8 | size: 0x7
.obj str_DAIZA1_hei_000073d8, local
	.string "DAIZA1"
.endobj str_DAIZA1_hei_000073d8

# .rodata:0x77 | 0x14FF | size: 0x1
.obj gap_03_000014FF_rodata, global
.hidden gap_03_000014FF_rodata
	.byte 0x00
.endobj gap_03_000014FF_rodata

# .rodata:0x78 | 0x1500 | size: 0x10
.obj str_SFX_STG1_QUAKE2_hei_000073e0, local
	.string "SFX_STG1_QUAKE2"
.endobj str_SFX_STG1_QUAKE2_hei_000073e0

# .rodata:0x88 | 0x1510 | size: 0x14
.obj str_SFX_STG1_DSN_ROUND1_hei_000073f0, local
	.string "SFX_STG1_DSN_ROUND1"
.endobj str_SFX_STG1_DSN_ROUND1_hei_000073f0

# .rodata:0x9C | 0x1524 | size: 0x12
.obj str_SFX_DOKAN_APPEAR1_hei_00007404, local
	.string "SFX_DOKAN_APPEAR1"
.endobj str_SFX_DOKAN_APPEAR1_hei_00007404

# .rodata:0xAE | 0x1536 | size: 0x2
.obj gap_03_00001536_rodata, global
.hidden gap_03_00001536_rodata
	.2byte 0x0000
.endobj gap_03_00001536_rodata

# .rodata:0xB0 | 0x1538 | size: 0xC
.obj str_anm_sekizou_hei_00007418, local
	.string "anm_sekizou"
.endobj str_anm_sekizou_hei_00007418

# .rodata:0xBC | 0x1544 | size: 0xE
.obj str_a_sekizou_1_a_hei_00007424, local
	.string "a_sekizou_1_a"
.endobj str_a_sekizou_1_a_hei_00007424

# .rodata:0xCA | 0x1552 | size: 0x2
.obj gap_03_00001552_rodata, global
.hidden gap_03_00001552_rodata
	.2byte 0x0000
.endobj gap_03_00001552_rodata

# .rodata:0xCC | 0x1554 | size: 0xE
.obj str_a_sekizou_1_b_hei_00007434, local
	.string "a_sekizou_1_b"
.endobj str_a_sekizou_1_b_hei_00007434

# .rodata:0xDA | 0x1562 | size: 0x2
.obj gap_03_00001562_rodata, global
.hidden gap_03_00001562_rodata
	.2byte 0x0000
.endobj gap_03_00001562_rodata

# .rodata:0xDC | 0x1564 | size: 0xC
.obj str_a_sekizou_2_hei_00007444, local
	.string "a_sekizou_2"
.endobj str_a_sekizou_2_hei_00007444

# .rodata:0xE8 | 0x1570 | size: 0xC
.obj str_anm_kaiten1_hei_00007450, local
	.string "anm_kaiten1"
.endobj str_anm_kaiten1_hei_00007450

# .rodata:0xF4 | 0x157C | size: 0xC
.obj str_anm_kaiten3_hei_0000745c, local
	.string "anm_kaiten3"
.endobj str_anm_kaiten3_hei_0000745c

# .rodata:0x100 | 0x1588 | size: 0x1
.obj zero_hei_00007468, local
	.byte 0x00
.endobj zero_hei_00007468

# .rodata:0x101 | 0x1589 | size: 0x3
.obj gap_03_00001589_rodata, global
.hidden gap_03_00001589_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001589_rodata

# .rodata:0x104 | 0x158C | size: 0x9
.obj str_confetti_hei_0000746c, local
	.string "confetti"
.endobj str_confetti_hei_0000746c

# .rodata:0x10D | 0x1595 | size: 0x3
.obj gap_03_00001595_rodata, global
.hidden gap_03_00001595_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001595_rodata

# .rodata:0x110 | 0x1598 | size: 0xA
.obj str_dennshoku_hei_00007478, local
	.string "dennshoku"
.endobj str_dennshoku_hei_00007478

# .rodata:0x11A | 0x15A2 | size: 0x2
.obj gap_03_000015A2_rodata, global
.hidden gap_03_000015A2_rodata
	.2byte 0x0000
.endobj gap_03_000015A2_rodata

# .rodata:0x11C | 0x15A4 | size: 0xC
.obj str_dennshoku_2_hei_00007484, local
	.string "dennshoku_2"
.endobj str_dennshoku_2_hei_00007484

# .rodata:0x128 | 0x15B0 | size: 0xB
.obj str_anm_seikai_hei_00007490, local
	.string "anm_seikai"
.endobj str_anm_seikai_hei_00007490

# .rodata:0x133 | 0x15BB | size: 0x1
.obj gap_03_000015BB_rodata, global
.hidden gap_03_000015BB_rodata
	.byte 0x00
.endobj gap_03_000015BB_rodata

# .rodata:0x134 | 0x15BC | size: 0xD
.obj str_anm_fuseikai_hei_0000749c, local
	.string "anm_fuseikai"
.endobj str_anm_fuseikai_hei_0000749c

# .rodata:0x141 | 0x15C9 | size: 0x3
.obj gap_03_000015C9_rodata, global
.hidden gap_03_000015C9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000015C9_rodata

# .rodata:0x144 | 0x15CC | size: 0x11
.obj str_SFX_OFF1_PUZZLE1_hei_000074ac, local
	.string "SFX_OFF1_PUZZLE1"
.endobj str_SFX_OFF1_PUZZLE1_hei_000074ac

# .rodata:0x155 | 0x15DD | size: 0x3
.obj gap_03_000015DD_rodata, global
.hidden gap_03_000015DD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000015DD_rodata

# .rodata:0x158 | 0x15E0 | size: 0x16
.obj str_SFX_OFF1_PUZZLE_MOVE_hei_000074c0, local
	.string "SFX_OFF1_PUZZLE_MOVE1"
.endobj str_SFX_OFF1_PUZZLE_MOVE_hei_000074c0

# .rodata:0x16E | 0x15F6 | size: 0x2
.obj gap_03_000015F6_rodata, global
.hidden gap_03_000015F6_rodata
	.2byte 0x0000
.endobj gap_03_000015F6_rodata

# .rodata:0x170 | 0x15F8 | size: 0x11
.obj str_SFX_OFF1_PUZZLE2_hei_000074d8, local
	.string "SFX_OFF1_PUZZLE2"
.endobj str_SFX_OFF1_PUZZLE2_hei_000074d8

# .rodata:0x181 | 0x1609 | size: 0x3
.obj gap_03_00001609_rodata, global
.hidden gap_03_00001609_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001609_rodata

# .rodata:0x184 | 0x160C | size: 0xB
.obj str_OFF_d_pazu_hei_000074ec, local
	.string "OFF_d_pazu"
.endobj str_OFF_d_pazu_hei_000074ec

# .rodata:0x18F | 0x1617 | size: 0x1
.obj gap_03_00001617_rodata, global
.hidden gap_03_00001617_rodata
	.byte 0x00
.endobj gap_03_00001617_rodata

# .rodata:0x190 | 0x1618 | size: 0xC
.obj str_capture_img_hei_000074f8, local
	.string "capture_img"
.endobj str_capture_img_hei_000074f8

# .rodata:0x19C | 0x1624 | size: 0x4
.obj str_Z_1_hei_00007504, local
	.string "Z_1"
.endobj str_Z_1_hei_00007504

# .rodata:0x1A0 | 0x1628 | size: 0x7
.obj str_hei_07_hei_00007508, local
	.string "hei_07"
.endobj str_hei_07_hei_00007508

# .rodata:0x1A7 | 0x162F | size: 0x1
.obj gap_03_0000162F_rodata, global
.hidden gap_03_0000162F_rodata
	.byte 0x00
.endobj gap_03_0000162F_rodata

# .rodata:0x1A8 | 0x1630 | size: 0x9
.obj str_hei_07_2_hei_00007510, local
	.string "hei_07_2"
.endobj str_hei_07_2_hei_00007510

# .rodata:0x1B1 | 0x1639 | size: 0x3
.obj gap_03_00001639_rodata, global
.hidden gap_03_00001639_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001639_rodata

# .rodata:0x1B4 | 0x163C | size: 0x4
.obj str_A_1_hei_0000751c, local
	.string "A_1"
.endobj str_A_1_hei_0000751c

# .rodata:0x1B8 | 0x1640 | size: 0xB
.obj str_anm_kuti_1_hei_00007520, local
	.string "anm_kuti_1"
.endobj str_anm_kuti_1_hei_00007520

# .rodata:0x1C3 | 0x164B | size: 0x1
.obj gap_03_0000164B_rodata, global
.hidden gap_03_0000164B_rodata
	.byte 0x00
.endobj gap_03_0000164B_rodata

# .rodata:0x1C4 | 0x164C | size: 0xA
.obj str_offscreen_hei_0000752c, local
	.string "offscreen"
.endobj str_offscreen_hei_0000752c

# .rodata:0x1CE | 0x1656 | size: 0x2
.obj gap_03_00001656_rodata, global
.hidden gap_03_00001656_rodata
	.2byte 0x0000
.endobj gap_03_00001656_rodata

# .rodata:0x1D0 | 0x1658 | size: 0x4
.obj str_A_2_hei_00007538, local
	.string "A_2"
.endobj str_A_2_hei_00007538

# .rodata:0x1D4 | 0x165C | size: 0x9
.obj str_anm_1mon_hei_0000753c, local
	.string "anm_1mon"
.endobj str_anm_1mon_hei_0000753c

# .rodata:0x1DD | 0x1665 | size: 0x3
.obj gap_03_00001665_rodata, global
.hidden gap_03_00001665_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001665_rodata

# .rodata:0x1E0 | 0x1668 | size: 0xC
.obj str_stg1_hei_23_hei_00007548, local
	.string "stg1_hei_23"
.endobj str_stg1_hei_23_hei_00007548

# .rodata:0x1EC | 0x1674 | size: 0xE
.obj str_stg1_hei_q_01_hei_00007554, local
	.string "stg1_hei_q_01"
.endobj str_stg1_hei_q_01_hei_00007554

# .rodata:0x1FA | 0x1682 | size: 0x2
.obj gap_03_00001682_rodata, global
.hidden gap_03_00001682_rodata
	.2byte 0x0000
.endobj gap_03_00001682_rodata

# .rodata:0x1FC | 0x1684 | size: 0x9
.obj str_anm_2mon_hei_00007564, local
	.string "anm_2mon"
.endobj str_anm_2mon_hei_00007564

# .rodata:0x205 | 0x168D | size: 0x3
.obj gap_03_0000168D_rodata, global
.hidden gap_03_0000168D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000168D_rodata

# .rodata:0x208 | 0x1690 | size: 0xC
.obj str_stg1_hei_24_hei_00007570, local
	.string "stg1_hei_24"
.endobj str_stg1_hei_24_hei_00007570

# .rodata:0x214 | 0x169C | size: 0xE
.obj str_stg1_hei_q_02_hei_0000757c, local
	.string "stg1_hei_q_02"
.endobj str_stg1_hei_q_02_hei_0000757c

# .rodata:0x222 | 0x16AA | size: 0x2
.obj gap_03_000016AA_rodata, global
.hidden gap_03_000016AA_rodata
	.2byte 0x0000
.endobj gap_03_000016AA_rodata

# .rodata:0x224 | 0x16AC | size: 0x9
.obj str_anm_3mon_hei_0000758c, local
	.string "anm_3mon"
.endobj str_anm_3mon_hei_0000758c

# .rodata:0x22D | 0x16B5 | size: 0x3
.obj gap_03_000016B5_rodata, global
.hidden gap_03_000016B5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000016B5_rodata

# .rodata:0x230 | 0x16B8 | size: 0xC
.obj str_stg1_hei_25_hei_00007598, local
	.string "stg1_hei_25"
.endobj str_stg1_hei_25_hei_00007598

# .rodata:0x23C | 0x16C4 | size: 0xE
.obj str_stg1_hei_q_03_hei_000075a4, local
	.string "stg1_hei_q_03"
.endobj str_stg1_hei_q_03_hei_000075a4

# .rodata:0x24A | 0x16D2 | size: 0x2
.obj gap_03_000016D2_rodata, global
.hidden gap_03_000016D2_rodata
	.2byte 0x0000
.endobj gap_03_000016D2_rodata

# .rodata:0x24C | 0x16D4 | size: 0x9
.obj str_anm_4mon_hei_000075b4, local
	.string "anm_4mon"
.endobj str_anm_4mon_hei_000075b4

# .rodata:0x255 | 0x16DD | size: 0x3
.obj gap_03_000016DD_rodata, global
.hidden gap_03_000016DD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000016DD_rodata

# .rodata:0x258 | 0x16E0 | size: 0xC
.obj str_stg1_hei_26_hei_000075c0, local
	.string "stg1_hei_26"
.endobj str_stg1_hei_26_hei_000075c0

# .rodata:0x264 | 0x16EC | size: 0xE
.obj str_stg1_hei_q_04_hei_000075cc, local
	.string "stg1_hei_q_04"
.endobj str_stg1_hei_q_04_hei_000075cc

# .rodata:0x272 | 0x16FA | size: 0x2
.obj gap_03_000016FA_rodata, global
.hidden gap_03_000016FA_rodata
	.2byte 0x0000
.endobj gap_03_000016FA_rodata

# .rodata:0x274 | 0x16FC | size: 0x9
.obj str_anm_5mon_hei_000075dc, local
	.string "anm_5mon"
.endobj str_anm_5mon_hei_000075dc

# .rodata:0x27D | 0x1705 | size: 0x3
.obj gap_03_00001705_rodata, global
.hidden gap_03_00001705_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001705_rodata

# .rodata:0x280 | 0x1708 | size: 0xC
.obj str_stg1_hei_27_hei_000075e8, local
	.string "stg1_hei_27"
.endobj str_stg1_hei_27_hei_000075e8

# .rodata:0x28C | 0x1714 | size: 0xE
.obj str_stg1_hei_q_05_hei_000075f4, local
	.string "stg1_hei_q_05"
.endobj str_stg1_hei_q_05_hei_000075f4

# .rodata:0x29A | 0x1722 | size: 0x2
.obj gap_03_00001722_rodata, global
.hidden gap_03_00001722_rodata
	.2byte 0x0000
.endobj gap_03_00001722_rodata

# .rodata:0x29C | 0x1724 | size: 0x9
.obj str_anm_6mon_hei_00007604, local
	.string "anm_6mon"
.endobj str_anm_6mon_hei_00007604

# .rodata:0x2A5 | 0x172D | size: 0x3
.obj gap_03_0000172D_rodata, global
.hidden gap_03_0000172D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000172D_rodata

# .rodata:0x2A8 | 0x1730 | size: 0xC
.obj str_stg1_hei_28_hei_00007610, local
	.string "stg1_hei_28"
.endobj str_stg1_hei_28_hei_00007610

# .rodata:0x2B4 | 0x173C | size: 0xE
.obj str_stg1_hei_q_06_hei_0000761c, local
	.string "stg1_hei_q_06"
.endobj str_stg1_hei_q_06_hei_0000761c

# .rodata:0x2C2 | 0x174A | size: 0x2
.obj gap_03_0000174A_rodata, global
.hidden gap_03_0000174A_rodata
	.2byte 0x0000
.endobj gap_03_0000174A_rodata

# .rodata:0x2C4 | 0x174C | size: 0x9
.obj str_anm_7mon_hei_0000762c, local
	.string "anm_7mon"
.endobj str_anm_7mon_hei_0000762c

# .rodata:0x2CD | 0x1755 | size: 0x3
.obj gap_03_00001755_rodata, global
.hidden gap_03_00001755_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001755_rodata

# .rodata:0x2D0 | 0x1758 | size: 0xC
.obj str_stg1_hei_29_hei_00007638, local
	.string "stg1_hei_29"
.endobj str_stg1_hei_29_hei_00007638

# .rodata:0x2DC | 0x1764 | size: 0xE
.obj str_stg1_hei_q_07_hei_00007644, local
	.string "stg1_hei_q_07"
.endobj str_stg1_hei_q_07_hei_00007644

# .rodata:0x2EA | 0x1772 | size: 0x2
.obj gap_03_00001772_rodata, global
.hidden gap_03_00001772_rodata
	.2byte 0x0000
.endobj gap_03_00001772_rodata

# .rodata:0x2EC | 0x1774 | size: 0x9
.obj str_anm_8mon_hei_00007654, local
	.string "anm_8mon"
.endobj str_anm_8mon_hei_00007654

# .rodata:0x2F5 | 0x177D | size: 0x3
.obj gap_03_0000177D_rodata, global
.hidden gap_03_0000177D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000177D_rodata

# .rodata:0x2F8 | 0x1780 | size: 0xC
.obj str_stg1_hei_30_hei_00007660, local
	.string "stg1_hei_30"
.endobj str_stg1_hei_30_hei_00007660

# .rodata:0x304 | 0x178C | size: 0xE
.obj str_stg1_hei_q_08_hei_0000766c, local
	.string "stg1_hei_q_08"
.endobj str_stg1_hei_q_08_hei_0000766c

# .rodata:0x312 | 0x179A | size: 0x2
.obj gap_03_0000179A_rodata, global
.hidden gap_03_0000179A_rodata
	.2byte 0x0000
.endobj gap_03_0000179A_rodata

# .rodata:0x314 | 0x179C | size: 0xA
.obj str_fukidashi_hei_0000767c, local
	.string "fukidashi"
.endobj str_fukidashi_hei_0000767c

# .rodata:0x31E | 0x17A6 | size: 0x2
.obj gap_03_000017A6_rodata, global
.hidden gap_03_000017A6_rodata
	.2byte 0x0000
.endobj gap_03_000017A6_rodata

# .rodata:0x320 | 0x17A8 | size: 0x13
.obj str_SFX_QUESTION_MARK1_hei_00007688, local
	.string "SFX_QUESTION_MARK1"
.endobj str_SFX_QUESTION_MARK1_hei_00007688

# .rodata:0x333 | 0x17BB | size: 0x1
.obj gap_03_000017BB_rodata, global
.hidden gap_03_000017BB_rodata
	.byte 0x00
.endobj gap_03_000017BB_rodata

# .rodata:0x334 | 0x17BC | size: 0x1B
.obj str_SFX_VOICE_MARIO_SURP_hei_0000769c, local
	.string "SFX_VOICE_MARIO_SURPRISED1"
.endobj str_SFX_VOICE_MARIO_SURP_hei_0000769c

# .rodata:0x34F | 0x17D7 | size: 0x1
.obj gap_03_000017D7_rodata, global
.hidden gap_03_000017D7_rodata
	.byte 0x00
.endobj gap_03_000017D7_rodata

# .rodata:0x350 | 0x17D8 | size: 0x6
.obj str_M_N_7_hei_000076b8, local
	.string "M_N_7"
.endobj str_M_N_7_hei_000076b8

# .rodata:0x356 | 0x17DE | size: 0x2
.obj gap_03_000017DE_rodata, global
.hidden gap_03_000017DE_rodata
	.2byte 0x0000
.endobj gap_03_000017DE_rodata

# .rodata:0x358 | 0x17E0 | size: 0x6
.obj str_M_S_1_hei_000076c0, local
	.string "M_S_1"
.endobj str_M_S_1_hei_000076c0

# .rodata:0x35E | 0x17E6 | size: 0x2
.obj gap_03_000017E6_rodata, global
.hidden gap_03_000017E6_rodata
	.2byte 0x0000
.endobj gap_03_000017E6_rodata

# .rodata:0x360 | 0x17E8 | size: 0xD
.obj str_anm_dossun_1_hei_000076c8, local
	.string "anm_dossun_1"
.endobj str_anm_dossun_1_hei_000076c8

# .rodata:0x36D | 0x17F5 | size: 0x3
.obj gap_03_000017F5_rodata, global
.hidden gap_03_000017F5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000017F5_rodata

# .rodata:0x370 | 0x17F8 | size: 0xC
.obj str_stg1_hei_20_hei_000076d8, local
	.string "stg1_hei_20"
.endobj str_stg1_hei_20_hei_000076d8

# .rodata:0x37C | 0x1804 | size: 0xF
.obj str_stg1_hei_20_01_hei_000076e4, local
	.string "stg1_hei_20_01"
.endobj str_stg1_hei_20_01_hei_000076e4

# .rodata:0x38B | 0x1813 | size: 0x1
.obj gap_03_00001813_rodata, global
.hidden gap_03_00001813_rodata
	.byte 0x00
.endobj gap_03_00001813_rodata

# .rodata:0x38C | 0x1814 | size: 0xF
.obj str_stg1_hei_yn_01_hei_000076f4, local
	.string "stg1_hei_yn_01"
.endobj str_stg1_hei_yn_01_hei_000076f4

# .rodata:0x39B | 0x1823 | size: 0x1
.obj gap_03_00001823_rodata, global
.hidden gap_03_00001823_rodata
	.byte 0x00
.endobj gap_03_00001823_rodata

# .rodata:0x39C | 0x1824 | size: 0xC
.obj str_stg1_hei_21_hei_00007704, local
	.string "stg1_hei_21"
.endobj str_stg1_hei_21_hei_00007704

# .rodata:0x3A8 | 0x1830 | size: 0xD
.obj str_anm_dossun_2_hei_00007710, local
	.string "anm_dossun_2"
.endobj str_anm_dossun_2_hei_00007710

# .rodata:0x3B5 | 0x183D | size: 0x3
.obj gap_03_0000183D_rodata, global
.hidden gap_03_0000183D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000183D_rodata

# .rodata:0x3B8 | 0x1840 | size: 0xE
.obj str_BGM_STG1_HEI1_hei_00007720, local
	.string "BGM_STG1_HEI1"
.endobj str_BGM_STG1_HEI1_hei_00007720

# .rodata:0x3C6 | 0x184E | size: 0x2
.obj gap_03_0000184E_rodata, global
.hidden gap_03_0000184E_rodata
	.2byte 0x0000
.endobj gap_03_0000184E_rodata

# .rodata:0x3C8 | 0x1850 | size: 0xC
.obj str_stg1_hei_22_hei_00007730, local
	.string "stg1_hei_22"
.endobj str_stg1_hei_22_hei_00007730

# .rodata:0x3D4 | 0x185C | size: 0xD
.obj str_anm_denshoku_hei_0000773c, local
	.string "anm_denshoku"
.endobj str_anm_denshoku_hei_0000773c

# .rodata:0x3E1 | 0x1869 | size: 0x3
.obj gap_03_00001869_rodata, global
.hidden gap_03_00001869_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001869_rodata

# .rodata:0x3E4 | 0x186C | size: 0xD
.obj str_anm_mamekyuu_hei_0000774c, local
	.string "anm_mamekyuu"
.endobj str_anm_mamekyuu_hei_0000774c

# .rodata:0x3F1 | 0x1879 | size: 0x3
.obj gap_03_00001879_rodata, global
.hidden gap_03_00001879_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001879_rodata

# .rodata:0x3F4 | 0x187C | size: 0xE
.obj str_BGM_EVT_QUIZ1_hei_0000775c, local
	.string "BGM_EVT_QUIZ1"
.endobj str_BGM_EVT_QUIZ1_hei_0000775c

# .rodata:0x402 | 0x188A | size: 0x2
.obj gap_03_0000188A_rodata, global
.hidden gap_03_0000188A_rodata
	.2byte 0x0000
.endobj gap_03_0000188A_rodata

# .rodata:0x404 | 0x188C | size: 0x10
.obj str_SFX_QUIZ_START1_hei_0000776c, local
	.string "SFX_QUIZ_START1"
.endobj str_SFX_QUIZ_START1_hei_0000776c

# .rodata:0x414 | 0x189C | size: 0xE
.obj str_BGM_EVT_QUIZ2_hei_0000777c, local
	.string "BGM_EVT_QUIZ2"
.endobj str_BGM_EVT_QUIZ2_hei_0000777c

# .rodata:0x422 | 0x18AA | size: 0x2
.obj gap_03_000018AA_rodata, global
.hidden gap_03_000018AA_rodata
	.2byte 0x0000
.endobj gap_03_000018AA_rodata

# .rodata:0x424 | 0x18AC | size: 0xC
.obj str_stg1_hei_31_hei_0000778c, local
	.string "stg1_hei_31"
.endobj str_stg1_hei_31_hei_0000778c

# .rodata:0x430 | 0x18B8 | size: 0x12
.obj str_stg1_hei_yn_01_01_hei_00007798, local
	.string "stg1_hei_yn_01_01"
.endobj str_stg1_hei_yn_01_01_hei_00007798

# .rodata:0x442 | 0x18CA | size: 0x2
.obj gap_03_000018CA_rodata, global
.hidden gap_03_000018CA_rodata
	.2byte 0x0000
.endobj gap_03_000018CA_rodata

# .rodata:0x444 | 0x18CC | size: 0xC
.obj str_stg1_hei_32_hei_000077ac, local
	.string "stg1_hei_32"
.endobj str_stg1_hei_32_hei_000077ac

# .rodata:0x450 | 0x18D8 | size: 0x10
.obj str_SFX_GOOD_SOUND2_hei_000077b8, local
	.string "SFX_GOOD_SOUND2"
.endobj str_SFX_GOOD_SOUND2_hei_000077b8

# .rodata:0x460 | 0x18E8 | size: 0x10
.obj str_SFX_GOOD_SOUND1_hei_000077c8, local
	.string "SFX_GOOD_SOUND1"
.endobj str_SFX_GOOD_SOUND1_hei_000077c8

# .rodata:0x470 | 0x18F8 | size: 0xC
.obj str_stg1_hei_33_hei_000077d8, local
	.string "stg1_hei_33"
.endobj str_stg1_hei_33_hei_000077d8

# .rodata:0x47C | 0x1904 | size: 0xC
.obj str_stg1_hei_34_hei_000077e4, local
	.string "stg1_hei_34"
.endobj str_stg1_hei_34_hei_000077e4

# .rodata:0x488 | 0x1910 | size: 0xC
.obj str_stg1_hei_35_hei_000077f0, local
	.string "stg1_hei_35"
.endobj str_stg1_hei_35_hei_000077f0

# .rodata:0x494 | 0x191C | size: 0xF
.obj str_stg1_hei_35_01_hei_000077fc, local
	.string "stg1_hei_35_01"
.endobj str_stg1_hei_35_01_hei_000077fc

# .rodata:0x4A3 | 0x192B | size: 0x1
.obj gap_03_0000192B_rodata, global
.hidden gap_03_0000192B_rodata
	.byte 0x00
.endobj gap_03_0000192B_rodata

# .rodata:0x4A4 | 0x192C | size: 0xC
.obj str_stg1_hei_41_hei_0000780c, local
	.string "stg1_hei_41"
.endobj str_stg1_hei_41_hei_0000780c

# .rodata:0x4B0 | 0x1938 | size: 0xF
.obj str_SFX_BAD_SOUND2_hei_00007818, local
	.string "SFX_BAD_SOUND2"
.endobj str_SFX_BAD_SOUND2_hei_00007818

# .rodata:0x4BF | 0x1947 | size: 0x1
.obj gap_03_00001947_rodata, global
.hidden gap_03_00001947_rodata
	.byte 0x00
.endobj gap_03_00001947_rodata

# .rodata:0x4C0 | 0x1948 | size: 0xF
.obj str_SFX_BAD_SOUND1_hei_00007828, local
	.string "SFX_BAD_SOUND1"
.endobj str_SFX_BAD_SOUND1_hei_00007828

# .rodata:0x4CF | 0x1957 | size: 0x1
.obj gap_03_00001957_rodata, global
.hidden gap_03_00001957_rodata
	.byte 0x00
.endobj gap_03_00001957_rodata

# .rodata:0x4D0 | 0x1958 | size: 0xC
.obj str_stg1_hei_36_hei_00007838, local
	.string "stg1_hei_36"
.endobj str_stg1_hei_36_hei_00007838

# .rodata:0x4DC | 0x1964 | size: 0xC
.obj str_stg1_hei_37_hei_00007844, local
	.string "stg1_hei_37"
.endobj str_stg1_hei_37_hei_00007844

# .rodata:0x4E8 | 0x1970 | size: 0xC
.obj str_stg1_hei_38_hei_00007850, local
	.string "stg1_hei_38"
.endobj str_stg1_hei_38_hei_00007850

# .rodata:0x4F4 | 0x197C | size: 0xF
.obj str_stg1_hei_38_01_hei_0000785c, local
	.string "stg1_hei_38_01"
.endobj str_stg1_hei_38_01_hei_0000785c

# .rodata:0x503 | 0x198B | size: 0x1
.obj gap_03_0000198B_rodata, global
.hidden gap_03_0000198B_rodata
	.byte 0x00
.endobj gap_03_0000198B_rodata

# .rodata:0x504 | 0x198C | size: 0xC
.obj str_シンエモン1_hei_0000786c, local
	.4byte 0x83568393
	.4byte 0x83478382
	.4byte 0x83933100
.endobj str_シンエモン1_hei_0000786c

# .rodata:0x510 | 0x1998 | size: 0xC
.obj str_シンエモン2_hei_00007878, local
	.4byte 0x83568393
	.4byte 0x83478382
	.4byte 0x83933200
.endobj str_シンエモン2_hei_00007878

# .rodata:0x51C | 0x19A4 | size: 0xC
.obj str_シンエモン3_hei_00007884, local
	.4byte 0x83568393
	.4byte 0x83478382
	.4byte 0x83933300
.endobj str_シンエモン3_hei_00007884

# .rodata:0x528 | 0x19B0 | size: 0xC
.obj str_シンエモン4_hei_00007890, local
	.4byte 0x83568393
	.4byte 0x83478382
	.4byte 0x83933400
.endobj str_シンエモン4_hei_00007890

# .rodata:0x534 | 0x19BC | size: 0xC
.obj str_stg1_hei_39_hei_0000789c, local
	.string "stg1_hei_39"
.endobj str_stg1_hei_39_hei_0000789c

# .rodata:0x540 | 0x19C8 | size: 0x1D
.obj str_SFX_VOICE_MARIO_SURP_hei_000078a8, local
	.string "SFX_VOICE_MARIO_SURPRISED1_2"
.endobj str_SFX_VOICE_MARIO_SURP_hei_000078a8

# .rodata:0x55D | 0x19E5 | size: 0x3
.obj gap_03_000019E5_rodata, global
.hidden gap_03_000019E5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000019E5_rodata

# .rodata:0x560 | 0x19E8 | size: 0xC
.obj str_stg1_hei_40_hei_000078c8, local
	.string "stg1_hei_40"
.endobj str_stg1_hei_40_hei_000078c8

# .rodata:0x56C | 0x19F4 | size: 0xE
.obj str_ENV_STG1_HEI4_hei_000078d4, local
	.string "ENV_STG1_HEI4"
.endobj str_ENV_STG1_HEI4_hei_000078d4

# .rodata:0x57A | 0x1A02 | size: 0x2
.obj gap_03_00001A02_rodata, global
.hidden gap_03_00001A02_rodata
	.2byte 0x0000
.endobj gap_03_00001A02_rodata

# .rodata:0x57C | 0x1A04 | size: 0xB
.obj str_anm_hokori_hei_000078e4, local
	.string "anm_hokori"
.endobj str_anm_hokori_hei_000078e4

# .rodata:0x587 | 0x1A0F | size: 0x1
.obj gap_03_00001A0F_rodata, global
.hidden gap_03_00001A0F_rodata
	.byte 0x00
.endobj gap_03_00001A0F_rodata

# .rodata:0x588 | 0x1A10 | size: 0xA
.obj str_mobj_save_hei_000078f0, local
	.string "mobj_save"
.endobj str_mobj_save_hei_000078f0

# .rodata:0x592 | 0x1A1A | size: 0x2
.obj gap_03_00001A1A_rodata, global
.hidden gap_03_00001A1A_rodata
	.2byte 0x0000
.endobj gap_03_00001A1A_rodata

# .rodata:0x594 | 0x1A1C | size: 0x9
.obj str_anm_egao_hei_000078fc, local
	.string "anm_egao"
.endobj str_anm_egao_hei_000078fc
	.byte 0x00, 0x00, 0x00

# .rodata:0x5A0 | 0x1A28 | size: 0x4
.obj float_neg180_hei_00007908, local
	.float -180
.endobj float_neg180_hei_00007908

# .rodata:0x5A4 | 0x1A2C | size: 0x4
.obj float_360_hei_0000790c, local
	.float 360
.endobj float_360_hei_0000790c

# .rodata:0x5A8 | 0x1A30 | size: 0x4
.obj float_180_hei_00007910, local
	.float 180
.endobj float_180_hei_00007910
	.4byte 0x00000000

# .rodata:0x5B0 | 0x1A38 | size: 0x8
.obj double_to_int_hei_00007918, local
	.double 4503601774854144
.endobj double_to_int_hei_00007918

# 0x000074D8..0x000094F0 | size: 0x2018
.data
.balign 8

# .data:0x0 | 0x74D8 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x74E0 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x74E4 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x74E8 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x74EC | size: 0x4
.obj gap_04_000074EC_data, global
.hidden gap_04_000074EC_data
	.4byte 0x00000000
.endobj gap_04_000074EC_data

# .data:0x18 | 0x74F0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x74F8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x74FC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x7500 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x7508 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x750C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x7510 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x7514 | size: 0x4
.obj gap_04_00007514_data, global
.hidden gap_04_00007514_data
	.4byte 0x00000000
.endobj gap_04_00007514_data

# .data:0x40 | 0x7518 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x7520 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x7524 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x7528 | size: 0xB4
.obj bero_entry_data, local
	.4byte str_w_bero_hei_00007368
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_hei_06_hei_00007370
	.4byte str_e_bero_hei_00007378
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan_hei_00007380
	.4byte 0x00020000
	.4byte 0x00000009
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte str_hei_10_hei_00007388
	.4byte str_dokan_hei_00007380
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

# .data:0x104 | 0x75DC | size: 0xD4
.obj npc_jump, local
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C8A
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x00000001
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x00010005
	.4byte 0x0000001F
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte 0xFE363C8A
	.4byte 0xFE363C85
	.4byte 0xFE363C80
	.4byte 0xFE363C87
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C8A
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG1_SINNOSUKE_L_hei_00007390
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG1_SINNOSUKE_L_hei_000073ac
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A85
	.4byte 0xF24A7A80
	.4byte 0x000000C8
	.4byte 0x00000002
	.4byte 0x00000001
.endobj npc_jump

# .data:0x1D8 | 0x76B0 | size: 0x20
.obj dokan_shake, local
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A82
	.4byte 0xF24A7A80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dokan_shake

# .data:0x1F8 | 0x76D0 | size: 0x50
.obj dokan_shake2, local
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A81
	.4byte 0xF24A7A80
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A81
	.4byte 0xF24A7A80
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A80
	.4byte 0xF24A7A80
	.4byte 0x000001F4
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dokan_shake2

# .data:0x248 | 0x7720 | size: 0x220
.obj sekizou_move, local
	.4byte 0x0002005D
	.4byte dokan_shake
	.4byte 0xFE363C8A
	.4byte 0x0001006C
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG1_QUAKE1_hei_000073c8
	.4byte 0xFD050F8F
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_DAIZA1_hei_000073d8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_snd_sfx_pos
	.4byte 0xFD050F8F
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000FA0
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_DAIZA1_hei_000073d8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG1_QUAKE2_hei_000073e0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000FA0
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7AA8
	.4byte 0xF24A7A80
	.4byte 0x00000064
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A94
	.4byte 0xF24A7A80
	.4byte 0x00000064
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A8A
	.4byte 0xF24A7A80
	.4byte 0x00000064
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_DAIZA1_hei_000073d8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG1_DSN_ROUND1_hei_000073f0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C8A
	.4byte 0x0001000A
	.4byte 0x00000FA0
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8A
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_DOKAN_APPEAR1_hei_00007404
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_anm_sekizou_hei_00007418
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_checkanim
	.4byte str_anm_sekizou_hei_00007418
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0001000A
	.4byte 0xFE363C81
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFD050F8F
	.4byte 0x0001005F
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_a_sekizou_1_a_hei_00007424
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_a_sekizou_1_b_hei_00007434
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_a_sekizou_2_hei_00007444
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0001005F
	.4byte 0xFE363C8A
	.4byte 0x0001005C
	.4byte dokan_shake2
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_dokan_hei_00007380
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x00000002
	.4byte 0x00000001
.endobj sekizou_move

# .data:0x468 | 0x7940 | size: 0xB8
.obj animation_wait, local
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_checkanim
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000006B
	.4byte 0x0002003C
	.4byte 0xFE363C82
	.4byte 0xF24A7DB3
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0xFE363C82
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_anm_kaiten1_hei_00007450
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG1_QUAKE2_hei_000073e0
	.4byte 0x0000006E
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_anm_kaiten3_hei_0000745c
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG1_QUAKE2_hei_000073e0
	.4byte 0x0000006E
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0xFE363C82
	.4byte 0x00000002
	.4byte 0x00000001
.endobj animation_wait

# .data:0x520 | 0x79F8 | size: 0xD0
.obj shake_evt, local
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x0000001E
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF25A1A80
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x00000064
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x0000000B
	.4byte 0x0000000A
	.4byte 0x00000005
	.4byte 0x0000000F
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF25A1A80
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x00000064
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj shake_evt

# .data:0x5F0 | 0x7AC8 | size: 0xB8
.obj seikai_anime, local
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000096
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_hei_00007468
	.4byte str_confetti_hei_0000746c
	.4byte 0x00000003
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_dennshoku_hei_00007478
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_dennshoku_2_hei_00007484
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_anm_seikai_hei_00007490
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000708
	.4byte 0x00000002
	.4byte 0x00000001
.endobj seikai_anime

# .data:0x6A8 | 0x7B80 | size: 0x4C
.obj seikai_anime_stop, local
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_dennshoku_hei_00007478
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_dennshoku_2_hei_00007484
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_anm_seikai_hei_00007490
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj seikai_anime_stop

# .data:0x6F4 | 0x7BCC | size: 0x54
.obj fuseikai_anime, local
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_dennshoku_hei_00007478
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_dennshoku_2_hei_00007484
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_anm_fuseikai_hei_0000749c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x00000002
	.4byte 0x00000001
.endobj fuseikai_anime

# .data:0x748 | 0x7C20 | size: 0x4C
.obj fuseikai_anime_stop, local
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_dennshoku_hei_00007478
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_dennshoku_2_hei_00007484
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_anm_fuseikai_hei_0000749c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj fuseikai_anime_stop

# .data:0x794 | 0x7C6C | size: 0x1D0
.obj evt_down_snd, local
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_OFF1_PUZZLE1_hei_000074ac
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000029A
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_OFF1_PUZZLE1_hei_000074ac
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000014D
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_OFF1_PUZZLE1_hei_000074ac
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_OFF1_PUZZLE1_hei_000074ac
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000053
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_OFF1_PUZZLE1_hei_000074ac
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000B7
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_OFF1_PUZZLE1_hei_000074ac
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000A6
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_OFF1_PUZZLE1_hei_000074ac
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000053
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_OFF1_PUZZLE1_hei_000074ac
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000096
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_OFF1_PUZZLE1_hei_000074ac
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000010
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_OFF1_PUZZLE1_hei_000074ac
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000010
	.4byte 0x0001000A
	.4byte 0x00000085
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_OFF1_PUZZLE1_hei_000074ac
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000010
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_OFF1_PUZZLE1_hei_000074ac
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000010
	.4byte 0x0001000A
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_OFF1_PUZZLE1_hei_000074ac
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000010
	.4byte 0x0001000A
	.4byte 0x00000032
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_OFF1_PUZZLE1_hei_000074ac
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000010
	.4byte 0x0001000A
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_OFF1_PUZZLE1_hei_000074ac
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000053
	.4byte 0x0001000A
	.4byte 0x00000032
	.4byte 0x0001000A
	.4byte 0x00000010
	.4byte 0x0001000A
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x00000010
	.4byte 0x0001000A
	.4byte 0x00000010
	.4byte 0x0001000A
	.4byte 0x00000010
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_down_snd

# .data:0x964 | 0x7E3C | size: 0x30
.obj evt_up_snd_, local
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_OFF1_PUZZLE_MOVE_hei_000074c0
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000016E
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_OFF1_PUZZLE2_hei_000074d8
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_up_snd_

# .data:0x994 | 0x7E6C | size: 0x130
.obj evt_up_snd__, local
	.4byte 0x0001000A
	.4byte 0x00000010
	.4byte 0x0001000A
	.4byte 0x00000010
	.4byte 0x0001000A
	.4byte 0x00000010
	.4byte 0x0001000A
	.4byte 0x00000010
	.4byte 0x0001000A
	.4byte 0x00000010
	.4byte 0x0001000A
	.4byte 0x00000010
	.4byte 0x0001000A
	.4byte 0x00000010
	.4byte 0x0001000A
	.4byte 0x00000032
	.4byte 0x0001000A
	.4byte 0x00000053
	.4byte 0x0001000A
	.4byte 0x00000010
	.4byte 0x0001000A
	.4byte 0x00000010
	.4byte 0x0001000A
	.4byte 0x00000010
	.4byte 0x0001000A
	.4byte 0x00000032
	.4byte 0x0001000A
	.4byte 0x00000010
	.4byte 0x0001000A
	.4byte 0x00000032
	.4byte 0x0001005C
	.4byte evt_up_snd_
	.4byte 0x0001000A
	.4byte 0x00000010
	.4byte 0x0001005C
	.4byte evt_up_snd_
	.4byte 0x0001000A
	.4byte 0x00000053
	.4byte 0x0001005C
	.4byte evt_up_snd_
	.4byte 0x0001000A
	.4byte 0x00000032
	.4byte 0x0001005C
	.4byte evt_up_snd_
	.4byte 0x0001000A
	.4byte 0x00000010
	.4byte 0x0001000A
	.4byte 0x00000010
	.4byte 0x0001005C
	.4byte evt_up_snd_
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0001005C
	.4byte evt_up_snd_
	.4byte 0x0001000A
	.4byte 0x000000B7
	.4byte 0x0001005C
	.4byte evt_up_snd_
	.4byte 0x0001000A
	.4byte 0x00000053
	.4byte 0x0001005C
	.4byte evt_up_snd_
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0001005C
	.4byte evt_up_snd_
	.4byte 0x0001000A
	.4byte 0x0000014D
	.4byte 0x0001005C
	.4byte evt_up_snd_
	.4byte 0x0001000A
	.4byte 0x0000029A
	.4byte 0x0001005C
	.4byte evt_up_snd_
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_up_snd__

# .data:0xAC4 | 0x7F9C | size: 0x194
.obj offscreen_to_quiz, local
	.4byte 0x0002005B
	.4byte evt_paper_entry
	.4byte str_OFF_d_pazu_hei_000074ec
	.4byte 0x0002005B
	.4byte evt_img_entry
	.4byte str_capture_img_hei_000074f8
	.4byte 0x0003005B
	.4byte evt_img_set_paper
	.4byte str_capture_img_hei_000074f8
	.4byte str_OFF_d_pazu_hei_000074ec
	.4byte 0x0003005B
	.4byte evt_img_set_paper_anim
	.4byte str_capture_img_hei_000074f8
	.4byte str_Z_1_hei_00007504
	.4byte 0x0009005B
	.4byte evt_img_alloc_capture
	.4byte str_capture_img_hei_000074f8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000260
	.4byte 0x000001E0
	.4byte 0x0002005B
	.4byte evt_img_clear_virtual_point
	.4byte str_capture_img_hei_000074f8
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_hei_07_hei_00007508
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_hei_07_2_hei_00007510
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_dennshoku_hei_00007478
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_dennshoku_2_hei_00007484
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFFAB
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFF9C
	.4byte 0x00000014
	.4byte 0xFFFFFFF6
	.4byte 0x00000021
	.4byte 0x0001005C
	.4byte evt_down_snd
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_capture_img_hei_000074f8
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_img_set_paper_anim
	.4byte str_capture_img_hei_000074f8
	.4byte str_A_1_hei_0000751c
	.4byte 0x0002005B
	.4byte evt_img_wait_animend
	.4byte str_capture_img_hei_000074f8
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_capture_img_hei_000074f8
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj offscreen_to_quiz

# .data:0xC58 | 0x8130 | size: 0x190
.obj offscreen_to_normal, local
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_anm_kuti_1_hei_00007520
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_img_free_capture
	.4byte str_capture_img_hei_000074f8
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_offscreen_entry
	.4byte str_offscreen_hei_0000752c
	.4byte 0x0004005B
	.4byte evt_mapobj_set_offscreen
	.4byte 0x00000001
	.4byte str_hei_07_hei_00007508
	.4byte str_offscreen_hei_0000752c
	.4byte 0x0009005B
	.4byte evt_img_alloc_capture
	.4byte str_capture_img_hei_000074f8
	.4byte 0x00000000
	.4byte str_offscreen_hei_0000752c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000260
	.4byte 0x000001E0
	.4byte 0x0001005C
	.4byte evt_up_snd__
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_capture_img_hei_000074f8
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_img_clear_virtual_point
	.4byte str_capture_img_hei_000074f8
	.4byte 0x0003005B
	.4byte evt_img_set_paper_anim
	.4byte str_capture_img_hei_000074f8
	.4byte str_A_2_hei_00007538
	.4byte 0x0002005B
	.4byte evt_img_wait_animend
	.4byte str_capture_img_hei_000074f8
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_capture_img_hei_000074f8
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_img_release
	.4byte str_capture_img_hei_000074f8
	.4byte 0x0003005B
	.4byte evt_mapobj_clear_offscreen
	.4byte 0x00000001
	.4byte str_hei_07_hei_00007508
	.4byte 0x0002005B
	.4byte evt_offscreen_delete
	.4byte str_offscreen_hei_0000752c
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_hei_07_hei_00007508
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_hei_07_2_hei_00007510
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj offscreen_to_normal

# .data:0xDE8 | 0x82C0 | size: 0x80
.obj quiz_data, local
	.4byte str_anm_1mon_hei_0000753c
	.4byte str_stg1_hei_23_hei_00007548
	.4byte str_stg1_hei_q_01_hei_00007554
	.4byte 0x00000000
	.4byte str_anm_2mon_hei_00007564
	.4byte str_stg1_hei_24_hei_00007570
	.4byte str_stg1_hei_q_02_hei_0000757c
	.4byte 0x00000002
	.4byte str_anm_3mon_hei_0000758c
	.4byte str_stg1_hei_25_hei_00007598
	.4byte str_stg1_hei_q_03_hei_000075a4
	.4byte 0x00000003
	.4byte str_anm_4mon_hei_000075b4
	.4byte str_stg1_hei_26_hei_000075c0
	.4byte str_stg1_hei_q_04_hei_000075cc
	.4byte 0x00000001
	.4byte str_anm_5mon_hei_000075dc
	.4byte str_stg1_hei_27_hei_000075e8
	.4byte str_stg1_hei_q_05_hei_000075f4
	.4byte 0x00000002
	.4byte str_anm_6mon_hei_00007604
	.4byte str_stg1_hei_28_hei_00007610
	.4byte str_stg1_hei_q_06_hei_0000761c
	.4byte 0x00000000
	.4byte str_anm_7mon_hei_0000762c
	.4byte str_stg1_hei_29_hei_00007638
	.4byte str_stg1_hei_q_07_hei_00007644
	.4byte 0x00000001
	.4byte str_anm_8mon_hei_00007654
	.4byte str_stg1_hei_30_hei_00007660
	.4byte str_stg1_hei_q_08_hei_0000766c
	.4byte 0x00000000
.endobj quiz_data

# .data:0xE68 | 0x8340 | size: 0xFE8
.obj a_sekizou_1, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFD050F80
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000000
	.4byte str_fukidashi_hei_0000767c
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_QUESTION_MARK1_hei_00007688
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG1_QUAKE1_hei_000073c8
	.4byte 0xFD050F8A
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_SURP_hei_0000769c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_7_hei_000076b8
	.4byte 0x0000006D
	.4byte 0x0002005D
	.4byte shake_evt
	.4byte 0xFE363C8A
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF43
	.4byte 0x00000048
	.4byte 0x000000CF
	.4byte 0x000000DB
	.4byte 0x00000045
	.4byte 0xFFFFFFB0
	.4byte 0x00000BB8
	.4byte 0x0000000B
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte mario_set_dir
	.4byte 0x0000002D
	.4byte 0x00000064
	.4byte 0x0000006D
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0002006A
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_hei_000076c0
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFD050F8A
	.4byte 0x00000020
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF43
	.4byte 0x00000048
	.4byte 0x000000CF
	.4byte 0x000000DB
	.4byte 0x00000045
	.4byte 0xFFFFFFB0
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0003005B
	.4byte mario_set_dir
	.4byte 0x0000002D
	.4byte 0x00000064
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_anm_dossun_1_hei_000076c8
	.4byte 0x0001005E
	.4byte animation_wait
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0x0000005F
	.4byte 0x00000041
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFD050F80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_hei_20_hei_000076d8
	.4byte callback
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_hei_20_01_hei_000076e4
	.4byte callback
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFD050F80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg1_hei_yn_01_hei_000076f4
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_anm_kaiten1_hei_00007450
	.4byte 0x0001005E
	.4byte animation_wait
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg1_hei_21_hei_00007704
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_anm_dossun_2_hei_00007710
	.4byte 0x0001005E
	.4byte animation_wait
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG1_HEI1_hei_00007720
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00001840
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_anm_kaiten1_hei_00007450
	.4byte 0x0001005E
	.4byte animation_wait
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg1_hei_22_hei_00007730
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_anm_denshoku_hei_0000773c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_anm_mamekyuu_hei_0000774c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_QUIZ1_hei_0000775c
	.4byte 0x0001005E
	.4byte offscreen_to_quiz
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x00000053
	.4byte 0x0000024F
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x0000005B
	.4byte 0x000005DC
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00004800
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFBD3E281
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0001003E
	.4byte quiz_data
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C8B
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x00040042
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte 0xFE363C85
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x00020019
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_QUIZ_START1_hei_0000776c
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0x0000005F
	.4byte 0x00000041
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte 0xFE363C86
	.4byte callback
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000001
	.4byte str_BGM_EVT_QUIZ2_hei_0000777c
	.4byte 0x0000006B
	.4byte 0x00020018
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_anm_kaiten1_hei_00007450
	.4byte 0x0001005E
	.4byte animation_wait
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x00010003
	.4byte 0x00000064
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte 0xFE363C87
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFE363C88
	.4byte 0x00020032
	.4byte 0xFBD3E281
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg1_hei_31_hei_0000778c
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg1_hei_yn_01_01_hei_00007798
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg1_hei_32_hei_000077ac
	.4byte 0x00020032
	.4byte 0xFBD3E281
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000064
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000201
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000120
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00004800
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0x0000005F
	.4byte 0x00000041
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFBD3E281
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C8C
	.4byte 0x00000004
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_GOOD_SOUND2_hei_000077b8
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_GOOD_SOUND1_hei_000077c8
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte seikai_anime
	.4byte 0x00020035
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte 0x00010022
	.4byte 0xFE363C8C
	.4byte 0x00010026
	.4byte 0x00000004
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF43
	.4byte 0x00000048
	.4byte 0x000000CF
	.4byte 0x000000DB
	.4byte 0x00000045
	.4byte 0xFFFFFFB0
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_anm_kaiten1_hei_00007450
	.4byte 0x0001005E
	.4byte animation_wait
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_hei_33_hei_000077d8
	.4byte callback
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF43
	.4byte 0x00000048
	.4byte 0x000000CF
	.4byte 0x000000DB
	.4byte 0x00000045
	.4byte 0xFFFFFFB0
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_anm_kaiten1_hei_00007450
	.4byte 0x0001005E
	.4byte animation_wait
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_hei_34_hei_000077e4
	.4byte callback
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00010024
	.4byte 0x00000005
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF43
	.4byte 0x00000048
	.4byte 0x000000CF
	.4byte 0x000000DB
	.4byte 0x00000045
	.4byte 0xFFFFFFB0
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_anm_kaiten3_hei_0000745c
	.4byte 0x0001005E
	.4byte animation_wait
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_hei_35_hei_000077f0
	.4byte callback
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte offscreen_to_normal
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0x0000005F
	.4byte 0x00000041
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_hei_35_01_hei_000077fc
	.4byte callback
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte sekizou_move
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_anm_kaiten1_hei_00007450
	.4byte 0x0001005E
	.4byte animation_wait
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0x00000096
	.4byte 0x00000041
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_hei_41_hei_0000780c
	.4byte callback
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_anm_dossun_2_hei_00007710
	.4byte 0x0001005E
	.4byte animation_wait
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG1_HEI1_hei_00007720
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00001840
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000001F
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000002
	.4byte 0x00000031
	.4byte 0x0001005E
	.4byte seikai_anime_stop
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xFE363C8D
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_BAD_SOUND2_hei_00007818
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_BAD_SOUND1_hei_00007828
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte fuseikai_anime
	.4byte 0x00020035
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte 0x00010022
	.4byte 0xFE363C8D
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF43
	.4byte 0x00000048
	.4byte 0x000000CF
	.4byte 0x000000DB
	.4byte 0x00000045
	.4byte 0xFFFFFFB0
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_hei_36_hei_00007838
	.4byte callback
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF43
	.4byte 0x00000048
	.4byte 0x000000CF
	.4byte 0x000000DB
	.4byte 0x00000045
	.4byte 0xFFFFFFB0
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_hei_37_hei_00007844
	.4byte callback
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF43
	.4byte 0x00000048
	.4byte 0x000000CF
	.4byte 0x000000DB
	.4byte 0x00000045
	.4byte 0xFFFFFFB0
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_hei_38_hei_00007850
	.4byte callback
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_anm_kaiten1_hei_00007450
	.4byte 0x0001005E
	.4byte animation_wait
	.4byte 0x0000006D
	.4byte 0x0001005E
	.4byte offscreen_to_normal
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0x0000005F
	.4byte 0x00000041
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_hei_38_01_hei_0000785c
	.4byte callback
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_シンエモン1_hei_0000786c
	.4byte 0x00000046
	.4byte 0x000000FA
	.4byte 0xFFFFFFCB
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_シンエモン1_hei_0000786c
	.4byte 0x0001005C
	.4byte npc_jump
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_シンエモン2_hei_00007878
	.4byte 0x0000002F
	.4byte 0x000000FA
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_シンエモン2_hei_00007878
	.4byte 0x0001005C
	.4byte npc_jump
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_シンエモン3_hei_00007884
	.4byte 0x0000004F
	.4byte 0x000000FA
	.4byte 0x00000035
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_シンエモン3_hei_00007884
	.4byte 0x0001005C
	.4byte npc_jump
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_シンエモン4_hei_00007890
	.4byte 0x0000007A
	.4byte 0x000000FA
	.4byte 0x00000049
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_シンエモン4_hei_00007890
	.4byte 0x0001005C
	.4byte npc_jump
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0x0000005F
	.4byte 0x00000041
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_hei_39_hei_0000789c
	.4byte callback
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_シンエモン1_hei_0000786c
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x000003E8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_シンエモン2_hei_00007878
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x000003E8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_シンエモン3_hei_00007884
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x000003E8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_シンエモン4_hei_00007890
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x000003E8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_SURP_hei_000078a8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_7_hei_000076b8
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_link
	.4byte str_シンエモン1_hei_0000786c
	.4byte str_シンエモン2_hei_00007878
	.4byte 0x0003005B
	.4byte evt_npc_set_link
	.4byte str_シンエモン2_hei_00007878
	.4byte str_シンエモン3_hei_00007884
	.4byte 0x0003005B
	.4byte evt_npc_set_link
	.4byte str_シンエモン3_hei_00007884
	.4byte str_シンエモン4_hei_00007890
	.4byte 0x0003005B
	.4byte evt_npc_set_battle_info
	.4byte str_シンエモン1_hei_0000786c
	.4byte 0x0000000E
	.4byte 0x0002005B
	.4byte evt_npc_battle_start
	.4byte str_シンエモン1_hei_0000786c
	.4byte 0x0001005B
	.4byte evt_npc_wait_battle_end
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_hei_000076c0
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_シンエモン1_hei_0000786c
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_シンエモン2_hei_00007878
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_シンエモン3_hei_00007884
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_シンエモン4_hei_00007890
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF43
	.4byte 0x00000048
	.4byte 0x000000CF
	.4byte 0x000000DB
	.4byte 0x00000045
	.4byte 0xFFFFFFB0
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0x0000005F
	.4byte 0x00000041
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_hei_40_hei_000078c8
	.4byte callback
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte sekizou_move
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_anm_kaiten1_hei_00007450
	.4byte 0x0001005E
	.4byte animation_wait
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0x00000096
	.4byte 0x00000041
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_hei_41_hei_0000780c
	.4byte callback
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_anm_dossun_2_hei_00007710
	.4byte 0x0001005E
	.4byte animation_wait
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG1_HEI1_hei_00007720
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00001840
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000001F
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000002
	.4byte 0x00000031
	.4byte 0x0001005E
	.4byte fuseikai_anime_stop
	.4byte 0x00000021
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x00000053
	.4byte 0x0000024F
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x0000005B
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x00020035
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj a_sekizou_1

# .data:0x1E50 | 0x9328 | size: 0x1C8
.obj hei_07_init_evt_11_data_9328, global
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_dokan_hei_00007380
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG1_HEI1_hei_00007720
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_dokan_hei_00007380
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00001840
	.4byte 0x00000020
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00001800
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG1_HEI4_hei_000078d4
	.4byte 0x0002005B
	.4byte evt_snd_set_rev_mode
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_anm_hokori_hei_000078e4
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_hei_07_2_hei_00007510
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_hei_07_2_hei_00007510
	.4byte 0x00000001
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x0000001F
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_a_sekizou_2_hei_00007444
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_a_sekizou_1_a_hei_00007424
	.4byte 0x00000000
	.4byte a_sekizou_1
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFD050F80
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_a_sekizou_2_hei_00007444
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_a_sekizou_1_a_hei_00007424
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_a_sekizou_1_b_hei_00007434
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_dokan_hei_00007380
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_anm_sekizou_hei_00007418
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_npc_change_fbat_mode
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_mobj_save_blk
	.4byte str_mobj_save_hei_000078f0
	.4byte 0xFFFFFF88
	.4byte 0x0000003C
	.4byte 0xFFFFFFB5
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hei_07_init_evt_11_data_9328
