.include "macros.inc"
.file "mri_03.o"

# 0x00002D88..0x0000347C | size: 0x6F4
.text
.balign 4

# .text:0x0 | 0x2D88 | size: 0xE4
.fn alpha_tev, local
/* 00002D88 00002E4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00002D8C 00002E50  7C 08 02 A6 */	mflr r0
/* 00002D90 00002E54  38 80 00 FF */	li r4, 0xff
/* 00002D94 00002E58  38 A0 00 FF */	li r5, 0xff
/* 00002D98 00002E5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 00002D9C 00002E60  38 C0 00 04 */	li r6, 0x4
/* 00002DA0 00002E64  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 00002DA4 00002E68  7C 7D 1B 78 */	mr r29, r3
/* 00002DA8 00002E6C  3C 60 00 00 */	lis r3, _ap@ha
/* 00002DAC 00002E70  83 FD 00 0C */	lwz r31, 0xc(r29)
/* 00002DB0 00002E74  83 C3 00 00 */	lwz r30, _ap@l(r3)
/* 00002DB4 00002E78  7F E3 FB 78 */	mr r3, r31
/* 00002DB8 00002E7C  4B FF D4 A1 */	bl GXSetTevOrder
/* 00002DBC 00002E80  3C 60 00 00 */	lis r3, zero_mri_000225c8@ha
/* 00002DC0 00002E84  88 1E 00 00 */	lbz r0, 0x0(r30)
/* 00002DC4 00002E88  80 A3 00 00 */	lwz r5, zero_mri_000225c8@l(r3)
/* 00002DC8 00002E8C  38 81 00 0C */	addi r4, r1, 0xc
/* 00002DCC 00002E90  38 60 00 01 */	li r3, 0x1
/* 00002DD0 00002E94  90 A1 00 08 */	stw r5, 0x8(r1)
/* 00002DD4 00002E98  98 01 00 0B */	stb r0, 0xb(r1)
/* 00002DD8 00002E9C  80 01 00 08 */	lwz r0, 0x8(r1)
/* 00002DDC 00002EA0  90 01 00 0C */	stw r0, 0xc(r1)
/* 00002DE0 00002EA4  4B FF D4 79 */	bl GXSetTevColor
/* 00002DE4 00002EA8  7F E3 FB 78 */	mr r3, r31
/* 00002DE8 00002EAC  38 80 00 00 */	li r4, 0x0
/* 00002DEC 00002EB0  38 A0 00 00 */	li r5, 0x0
/* 00002DF0 00002EB4  38 C0 00 00 */	li r6, 0x0
/* 00002DF4 00002EB8  38 E0 00 01 */	li r7, 0x1
/* 00002DF8 00002EBC  39 00 00 00 */	li r8, 0x0
/* 00002DFC 00002EC0  4B FF D4 5D */	bl GXSetTevColorOp
/* 00002E00 00002EC4  7F E3 FB 78 */	mr r3, r31
/* 00002E04 00002EC8  38 80 00 00 */	li r4, 0x0
/* 00002E08 00002ECC  38 A0 00 00 */	li r5, 0x0
/* 00002E0C 00002ED0  38 C0 00 00 */	li r6, 0x0
/* 00002E10 00002ED4  38 E0 00 01 */	li r7, 0x1
/* 00002E14 00002ED8  39 00 00 00 */	li r8, 0x0
/* 00002E18 00002EDC  4B FF D4 41 */	bl GXSetTevAlphaOp
/* 00002E1C 00002EE0  7F E3 FB 78 */	mr r3, r31
/* 00002E20 00002EE4  38 80 00 0F */	li r4, 0xf
/* 00002E24 00002EE8  38 A0 00 0F */	li r5, 0xf
/* 00002E28 00002EEC  38 C0 00 0F */	li r6, 0xf
/* 00002E2C 00002EF0  38 E0 00 00 */	li r7, 0x0
/* 00002E30 00002EF4  4B FF D4 29 */	bl GXSetTevColorIn
/* 00002E34 00002EF8  7F E3 FB 78 */	mr r3, r31
/* 00002E38 00002EFC  38 80 00 07 */	li r4, 0x7
/* 00002E3C 00002F00  38 A0 00 00 */	li r5, 0x0
/* 00002E40 00002F04  38 C0 00 01 */	li r6, 0x1
/* 00002E44 00002F08  38 E0 00 07 */	li r7, 0x7
/* 00002E48 00002F0C  4B FF D4 11 */	bl GXSetTevAlphaIn
/* 00002E4C 00002F10  80 7D 00 0C */	lwz r3, 0xc(r29)
/* 00002E50 00002F14  38 03 00 01 */	addi r0, r3, 0x1
/* 00002E54 00002F18  90 1D 00 0C */	stw r0, 0xc(r29)
/* 00002E58 00002F1C  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 00002E5C 00002F20  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00002E60 00002F24  7C 08 03 A6 */	mtlr r0
/* 00002E64 00002F28  38 21 00 20 */	addi r1, r1, 0x20
/* 00002E68 00002F2C  4E 80 00 20 */	blr
.endfn alpha_tev

# .text:0xE4 | 0x2E6C | size: 0x44
.fn alpha_init_func, local
/* 00002E6C 00002F30  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00002E70 00002F34  7C 08 02 A6 */	mflr r0
/* 00002E74 00002F38  3C 60 00 00 */	lis r3, mapalloc_base_ptr@ha
/* 00002E78 00002F3C  38 80 00 01 */	li r4, 0x1
/* 00002E7C 00002F40  90 01 00 14 */	stw r0, 0x14(r1)
/* 00002E80 00002F44  38 63 00 00 */	addi r3, r3, mapalloc_base_ptr@l
/* 00002E84 00002F48  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00002E88 00002F4C  4B FF D3 D1 */	bl _mapAlloc
/* 00002E8C 00002F50  3C 80 00 00 */	lis r4, _ap@ha
/* 00002E90 00002F54  38 00 00 FF */	li r0, 0xff
/* 00002E94 00002F58  90 64 00 00 */	stw r3, _ap@l(r4)
/* 00002E98 00002F5C  98 03 00 00 */	stb r0, 0x0(r3)
/* 00002E9C 00002F60  38 60 00 02 */	li r3, 0x2
/* 00002EA0 00002F64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00002EA4 00002F68  7C 08 03 A6 */	mtlr r0
/* 00002EA8 00002F6C  38 21 00 10 */	addi r1, r1, 0x10
/* 00002EAC 00002F70  4E 80 00 20 */	blr
.endfn alpha_init_func

# .text:0x128 | 0x2EB0 | size: 0x3C
.fn alpha_set_func, local
/* 00002EB0 00002F74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00002EB4 00002F78  7C 08 02 A6 */	mflr r0
/* 00002EB8 00002F7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 00002EBC 00002F80  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00002EC0 00002F84  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00002EC4 00002F88  4B FF D3 95 */	bl evtGetValue
/* 00002EC8 00002F8C  3C 80 00 00 */	lis r4, _ap@ha
/* 00002ECC 00002F90  38 84 00 00 */	addi r4, r4, _ap@l
/* 00002ED0 00002F94  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00002ED4 00002F98  98 64 00 00 */	stb r3, 0x0(r4)
/* 00002ED8 00002F9C  38 60 00 02 */	li r3, 0x2
/* 00002EDC 00002FA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00002EE0 00002FA4  7C 08 03 A6 */	mtlr r0
/* 00002EE4 00002FA8  38 21 00 10 */	addi r1, r1, 0x10
/* 00002EE8 00002FAC  4E 80 00 20 */	blr
.endfn alpha_set_func

