.include "macros.inc"
.file "unit_togekuri.o"

# 0x00005B2C..0x00005E44 | size: 0x318
.text
.balign 4

# .text:0x0 | 0x5B2C | size: 0x118
.fn krb_get_dir, local
/* 00005B2C 00005BF0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 00005B30 00005BF4  7C 08 02 A6 */	mflr r0
/* 00005B34 00005BF8  90 01 00 64 */	stw r0, 0x64(r1)
/* 00005B38 00005BFC  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 00005B3C 00005C00  F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 00005B40 00005C04  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 00005B44 00005C08  F3 C1 00 48 */	psq_st f30, 0x48(r1), 0, qr0
/* 00005B48 00005C0C  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 00005B4C 00005C10  F3 A1 00 38 */	psq_st f29, 0x38(r1), 0, qr0
/* 00005B50 00005C14  DB 81 00 20 */	stfd f28, 0x20(r1)
/* 00005B54 00005C18  F3 81 00 28 */	psq_st f28, 0x28(r1), 0, qr0
/* 00005B58 00005C1C  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 00005B5C 00005C20  7C 7E 1B 78 */	mr r30, r3
/* 00005B60 00005C24  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00005B64 00005C28  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00005B68 00005C2C  4B FF A5 E1 */	bl evtGetFloat
/* 00005B6C 00005C30  FF 80 08 90 */	fmr f28, f1
/* 00005B70 00005C34  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00005B74 00005C38  7F C3 F3 78 */	mr r3, r30
/* 00005B78 00005C3C  4B FF A5 D1 */	bl evtGetFloat
/* 00005B7C 00005C40  FF A0 08 90 */	fmr f29, f1
/* 00005B80 00005C44  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 00005B84 00005C48  7F C3 F3 78 */	mr r3, r30
/* 00005B88 00005C4C  4B FF A5 C1 */	bl evtGetFloat
/* 00005B8C 00005C50  FF C0 08 90 */	fmr f30, f1
/* 00005B90 00005C54  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00005B94 00005C58  7F C3 F3 78 */	mr r3, r30
/* 00005B98 00005C5C  4B FF A5 B1 */	bl evtGetFloat
/* 00005B9C 00005C60  FF E0 08 90 */	fmr f31, f1
/* 00005BA0 00005C64  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00005BA4 00005C68  7F C3 F3 78 */	mr r3, r30
/* 00005BA8 00005C6C  4B FF A5 A1 */	bl evtGetValue
/* 00005BAC 00005C70  3C 80 00 00 */	lis r4, zero_tik_0000cbe8@ha
/* 00005BB0 00005C74  EC 3E E0 28 */	fsubs f1, f30, f28
/* 00005BB4 00005C78  C0 04 00 00 */	lfs f0, zero_tik_0000cbe8@l(r4)
/* 00005BB8 00005C7C  EC 5F E8 28 */	fsubs f2, f31, f29
/* 00005BBC 00005C80  7C 65 1B 78 */	mr r5, r3
/* 00005BC0 00005C84  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 00005BC4 00005C88  40 82 00 20 */	bne .L_00005BE4
/* 00005BC8 00005C8C  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 00005BCC 00005C90  40 82 00 18 */	bne .L_00005BE4
/* 00005BD0 00005C94  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00005BD4 00005C98  7F C3 F3 78 */	mr r3, r30
/* 00005BD8 00005C9C  4B FF A5 71 */	bl evtSetValue
/* 00005BDC 00005CA0  38 60 00 02 */	li r3, 0x2
/* 00005BE0 00005CA4  48 00 00 30 */	b .L_00005C10
.L_00005BE4:
/* 00005BE4 00005CA8  3C 60 00 00 */	lis r3, zero_tik_0000cbe8@ha
/* 00005BE8 00005CAC  C0 63 00 00 */	lfs f3, zero_tik_0000cbe8@l(r3)
/* 00005BEC 00005CB0  FC 80 18 90 */	fmr f4, f3
/* 00005BF0 00005CB4  4B FF A5 59 */	bl angleABf_1
/* 00005BF4 00005CB8  FC 00 08 1E */	fctiwz f0, f1
/* 00005BF8 00005CBC  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00005BFC 00005CC0  7F C3 F3 78 */	mr r3, r30
/* 00005C00 00005CC4  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 00005C04 00005CC8  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 00005C08 00005CCC  4B FF A5 41 */	bl evtSetValue
/* 00005C0C 00005CD0  38 60 00 02 */	li r3, 0x2
.L_00005C10:
/* 00005C10 00005CD4  E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 00005C14 00005CD8  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 00005C18 00005CDC  E3 C1 00 48 */	psq_l f30, 0x48(r1), 0, qr0
/* 00005C1C 00005CE0  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 00005C20 00005CE4  E3 A1 00 38 */	psq_l f29, 0x38(r1), 0, qr0
/* 00005C24 00005CE8  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 00005C28 00005CEC  E3 81 00 28 */	psq_l f28, 0x28(r1), 0, qr0
/* 00005C2C 00005CF0  CB 81 00 20 */	lfd f28, 0x20(r1)
/* 00005C30 00005CF4  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 00005C34 00005CF8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 00005C38 00005CFC  7C 08 03 A6 */	mtlr r0
/* 00005C3C 00005D00  38 21 00 60 */	addi r1, r1, 0x60
/* 00005C40 00005D04  4E 80 00 20 */	blr
.endfn krb_get_dir

