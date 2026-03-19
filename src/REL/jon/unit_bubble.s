.include "macros.inc"
.file "unit_bubble.o"

# 0x00001A68..0x00001F38 | size: 0x4D0
.text
.balign 4

# .text:0x0 | 0x1A68 | size: 0x21C
.fn eff_all_fire, local
/* 00001A68 00001B2C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 00001A6C 00001B30  7C 08 02 A6 */	mflr r0
/* 00001A70 00001B34  90 01 00 74 */	stw r0, 0x74(r1)
/* 00001A74 00001B38  BF 81 00 60 */	stmw r28, 0x60(r1)
/* 00001A78 00001B3C  7C 9E 23 78 */	mr r30, r4
/* 00001A7C 00001B40  7C 7D 1B 78 */	mr r29, r3
/* 00001A80 00001B44  83 83 00 18 */	lwz r28, 0x18(r3)
/* 00001A84 00001B48  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 00001A88 00001B4C  4B FF EF E9 */	bl evtGetValue
/* 00001A8C 00001B50  7C 64 1B 78 */	mr r4, r3
/* 00001A90 00001B54  7F A3 EB 78 */	mr r3, r29
/* 00001A94 00001B58  4B FF EF DD */	bl BattleTransID
/* 00001A98 00001B5C  80 9C 00 04 */	lwz r4, 0x4(r28)
/* 00001A9C 00001B60  7C 7C 1B 78 */	mr r28, r3
/* 00001AA0 00001B64  7F A3 EB 78 */	mr r3, r29
/* 00001AA4 00001B68  4B FF EF CD */	bl evtGetValue
/* 00001AA8 00001B6C  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00001AAC 00001B70  7C 7F 1B 78 */	mr r31, r3
/* 00001AB0 00001B74  38 64 00 00 */	addi r3, r4, _battleWorkPointer@l
/* 00001AB4 00001B78  7F 84 E3 78 */	mr r4, r28
/* 00001AB8 00001B7C  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00001ABC 00001B80  4B FF EF B5 */	bl BattleGetUnitPtr
/* 00001AC0 00001B84  3C 80 00 00 */	lis r4, dat_jon_0000b024@ha
/* 00001AC4 00001B88  38 00 00 05 */	li r0, 0x5
/* 00001AC8 00001B8C  38 84 00 00 */	addi r4, r4, dat_jon_0000b024@l
/* 00001ACC 00001B90  7C 7D 1B 78 */	mr r29, r3
/* 00001AD0 00001B94  38 A1 00 1C */	addi r5, r1, 0x1c
/* 00001AD4 00001B98  38 84 FF FC */	subi r4, r4, 0x4
/* 00001AD8 00001B9C  7C 09 03 A6 */	mtctr r0
.L_00001ADC:
/* 00001ADC 00001BA0  80 64 00 04 */	lwz r3, 0x4(r4)
/* 00001AE0 00001BA4  84 04 00 08 */	lwzu r0, 0x8(r4)
/* 00001AE4 00001BA8  90 65 00 04 */	stw r3, 0x4(r5)
/* 00001AE8 00001BAC  94 05 00 08 */	stwu r0, 0x8(r5)
/* 00001AEC 00001BB0  42 00 FF F0 */	bdnz .L_00001ADC
/* 00001AF0 00001BB4  2C 1E 00 00 */	cmpwi r30, 0x0
/* 00001AF4 00001BB8  41 82 00 70 */	beq .L_00001B64
/* 00001AF8 00001BBC  3C 60 00 00 */	lis r3, zero_jon_0000b078@ha
/* 00001AFC 00001BC0  3C 80 00 00 */	lis r4, float_neg1000_jon_0000b07c@ha
/* 00001B00 00001BC4  38 A3 00 00 */	addi r5, r3, zero_jon_0000b078@l
/* 00001B04 00001BC8  C0 44 00 00 */	lfs f2, float_neg1000_jon_0000b07c@l(r4)
/* 00001B08 00001BCC  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 00001B0C 00001BD0  3C 60 00 00 */	lis r3, float_1_jon_0000b080@ha
/* 00001B10 00001BD4  C0 83 00 00 */	lfs f4, float_1_jon_0000b080@l(r3)
/* 00001B14 00001BD8  38 60 00 05 */	li r3, 0x5
/* 00001B18 00001BDC  FC 60 08 90 */	fmr f3, f1
/* 00001B1C 00001BE0  38 80 00 78 */	li r4, 0x78
/* 00001B20 00001BE4  4B FF EF 51 */	bl effFireEntry
/* 00001B24 00001BE8  3C C0 00 00 */	lis r6, eff2@ha
/* 00001B28 00001BEC  3C A0 00 00 */	lis r5, float_2_jon_0000b084@ha
/* 00001B2C 00001BF0  57 E0 10 3A */	slwi r0, r31, 2
/* 00001B30 00001BF4  C0 05 00 00 */	lfs f0, float_2_jon_0000b084@l(r5)
/* 00001B34 00001BF8  38 C6 00 00 */	addi r6, r6, eff2@l
/* 00001B38 00001BFC  38 81 00 20 */	addi r4, r1, 0x20
/* 00001B3C 00001C00  7C 66 01 2E */	stwx r3, r6, r0
/* 00001B40 00001C04  7C 66 00 2E */	lwzx r3, r6, r0
/* 00001B44 00001C08  80 63 00 0C */	lwz r3, 0xc(r3)
/* 00001B48 00001C0C  D0 03 00 78 */	stfs f0, 0x78(r3)
/* 00001B4C 00001C10  7C 66 00 2E */	lwzx r3, r6, r0
/* 00001B50 00001C14  C0 3D 01 14 */	lfs f1, 0x114(r29)
/* 00001B54 00001C18  7C 04 04 2E */	lfsx f0, r4, r0
/* 00001B58 00001C1C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 00001B5C 00001C20  EC 01 00 32 */	fmuls f0, f1, f0
/* 00001B60 00001C24  D0 03 00 7C */	stfs f0, 0x7c(r3)
.L_00001B64:
/* 00001B64 00001C28  3C 60 00 00 */	lis r3, eff2@ha
/* 00001B68 00001C2C  57 FE 10 3A */	slwi r30, r31, 2
/* 00001B6C 00001C30  38 63 00 00 */	addi r3, r3, eff2@l
/* 00001B70 00001C34  7C 63 F0 2E */	lwzx r3, r3, r30
/* 00001B74 00001C38  83 83 00 0C */	lwz r28, 0xc(r3)
/* 00001B78 00001C3C  28 1C 00 00 */	cmplwi r28, 0x0
/* 00001B7C 00001C40  41 82 00 F0 */	beq .L_00001C6C
/* 00001B80 00001C44  7F A3 EB 78 */	mr r3, r29
/* 00001B84 00001C48  38 81 00 10 */	addi r4, r1, 0x10
/* 00001B88 00001C4C  38 A1 00 0C */	addi r5, r1, 0xc
/* 00001B8C 00001C50  38 C1 00 08 */	addi r6, r1, 0x8
/* 00001B90 00001C54  4B FF EE E1 */	bl BtlUnit_GetPos
/* 00001B94 00001C58  88 7D 01 89 */	lbz r3, 0x189(r29)
/* 00001B98 00001C5C  3C A0 43 30 */	lis r5, 0x4330
/* 00001B9C 00001C60  3C 80 00 00 */	lis r4, double_to_int_jon_0000b098@ha
/* 00001BA0 00001C64  38 1F 00 01 */	addi r0, r31, 0x1
/* 00001BA4 00001C68  7C 63 07 74 */	extsb r3, r3
/* 00001BA8 00001C6C  3C E0 00 00 */	lis r7, float_24_jon_0000b088@ha
/* 00001BAC 00001C70  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 00001BB0 00001C74  38 C4 00 00 */	addi r6, r4, double_to_int_jon_0000b098@l
/* 00001BB4 00001C78  90 61 00 4C */	stw r3, 0x4c(r1)
/* 00001BB8 00001C7C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 00001BBC 00001C80  3C 60 00 00 */	lis r3, float_15_jon_0000b08c@ha
/* 00001BC0 00001C84  C8 A6 00 00 */	lfd f5, 0x0(r6)
/* 00001BC4 00001C88  90 A1 00 48 */	stw r5, 0x48(r1)
/* 00001BC8 00001C8C  38 83 00 00 */	addi r4, r3, float_15_jon_0000b08c@l
/* 00001BCC 00001C90  3C 60 00 00 */	lis r3, vec3_jon_0000b04c@ha
/* 00001BD0 00001C94  C0 87 00 00 */	lfs f4, float_24_jon_0000b088@l(r7)
/* 00001BD4 00001C98  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 00001BD8 00001C9C  39 03 00 00 */	addi r8, r3, vec3_jon_0000b04c@l
/* 00001BDC 00001CA0  90 01 00 54 */	stw r0, 0x54(r1)
/* 00001BE0 00001CA4  3C 60 00 00 */	lis r3, float_2_jon_0000b084@ha
/* 00001BE4 00001CA8  EC 60 28 28 */	fsubs f3, f0, f5
/* 00001BE8 00001CAC  C0 04 00 00 */	lfs f0, 0x0(r4)
/* 00001BEC 00001CB0  90 A1 00 50 */	stw r5, 0x50(r1)
/* 00001BF0 00001CB4  38 C3 00 00 */	addi r6, r3, float_2_jon_0000b084@l
/* 00001BF4 00001CB8  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 00001BF8 00001CBC  38 A1 00 20 */	addi r5, r1, 0x20
/* 00001BFC 00001CC0  80 E8 00 00 */	lwz r7, 0x0(r8)
/* 00001C00 00001CC4  EC 01 00 28 */	fsubs f0, f1, f0
/* 00001C04 00001CC8  80 08 00 04 */	lwz r0, 0x4(r8)
/* 00001C08 00001CCC  EC 84 00 F2 */	fmuls f4, f4, f3
/* 00001C0C 00001CD0  C8 41 00 50 */	lfd f2, 0x50(r1)
/* 00001C10 00001CD4  3C 60 00 00 */	lis r3, float_10_jon_0000b090@ha
/* 00001C14 00001CD8  80 88 00 08 */	lwz r4, 0x8(r8)
/* 00001C18 00001CDC  EC 62 28 28 */	fsubs f3, f2, f5
/* 00001C1C 00001CE0  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 00001C20 00001CE4  7C 25 F4 2E */	lfsx f1, r5, r30
/* 00001C24 00001CE8  90 E1 00 14 */	stw r7, 0x14(r1)
/* 00001C28 00001CEC  EC 64 10 FA */	fmadds f3, f4, f3, f2
/* 00001C2C 00001CF0  C0 46 00 00 */	lfs f2, 0x0(r6)
/* 00001C30 00001CF4  90 01 00 18 */	stw r0, 0x18(r1)
/* 00001C34 00001CF8  EC 42 00 7C */	fnmsubs f2, f2, f1, f0
/* 00001C38 00001CFC  C0 21 00 08 */	lfs f1, 0x8(r1)
/* 00001C3C 00001D00  C0 03 00 00 */	lfs f0, float_10_jon_0000b090@l(r3)
/* 00001C40 00001D04  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 00001C44 00001D08  EC 01 00 28 */	fsubs f0, f1, f0
/* 00001C48 00001D0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00001C4C 00001D10  90 81 00 1C */	stw r4, 0x1c(r1)
/* 00001C50 00001D14  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 00001C54 00001D18  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 00001C58 00001D1C  80 61 00 18 */	lwz r3, 0x18(r1)
/* 00001C5C 00001D20  90 1C 00 04 */	stw r0, 0x4(r28)
/* 00001C60 00001D24  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 00001C64 00001D28  90 7C 00 08 */	stw r3, 0x8(r28)
/* 00001C68 00001D2C  90 1C 00 0C */	stw r0, 0xc(r28)
.L_00001C6C:
/* 00001C6C 00001D30  BB 81 00 60 */	lmw r28, 0x60(r1)
/* 00001C70 00001D34  38 60 00 00 */	li r3, 0x0
/* 00001C74 00001D38  80 01 00 74 */	lwz r0, 0x74(r1)
/* 00001C78 00001D3C  7C 08 03 A6 */	mtlr r0
/* 00001C7C 00001D40  38 21 00 70 */	addi r1, r1, 0x70
/* 00001C80 00001D44  4E 80 00 20 */	blr
.endfn eff_all_fire

