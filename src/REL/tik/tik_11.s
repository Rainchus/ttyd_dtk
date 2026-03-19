.include "macros.inc"
.file "tik_11.o"

# 0x00004988..0x0000533C | size: 0x9B4
.text
.balign 4

# .text:0x0 | 0x4988 | size: 0x34
.fn bgm_start_wait, local
/* 00004988 00004A4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0000498C 00004A50  7C 08 02 A6 */	mflr r0
/* 00004990 00004A54  38 60 00 01 */	li r3, 0x1
/* 00004994 00004A58  90 01 00 14 */	stw r0, 0x14(r1)
/* 00004998 00004A5C  4B FF B7 B1 */	bl psndBGMStartCheck
/* 0000499C 00004A60  20 63 00 00 */	subfic r3, r3, 0x0
/* 000049A0 00004A64  38 00 00 02 */	li r0, 0x2
/* 000049A4 00004A68  7C 63 19 10 */	subfe r3, r3, r3
/* 000049A8 00004A6C  7C 03 18 38 */	and r3, r0, r3
/* 000049AC 00004A70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000049B0 00004A74  7C 08 03 A6 */	mtlr r0
/* 000049B4 00004A78  38 21 00 10 */	addi r1, r1, 0x10
/* 000049B8 00004A7C  4E 80 00 20 */	blr
.endfn bgm_start_wait

# .text:0x34 | 0x49BC | size: 0x40
.fn bgScrollControll, local
/* 000049BC 00004A80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000049C0 00004A84  7C 08 02 A6 */	mflr r0
/* 000049C4 00004A88  90 01 00 14 */	stw r0, 0x14(r1)
/* 000049C8 00004A8C  80 83 00 18 */	lwz r4, 0x18(r3)
/* 000049CC 00004A90  80 84 00 00 */	lwz r4, 0x0(r4)
/* 000049D0 00004A94  4B FF B7 79 */	bl evtGetValue
/* 000049D4 00004A98  2C 03 00 00 */	cmpwi r3, 0x0
/* 000049D8 00004A9C  40 82 00 0C */	bne .L_000049E4
/* 000049DC 00004AA0  4B FF B7 6D */	bl bgTransOffsetOff
/* 000049E0 00004AA4  48 00 00 08 */	b .L_000049E8
.L_000049E4:
/* 000049E4 00004AA8  4B FF B7 65 */	bl bgTransOffsetOn
.L_000049E8:
/* 000049E8 00004AAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000049EC 00004AB0  38 60 00 02 */	li r3, 0x2
/* 000049F0 00004AB4  7C 08 03 A6 */	mtlr r0
/* 000049F4 00004AB8  38 21 00 10 */	addi r1, r1, 0x10
/* 000049F8 00004ABC  4E 80 00 20 */	blr
.endfn bgScrollControll

# .text:0x74 | 0x49FC | size: 0x30
.fn enzan_lw_load, local
/* 000049FC 00004AC0  3C 80 00 00 */	lis r4, xlw@ha
/* 00004A00 00004AC4  38 00 00 10 */	li r0, 0x10
/* 00004A04 00004AC8  38 C4 00 00 */	addi r6, r4, xlw@l
/* 00004A08 00004ACC  38 80 00 00 */	li r4, 0x0
/* 00004A0C 00004AD0  7C 09 03 A6 */	mtctr r0
.L_00004A10:
/* 00004A10 00004AD4  7C A6 20 2E */	lwzx r5, r6, r4
/* 00004A14 00004AD8  38 04 00 9C */	addi r0, r4, 0x9c
/* 00004A18 00004ADC  38 84 00 04 */	addi r4, r4, 0x4
/* 00004A1C 00004AE0  7C A3 01 2E */	stwx r5, r3, r0
/* 00004A20 00004AE4  42 00 FF F0 */	bdnz .L_00004A10
/* 00004A24 00004AE8  38 60 00 02 */	li r3, 0x2
/* 00004A28 00004AEC  4E 80 00 20 */	blr
.endfn enzan_lw_load

# .text:0xA4 | 0x4A2C | size: 0x30
.fn enzan_lw_save, local
/* 00004A2C 00004AF0  3C 80 00 00 */	lis r4, xlw@ha
/* 00004A30 00004AF4  38 00 00 10 */	li r0, 0x10
/* 00004A34 00004AF8  38 A4 00 00 */	addi r5, r4, xlw@l
/* 00004A38 00004AFC  38 80 00 00 */	li r4, 0x0
/* 00004A3C 00004B00  7C 09 03 A6 */	mtctr r0
.L_00004A40:
/* 00004A40 00004B04  38 04 00 9C */	addi r0, r4, 0x9c
/* 00004A44 00004B08  7C 03 00 2E */	lwzx r0, r3, r0
/* 00004A48 00004B0C  7C 05 21 2E */	stwx r0, r5, r4
/* 00004A4C 00004B10  38 84 00 04 */	addi r4, r4, 0x4
/* 00004A50 00004B14  42 00 FF F0 */	bdnz .L_00004A40
/* 00004A54 00004B18  38 60 00 02 */	li r3, 0x2
/* 00004A58 00004B1C  4E 80 00 20 */	blr
.endfn enzan_lw_save

# .text:0xD4 | 0x4A5C | size: 0x6C
.fn enzan_set_f_i, local
/* 00004A5C 00004B20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00004A60 00004B24  7C 08 02 A6 */	mflr r0
/* 00004A64 00004B28  90 01 00 24 */	stw r0, 0x24(r1)
/* 00004A68 00004B2C  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 00004A6C 00004B30  7C 7E 1B 78 */	mr r30, r3
/* 00004A70 00004B34  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00004A74 00004B38  83 E4 00 00 */	lwz r31, 0x0(r4)
/* 00004A78 00004B3C  80 84 00 04 */	lwz r4, 0x4(r4)
/* 00004A7C 00004B40  4B FF B6 CD */	bl evtGetValue
/* 00004A80 00004B44  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 00004A84 00004B48  3C 00 43 30 */	lis r0, 0x4330
/* 00004A88 00004B4C  3C 80 00 00 */	lis r4, double_to_int_tik_0000ad80@ha
/* 00004A8C 00004B50  90 61 00 0C */	stw r3, 0xc(r1)
/* 00004A90 00004B54  38 A4 00 00 */	addi r5, r4, double_to_int_tik_0000ad80@l
/* 00004A94 00004B58  7F C3 F3 78 */	mr r3, r30
/* 00004A98 00004B5C  90 01 00 08 */	stw r0, 0x8(r1)
/* 00004A9C 00004B60  7F E4 FB 78 */	mr r4, r31
/* 00004AA0 00004B64  C8 25 00 00 */	lfd f1, 0x0(r5)
/* 00004AA4 00004B68  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 00004AA8 00004B6C  EC 20 08 28 */	fsubs f1, f0, f1
/* 00004AAC 00004B70  4B FF B6 9D */	bl evtSetFloat
/* 00004AB0 00004B74  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 00004AB4 00004B78  38 60 00 02 */	li r3, 0x2
/* 00004AB8 00004B7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00004ABC 00004B80  7C 08 03 A6 */	mtlr r0
/* 00004AC0 00004B84  38 21 00 20 */	addi r1, r1, 0x20
/* 00004AC4 00004B88  4E 80 00 20 */	blr
.endfn enzan_set_f_i

# .text:0x140 | 0x4AC8 | size: 0x54
.fn enzan_set_i_f, local
/* 00004AC8 00004B8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00004ACC 00004B90  7C 08 02 A6 */	mflr r0
/* 00004AD0 00004B94  90 01 00 24 */	stw r0, 0x24(r1)
/* 00004AD4 00004B98  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 00004AD8 00004B9C  7C 7E 1B 78 */	mr r30, r3
/* 00004ADC 00004BA0  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00004AE0 00004BA4  83 E4 00 00 */	lwz r31, 0x0(r4)
/* 00004AE4 00004BA8  80 84 00 04 */	lwz r4, 0x4(r4)
/* 00004AE8 00004BAC  4B FF B6 61 */	bl evtGetFloat
/* 00004AEC 00004BB0  FC 00 08 1E */	fctiwz f0, f1
/* 00004AF0 00004BB4  7F C3 F3 78 */	mr r3, r30
/* 00004AF4 00004BB8  7F E4 FB 78 */	mr r4, r31
/* 00004AF8 00004BBC  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 00004AFC 00004BC0  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 00004B00 00004BC4  4B FF B6 49 */	bl evtSetValue
/* 00004B04 00004BC8  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 00004B08 00004BCC  38 60 00 02 */	li r3, 0x2
/* 00004B0C 00004BD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00004B10 00004BD4  7C 08 03 A6 */	mtlr r0
/* 00004B14 00004BD8  38 21 00 20 */	addi r1, r1, 0x20
/* 00004B18 00004BDC  4E 80 00 20 */	blr
.endfn enzan_set_i_f