# .text:0x118 | 0x5C44 | size: 0x170
.fn krb_comp_dir, local
/* 00005C44 00005D08  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00005C48 00005D0C  7C 08 02 A6 */	mflr r0
/* 00005C4C 00005D10  90 01 00 34 */	stw r0, 0x34(r1)
/* 00005C50 00005D14  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 00005C54 00005D18  F3 E1 00 28 */	psq_st f31, 0x28(r1), 0, qr0
/* 00005C58 00005D1C  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 00005C5C 00005D20  F3 C1 00 18 */	psq_st f30, 0x18(r1), 0, qr0
/* 00005C60 00005D24  FF C0 08 90 */	fmr f30, f1
/* 00005C64 00005D28  FF E0 10 90 */	fmr f31, f2
/* 00005C68 00005D2C  4B FF A4 E1 */	bl hypot
/* 00005C6C 00005D30  FC 20 08 18 */	frsp f1, f1
/* 00005C70 00005D34  3C 60 00 00 */	lis r3, SinTable@ha
/* 00005C74 00005D38  FC 00 FA 10 */	fabs f0, f31
/* 00005C78 00005D3C  38 63 00 00 */	addi r3, r3, SinTable@l
/* 00005C7C 00005D40  38 C0 00 00 */	li r6, 0x0
/* 00005C80 00005D44  38 E0 00 5A */	li r7, 0x5a
/* 00005C84 00005D48  FC 40 08 24 */	fdiv f2, f0, f1
/* 00005C88 00005D4C  38 A0 00 00 */	li r5, 0x0
/* 00005C8C 00005D50  FC 40 10 18 */	frsp f2, f2
/* 00005C90 00005D54  48 00 00 54 */	b .L_00005CE4
.L_00005C94:
/* 00005C94 00005D58  54 C4 04 3E */	clrlwi r4, r6, 16
/* 00005C98 00005D5C  54 E0 04 3E */	clrlwi r0, r7, 16
/* 00005C9C 00005D60  7C 04 00 50 */	subf r0, r4, r0
/* 00005CA0 00005D64  7C 00 0E 70 */	srawi r0, r0, 1
/* 00005CA4 00005D68  7C 00 01 94 */	addze r0, r0
/* 00005CA8 00005D6C  7C 84 02 14 */	add r4, r4, r0
/* 00005CAC 00005D70  54 80 13 BA */	clrlslwi r0, r4, 16, 2
/* 00005CB0 00005D74  7C 03 04 2E */	lfsx f0, r3, r0
/* 00005CB4 00005D78  54 84 04 3E */	clrlwi r4, r4, 16
/* 00005CB8 00005D7C  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 00005CBC 00005D80  40 80 00 08 */	bge .L_00005CC4
/* 00005CC0 00005D84  7C 86 23 78 */	mr r6, r4
.L_00005CC4:
/* 00005CC4 00005D88  54 80 13 BA */	clrlslwi r0, r4, 16, 2
/* 00005CC8 00005D8C  7C 03 04 2E */	lfsx f0, r3, r0
/* 00005CCC 00005D90  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 00005CD0 00005D94  7C 00 00 26 */	mfcr r0
/* 00005CD4 00005D98  54 00 0F FF */	srwi. r0, r0, 31
/* 00005CD8 00005D9C  40 82 00 08 */	bne .L_00005CE0
/* 00005CDC 00005DA0  7C 87 23 78 */	mr r7, r4
.L_00005CE0:
/* 00005CE0 00005DA4  38 A5 00 01 */	addi r5, r5, 0x1
.L_00005CE4:
/* 00005CE4 00005DA8  54 A0 04 3E */	clrlwi r0, r5, 16
/* 00005CE8 00005DAC  28 00 00 07 */	cmplwi r0, 0x7
/* 00005CEC 00005DB0  41 80 FF A8 */	blt .L_00005C94
/* 00005CF0 00005DB4  3C 60 00 00 */	lis r3, SinTable@ha
/* 00005CF4 00005DB8  54 C4 13 BA */	clrlslwi r4, r6, 16, 2
/* 00005CF8 00005DBC  38 63 00 00 */	addi r3, r3, SinTable@l
/* 00005CFC 00005DC0  54 E0 13 BA */	clrlslwi r0, r7, 16, 2
/* 00005D00 00005DC4  7C 23 24 2E */	lfsx f1, r3, r4
/* 00005D04 00005DC8  7C 03 04 2E */	lfsx f0, r3, r0
/* 00005D08 00005DCC  EC 21 10 28 */	fsubs f1, f1, f2
/* 00005D0C 00005DD0  EC 00 10 28 */	fsubs f0, f0, f2
/* 00005D10 00005DD4  FC 20 0A 10 */	fabs f1, f1
/* 00005D14 00005DD8  FC 00 02 10 */	fabs f0, f0
/* 00005D18 00005DDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 00005D1C 00005DE0  40 80 00 0C */	bge .L_00005D28
/* 00005D20 00005DE4  7C C4 33 78 */	mr r4, r6
/* 00005D24 00005DE8  48 00 00 08 */	b .L_00005D2C
.L_00005D28:
/* 00005D28 00005DEC  7C E4 3B 78 */	mr r4, r7
.L_00005D2C:
/* 00005D2C 00005DF0  3C 60 00 00 */	lis r3, zero_tik_0000cbe8@ha
/* 00005D30 00005DF4  C0 03 00 00 */	lfs f0, zero_tik_0000cbe8@l(r3)
/* 00005D34 00005DF8  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 00005D38 00005DFC  40 80 00 18 */	bge .L_00005D50
/* 00005D3C 00005E00  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 00005D40 00005E04  4C 41 13 82 */	cror eq, gt, eq
/* 00005D44 00005E08  40 82 00 0C */	bne .L_00005D50
/* 00005D48 00005E0C  20 04 00 B4 */	subfic r0, r4, 0xb4
/* 00005D4C 00005E10  54 04 04 3E */	clrlwi r4, r0, 16
.L_00005D50:
/* 00005D50 00005E14  3C 60 00 00 */	lis r3, zero_tik_0000cbe8@ha
/* 00005D54 00005E18  C0 03 00 00 */	lfs f0, zero_tik_0000cbe8@l(r3)
/* 00005D58 00005E1C  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 00005D5C 00005E20  40 80 00 10 */	bge .L_00005D6C
/* 00005D60 00005E24  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 00005D64 00005E28  40 80 00 08 */	bge .L_00005D6C
/* 00005D68 00005E2C  38 84 00 B4 */	addi r4, r4, 0xb4
.L_00005D6C:
/* 00005D6C 00005E30  3C 60 00 00 */	lis r3, zero_tik_0000cbe8@ha
/* 00005D70 00005E34  C0 03 00 00 */	lfs f0, zero_tik_0000cbe8@l(r3)
/* 00005D74 00005E38  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 00005D78 00005E3C  4C 41 13 82 */	cror eq, gt, eq
/* 00005D7C 00005E40  40 82 00 14 */	bne .L_00005D90
/* 00005D80 00005E44  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 00005D84 00005E48  40 80 00 0C */	bge .L_00005D90
/* 00005D88 00005E4C  20 04 01 68 */	subfic r0, r4, 0x168
/* 00005D8C 00005E50  54 04 04 3E */	clrlwi r4, r0, 16
.L_00005D90:
/* 00005D90 00005E54  54 83 04 3E */	clrlwi r3, r4, 16
/* 00005D94 00005E58  E3 E1 00 28 */	psq_l f31, 0x28(r1), 0, qr0
/* 00005D98 00005E5C  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 00005D9C 00005E60  E3 C1 00 18 */	psq_l f30, 0x18(r1), 0, qr0
/* 00005DA0 00005E64  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00005DA4 00005E68  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 00005DA8 00005E6C  7C 08 03 A6 */	mtlr r0
/* 00005DAC 00005E70  38 21 00 30 */	addi r1, r1, 0x30
/* 00005DB0 00005E74  4E 80 00 20 */	blr
.endfn krb_comp_dir