# .text:0x21C | 0x1C84 | size: 0x1A0
.fn eff_fire, local
/* 00001C84 00001D48  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00001C88 00001D4C  7C 08 02 A6 */	mflr r0
/* 00001C8C 00001D50  90 01 00 34 */	stw r0, 0x34(r1)
/* 00001C90 00001D54  BF A1 00 24 */	stmw r29, 0x24(r1)
/* 00001C94 00001D58  7C 9D 23 78 */	mr r29, r4
/* 00001C98 00001D5C  7C 7E 1B 78 */	mr r30, r3
/* 00001C9C 00001D60  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00001CA0 00001D64  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00001CA4 00001D68  4B FF ED CD */	bl evtGetValue
/* 00001CA8 00001D6C  7C 64 1B 78 */	mr r4, r3
/* 00001CAC 00001D70  7F C3 F3 78 */	mr r3, r30
/* 00001CB0 00001D74  4B FF ED C1 */	bl BattleTransID
/* 00001CB4 00001D78  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00001CB8 00001D7C  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00001CBC 00001D80  7C 64 1B 78 */	mr r4, r3
/* 00001CC0 00001D84  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00001CC4 00001D88  4B FF ED AD */	bl BattleGetUnitPtr
/* 00001CC8 00001D8C  7C 7F 1B 78 */	mr r31, r3
/* 00001CCC 00001D90  38 80 00 02 */	li r4, 0x2
/* 00001CD0 00001D94  4B FF ED A1 */	bl BtlUnit_GetPartsPtr
/* 00001CD4 00001D98  2C 1D 00 00 */	cmpwi r29, 0x0
/* 00001CD8 00001D9C  7C 7E 1B 78 */	mr r30, r3
/* 00001CDC 00001DA0  41 82 00 54 */	beq .L_00001D30
/* 00001CE0 00001DA4  3C 60 00 00 */	lis r3, zero_jon_0000b078@ha
/* 00001CE4 00001DA8  3C 80 00 00 */	lis r4, float_neg1000_jon_0000b07c@ha
/* 00001CE8 00001DAC  38 A3 00 00 */	addi r5, r3, zero_jon_0000b078@l
/* 00001CEC 00001DB0  C0 44 00 00 */	lfs f2, float_neg1000_jon_0000b07c@l(r4)
/* 00001CF0 00001DB4  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 00001CF4 00001DB8  3C 60 00 00 */	lis r3, float_1_jon_0000b080@ha
/* 00001CF8 00001DBC  C0 83 00 00 */	lfs f4, float_1_jon_0000b080@l(r3)
/* 00001CFC 00001DC0  38 60 00 05 */	li r3, 0x5
/* 00001D00 00001DC4  FC 60 08 90 */	fmr f3, f1
/* 00001D04 00001DC8  38 80 00 6A */	li r4, 0x6a
/* 00001D08 00001DCC  4B FF ED 69 */	bl effFireEntry
/* 00001D0C 00001DD0  3C A0 00 00 */	lis r5, eff@ha
/* 00001D10 00001DD4  94 65 00 00 */	stwu r3, eff@l(r5)
/* 00001D14 00001DD8  3C 80 00 00 */	lis r4, zero_jon_0000b078@ha
/* 00001D18 00001DDC  C0 04 00 00 */	lfs f0, zero_jon_0000b078@l(r4)
/* 00001D1C 00001DE0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 00001D20 00001DE4  D0 03 00 78 */	stfs f0, 0x78(r3)
/* 00001D24 00001DE8  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00001D28 00001DEC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 00001D2C 00001DF0  D0 03 00 7C */	stfs f0, 0x7c(r3)
.L_00001D30:
/* 00001D30 00001DF4  3C 60 00 00 */	lis r3, eff@ha
/* 00001D34 00001DF8  38 63 00 00 */	addi r3, r3, eff@l
/* 00001D38 00001DFC  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00001D3C 00001E00  83 A3 00 0C */	lwz r29, 0xc(r3)
/* 00001D40 00001E04  28 1D 00 00 */	cmplwi r29, 0x0
/* 00001D44 00001E08  41 82 00 C8 */	beq .L_00001E0C
/* 00001D48 00001E0C  7F C3 F3 78 */	mr r3, r30
/* 00001D4C 00001E10  38 81 00 10 */	addi r4, r1, 0x10
/* 00001D50 00001E14  38 A1 00 0C */	addi r5, r1, 0xc
/* 00001D54 00001E18  38 C1 00 08 */	addi r6, r1, 0x8
/* 00001D58 00001E1C  4B FF ED 19 */	bl BtlUnit_GetPartsPos
/* 00001D5C 00001E20  3C 80 00 00 */	lis r4, vec3_jon_0000afd8@ha
/* 00001D60 00001E24  3C 60 00 00 */	lis r3, float_0p1_jon_0000b0a0@ha
/* 00001D64 00001E28  38 A4 00 00 */	addi r5, r4, vec3_jon_0000afd8@l
/* 00001D68 00001E2C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 00001D6C 00001E30  80 05 00 00 */	lwz r0, 0x0(r5)
/* 00001D70 00001E34  80 85 00 04 */	lwz r4, 0x4(r5)
/* 00001D74 00001E38  90 01 00 14 */	stw r0, 0x14(r1)
/* 00001D78 00001E3C  80 05 00 08 */	lwz r0, 0x8(r5)
/* 00001D7C 00001E40  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 00001D80 00001E44  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 00001D84 00001E48  90 81 00 18 */	stw r4, 0x18(r1)
/* 00001D88 00001E4C  C0 01 00 08 */	lfs f0, 0x8(r1)
/* 00001D8C 00001E50  90 01 00 1C */	stw r0, 0x1c(r1)
/* 00001D90 00001E54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00001D94 00001E58  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 00001D98 00001E5C  C0 43 00 00 */	lfs f2, float_0p1_jon_0000b0a0@l(r3)
/* 00001D9C 00001E60  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 00001DA0 00001E64  80 61 00 18 */	lwz r3, 0x18(r1)
/* 00001DA4 00001E68  90 1D 00 04 */	stw r0, 0x4(r29)
/* 00001DA8 00001E6C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 00001DAC 00001E70  90 7D 00 08 */	stw r3, 0x8(r29)
/* 00001DB0 00001E74  90 1D 00 0C */	stw r0, 0xc(r29)
/* 00001DB4 00001E78  C0 3F 01 14 */	lfs f1, 0x114(r31)
/* 00001DB8 00001E7C  C0 1D 00 78 */	lfs f0, 0x78(r29)
/* 00001DBC 00001E80  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 00001DC0 00001E84  D0 1D 00 78 */	stfs f0, 0x78(r29)
/* 00001DC4 00001E88  C0 1D 00 78 */	lfs f0, 0x78(r29)
/* 00001DC8 00001E8C  C0 3F 01 14 */	lfs f1, 0x114(r31)
/* 00001DCC 00001E90  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 00001DD0 00001E94  4C 41 13 82 */	cror eq, gt, eq
/* 00001DD4 00001E98  40 82 00 08 */	bne .L_00001DDC
/* 00001DD8 00001E9C  D0 3D 00 78 */	stfs f1, 0x78(r29)
.L_00001DDC:
/* 00001DDC 00001EA0  3C 60 00 00 */	lis r3, float_0p1_jon_0000b0a0@ha
/* 00001DE0 00001EA4  C0 3F 01 14 */	lfs f1, 0x114(r31)
/* 00001DE4 00001EA8  C0 1D 00 7C */	lfs f0, 0x7c(r29)
/* 00001DE8 00001EAC  C0 43 00 00 */	lfs f2, float_0p1_jon_0000b0a0@l(r3)
/* 00001DEC 00001EB0  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 00001DF0 00001EB4  D0 1D 00 7C */	stfs f0, 0x7c(r29)
/* 00001DF4 00001EB8  C0 1D 00 7C */	lfs f0, 0x7c(r29)
/* 00001DF8 00001EBC  C0 3F 01 14 */	lfs f1, 0x114(r31)
/* 00001DFC 00001EC0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 00001E00 00001EC4  4C 41 13 82 */	cror eq, gt, eq
/* 00001E04 00001EC8  40 82 00 08 */	bne .L_00001E0C
/* 00001E08 00001ECC  D0 3D 00 7C */	stfs f1, 0x7c(r29)
.L_00001E0C:
/* 00001E0C 00001ED0  BB A1 00 24 */	lmw r29, 0x24(r1)
/* 00001E10 00001ED4  38 60 00 00 */	li r3, 0x0
/* 00001E14 00001ED8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00001E18 00001EDC  7C 08 03 A6 */	mtlr r0
/* 00001E1C 00001EE0  38 21 00 30 */	addi r1, r1, 0x30
/* 00001E20 00001EE4  4E 80 00 20 */	blr
.endfn eff_fire

