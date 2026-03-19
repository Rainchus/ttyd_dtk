.include "macros.inc"
.file "unit_churantalar.o"

# 0x000067FC..0x00006F60 | size: 0x764
.text
.balign 4

# .text:0x0 | 0x67FC | size: 0x74
.fn piders_get_next_target, local
/* 000067FC 000068C0  3C A0 00 00 */	lis r5, _battleWorkPointer@ha
/* 00006800 000068C4  38 A5 00 00 */	addi r5, r5, _battleWorkPointer@l
/* 00006804 000068C8  80 A5 00 00 */	lwz r5, 0x0(r5)
/* 00006808 000068CC  38 C5 04 28 */	addi r6, r5, 0x428
/* 0000680C 000068D0  88 A5 0E DF */	lbz r5, 0xedf(r5)
/* 00006810 000068D4  38 05 00 01 */	addi r0, r5, 0x1
/* 00006814 000068D8  98 06 0A B7 */	stb r0, 0xab7(r6)
/* 00006818 000068DC  88 A6 0A B7 */	lbz r5, 0xab7(r6)
/* 0000681C 000068E0  88 06 0A 6C */	lbz r0, 0xa6c(r6)
/* 00006820 000068E4  7C A5 07 74 */	extsb r5, r5
/* 00006824 000068E8  7C 00 07 74 */	extsb r0, r0
/* 00006828 000068EC  7C 05 00 00 */	cmpw r5, r0
/* 0000682C 000068F0  40 80 00 30 */	bge .L_0000685C
/* 00006830 000068F4  7C A6 2A 14 */	add r5, r6, r5
/* 00006834 000068F8  88 05 0A 6D */	lbz r0, 0xa6d(r5)
/* 00006838 000068FC  7C 00 07 74 */	extsb r0, r0
/* 0000683C 00006900  1C A0 00 24 */	mulli r5, r0, 0x24
/* 00006840 00006904  38 A5 00 04 */	addi r5, r5, 0x4
/* 00006844 00006908  7C A6 2A 14 */	add r5, r6, r5
/* 00006848 0000690C  A8 05 00 00 */	lha r0, 0x0(r5)
/* 0000684C 00006910  90 03 00 00 */	stw r0, 0x0(r3)
/* 00006850 00006914  A8 05 00 02 */	lha r0, 0x2(r5)
/* 00006854 00006918  90 04 00 00 */	stw r0, 0x0(r4)
/* 00006858 0000691C  4E 80 00 20 */	blr
.L_0000685C:
/* 0000685C 00006920  38 A0 FF FF */	li r5, -0x1
/* 00006860 00006924  38 00 00 00 */	li r0, 0x0
/* 00006864 00006928  90 A3 00 00 */	stw r5, 0x0(r3)
/* 00006868 0000692C  90 04 00 00 */	stw r0, 0x0(r4)
/* 0000686C 00006930  4E 80 00 20 */	blr
.endfn piders_get_next_target

# .text:0x74 | 0x6870 | size: 0x44
.fn piders_get_target, local
/* 00006870 00006934  3C A0 00 00 */	lis r5, _battleWorkPointer@ha
/* 00006874 00006938  38 A5 00 00 */	addi r5, r5, _battleWorkPointer@l
/* 00006878 0000693C  80 A5 00 00 */	lwz r5, 0x0(r5)
/* 0000687C 00006940  38 C5 04 28 */	addi r6, r5, 0x428
/* 00006880 00006944  88 05 0E DF */	lbz r0, 0xedf(r5)
/* 00006884 00006948  7C 00 07 74 */	extsb r0, r0
/* 00006888 0000694C  7C A6 02 14 */	add r5, r6, r0
/* 0000688C 00006950  88 05 0A 6D */	lbz r0, 0xa6d(r5)
/* 00006890 00006954  7C 00 07 74 */	extsb r0, r0
/* 00006894 00006958  1C A0 00 24 */	mulli r5, r0, 0x24
/* 00006898 0000695C  38 A5 00 04 */	addi r5, r5, 0x4
/* 0000689C 00006960  7C A6 2A 14 */	add r5, r6, r5
/* 000068A0 00006964  A8 05 00 00 */	lha r0, 0x0(r5)
/* 000068A4 00006968  90 03 00 00 */	stw r0, 0x0(r3)
/* 000068A8 0000696C  A8 05 00 02 */	lha r0, 0x2(r5)
/* 000068AC 00006970  90 04 00 00 */	stw r0, 0x0(r4)
/* 000068B0 00006974  4E 80 00 20 */	blr
.endfn piders_get_target