# .text:0x288 | 0x5DB4 | size: 0x90
.fn get_attacker_tik_togekuri, global
/* 00005DB4 00005E78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00005DB8 00005E7C  7C 08 02 A6 */	mflr r0
/* 00005DBC 00005E80  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00005DC0 00005E84  90 01 00 14 */	stw r0, 0x14(r1)
/* 00005DC4 00005E88  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00005DC8 00005E8C  7C 7E 1B 78 */	mr r30, r3
/* 00005DCC 00005E90  38 64 00 00 */	addi r3, r4, _battleWorkPointer@l
/* 00005DD0 00005E94  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00005DD4 00005E98  83 FE 00 18 */	lwz r31, 0x18(r30)
/* 00005DD8 00005E9C  80 83 04 20 */	lwz r4, 0x420(r3)
/* 00005DDC 00005EA0  4B FF A3 6D */	bl BattleGetUnitPtr
/* 00005DE0 00005EA4  80 03 00 04 */	lwz r0, 0x4(r3)
/* 00005DE4 00005EA8  2C 00 00 DE */	cmpwi r0, 0xde
/* 00005DE8 00005EAC  40 82 00 18 */	bne .L_00005E00
/* 00005DEC 00005EB0  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00005DF0 00005EB4  7F C3 F3 78 */	mr r3, r30
/* 00005DF4 00005EB8  38 A0 00 00 */	li r5, 0x0
/* 00005DF8 00005EBC  4B FF A3 51 */	bl evtSetValue
/* 00005DFC 00005EC0  48 00 00 30 */	b .L_00005E2C
.L_00005E00:
/* 00005E00 00005EC4  2C 00 00 E0 */	cmpwi r0, 0xe0
/* 00005E04 00005EC8  40 82 00 18 */	bne .L_00005E1C
/* 00005E08 00005ECC  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00005E0C 00005ED0  7F C3 F3 78 */	mr r3, r30
/* 00005E10 00005ED4  38 A0 00 01 */	li r5, 0x1
/* 00005E14 00005ED8  4B FF A3 35 */	bl evtSetValue
/* 00005E18 00005EDC  48 00 00 14 */	b .L_00005E2C
.L_00005E1C:
/* 00005E1C 00005EE0  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00005E20 00005EE4  7F C3 F3 78 */	mr r3, r30
/* 00005E24 00005EE8  38 A0 00 02 */	li r5, 0x2
/* 00005E28 00005EEC  4B FF A3 21 */	bl evtSetValue
.L_00005E2C:
/* 00005E2C 00005EF0  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00005E30 00005EF4  38 60 00 02 */	li r3, 0x2
/* 00005E34 00005EF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00005E38 00005EFC  7C 08 03 A6 */	mtlr r0
/* 00005E3C 00005F00  38 21 00 10 */	addi r1, r1, 0x10
/* 00005E40 00005F04  4E 80 00 20 */	blr
.endfn get_attacker_tik_togekuri