# .text:0x164 | 0x2EEC | size: 0x45C
.fn puniModeEventparent, local
/* 00002EEC 00002FB0  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 00002EF0 00002FB4  7C 08 02 A6 */	mflr r0
/* 00002EF4 00002FB8  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 00002EF8 00002FBC  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 00002EFC 00002FC0  F3 E1 00 98 */	psq_st f31, 0x98(r1), 0, qr0
/* 00002F00 00002FC4  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 00002F04 00002FC8  F3 C1 00 88 */	psq_st f30, 0x88(r1), 0, qr0
/* 00002F08 00002FCC  DB A1 00 70 */	stfd f29, 0x70(r1)
/* 00002F0C 00002FD0  F3 A1 00 78 */	psq_st f29, 0x78(r1), 0, qr0
/* 00002F10 00002FD4  BF 41 00 58 */	stmw r26, 0x58(r1)
/* 00002F14 00002FD8  7C 7E 1B 78 */	mr r30, r3
/* 00002F18 00002FDC  3C 60 00 00 */	lis r3, JailAwayTable_New@ha
/* 00002F1C 00002FE0  A0 1E 01 14 */	lhz r0, 0x114(r30)
/* 00002F20 00002FE4  3B E3 00 00 */	addi r31, r3, JailAwayTable_New@l
/* 00002F24 00002FE8  28 00 00 0C */	cmplwi r0, 0xc
/* 00002F28 00002FEC  41 81 03 F4 */	bgt .L_0000331C
/* 00002F2C 00002FF0  3C 60 00 00 */	lis r3, jumptable_18_data_12BF8@ha
/* 00002F30 00002FF4  54 00 10 3A */	slwi r0, r0, 2
/* 00002F34 00002FF8  38 63 00 00 */	addi r3, r3, jumptable_18_data_12BF8@l
/* 00002F38 00002FFC  7C 03 00 2E */	lwzx r0, r3, r0
/* 00002F3C 00003000  7C 09 03 A6 */	mtctr r0
/* 00002F40 00003004  4E 80 04 20 */	bctr
.L_00002F44:
/* 00002F44 00003008  3C A0 00 00 */	lis r5, float_1E06_mri_000229f8@ha
/* 00002F48 0000300C  3C 80 00 00 */	lis r4, double_to_int_mri_00022a28@ha
/* 00002F4C 00003010  3C 60 00 00 */	lis r3, zero_mri_000229fc@ha
/* 00002F50 00003014  C3 A5 00 00 */	lfs f29, float_1E06_mri_000229f8@l(r5)
/* 00002F54 00003018  CB C4 00 00 */	lfd f30, double_to_int_mri_00022a28@l(r4)
/* 00002F58 0000301C  3B 40 FF FF */	li r26, -0x1
/* 00002F5C 00003020  C3 E3 00 00 */	lfs f31, zero_mri_000229fc@l(r3)
/* 00002F60 00003024  3B 60 00 00 */	li r27, 0x0
/* 00002F64 00003028  3B A0 00 00 */	li r29, 0x0
/* 00002F68 0000302C  3F 80 43 30 */	lis r28, 0x4330
.L_00002F6C:
/* 00002F6C 00003030  7C 9F EA 14 */	add r4, r31, r29
/* 00002F70 00003034  93 81 00 48 */	stw r28, 0x48(r1)
/* 00002F74 00003038  80 A4 00 00 */	lwz r5, 0x0(r4)
/* 00002F78 0000303C  38 61 00 2C */	addi r3, r1, 0x2c
/* 00002F7C 00003040  80 04 00 04 */	lwz r0, 0x4(r4)
/* 00002F80 00003044  38 9E 01 2C */	addi r4, r30, 0x12c
/* 00002F84 00003048  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 00002F88 0000304C  93 81 00 50 */	stw r28, 0x50(r1)
/* 00002F8C 00003050  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 00002F90 00003054  90 A1 00 4C */	stw r5, 0x4c(r1)
/* 00002F94 00003058  90 01 00 54 */	stw r0, 0x54(r1)
/* 00002F98 0000305C  C8 21 00 48 */	lfd f1, 0x48(r1)
/* 00002F9C 00003060  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 00002FA0 00003064  EC 21 F0 28 */	fsubs f1, f1, f30
/* 00002FA4 00003068  D3 E1 00 30 */	stfs f31, 0x30(r1)
/* 00002FA8 0000306C  EC 00 F0 28 */	fsubs f0, f0, f30
/* 00002FAC 00003070  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 00002FB0 00003074  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 00002FB4 00003078  4B FF D2 A5 */	bl PSVECSquareDistance
/* 00002FB8 0000307C  FC 1D 08 40 */	fcmpo cr0, f29, f1
/* 00002FBC 00003080  40 81 00 0C */	ble .L_00002FC8
/* 00002FC0 00003084  FF A0 08 90 */	fmr f29, f1
/* 00002FC4 00003088  7F 7A DB 78 */	mr r26, r27
.L_00002FC8:
/* 00002FC8 0000308C  3B 7B 00 01 */	addi r27, r27, 0x1
/* 00002FCC 00003090  3B BD 00 08 */	addi r29, r29, 0x8
/* 00002FD0 00003094  2C 1B 00 04 */	cmpwi r27, 0x4
/* 00002FD4 00003098  41 80 FF 98 */	blt .L_00002F6C
/* 00002FD8 0000309C  93 5E 01 E0 */	stw r26, 0x1e0(r30)
/* 00002FDC 000030A0  38 60 00 02 */	li r3, 0x2
/* 00002FE0 000030A4  38 00 00 01 */	li r0, 0x1
/* 00002FE4 000030A8  B0 7E 01 1E */	sth r3, 0x11e(r30)
/* 00002FE8 000030AC  B0 1E 01 14 */	sth r0, 0x114(r30)
.L_00002FEC:
/* 00002FEC 000030B0  80 1E 01 E0 */	lwz r0, 0x1e0(r30)
/* 00002FF0 000030B4  3C A0 43 30 */	lis r5, 0x4330
/* 00002FF4 000030B8  3C C0 00 00 */	lis r6, double_to_int_mri_00022a28@ha
/* 00002FF8 000030BC  3C 80 00 00 */	lis r4, zero_mri_000229fc@ha
/* 00002FFC 000030C0  54 00 18 38 */	slwi r0, r0, 3
/* 00003000 000030C4  C0 24 00 00 */	lfs f1, zero_mri_000229fc@l(r4)
/* 00003004 000030C8  7C 7F 02 14 */	add r3, r31, r0
/* 00003008 000030CC  7D 1F 00 2E */	lwzx r8, r31, r0
/* 0000300C 000030D0  80 03 00 04 */	lwz r0, 0x4(r3)
/* 00003010 000030D4  38 E6 00 00 */	addi r7, r6, double_to_int_mri_00022a28@l
/* 00003014 000030D8  6D 06 80 00 */	xoris r6, r8, 0x8000
/* 00003018 000030DC  90 A1 00 50 */	stw r5, 0x50(r1)
/* 0000301C 000030E0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 00003020 000030E4  C8 67 00 00 */	lfd f3, 0x0(r7)
/* 00003024 000030E8  90 C1 00 54 */	stw r6, 0x54(r1)
/* 00003028 000030EC  38 61 00 2C */	addi r3, r1, 0x2c
/* 0000302C 000030F0  38 9E 01 2C */	addi r4, r30, 0x12c
/* 00003030 000030F4  C8 41 00 50 */	lfd f2, 0x50(r1)
/* 00003034 000030F8  90 01 00 4C */	stw r0, 0x4c(r1)
/* 00003038 000030FC  EC 42 18 28 */	fsubs f2, f2, f3
/* 0000303C 00003100  90 A1 00 48 */	stw r5, 0x48(r1)
/* 00003040 00003104  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 00003044 00003108  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 00003048 0000310C  EC 00 18 28 */	fsubs f0, f0, f3
/* 0000304C 00003110  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 00003050 00003114  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 00003054 00003118  4B FF D2 05 */	bl PSVECSquareDistance
/* 00003058 0000311C  3C 60 00 00 */	lis r3, float_100_mri_00022a00@ha
/* 0000305C 00003120  C0 03 00 00 */	lfs f0, float_100_mri_00022a00@l(r3)
/* 00003060 00003124  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 00003064 00003128  40 81 00 58 */	ble .L_000030BC
/* 00003068 0000312C  38 61 00 2C */	addi r3, r1, 0x2c
/* 0000306C 00003130  38 9E 01 2C */	addi r4, r30, 0x12c
/* 00003070 00003134  38 A1 00 38 */	addi r5, r1, 0x38
/* 00003074 00003138  4B FF D1 E5 */	bl PSVECSubtract
/* 00003078 0000313C  38 61 00 38 */	addi r3, r1, 0x38
/* 0000307C 00003140  7C 64 1B 78 */	mr r4, r3
/* 00003080 00003144  4B FF D1 D9 */	bl PSVECNormalize
/* 00003084 00003148  3C 60 00 00 */	lis r3, zero_mri_000229fc@ha
/* 00003088 0000314C  3C 80 00 00 */	lis r4, float_1p5_mri_00022a04@ha
/* 0000308C 00003150  38 A3 00 00 */	addi r5, r3, zero_mri_000229fc@l
/* 00003090 00003154  C0 24 00 00 */	lfs f1, float_1p5_mri_00022a04@l(r4)
/* 00003094 00003158  C0 05 00 00 */	lfs f0, 0x0(r5)
/* 00003098 0000315C  38 61 00 38 */	addi r3, r1, 0x38
/* 0000309C 00003160  7C 64 1B 78 */	mr r4, r3
/* 000030A0 00003164  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 000030A4 00003168  4B FF D1 B5 */	bl PSVECScale
/* 000030A8 0000316C  38 7E 01 5C */	addi r3, r30, 0x15c
/* 000030AC 00003170  38 81 00 38 */	addi r4, r1, 0x38
/* 000030B0 00003174  7C 65 1B 78 */	mr r5, r3
/* 000030B4 00003178  4B FF D1 A5 */	bl PSVECAdd
/* 000030B8 0000317C  48 00 02 64 */	b .L_0000331C
.L_000030BC:
/* 000030BC 00003180  80 7E 01 E4 */	lwz r3, 0x1e4(r30)
/* 000030C0 00003184  80 9E 01 E0 */	lwz r4, 0x1e0(r30)
/* 000030C4 00003188  38 03 00 05 */	addi r0, r3, 0x5
/* 000030C8 0000318C  7C 04 00 00 */	cmpw r4, r0
/* 000030CC 00003190  40 82 00 30 */	bne .L_000030FC
/* 000030D0 00003194  3C 60 00 00 */	lis r3, vec3_mri_000229bc@ha
/* 000030D4 00003198  38 00 00 02 */	li r0, 0x2
/* 000030D8 0000319C  38 A3 00 00 */	addi r5, r3, vec3_mri_000229bc@l
/* 000030DC 000031A0  80 85 00 00 */	lwz r4, 0x0(r5)
/* 000030E0 000031A4  80 65 00 04 */	lwz r3, 0x4(r5)
/* 000030E4 000031A8  90 9E 01 5C */	stw r4, 0x15c(r30)
/* 000030E8 000031AC  90 7E 01 60 */	stw r3, 0x160(r30)
/* 000030EC 000031B0  80 65 00 08 */	lwz r3, 0x8(r5)
/* 000030F0 000031B4  90 7E 01 64 */	stw r3, 0x164(r30)
/* 000030F4 000031B8  B0 1E 01 14 */	sth r0, 0x114(r30)
/* 000030F8 000031BC  48 00 02 24 */	b .L_0000331C
.L_000030FC:
/* 000030FC 000031C0  54 80 18 38 */	slwi r0, r4, 3
/* 00003100 000031C4  7C 7F 02 14 */	add r3, r31, r0
/* 00003104 000031C8  80 03 00 08 */	lwz r0, 0x8(r3)
/* 00003108 000031CC  2C 00 27 10 */	cmpwi r0, 0x2710
/* 0000310C 000031D0  41 82 00 10 */	beq .L_0000311C
/* 00003110 000031D4  38 04 00 01 */	addi r0, r4, 0x1
/* 00003114 000031D8  90 1E 01 E0 */	stw r0, 0x1e0(r30)
/* 00003118 000031DC  48 00 02 04 */	b .L_0000331C
.L_0000311C:
/* 0000311C 000031E0  3C 60 00 00 */	lis r3, vec3_mri_000229c8@ha
/* 00003120 000031E4  38 00 00 02 */	li r0, 0x2
/* 00003124 000031E8  38 A3 00 00 */	addi r5, r3, vec3_mri_000229c8@l
/* 00003128 000031EC  80 85 00 00 */	lwz r4, 0x0(r5)
/* 0000312C 000031F0  80 65 00 04 */	lwz r3, 0x4(r5)
/* 00003130 000031F4  90 9E 01 5C */	stw r4, 0x15c(r30)
/* 00003134 000031F8  90 7E 01 60 */	stw r3, 0x160(r30)
/* 00003138 000031FC  80 65 00 08 */	lwz r3, 0x8(r5)
/* 0000313C 00003200  90 7E 01 64 */	stw r3, 0x164(r30)
/* 00003140 00003204  B0 1E 01 14 */	sth r0, 0x114(r30)
/* 00003144 00003208  48 00 01 D8 */	b .L_0000331C
.L_00003148:
/* 00003148 0000320C  38 60 00 00 */	li r3, 0x0
/* 0000314C 00003210  38 00 00 03 */	li r0, 0x3
/* 00003150 00003214  B0 7E 01 1E */	sth r3, 0x11e(r30)
/* 00003154 00003218  B0 1E 01 14 */	sth r0, 0x114(r30)
/* 00003158 0000321C  48 00 01 C4 */	b .L_0000331C
.L_0000315C:
/* 0000315C 00003220  3C 80 00 00 */	lis r4, vec3_mri_000229d4@ha
/* 00003160 00003224  38 61 00 2C */	addi r3, r1, 0x2c
/* 00003164 00003228  38 E4 00 00 */	addi r7, r4, vec3_mri_000229d4@l
/* 00003168 0000322C  38 9E 01 2C */	addi r4, r30, 0x12c
/* 0000316C 00003230  80 C7 00 00 */	lwz r6, 0x0(r7)
/* 00003170 00003234  80 A7 00 04 */	lwz r5, 0x4(r7)
/* 00003174 00003238  80 07 00 08 */	lwz r0, 0x8(r7)
/* 00003178 0000323C  90 C1 00 2C */	stw r6, 0x2c(r1)
/* 0000317C 00003240  90 A1 00 30 */	stw r5, 0x30(r1)
/* 00003180 00003244  90 01 00 34 */	stw r0, 0x34(r1)
/* 00003184 00003248  4B FF D0 D5 */	bl PSVECSquareDistance
/* 00003188 0000324C  3C 60 00 00 */	lis r3, float_4900_mri_00022a08@ha
/* 0000318C 00003250  C0 03 00 00 */	lfs f0, float_4900_mri_00022a08@l(r3)
/* 00003190 00003254  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 00003194 00003258  40 80 01 24 */	bge .L_000032B8
/* 00003198 0000325C  38 7E 01 2C */	addi r3, r30, 0x12c
/* 0000319C 00003260  38 81 00 2C */	addi r4, r1, 0x2c
/* 000031A0 00003264  38 A1 00 38 */	addi r5, r1, 0x38
/* 000031A4 00003268  4B FF D0 B5 */	bl PSVECSubtract
/* 000031A8 0000326C  38 61 00 38 */	addi r3, r1, 0x38
/* 000031AC 00003270  7C 64 1B 78 */	mr r4, r3
/* 000031B0 00003274  4B FF D0 A9 */	bl PSVECNormalize
/* 000031B4 00003278  3C 60 00 00 */	lis r3, zero_mri_000229fc@ha
/* 000031B8 0000327C  3C 80 00 00 */	lis r4, float_0p7_mri_00022a0c@ha
/* 000031BC 00003280  38 A3 00 00 */	addi r5, r3, zero_mri_000229fc@l
/* 000031C0 00003284  C0 24 00 00 */	lfs f1, float_0p7_mri_00022a0c@l(r4)
/* 000031C4 00003288  C0 05 00 00 */	lfs f0, 0x0(r5)
/* 000031C8 0000328C  38 61 00 38 */	addi r3, r1, 0x38
/* 000031CC 00003290  7C 64 1B 78 */	mr r4, r3
/* 000031D0 00003294  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 000031D4 00003298  4B FF D0 85 */	bl PSVECScale
/* 000031D8 0000329C  38 7E 01 5C */	addi r3, r30, 0x15c
/* 000031DC 000032A0  38 81 00 38 */	addi r4, r1, 0x38
/* 000031E0 000032A4  7C 65 1B 78 */	mr r5, r3
/* 000031E4 000032A8  4B FF D0 75 */	bl PSVECAdd
/* 000031E8 000032AC  3C 80 00 00 */	lis r4, float_2p1_mri_00022a10@ha
/* 000031EC 000032B0  38 7E 01 5C */	addi r3, r30, 0x15c
/* 000031F0 000032B4  C0 04 00 00 */	lfs f0, float_2p1_mri_00022a10@l(r4)
/* 000031F4 000032B8  D0 1E 01 74 */	stfs f0, 0x174(r30)
/* 000031F8 000032BC  4B FF D0 61 */	bl PSVECMag
/* 000031FC 000032C0  80 1E 01 30 */	lwz r0, 0x130(r30)
/* 00003200 000032C4  3C 60 00 00 */	lis r3, zero_mri_000229fc@ha
/* 00003204 000032C8  C0 03 00 00 */	lfs f0, zero_mri_000229fc@l(r3)
/* 00003208 000032CC  FF A0 08 90 */	fmr f29, f1
/* 0000320C 000032D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 00003210 000032D4  3C 80 00 00 */	lis r4, float_1_mri_00022a14@ha
/* 00003214 000032D8  80 7E 01 2C */	lwz r3, 0x12c(r30)
/* 00003218 000032DC  C0 41 00 24 */	lfs f2, 0x24(r1)
/* 0000321C 000032E0  FC 00 E8 00 */	fcmpu cr0, f0, f29
/* 00003220 000032E4  C0 24 00 00 */	lfs f1, float_1_mri_00022a14@l(r4)
/* 00003224 000032E8  80 1E 01 34 */	lwz r0, 0x134(r30)
/* 00003228 000032EC  EC 22 08 2A */	fadds f1, f2, f1
/* 0000322C 000032F0  90 61 00 20 */	stw r3, 0x20(r1)
/* 00003230 000032F4  90 01 00 28 */	stw r0, 0x28(r1)
/* 00003234 000032F8  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 00003238 000032FC  41 82 00 14 */	beq .L_0000324C
/* 0000323C 00003300  38 7E 01 5C */	addi r3, r30, 0x15c
/* 00003240 00003304  38 81 00 38 */	addi r4, r1, 0x38
/* 00003244 00003308  4B FF D0 15 */	bl PSVECNormalize
/* 00003248 0000330C  48 00 00 24 */	b .L_0000326C
.L_0000324C:
/* 0000324C 00003310  3C 60 00 00 */	lis r3, vec3_mri_000229e0@ha
/* 00003250 00003314  38 A3 00 00 */	addi r5, r3, vec3_mri_000229e0@l
/* 00003254 00003318  80 85 00 00 */	lwz r4, 0x0(r5)
/* 00003258 0000331C  80 65 00 04 */	lwz r3, 0x4(r5)
/* 0000325C 00003320  80 05 00 08 */	lwz r0, 0x8(r5)
/* 00003260 00003324  90 81 00 38 */	stw r4, 0x38(r1)
/* 00003264 00003328  90 61 00 3C */	stw r3, 0x3c(r1)
/* 00003268 0000332C  90 01 00 40 */	stw r0, 0x40(r1)
.L_0000326C:
/* 0000326C 00003330  81 61 00 38 */	lwz r11, 0x38(r1)
/* 00003270 00003334  FC 20 E8 90 */	fmr f1, f29
/* 00003274 00003338  81 41 00 3C */	lwz r10, 0x3c(r1)
/* 00003278 0000333C  7F C3 F3 78 */	mr r3, r30
/* 0000327C 00003340  81 21 00 40 */	lwz r9, 0x40(r1)
/* 00003280 00003344  38 81 00 14 */	addi r4, r1, 0x14
/* 00003284 00003348  81 01 00 20 */	lwz r8, 0x20(r1)
/* 00003288 0000334C  80 E1 00 24 */	lwz r7, 0x24(r1)
/* 0000328C 00003350  38 A1 00 08 */	addi r5, r1, 0x8
/* 00003290 00003354  80 01 00 28 */	lwz r0, 0x28(r1)
/* 00003294 00003358  38 C0 00 00 */	li r6, 0x0
/* 00003298 0000335C  91 61 00 08 */	stw r11, 0x8(r1)
/* 0000329C 00003360  91 41 00 0C */	stw r10, 0xc(r1)
/* 000032A0 00003364  91 21 00 10 */	stw r9, 0x10(r1)
/* 000032A4 00003368  91 01 00 14 */	stw r8, 0x14(r1)
/* 000032A8 0000336C  90 E1 00 18 */	stw r7, 0x18(r1)
/* 000032AC 00003370  90 01 00 1C */	stw r0, 0x1c(r1)
/* 000032B0 00003374  48 00 61 35 */	bl puniMoveAtari_18_text_93E4
/* 000032B4 00003378  48 00 00 68 */	b .L_0000331C
.L_000032B8:
/* 000032B8 0000337C  38 00 00 0B */	li r0, 0xb
/* 000032BC 00003380  B0 1E 01 14 */	sth r0, 0x114(r30)
/* 000032C0 00003384  48 00 00 5C */	b .L_0000331C
.L_000032C4:
/* 000032C4 00003388  3C 80 00 00 */	lis r4, vec3_mri_000229ec@ha
/* 000032C8 0000338C  3C 60 00 00 */	lis r3, float_neg160_mri_00022a18@ha
/* 000032CC 00003390  38 A4 00 00 */	addi r5, r4, vec3_mri_000229ec@l
/* 000032D0 00003394  C0 03 00 00 */	lfs f0, float_neg160_mri_00022a18@l(r3)
/* 000032D4 00003398  80 85 00 00 */	lwz r4, 0x0(r5)
/* 000032D8 0000339C  80 05 00 04 */	lwz r0, 0x4(r5)
/* 000032DC 000033A0  90 9E 01 5C */	stw r4, 0x15c(r30)
/* 000032E0 000033A4  90 1E 01 60 */	stw r0, 0x160(r30)
/* 000032E4 000033A8  80 05 00 08 */	lwz r0, 0x8(r5)
/* 000032E8 000033AC  90 1E 01 64 */	stw r0, 0x164(r30)
/* 000032EC 000033B0  C0 3E 01 2C */	lfs f1, 0x12c(r30)
/* 000032F0 000033B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 000032F4 000033B8  40 80 00 14 */	bge .L_00003308
/* 000032F8 000033BC  3C 60 00 00 */	lis r3, float_90_mri_00022a1c@ha
/* 000032FC 000033C0  C0 03 00 00 */	lfs f0, float_90_mri_00022a1c@l(r3)
/* 00003300 000033C4  D0 1E 01 80 */	stfs f0, 0x180(r30)
/* 00003304 000033C8  48 00 00 10 */	b .L_00003314
.L_00003308:
/* 00003308 000033CC  3C 60 00 00 */	lis r3, float_270_mri_00022a20@ha
/* 0000330C 000033D0  C0 03 00 00 */	lfs f0, float_270_mri_00022a20@l(r3)
/* 00003310 000033D4  D0 1E 01 80 */	stfs f0, 0x180(r30)
.L_00003314:
/* 00003314 000033D8  38 00 00 0C */	li r0, 0xc
/* 00003318 000033DC  B0 1E 01 14 */	sth r0, 0x114(r30)
.L_0000331C:
/* 0000331C 000033E0  E3 E1 00 98 */	psq_l f31, 0x98(r1), 0, qr0
/* 00003320 000033E4  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 00003324 000033E8  E3 C1 00 88 */	psq_l f30, 0x88(r1), 0, qr0
/* 00003328 000033EC  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 0000332C 000033F0  E3 A1 00 78 */	psq_l f29, 0x78(r1), 0, qr0
/* 00003330 000033F4  CB A1 00 70 */	lfd f29, 0x70(r1)
/* 00003334 000033F8  BB 41 00 58 */	lmw r26, 0x58(r1)
/* 00003338 000033FC  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 0000333C 00003400  7C 08 03 A6 */	mtlr r0
/* 00003340 00003404  38 21 00 A0 */	addi r1, r1, 0xa0
/* 00003344 00003408  4E 80 00 20 */	blr
.endfn puniModeEventparent

# .text:0x5C0 | 0x3348 | size: 0xEC
.fn puni_parent, local
/* 00003348 0000340C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0000334C 00003410  7C 08 02 A6 */	mflr r0
/* 00003350 00003414  90 01 00 14 */	stw r0, 0x14(r1)
/* 00003354 00003418  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00003358 0000341C  7C 7F 1B 78 */	mr r31, r3
/* 0000335C 00003420  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00003360 00003424  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00003364 00003428  4B FF CE F5 */	bl evtGetValue
/* 00003368 0000342C  1F C3 05 A8 */	mulli r30, r3, 0x5a8
/* 0000336C 00003430  48 00 1D 31 */	bl puniGetPunidat_18_text_509C
/* 00003370 00003434  3C 80 00 00 */	lis r4, float_neg180_mri_00022a30@ha
/* 00003374 00003438  7D 03 F2 14 */	add r8, r3, r30
/* 00003378 0000343C  C0 28 01 2C */	lfs f1, 0x12c(r8)
/* 0000337C 00003440  C0 04 00 00 */	lfs f0, float_neg180_mri_00022a30@l(r4)
/* 00003380 00003444  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 00003384 00003448  40 81 00 30 */	ble .L_000033B4
/* 00003388 0000344C  80 1F 00 C8 */	lwz r0, 0xc8(r31)
/* 0000338C 00003450  39 20 00 01 */	li r9, 0x1
/* 00003390 00003454  54 03 0F FE */	srwi r3, r0, 31
/* 00003394 00003458  54 00 07 FE */	clrlwi r0, r0, 31
/* 00003398 0000345C  7C 00 1A 78 */	xor r0, r0, r3
/* 0000339C 00003460  7C 03 00 50 */	subf r0, r3, r0
/* 000033A0 00003464  90 08 01 E4 */	stw r0, 0x1e4(r8)
/* 000033A4 00003468  80 7F 00 C8 */	lwz r3, 0xc8(r31)
/* 000033A8 0000346C  38 03 00 01 */	addi r0, r3, 0x1
/* 000033AC 00003470  90 1F 00 C8 */	stw r0, 0xc8(r31)
/* 000033B0 00003474  48 00 00 2C */	b .L_000033DC
.L_000033B4:
/* 000033B4 00003478  80 1F 00 CC */	lwz r0, 0xcc(r31)
/* 000033B8 0000347C  39 20 00 02 */	li r9, 0x2
/* 000033BC 00003480  54 03 0F FE */	srwi r3, r0, 31
/* 000033C0 00003484  54 00 07 FE */	clrlwi r0, r0, 31
/* 000033C4 00003488  7C 00 1A 78 */	xor r0, r0, r3
/* 000033C8 0000348C  7C 03 00 50 */	subf r0, r3, r0
/* 000033CC 00003490  90 08 01 E4 */	stw r0, 0x1e4(r8)
/* 000033D0 00003494  80 7F 00 CC */	lwz r3, 0xcc(r31)
/* 000033D4 00003498  38 03 00 01 */	addi r0, r3, 0x1
/* 000033D8 0000349C  90 1F 00 CC */	stw r0, 0xcc(r31)
.L_000033DC:
/* 000033DC 000034A0  80 08 00 04 */	lwz r0, 0x4(r8)
/* 000033E0 000034A4  3C 80 00 00 */	lis r4, puniModeEventparent@ha
/* 000033E4 000034A8  3C 60 00 00 */	lis r3, puniMoveDecel_18_text_9AC8@ha
/* 000033E8 000034AC  38 E0 00 1D */	li r7, 0x1d
/* 000033EC 000034B0  64 00 00 10 */	oris r0, r0, 0x10
/* 000033F0 000034B4  38 C0 00 00 */	li r6, 0x0
/* 000033F4 000034B8  90 08 00 04 */	stw r0, 0x4(r8)
/* 000033F8 000034BC  38 A0 03 E8 */	li r5, 0x3e8
/* 000033FC 000034C0  38 84 00 00 */	addi r4, r4, puniModeEventparent@l
/* 00003400 000034C4  38 03 00 00 */	addi r0, r3, puniMoveDecel_18_text_9AC8@l
/* 00003404 000034C8  B1 28 01 18 */	sth r9, 0x118(r8)
/* 00003408 000034CC  38 60 00 02 */	li r3, 0x2
/* 0000340C 000034D0  B0 E8 00 0C */	sth r7, 0xc(r8)
/* 00003410 000034D4  B0 C8 01 14 */	sth r6, 0x114(r8)
/* 00003414 000034D8  B0 A8 01 1E */	sth r5, 0x11e(r8)
/* 00003418 000034DC  90 88 05 6C */	stw r4, 0x56c(r8)
/* 0000341C 000034E0  90 08 05 70 */	stw r0, 0x570(r8)
/* 00003420 000034E4  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00003424 000034E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00003428 000034EC  7C 08 03 A6 */	mtlr r0
/* 0000342C 000034F0  38 21 00 10 */	addi r1, r1, 0x10
/* 00003430 000034F4  4E 80 00 20 */	blr
.endfn puni_parent