# .text:0xB8 | 0x68B4 | size: 0x15C
.fn piders_renzoku_attack_set_target, local
/* 000068B4 00006978  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 000068B8 0000697C  7C 08 02 A6 */	mflr r0
/* 000068BC 00006980  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 000068C0 00006984  38 A0 00 00 */	li r5, 0x0
/* 000068C4 00006988  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 000068C8 0000698C  39 01 00 58 */	addi r8, r1, 0x58
/* 000068CC 00006990  BF 21 00 B4 */	stmw r25, 0xb4(r1)
/* 000068D0 00006994  7C 7E 1B 78 */	mr r30, r3
/* 000068D4 00006998  38 64 00 00 */	addi r3, r4, _battleWorkPointer@l
/* 000068D8 0000699C  38 80 00 00 */	li r4, 0x0
/* 000068DC 000069A0  83 FE 00 18 */	lwz r31, 0x18(r30)
/* 000068E0 000069A4  80 C3 00 00 */	lwz r6, 0x0(r3)
/* 000068E4 000069A8  98 A6 0E DF */	stb r5, 0xedf(r6)
/* 000068E8 000069AC  80 C3 00 00 */	lwz r6, 0x0(r3)
/* 000068EC 000069B0  88 06 0E DF */	lbz r0, 0xedf(r6)
/* 000068F0 000069B4  39 26 04 28 */	addi r9, r6, 0x428
/* 000068F4 000069B8  7C 00 07 74 */	extsb r0, r0
/* 000068F8 000069BC  7C C9 02 14 */	add r6, r9, r0
/* 000068FC 000069C0  88 06 0A 6D */	lbz r0, 0xa6d(r6)
/* 00006900 000069C4  7C 00 07 74 */	extsb r0, r0
/* 00006904 000069C8  1C C0 00 24 */	mulli r6, r0, 0x24
/* 00006908 000069CC  38 E6 00 04 */	addi r7, r6, 0x4
/* 0000690C 000069D0  7C E9 3A 14 */	add r7, r9, r7
/* 00006910 000069D4  A8 C7 00 00 */	lha r6, 0x0(r7)
/* 00006914 000069D8  A8 07 00 02 */	lha r0, 0x2(r7)
/* 00006918 000069DC  90 C1 00 58 */	stw r6, 0x58(r1)
/* 0000691C 000069E0  90 01 00 08 */	stw r0, 0x8(r1)
.L_00006920:
/* 00006920 000069E4  7C 08 28 2E */	lwzx r0, r8, r5
/* 00006924 000069E8  2C 00 FF FF */	cmpwi r0, -0x1
/* 00006928 000069EC  40 82 00 0C */	bne .L_00006934
/* 0000692C 000069F0  7C 99 23 78 */	mr r25, r4
/* 00006930 000069F4  48 00 00 80 */	b .L_000069B0
.L_00006934:
/* 00006934 000069F8  80 C3 00 00 */	lwz r6, 0x0(r3)
/* 00006938 000069FC  38 84 00 01 */	addi r4, r4, 0x1
/* 0000693C 00006A00  38 A5 00 04 */	addi r5, r5, 0x4
/* 00006940 00006A04  39 46 04 28 */	addi r10, r6, 0x428
/* 00006944 00006A08  88 C6 0E DF */	lbz r6, 0xedf(r6)
/* 00006948 00006A0C  38 06 00 01 */	addi r0, r6, 0x1
/* 0000694C 00006A10  98 0A 0A B7 */	stb r0, 0xab7(r10)
/* 00006950 00006A14  88 CA 0A B7 */	lbz r6, 0xab7(r10)
/* 00006954 00006A18  88 0A 0A 6C */	lbz r0, 0xa6c(r10)
/* 00006958 00006A1C  7C C6 07 74 */	extsb r6, r6
/* 0000695C 00006A20  7C 00 07 74 */	extsb r0, r0
/* 00006960 00006A24  7C 06 00 00 */	cmpw r6, r0
/* 00006964 00006A28  40 80 00 34 */	bge .L_00006998
/* 00006968 00006A2C  38 06 0A 6D */	addi r0, r6, 0xa6d
/* 0000696C 00006A30  38 C1 00 08 */	addi r6, r1, 0x8
/* 00006970 00006A34  7C 0A 00 AE */	lbzx r0, r10, r0
/* 00006974 00006A38  7C 00 07 74 */	extsb r0, r0
/* 00006978 00006A3C  1C E0 00 24 */	mulli r7, r0, 0x24
/* 0000697C 00006A40  39 27 00 04 */	addi r9, r7, 0x4
/* 00006980 00006A44  7D 2A 4A 14 */	add r9, r10, r9
/* 00006984 00006A48  A8 E9 00 00 */	lha r7, 0x0(r9)
/* 00006988 00006A4C  A8 09 00 02 */	lha r0, 0x2(r9)
/* 0000698C 00006A50  7C E8 29 2E */	stwx r7, r8, r5
/* 00006990 00006A54  7C 06 29 2E */	stwx r0, r6, r5
/* 00006994 00006A58  4B FF FF 8C */	b .L_00006920
.L_00006998:
/* 00006998 00006A5C  38 E0 FF FF */	li r7, -0x1
/* 0000699C 00006A60  38 C1 00 08 */	addi r6, r1, 0x8
/* 000069A0 00006A64  38 00 00 00 */	li r0, 0x0
/* 000069A4 00006A68  7C E8 29 2E */	stwx r7, r8, r5
/* 000069A8 00006A6C  7C 06 29 2E */	stwx r0, r6, r5
/* 000069AC 00006A70  4B FF FF 74 */	b .L_00006920
.L_000069B0:
/* 000069B0 00006A74  3B 81 00 58 */	addi r28, r1, 0x58
/* 000069B4 00006A78  3B A1 00 08 */	addi r29, r1, 0x8
/* 000069B8 00006A7C  3B 40 00 00 */	li r26, 0x0
.L_000069BC:
/* 000069BC 00006A80  7F 23 CB 78 */	mr r3, r25
/* 000069C0 00006A84  4B FF A0 B1 */	bl irand
/* 000069C4 00006A88  54 7B 10 3A */	slwi r27, r3, 2
/* 000069C8 00006A8C  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 000069CC 00006A90  7C BC D8 2E */	lwzx r5, r28, r27
/* 000069D0 00006A94  7F C3 F3 78 */	mr r3, r30
/* 000069D4 00006A98  4B FF A0 9D */	bl evtSetValue
/* 000069D8 00006A9C  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 000069DC 00006AA0  7F C3 F3 78 */	mr r3, r30
/* 000069E0 00006AA4  7C BD D8 2E */	lwzx r5, r29, r27
/* 000069E4 00006AA8  3B FF 00 08 */	addi r31, r31, 0x8
/* 000069E8 00006AAC  4B FF A0 89 */	bl evtSetValue
/* 000069EC 00006AB0  3B 5A 00 01 */	addi r26, r26, 0x1
/* 000069F0 00006AB4  2C 1A 00 03 */	cmpwi r26, 0x3
/* 000069F4 00006AB8  41 80 FF C8 */	blt .L_000069BC
/* 000069F8 00006ABC  BB 21 00 B4 */	lmw r25, 0xb4(r1)
/* 000069FC 00006AC0  38 60 00 02 */	li r3, 0x2
/* 00006A00 00006AC4  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 00006A04 00006AC8  7C 08 03 A6 */	mtlr r0
/* 00006A08 00006ACC  38 21 00 D0 */	addi r1, r1, 0xd0
/* 00006A0C 00006AD0  4E 80 00 20 */	blr
.endfn piders_renzoku_attack_set_target

# .text:0x214 | 0x6A10 | size: 0xC0
.fn piders_get_first_pos_attr, local
/* 00006A10 00006AD4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00006A14 00006AD8  7C 08 02 A6 */	mflr r0
/* 00006A18 00006ADC  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00006A1C 00006AE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 00006A20 00006AE4  BF 41 00 08 */	stmw r26, 0x8(r1)
/* 00006A24 00006AE8  7C 7A 1B 78 */	mr r26, r3
/* 00006A28 00006AEC  3B C0 00 00 */	li r30, 0x0
/* 00006A2C 00006AF0  3B E0 00 00 */	li r31, 0x0
/* 00006A30 00006AF4  83 A3 00 18 */	lwz r29, 0x18(r3)
/* 00006A34 00006AF8  83 84 00 00 */	lwz r28, _battleWorkPointer@l(r4)
.L_00006A38:
/* 00006A38 00006AFC  38 1F 00 20 */	addi r0, r31, 0x20
/* 00006A3C 00006B00  7F 7C 00 2E */	lwzx r27, r28, r0
/* 00006A40 00006B04  28 1B 00 00 */	cmplwi r27, 0x0
/* 00006A44 00006B08  41 82 00 2C */	beq .L_00006A70
/* 00006A48 00006B0C  80 1B 00 08 */	lwz r0, 0x8(r27)
/* 00006A4C 00006B10  2C 00 00 1B */	cmpwi r0, 0x1b
/* 00006A50 00006B14  41 82 00 0C */	beq .L_00006A5C
/* 00006A54 00006B18  2C 00 00 A4 */	cmpwi r0, 0xa4
/* 00006A58 00006B1C  40 82 00 18 */	bne .L_00006A70
.L_00006A5C:
/* 00006A5C 00006B20  7F 63 DB 78 */	mr r3, r27
/* 00006A60 00006B24  38 80 00 1B */	li r4, 0x1b
/* 00006A64 00006B28  4B FF A0 0D */	bl BtlUnit_CheckStatus
/* 00006A68 00006B2C  2C 03 00 00 */	cmpwi r3, 0x0
/* 00006A6C 00006B30  41 82 00 14 */	beq .L_00006A80
.L_00006A70:
/* 00006A70 00006B34  3B DE 00 01 */	addi r30, r30, 0x1
/* 00006A74 00006B38  3B FF 00 04 */	addi r31, r31, 0x4
/* 00006A78 00006B3C  2C 1E 00 40 */	cmpwi r30, 0x40
/* 00006A7C 00006B40  41 80 FF BC */	blt .L_00006A38
.L_00006A80:
/* 00006A80 00006B44  83 DB 02 18 */	lwz r30, 0x218(r27)
/* 00006A84 00006B48  7F 63 DB 78 */	mr r3, r27
/* 00006A88 00006B4C  4B FF 9F E9 */	bl BtlUnit_CanActStatus
/* 00006A8C 00006B50  2C 03 00 00 */	cmpwi r3, 0x0
/* 00006A90 00006B54  41 82 00 18 */	beq .L_00006AA8
/* 00006A94 00006B58  2C 1E 00 00 */	cmpwi r30, 0x0
/* 00006A98 00006B5C  40 82 00 0C */	bne .L_00006AA4
/* 00006A9C 00006B60  3B C0 00 01 */	li r30, 0x1
/* 00006AA0 00006B64  48 00 00 08 */	b .L_00006AA8
.L_00006AA4:
/* 00006AA4 00006B68  3B C0 00 00 */	li r30, 0x0
.L_00006AA8:
/* 00006AA8 00006B6C  80 9D 00 00 */	lwz r4, 0x0(r29)
/* 00006AAC 00006B70  7F 43 D3 78 */	mr r3, r26
/* 00006AB0 00006B74  7F C5 F3 78 */	mr r5, r30
/* 00006AB4 00006B78  4B FF 9F BD */	bl evtSetValue
/* 00006AB8 00006B7C  BB 41 00 08 */	lmw r26, 0x8(r1)
/* 00006ABC 00006B80  38 60 00 02 */	li r3, 0x2
/* 00006AC0 00006B84  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00006AC4 00006B88  7C 08 03 A6 */	mtlr r0
/* 00006AC8 00006B8C  38 21 00 20 */	addi r1, r1, 0x20
/* 00006ACC 00006B90  4E 80 00 20 */	blr
.endfn piders_get_first_pos_attr

