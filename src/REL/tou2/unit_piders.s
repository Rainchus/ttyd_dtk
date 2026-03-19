.include "macros.inc"
.file "unit_piders.o"

# 0x00005C44..0x00006344 | size: 0x700
.text
.balign 4

# .text:0x0 | 0x5C44 | size: 0x74
.fn piders_get_next_target, local
/* 00005C44 00005D08  3C A0 00 00 */	lis r5, _battleWorkPointer@ha
/* 00005C48 00005D0C  38 A5 00 00 */	addi r5, r5, _battleWorkPointer@l
/* 00005C4C 00005D10  80 A5 00 00 */	lwz r5, 0x0(r5)
/* 00005C50 00005D14  38 C5 04 28 */	addi r6, r5, 0x428
/* 00005C54 00005D18  88 A5 0E DF */	lbz r5, 0xedf(r5)
/* 00005C58 00005D1C  38 05 00 01 */	addi r0, r5, 0x1
/* 00005C5C 00005D20  98 06 0A B7 */	stb r0, 0xab7(r6)
/* 00005C60 00005D24  88 A6 0A B7 */	lbz r5, 0xab7(r6)
/* 00005C64 00005D28  88 06 0A 6C */	lbz r0, 0xa6c(r6)
/* 00005C68 00005D2C  7C A5 07 74 */	extsb r5, r5
/* 00005C6C 00005D30  7C 00 07 74 */	extsb r0, r0
/* 00005C70 00005D34  7C 05 00 00 */	cmpw r5, r0
/* 00005C74 00005D38  40 80 00 30 */	bge .L_00005CA4
/* 00005C78 00005D3C  7C A6 2A 14 */	add r5, r6, r5
/* 00005C7C 00005D40  88 05 0A 6D */	lbz r0, 0xa6d(r5)
/* 00005C80 00005D44  7C 00 07 74 */	extsb r0, r0
/* 00005C84 00005D48  1C A0 00 24 */	mulli r5, r0, 0x24
/* 00005C88 00005D4C  38 A5 00 04 */	addi r5, r5, 0x4
/* 00005C8C 00005D50  7C A6 2A 14 */	add r5, r6, r5
/* 00005C90 00005D54  A8 05 00 00 */	lha r0, 0x0(r5)
/* 00005C94 00005D58  90 03 00 00 */	stw r0, 0x0(r3)
/* 00005C98 00005D5C  A8 05 00 02 */	lha r0, 0x2(r5)
/* 00005C9C 00005D60  90 04 00 00 */	stw r0, 0x0(r4)
/* 00005CA0 00005D64  4E 80 00 20 */	blr
.L_00005CA4:
/* 00005CA4 00005D68  38 A0 FF FF */	li r5, -0x1
/* 00005CA8 00005D6C  38 00 00 00 */	li r0, 0x0
/* 00005CAC 00005D70  90 A3 00 00 */	stw r5, 0x0(r3)
/* 00005CB0 00005D74  90 04 00 00 */	stw r0, 0x0(r4)
/* 00005CB4 00005D78  4E 80 00 20 */	blr
.endfn piders_get_next_target

# .text:0x74 | 0x5CB8 | size: 0x44
.fn piders_get_target, local
/* 00005CB8 00005D7C  3C A0 00 00 */	lis r5, _battleWorkPointer@ha
/* 00005CBC 00005D80  38 A5 00 00 */	addi r5, r5, _battleWorkPointer@l
/* 00005CC0 00005D84  80 A5 00 00 */	lwz r5, 0x0(r5)
/* 00005CC4 00005D88  38 C5 04 28 */	addi r6, r5, 0x428
/* 00005CC8 00005D8C  88 05 0E DF */	lbz r0, 0xedf(r5)
/* 00005CCC 00005D90  7C 00 07 74 */	extsb r0, r0
/* 00005CD0 00005D94  7C A6 02 14 */	add r5, r6, r0
/* 00005CD4 00005D98  88 05 0A 6D */	lbz r0, 0xa6d(r5)
/* 00005CD8 00005D9C  7C 00 07 74 */	extsb r0, r0
/* 00005CDC 00005DA0  1C A0 00 24 */	mulli r5, r0, 0x24
/* 00005CE0 00005DA4  38 A5 00 04 */	addi r5, r5, 0x4
/* 00005CE4 00005DA8  7C A6 2A 14 */	add r5, r6, r5
/* 00005CE8 00005DAC  A8 05 00 00 */	lha r0, 0x0(r5)
/* 00005CEC 00005DB0  90 03 00 00 */	stw r0, 0x0(r3)
/* 00005CF0 00005DB4  A8 05 00 02 */	lha r0, 0x2(r5)
/* 00005CF4 00005DB8  90 04 00 00 */	stw r0, 0x0(r4)
/* 00005CF8 00005DBC  4E 80 00 20 */	blr
.endfn piders_get_target

# .text:0xB8 | 0x5CFC | size: 0xD0
.fn piders_renzoku_attack_set_target, local
/* 00005CFC 00005DC0  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 00005D00 00005DC4  7C 08 02 A6 */	mflr r0
/* 00005D04 00005DC8  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00005D08 00005DCC  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 00005D0C 00005DD0  BF 21 00 B4 */	stmw r25, 0xb4(r1)
/* 00005D10 00005DD4  3B E0 00 00 */	li r31, 0x0
/* 00005D14 00005DD8  7C 79 1B 78 */	mr r25, r3
/* 00005D18 00005DDC  3B 80 00 00 */	li r28, 0x0
/* 00005D1C 00005DE0  83 63 00 18 */	lwz r27, 0x18(r3)
/* 00005D20 00005DE4  38 61 00 58 */	addi r3, r1, 0x58
/* 00005D24 00005DE8  80 A4 00 00 */	lwz r5, _battleWorkPointer@l(r4)
/* 00005D28 00005DEC  38 81 00 08 */	addi r4, r1, 0x8
/* 00005D2C 00005DF0  9B E5 0E DF */	stb r31, 0xedf(r5)
/* 00005D30 00005DF4  4B FF FF 89 */	bl piders_get_target
/* 00005D34 00005DF8  3B C1 00 58 */	addi r30, r1, 0x58
.L_00005D38:
/* 00005D38 00005DFC  7C 1E F8 2E */	lwzx r0, r30, r31
/* 00005D3C 00005E00  2C 00 FF FF */	cmpwi r0, -0x1
/* 00005D40 00005E04  40 82 00 0C */	bne .L_00005D4C
/* 00005D44 00005E08  7F 9A E3 78 */	mr r26, r28
/* 00005D48 00005E0C  48 00 00 24 */	b .L_00005D6C
.L_00005D4C:
/* 00005D4C 00005E10  7F C3 F3 78 */	mr r3, r30
/* 00005D50 00005E14  3B FF 00 04 */	addi r31, r31, 0x4
/* 00005D54 00005E18  38 81 00 08 */	addi r4, r1, 0x8
/* 00005D58 00005E1C  3B 9C 00 01 */	addi r28, r28, 0x1
/* 00005D5C 00005E20  7C 63 FA 14 */	add r3, r3, r31
/* 00005D60 00005E24  7C 84 FA 14 */	add r4, r4, r31
/* 00005D64 00005E28  4B FF FE E1 */	bl piders_get_next_target
/* 00005D68 00005E2C  4B FF FF D0 */	b .L_00005D38
.L_00005D6C:
/* 00005D6C 00005E30  3B C1 00 58 */	addi r30, r1, 0x58
/* 00005D70 00005E34  3B E1 00 08 */	addi r31, r1, 0x8
/* 00005D74 00005E38  3B 80 00 00 */	li r28, 0x0
.L_00005D78:
/* 00005D78 00005E3C  7F 43 D3 78 */	mr r3, r26
/* 00005D7C 00005E40  4B FF F2 99 */	bl irand
/* 00005D80 00005E44  54 7D 10 3A */	slwi r29, r3, 2
/* 00005D84 00005E48  80 9B 00 00 */	lwz r4, 0x0(r27)
/* 00005D88 00005E4C  7C BE E8 2E */	lwzx r5, r30, r29
/* 00005D8C 00005E50  7F 23 CB 78 */	mr r3, r25
/* 00005D90 00005E54  4B FF F2 85 */	bl evtSetValue
/* 00005D94 00005E58  80 9B 00 04 */	lwz r4, 0x4(r27)
/* 00005D98 00005E5C  7F 23 CB 78 */	mr r3, r25
/* 00005D9C 00005E60  7C BF E8 2E */	lwzx r5, r31, r29
/* 00005DA0 00005E64  3B 7B 00 08 */	addi r27, r27, 0x8
/* 00005DA4 00005E68  4B FF F2 71 */	bl evtSetValue
/* 00005DA8 00005E6C  3B 9C 00 01 */	addi r28, r28, 0x1
/* 00005DAC 00005E70  2C 1C 00 03 */	cmpwi r28, 0x3
/* 00005DB0 00005E74  41 80 FF C8 */	blt .L_00005D78
/* 00005DB4 00005E78  BB 21 00 B4 */	lmw r25, 0xb4(r1)
/* 00005DB8 00005E7C  38 60 00 02 */	li r3, 0x2
/* 00005DBC 00005E80  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 00005DC0 00005E84  7C 08 03 A6 */	mtlr r0
/* 00005DC4 00005E88  38 21 00 D0 */	addi r1, r1, 0xd0
/* 00005DC8 00005E8C  4E 80 00 20 */	blr
.endfn piders_renzoku_attack_set_target

