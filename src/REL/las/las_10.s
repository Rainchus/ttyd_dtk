.include "macros.inc"
.file "las_10.o"

# 0x00004B64..0x00004E70 | size: 0x30C
.text
.balign 4

# .text:0x0 | 0x4B64 | size: 0xA0
.fn make_kagi_tbl, local
/* 00004B64 00004C30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00004B68 00004C34  7C 08 02 A6 */	mflr r0
/* 00004B6C 00004C38  90 01 00 24 */	stw r0, 0x24(r1)
/* 00004B70 00004C3C  BF 41 00 08 */	stmw r26, 0x8(r1)
/* 00004B74 00004C40  7C 7A 1B 78 */	mr r26, r3
/* 00004B78 00004C44  3C 60 00 00 */	lis r3, kagi_tbl@ha
/* 00004B7C 00004C48  3B 80 00 00 */	li r28, 0x0
/* 00004B80 00004C4C  3B C3 00 00 */	addi r30, r3, kagi_tbl@l
/* 00004B84 00004C50  3B E0 00 00 */	li r31, 0x0
/* 00004B88 00004C54  3B 60 00 00 */	li r27, 0x0
/* 00004B8C 00004C58  83 BA 00 18 */	lwz r29, 0x18(r26)
.L_00004B90:
/* 00004B90 00004C5C  38 7B 00 26 */	addi r3, r27, 0x26
/* 00004B94 00004C60  4B FF B5 A9 */	bl pouchCheckItem
/* 00004B98 00004C64  2C 03 00 00 */	cmpwi r3, 0x0
/* 00004B9C 00004C68  40 81 00 14 */	ble .L_00004BB0
/* 00004BA0 00004C6C  38 1B 00 26 */	addi r0, r27, 0x26
/* 00004BA4 00004C70  3B 9C 00 01 */	addi r28, r28, 0x1
/* 00004BA8 00004C74  7C 1E F9 2E */	stwx r0, r30, r31
/* 00004BAC 00004C78  3B FF 00 04 */	addi r31, r31, 0x4
.L_00004BB0:
/* 00004BB0 00004C7C  3B 7B 00 01 */	addi r27, r27, 0x1
/* 00004BB4 00004C80  2C 1B 00 08 */	cmpwi r27, 0x8
/* 00004BB8 00004C84  41 80 FF D8 */	blt .L_00004B90
/* 00004BBC 00004C88  3C 60 00 00 */	lis r3, kagi_tbl@ha
/* 00004BC0 00004C8C  57 80 10 3A */	slwi r0, r28, 2
/* 00004BC4 00004C90  38 A3 00 00 */	addi r5, r3, kagi_tbl@l
/* 00004BC8 00004C94  38 60 FF FF */	li r3, -0x1
/* 00004BCC 00004C98  7C 65 01 2E */	stwx r3, r5, r0
/* 00004BD0 00004C9C  7F 43 D3 78 */	mr r3, r26
/* 00004BD4 00004CA0  80 9D 00 00 */	lwz r4, 0x0(r29)
/* 00004BD8 00004CA4  4B FF B5 65 */	bl evtSetValue
/* 00004BDC 00004CA8  80 9D 00 04 */	lwz r4, 0x4(r29)
/* 00004BE0 00004CAC  7F 43 D3 78 */	mr r3, r26
/* 00004BE4 00004CB0  7F 85 E3 78 */	mr r5, r28
/* 00004BE8 00004CB4  4B FF B5 55 */	bl evtSetValue
/* 00004BEC 00004CB8  BB 41 00 08 */	lmw r26, 0x8(r1)
/* 00004BF0 00004CBC  38 60 00 02 */	li r3, 0x2
/* 00004BF4 00004CC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00004BF8 00004CC4  7C 08 03 A6 */	mtlr r0
/* 00004BFC 00004CC8  38 21 00 20 */	addi r1, r1, 0x20
/* 00004C00 00004CCC  4E 80 00 20 */	blr
.endfn make_kagi_tbl

# .text:0xA0 | 0x4C04 | size: 0x9C
.fn check_party_pos, local
/* 00004C04 00004CD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00004C08 00004CD4  7C 08 02 A6 */	mflr r0
/* 00004C0C 00004CD8  3C 80 00 00 */	lis r4, partyCtrlNo@ha
/* 00004C10 00004CDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 00004C14 00004CE0  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00004C18 00004CE4  7C 7E 1B 78 */	mr r30, r3
/* 00004C1C 00004CE8  38 64 00 00 */	addi r3, r4, partyCtrlNo@l
/* 00004C20 00004CEC  83 FE 00 18 */	lwz r31, 0x18(r30)
/* 00004C24 00004CF0  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00004C28 00004CF4  4B FF B5 15 */	bl partyGetPtr
/* 00004C2C 00004CF8  28 03 00 00 */	cmplwi r3, 0x0
/* 00004C30 00004CFC  40 82 00 1C */	bne .L_00004C4C
/* 00004C34 00004D00  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00004C38 00004D04  7F C3 F3 78 */	mr r3, r30
/* 00004C3C 00004D08  38 A0 00 01 */	li r5, 0x1
/* 00004C40 00004D0C  4B FF B4 FD */	bl evtSetValue
/* 00004C44 00004D10  38 60 00 02 */	li r3, 0x2
/* 00004C48 00004D14  48 00 00 44 */	b .L_00004C8C
.L_00004C4C:
/* 00004C4C 00004D18  3C 80 00 00 */	lis r4, float_360_las_000134b0@ha
/* 00004C50 00004D1C  C0 23 00 5C */	lfs f1, 0x5c(r3)
/* 00004C54 00004D20  C0 04 00 00 */	lfs f0, float_360_las_000134b0@l(r4)
/* 00004C58 00004D24  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 00004C5C 00004D28  4C 41 13 82 */	cror eq, gt, eq
/* 00004C60 00004D2C  40 82 00 18 */	bne .L_00004C78
/* 00004C64 00004D30  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00004C68 00004D34  7F C3 F3 78 */	mr r3, r30
/* 00004C6C 00004D38  38 A0 00 01 */	li r5, 0x1
/* 00004C70 00004D3C  4B FF B4 CD */	bl evtSetValue
/* 00004C74 00004D40  48 00 00 14 */	b .L_00004C88
.L_00004C78:
/* 00004C78 00004D44  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00004C7C 00004D48  7F C3 F3 78 */	mr r3, r30
/* 00004C80 00004D4C  38 A0 00 00 */	li r5, 0x0
/* 00004C84 00004D50  4B FF B4 B9 */	bl evtSetValue
.L_00004C88:
/* 00004C88 00004D54  38 60 00 02 */	li r3, 0x2
.L_00004C8C:
/* 00004C8C 00004D58  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00004C90 00004D5C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00004C94 00004D60  7C 08 03 A6 */	mtlr r0
/* 00004C98 00004D64  38 21 00 10 */	addi r1, r1, 0x10
/* 00004C9C 00004D68  4E 80 00 20 */	blr
.endfn check_party_pos