# .text:0x3BC | 0x1E24 | size: 0x114
.fn bubble_copy_status, local
/* 00001E24 00001EE8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00001E28 00001EEC  7C 08 02 A6 */	mflr r0
/* 00001E2C 00001EF0  90 01 00 34 */	stw r0, 0x34(r1)
/* 00001E30 00001EF4  BF A1 00 24 */	stmw r29, 0x24(r1)
/* 00001E34 00001EF8  7C 7D 1B 78 */	mr r29, r3
/* 00001E38 00001EFC  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00001E3C 00001F00  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00001E40 00001F04  4B FF EC 31 */	bl evtGetValue
/* 00001E44 00001F08  7C 64 1B 78 */	mr r4, r3
/* 00001E48 00001F0C  7F A3 EB 78 */	mr r3, r29
/* 00001E4C 00001F10  4B FF EC 25 */	bl BattleTransID
/* 00001E50 00001F14  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00001E54 00001F18  7C 7F 1B 78 */	mr r31, r3
/* 00001E58 00001F1C  7F A3 EB 78 */	mr r3, r29
/* 00001E5C 00001F20  4B FF EC 15 */	bl evtGetValue
/* 00001E60 00001F24  7C 64 1B 78 */	mr r4, r3
/* 00001E64 00001F28  7F A3 EB 78 */	mr r3, r29
/* 00001E68 00001F2C  4B FF EC 09 */	bl BattleTransID
/* 00001E6C 00001F30  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00001E70 00001F34  7C 7E 1B 78 */	mr r30, r3
/* 00001E74 00001F38  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00001E78 00001F3C  80 05 00 00 */	lwz r0, 0x0(r5)
/* 00001E7C 00001F40  7F E4 FB 78 */	mr r4, r31
/* 00001E80 00001F44  7C 1D 03 78 */	mr r29, r0
/* 00001E84 00001F48  7C 03 03 78 */	mr r3, r0
/* 00001E88 00001F4C  4B FF EB E9 */	bl BattleGetUnitPtr
/* 00001E8C 00001F50  7C 7F 1B 78 */	mr r31, r3
/* 00001E90 00001F54  7F A3 EB 78 */	mr r3, r29
/* 00001E94 00001F58  7F C4 F3 78 */	mr r4, r30
/* 00001E98 00001F5C  4B FF EB D9 */	bl BattleGetUnitPtr
/* 00001E9C 00001F60  A8 1F 01 0C */	lha r0, 0x10c(r31)
/* 00001EA0 00001F64  B0 03 01 0C */	sth r0, 0x10c(r3)
/* 00001EA4 00001F68  A8 03 01 0C */	lha r0, 0x10c(r3)
/* 00001EA8 00001F6C  A8 83 01 08 */	lha r4, 0x108(r3)
/* 00001EAC 00001F70  7C 00 20 00 */	cmpw r0, r4
/* 00001EB0 00001F74  40 81 00 08 */	ble .L_00001EB8
/* 00001EB4 00001F78  B0 83 01 0C */	sth r4, 0x10c(r3)
.L_00001EB8:
/* 00001EB8 00001F7C  88 BF 01 23 */	lbz r5, 0x123(r31)
/* 00001EBC 00001F80  3C 00 43 30 */	lis r0, 0x4330
/* 00001EC0 00001F84  3C 80 00 00 */	lis r4, double_to_int_jon_0000b098@ha
/* 00001EC4 00001F88  90 01 00 08 */	stw r0, 0x8(r1)
/* 00001EC8 00001F8C  C8 44 00 00 */	lfd f2, double_to_int_jon_0000b098@l(r4)
/* 00001ECC 00001F90  98 A3 01 23 */	stb r5, 0x123(r3)
/* 00001ED0 00001F94  88 9F 01 24 */	lbz r4, 0x124(r31)
/* 00001ED4 00001F98  90 01 00 10 */	stw r0, 0x10(r1)
/* 00001ED8 00001F9C  98 83 01 24 */	stb r4, 0x124(r3)
/* 00001EDC 00001FA0  A8 03 01 0C */	lha r0, 0x10c(r3)
/* 00001EE0 00001FA4  90 03 02 08 */	stw r0, 0x208(r3)
/* 00001EE4 00001FA8  A8 03 01 0C */	lha r0, 0x10c(r3)
/* 00001EE8 00001FAC  90 03 02 0C */	stw r0, 0x20c(r3)
/* 00001EEC 00001FB0  A8 83 01 0C */	lha r4, 0x10c(r3)
/* 00001EF0 00001FB4  A8 03 01 08 */	lha r0, 0x108(r3)
/* 00001EF4 00001FB8  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 00001EF8 00001FBC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 00001EFC 00001FC0  90 81 00 0C */	stw r4, 0xc(r1)
/* 00001F00 00001FC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 00001F04 00001FC8  C8 21 00 08 */	lfd f1, 0x8(r1)
/* 00001F08 00001FCC  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 00001F0C 00001FD0  EC 21 10 28 */	fsubs f1, f1, f2
/* 00001F10 00001FD4  EC 00 10 28 */	fsubs f0, f0, f2
/* 00001F14 00001FD8  EC 01 00 24 */	fdivs f0, f1, f0
/* 00001F18 00001FDC  D0 03 02 14 */	stfs f0, 0x214(r3)
/* 00001F1C 00001FE0  D0 03 02 10 */	stfs f0, 0x210(r3)
/* 00001F20 00001FE4  38 60 00 02 */	li r3, 0x2
/* 00001F24 00001FE8  BB A1 00 24 */	lmw r29, 0x24(r1)
/* 00001F28 00001FEC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00001F2C 00001FF0  7C 08 03 A6 */	mtlr r0
/* 00001F30 00001FF4  38 21 00 30 */	addi r1, r1, 0x30
/* 00001F34 00001FF8  4E 80 00 20 */	blr
.endfn bubble_copy_status