# .text:0x194 | 0x4B1C | size: 0x1E4
.fn enzan_cam_turn_keisan_f, local
/* 00004B1C 00004BE0  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 00004B20 00004BE4  7C 08 02 A6 */	mflr r0
/* 00004B24 00004BE8  90 01 00 84 */	stw r0, 0x84(r1)
/* 00004B28 00004BEC  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 00004B2C 00004BF0  F3 E1 00 78 */	psq_st f31, 0x78(r1), 0, qr0
/* 00004B30 00004BF4  BF A1 00 64 */	stmw r29, 0x64(r1)
/* 00004B34 00004BF8  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00004B38 00004BFC  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00004B3C 00004C00  4B FF B6 0D */	bl evtGetFloat
/* 00004B40 00004C04  3C 80 00 00 */	lis r4, float_100_tik_0000ad88@ha
/* 00004B44 00004C08  38 60 00 04 */	li r3, 0x4
/* 00004B48 00004C0C  C0 04 00 00 */	lfs f0, float_100_tik_0000ad88@l(r4)
/* 00004B4C 00004C10  EF E1 00 24 */	fdivs f31, f1, f0
/* 00004B50 00004C14  4B FF B5 F9 */	bl camGetPtr
/* 00004B54 00004C18  3C A0 00 00 */	lis r5, float_neg344_tik_0000ad9c@ha
/* 00004B58 00004C1C  3C E0 00 00 */	lis r7, float_neg60_tik_0000ad94@ha
/* 00004B5C 00004C20  3C C0 00 00 */	lis r6, float_212_tik_0000ad90@ha
/* 00004B60 00004C24  3C 80 00 00 */	lis r4, float_886_tik_0000ad98@ha
/* 00004B64 00004C28  39 65 00 00 */	addi r11, r5, float_neg344_tik_0000ad9c@l
/* 00004B68 00004C2C  3C A0 00 00 */	lis r5, vec3_tik_0000aaa8@ha
/* 00004B6C 00004C30  87 A5 00 00 */	lwzu r29, vec3_tik_0000aaa8@l(r5)
/* 00004B70 00004C34  39 44 00 00 */	addi r10, r4, float_886_tik_0000ad98@l
/* 00004B74 00004C38  C0 27 00 00 */	lfs f1, float_neg60_tik_0000ad94@l(r7)
/* 00004B78 00004C3C  3C 80 00 00 */	lis r4, float_neg9_tik_0000ad8c@ha
/* 00004B7C 00004C40  C0 06 00 00 */	lfs f0, float_212_tik_0000ad90@l(r6)
/* 00004B80 00004C44  39 84 00 00 */	addi r12, r4, float_neg9_tik_0000ad8c@l
/* 00004B84 00004C48  80 05 00 04 */	lwz r0, 0x4(r5)
/* 00004B88 00004C4C  3C 80 00 00 */	lis r4, vec3_tik_0000aab4@ha
/* 00004B8C 00004C50  EC 01 07 FA */	fmadds f0, f1, f31, f0
/* 00004B90 00004C54  C0 2B 00 00 */	lfs f1, 0x0(r11)
/* 00004B94 00004C58  90 01 00 0C */	stw r0, 0xc(r1)
/* 00004B98 00004C5C  39 04 00 00 */	addi r8, r4, vec3_tik_0000aab4@l
/* 00004B9C 00004C60  83 C5 00 08 */	lwz r30, 0x8(r5)
/* 00004BA0 00004C64  7C 7F 1B 78 */	mr r31, r3
/* 00004BA4 00004C68  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 00004BA8 00004C6C  38 61 00 20 */	addi r3, r1, 0x20
/* 00004BAC 00004C70  C0 0A 00 00 */	lfs f0, 0x0(r10)
/* 00004BB0 00004C74  7C 65 1B 78 */	mr r5, r3
/* 00004BB4 00004C78  93 A1 00 08 */	stw r29, 0x8(r1)
/* 00004BB8 00004C7C  38 81 00 14 */	addi r4, r1, 0x14
/* 00004BBC 00004C80  C0 4C 00 00 */	lfs f2, 0x0(r12)
/* 00004BC0 00004C84  EC 01 07 FA */	fmadds f0, f1, f31, f0
/* 00004BC4 00004C88  93 C1 00 10 */	stw r30, 0x10(r1)
/* 00004BC8 00004C8C  80 E8 00 00 */	lwz r7, 0x0(r8)
/* 00004BCC 00004C90  D0 41 00 08 */	stfs f2, 0x8(r1)
/* 00004BD0 00004C94  80 C8 00 04 */	lwz r6, 0x4(r8)
/* 00004BD4 00004C98  81 21 00 0C */	lwz r9, 0xc(r1)
/* 00004BD8 00004C9C  80 08 00 08 */	lwz r0, 0x8(r8)
/* 00004BDC 00004CA0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 00004BE0 00004CA4  81 41 00 08 */	lwz r10, 0x8(r1)
/* 00004BE4 00004CA8  81 01 00 10 */	lwz r8, 0x10(r1)
/* 00004BE8 00004CAC  91 41 00 20 */	stw r10, 0x20(r1)
/* 00004BEC 00004CB0  91 21 00 24 */	stw r9, 0x24(r1)
/* 00004BF0 00004CB4  91 01 00 28 */	stw r8, 0x28(r1)
/* 00004BF4 00004CB8  90 E1 00 14 */	stw r7, 0x14(r1)
/* 00004BF8 00004CBC  90 C1 00 18 */	stw r6, 0x18(r1)
/* 00004BFC 00004CC0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 00004C00 00004CC4  4B FF B5 49 */	bl PSVECSubtract
/* 00004C04 00004CC8  3C 60 00 00 */	lis r3, float_720_tik_0000ada4@ha
/* 00004C08 00004CCC  3C A0 00 00 */	lis r5, float_deg2rad_tik_0000ada0@ha
/* 00004C0C 00004CD0  38 83 00 00 */	addi r4, r3, float_720_tik_0000ada4@l
/* 00004C10 00004CD4  C0 25 00 00 */	lfs f1, float_deg2rad_tik_0000ada0@l(r5)
/* 00004C14 00004CD8  C0 04 00 00 */	lfs f0, 0x0(r4)
/* 00004C18 00004CDC  38 61 00 2C */	addi r3, r1, 0x2c
/* 00004C1C 00004CE0  38 80 00 59 */	li r4, 0x59
/* 00004C20 00004CE4  EC 00 07 F2 */	fmuls f0, f0, f31
/* 00004C24 00004CE8  EC 21 00 32 */	fmuls f1, f1, f0
/* 00004C28 00004CEC  4B FF B5 21 */	bl PSMTXRotRad
/* 00004C2C 00004CF0  38 81 00 20 */	addi r4, r1, 0x20
/* 00004C30 00004CF4  38 61 00 2C */	addi r3, r1, 0x2c
/* 00004C34 00004CF8  7C 85 23 78 */	mr r5, r4
/* 00004C38 00004CFC  4B FF B5 11 */	bl PSMTXMultVec
/* 00004C3C 00004D00  38 61 00 20 */	addi r3, r1, 0x20
/* 00004C40 00004D04  38 81 00 14 */	addi r4, r1, 0x14
/* 00004C44 00004D08  7C 65 1B 78 */	mr r5, r3
/* 00004C48 00004D0C  4B FF B5 01 */	bl PSVECAdd
/* 00004C4C 00004D10  80 FF 00 0C */	lwz r7, 0xc(r31)
/* 00004C50 00004D14  3C 60 00 00 */	lis r3, gp@ha
/* 00004C54 00004D18  80 DF 00 10 */	lwz r6, 0x10(r31)
/* 00004C58 00004D1C  38 A3 00 00 */	addi r5, r3, gp@l
/* 00004C5C 00004D20  38 80 00 00 */	li r4, 0x0
/* 00004C60 00004D24  38 00 00 03 */	li r0, 0x3
/* 00004C64 00004D28  90 FF 00 58 */	stw r7, 0x58(r31)
/* 00004C68 00004D2C  38 60 00 02 */	li r3, 0x2
/* 00004C6C 00004D30  90 DF 00 5C */	stw r6, 0x5c(r31)
/* 00004C70 00004D34  80 DF 00 14 */	lwz r6, 0x14(r31)
/* 00004C74 00004D38  90 DF 00 60 */	stw r6, 0x60(r31)
/* 00004C78 00004D3C  80 FF 00 18 */	lwz r7, 0x18(r31)
/* 00004C7C 00004D40  80 DF 00 1C */	lwz r6, 0x1c(r31)
/* 00004C80 00004D44  90 FF 00 64 */	stw r7, 0x64(r31)
/* 00004C84 00004D48  90 DF 00 68 */	stw r6, 0x68(r31)
/* 00004C88 00004D4C  80 DF 00 20 */	lwz r6, 0x20(r31)
/* 00004C8C 00004D50  90 DF 00 6C */	stw r6, 0x6c(r31)
/* 00004C90 00004D54  80 E1 00 20 */	lwz r7, 0x20(r1)
/* 00004C94 00004D58  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 00004C98 00004D5C  90 FF 00 40 */	stw r7, 0x40(r31)
/* 00004C9C 00004D60  90 DF 00 44 */	stw r6, 0x44(r31)
/* 00004CA0 00004D64  80 C1 00 28 */	lwz r6, 0x28(r1)
/* 00004CA4 00004D68  90 DF 00 48 */	stw r6, 0x48(r31)
/* 00004CA8 00004D6C  80 FF 00 18 */	lwz r7, 0x18(r31)
/* 00004CAC 00004D70  80 DF 00 1C */	lwz r6, 0x1c(r31)
/* 00004CB0 00004D74  90 FF 00 4C */	stw r7, 0x4c(r31)
/* 00004CB4 00004D78  90 DF 00 50 */	stw r6, 0x50(r31)
/* 00004CB8 00004D7C  80 DF 00 20 */	lwz r6, 0x20(r31)
/* 00004CBC 00004D80  90 DF 00 54 */	stw r6, 0x54(r31)
/* 00004CC0 00004D84  80 C5 00 00 */	lwz r6, 0x0(r5)
/* 00004CC4 00004D88  80 A6 00 38 */	lwz r5, 0x38(r6)
/* 00004CC8 00004D8C  80 C6 00 3C */	lwz r6, 0x3c(r6)
/* 00004CCC 00004D90  90 DF 00 74 */	stw r6, 0x74(r31)
/* 00004CD0 00004D94  90 BF 00 70 */	stw r5, 0x70(r31)
/* 00004CD4 00004D98  90 9F 00 7C */	stw r4, 0x7c(r31)
/* 00004CD8 00004D9C  90 9F 00 78 */	stw r4, 0x78(r31)
/* 00004CDC 00004DA0  B0 1F 00 04 */	sth r0, 0x4(r31)
/* 00004CE0 00004DA4  98 9F 00 80 */	stb r4, 0x80(r31)
/* 00004CE4 00004DA8  E3 E1 00 78 */	psq_l f31, 0x78(r1), 0, qr0
/* 00004CE8 00004DAC  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 00004CEC 00004DB0  BB A1 00 64 */	lmw r29, 0x64(r1)
/* 00004CF0 00004DB4  80 01 00 84 */	lwz r0, 0x84(r1)
/* 00004CF4 00004DB8  7C 08 03 A6 */	mtlr r0
/* 00004CF8 00004DBC  38 21 00 80 */	addi r1, r1, 0x80
/* 00004CFC 00004DC0  4E 80 00 20 */	blr
.endfn enzan_cam_turn_keisan_f