# .text:0x13C | 0x4CA0 | size: 0x1D0
.fn temae_kesu, local
/* 00004CA0 00004D6C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00004CA4 00004D70  7C 08 02 A6 */	mflr r0
/* 00004CA8 00004D74  38 60 00 04 */	li r3, 0x4
/* 00004CAC 00004D78  90 01 00 24 */	stw r0, 0x24(r1)
/* 00004CB0 00004D7C  BF 81 00 10 */	stmw r28, 0x10(r1)
/* 00004CB4 00004D80  4B FF B4 89 */	bl camGetPtr
/* 00004CB8 00004D84  3C 80 00 00 */	lis r4, str_S_kesu_las_000134b4@ha
/* 00004CBC 00004D88  7C 7D 1B 78 */	mr r29, r3
/* 00004CC0 00004D8C  38 64 00 00 */	addi r3, r4, str_S_kesu_las_000134b4@l
/* 00004CC4 00004D90  38 80 00 01 */	li r4, 0x1
/* 00004CC8 00004D94  4B FF B4 75 */	bl mapGrpFlagOff
/* 00004CCC 00004D98  3C 60 00 00 */	lis r3, str_S11_kabe_las_000134bc@ha
/* 00004CD0 00004D9C  38 80 00 01 */	li r4, 0x1
/* 00004CD4 00004DA0  38 63 00 00 */	addi r3, r3, str_S11_kabe_las_000134bc@l
/* 00004CD8 00004DA4  4B FF B4 65 */	bl mapGrpFlagOff
/* 00004CDC 00004DA8  3C 60 00 00 */	lis r3, str_S112_kabe_las_000134c8@ha
/* 00004CE0 00004DAC  38 80 00 01 */	li r4, 0x1
/* 00004CE4 00004DB0  38 63 00 00 */	addi r3, r3, str_S112_kabe_las_000134c8@l
/* 00004CE8 00004DB4  4B FF B4 55 */	bl mapGrpFlagOff
/* 00004CEC 00004DB8  3C 60 00 00 */	lis r3, str_S113_kabe_las_000134d4@ha
/* 00004CF0 00004DBC  38 80 00 01 */	li r4, 0x1
/* 00004CF4 00004DC0  38 63 00 00 */	addi r3, r3, str_S113_kabe_las_000134d4@l
/* 00004CF8 00004DC4  4B FF B4 45 */	bl mapGrpFlagOff
/* 00004CFC 00004DC8  3C 80 00 00 */	lis r4, float_157p5_las_000134e0@ha
/* 00004D00 00004DCC  C0 3D 01 14 */	lfs f1, 0x114(r29)
/* 00004D04 00004DD0  C0 44 00 00 */	lfs f2, float_157p5_las_000134e0@l(r4)
/* 00004D08 00004DD4  3C 60 00 00 */	lis r3, float_45_las_000134e4@ha
/* 00004D0C 00004DD8  C0 03 00 00 */	lfs f0, float_45_las_000134e4@l(r3)
/* 00004D10 00004DDC  3B A0 00 07 */	li r29, 0x7
/* 00004D14 00004DE0  EC 22 08 2A */	fadds f1, f2, f1
/* 00004D18 00004DE4  EC 01 00 24 */	fdivs f0, f1, f0
/* 00004D1C 00004DE8  FC 00 00 1E */	fctiwz f0, f0
/* 00004D20 00004DEC  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 00004D24 00004DF0  83 C1 00 0C */	lwz r30, 0xc(r1)
/* 00004D28 00004DF4  57 C0 E8 04 */	slwi r0, r30, 29
/* 00004D2C 00004DF8  57 C3 0F FE */	srwi r3, r30, 31
/* 00004D30 00004DFC  7C 03 00 50 */	subf r0, r3, r0
/* 00004D34 00004E00  54 00 18 3E */	rotlwi r0, r0, 3
/* 00004D38 00004E04  7F C0 1A 15 */	add. r30, r0, r3
/* 00004D3C 00004E08  41 82 00 08 */	beq .L_00004D44
/* 00004D40 00004E0C  3B BE FF FF */	subi r29, r30, 0x1
.L_00004D44:
/* 00004D44 00004E10  38 1E FF F9 */	subi r0, r30, 0x7
/* 00004D48 00004E14  3C 60 00 00 */	lis r3, kabe_list_1@ha
/* 00004D4C 00004E18  30 80 FF FF */	subic r4, r0, 0x1
/* 00004D50 00004E1C  57 DF 10 3A */	slwi r31, r30, 2
/* 00004D54 00004E20  38 63 00 00 */	addi r3, r3, kabe_list_1@l
/* 00004D58 00004E24  38 1E 00 01 */	addi r0, r30, 0x1
/* 00004D5C 00004E28  7C 84 21 10 */	subfe r4, r4, r4
/* 00004D60 00004E2C  7C 63 F8 2E */	lwzx r3, r3, r31
/* 00004D64 00004E30  7C 1C 20 78 */	andc r28, r0, r4
/* 00004D68 00004E34  38 80 00 01 */	li r4, 0x1
/* 00004D6C 00004E38  4B FF B3 D1 */	bl mapGrpFlagOn
/* 00004D70 00004E3C  3C 60 00 00 */	lis r3, kabe_list_1@ha
/* 00004D74 00004E40  57 BD 10 3A */	slwi r29, r29, 2
/* 00004D78 00004E44  38 63 00 00 */	addi r3, r3, kabe_list_1@l
/* 00004D7C 00004E48  38 80 00 01 */	li r4, 0x1
/* 00004D80 00004E4C  7C 63 E8 2E */	lwzx r3, r3, r29
/* 00004D84 00004E50  4B FF B3 B9 */	bl mapGrpFlagOn
/* 00004D88 00004E54  3C 60 00 00 */	lis r3, kabe_list_1@ha
/* 00004D8C 00004E58  57 9C 10 3A */	slwi r28, r28, 2
/* 00004D90 00004E5C  38 63 00 00 */	addi r3, r3, kabe_list_1@l
/* 00004D94 00004E60  38 80 00 01 */	li r4, 0x1
/* 00004D98 00004E64  7C 63 E0 2E */	lwzx r3, r3, r28
/* 00004D9C 00004E68  4B FF B3 A1 */	bl mapGrpFlagOn
/* 00004DA0 00004E6C  3C 60 00 00 */	lis r3, kabe_list_2@ha
/* 00004DA4 00004E70  38 80 00 01 */	li r4, 0x1
/* 00004DA8 00004E74  38 63 00 00 */	addi r3, r3, kabe_list_2@l
/* 00004DAC 00004E78  7C 63 F8 2E */	lwzx r3, r3, r31
/* 00004DB0 00004E7C  4B FF B3 8D */	bl mapGrpFlagOn
/* 00004DB4 00004E80  3C 60 00 00 */	lis r3, kabe_list_2@ha
/* 00004DB8 00004E84  38 80 00 01 */	li r4, 0x1
/* 00004DBC 00004E88  38 63 00 00 */	addi r3, r3, kabe_list_2@l
/* 00004DC0 00004E8C  7C 63 E8 2E */	lwzx r3, r3, r29
/* 00004DC4 00004E90  4B FF B3 79 */	bl mapGrpFlagOn
/* 00004DC8 00004E94  3C 60 00 00 */	lis r3, kabe_list_2@ha
/* 00004DCC 00004E98  38 80 00 01 */	li r4, 0x1
/* 00004DD0 00004E9C  38 63 00 00 */	addi r3, r3, kabe_list_2@l
/* 00004DD4 00004EA0  7C 63 E0 2E */	lwzx r3, r3, r28
/* 00004DD8 00004EA4  4B FF B3 65 */	bl mapGrpFlagOn
/* 00004DDC 00004EA8  3C 60 00 00 */	lis r3, kabe_list_3@ha
/* 00004DE0 00004EAC  38 80 00 01 */	li r4, 0x1
/* 00004DE4 00004EB0  38 63 00 00 */	addi r3, r3, kabe_list_3@l
/* 00004DE8 00004EB4  7C 63 F8 2E */	lwzx r3, r3, r31
/* 00004DEC 00004EB8  4B FF B3 51 */	bl mapGrpFlagOn
/* 00004DF0 00004EBC  3C 60 00 00 */	lis r3, kabe_list_3@ha
/* 00004DF4 00004EC0  38 80 00 01 */	li r4, 0x1
/* 00004DF8 00004EC4  38 63 00 00 */	addi r3, r3, kabe_list_3@l
/* 00004DFC 00004EC8  7C 63 E8 2E */	lwzx r3, r3, r29
/* 00004E00 00004ECC  4B FF B3 3D */	bl mapGrpFlagOn
/* 00004E04 00004ED0  3C 60 00 00 */	lis r3, kabe_list_3@ha
/* 00004E08 00004ED4  38 80 00 01 */	li r4, 0x1
/* 00004E0C 00004ED8  38 63 00 00 */	addi r3, r3, kabe_list_3@l
/* 00004E10 00004EDC  7C 63 E0 2E */	lwzx r3, r3, r28
/* 00004E14 00004EE0  4B FF B3 29 */	bl mapGrpFlagOn
/* 00004E18 00004EE4  2C 1E 00 02 */	cmpwi r30, 0x2
/* 00004E1C 00004EE8  41 80 00 3C */	blt .L_00004E58
/* 00004E20 00004EEC  2C 1E 00 04 */	cmpwi r30, 0x4
/* 00004E24 00004EF0  41 81 00 34 */	bgt .L_00004E58
/* 00004E28 00004EF4  3C 60 00 00 */	lis r3, str_S14_hashira_las_000134e8@ha
/* 00004E2C 00004EF8  38 80 00 01 */	li r4, 0x1
/* 00004E30 00004EFC  38 63 00 00 */	addi r3, r3, str_S14_hashira_las_000134e8@l
/* 00004E34 00004F00  4B FF B3 09 */	bl mapGrpFlagOn
/* 00004E38 00004F04  3C 60 00 00 */	lis r3, str_S115_hashira_las_000134f4@ha
/* 00004E3C 00004F08  38 80 00 01 */	li r4, 0x1
/* 00004E40 00004F0C  38 63 00 00 */	addi r3, r3, str_S115_hashira_las_000134f4@l
/* 00004E44 00004F10  4B FF B2 F9 */	bl mapGrpFlagOn
/* 00004E48 00004F14  3C 60 00 00 */	lis r3, str_S116_hashira_las_00013504@ha
/* 00004E4C 00004F18  38 80 00 01 */	li r4, 0x1
/* 00004E50 00004F1C  38 63 00 00 */	addi r3, r3, str_S116_hashira_las_00013504@l
/* 00004E54 00004F20  4B FF B2 E9 */	bl mapGrpFlagOn
.L_00004E58:
/* 00004E58 00004F24  BB 81 00 10 */	lmw r28, 0x10(r1)
/* 00004E5C 00004F28  38 60 00 02 */	li r3, 0x2
/* 00004E60 00004F2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00004E64 00004F30  7C 08 03 A6 */	mtlr r0
/* 00004E68 00004F34  38 21 00 20 */	addi r1, r1, 0x20
/* 00004E6C 00004F38  4E 80 00 20 */	blr
.endfn temae_kesu

# 0x00001380..0x00001AB0 | size: 0x730
.rodata
.balign 8

# .rodata:0x0 | 0x1380 | size: 0xA
.obj str_S_door1_1_las_00012de8, local
	.string "S_door1_1"
.endobj str_S_door1_1_las_00012de8

# .rodata:0xA | 0x138A | size: 0x2
.obj gap_03_0000138A_rodata, global
.hidden gap_03_0000138A_rodata
	.2byte 0x0000
.endobj gap_03_0000138A_rodata

# .rodata:0xC | 0x138C | size: 0xA
.obj str_S_door1_2_las_00012df4, local
	.string "S_door1_2"
.endobj str_S_door1_2_las_00012df4

# .rodata:0x16 | 0x1396 | size: 0x2
.obj gap_03_00001396_rodata, global
.hidden gap_03_00001396_rodata
	.2byte 0x0000
.endobj gap_03_00001396_rodata

# .rodata:0x18 | 0x1398 | size: 0x8
.obj str_S_door2_las_00012e00, local
	.string "S_door2"
.endobj str_S_door2_las_00012e00

# .rodata:0x20 | 0x13A0 | size: 0x8
.obj str_S_door3_las_00012e08, local
	.string "S_door3"
.endobj str_S_door3_las_00012e08

# .rodata:0x28 | 0x13A8 | size: 0x8
.obj str_S_door4_las_00012e10, local
	.string "S_door4"
.endobj str_S_door4_las_00012e10

# .rodata:0x30 | 0x13B0 | size: 0x8
.obj str_S_door5_las_00012e18, local
	.string "S_door5"
.endobj str_S_door5_las_00012e18

# .rodata:0x38 | 0x13B8 | size: 0x8
.obj str_S_door6_las_00012e20, local
	.string "S_door6"
.endobj str_S_door6_las_00012e20

# .rodata:0x40 | 0x13C0 | size: 0x8
.obj str_S_door7_las_00012e28, local
	.string "S_door7"
.endobj str_S_door7_las_00012e28

# .rodata:0x48 | 0x13C8 | size: 0x8
.obj str_S_door8_las_00012e30, local
	.string "S_door8"
.endobj str_S_door8_las_00012e30

# .rodata:0x50 | 0x13D0 | size: 0x8
.obj str_S_door9_las_00012e38, local
	.string "S_door9"
.endobj str_S_door9_las_00012e38

# .rodata:0x58 | 0x13D8 | size: 0x7
.obj str_s_bero_las_00012e40, local
	.string "s_bero"
.endobj str_s_bero_las_00012e40

# .rodata:0x5F | 0x13DF | size: 0x1
.obj gap_03_000013DF_rodata, global
.hidden gap_03_000013DF_rodata
	.byte 0x00
.endobj gap_03_000013DF_rodata

# .rodata:0x60 | 0x13E0 | size: 0x7
.obj str_las_09_las_00012e48, local
	.string "las_09"
.endobj str_las_09_las_00012e48

# .rodata:0x67 | 0x13E7 | size: 0x1
.obj gap_03_000013E7_rodata, global
.hidden gap_03_000013E7_rodata
	.byte 0x00
.endobj gap_03_000013E7_rodata

# .rodata:0x68 | 0x13E8 | size: 0x7
.obj str_n_bero_las_00012e50, local
	.string "n_bero"
.endobj str_n_bero_las_00012e50

# .rodata:0x6F | 0x13EF | size: 0x1
.obj gap_03_000013EF_rodata, global
.hidden gap_03_000013EF_rodata
	.byte 0x00
.endobj gap_03_000013EF_rodata

# .rodata:0x70 | 0x13F0 | size: 0xA
.obj str_nw_bero_1_las_00012e58, local
	.string "nw_bero_1"
.endobj str_nw_bero_1_las_00012e58

# .rodata:0x7A | 0x13FA | size: 0x2
.obj gap_03_000013FA_rodata, global
.hidden gap_03_000013FA_rodata
	.2byte 0x0000
.endobj gap_03_000013FA_rodata

# .rodata:0x7C | 0x13FC | size: 0x7
.obj str_las_11_las_00012e64, local
	.string "las_11"
.endobj str_las_11_las_00012e64

# .rodata:0x83 | 0x1403 | size: 0x1
.obj gap_03_00001403_rodata, global
.hidden gap_03_00001403_rodata
	.byte 0x00
.endobj gap_03_00001403_rodata

# .rodata:0x84 | 0x1404 | size: 0x9
.obj str_e_bero_1_las_00012e6c, local
	.string "e_bero_1"
.endobj str_e_bero_1_las_00012e6c

# .rodata:0x8D | 0x140D | size: 0x3
.obj gap_03_0000140D_rodata, global
.hidden gap_03_0000140D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000140D_rodata

# .rodata:0x90 | 0x1410 | size: 0xA
.obj str_ne_bero_1_las_00012e78, local
	.string "ne_bero_1"
.endobj str_ne_bero_1_las_00012e78

# .rodata:0x9A | 0x141A | size: 0x2
.obj gap_03_0000141A_rodata, global
.hidden gap_03_0000141A_rodata
	.2byte 0x0000
.endobj gap_03_0000141A_rodata

# .rodata:0x9C | 0x141C | size: 0x7
.obj str_las_12_las_00012e84, local
	.string "las_12"
.endobj str_las_12_las_00012e84

# .rodata:0xA3 | 0x1423 | size: 0x1
.obj gap_03_00001423_rodata, global
.hidden gap_03_00001423_rodata
	.byte 0x00
.endobj gap_03_00001423_rodata

# .rodata:0xA4 | 0x1424 | size: 0x9
.obj str_w_bero_1_las_00012e8c, local
	.string "w_bero_1"
.endobj str_w_bero_1_las_00012e8c

# .rodata:0xAD | 0x142D | size: 0x3
.obj gap_03_0000142D_rodata, global
.hidden gap_03_0000142D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000142D_rodata

# .rodata:0xB0 | 0x1430 | size: 0xA
.obj str_sw_bero_1_las_00012e98, local
	.string "sw_bero_1"
.endobj str_sw_bero_1_las_00012e98

# .rodata:0xBA | 0x143A | size: 0x2
.obj gap_03_0000143A_rodata, global
.hidden gap_03_0000143A_rodata
	.2byte 0x0000
.endobj gap_03_0000143A_rodata

# .rodata:0xBC | 0x143C | size: 0x7
.obj str_las_13_las_00012ea4, local
	.string "las_13"
.endobj str_las_13_las_00012ea4

# .rodata:0xC3 | 0x1443 | size: 0x1
.obj gap_03_00001443_rodata, global
.hidden gap_03_00001443_rodata
	.byte 0x00
