.include "macros.inc"
.file "unit_bubble.o"

# 0x00001ACC..0x00001F9C | size: 0x4D0
.text
.balign 4

# .text:0x0 | 0x1ACC | size: 0x21C
.fn eff_all_fire, local
/* 00001ACC 00001B90  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 00001AD0 00001B94  7C 08 02 A6 */	mflr r0
/* 00001AD4 00001B98  90 01 00 74 */	stw r0, 0x74(r1)
/* 00001AD8 00001B9C  BF 81 00 60 */	stmw r28, 0x60(r1)
/* 00001ADC 00001BA0  7C 9E 23 78 */	mr r30, r4
/* 00001AE0 00001BA4  7C 7D 1B 78 */	mr r29, r3
/* 00001AE4 00001BA8  83 83 00 18 */	lwz r28, 0x18(r3)
/* 00001AE8 00001BAC  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 00001AEC 00001BB0  4B FF E5 81 */	bl evtGetValue
/* 00001AF0 00001BB4  7C 64 1B 78 */	mr r4, r3
/* 00001AF4 00001BB8  7F A3 EB 78 */	mr r3, r29
/* 00001AF8 00001BBC  4B FF E5 75 */	bl BattleTransID
/* 00001AFC 00001BC0  80 9C 00 04 */	lwz r4, 0x4(r28)
/* 00001B00 00001BC4  7C 7C 1B 78 */	mr r28, r3
/* 00001B04 00001BC8  7F A3 EB 78 */	mr r3, r29
/* 00001B08 00001BCC  4B FF E5 65 */	bl evtGetValue
/* 00001B0C 00001BD0  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00001B10 00001BD4  7C 7F 1B 78 */	mr r31, r3
/* 00001B14 00001BD8  38 64 00 00 */	addi r3, r4, _battleWorkPointer@l
/* 00001B18 00001BDC  7F 84 E3 78 */	mr r4, r28
/* 00001B1C 00001BE0  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00001B20 00001BE4  4B FF E5 4D */	bl BattleGetUnitPtr
/* 00001B24 00001BE8  3C 80 00 00 */	lis r4, dat_dou_00005e3c@ha
/* 00001B28 00001BEC  38 00 00 05 */	li r0, 0x5
/* 00001B2C 00001BF0  38 84 00 00 */	addi r4, r4, dat_dou_00005e3c@l
/* 00001B30 00001BF4  7C 7D 1B 78 */	mr r29, r3
/* 00001B34 00001BF8  38 A1 00 1C */	addi r5, r1, 0x1c
/* 00001B38 00001BFC  38 84 FF FC */	subi r4, r4, 0x4
/* 00001B3C 00001C00  7C 09 03 A6 */	mtctr r0
.L_00001B40:
/* 00001B40 00001C04  80 64 00 04 */	lwz r3, 0x4(r4)
/* 00001B44 00001C08  84 04 00 08 */	lwzu r0, 0x8(r4)
/* 00001B48 00001C0C  90 65 00 04 */	stw r3, 0x4(r5)
/* 00001B4C 00001C10  94 05 00 08 */	stwu r0, 0x8(r5)
/* 00001B50 00001C14  42 00 FF F0 */	bdnz .L_00001B40
/* 00001B54 00001C18  2C 1E 00 00 */	cmpwi r30, 0x0
/* 00001B58 00001C1C  41 82 00 70 */	beq .L_00001BC8
/* 00001B5C 00001C20  3C 60 00 00 */	lis r3, zero_dou_00005e90@ha
/* 00001B60 00001C24  3C 80 00 00 */	lis r4, float_neg1000_dou_00005e94@ha
/* 00001B64 00001C28  38 A3 00 00 */	addi r5, r3, zero_dou_00005e90@l
/* 00001B68 00001C2C  C0 44 00 00 */	lfs f2, float_neg1000_dou_00005e94@l(r4)
/* 00001B6C 00001C30  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 00001B70 00001C34  3C 60 00 00 */	lis r3, float_1_dou_00005e98@ha
/* 00001B74 00001C38  C0 83 00 00 */	lfs f4, float_1_dou_00005e98@l(r3)
/* 00001B78 00001C3C  38 60 00 05 */	li r3, 0x5
/* 00001B7C 00001C40  FC 60 08 90 */	fmr f3, f1
/* 00001B80 00001C44  38 80 00 78 */	li r4, 0x78
/* 00001B84 00001C48  4B FF E4 E9 */	bl effFireEntry
/* 00001B88 00001C4C  3C C0 00 00 */	lis r6, eff2@ha
/* 00001B8C 00001C50  3C A0 00 00 */	lis r5, float_2_dou_00005e9c@ha
/* 00001B90 00001C54  57 E0 10 3A */	slwi r0, r31, 2
/* 00001B94 00001C58  C0 05 00 00 */	lfs f0, float_2_dou_00005e9c@l(r5)
/* 00001B98 00001C5C  38 C6 00 00 */	addi r6, r6, eff2@l
/* 00001B9C 00001C60  38 81 00 20 */	addi r4, r1, 0x20
/* 00001BA0 00001C64  7C 66 01 2E */	stwx r3, r6, r0
/* 00001BA4 00001C68  7C 66 00 2E */	lwzx r3, r6, r0
/* 00001BA8 00001C6C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 00001BAC 00001C70  D0 03 00 78 */	stfs f0, 0x78(r3)
/* 00001BB0 00001C74  7C 66 00 2E */	lwzx r3, r6, r0
/* 00001BB4 00001C78  C0 3D 01 14 */	lfs f1, 0x114(r29)
/* 00001BB8 00001C7C  7C 04 04 2E */	lfsx f0, r4, r0
/* 00001BBC 00001C80  80 63 00 0C */	lwz r3, 0xc(r3)
/* 00001BC0 00001C84  EC 01 00 32 */	fmuls f0, f1, f0
/* 00001BC4 00001C88  D0 03 00 7C */	stfs f0, 0x7c(r3)
.L_00001BC8:
/* 00001BC8 00001C8C  3C 60 00 00 */	lis r3, eff2@ha
/* 00001BCC 00001C90  57 FE 10 3A */	slwi r30, r31, 2
/* 00001BD0 00001C94  38 63 00 00 */	addi r3, r3, eff2@l
/* 00001BD4 00001C98  7C 63 F0 2E */	lwzx r3, r3, r30
/* 00001BD8 00001C9C  83 83 00 0C */	lwz r28, 0xc(r3)
/* 00001BDC 00001CA0  28 1C 00 00 */	cmplwi r28, 0x0
/* 00001BE0 00001CA4  41 82 00 F0 */	beq .L_00001CD0
/* 00001BE4 00001CA8  7F A3 EB 78 */	mr r3, r29
/* 00001BE8 00001CAC  38 81 00 10 */	addi r4, r1, 0x10
/* 00001BEC 00001CB0  38 A1 00 0C */	addi r5, r1, 0xc
/* 00001BF0 00001CB4  38 C1 00 08 */	addi r6, r1, 0x8
/* 00001BF4 00001CB8  4B FF E4 79 */	bl BtlUnit_GetPos
/* 00001BF8 00001CBC  88 7D 01 89 */	lbz r3, 0x189(r29)
/* 00001BFC 00001CC0  3C A0 43 30 */	lis r5, 0x4330
/* 00001C00 00001CC4  3C 80 00 00 */	lis r4, double_to_int_dou_00005eb0@ha
/* 00001C04 00001CC8  38 1F 00 01 */	addi r0, r31, 0x1
/* 00001C08 00001CCC  7C 63 07 74 */	extsb r3, r3
/* 00001C0C 00001CD0  3C E0 00 00 */	lis r7, float_24_dou_00005ea0@ha
/* 00001C10 00001CD4  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 00001C14 00001CD8  38 C4 00 00 */	addi r6, r4, double_to_int_dou_00005eb0@l
/* 00001C18 00001CDC  90 61 00 4C */	stw r3, 0x4c(r1)
/* 00001C1C 00001CE0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 00001C20 00001CE4  3C 60 00 00 */	lis r3, float_15_dou_00005ea4@ha
/* 00001C24 00001CE8  C8 A6 00 00 */	lfd f5, 0x0(r6)
/* 00001C28 00001CEC  90 A1 00 48 */	stw r5, 0x48(r1)
/* 00001C2C 00001CF0  38 83 00 00 */	addi r4, r3, float_15_dou_00005ea4@l
/* 00001C30 00001CF4  3C 60 00 00 */	lis r3, vec3_dou_00005e64@ha
/* 00001C34 00001CF8  C0 87 00 00 */	lfs f4, float_24_dou_00005ea0@l(r7)
/* 00001C38 00001CFC  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 00001C3C 00001D00  39 03 00 00 */	addi r8, r3, vec3_dou_00005e64@l
/* 00001C40 00001D04  90 01 00 54 */	stw r0, 0x54(r1)
/* 00001C44 00001D08  3C 60 00 00 */	lis r3, float_2_dou_00005e9c@ha
/* 00001C48 00001D0C  EC 60 28 28 */	fsubs f3, f0, f5
/* 00001C4C 00001D10  C0 04 00 00 */	lfs f0, 0x0(r4)
/* 00001C50 00001D14  90 A1 00 50 */	stw r5, 0x50(r1)
/* 00001C54 00001D18  38 C3 00 00 */	addi r6, r3, float_2_dou_00005e9c@l
/* 00001C58 00001D1C  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 00001C5C 00001D20  38 A1 00 20 */	addi r5, r1, 0x20
/* 00001C60 00001D24  80 E8 00 00 */	lwz r7, 0x0(r8)
/* 00001C64 00001D28  EC 01 00 28 */	fsubs f0, f1, f0
/* 00001C68 00001D2C  80 08 00 04 */	lwz r0, 0x4(r8)
/* 00001C6C 00001D30  EC 84 00 F2 */	fmuls f4, f4, f3
/* 00001C70 00001D34  C8 41 00 50 */	lfd f2, 0x50(r1)
/* 00001C74 00001D38  3C 60 00 00 */	lis r3, float_10_dou_00005ea8@ha
/* 00001C78 00001D3C  80 88 00 08 */	lwz r4, 0x8(r8)
/* 00001C7C 00001D40  EC 62 28 28 */	fsubs f3, f2, f5
/* 00001C80 00001D44  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 00001C84 00001D48  7C 25 F4 2E */	lfsx f1, r5, r30
/* 00001C88 00001D4C  90 E1 00 14 */	stw r7, 0x14(r1)
/* 00001C8C 00001D50  EC 64 10 FA */	fmadds f3, f4, f3, f2
/* 00001C90 00001D54  C0 46 00 00 */	lfs f2, 0x0(r6)
/* 00001C94 00001D58  90 01 00 18 */	stw r0, 0x18(r1)
/* 00001C98 00001D5C  EC 42 00 7C */	fnmsubs f2, f2, f1, f0
/* 00001C9C 00001D60  C0 21 00 08 */	lfs f1, 0x8(r1)
/* 00001CA0 00001D64  C0 03 00 00 */	lfs f0, float_10_dou_00005ea8@l(r3)
/* 00001CA4 00001D68  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 00001CA8 00001D6C  EC 01 00 28 */	fsubs f0, f1, f0
/* 00001CAC 00001D70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00001CB0 00001D74  90 81 00 1C */	stw r4, 0x1c(r1)
/* 00001CB4 00001D78  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 00001CB8 00001D7C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 00001CBC 00001D80  80 61 00 18 */	lwz r3, 0x18(r1)
/* 00001CC0 00001D84  90 1C 00 04 */	stw r0, 0x4(r28)
/* 00001CC4 00001D88  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 00001CC8 00001D8C  90 7C 00 08 */	stw r3, 0x8(r28)
/* 00001CCC 00001D90  90 1C 00 0C */	stw r0, 0xc(r28)
.L_00001CD0:
/* 00001CD0 00001D94  BB 81 00 60 */	lmw r28, 0x60(r1)
/* 00001CD4 00001D98  38 60 00 00 */	li r3, 0x0
/* 00001CD8 00001D9C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 00001CDC 00001DA0  7C 08 03 A6 */	mtlr r0
/* 00001CE0 00001DA4  38 21 00 70 */	addi r1, r1, 0x70
/* 00001CE4 00001DA8  4E 80 00 20 */	blr
.endfn eff_all_fire