# .text:0x2D4 | 0x6AD0 | size: 0xCC
.fn piders_get_zyun, local
/* 00006AD0 00006B94  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00006AD4 00006B98  7C 08 02 A6 */	mflr r0
/* 00006AD8 00006B9C  90 01 00 34 */	stw r0, 0x34(r1)
/* 00006ADC 00006BA0  BF 01 00 10 */	stmw r24, 0x10(r1)
/* 00006AE0 00006BA4  7C 78 1B 78 */	mr r24, r3
/* 00006AE4 00006BA8  3B 60 00 00 */	li r27, 0x0
/* 00006AE8 00006BAC  83 83 00 18 */	lwz r28, 0x18(r3)
/* 00006AEC 00006BB0  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 00006AF0 00006BB4  4B FF 9F 81 */	bl evtGetValue
/* 00006AF4 00006BB8  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00006AF8 00006BBC  7C 60 1B 78 */	mr r0, r3
/* 00006AFC 00006BC0  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00006B00 00006BC4  7F 03 C3 78 */	mr r3, r24
/* 00006B04 00006BC8  83 45 00 00 */	lwz r26, 0x0(r5)
/* 00006B08 00006BCC  7C 04 03 78 */	mr r4, r0
/* 00006B0C 00006BD0  4B FF 9F 65 */	bl BattleTransID
/* 00006B10 00006BD4  7C 7E 1B 78 */	mr r30, r3
/* 00006B14 00006BD8  3B A0 00 00 */	li r29, 0x0
/* 00006B18 00006BDC  3B E0 00 00 */	li r31, 0x0
.L_00006B1C:
/* 00006B1C 00006BE0  38 1F 00 20 */	addi r0, r31, 0x20
/* 00006B20 00006BE4  7F 3A 00 2E */	lwzx r25, r26, r0
/* 00006B24 00006BE8  28 19 00 00 */	cmplwi r25, 0x0
/* 00006B28 00006BEC  41 82 00 3C */	beq .L_00006B64
/* 00006B2C 00006BF0  80 19 00 08 */	lwz r0, 0x8(r25)
/* 00006B30 00006BF4  2C 00 00 1B */	cmpwi r0, 0x1b
/* 00006B34 00006BF8  41 82 00 0C */	beq .L_00006B40
/* 00006B38 00006BFC  2C 00 00 A4 */	cmpwi r0, 0xa4
/* 00006B3C 00006C00  40 82 00 28 */	bne .L_00006B64
.L_00006B40:
/* 00006B40 00006C04  7F 23 CB 78 */	mr r3, r25
/* 00006B44 00006C08  38 80 00 1B */	li r4, 0x1b
/* 00006B48 00006C0C  4B FF 9F 29 */	bl BtlUnit_CheckStatus
/* 00006B4C 00006C10  2C 03 00 00 */	cmpwi r3, 0x0
/* 00006B50 00006C14  40 82 00 08 */	bne .L_00006B58
/* 00006B54 00006C18  3B 7B 00 01 */	addi r27, r27, 0x1
.L_00006B58:
/* 00006B58 00006C1C  80 19 00 00 */	lwz r0, 0x0(r25)
/* 00006B5C 00006C20  7C 00 F0 00 */	cmpw r0, r30
/* 00006B60 00006C24  41 82 00 14 */	beq .L_00006B74
.L_00006B64:
/* 00006B64 00006C28  3B BD 00 01 */	addi r29, r29, 0x1
/* 00006B68 00006C2C  3B FF 00 04 */	addi r31, r31, 0x4
/* 00006B6C 00006C30  2C 1D 00 40 */	cmpwi r29, 0x40
/* 00006B70 00006C34  41 80 FF AC */	blt .L_00006B1C
.L_00006B74:
/* 00006B74 00006C38  80 9C 00 04 */	lwz r4, 0x4(r28)
/* 00006B78 00006C3C  7F 03 C3 78 */	mr r3, r24
/* 00006B7C 00006C40  7F 65 DB 78 */	mr r5, r27
/* 00006B80 00006C44  4B FF 9E F1 */	bl evtSetValue
/* 00006B84 00006C48  BB 01 00 10 */	lmw r24, 0x10(r1)
/* 00006B88 00006C4C  38 60 00 02 */	li r3, 0x2
/* 00006B8C 00006C50  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00006B90 00006C54  7C 08 03 A6 */	mtlr r0
/* 00006B94 00006C58  38 21 00 30 */	addi r1, r1, 0x30
/* 00006B98 00006C5C  4E 80 00 20 */	blr
.endfn piders_get_zyun

# .text:0x3A0 | 0x6B9C | size: 0x9C
.fn piders_get_num, local
/* 00006B9C 00006C60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00006BA0 00006C64  7C 08 02 A6 */	mflr r0
/* 00006BA4 00006C68  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00006BA8 00006C6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 00006BAC 00006C70  BF 41 00 08 */	stmw r26, 0x8(r1)
/* 00006BB0 00006C74  7C 7A 1B 78 */	mr r26, r3
/* 00006BB4 00006C78  3B 80 00 00 */	li r28, 0x0
/* 00006BB8 00006C7C  3B C0 00 00 */	li r30, 0x0
/* 00006BBC 00006C80  3B E0 00 00 */	li r31, 0x0
/* 00006BC0 00006C84  83 A3 00 18 */	lwz r29, 0x18(r3)
/* 00006BC4 00006C88  83 64 00 00 */	lwz r27, _battleWorkPointer@l(r4)
.L_00006BC8:
/* 00006BC8 00006C8C  38 1F 00 20 */	addi r0, r31, 0x20
/* 00006BCC 00006C90  7C 7B 00 2E */	lwzx r3, r27, r0
/* 00006BD0 00006C94  28 03 00 00 */	cmplwi r3, 0x0
/* 00006BD4 00006C98  41 82 00 2C */	beq .L_00006C00
/* 00006BD8 00006C9C  80 03 00 08 */	lwz r0, 0x8(r3)
/* 00006BDC 00006CA0  2C 00 00 1B */	cmpwi r0, 0x1b
/* 00006BE0 00006CA4  41 82 00 0C */	beq .L_00006BEC
/* 00006BE4 00006CA8  2C 00 00 A4 */	cmpwi r0, 0xa4
/* 00006BE8 00006CAC  40 82 00 18 */	bne .L_00006C00
.L_00006BEC:
/* 00006BEC 00006CB0  38 80 00 1B */	li r4, 0x1b
/* 00006BF0 00006CB4  4B FF 9E 81 */	bl BtlUnit_CheckStatus
/* 00006BF4 00006CB8  2C 03 00 00 */	cmpwi r3, 0x0
/* 00006BF8 00006CBC  40 82 00 08 */	bne .L_00006C00
/* 00006BFC 00006CC0  3B 9C 00 01 */	addi r28, r28, 0x1
.L_00006C00:
/* 00006C00 00006CC4  3B DE 00 01 */	addi r30, r30, 0x1
/* 00006C04 00006CC8  3B FF 00 04 */	addi r31, r31, 0x4
/* 00006C08 00006CCC  2C 1E 00 40 */	cmpwi r30, 0x40
/* 00006C0C 00006CD0  41 80 FF BC */	blt .L_00006BC8
/* 00006C10 00006CD4  80 9D 00 00 */	lwz r4, 0x0(r29)
/* 00006C14 00006CD8  7F 43 D3 78 */	mr r3, r26
/* 00006C18 00006CDC  7F 85 E3 78 */	mr r5, r28
/* 00006C1C 00006CE0  4B FF 9E 55 */	bl evtSetValue
/* 00006C20 00006CE4  BB 41 00 08 */	lmw r26, 0x8(r1)
/* 00006C24 00006CE8  38 60 00 02 */	li r3, 0x2
/* 00006C28 00006CEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00006C2C 00006CF0  7C 08 03 A6 */	mtlr r0
/* 00006C30 00006CF4  38 21 00 20 */	addi r1, r1, 0x20
/* 00006C34 00006CF8  4E 80 00 20 */	blr
.endfn piders_get_num