# .text:0x188 | 0x5DCC | size: 0xC0
.fn piders_get_first_pos_attr, local
/* 00005DCC 00005E90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00005DD0 00005E94  7C 08 02 A6 */	mflr r0
/* 00005DD4 00005E98  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00005DD8 00005E9C  90 01 00 24 */	stw r0, 0x24(r1)
/* 00005DDC 00005EA0  BF 41 00 08 */	stmw r26, 0x8(r1)
/* 00005DE0 00005EA4  7C 7A 1B 78 */	mr r26, r3
/* 00005DE4 00005EA8  3B C0 00 00 */	li r30, 0x0
/* 00005DE8 00005EAC  3B E0 00 00 */	li r31, 0x0
/* 00005DEC 00005EB0  83 A3 00 18 */	lwz r29, 0x18(r3)
/* 00005DF0 00005EB4  83 84 00 00 */	lwz r28, _battleWorkPointer@l(r4)
.L_00005DF4:
/* 00005DF4 00005EB8  38 1F 00 20 */	addi r0, r31, 0x20
/* 00005DF8 00005EBC  7F 7C 00 2E */	lwzx r27, r28, r0
/* 00005DFC 00005EC0  28 1B 00 00 */	cmplwi r27, 0x0
/* 00005E00 00005EC4  41 82 00 2C */	beq .L_00005E2C
/* 00005E04 00005EC8  80 1B 00 08 */	lwz r0, 0x8(r27)
/* 00005E08 00005ECC  2C 00 00 1B */	cmpwi r0, 0x1b
/* 00005E0C 00005ED0  41 82 00 0C */	beq .L_00005E18
/* 00005E10 00005ED4  2C 00 00 A4 */	cmpwi r0, 0xa4
/* 00005E14 00005ED8  40 82 00 18 */	bne .L_00005E2C
.L_00005E18:
/* 00005E18 00005EDC  7F 63 DB 78 */	mr r3, r27
/* 00005E1C 00005EE0  38 80 00 1B */	li r4, 0x1b
/* 00005E20 00005EE4  4B FF F1 F5 */	bl BtlUnit_CheckStatus
/* 00005E24 00005EE8  2C 03 00 00 */	cmpwi r3, 0x0
/* 00005E28 00005EEC  41 82 00 14 */	beq .L_00005E3C
.L_00005E2C:
/* 00005E2C 00005EF0  3B DE 00 01 */	addi r30, r30, 0x1
/* 00005E30 00005EF4  3B FF 00 04 */	addi r31, r31, 0x4
/* 00005E34 00005EF8  2C 1E 00 40 */	cmpwi r30, 0x40
/* 00005E38 00005EFC  41 80 FF BC */	blt .L_00005DF4
.L_00005E3C:
/* 00005E3C 00005F00  83 DB 02 18 */	lwz r30, 0x218(r27)
/* 00005E40 00005F04  7F 63 DB 78 */	mr r3, r27
/* 00005E44 00005F08  4B FF F1 D1 */	bl BtlUnit_CanActStatus
/* 00005E48 00005F0C  2C 03 00 00 */	cmpwi r3, 0x0
/* 00005E4C 00005F10  41 82 00 18 */	beq .L_00005E64
/* 00005E50 00005F14  2C 1E 00 00 */	cmpwi r30, 0x0
/* 00005E54 00005F18  40 82 00 0C */	bne .L_00005E60
/* 00005E58 00005F1C  3B C0 00 01 */	li r30, 0x1
/* 00005E5C 00005F20  48 00 00 08 */	b .L_00005E64
.L_00005E60:
/* 00005E60 00005F24  3B C0 00 00 */	li r30, 0x0
.L_00005E64:
/* 00005E64 00005F28  80 9D 00 00 */	lwz r4, 0x0(r29)
/* 00005E68 00005F2C  7F 43 D3 78 */	mr r3, r26
/* 00005E6C 00005F30  7F C5 F3 78 */	mr r5, r30
/* 00005E70 00005F34  4B FF F1 A5 */	bl evtSetValue
/* 00005E74 00005F38  BB 41 00 08 */	lmw r26, 0x8(r1)
/* 00005E78 00005F3C  38 60 00 02 */	li r3, 0x2
/* 00005E7C 00005F40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00005E80 00005F44  7C 08 03 A6 */	mtlr r0
/* 00005E84 00005F48  38 21 00 20 */	addi r1, r1, 0x20
/* 00005E88 00005F4C  4E 80 00 20 */	blr
.endfn piders_get_first_pos_attr

# .text:0x248 | 0x5E8C | size: 0xCC
.fn piders_get_zyun, local
/* 00005E8C 00005F50  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00005E90 00005F54  7C 08 02 A6 */	mflr r0
/* 00005E94 00005F58  90 01 00 34 */	stw r0, 0x34(r1)
/* 00005E98 00005F5C  BF 01 00 10 */	stmw r24, 0x10(r1)
/* 00005E9C 00005F60  7C 78 1B 78 */	mr r24, r3
/* 00005EA0 00005F64  3B 60 00 00 */	li r27, 0x0
/* 00005EA4 00005F68  83 83 00 18 */	lwz r28, 0x18(r3)
/* 00005EA8 00005F6C  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 00005EAC 00005F70  4B FF F1 69 */	bl evtGetValue
/* 00005EB0 00005F74  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00005EB4 00005F78  7C 60 1B 78 */	mr r0, r3
/* 00005EB8 00005F7C  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00005EBC 00005F80  7F 03 C3 78 */	mr r3, r24
/* 00005EC0 00005F84  83 45 00 00 */	lwz r26, 0x0(r5)
/* 00005EC4 00005F88  7C 04 03 78 */	mr r4, r0
/* 00005EC8 00005F8C  4B FF F1 4D */	bl BattleTransID
/* 00005ECC 00005F90  7C 7E 1B 78 */	mr r30, r3
/* 00005ED0 00005F94  3B A0 00 00 */	li r29, 0x0
/* 00005ED4 00005F98  3B E0 00 00 */	li r31, 0x0
.L_00005ED8:
/* 00005ED8 00005F9C  38 1F 00 20 */	addi r0, r31, 0x20
/* 00005EDC 00005FA0  7F 3A 00 2E */	lwzx r25, r26, r0
/* 00005EE0 00005FA4  28 19 00 00 */	cmplwi r25, 0x0
/* 00005EE4 00005FA8  41 82 00 3C */	beq .L_00005F20
/* 00005EE8 00005FAC  80 19 00 08 */	lwz r0, 0x8(r25)
/* 00005EEC 00005FB0  2C 00 00 1B */	cmpwi r0, 0x1b
/* 00005EF0 00005FB4  41 82 00 0C */	beq .L_00005EFC
/* 00005EF4 00005FB8  2C 00 00 A4 */	cmpwi r0, 0xa4
/* 00005EF8 00005FBC  40 82 00 28 */	bne .L_00005F20
.L_00005EFC:
/* 00005EFC 00005FC0  7F 23 CB 78 */	mr r3, r25
/* 00005F00 00005FC4  38 80 00 1B */	li r4, 0x1b
/* 00005F04 00005FC8  4B FF F1 11 */	bl BtlUnit_CheckStatus
/* 00005F08 00005FCC  2C 03 00 00 */	cmpwi r3, 0x0
/* 00005F0C 00005FD0  40 82 00 08 */	bne .L_00005F14
/* 00005F10 00005FD4  3B 7B 00 01 */	addi r27, r27, 0x1
.L_00005F14:
/* 00005F14 00005FD8  80 19 00 00 */	lwz r0, 0x0(r25)
/* 00005F18 00005FDC  7C 00 F0 00 */	cmpw r0, r30
/* 00005F1C 00005FE0  41 82 00 14 */	beq .L_00005F30
.L_00005F20:
/* 00005F20 00005FE4  3B BD 00 01 */	addi r29, r29, 0x1
/* 00005F24 00005FE8  3B FF 00 04 */	addi r31, r31, 0x4
/* 00005F28 00005FEC  2C 1D 00 40 */	cmpwi r29, 0x40
/* 00005F2C 00005FF0  41 80 FF AC */	blt .L_00005ED8
.L_00005F30:
/* 00005F30 00005FF4  80 9C 00 04 */	lwz r4, 0x4(r28)
/* 00005F34 00005FF8  7F 03 C3 78 */	mr r3, r24
/* 00005F38 00005FFC  7F 65 DB 78 */	mr r5, r27
/* 00005F3C 00006000  4B FF F0 D9 */	bl evtSetValue
/* 00005F40 00006004  BB 01 00 10 */	lmw r24, 0x10(r1)
/* 00005F44 00006008  38 60 00 02 */	li r3, 0x2
/* 00005F48 0000600C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00005F4C 00006010  7C 08 03 A6 */	mtlr r0
/* 00005F50 00006014  38 21 00 30 */	addi r1, r1, 0x30
/* 00005F54 00006018  4E 80 00 20 */	blr
.endfn piders_get_zyun