.endobj gap_03_00001443_rodata

# .rodata:0xC4 | 0x1444 | size: 0xA
.obj str_se_bero_1_las_00012eac, local
	.string "se_bero_1"
.endobj str_se_bero_1_las_00012eac

# .rodata:0xCE | 0x144E | size: 0x2
.obj gap_03_0000144E_rodata, global
.hidden gap_03_0000144E_rodata
	.2byte 0x0000
.endobj gap_03_0000144E_rodata

# .rodata:0xD0 | 0x1450 | size: 0x7
.obj str_las_14_las_00012eb8, local
	.string "las_14"
.endobj str_las_14_las_00012eb8

# .rodata:0xD7 | 0x1457 | size: 0x1
.obj gap_03_00001457_rodata, global
.hidden gap_03_00001457_rodata
	.byte 0x00
.endobj gap_03_00001457_rodata

# .rodata:0xD8 | 0x1458 | size: 0xA
.obj str_nw_bero_2_las_00012ec0, local
	.string "nw_bero_2"
.endobj str_nw_bero_2_las_00012ec0

# .rodata:0xE2 | 0x1462 | size: 0x2
.obj gap_03_00001462_rodata, global
.hidden gap_03_00001462_rodata
	.2byte 0x0000
.endobj gap_03_00001462_rodata

# .rodata:0xE4 | 0x1464 | size: 0x7
.obj str_las_15_las_00012ecc, local
	.string "las_15"
.endobj str_las_15_las_00012ecc

# .rodata:0xEB | 0x146B | size: 0x1
.obj gap_03_0000146B_rodata, global
.hidden gap_03_0000146B_rodata
	.byte 0x00
.endobj gap_03_0000146B_rodata

# .rodata:0xEC | 0x146C | size: 0xA
.obj str_ne_bero_2_las_00012ed4, local
	.string "ne_bero_2"
.endobj str_ne_bero_2_las_00012ed4

# .rodata:0xF6 | 0x1476 | size: 0x2
.obj gap_03_00001476_rodata, global
.hidden gap_03_00001476_rodata
	.2byte 0x0000
.endobj gap_03_00001476_rodata

# .rodata:0xF8 | 0x1478 | size: 0x7
.obj str_las_16_las_00012ee0, local
	.string "las_16"
.endobj str_las_16_las_00012ee0

# .rodata:0xFF | 0x147F | size: 0x1
.obj gap_03_0000147F_rodata, global
.hidden gap_03_0000147F_rodata
	.byte 0x00
.endobj gap_03_0000147F_rodata

# .rodata:0x100 | 0x1480 | size: 0xA
.obj str_sw_bero_2_las_00012ee8, local
	.string "sw_bero_2"
.endobj str_sw_bero_2_las_00012ee8

# .rodata:0x10A | 0x148A | size: 0x2
.obj gap_03_0000148A_rodata, global
.hidden gap_03_0000148A_rodata
	.2byte 0x0000
.endobj gap_03_0000148A_rodata

# .rodata:0x10C | 0x148C | size: 0x7
.obj str_las_17_las_00012ef4, local
	.string "las_17"
.endobj str_las_17_las_00012ef4

# .rodata:0x113 | 0x1493 | size: 0x1
.obj gap_03_00001493_rodata, global
.hidden gap_03_00001493_rodata
	.byte 0x00
.endobj gap_03_00001493_rodata

# .rodata:0x114 | 0x1494 | size: 0xA
.obj str_se_bero_2_las_00012efc, local
	.string "se_bero_2"
.endobj str_se_bero_2_las_00012efc

# .rodata:0x11E | 0x149E | size: 0x2
.obj gap_03_0000149E_rodata, global
.hidden gap_03_0000149E_rodata
	.2byte 0x0000
.endobj gap_03_0000149E_rodata

# .rodata:0x120 | 0x14A0 | size: 0x7
.obj str_las_18_las_00012f08, local
	.string "las_18"
.endobj str_las_18_las_00012f08

# .rodata:0x127 | 0x14A7 | size: 0x1
.obj gap_03_000014A7_rodata, global
.hidden gap_03_000014A7_rodata
	.byte 0x00
.endobj gap_03_000014A7_rodata

# .rodata:0x128 | 0x14A8 | size: 0xA
.obj str_S11_kabe4_las_00012f10, local
	.string "S11_kabe4"
.endobj str_S11_kabe4_las_00012f10

# .rodata:0x132 | 0x14B2 | size: 0x2
.obj gap_03_000014B2_rodata, global
.hidden gap_03_000014B2_rodata
	.2byte 0x0000
.endobj gap_03_000014B2_rodata

# .rodata:0x134 | 0x14B4 | size: 0xA
.obj str_S11_kabe5_las_00012f1c, local
	.string "S11_kabe5"
.endobj str_S11_kabe5_las_00012f1c

# .rodata:0x13E | 0x14BE | size: 0x2
.obj gap_03_000014BE_rodata, global
.hidden gap_03_000014BE_rodata
	.2byte 0x0000
.endobj gap_03_000014BE_rodata

# .rodata:0x140 | 0x14C0 | size: 0xA
.obj str_S14_kabe4_las_00012f28, local
	.string "S14_kabe4"
.endobj str_S14_kabe4_las_00012f28

# .rodata:0x14A | 0x14CA | size: 0x2
.obj gap_03_000014CA_rodata, global
.hidden gap_03_000014CA_rodata
	.2byte 0x0000
.endobj gap_03_000014CA_rodata

# .rodata:0x14C | 0x14CC | size: 0xA
.obj str_S14_kabe3_las_00012f34, local
	.string "S14_kabe3"
.endobj str_S14_kabe3_las_00012f34

# .rodata:0x156 | 0x14D6 | size: 0x2
.obj gap_03_000014D6_rodata, global
.hidden gap_03_000014D6_rodata
	.2byte 0x0000
.endobj gap_03_000014D6_rodata

# .rodata:0x158 | 0x14D8 | size: 0xA
.obj str_S14_kabe2_las_00012f40, local
	.string "S14_kabe2"
.endobj str_S14_kabe2_las_00012f40

# .rodata:0x162 | 0x14E2 | size: 0x2
.obj gap_03_000014E2_rodata, global
.hidden gap_03_000014E2_rodata
	.2byte 0x0000
.endobj gap_03_000014E2_rodata

# .rodata:0x164 | 0x14E4 | size: 0xA
.obj str_S11_kabe1_las_00012f4c, local
	.string "S11_kabe1"
.endobj str_S11_kabe1_las_00012f4c

# .rodata:0x16E | 0x14EE | size: 0x2
.obj gap_03_000014EE_rodata, global
.hidden gap_03_000014EE_rodata
	.2byte 0x0000
.endobj gap_03_000014EE_rodata

# .rodata:0x170 | 0x14F0 | size: 0xA
.obj str_S11_kabe2_las_00012f58, local
	.string "S11_kabe2"
.endobj str_S11_kabe2_las_00012f58

# .rodata:0x17A | 0x14FA | size: 0x2
.obj gap_03_000014FA_rodata, global
.hidden gap_03_000014FA_rodata
	.2byte 0x0000
.endobj gap_03_000014FA_rodata

# .rodata:0x17C | 0x14FC | size: 0xA
.obj str_S11_kabe3_las_00012f64, local
	.string "S11_kabe3"
.endobj str_S11_kabe3_las_00012f64

# .rodata:0x186 | 0x1506 | size: 0x2
.obj gap_03_00001506_rodata, global
.hidden gap_03_00001506_rodata
	.2byte 0x0000
.endobj gap_03_00001506_rodata

# .rodata:0x188 | 0x1508 | size: 0xB
.obj str_S112_kabe4_las_00012f70, local
	.string "S112_kabe4"
.endobj str_S112_kabe4_las_00012f70

# .rodata:0x193 | 0x1513 | size: 0x1
.obj gap_03_00001513_rodata, global
.hidden gap_03_00001513_rodata
	.byte 0x00
.endobj gap_03_00001513_rodata

# .rodata:0x194 | 0x1514 | size: 0xB
.obj str_S112_kabe5_las_00012f7c, local
	.string "S112_kabe5"
.endobj str_S112_kabe5_las_00012f7c

# .rodata:0x19F | 0x151F | size: 0x1
.obj gap_03_0000151F_rodata, global
.hidden gap_03_0000151F_rodata
	.byte 0x00
.endobj gap_03_0000151F_rodata

# .rodata:0x1A0 | 0x1520 | size: 0xB
.obj str_S115_kabe4_las_00012f88, local
	.string "S115_kabe4"
.endobj str_S115_kabe4_las_00012f88

# .rodata:0x1AB | 0x152B | size: 0x1
.obj gap_03_0000152B_rodata, global
.hidden gap_03_0000152B_rodata
	.byte 0x00
.endobj gap_03_0000152B_rodata

# .rodata:0x1AC | 0x152C | size: 0xB
.obj str_S115_kabe3_las_00012f94, local
	.string "S115_kabe3"
.endobj str_S115_kabe3_las_00012f94

# .rodata:0x1B7 | 0x1537 | size: 0x1
.obj gap_03_00001537_rodata, global
.hidden gap_03_00001537_rodata
	.byte 0x00
.endobj gap_03_00001537_rodata

# .rodata:0x1B8 | 0x1538 | size: 0xB
.obj str_S115_kabe2_las_00012fa0, local
	.string "S115_kabe2"
.endobj str_S115_kabe2_las_00012fa0

# .rodata:0x1C3 | 0x1543 | size: 0x1
.obj gap_03_00001543_rodata, global
.hidden gap_03_00001543_rodata
	.byte 0x00
.endobj gap_03_00001543_rodata

# .rodata:0x1C4 | 0x1544 | size: 0xA
.obj str_S12_kabe1_las_00012fac, local
	.string "S12_kabe1"
.endobj str_S12_kabe1_las_00012fac

# .rodata:0x1CE | 0x154E | size: 0x2
.obj gap_03_0000154E_rodata, global
.hidden gap_03_0000154E_rodata
	.2byte 0x0000
.endobj gap_03_0000154E_rodata

# .rodata:0x1D0 | 0x1550 | size: 0xB
.obj str_S112_kabe2_las_00012fb8, local
	.string "S112_kabe2"
.endobj str_S112_kabe2_las_00012fb8

# .rodata:0x1DB | 0x155B | size: 0x1
.obj gap_03_0000155B_rodata, global
.hidden gap_03_0000155B_rodata
	.byte 0x00
.endobj gap_03_0000155B_rodata

# .rodata:0x1DC | 0x155C | size: 0xB
.obj str_S112_kabe3_las_00012fc4, local
	.string "S112_kabe3"
.endobj str_S112_kabe3_las_00012fc4

# .rodata:0x1E7 | 0x1567 | size: 0x1
.obj gap_03_00001567_rodata, global
.hidden gap_03_00001567_rodata
	.byte 0x00
.endobj gap_03_00001567_rodata

# .rodata:0x1E8 | 0x1568 | size: 0xB
.obj str_S113_kabe4_las_00012fd0, local
	.string "S113_kabe4"
.endobj str_S113_kabe4_las_00012fd0

# .rodata:0x1F3 | 0x1573 | size: 0x1
.obj gap_03_00001573_rodata, global
.hidden gap_03_00001573_rodata
	.byte 0x00
.endobj gap_03_00001573_rodata

# .rodata:0x1F4 | 0x1574 | size: 0xB
.obj str_S113_kabe5_las_00012fdc, local
	.string "S113_kabe5"
.endobj str_S113_kabe5_las_00012fdc

# .rodata:0x1FF | 0x157F | size: 0x1
.obj gap_03_0000157F_rodata, global
.hidden gap_03_0000157F_rodata
	.byte 0x00
.endobj gap_03_0000157F_rodata

# .rodata:0x200 | 0x1580 | size: 0xB
.obj str_S116_kabe4_las_00012fe8, local
	.string "S116_kabe4"
.endobj str_S116_kabe4_las_00012fe8

# .rodata:0x20B | 0x158B | size: 0x1
.obj gap_03_0000158B_rodata, global
.hidden gap_03_0000158B_rodata
	.byte 0x00
.endobj gap_03_0000158B_rodata

# .rodata:0x20C | 0x158C | size: 0xB
.obj str_S116_kabe3_las_00012ff4, local
	.string "S116_kabe3"
.endobj str_S116_kabe3_las_00012ff4