# .text:0x43C | 0x6C38 | size: 0xE4
.fn piders_draw_yarn, local
/* 00006C38 00006CFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00006C3C 00006D00  7C 08 02 A6 */	mflr r0
/* 00006C40 00006D04  90 01 00 24 */	stw r0, 0x24(r1)
/* 00006C44 00006D08  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 00006C48 00006D0C  7C 7D 1B 78 */	mr r29, r3
/* 00006C4C 00006D10  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00006C50 00006D14  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00006C54 00006D18  4B FF 9E 1D */	bl evtGetValue
/* 00006C58 00006D1C  54 7F 06 3E */	clrlwi r31, r3, 24
/* 00006C5C 00006D20  7F A3 EB 78 */	mr r3, r29
/* 00006C60 00006D24  38 80 FF FE */	li r4, -0x2
/* 00006C64 00006D28  4B FF 9E 0D */	bl BattleTransID
/* 00006C68 00006D2C  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00006C6C 00006D30  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00006C70 00006D34  7C 64 1B 78 */	mr r4, r3
/* 00006C74 00006D38  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00006C78 00006D3C  4B FF 9D F9 */	bl BattleGetUnitPtr
/* 00006C7C 00006D40  83 A3 03 14 */	lwz r29, 0x314(r3)
/* 00006C80 00006D44  7C 7E 1B 78 */	mr r30, r3
/* 00006C84 00006D48  38 9D 00 0C */	addi r4, r29, 0xc
/* 00006C88 00006D4C  38 BD 00 10 */	addi r5, r29, 0x10
/* 00006C8C 00006D50  38 DD 00 14 */	addi r6, r29, 0x14
/* 00006C90 00006D54  4B FF 9D E1 */	bl BtlUnit_GetHomePos
/* 00006C94 00006D58  80 7E 02 20 */	lwz r3, 0x220(r30)
/* 00006C98 00006D5C  3C 00 43 30 */	lis r0, 0x4330
/* 00006C9C 00006D60  90 01 00 08 */	stw r0, 0x8(r1)
/* 00006CA0 00006D64  3C 80 00 00 */	lis r4, double_to_int_jon_0000e890@ha
/* 00006CA4 00006D68  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 00006CA8 00006D6C  C8 24 00 00 */	lfd f1, double_to_int_jon_0000e890@l(r4)
/* 00006CAC 00006D70  90 01 00 0C */	stw r0, 0xc(r1)
/* 00006CB0 00006D74  7F C3 F3 78 */	mr r3, r30
/* 00006CB4 00006D78  7F A4 EB 78 */	mr r4, r29
/* 00006CB8 00006D7C  38 BD 00 04 */	addi r5, r29, 0x4
/* 00006CBC 00006D80  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 00006CC0 00006D84  38 DD 00 08 */	addi r6, r29, 0x8
/* 00006CC4 00006D88  EC 00 08 28 */	fsubs f0, f0, f1
/* 00006CC8 00006D8C  D0 1D 00 10 */	stfs f0, 0x10(r29)
/* 00006CCC 00006D90  4B FF 9D A5 */	bl BtlUnit_GetHomePos
/* 00006CD0 00006D94  3C 60 00 00 */	lis r3, float_400_jon_0000e888@ha
/* 00006CD4 00006D98  3C 80 00 00 */	lis r4, zero_jon_0000e88c@ha
/* 00006CD8 00006D9C  38 A3 00 00 */	addi r5, r3, float_400_jon_0000e888@l
/* 00006CDC 00006DA0  C0 24 00 00 */	lfs f1, zero_jon_0000e88c@l(r4)
/* 00006CE0 00006DA4  C0 05 00 00 */	lfs f0, 0x0(r5)
/* 00006CE4 00006DA8  3C 60 00 00 */	lis r3, piders_draw_yarn_sub@ha
/* 00006CE8 00006DAC  38 A3 00 00 */	addi r5, r3, piders_draw_yarn_sub@l
/* 00006CEC 00006DB0  7F A6 EB 78 */	mr r6, r29
/* 00006CF0 00006DB4  D0 1D 00 04 */	stfs f0, 0x4(r29)
/* 00006CF4 00006DB8  38 60 00 04 */	li r3, 0x4
/* 00006CF8 00006DBC  38 80 00 02 */	li r4, 0x2
/* 00006CFC 00006DC0  9B FD 00 18 */	stb r31, 0x18(r29)
/* 00006D00 00006DC4  4B FF 9D 71 */	bl dispEntry
/* 00006D04 00006DC8  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 00006D08 00006DCC  38 60 00 02 */	li r3, 0x2
/* 00006D0C 00006DD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00006D10 00006DD4  7C 08 03 A6 */	mtlr r0
/* 00006D14 00006DD8  38 21 00 20 */	addi r1, r1, 0x20
/* 00006D18 00006DDC  4E 80 00 20 */	blr
.endfn piders_draw_yarn