# .text:0x314 | 0x5F58 | size: 0x9C
.fn piders_get_num, local
/* 00005F58 0000601C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00005F5C 00006020  7C 08 02 A6 */	mflr r0
/* 00005F60 00006024  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00005F64 00006028  90 01 00 24 */	stw r0, 0x24(r1)
/* 00005F68 0000602C  BF 41 00 08 */	stmw r26, 0x8(r1)
/* 00005F6C 00006030  7C 7A 1B 78 */	mr r26, r3
/* 00005F70 00006034  3B 80 00 00 */	li r28, 0x0
/* 00005F74 00006038  3B C0 00 00 */	li r30, 0x0
/* 00005F78 0000603C  3B E0 00 00 */	li r31, 0x0
/* 00005F7C 00006040  83 A3 00 18 */	lwz r29, 0x18(r3)
/* 00005F80 00006044  83 64 00 00 */	lwz r27, _battleWorkPointer@l(r4)
.L_00005F84:
/* 00005F84 00006048  38 1F 00 20 */	addi r0, r31, 0x20
/* 00005F88 0000604C  7C 7B 00 2E */	lwzx r3, r27, r0
/* 00005F8C 00006050  28 03 00 00 */	cmplwi r3, 0x0
/* 00005F90 00006054  41 82 00 2C */	beq .L_00005FBC
/* 00005F94 00006058  80 03 00 08 */	lwz r0, 0x8(r3)
/* 00005F98 0000605C  2C 00 00 1B */	cmpwi r0, 0x1b
/* 00005F9C 00006060  41 82 00 0C */	beq .L_00005FA8
/* 00005FA0 00006064  2C 00 00 A4 */	cmpwi r0, 0xa4
/* 00005FA4 00006068  40 82 00 18 */	bne .L_00005FBC
.L_00005FA8:
/* 00005FA8 0000606C  38 80 00 1B */	li r4, 0x1b
/* 00005FAC 00006070  4B FF F0 69 */	bl BtlUnit_CheckStatus
/* 00005FB0 00006074  2C 03 00 00 */	cmpwi r3, 0x0
/* 00005FB4 00006078  40 82 00 08 */	bne .L_00005FBC
/* 00005FB8 0000607C  3B 9C 00 01 */	addi r28, r28, 0x1
.L_00005FBC:
/* 00005FBC 00006080  3B DE 00 01 */	addi r30, r30, 0x1
/* 00005FC0 00006084  3B FF 00 04 */	addi r31, r31, 0x4
/* 00005FC4 00006088  2C 1E 00 40 */	cmpwi r30, 0x40
/* 00005FC8 0000608C  41 80 FF BC */	blt .L_00005F84
/* 00005FCC 00006090  80 9D 00 00 */	lwz r4, 0x0(r29)
/* 00005FD0 00006094  7F 43 D3 78 */	mr r3, r26
/* 00005FD4 00006098  7F 85 E3 78 */	mr r5, r28
/* 00005FD8 0000609C  4B FF F0 3D */	bl evtSetValue
/* 00005FDC 000060A0  BB 41 00 08 */	lmw r26, 0x8(r1)
/* 00005FE0 000060A4  38 60 00 02 */	li r3, 0x2
/* 00005FE4 000060A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00005FE8 000060AC  7C 08 03 A6 */	mtlr r0
/* 00005FEC 000060B0  38 21 00 20 */	addi r1, r1, 0x20
/* 00005FF0 000060B4  4E 80 00 20 */	blr
.endfn piders_get_num

# .text:0x3B0 | 0x5FF4 | size: 0xE4
.fn piders_draw_yarn, local
/* 00005FF4 000060B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00005FF8 000060BC  7C 08 02 A6 */	mflr r0
/* 00005FFC 000060C0  90 01 00 24 */	stw r0, 0x24(r1)
/* 00006000 000060C4  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 00006004 000060C8  7C 7D 1B 78 */	mr r29, r3
/* 00006008 000060CC  80 83 00 18 */	lwz r4, 0x18(r3)
/* 0000600C 000060D0  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00006010 000060D4  4B FF F0 05 */	bl evtGetValue
/* 00006014 000060D8  54 7F 06 3E */	clrlwi r31, r3, 24
/* 00006018 000060DC  7F A3 EB 78 */	mr r3, r29
/* 0000601C 000060E0  38 80 FF FE */	li r4, -0x2
/* 00006020 000060E4  4B FF EF F5 */	bl BattleTransID
/* 00006024 000060E8  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00006028 000060EC  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 0000602C 000060F0  7C 64 1B 78 */	mr r4, r3
/* 00006030 000060F4  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00006034 000060F8  4B FF EF E1 */	bl BattleGetUnitPtr
/* 00006038 000060FC  83 A3 03 14 */	lwz r29, 0x314(r3)
/* 0000603C 00006100  7C 7E 1B 78 */	mr r30, r3
/* 00006040 00006104  38 9D 00 0C */	addi r4, r29, 0xc
/* 00006044 00006108  38 BD 00 10 */	addi r5, r29, 0x10
/* 00006048 0000610C  38 DD 00 14 */	addi r6, r29, 0x14
/* 0000604C 00006110  4B FF EF C9 */	bl BtlUnit_GetHomePos
/* 00006050 00006114  80 7E 02 20 */	lwz r3, 0x220(r30)
/* 00006054 00006118  3C 00 43 30 */	lis r0, 0x4330
/* 00006058 0000611C  90 01 00 08 */	stw r0, 0x8(r1)
/* 0000605C 00006120  3C 80 00 00 */	lis r4, double_to_int_tou2_0000eab8@ha
/* 00006060 00006124  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 00006064 00006128  C8 24 00 00 */	lfd f1, double_to_int_tou2_0000eab8@l(r4)
/* 00006068 0000612C  90 01 00 0C */	stw r0, 0xc(r1)
/* 0000606C 00006130  7F C3 F3 78 */	mr r3, r30
/* 00006070 00006134  7F A4 EB 78 */	mr r4, r29
/* 00006074 00006138  38 BD 00 04 */	addi r5, r29, 0x4
/* 00006078 0000613C  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 0000607C 00006140  38 DD 00 08 */	addi r6, r29, 0x8
/* 00006080 00006144  EC 00 08 28 */	fsubs f0, f0, f1
/* 00006084 00006148  D0 1D 00 10 */	stfs f0, 0x10(r29)
/* 00006088 0000614C  4B FF EF 8D */	bl BtlUnit_GetHomePos
/* 0000608C 00006150  3C 60 00 00 */	lis r3, float_400_tou2_0000eab0@ha
/* 00006090 00006154  3C 80 00 00 */	lis r4, zero_tou2_0000eab4@ha
/* 00006094 00006158  38 A3 00 00 */	addi r5, r3, float_400_tou2_0000eab0@l
/* 00006098 0000615C  C0 24 00 00 */	lfs f1, zero_tou2_0000eab4@l(r4)
/* 0000609C 00006160  C0 05 00 00 */	lfs f0, 0x0(r5)
/* 000060A0 00006164  3C 60 00 00 */	lis r3, piders_draw_yarn_sub@ha
/* 000060A4 00006168  38 A3 00 00 */	addi r5, r3, piders_draw_yarn_sub@l
/* 000060A8 0000616C  7F A6 EB 78 */	mr r6, r29
/* 000060AC 00006170  D0 1D 00 04 */	stfs f0, 0x4(r29)
/* 000060B0 00006174  38 60 00 04 */	li r3, 0x4
/* 000060B4 00006178  38 80 00 02 */	li r4, 0x2
/* 000060B8 0000617C  9B FD 00 18 */	stb r31, 0x18(r29)
/* 000060BC 00006180  4B FF EF 59 */	bl dispEntry
/* 000060C0 00006184  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 000060C4 00006188  38 60 00 02 */	li r3, 0x2
/* 000060C8 0000618C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 000060CC 00006190  7C 08 03 A6 */	mtlr r0
/* 000060D0 00006194  38 21 00 20 */	addi r1, r1, 0x20
/* 000060D4 00006198  4E 80 00 20 */	blr
.endfn piders_draw_yarn

