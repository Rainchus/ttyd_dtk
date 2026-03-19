.include "macros.inc"
.file "evt_kagemario.o"

# 0x00004CE4..0x000050F0 | size: 0x40C
.text
.balign 4

# .text:0x0 | 0x4CE4 | size: 0x40
.fn test, local
/* 00004CE4 00004DA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00004CE8 00004DAC  7C 08 02 A6 */	mflr r0
/* 00004CEC 00004DB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 00004CF0 00004DB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 00004CF4 00004DB8  3B E0 00 00 */	li r31, 0x0
/* 00004CF8 00004DBC  4B FF B3 09 */	bl marioGetPtr
/* 00004CFC 00004DC0  9B E3 02 47 */	stb r31, 0x247(r3)
/* 00004D00 00004DC4  3B E0 00 00 */	li r31, 0x0
/* 00004D04 00004DC8  4B FF B2 FD */	bl marioGetPtr
/* 00004D08 00004DCC  9B E3 02 48 */	stb r31, 0x248(r3)
/* 00004D0C 00004DD0  38 60 00 02 */	li r3, 0x2
/* 00004D10 00004DD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00004D14 00004DD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 00004D18 00004DDC  7C 08 03 A6 */	mtlr r0
/* 00004D1C 00004DE0  38 21 00 10 */	addi r1, r1, 0x10
/* 00004D20 00004DE4  4E 80 00 20 */	blr
.endfn test

# .text:0x40 | 0x4D24 | size: 0xC4
.fn evt_kagemario_change_13_text_4D24, global
/* 00004D24 00004DE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00004D28 00004DEC  7C 08 02 A6 */	mflr r0
/* 00004D2C 00004DF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 00004D30 00004DF4  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00004D34 00004DF8  80 63 00 18 */	lwz r3, 0x18(r3)
/* 00004D38 00004DFC  80 03 00 00 */	lwz r0, 0x0(r3)
/* 00004D3C 00004E00  2C 00 00 00 */	cmpwi r0, 0x0
/* 00004D40 00004E04  40 82 00 44 */	bne .L_00004D84
/* 00004D44 00004E08  3B C0 00 00 */	li r30, 0x0
/* 00004D48 00004E0C  7F DF F3 78 */	mr r31, r30
.L_00004D4C:
/* 00004D4C 00004E10  4B FF B2 B5 */	bl marioGetPtr
/* 00004D50 00004E14  38 1F 02 2C */	addi r0, r31, 0x22c
/* 00004D54 00004E18  3C 80 0A 00 */	lis r4, 0xa00
/* 00004D58 00004E1C  7C 63 00 2E */	lwzx r3, r3, r0
/* 00004D5C 00004E20  4B FF B2 A5 */	bl animPoseSetMaterialFlagOff
/* 00004D60 00004E24  3B DE 00 01 */	addi r30, r30, 0x1
/* 00004D64 00004E28  3B FF 00 04 */	addi r31, r31, 0x4
/* 00004D68 00004E2C  2C 1E 00 03 */	cmpwi r30, 0x3
/* 00004D6C 00004E30  41 80 FF E0 */	blt .L_00004D4C
/* 00004D70 00004E34  4B FF B2 91 */	bl marioGetPtr
/* 00004D74 00004E38  80 03 00 00 */	lwz r0, 0x0(r3)
/* 00004D78 00004E3C  54 00 00 80 */	rlwinm r0, r0, 0, 2, 0
/* 00004D7C 00004E40  90 03 00 00 */	stw r0, 0x0(r3)
/* 00004D80 00004E44  48 00 00 50 */	b .L_00004DD0
.L_00004D84:
/* 00004D84 00004E48  3C 80 00 00 */	lis r4, callback@ha
/* 00004D88 00004E4C  38 60 00 0A */	li r3, 0xa
/* 00004D8C 00004E50  38 84 00 00 */	addi r4, r4, callback@l
/* 00004D90 00004E54  4B FF B2 71 */	bl mapSetTevCallback
/* 00004D94 00004E58  3B C0 00 00 */	li r30, 0x0
/* 00004D98 00004E5C  3B E0 00 00 */	li r31, 0x0
.L_00004D9C:
/* 00004D9C 00004E60  4B FF B2 65 */	bl marioGetPtr
/* 00004DA0 00004E64  38 1F 02 2C */	addi r0, r31, 0x22c
/* 00004DA4 00004E68  3C 80 0A 00 */	lis r4, 0xa00
/* 00004DA8 00004E6C  7C 63 00 2E */	lwzx r3, r3, r0
/* 00004DAC 00004E70  4B FF B2 55 */	bl animPoseSetMaterialFlagOn
/* 00004DB0 00004E74  3B DE 00 01 */	addi r30, r30, 0x1
/* 00004DB4 00004E78  3B FF 00 04 */	addi r31, r31, 0x4
/* 00004DB8 00004E7C  2C 1E 00 03 */	cmpwi r30, 0x3
/* 00004DBC 00004E80  41 80 FF E0 */	blt .L_00004D9C
/* 00004DC0 00004E84  4B FF B2 41 */	bl marioGetPtr
/* 00004DC4 00004E88  80 03 00 00 */	lwz r0, 0x0(r3)
/* 00004DC8 00004E8C  64 00 40 00 */	oris r0, r0, 0x4000
/* 00004DCC 00004E90  90 03 00 00 */	stw r0, 0x0(r3)
.L_00004DD0:
/* 00004DD0 00004E94  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00004DD4 00004E98  38 60 00 02 */	li r3, 0x2
/* 00004DD8 00004E9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00004DDC 00004EA0  7C 08 03 A6 */	mtlr r0
/* 00004DE0 00004EA4  38 21 00 10 */	addi r1, r1, 0x10
/* 00004DE4 00004EA8  4E 80 00 20 */	blr
.endfn evt_kagemario_change_13_text_4D24