# .text:0x520 | 0x6D1C | size: 0x1F0
.fn piders_draw_yarn_sub, local
/* 00006D1C 00006DE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00006D20 00006DE4  7C 08 02 A6 */	mflr r0
/* 00006D24 00006DE8  38 60 00 04 */	li r3, 0x4
/* 00006D28 00006DEC  90 01 00 24 */	stw r0, 0x24(r1)
/* 00006D2C 00006DF0  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 00006D30 00006DF4  7C 9E 23 78 */	mr r30, r4
/* 00006D34 00006DF8  4B FF 9D 3D */	bl camGetPtr
/* 00006D38 00006DFC  7C 7F 1B 78 */	mr r31, r3
/* 00006D3C 00006E00  38 60 00 00 */	li r3, 0x0
/* 00006D40 00006E04  4B FF 9D 31 */	bl GXSetCullMode
/* 00006D44 00006E08  4B FF 9D 2D */	bl GXClearVtxDesc
/* 00006D48 00006E0C  38 60 00 09 */	li r3, 0x9
/* 00006D4C 00006E10  38 80 00 01 */	li r4, 0x1
/* 00006D50 00006E14  4B FF 9D 21 */	bl GXSetVtxDesc
/* 00006D54 00006E18  38 60 00 00 */	li r3, 0x0
/* 00006D58 00006E1C  38 80 00 09 */	li r4, 0x9
/* 00006D5C 00006E20  38 A0 00 01 */	li r5, 0x1
/* 00006D60 00006E24  38 C0 00 04 */	li r6, 0x4
/* 00006D64 00006E28  38 E0 00 00 */	li r7, 0x0
/* 00006D68 00006E2C  4B FF 9D 09 */	bl GXSetVtxAttrFmt
/* 00006D6C 00006E30  38 60 00 01 */	li r3, 0x1
/* 00006D70 00006E34  4B FF 9D 01 */	bl GXSetNumChans
/* 00006D74 00006E38  38 60 00 04 */	li r3, 0x4
/* 00006D78 00006E3C  38 80 00 00 */	li r4, 0x0
/* 00006D7C 00006E40  38 A0 00 00 */	li r5, 0x0
/* 00006D80 00006E44  38 C0 00 00 */	li r6, 0x0
/* 00006D84 00006E48  38 E0 00 00 */	li r7, 0x0
/* 00006D88 00006E4C  39 00 00 02 */	li r8, 0x2
/* 00006D8C 00006E50  39 20 00 02 */	li r9, 0x2
/* 00006D90 00006E54  4B FF 9C E1 */	bl GXSetChanCtrl
/* 00006D94 00006E58  3C 60 00 00 */	lis r3, dat_jon_0000e7b0@ha
/* 00006D98 00006E5C  88 1E 00 18 */	lbz r0, 0x18(r30)
/* 00006D9C 00006E60  80 A3 00 00 */	lwz r5, dat_jon_0000e7b0@l(r3)
/* 00006DA0 00006E64  38 81 00 0C */	addi r4, r1, 0xc
/* 00006DA4 00006E68  38 60 00 04 */	li r3, 0x4
/* 00006DA8 00006E6C  90 A1 00 08 */	stw r5, 0x8(r1)
/* 00006DAC 00006E70  98 01 00 0B */	stb r0, 0xb(r1)
/* 00006DB0 00006E74  80 01 00 08 */	lwz r0, 0x8(r1)
/* 00006DB4 00006E78  90 01 00 0C */	stw r0, 0xc(r1)
/* 00006DB8 00006E7C  4B FF 9C B9 */	bl GXSetChanMatColor
/* 00006DBC 00006E80  38 60 00 00 */	li r3, 0x0
/* 00006DC0 00006E84  4B FF 9C B1 */	bl GXSetNumTexGens
/* 00006DC4 00006E88  38 60 00 01 */	li r3, 0x1
/* 00006DC8 00006E8C  4B FF 9C A9 */	bl GXSetNumTevStages
/* 00006DCC 00006E90  38 60 00 00 */	li r3, 0x0
/* 00006DD0 00006E94  38 80 00 00 */	li r4, 0x0
/* 00006DD4 00006E98  38 A0 00 00 */	li r5, 0x0
/* 00006DD8 00006E9C  38 C0 00 00 */	li r6, 0x0
/* 00006DDC 00006EA0  38 E0 00 01 */	li r7, 0x1
/* 00006DE0 00006EA4  39 00 00 00 */	li r8, 0x0
/* 00006DE4 00006EA8  4B FF 9C 8D */	bl GXSetTevColorOp
/* 00006DE8 00006EAC  38 60 00 00 */	li r3, 0x0
/* 00006DEC 00006EB0  38 80 00 0F */	li r4, 0xf
/* 00006DF0 00006EB4  38 A0 00 0F */	li r5, 0xf
/* 00006DF4 00006EB8  38 C0 00 0F */	li r6, 0xf
/* 00006DF8 00006EBC  38 E0 00 0A */	li r7, 0xa
/* 00006DFC 00006EC0  4B FF 9C 75 */	bl GXSetTevColorIn
/* 00006E00 00006EC4  38 60 00 00 */	li r3, 0x0
/* 00006E04 00006EC8  38 80 00 00 */	li r4, 0x0
/* 00006E08 00006ECC  38 A0 00 00 */	li r5, 0x0
/* 00006E0C 00006ED0  38 C0 00 00 */	li r6, 0x0
/* 00006E10 00006ED4  38 E0 00 01 */	li r7, 0x1
/* 00006E14 00006ED8  39 00 00 00 */	li r8, 0x0
/* 00006E18 00006EDC  4B FF 9C 59 */	bl GXSetTevAlphaOp
/* 00006E1C 00006EE0  38 60 00 00 */	li r3, 0x0
/* 00006E20 00006EE4  38 80 00 07 */	li r4, 0x7
/* 00006E24 00006EE8  38 A0 00 07 */	li r5, 0x7
/* 00006E28 00006EEC  38 C0 00 07 */	li r6, 0x7
/* 00006E2C 00006EF0  38 E0 00 05 */	li r7, 0x5
/* 00006E30 00006EF4  4B FF 9C 41 */	bl GXSetTevAlphaIn
/* 00006E34 00006EF8  38 60 00 00 */	li r3, 0x0
/* 00006E38 00006EFC  38 80 00 FF */	li r4, 0xff
/* 00006E3C 00006F00  38 A0 00 FF */	li r5, 0xff
/* 00006E40 00006F04  38 C0 00 04 */	li r6, 0x4
/* 00006E44 00006F08  4B FF 9C 2D */	bl GXSetTevOrder
/* 00006E48 00006F0C  38 7F 01 1C */	addi r3, r31, 0x11c
/* 00006E4C 00006F10  38 80 00 00 */	li r4, 0x0
/* 00006E50 00006F14  4B FF 9C 21 */	bl GXLoadPosMtxImm
/* 00006E54 00006F18  38 60 00 80 */	li r3, 0x80
/* 00006E58 00006F1C  38 80 00 00 */	li r4, 0x0
/* 00006E5C 00006F20  38 A0 00 04 */	li r5, 0x4
/* 00006E60 00006F24  4B FF 9C 11 */	bl GXBegin
/* 00006E64 00006F28  3C 60 00 00 */	lis r3, float_1_jon_0000e89c@ha
/* 00006E68 00006F2C  3C 80 00 00 */	lis r4, float_5_jon_0000e898@ha
/* 00006E6C 00006F30  C0 43 00 00 */	lfs f2, float_1_jon_0000e89c@l(r3)
/* 00006E70 00006F34  3C 60 CC 01 */	lis r3, 0xcc01
/* 00006E74 00006F38  C0 1E 00 00 */	lfs f0, 0x0(r30)
/* 00006E78 00006F3C  C0 3E 00 08 */	lfs f1, 0x8(r30)
/* 00006E7C 00006F40  EC 00 10 28 */	fsubs f0, f0, f2
/* 00006E80 00006F44  C0 9E 00 04 */	lfs f4, 0x4(r30)
/* 00006E84 00006F48  C0 64 00 00 */	lfs f3, float_5_jon_0000e898@l(r4)
/* 00006E88 00006F4C  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 00006E8C 00006F50  EC 01 18 28 */	fsubs f0, f1, f3
/* 00006E90 00006F54  D0 83 80 00 */	stfs f4, -0x8000(r3)
/* 00006E94 00006F58  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 00006E98 00006F5C  C0 1E 00 00 */	lfs f0, 0x0(r30)
/* 00006E9C 00006F60  C0 3E 00 08 */	lfs f1, 0x8(r30)
/* 00006EA0 00006F64  EC 02 00 2A */	fadds f0, f2, f0
/* 00006EA4 00006F68  C0 9E 00 04 */	lfs f4, 0x4(r30)
/* 00006EA8 00006F6C  EC 21 18 28 */	fsubs f1, f1, f3
/* 00006EAC 00006F70  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 00006EB0 00006F74  D0 83 80 00 */	stfs f4, -0x8000(r3)
/* 00006EB4 00006F78  D0 23 80 00 */	stfs f1, -0x8000(r3)
/* 00006EB8 00006F7C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 00006EBC 00006F80  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 00006EC0 00006F84  EC 02 00 2A */	fadds f0, f2, f0
/* 00006EC4 00006F88  C0 9E 00 10 */	lfs f4, 0x10(r30)
/* 00006EC8 00006F8C  EC 21 18 28 */	fsubs f1, f1, f3
/* 00006ECC 00006F90  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 00006ED0 00006F94  D0 83 80 00 */	stfs f4, -0x8000(r3)
/* 00006ED4 00006F98  D0 23 80 00 */	stfs f1, -0x8000(r3)
/* 00006ED8 00006F9C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 00006EDC 00006FA0  C0 3E 00 14 */	lfs f1, 0x14(r30)
/* 00006EE0 00006FA4  EC 00 10 28 */	fsubs f0, f0, f2
/* 00006EE4 00006FA8  C0 5E 00 10 */	lfs f2, 0x10(r30)
/* 00006EE8 00006FAC  EC 21 18 28 */	fsubs f1, f1, f3
/* 00006EEC 00006FB0  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 00006EF0 00006FB4  D0 43 80 00 */	stfs f2, -0x8000(r3)
/* 00006EF4 00006FB8  D0 23 80 00 */	stfs f1, -0x8000(r3)
/* 00006EF8 00006FBC  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 00006EFC 00006FC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00006F00 00006FC4  7C 08 03 A6 */	mtlr r0
/* 00006F04 00006FC8  38 21 00 20 */	addi r1, r1, 0x20
/* 00006F08 00006FCC  4E 80 00 20 */	blr
.endfn piders_draw_yarn_sub