# .text:0x494 | 0x60D8 | size: 0x200
.fn piders_draw_yarn_sub, local
/* 000060D8 0000619C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 000060DC 000061A0  7C 08 02 A6 */	mflr r0
/* 000060E0 000061A4  38 60 00 04 */	li r3, 0x4
/* 000060E4 000061A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 000060E8 000061AC  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 000060EC 000061B0  7C 9F 23 78 */	mr r31, r4
/* 000060F0 000061B4  4B FF EF 25 */	bl camGetPtr
/* 000060F4 000061B8  7C 7E 1B 78 */	mr r30, r3
/* 000060F8 000061BC  38 60 00 00 */	li r3, 0x0
/* 000060FC 000061C0  4B FF EF 19 */	bl GXSetCullMode
/* 00006100 000061C4  4B FF EF 15 */	bl GXClearVtxDesc
/* 00006104 000061C8  38 60 00 09 */	li r3, 0x9
/* 00006108 000061CC  38 80 00 01 */	li r4, 0x1
/* 0000610C 000061D0  4B FF EF 09 */	bl GXSetVtxDesc
/* 00006110 000061D4  38 60 00 00 */	li r3, 0x0
/* 00006114 000061D8  38 80 00 09 */	li r4, 0x9
/* 00006118 000061DC  38 A0 00 01 */	li r5, 0x1
/* 0000611C 000061E0  38 C0 00 04 */	li r6, 0x4
/* 00006120 000061E4  38 E0 00 00 */	li r7, 0x0
/* 00006124 000061E8  4B FF EE F1 */	bl GXSetVtxAttrFmt
/* 00006128 000061EC  38 60 00 01 */	li r3, 0x1
/* 0000612C 000061F0  4B FF EE E9 */	bl GXSetNumChans
/* 00006130 000061F4  38 60 00 04 */	li r3, 0x4
/* 00006134 000061F8  38 80 00 00 */	li r4, 0x0
/* 00006138 000061FC  38 A0 00 00 */	li r5, 0x0
/* 0000613C 00006200  38 C0 00 00 */	li r6, 0x0
/* 00006140 00006204  38 E0 00 00 */	li r7, 0x0
/* 00006144 00006208  39 00 00 02 */	li r8, 0x2
/* 00006148 0000620C  39 20 00 02 */	li r9, 0x2
/* 0000614C 00006210  4B FF EE C9 */	bl GXSetChanCtrl
/* 00006150 00006214  3C 60 00 00 */	lis r3, dat_tou2_0000e9d8@ha
/* 00006154 00006218  88 1F 00 18 */	lbz r0, 0x18(r31)
/* 00006158 0000621C  80 A3 00 00 */	lwz r5, dat_tou2_0000e9d8@l(r3)
/* 0000615C 00006220  38 81 00 0C */	addi r4, r1, 0xc
/* 00006160 00006224  38 60 00 04 */	li r3, 0x4
/* 00006164 00006228  90 A1 00 08 */	stw r5, 0x8(r1)
/* 00006168 0000622C  98 01 00 0B */	stb r0, 0xb(r1)
/* 0000616C 00006230  80 01 00 08 */	lwz r0, 0x8(r1)
/* 00006170 00006234  90 01 00 0C */	stw r0, 0xc(r1)
/* 00006174 00006238  4B FF EE A1 */	bl GXSetChanMatColor
/* 00006178 0000623C  38 60 00 00 */	li r3, 0x0
/* 0000617C 00006240  4B FF EE 99 */	bl GXSetNumTexGens
/* 00006180 00006244  38 60 00 01 */	li r3, 0x1
/* 00006184 00006248  4B FF EE 91 */	bl GXSetNumTevStages
/* 00006188 0000624C  38 60 00 00 */	li r3, 0x0
/* 0000618C 00006250  38 80 00 00 */	li r4, 0x0
/* 00006190 00006254  38 A0 00 00 */	li r5, 0x0
/* 00006194 00006258  38 C0 00 00 */	li r6, 0x0
/* 00006198 0000625C  38 E0 00 01 */	li r7, 0x1
/* 0000619C 00006260  39 00 00 00 */	li r8, 0x0
/* 000061A0 00006264  4B FF EE 75 */	bl GXSetTevColorOp
/* 000061A4 00006268  38 60 00 00 */	li r3, 0x0
/* 000061A8 0000626C  38 80 00 0F */	li r4, 0xf
/* 000061AC 00006270  38 A0 00 0F */	li r5, 0xf
/* 000061B0 00006274  38 C0 00 0F */	li r6, 0xf
/* 000061B4 00006278  38 E0 00 0A */	li r7, 0xa
/* 000061B8 0000627C  4B FF EE 5D */	bl GXSetTevColorIn
/* 000061BC 00006280  38 60 00 00 */	li r3, 0x0
/* 000061C0 00006284  38 80 00 00 */	li r4, 0x0
/* 000061C4 00006288  38 A0 00 00 */	li r5, 0x0
/* 000061C8 0000628C  38 C0 00 00 */	li r6, 0x0
/* 000061CC 00006290  38 E0 00 01 */	li r7, 0x1
/* 000061D0 00006294  39 00 00 00 */	li r8, 0x0
/* 000061D4 00006298  4B FF EE 41 */	bl GXSetTevAlphaOp
/* 000061D8 0000629C  38 60 00 00 */	li r3, 0x0
/* 000061DC 000062A0  38 80 00 07 */	li r4, 0x7
/* 000061E0 000062A4  38 A0 00 07 */	li r5, 0x7
/* 000061E4 000062A8  38 C0 00 07 */	li r6, 0x7
/* 000061E8 000062AC  38 E0 00 05 */	li r7, 0x5
/* 000061EC 000062B0  4B FF EE 29 */	bl GXSetTevAlphaIn
/* 000061F0 000062B4  38 60 00 00 */	li r3, 0x0
/* 000061F4 000062B8  38 80 00 FF */	li r4, 0xff
/* 000061F8 000062BC  38 A0 00 FF */	li r5, 0xff
/* 000061FC 000062C0  38 C0 00 04 */	li r6, 0x4
/* 00006200 000062C4  4B FF EE 15 */	bl GXSetTevOrder
/* 00006204 000062C8  38 7E 01 1C */	addi r3, r30, 0x11c
/* 00006208 000062CC  38 80 00 00 */	li r4, 0x0
/* 0000620C 000062D0  4B FF EE 09 */	bl GXLoadPosMtxImm
/* 00006210 000062D4  38 60 00 80 */	li r3, 0x80
/* 00006214 000062D8  38 80 00 00 */	li r4, 0x0
/* 00006218 000062DC  38 A0 00 04 */	li r5, 0x4
/* 0000621C 000062E0  4B FF ED F9 */	bl GXBegin
/* 00006220 000062E4  3C 80 00 00 */	lis r4, float_1_tou2_0000eac0@ha
/* 00006224 000062E8  3C 60 00 00 */	lis r3, float_5_tou2_0000eac4@ha
/* 00006228 000062EC  C0 5F 00 00 */	lfs f2, 0x0(r31)
/* 0000622C 000062F0  C0 24 00 00 */	lfs f1, float_1_tou2_0000eac0@l(r4)
/* 00006230 000062F4  C0 7F 00 08 */	lfs f3, 0x8(r31)
/* 00006234 000062F8  C0 03 00 00 */	lfs f0, float_5_tou2_0000eac4@l(r3)
/* 00006238 000062FC  EC 22 08 28 */	fsubs f1, f2, f1
/* 0000623C 00006300  C0 5F 00 04 */	lfs f2, 0x4(r31)
/* 00006240 00006304  EC 63 00 28 */	fsubs f3, f3, f0
/* 00006244 00006308  48 00 00 99 */	bl GXPosition3f32
/* 00006248 0000630C  3C 80 00 00 */	lis r4, float_1_tou2_0000eac0@ha
/* 0000624C 00006310  3C 60 00 00 */	lis r3, float_5_tou2_0000eac4@ha
/* 00006250 00006314  C0 3F 00 00 */	lfs f1, 0x0(r31)
/* 00006254 00006318  C0 44 00 00 */	lfs f2, float_1_tou2_0000eac0@l(r4)
/* 00006258 0000631C  C0 7F 00 08 */	lfs f3, 0x8(r31)
/* 0000625C 00006320  C0 03 00 00 */	lfs f0, float_5_tou2_0000eac4@l(r3)
/* 00006260 00006324  EC 22 08 2A */	fadds f1, f2, f1
/* 00006264 00006328  C0 5F 00 04 */	lfs f2, 0x4(r31)
/* 00006268 0000632C  EC 63 00 28 */	fsubs f3, f3, f0
/* 0000626C 00006330  48 00 00 71 */	bl GXPosition3f32
/* 00006270 00006334  3C 80 00 00 */	lis r4, float_1_tou2_0000eac0@ha
/* 00006274 00006338  3C 60 00 00 */	lis r3, float_5_tou2_0000eac4@ha
/* 00006278 0000633C  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 0000627C 00006340  C0 44 00 00 */	lfs f2, float_1_tou2_0000eac0@l(r4)
/* 00006280 00006344  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 00006284 00006348  C0 03 00 00 */	lfs f0, float_5_tou2_0000eac4@l(r3)
/* 00006288 0000634C  EC 22 08 2A */	fadds f1, f2, f1
/* 0000628C 00006350  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 00006290 00006354  EC 63 00 28 */	fsubs f3, f3, f0
/* 00006294 00006358  48 00 00 49 */	bl GXPosition3f32
/* 00006298 0000635C  3C 80 00 00 */	lis r4, float_1_tou2_0000eac0@ha
/* 0000629C 00006360  3C 60 00 00 */	lis r3, float_5_tou2_0000eac4@ha
/* 000062A0 00006364  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 000062A4 00006368  C0 24 00 00 */	lfs f1, float_1_tou2_0000eac0@l(r4)
/* 000062A8 0000636C  C0 7F 00 14 */	lfs f3, 0x14(r31)
/* 000062AC 00006370  C0 03 00 00 */	lfs f0, float_5_tou2_0000eac4@l(r3)
/* 000062B0 00006374  EC 22 08 28 */	fsubs f1, f2, f1
/* 000062B4 00006378  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 000062B8 0000637C  EC 63 00 28 */	fsubs f3, f3, f0
/* 000062BC 00006380  48 00 00 21 */	bl GXPosition3f32
/* 000062C0 00006384  48 00 00 19 */	bl GXEnd
/* 000062C4 00006388  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 000062C8 0000638C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 000062CC 00006390  7C 08 03 A6 */	mtlr r0
/* 000062D0 00006394  38 21 00 20 */	addi r1, r1, 0x20
/* 000062D4 00006398  4E 80 00 20 */	blr
.endfn piders_draw_yarn_sub