# .text:0x104 | 0x4DE8 | size: 0xE4
.fn evt_kagemario_init_13_text_4DE8, global
/* 00004DE8 00004EAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00004DEC 00004EB0  7C 08 02 A6 */	mflr r0
/* 00004DF0 00004EB4  38 60 00 00 */	li r3, 0x0
/* 00004DF4 00004EB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 00004DF8 00004EBC  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00004DFC 00004EC0  4B FF B2 05 */	bl swByteGet
/* 00004E00 00004EC4  2C 03 00 C9 */	cmpwi r3, 0xc9
/* 00004E04 00004EC8  41 80 00 74 */	blt .L_00004E78
/* 00004E08 00004ECC  2C 03 00 D4 */	cmpwi r3, 0xd4
/* 00004E0C 00004ED0  40 80 00 6C */	bge .L_00004E78
/* 00004E10 00004ED4  3C 80 00 00 */	lis r4, callback@ha
/* 00004E14 00004ED8  38 60 00 0A */	li r3, 0xa
/* 00004E18 00004EDC  38 84 00 00 */	addi r4, r4, callback@l
/* 00004E1C 00004EE0  4B FF B1 E5 */	bl mapSetTevCallback
/* 00004E20 00004EE4  3B C0 00 00 */	li r30, 0x0
/* 00004E24 00004EE8  7F DF F3 78 */	mr r31, r30
.L_00004E28:
/* 00004E28 00004EEC  4B FF B1 D9 */	bl marioGetPtr
/* 00004E2C 00004EF0  38 1F 02 2C */	addi r0, r31, 0x22c
/* 00004E30 00004EF4  3C 80 0A 00 */	lis r4, 0xa00
/* 00004E34 00004EF8  7C 63 00 2E */	lwzx r3, r3, r0
/* 00004E38 00004EFC  4B FF B1 C9 */	bl animPoseSetMaterialFlagOn
/* 00004E3C 00004F00  3B DE 00 01 */	addi r30, r30, 0x1
/* 00004E40 00004F04  3B FF 00 04 */	addi r31, r31, 0x4
/* 00004E44 00004F08  2C 1E 00 03 */	cmpwi r30, 0x3
/* 00004E48 00004F0C  41 80 FF E0 */	blt .L_00004E28
/* 00004E4C 00004F10  4B FF B1 B5 */	bl marioGetPtr
/* 00004E50 00004F14  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 00004E54 00004F18  3C 80 00 00 */	lis r4, evt_check@ha
/* 00004E58 00004F1C  38 04 00 00 */	addi r0, r4, evt_check@l
/* 00004E5C 00004F20  38 80 00 00 */	li r4, 0x0
/* 00004E60 00004F24  64 A6 40 00 */	oris r6, r5, 0x4000
/* 00004E64 00004F28  38 A0 00 00 */	li r5, 0x0
/* 00004E68 00004F2C  90 C3 00 00 */	stw r6, 0x0(r3)
/* 00004E6C 00004F30  7C 03 03 78 */	mr r3, r0
/* 00004E70 00004F34  4B FF B1 91 */	bl evtEntry
/* 00004E74 00004F38  48 00 00 40 */	b .L_00004EB4
.L_00004E78:
/* 00004E78 00004F3C  3B C0 00 00 */	li r30, 0x0
/* 00004E7C 00004F40  3B E0 00 00 */	li r31, 0x0
.L_00004E80:
/* 00004E80 00004F44  4B FF B1 81 */	bl marioGetPtr
/* 00004E84 00004F48  38 1F 02 2C */	addi r0, r31, 0x22c
/* 00004E88 00004F4C  3C 80 0A 00 */	lis r4, 0xa00
/* 00004E8C 00004F50  7C 63 00 2E */	lwzx r3, r3, r0
/* 00004E90 00004F54  4B FF B1 71 */	bl animPoseSetMaterialFlagOff
/* 00004E94 00004F58  3B DE 00 01 */	addi r30, r30, 0x1
/* 00004E98 00004F5C  3B FF 00 04 */	addi r31, r31, 0x4
/* 00004E9C 00004F60  2C 1E 00 03 */	cmpwi r30, 0x3
/* 00004EA0 00004F64  41 80 FF E0 */	blt .L_00004E80
/* 00004EA4 00004F68  4B FF B1 5D */	bl marioGetPtr
/* 00004EA8 00004F6C  80 03 00 00 */	lwz r0, 0x0(r3)
/* 00004EAC 00004F70  54 00 00 80 */	rlwinm r0, r0, 0, 2, 0
/* 00004EB0 00004F74  90 03 00 00 */	stw r0, 0x0(r3)
.L_00004EB4:
/* 00004EB4 00004F78  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00004EB8 00004F7C  38 60 00 02 */	li r3, 0x2
/* 00004EBC 00004F80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00004EC0 00004F84  7C 08 03 A6 */	mtlr r0
/* 00004EC4 00004F88  38 21 00 10 */	addi r1, r1, 0x10
/* 00004EC8 00004F8C  4E 80 00 20 */	blr
.endfn evt_kagemario_init_13_text_4DE8