# .text:0x21C | 0x1CE8 | size: 0x1A0
.fn eff_fire, local
/* 00001CE8 00001DAC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00001CEC 00001DB0  7C 08 02 A6 */	mflr r0
/* 00001CF0 00001DB4  90 01 00 34 */	stw r0, 0x34(r1)
/* 00001CF4 00001DB8  BF A1 00 24 */	stmw r29, 0x24(r1)
/* 00001CF8 00001DBC  7C 9D 23 78 */	mr r29, r4
/* 00001CFC 00001DC0  7C 7E 1B 78 */	mr r30, r3
/* 00001D00 00001DC4  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00001D04 00001DC8  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00001D08 00001DCC  4B FF E3 65 */	bl evtGetValue
/* 00001D0C 00001DD0  7C 64 1B 78 */	mr r4, r3
/* 00001D10 00001DD4  7F C3 F3 78 */	mr r3, r30
/* 00001D14 00001DD8  4B FF E3 59 */	bl BattleTransID
/* 00001D18 00001DDC  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00001D1C 00001DE0  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00001D20 00001DE4  7C 64 1B 78 */	mr r4, r3
/* 00001D24 00001DE8  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00001D28 00001DEC  4B FF E3 45 */	bl BattleGetUnitPtr
/* 00001D2C 00001DF0  7C 7F 1B 78 */	mr r31, r3
/* 00001D30 00001DF4  38 80 00 02 */	li r4, 0x2
/* 00001D34 00001DF8  4B FF E3 39 */	bl BtlUnit_GetPartsPtr
/* 00001D38 00001DFC  2C 1D 00 00 */	cmpwi r29, 0x0
/* 00001D3C 00001E00  7C 7E 1B 78 */	mr r30, r3
/* 00001D40 00001E04  41 82 00 54 */	beq .L_00001D94
/* 00001D44 00001E08  3C 60 00 00 */	lis r3, zero_dou_00005e90@ha
/* 00001D48 00001E0C  3C 80 00 00 */	lis r4, float_neg1000_dou_00005e94@ha
/* 00001D4C 00001E10  38 A3 00 00 */	addi r5, r3, zero_dou_00005e90@l
/* 00001D50 00001E14  C0 44 00 00 */	lfs f2, float_neg1000_dou_00005e94@l(r4)
/* 00001D54 00001E18  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 00001D58 00001E1C  3C 60 00 00 */	lis r3, float_1_dou_00005e98@ha
/* 00001D5C 00001E20  C0 83 00 00 */	lfs f4, float_1_dou_00005e98@l(r3)
/* 00001D60 00001E24  38 60 00 05 */	li r3, 0x5
/* 00001D64 00001E28  FC 60 08 90 */	fmr f3, f1
/* 00001D68 00001E2C  38 80 00 6A */	li r4, 0x6a
/* 00001D6C 00001E30  4B FF E3 01 */	bl effFireEntry
/* 00001D70 00001E34  3C A0 00 00 */	lis r5, eff@ha
/* 00001D74 00001E38  94 65 00 00 */	stwu r3, eff@l(r5)
/* 00001D78 00001E3C  3C 80 00 00 */	lis r4, zero_dou_00005e90@ha
/* 00001D7C 00001E40  C0 04 00 00 */	lfs f0, zero_dou_00005e90@l(r4)
/* 00001D80 00001E44  80 63 00 0C */	lwz r3, 0xc(r3)
/* 00001D84 00001E48  D0 03 00 78 */	stfs f0, 0x78(r3)
/* 00001D88 00001E4C  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00001D8C 00001E50  80 63 00 0C */	lwz r3, 0xc(r3)
/* 00001D90 00001E54  D0 03 00 7C */	stfs f0, 0x7c(r3)
.L_00001D94:
/* 00001D94 00001E58  3C 60 00 00 */	lis r3, eff@ha
/* 00001D98 00001E5C  38 63 00 00 */	addi r3, r3, eff@l
/* 00001D9C 00001E60  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00001DA0 00001E64  83 A3 00 0C */	lwz r29, 0xc(r3)
/* 00001DA4 00001E68  28 1D 00 00 */	cmplwi r29, 0x0
/* 00001DA8 00001E6C  41 82 00 C8 */	beq .L_00001E70
/* 00001DAC 00001E70  7F C3 F3 78 */	mr r3, r30
/* 00001DB0 00001E74  38 81 00 10 */	addi r4, r1, 0x10
/* 00001DB4 00001E78  38 A1 00 0C */	addi r5, r1, 0xc
/* 00001DB8 00001E7C  38 C1 00 08 */	addi r6, r1, 0x8
/* 00001DBC 00001E80  4B FF E2 B1 */	bl BtlUnit_GetPartsPos
/* 00001DC0 00001E84  3C 80 00 00 */	lis r4, vec3_dou_00005df0@ha
/* 00001DC4 00001E88  3C 60 00 00 */	lis r3, float_0p1_dou_00005eb8@ha
/* 00001DC8 00001E8C  38 A4 00 00 */	addi r5, r4, vec3_dou_00005df0@l
/* 00001DCC 00001E90  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 00001DD0 00001E94  80 05 00 00 */	lwz r0, 0x0(r5)
/* 00001DD4 00001E98  80 85 00 04 */	lwz r4, 0x4(r5)
/* 00001DD8 00001E9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 00001DDC 00001EA0  80 05 00 08 */	lwz r0, 0x8(r5)
/* 00001DE0 00001EA4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 00001DE4 00001EA8  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 00001DE8 00001EAC  90 81 00 18 */	stw r4, 0x18(r1)
/* 00001DEC 00001EB0  C0 01 00 08 */	lfs f0, 0x8(r1)
/* 00001DF0 00001EB4  90 01 00 1C */	stw r0, 0x1c(r1)
/* 00001DF4 00001EB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00001DF8 00001EBC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 00001DFC 00001EC0  C0 43 00 00 */	lfs f2, float_0p1_dou_00005eb8@l(r3)
/* 00001E00 00001EC4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 00001E04 00001EC8  80 61 00 18 */	lwz r3, 0x18(r1)
/* 00001E08 00001ECC  90 1D 00 04 */	stw r0, 0x4(r29)
/* 00001E0C 00001ED0  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 00001E10 00001ED4  90 7D 00 08 */	stw r3, 0x8(r29)
/* 00001E14 00001ED8  90 1D 00 0C */	stw r0, 0xc(r29)
/* 00001E18 00001EDC  C0 3F 01 14 */	lfs f1, 0x114(r31)
/* 00001E1C 00001EE0  C0 1D 00 78 */	lfs f0, 0x78(r29)
/* 00001E20 00001EE4  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 00001E24 00001EE8  D0 1D 00 78 */	stfs f0, 0x78(r29)
/* 00001E28 00001EEC  C0 1D 00 78 */	lfs f0, 0x78(r29)
/* 00001E2C 00001EF0  C0 3F 01 14 */	lfs f1, 0x114(r31)
/* 00001E30 00001EF4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 00001E34 00001EF8  4C 41 13 82 */	cror eq, gt, eq
/* 00001E38 00001EFC  40 82 00 08 */	bne .L_00001E40
/* 00001E3C 00001F00  D0 3D 00 78 */	stfs f1, 0x78(r29)
.L_00001E40:
/* 00001E40 00001F04  3C 60 00 00 */	lis r3, float_0p1_dou_00005eb8@ha
/* 00001E44 00001F08  C0 3F 01 14 */	lfs f1, 0x114(r31)
/* 00001E48 00001F0C  C0 1D 00 7C */	lfs f0, 0x7c(r29)
/* 00001E4C 00001F10  C0 43 00 00 */	lfs f2, float_0p1_dou_00005eb8@l(r3)
/* 00001E50 00001F14  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 00001E54 00001F18  D0 1D 00 7C */	stfs f0, 0x7c(r29)
/* 00001E58 00001F1C  C0 1D 00 7C */	lfs f0, 0x7c(r29)
/* 00001E5C 00001F20  C0 3F 01 14 */	lfs f1, 0x114(r31)
/* 00001E60 00001F24  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 00001E64 00001F28  4C 41 13 82 */	cror eq, gt, eq
/* 00001E68 00001F2C  40 82 00 08 */	bne .L_00001E70
/* 00001E6C 00001F30  D0 3D 00 7C */	stfs f1, 0x7c(r29)
.L_00001E70:
/* 00001E70 00001F34  BB A1 00 24 */	lmw r29, 0x24(r1)
/* 00001E74 00001F38  38 60 00 00 */	li r3, 0x0
/* 00001E78 00001F3C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00001E7C 00001F40  7C 08 03 A6 */	mtlr r0
/* 00001E80 00001F44  38 21 00 30 */	addi r1, r1, 0x30
/* 00001E84 00001F48  4E 80 00 20 */	blr
.endfn eff_fire