# .text:0x694 | 0x62D8 | size: 0x4
.fn GXEnd, local
/* 000062D8 0000639C  4E 80 00 20 */	blr
.endfn GXEnd

# .text:0x698 | 0x62DC | size: 0x14
.fn GXPosition3f32, local
/* 000062DC 000063A0  3C 60 CC 01 */	lis r3, 0xcc01
/* 000062E0 000063A4  D0 23 80 00 */	stfs f1, -0x8000(r3)
/* 000062E4 000063A8  D0 43 80 00 */	stfs f2, -0x8000(r3)
/* 000062E8 000063AC  D0 63 80 00 */	stfs f3, -0x8000(r3)
/* 000062EC 000063B0  4E 80 00 20 */	blr
.endfn GXPosition3f32

# .text:0x6AC | 0x62F0 | size: 0x54
.fn piders_yarn_init, local
/* 000062F0 000063B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000062F4 000063B8  7C 08 02 A6 */	mflr r0
/* 000062F8 000063BC  38 80 FF FE */	li r4, -0x2
/* 000062FC 000063C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 00006300 000063C4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 00006304 000063C8  4B FF ED 11 */	bl BattleTransID
/* 00006308 000063CC  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0000630C 000063D0  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00006310 000063D4  7C 64 1B 78 */	mr r4, r3
/* 00006314 000063D8  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00006318 000063DC  4B FF EC FD */	bl BattleGetUnitPtr
/* 0000631C 000063E0  7C 7F 1B 78 */	mr r31, r3
/* 00006320 000063E4  38 60 00 1C */	li r3, 0x1c
/* 00006324 000063E8  4B FF EC F1 */	bl BattleAlloc
/* 00006328 000063EC  90 7F 03 14 */	stw r3, 0x314(r31)
/* 0000632C 000063F0  38 60 00 02 */	li r3, 0x2
/* 00006330 000063F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00006334 000063F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 00006338 000063FC  7C 08 03 A6 */	mtlr r0
/* 0000633C 00006400  38 21 00 10 */	addi r1, r1, 0x10
/* 00006340 00006404  4E 80 00 20 */	blr
.endfn piders_yarn_init

# 0x000051E0..0x00005388 | size: 0x1A8
.rodata
.balign 8

# .rodata:0x0 | 0x51E0 | size: 0xE
.obj str_btl_un_piders_tou2_0000e920, local
	.string "btl_un_piders"
.endobj str_btl_un_piders_tou2_0000e920

# .rodata:0xE | 0x51EE | size: 0x2
.obj gap_03_000051EE_rodata, global
.hidden gap_03_000051EE_rodata
	.2byte 0x0000
.endobj gap_03_000051EE_rodata

# .rodata:0x10 | 0x51F0 | size: 0x17
.obj str_SFX_ENM_PAIDA_DAMAGE_tou2_0000e930, local
	.string "SFX_ENM_PAIDA_DAMAGED1"
.endobj str_SFX_ENM_PAIDA_DAMAGE_tou2_0000e930

# .rodata:0x27 | 0x5207 | size: 0x1
.obj gap_03_00005207_rodata, global
.hidden gap_03_00005207_rodata
	.byte 0x00
.endobj gap_03_00005207_rodata

# .rodata:0x28 | 0x5208 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_tou2_0000e948, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_tou2_0000e948

# .rodata:0x3D | 0x521D | size: 0x3
.obj gap_03_0000521D_rodata, global
.hidden gap_03_0000521D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000521D_rodata

# .rodata:0x40 | 0x5220 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_tou2_0000e960, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_tou2_0000e960

# .rodata:0x54 | 0x5234 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_tou2_0000e974, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_tou2_0000e974

# .rodata:0x6D | 0x524D | size: 0x3
.obj gap_03_0000524D_rodata, global
.hidden gap_03_0000524D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000524D_rodata

# .rodata:0x70 | 0x5250 | size: 0x8
.obj str_PAI_N_1_tou2_0000e990, local
	.string "PAI_N_1"
.endobj str_PAI_N_1_tou2_0000e990

# .rodata:0x78 | 0x5258 | size: 0x8
.obj str_PAI_Y_1_tou2_0000e998, local
	.string "PAI_Y_1"
.endobj str_PAI_Y_1_tou2_0000e998

# .rodata:0x80 | 0x5260 | size: 0x8
.obj str_PAI_K_1_tou2_0000e9a0, local
	.string "PAI_K_1"
.endobj str_PAI_K_1_tou2_0000e9a0

# .rodata:0x88 | 0x5268 | size: 0x8
.obj str_PAI_X_1_tou2_0000e9a8, local
	.string "PAI_X_1"
.endobj str_PAI_X_1_tou2_0000e9a8

# .rodata:0x90 | 0x5270 | size: 0x8
.obj str_PAI_S_1_tou2_0000e9b0, local
	.string "PAI_S_1"
.endobj str_PAI_S_1_tou2_0000e9b0