# 0x00003E88..0x00004078 | size: 0x1F0
.rodata
.balign 8

# .rodata:0x0 | 0x3E88 | size: 0xE
.obj str_btl_un_bubble_jon_0000aeb8, local
	.string "btl_un_bubble"
.endobj str_btl_un_bubble_jon_0000aeb8

# .rodata:0xE | 0x3E96 | size: 0x2
.obj gap_03_00003E96_rodata, global
.hidden gap_03_00003E96_rodata
	.2byte 0x0000
.endobj gap_03_00003E96_rodata

# .rodata:0x10 | 0x3E98 | size: 0x18
.obj str_SFX_ENM_BUBBLE_DAMAG_jon_0000aec8, local
	.string "SFX_ENM_BUBBLE_DAMAGED1"
.endobj str_SFX_ENM_BUBBLE_DAMAG_jon_0000aec8

# .rodata:0x28 | 0x3EB0 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_jon_0000aee0, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_jon_0000aee0

# .rodata:0x3D | 0x3EC5 | size: 0x3
.obj gap_03_00003EC5_rodata, global
.hidden gap_03_00003EC5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003EC5_rodata

# .rodata:0x40 | 0x3EC8 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_jon_0000aef8, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_jon_0000aef8

# .rodata:0x54 | 0x3EDC | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_jon_0000af0c, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_jon_0000af0c