# .text:0x3BC | 0x1E88 | size: 0x114
.fn bubble_copy_status, local
/* 00001E88 00001F4C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00001E8C 00001F50  7C 08 02 A6 */	mflr r0
/* 00001E90 00001F54  90 01 00 34 */	stw r0, 0x34(r1)
/* 00001E94 00001F58  BF A1 00 24 */	stmw r29, 0x24(r1)
/* 00001E98 00001F5C  7C 7D 1B 78 */	mr r29, r3
/* 00001E9C 00001F60  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00001EA0 00001F64  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00001EA4 00001F68  4B FF E1 C9 */	bl evtGetValue
/* 00001EA8 00001F6C  7C 64 1B 78 */	mr r4, r3
/* 00001EAC 00001F70  7F A3 EB 78 */	mr r3, r29
/* 00001EB0 00001F74  4B FF E1 BD */	bl BattleTransID
/* 00001EB4 00001F78  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00001EB8 00001F7C  7C 7F 1B 78 */	mr r31, r3
/* 00001EBC 00001F80  7F A3 EB 78 */	mr r3, r29
/* 00001EC0 00001F84  4B FF E1 AD */	bl evtGetValue
/* 00001EC4 00001F88  7C 64 1B 78 */	mr r4, r3
/* 00001EC8 00001F8C  7F A3 EB 78 */	mr r3, r29
/* 00001ECC 00001F90  4B FF E1 A1 */	bl BattleTransID
/* 00001ED0 00001F94  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00001ED4 00001F98  7C 7E 1B 78 */	mr r30, r3
/* 00001ED8 00001F9C  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00001EDC 00001FA0  80 05 00 00 */	lwz r0, 0x0(r5)
/* 00001EE0 00001FA4  7F E4 FB 78 */	mr r4, r31
/* 00001EE4 00001FA8  7C 1D 03 78 */	mr r29, r0
/* 00001EE8 00001FAC  7C 03 03 78 */	mr r3, r0
/* 00001EEC 00001FB0  4B FF E1 81 */	bl BattleGetUnitPtr
/* 00001EF0 00001FB4  7C 7F 1B 78 */	mr r31, r3
/* 00001EF4 00001FB8  7F A3 EB 78 */	mr r3, r29
/* 00001EF8 00001FBC  7F C4 F3 78 */	mr r4, r30
/* 00001EFC 00001FC0  4B FF E1 71 */	bl BattleGetUnitPtr
/* 00001F00 00001FC4  A8 1F 01 0C */	lha r0, 0x10c(r31)
/* 00001F04 00001FC8  B0 03 01 0C */	sth r0, 0x10c(r3)
/* 00001F08 00001FCC  A8 03 01 0C */	lha r0, 0x10c(r3)
/* 00001F0C 00001FD0  A8 83 01 08 */	lha r4, 0x108(r3)
/* 00001F10 00001FD4  7C 00 20 00 */	cmpw r0, r4
/* 00001F14 00001FD8  40 81 00 08 */	ble .L_00001F1C
/* 00001F18 00001FDC  B0 83 01 0C */	sth r4, 0x10c(r3)
.L_00001F1C:
/* 00001F1C 00001FE0  88 BF 01 23 */	lbz r5, 0x123(r31)
/* 00001F20 00001FE4  3C 00 43 30 */	lis r0, 0x4330
/* 00001F24 00001FE8  3C 80 00 00 */	lis r4, double_to_int_dou_00005eb0@ha
/* 00001F28 00001FEC  90 01 00 08 */	stw r0, 0x8(r1)
/* 00001F2C 00001FF0  C8 44 00 00 */	lfd f2, double_to_int_dou_00005eb0@l(r4)
/* 00001F30 00001FF4  98 A3 01 23 */	stb r5, 0x123(r3)
/* 00001F34 00001FF8  88 9F 01 24 */	lbz r4, 0x124(r31)
/* 00001F38 00001FFC  90 01 00 10 */	stw r0, 0x10(r1)
/* 00001F3C 00002000  98 83 01 24 */	stb r4, 0x124(r3)
/* 00001F40 00002004  A8 03 01 0C */	lha r0, 0x10c(r3)
/* 00001F44 00002008  90 03 02 08 */	stw r0, 0x208(r3)
/* 00001F48 0000200C  A8 03 01 0C */	lha r0, 0x10c(r3)
/* 00001F4C 00002010  90 03 02 0C */	stw r0, 0x20c(r3)
/* 00001F50 00002014  A8 83 01 0C */	lha r4, 0x10c(r3)
/* 00001F54 00002018  A8 03 01 08 */	lha r0, 0x108(r3)
/* 00001F58 0000201C  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 00001F5C 00002020  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 00001F60 00002024  90 81 00 0C */	stw r4, 0xc(r1)
/* 00001F64 00002028  90 01 00 14 */	stw r0, 0x14(r1)
/* 00001F68 0000202C  C8 21 00 08 */	lfd f1, 0x8(r1)
/* 00001F6C 00002030  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 00001F70 00002034  EC 21 10 28 */	fsubs f1, f1, f2
/* 00001F74 00002038  EC 00 10 28 */	fsubs f0, f0, f2
/* 00001F78 0000203C  EC 01 00 24 */	fdivs f0, f1, f0
/* 00001F7C 00002040  D0 03 02 14 */	stfs f0, 0x214(r3)
/* 00001F80 00002044  D0 03 02 10 */	stfs f0, 0x210(r3)
/* 00001F84 00002048  38 60 00 02 */	li r3, 0x2
/* 00001F88 0000204C  BB A1 00 24 */	lmw r29, 0x24(r1)
/* 00001F8C 00002050  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00001F90 00002054  7C 08 03 A6 */	mtlr r0
/* 00001F94 00002058  38 21 00 30 */	addi r1, r1, 0x30
/* 00001F98 0000205C  4E 80 00 20 */	blr
.endfn bubble_copy_status