# .rodata:0x98 | 0x5278 | size: 0x8
.obj str_PAI_D_1_tou2_0000e9b8, local
	.string "PAI_D_1"
.endobj str_PAI_D_1_tou2_0000e9b8

# .rodata:0xA0 | 0x5280 | size: 0x8
.obj str_PAI_A_1_tou2_0000e9c0, local
	.string "PAI_A_1"
.endobj str_PAI_A_1_tou2_0000e9c0

# .rodata:0xA8 | 0x5288 | size: 0x8
.obj str_PAI_W_1_tou2_0000e9c8, local
	.string "PAI_W_1"
.endobj str_PAI_W_1_tou2_0000e9c8

# .rodata:0xB0 | 0x5290 | size: 0x7
.obj str_c_paid_tou2_0000e9d0, local
	.string "c_paid"
.endobj str_c_paid_tou2_0000e9d0

# .rodata:0xB7 | 0x5297 | size: 0x1
.obj gap_03_00005297_rodata, global
.hidden gap_03_00005297_rodata
	.byte 0x00
.endobj gap_03_00005297_rodata

# .rodata:0xB8 | 0x5298 | size: 0x4
.obj dat_tou2_0000e9d8, local
	.4byte 0xFFFFFF00
.endobj dat_tou2_0000e9d8

# .rodata:0xBC | 0x529C | size: 0x15
.obj str_SFX_BTL_ENEMY_DIE1_1_tou2_0000e9dc, local
	.string "SFX_BTL_ENEMY_DIE1_1"
.endobj str_SFX_BTL_ENEMY_DIE1_1_tou2_0000e9dc

# .rodata:0xD1 | 0x52B1 | size: 0x3
.obj gap_03_000052B1_rodata, global
.hidden gap_03_000052B1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000052B1_rodata

# .rodata:0xD4 | 0x52B4 | size: 0x15
.obj str_SFX_BTL_ENEMY_DIE1_2_tou2_0000e9f4, local
	.string "SFX_BTL_ENEMY_DIE1_2"
.endobj str_SFX_BTL_ENEMY_DIE1_2_tou2_0000e9f4

# .rodata:0xE9 | 0x52C9 | size: 0x3
.obj gap_03_000052C9_rodata, global
.hidden gap_03_000052C9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000052C9_rodata

# .rodata:0xEC | 0x52CC | size: 0x1
.obj zero_tou2_0000ea0c, local
	.byte 0x00
.endobj zero_tou2_0000ea0c

# .rodata:0xED | 0x52CD | size: 0x3
.obj gap_03_000052CD_rodata, global
.hidden gap_03_000052CD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000052CD_rodata

# .rodata:0xF0 | 0x52D0 | size: 0xB
.obj str_expbom_n64_tou2_0000ea10, local
	.string "expbom_n64"
.endobj str_expbom_n64_tou2_0000ea10

# .rodata:0xFB | 0x52DB | size: 0x1
.obj gap_03_000052DB_rodata, global
.hidden gap_03_000052DB_rodata
	.byte 0x00
.endobj gap_03_000052DB_rodata

# .rodata:0xFC | 0x52DC | size: 0xB
.obj str_star_point_tou2_0000ea1c, local
	.string "star_point"
.endobj str_star_point_tou2_0000ea1c

# .rodata:0x107 | 0x52E7 | size: 0x1
.obj gap_03_000052E7_rodata, global
.hidden gap_03_000052E7_rodata
	.byte 0x00
.endobj gap_03_000052E7_rodata

# .rodata:0x108 | 0x52E8 | size: 0x16
.obj str_SFX_BTL_CLAUD_BREATH_tou2_0000ea28, local
	.string "SFX_BTL_CLAUD_BREATH3"
.endobj str_SFX_BTL_CLAUD_BREATH_tou2_0000ea28

# .rodata:0x11E | 0x52FE | size: 0x2
.obj gap_03_000052FE_rodata, global
.hidden gap_03_000052FE_rodata
	.2byte 0x0000
.endobj gap_03_000052FE_rodata

# .rodata:0x120 | 0x5300 | size: 0x14
.obj str_SFX_ENM_PAIDA_MOVE1_tou2_0000ea40, local
	.string "SFX_ENM_PAIDA_MOVE1"
.endobj str_SFX_ENM_PAIDA_MOVE1_tou2_0000ea40

# .rodata:0x134 | 0x5314 | size: 0x14
.obj str_SFX_ENM_PAIDA_MOVE2_tou2_0000ea54, local
	.string "SFX_ENM_PAIDA_MOVE2"
.endobj str_SFX_ENM_PAIDA_MOVE2_tou2_0000ea54

# .rodata:0x148 | 0x5328 | size: 0x9
.obj str_PAI_A_2a_tou2_0000ea68, local
	.string "PAI_A_2a"
.endobj str_PAI_A_2a_tou2_0000ea68

# .rodata:0x151 | 0x5331 | size: 0x3
.obj gap_03_00005331_rodata, global
.hidden gap_03_00005331_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005331_rodata

# .rodata:0x154 | 0x5334 | size: 0x16
.obj str_SFX_ENM_PAIDA_ATTACK_tou2_0000ea74, local
	.string "SFX_ENM_PAIDA_ATTACK1"
.endobj str_SFX_ENM_PAIDA_ATTACK_tou2_0000ea74

# .rodata:0x16A | 0x534A | size: 0x2
.obj gap_03_0000534A_rodata, global
.hidden gap_03_0000534A_rodata
	.2byte 0x0000
.endobj gap_03_0000534A_rodata

# .rodata:0x16C | 0x534C | size: 0x16
.obj str_SFX_ENM_PAIDA_ATTACK_tou2_0000ea8c, local
	.string "SFX_ENM_PAIDA_ATTACK2"
.endobj str_SFX_ENM_PAIDA_ATTACK_tou2_0000ea8c

# .rodata:0x182 | 0x5362 | size: 0x2
.obj gap_03_00005362_rodata, global
.hidden gap_03_00005362_rodata
	.2byte 0x0000
.endobj gap_03_00005362_rodata

# .rodata:0x184 | 0x5364 | size: 0x9
.obj str_PAI_A_3a_tou2_0000eaa4, local
	.string "PAI_A_3a"
.endobj str_PAI_A_3a_tou2_0000eaa4
	.byte 0x00, 0x00, 0x00

# .rodata:0x190 | 0x5370 | size: 0x4
.obj float_400_tou2_0000eab0, local
	.float 400
.endobj float_400_tou2_0000eab0

# .rodata:0x194 | 0x5374 | size: 0x4
.obj zero_tou2_0000eab4, local
	.float 0
.endobj zero_tou2_0000eab4

# .rodata:0x198 | 0x5378 | size: 0x8
.obj double_to_int_tou2_0000eab8, local
	.double 4503601774854144
.endobj double_to_int_tou2_0000eab8

# .rodata:0x1A0 | 0x5380 | size: 0x4
.obj float_1_tou2_0000eac0, local
	.float 1
.endobj float_1_tou2_0000eac0

# .rodata:0x1A4 | 0x5384 | size: 0x4
.obj float_5_tou2_0000eac4, local
	.float 5
.endobj float_5_tou2_0000eac4

# 0x0002E698..0x000307D8 | size: 0x2140
.data
.balign 8

# .data:0x0 | 0x2E698 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x2E6A0 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x2E6A4 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x2E6A8 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x2E6AC | size: 0x4
.obj gap_04_0002E6AC_data, global
.hidden gap_04_0002E6AC_data
	.4byte 0x00000000
.endobj gap_04_0002E6AC_data

# .data:0x18 | 0x2E6B0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x2E6B8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x2E6BC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x2E6C0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x2E6C8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x2E6CC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x2E6D0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x2E6D4 | size: 0x4
.obj gap_04_0002E6D4_data, global
.hidden gap_04_0002E6D4_data
	.4byte 0x00000000
.endobj gap_04_0002E6D4_data