# .rodata:0x6D | 0x3EF5 | size: 0x3
.obj gap_03_00003EF5_rodata, global
.hidden gap_03_00003EF5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003EF5_rodata

# .rodata:0x70 | 0x3EF8 | size: 0x4
.obj str_N_1_jon_0000af28, local
	.string "N_1"
.endobj str_N_1_jon_0000af28

# .rodata:0x74 | 0x3EFC | size: 0x4
.obj str_Y_1_jon_0000af2c, local
	.string "Y_1"
.endobj str_Y_1_jon_0000af2c

# .rodata:0x78 | 0x3F00 | size: 0x4
.obj str_K_1_jon_0000af30, local
	.string "K_1"
.endobj str_K_1_jon_0000af30

# .rodata:0x7C | 0x3F04 | size: 0x4
.obj str_X_1_jon_0000af34, local
	.string "X_1"
.endobj str_X_1_jon_0000af34

# .rodata:0x80 | 0x3F08 | size: 0x4
.obj str_S_1_jon_0000af38, local
	.string "S_1"
.endobj str_S_1_jon_0000af38

# .rodata:0x84 | 0x3F0C | size: 0x4
.obj str_Q_1_jon_0000af3c, local
	.string "Q_1"
.endobj str_Q_1_jon_0000af3c