# .text:0x710 | 0x6F0C | size: 0x54
.fn piders_yarn_init, local
/* 00006F0C 00006FD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00006F10 00006FD4  7C 08 02 A6 */	mflr r0
/* 00006F14 00006FD8  38 80 FF FE */	li r4, -0x2
/* 00006F18 00006FDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 00006F1C 00006FE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 00006F20 00006FE4  4B FF 9B 51 */	bl BattleTransID
/* 00006F24 00006FE8  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00006F28 00006FEC  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00006F2C 00006FF0  7C 64 1B 78 */	mr r4, r3
/* 00006F30 00006FF4  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00006F34 00006FF8  4B FF 9B 3D */	bl BattleGetUnitPtr
/* 00006F38 00006FFC  7C 7F 1B 78 */	mr r31, r3
/* 00006F3C 00007000  38 60 00 1C */	li r3, 0x1c
/* 00006F40 00007004  4B FF 9B 31 */	bl BattleAlloc
/* 00006F44 00007008  90 7F 03 14 */	stw r3, 0x314(r31)
/* 00006F48 0000700C  38 60 00 02 */	li r3, 0x2
/* 00006F4C 00007010  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00006F50 00007014  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 00006F54 00007018  7C 08 03 A6 */	mtlr r0
/* 00006F58 0000701C  38 21 00 10 */	addi r1, r1, 0x10
/* 00006F5C 00007020  4E 80 00 20 */	blr
.endfn piders_yarn_init

# 0x000076C0..0x00007870 | size: 0x1B0
.rodata
.balign 8

# .rodata:0x0 | 0x76C0 | size: 0x13
.obj str_btl_un_churantalar_jon_0000e6f0, local
	.string "btl_un_churantalar"
.endobj str_btl_un_churantalar_jon_0000e6f0

# .rodata:0x13 | 0x76D3 | size: 0x1
.obj gap_03_000076D3_rodata, global
.hidden gap_03_000076D3_rodata
	.byte 0x00
.endobj gap_03_000076D3_rodata

# .rodata:0x14 | 0x76D4 | size: 0x17
.obj str_SFX_ENM_PAIDA_DAMAGE_jon_0000e704, local
	.string "SFX_ENM_PAIDA_DAMAGED1"
.endobj str_SFX_ENM_PAIDA_DAMAGE_jon_0000e704

# .rodata:0x2B | 0x76EB | size: 0x1
.obj gap_03_000076EB_rodata, global
.hidden gap_03_000076EB_rodata
	.byte 0x00
.endobj gap_03_000076EB_rodata

# .rodata:0x2C | 0x76EC | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_jon_0000e71c, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_jon_0000e71c

# .rodata:0x41 | 0x7701 | size: 0x3
.obj gap_03_00007701_rodata, global
.hidden gap_03_00007701_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007701_rodata

# .rodata:0x44 | 0x7704 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_jon_0000e734, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_jon_0000e734

# .rodata:0x58 | 0x7718 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_jon_0000e748, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_jon_0000e748

# .rodata:0x71 | 0x7731 | size: 0x3
.obj gap_03_00007731_rodata, global
.hidden gap_03_00007731_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007731_rodata

# .rodata:0x74 | 0x7734 | size: 0x8
.obj str_PAI_N_1_jon_0000e764, local
	.string "PAI_N_1"
.endobj str_PAI_N_1_jon_0000e764

# .rodata:0x7C | 0x773C | size: 0x8
.obj str_PAI_Y_1_jon_0000e76c, local
	.string "PAI_Y_1"
.endobj str_PAI_Y_1_jon_0000e76c

# .rodata:0x84 | 0x7744 | size: 0x8
.obj str_PAI_K_1_jon_0000e774, local
	.string "PAI_K_1"
.endobj str_PAI_K_1_jon_0000e774

# .rodata:0x8C | 0x774C | size: 0x8
.obj str_PAI_X_1_jon_0000e77c, local
	.string "PAI_X_1"
.endobj str_PAI_X_1_jon_0000e77c

# .rodata:0x94 | 0x7754 | size: 0x8
.obj str_PAI_S_1_jon_0000e784, local
	.string "PAI_S_1"
.endobj str_PAI_S_1_jon_0000e784

# .rodata:0x9C | 0x775C | size: 0x8
.obj str_PAI_D_1_jon_0000e78c, local
	.string "PAI_D_1"
.endobj str_PAI_D_1_jon_0000e78c

# .rodata:0xA4 | 0x7764 | size: 0x8
.obj str_PAI_A_1_jon_0000e794, local
	.string "PAI_A_1"
.endobj str_PAI_A_1_jon_0000e794

# .rodata:0xAC | 0x776C | size: 0x8
.obj str_PAI_W_1_jon_0000e79c, local
	.string "PAI_W_1"
.endobj str_PAI_W_1_jon_0000e79c

# .rodata:0xB4 | 0x7774 | size: 0x9
.obj str_c_paid_b_jon_0000e7a4, local
	.string "c_paid_b"
.endobj str_c_paid_b_jon_0000e7a4

# .rodata:0xBD | 0x777D | size: 0x3
.obj gap_03_0000777D_rodata, global
.hidden gap_03_0000777D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000777D_rodata

# .rodata:0xC0 | 0x7780 | size: 0x4
.obj dat_jon_0000e7b0, local
	.4byte 0xFFFFFF00
.endobj dat_jon_0000e7b0

# .rodata:0xC4 | 0x7784 | size: 0x15
.obj str_SFX_BTL_ENEMY_DIE1_1_jon_0000e7b4, local
	.string "SFX_BTL_ENEMY_DIE1_1"
.endobj str_SFX_BTL_ENEMY_DIE1_1_jon_0000e7b4

# .rodata:0xD9 | 0x7799 | size: 0x3
.obj gap_03_00007799_rodata, global
.hidden gap_03_00007799_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007799_rodata

# .rodata:0xDC | 0x779C | size: 0x15
.obj str_SFX_BTL_ENEMY_DIE1_2_jon_0000e7cc, local
	.string "SFX_BTL_ENEMY_DIE1_2"