# .text:0x1E8 | 0x4ECC | size: 0x44
.fn check, local
/* 00004ECC 00004F90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00004ED0 00004F94  7C 08 02 A6 */	mflr r0
/* 00004ED4 00004F98  38 60 00 00 */	li r3, 0x0
/* 00004ED8 00004F9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 00004EDC 00004FA0  4B FF B1 25 */	bl partyGetPtr
/* 00004EE0 00004FA4  28 03 00 00 */	cmplwi r3, 0x0
/* 00004EE4 00004FA8  41 82 00 18 */	beq .L_00004EFC
/* 00004EE8 00004FAC  38 60 00 00 */	li r3, 0x0
/* 00004EEC 00004FB0  4B FF B1 15 */	bl partyGetPtr
/* 00004EF0 00004FB4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 00004EF4 00004FB8  3C 80 0A 00 */	lis r4, 0xa00
/* 00004EF8 00004FBC  4B FF B1 09 */	bl animPoseSetMaterialFlagOff
.L_00004EFC:
/* 00004EFC 00004FC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00004F00 00004FC4  38 60 00 00 */	li r3, 0x0
/* 00004F04 00004FC8  7C 08 03 A6 */	mtlr r0
/* 00004F08 00004FCC  38 21 00 10 */	addi r1, r1, 0x10
/* 00004F0C 00004FD0  4E 80 00 20 */	blr
.endfn check