# .rodata:0x217 | 0x1597 | size: 0x1
.obj gap_03_00001597_rodata, global
.hidden gap_03_00001597_rodata
	.byte 0x00
.endobj gap_03_00001597_rodata

# .rodata:0x218 | 0x1598 | size: 0xB
.obj str_S116_kabe2_las_00013000, local
	.string "S116_kabe2"
.endobj str_S116_kabe2_las_00013000

# .rodata:0x223 | 0x15A3 | size: 0x1
.obj gap_03_000015A3_rodata, global
.hidden gap_03_000015A3_rodata
	.byte 0x00
.endobj gap_03_000015A3_rodata

# .rodata:0x224 | 0x15A4 | size: 0xB
.obj str_S113_kabe1_las_0001300c, local
	.string "S113_kabe1"
.endobj str_S113_kabe1_las_0001300c

# .rodata:0x22F | 0x15AF | size: 0x1
.obj gap_03_000015AF_rodata, global
.hidden gap_03_000015AF_rodata
	.byte 0x00
.endobj gap_03_000015AF_rodata

# .rodata:0x230 | 0x15B0 | size: 0xB
.obj str_S113_kabe2_las_00013018, local
	.string "S113_kabe2"
.endobj str_S113_kabe2_las_00013018

# .rodata:0x23B | 0x15BB | size: 0x1
.obj gap_03_000015BB_rodata, global
.hidden gap_03_000015BB_rodata
	.byte 0x00
.endobj gap_03_000015BB_rodata

# .rodata:0x23C | 0x15BC | size: 0xB
.obj str_S113_kabe3_las_00013024, local
	.string "S113_kabe3"
.endobj str_S113_kabe3_las_00013024

# .rodata:0x247 | 0x15C7 | size: 0x1
.obj gap_03_000015C7_rodata, global
.hidden gap_03_000015C7_rodata
	.byte 0x00
.endobj gap_03_000015C7_rodata

# .rodata:0x248 | 0x15C8 | size: 0x6
.obj str_A_3_3_las_00013030, local
	.string "A_3_3"
.endobj str_A_3_3_las_00013030

# .rodata:0x24E | 0x15CE | size: 0x2
.obj gap_03_000015CE_rodata, global
.hidden gap_03_000015CE_rodata
	.2byte 0x0000
.endobj gap_03_000015CE_rodata

# .rodata:0x250 | 0x15D0 | size: 0x6
.obj str_A_3_2_las_00013038, local
	.string "A_3_2"
.endobj str_A_3_2_las_00013038

# .rodata:0x256 | 0x15D6 | size: 0x2
.obj gap_03_000015D6_rodata, global
.hidden gap_03_000015D6_rodata
	.2byte 0x0000
.endobj gap_03_000015D6_rodata

# .rodata:0x258 | 0x15D8 | size: 0xC
.obj str_stg8_las_31_las_00013040, local
	.string "stg8_las_31"
.endobj str_stg8_las_31_las_00013040

# .rodata:0x264 | 0x15E4 | size: 0xC
.obj str_stg8_las_32_las_0001304c, local
	.string "stg8_las_32"
.endobj str_stg8_las_32_las_0001304c

# .rodata:0x270 | 0x15F0 | size: 0x1A
.obj str_SFX_STG8_CELESTIAL_S_las_00013058, local
	.string "SFX_STG8_CELESTIAL_SHAKE1"
.endobj str_SFX_STG8_CELESTIAL_S_las_00013058

# .rodata:0x28A | 0x160A | size: 0x2
.obj gap_03_0000160A_rodata, global
.hidden gap_03_0000160A_rodata
	.2byte 0x0000
.endobj gap_03_0000160A_rodata

# .rodata:0x28C | 0x160C | size: 0xD
.obj str_S_hoshihoshi_las_00013074, local
	.string "S_hoshihoshi"
.endobj str_S_hoshihoshi_las_00013074

# .rodata:0x299 | 0x1619 | size: 0x3
.obj gap_03_00001619_rodata, global
.hidden gap_03_00001619_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001619_rodata

# .rodata:0x29C | 0x161C | size: 0x19
.obj str_SFX_STG8_CELESTIAL_M_las_00013084, local
	.string "SFX_STG8_CELESTIAL_MOVE1"
.endobj str_SFX_STG8_CELESTIAL_M_las_00013084

# .rodata:0x2B5 | 0x1635 | size: 0x3
.obj gap_03_00001635_rodata, global
.hidden gap_03_00001635_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001635_rodata

# .rodata:0x2B8 | 0x1638 | size: 0x3
.obj str_en_las_000130a0, local
	.string "en"
.endobj str_en_las_000130a0

# .rodata:0x2BB | 0x163B | size: 0x1
.obj gap_03_0000163B_rodata, global
.hidden gap_03_0000163B_rodata
	.byte 0x00
.endobj gap_03_0000163B_rodata

# .rodata:0x2BC | 0x163C | size: 0xC
.obj str_stg8_las_33_las_000130a4, local
	.string "stg8_las_33"
.endobj str_stg8_las_33_las_000130a4

# .rodata:0x2C8 | 0x1648 | size: 0x18
.obj str_SFX_VOICE_MARIO_FIND_las_000130b0, local
	.string "SFX_VOICE_MARIO_FIND1_2"
.endobj str_SFX_VOICE_MARIO_FIND_las_000130b0

# .rodata:0x2E0 | 0x1660 | size: 0xC
.obj str_stg8_las_34_las_000130c8, local
	.string "stg8_las_34"
.endobj str_stg8_las_34_las_000130c8

# .rodata:0x2EC | 0x166C | size: 0x7
.obj str_las_19_las_000130d4, local
	.string "las_19"
.endobj str_las_19_las_000130d4

# .rodata:0x2F3 | 0x1673 | size: 0x1
.obj gap_03_00001673_rodata, global
.hidden gap_03_00001673_rodata
	.byte 0x00
.endobj gap_03_00001673_rodata

# .rodata:0x2F4 | 0x1674 | size: 0xB
.obj str_chgmap_evt_las_000130dc, local
	.string "chgmap_evt"
.endobj str_chgmap_evt_las_000130dc

# .rodata:0x2FF | 0x167F | size: 0x1
.obj gap_03_0000167F_rodata, global
.hidden gap_03_0000167F_rodata
	.byte 0x00
.endobj gap_03_0000167F_rodata

# .rodata:0x300 | 0x1680 | size: 0x19
.obj str_SFX_STG8_CELESTIAL_M_las_000130e8, local
	.string "SFX_STG8_CELESTIAL_MOVE2"
.endobj str_SFX_STG8_CELESTIAL_M_las_000130e8

# .rodata:0x319 | 0x1699 | size: 0x3
.obj gap_03_00001699_rodata, global
.hidden gap_03_00001699_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001699_rodata

# .rodata:0x31C | 0x169C | size: 0xC
.obj str_stg8_las_35_las_00013104, local
	.string "stg8_las_35"
.endobj str_stg8_las_35_las_00013104

# .rodata:0x328 | 0x16A8 | size: 0xE
.obj str_BGM_STG8_LST2_las_00013110, local
	.string "BGM_STG8_LST2"
.endobj str_BGM_STG8_LST2_las_00013110

# .rodata:0x336 | 0x16B6 | size: 0x2
.obj gap_03_000016B6_rodata, global
.hidden gap_03_000016B6_rodata
	.2byte 0x0000
.endobj gap_03_000016B6_rodata

# .rodata:0x338 | 0x16B8 | size: 0x19
.obj str_SFX_STG8_KEYSTAND_SH_las_00013120, local
	.string "SFX_STG8_KEYSTAND_SHAKE1"
.endobj str_SFX_STG8_KEYSTAND_SH_las_00013120

# .rodata:0x351 | 0x16D1 | size: 0x3
.obj gap_03_000016D1_rodata, global
.hidden gap_03_000016D1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000016D1_rodata

# .rodata:0x354 | 0x16D4 | size: 0x19
.obj str_SFX_STG8_KEYSTAND_RO_las_0001313c, local
	.string "SFX_STG8_KEYSTAND_ROUND1"
.endobj str_SFX_STG8_KEYSTAND_RO_las_0001313c

# .rodata:0x36D | 0x16ED | size: 0x3
.obj gap_03_000016ED_rodata, global
.hidden gap_03_000016ED_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000016ED_rodata

# .rodata:0x370 | 0x16F0 | size: 0xF
.obj str_stg8_las_32_01_las_00013158, local
	.string "stg8_las_32_01"
.endobj str_stg8_las_32_01_las_00013158

# .rodata:0x37F | 0x16FF | size: 0x1
.obj gap_03_000016FF_rodata, global
.hidden gap_03_000016FF_rodata
	.byte 0x00
.endobj gap_03_000016FF_rodata

# .rodata:0x380 | 0x1700 | size: 0x8
.obj str_S_kagi1_las_00013168, local
	.string "S_kagi1"
.endobj str_S_kagi1_las_00013168

# .rodata:0x388 | 0x1708 | size: 0x12
.obj str_SFX_STG8_KEY_SET1_las_00013170, local
	.string "SFX_STG8_KEY_SET1"
.endobj str_SFX_STG8_KEY_SET1_las_00013170

# .rodata:0x39A | 0x171A | size: 0x2
.obj gap_03_0000171A_rodata, global
.hidden gap_03_0000171A_rodata
	.2byte 0x0000
.endobj gap_03_0000171A_rodata

# .rodata:0x39C | 0x171C | size: 0xC
.obj str_A113_daiza1_las_00013184, local
	.string "A113_daiza1"
.endobj str_A113_daiza1_las_00013184

# .rodata:0x3A8 | 0x1728 | size: 0x8
.obj str_S_kagi2_las_00013190, local
	.string "S_kagi2"
.endobj str_S_kagi2_las_00013190

# .rodata:0x3B0 | 0x1730 | size: 0xC
.obj str_A113_daiza2_las_00013198, local
	.string "A113_daiza2"
.endobj str_A113_daiza2_las_00013198

# .rodata:0x3BC | 0x173C | size: 0x8
.obj str_S_kagi3_las_000131a4, local
	.string "S_kagi3"
.endobj str_S_kagi3_las_000131a4

# .rodata:0x3C4 | 0x1744 | size: 0xC
.obj str_A113_daiza3_las_000131ac, local
	.string "A113_daiza3"
.endobj str_A113_daiza3_las_000131ac

# .rodata:0x3D0 | 0x1750 | size: 0x8
.obj str_S_kagi4_las_000131b8, local
	.string "S_kagi4"
.endobj str_S_kagi4_las_000131b8

# .rodata:0x3D8 | 0x1758 | size: 0xC
.obj str_A113_daiza4_las_000131c0, local
	.string "A113_daiza4"
.endobj str_A113_daiza4_las_000131c0

# .rodata:0x3E4 | 0x1764 | size: 0x8
.obj str_S_kagi5_las_000131cc, local
	.string "S_kagi5"
.endobj str_S_kagi5_las_000131cc

# .rodata:0x3EC | 0x176C | size: 0xC
.obj str_A113_daiza5_las_000131d4, local
	.string "A113_daiza5"
.endobj str_A113_daiza5_las_000131d4

# .rodata:0x3F8 | 0x1778 | size: 0x8
.obj str_S_kagi6_las_000131e0, local
	.string "S_kagi6"
.endobj str_S_kagi6_las_000131e0

# .rodata:0x400 | 0x1780 | size: 0xC
.obj str_A113_daiza6_las_000131e8, local
	.string "A113_daiza6"
.endobj str_A113_daiza6_las_000131e8

# .rodata:0x40C | 0x178C | size: 0x8
.obj str_S_kagi7_las_000131f4, local
	.string "S_kagi7"
.endobj str_S_kagi7_las_000131f4

# .rodata:0x414 | 0x1794 | size: 0xC
.obj str_A113_daiza7_las_000131fc, local
	.string "A113_daiza7"
.endobj str_A113_daiza7_las_000131fc

# .rodata:0x420 | 0x17A0 | size: 0x8
.obj str_S_kagi8_las_00013208, local
	.string "S_kagi8"
.endobj str_S_kagi8_las_00013208

# .rodata:0x428 | 0x17A8 | size: 0xC
.obj str_A113_daiza8_las_00013210, local
	.string "A113_daiza8"
.endobj str_A113_daiza8_las_00013210

# .rodata:0x434 | 0x17B4 | size: 0x6
.obj str_mist2_las_0001321c, local
	.string "mist2"