# .text:0x378 | 0x4D00 | size: 0x1F0
.fn enzan_cam_turn_keisan, local
/* 00004D00 00004DC4  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 00004D04 00004DC8  7C 08 02 A6 */	mflr r0
/* 00004D08 00004DCC  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 00004D0C 00004DD0  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 00004D10 00004DD4  F3 E1 00 A8 */	psq_st f31, 0xa8(r1), 0, qr0
/* 00004D14 00004DD8  BF 81 00 90 */	stmw r28, 0x90(r1)
/* 00004D18 00004DDC  7C 7C 1B 78 */	mr r28, r3
/* 00004D1C 00004DE0  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00004D20 00004DE4  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00004D24 00004DE8  4B FF B4 25 */	bl evtGetValue
/* 00004D28 00004DEC  38 C0 01 68 */	li r6, 0x168
/* 00004D2C 00004DF0  3C 00 43 30 */	lis r0, 0x4330
/* 00004D30 00004DF4  7C A3 33 D6 */	divw r5, r3, r6
/* 00004D34 00004DF8  90 01 00 50 */	stw r0, 0x50(r1)
/* 00004D38 00004DFC  3C 80 00 00 */	lis r4, double_to_int_tik_0000ad80@ha
/* 00004D3C 00004E00  83 DF 00 04 */	lwz r30, 0x4(r31)
/* 00004D40 00004E04  C8 24 00 00 */	lfd f1, double_to_int_tik_0000ad80@l(r4)
/* 00004D44 00004E08  83 BF 00 08 */	lwz r29, 0x8(r31)
/* 00004D48 00004E0C  7C 05 31 D6 */	mullw r0, r5, r6
/* 00004D4C 00004E10  7F C4 F3 78 */	mr r4, r30
/* 00004D50 00004E14  7C 00 18 50 */	subf r0, r0, r3
/* 00004D54 00004E18  7F 83 E3 78 */	mr r3, r28
/* 00004D58 00004E1C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 00004D5C 00004E20  90 01 00 54 */	stw r0, 0x54(r1)
/* 00004D60 00004E24  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 00004D64 00004E28  EF E0 08 28 */	fsubs f31, f0, f1
/* 00004D68 00004E2C  4B FF B3 E1 */	bl evtGetValue
/* 00004D6C 00004E30  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 00004D70 00004E34  3C 00 43 30 */	lis r0, 0x4330
/* 00004D74 00004E38  3C 80 00 00 */	lis r4, double_to_int_tik_0000ad80@ha
/* 00004D78 00004E3C  90 61 00 5C */	stw r3, 0x5c(r1)
/* 00004D7C 00004E40  38 A4 00 00 */	addi r5, r4, double_to_int_tik_0000ad80@l
/* 00004D80 00004E44  7F 83 E3 78 */	mr r3, r28
/* 00004D84 00004E48  90 01 00 58 */	stw r0, 0x58(r1)
/* 00004D88 00004E4C  7F A4 EB 78 */	mr r4, r29
/* 00004D8C 00004E50  C8 25 00 00 */	lfd f1, 0x0(r5)
/* 00004D90 00004E54  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 00004D94 00004E58  EC 00 08 28 */	fsubs f0, f0, f1
/* 00004D98 00004E5C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 00004D9C 00004E60  4B FF B3 AD */	bl evtGetValue
/* 00004DA0 00004E64  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 00004DA4 00004E68  3C 00 43 30 */	lis r0, 0x4330
/* 00004DA8 00004E6C  3C 80 00 00 */	lis r4, double_to_int_tik_0000ad80@ha
/* 00004DAC 00004E70  90 61 00 64 */	stw r3, 0x64(r1)
/* 00004DB0 00004E74  38 A4 00 00 */	addi r5, r4, double_to_int_tik_0000ad80@l
/* 00004DB4 00004E78  3C 60 00 00 */	lis r3, zero_tik_0000ada8@ha
/* 00004DB8 00004E7C  90 01 00 60 */	stw r0, 0x60(r1)
/* 00004DBC 00004E80  38 83 00 00 */	addi r4, r3, zero_tik_0000ada8@l
/* 00004DC0 00004E84  C8 45 00 00 */	lfd f2, 0x0(r5)
/* 00004DC4 00004E88  7F 83 E3 78 */	mr r3, r28
/* 00004DC8 00004E8C  C8 21 00 60 */	lfd f1, 0x60(r1)
/* 00004DCC 00004E90  C0 04 00 00 */	lfs f0, 0x0(r4)
/* 00004DD0 00004E94  EC 21 10 28 */	fsubs f1, f1, f2
/* 00004DD4 00004E98  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 00004DD8 00004E9C  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 00004DDC 00004EA0  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00004DE0 00004EA4  4B FF B3 69 */	bl evtGetValue
/* 00004DE4 00004EA8  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 00004DE8 00004EAC  3C 00 43 30 */	lis r0, 0x4330
/* 00004DEC 00004EB0  90 61 00 6C */	stw r3, 0x6c(r1)
/* 00004DF0 00004EB4  3C 80 00 00 */	lis r4, double_to_int_tik_0000ad80@ha
/* 00004DF4 00004EB8  C8 24 00 00 */	lfd f1, double_to_int_tik_0000ad80@l(r4)
/* 00004DF8 00004EBC  7F 83 E3 78 */	mr r3, r28
/* 00004DFC 00004EC0  90 01 00 68 */	stw r0, 0x68(r1)
/* 00004E00 00004EC4  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 00004E04 00004EC8  EC 00 08 28 */	fsubs f0, f0, f1
/* 00004E08 00004ECC  D0 01 00 08 */	stfs f0, 0x8(r1)
/* 00004E0C 00004ED0  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00004E10 00004ED4  4B FF B3 39 */	bl evtGetValue
/* 00004E14 00004ED8  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 00004E18 00004EDC  3C 00 43 30 */	lis r0, 0x4330
/* 00004E1C 00004EE0  3C 80 00 00 */	lis r4, double_to_int_tik_0000ad80@ha
/* 00004E20 00004EE4  90 61 00 74 */	stw r3, 0x74(r1)
/* 00004E24 00004EE8  38 A4 00 00 */	addi r5, r4, double_to_int_tik_0000ad80@l
/* 00004E28 00004EEC  3C 60 00 00 */	lis r3, zero_tik_0000ada8@ha
/* 00004E2C 00004EF0  90 01 00 70 */	stw r0, 0x70(r1)
/* 00004E30 00004EF4  38 83 00 00 */	addi r4, r3, zero_tik_0000ada8@l
/* 00004E34 00004EF8  C8 45 00 00 */	lfd f2, 0x0(r5)
/* 00004E38 00004EFC  38 61 00 14 */	addi r3, r1, 0x14
/* 00004E3C 00004F00  C8 21 00 70 */	lfd f1, 0x70(r1)
/* 00004E40 00004F04  7C 65 1B 78 */	mr r5, r3
/* 00004E44 00004F08  C0 04 00 00 */	lfs f0, 0x0(r4)
/* 00004E48 00004F0C  38 81 00 08 */	addi r4, r1, 0x8
/* 00004E4C 00004F10  EC 21 10 28 */	fsubs f1, f1, f2
/* 00004E50 00004F14  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 00004E54 00004F18  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 00004E58 00004F1C  4B FF B2 F1 */	bl PSVECSubtract
/* 00004E5C 00004F20  3C 80 00 00 */	lis r4, float_deg2rad_tik_0000ada0@ha
/* 00004E60 00004F24  38 61 00 20 */	addi r3, r1, 0x20
/* 00004E64 00004F28  38 A4 00 00 */	addi r5, r4, float_deg2rad_tik_0000ada0@l
/* 00004E68 00004F2C  38 80 00 59 */	li r4, 0x59
/* 00004E6C 00004F30  C0 05 00 00 */	lfs f0, 0x0(r5)
/* 00004E70 00004F34  EC 20 07 F2 */	fmuls f1, f0, f31
/* 00004E74 00004F38  4B FF B2 D5 */	bl PSMTXRotRad
/* 00004E78 00004F3C  38 81 00 14 */	addi r4, r1, 0x14
/* 00004E7C 00004F40  38 61 00 20 */	addi r3, r1, 0x20
/* 00004E80 00004F44  7C 85 23 78 */	mr r5, r4
/* 00004E84 00004F48  4B FF B2 C5 */	bl PSMTXMultVec
/* 00004E88 00004F4C  38 61 00 14 */	addi r3, r1, 0x14
/* 00004E8C 00004F50  38 81 00 08 */	addi r4, r1, 0x8
/* 00004E90 00004F54  7C 65 1B 78 */	mr r5, r3
/* 00004E94 00004F58  4B FF B2 B5 */	bl PSVECAdd
/* 00004E98 00004F5C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 00004E9C 00004F60  7F 83 E3 78 */	mr r3, r28
/* 00004EA0 00004F64  7F C4 F3 78 */	mr r4, r30
/* 00004EA4 00004F68  FC 00 00 1E */	fctiwz f0, f0
/* 00004EA8 00004F6C  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 00004EAC 00004F70  80 A1 00 7C */	lwz r5, 0x7c(r1)
/* 00004EB0 00004F74  4B FF B2 99 */	bl evtSetValue
/* 00004EB4 00004F78  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 00004EB8 00004F7C  7F 83 E3 78 */	mr r3, r28
/* 00004EBC 00004F80  7F A4 EB 78 */	mr r4, r29
/* 00004EC0 00004F84  FC 00 00 1E */	fctiwz f0, f0
/* 00004EC4 00004F88  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 00004EC8 00004F8C  80 A1 00 84 */	lwz r5, 0x84(r1)
/* 00004ECC 00004F90  4B FF B2 7D */	bl evtSetValue
/* 00004ED0 00004F94  38 60 00 02 */	li r3, 0x2
/* 00004ED4 00004F98  E3 E1 00 A8 */	psq_l f31, 0xa8(r1), 0, qr0
/* 00004ED8 00004F9C  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 00004EDC 00004FA0  BB 81 00 90 */	lmw r28, 0x90(r1)
/* 00004EE0 00004FA4  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 00004EE4 00004FA8  7C 08 03 A6 */	mtlr r0
/* 00004EE8 00004FAC  38 21 00 B0 */	addi r1, r1, 0xb0
/* 00004EEC 00004FB0  4E 80 00 20 */	blr
.endfn enzan_cam_turn_keisan

# .text:0x568 | 0x4EF0 | size: 0xCC
.fn wariai_enzan_0f, local
/* 00004EF0 00004FB4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 00004EF4 00004FB8  7C 08 02 A6 */	mflr r0
/* 00004EF8 00004FBC  90 01 00 44 */	stw r0, 0x44(r1)
/* 00004EFC 00004FC0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 00004F00 00004FC4  F3 E1 00 38 */	psq_st f31, 0x38(r1), 0, qr0
/* 00004F04 00004FC8  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 00004F08 00004FCC  F3 C1 00 28 */	psq_st f30, 0x28(r1), 0, qr0
/* 00004F0C 00004FD0  DB A1 00 10 */	stfd f29, 0x10(r1)
/* 00004F10 00004FD4  F3 A1 00 18 */	psq_st f29, 0x18(r1), 0, qr0
/* 00004F14 00004FD8  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00004F18 00004FDC  7C 7E 1B 78 */	mr r30, r3
/* 00004F1C 00004FE0  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00004F20 00004FE4  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00004F24 00004FE8  4B FF B2 25 */	bl evtGetFloat
/* 00004F28 00004FEC  3C 60 00 00 */	lis r3, float_1_tik_0000adac@ha
/* 00004F2C 00004FF0  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00004F30 00004FF4  38 A3 00 00 */	addi r5, r3, float_1_tik_0000adac@l
/* 00004F34 00004FF8  7F C3 F3 78 */	mr r3, r30
/* 00004F38 00004FFC  C0 05 00 00 */	lfs f0, 0x0(r5)
/* 00004F3C 00005000  EF C1 00 28 */	fsubs f30, f1, f0
/* 00004F40 00005004  4B FF B2 09 */	bl evtGetFloat
/* 00004F44 00005008  3C 60 00 00 */	lis r3, float_1_tik_0000adac@ha
/* 00004F48 0000500C  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 00004F4C 00005010  38 A3 00 00 */	addi r5, r3, float_1_tik_0000adac@l
/* 00004F50 00005014  7F C3 F3 78 */	mr r3, r30
/* 00004F54 00005018  C0 05 00 00 */	lfs f0, 0x0(r5)
/* 00004F58 0000501C  EF A1 00 28 */	fsubs f29, f1, f0
/* 00004F5C 00005020  4B FF B1 ED */	bl evtGetFloat
/* 00004F60 00005024  FF E0 08 90 */	fmr f31, f1
/* 00004F64 00005028  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00004F68 0000502C  7F C3 F3 78 */	mr r3, r30
/* 00004F6C 00005030  4B FF B1 DD */	bl evtGetFloat
/* 00004F70 00005034  EC 1D F0 28 */	fsubs f0, f29, f30
/* 00004F74 00005038  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00004F78 0000503C  7F C3 F3 78 */	mr r3, r30
/* 00004F7C 00005040  EC 01 00 32 */	fmuls f0, f1, f0
/* 00004F80 00005044  EC 1E 07 FA */	fmadds f0, f30, f31, f0
/* 00004F84 00005048  EC 20 E8 24 */	fdivs f1, f0, f29
/* 00004F88 0000504C  4B FF B1 C1 */	bl evtSetFloat
/* 00004F8C 00005050  38 60 00 02 */	li r3, 0x2
/* 00004F90 00005054  E3 E1 00 38 */	psq_l f31, 0x38(r1), 0, qr0
/* 00004F94 00005058  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 00004F98 0000505C  E3 C1 00 28 */	psq_l f30, 0x28(r1), 0, qr0
/* 00004F9C 00005060  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 00004FA0 00005064  E3 A1 00 18 */	psq_l f29, 0x18(r1), 0, qr0
/* 00004FA4 00005068  CB A1 00 10 */	lfd f29, 0x10(r1)
/* 00004FA8 0000506C  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00004FAC 00005070  80 01 00 44 */	lwz r0, 0x44(r1)
/* 00004FB0 00005074  7C 08 03 A6 */	mtlr r0
/* 00004FB4 00005078  38 21 00 40 */	addi r1, r1, 0x40
/* 00004FB8 0000507C  4E 80 00 20 */	blr
.endfn wariai_enzan_0f