# 0x00002040..0x00002230 | size: 0x1F0
.rodata
.balign 8

# .rodata:0x0 | 0x2040 | size: 0xE
.obj str_btl_un_bubble_dou_00005cd0, local
	.string "btl_un_bubble"
.endobj str_btl_un_bubble_dou_00005cd0

# .rodata:0xE | 0x204E | size: 0x2
.obj gap_03_0000204E_rodata, global
.hidden gap_03_0000204E_rodata
	.2byte 0x0000
.endobj gap_03_0000204E_rodata

# .rodata:0x10 | 0x2050 | size: 0x18
.obj str_SFX_ENM_BUBBLE_DAMAG_dou_00005ce0, local
	.string "SFX_ENM_BUBBLE_DAMAGED1"
.endobj str_SFX_ENM_BUBBLE_DAMAG_dou_00005ce0

# .rodata:0x28 | 0x2068 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_dou_00005cf8, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_dou_00005cf8

# .rodata:0x3D | 0x207D | size: 0x3
.obj gap_03_0000207D_rodata, global
.hidden gap_03_0000207D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000207D_rodata

# .rodata:0x40 | 0x2080 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_dou_00005d10, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_dou_00005d10

# .rodata:0x54 | 0x2094 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_dou_00005d24, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_dou_00005d24