.endobj str_mist2_las_0001321c

# .rodata:0x43A | 0x17BA | size: 0x2
.obj gap_03_000017BA_rodata, global
.hidden gap_03_000017BA_rodata
	.2byte 0x0000
.endobj gap_03_000017BA_rodata

# .rodata:0x43C | 0x17BC | size: 0x1A
.obj str_SFX_STG8_KEYSTAND_AP_las_00013224, local
	.string "SFX_STG8_KEYSTAND_APPEAR2"
.endobj str_SFX_STG8_KEYSTAND_AP_las_00013224

# .rodata:0x456 | 0x17D6 | size: 0x2
.obj gap_03_000017D6_rodata, global
.hidden gap_03_000017D6_rodata
	.2byte 0x0000
.endobj gap_03_000017D6_rodata

# .rodata:0x458 | 0x17D8 | size: 0x7
.obj str_S_kagi_las_00013240, local
	.string "S_kagi"
.endobj str_S_kagi_las_00013240

# .rodata:0x45F | 0x17DF | size: 0x1
.obj gap_03_000017DF_rodata, global
.hidden gap_03_000017DF_rodata
	.byte 0x00
.endobj gap_03_000017DF_rodata

# .rodata:0x460 | 0x17E0 | size: 0xC
.obj str_S113_daiza1_las_00013248, local
	.string "S113_daiza1"
.endobj str_S113_daiza1_las_00013248

# .rodata:0x46C | 0x17EC | size: 0x6
.obj str_eff_1_las_00013254, local
	.string "eff_1"
.endobj str_eff_1_las_00013254

# .rodata:0x472 | 0x17F2 | size: 0x2
.obj gap_03_000017F2_rodata, global
.hidden gap_03_000017F2_rodata
	.2byte 0x0000
.endobj gap_03_000017F2_rodata

# .rodata:0x474 | 0x17F4 | size: 0xC
.obj str_S113_daiza2_las_0001325c, local
	.string "S113_daiza2"
.endobj str_S113_daiza2_las_0001325c

# .rodata:0x480 | 0x1800 | size: 0x6
.obj str_eff_2_las_00013268, local
	.string "eff_2"
.endobj str_eff_2_las_00013268

# .rodata:0x486 | 0x1806 | size: 0x2
.obj gap_03_00001806_rodata, global
.hidden gap_03_00001806_rodata
	.2byte 0x0000
.endobj gap_03_00001806_rodata

# .rodata:0x488 | 0x1808 | size: 0xC
.obj str_S113_daiza3_las_00013270, local
	.string "S113_daiza3"
.endobj str_S113_daiza3_las_00013270

# .rodata:0x494 | 0x1814 | size: 0x6
.obj str_eff_3_las_0001327c, local
	.string "eff_3"
.endobj str_eff_3_las_0001327c

# .rodata:0x49A | 0x181A | size: 0x2
.obj gap_03_0000181A_rodata, global
.hidden gap_03_0000181A_rodata
	.2byte 0x0000
.endobj gap_03_0000181A_rodata

# .rodata:0x49C | 0x181C | size: 0xC
.obj str_S113_daiza4_las_00013284, local
	.string "S113_daiza4"
.endobj str_S113_daiza4_las_00013284

# .rodata:0x4A8 | 0x1828 | size: 0x6
.obj str_eff_4_las_00013290, local
	.string "eff_4"
.endobj str_eff_4_las_00013290

# .rodata:0x4AE | 0x182E | size: 0x2
.obj gap_03_0000182E_rodata, global
.hidden gap_03_0000182E_rodata
	.2byte 0x0000
.endobj gap_03_0000182E_rodata

# .rodata:0x4B0 | 0x1830 | size: 0xC
.obj str_S113_daiza5_las_00013298, local
	.string "S113_daiza5"
.endobj str_S113_daiza5_las_00013298

# .rodata:0x4BC | 0x183C | size: 0x6
.obj str_eff_5_las_000132a4, local
	.string "eff_5"
.endobj str_eff_5_las_000132a4

# .rodata:0x4C2 | 0x1842 | size: 0x2
.obj gap_03_00001842_rodata, global
.hidden gap_03_00001842_rodata
	.2byte 0x0000
.endobj gap_03_00001842_rodata

# .rodata:0x4C4 | 0x1844 | size: 0xC
.obj str_S113_daiza6_las_000132ac, local
	.string "S113_daiza6"
.endobj str_S113_daiza6_las_000132ac

# .rodata:0x4D0 | 0x1850 | size: 0x6
.obj str_eff_6_las_000132b8, local
	.string "eff_6"
.endobj str_eff_6_las_000132b8

# .rodata:0x4D6 | 0x1856 | size: 0x2
.obj gap_03_00001856_rodata, global
.hidden gap_03_00001856_rodata
	.2byte 0x0000
.endobj gap_03_00001856_rodata

# .rodata:0x4D8 | 0x1858 | size: 0xC
.obj str_S113_daiza7_las_000132c0, local
	.string "S113_daiza7"
.endobj str_S113_daiza7_las_000132c0

# .rodata:0x4E4 | 0x1864 | size: 0x6
.obj str_eff_7_las_000132cc, local
	.string "eff_7"
.endobj str_eff_7_las_000132cc

# .rodata:0x4EA | 0x186A | size: 0x2
.obj gap_03_0000186A_rodata, global
.hidden gap_03_0000186A_rodata
	.2byte 0x0000
.endobj gap_03_0000186A_rodata

# .rodata:0x4EC | 0x186C | size: 0xC
.obj str_S113_daiza8_las_000132d4, local
	.string "S113_daiza8"
.endobj str_S113_daiza8_las_000132d4

# .rodata:0x4F8 | 0x1878 | size: 0x6
.obj str_eff_8_las_000132e0, local
	.string "eff_8"
.endobj str_eff_8_las_000132e0

# .rodata:0x4FE | 0x187E | size: 0x2
.obj gap_03_0000187E_rodata, global
.hidden gap_03_0000187E_rodata
	.2byte 0x0000
.endobj gap_03_0000187E_rodata

# .rodata:0x500 | 0x1880 | size: 0xB
.obj str_S_daizadai_las_000132e8, local
	.string "S_daizadai"
.endobj str_S_daizadai_las_000132e8

# .rodata:0x50B | 0x188B | size: 0x1
.obj gap_03_0000188B_rodata, global
.hidden gap_03_0000188B_rodata
	.byte 0x00
.endobj gap_03_0000188B_rodata

# .rodata:0x50C | 0x188C | size: 0x1A
.obj str_SFX_STG8_KEYSTAND_AP_las_000132f4, local
	.string "SFX_STG8_KEYSTAND_APPEAR1"
.endobj str_SFX_STG8_KEYSTAND_AP_las_000132f4

# .rodata:0x526 | 0x18A6 | size: 0x2
.obj gap_03_000018A6_rodata, global
.hidden gap_03_000018A6_rodata
	.2byte 0x0000
.endobj gap_03_000018A6_rodata

# .rodata:0x528 | 0x18A8 | size: 0x8
.obj str_A_kagi1_las_00013310, local
	.string "A_kagi1"
.endobj str_A_kagi1_las_00013310

# .rodata:0x530 | 0x18B0 | size: 0x8
.obj str_A_kagi2_las_00013318, local
	.string "A_kagi2"
.endobj str_A_kagi2_las_00013318

# .rodata:0x538 | 0x18B8 | size: 0x8
.obj str_A_kagi3_las_00013320, local
	.string "A_kagi3"
.endobj str_A_kagi3_las_00013320

# .rodata:0x540 | 0x18C0 | size: 0x8
.obj str_A_kagi4_las_00013328, local
	.string "A_kagi4"
.endobj str_A_kagi4_las_00013328

# .rodata:0x548 | 0x18C8 | size: 0x8
.obj str_A_kagi5_las_00013330, local
	.string "A_kagi5"
.endobj str_A_kagi5_las_00013330

# .rodata:0x550 | 0x18D0 | size: 0x8
.obj str_A_kagi6_las_00013338, local
	.string "A_kagi6"
.endobj str_A_kagi6_las_00013338

# .rodata:0x558 | 0x18D8 | size: 0x8
.obj str_A_kagi7_las_00013340, local
	.string "A_kagi7"
.endobj str_A_kagi7_las_00013340

# .rodata:0x560 | 0x18E0 | size: 0x8
.obj str_A_kagi8_las_00013348, local
	.string "A_kagi8"
.endobj str_A_kagi8_las_00013348

# .rodata:0x568 | 0x18E8 | size: 0x13
.obj str_SFX_STG8_STAR_SET1_las_00013350, local
	.string "SFX_STG8_STAR_SET1"
.endobj str_SFX_STG8_STAR_SET1_las_00013350

# .rodata:0x57B | 0x18FB | size: 0x1
.obj gap_03_000018FB_rodata, global
.hidden gap_03_000018FB_rodata
	.byte 0x00
.endobj gap_03_000018FB_rodata

# .rodata:0x57C | 0x18FC | size: 0x9
.obj str_hosi_off_las_00013364, local
	.string "hosi_off"
.endobj str_hosi_off_las_00013364

# .rodata:0x585 | 0x1905 | size: 0x3
.obj gap_03_00001905_rodata, global
.hidden gap_03_00001905_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001905_rodata

# .rodata:0x588 | 0x1908 | size: 0x8
.obj str_hosi_on_las_00013370, local
	.string "hosi_on"
.endobj str_hosi_on_las_00013370

# .rodata:0x590 | 0x1910 | size: 0xF
.obj str_ret_chgmap_evt_las_00013378, local
	.string "ret_chgmap_evt"
.endobj str_ret_chgmap_evt_las_00013378

# .rodata:0x59F | 0x191F | size: 0x1
.obj gap_03_0000191F_rodata, global
.hidden gap_03_0000191F_rodata
	.byte 0x00
.endobj gap_03_0000191F_rodata

# .rodata:0x5A0 | 0x1920 | size: 0xE
.obj str_ENV_STG8_LAS4_las_00013388, local
	.string "ENV_STG8_LAS4"
.endobj str_ENV_STG8_LAS4_las_00013388

# .rodata:0x5AE | 0x192E | size: 0x2
.obj gap_03_0000192E_rodata, global
.hidden gap_03_0000192E_rodata
	.2byte 0x0000
.endobj gap_03_0000192E_rodata

# .rodata:0x5B0 | 0x1930 | size: 0x9
.obj str_A_daiza1_las_00013398, local
	.string "A_daiza1"
.endobj str_A_daiza1_las_00013398

# .rodata:0x5B9 | 0x1939 | size: 0x3
.obj gap_03_00001939_rodata, global
.hidden gap_03_00001939_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001939_rodata

# .rodata:0x5BC | 0x193C | size: 0xD
.obj str_tenkyugi_evt_las_000133a4, local
	.string "tenkyugi_evt"
.endobj str_tenkyugi_evt_las_000133a4

# .rodata:0x5C9 | 0x1949 | size: 0x3
.obj gap_03_00001949_rodata, global
.hidden gap_03_00001949_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001949_rodata

# .rodata:0x5CC | 0x194C | size: 0x8
.obj str_group19_las_000133b4, local
	.string "group19"
.endobj str_group19_las_000133b4

# .rodata:0x5D4 | 0x1954 | size: 0x8
.obj str_group18_las_000133bc, local
	.string "group18"
.endobj str_group18_las_000133bc

# .rodata:0x5DC | 0x195C | size: 0x8
.obj str_group10_las_000133c4, local
	.string "group10"
.endobj str_group10_las_000133c4

# .rodata:0x5E4 | 0x1964 | size: 0x8
.obj str_group11_las_000133cc, local
	.string "group11"
.endobj str_group11_las_000133cc

# .rodata:0x5EC | 0x196C | size: 0x8
.obj str_group12_las_000133d4, local
	.string "group12"
.endobj str_group12_las_000133d4

# .rodata:0x5F4 | 0x1974 | size: 0x8
.obj str_group13_las_000133dc, local
	.string "group13"
.endobj str_group13_las_000133dc

# .rodata:0x5FC | 0x197C | size: 0x8
.obj str_group14_las_000133e4, local
	.string "group14"
.endobj str_group14_las_000133e4

# .rodata:0x604 | 0x1984 | size: 0xF
.obj str_S11_kabe5_ushi_las_000133ec, local
	.string "S11_kabe5_ushi"