# .text:0x634 | 0x4FBC | size: 0xD8
.fn wariai_enzan_0, local
/* 00004FBC 00005080  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 00004FC0 00005084  7C 08 02 A6 */	mflr r0
/* 00004FC4 00005088  90 01 00 54 */	stw r0, 0x54(r1)
/* 00004FC8 0000508C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 00004FCC 00005090  F3 E1 00 48 */	psq_st f31, 0x48(r1), 0, qr0
/* 00004FD0 00005094  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 00004FD4 00005098  F3 C1 00 38 */	psq_st f30, 0x38(r1), 0, qr0
/* 00004FD8 0000509C  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 00004FDC 000050A0  F3 A1 00 28 */	psq_st f29, 0x28(r1), 0, qr0
/* 00004FE0 000050A4  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 00004FE4 000050A8  7C 7E 1B 78 */	mr r30, r3
/* 00004FE8 000050AC  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00004FEC 000050B0  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00004FF0 000050B4  4B FF B1 59 */	bl evtGetFloat
/* 00004FF4 000050B8  3C 60 00 00 */	lis r3, float_1_tik_0000adac@ha
/* 00004FF8 000050BC  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00004FFC 000050C0  38 A3 00 00 */	addi r5, r3, float_1_tik_0000adac@l
/* 00005000 000050C4  7F C3 F3 78 */	mr r3, r30
/* 00005004 000050C8  C0 05 00 00 */	lfs f0, 0x0(r5)
/* 00005008 000050CC  EF C1 00 28 */	fsubs f30, f1, f0
/* 0000500C 000050D0  4B FF B1 3D */	bl evtGetFloat
/* 00005010 000050D4  3C 60 00 00 */	lis r3, float_1_tik_0000adac@ha
/* 00005014 000050D8  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 00005018 000050DC  38 A3 00 00 */	addi r5, r3, float_1_tik_0000adac@l
/* 0000501C 000050E0  7F C3 F3 78 */	mr r3, r30
/* 00005020 000050E4  C0 05 00 00 */	lfs f0, 0x0(r5)
/* 00005024 000050E8  EF A1 00 28 */	fsubs f29, f1, f0
/* 00005028 000050EC  4B FF B1 21 */	bl evtGetFloat
/* 0000502C 000050F0  FF E0 08 90 */	fmr f31, f1
/* 00005030 000050F4  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00005034 000050F8  7F C3 F3 78 */	mr r3, r30
/* 00005038 000050FC  4B FF B1 11 */	bl evtGetFloat
/* 0000503C 00005100  EC 1D F0 28 */	fsubs f0, f29, f30
/* 00005040 00005104  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00005044 00005108  7F C3 F3 78 */	mr r3, r30
/* 00005048 0000510C  EC 01 00 32 */	fmuls f0, f1, f0
/* 0000504C 00005110  EC 1E 07 FA */	fmadds f0, f30, f31, f0
/* 00005050 00005114  EC 00 E8 24 */	fdivs f0, f0, f29
/* 00005054 00005118  FC 00 00 1E */	fctiwz f0, f0
/* 00005058 0000511C  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 0000505C 00005120  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 00005060 00005124  4B FF B0 E9 */	bl evtSetValue
/* 00005064 00005128  38 60 00 02 */	li r3, 0x2
/* 00005068 0000512C  E3 E1 00 48 */	psq_l f31, 0x48(r1), 0, qr0
/* 0000506C 00005130  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 00005070 00005134  E3 C1 00 38 */	psq_l f30, 0x38(r1), 0, qr0
/* 00005074 00005138  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 00005078 0000513C  E3 A1 00 28 */	psq_l f29, 0x28(r1), 0, qr0
/* 0000507C 00005140  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 00005080 00005144  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 00005084 00005148  80 01 00 54 */	lwz r0, 0x54(r1)
/* 00005088 0000514C  7C 08 03 A6 */	mtlr r0
/* 0000508C 00005150  38 21 00 50 */	addi r1, r1, 0x50
/* 00005090 00005154  4E 80 00 20 */	blr
.endfn wariai_enzan_0

# .text:0x70C | 0x5094 | size: 0xC0
.fn wariai_enzan_1f, local
/* 00005094 00005158  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 00005098 0000515C  7C 08 02 A6 */	mflr r0
/* 0000509C 00005160  90 01 00 44 */	stw r0, 0x44(r1)
/* 000050A0 00005164  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 000050A4 00005168  F3 E1 00 38 */	psq_st f31, 0x38(r1), 0, qr0
/* 000050A8 0000516C  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 000050AC 00005170  F3 C1 00 28 */	psq_st f30, 0x28(r1), 0, qr0
/* 000050B0 00005174  DB A1 00 10 */	stfd f29, 0x10(r1)
/* 000050B4 00005178  F3 A1 00 18 */	psq_st f29, 0x18(r1), 0, qr0
/* 000050B8 0000517C  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 000050BC 00005180  7C 7E 1B 78 */	mr r30, r3
/* 000050C0 00005184  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 000050C4 00005188  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 000050C8 0000518C  4B FF B0 81 */	bl evtGetFloat
/* 000050CC 00005190  3C 60 00 00 */	lis r3, float_1_tik_0000adac@ha
/* 000050D0 00005194  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 000050D4 00005198  38 A3 00 00 */	addi r5, r3, float_1_tik_0000adac@l
/* 000050D8 0000519C  7F C3 F3 78 */	mr r3, r30
/* 000050DC 000051A0  C0 05 00 00 */	lfs f0, 0x0(r5)
/* 000050E0 000051A4  EF A1 00 28 */	fsubs f29, f1, f0
/* 000050E4 000051A8  4B FF B0 65 */	bl evtGetFloat
/* 000050E8 000051AC  FF C0 08 90 */	fmr f30, f1
/* 000050EC 000051B0  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 000050F0 000051B4  7F C3 F3 78 */	mr r3, r30
/* 000050F4 000051B8  4B FF B0 55 */	bl evtGetFloat
/* 000050F8 000051BC  FF E0 08 90 */	fmr f31, f1
/* 000050FC 000051C0  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00005100 000051C4  7F C3 F3 78 */	mr r3, r30
/* 00005104 000051C8  4B FF B0 45 */	bl evtGetFloat
/* 00005108 000051CC  EC 1E E8 28 */	fsubs f0, f30, f29
/* 0000510C 000051D0  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00005110 000051D4  7F C3 F3 78 */	mr r3, r30
/* 00005114 000051D8  EC 01 00 32 */	fmuls f0, f1, f0
/* 00005118 000051DC  EC 1D 07 FA */	fmadds f0, f29, f31, f0
/* 0000511C 000051E0  EC 20 F0 24 */	fdivs f1, f0, f30
/* 00005120 000051E4  4B FF B0 29 */	bl evtSetFloat
/* 00005124 000051E8  38 60 00 02 */	li r3, 0x2
/* 00005128 000051EC  E3 E1 00 38 */	psq_l f31, 0x38(r1), 0, qr0
/* 0000512C 000051F0  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 00005130 000051F4  E3 C1 00 28 */	psq_l f30, 0x28(r1), 0, qr0
/* 00005134 000051F8  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 00005138 000051FC  E3 A1 00 18 */	psq_l f29, 0x18(r1), 0, qr0
/* 0000513C 00005200  CB A1 00 10 */	lfd f29, 0x10(r1)
/* 00005140 00005204  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00005144 00005208  80 01 00 44 */	lwz r0, 0x44(r1)
/* 00005148 0000520C  7C 08 03 A6 */	mtlr r0
/* 0000514C 00005210  38 21 00 40 */	addi r1, r1, 0x40
/* 00005150 00005214  4E 80 00 20 */	blr
.endfn wariai_enzan_1f

# .text:0x7CC | 0x5154 | size: 0xCC
.fn wariai_enzan_1, local
/* 00005154 00005218  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 00005158 0000521C  7C 08 02 A6 */	mflr r0
/* 0000515C 00005220  90 01 00 54 */	stw r0, 0x54(r1)
/* 00005160 00005224  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 00005164 00005228  F3 E1 00 48 */	psq_st f31, 0x48(r1), 0, qr0
/* 00005168 0000522C  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 0000516C 00005230  F3 C1 00 38 */	psq_st f30, 0x38(r1), 0, qr0
/* 00005170 00005234  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 00005174 00005238  F3 A1 00 28 */	psq_st f29, 0x28(r1), 0, qr0
/* 00005178 0000523C  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 0000517C 00005240  7C 7E 1B 78 */	mr r30, r3
/* 00005180 00005244  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00005184 00005248  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00005188 0000524C  4B FF AF C1 */	bl evtGetFloat
/* 0000518C 00005250  3C 60 00 00 */	lis r3, float_1_tik_0000adac@ha
/* 00005190 00005254  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00005194 00005258  38 A3 00 00 */	addi r5, r3, float_1_tik_0000adac@l
/* 00005198 0000525C  7F C3 F3 78 */	mr r3, r30
/* 0000519C 00005260  C0 05 00 00 */	lfs f0, 0x0(r5)
/* 000051A0 00005264  EF A1 00 28 */	fsubs f29, f1, f0
/* 000051A4 00005268  4B FF AF A5 */	bl evtGetFloat
/* 000051A8 0000526C  FF C0 08 90 */	fmr f30, f1
/* 000051AC 00005270  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 000051B0 00005274  7F C3 F3 78 */	mr r3, r30
/* 000051B4 00005278  4B FF AF 95 */	bl evtGetFloat
/* 000051B8 0000527C  FF E0 08 90 */	fmr f31, f1
/* 000051BC 00005280  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 000051C0 00005284  7F C3 F3 78 */	mr r3, r30
/* 000051C4 00005288  4B FF AF 85 */	bl evtGetFloat
/* 000051C8 0000528C  EC 1E E8 28 */	fsubs f0, f30, f29
/* 000051CC 00005290  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 000051D0 00005294  7F C3 F3 78 */	mr r3, r30
/* 000051D4 00005298  EC 01 00 32 */	fmuls f0, f1, f0
/* 000051D8 0000529C  EC 1D 07 FA */	fmadds f0, f29, f31, f0
/* 000051DC 000052A0  EC 00 F0 24 */	fdivs f0, f0, f30
/* 000051E0 000052A4  FC 00 00 1E */	fctiwz f0, f0
/* 000051E4 000052A8  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 000051E8 000052AC  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 000051EC 000052B0  4B FF AF 5D */	bl evtSetValue
/* 000051F0 000052B4  38 60 00 02 */	li r3, 0x2
/* 000051F4 000052B8  E3 E1 00 48 */	psq_l f31, 0x48(r1), 0, qr0
/* 000051F8 000052BC  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 000051FC 000052C0  E3 C1 00 38 */	psq_l f30, 0x38(r1), 0, qr0
/* 00005200 000052C4  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 00005204 000052C8  E3 A1 00 28 */	psq_l f29, 0x28(r1), 0, qr0
/* 00005208 000052CC  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 0000520C 000052D0  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 00005210 000052D4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 00005214 000052D8  7C 08 03 A6 */	mtlr r0
/* 00005218 000052DC  38 21 00 50 */	addi r1, r1, 0x50
/* 0000521C 000052E0  4E 80 00 20 */	blr
.endfn wariai_enzan_1

# .text:0x898 | 0x5220 | size: 0xDC
.fn effect_stardust, local
/* 00005220 000052E4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 00005224 000052E8  7C 08 02 A6 */	mflr r0
/* 00005228 000052EC  90 01 00 44 */	stw r0, 0x44(r1)
/* 0000522C 000052F0  39 61 00 40 */	addi r11, r1, 0x40
/* 00005230 000052F4  4B FF AF 19 */	bl _savefpr_27
/* 00005234 000052F8  BF A1 00 0C */	stmw r29, 0xc(r1)
/* 00005238 000052FC  7C 7D 1B 78 */	mr r29, r3
/* 0000523C 00005300  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00005240 00005304  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00005244 00005308  4B FF AF 05 */	bl evtGetValue
/* 00005248 0000530C  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 0000524C 00005310  7C 7E 1B 78 */	mr r30, r3
/* 00005250 00005314  7F A3 EB 78 */	mr r3, r29
/* 00005254 00005318  4B FF AE F5 */	bl evtGetFloat
/* 00005258 0000531C  FF E0 08 90 */	fmr f31, f1
/* 0000525C 00005320  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 00005260 00005324  7F A3 EB 78 */	mr r3, r29
/* 00005264 00005328  4B FF AE E5 */	bl evtGetFloat
/* 00005268 0000532C  FF C0 08 90 */	fmr f30, f1
/* 0000526C 00005330  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00005270 00005334  7F A3 EB 78 */	mr r3, r29
/* 00005274 00005338  4B FF AE D5 */	bl evtGetFloat
/* 00005278 0000533C  FF A0 08 90 */	fmr f29, f1
/* 0000527C 00005340  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00005280 00005344  7F A3 EB 78 */	mr r3, r29
/* 00005284 00005348  4B FF AE C5 */	bl evtGetFloat
/* 00005288 0000534C  FF 80 08 90 */	fmr f28, f1
/* 0000528C 00005350  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 00005290 00005354  7F A3 EB 78 */	mr r3, r29
/* 00005294 00005358  4B FF AE B5 */	bl evtGetFloat
/* 00005298 0000535C  FF 60 08 90 */	fmr f27, f1
/* 0000529C 00005360  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 000052A0 00005364  7F A3 EB 78 */	mr r3, r29
/* 000052A4 00005368  4B FF AE A5 */	bl evtGetValue
/* 000052A8 0000536C  80 9F 00 1C */	lwz r4, 0x1c(r31)
/* 000052AC 00005370  7C 7F 1B 78 */	mr r31, r3
/* 000052B0 00005374  7F A3 EB 78 */	mr r3, r29
/* 000052B4 00005378  4B FF AE 95 */	bl evtGetValue
/* 000052B8 0000537C  FC 20 F8 90 */	fmr f1, f31
/* 000052BC 00005380  7C 65 1B 78 */	mr r5, r3
/* 000052C0 00005384  FC 40 F0 90 */	fmr f2, f30
/* 000052C4 00005388  7F C3 F3 78 */	mr r3, r30
/* 000052C8 0000538C  FC 60 E8 90 */	fmr f3, f29
/* 000052CC 00005390  7F E4 FB 78 */	mr r4, r31
/* 000052D0 00005394  FC 80 E0 90 */	fmr f4, f28
/* 000052D4 00005398  FC A0 D8 90 */	fmr f5, f27
/* 000052D8 0000539C  4B FF AE 71 */	bl effStardustEntry
/* 000052DC 000053A0  38 60 00 02 */	li r3, 0x2
/* 000052E0 000053A4  39 61 00 40 */	addi r11, r1, 0x40
/* 000052E4 000053A8  4B FF AE 65 */	bl _restfpr_27
/* 000052E8 000053AC  BB A1 00 0C */	lmw r29, 0xc(r1)
/* 000052EC 000053B0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 000052F0 000053B4  7C 08 03 A6 */	mtlr r0
/* 000052F4 000053B8  38 21 00 40 */	addi r1, r1, 0x40
/* 000052F8 000053BC  4E 80 00 20 */	blr
.endfn effect_stardust