# .text:0x6AC | 0x3434 | size: 0x48
.fn puni_away, local
/* 00003434 000034F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00003438 000034FC  7C 08 02 A6 */	mflr r0
/* 0000343C 00003500  90 01 00 14 */	stw r0, 0x14(r1)
/* 00003440 00003504  93 E1 00 0C */	stw r31, 0xc(r1)
/* 00003444 00003508  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00003448 0000350C  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000344C 00003510  4B FF CE 0D */	bl evtGetValue
/* 00003450 00003514  1F E3 05 A8 */	mulli r31, r3, 0x5a8
/* 00003454 00003518  48 00 1C 49 */	bl puniGetPunidat_18_text_509C
/* 00003458 0000351C  7C 63 FA 14 */	add r3, r3, r31
/* 0000345C 00003520  38 00 00 0A */	li r0, 0xa
/* 00003460 00003524  B0 03 01 14 */	sth r0, 0x114(r3)
/* 00003464 00003528  38 60 00 02 */	li r3, 0x2
/* 00003468 0000352C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 0000346C 00003530  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00003470 00003534  7C 08 03 A6 */	mtlr r0
/* 00003474 00003538  38 21 00 10 */	addi r1, r1, 0x10
/* 00003478 0000353C  4E 80 00 20 */	blr
.endfn puni_away

# 0x00001F28..0x000026E8 | size: 0x7C0
.rodata
.balign 8

# .rodata:0x0 | 0x1F28 | size: 0x4
.obj zero_mri_000225c8, local
	.4byte 0x00000000
.endobj zero_mri_000225c8

# .rodata:0x4 | 0x1F2C | size: 0x2
.obj str_S_mri_000225cc, local
	.string "S"
.endobj str_S_mri_000225cc

# .rodata:0x6 | 0x1F2E | size: 0x2
.obj gap_03_00001F2E_rodata, global
.hidden gap_03_00001F2E_rodata
	.2byte 0x0000
.endobj gap_03_00001F2E_rodata

# .rodata:0x8 | 0x1F30 | size: 0xE
.obj str_S_hako_l_saku_mri_000225d0, local
	.string "S_hako_l_saku"
.endobj str_S_hako_l_saku_mri_000225d0

# .rodata:0x16 | 0x1F3E | size: 0x2
.obj gap_03_00001F3E_rodata, global
.hidden gap_03_00001F3E_rodata
	.2byte 0x0000
.endobj gap_03_00001F3E_rodata

# .rodata:0x18 | 0x1F40 | size: 0xD
.obj str_S_hako_l_doa_mri_000225e0, local
	.string "S_hako_l_doa"
.endobj str_S_hako_l_doa_mri_000225e0

# .rodata:0x25 | 0x1F4D | size: 0x3
.obj gap_03_00001F4D_rodata, global
.hidden gap_03_00001F4D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001F4D_rodata

# .rodata:0x28 | 0x1F50 | size: 0xC
.obj str_S_hako_l_01_mri_000225f0, local
	.string "S_hako_l_01"
.endobj str_S_hako_l_01_mri_000225f0

# .rodata:0x34 | 0x1F5C | size: 0xE
.obj str_S_hako_r_saku_mri_000225fc, local
	.string "S_hako_r_saku"
.endobj str_S_hako_r_saku_mri_000225fc

# .rodata:0x42 | 0x1F6A | size: 0x2
.obj gap_03_00001F6A_rodata, global
.hidden gap_03_00001F6A_rodata
	.2byte 0x0000
.endobj gap_03_00001F6A_rodata

# .rodata:0x44 | 0x1F6C | size: 0xD
.obj str_S_hako_r_doa_mri_0002260c, local
	.string "S_hako_r_doa"
.endobj str_S_hako_r_doa_mri_0002260c

# .rodata:0x51 | 0x1F79 | size: 0x3
.obj gap_03_00001F79_rodata, global
.hidden gap_03_00001F79_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001F79_rodata

# .rodata:0x54 | 0x1F7C | size: 0xC
.obj str_S_hako_r_01_mri_0002261c, local
	.string "S_hako_r_01"
.endobj str_S_hako_r_01_mri_0002261c

# .rodata:0x60 | 0x1F88 | size: 0x6
.obj str_mario_mri_00022628, local
	.string "mario"
.endobj str_mario_mri_00022628

# .rodata:0x66 | 0x1F8E | size: 0x2
.obj gap_03_00001F8E_rodata, global
.hidden gap_03_00001F8E_rodata
	.2byte 0x0000
.endobj gap_03_00001F8E_rodata

# .rodata:0x68 | 0x1F90 | size: 0x6
.obj str_party_mri_00022630, local
	.string "party"
.endobj str_party_mri_00022630

# .rodata:0x6E | 0x1F96 | size: 0x2
.obj gap_03_00001F96_rodata, global
.hidden gap_03_00001F96_rodata
	.2byte 0x0000
.endobj gap_03_00001F96_rodata

# .rodata:0x70 | 0x1F98 | size: 0xB
.obj str_プニ族長老_mri_00022638, local
	.4byte 0x8376836A
	.4byte 0x91B092B7
	.byte 0x98, 0x56, 0x00
.endobj str_プニ族長老_mri_00022638

# .rodata:0x7B | 0x1FA3 | size: 0x1
.obj gap_03_00001FA3_rodata, global
.hidden gap_03_00001FA3_rodata
	.byte 0x00
.endobj gap_03_00001FA3_rodata

# .rodata:0x7C | 0x1FA4 | size: 0x9
.obj str_ガイド妹_mri_00022644, local
	.4byte 0x834B8343
	.4byte 0x83689685
	.byte 0x00
.endobj str_ガイド妹_mri_00022644

# .rodata:0x85 | 0x1FAD | size: 0x3
.obj gap_03_00001FAD_rodata, global
.hidden gap_03_00001FAD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001FAD_rodata

# .rodata:0x88 | 0x1FB0 | size: 0x7
.obj str_ガイド_mri_00022650, local
	.4byte 0x834B8343
	.byte 0x83, 0x68, 0x00
.endobj str_ガイド_mri_00022650

# .rodata:0x8F | 0x1FB7 | size: 0x1
.obj gap_03_00001FB7_rodata, global
.hidden gap_03_00001FB7_rodata
	.byte 0x00
.endobj gap_03_00001FB7_rodata

# .rodata:0x90 | 0x1FB8 | size: 0x7
.obj str_プニ族_mri_00022658, local
	.4byte 0x8376836A
	.byte 0x91, 0xB0, 0x00
.endobj str_プニ族_mri_00022658

# .rodata:0x97 | 0x1FBF | size: 0x1
.obj gap_03_00001FBF_rodata, global
.hidden gap_03_00001FBF_rodata
	.byte 0x00
.endobj gap_03_00001FBF_rodata

# .rodata:0x98 | 0x1FC0 | size: 0x9
.obj str_プニ族３_mri_00022660, local
	.4byte 0x8376836A
	.4byte 0x91B08252
	.byte 0x00
.endobj str_プニ族３_mri_00022660

# .rodata:0xA1 | 0x1FC9 | size: 0x3
.obj gap_03_00001FC9_rodata, global
.hidden gap_03_00001FC9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001FC9_rodata

# .rodata:0xA4 | 0x1FCC | size: 0x9
.obj str_ガイドsp_mri_0002266c, local
	.4byte 0x834B8343
	.4byte 0x83687370
	.byte 0x00
.endobj str_ガイドsp_mri_0002266c

# .rodata:0xAD | 0x1FD5 | size: 0x3
.obj gap_03_00001FD5_rodata, global
.hidden gap_03_00001FD5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001FD5_rodata

# .rodata:0xB0 | 0x1FD8 | size: 0xB
.obj str_ガイド妹sp_mri_00022678, local
	.4byte 0x834B8343
	.4byte 0x83689685
	.byte 0x73, 0x70, 0x00
.endobj str_ガイド妹sp_mri_00022678

# .rodata:0xBB | 0x1FE3 | size: 0x1
.obj gap_03_00001FE3_rodata, global
.hidden gap_03_00001FE3_rodata
	.byte 0x00
.endobj gap_03_00001FE3_rodata

# .rodata:0xBC | 0x1FE4 | size: 0xB
.obj str_ちびトゲsp_mri_00022684, local
	.4byte 0x82BF82D1
	.4byte 0x83678351
	.byte 0x73, 0x70, 0x00
.endobj str_ちびトゲsp_mri_00022684

# .rodata:0xC7 | 0x1FEF | size: 0x1
.obj gap_03_00001FEF_rodata, global
.hidden gap_03_00001FEF_rodata
	.byte 0x00
.endobj gap_03_00001FEF_rodata

# .rodata:0xC8 | 0x1FF0 | size: 0xB
.obj str_ライバルsp_mri_00022690, local
	.4byte 0x83898343
	.4byte 0x836F838B
	.byte 0x73, 0x70, 0x00
.endobj str_ライバルsp_mri_00022690

# .rodata:0xD3 | 0x1FFB | size: 0x1
.obj gap_03_00001FFB_rodata, global
.hidden gap_03_00001FFB_rodata
	.byte 0x00
.endobj gap_03_00001FFB_rodata

# .rodata:0xD4 | 0x1FFC | size: 0xC
.obj str_mobj_lock00_mri_0002269c, local
	.string "mobj_lock00"
.endobj str_mobj_lock00_mri_0002269c

# .rodata:0xE0 | 0x2008 | size: 0xC
.obj str_mobj_lock01_mri_000226a8, local
	.string "mobj_lock01"
.endobj str_mobj_lock01_mri_000226a8

# .rodata:0xEC | 0x2014 | size: 0x9
.obj str_kururin1_mri_000226b4, local
	.string "kururin1"
.endobj str_kururin1_mri_000226b4

# .rodata:0xF5 | 0x201D | size: 0x3
.obj gap_03_0000201D_rodata, global
.hidden gap_03_0000201D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000201D_rodata

# .rodata:0xF8 | 0x2020 | size: 0x10
.obj str_stg2_mri_e14_00_mri_000226c0, local
	.string "stg2_mri_e14_00"
.endobj str_stg2_mri_e14_00_mri_000226c0

# .rodata:0x108 | 0x2030 | size: 0x16
.obj str_SFX_STG2_CHOUROU_BIG_mri_000226d0, local
	.string "SFX_STG2_CHOUROU_BIG1"
.endobj str_SFX_STG2_CHOUROU_BIG_mri_000226d0

# .rodata:0x11E | 0x2046 | size: 0x2
.obj gap_03_00002046_rodata, global
.hidden gap_03_00002046_rodata
	.2byte 0x0000
.endobj gap_03_00002046_rodata

# .rodata:0x120 | 0x2048 | size: 0x1B
.obj str_SFX_VOICE_MARIO_SURP_mri_000226e8, local
	.string "SFX_VOICE_MARIO_SURPRISED1"
.endobj str_SFX_VOICE_MARIO_SURP_mri_000226e8

# .rodata:0x13B | 0x2063 | size: 0x1
.obj gap_03_00002063_rodata, global
.hidden gap_03_00002063_rodata
	.byte 0x00
.endobj gap_03_00002063_rodata

# .rodata:0x13C | 0x2064 | size: 0x6
.obj str_M_N_7_mri_00022704, local
	.string "M_N_7"
.endobj str_M_N_7_mri_00022704

# .rodata:0x142 | 0x206A | size: 0x2
.obj gap_03_0000206A_rodata, global
.hidden gap_03_0000206A_rodata
	.2byte 0x0000
.endobj gap_03_0000206A_rodata

# .rodata:0x144 | 0x206C | size: 0x6
.obj str_M_S_1_mri_0002270c, local
	.string "M_S_1"
.endobj str_M_S_1_mri_0002270c

# .rodata:0x14A | 0x2072 | size: 0x2
.obj gap_03_00002072_rodata, global
.hidden gap_03_00002072_rodata
	.2byte 0x0000
.endobj gap_03_00002072_rodata

# .rodata:0x14C | 0x2074 | size: 0x13
.obj str_BGM_EVT_STG2_PUNI1_mri_00022714, local
	.string "BGM_EVT_STG2_PUNI1"
.endobj str_BGM_EVT_STG2_PUNI1_mri_00022714

# .rodata:0x15F | 0x2087 | size: 0x1
.obj gap_03_00002087_rodata, global
.hidden gap_03_00002087_rodata
	.byte 0x00
.endobj gap_03_00002087_rodata

# .rodata:0x160 | 0x2088 | size: 0x10
.obj str_stg2_mri_e14_01_mri_00022728, local
	.string "stg2_mri_e14_01"
.endobj str_stg2_mri_e14_01_mri_00022728

# .rodata:0x170 | 0x2098 | size: 0x10
.obj str_stg2_mri_e14_02_mri_00022738, local
	.string "stg2_mri_e14_02"
.endobj str_stg2_mri_e14_02_mri_00022738

# .rodata:0x180 | 0x20A8 | size: 0x10
.obj str_stg2_mri_e14_03_mri_00022748, local
	.string "stg2_mri_e14_03"
.endobj str_stg2_mri_e14_03_mri_00022748

# .rodata:0x190 | 0x20B8 | size: 0x10
.obj str_stg2_mri_e14_04_mri_00022758, local
	.string "stg2_mri_e14_04"
.endobj str_stg2_mri_e14_04_mri_00022758

# .rodata:0x1A0 | 0x20C8 | size: 0x14
.obj str_SFX_STG2_PUNI_JUMP1_mri_00022768, local
	.string "SFX_STG2_PUNI_JUMP1"
.endobj str_SFX_STG2_PUNI_JUMP1_mri_00022768

# .rodata:0x1B4 | 0x20DC | size: 0x10
.obj str_stg2_mri_e14_05_mri_0002277c, local
	.string "stg2_mri_e14_05"
.endobj str_stg2_mri_e14_05_mri_0002277c

# .rodata:0x1C4 | 0x20EC | size: 0x10
.obj str_stg2_mri_e14_06_mri_0002278c, local
	.string "stg2_mri_e14_06"
.endobj str_stg2_mri_e14_06_mri_0002278c

# .rodata:0x1D4 | 0x20FC | size: 0x17
.obj str_SFX_VOICE_MARIO_SLEE_mri_0002279c, local
	.string "SFX_VOICE_MARIO_SLEEP1"
.endobj str_SFX_VOICE_MARIO_SLEE_mri_0002279c

# .rodata:0x1EB | 0x2113 | size: 0x1
.obj gap_03_00002113_rodata, global
.hidden gap_03_00002113_rodata
	.byte 0x00
.endobj gap_03_00002113_rodata

# .rodata:0x1EC | 0x2114 | size: 0x10
.obj str_stg2_mri_e14_07_mri_000227b4, local
	.string "stg2_mri_e14_07"
.endobj str_stg2_mri_e14_07_mri_000227b4

# .rodata:0x1FC | 0x2124 | size: 0x10
.obj str_stg2_mri_e14_08_mri_000227c4, local
	.string "stg2_mri_e14_08"
.endobj str_stg2_mri_e14_08_mri_000227c4

# .rodata:0x20C | 0x2134 | size: 0x10
.obj str_stg2_mri_e14_09_mri_000227d4, local
	.string "stg2_mri_e14_09"
.endobj str_stg2_mri_e14_09_mri_000227d4

# .rodata:0x21C | 0x2144 | size: 0x10
.obj str_stg2_mri_e14_10_mri_000227e4, local
	.string "stg2_mri_e14_10"
.endobj str_stg2_mri_e14_10_mri_000227e4

# .rodata:0x22C | 0x2154 | size: 0x10
.obj str_stg2_mri_e14_11_mri_000227f4, local
	.string "stg2_mri_e14_11"
.endobj str_stg2_mri_e14_11_mri_000227f4

# .rodata:0x23C | 0x2164 | size: 0x10
.obj str_stg2_mri_e14_12_mri_00022804, local
	.string "stg2_mri_e14_12"
.endobj str_stg2_mri_e14_12_mri_00022804

# .rodata:0x24C | 0x2174 | size: 0x13
.obj str_stg2_mri_e14_12_01_mri_00022814, local
	.string "stg2_mri_e14_12_01"
.endobj str_stg2_mri_e14_12_01_mri_00022814

# .rodata:0x25F | 0x2187 | size: 0x1
.obj gap_03_00002187_rodata, global
.hidden gap_03_00002187_rodata
	.byte 0x00
.endobj gap_03_00002187_rodata

# .rodata:0x260 | 0x2188 | size: 0x13
.obj str_stg2_mri_e14_12_02_mri_00022828, local
	.string "stg2_mri_e14_12_02"