.endobj str_S11_kabe5_ushi_las_000133ec

# .rodata:0x613 | 0x1993 | size: 0x1
.obj gap_03_00001993_rodata, global
.hidden gap_03_00001993_rodata
	.byte 0x00
.endobj gap_03_00001993_rodata

# .rodata:0x614 | 0x1994 | size: 0xF
.obj str_S11_kabe1_ushi_las_000133fc, local
	.string "S11_kabe1_ushi"
.endobj str_S11_kabe1_ushi_las_000133fc

# .rodata:0x623 | 0x19A3 | size: 0x1
.obj gap_03_000019A3_rodata, global
.hidden gap_03_000019A3_rodata
	.byte 0x00
.endobj gap_03_000019A3_rodata

# .rodata:0x624 | 0x19A4 | size: 0x8
.obj str_S11_dan_las_0001340c, local
	.string "S11_dan"
.endobj str_S11_dan_las_0001340c

# .rodata:0x62C | 0x19AC | size: 0xE
.obj str_S112_hashira9_las_00013414, local
	.string "S112_hashira9"
.endobj str_S112_hashira9_las_00013414

# .rodata:0x63A | 0x19BA | size: 0x2
.obj gap_03_000019BA_rodata, global
.hidden gap_03_000019BA_rodata
	.2byte 0x0000
.endobj gap_03_000019BA_rodata

# .rodata:0x63C | 0x19BC | size: 0xF
.obj str_S112_hashira10_las_00013424, local
	.string "S112_hashira10"
.endobj str_S112_hashira10_las_00013424

# .rodata:0x64B | 0x19CB | size: 0x1
.obj gap_03_000019CB_rodata, global
.hidden gap_03_000019CB_rodata
	.byte 0x00
.endobj gap_03_000019CB_rodata

# .rodata:0x64C | 0x19CC | size: 0xE
.obj str_S112_hashira1_las_00013434, local
	.string "S112_hashira1"
.endobj str_S112_hashira1_las_00013434

# .rodata:0x65A | 0x19DA | size: 0x2
.obj gap_03_000019DA_rodata, global
.hidden gap_03_000019DA_rodata
	.2byte 0x0000
.endobj gap_03_000019DA_rodata

# .rodata:0x65C | 0x19DC | size: 0xE
.obj str_S112_hashira2_las_00013444, local
	.string "S112_hashira2"
.endobj str_S112_hashira2_las_00013444

# .rodata:0x66A | 0x19EA | size: 0x2
.obj gap_03_000019EA_rodata, global
.hidden gap_03_000019EA_rodata
	.2byte 0x0000
.endobj gap_03_000019EA_rodata

# .rodata:0x66C | 0x19EC | size: 0xE
.obj str_S112_hashira3_las_00013454, local
	.string "S112_hashira3"
.endobj str_S112_hashira3_las_00013454

# .rodata:0x67A | 0x19FA | size: 0x2
.obj gap_03_000019FA_rodata, global
.hidden gap_03_000019FA_rodata
	.2byte 0x0000
.endobj gap_03_000019FA_rodata

# .rodata:0x67C | 0x19FC | size: 0xE
.obj str_S112_hashira4_las_00013464, local
	.string "S112_hashira4"
.endobj str_S112_hashira4_las_00013464

# .rodata:0x68A | 0x1A0A | size: 0x2
.obj gap_03_00001A0A_rodata, global
.hidden gap_03_00001A0A_rodata
	.2byte 0x0000
.endobj gap_03_00001A0A_rodata

# .rodata:0x68C | 0x1A0C | size: 0x10
.obj str_S112_kabe5_ushi_las_00013474, local
	.string "S112_kabe5_ushi"
.endobj str_S112_kabe5_ushi_las_00013474

# .rodata:0x69C | 0x1A1C | size: 0xA
.obj str_S_112_dan_las_00013484, local
	.string "S_112_dan"
.endobj str_S_112_dan_las_00013484

# .rodata:0x6A6 | 0x1A26 | size: 0x2
.obj gap_03_00001A26_rodata, global
.hidden gap_03_00001A26_rodata
	.2byte 0x0000
.endobj gap_03_00001A26_rodata

# .rodata:0x6A8 | 0x1A28 | size: 0xE
.obj str_S113_hashira6_las_00013490, local
	.string "S113_hashira6"
.endobj str_S113_hashira6_las_00013490

# .rodata:0x6B6 | 0x1A36 | size: 0x2
.obj gap_03_00001A36_rodata, global
.hidden gap_03_00001A36_rodata
	.2byte 0x0000
.endobj gap_03_00001A36_rodata

# .rodata:0x6B8 | 0x1A38 | size: 0xE
.obj str_S113_hashira5_las_000134a0, local
	.string "S113_hashira5"
.endobj str_S113_hashira5_las_000134a0
	.2byte 0x0000

# .rodata:0x6C8 | 0x1A48 | size: 0x4
.obj float_360_las_000134b0, local
	.float 360
.endobj float_360_las_000134b0

# .rodata:0x6CC | 0x1A4C | size: 0x7
.obj str_S_kesu_las_000134b4, local
	.string "S_kesu"
.endobj str_S_kesu_las_000134b4

# .rodata:0x6D3 | 0x1A53 | size: 0x1
.obj gap_03_00001A53_rodata, global
.hidden gap_03_00001A53_rodata
	.byte 0x00
.endobj gap_03_00001A53_rodata

# .rodata:0x6D4 | 0x1A54 | size: 0x9
.obj str_S11_kabe_las_000134bc, local
	.string "S11_kabe"
.endobj str_S11_kabe_las_000134bc

# .rodata:0x6DD | 0x1A5D | size: 0x3
.obj gap_03_00001A5D_rodata, global
.hidden gap_03_00001A5D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001A5D_rodata

# .rodata:0x6E0 | 0x1A60 | size: 0xA
.obj str_S112_kabe_las_000134c8, local
	.string "S112_kabe"
.endobj str_S112_kabe_las_000134c8

# .rodata:0x6EA | 0x1A6A | size: 0x2
.obj gap_03_00001A6A_rodata, global
.hidden gap_03_00001A6A_rodata
	.2byte 0x0000
.endobj gap_03_00001A6A_rodata

# .rodata:0x6EC | 0x1A6C | size: 0xA
.obj str_S113_kabe_las_000134d4, local
	.string "S113_kabe"
.endobj str_S113_kabe_las_000134d4
	.2byte 0x0000

# .rodata:0x6F8 | 0x1A78 | size: 0x4
.obj float_157p5_las_000134e0, local
	.float 157.5
.endobj float_157p5_las_000134e0

# .rodata:0x6FC | 0x1A7C | size: 0x4
.obj float_45_las_000134e4, local
	.float 45
.endobj float_45_las_000134e4

# .rodata:0x700 | 0x1A80 | size: 0xC
.obj str_S14_hashira_las_000134e8, local
	.string "S14_hashira"
.endobj str_S14_hashira_las_000134e8

# .rodata:0x70C | 0x1A8C | size: 0xD
.obj str_S115_hashira_las_000134f4, local
	.string "S115_hashira"
.endobj str_S115_hashira_las_000134f4

# .rodata:0x719 | 0x1A99 | size: 0x3
.obj gap_03_00001A99_rodata, global
.hidden gap_03_00001A99_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001A99_rodata

# .rodata:0x71C | 0x1A9C | size: 0xD
.obj str_S116_hashira_las_00013504, local
	.string "S116_hashira"
.endobj str_S116_hashira_las_00013504

# .rodata:0x729 | 0x1AA9 | size: 0x7
.obj gap_03_00001AA9_rodata, global
.hidden gap_03_00001AA9_rodata
	.4byte 0x00000000
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001AA9_rodata

# 0x000074F8..0x0000A0E0 | size: 0x2BE8
.data
.balign 8

# .data:0x0 | 0x74F8 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x7500 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x7504 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x7508 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x750C | size: 0x4
.obj gap_04_0000750C_data, global
.hidden gap_04_0000750C_data
	.4byte 0x00000000
.endobj gap_04_0000750C_data

# .data:0x18 | 0x7510 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x7518 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x751C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x7520 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x7528 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x752C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x7530 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x7534 | size: 0x4
.obj gap_04_00007534_data, global
.hidden gap_04_00007534_data
	.4byte 0x00000000
.endobj gap_04_00007534_data

# .data:0x40 | 0x7538 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x7540 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x7544 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x7548 | size: 0x58
.obj s_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C0E
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door1_1_las_00012de8
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door1_2_las_00012df4
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj s_door_close

# .data:0xA8 | 0x75A0 | size: 0x58
.obj s_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78F2
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door1_1_las_00012de8
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door1_2_las_00012df4
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj s_door_open

# .data:0x100 | 0x75F8 | size: 0x30
.obj nw_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door2_las_00012e00
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nw_door_close

# .data:0x130 | 0x7628 | size: 0x30
.obj nw_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78B9
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door2_las_00012e00
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nw_door_open

# .data:0x160 | 0x7658 | size: 0x30
.obj ne_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78B9
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door3_las_00012e08
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj ne_door_close

# .data:0x190 | 0x7688 | size: 0x30
.obj ne_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door3_las_00012e08
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj ne_door_open

# .data:0x1C0 | 0x76B8 | size: 0x30
.obj sw_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_door4_las_00012e10
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj sw_door_close

# .data:0x1F0 | 0x76E8 | size: 0x30
.obj sw_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78B9
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_door4_las_00012e10
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj sw_door_open

# .data:0x220 | 0x7718 | size: 0x30
.obj se_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78B9
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door5_las_00012e18
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj se_door_close

# .data:0x250 | 0x7748 | size: 0x30
.obj se_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door5_las_00012e18
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj se_door_open

# .data:0x280 | 0x7778 | size: 0x30
.obj nw2_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door6_las_00012e20
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nw2_door_close

# .data:0x2B0 | 0x77A8 | size: 0x30
.obj nw2_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78B9
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door6_las_00012e20
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nw2_door_open

# .data:0x2E0 | 0x77D8 | size: 0x30
.obj ne2_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78B9
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door7_las_00012e28
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj ne2_door_close

# .data:0x310 | 0x7808 | size: 0x30
.obj ne2_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door7_las_00012e28
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj ne2_door_open

# .data:0x340 | 0x7838 | size: 0x30
.obj sw2_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door8_las_00012e30
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj sw2_door_close

# .data:0x370 | 0x7868 | size: 0x30
.obj sw2_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78B9
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door8_las_00012e30
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj sw2_door_open

# .data:0x3A0 | 0x7898 | size: 0x30
.obj se2_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78B9
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door9_las_00012e38
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj se2_door_close

# .data:0x3D0 | 0x78C8 | size: 0x30
.obj se2_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door9_las_00012e38
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj se2_door_open

# .data:0x400 | 0x78F8 | size: 0x258
.obj bero_entry_data, local
	.4byte str_s_bero_las_00012e40
	.4byte 0x00010006
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_las_09_las_00012e48
	.4byte str_n_bero_las_00012e50
	.4byte 0x00050005
	.4byte s_door_close
	.4byte s_door_open
	.4byte str_nw_bero_1_las_00012e58
	.4byte 0x00010001
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_las_11_las_00012e64
	.4byte str_e_bero_1_las_00012e6c
	.4byte 0x00050005
	.4byte nw_door_close
	.4byte nw_door_open
	.4byte str_ne_bero_1_las_00012e78
	.4byte 0x00010001
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_las_12_las_00012e84
	.4byte str_w_bero_1_las_00012e8c
	.4byte 0x00050005
	.4byte ne_door_close
	.4byte ne_door_open
	.4byte str_sw_bero_1_las_00012e98
	.4byte 0x00010001
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_las_13_las_00012ea4
	.4byte str_e_bero_1_las_00012e6c
	.4byte 0x00050005
	.4byte sw_door_close
	.4byte sw_door_open
	.4byte str_se_bero_1_las_00012eac
	.4byte 0x00010001
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_las_14_las_00012eb8
	.4byte str_w_bero_1_las_00012e8c
	.4byte 0x00050005
	.4byte se_door_close
	.4byte se_door_open
	.4byte str_nw_bero_2_las_00012ec0
	.4byte 0x00010001
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_las_15_las_00012ecc
	.4byte str_e_bero_1_las_00012e6c
	.4byte 0x00050005
	.4byte nw2_door_close
	.4byte nw2_door_open
	.4byte str_ne_bero_2_las_00012ed4
	.4byte 0x00010001
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_las_16_las_00012ee0
	.4byte str_w_bero_1_las_00012e8c
	.4byte 0x00050005
	.4byte ne2_door_close
	.4byte ne2_door_open
	.4byte str_sw_bero_2_las_00012ee8
	.4byte 0x00010001
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_las_17_las_00012ef4
	.4byte str_e_bero_1_las_00012e6c
	.4byte 0x00050005
	.4byte sw2_door_close
	.4byte sw2_door_open
	.4byte str_se_bero_2_las_00012efc
	.4byte 0x00010001
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_las_18_las_00012f08
	.4byte str_w_bero_1_las_00012e8c
	.4byte 0x00050005
	.4byte se2_door_close
	.4byte se2_door_open
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