# .text:0x974 | 0x52FC | size: 0x40
.fn setmertn, local
/* 000052FC 000053C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00005300 000053C4  7C 08 02 A6 */	mflr r0
/* 00005304 000053C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 00005308 000053CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 0000530C 000053D0  7C 7F 1B 78 */	mr r31, r3
/* 00005310 000053D4  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00005314 000053D8  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00005318 000053DC  4B FF AE 31 */	bl evtGetValue
/* 0000531C 000053E0  4B FF AE 2D */	bl npcNameToPtr
/* 00005320 000053E4  90 7F 01 70 */	stw r3, 0x170(r31)
/* 00005324 000053E8  38 60 00 02 */	li r3, 0x2
/* 00005328 000053EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0000532C 000053F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 00005330 000053F4  7C 08 03 A6 */	mtlr r0
/* 00005334 000053F8  38 21 00 10 */	addi r1, r1, 0x10
/* 00005338 000053FC  4E 80 00 20 */	blr
.endfn setmertn

# 0x00002C40..0x00002F48 | size: 0x308
.rodata
.balign 8

# .rodata:0x0 | 0x2C40 | size: 0xC
.obj vec3_tik_0000aaa8, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj vec3_tik_0000aaa8

# .rodata:0xC | 0x2C4C | size: 0xC
.obj vec3_tik_0000aab4, local
	.4byte 0xC1100000
	.4byte 0x42600000
	.4byte 0x00000000
.endobj vec3_tik_0000aab4

# .rodata:0x18 | 0x2C58 | size: 0xD
.obj str_powerdown_04_tik_0000aac0, local
	.string "powerdown_04"
.endobj str_powerdown_04_tik_0000aac0

# .rodata:0x25 | 0x2C65 | size: 0x3
.obj gap_03_00002C65_rodata, global
.hidden gap_03_00002C65_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002C65_rodata

# .rodata:0x28 | 0x2C68 | size: 0x10
.obj str_powerdown_03_01_tik_0000aad0, local
	.string "powerdown_03_01"
.endobj str_powerdown_03_01_tik_0000aad0

# .rodata:0x38 | 0x2C78 | size: 0x3
.obj str_me_tik_0000aae0, local
	.string "me"
.endobj str_me_tik_0000aae0

# .rodata:0x3B | 0x2C7B | size: 0x1
.obj gap_03_00002C7B_rodata, global
.hidden gap_03_00002C7B_rodata
	.byte 0x00
.endobj gap_03_00002C7B_rodata

# .rodata:0x3C | 0x2C7C | size: 0xD
.obj str_powerdown_06_tik_0000aae4, local
	.string "powerdown_06"
.endobj str_powerdown_06_tik_0000aae4

# .rodata:0x49 | 0x2C89 | size: 0x3
.obj gap_03_00002C89_rodata, global
.hidden gap_03_00002C89_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002C89_rodata

# .rodata:0x4C | 0x2C8C | size: 0xD
.obj str_powerdown_09_tik_0000aaf4, local
	.string "powerdown_09"
.endobj str_powerdown_09_tik_0000aaf4

# .rodata:0x59 | 0x2C99 | size: 0x3
.obj gap_03_00002C99_rodata, global
.hidden gap_03_00002C99_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002C99_rodata

# .rodata:0x5C | 0x2C9C | size: 0xD
.obj str_powerdown_11_tik_0000ab04, local
	.string "powerdown_11"
.endobj str_powerdown_11_tik_0000ab04

# .rodata:0x69 | 0x2CA9 | size: 0x3
.obj gap_03_00002CA9_rodata, global
.hidden gap_03_00002CA9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002CA9_rodata

# .rodata:0x6C | 0x2CAC | size: 0xA
.obj str_down_pira_tik_0000ab14, local
	.string "down_pira"
.endobj str_down_pira_tik_0000ab14

# .rodata:0x76 | 0x2CB6 | size: 0x2
.obj gap_03_00002CB6_rodata, global
.hidden gap_03_00002CB6_rodata
	.2byte 0x0000
.endobj gap_03_00002CB6_rodata

# .rodata:0x78 | 0x2CB8 | size: 0x12
.obj str_BGM_FF_POWERDOWN1_tik_0000ab20, local
	.string "BGM_FF_POWERDOWN1"
.endobj str_BGM_FF_POWERDOWN1_tik_0000ab20

# .rodata:0x8A | 0x2CCA | size: 0x2
.obj gap_03_00002CCA_rodata, global
.hidden gap_03_00002CCA_rodata
	.2byte 0x0000
.endobj gap_03_00002CCA_rodata

# .rodata:0x8C | 0x2CCC | size: 0x5
.obj str_aaax_tik_0000ab34, local
	.string "aaax"
.endobj str_aaax_tik_0000ab34

# .rodata:0x91 | 0x2CD1 | size: 0x3
.obj gap_03_00002CD1_rodata, global
.hidden gap_03_00002CD1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002CD1_rodata

# .rodata:0x94 | 0x2CD4 | size: 0xE
.obj str_lensflare_n64_tik_0000ab3c, local
	.string "lensflare_n64"
.endobj str_lensflare_n64_tik_0000ab3c

# .rodata:0xA2 | 0x2CE2 | size: 0x2
.obj gap_03_00002CE2_rodata, global
.hidden gap_03_00002CE2_rodata
	.2byte 0x0000
.endobj gap_03_00002CE2_rodata

# .rodata:0xA4 | 0x2CE4 | size: 0xD
.obj str_powerdown_12_tik_0000ab4c, local
	.string "powerdown_12"
.endobj str_powerdown_12_tik_0000ab4c

# .rodata:0xB1 | 0x2CF1 | size: 0x3
.obj gap_03_00002CF1_rodata, global
.hidden gap_03_00002CF1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002CF1_rodata

# .rodata:0xB4 | 0x2CF4 | size: 0x2
.obj str_S_tik_0000ab5c, local
	.string "S"
.endobj str_S_tik_0000ab5c

# .rodata:0xB6 | 0x2CF6 | size: 0x2
.obj gap_03_00002CF6_rodata, global
.hidden gap_03_00002CF6_rodata
	.2byte 0x0000
.endobj gap_03_00002CF6_rodata

# .rodata:0xB8 | 0x2CF8 | size: 0x8
.obj str_ie_naka_tik_0000ab60, local
	.string "ie_naka"
.endobj str_ie_naka_tik_0000ab60

# .rodata:0xC0 | 0x2D00 | size: 0x5
.obj str_ie_l_tik_0000ab68, local
	.string "ie_l"
.endobj str_ie_l_tik_0000ab68

# .rodata:0xC5 | 0x2D05 | size: 0x3
.obj gap_03_00002D05_rodata, global
.hidden gap_03_00002D05_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002D05_rodata

# .rodata:0xC8 | 0x2D08 | size: 0x5
.obj str_ie_o_tik_0000ab70, local
	.string "ie_o"
.endobj str_ie_o_tik_0000ab70

# .rodata:0xCD | 0x2D0D | size: 0x3
.obj gap_03_00002D0D_rodata, global
.hidden gap_03_00002D0D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002D0D_rodata

# .rodata:0xD0 | 0x2D10 | size: 0x5
.obj str_ie_r_tik_0000ab78, local
	.string "ie_r"
.endobj str_ie_r_tik_0000ab78

# .rodata:0xD5 | 0x2D15 | size: 0x3
.obj gap_03_00002D15_rodata, global
.hidden gap_03_00002D15_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002D15_rodata

# .rodata:0xD8 | 0x2D18 | size: 0xC
.obj str_crystal_n64_tik_0000ab80, local
	.string "crystal_n64"
.endobj str_crystal_n64_tik_0000ab80

# .rodata:0xE4 | 0x2D24 | size: 0x5
.obj str_cccx_tik_0000ab8c, local
	.string "cccx"
.endobj str_cccx_tik_0000ab8c

# .rodata:0xE9 | 0x2D29 | size: 0x3
.obj gap_03_00002D29_rodata, global
.hidden gap_03_00002D29_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002D29_rodata

# .rodata:0xEC | 0x2D2C | size: 0x13
.obj str_pokopi_pcharge_n64_tik_0000ab94, local
	.string "pokopi_pcharge_n64"
.endobj str_pokopi_pcharge_n64_tik_0000ab94

# .rodata:0xFF | 0x2D3F | size: 0x1
.obj gap_03_00002D3F_rodata, global
.hidden gap_03_00002D3F_rodata
	.byte 0x00
.endobj gap_03_00002D3F_rodata

# .rodata:0x100 | 0x2D40 | size: 0x6
.obj str_M_I_Z_tik_0000aba8, local
	.string "M_I_Z"
.endobj str_M_I_Z_tik_0000aba8

# .rodata:0x106 | 0x2D46 | size: 0x2
.obj gap_03_00002D46_rodata, global
.hidden gap_03_00002D46_rodata
	.2byte 0x0000
.endobj gap_03_00002D46_rodata

# .rodata:0x108 | 0x2D48 | size: 0x5
.obj str_dddx_tik_0000abb0, local
	.string "dddx"
.endobj str_dddx_tik_0000abb0

# .rodata:0x10D | 0x2D4D | size: 0x3
.obj gap_03_00002D4D_rodata, global
.hidden gap_03_00002D4D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002D4D_rodata

# .rodata:0x110 | 0x2D50 | size: 0xC
.obj str_release_n64_tik_0000abb8, local
	.string "release_n64"
.endobj str_release_n64_tik_0000abb8

# .rodata:0x11C | 0x2D5C | size: 0x6
.obj str_M_I_1_tik_0000abc4, local
	.string "M_I_1"
.endobj str_M_I_1_tik_0000abc4

# .rodata:0x122 | 0x2D62 | size: 0x2
.obj gap_03_00002D62_rodata, global
.hidden gap_03_00002D62_rodata
	.2byte 0x0000
.endobj gap_03_00002D62_rodata

# .rodata:0x124 | 0x2D64 | size: 0x6
.obj str_M_S_1_tik_0000abcc, local
	.string "M_S_1"
.endobj str_M_S_1_tik_0000abcc

# .rodata:0x12A | 0x2D6A | size: 0x2
.obj gap_03_00002D6A_rodata, global
.hidden gap_03_00002D6A_rodata
	.2byte 0x0000
.endobj gap_03_00002D6A_rodata

# .rodata:0x12C | 0x2D6C | size: 0x6
.obj str_M_V_2_tik_0000abd4, local
	.string "M_V_2"
.endobj str_M_V_2_tik_0000abd4