# 0x00004BC8..0x00004D88 | size: 0x1C0
.rodata
.balign 8

# .rodata:0x0 | 0x4BC8 | size: 0x10
.obj str_btl_un_togekuri_tik_0000ca30, local
	.string "btl_un_togekuri"
.endobj str_btl_un_togekuri_tik_0000ca30

# .rodata:0x10 | 0x4BD8 | size: 0x1A
.obj str_SFX_ENM_TOGEKURI_DAM_tik_0000ca40, local
	.string "SFX_ENM_TOGEKURI_DAMAGED1"
.endobj str_SFX_ENM_TOGEKURI_DAM_tik_0000ca40

# .rodata:0x2A | 0x4BF2 | size: 0x2
.obj gap_03_00004BF2_rodata, global
.hidden gap_03_00004BF2_rodata
	.2byte 0x0000
.endobj gap_03_00004BF2_rodata

# .rodata:0x2C | 0x4BF4 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_tik_0000ca5c, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_tik_0000ca5c

# .rodata:0x41 | 0x4C09 | size: 0x3
.obj gap_03_00004C09_rodata, global
.hidden gap_03_00004C09_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004C09_rodata

# .rodata:0x44 | 0x4C0C | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_tik_0000ca74, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_tik_0000ca74

# .rodata:0x58 | 0x4C20 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_tik_0000ca88, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_tik_0000ca88