# .data:0x658 | 0x7B50 | size: 0x20
.obj kabe_list_1, local
	.4byte str_S11_kabe4_las_00012f10
	.4byte str_S11_kabe5_las_00012f1c
	.4byte str_S14_kabe4_las_00012f28
	.4byte str_S14_kabe3_las_00012f34
	.4byte str_S14_kabe2_las_00012f40
	.4byte str_S11_kabe1_las_00012f4c
	.4byte str_S11_kabe2_las_00012f58
	.4byte str_S11_kabe3_las_00012f64
.endobj kabe_list_1

# .data:0x678 | 0x7B70 | size: 0x20
.obj kabe_list_2, local
	.4byte str_S112_kabe4_las_00012f70
	.4byte str_S112_kabe5_las_00012f7c
	.4byte str_S115_kabe4_las_00012f88
	.4byte str_S115_kabe3_las_00012f94
	.4byte str_S115_kabe2_las_00012fa0
	.4byte str_S12_kabe1_las_00012fac
	.4byte str_S112_kabe2_las_00012fb8
	.4byte str_S112_kabe3_las_00012fc4
.endobj kabe_list_2

# .data:0x698 | 0x7B90 | size: 0x20
.obj kabe_list_3, local
	.4byte str_S113_kabe4_las_00012fd0
	.4byte str_S113_kabe5_las_00012fdc
	.4byte str_S116_kabe4_las_00012fe8
	.4byte str_S116_kabe3_las_00012ff4
	.4byte str_S116_kabe2_las_00013000
	.4byte str_S113_kabe1_las_0001300c
	.4byte str_S113_kabe2_las_00013018
	.4byte str_S113_kabe3_las_00013024
.endobj kabe_list_3

# .data:0x6B8 | 0x7BB0 | size: 0x30
.obj las_10_temae_kabe, local
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte temae_kesu
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj las_10_temae_kabe

# .data:0x6E8 | 0x7BE0 | size: 0x2D8
.obj first_evt, local
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_get_name_hitobj_ride
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_A_3_3_las_00013030
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_A_3_2_las_00013038
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_mario_hello_party
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_party_use_check
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte check_party_pos
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x00000061
	.4byte 0x00000168
	.4byte 0x0000002B
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFFD8
	.4byte 0x0000004F
	.4byte 0x0000003C
	.4byte 0x0001005B
	.4byte evt_mario_adjust_dir
	.4byte 0x0001000B
	.4byte 0xFAA2B580
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFFC9
	.4byte 0x0000006B
	.4byte 0x00000050
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x0000012C
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg8_las_31_las_00013040
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x00000212
	.4byte 0x00000284
	.4byte 0x00000000
	.4byte 0x00000230
	.4byte 0x0000005F
	.4byte 0x00000BB8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000BB8
	.4byte 0x0001000A
	.4byte 0x00000BB8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFE34
	.4byte 0x00000361
	.4byte 0x00000252
	.4byte 0x00000000
	.4byte 0x000001C7
	.4byte 0xFFFFFF80
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_set_reardir
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg8_las_32_las_0001304c
	.4byte 0x00020032
	.4byte 0xF8406C6A
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj first_evt

# .data:0x9C0 | 0x7EB8 | size: 0x4DC
.obj tenkyugi_evt, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_bgmoff_f
	.4byte 0x00000200
	.4byte 0x00000BB8
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG8_CELESTIAL_S_las_00013058
	.4byte 0xFE363C8A
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A8A
	.4byte 0xF24A7A80
	.4byte 0x000004B0
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8A
	.4byte 0x0001000A
	.4byte 0x000004B0
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x000001A9
	.4byte 0x00000313
	.4byte 0x00000000
	.4byte 0x00000212
	.4byte 0x0000005F
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0007005B
	.4byte evt_mapobj_color
	.4byte 0x00000001
	.4byte str_S_hoshihoshi_las_00013074
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_hoshihoshi_las_00013074
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG8_CELESTIAL_M_las_00013084
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x000000FF
	.4byte 0x000003E8
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0007005B
	.4byte evt_mapobj_color
	.4byte 0x00000001
	.4byte str_S_hoshihoshi_las_00013074
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_en_las_000130a0
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x000003E8
	.4byte 0x00000BB8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF25A1A80
	.4byte 0x0003005B
	.4byte evt_map_set_playrate
	.4byte str_en_las_000130a0
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_map_set_playrate
	.4byte str_en_las_000130a0
	.4byte 0xF24A7E80
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF83
	.4byte 0x0000023F
	.4byte 0x00000127
	.4byte 0xFFFFFF83
	.4byte 0x0000023F
	.4byte 0x0000005F
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000007D
	.4byte 0x0000023F
	.4byte 0x00000127
	.4byte 0x0000007D
	.4byte 0x0000023F
	.4byte 0x0000005F
	.4byte 0x00001388
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00001388
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFFC9
	.4byte 0x00000190
	.4byte 0x0000003C
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_mario_set_party
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFFE7
	.4byte 0x00000190
	.4byte 0x00000050
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000200
	.4byte 0x0004005B
	.4byte evt_party_dispflg_onoff
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_set_dispdir
	.4byte 0x000000B4
	.4byte 0x0003005B
	.4byte evt_party_set_dispdir
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x0001005B
	.4byte evt_mario_adjust_dir
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000200
	.4byte 0x0004005B
	.4byte evt_party_dispflg_onoff
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00000186
	.4byte 0x00000000
	.4byte 0x000001C2
	.4byte 0x0000005F
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg8_las_33_las_000130a4
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG8_CELESTIAL_S_las_00013058
	.4byte 0xFE363C8A
	.4byte 0x00010005
	.4byte 0x00000014
	.4byte 0x00020019
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A8A
	.4byte 0xF24A7A80
	.4byte 0x000001F4
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8A
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_FIND_las_000130b0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
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
	.4byte 0x0000003C
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
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
	.4byte 0x0000003C
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg8_las_34_las_000130c8
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_las_19_las_000130d4
	.4byte str_chgmap_evt_las_000130dc
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj tenkyugi_evt

# .data:0xE9C | 0x8394 | size: 0x218
.obj tenkyugi_evt2, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG8_CELESTIAL_M_las_000130e8
	.4byte 0x00000000
	.4byte 0x00000190
	.4byte 0xFFFFFF6A
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte evt_snd_sfx_dist
	.4byte 0xFE363C8F
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_hoshihoshi_las_00013074
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_en_las_000130a0
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000200
	.4byte 0x0004005B
	.4byte evt_party_dispflg_onoff
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_set_dispdir
	.4byte 0x000000B4
	.4byte 0x0003005B
	.4byte evt_party_set_dispdir
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_cam_road_reset
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000200
	.4byte 0x0004005B
	.4byte evt_party_dispflg_onoff
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00000186
	.4byte 0x00000000
	.4byte 0x000001C2
	.4byte 0x0000005F
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFFC9
	.4byte 0x00000190
	.4byte 0x0000003C
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFFE7
	.4byte 0x00000190
	.4byte 0x00000050
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG8_CELESTIAL_S_las_00013058
	.4byte 0xFE363C8A
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24A7A8A
	.4byte 0x00010005
	.4byte 0x00000004
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7D80
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x000003E8
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8A
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg8_las_35_las_00013104
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000186
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0004005B
	.4byte evt_snd_bgmon_f
	.4byte 0x00000300
	.4byte str_BGM_STG8_LST2_las_00013110
	.4byte 0x000007D0
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj tenkyugi_evt2

# .data:0x10B4 | 0x85AC | size: 0x114
.obj kagi_rotate, local
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte 0xFE363C81
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG8_KEYSTAND_SH_las_00013120
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A8A
	.4byte 0xF24A7A80
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C80
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG8_KEYSTAND_RO_las_0001313c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C88
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x000003E8
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte 0xFE363C89
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C88
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kagi_rotate

# .data:0x11C8 | 0x86C0 | size: 0x24
.obj kagi_tbl, local
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFFF
.endobj kagi_tbl

# .data:0x11EC | 0x86E4 | size: 0x140
.obj kagi1_evt, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte make_kagi_tbl
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0002001B
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_win_item_select
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_32_01_las_00013158
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_pouch_remove_item
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_kagi1_las_00013168
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG8_KEY_SET1_las_00013170
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_S_kagi1_las_00013168
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_A113_daiza1_las_00013184
	.4byte 0x0001005E
	.4byte kagi_rotate
	.4byte 0x00020032
	.4byte 0xF8406C6B
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xF5DE05E2
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF5DE05E2
	.4byte 0x00000008
	.4byte 0x0001005E
	.4byte tenkyugi_evt
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kagi1_evt

# .data:0x132C | 0x8824 | size: 0x140
.obj kagi2_evt, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte make_kagi_tbl
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0002001B
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_win_item_select
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_32_01_las_00013158
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_pouch_remove_item
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_kagi2_las_00013190
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG8_KEY_SET1_las_00013170
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_S_kagi2_las_00013190
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_A113_daiza2_las_00013198
	.4byte 0x0001005E
	.4byte kagi_rotate
	.4byte 0x00020032
	.4byte 0xF8406C6C
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xF5DE05E2
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF5DE05E2
	.4byte 0x00000008
	.4byte 0x0001005E
	.4byte tenkyugi_evt
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kagi2_evt

# .data:0x146C | 0x8964 | size: 0x140
.obj kagi3_evt, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte make_kagi_tbl
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0002001B
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_win_item_select
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_32_01_las_00013158
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_pouch_remove_item
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_kagi3_las_000131a4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG8_KEY_SET1_las_00013170
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_S_kagi3_las_000131a4
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_A113_daiza3_las_000131ac
	.4byte 0x0001005E
	.4byte kagi_rotate
	.4byte 0x00020032
	.4byte 0xF8406C6D
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xF5DE05E2
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF5DE05E2
	.4byte 0x00000008
	.4byte 0x0001005E
	.4byte tenkyugi_evt
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kagi3_evt

# .data:0x15AC | 0x8AA4 | size: 0x140
.obj kagi4_evt, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte make_kagi_tbl
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0002001B
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_win_item_select
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_32_01_las_00013158
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_pouch_remove_item
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_kagi4_las_000131b8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG8_KEY_SET1_las_00013170
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_S_kagi4_las_000131b8
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_A113_daiza4_las_000131c0
	.4byte 0x0001005E
	.4byte kagi_rotate
	.4byte 0x00020032
	.4byte 0xF8406C6E
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xF5DE05E2
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF5DE05E2
	.4byte 0x00000008
	.4byte 0x0001005E
	.4byte tenkyugi_evt
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kagi4_evt

# .data:0x16EC | 0x8BE4 | size: 0x140
.obj kagi5_evt, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte make_kagi_tbl
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0002001B
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_win_item_select
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_32_01_las_00013158
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_pouch_remove_item
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_kagi5_las_000131cc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG8_KEY_SET1_las_00013170
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_S_kagi5_las_000131cc
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_A113_daiza5_las_000131d4
	.4byte 0x0001005E
	.4byte kagi_rotate
	.4byte 0x00020032
	.4byte 0xF8406C6F
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xF5DE05E2
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF5DE05E2
	.4byte 0x00000008
	.4byte 0x0001005E
	.4byte tenkyugi_evt
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kagi5_evt