# .text:0x22C | 0x4F10 | size: 0xBC
.fn color_change_evt, local
/* 00004F10 00004FD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00004F14 00004FD8  7C 08 02 A6 */	mflr r0
/* 00004F18 00004FDC  2C 03 00 00 */	cmpwi r3, 0x0
/* 00004F1C 00004FE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 00004F20 00004FE4  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00004F24 00004FE8  40 82 00 44 */	bne .L_00004F68
/* 00004F28 00004FEC  3B C0 00 00 */	li r30, 0x0
/* 00004F2C 00004FF0  3B E0 00 00 */	li r31, 0x0
.L_00004F30:
/* 00004F30 00004FF4  4B FF B0 D1 */	bl marioGetPtr
/* 00004F34 00004FF8  38 1F 02 2C */	addi r0, r31, 0x22c
/* 00004F38 00004FFC  3C 80 0A 00 */	lis r4, 0xa00
/* 00004F3C 00005000  7C 63 00 2E */	lwzx r3, r3, r0
/* 00004F40 00005004  4B FF B0 C1 */	bl animPoseSetMaterialFlagOff
/* 00004F44 00005008  3B DE 00 01 */	addi r30, r30, 0x1
/* 00004F48 0000500C  3B FF 00 04 */	addi r31, r31, 0x4
/* 00004F4C 00005010  2C 1E 00 03 */	cmpwi r30, 0x3
/* 00004F50 00005014  41 80 FF E0 */	blt .L_00004F30
/* 00004F54 00005018  4B FF B0 AD */	bl marioGetPtr
/* 00004F58 0000501C  80 03 00 00 */	lwz r0, 0x0(r3)
/* 00004F5C 00005020  54 00 00 80 */	rlwinm r0, r0, 0, 2, 0
/* 00004F60 00005024  90 03 00 00 */	stw r0, 0x0(r3)
/* 00004F64 00005028  48 00 00 50 */	b .L_00004FB4
.L_00004F68:
/* 00004F68 0000502C  3C 80 00 00 */	lis r4, callback@ha
/* 00004F6C 00005030  38 60 00 0A */	li r3, 0xa
/* 00004F70 00005034  38 84 00 00 */	addi r4, r4, callback@l
/* 00004F74 00005038  4B FF B0 8D */	bl mapSetTevCallback
/* 00004F78 0000503C  3B C0 00 00 */	li r30, 0x0
/* 00004F7C 00005040  3B E0 00 00 */	li r31, 0x0
.L_00004F80:
/* 00004F80 00005044  4B FF B0 81 */	bl marioGetPtr
/* 00004F84 00005048  38 1F 02 2C */	addi r0, r31, 0x22c
/* 00004F88 0000504C  3C 80 0A 00 */	lis r4, 0xa00
/* 00004F8C 00005050  7C 63 00 2E */	lwzx r3, r3, r0
/* 00004F90 00005054  4B FF B0 71 */	bl animPoseSetMaterialFlagOn
/* 00004F94 00005058  3B DE 00 01 */	addi r30, r30, 0x1
/* 00004F98 0000505C  3B FF 00 04 */	addi r31, r31, 0x4
/* 00004F9C 00005060  2C 1E 00 03 */	cmpwi r30, 0x3
/* 00004FA0 00005064  41 80 FF E0 */	blt .L_00004F80
/* 00004FA4 00005068  4B FF B0 5D */	bl marioGetPtr
/* 00004FA8 0000506C  80 03 00 00 */	lwz r0, 0x0(r3)
/* 00004FAC 00005070  64 00 40 00 */	oris r0, r0, 0x4000
/* 00004FB0 00005074  90 03 00 00 */	stw r0, 0x0(r3)
.L_00004FB4:
/* 00004FB4 00005078  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00004FB8 0000507C  38 60 00 00 */	li r3, 0x0
/* 00004FBC 00005080  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00004FC0 00005084  7C 08 03 A6 */	mtlr r0
/* 00004FC4 00005088  38 21 00 10 */	addi r1, r1, 0x10
/* 00004FC8 0000508C  4E 80 00 20 */	blr
.endfn color_change_evt