.endobj str_SFX_BTL_ENEMY_DIE1_2_jon_0000e7cc

# .rodata:0xF1 | 0x77B1 | size: 0x3
.obj gap_03_000077B1_rodata, global
.hidden gap_03_000077B1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000077B1_rodata

# .rodata:0xF4 | 0x77B4 | size: 0x1
.obj zero_jon_0000e7e4, local
	.byte 0x00
.endobj zero_jon_0000e7e4

# .rodata:0xF5 | 0x77B5 | size: 0x3
.obj gap_03_000077B5_rodata, global
.hidden gap_03_000077B5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000077B5_rodata

# .rodata:0xF8 | 0x77B8 | size: 0xB
.obj str_expbom_n64_jon_0000e7e8, local
	.string "expbom_n64"
.endobj str_expbom_n64_jon_0000e7e8

# .rodata:0x103 | 0x77C3 | size: 0x1
.obj gap_03_000077C3_rodata, global
.hidden gap_03_000077C3_rodata
	.byte 0x00
.endobj gap_03_000077C3_rodata

# .rodata:0x104 | 0x77C4 | size: 0xB
.obj str_star_point_jon_0000e7f4, local
	.string "star_point"
.endobj str_star_point_jon_0000e7f4

# .rodata:0x10F | 0x77CF | size: 0x1
.obj gap_03_000077CF_rodata, global
.hidden gap_03_000077CF_rodata
	.byte 0x00
.endobj gap_03_000077CF_rodata

# .rodata:0x110 | 0x77D0 | size: 0x16
.obj str_SFX_BTL_CLAUD_BREATH_jon_0000e800, local
	.string "SFX_BTL_CLAUD_BREATH3"
.endobj str_SFX_BTL_CLAUD_BREATH_jon_0000e800

# .rodata:0x126 | 0x77E6 | size: 0x2
.obj gap_03_000077E6_rodata, global
.hidden gap_03_000077E6_rodata
	.2byte 0x0000
.endobj gap_03_000077E6_rodata

# .rodata:0x128 | 0x77E8 | size: 0x14
.obj str_SFX_ENM_PAIDA_MOVE1_jon_0000e818, local
	.string "SFX_ENM_PAIDA_MOVE1"
.endobj str_SFX_ENM_PAIDA_MOVE1_jon_0000e818

# .rodata:0x13C | 0x77FC | size: 0x14
.obj str_SFX_ENM_PAIDA_MOVE2_jon_0000e82c, local
	.string "SFX_ENM_PAIDA_MOVE2"
.endobj str_SFX_ENM_PAIDA_MOVE2_jon_0000e82c

# .rodata:0x150 | 0x7810 | size: 0x9
.obj str_PAI_A_2a_jon_0000e840, local
	.string "PAI_A_2a"
.endobj str_PAI_A_2a_jon_0000e840

# .rodata:0x159 | 0x7819 | size: 0x3
.obj gap_03_00007819_rodata, global
.hidden gap_03_00007819_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007819_rodata

# .rodata:0x15C | 0x781C | size: 0x16
.obj str_SFX_ENM_PAIDA_ATTACK_jon_0000e84c, local
	.string "SFX_ENM_PAIDA_ATTACK1"
.endobj str_SFX_ENM_PAIDA_ATTACK_jon_0000e84c

# .rodata:0x172 | 0x7832 | size: 0x2
.obj gap_03_00007832_rodata, global
.hidden gap_03_00007832_rodata
	.2byte 0x0000
.endobj gap_03_00007832_rodata

# .rodata:0x174 | 0x7834 | size: 0x16
.obj str_SFX_ENM_PAIDA_ATTACK_jon_0000e864, local
	.string "SFX_ENM_PAIDA_ATTACK2"
.endobj str_SFX_ENM_PAIDA_ATTACK_jon_0000e864

# .rodata:0x18A | 0x784A | size: 0x2
.obj gap_03_0000784A_rodata, global
.hidden gap_03_0000784A_rodata
	.2byte 0x0000
.endobj gap_03_0000784A_rodata

# .rodata:0x18C | 0x784C | size: 0x9
.obj str_PAI_A_3a_jon_0000e87c, local
	.string "PAI_A_3a"
.endobj str_PAI_A_3a_jon_0000e87c
	.byte 0x00, 0x00, 0x00

# .rodata:0x198 | 0x7858 | size: 0x4
.obj float_400_jon_0000e888, local
	.float 400
.endobj float_400_jon_0000e888

# .rodata:0x19C | 0x785C | size: 0x4
.obj zero_jon_0000e88c, local
	.float 0
.endobj zero_jon_0000e88c

# .rodata:0x1A0 | 0x7860 | size: 0x8
.obj double_to_int_jon_0000e890, local
	.double 4503601774854144
.endobj double_to_int_jon_0000e890

# .rodata:0x1A8 | 0x7868 | size: 0x4
.obj float_5_jon_0000e898, local
	.float 5
.endobj float_5_jon_0000e898

# .rodata:0x1AC | 0x786C | size: 0x4
.obj float_1_jon_0000e89c, local
	.float 1
.endobj float_1_jon_0000e89c

# 0x0006AAA8..0x0006CF3C | size: 0x2494
.data
.balign 8

# .data:0x0 | 0x6AAA8 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x6AAB0 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x6AAB4 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x6AAB8 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x6AABC | size: 0x4
.obj gap_04_0006AABC_data, global
.hidden gap_04_0006AABC_data
	.4byte 0x00000000
.endobj gap_04_0006AABC_data

# .data:0x18 | 0x6AAC0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x6AAC8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x6AACC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x6AAD0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x6AAD8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x6AADC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x6AAE0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x6AAE4 | size: 0x4
.obj gap_04_0006AAE4_data, global
.hidden gap_04_0006AAE4_data
	.4byte 0x00000000
.endobj gap_04_0006AAE4_data

# .data:0x40 | 0x6AAE8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x6AAF0 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x6AAF4 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x6AAF8 | size: 0xC4
.obj unit_churantalar_14_data_6AAF8, global
	.4byte 0x000000A4
	.4byte str_btl_un_churantalar_jon_0000e6f0
	.4byte 0x00100000
	.4byte 0x01012201
	.4byte 0x03460132
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
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_ENM_PAIDA_DAMAGE_jon_0000e704
	.4byte str_SFX_BTL_DAMAGE_FIRE1_jon_0000e71c
	.4byte str_SFX_BTL_DAMAGE_ICE1_jon_0000e734
	.4byte str_SFX_BTL_DAMAGE_BIRIB_jon_0000e748
	.4byte 0x00000004
	.4byte regist
	.4byte 0x05000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_churantalar_14_data_6AAF8

# .data:0x114 | 0x6ABBC | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x6ABC1 | size: 0x3
.obj gap_04_0006ABC1_data, global
.hidden gap_04_0006ABC1_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0006ABC1_data

# .data:0x11C | 0x6ABC4 | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x6ABC9 | size: 0x3
.obj gap_04_0006ABC9_data, global
.hidden gap_04_0006ABC9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0006ABC9_data

# .data:0x124 | 0x6ABCC | size: 0x16
.obj regist, local
	.4byte 0x46461E64
	.4byte 0x46646446
	.4byte 0x64506450
	.4byte 0x64554650
	.4byte 0x1E644664
	.2byte 0x641E
.endobj regist

# .data:0x13A | 0x6ABE2 | size: 0x2
.obj gap_04_0006ABE2_data, global
.hidden gap_04_0006ABE2_data
	.2byte 0x0000
.endobj gap_04_0006ABE2_data