# .rodata:0x71 | 0x4C39 | size: 0x3
.obj gap_03_00004C39_rodata, global
.hidden gap_03_00004C39_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004C39_rodata

# .rodata:0x74 | 0x4C3C | size: 0x9
.obj str_c_kuribo_tik_0000caa4, local
	.string "c_kuribo"
.endobj str_c_kuribo_tik_0000caa4

# .rodata:0x7D | 0x4C45 | size: 0x3
.obj gap_03_00004C45_rodata, global
.hidden gap_03_00004C45_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004C45_rodata

# .rodata:0x80 | 0x4C48 | size: 0x8
.obj str_TGK_N_1_tik_0000cab0, local
	.string "TGK_N_1"
.endobj str_TGK_N_1_tik_0000cab0

# .rodata:0x88 | 0x4C50 | size: 0x8
.obj str_TGK_Y_1_tik_0000cab8, local
	.string "TGK_Y_1"
.endobj str_TGK_Y_1_tik_0000cab8

# .rodata:0x90 | 0x4C58 | size: 0x8
.obj str_TGK_K_1_tik_0000cac0, local
	.string "TGK_K_1"
.endobj str_TGK_K_1_tik_0000cac0

# .rodata:0x98 | 0x4C60 | size: 0x8
.obj str_TGK_I_1_tik_0000cac8, local
	.string "TGK_I_1"
.endobj str_TGK_I_1_tik_0000cac8

# .rodata:0xA0 | 0x4C68 | size: 0x8
.obj str_TGK_S_1_tik_0000cad0, local
	.string "TGK_S_1"
.endobj str_TGK_S_1_tik_0000cad0

# .rodata:0xA8 | 0x4C70 | size: 0x8
.obj str_TGK_Q_1_tik_0000cad8, local
	.string "TGK_Q_1"
.endobj str_TGK_Q_1_tik_0000cad8

# .rodata:0xB0 | 0x4C78 | size: 0x8
.obj str_TGK_D_1_tik_0000cae0, local
	.string "TGK_D_1"
.endobj str_TGK_D_1_tik_0000cae0

# .rodata:0xB8 | 0x4C80 | size: 0x8
.obj str_TGK_A_1_tik_0000cae8, local
	.string "TGK_A_1"
.endobj str_TGK_A_1_tik_0000cae8

# .rodata:0xC0 | 0x4C88 | size: 0x8
.obj str_TGK_R_2_tik_0000caf0, local
	.string "TGK_R_2"
.endobj str_TGK_R_2_tik_0000caf0

# .rodata:0xC8 | 0x4C90 | size: 0x8
.obj str_TGK_R_1_tik_0000caf8, local
	.string "TGK_R_1"
.endobj str_TGK_R_1_tik_0000caf8

# .rodata:0xD0 | 0x4C98 | size: 0x8
.obj str_TGK_W_1_tik_0000cb00, local
	.string "TGK_W_1"
.endobj str_TGK_W_1_tik_0000cb00

# .rodata:0xD8 | 0x4CA0 | size: 0x8
.obj str_TGK_T_1_tik_0000cb08, local
	.string "TGK_T_1"
.endobj str_TGK_T_1_tik_0000cb08

# .rodata:0xF7 | 0x4CBF | size: 0x1
.obj gap_03_00004CBF_rodata, global
.hidden gap_03_00004CBF_rodata
	.byte 0x00
.endobj gap_03_00004CBF_rodata

# .rodata:0xF8 | 0x4CC0 | size: 0x17
.obj str_SFX_ENM_TOGEKURI_MOV_tik_0000cb28, local
	.string "SFX_ENM_TOGEKURI_MOVE2"