# .rodata:0x132 | 0x2D72 | size: 0x2
.obj gap_03_00002D72_rodata, global
.hidden gap_03_00002D72_rodata
	.2byte 0x0000
.endobj gap_03_00002D72_rodata

# .rodata:0x134 | 0x2D74 | size: 0xD
.obj str_powerdown_10_tik_0000abdc, local
	.string "powerdown_10"
.endobj str_powerdown_10_tik_0000abdc

# .rodata:0x141 | 0x2D81 | size: 0x3
.obj gap_03_00002D81_rodata, global
.hidden gap_03_00002D81_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002D81_rodata

# .rodata:0x144 | 0x2D84 | size: 0xD
.obj str_powerdown_13_tik_0000abec, local
	.string "powerdown_13"
.endobj str_powerdown_13_tik_0000abec

# .rodata:0x151 | 0x2D91 | size: 0x3
.obj gap_03_00002D91_rodata, global
.hidden gap_03_00002D91_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002D91_rodata

# .rodata:0x154 | 0x2D94 | size: 0xD
.obj str_powerdown_07_tik_0000abfc, local
	.string "powerdown_07"
.endobj str_powerdown_07_tik_0000abfc

# .rodata:0x161 | 0x2DA1 | size: 0x3
.obj gap_03_00002DA1_rodata, global
.hidden gap_03_00002DA1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002DA1_rodata

# .rodata:0x164 | 0x2DA4 | size: 0xD
.obj str_powerdown_08_tik_0000ac0c, local
	.string "powerdown_08"
.endobj str_powerdown_08_tik_0000ac0c

# .rodata:0x171 | 0x2DB1 | size: 0x3
.obj gap_03_00002DB1_rodata, global
.hidden gap_03_00002DB1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002DB1_rodata

# .rodata:0x174 | 0x2DB4 | size: 0x8
.obj str_PKR_I_1_tik_0000ac1c, local
	.string "PKR_I_1"
.endobj str_PKR_I_1_tik_0000ac1c

# .rodata:0x17C | 0x2DBC | size: 0x8
.obj str_PNK_I_1_tik_0000ac24, local
	.string "PNK_I_1"
.endobj str_PNK_I_1_tik_0000ac24

# .rodata:0x184 | 0x2DC4 | size: 0x4
.obj str_I_1_tik_0000ac2c, local
	.string "I_1"
.endobj str_I_1_tik_0000ac2c

# .rodata:0x188 | 0x2DC8 | size: 0x8
.obj str_PYS_I_1_tik_0000ac30, local
	.string "PYS_I_1"
.endobj str_PYS_I_1_tik_0000ac30

# .rodata:0x190 | 0x2DD0 | size: 0x8
.obj str_PWD_I_1_tik_0000ac38, local
	.string "PWD_I_1"
.endobj str_PWD_I_1_tik_0000ac38

# .rodata:0x198 | 0x2DD8 | size: 0x8
.obj str_PTR_I_1_tik_0000ac40, local
	.string "PTR_I_1"
.endobj str_PTR_I_1_tik_0000ac40

# .rodata:0x1A0 | 0x2DE0 | size: 0x8
.obj str_PCH_I_1_tik_0000ac48, local
	.string "PCH_I_1"
.endobj str_PCH_I_1_tik_0000ac48

# .rodata:0x1A8 | 0x2DE8 | size: 0x8
.obj str_PKR_C_1_tik_0000ac50, local
	.string "PKR_C_1"
.endobj str_PKR_C_1_tik_0000ac50

# .rodata:0x1B0 | 0x2DF0 | size: 0x8
.obj str_PNK_C_1_tik_0000ac58, local
	.string "PNK_C_1"
.endobj str_PNK_C_1_tik_0000ac58

# .rodata:0x1B8 | 0x2DF8 | size: 0x4
.obj str_C_1_tik_0000ac60, local
	.string "C_1"
.endobj str_C_1_tik_0000ac60

# .rodata:0x1BC | 0x2DFC | size: 0x8
.obj str_PYS_C_1_tik_0000ac64, local
	.string "PYS_C_1"
.endobj str_PYS_C_1_tik_0000ac64

# .rodata:0x1C4 | 0x2E04 | size: 0x8
.obj str_PWD_C_1_tik_0000ac6c, local
	.string "PWD_C_1"
.endobj str_PWD_C_1_tik_0000ac6c

# .rodata:0x1CC | 0x2E0C | size: 0x8
.obj str_PTR_C_1_tik_0000ac74, local
	.string "PTR_C_1"
.endobj str_PTR_C_1_tik_0000ac74

# .rodata:0x1D4 | 0x2E14 | size: 0x8
.obj str_PCH_C_1_tik_0000ac7c, local
	.string "PCH_C_1"
.endobj str_PCH_C_1_tik_0000ac7c

# .rodata:0x1DC | 0x2E1C | size: 0x8
.obj str_PKR_Y_1_tik_0000ac84, local
	.string "PKR_Y_1"
.endobj str_PKR_Y_1_tik_0000ac84

# .rodata:0x1E4 | 0x2E24 | size: 0x8
.obj str_PNK_Y_1_tik_0000ac8c, local
	.string "PNK_Y_1"
.endobj str_PNK_Y_1_tik_0000ac8c

# .rodata:0x1EC | 0x2E2C | size: 0x4
.obj str_Y_1_tik_0000ac94, local
	.string "Y_1"
.endobj str_Y_1_tik_0000ac94

# .rodata:0x1F0 | 0x2E30 | size: 0x8
.obj str_PYS_Y_1_tik_0000ac98, local
	.string "PYS_Y_1"
.endobj str_PYS_Y_1_tik_0000ac98

# .rodata:0x1F8 | 0x2E38 | size: 0x8
.obj str_PWD_Y_1_tik_0000aca0, local
	.string "PWD_Y_1"
.endobj str_PWD_Y_1_tik_0000aca0

# .rodata:0x200 | 0x2E40 | size: 0x8
.obj str_PTR_Y_1_tik_0000aca8, local
	.string "PTR_Y_1"
.endobj str_PTR_Y_1_tik_0000aca8

# .rodata:0x208 | 0x2E48 | size: 0x8
.obj str_PCH_Y_1_tik_0000acb0, local
	.string "PCH_Y_1"
.endobj str_PCH_Y_1_tik_0000acb0

# .rodata:0x210 | 0x2E50 | size: 0xF
.obj str_パワーダウン屋_tik_0000acb8, local
	.4byte 0x8370838F
	.4byte 0x815B835F
	.4byte 0x83458393
	.byte 0x89, 0xAE, 0x00
.endobj str_パワーダウン屋_tik_0000acb8

# .rodata:0x21F | 0x2E5F | size: 0x1
.obj gap_03_00002E5F_rodata, global
.hidden gap_03_00002E5F_rodata
	.byte 0x00
.endobj gap_03_00002E5F_rodata

# .rodata:0x220 | 0x2E60 | size: 0x6
.obj str_mario_tik_0000acc8, local
	.string "mario"
.endobj str_mario_tik_0000acc8

# .rodata:0x226 | 0x2E66 | size: 0x2
.obj gap_03_00002E66_rodata, global
.hidden gap_03_00002E66_rodata
	.2byte 0x0000
.endobj gap_03_00002E66_rodata

# .rodata:0x228 | 0x2E68 | size: 0xD
.obj str_powerdown_00_tik_0000acd0, local
	.string "powerdown_00"
.endobj str_powerdown_00_tik_0000acd0

# .rodata:0x235 | 0x2E75 | size: 0x3
.obj gap_03_00002E75_rodata, global
.hidden gap_03_00002E75_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002E75_rodata

# .rodata:0x238 | 0x2E78 | size: 0x10
.obj str_powerdown_00_01_tik_0000ace0, local
	.string "powerdown_00_01"
.endobj str_powerdown_00_01_tik_0000ace0

# .rodata:0x248 | 0x2E88 | size: 0xD
.obj str_powerdown_01_tik_0000acf0, local
	.string "powerdown_01"
.endobj str_powerdown_01_tik_0000acf0

# .rodata:0x255 | 0x2E95 | size: 0x3
.obj gap_03_00002E95_rodata, global
.hidden gap_03_00002E95_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002E95_rodata

# .rodata:0x258 | 0x2E98 | size: 0xD
.obj str_powerdown_02_tik_0000ad00, local
	.string "powerdown_02"
.endobj str_powerdown_02_tik_0000ad00

# .rodata:0x265 | 0x2EA5 | size: 0x3
.obj gap_03_00002EA5_rodata, global
.hidden gap_03_00002EA5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002EA5_rodata

# .rodata:0x268 | 0x2EA8 | size: 0xD
.obj str_powerdown_03_tik_0000ad10, local
	.string "powerdown_03"
.endobj str_powerdown_03_tik_0000ad10

# .rodata:0x275 | 0x2EB5 | size: 0x3
.obj gap_03_00002EB5_rodata, global
.hidden gap_03_00002EB5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002EB5_rodata

# .rodata:0x278 | 0x2EB8 | size: 0xD
.obj str_powerdown_14_tik_0000ad20, local
	.string "powerdown_14"
.endobj str_powerdown_14_tik_0000ad20

# .rodata:0x285 | 0x2EC5 | size: 0x3
.obj gap_03_00002EC5_rodata, global
.hidden gap_03_00002EC5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002EC5_rodata

# .rodata:0x288 | 0x2EC8 | size: 0xD
.obj str_A_power_down_tik_0000ad30, local
	.string "A_power_down"
.endobj str_A_power_down_tik_0000ad30

# .rodata:0x295 | 0x2ED5 | size: 0x3
.obj gap_03_00002ED5_rodata, global
.hidden gap_03_00002ED5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002ED5_rodata

# .rodata:0x298 | 0x2ED8 | size: 0x7
.obj str_w_bero_tik_0000ad40, local
	.string "w_bero"
.endobj str_w_bero_tik_0000ad40

# .rodata:0x29F | 0x2EDF | size: 0x1
.obj gap_03_00002EDF_rodata, global
.hidden gap_03_00002EDF_rodata
	.byte 0x00
.endobj gap_03_00002EDF_rodata

# .rodata:0x2A0 | 0x2EE0 | size: 0x7
.obj str_tik_01_tik_0000ad48, local
	.string "tik_01"
.endobj str_tik_01_tik_0000ad48

# .rodata:0x2A7 | 0x2EE7 | size: 0x1
.obj gap_03_00002EE7_rodata, global
.hidden gap_03_00002EE7_rodata
	.byte 0x00
.endobj gap_03_00002EE7_rodata

# .rodata:0x2A8 | 0x2EE8 | size: 0x7
.obj str_e_bero_tik_0000ad50, local
	.string "e_bero"
.endobj str_e_bero_tik_0000ad50

# .rodata:0x2AF | 0x2EEF | size: 0x1
.obj gap_03_00002EEF_rodata, global
.hidden gap_03_00002EEF_rodata
	.byte 0x00
.endobj gap_03_00002EEF_rodata

# .rodata:0x2B0 | 0x2EF0 | size: 0xE
.obj str_BGM_STG0_TIK1_tik_0000ad58, local
	.string "BGM_STG0_TIK1"
.endobj str_BGM_STG0_TIK1_tik_0000ad58

# .rodata:0x2BE | 0x2EFE | size: 0x2
.obj gap_03_00002EFE_rodata, global
.hidden gap_03_00002EFE_rodata
	.2byte 0x0000
.endobj gap_03_00002EFE_rodata

# .rodata:0x2C0 | 0x2F00 | size: 0xE
.obj str_ENV_STG0_TIK1_tik_0000ad68, local
	.string "ENV_STG0_TIK1"
.endobj str_ENV_STG0_TIK1_tik_0000ad68

# .rodata:0x2CE | 0x2F0E | size: 0x2
.obj gap_03_00002F0E_rodata, global
.hidden gap_03_00002F0E_rodata
	.2byte 0x0000
.endobj gap_03_00002F0E_rodata

# .rodata:0x2D0 | 0x2F10 | size: 0x8
.obj str_anm_kem_tik_0000ad78, local
	.string "anm_kem"
.endobj str_anm_kem_tik_0000ad78