# .data:0x40 | 0x2E6D8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x2E6E0 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x2E6E4 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x2E6E8 | size: 0xC4
.obj unit_piders_26_data_2E6E8, global
	.4byte 0x0000001B
	.4byte str_btl_un_piders_tou2_0000e920
	.4byte 0x00050000
	.4byte 0x01010C00
	.4byte 0x02460046
	.4byte 0x270F002E
	.4byte 0x00380000
	.4byte 0x00380000
	.4byte 0x00000000
	.4byte 0x41E00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41B80000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41900000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41500000
	.4byte 0x42000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41E00000
	.4byte 0x00000000
	.4byte 0x42380000
	.4byte 0x42600000
	.4byte 0x00000002
	.4byte 0x64000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_ENM_PAIDA_DAMAGE_tou2_0000e930
	.4byte str_SFX_BTL_DAMAGE_FIRE1_tou2_0000e948
	.4byte str_SFX_BTL_DAMAGE_ICE1_tou2_0000e960
	.4byte str_SFX_BTL_DAMAGE_BIRIB_tou2_0000e974
	.4byte 0x00000004
	.4byte regist
	.4byte 0x05000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_piders_26_data_2E6E8

# .data:0x114 | 0x2E7AC | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x2E7B1 | size: 0x3
.obj gap_04_0002E7B1_data, global
.hidden gap_04_0002E7B1_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0002E7B1_data

# .data:0x11C | 0x2E7B4 | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x2E7B9 | size: 0x3
.obj gap_04_0002E7B9_data, global
.hidden gap_04_0002E7B9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0002E7B9_data

# .data:0x124 | 0x2E7BC | size: 0x16
.obj regist, local
	.ascii "ZZ2dZddZdZdZd_ZdFdZdd_"
.endobj regist

# .data:0x13A | 0x2E7D2 | size: 0x2
.obj gap_04_0002E7D2_data, global
.hidden gap_04_0002E7D2_data
	.2byte 0x0000
.endobj gap_04_0002E7D2_data

# .data:0x13C | 0x2E7D4 | size: 0x90
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_PAI_N_1_tou2_0000e990
	.4byte 0x00000002
	.4byte str_PAI_Y_1_tou2_0000e998
	.4byte 0x00000009
	.4byte str_PAI_Y_1_tou2_0000e998
	.4byte 0x00000005
	.4byte str_PAI_K_1_tou2_0000e9a0
	.4byte 0x00000004
	.4byte str_PAI_X_1_tou2_0000e9a8
	.4byte 0x00000003
	.4byte str_PAI_X_1_tou2_0000e9a8
	.4byte 0x0000001C
	.4byte str_PAI_S_1_tou2_0000e9b0
	.4byte 0x0000001D
	.4byte str_PAI_D_1_tou2_0000e9b8
	.4byte 0x0000001E
	.4byte str_PAI_D_1_tou2_0000e9b8
	.4byte 0x0000001F
	.4byte str_PAI_S_1_tou2_0000e9b0
	.4byte 0x00000027
	.4byte str_PAI_D_1_tou2_0000e9b8
	.4byte 0x00000032
	.4byte str_PAI_A_1_tou2_0000e9c0
	.4byte 0x00000028
	.4byte str_PAI_W_1_tou2_0000e9c8
	.4byte 0x0000002A
	.4byte str_PAI_W_1_tou2_0000e9c8
	.4byte 0x00000038
	.4byte str_PAI_X_1_tou2_0000e9a8
	.4byte 0x00000039
	.4byte str_PAI_X_1_tou2_0000e9a8
	.4byte 0x00000041
	.4byte str_PAI_S_1_tou2_0000e9b0
	.4byte 0x00000045
	.4byte str_PAI_S_1_tou2_0000e9b0
.endobj pose_table

# .data:0x1CC | 0x2E864 | size: 0x28
.obj data_table, local
	.4byte 0x00000031
	.4byte dead_event
	.4byte 0x0000003A
	.4byte blow_dead_event
	.4byte 0x0000003F
	.4byte battle_end_event
	.4byte 0x00000030
	.4byte dmg_first_attack_pos
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x1F4 | 0x2E88C | size: 0x17C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_piders_tou2_0000e920
	.4byte str_c_paid_tou2_0000e9d0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42480000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x00600009
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000002
	.4byte str_btl_un_piders_tou2_0000e920
	.4byte str_c_paid_tou2_0000e9d0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x40A00000
	.4byte 0x41700000
	.4byte 0x41C80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x13010000
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000003
	.4byte str_btl_un_piders_tou2_0000e920
	.4byte str_c_paid_tou2_0000e9d0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41700000
	.4byte 0x41C80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x13010000
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000004
	.4byte str_btl_un_piders_tou2_0000e920
	.4byte str_c_paid_tou2_0000e9d0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41700000
	.4byte 0x41C80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x13010000
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000005
	.4byte str_btl_un_piders_tou2_0000e920
	.4byte str_c_paid_tou2_0000e9d0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41700000
	.4byte 0x41C80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x13010000
	.4byte 0x00000000
	.4byte pose_table
.endobj parts

# .data:0x370 | 0x2EA08 | size: 0xC0
.obj weapon_piders_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
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
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000087
	.4byte 0x000007FF
	.4byte 0x80002000
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
.endobj weapon_piders_attack

# .data:0x430 | 0x2EAC8 | size: 0xC0
.obj weapon_piders_renzoku_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000001
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
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000087
	.4byte 0x000007FF
	.4byte 0x80002000
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
.endobj weapon_piders_renzoku_attack

# .data:0x4F0 | 0x2EB88 | size: 0xD4
.obj init_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventWait
	.4byte 0xFFFFFFFE
	.4byte wait_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventUnisonPhase
	.4byte 0xFFFFFFFE
	.4byte unison_phase_event
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
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventEntry
	.4byte 0xFFFFFFFE
	.4byte entry_event
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0x0001005B
	.4byte piders_yarn_init
	.4byte 0x0001005C
	.4byte yarn_event
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x5C4 | 0x2EC5C | size: 0x4C
.obj dmg_first_attack_pos, local
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitAttackEnd
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dmg_first_attack_pos

# .data:0x610 | 0x2ECA8 | size: 0xB0
.obj yarn_event, local
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitId
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0x000000FF
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte piders_draw_yarn
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj yarn_event

# .data:0x6C0 | 0x2ED58 | size: 0xC0
.obj entry_event, local
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x000000B4
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000190
	.4byte 0x00020038
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000050
	.4byte 0x00010009
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x00000004
	.4byte 0x00000190
	.4byte 0x00000000
	.4byte 0x00000028
	.4byte 0x00010005
	.4byte 0x00000028
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj entry_event

# .data:0x780 | 0x2EE18 | size: 0x28
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

# .data:0x7A8 | 0x2EE40 | size: 0x2F4
.obj dead_event, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000030
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFE363C8A
	.4byte str_SFX_BTL_ENEMY_DIE1_1_tou2_0000e9dc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0xFFFFFFF1
	.4byte 0x00000000
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFE363C8A
	.4byte str_SFX_BTL_ENEMY_DIE1_2_tou2_0000e9f4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte zero_tou2_0000ea0c
	.4byte str_expbom_n64_tou2_0000ea10
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetCoin
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte btlevtcmd_StoreCoin
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte btlevtcmd_GetExp
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte btlevtcmd_StoreExp
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C8A
	.4byte 0xFE363C83
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte _add_star_point_disp_offset
	.4byte 0xFE363C8A
	.4byte 0xFE363C83
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_tou2_0000ea0c
	.4byte str_star_point_tou2_0000ea1c
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotateOffset
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x00010003
	.4byte 0x00000014
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFE363C8A
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000014
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x02000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00010000
	.4byte 0x0003005B
	.4byte btlevtcmd_OnAttribute
	.4byte 0xFE363C8A
	.4byte 0x10000000
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMaxMoveCount
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_OnAttribute
	.4byte 0xFE363C8A
	.4byte 0x02000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_KillUnit
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dead_event

# .data:0xA9C | 0x2F134 | size: 0x1A0
.obj blow_dead_event, local
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_BTL_CLAUD_BREATH_tou2_0000ea28
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetBodyId
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000027
	.4byte 0x0000006E
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000070
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8280
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_GetStageSize
	.4byte 0xFE363C80
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000028
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFF6
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte btlevtcmd_GetCoin
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte btlevtcmd_StoreCoin
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte btlevtcmd_GetExp
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte btlevtcmd_StoreExp
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00010000
	.4byte 0x0003005B
	.4byte btlevtcmd_OnAttribute
	.4byte 0xFE363C8A
	.4byte 0x10000000
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMaxMoveCount
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_OnAttribute
	.4byte 0xFE363C8A
	.4byte 0x02000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_KillUnit
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj blow_dead_event

# .data:0xC3C | 0x2F2D4 | size: 0x1C
.obj battle_end_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x000000FE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj battle_end_event