.endobj str_SFX_ENM_TOGEKURI_MOV_tik_0000cb28

# .rodata:0x10F | 0x4CD7 | size: 0x1
.obj gap_03_00004CD7_rodata, global
.hidden gap_03_00004CD7_rodata
	.byte 0x00
.endobj gap_03_00004CD7_rodata

# .rodata:0x110 | 0x4CD8 | size: 0x13
.obj str_SFX_ENM_KURI_JUMP1_tik_0000cb40, local
	.string "SFX_ENM_KURI_JUMP1"
.endobj str_SFX_ENM_KURI_JUMP1_tik_0000cb40

# .rodata:0x123 | 0x4CEB | size: 0x1
.obj gap_03_00004CEB_rodata, global
.hidden gap_03_00004CEB_rodata
	.byte 0x00
.endobj gap_03_00004CEB_rodata

# .rodata:0x124 | 0x4CEC | size: 0x16
.obj str_SFX_ENM_KURI_LANDING_tik_0000cb54, local
	.string "SFX_ENM_KURI_LANDING1"
.endobj str_SFX_ENM_KURI_LANDING_tik_0000cb54

# .rodata:0x13A | 0x4D02 | size: 0x2
.obj gap_03_00004D02_rodata, global
.hidden gap_03_00004D02_rodata
	.2byte 0x0000
.endobj gap_03_00004D02_rodata

# .rodata:0x13C | 0x4D04 | size: 0x1
.obj zero_tik_0000cb6c, local
	.byte 0x00
.endobj zero_tik_0000cb6c

# .rodata:0x13D | 0x4D05 | size: 0x3
.obj gap_03_00004D05_rodata, global
.hidden gap_03_00004D05_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004D05_rodata

# .rodata:0x14B | 0x4D13 | size: 0x1
.obj gap_03_00004D13_rodata, global
.hidden gap_03_00004D13_rodata
	.byte 0x00
.endobj gap_03_00004D13_rodata

# .rodata:0x159 | 0x4D21 | size: 0x3
.obj gap_03_00004D21_rodata, global
.hidden gap_03_00004D21_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004D21_rodata

# .rodata:0x169 | 0x4D31 | size: 0x3
.obj gap_03_00004D31_rodata, global
.hidden gap_03_00004D31_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004D31_rodata

# .rodata:0x187 | 0x4D4F | size: 0x1
.obj gap_03_00004D4F_rodata, global
.hidden gap_03_00004D4F_rodata
	.byte 0x00
.endobj gap_03_00004D4F_rodata

# .rodata:0x188 | 0x4D50 | size: 0x8
.obj str_TGK_A_2_tik_0000cbb8, local
	.string "TGK_A_2"
.endobj str_TGK_A_2_tik_0000cbb8

# .rodata:0x1A3 | 0x4D6B | size: 0x1
.obj gap_03_00004D6B_rodata, global
.hidden gap_03_00004D6B_rodata
	.byte 0x00
.endobj gap_03_00004D6B_rodata

# .rodata:0x1A4 | 0x4D6C | size: 0x13
.obj str_SFX_ENM_KURI_MOVE2_tik_0000cbd4, local
	.string "SFX_ENM_KURI_MOVE2"
.endobj str_SFX_ENM_KURI_MOVE2_tik_0000cbd4
	.byte 0x00

# .rodata:0x1B8 | 0x4D80 | size: 0x4
.obj zero_tik_0000cbe8, local
	.float 0
.endobj zero_tik_0000cbe8

# .rodata:0x1BC | 0x4D84 | size: 0x4
.obj gap_03_00004D84_rodata, global
.hidden gap_03_00004D84_rodata
	.4byte 0x00000000
.endobj gap_03_00004D84_rodata

# 0x000231B0..0x00024250 | size: 0x10A0
.data
.balign 8

# .data:0x0 | 0x231B0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x231B8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x231BC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x231C0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x231C4 | size: 0x4
.obj gap_04_000231C4_data, global
.hidden gap_04_000231C4_data
	.4byte 0x00000000
.endobj gap_04_000231C4_data

# .data:0x18 | 0x231C8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x231D0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x231D4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x231D8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x231E0 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x231E4 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x231E8 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x231EC | size: 0x4
.obj gap_04_000231EC_data, global
.hidden gap_04_000231EC_data
	.4byte 0x00000000