# .data:0x13C | 0x6ABE4 | size: 0x90
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_PAI_N_1_jon_0000e764
	.4byte 0x00000002
	.4byte str_PAI_Y_1_jon_0000e76c
	.4byte 0x00000009
	.4byte str_PAI_Y_1_jon_0000e76c
	.4byte 0x00000005
	.4byte str_PAI_K_1_jon_0000e774
	.4byte 0x00000004
	.4byte str_PAI_X_1_jon_0000e77c
	.4byte 0x00000003
	.4byte str_PAI_X_1_jon_0000e77c
	.4byte 0x0000001C
	.4byte str_PAI_S_1_jon_0000e784
	.4byte 0x0000001D
	.4byte str_PAI_D_1_jon_0000e78c
	.4byte 0x0000001E
	.4byte str_PAI_D_1_jon_0000e78c
	.4byte 0x0000001F
	.4byte str_PAI_S_1_jon_0000e784
	.4byte 0x00000027
	.4byte str_PAI_D_1_jon_0000e78c
	.4byte 0x00000032
	.4byte str_PAI_A_1_jon_0000e794
	.4byte 0x00000028
	.4byte str_PAI_W_1_jon_0000e79c
	.4byte 0x0000002A
	.4byte str_PAI_W_1_jon_0000e79c
	.4byte 0x00000038
	.4byte str_PAI_X_1_jon_0000e77c
	.4byte 0x00000039
	.4byte str_PAI_X_1_jon_0000e77c
	.4byte 0x00000041
	.4byte str_PAI_S_1_jon_0000e784
	.4byte 0x00000045
	.4byte str_PAI_S_1_jon_0000e784
.endobj pose_table

# .data:0x1CC | 0x6AC74 | size: 0x28
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

# .data:0x1F4 | 0x6AC9C | size: 0x17C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_churantalar_jon_0000e6f0
	.4byte str_c_paid_b_jon_0000e7a4
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
	.4byte str_btl_un_churantalar_jon_0000e6f0
	.4byte str_c_paid_b_jon_0000e7a4
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
	.4byte str_btl_un_churantalar_jon_0000e6f0
	.4byte str_c_paid_b_jon_0000e7a4
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
	.4byte str_btl_un_churantalar_jon_0000e6f0
	.4byte str_c_paid_b_jon_0000e7a4
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
	.4byte str_btl_un_churantalar_jon_0000e6f0
	.4byte str_c_paid_b_jon_0000e7a4
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

# .data:0x370 | 0x6AE18 | size: 0xC0
.obj weapon_piders_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000007
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

# .data:0x430 | 0x6AED8 | size: 0xC0
.obj weapon_piders_renzoku_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
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

# .data:0x4F0 | 0x6AF98 | size: 0xD4
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

# .data:0x5C4 | 0x6B06C | size: 0x4C
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

# .data:0x610 | 0x6B0B8 | size: 0xB0
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

# .data:0x6C0 | 0x6B168 | size: 0xC0
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

# .data:0x780 | 0x6B228 | size: 0x28
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

# .data:0x7A8 | 0x6B250 | size: 0x2F4
.obj dead_event, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000030
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFE363C8A
	.4byte str_SFX_BTL_ENEMY_DIE1_1_jon_0000e7b4
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
	.4byte str_SFX_BTL_ENEMY_DIE1_2_jon_0000e7cc
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
	.4byte zero_jon_0000e7e4
	.4byte str_expbom_n64_jon_0000e7e8
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
	.4byte zero_jon_0000e7e4
	.4byte str_star_point_jon_0000e7f4
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

# .data:0xA9C | 0x6B544 | size: 0x1A0
.obj blow_dead_event, local
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_BTL_CLAUD_BREATH_jon_0000e800
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

# .data:0xC3C | 0x6B6E4 | size: 0x1C
.obj battle_end_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x000000FE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj battle_end_event

# .data:0xC58 | 0x6B700 | size: 0x130
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

# .data:0xD88 | 0x6B830 | size: 0x14C
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
	.4byte str_SFX_ENM_PAIDA_MOVE1_jon_0000e818
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
	.4byte str_SFX_ENM_PAIDA_MOVE2_jon_0000e82c
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

# .data:0xED4 | 0x6B97C | size: 0xD8
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
	.4byte str_SFX_ENM_PAIDA_MOVE2_jon_0000e82c
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

# .data:0xFAC | 0x6BA54 | size: 0x1E0
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

# .data:0x118C | 0x6BC34 | size: 0x120
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

# .data:0x12AC | 0x6BD54 | size: 0x274
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

# .data:0x1520 | 0x6BFC8 | size: 0x28C
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
	.4byte str_PAI_A_1_jon_0000e794
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_PAI_A_2a_jon_0000e840
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
	.4byte str_SFX_ENM_PAIDA_ATTACK_jon_0000e84c
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
	.4byte str_SFX_ENM_PAIDA_ATTACK_jon_0000e84c
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
	.4byte str_SFX_ENM_PAIDA_ATTACK_jon_0000e84c
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

# .data:0x17AC | 0x6C254 | size: 0x1B4
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
	.4byte str_PAI_A_1_jon_0000e794
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_PAI_A_2a_jon_0000e840
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
	.4byte str_SFX_ENM_PAIDA_ATTACK_jon_0000e84c
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

# .data:0x1960 | 0x6C408 | size: 0xBC
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
	.4byte str_PAI_S_1_jon_0000e784
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x01000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj piders_attack_common_event2

# .data:0x1A1C | 0x6C4C4 | size: 0x198
.obj piders_attack_common_event3, local
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAIDA_ATTACK_jon_0000e864
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte str_PAI_A_3a_jon_0000e87c
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010022
	.4byte 0xFE363C85
	.4byte 0x00010024
	.4byte 0x00000005
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
	.4byte 0x0000002E
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0x00000000
	.4byte 0xF24A8A80
	.4byte 0xF24A7B80
	.4byte 0x0000002E
	.4byte 0x00010024
	.4byte 0x00000007
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000000F
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0x00000000
	.4byte 0xF24A9A80
	.4byte 0xF24A7B80
	.4byte 0x0000002E
	.4byte 0x00000031
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

# .data:0x1BB4 | 0x6C65C | size: 0x15C
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

# .data:0x1D10 | 0x6C7B8 | size: 0x52C
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
	.4byte piders_attack_common_event1
	.4byte 0x0001005E
	.4byte piders_attack_common_event3
	.4byte 0x0001005C
	.4byte renzoku_attack_event_sub
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C85
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C87
	.4byte 0x00000001
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
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAIDA_ATTACK_jon_0000e84c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x00000004
	.4byte 0x00000064
	.4byte 0xFFFFFF38
	.4byte 0x00000014
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000014
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
	.4byte 0x00000070
	.4byte 0x00010009
	.4byte 0x0000000F
	.4byte 0x0001005E
	.4byte piders_attack_common_event3
	.4byte 0x0001005C
	.4byte renzoku_attack_event_sub
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C85
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C87
	.4byte 0x00000001
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
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PAIDA_ATTACK_jon_0000e84c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x00000004
	.4byte 0xFFFFFF38
	.4byte 0x000000AA
	.4byte 0x00000014
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000014
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
	.4byte 0x00000070
	.4byte 0x00010009
	.4byte 0x0000000F
	.4byte 0x0001005E
	.4byte piders_attack_common_event3
	.4byte 0x0001005E
	.4byte renzoku_attack_event_sub
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C85
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C87
	.4byte 0x00000001
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
	.4byte 0x000000AA
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
	.4byte str_PAI_S_1_jon_0000e784
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x01000000
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

# .data:0x223C | 0x6CCE4 | size: 0xDC
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

# .data:0x2318 | 0x6CDC0 | size: 0x28
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

# .data:0x2340 | 0x6CDE8 | size: 0x13C
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

# .data:0x247C | 0x6CF24 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event