# .data:0x182C | 0x8D24 | size: 0x140
.obj kagi6_evt, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte make_kagi_tbl
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0002001B
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_win_item_select
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_32_01_las_00013158
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_pouch_remove_item
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_kagi6_las_000131e0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG8_KEY_SET1_las_00013170
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_S_kagi6_las_000131e0
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_A113_daiza6_las_000131e8
	.4byte 0x0001005E
	.4byte kagi_rotate
	.4byte 0x00020032
	.4byte 0xF8406C70
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xF5DE05E2
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF5DE05E2
	.4byte 0x00000008
	.4byte 0x0001005E
	.4byte tenkyugi_evt
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kagi6_evt

# .data:0x196C | 0x8E64 | size: 0x140
.obj kagi7_evt, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte make_kagi_tbl
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0002001B
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_win_item_select
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_32_01_las_00013158
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_pouch_remove_item
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_kagi7_las_000131f4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG8_KEY_SET1_las_00013170
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_S_kagi7_las_000131f4
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_A113_daiza7_las_000131fc
	.4byte 0x0001005E
	.4byte kagi_rotate
	.4byte 0x00020032
	.4byte 0xF8406C71
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xF5DE05E2
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF5DE05E2
	.4byte 0x00000008
	.4byte 0x0001005E
	.4byte tenkyugi_evt
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kagi7_evt

# .data:0x1AAC | 0x8FA4 | size: 0x140
.obj kagi8_evt, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte make_kagi_tbl
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0002001B
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_win_item_select
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_32_01_las_00013158
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_pouch_remove_item
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_kagi8_las_00013208
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG8_KEY_SET1_las_00013170
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_S_kagi8_las_00013208
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_A113_daiza8_las_00013210
	.4byte 0x0001005E
	.4byte kagi_rotate
	.4byte 0x00020032
	.4byte 0xF8406C72
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xF5DE05E2
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF5DE05E2
	.4byte 0x00000008
	.4byte 0x0001005E
	.4byte tenkyugi_evt
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kagi8_evt

# .data:0x1BEC | 0x90E4 | size: 0x324
.obj daiza_up, local
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte 0xFE363C88
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0xFE363C87
	.4byte str_mist2_las_0001321c
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0000019A
	.4byte 0xFE363C82
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0001006C
	.4byte 0xFE363C86
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte 0xFE363C88
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte 0xFE363C88
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002003B
	.4byte 0xFE363C81
	.4byte 0xFE363C8B
	.4byte 0x0002003B
	.4byte 0xFE363C81
	.4byte 0xF24B1280
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_mist2_las_0001321c
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000190
	.4byte 0xFE363C82
	.4byte 0x0000000F
	.4byte 0xFE363C81
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_mapobj_color
	.4byte 0x00000001
	.4byte 0xFE363C89
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000000FF
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000006A4
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte 0xFE363C88
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG8_KEYSTAND_AP_las_00013224
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFFFFD8F0
	.4byte 0x00000000
	.4byte 0x00000BB8
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A88E6
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0001005F
	.4byte 0xFE363C86
	.4byte 0x0002005B
	.4byte evt_eff_softdelete
	.4byte 0xFE363C87
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte 0xFE363C89
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x000000FF
	.4byte 0x000003E8
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0007005B
	.4byte evt_mapobj_color
	.4byte 0x00000001
	.4byte 0xFE363C89
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0x000000FF
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_mapobj_color
	.4byte 0x00000001
	.4byte 0xFE363C89
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x00000002
	.4byte 0x00000001
.endobj daiza_up

# .data:0x1F10 | 0x9408 | size: 0xC0
.obj kagi_8_off, local
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_kagi_las_00013240
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A113_daiza1_las_00013184
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A113_daiza2_las_00013198
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A113_daiza3_las_000131ac
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A113_daiza4_las_000131c0
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A113_daiza5_las_000131d4
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A113_daiza6_las_000131e8
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A113_daiza7_las_000131fc
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A113_daiza8_las_00013210
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kagi_8_off

# .data:0x1FD0 | 0x94C8 | size: 0x64
.obj daiza_name, local
	.4byte str_S_kagi1_las_00013168
	.4byte str_S113_daiza1_las_00013248
	.4byte str_eff_1_las_00013254
	.4byte str_S_kagi2_las_00013190
	.4byte str_S113_daiza2_las_0001325c
	.4byte str_eff_2_las_00013268
	.4byte str_S_kagi3_las_000131a4
	.4byte str_S113_daiza3_las_00013270
	.4byte str_eff_3_las_0001327c
	.4byte str_S_kagi4_las_000131b8
	.4byte str_S113_daiza4_las_00013284
	.4byte str_eff_4_las_00013290
	.4byte str_S_kagi5_las_000131cc
	.4byte str_S113_daiza5_las_00013298
	.4byte str_eff_5_las_000132a4
	.4byte str_S_kagi6_las_000131e0
	.4byte str_S113_daiza6_las_000132ac
	.4byte str_eff_6_las_000132b8
	.4byte str_S_kagi7_las_000131f4
	.4byte str_S113_daiza7_las_000132c0
	.4byte str_eff_7_las_000132cc
	.4byte str_S_kagi8_las_00013208
	.4byte str_S113_daiza8_las_000132d4
	.4byte str_eff_8_las_000132e0
	.4byte 0x00000000
.endobj daiza_name

# .data:0x2034 | 0x952C | size: 0x5B4
.obj kagi_8_on, local
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000185
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG8_KEYSTAND_SH_las_00013120
	.4byte 0xFE363C8A
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A83
	.4byte 0xF24A7A80
	.4byte 0x0000012C
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8A
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_kagi_las_00013240
	.4byte 0x00000001
	.4byte 0x0001003E
	.4byte daiza_name
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00030041
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFFFFFF9C
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_daizadai_las_000132e8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG8_KEYSTAND_AP_las_000132f4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C85
	.4byte 0x0001003E
	.4byte daiza_name
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00030041
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0001005C
	.4byte daiza_up
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x00000FA0
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C85
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_kagi_las_00013240
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A113_daiza1_las_00013184
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A113_daiza2_las_00013198
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A113_daiza3_las_000131ac
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A113_daiza4_las_000131c0
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A113_daiza5_las_000131d4
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A113_daiza6_las_000131e8
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A113_daiza7_las_000131fc
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A113_daiza8_las_00013210
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_A113_daiza1_las_00013184
	.4byte str_S_kagi1_las_00013168
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_A113_daiza2_las_00013198
	.4byte str_S_kagi2_las_00013190
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_A113_daiza3_las_000131ac
	.4byte str_S_kagi3_las_000131a4
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_A113_daiza4_las_000131c0
	.4byte str_S_kagi4_las_000131b8
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_A113_daiza5_las_000131d4
	.4byte str_S_kagi5_las_000131cc
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_A113_daiza6_las_000131e8
	.4byte str_S_kagi6_las_000131e0
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_A113_daiza7_las_000131fc
	.4byte str_S_kagi7_las_000131f4
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_A113_daiza8_las_00013210
	.4byte str_S_kagi8_las_00013208
	.4byte 0x00020018
	.4byte 0xF8406C6B
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_kagi1_las_00013310
	.4byte 0x00000000
	.4byte kagi1_evt
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_kagi1_las_00013168
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_A113_daiza1_las_00013184
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406C6C
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_kagi2_las_00013318
	.4byte 0x00000000
	.4byte kagi2_evt
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_kagi2_las_00013190
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_A113_daiza2_las_00013198
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406C6D
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_kagi3_las_00013320
	.4byte 0x00000000
	.4byte kagi3_evt
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_kagi3_las_000131a4
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_A113_daiza3_las_000131ac
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406C6E
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_kagi4_las_00013328
	.4byte 0x00000000
	.4byte kagi4_evt
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_kagi4_las_000131b8
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_A113_daiza4_las_000131c0
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406C6F
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_kagi5_las_00013330
	.4byte 0x00000000
	.4byte kagi5_evt
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_kagi5_las_000131cc
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_A113_daiza5_las_000131d4
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406C70
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_kagi6_las_00013338
	.4byte 0x00000000
	.4byte kagi6_evt
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_kagi6_las_000131e0
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_A113_daiza6_las_000131e8
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406C71
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_kagi7_las_00013340
	.4byte 0x00000000
	.4byte kagi7_evt
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_kagi7_las_000131f4
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_A113_daiza7_las_000131fc
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406C72
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_kagi8_las_00013348
	.4byte 0x00000000
	.4byte kagi8_evt
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_S_kagi8_las_00013208
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_A113_daiza8_las_00013210
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kagi_8_on

# .data:0x25E8 | 0x9AE0 | size: 0x2C
.obj kagi_8_init, local
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000185
	.4byte 0x0001005E
	.4byte kagi_8_off
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte kagi_8_on
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kagi_8_init

# .data:0x2614 | 0x9B0C | size: 0x4C
.obj kagi_8_syutugen, local
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_daizadai_las_000132e8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG8_STAR_SET1_las_00013350
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0001005E
	.4byte kagi_8_on
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kagi_8_syutugen

# .data:0x2660 | 0x9B58 | size: 0x8
.obj daiza_key_tbl, local
	.4byte 0x00000025
	.4byte 0xFFFFFFFF
.endobj daiza_key_tbl

# .data:0x2668 | 0x9B60 | size: 0xE4
.obj daiza_evt, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_pouch_check_item
	.4byte 0x00000025
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_win_item_select
	.4byte 0x00000000
	.4byte daiza_key_tbl
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_pouch_remove_item
	.4byte 0x00000025
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_hosi_off_las_00013364
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_hosi_on_las_00013370
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte kagi_8_syutugen
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000185
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000002
	.4byte 0x00000001
.endobj daiza_evt

# .data:0x274C | 0x9C44 | size: 0x498
.obj las_10_init_evt_16_data_9C44, global
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000185
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_ret_chgmap_evt_las_00013378
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG8_LAS4_las_00013388
	.4byte 0x0002005B
	.4byte evt_snd_set_rev_mode
	.4byte 0x00000002
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG8_LST2_las_00013110
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG8_LAS4_las_00013388
	.4byte 0x0002005B
	.4byte evt_snd_set_rev_mode
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG8_LST2_las_00013110
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG8_LAS4_las_00013388
	.4byte 0x0002005B
	.4byte evt_snd_set_rev_mode
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0001005C
	.4byte las_10_temae_kabe
	.4byte 0x00020018
	.4byte 0xF8406C6A
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte first_evt
	.4byte 0x00000021
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000185
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_hosi_on_las_00013370
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_daiza1_las_00013398
	.4byte 0x00000000
	.4byte daiza_evt
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_hosi_off_las_00013364
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0001005C
	.4byte kagi_8_init
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000185
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_tenkyugi_evt_las_000133a4
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFFAC
	.4byte 0x00000190
	.4byte 0x000000F0
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFF85
	.4byte 0x00000190
	.4byte 0x000000FF
	.4byte 0x0001005B
	.4byte evt_cam_road_reset
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x0001005C
	.4byte tenkyugi_evt
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_ret_chgmap_evt_las_00013378
	.4byte 0x0001005C
	.4byte tenkyugi_evt2
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x00000186
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG8_CELESTIAL_M_las_000130e8
	.4byte 0x00000000
	.4byte 0x00000190
	.4byte 0xFFFFFF6A
	.4byte 0xFE363C8A
	.4byte 0x0003005B
	.4byte evt_snd_sfx_dist
	.4byte 0xFE363C8A
	.4byte 0x0000000A
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_en_las_000130a0
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_hoshihoshi_las_00013074
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_group19_las_000133b4
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_group18_las_000133bc
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_group10_las_000133c4
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_group11_las_000133cc
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_group12_las_000133d4
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_group13_las_000133dc
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_group14_las_000133e4
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S11_kabe5_ushi_las_000133ec
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S11_kabe1_ushi_las_000133fc
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S11_dan_las_0001340c
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S112_hashira9_las_00013414
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S112_hashira10_las_00013424
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S112_hashira1_las_00013434
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S112_hashira2_las_00013444
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S112_hashira3_las_00013454
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S112_hashira4_las_00013464
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S112_kabe5_ushi_las_00013474
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S12_kabe1_las_00012fac
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_112_dan_las_00013484
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S113_hashira6_las_00013490
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S113_hashira5_las_000134a0
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S113_kabe5_las_00012fdc
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S113_kabe1_las_0001300c
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000001
.endobj las_10_init_evt_16_data_9C44

# .data:0x2BE4 | 0xA0DC | size: 0x4
.obj gap_04_0000A0DC_data, global
.hidden gap_04_0000A0DC_data
	.4byte 0x00000000
.endobj gap_04_0000A0DC_data