# .text:0x2E8 | 0x4FCC | size: 0x124
.fn callback, local
/* 00004FCC 00005090  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00004FD0 00005094  7C 08 02 A6 */	mflr r0
/* 00004FD4 00005098  90 01 00 34 */	stw r0, 0x34(r1)
/* 00004FD8 0000509C  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 00004FDC 000050A0  7C 7B 1B 78 */	mr r27, r3
/* 00004FE0 000050A4  83 E3 00 0C */	lwz r31, 0xc(r3)
/* 00004FE4 000050A8  83 C3 00 10 */	lwz r30, 0x10(r3)
/* 00004FE8 000050AC  83 A3 00 14 */	lwz r29, 0x14(r3)
/* 00004FEC 000050B0  83 83 00 18 */	lwz r28, 0x18(r3)
/* 00004FF0 000050B4  4B FF B0 11 */	bl marioGetPtr
/* 00004FF4 000050B8  80 03 00 00 */	lwz r0, 0x0(r3)
/* 00004FF8 000050BC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 00004FFC 000050C0  41 82 00 24 */	beq .L_00005020
/* 00005000 000050C4  3C 60 00 00 */	lis r3, dat_jin_000085c8@ha
/* 00005004 000050C8  38 81 00 0C */	addi r4, r1, 0xc
/* 00005008 000050CC  38 A3 00 00 */	addi r5, r3, dat_jin_000085c8@l
/* 0000500C 000050D0  38 60 00 01 */	li r3, 0x1
/* 00005010 000050D4  80 05 00 00 */	lwz r0, 0x0(r5)
/* 00005014 000050D8  90 01 00 0C */	stw r0, 0xc(r1)
/* 00005018 000050DC  4B FF AF E9 */	bl GXSetTevColor
/* 0000501C 000050E0  48 00 00 20 */	b .L_0000503C
.L_00005020:
/* 00005020 000050E4  3C 60 00 00 */	lis r3, dat_jin_000085cc@ha
/* 00005024 000050E8  38 81 00 08 */	addi r4, r1, 0x8
/* 00005028 000050EC  38 A3 00 00 */	addi r5, r3, dat_jin_000085cc@l
/* 0000502C 000050F0  38 60 00 01 */	li r3, 0x1
/* 00005030 000050F4  80 05 00 00 */	lwz r0, 0x0(r5)
/* 00005034 000050F8  90 01 00 08 */	stw r0, 0x8(r1)
/* 00005038 000050FC  4B FF AF C9 */	bl GXSetTevColor
.L_0000503C:
/* 0000503C 00005100  7F E3 FB 78 */	mr r3, r31
/* 00005040 00005104  38 80 00 FF */	li r4, 0xff
/* 00005044 00005108  38 A0 00 FF */	li r5, 0xff
/* 00005048 0000510C  38 C0 00 FF */	li r6, 0xff
/* 0000504C 00005110  4B FF AF B5 */	bl GXSetTevOrder
/* 00005050 00005114  7F E3 FB 78 */	mr r3, r31
/* 00005054 00005118  38 80 00 00 */	li r4, 0x0
/* 00005058 0000511C  38 A0 00 00 */	li r5, 0x0
/* 0000505C 00005120  38 C0 00 00 */	li r6, 0x0
/* 00005060 00005124  38 E0 00 01 */	li r7, 0x1
/* 00005064 00005128  39 00 00 00 */	li r8, 0x0
/* 00005068 0000512C  4B FF AF 99 */	bl GXSetTevColorOp
/* 0000506C 00005130  7F E3 FB 78 */	mr r3, r31
/* 00005070 00005134  38 80 00 00 */	li r4, 0x0
/* 00005074 00005138  38 A0 00 00 */	li r5, 0x0
/* 00005078 0000513C  38 C0 00 00 */	li r6, 0x0
/* 0000507C 00005140  38 E0 00 01 */	li r7, 0x1
/* 00005080 00005144  39 00 00 00 */	li r8, 0x0
/* 00005084 00005148  4B FF AF 7D */	bl GXSetTevAlphaOp
/* 00005088 0000514C  7F E3 FB 78 */	mr r3, r31
/* 0000508C 00005150  38 80 00 0F */	li r4, 0xf
/* 00005090 00005154  38 A0 00 0F */	li r5, 0xf
/* 00005094 00005158  38 C0 00 0F */	li r6, 0xf
/* 00005098 0000515C  38 E0 00 02 */	li r7, 0x2
/* 0000509C 00005160  4B FF AF 65 */	bl GXSetTevColorIn
/* 000050A0 00005164  7F E3 FB 78 */	mr r3, r31
/* 000050A4 00005168  38 80 00 07 */	li r4, 0x7
/* 000050A8 0000516C  38 A0 00 07 */	li r5, 0x7
/* 000050AC 00005170  38 C0 00 07 */	li r6, 0x7
/* 000050B0 00005174  38 E0 00 00 */	li r7, 0x0
/* 000050B4 00005178  4B FF AF 4D */	bl GXSetTevAlphaIn
/* 000050B8 0000517C  7F E3 FB 78 */	mr r3, r31
/* 000050BC 00005180  38 80 00 00 */	li r4, 0x0
/* 000050C0 00005184  38 A0 00 00 */	li r5, 0x0
/* 000050C4 00005188  4B FF AF 3D */	bl GXSetTevSwapMode
/* 000050C8 0000518C  38 1F 00 01 */	addi r0, r31, 0x1
/* 000050CC 00005190  90 1B 00 0C */	stw r0, 0xc(r27)
/* 000050D0 00005194  93 BB 00 14 */	stw r29, 0x14(r27)
/* 000050D4 00005198  93 9B 00 18 */	stw r28, 0x18(r27)
/* 000050D8 0000519C  93 DB 00 10 */	stw r30, 0x10(r27)
/* 000050DC 000051A0  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 000050E0 000051A4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 000050E4 000051A8  7C 08 03 A6 */	mtlr r0
/* 000050E8 000051AC  38 21 00 30 */	addi r1, r1, 0x30
/* 000050EC 000051B0  4E 80 00 20 */	blr
.endfn callback