.endobj str_stg2_mri_e14_12_02_mri_00022828

# .rodata:0x273 | 0x219B | size: 0x1
.obj gap_03_0000219B_rodata, global
.hidden gap_03_0000219B_rodata
	.byte 0x00
.endobj gap_03_0000219B_rodata

# .rodata:0x274 | 0x219C | size: 0x3
.obj str_me_mri_0002283c, local
	.string "me"
.endobj str_me_mri_0002283c

# .rodata:0x277 | 0x219F | size: 0x1
.obj gap_03_0000219F_rodata, global
.hidden gap_03_0000219F_rodata
	.byte 0x00
.endobj gap_03_0000219F_rodata

# .rodata:0x278 | 0x21A0 | size: 0x10
.obj str_stg2_mri_e14_13_mri_00022840, local
	.string "stg2_mri_e14_13"
.endobj str_stg2_mri_e14_13_mri_00022840

# .rodata:0x288 | 0x21B0 | size: 0x10
.obj str_stg2_mri_e14_14_mri_00022850, local
	.string "stg2_mri_e14_14"
.endobj str_stg2_mri_e14_14_mri_00022850

# .rodata:0x298 | 0x21C0 | size: 0x13
.obj str_stg2_mri_e19_04_02_mri_00022860, local
	.string "stg2_mri_e19_04_02"
.endobj str_stg2_mri_e19_04_02_mri_00022860

# .rodata:0x2AB | 0x21D3 | size: 0x1
.obj gap_03_000021D3_rodata, global
.hidden gap_03_000021D3_rodata
	.byte 0x00
.endobj gap_03_000021D3_rodata

# .rodata:0x2AC | 0x21D4 | size: 0x10
.obj str_stg2_mri_re_018_mri_00022874, local
	.string "stg2_mri_re_018"
.endobj str_stg2_mri_re_018_mri_00022874

# .rodata:0x2BC | 0x21E4 | size: 0x12
.obj str_stg2_mri_re_018_1_mri_00022884, local
	.string "stg2_mri_re_018_1"
.endobj str_stg2_mri_re_018_1_mri_00022884

# .rodata:0x2CE | 0x21F6 | size: 0x2
.obj gap_03_000021F6_rodata, global
.hidden gap_03_000021F6_rodata
	.2byte 0x0000
.endobj gap_03_000021F6_rodata

# .rodata:0x2D0 | 0x21F8 | size: 0x6
.obj str_dokan_mri_00022898, local
	.string "dokan"
.endobj str_dokan_mri_00022898

# .rodata:0x2D6 | 0x21FE | size: 0x2
.obj gap_03_000021FE_rodata, global
.hidden gap_03_000021FE_rodata
	.2byte 0x0000
.endobj gap_03_000021FE_rodata

# .rodata:0x2D8 | 0x2200 | size: 0x7
.obj str_mri_20_mri_000228a0, local
	.string "mri_20"
.endobj str_mri_20_mri_000228a0

# .rodata:0x2DF | 0x2207 | size: 0x1
.obj gap_03_00002207_rodata, global
.hidden gap_03_00002207_rodata
	.byte 0x00
.endobj gap_03_00002207_rodata

# .rodata:0x2E0 | 0x2208 | size: 0x7
.obj str_dokan1_mri_000228a8, local
	.string "dokan1"
.endobj str_dokan1_mri_000228a8

# .rodata:0x2E7 | 0x220F | size: 0x1
.obj gap_03_0000220F_rodata, global
.hidden gap_03_0000220F_rodata
	.byte 0x00
.endobj gap_03_0000220F_rodata

# .rodata:0x2E8 | 0x2210 | size: 0x7
.obj str_w_bero_mri_000228b0, local
	.string "w_bero"
.endobj str_w_bero_mri_000228b0

# .rodata:0x2EF | 0x2217 | size: 0x1
.obj gap_03_00002217_rodata, global
.hidden gap_03_00002217_rodata
	.byte 0x00
.endobj gap_03_00002217_rodata

# .rodata:0x2F0 | 0x2218 | size: 0x7
.obj str_mri_04_mri_000228b8, local
	.string "mri_04"
.endobj str_mri_04_mri_000228b8

# .rodata:0x2F7 | 0x221F | size: 0x1
.obj gap_03_0000221F_rodata, global
.hidden gap_03_0000221F_rodata
	.byte 0x00
.endobj gap_03_0000221F_rodata

# .rodata:0x2F8 | 0x2220 | size: 0x7
.obj str_e_bero_mri_000228c0, local
	.string "e_bero"
.endobj str_e_bero_mri_000228c0

# .rodata:0x2FF | 0x2227 | size: 0x1
.obj gap_03_00002227_rodata, global
.hidden gap_03_00002227_rodata
	.byte 0x00
.endobj gap_03_00002227_rodata

# .rodata:0x300 | 0x2228 | size: 0x19
.obj str_SFX_STG2_DOOR_GRID_O_mri_000228c8, local
	.string "SFX_STG2_DOOR_GRID_OPEN1"
.endobj str_SFX_STG2_DOOR_GRID_O_mri_000228c8

# .rodata:0x319 | 0x2241 | size: 0x3
.obj gap_03_00002241_rodata, global
.hidden gap_03_00002241_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002241_rodata

# .rodata:0x31C | 0x2244 | size: 0xA
.obj str_A_hako_r1_mri_000228e4, local
	.string "A_hako_r1"
.endobj str_A_hako_r1_mri_000228e4

# .rodata:0x326 | 0x224E | size: 0x2
.obj gap_03_0000224E_rodata, global
.hidden gap_03_0000224E_rodata
	.2byte 0x0000
.endobj gap_03_0000224E_rodata

# .rodata:0x328 | 0x2250 | size: 0xC
.obj str_A_hako_r_01_mri_000228f0, local
	.string "A_hako_r_01"
.endobj str_A_hako_r_01_mri_000228f0

# .rodata:0x334 | 0x225C | size: 0xC
.obj str_A_hako_l_01_mri_000228fc, local
	.string "A_hako_l_01"
.endobj str_A_hako_l_01_mri_000228fc

# .rodata:0x340 | 0x2268 | size: 0xA
.obj str_S_hako_l1_mri_00022908, local
	.string "S_hako_l1"
.endobj str_S_hako_l1_mri_00022908

# .rodata:0x34A | 0x2272 | size: 0x2
.obj gap_03_00002272_rodata, global
.hidden gap_03_00002272_rodata
	.2byte 0x0000
.endobj gap_03_00002272_rodata

# .rodata:0x34C | 0x2274 | size: 0x10
.obj str_stg2_mri_e14_15_mri_00022914, local
	.string "stg2_mri_e14_15"
.endobj str_stg2_mri_e14_15_mri_00022914

# .rodata:0x35C | 0x2284 | size: 0x10
.obj str_stg2_mri_e14_16_mri_00022924, local
	.string "stg2_mri_e14_16"
.endobj str_stg2_mri_e14_16_mri_00022924

# .rodata:0x36C | 0x2294 | size: 0x10
.obj str_stg2_mri_e14_17_mri_00022934, local
	.string "stg2_mri_e14_17"
.endobj str_stg2_mri_e14_17_mri_00022934

# .rodata:0x37C | 0x22A4 | size: 0x10
.obj str_stg2_mri_e19_00_mri_00022944, local
	.string "stg2_mri_e19_00"
.endobj str_stg2_mri_e19_00_mri_00022944

# .rodata:0x38C | 0x22B4 | size: 0x18
.obj str_SFX_STG2_PUNIKO_KINO_mri_00022954, local
	.string "SFX_STG2_PUNIKO_KINOKO1"
.endobj str_SFX_STG2_PUNIKO_KINO_mri_00022954

# .rodata:0x3A4 | 0x22CC | size: 0x7
.obj str_item00_mri_0002296c, local
	.string "item00"
.endobj str_item00_mri_0002296c

# .rodata:0x3AB | 0x22D3 | size: 0x1
.obj gap_03_000022D3_rodata, global
.hidden gap_03_000022D3_rodata
	.byte 0x00
.endobj gap_03_000022D3_rodata

# .rodata:0x3AC | 0x22D4 | size: 0x10
.obj str_stg2_mri_e19_01_mri_00022974, local
	.string "stg2_mri_e19_01"
.endobj str_stg2_mri_e19_01_mri_00022974

# .rodata:0x3BC | 0x22E4 | size: 0x10
.obj str_stg2_mri_e19_02_mri_00022984, local
	.string "stg2_mri_e19_02"
.endobj str_stg2_mri_e19_02_mri_00022984

# .rodata:0x3CC | 0x22F4 | size: 0x10
.obj str_stg2_mri_e19_03_mri_00022994, local
	.string "stg2_mri_e19_03"
.endobj str_stg2_mri_e19_03_mri_00022994

# .rodata:0x3DC | 0x2304 | size: 0x10
.obj str_stg2_mri_e19_04_mri_000229a4, local
	.string "stg2_mri_e19_04"
.endobj str_stg2_mri_e19_04_mri_000229a4

# .rodata:0x3EC | 0x2314 | size: 0x7
.obj str_mri_08_mri_000229b4, local
	.string "mri_08"
.endobj str_mri_08_mri_000229b4

# .rodata:0x3F3 | 0x231B | size: 0x1
.obj gap_03_0000231B_rodata, global
.hidden gap_03_0000231B_rodata
	.byte 0x00
.endobj gap_03_0000231B_rodata

# .rodata:0x3F4 | 0x231C | size: 0xC
.obj vec3_mri_000229bc, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj vec3_mri_000229bc

# .rodata:0x400 | 0x2328 | size: 0xC
.obj vec3_mri_000229c8, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj vec3_mri_000229c8

# .rodata:0x40C | 0x2334 | size: 0xC
.obj vec3_mri_000229d4, local
	.4byte 0xC3200000
	.4byte 0x00000000
	.4byte 0x42200000
.endobj vec3_mri_000229d4

# .rodata:0x418 | 0x2340 | size: 0xC
.obj vec3_mri_000229e0, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj vec3_mri_000229e0

# .rodata:0x424 | 0x234C | size: 0xC
.obj vec3_mri_000229ec, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj vec3_mri_000229ec

# .rodata:0x430 | 0x2358 | size: 0x4
.obj float_1E06_mri_000229f8, local
	.float 1000000
.endobj float_1E06_mri_000229f8

# .rodata:0x434 | 0x235C | size: 0x4
.obj zero_mri_000229fc, local
	.float 0
.endobj zero_mri_000229fc

# .rodata:0x438 | 0x2360 | size: 0x4
.obj float_100_mri_00022a00, local
	.float 100
.endobj float_100_mri_00022a00

# .rodata:0x43C | 0x2364 | size: 0x4
.obj float_1p5_mri_00022a04, local
	.float 1.5
.endobj float_1p5_mri_00022a04

# .rodata:0x440 | 0x2368 | size: 0x4
.obj float_4900_mri_00022a08, local
	.float 4900
.endobj float_4900_mri_00022a08

# .rodata:0x444 | 0x236C | size: 0x4
.obj float_0p7_mri_00022a0c, local
	.float 0.7
.endobj float_0p7_mri_00022a0c

# .rodata:0x448 | 0x2370 | size: 0x4
.obj float_2p1_mri_00022a10, local
	.float 2.1
.endobj float_2p1_mri_00022a10

# .rodata:0x44C | 0x2374 | size: 0x4
.obj float_1_mri_00022a14, local
	.float 1
.endobj float_1_mri_00022a14

# .rodata:0x450 | 0x2378 | size: 0x4
.obj float_neg160_mri_00022a18, local
	.float -160
.endobj float_neg160_mri_00022a18

# .rodata:0x454 | 0x237C | size: 0x4
.obj float_90_mri_00022a1c, local
	.float 90
.endobj float_90_mri_00022a1c

# .rodata:0x458 | 0x2380 | size: 0x4
.obj float_270_mri_00022a20, local
	.float 270
.endobj float_270_mri_00022a20
	.4byte 0x00000000

# .rodata:0x460 | 0x2388 | size: 0x8
.obj double_to_int_mri_00022a28, local
	.double 4503601774854144
.endobj double_to_int_mri_00022a28

# .rodata:0x468 | 0x2390 | size: 0x4
.obj float_neg180_mri_00022a30, local
	.float -180
.endobj float_neg180_mri_00022a30

# .rodata:0x46C | 0x2394 | size: 0x15
.obj str_BGM_EVT_NOKO_SAIKAI1_mri_00022a34, local
	.string "BGM_EVT_NOKO_SAIKAI1"
.endobj str_BGM_EVT_NOKO_SAIKAI1_mri_00022a34

# .rodata:0x481 | 0x23A9 | size: 0x3
.obj gap_03_000023A9_rodata, global
.hidden gap_03_000023A9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000023A9_rodata

# .rodata:0x484 | 0x23AC | size: 0x10
.obj str_stg2_mri_e20_00_mri_00022a4c, local
	.string "stg2_mri_e20_00"
.endobj str_stg2_mri_e20_00_mri_00022a4c

# .rodata:0x494 | 0x23BC | size: 0x1
.obj zero_mri_00022a5c, local
	.byte 0x00
.endobj zero_mri_00022a5c

# .rodata:0x495 | 0x23BD | size: 0x3
.obj gap_03_000023BD_rodata, global
.hidden gap_03_000023BD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000023BD_rodata

# .rodata:0x498 | 0x23C0 | size: 0x10
.obj str_stg2_mri_e20_01_mri_00022a60, local
	.string "stg2_mri_e20_01"
.endobj str_stg2_mri_e20_01_mri_00022a60

# .rodata:0x4A8 | 0x23D0 | size: 0x10
.obj str_stg2_mri_e20_02_mri_00022a70, local
	.string "stg2_mri_e20_02"
.endobj str_stg2_mri_e20_02_mri_00022a70

# .rodata:0x4B8 | 0x23E0 | size: 0x10
.obj str_stg2_mri_e20_03_mri_00022a80, local
	.string "stg2_mri_e20_03"
.endobj str_stg2_mri_e20_03_mri_00022a80

# .rodata:0x4C8 | 0x23F0 | size: 0x10
.obj str_stg2_mri_e20_04_mri_00022a90, local
	.string "stg2_mri_e20_04"
.endobj str_stg2_mri_e20_04_mri_00022a90

# .rodata:0x4D8 | 0x2400 | size: 0x10
.obj str_stg2_mri_e20_05_mri_00022aa0, local
	.string "stg2_mri_e20_05"
.endobj str_stg2_mri_e20_05_mri_00022aa0

# .rodata:0x4E8 | 0x2410 | size: 0x10
.obj str_stg2_mri_e20_06_mri_00022ab0, local
	.string "stg2_mri_e20_06"
.endobj str_stg2_mri_e20_06_mri_00022ab0

# .rodata:0x4F8 | 0x2420 | size: 0x4
.obj str_T_1_mri_00022ac0, local
	.string "T_1"
.endobj str_T_1_mri_00022ac0

# .rodata:0x4FC | 0x2424 | size: 0x13
.obj str_SFX_STG2_PUNI_EAT1_mri_00022ac4, local
	.string "SFX_STG2_PUNI_EAT1"
.endobj str_SFX_STG2_PUNI_EAT1_mri_00022ac4

# .rodata:0x50F | 0x2437 | size: 0x1
.obj gap_03_00002437_rodata, global
.hidden gap_03_00002437_rodata
	.byte 0x00
.endobj gap_03_00002437_rodata

# .rodata:0x510 | 0x2438 | size: 0x10
.obj str_stg2_mri_e20_07_mri_00022ad8, local
	.string "stg2_mri_e20_07"
.endobj str_stg2_mri_e20_07_mri_00022ad8

# .rodata:0x520 | 0x2448 | size: 0x4
.obj str_S_1_mri_00022ae8, local
	.string "S_1"
.endobj str_S_1_mri_00022ae8

# .rodata:0x524 | 0x244C | size: 0x10
.obj str_stg2_mri_e20_08_mri_00022aec, local
	.string "stg2_mri_e20_08"
.endobj str_stg2_mri_e20_08_mri_00022aec

# .rodata:0x534 | 0x245C | size: 0x10
.obj str_stg2_mri_e20_09_mri_00022afc, local
	.string "stg2_mri_e20_09"
.endobj str_stg2_mri_e20_09_mri_00022afc

# .rodata:0x544 | 0x246C | size: 0x10
.obj str_stg2_mri_e20_10_mri_00022b0c, local
	.string "stg2_mri_e20_10"
.endobj str_stg2_mri_e20_10_mri_00022b0c

# .rodata:0x554 | 0x247C | size: 0x10
.obj str_stg2_mri_e20_11_mri_00022b1c, local
	.string "stg2_mri_e20_11"
.endobj str_stg2_mri_e20_11_mri_00022b1c

# .rodata:0x564 | 0x248C | size: 0x10
.obj str_stg2_mri_e20_12_mri_00022b2c, local
	.string "stg2_mri_e20_12"
.endobj str_stg2_mri_e20_12_mri_00022b2c

# .rodata:0x574 | 0x249C | size: 0x10
.obj str_stg2_mri_e20_13_mri_00022b3c, local
	.string "stg2_mri_e20_13"
.endobj str_stg2_mri_e20_13_mri_00022b3c

# .rodata:0x584 | 0x24AC | size: 0x10
.obj str_stg2_mri_e20_14_mri_00022b4c, local
	.string "stg2_mri_e20_14"
.endobj str_stg2_mri_e20_14_mri_00022b4c

# .rodata:0x594 | 0x24BC | size: 0x12
.obj str_BGM_FF_GET_PARTY1_mri_00022b5c, local
	.string "BGM_FF_GET_PARTY1"
.endobj str_BGM_FF_GET_PARTY1_mri_00022b5c

# .rodata:0x5A6 | 0x24CE | size: 0x2
.obj gap_03_000024CE_rodata, global
.hidden gap_03_000024CE_rodata
	.2byte 0x0000
.endobj gap_03_000024CE_rodata