# .rodata:0x6D | 0x20AD | size: 0x3
.obj gap_03_000020AD_rodata, global
.hidden gap_03_000020AD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000020AD_rodata

# .rodata:0x70 | 0x20B0 | size: 0x4
.obj str_N_1_dou_00005d40, local
	.string "N_1"
.endobj str_N_1_dou_00005d40

# .rodata:0x74 | 0x20B4 | size: 0x4
.obj str_Y_1_dou_00005d44, local
	.string "Y_1"
.endobj str_Y_1_dou_00005d44

# .rodata:0x78 | 0x20B8 | size: 0x4
.obj str_K_1_dou_00005d48, local
	.string "K_1"
.endobj str_K_1_dou_00005d48

# .rodata:0x7C | 0x20BC | size: 0x4
.obj str_X_1_dou_00005d4c, local
	.string "X_1"
.endobj str_X_1_dou_00005d4c

# .rodata:0x80 | 0x20C0 | size: 0x4
.obj str_S_1_dou_00005d50, local
	.string "S_1"
.endobj str_S_1_dou_00005d50

# .rodata:0x84 | 0x20C4 | size: 0x4
.obj str_Q_1_dou_00005d54, local
	.string "Q_1"
.endobj str_Q_1_dou_00005d54

# .rodata:0x88 | 0x20C8 | size: 0x5
.obj str_A_2B_dou_00005d58, local
	.string "A_2B"
.endobj str_A_2B_dou_00005d58

# .rodata:0x8D | 0x20CD | size: 0x3
.obj gap_03_000020CD_rodata, global
.hidden gap_03_000020CD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000020CD_rodata

# .rodata:0x90 | 0x20D0 | size: 0x4
.obj str_D_1_dou_00005d60, local
	.string "D_1"
.endobj str_D_1_dou_00005d60

# .rodata:0x94 | 0x20D4 | size: 0x4
.obj str_A_1_dou_00005d64, local
	.string "A_1"
.endobj str_A_1_dou_00005d64

# .rodata:0x98 | 0x20D8 | size: 0x4
.obj str_R_1_dou_00005d68, local
	.string "R_1"
.endobj str_R_1_dou_00005d68

# .rodata:0x9C | 0x20DC | size: 0x4
.obj str_W_1_dou_00005d6c, local
	.string "W_1"
.endobj str_W_1_dou_00005d6c

# .rodata:0xA0 | 0x20E0 | size: 0x4
.obj str_T_1_dou_00005d70, local
	.string "T_1"
.endobj str_T_1_dou_00005d70

# .rodata:0xA4 | 0x20E4 | size: 0x9
.obj str_c_bubble_dou_00005d74, local
	.string "c_bubble"
.endobj str_c_bubble_dou_00005d74

# .rodata:0xAD | 0x20ED | size: 0x3
.obj gap_03_000020ED_rodata, global
.hidden gap_03_000020ED_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000020ED_rodata

# .rodata:0xB0 | 0x20F0 | size: 0x15
.obj str_SFX_ENM_BUBBLE_FIRE1_dou_00005d80, local
	.string "SFX_ENM_BUBBLE_FIRE1"
.endobj str_SFX_ENM_BUBBLE_FIRE1_dou_00005d80

# .rodata:0xC5 | 0x2105 | size: 0x3
.obj gap_03_00002105_rodata, global
.hidden gap_03_00002105_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002105_rodata

# .rodata:0xC8 | 0x2108 | size: 0x16
.obj str_SFX_ENM_BUBBLE_SPLIT_dou_00005d98, local
	.string "SFX_ENM_BUBBLE_SPLIT1"
.endobj str_SFX_ENM_BUBBLE_SPLIT_dou_00005d98

# .rodata:0xDE | 0x211E | size: 0x2
.obj gap_03_0000211E_rodata, global
.hidden gap_03_0000211E_rodata
	.2byte 0x0000