# .rodata:0x2D8 | 0x2F18 | size: 0x8
.obj double_to_int_tik_0000ad80, local
	.double 4503601774854144
.endobj double_to_int_tik_0000ad80

# .rodata:0x2E0 | 0x2F20 | size: 0x4
.obj float_100_tik_0000ad88, local
	.float 100
.endobj float_100_tik_0000ad88

# .rodata:0x2E4 | 0x2F24 | size: 0x4
.obj float_neg9_tik_0000ad8c, local
	.float -9
.endobj float_neg9_tik_0000ad8c

# .rodata:0x2E8 | 0x2F28 | size: 0x4
.obj float_212_tik_0000ad90, local
	.float 212
.endobj float_212_tik_0000ad90

# .rodata:0x2EC | 0x2F2C | size: 0x4
.obj float_neg60_tik_0000ad94, local
	.float -60
.endobj float_neg60_tik_0000ad94

# .rodata:0x2F0 | 0x2F30 | size: 0x4
.obj float_886_tik_0000ad98, local
	.float 886
.endobj float_886_tik_0000ad98

# .rodata:0x2F4 | 0x2F34 | size: 0x4
.obj float_neg344_tik_0000ad9c, local
	.float -344
.endobj float_neg344_tik_0000ad9c

# .rodata:0x2F8 | 0x2F38 | size: 0x4
.obj float_deg2rad_tik_0000ada0, local
	.float 0.017453292
.endobj float_deg2rad_tik_0000ada0

# .rodata:0x2FC | 0x2F3C | size: 0x4
.obj float_720_tik_0000ada4, local
	.float 720
.endobj float_720_tik_0000ada4

# .rodata:0x300 | 0x2F40 | size: 0x4
.obj zero_tik_0000ada8, local
	.float 0
.endobj zero_tik_0000ada8

# .rodata:0x304 | 0x2F44 | size: 0x4
.obj float_1_tik_0000adac, local
	.float 1
.endobj float_1_tik_0000adac

# 0x000138A0..0x000155D0 | size: 0x1D30
.data
.balign 8

# .data:0x0 | 0x138A0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x138A8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x138AC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x138B0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x138B4 | size: 0x4
.obj gap_04_000138B4_data, global
.hidden gap_04_000138B4_data
	.4byte 0x00000000
.endobj gap_04_000138B4_data

# .data:0x18 | 0x138B8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x138C0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x138C4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x138C8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x138D0 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x138D4 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x138D8 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x138DC | size: 0x4
.obj gap_04_000138DC_data, global
.hidden gap_04_000138DC_data
	.4byte 0x00000000
.endobj gap_04_000138DC_data

# .data:0x40 | 0x138E0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x138E8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x138EC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x138F0 | size: 0x40
.obj unk_evt_tik_00021320, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_party_set_dir_pos
	.4byte 0x00000000
	.4byte 0xFFFFFFF7
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte unk_800e6b1c
	.4byte 0xFFFFFFF7
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj unk_evt_tik_00021320

# .data:0x90 | 0x13930 | size: 0x9FC
.obj powerdownya_mario_level_rtn, local
	.4byte 0x0002005B
	.4byte evt_pouch_get_coin
	.4byte 0xFE363C80
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0x00000027
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_powerdown_04_tik_0000aac0
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x0003005B
	.4byte evt_win_coin_on
	.4byte 0x00000000
	.4byte 0xFE363C8C
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_win_other_select
	.4byte 0x00000009
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_win_coin_off
	.4byte 0xFE363C8C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_powerdown_03_01_tik_0000aad0
	.4byte 0x00000000
	.4byte str_me_tik_0000aae0
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x000000F0
	.4byte 0x00020032
	.4byte 0xFD050F81
	.4byte 0xFE363C81
	.4byte 0x0002005B
	.4byte evt_win_other_select
	.4byte 0x0000000A
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000F0
	.4byte 0x00000008
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_sub_get_language
	.4byte 0xFE363C8F
	.4byte 0x00010022
	.4byte 0xFE363C8F
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0008005B
	.4byte evt_msg_print_insert
	.4byte 0x00000000
	.4byte str_powerdown_06_tik_0000aae4
	.4byte 0x00000000
	.4byte str_me_tik_0000aae0
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00000027
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte unk_800d0998
	.4byte 0x00000000
	.4byte 0xFE363C8E
	.4byte str_powerdown_06_tik_0000aae4
	.4byte 0x00000027
	.4byte 0x0007005B
	.4byte evt_msg_print_insert
	.4byte 0x00000001
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte str_me_tik_0000aae0
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00000031
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_powerdown_09_tik_0000aaf4
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_pouch_get_coin
	.4byte 0xFE363C80
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000027
	.4byte 0x0002005B
	.4byte evt_pouch_set_coin
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte evt_win_coin_wait
	.4byte 0xFE363C8C
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_win_coin_off
	.4byte 0xFE363C8C
	.4byte 0x0001005B
	.4byte enzan_lw_save
	.4byte 0x0002005D
	.4byte unk_evt_tik_00021320
	.4byte 0xFD050F81
	.4byte 0x0003005B
	.4byte evt_snd_bgmoff_f
	.4byte 0x00000400
	.4byte 0x000007D0
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_powerdown_11_tik_0000ab04
	.4byte 0x0002005B
	.4byte bgScrollControll
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0xFFFFFFEC
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C85
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_down_pira_tik_0000ab14
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000001
	.4byte str_BGM_FF_POWERDOWN1_tik_0000ab20
	.4byte 0x0001005B
	.4byte bgm_start_wait
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte str_aaax_tik_0000ab34
	.4byte str_lensflare_n64_tik_0000ab3c
	.4byte 0x00000000
	.4byte 0xFFFFFFF7
	.4byte 0x00000031
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_down_pira_tik_0000ab14
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x00000005
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_powerdown_12_tik_0000ab4c
	.4byte 0x00000000
	.4byte str_me_tik_0000aae0
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0x000000FF
	.4byte 0x00000000
	.4byte 0x000004B0
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0007005B
	.4byte evt_mapobj_color
	.4byte 0x00000001
	.4byte str_S_tik_0000ab5c
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0xFE363C80
	.4byte 0x0007005B
	.4byte evt_mapobj_color
	.4byte 0x00000001
	.4byte str_down_pira_tik_0000ab14
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x0007005B
	.4byte evt_mapobj_color
	.4byte 0x00000001
	.4byte str_ie_naka_tik_0000ab60
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x00000640
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_ie_l_tik_0000ab68
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020037
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_ie_o_tik_0000ab70
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_ie_r_tik_0000ab78
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A8A
	.4byte 0xF24A7A80
	.4byte 0x00000640
	.4byte 0x0000006D
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFF7
	.4byte 0x000000D4
	.4byte 0x00000376
	.4byte 0xFFFFFFF7
	.4byte 0x00000038
	.4byte 0x00000000
	.4byte 0x00000640
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000640
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00001B58
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0002005B
	.4byte enzan_cam_turn_keisan_f
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00001B58
	.4byte 0x00020038
	.4byte 0xFE363C86
	.4byte 0x000003E8
	.4byte 0x00020035
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0xFE363C86
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte 0x00000000
	.4byte str_crystal_n64_tik_0000ab80
	.4byte 0x00000003
	.4byte 0xFFFFFFF7
	.4byte 0x00000031
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00020034
	.4byte 0xFE363C87
	.4byte 0xFE363C84
	.4byte 0x0002003A
	.4byte 0xFE363C87
	.4byte 0xF24AC280
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte str_cccx_tik_0000ab8c
	.4byte str_pokopi_pcharge_n64_tik_0000ab94
	.4byte 0x00000002
	.4byte 0xFE363C83
	.4byte 0xFE363C87
	.4byte 0xFE363C85
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_Z_tik_0000aba8
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00001B58
	.4byte 0x0002005B
	.4byte evt_eff_softdelete
	.4byte str_aaax_tik_0000ab34
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_down_pira_tik_0000ab14
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte str_dddx_tik_0000abb0
	.4byte str_release_n64_tik_0000abb8
	.4byte 0x0000FF03
	.4byte 0xFFFFFFF7
	.4byte 0x00000031
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0002005B
	.4byte evt_eff_softdelete
	.4byte str_cccx_tik_0000ab8c
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_1_tik_0000abc4
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00020034
	.4byte 0xFE363C87
	.4byte 0xFE363C84
	.4byte 0x0002003A
	.4byte 0xFE363C87
	.4byte 0xF24AC280
	.4byte 0x0009005B
	.4byte effect_stardust
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFE363C87
	.4byte 0xFE363C85
	.4byte 0xF24B4280
	.4byte 0xF24B4280
	.4byte 0x00000014
	.4byte 0x00000078
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000000FF
	.4byte 0x000004B0
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0007005B
	.4byte evt_mapobj_color
	.4byte 0x00000001
	.4byte str_S_tik_0000ab5c
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0xFE363C80
	.4byte 0x0007005B
	.4byte evt_mapobj_color
	.4byte 0x00000001
	.4byte str_down_pira_tik_0000ab14
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x0007005B
	.4byte evt_mapobj_color
	.4byte 0x00000001
	.4byte str_ie_naka_tik_0000ab60
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000640
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_ie_l_tik_0000ab68
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020037
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_ie_o_tik_0000ab70
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_ie_r_tik_0000ab78
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte bgScrollControll
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x00000640
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000578
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_tik_0000abcc
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFFFFFFEC
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C85
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_down_pira_tik_0000ab14
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_V_2_tik_0000abd4
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_tik_0000abcc
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x0001005F
	.4byte 0xFD050F81
	.4byte 0x0001005B
	.4byte enzan_lw_load
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000201
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000120
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte unitwin_setmariolevel
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0x00020019
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_powerdown_10_tik_0000abdc
	.4byte 0x00000000
	.4byte str_me_tik_0000aae0
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_powerdown_13_tik_0000abec
	.4byte 0x00000000
	.4byte str_me_tik_0000aae0
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj powerdownya_mario_level_rtn