# .rodata:0x5A8 | 0x24D0 | size: 0x10
.obj str_stg2_mri_e20_16_mri_00022b70, local
	.string "stg2_mri_e20_16"
.endobj str_stg2_mri_e20_16_mri_00022b70

# .rodata:0x5B8 | 0x24E0 | size: 0x12
.obj str_stg2_mri_e20_16_1_mri_00022b80, local
	.string "stg2_mri_e20_16_1"
.endobj str_stg2_mri_e20_16_1_mri_00022b80

# .rodata:0x5CA | 0x24F2 | size: 0x2
.obj gap_03_000024F2_rodata, global
.hidden gap_03_000024F2_rodata
	.2byte 0x0000
.endobj gap_03_000024F2_rodata

# .rodata:0x5CC | 0x24F4 | size: 0xE
.obj str_BGM_STG2_MRI1_mri_00022b94, local
	.string "BGM_STG2_MRI1"
.endobj str_BGM_STG2_MRI1_mri_00022b94

# .rodata:0x5DA | 0x2502 | size: 0x2
.obj gap_03_00002502_rodata, global
.hidden gap_03_00002502_rodata
	.2byte 0x0000
.endobj gap_03_00002502_rodata

# .rodata:0x5DC | 0x2504 | size: 0x13
.obj str_stg2_mri_e12_26_06_mri_00022ba4, local
	.string "stg2_mri_e12_26_06"
.endobj str_stg2_mri_e12_26_06_mri_00022ba4

# .rodata:0x5EF | 0x2517 | size: 0x1
.obj gap_03_00002517_rodata, global
.hidden gap_03_00002517_rodata
	.byte 0x00
.endobj gap_03_00002517_rodata

# .rodata:0x5F0 | 0x2518 | size: 0x13
.obj str_stg2_mri_e12_26_01_mri_00022bb8, local
	.string "stg2_mri_e12_26_01"
.endobj str_stg2_mri_e12_26_01_mri_00022bb8

# .rodata:0x603 | 0x252B | size: 0x1
.obj gap_03_0000252B_rodata, global
.hidden gap_03_0000252B_rodata
	.byte 0x00
.endobj gap_03_0000252B_rodata

# .rodata:0x604 | 0x252C | size: 0x13
.obj str_stg2_mri_e12_26_02_mri_00022bcc, local
	.string "stg2_mri_e12_26_02"
.endobj str_stg2_mri_e12_26_02_mri_00022bcc

# .rodata:0x617 | 0x253F | size: 0x1
.obj gap_03_0000253F_rodata, global
.hidden gap_03_0000253F_rodata
	.byte 0x00
.endobj gap_03_0000253F_rodata

# .rodata:0x618 | 0x2540 | size: 0x13
.obj str_stg2_mri_e12_26_03_mri_00022be0, local
	.string "stg2_mri_e12_26_03"
.endobj str_stg2_mri_e12_26_03_mri_00022be0

# .rodata:0x62B | 0x2553 | size: 0x1
.obj gap_03_00002553_rodata, global
.hidden gap_03_00002553_rodata
	.byte 0x00
.endobj gap_03_00002553_rodata

# .rodata:0x62C | 0x2554 | size: 0x13
.obj str_stg2_mri_e12_26_04_mri_00022bf4, local
	.string "stg2_mri_e12_26_04"
.endobj str_stg2_mri_e12_26_04_mri_00022bf4

# .rodata:0x63F | 0x2567 | size: 0x1
.obj gap_03_00002567_rodata, global
.hidden gap_03_00002567_rodata
	.byte 0x00
.endobj gap_03_00002567_rodata

# .rodata:0x640 | 0x2568 | size: 0x13
.obj str_stg2_mri_e12_26_05_mri_00022c08, local
	.string "stg2_mri_e12_26_05"
.endobj str_stg2_mri_e12_26_05_mri_00022c08

# .rodata:0x653 | 0x257B | size: 0x1
.obj gap_03_0000257B_rodata, global
.hidden gap_03_0000257B_rodata
	.byte 0x00
.endobj gap_03_0000257B_rodata

# .rodata:0x654 | 0x257C | size: 0x13
.obj str_stg2_mri_e12_26_07_mri_00022c1c, local
	.string "stg2_mri_e12_26_07"
.endobj str_stg2_mri_e12_26_07_mri_00022c1c

# .rodata:0x667 | 0x258F | size: 0x1
.obj gap_03_0000258F_rodata, global
.hidden gap_03_0000258F_rodata
	.byte 0x00
.endobj gap_03_0000258F_rodata

# .rodata:0x668 | 0x2590 | size: 0x13
.obj str_stg2_mri_e12_26_08_mri_00022c30, local
	.string "stg2_mri_e12_26_08"
.endobj str_stg2_mri_e12_26_08_mri_00022c30

# .rodata:0x67B | 0x25A3 | size: 0x1
.obj gap_03_000025A3_rodata, global
.hidden gap_03_000025A3_rodata
	.byte 0x00
.endobj gap_03_000025A3_rodata

# .rodata:0x67C | 0x25A4 | size: 0x13
.obj str_stg2_mri_e12_26_09_mri_00022c44, local
	.string "stg2_mri_e12_26_09"
.endobj str_stg2_mri_e12_26_09_mri_00022c44

# .rodata:0x68F | 0x25B7 | size: 0x1
.obj gap_03_000025B7_rodata, global
.hidden gap_03_000025B7_rodata
	.byte 0x00
.endobj gap_03_000025B7_rodata

# .rodata:0x690 | 0x25B8 | size: 0x13
.obj str_stg2_mri_e12_26_10_mri_00022c58, local
	.string "stg2_mri_e12_26_10"
.endobj str_stg2_mri_e12_26_10_mri_00022c58

# .rodata:0x6A3 | 0x25CB | size: 0x1
.obj gap_03_000025CB_rodata, global
.hidden gap_03_000025CB_rodata
	.byte 0x00
.endobj gap_03_000025CB_rodata

# .rodata:0x6A4 | 0x25CC | size: 0x13
.obj str_stg2_mri_e12_26_11_mri_00022c6c, local
	.string "stg2_mri_e12_26_11"
.endobj str_stg2_mri_e12_26_11_mri_00022c6c

# .rodata:0x6B7 | 0x25DF | size: 0x1
.obj gap_03_000025DF_rodata, global
.hidden gap_03_000025DF_rodata
	.byte 0x00
.endobj gap_03_000025DF_rodata

# .rodata:0x6B8 | 0x25E0 | size: 0x13
.obj str_stg2_mri_e12_26_12_mri_00022c80, local
	.string "stg2_mri_e12_26_12"
.endobj str_stg2_mri_e12_26_12_mri_00022c80

# .rodata:0x6CB | 0x25F3 | size: 0x1
.obj gap_03_000025F3_rodata, global
.hidden gap_03_000025F3_rodata
	.byte 0x00
.endobj gap_03_000025F3_rodata

# .rodata:0x6CC | 0x25F4 | size: 0x13
.obj str_stg2_mri_e19_04_01_mri_00022c94, local
	.string "stg2_mri_e19_04_01"
.endobj str_stg2_mri_e19_04_01_mri_00022c94

# .rodata:0x6DF | 0x2607 | size: 0x1
.obj gap_03_00002607_rodata, global
.hidden gap_03_00002607_rodata
	.byte 0x00
.endobj gap_03_00002607_rodata

# .rodata:0x6E0 | 0x2608 | size: 0x9
.obj str_A_ueki01_mri_00022ca8, local
	.string "A_ueki01"
.endobj str_A_ueki01_mri_00022ca8

# .rodata:0x6E9 | 0x2611 | size: 0x3
.obj gap_03_00002611_rodata, global
.hidden gap_03_00002611_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002611_rodata

# .rodata:0x6EC | 0x2614 | size: 0x9
.obj str_S_ueki01_mri_00022cb4, local
	.string "S_ueki01"
.endobj str_S_ueki01_mri_00022cb4

# .rodata:0x6F5 | 0x261D | size: 0x3
.obj gap_03_0000261D_rodata, global
.hidden gap_03_0000261D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000261D_rodata

# .rodata:0x6F8 | 0x2620 | size: 0x9
.obj str_A_ueki03_mri_00022cc0, local
	.string "A_ueki03"
.endobj str_A_ueki03_mri_00022cc0

# .rodata:0x701 | 0x2629 | size: 0x3
.obj gap_03_00002629_rodata, global
.hidden gap_03_00002629_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002629_rodata

# .rodata:0x704 | 0x262C | size: 0x9
.obj str_S_ueki03_mri_00022ccc, local
	.string "S_ueki03"
.endobj str_S_ueki03_mri_00022ccc

# .rodata:0x70D | 0x2635 | size: 0x3
.obj gap_03_00002635_rodata, global
.hidden gap_03_00002635_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002635_rodata

# .rodata:0x710 | 0x2638 | size: 0x9
.obj str_A_ueki04_mri_00022cd8, local
	.string "A_ueki04"
.endobj str_A_ueki04_mri_00022cd8

# .rodata:0x719 | 0x2641 | size: 0x3
.obj gap_03_00002641_rodata, global
.hidden gap_03_00002641_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002641_rodata

# .rodata:0x71C | 0x2644 | size: 0x9
.obj str_S_ueki04_mri_00022ce4, local
	.string "S_ueki04"
.endobj str_S_ueki04_mri_00022ce4

# .rodata:0x725 | 0x264D | size: 0x3
.obj gap_03_0000264D_rodata, global
.hidden gap_03_0000264D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000264D_rodata

# .rodata:0x728 | 0x2650 | size: 0x9
.obj str_A_ueki05_mri_00022cf0, local
	.string "A_ueki05"
.endobj str_A_ueki05_mri_00022cf0

# .rodata:0x731 | 0x2659 | size: 0x3
.obj gap_03_00002659_rodata, global
.hidden gap_03_00002659_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002659_rodata

# .rodata:0x734 | 0x265C | size: 0x9
.obj str_S_ueki05_mri_00022cfc, local
	.string "S_ueki05"
.endobj str_S_ueki05_mri_00022cfc

# .rodata:0x73D | 0x2665 | size: 0x3
.obj gap_03_00002665_rodata, global
.hidden gap_03_00002665_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002665_rodata

# .rodata:0x740 | 0x2668 | size: 0x10
.obj str_BGM_EVT_DANGER4_mri_00022d08, local
	.string "BGM_EVT_DANGER4"
.endobj str_BGM_EVT_DANGER4_mri_00022d08

# .rodata:0x750 | 0x2678 | size: 0xE
.obj str_ENV_STG2_MRI9_mri_00022d18, local
	.string "ENV_STG2_MRI9"
.endobj str_ENV_STG2_MRI9_mri_00022d18

# .rodata:0x75E | 0x2686 | size: 0x2
.obj gap_03_00002686_rodata, global
.hidden gap_03_00002686_rodata
	.2byte 0x0000
.endobj gap_03_00002686_rodata

# .rodata:0x760 | 0x2688 | size: 0x13
.obj str_BGM_EVT_STG2_PUNI2_mri_00022d28, local
	.string "BGM_EVT_STG2_PUNI2"
.endobj str_BGM_EVT_STG2_PUNI2_mri_00022d28

# .rodata:0x773 | 0x269B | size: 0x1
.obj gap_03_0000269B_rodata, global
.hidden gap_03_0000269B_rodata
	.byte 0x00
.endobj gap_03_0000269B_rodata

# .rodata:0x774 | 0x269C | size: 0xE
.obj str_ENV_STG2_MRI4_mri_00022d3c, local
	.string "ENV_STG2_MRI4"
.endobj str_ENV_STG2_MRI4_mri_00022d3c

# .rodata:0x782 | 0x26AA | size: 0x2
.obj gap_03_000026AA_rodata, global
.hidden gap_03_000026AA_rodata
	.2byte 0x0000
.endobj gap_03_000026AA_rodata

# .rodata:0x784 | 0x26AC | size: 0xB
.obj str_S_yuka_oku_mri_00022d4c, local
	.string "S_yuka_oku"
.endobj str_S_yuka_oku_mri_00022d4c

# .rodata:0x78F | 0x26B7 | size: 0x1
.obj gap_03_000026B7_rodata, global
.hidden gap_03_000026B7_rodata
	.byte 0x00
.endobj gap_03_000026B7_rodata

# .rodata:0x790 | 0x26B8 | size: 0x8
.obj str_mizu_01_mri_00022d58, local
	.string "mizu_01"
.endobj str_mizu_01_mri_00022d58

# .rodata:0x798 | 0x26C0 | size: 0x8
.obj str_mizu_02_mri_00022d60, local
	.string "mizu_02"
.endobj str_mizu_02_mri_00022d60

# .rodata:0x7A0 | 0x26C8 | size: 0x7
.obj str_awa_01_mri_00022d68, local
	.string "awa_01"
.endobj str_awa_01_mri_00022d68

# .rodata:0x7A7 | 0x26CF | size: 0x1
.obj gap_03_000026CF_rodata, global
.hidden gap_03_000026CF_rodata
	.byte 0x00
.endobj gap_03_000026CF_rodata

# .rodata:0x7A8 | 0x26D0 | size: 0x7
.obj str_awa_02_mri_00022d70, local
	.string "awa_02"
.endobj str_awa_02_mri_00022d70

# .rodata:0x7AF | 0x26D7 | size: 0x1
.obj gap_03_000026D7_rodata, global
.hidden gap_03_000026D7_rodata
	.byte 0x00
.endobj gap_03_000026D7_rodata

# .rodata:0x7B0 | 0x26D8 | size: 0xA
.obj str_hikari_01_mri_00022d78, local
	.string "hikari_01"
.endobj str_hikari_01_mri_00022d78

# .rodata:0x7BA | 0x26E2 | size: 0x6
.obj gap_03_000026E2_rodata, global
.hidden gap_03_000026E2_rodata
	.4byte 0x00000000
	.2byte 0x0000
.endobj gap_03_000026E2_rodata

# 0x00010670..0x00014518 | size: 0x3EA8
.data
.balign 8

# .data:0x0 | 0x10670 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x10678 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x1067C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x10680 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x10684 | size: 0x4
.obj gap_04_00010684_data, global
.hidden gap_04_00010684_data
	.4byte 0x00000000
.endobj gap_04_00010684_data

# .data:0x18 | 0x10688 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x10690 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x10694 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x10698 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x106A0 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x106A4 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x106A8 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x106AC | size: 0x4
.obj gap_04_000106AC_data, global
.hidden gap_04_000106AC_data
	.4byte 0x00000000
.endobj gap_04_000106AC_data

# .data:0x40 | 0x106B0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x106B8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x106BC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x106C0 | size: 0x60
.obj jail_alpha_mario_check, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001C
	.4byte 0xFE363C82
	.4byte 0xFFFFFFAF
	.4byte 0x00020032
	.4byte 0xFD050F82
	.4byte 0x00000050
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFD050F82
	.4byte 0x000000FF
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj jail_alpha_mario_check

# .data:0xB0 | 0x10720 | size: 0x370
.obj jail_alpha, local
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_mri_000225cc
	.4byte 0x00000800
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_hako_l_saku_mri_000225d0
	.4byte 0x00000800
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_hako_l_doa_mri_000225e0
	.4byte 0x00000800
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_hako_l_01_mri_000225f0
	.4byte 0x00000800
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_hako_r_saku_mri_000225fc
	.4byte 0x00000800
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_hako_r_doa_mri_0002260c
	.4byte 0x00000800
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_hako_r_01_mri_0002261c
	.4byte 0x00000800
	.4byte 0x0004005B
	.4byte evt_map_blend_set_flag
	.4byte 0x00000001
	.4byte str_mario_mri_00022628
	.4byte 0x00000800
	.4byte 0x0004005B
	.4byte evt_map_blend_set_flag
	.4byte 0x00000001
	.4byte str_party_mri_00022630
	.4byte 0x00000800
	.4byte 0x0004005B
	.4byte evt_map_blend_set_flag
	.4byte 0x00000001
	.4byte str_プニ族長老_mri_00022638
	.4byte 0x00000800
	.4byte 0x0004005B
	.4byte evt_map_blend_set_flag
	.4byte 0x00000001
	.4byte str_ガイド妹_mri_00022644
	.4byte 0x00000800
	.4byte 0x0004005B
	.4byte evt_map_blend_set_flag
	.4byte 0x00000001
	.4byte str_ガイド_mri_00022650
	.4byte 0x00000800
	.4byte 0x0004005B
	.4byte evt_map_blend_set_flag
	.4byte 0x00000001
	.4byte str_プニ族_mri_00022658
	.4byte 0x00000800
	.4byte 0x0004005B
	.4byte evt_map_blend_set_flag
	.4byte 0x00000001
	.4byte str_プニ族３_mri_00022660
	.4byte 0x00000800
	.4byte 0x0004005B
	.4byte evt_map_blend_set_flag
	.4byte 0x00000001
	.4byte str_ガイドsp_mri_0002266c
	.4byte 0x00000800
	.4byte 0x0004005B
	.4byte evt_map_blend_set_flag
	.4byte 0x00000001
	.4byte str_ガイド妹sp_mri_00022678
	.4byte 0x00000800
	.4byte 0x0004005B
	.4byte evt_map_blend_set_flag
	.4byte 0x00000001
	.4byte str_ちびトゲsp_mri_00022684
	.4byte 0x00000800
	.4byte 0x0004005B
	.4byte evt_map_blend_set_flag
	.4byte 0x00000001
	.4byte str_ライバルsp_mri_00022690
	.4byte 0x00000800
	.4byte 0x00020018
	.4byte 0xF8406690
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_blend_set_mobj_flag
	.4byte 0x00000001
	.4byte str_mobj_lock00_mri_0002269c
	.4byte 0x00000800
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406692
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_blend_set_mobj_flag
	.4byte 0x00000001
	.4byte str_mobj_lock01_mri_000226a8
	.4byte 0x00000800
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF840716D
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_blend_set_mobj_flag
	.4byte 0x00000001
	.4byte str_kururin1_mri_000226b4
	.4byte 0x00000800
	.4byte 0x00000021
	.4byte 0x0001005C
	.4byte jail_alpha_mario_check
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x000000FF
	.4byte 0x00020032
	.4byte 0xFD050F82
	.4byte 0x000000FF
	.4byte 0x00020032
	.4byte 0xFD050F83
	.4byte 0x000000FF
	.4byte 0x00020032
	.4byte 0xFAA2B582
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFAA2B582
	.4byte 0x00000000
	.4byte 0x0002001A
	.4byte 0xFD050F82
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFB
	.4byte 0x0002001B
	.4byte 0xFD050F82
	.4byte 0xFE363C8A
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFD050F82
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002001B
	.4byte 0xFD050F82
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000005
	.4byte 0x0002001A
	.4byte 0xFD050F82
	.4byte 0xFE363C8A
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFD050F82
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte evt_map_set_blend
	.4byte 0x00000000
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0xFE363C8A
	.4byte 0x00000020
	.4byte 0x0002001A
	.4byte 0xFD050F83
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFB
	.4byte 0x0002001B
	.4byte 0xFD050F83
	.4byte 0xFE363C8A
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFD050F83
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002001B
	.4byte 0xFD050F83
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000005
	.4byte 0x0002001A
	.4byte 0xFD050F83
	.4byte 0xFE363C8A
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFD050F83
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte evt_map_set_blend
	.4byte 0x00000000
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0xFE363C8A
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj jail_alpha