# 0x000013A8..0x000013B0 | size: 0x8
.rodata
.balign 8

# .rodata:0x0 | 0x13A8 | size: 0x4
.obj dat_jin_000085c8, local
	.4byte 0x000000FF
.endobj dat_jin_000085c8

# .rodata:0x4 | 0x13AC | size: 0x4
.obj dat_jin_000085cc, local
	.4byte 0x4D0952FF
.endobj dat_jin_000085cc

# 0x0000AEA0..0x0000AFA8 | size: 0x108
.data
.balign 8

# .data:0x0 | 0xAEA0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0xAEA8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0xAEAC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0xAEB0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0xAEB4 | size: 0x4
.obj gap_04_0000AEB4_data, global
.hidden gap_04_0000AEB4_data
	.4byte 0x00000000
.endobj gap_04_0000AEB4_data

# .data:0x18 | 0xAEB8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0xAEC0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0xAEC4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0xAEC8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0xAED0 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0xAED4 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0xAED8 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0xAEDC | size: 0x4
.obj gap_04_0000AEDC_data, global
.hidden gap_04_0000AEDC_data
	.4byte 0x00000000
.endobj gap_04_0000AEDC_data

# .data:0x40 | 0xAEE0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0xAEE8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0xAEEC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0xAEF0 | size: 0x10
.obj evt_check, local
	.4byte 0x0001005B
	.4byte check
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_check

# .data:0x60 | 0xAF00 | size: 0xA8
.obj evt_usu_kagemario_party_kill_13_data_AF00, global
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x000000C9
	.4byte 0x000000CD
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_kill_party
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_clear_party
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte test
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_usu_kagemario_party_kill_13_data_AF00