# .data:0xA8C | 0x1432C | size: 0xF0C
.obj powerdownya_party_lank_rtn, local
	.4byte 0x0002005B
	.4byte evt_pouch_get_coin
	.4byte 0xFE363C80
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0x00000027
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_powerdown_04_tik_0000aac0
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte unk_8023f79c
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_powerdown_07_tik_0000abfc
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x0003005B
	.4byte evt_win_coin_on
	.4byte 0x00000000
	.4byte 0xFE363C8C
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_win_other_select
	.4byte 0x00000007
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_win_coin_off
	.4byte 0xFE363C8C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_powerdown_03_01_tik_0000aad0
	.4byte 0x00000000
	.4byte str_me_tik_0000aae0
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x000000F0
	.4byte 0x00020032
	.4byte 0xFD050F81
	.4byte 0xFE363C81
	.4byte 0x0002005B
	.4byte evt_win_other_select
	.4byte 0x00000008
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000F0
	.4byte 0x00000008
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_sub_get_language
	.4byte 0xFE363C8F
	.4byte 0x00010022
	.4byte 0xFE363C8F
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0008005B
	.4byte evt_msg_print_insert
	.4byte 0x00000000
	.4byte str_powerdown_08_tik_0000ac0c
	.4byte 0x00000000
	.4byte str_me_tik_0000aae0
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000027
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte unk_800d0998
	.4byte 0x00000000
	.4byte 0xFE363C8E
	.4byte str_powerdown_08_tik_0000ac0c
	.4byte 0x00000027
	.4byte 0x0007005B
	.4byte evt_msg_print_insert
	.4byte 0x00000001
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte str_me_tik_0000aae0
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000031
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_powerdown_09_tik_0000aaf4
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_pouch_get_coin
	.4byte 0xFE363C80
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000027
	.4byte 0x0002005B
	.4byte evt_pouch_set_coin
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte evt_win_coin_wait
	.4byte 0xFE363C8C
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_win_coin_off
	.4byte 0xFE363C8C
	.4byte 0x0001005B
	.4byte enzan_lw_save
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte evt_mario_goodbye_party
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_mario_hello_party
	.4byte 0x00000000
	.4byte 0xFE363C81
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_powerdown_11_tik_0000ab04
	.4byte 0x0002005B
	.4byte bgScrollControll
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_goodbye_party
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_mario_hello_party
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0xFFFFFFEC
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C85
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_down_pira_tik_0000ab14
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000001
	.4byte str_BGM_FF_POWERDOWN1_tik_0000ab20
	.4byte 0x0001005B
	.4byte bgm_start_wait
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte str_aaax_tik_0000ab34
	.4byte str_lensflare_n64_tik_0000ab3c
	.4byte 0x00000000
	.4byte 0xFFFFFFF7
	.4byte 0x00000031
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_down_pira_tik_0000ab14
	.4byte 0x00000001
	.4byte 0x0002005D
	.4byte unk_evt_tik_00021320
	.4byte 0xFD050F81
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_powerdown_12_tik_0000ab4c
	.4byte 0x00000000
	.4byte str_me_tik_0000aae0
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0x000000FF
	.4byte 0x00000000
	.4byte 0x000004B0
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0007005B
	.4byte evt_mapobj_color
	.4byte 0x00000001
	.4byte str_S_tik_0000ab5c
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0xFE363C80
	.4byte 0x0007005B
	.4byte evt_mapobj_color
	.4byte 0x00000001
	.4byte str_down_pira_tik_0000ab14
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x0007005B
	.4byte evt_mapobj_color
	.4byte 0x00000001
	.4byte str_ie_naka_tik_0000ab60
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x00000640
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_ie_l_tik_0000ab68
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020037
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_ie_o_tik_0000ab70
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_ie_r_tik_0000ab78
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A8A
	.4byte 0xF24A7A80
	.4byte 0x00000640
	.4byte 0x0000006D
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFF7
	.4byte 0x000000D4
	.4byte 0x00000376
	.4byte 0xFFFFFFF7
	.4byte 0x00000038
	.4byte 0x00000000
	.4byte 0x00000640
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000640
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00001B58
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0002005B
	.4byte enzan_cam_turn_keisan_f
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00001B58
	.4byte 0x00020038
	.4byte 0xFE363C86
	.4byte 0x000003E8
	.4byte 0x00020035
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0xFE363C86
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte 0x00000000
	.4byte str_crystal_n64_tik_0000ab80
	.4byte 0x00000003
	.4byte 0xFFFFFFF7
	.4byte 0x00000031
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PKR_I_1_tik_0000ac1c
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PNK_I_1_tik_0000ac24
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_I_1_tik_0000ac2c
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PYS_I_1_tik_0000ac30
	.4byte 0x00010024
	.4byte 0x00000005
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PWD_I_1_tik_0000ac38
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PTR_I_1_tik_0000ac40
	.4byte 0x00010024
	.4byte 0x00000007
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PCH_I_1_tik_0000ac48
	.4byte 0x00000031
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0001005F
	.4byte 0xFD050F81
	.4byte 0x0004005B
	.4byte evt_party_dispflg_onoff
	.4byte 0x00000000
	.4byte 0x00000010
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0009005B
	.4byte effect_stardust
	.4byte 0x00000004
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0xF24B4280
	.4byte 0xF24B4280
	.4byte 0x0000000E
	.4byte 0x0000003C
	.4byte 0x0003005B
	.4byte evt_party_get_dispdir
	.4byte 0x00000000
	.4byte 0xFE363C89
	.4byte 0x00020034
	.4byte 0xFE363C8A
	.4byte 0xFE363C89
	.4byte 0x0002003A
	.4byte 0xFE363C8A
	.4byte 0x000005A0
	.4byte 0x0004005B
	.4byte evt_party_flg_onoff
	.4byte 0x00000000
	.4byte 0x02000000
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x0000003C
	.4byte 0x00010005
	.4byte 0xFE363C86
	.4byte 0x0006005B
	.4byte wariai_enzan_1f
	.4byte 0xFE363C86
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x00000028
	.4byte 0xFE363C87
	.4byte 0x0006005B
	.4byte wariai_enzan_1f
	.4byte 0xFE363C86
	.4byte 0x0000003C
	.4byte 0xFE363C89
	.4byte 0xFE363C8A
	.4byte 0xFE363C88
	.4byte 0x0002003A
	.4byte 0xFE363C87
	.4byte 0xFE363C84
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFE363C87
	.4byte 0xFE363C85
	.4byte 0x0003005B
	.4byte evt_party_set_dispdir
	.4byte 0x00000000
	.4byte 0xFE363C88
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte evt_party_dispflg_onoff
	.4byte 0x00000000
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_party_flg_onoff
	.4byte 0x00000000
	.4byte 0x02000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_goodbye_party
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_mario_hello_party
	.4byte 0x00000000
	.4byte 0xFE363C81
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0002005D
	.4byte unk_evt_tik_00021320
	.4byte 0xFD050F81
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C81
	.4byte 0x00010022
	.4byte 0xFE363C81
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PKR_C_1_tik_0000ac50
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PNK_C_1_tik_0000ac58
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_C_1_tik_0000ac60
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PYS_C_1_tik_0000ac64
	.4byte 0x00010024
	.4byte 0x00000005
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PWD_C_1_tik_0000ac6c
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PTR_C_1_tik_0000ac74
	.4byte 0x00010024
	.4byte 0x00000007
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PCH_C_1_tik_0000ac7c
	.4byte 0x00000031
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00020034
	.4byte 0xFE363C87
	.4byte 0xFE363C84
	.4byte 0x0002003A
	.4byte 0xFE363C87
	.4byte 0xF24AC280
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte str_cccx_tik_0000ab8c
	.4byte str_pokopi_pcharge_n64_tik_0000ab94
	.4byte 0x00000002
	.4byte 0xFE363C83
	.4byte 0xFE363C87
	.4byte 0xFE363C85
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0003005B
	.4byte evt_party_set_breed_pose
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00001B58
	.4byte 0x0002005B
	.4byte evt_eff_softdelete
	.4byte str_aaax_tik_0000ab34
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_down_pira_tik_0000ab14
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte str_dddx_tik_0000abb0
	.4byte str_release_n64_tik_0000abb8
	.4byte 0x0000FF03
	.4byte 0xFFFFFFF7
	.4byte 0x00000031
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0002005B
	.4byte evt_eff_softdelete
	.4byte str_cccx_tik_0000ab8c
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PKR_I_1_tik_0000ac1c
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PNK_I_1_tik_0000ac24
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_I_1_tik_0000ac2c
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PYS_I_1_tik_0000ac30
	.4byte 0x00010024
	.4byte 0x00000005
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PWD_I_1_tik_0000ac38
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PTR_I_1_tik_0000ac40
	.4byte 0x00010024
	.4byte 0x00000007
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PCH_I_1_tik_0000ac48
	.4byte 0x00000031
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00020034
	.4byte 0xFE363C87
	.4byte 0xFE363C84
	.4byte 0x0002003A
	.4byte 0xFE363C87
	.4byte 0xF24AC280
	.4byte 0x0009005B
	.4byte effect_stardust
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFE363C87
	.4byte 0xFE363C85
	.4byte 0xF24B4280
	.4byte 0xF24B4280
	.4byte 0x00000014
	.4byte 0x00000078
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000000FF
	.4byte 0x000004B0
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0007005B
	.4byte evt_mapobj_color
	.4byte 0x00000001
	.4byte str_S_tik_0000ab5c
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0xFE363C80
	.4byte 0x0007005B
	.4byte evt_mapobj_color
	.4byte 0x00000001
	.4byte str_down_pira_tik_0000ab14
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x0007005B
	.4byte evt_mapobj_color
	.4byte 0x00000001
	.4byte str_ie_naka_tik_0000ab60
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000640
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_ie_l_tik_0000ab68
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020037
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_ie_o_tik_0000ab70
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_ie_r_tik_0000ab78
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte bgScrollControll
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x00000640
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000578
	.4byte 0x0003005B
	.4byte evt_party_set_breed_pose
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFFFFFFEC
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C85
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_down_pira_tik_0000ab14
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PKR_Y_1_tik_0000ac84
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PNK_Y_1_tik_0000ac8c
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_Y_1_tik_0000ac94
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PYS_Y_1_tik_0000ac98
	.4byte 0x00010024
	.4byte 0x00000005
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PWD_Y_1_tik_0000aca0
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PTR_Y_1_tik_0000aca8
	.4byte 0x00010024
	.4byte 0x00000007
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PCH_Y_1_tik_0000acb0
	.4byte 0x00000031
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0003005B
	.4byte evt_party_set_breed_pose
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x0001005F
	.4byte 0xFD050F81
	.4byte 0x0001005B
	.4byte enzan_lw_load
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000201
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000120
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte unitwin_getpartylank
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte unitwin_setpartylank
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte unitwin_getpartylank
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte unitwin_setpartylank
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_powerdown_13_tik_0000abec
	.4byte 0x00000000
	.4byte str_me_tik_0000aae0
	.4byte 0x00000002
	.4byte 0x00000001
.endobj powerdownya_party_lank_rtn

# .data:0x1998 | 0x15238 | size: 0x1A4
.obj powerdownya_table_talk, local
	.4byte 0x0002005B
	.4byte setmertn
	.4byte str_パワーダウン屋_tik_0000acb8
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_me_tik_0000aae0
	.4byte str_mario_tik_0000acc8
	.4byte 0x00020018
	.4byte 0xF84060BE
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_sub_get_language
	.4byte 0xFE363C8F
	.4byte 0x00010022
	.4byte 0xFE363C8F
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_msg_print_insert
	.4byte 0x00000000
	.4byte str_powerdown_00_tik_0000acd0
	.4byte 0x00000000
	.4byte str_me_tik_0000aae0
	.4byte 0x00000027
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte unk_800d0998
	.4byte 0x00000000
	.4byte 0xFE363C8E
	.4byte str_powerdown_00_tik_0000acd0
	.4byte 0x00000027
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000001
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte str_me_tik_0000aae0
	.4byte 0x00000031
	.4byte 0x00020032
	.4byte 0xF84060BE
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF84060DB
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xF84060DB
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_powerdown_00_01_tik_0000ace0
	.4byte 0x00000000
	.4byte str_me_tik_0000aae0
	.4byte 0x00020032
	.4byte 0xF84060DB
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_powerdown_01_tik_0000acf0
	.4byte 0x00000000
	.4byte str_me_tik_0000aae0
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_powerdown_02_tik_0000ad00
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_powerdown_03_tik_0000ad10
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte powerdownya_mario_level_rtn
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte powerdownya_party_lank_rtn
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj powerdownya_table_talk

# .data:0x1B3C | 0x153DC | size: 0x20
.obj powerdownya_direct_talk, local
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_powerdown_14_tik_0000ad20
	.4byte 0x00000000
	.4byte str_me_tik_0000aae0
	.4byte 0x00000002
	.4byte 0x00000001
.endobj powerdownya_direct_talk

# .data:0x1B5C | 0x153FC | size: 0x28
.obj powerdownya_init, local
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_power_down_tik_0000ad30
	.4byte 0x00000000
	.4byte powerdownya_table_talk
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj powerdownya_init

# .data:0x1B84 | 0x15424 | size: 0xB8
.obj npcEnt, local
	.4byte str_パワーダウン屋_tik_0000acb8
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte powerdownya_init
	.4byte 0x00000000
	.4byte powerdownya_direct_talk
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

# .data:0x1C3C | 0x154DC | size: 0x78
.obj bero_entry_data, local
	.4byte str_w_bero_tik_0000ad40
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_tik_01_tik_0000ad48
	.4byte str_e_bero_tik_0000ad50
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

# .data:0x1CB4 | 0x15554 | size: 0x7C
.obj tik_11_init_evt_24_data_15554, global
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG0_TIK1_tik_0000ad58
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG0_TIK1_tik_0000ad68
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
	.4byte 0x00020032
	.4byte 0xF84060DB
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_npc_setup
	.4byte npcEnt
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_anm_kem_tik_0000ad78
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj tik_11_init_evt_24_data_15554

# 0x00000030..0x00000070 | size: 0x40
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x30 | size: 0x40
.obj xlw, local
	.skip 0x40
.endobj xlw