# .data:0x420 | 0x10A90 | size: 0x124
.obj after_2hours, local
	.4byte 0x0002005B
	.4byte evt_map_blend_off
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_mri_000225cc
	.4byte 0x00000800
	.4byte 0x0004005B
	.4byte evt_map_blend_set_flag
	.4byte 0x00000000
	.4byte str_mario_mri_00022628
	.4byte 0x00000800
	.4byte 0x0004005B
	.4byte evt_map_blend_set_flag
	.4byte 0x00000000
	.4byte str_party_mri_00022630
	.4byte 0x00000800
	.4byte 0x0004005B
	.4byte evt_map_blend_set_flag
	.4byte 0x00000000
	.4byte str_プニ族長老_mri_00022638
	.4byte 0x00000800
	.4byte 0x0004005B
	.4byte evt_map_blend_set_flag
	.4byte 0x00000000
	.4byte str_ガイド妹_mri_00022644
	.4byte 0x00000800
	.4byte 0x0004005B
	.4byte evt_map_blend_set_flag
	.4byte 0x00000000
	.4byte str_ガイド_mri_00022650
	.4byte 0x00000800
	.4byte 0x0004005B
	.4byte evt_map_blend_set_flag
	.4byte 0x00000000
	.4byte str_プニ族_mri_00022658
	.4byte 0x00000800
	.4byte 0x0004005B
	.4byte evt_map_blend_set_flag
	.4byte 0x00000000
	.4byte str_プニ族３_mri_00022660
	.4byte 0x00000800
	.4byte 0x0004005B
	.4byte evt_map_blend_set_flag
	.4byte 0x00000000
	.4byte str_ガイドsp_mri_0002266c
	.4byte 0x00000800
	.4byte 0x0004005B
	.4byte evt_map_blend_set_flag
	.4byte 0x00000000
	.4byte str_ガイド妹sp_mri_00022678
	.4byte 0x00000800
	.4byte 0x0004005B
	.4byte evt_map_blend_set_flag
	.4byte 0x00000000
	.4byte str_ちびトゲsp_mri_00022684
	.4byte 0x00000800
	.4byte 0x0004005B
	.4byte evt_map_blend_set_flag
	.4byte 0x00000000
	.4byte str_ライバルsp_mri_00022690
	.4byte 0x00000800
	.4byte 0x0006005B
	.4byte evt_map_set_blend
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000000FF
	.4byte 0x00000002
	.4byte 0x00000001
.endobj after_2hours

# .data:0x544 | 0x10BB4 | size: 0x60
.obj spline_dt, local
	.4byte 0x43040000
	.4byte 0x00000000
	.4byte 0xC3190000
	.4byte 0x42BE88CF
	.4byte 0x00000000
	.4byte 0xC2D82E45
	.4byte 0x42A29D06
	.4byte 0x00000000
	.4byte 0xC2C9655A
	.4byte 0x429F74A3
	.4byte 0x00000000
	.4byte 0xC292A75A
	.4byte 0x42EAAB4E
	.4byte 0x00000000
	.4byte 0xC26CB60F
	.4byte 0x43220B78
	.4byte 0x00000000
	.4byte 0xC2544E42
	.4byte 0x4364A6AD
	.4byte 0x00000000
	.4byte 0x42114D20
	.4byte 0x43757472
	.4byte 0x00000000
	.4byte 0x41B28E3B
.endobj spline_dt

# .data:0x5A4 | 0x10C14 | size: 0x3C
.obj spline_dt1, local
	.4byte 0x42C40000
	.4byte 0x00000000
	.4byte 0xC31C0000
	.4byte 0x4282388C
	.4byte 0x00000000
	.4byte 0xC2A078F9
	.4byte 0x42628B17
	.4byte 0x00000000
	.4byte 0xC2658E55
	.4byte 0xC08ABA41
	.4byte 0x00000000
	.4byte 0xC22371F6
	.4byte 0xC3110000
	.4byte 0x00000000
	.4byte 0xC2700000
.endobj spline_dt1

# .data:0x5E0 | 0x10C50 | size: 0xC0C
.obj elder_rescue, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000069
	.4byte 0x00000052
	.4byte 0x0000005C
	.4byte 0x00000069
	.4byte 0x0000001E
	.4byte 0xFFFFFF35
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_プニ族長老_mri_00022638
	.4byte 0x40000020
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ガイド_mri_00022650
	.4byte 0x40000020
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ガイド_mri_00022650
	.4byte 0x00000600
	.4byte 0x0001005E
	.4byte mri_guide_goryu_18_data_E6C
	.4byte 0x0003005B
	.4byte evt_puni_set_mode_18_text_19AE8
	.4byte 0x00000001
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_puni_get_position_18_text_18F80
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_puni_set_position_18_text_1901C
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ガイド_mri_00022650
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFD050F83
	.4byte 0x00000050
	.4byte 0x00020032
	.4byte 0xFAA2B582
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_ガイド_mri_00022650
	.4byte 0x0002005D
	.4byte mri_puni_walk_se_18_data_F68
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガイド_mri_00022650
	.4byte 0x00000062
	.4byte 0xFFFFFF64
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C89
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ガイド_mri_00022650
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e14_00_mri_000226c0
	.4byte 0x00000000
	.4byte str_ガイド_mri_00022650
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_プニ族長老_mri_00022638
	.4byte 0x0000010E
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x00000045
	.4byte 0xFFFFFF70
	.4byte 0xF24C0A80
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0x0000003F
	.4byte 0xFFFFFF56
	.4byte 0xF24CD280
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0xFFFFFFFF
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xF24C1E80
	.4byte 0xF24BA0E6
	.4byte 0xF24B2BB3
	.4byte 0xF24C1E80
	.4byte 0xF24AF280
	.4byte 0xF2474E80
	.4byte 0x000003E8
	.4byte 0x00000008
	.4byte 0x0001000A
	.4byte 0x00000384
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000069
	.4byte 0x00000052
	.4byte 0x0000005C
	.4byte 0x00000069
	.4byte 0x0000001E
	.4byte 0xFFFFFF35
	.4byte 0x00000190
	.4byte 0x0000000B
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_プニ族長老_mri_00022638
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_CHOUROU_BIG_mri_000226d0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000008
	.4byte 0xF24A7E80
	.4byte 0xF24A8480
	.4byte 0x000002BC
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte evt_npc_set_scale
	.4byte str_プニ族長老_mri_00022638
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_SURP_mri_000226e8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_7_mri_00022704
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_mri_0002270c
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0008005B
	.4byte evt_party_jump_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000190
	.4byte 0x00000001
	.4byte 0xFFFFFC18
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000001
	.4byte str_BGM_EVT_STG2_PUNI1_mri_00022714
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e14_01_mri_00022728
	.4byte 0x00000000
	.4byte str_プニ族長老_mri_00022638
	.4byte 0x0001000B
	.4byte 0xFAA2B580
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000005
	.4byte 0xF24A8480
	.4byte 0xF24A7E80
	.4byte 0x000000C8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte evt_npc_set_scale
	.4byte str_プニ族長老_mri_00022638
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e14_02_mri_00022738
	.4byte 0x00000000
	.4byte str_ガイド_mri_00022650
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e14_03_mri_00022748
	.4byte 0x00000000
	.4byte str_プニ族長老_mri_00022638
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e14_04_mri_00022758
	.4byte 0x00000000
	.4byte str_ガイド_mri_00022650
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_プニ族長老_mri_00022638
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_プニ族長老_mri_00022638
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_PUNI_JUMP1_mri_00022768
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_プニ族長老_mri_00022638
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000C8
	.4byte 0x00000012
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_プニ族長老_mri_00022638
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_プニ族長老_mri_00022638
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_PUNI_JUMP1_mri_00022768
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_プニ族長老_mri_00022638
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000C8
	.4byte 0x00000012
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e14_05_mri_0002277c
	.4byte 0x00000000
	.4byte str_プニ族長老_mri_00022638
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00006801
	.4byte 0x0002005B
	.4byte evt_fade_out
	.4byte 0x000003E8
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0006005B
	.4byte evt_fade_entry
	.4byte 0x0000000C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e14_06_mri_0002278c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001006C
	.4byte 0xFD050F81
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_SLEE_mri_0002279c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000BB8
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0001005B
	.4byte evt_mario_sleep_on
	.4byte 0x0002005B
	.4byte evt_party_sleep_on
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0006005B
	.4byte evt_fade_entry
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x000000A1
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_fade_in
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e14_07_mri_000227b4
	.4byte 0x00000000
	.4byte str_プニ族長老_mri_00022638
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e14_08_mri_000227c4
	.4byte 0x00000000
	.4byte str_ガイド_mri_00022650
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_プニ族長老_mri_00022638
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_プニ族長老_mri_00022638
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_PUNI_JUMP1_mri_00022768
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_プニ族長老_mri_00022638
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000C8
	.4byte 0x00000012
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_プニ族長老_mri_00022638
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_プニ族長老_mri_00022638
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_PUNI_JUMP1_mri_00022768
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_プニ族長老_mri_00022638
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000C8
	.4byte 0x00000012
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e14_09_mri_000227d4
	.4byte 0x00000000
	.4byte str_プニ族長老_mri_00022638
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e14_10_mri_000227e4
	.4byte 0x00000000
	.4byte str_ガイド_mri_00022650
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_プニ族長老_mri_00022638
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_プニ族長老_mri_00022638
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_PUNI_JUMP1_mri_00022768
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_プニ族長老_mri_00022638
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000C8
	.4byte 0x00000012
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e14_11_mri_000227f4
	.4byte 0x00000000
	.4byte str_プニ族長老_mri_00022638
	.4byte 0x0003005B
	.4byte evt_snd_bgmoff_f
	.4byte 0x00000201
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_プニ族長老_mri_00022638
	.4byte 0x00000002
	.4byte 0x0007005B
	.4byte evt_sub_spline_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte spline_dt
	.4byte 0x00000008
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_spline_get_value
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_プニ族長老_mri_00022638
	.4byte 0x0002005D
	.4byte mri_puni_walk_se_18_data_F68
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_プニ族長老_mri_00022638
	.4byte 0xFE363C83
	.4byte 0xFE363C85
	.4byte 0x000000A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C89
	.4byte 0x00020018
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_プニ族長老_mri_00022638
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e14_12_mri_00022804
	.4byte 0x00000000
	.4byte str_ガイド_mri_00022650
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF65
	.4byte 0x00000055
	.4byte 0x000000CC
	.4byte 0xFFFFFF65
	.4byte 0x00000032
	.4byte 0x00000007
	.4byte 0x000005DC
	.4byte 0x0000000B
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_ガイド_mri_00022650
	.4byte 0x00000002
	.4byte 0x0007005B
	.4byte evt_sub_spline_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte spline_dt1
	.4byte 0x00000005
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_sub_spline_get_value
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_ガイド_mri_00022650
	.4byte 0x0002005D
	.4byte mri_puni_walk_se_18_data_F68
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガイド_mri_00022650
	.4byte 0xFE363C83
	.4byte 0xFE363C85
	.4byte 0x000000A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C89
	.4byte 0x00020018
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e14_12_01_mri_00022814
	.4byte 0x00000000
	.4byte str_ガイド_mri_00022650
	.4byte 0x0001005F
	.4byte 0xFD050F81
	.4byte 0x0001005B
	.4byte evt_mario_sleep_off
	.4byte 0x0002005B
	.4byte evt_party_sleep_off
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFFF6
	.4byte 0x00000000
	.4byte 0xFFFFFFCC
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFF92
	.4byte 0xFFFFFFCC
	.4byte 0xF24C5A80
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x00000000
	.4byte 0xFFFFFFCC
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFFBC
	.4byte 0xFFFFFFCC
	.4byte 0xF24C5A80
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e14_12_02_mri_00022828
	.4byte 0x00000000
	.4byte str_ガイド妹_mri_00022644
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000201
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000120
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ガイド_mri_00022650
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ガイド_mri_00022650
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_puni_set_position_18_text_1901C
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte evt_puni_set_mode_18_text_19AE8
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFAA2B582
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000005E
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj elder_rescue

# .data:0x11EC | 0x1185C | size: 0x34
.obj elder_init, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x0000005E
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_mri_0002283c
	.4byte 0x00000084
	.4byte 0x00000000
	.4byte 0xFFFFFF67
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj elder_init

# .data:0x1220 | 0x11890 | size: 0x34
.obj elder_talk, local
	.4byte 0x00020018
	.4byte 0xF8406690
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e14_13_mri_00022840
	.4byte 0x00000000
	.4byte str_me_mri_0002283c
	.4byte 0x00000020
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj elder_talk

# .data:0x1254 | 0x118C4 | size: 0x34
.obj sister_init, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x00000065
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_mri_0002283c
	.4byte 0xFFFFFF40
	.4byte 0x00000000
	.4byte 0xFFFFFF72
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj sister_init

# .data:0x1288 | 0x118F8 | size: 0x54
.obj sister_regl, local
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x0000005B
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000062
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_me_mri_0002283c
	.4byte str_ガイドsp_mri_0002266c
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj sister_regl

# .data:0x12DC | 0x1194C | size: 0x20
.obj sister_talk, local
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e14_14_mri_00022850
	.4byte 0x00000000
	.4byte str_me_mri_0002283c
	.4byte 0x00000002
	.4byte 0x00000001
.endobj sister_talk

# .data:0x12FC | 0x1196C | size: 0x40
.obj guide_init, local
	.4byte 0x00020018
	.4byte 0xF8406694
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_mri_0002283c
	.4byte 0xFFFFFF6F
	.4byte 0x00000000
	.4byte 0xFFFFFFC4
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_mri_0002283c
	.4byte 0x0000010E
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj guide_init

# .data:0x133C | 0x119AC | size: 0x20
.obj guide_talk, local
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e19_04_02_mri_00022860
	.4byte 0x00000000
	.4byte str_me_mri_0002283c
	.4byte 0x00000002
	.4byte 0x00000001
.endobj guide_talk

# .data:0x135C | 0x119CC | size: 0x44
.obj puni_3_init, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010029
	.4byte 0x00000076
	.4byte 0x00020018
	.4byte 0xF84066C4
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_mri_0002283c
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj puni_3_init

# .data:0x13A0 | 0x11A10 | size: 0x50
.obj puni_3_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010028
	.4byte 0x00000192
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_re_018_mri_00022874
	.4byte 0x00000000
	.4byte str_me_mri_0002283c
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_re_018_1_mri_00022884
	.4byte 0x00000000
	.4byte str_me_mri_0002283c
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj puni_3_talk

# .data:0x13F0 | 0x11A60 | size: 0x1CC
.obj npcEnt, local
	.4byte str_プニ族長老_mri_00022638
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte elder_init
	.4byte 0x00000000
	.4byte elder_talk
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
	.4byte str_ガイド妹_mri_00022644
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte sister_init
	.4byte sister_regl
	.4byte sister_talk
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
	.4byte str_ガイド_mri_00022650
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte guide_init
	.4byte 0x00000000
	.4byte guide_talk
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
	.4byte str_プニ族３_mri_00022660
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte puni_3_init
	.4byte 0x00000000
	.4byte puni_3_talk
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

# .data:0x15BC | 0x11C2C | size: 0x94
.obj bero_custom_00, local
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x0000005B
	.4byte 0x0003005B
	.4byte evt_bero_exec_onoff
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0003005B
	.4byte evt_bero_exec_onoff
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_bero_exec_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_bero_exec_onoff
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bero_custom_00

# .data:0x1650 | 0x11CC0 | size: 0xB4
.obj bero_entry_data, local
	.4byte str_dokan_mri_00022898
	.4byte 0x00020000
	.4byte 0x00000009
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte bero_custom_00
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte str_mri_20_mri_000228a0
	.4byte str_dokan1_mri_000228a8
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_w_bero_mri_000228b0
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_mri_04_mri_000228b8
	.4byte str_e_bero_mri_000228c0
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