.endobj gap_03_0000211E_rodata

# .rodata:0xE0 | 0x2120 | size: 0x15
.obj str_SFX_ENM_BUBBLE_MOVE1_dou_00005db0, local
	.string "SFX_ENM_BUBBLE_MOVE1"
.endobj str_SFX_ENM_BUBBLE_MOVE1_dou_00005db0

# .rodata:0xF5 | 0x2135 | size: 0x3
.obj gap_03_00002135_rodata, global
.hidden gap_03_00002135_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002135_rodata

# .rodata:0xF8 | 0x2138 | size: 0x5
.obj str_A_1A_dou_00005dc8, local
	.string "A_1A"
.endobj str_A_1A_dou_00005dc8

# .rodata:0xFD | 0x213D | size: 0x3
.obj gap_03_0000213D_rodata, global
.hidden gap_03_0000213D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000213D_rodata

# .rodata:0x100 | 0x2140 | size: 0x5
.obj str_A_1B_dou_00005dd0, local
	.string "A_1B"
.endobj str_A_1B_dou_00005dd0

# .rodata:0x105 | 0x2145 | size: 0x3
.obj gap_03_00002145_rodata, global
.hidden gap_03_00002145_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002145_rodata

# .rodata:0x108 | 0x2148 | size: 0x15
.obj str_SFX_ENM_BUBBLE_MOVE2_dou_00005dd8, local
	.string "SFX_ENM_BUBBLE_MOVE2"
.endobj str_SFX_ENM_BUBBLE_MOVE2_dou_00005dd8

# .rodata:0x11D | 0x215D | size: 0x3
.obj gap_03_0000215D_rodata, global
.hidden gap_03_0000215D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000215D_rodata

# .rodata:0x120 | 0x2160 | size: 0xC
.obj vec3_dou_00005df0, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj vec3_dou_00005df0

# .rodata:0x12C | 0x216C | size: 0x17
.obj str_SFX_ENM_BUBBLE_ATTAC_dou_00005dfc, local
	.string "SFX_ENM_BUBBLE_ATTACK2"
.endobj str_SFX_ENM_BUBBLE_ATTAC_dou_00005dfc

# .rodata:0x143 | 0x2183 | size: 0x1
.obj gap_03_00002183_rodata, global
.hidden gap_03_00002183_rodata
	.byte 0x00
.endobj gap_03_00002183_rodata

# .rodata:0x144 | 0x2184 | size: 0x17
.obj str_SFX_ENM_BUBBLE_ATTAC_dou_00005e14, local
	.string "SFX_ENM_BUBBLE_ATTACK3"
.endobj str_SFX_ENM_BUBBLE_ATTAC_dou_00005e14

# .rodata:0x15B | 0x219B | size: 0x1
.obj gap_03_0000219B_rodata, global
.hidden gap_03_0000219B_rodata
	.byte 0x00
.endobj gap_03_0000219B_rodata

# .rodata:0x15C | 0x219C | size: 0x1
.obj zero_dou_00005e2c, local
	.byte 0x00
.endobj zero_dou_00005e2c

# .rodata:0x15D | 0x219D | size: 0x3
.obj gap_03_0000219D_rodata, global
.hidden gap_03_0000219D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000219D_rodata

# .rodata:0x160 | 0x21A0 | size: 0xC
.obj str_kemuri_test_dou_00005e30, local
	.string "kemuri_test"
.endobj str_kemuri_test_dou_00005e30

# .rodata:0x16C | 0x21AC | size: 0x28
.obj dat_dou_00005e3c, local
	.4byte 0x3F800000
	.4byte 0x3FA00000
	.4byte 0x3FC00000
	.4byte 0x3FE00000
	.4byte 0x40000000
	.4byte 0x40100000
	.4byte 0x40000000
	.4byte 0x3FE00000
	.4byte 0x3FC00000
	.4byte 0x3FA00000
.endobj dat_dou_00005e3c

# .rodata:0x194 | 0x21D4 | size: 0xC
.obj vec3_dou_00005e64, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj vec3_dou_00005e64

# .rodata:0x1A0 | 0x21E0 | size: 0x17
.obj str_SFX_ENM_BUBBLE_ATTAC_dou_00005e70, local
	.string "SFX_ENM_BUBBLE_ATTACK4"
.endobj str_SFX_ENM_BUBBLE_ATTAC_dou_00005e70

# .rodata:0x1B7 | 0x21F7 | size: 0x1
.obj gap_03_000021F7_rodata, global
.hidden gap_03_000021F7_rodata
	.byte 0x00
.endobj gap_03_000021F7_rodata

# .rodata:0x1B8 | 0x21F8 | size: 0x5
.obj str_A_2A_dou_00005e88, local
	.string "A_2A"
.endobj str_A_2A_dou_00005e88
	.byte 0x00, 0x00, 0x00

# .rodata:0x1C0 | 0x2200 | size: 0x4
.obj zero_dou_00005e90, local
	.float 0
.endobj zero_dou_00005e90

# .rodata:0x1C4 | 0x2204 | size: 0x4
.obj float_neg1000_dou_00005e94, local
	.float -1000
.endobj float_neg1000_dou_00005e94

# .rodata:0x1C8 | 0x2208 | size: 0x4
.obj float_1_dou_00005e98, local
	.float 1
.endobj float_1_dou_00005e98

# .rodata:0x1CC | 0x220C | size: 0x4
.obj float_2_dou_00005e9c, local
	.float 2
.endobj float_2_dou_00005e9c

# .rodata:0x1D0 | 0x2210 | size: 0x4
.obj float_24_dou_00005ea0, local
	.float 24
.endobj float_24_dou_00005ea0

# .rodata:0x1D4 | 0x2214 | size: 0x4
.obj float_15_dou_00005ea4, local
	.float 15
.endobj float_15_dou_00005ea4

# .rodata:0x1D8 | 0x2218 | size: 0x4
.obj float_10_dou_00005ea8, local
	.float 10
.endobj float_10_dou_00005ea8
	.4byte 0x00000000

# .rodata:0x1E0 | 0x2220 | size: 0x8
.obj double_to_int_dou_00005eb0, local
	.double 4503601774854144
.endobj double_to_int_dou_00005eb0

# .rodata:0x1E8 | 0x2228 | size: 0x4
.obj float_0p1_dou_00005eb8, local
	.float 0.1
.endobj float_0p1_dou_00005eb8