# .rodata:0x88 | 0x3F10 | size: 0x5
.obj str_A_2B_jon_0000af40, local
	.string "A_2B"
.endobj str_A_2B_jon_0000af40

# .rodata:0x8D | 0x3F15 | size: 0x3
.obj gap_03_00003F15_rodata, global
.hidden gap_03_00003F15_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003F15_rodata

# .rodata:0x90 | 0x3F18 | size: 0x4
.obj str_D_1_jon_0000af48, local
	.string "D_1"
.endobj str_D_1_jon_0000af48

# .rodata:0x94 | 0x3F1C | size: 0x4
.obj str_A_1_jon_0000af4c, local
	.string "A_1"
.endobj str_A_1_jon_0000af4c

# .rodata:0x98 | 0x3F20 | size: 0x4
.obj str_R_1_jon_0000af50, local
	.string "R_1"
.endobj str_R_1_jon_0000af50

# .rodata:0x9C | 0x3F24 | size: 0x4
.obj str_W_1_jon_0000af54, local
	.string "W_1"
.endobj str_W_1_jon_0000af54

# .rodata:0xA0 | 0x3F28 | size: 0x4
.obj str_T_1_jon_0000af58, local
	.string "T_1"
.endobj str_T_1_jon_0000af58

# .rodata:0xA4 | 0x3F2C | size: 0x9
.obj str_c_bubble_jon_0000af5c, local
	.string "c_bubble"
.endobj str_c_bubble_jon_0000af5c

# .rodata:0xAD | 0x3F35 | size: 0x3
.obj gap_03_00003F35_rodata, global
.hidden gap_03_00003F35_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003F35_rodata

# .rodata:0xB0 | 0x3F38 | size: 0x15
.obj str_SFX_ENM_BUBBLE_FIRE1_jon_0000af68, local
	.string "SFX_ENM_BUBBLE_FIRE1"
.endobj str_SFX_ENM_BUBBLE_FIRE1_jon_0000af68

# .rodata:0xC5 | 0x3F4D | size: 0x3
.obj gap_03_00003F4D_rodata, global
.hidden gap_03_00003F4D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003F4D_rodata

# .rodata:0xC8 | 0x3F50 | size: 0x16
.obj str_SFX_ENM_BUBBLE_SPLIT_jon_0000af80, local
	.string "SFX_ENM_BUBBLE_SPLIT1"
.endobj str_SFX_ENM_BUBBLE_SPLIT_jon_0000af80

# .rodata:0xDE | 0x3F66 | size: 0x2
.obj gap_03_00003F66_rodata, global
.hidden gap_03_00003F66_rodata
	.2byte 0x0000
.endobj gap_03_00003F66_rodata

# .rodata:0xE0 | 0x3F68 | size: 0x15
.obj str_SFX_ENM_BUBBLE_MOVE1_jon_0000af98, local
	.string "SFX_ENM_BUBBLE_MOVE1"
.endobj str_SFX_ENM_BUBBLE_MOVE1_jon_0000af98

# .rodata:0xF5 | 0x3F7D | size: 0x3
.obj gap_03_00003F7D_rodata, global
.hidden gap_03_00003F7D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003F7D_rodata

# .rodata:0xF8 | 0x3F80 | size: 0x5
.obj str_A_1A_jon_0000afb0, local
	.string "A_1A"
.endobj str_A_1A_jon_0000afb0

# .rodata:0xFD | 0x3F85 | size: 0x3
.obj gap_03_00003F85_rodata, global
.hidden gap_03_00003F85_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003F85_rodata

# .rodata:0x100 | 0x3F88 | size: 0x5
.obj str_A_1B_jon_0000afb8, local
	.string "A_1B"
.endobj str_A_1B_jon_0000afb8

# .rodata:0x105 | 0x3F8D | size: 0x3
.obj gap_03_00003F8D_rodata, global
.hidden gap_03_00003F8D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003F8D_rodata

# .rodata:0x108 | 0x3F90 | size: 0x15
.obj str_SFX_ENM_BUBBLE_MOVE2_jon_0000afc0, local
	.string "SFX_ENM_BUBBLE_MOVE2"
.endobj str_SFX_ENM_BUBBLE_MOVE2_jon_0000afc0

# .rodata:0x11D | 0x3FA5 | size: 0x3
.obj gap_03_00003FA5_rodata, global
.hidden gap_03_00003FA5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003FA5_rodata

# .rodata:0x120 | 0x3FA8 | size: 0xC
.obj vec3_jon_0000afd8, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj vec3_jon_0000afd8

# .rodata:0x12C | 0x3FB4 | size: 0x17
.obj str_SFX_ENM_BUBBLE_ATTAC_jon_0000afe4, local
	.string "SFX_ENM_BUBBLE_ATTACK2"
.endobj str_SFX_ENM_BUBBLE_ATTAC_jon_0000afe4

# .rodata:0x143 | 0x3FCB | size: 0x1
.obj gap_03_00003FCB_rodata, global
.hidden gap_03_00003FCB_rodata
	.byte 0x00