# .data:0x1704 | 0x11D74 | size: 0x164
.obj puni_rand_position, local
	.4byte 0xFFBCFF71
	.4byte 0xFF6EFF39
	.4byte 0xFF9BFEE2
	.4byte 0xFF82FF03
	.4byte 0xFF70FF6B
	.4byte 0xFF1BFF1E
	.4byte 0xFF49FF41
	.4byte 0xFFD8FF38
	.4byte 0xFF5AFF36
	.4byte 0xFF26FF67
	.4byte 0xFFB2FF60
	.4byte 0xFF3BFEF1
	.4byte 0xFF0CFF2C
	.4byte 0xFF6FFF4D
	.4byte 0xFFC5FF17
	.4byte 0xFFC0FF2A
	.4byte 0xFF4FFF10
	.4byte 0xFFD4FF4C
	.4byte 0xFF1AFF09
	.4byte 0xFF6DFED6
	.4byte 0xFF8DFF68
	.4byte 0xFEFCFF37
	.4byte 0xFF2DFF28
	.4byte 0xFF92FEF4
	.4byte 0xFF74FF11
	.4byte 0xFF51FEE6
	.4byte 0xFF9EFF5E
	.4byte 0xFF27FF52
	.4byte 0xFFD8FF10
	.4byte 0xFFB2FF39
	.4byte 0xFF5FFF04
	.4byte 0xFF5BFF70
	.4byte 0xFF50FF25
	.4byte 0xFF7DFF5C
	.4byte 0xFF07FF03
	.4byte 0xFFA9FF0A
	.4byte 0xFFCEFEE6
	.4byte 0xFF2CFF13
	.4byte 0xFF15FEDD
	.4byte 0xFF5BFF4A
	.4byte 0xFFB7FF4C
	.4byte 0xFF73FF26
	.4byte 0xFFA3FF4A
	.4byte 0xFFA0FF2E
	.4byte 0xFF21FEED
	.4byte 0xFF3BFF64
	.4byte 0xFEF5FEF9
	.4byte 0xFF95FF08
	.4byte 0xFFA7FF70
	.4byte 0xFF1EFF36
	.4byte 0xFFB0FF1D
	.4byte 0xFF30FEE0
	.4byte 0xFFA6FEF5
	.4byte 0xFF0CFEEF
	.4byte 0xFF70FEF9
	.4byte 0xFF85FF2F
	.4byte 0xFF4DFF59
	.4byte 0xFF80FF43
	.4byte 0xFF14FF4D
	.4byte 0xFF08FF17
	.4byte 0xFF13FF62
	.4byte 0xFFD0FF6C
	.4byte 0xFF88FEDA
	.4byte 0xFFBDFEF1
	.4byte 0xFFC5FF3D
	.4byte 0xFFD4FF24
	.4byte 0xFF87FF1A
	.4byte 0xFF7FFEEC
	.4byte 0xFFD0FEFE
	.4byte 0xFF4DFEFA
	.4byte 0xFF00FF69
	.4byte 0xFF65FEE8
	.4byte 0xFFC6FF5A
	.4byte 0xFF00FF4B
	.4byte 0xFF7FFF78
	.4byte 0xFF3EFF06
	.4byte 0xFF8EFF51
	.4byte 0xFF3FFF2F
	.4byte 0xFF2BFEFE
	.4byte 0xFF61FF5D
	.4byte 0xFFBDFF05
	.4byte 0xFF93FF3E
	.4byte 0xFF30FF3D
	.4byte 0xFF95FF7A
	.4byte 0xFF61FF19
	.4byte 0xFF3EFF1B
	.4byte 0xFF9CFF1B
	.4byte 0xFFAFFEE2
	.4byte 0xFF3BFF50
.endobj puni_rand_position

# .data:0x1868 | 0x11ED8 | size: 0xD0
.obj jail_init_00, local
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x0000000E
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mri_get16bitdata_18_text_4D0
	.4byte puni_rand_position
	.4byte 0xFE363C8B
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_mri_get16bitdata_18_text_4D0
	.4byte puni_rand_position
	.4byte 0xFE363C8B
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_puni_init_puni_18_text_18B04
	.4byte 0xFE363C8A
	.4byte 0x0000000E
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00800000
	.4byte 0x0003005B
	.4byte evt_puni_pera_onoff_18_text_1A7C4
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000067
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj jail_init_00

# .data:0x1938 | 0x11FA8 | size: 0xFC
.obj red_jail_open, local
	.4byte 0x00020032
	.4byte 0xF8406691
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_hako_r_doa_mri_0002260c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_DOOR_GRID_O_mri_000228c8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x00000055
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_hako_r_doa_mri_0002260c
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_hako_r1_mri_000228e4
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_hako_r_01_mri_000228f0
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000002
	.4byte 0x00000001
.endobj red_jail_open

# .data:0x1A34 | 0x120A4 | size: 0x4C
.obj evt_opendoor00, local
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_hako_r_doa_mri_0002260c
	.4byte 0x00000000
	.4byte 0x00000055
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_hako_r1_mri_000228e4
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_hako_r_01_mri_000228f0
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_opendoor00

# .data:0x1A80 | 0x120F0 | size: 0x18
.obj evt_unlock00, local
	.4byte 0x0001005E
	.4byte red_jail_open
	.4byte 0x0001005C
	.4byte elder_rescue
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_unlock00

# .data:0x1A98 | 0x12108 | size: 0x10
.obj evt_unlock00_01, local
	.4byte 0x0001005C
	.4byte red_jail_open
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_unlock00_01

# .data:0x1AA8 | 0x12118 | size: 0x8
.obj key_table00, local
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
.endobj key_table00

# .data:0x1AB0 | 0x12120 | size: 0x5C
.obj evt_check00, local
	.4byte 0x0003005B
	.4byte evt_pouch_check_item
	.4byte 0x00000010
	.4byte 0xFE363C80
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_win_item_select
	.4byte 0x00000000
	.4byte key_table00
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte evt_mobj_exec_cancel
	.4byte str_me_mri_0002283c
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_check00

# .data:0x1B0C | 0x1217C | size: 0xF0
.obj blue_jail_open, local
	.4byte 0x00020032
	.4byte 0xF8406693
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_hako_l_doa_mri_000225e0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_DOOR_GRID_O_mri_000228c8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x00000055
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_hako_l_doa_mri_000225e0
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_hako_l_01_mri_000228fc
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_S_hako_l1_mri_00022908
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte guide_sister
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj blue_jail_open

# .data:0x1BFC | 0x1226C | size: 0x4C
.obj evt_opendoor01, local
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_hako_l_doa_mri_000225e0
	.4byte 0x00000000
	.4byte 0x00000055
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_hako_l_01_mri_000228fc
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_S_hako_l1_mri_00022908
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_opendoor01

# .data:0x1C48 | 0x122B8 | size: 0x24
.obj evt_unlock01, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0001005C
	.4byte blue_jail_open
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_unlock01

# .data:0x1C6C | 0x122DC | size: 0xC
.obj key_table01, local
	.4byte 0x00000010
	.4byte 0x00000011
	.4byte 0xFFFFFFFF
.endobj key_table01

# .data:0x1C78 | 0x122E8 | size: 0x168
.obj evt_check01, local
	.4byte 0x0003005B
	.4byte evt_win_item_maketable
	.4byte key_table01
	.4byte 0xFE363C8A
	.4byte 0x00020019
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_win_item_select
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000011
	.4byte 0x00010024
	.4byte 0x00000010
	.4byte 0x0002005B
	.4byte evt_mobj_exec_cancel
	.4byte str_me_mri_0002283c
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e14_15_mri_00022914
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_puni_get_lsw_index_18_text_19D54
	.4byte 0xF70F2E80
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00040000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ガイドsp_mri_0002266c
	.4byte 0x00000600
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e14_16_mri_00022924
	.4byte 0x00000000
	.4byte str_ガイドsp_mri_0002266c
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00040000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e14_17_mri_00022934
	.4byte 0x00000000
	.4byte str_ガイド妹_mri_00022644
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0000002A
	.4byte 0x0002005B
	.4byte evt_mobj_exec_cancel
	.4byte str_me_mri_0002283c
	.4byte 0x00000031
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_win_item_desttable
	.4byte 0xFE363C8A
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_check01

# .data:0x1DE0 | 0x12450 | size: 0x1DC
.obj bluejail_alpha, local
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_mri_000225cc
	.4byte 0x00000800
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_hako_l_saku_mri_000225d0
	.4byte 0x00000800
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_hako_l_doa_mri_000225e0
	.4byte 0x00000800
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_hako_l_01_mri_000225f0
	.4byte 0x00000800
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_hako_r_saku_mri_000225fc
	.4byte 0x00000800
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_hako_r_doa_mri_0002260c
	.4byte 0x00000800
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_hako_r_01_mri_0002261c
	.4byte 0x00000800
	.4byte 0x0004005B
	.4byte evt_map_blend_set_flag
	.4byte 0x00000001
	.4byte str_mario_mri_00022628
	.4byte 0x00000800
	.4byte 0x0004005B
	.4byte evt_map_blend_set_flag
	.4byte 0x00000001
	.4byte str_party_mri_00022630
	.4byte 0x00000800
	.4byte 0x0004005B
	.4byte evt_map_blend_set_flag
	.4byte 0x00000001
	.4byte str_プニ族長老_mri_00022638
	.4byte 0x00000800
	.4byte 0x0004005B
	.4byte evt_map_blend_set_flag
	.4byte 0x00000001
	.4byte str_ガイド妹_mri_00022644
	.4byte 0x00000800
	.4byte 0x0004005B
	.4byte evt_map_blend_set_flag
	.4byte 0x00000001
	.4byte str_ガイド_mri_00022650
	.4byte 0x00000800
	.4byte 0x0004005B
	.4byte evt_map_blend_set_flag
	.4byte 0x00000001
	.4byte str_プニ族_mri_00022658
	.4byte 0x00000800
	.4byte 0x0004005B
	.4byte evt_map_blend_set_flag
	.4byte 0x00000001
	.4byte str_ガイドsp_mri_0002266c
	.4byte 0x00000800
	.4byte 0x0004005B
	.4byte evt_map_blend_set_flag
	.4byte 0x00000001
	.4byte str_ガイド妹sp_mri_00022678
	.4byte 0x00000800
	.4byte 0x0004005B
	.4byte evt_map_blend_set_flag
	.4byte 0x00000001
	.4byte str_ちびトゲsp_mri_00022684
	.4byte 0x00000800
	.4byte 0x0004005B
	.4byte evt_map_blend_set_flag
	.4byte 0x00000001
	.4byte str_ライバルsp_mri_00022690
	.4byte 0x00000800
	.4byte 0x0006005B
	.4byte evt_map_set_blend
	.4byte 0x00000000
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x00020018
	.4byte 0xF8406690
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_blend_set_mobj_flag
	.4byte 0x00000001
	.4byte str_mobj_lock00_mri_0002269c
	.4byte 0x00000800
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406692
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_blend_set_mobj_flag
	.4byte 0x00000001
	.4byte str_mobj_lock01_mri_000226a8
	.4byte 0x00000800
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bluejail_alpha

# .data:0x1FBC | 0x1262C | size: 0x3E4
.obj bluejail_event, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_puni_puninum_onoff_18_text_1A88C
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFD050F80
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000200
	.4byte 0x0001005E
	.4byte bluejail_alpha
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ガイド妹_mri_00022644
	.4byte 0xFFFFFF40
	.4byte 0x00000000
	.4byte 0xFFFFFF88
	.4byte 0x0003005B
	.4byte evt_npc_set_ry_lr
	.4byte str_ガイド妹_mri_00022644
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ガイド妹_mri_00022644
	.4byte 0x40000020
	.4byte 0x0005005B
	.4byte evt_puni_set_position_18_text_1901C
	.4byte 0x0000000E
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_プニ族_mri_00022658
	.4byte 0xFFFFFF8E
	.4byte 0x00000000
	.4byte 0xFFFFFF88
	.4byte 0x0003005B
	.4byte evt_npc_set_ry_lr
	.4byte str_プニ族_mri_00022658
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_プニ族_mri_00022658
	.4byte 0x40000020
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_プニ族_mri_00022658
	.4byte 0x00000600
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF60
	.4byte 0x000000A0
	.4byte 0x0000021C
	.4byte 0xFFFFFF60
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x000000FF
	.4byte 0x00000050
	.4byte 0x000005DC
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_map_set_blend
	.4byte 0x00000000
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF60
	.4byte 0x0000005A
	.4byte 0x00000093
	.4byte 0xFFFFFF60
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x00000BB8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000BB8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e19_00_mri_00022944
	.4byte 0x00000000
	.4byte str_プニ族_mri_00022658
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ガイド妹_mri_00022644
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_PUNIKO_KINO_mri_00022954
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item00_mri_0002296c
	.4byte 0x00000098
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_item_flag_on
	.4byte str_item00_mri_0002296c
	.4byte 0x00000002
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x0007005B
	.4byte evt_item_move_3d_position
	.4byte str_item00_mri_0002296c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e19_01_mri_00022974
	.4byte 0x00000000
	.4byte str_ガイド妹_mri_00022644
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF61
	.4byte 0x000000C5
	.4byte 0x0000010E
	.4byte 0xFFFFFF61
	.4byte 0x00000051
	.4byte 0xFFFFFFE0
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e19_02_mri_00022984
	.4byte 0x00000000
	.4byte str_プニ族_mri_00022658
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ガイド妹_mri_00022644
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte evt_item_move_3d_position
	.4byte str_item00_mri_0002296c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_item_set_position
	.4byte str_item00_mri_0002296c
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e19_03_mri_00022994
	.4byte 0x00000000
	.4byte str_ガイド妹_mri_00022644
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e19_04_mri_000229a4
	.4byte 0x00000000
	.4byte str_プニ族_mri_00022658
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000063
	.4byte 0x0006005B
	.4byte evt_fade_set_mapchange_type
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x000001F4
	.4byte 0x00000001
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_mri_08_mri_000229b4
	.4byte str_e_bero_mri_000228c0
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bluejail_event

# .data:0x23A0 | 0x12A10 | size: 0xC8
.obj mario_kirimomi_event, local
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000100
	.4byte 0x0002005B
	.4byte evt_mario_get_dispdir
	.4byte 0xFE363C88
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte 0x000007BC
	.4byte 0x00020035
	.4byte 0xFE363C89
	.4byte 0xFE363C88
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x000007D0
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002005B
	.4byte evt_mario_set_dispdir
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000100
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mario_kirimomi_event

# .data:0x2468 | 0x12AD8 | size: 0xE4
.obj party_kirimomi_event, local
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_party_dispflg_onoff
	.4byte 0x00000000
	.4byte 0x00000010
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_party_get_dispdir
	.4byte 0x00000000
	.4byte 0xFE363C88
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte 0x000007BC
	.4byte 0x00020035
	.4byte 0xFE363C89
	.4byte 0xFE363C88
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x000007D0
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0003005B
	.4byte evt_party_set_dispdir
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte evt_party_dispflg_onoff
	.4byte 0x00000000
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj party_kirimomi_event

# .data:0x254C | 0x12BBC | size: 0x3C
.obj JailAwayTable_New, local
	.4byte 0xFFFFFFAD
	.4byte 0xFFFFFF28
	.4byte 0xFFFFFF67
	.4byte 0xFFFFFF3D
	.4byte 0xFFFFFF33
	.4byte 0xFFFFFF66
	.4byte 0xFFFFFF0F
	.4byte 0xFFFFFFA1
	.4byte 0xFFFFFF24
	.4byte 0xFFFFFFE7
	.4byte 0xFFFFFF42
	.4byte 0x00000000
	.4byte 0xFFFFFF60
	.4byte 0x00000028
	.4byte 0x00002710
.endobj JailAwayTable_New

# .data:0x2588 | 0x12BF8 | size: 0x34
.obj jumptable_18_data_12BF8, local
	.rel puniModeEventparent, .L_00002F44
	.rel puniModeEventparent, .L_00002FEC
	.rel puniModeEventparent, .L_00003148
	.rel puniModeEventparent, .L_0000331C
	.rel puniModeEventparent, .L_0000331C
	.rel puniModeEventparent, .L_0000331C
	.rel puniModeEventparent, .L_0000331C
	.rel puniModeEventparent, .L_0000331C
	.rel puniModeEventparent, .L_0000331C
	.rel puniModeEventparent, .L_0000331C
	.rel puniModeEventparent, .L_0000315C
	.rel puniModeEventparent, .L_000032C4
	.rel puniModeEventparent, .L_0000331C
.endobj jumptable_18_data_12BF8

# .data:0x25BC | 0x12C2C | size: 0x8C
.obj kinoko_small, local
	.4byte 0x0005005B
	.4byte evt_item_get_position
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_item00_mri_0002296c
	.4byte 0x00020034
	.4byte 0xFE363C8B
	.4byte 0xF24A7D4C
	.4byte 0x0003005B
	.4byte evt_item_set_scale
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x0001000A
	.4byte 0x000002EE
	.4byte 0x00020034
	.4byte 0xFE363C8B
	.4byte 0xF24A7BE6
	.4byte 0x0003005B
	.4byte evt_item_set_scale
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x0001000A
	.4byte 0x000002EE
	.4byte 0x0005005B
	.4byte evt_item_set_position
	.4byte str_item00_mri_0002296c
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kinoko_small