# .rodata:0x1EC | 0x222C | size: 0x4
.obj gap_03_0000222C_rodata, global
.hidden gap_03_0000222C_rodata
	.4byte 0x00000000
.endobj gap_03_0000222C_rodata

# 0x00011C40..0x000136D8 | size: 0x1A98
.data
.balign 8

# .data:0x0 | 0x11C40 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x11C48 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x11C4C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x11C50 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x11C54 | size: 0x4
.obj gap_04_00011C54_data, global
.hidden gap_04_00011C54_data
	.4byte 0x00000000
.endobj gap_04_00011C54_data

# .data:0x18 | 0x11C58 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x11C60 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x11C64 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x11C68 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x11C70 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x11C74 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x11C78 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x11C7C | size: 0x4
.obj gap_04_00011C7C_data, global
.hidden gap_04_00011C7C_data
	.4byte 0x00000000
.endobj gap_04_00011C7C_data

# .data:0x40 | 0x11C80 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x11C88 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x11C8C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x11C90 | size: 0xC4
.obj unit_bubble_5_data_11C90, global
	.4byte 0x00000055
	.4byte str_btl_un_bubble_dou_00005cd0
	.4byte 0x00060000
	.4byte 0x01011500
	.4byte 0x02460132
	.4byte 0x270F001A
	.4byte 0x00240008
	.4byte 0x00180000
	.4byte 0x00000000
	.4byte 0x41900000
	.4byte 0x00000000
	.4byte 0x0000FFFD
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41500000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41500000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41500000
	.4byte 0x41BB3333
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41900000
	.4byte 0x00000000
	.4byte 0x41D00000
	.4byte 0x42100000
	.4byte 0x00000002
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_ENM_BUBBLE_DAMAG_dou_00005ce0
	.4byte str_SFX_BTL_DAMAGE_FIRE1_dou_00005cf8
	.4byte str_SFX_BTL_DAMAGE_ICE1_dou_00005d10
	.4byte str_SFX_BTL_DAMAGE_BIRIB_dou_00005d24
	.4byte 0x00000004
	.4byte regist
	.4byte 0x02000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_bubble_5_data_11C90

# .data:0x114 | 0x11D54 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x11D59 | size: 0x3
.obj gap_04_00011D59_data, global
.hidden gap_04_00011D59_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00011D59_data

# .data:0x11C | 0x11D5C | size: 0x5
.obj defence_attr, local
	.4byte 0x00030101
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x11D61 | size: 0x3
.obj gap_04_00011D61_data, global
.hidden gap_04_00011D61_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00011D61_data

# .data:0x124 | 0x11D64 | size: 0x16
.obj regist, local
	.4byte 0x325A6964
	.4byte 0x4B640032
	.4byte 0x645A645A
	.4byte 0x645F4B32
	.4byte 0x5A644B64
	.2byte 0x645F
.endobj regist

# .data:0x13A | 0x11D7A | size: 0x2
.obj gap_04_00011D7A_data, global
.hidden gap_04_00011D7A_data
	.2byte 0x0000
.endobj gap_04_00011D7A_data

# .data:0x13C | 0x11D7C | size: 0x90
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_N_1_dou_00005d40
	.4byte 0x00000002
	.4byte str_Y_1_dou_00005d44
	.4byte 0x00000009
	.4byte str_Y_1_dou_00005d44
	.4byte 0x00000005
	.4byte str_K_1_dou_00005d48
	.4byte 0x00000004
	.4byte str_X_1_dou_00005d4c
	.4byte 0x00000003
	.4byte str_X_1_dou_00005d4c
	.4byte 0x0000001C
	.4byte str_S_1_dou_00005d50
	.4byte 0x0000001D
	.4byte str_Q_1_dou_00005d54
	.4byte 0x0000001E
	.4byte str_Q_1_dou_00005d54
	.4byte 0x0000001F
	.4byte str_A_2B_dou_00005d58
	.4byte 0x00000027
	.4byte str_D_1_dou_00005d60
	.4byte 0x00000032
	.4byte str_A_1_dou_00005d64
	.4byte 0x0000002A
	.4byte str_R_1_dou_00005d68
	.4byte 0x00000028
	.4byte str_W_1_dou_00005d6c
	.4byte 0x00000038
	.4byte str_X_1_dou_00005d4c
	.4byte 0x00000039
	.4byte str_X_1_dou_00005d4c
	.4byte 0x00000041
	.4byte str_T_1_dou_00005d70
	.4byte 0x00000045
	.4byte str_S_1_dou_00005d50
.endobj pose_table

# .data:0x1CC | 0x11E0C | size: 0x20
.obj data_table, local
	.4byte 0x0000000B
	.4byte damage_fire_explosion_event
	.4byte 0x00000028
	.4byte avoid_fire_event
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x1EC | 0x11E2C | size: 0x98
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_bubble_dou_00005cd0
	.4byte str_c_bubble_dou_00005d74
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41C80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x420C0000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x00000109
	.4byte 0x00000010
	.4byte pose_table
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte str_c_bubble_dou_00005d74
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000F000F
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x13010000
	.4byte 0x00000000
	.4byte pose_table
.endobj parts

# .data:0x284 | 0x11EC4 | size: 0xC0
.obj weapon_bubble_attack, local
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
	.4byte 0x01000302
	.4byte 0x00000000
	.4byte 0x00000087
	.4byte 0x00000070
	.4byte 0x00002004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03000000
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
.endobj weapon_bubble_attack

# .data:0x344 | 0x11F84 | size: 0xC0
.obj weapon_bubble_fire_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
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
	.4byte 0x20000000
	.4byte 0x01000302
	.4byte 0x00000000
	.4byte 0x000000C7
	.4byte 0x000007FF
	.4byte 0x80002004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000004B
	.4byte 0x03000000
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
.endobj weapon_bubble_fire_attack

# .data:0x404 | 0x12044 | size: 0x30
.obj entry_bubble, local
	.4byte unit_bubble_5_data_11C90
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0xC47A0000
	.4byte 0xC47A0000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj entry_bubble

# .data:0x434 | 0x12074 | size: 0x9C
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
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0xFE363C82
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x4D0 | 0x12110 | size: 0x28
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

# .data:0x4F8 | 0x12138 | size: 0x40
.obj avoid_fire_event, local
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_FIRE1_dou_00005d80
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2B_dou_00005d58
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00000002
	.4byte 0x00000001
.endobj avoid_fire_event