.endobj gap_03_00003FCB_rodata

# .rodata:0x144 | 0x3FCC | size: 0x17
.obj str_SFX_ENM_BUBBLE_ATTAC_jon_0000affc, local
	.string "SFX_ENM_BUBBLE_ATTACK3"
.endobj str_SFX_ENM_BUBBLE_ATTAC_jon_0000affc

# .rodata:0x15B | 0x3FE3 | size: 0x1
.obj gap_03_00003FE3_rodata, global
.hidden gap_03_00003FE3_rodata
	.byte 0x00
.endobj gap_03_00003FE3_rodata

# .rodata:0x15C | 0x3FE4 | size: 0x1
.obj zero_jon_0000b014, local
	.byte 0x00
.endobj zero_jon_0000b014

# .rodata:0x15D | 0x3FE5 | size: 0x3
.obj gap_03_00003FE5_rodata, global
.hidden gap_03_00003FE5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003FE5_rodata

# .rodata:0x160 | 0x3FE8 | size: 0xC
.obj str_kemuri_test_jon_0000b018, local
	.string "kemuri_test"
.endobj str_kemuri_test_jon_0000b018

# .rodata:0x16C | 0x3FF4 | size: 0x28
.obj dat_jon_0000b024, local
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
.endobj dat_jon_0000b024

# .rodata:0x194 | 0x401C | size: 0xC
.obj vec3_jon_0000b04c, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj vec3_jon_0000b04c

# .rodata:0x1A0 | 0x4028 | size: 0x17
.obj str_SFX_ENM_BUBBLE_ATTAC_jon_0000b058, local
	.string "SFX_ENM_BUBBLE_ATTACK4"
.endobj str_SFX_ENM_BUBBLE_ATTAC_jon_0000b058

# .rodata:0x1B7 | 0x403F | size: 0x1
.obj gap_03_0000403F_rodata, global
.hidden gap_03_0000403F_rodata
	.byte 0x00
.endobj gap_03_0000403F_rodata

# .rodata:0x1B8 | 0x4040 | size: 0x5
.obj str_A_2A_jon_0000b070, local
	.string "A_2A"
.endobj str_A_2A_jon_0000b070
	.byte 0x00, 0x00, 0x00

# .rodata:0x1C0 | 0x4048 | size: 0x4
.obj zero_jon_0000b078, local
	.float 0
.endobj zero_jon_0000b078

# .rodata:0x1C4 | 0x404C | size: 0x4
.obj float_neg1000_jon_0000b07c, local
	.float -1000
.endobj float_neg1000_jon_0000b07c

# .rodata:0x1C8 | 0x4050 | size: 0x4
.obj float_1_jon_0000b080, local
	.float 1
.endobj float_1_jon_0000b080

# .rodata:0x1CC | 0x4054 | size: 0x4
.obj float_2_jon_0000b084, local
	.float 2
.endobj float_2_jon_0000b084

# .rodata:0x1D0 | 0x4058 | size: 0x4
.obj float_24_jon_0000b088, local
	.float 24
.endobj float_24_jon_0000b088

# .rodata:0x1D4 | 0x405C | size: 0x4
.obj float_15_jon_0000b08c, local
	.float 15
.endobj float_15_jon_0000b08c

# .rodata:0x1D8 | 0x4060 | size: 0x4
.obj float_10_jon_0000b090, local
	.float 10
.endobj float_10_jon_0000b090
	.4byte 0x00000000

# .rodata:0x1E0 | 0x4068 | size: 0x8
.obj double_to_int_jon_0000b098, local
	.double 4503601774854144
.endobj double_to_int_jon_0000b098

# .rodata:0x1E8 | 0x4070 | size: 0x4
.obj float_0p1_jon_0000b0a0, local
	.float 0.1
.endobj float_0p1_jon_0000b0a0

# .rodata:0x1EC | 0x4074 | size: 0x4
.obj gap_03_00004074_rodata, global
.hidden gap_03_00004074_rodata
	.4byte 0x00000000
.endobj gap_03_00004074_rodata

# 0x00035850..0x000372E8 | size: 0x1A98
.data
.balign 8

# .data:0x0 | 0x35850 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x35858 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x3585C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x35860 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x35864 | size: 0x4
.obj gap_04_00035864_data, global
.hidden gap_04_00035864_data
	.4byte 0x00000000
.endobj gap_04_00035864_data

# .data:0x18 | 0x35868 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x35870 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x35874 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x35878 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x35880 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x35884 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x35888 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x3588C | size: 0x4
.obj gap_04_0003588C_data, global
.hidden gap_04_0003588C_data
	.4byte 0x00000000
.endobj gap_04_0003588C_data

# .data:0x40 | 0x35890 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x35898 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x3589C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x358A0 | size: 0xC4
.obj unit_bubble_14_data_358A0, global
	.4byte 0x00000055
	.4byte str_btl_un_bubble_jon_0000aeb8
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
	.4byte str_SFX_ENM_BUBBLE_DAMAG_jon_0000aec8
	.4byte str_SFX_BTL_DAMAGE_FIRE1_jon_0000aee0
	.4byte str_SFX_BTL_DAMAGE_ICE1_jon_0000aef8
	.4byte str_SFX_BTL_DAMAGE_BIRIB_jon_0000af0c
	.4byte 0x00000004
	.4byte regist
	.4byte 0x02000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_bubble_14_data_358A0

# .data:0x114 | 0x35964 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x35969 | size: 0x3
.obj gap_04_00035969_data, global
.hidden gap_04_00035969_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00035969_data

# .data:0x11C | 0x3596C | size: 0x5
.obj defence_attr, local
	.4byte 0x00030101
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x35971 | size: 0x3
.obj gap_04_00035971_data, global
.hidden gap_04_00035971_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00035971_data