# .data:0xC58 | 0x2F2F0 | size: 0x130
.obj yure_event, local
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010005
	.4byte 0x00000016
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFFFFFFFB
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010005
	.4byte 0x00000014
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010005
	.4byte 0x00000010
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFFFFFFFD
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010005
	.4byte 0x0000000E
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010005
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x00000002
	.4byte 0x00000001
.endobj yure_event

# .data:0xD88 | 0x2F420 | size: 0x14C
.obj move_kuutei_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000004
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAIDA_MOVE1_tou2_0000ea40
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000007
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x00000020
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000004
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAIDA_MOVE2_tou2_0000ea54
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000007
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte yure_event
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0xFFFFFFF6
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00600000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj move_kuutei_event

# .data:0xED4 | 0x2F56C | size: 0xD8
.obj move_kuuchu_event, local
	.4byte 0x0001005C
	.4byte yure_event
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000046
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000004
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAIDA_MOVE2_tou2_0000ea54
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000007
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x0000000A
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00600000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj move_kuuchu_event

# .data:0xFAC | 0x2F644 | size: 0x1E0
.obj unison_phase_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_CheckPhase
	.4byte 0xFE363C80
	.4byte 0x04000001
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x0000001B
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_CheckActStatus
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte piders_get_zyun
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8E
	.4byte 0x00020018
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte move_kuuchu_event
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte move_kuutei_event
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte piders_get_first_pos_attr
	.4byte 0xFE363C8D
	.4byte 0x0002005B
	.4byte piders_get_num
	.4byte 0xFE363C8F
	.4byte 0x00020039
	.4byte 0xFE363C8F
	.4byte 0x00000002
	.4byte 0x00020018
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C8D
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte move_kuuchu_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte move_kuutei_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00020039
	.4byte 0xFE363C8E
	.4byte 0x00000002
	.4byte 0x00020018
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C8D
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte move_kuuchu_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte move_kuutei_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xFE363C8D
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte move_kuutei_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte move_kuuchu_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj unison_phase_event

# .data:0x118C | 0x2F824 | size: 0x120
.obj attack_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000C
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000D
	.4byte 0x00000000
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
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0x00000032
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_piders_attack
	.4byte 0x0001005E
	.4byte normal_attack_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_piders_renzoku_attack
	.4byte 0x0001005E
	.4byte renzoku_attack_event
	.4byte 0x00010004
	.4byte 0x00000063
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

# .data:0x12AC | 0x2F944 | size: 0x274
.obj damage_check_event_sub, local
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
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
	.4byte 0x00000063
	.4byte 0x0000002E
	.4byte 0x00000031
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x0003005B
	.4byte btlevtcmd_JumpPartsContinue
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0x02000000
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0x02000000
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000005
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000008
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020018
	.4byte 0xFE363C84
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C89
	.4byte 0x00020018
	.4byte 0xFE363C88
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000100
	.4byte 0xFE363C80
	.4byte 0x00000020
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj damage_check_event_sub

# .data:0x1520 | 0x2FBB8 | size: 0x28C
.obj piders_attack_common_event1, local
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000010
	.4byte 0xFE363C88
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C88
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0xF24A8680
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PAI_A_1_tou2_0000e9c0
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_PAI_A_2a_tou2_0000ea68
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x01000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetStatusMg
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C81
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24AF280
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotateOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAIDA_ATTACK_tou2_0000ea74
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x0000006E
	.4byte 0x00000005
	.4byte 0x00010005
	.4byte 0x00000005
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x00020037
	.4byte 0xFE363C80
	.4byte 0xFE363C88
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAIDA_ATTACK_tou2_0000ea74
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x00000004
	.4byte 0x0000006E
	.4byte 0x00000046
	.4byte 0x00000005
	.4byte 0x00010005
	.4byte 0x00000005
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x00020037
	.4byte 0xFE363C80
	.4byte 0xFE363C88
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010009
	.4byte 0x0000000F
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAIDA_ATTACK_tou2_0000ea74
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x00000004
	.4byte 0x00000046
	.4byte 0x00000064
	.4byte 0x00000005
	.4byte 0x00010005
	.4byte 0x00000005
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x00020037
	.4byte 0xFE363C80
	.4byte 0xFE363C88
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj piders_attack_common_event1

# .data:0x17AC | 0x2FE44 | size: 0x1B4
.obj piders_attack_common_event1_2, local
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000010
	.4byte 0xFE363C88
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C88
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0xF24A8680
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PAI_A_1_tou2_0000e9c0
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_PAI_A_2a_tou2_0000ea68
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x0000000B
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte btlevtcmd_GetStatusMg
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C81
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24AF280
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotateOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAIDA_ATTACK_tou2_0000ea74
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x00000004
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x00000005
	.4byte 0x00010005
	.4byte 0x00000005
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x00020037
	.4byte 0xFE363C80
	.4byte 0xFE363C88
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010009
	.4byte 0x00000005
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj piders_attack_common_event1_2

# .data:0x1960 | 0x2FFF8 | size: 0xBC
.obj piders_attack_common_event2, local
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000010
	.4byte 0xFE363C88
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C88
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x00000004
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x0000000F
	.4byte 0x00010005
	.4byte 0x0000000F
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x00020037
	.4byte 0xFE363C80
	.4byte 0xFE363C88
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PAI_S_1_tou2_0000e9b0
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x01000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj piders_attack_common_event2

# .data:0x1A1C | 0x300B4 | size: 0x118
.obj piders_attack_common_event3, local
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAIDA_ATTACK_tou2_0000ea8c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte str_PAI_A_3a_tou2_0000eaa4
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0x00000000
	.4byte 0xF24A9280
	.4byte 0xF24A7B80
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0x02000000
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsScale
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0xF24A8280
	.4byte 0xF24A8280
	.4byte 0xF24A8280
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000002
	.4byte 0x00000001
.endobj piders_attack_common_event3

# .data:0x1B34 | 0x301CC | size: 0x15C
.obj normal_attack_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_check_battleflag
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000063
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
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0x00000003
	.4byte 0x0001005E
	.4byte piders_attack_common_event1
	.4byte 0x0001005C
	.4byte piders_attack_common_event2
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x00000005
	.4byte 0x0001005E
	.4byte piders_attack_common_event3
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte damage_check_event_sub
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj normal_attack_event

# .data:0x1C90 | 0x30328 | size: 0x254
.obj renzoku_attack_event, local
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
	.4byte 0x0007005B
	.4byte piders_renzoku_attack_set_target
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000006
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000007
	.4byte 0xFE363C84
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000008
	.4byte 0xFE363C81
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000009
	.4byte 0xFE363C83
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000A
	.4byte 0xFE363C85
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xFE363C83
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000008
	.4byte 0xFE363C84
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x00000005
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000008
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0x00000003
	.4byte 0x0001005E
	.4byte piders_attack_common_event1
	.4byte 0x00010005
	.4byte 0x00000003
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0xFE363C83
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C86
	.4byte 0xFE363C84
	.4byte 0x0001005E
	.4byte piders_attack_common_event3
	.4byte 0x0001005C
	.4byte renzoku_attack_event_sub
	.4byte 0x00020035
	.4byte 0xFE363C85
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C87
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x00000006
	.4byte 0x0001005C
	.4byte piders_attack_common_event2
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj renzoku_attack_event

# .data:0x1EE4 | 0x3057C | size: 0xDC
.obj renzoku_attack_event_sub, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFE363C85
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0xFE363C86
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C81
	.4byte 0xFE363C84
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000007
	.4byte 0x0001005E
	.4byte renzoku_attack_event_sub_last
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C88
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C81
	.4byte 0xFE363C8A
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFE363C88
	.4byte 0x00020018
	.4byte 0xFE363C84
	.4byte 0xFE363C8A
	.4byte 0x0001005E
	.4byte renzoku_attack_event_sub_no_last
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj renzoku_attack_event_sub

# .data:0x1FC0 | 0x30658 | size: 0x28
.obj renzoku_attack_event_sub_no_last, local
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte damage_check_event_sub
	.4byte 0x00000002
	.4byte 0x00000001
.endobj renzoku_attack_event_sub_no_last

# .data:0x1FE8 | 0x30680 | size: 0x13C
.obj renzoku_attack_event_sub_last, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000005
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000008
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020018
	.4byte 0xFE363C84
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00020018
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0x02000000
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
	.4byte 0xFE363C80
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte damage_check_event_sub
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj renzoku_attack_event_sub_last

# .data:0x2124 | 0x307BC | size: 0x1C
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0x00000000
.endobj wait_event