# .data:0x538 | 0x12178 | size: 0x19C
.obj damage_fire_explosion_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2B_dou_00005d58
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0x000000AA
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x0009005B
	.4byte btlevtcmd_CheckSpace
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x0001005E
	.4byte friend_event
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x0009005B
	.4byte btlevtcmd_CheckSpace
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x0001005E
	.4byte friend_event
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj damage_fire_explosion_event

# .data:0x6D4 | 0x12314 | size: 0x18C
.obj friend_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte str_S_1_dou_00005d50
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0xFE363C8E
	.4byte 0x0004005B
	.4byte btlevtcmd_SpawnUnit
	.4byte 0xFE363C83
	.4byte entry_bubble
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte bubble_copy_status
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0xFE363C8E
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0xF24A7C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_SPLIT_dou_00005d98
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006E
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotateOffset
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte 0x0002001D
	.4byte 0xFE363C8C
	.4byte 0x0000001E
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000028
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotateOffset
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000070
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24AF280
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00000002
	.4byte 0x00000001
.endobj friend_event

# .data:0x860 | 0x124A0 | size: 0xCC
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
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000046
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0x00000046
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_bubble_attack
	.4byte 0x0001005E
	.4byte normal_attack_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_bubble_fire_attack
	.4byte 0x0001005E
	.4byte fire_attack_event
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

# .data:0x92C | 0x1256C | size: 0x670
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
	.4byte 0x0001006F
	.4byte 0xFE363C8F
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_MOVE1_dou_00005db0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000078
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1A_dou_00005dc8
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0000000D
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000005
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
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
	.4byte 0x0001005F
	.4byte 0xFE363C8F
	.4byte 0x00010009
	.4byte 0x0000001E
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
	.4byte 0x0000002E
	.4byte 0x00000031
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_FIRE1_dou_00005d80
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010005
	.4byte 0x00000004
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1B_dou_00005dd0
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x00000006
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
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_FIRE1_dou_00005d80
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1B_dou_00005dd0
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
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x00010005
	.4byte 0x00000003
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1B_dou_00005dd0
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x00000006
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_MOVE2_dou_00005dd8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006E
	.4byte 0x00010009
	.4byte 0x00000005
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1A_dou_00005dc8
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0xFFFFFFE2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
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
	.4byte 0x00000019
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_dou_00005d50
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj normal_attack_event

# .data:0xF9C | 0x12BDC | size: 0x5B4
.obj fire_attack_event, local
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
	.4byte 0x00000000
	.4byte 0x0000006E
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_T_1_dou_00005d70
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_dou_00005d50
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_ATTAC_dou_00005dfc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x02000000
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
	.4byte 0x00000005
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000006E
	.4byte 0x0002005B
	.4byte eff_fire
	.4byte 0xFFFFFFFE
	.4byte 0x00000070
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
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0002003B
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0002003B
	.4byte 0xFE363C8C
	.4byte 0xFE363C82
	.4byte 0x0002003C
	.4byte 0xFE363C8A
	.4byte 0xF24A7D4C
	.4byte 0x0002003C
	.4byte 0xFE363C8C
	.4byte 0xF24A7CE6
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x0002003A
	.4byte 0xFE363C82
	.4byte 0xFE363C8C
	.4byte 0x000B005B
	.4byte btlevtcmd_DivePartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
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
	.4byte 0x00000005
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0002003B
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0002003B
	.4byte 0xFE363C8C
	.4byte 0xFE363C82
	.4byte 0x0002003C
	.4byte 0xFE363C8A
	.4byte 0xF24A7C19
	.4byte 0x0002003C
	.4byte 0xFE363C8C
	.4byte 0xF24A7C19
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x0002003A
	.4byte 0xFE363C82
	.4byte 0xFE363C8C
	.4byte 0x000B005B
	.4byte btlevtcmd_DivePartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xF1194D80
	.4byte 0xFE363C81
	.4byte 0xF1194D80
	.4byte 0x000B005B
	.4byte btlevtcmd_DivePartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_ATTAC_dou_00005e14
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x02000000
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
	.4byte 0x0000002E
	.4byte 0x00000031
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_dou_00005e2c
	.4byte str_kemuri_test_dou_00005e30
	.4byte 0x00000010
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A7E80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj fire_attack_event

# .data:0x1550 | 0x13190 | size: 0x28
.obj all_fire_attackEvent_sub, local
	.4byte 0x0000006E
	.4byte 0x0003005B
	.4byte eff_all_fire
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000070
	.4byte 0x00010009
	.4byte 0x00000078
	.4byte 0x00000002
	.4byte 0x00000001
.endobj all_fire_attackEvent_sub

# .data:0x1578 | 0x131B8 | size: 0x504
.obj all_fire_attack_event, local
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
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000007
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
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1A_dou_00005dc8
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_MOVE1_dou_00005db0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
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
	.4byte 0xFFFFFFF1
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
	.4byte str_SFX_ENM_BUBBLE_ATTAC_dou_00005e70
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2A_dou_00005e88
	.4byte 0x00010005
	.4byte 0x00000014
	.4byte 0x0005005B
	.4byte btlevtcmd_AddPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte btlevtcmd_AddPos
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x00000006
	.4byte 0x0000006E
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x0000000A
	.4byte 0x0001005C
	.4byte all_fire_attackEvent_sub
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_ATTAC_dou_00005dfc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2B_dou_00005d58
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetSelectEnemy
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x00000000
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
	.4byte 0x0000002E
	.4byte 0x00000031
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C89
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
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x00010009
	.4byte 0x000000B4
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1A_dou_00005dc8
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_MOVE1_dou_00005db0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
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
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj all_fire_attack_event

# .data:0x1A7C | 0x136BC | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x1A94 | 0x136D4 | size: 0x4
.obj gap_04_000136D4_data, global
.hidden gap_04_000136D4_data
	.4byte 0x00000000
.endobj gap_04_000136D4_data

# 0x00000008..0x00000060 | size: 0x58
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x8 | size: 0x28
.obj step, local
	.skip 0x28
.endobj step

# .bss:0x28 | 0x30 | size: 0x28
.obj eff2, local
	.skip 0x28
.endobj eff2

# .bss:0x50 | 0x58 | size: 0x4
.obj eff, local
	.skip 0x4
.endobj eff

# .bss:0x54 | 0x5C | size: 0x4
.obj gap_05_0000005C_bss, global
.hidden gap_05_0000005C_bss
	.skip 0x4
.endobj gap_05_0000005C_bss