# .data:0x2648 | 0x12CB8 | size: 0xC04
.obj guide_sister, local
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x0000000E
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte puni_parent
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000067
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_puni_set_mode_18_text_19AE8
	.4byte 0x00000004
	.4byte 0x0000000E
	.4byte 0x0003005B
	.4byte evt_puni_set_anim_18_text_19240
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x00100000
	.4byte 0x0003005B
	.4byte evt_puni_set_mode_18_text_19AE8
	.4byte 0x00000003
	.4byte 0x0000000E
	.4byte 0x0003005B
	.4byte evt_puni_set_anim_18_text_19240
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00100000
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000005
	.4byte 0x00010005
	.4byte 0x00000009
	.4byte 0x0003005B
	.4byte evt_puni_set_mode_18_text_19AE8
	.4byte 0xFE363C8A
	.4byte 0x0000000E
	.4byte 0x0003005B
	.4byte evt_puni_set_anim_18_text_19240
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00100000
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001005C
	.4byte mario_kirimomi_event
	.4byte 0x0001005C
	.4byte party_kirimomi_event
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_NOKO_SAIKAI1_mri_00022a34
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ガイド_mri_00022650
	.4byte 0x40000020
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ガイド妹_mri_00022644
	.4byte 0x40000020
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0003005B
	.4byte evt_npc_get_reglid
	.4byte str_ガイド妹_mri_00022644
	.4byte 0xFE363C80
	.4byte 0x0001005F
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ガイド妹_mri_00022644
	.4byte 0x0000010E
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_ガイド妹_mri_00022644
	.4byte 0x0002005D
	.4byte mri_puni_walk_se_18_data_F68
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガイド妹_mri_00022644
	.4byte 0xFFFFFF0B
	.4byte 0xFFFFFF94
	.4byte 0x00000000
	.4byte 0xF24D4A80
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C89
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ガイド妹_mri_00022644
	.4byte 0x0000005A
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_ガイド妹_mri_00022644
	.4byte 0x0002005D
	.4byte mri_puni_walk_se_18_data_F68
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガイド妹_mri_00022644
	.4byte 0xFFFFFF4C
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0xF24D4A80
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C89
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e20_00_mri_00022a4c
	.4byte 0x00000000
	.4byte str_ガイド妹_mri_00022644
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFF1A
	.4byte 0xFFFFFFD3
	.4byte 0xF24C5A80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFF06
	.4byte 0xFFFFFFD8
	.4byte 0xF24C5A80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0xFFFFFFFF
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte zero_mri_00022a5c
	.4byte str_ガイド_mri_00022650
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
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_ガイド_mri_00022650
	.4byte 0x0002005D
	.4byte mri_puni_walk_se_18_data_F68
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガイド_mri_00022650
	.4byte 0xFFFFFF74
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0xF24D4A80
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C89
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ガイド_mri_00022650
	.4byte 0x0000010E
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x0000000E
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte puni_away
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000067
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF60
	.4byte 0x0000005A
	.4byte 0x00000160
	.4byte 0xFFFFFF60
	.4byte 0x0000001E
	.4byte 0x00000007
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_ガイド_mri_00022650
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte str_ガイド妹_mri_00022644
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C8A
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_PUNI_JUMP1_mri_00022768
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000C8
	.4byte 0x00000012
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C8A
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_PUNI_JUMP1_mri_00022768
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000C8
	.4byte 0x00000012
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e20_01_mri_00022a60
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C8B
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C8B
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_PUNI_JUMP1_mri_00022768
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte 0xFE363C8B
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000C8
	.4byte 0x00000012
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C8B
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_PUNI_JUMP1_mri_00022768
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte 0xFE363C8B
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000C8
	.4byte 0x00000012
	.4byte 0x0002005B
	.4byte evt_msg_togelr
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e20_02_mri_00022a70
	.4byte 0x00000000
	.4byte 0xFE363C8B
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e20_03_mri_00022a80
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x0002005B
	.4byte evt_msg_togelr
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e20_04_mri_00022a90
	.4byte 0x00000000
	.4byte 0xFE363C8B
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C8B
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e20_05_mri_00022aa0
	.4byte 0x00000000
	.4byte 0xFE363C8B
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C8B
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C8B
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_PUNIKO_KINO_mri_00022954
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item00_mri_0002296c
	.4byte 0x00000098
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_item_flag_on
	.4byte str_item00_mri_0002296c
	.4byte 0x00000002
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x0007005B
	.4byte evt_item_move_3d_position
	.4byte str_item00_mri_0002296c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000001F4
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_msg_togelr
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e20_06_mri_00022ab0
	.4byte 0x00000000
	.4byte 0xFE363C8B
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF6A
	.4byte 0x00000049
	.4byte 0x00000116
	.4byte 0xFFFFFF6A
	.4byte 0x00000019
	.4byte 0x00000007
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x0002005D
	.4byte mri_puni_walk_se_18_data_F68
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C8A
	.4byte 0xFFFFFF6A
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0xF24B6A80
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte 0xFE363C8A
	.4byte str_T_1_mri_00022ac0
	.4byte str_T_1_mri_00022ac0
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001006C
	.4byte 0xFE363C89
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_PUNI_EAT1_mri_00022ac4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte 0xFE363C8A
	.4byte str_T_1_mri_00022ac0
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0001005C
	.4byte kinoko_small
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e20_07_mri_00022ad8
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001005F
	.4byte 0xFE363C89
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte 0xFE363C8A
	.4byte str_S_1_mri_00022ae8
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte 0xFE363C8A
	.4byte str_S_1_mri_00022ae8
	.4byte str_T_1_mri_00022ac0
	.4byte 0x0002005B
	.4byte evt_msg_togelr
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e20_08_mri_00022aec
	.4byte 0x00000000
	.4byte 0xFE363C8B
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e20_09_mri_00022afc
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte zero_mri_00022a5c
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_msg_togelr
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e20_10_mri_00022b0c
	.4byte 0x00000000
	.4byte 0xFE363C8B
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e20_11_mri_00022b1c
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFFEC
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF51
	.4byte 0x00000049
	.4byte 0x00000116
	.4byte 0xFFFFFF51
	.4byte 0x00000019
	.4byte 0x00000007
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte 0xFE363C8A
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG2_PUNI_JUMP1_mri_00022768
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000C8
	.4byte 0x00000012
	.4byte 0x0002005B
	.4byte evt_msg_togelr
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e20_12_mri_00022b2c
	.4byte 0x00000000
	.4byte 0xFE363C8B
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e20_13_mri_00022b3c
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0002005B
	.4byte evt_msg_togelr
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e20_14_mri_00022b4c
	.4byte 0x00000000
	.4byte 0xFE363C8B
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xF8406694
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF84066BD
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF5DE040B
	.4byte 0x00000062
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ガイド_mri_00022650
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ガイド_mri_00022650
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_puni_init_puni_18_text_18B04
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ガイド妹_mri_00022644
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ガイド妹_mri_00022644
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_puni_init_puni_18_text_18B04
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_puni_set_mode_18_text_19AE8
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00800000
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000067
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000001
	.4byte str_BGM_FF_GET_PARTY1_mri_00022b5c
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000201
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000120
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF84066BE
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e20_16_mri_00022b70
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e20_16_1_mri_00022b80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000065
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG2_MRI1_mri_00022b94
	.4byte 0x00000002
	.4byte 0x00000001
.endobj guide_sister

# .data:0x324C | 0x138BC | size: 0x34
.obj elder_shaberi, local
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e12_26_06_mri_00022ba4
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_msg_repeat
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj elder_shaberi

# .data:0x3280 | 0x138F0 | size: 0x69C
.obj toraware_elder, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_puni_wait_systemmode_18_text_16CBC
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x0001000B
	.4byte 0xFAA2B580
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x0000006D
	.4byte 0x0001005E
	.4byte mri_guide_hagure_check_18_data_DA4
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_puni_set_lsw_index_18_text_19F08
	.4byte 0xF70F2E80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_puni_set_trap_index_18_text_1A12C
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_puni_init_puni_18_text_18B04
	.4byte 0x00000001
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00010000
	.4byte 0x0005005B
	.4byte evt_puni_set_position_18_text_1901C
	.4byte 0x00000001
	.4byte 0x000000F0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_puni_move_position_18_text_193C4
	.4byte 0x00000001
	.4byte 0x000000F0
	.4byte 0x00000028
	.4byte 0xF24C5A80
	.4byte 0x0003005B
	.4byte evt_puni_set_mode_18_text_19AE8
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00040000
	.4byte 0x0003005B
	.4byte evt_puni_set_anim_18_text_19240
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ガイドsp_mri_0002266c
	.4byte 0x40000620
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ガイドsp_mri_0002266c
	.4byte 0x0000010E
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_ガイドsp_mri_0002266c
	.4byte 0x0002005D
	.4byte mri_puni_walk_se_18_data_F68
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガイドsp_mri_0002266c
	.4byte 0x000000C3
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C89
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte zero_mri_00022a5c
	.4byte str_ガイドsp_mri_0002266c
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
	.4byte str_stg2_mri_e12_26_01_mri_00022bb8
	.4byte 0x00000000
	.4byte str_ガイドsp_mri_0002266c
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000087
	.4byte 0x00000055
	.4byte 0x000000CC
	.4byte 0x00000087
	.4byte 0x00000032
	.4byte 0x00000007
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_ガイドsp_mri_0002266c
	.4byte 0x0002005D
	.4byte mri_puni_walk_se_18_data_F68
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガイドsp_mri_0002266c
	.4byte 0x00000091
	.4byte 0xFFFFFFC4
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C89
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_プニ族長老_mri_00022638
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte 0xFE363C8A
	.4byte 0x40000020
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C8A
	.4byte 0x0000005A
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x0002005D
	.4byte mri_puni_walk_se_18_data_F68
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C8A
	.4byte 0x00000073
	.4byte 0xFFFFFF9C
	.4byte 0x00000000
	.4byte 0xF24B6A80
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C89
	.4byte 0x0001000B
	.4byte 0xFAA2B580
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e12_26_02_mri_00022bcc
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x000000AF
	.4byte 0xFFFFFFE2
	.4byte 0xF24C5A80
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0x000000D2
	.4byte 0xFFFFFFE2
	.4byte 0xF24C5A80
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x0000014D
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e12_26_03_mri_00022be0
	.4byte 0x00000000
	.4byte str_ガイドsp_mri_0002266c
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e12_26_04_mri_00022bf4
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e12_26_05_mri_00022c08
	.4byte 0x00000000
	.4byte str_ガイドsp_mri_0002266c
	.4byte 0x0002005D
	.4byte elder_shaberi
	.4byte 0xFE363C8F
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_ガイド妹_mri_00022644
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte 0xFE363C8A
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte 0xFE363C8A
	.4byte 0xFFFFFF5B
	.4byte 0x00000000
	.4byte 0xFFFFFF9C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e12_26_07_mri_00022c1c
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte zero_mri_00022a5c
	.4byte str_ガイドsp_mri_0002266c
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
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF65
	.4byte 0x00000055
	.4byte 0x000000F0
	.4byte 0xFFFFFF65
	.4byte 0x00000032
	.4byte 0x00000007
	.4byte 0x00000BB8
	.4byte 0x0000000B
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0001005F
	.4byte 0xFE363C8F
	.4byte 0x0002005B
	.4byte evt_msg_close
	.4byte str_stg2_mri_e12_26_06_mri_00022ba4
	.4byte 0x0000006D
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_ガイドsp_mri_0002266c
	.4byte 0x0002005D
	.4byte mri_puni_walk_se_18_data_F68
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガイドsp_mri_0002266c
	.4byte 0xFFFFFF74
	.4byte 0xFFFFFFD8
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C89
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e12_26_08_mri_00022c30
	.4byte 0x00000000
	.4byte str_ガイドsp_mri_0002266c
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFF92
	.4byte 0xFFFFFFE2
	.4byte 0xF24C5A80
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFFB5
	.4byte 0xFFFFFFE2
	.4byte 0xF24C5A80
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e12_26_09_mri_00022c44
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e12_26_10_mri_00022c58
	.4byte 0x00000000
	.4byte str_ガイドsp_mri_0002266c
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e12_26_11_mri_00022c6c
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ガイドsp_mri_0002266c
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x00000341
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e12_26_12_mri_00022c80
	.4byte 0x00000000
	.4byte str_ガイドsp_mri_0002266c
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_ガイドsp_mri_0002266c
	.4byte 0x0002005D
	.4byte mri_puni_walk_se_18_data_F68
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガイドsp_mri_0002266c
	.4byte 0xFFFFFF83
	.4byte 0xFFFFFFF6
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00040000
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ガイドsp_mri_0002266c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_puni_set_position_18_text_1901C
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000005C
	.4byte 0x0002005B
	.4byte evt_npc_restart_regular_event
	.4byte str_ガイド妹_mri_00022644
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj toraware_elder

# .data:0x391C | 0x13F8C | size: 0x200
.obj guide_sister_before, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_puni_wait_systemmode_18_text_16CBC
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0001005E
	.4byte mri_guide_hagure_check_18_data_DA4
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_puni_set_position_18_text_1901C
	.4byte 0x00000001
	.4byte 0x000000F0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_puni_move_position_18_text_193C4
	.4byte 0x00000001
	.4byte 0x000000F0
	.4byte 0x00000028
	.4byte 0xF24C5A80
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_puni_get_position_18_text_18F80
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_puni_set_position_18_text_1901C
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_puni_set_mode_18_text_19AE8
	.4byte 0x00000001
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte evt_puni_flag_onoff_18_text_19C3C
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00800000
	.4byte 0x00020032
	.4byte 0xF8406694
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ガイド_mri_00022650
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ガイド_mri_00022650
	.4byte 0x0000010E
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ガイド_mri_00022650
	.4byte 0x40000620
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg2_mri_e19_04_01_mri_00022c94
	.4byte 0x00000000
	.4byte str_ガイド_mri_00022650
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_ガイド_mri_00022650
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_ガイド_mri_00022650
	.4byte 0x0002005D
	.4byte mri_puni_walk_se_18_data_F68
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガイド_mri_00022650
	.4byte 0xFFFFFF6F
	.4byte 0xFFFFFFC4
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_ガイド_mri_00022650
	.4byte 0x40000020
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_ガイド_mri_00022650
	.4byte 0x00000006
	.4byte guide_talk
	.4byte 0x0000006D
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000064
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj guide_sister_before

# .data:0x3B1C | 0x1418C | size: 0x50
.obj ueki_access_data, local
	.4byte 0x00000001
	.4byte str_A_ueki01_mri_00022ca8
	.4byte str_S_ueki01_mri_00022cb4
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_A_ueki03_mri_00022cc0
	.4byte str_S_ueki03_mri_00022ccc
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_A_ueki04_mri_00022cd8
	.4byte str_S_ueki04_mri_00022ce4
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_A_ueki05_mri_00022cf0
	.4byte str_S_ueki05_mri_00022cfc
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj ueki_access_data

# .data:0x3B6C | 0x141DC | size: 0x338
.obj mri_03_init_evt_18_data_141DC, global
	.4byte 0x0001005B
	.4byte evt_puni_mem_init_18_text_15D70
	.4byte 0x0008005B
	.4byte evt_puni_set_yuka_18_text_15FA0
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0xFFFFFECA
	.4byte 0xFFFFFC18
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0008005B
	.4byte evt_puni_set_hamari_18_text_16134
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFC18
	.4byte 0xFFFFFC18
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte mri_puni_init_18_data_24BA4
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0001005C
	.4byte puni_disp_info_18_data_245F0
	.4byte 0x0001005C
	.4byte mri_countdown_18_data_A7C
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte ueki_access_data
	.4byte 0x0001005E
	.4byte evt_sub_kusa_access_entry
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x0000006D
	.4byte 0x0000006E
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_DANGER4_mri_00022d08
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG2_MRI9_mri_00022d18
	.4byte 0x00010024
	.4byte 0x00000062
	.4byte 0x00010029
	.4byte 0x00000065
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_STG2_PUNI2_mri_00022d28
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000200
	.4byte 0x0000002A
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG2_MRI1_mri_00022b94
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG2_MRI4_mri_00022d3c
	.4byte 0x00000031
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_hako_r_saku_mri_000225fc
	.4byte 0x00000002
	.4byte 0x0008005B
	.4byte evt_mobj_kururing_floor
	.4byte str_kururin1_mri_000226b4
	.4byte 0xFFFFFF6A
	.4byte 0x00000000
	.4byte 0xFFFFFF38
	.4byte str_S_yuka_oku_mri_00022d4c
	.4byte 0x0000007D
	.4byte 0xF840716D
	.4byte 0x0002005B
	.4byte evt_npc_setup
	.4byte npcEnt
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_mizu_01_mri_00022d58
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_mizu_02_mri_00022d60
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_awa_01_mri_00022d68
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_awa_02_mri_00022d70
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_hikari_01_mri_00022d78
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x0000005A
	.4byte 0x00000064
	.4byte 0x0001005C
	.4byte jail_init_00
	.4byte 0x00000031
	.4byte 0x000A005B
	.4byte evt_mobj_lock
	.4byte str_mobj_lock00_mri_0002269c
	.4byte 0x00000010
	.4byte 0x00000041
	.4byte 0x0000000A
	.4byte 0xFFFFFFBA
	.4byte 0x00000000
	.4byte evt_check00
	.4byte evt_unlock00
	.4byte 0xF8406690
	.4byte 0x00020018
	.4byte 0xF8406690
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF8406691
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte evt_opendoor00
	.4byte 0x00000020
	.4byte 0x0001005C
	.4byte evt_unlock00_01
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x000A005B
	.4byte evt_mobj_lock
	.4byte str_mobj_lock01_mri_000226a8
	.4byte key_table01
	.4byte 0xFFFFFF0B
	.4byte 0x0000000A
	.4byte 0xFFFFFFBA
	.4byte 0x00000000
	.4byte evt_check01
	.4byte evt_unlock01
	.4byte 0xF8406692
	.4byte 0x00020018
	.4byte 0xF8406692
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF8406693
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte evt_opendoor01
	.4byte 0x00000020
	.4byte 0x0001005C
	.4byte evt_unlock01
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002005D
	.4byte jail_alpha
	.4byte 0xFD050F80
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000062
	.4byte 0x0001005C
	.4byte bluejail_event
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x0000005B
	.4byte 0x0001005C
	.4byte toraware_elder
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000063
	.4byte 0x0001005C
	.4byte guide_sister_before
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mri_03_init_evt_18_data_141DC

# .data:0x3EA4 | 0x14514 | size: 0x4
.obj gap_04_00014514_data, global
.hidden gap_04_00014514_data
	.4byte 0x00000000
.endobj gap_04_00014514_data

# 0x00000020..0x00000028 | size: 0x8
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x20 | size: 0x4
.obj _ap, local
	.skip 0x4
.endobj _ap

# .bss:0x4 | 0x24 | size: 0x4
.obj gap_05_00000024_bss, global
.hidden gap_05_00000024_bss
	.skip 0x4
.endobj gap_05_00000024_bss