# .data:0x124 | 0x35974 | size: 0x16
.obj regist, local
	.4byte 0x325A6964
	.4byte 0x4B640032
	.4byte 0x645A645A
	.4byte 0x645F4B32
	.4byte 0x5A644B64
	.2byte 0x645F
.endobj regist

# .data:0x13A | 0x3598A | size: 0x2
.obj gap_04_0003598A_data, global
.hidden gap_04_0003598A_data
	.2byte 0x0000
.endobj gap_04_0003598A_data

# .data:0x13C | 0x3598C | size: 0x90
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_N_1_jon_0000af28
	.4byte 0x00000002
	.4byte str_Y_1_jon_0000af2c
	.4byte 0x00000009
	.4byte str_Y_1_jon_0000af2c
	.4byte 0x00000005
	.4byte str_K_1_jon_0000af30
	.4byte 0x00000004
	.4byte str_X_1_jon_0000af34
	.4byte 0x00000003
	.4byte str_X_1_jon_0000af34
	.4byte 0x0000001C
	.4byte str_S_1_jon_0000af38
	.4byte 0x0000001D
	.4byte str_Q_1_jon_0000af3c
	.4byte 0x0000001E
	.4byte str_Q_1_jon_0000af3c
	.4byte 0x0000001F
	.4byte str_A_2B_jon_0000af40
	.4byte 0x00000027
	.4byte str_D_1_jon_0000af48
	.4byte 0x00000032
	.4byte str_A_1_jon_0000af4c
	.4byte 0x0000002A
	.4byte str_R_1_jon_0000af50
	.4byte 0x00000028
	.4byte str_W_1_jon_0000af54
	.4byte 0x00000038
	.4byte str_X_1_jon_0000af34
	.4byte 0x00000039
	.4byte str_X_1_jon_0000af34
	.4byte 0x00000041
	.4byte str_T_1_jon_0000af58
	.4byte 0x00000045
	.4byte str_S_1_jon_0000af38
.endobj pose_table

# .data:0x1CC | 0x35A1C | size: 0x20
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

# .data:0x1EC | 0x35A3C | size: 0x98
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_bubble_jon_0000aeb8
	.4byte str_c_bubble_jon_0000af5c
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
	.4byte str_c_bubble_jon_0000af5c
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

# .data:0x284 | 0x35AD4 | size: 0xC0
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

# .data:0x344 | 0x35B94 | size: 0xC0
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

# .data:0x404 | 0x35C54 | size: 0x30
.obj entry_bubble, local
	.4byte unit_bubble_14_data_358A0
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

# .data:0x434 | 0x35C84 | size: 0x9C
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

# .data:0x4D0 | 0x35D20 | size: 0x28
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

# .data:0x4F8 | 0x35D48 | size: 0x40
.obj avoid_fire_event, local
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_FIRE1_jon_0000af68
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2B_jon_0000af40
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00000002
	.4byte 0x00000001
.endobj avoid_fire_event

# .data:0x538 | 0x35D88 | size: 0x19C
.obj damage_fire_explosion_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2B_jon_0000af40
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

# .data:0x6D4 | 0x35F24 | size: 0x18C
.obj friend_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte str_S_1_jon_0000af38
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
	.4byte str_SFX_ENM_BUBBLE_SPLIT_jon_0000af80
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

# .data:0x860 | 0x360B0 | size: 0xCC
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

# .data:0x92C | 0x3617C | size: 0x670
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
	.4byte str_SFX_ENM_BUBBLE_MOVE1_jon_0000af98
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
	.4byte str_A_1A_jon_0000afb0
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
	.4byte str_SFX_ENM_BUBBLE_FIRE1_jon_0000af68
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010005
	.4byte 0x00000004
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1B_jon_0000afb8
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
	.4byte str_SFX_ENM_BUBBLE_FIRE1_jon_0000af68
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1B_jon_0000afb8
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
	.4byte str_A_1B_jon_0000afb8
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
	.4byte str_SFX_ENM_BUBBLE_MOVE2_jon_0000afc0
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
	.4byte str_A_1A_jon_0000afb0
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
	.4byte str_S_1_jon_0000af38
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

# .data:0xF9C | 0x367EC | size: 0x5B4
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
	.4byte str_T_1_jon_0000af58
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_jon_0000af38
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_ATTAC_jon_0000afe4
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
	.4byte str_SFX_ENM_BUBBLE_ATTAC_jon_0000affc
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
	.4byte zero_jon_0000b014
	.4byte str_kemuri_test_jon_0000b018
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

# .data:0x1550 | 0x36DA0 | size: 0x28
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

# .data:0x1578 | 0x36DC8 | size: 0x504
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
	.4byte str_A_1A_jon_0000afb0
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_MOVE1_jon_0000af98
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
	.4byte str_SFX_ENM_BUBBLE_ATTAC_jon_0000b058
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2A_jon_0000b070
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
	.4byte str_SFX_ENM_BUBBLE_ATTAC_jon_0000afe4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2B_jon_0000af40
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
	.4byte str_A_1A_jon_0000afb0
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_BUBBLE_MOVE1_jon_0000af98
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

# .data:0x1A7C | 0x372CC | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x1A94 | 0x372E4 | size: 0x4
.obj gap_04_000372E4_data, global
.hidden gap_04_000372E4_data
	.4byte 0x00000000
.endobj gap_04_000372E4_data

# 0x00000000..0x00000058 | size: 0x58
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x0 | size: 0x28
.obj step, local
	.skip 0x28
.endobj step

# .bss:0x28 | 0x28 | size: 0x28
.obj eff2, local
	.skip 0x28
.endobj eff2

# .bss:0x50 | 0x50 | size: 0x4
.obj eff, local
	.skip 0x4
.endobj eff

# .bss:0x54 | 0x54 | size: 0x4
.obj gap_05_00000054_bss, global
.hidden gap_05_00000054_bss
	.skip 0x4
.endobj gap_05_00000054_bss