.endobj gap_04_000231EC_data

# .data:0x40 | 0x231F0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x231F8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x231FC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x23200 | size: 0xC4
.obj unit_togekuri_24_data_23200, global
	.4byte 0x00000003
	.4byte str_btl_un_togekuri_tik_0000ca30
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
	.4byte str_SFX_ENM_TOGEKURI_DAM_tik_0000ca40
	.4byte str_SFX_BTL_DAMAGE_FIRE1_tik_0000ca5c
	.4byte str_SFX_BTL_DAMAGE_ICE1_tik_0000ca74
	.4byte str_SFX_BTL_DAMAGE_BIRIB_tik_0000ca88
	.4byte 0x00040000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event_tik_togekuri
	.4byte data_table
.endobj unit_togekuri_24_data_23200

# .data:0x114 | 0x232C4 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x232C9 | size: 0x3
.obj gap_04_000232C9_data, global
.hidden gap_04_000232C9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_000232C9_data

# .data:0x11C | 0x232CC | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x232D1 | size: 0x3
.obj gap_04_000232D1_data, global
.hidden gap_04_000232D1_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_000232D1_data

# .data:0x124 | 0x232D4 | size: 0x16
.obj regist, local
	.4byte 0x646E6464
	.4byte 0x64646464
	.4byte 0x64646464
	.4byte 0x6464646E
	.4byte 0x6E646464
	.2byte 0x6496
.endobj regist

# .data:0x13A | 0x232EA | size: 0x2
.obj gap_04_000232EA_data, global
.hidden gap_04_000232EA_data
	.2byte 0x0000
.endobj gap_04_000232EA_data

# .data:0x13C | 0x232EC | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_togekuri_tik_0000ca30
	.4byte str_c_kuribo_tik_0000caa4
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

# .data:0x188 | 0x23338 | size: 0xC0
.obj weapon_tik_togekuri_attack, global
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
.endobj weapon_tik_togekuri_attack

# .data:0x248 | 0x233F8 | size: 0x98
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_TGK_N_1_tik_0000cab0
	.4byte 0x00000002
	.4byte str_TGK_Y_1_tik_0000cab8
	.4byte 0x00000009
	.4byte str_TGK_Y_1_tik_0000cab8
	.4byte 0x00000005
	.4byte str_TGK_K_1_tik_0000cac0
	.4byte 0x00000004
	.4byte str_TGK_I_1_tik_0000cac8
	.4byte 0x00000003
	.4byte str_TGK_I_1_tik_0000cac8
	.4byte 0x0000001C
	.4byte str_TGK_S_1_tik_0000cad0
	.4byte 0x0000001D
	.4byte str_TGK_Q_1_tik_0000cad8
	.4byte 0x0000001E
	.4byte str_TGK_Q_1_tik_0000cad8
	.4byte 0x0000001F
	.4byte str_TGK_S_1_tik_0000cad0
	.4byte 0x00000027
	.4byte str_TGK_D_1_tik_0000cae0
	.4byte 0x00000032
	.4byte str_TGK_A_1_tik_0000cae8
	.4byte 0x00000029
	.4byte str_TGK_R_2_tik_0000caf0
	.4byte 0x0000002A
	.4byte str_TGK_R_1_tik_0000caf8
	.4byte 0x00000028
	.4byte str_TGK_W_1_tik_0000cb00
	.4byte 0x00000038
	.4byte str_TGK_I_1_tik_0000cac8
	.4byte 0x00000039
	.4byte str_TGK_I_1_tik_0000cac8
	.4byte 0x00000041
	.4byte str_TGK_T_1_tik_0000cb08
	.4byte 0x00000045
	.4byte str_TGK_S_1_tik_0000cad0
.endobj pose_table

# .data:0x2E0 | 0x23490 | size: 0x18
.obj data_table, local
	.4byte 0x00000025
	.4byte dmg_avoid_counter_thorn_head_event_tik
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x5C4 | 0x23774 | size: 0x16C
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

# .data:0x109C | 0x2424C | size: 0x4
.obj gap_04_0002424C_data, global
.hidden gap_04_0002424C_data
	.4byte 0x00000000
.endobj gap_04_0002424C_data
