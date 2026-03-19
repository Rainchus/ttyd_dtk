.include "macros.inc"
.file "evt_kagemario.o"

# 0x00001940..0x00001D4C | size: 0x40C
.text
.balign 4

# .text:0x0 | 0x1940 | size: 0x40
.fn test, local
/* 00001940 00001A0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00001944 00001A10  7C 08 02 A6 */	mflr r0
/* 00001948 00001A14  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000194C 00001A18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 00001950 00001A1C  3B E0 00 00 */	li r31, 0x0
/* 00001954 00001A20  4B FF E6 AD */	bl marioGetPtr
/* 00001958 00001A24  9B E3 02 47 */	stb r31, 0x247(r3)
/* 0000195C 00001A28  3B E0 00 00 */	li r31, 0x0
/* 00001960 00001A2C  4B FF E6 A1 */	bl marioGetPtr
/* 00001964 00001A30  9B E3 02 48 */	stb r31, 0x248(r3)
/* 00001968 00001A34  38 60 00 02 */	li r3, 0x2
/* 0000196C 00001A38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00001970 00001A3C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 00001974 00001A40  7C 08 03 A6 */	mtlr r0
/* 00001978 00001A44  38 21 00 10 */	addi r1, r1, 0x10
/* 0000197C 00001A48  4E 80 00 20 */	blr
.endfn test

# .text:0x40 | 0x1980 | size: 0xC4
.fn evt_kagemario_change, local
/* 00001980 00001A4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00001984 00001A50  7C 08 02 A6 */	mflr r0
/* 00001988 00001A54  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000198C 00001A58  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00001990 00001A5C  80 63 00 18 */	lwz r3, 0x18(r3)
/* 00001994 00001A60  80 03 00 00 */	lwz r0, 0x0(r3)
/* 00001998 00001A64  2C 00 00 00 */	cmpwi r0, 0x0
/* 0000199C 00001A68  40 82 00 44 */	bne .L_000019E0
/* 000019A0 00001A6C  3B C0 00 00 */	li r30, 0x0
/* 000019A4 00001A70  7F DF F3 78 */	mr r31, r30
.L_000019A8:
/* 000019A8 00001A74  4B FF E6 59 */	bl marioGetPtr
/* 000019AC 00001A78  38 1F 02 2C */	addi r0, r31, 0x22c
/* 000019B0 00001A7C  3C 80 0A 00 */	lis r4, 0xa00
/* 000019B4 00001A80  7C 63 00 2E */	lwzx r3, r3, r0
/* 000019B8 00001A84  4B FF E6 49 */	bl animPoseSetMaterialFlagOff
/* 000019BC 00001A88  3B DE 00 01 */	addi r30, r30, 0x1
/* 000019C0 00001A8C  3B FF 00 04 */	addi r31, r31, 0x4
/* 000019C4 00001A90  2C 1E 00 03 */	cmpwi r30, 0x3
/* 000019C8 00001A94  41 80 FF E0 */	blt .L_000019A8
/* 000019CC 00001A98  4B FF E6 35 */	bl marioGetPtr
/* 000019D0 00001A9C  80 03 00 00 */	lwz r0, 0x0(r3)
/* 000019D4 00001AA0  54 00 00 80 */	rlwinm r0, r0, 0, 2, 0
/* 000019D8 00001AA4  90 03 00 00 */	stw r0, 0x0(r3)
/* 000019DC 00001AA8  48 00 00 50 */	b .L_00001A2C
.L_000019E0:
/* 000019E0 00001AAC  3C 80 00 00 */	lis r4, callback@ha
/* 000019E4 00001AB0  38 60 00 0A */	li r3, 0xa
/* 000019E8 00001AB4  38 84 00 00 */	addi r4, r4, callback@l
/* 000019EC 00001AB8  4B FF E6 15 */	bl mapSetTevCallback
/* 000019F0 00001ABC  3B C0 00 00 */	li r30, 0x0
/* 000019F4 00001AC0  3B E0 00 00 */	li r31, 0x0
.L_000019F8:
/* 000019F8 00001AC4  4B FF E6 09 */	bl marioGetPtr
/* 000019FC 00001AC8  38 1F 02 2C */	addi r0, r31, 0x22c
/* 00001A00 00001ACC  3C 80 0A 00 */	lis r4, 0xa00
/* 00001A04 00001AD0  7C 63 00 2E */	lwzx r3, r3, r0
/* 00001A08 00001AD4  4B FF E5 F9 */	bl animPoseSetMaterialFlagOn
/* 00001A0C 00001AD8  3B DE 00 01 */	addi r30, r30, 0x1
/* 00001A10 00001ADC  3B FF 00 04 */	addi r31, r31, 0x4
/* 00001A14 00001AE0  2C 1E 00 03 */	cmpwi r30, 0x3
/* 00001A18 00001AE4  41 80 FF E0 */	blt .L_000019F8
/* 00001A1C 00001AE8  4B FF E5 E5 */	bl marioGetPtr
/* 00001A20 00001AEC  80 03 00 00 */	lwz r0, 0x0(r3)
/* 00001A24 00001AF0  64 00 40 00 */	oris r0, r0, 0x4000
/* 00001A28 00001AF4  90 03 00 00 */	stw r0, 0x0(r3)
.L_00001A2C:
/* 00001A2C 00001AF8  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00001A30 00001AFC  38 60 00 02 */	li r3, 0x2
/* 00001A34 00001B00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00001A38 00001B04  7C 08 03 A6 */	mtlr r0
/* 00001A3C 00001B08  38 21 00 10 */	addi r1, r1, 0x10
/* 00001A40 00001B0C  4E 80 00 20 */	blr
.endfn evt_kagemario_change

# .text:0x104 | 0x1A44 | size: 0xE4
.fn evt_kagemario_init_27_text_1A44, global
/* 00001A44 00001B10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00001A48 00001B14  7C 08 02 A6 */	mflr r0
/* 00001A4C 00001B18  38 60 00 00 */	li r3, 0x0
/* 00001A50 00001B1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 00001A54 00001B20  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00001A58 00001B24  4B FF E5 A9 */	bl swByteGet
/* 00001A5C 00001B28  2C 03 00 C9 */	cmpwi r3, 0xc9
/* 00001A60 00001B2C  41 80 00 74 */	blt .L_00001AD4
/* 00001A64 00001B30  2C 03 00 D4 */	cmpwi r3, 0xd4
/* 00001A68 00001B34  40 80 00 6C */	bge .L_00001AD4
/* 00001A6C 00001B38  3C 80 00 00 */	lis r4, callback@ha
/* 00001A70 00001B3C  38 60 00 0A */	li r3, 0xa
/* 00001A74 00001B40  38 84 00 00 */	addi r4, r4, callback@l
/* 00001A78 00001B44  4B FF E5 89 */	bl mapSetTevCallback
/* 00001A7C 00001B48  3B C0 00 00 */	li r30, 0x0
/* 00001A80 00001B4C  7F DF F3 78 */	mr r31, r30
.L_00001A84:
/* 00001A84 00001B50  4B FF E5 7D */	bl marioGetPtr
/* 00001A88 00001B54  38 1F 02 2C */	addi r0, r31, 0x22c
/* 00001A8C 00001B58  3C 80 0A 00 */	lis r4, 0xa00
/* 00001A90 00001B5C  7C 63 00 2E */	lwzx r3, r3, r0
/* 00001A94 00001B60  4B FF E5 6D */	bl animPoseSetMaterialFlagOn
/* 00001A98 00001B64  3B DE 00 01 */	addi r30, r30, 0x1
/* 00001A9C 00001B68  3B FF 00 04 */	addi r31, r31, 0x4
/* 00001AA0 00001B6C  2C 1E 00 03 */	cmpwi r30, 0x3
/* 00001AA4 00001B70  41 80 FF E0 */	blt .L_00001A84
/* 00001AA8 00001B74  4B FF E5 59 */	bl marioGetPtr
/* 00001AAC 00001B78  80 A3 00 00 */	lwz r5, 0x0(r3)
/* 00001AB0 00001B7C  3C 80 00 00 */	lis r4, evt_check@ha
/* 00001AB4 00001B80  38 04 00 00 */	addi r0, r4, evt_check@l
/* 00001AB8 00001B84  38 80 00 00 */	li r4, 0x0
/* 00001ABC 00001B88  64 A6 40 00 */	oris r6, r5, 0x4000
/* 00001AC0 00001B8C  38 A0 00 00 */	li r5, 0x0
/* 00001AC4 00001B90  90 C3 00 00 */	stw r6, 0x0(r3)
/* 00001AC8 00001B94  7C 03 03 78 */	mr r3, r0
/* 00001ACC 00001B98  4B FF E5 35 */	bl evtEntry
/* 00001AD0 00001B9C  48 00 00 40 */	b .L_00001B10
.L_00001AD4:
/* 00001AD4 00001BA0  3B C0 00 00 */	li r30, 0x0
/* 00001AD8 00001BA4  3B E0 00 00 */	li r31, 0x0
.L_00001ADC:
/* 00001ADC 00001BA8  4B FF E5 25 */	bl marioGetPtr
/* 00001AE0 00001BAC  38 1F 02 2C */	addi r0, r31, 0x22c
/* 00001AE4 00001BB0  3C 80 0A 00 */	lis r4, 0xa00
/* 00001AE8 00001BB4  7C 63 00 2E */	lwzx r3, r3, r0
/* 00001AEC 00001BB8  4B FF E5 15 */	bl animPoseSetMaterialFlagOff
/* 00001AF0 00001BBC  3B DE 00 01 */	addi r30, r30, 0x1
/* 00001AF4 00001BC0  3B FF 00 04 */	addi r31, r31, 0x4
/* 00001AF8 00001BC4  2C 1E 00 03 */	cmpwi r30, 0x3
/* 00001AFC 00001BC8  41 80 FF E0 */	blt .L_00001ADC
/* 00001B00 00001BCC  4B FF E5 01 */	bl marioGetPtr
/* 00001B04 00001BD0  80 03 00 00 */	lwz r0, 0x0(r3)
/* 00001B08 00001BD4  54 00 00 80 */	rlwinm r0, r0, 0, 2, 0
/* 00001B0C 00001BD8  90 03 00 00 */	stw r0, 0x0(r3)
.L_00001B10:
/* 00001B10 00001BDC  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00001B14 00001BE0  38 60 00 02 */	li r3, 0x2
/* 00001B18 00001BE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00001B1C 00001BE8  7C 08 03 A6 */	mtlr r0
/* 00001B20 00001BEC  38 21 00 10 */	addi r1, r1, 0x10
/* 00001B24 00001BF0  4E 80 00 20 */	blr
.endfn evt_kagemario_init_27_text_1A44

# .text:0x1E8 | 0x1B28 | size: 0x44
.fn check, local
/* 00001B28 00001BF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00001B2C 00001BF8  7C 08 02 A6 */	mflr r0
/* 00001B30 00001BFC  38 60 00 00 */	li r3, 0x0
/* 00001B34 00001C00  90 01 00 14 */	stw r0, 0x14(r1)
/* 00001B38 00001C04  4B FF E4 C9 */	bl partyGetPtr
/* 00001B3C 00001C08  28 03 00 00 */	cmplwi r3, 0x0
/* 00001B40 00001C0C  41 82 00 18 */	beq .L_00001B58
/* 00001B44 00001C10  38 60 00 00 */	li r3, 0x0
/* 00001B48 00001C14  4B FF E4 B9 */	bl partyGetPtr
/* 00001B4C 00001C18  80 63 00 0C */	lwz r3, 0xc(r3)
/* 00001B50 00001C1C  3C 80 0A 00 */	lis r4, 0xa00
/* 00001B54 00001C20  4B FF E4 AD */	bl animPoseSetMaterialFlagOff
.L_00001B58:
/* 00001B58 00001C24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00001B5C 00001C28  38 60 00 00 */	li r3, 0x0
/* 00001B60 00001C2C  7C 08 03 A6 */	mtlr r0
/* 00001B64 00001C30  38 21 00 10 */	addi r1, r1, 0x10
/* 00001B68 00001C34  4E 80 00 20 */	blr
.endfn check

# .text:0x22C | 0x1B6C | size: 0xBC
.fn color_change_evt, local
/* 00001B6C 00001C38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00001B70 00001C3C  7C 08 02 A6 */	mflr r0
/* 00001B74 00001C40  2C 03 00 00 */	cmpwi r3, 0x0
/* 00001B78 00001C44  90 01 00 14 */	stw r0, 0x14(r1)
/* 00001B7C 00001C48  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00001B80 00001C4C  40 82 00 44 */	bne .L_00001BC4
/* 00001B84 00001C50  3B C0 00 00 */	li r30, 0x0
/* 00001B88 00001C54  3B E0 00 00 */	li r31, 0x0
.L_00001B8C:
/* 00001B8C 00001C58  4B FF E4 75 */	bl marioGetPtr
/* 00001B90 00001C5C  38 1F 02 2C */	addi r0, r31, 0x22c
/* 00001B94 00001C60  3C 80 0A 00 */	lis r4, 0xa00
/* 00001B98 00001C64  7C 63 00 2E */	lwzx r3, r3, r0
/* 00001B9C 00001C68  4B FF E4 65 */	bl animPoseSetMaterialFlagOff
/* 00001BA0 00001C6C  3B DE 00 01 */	addi r30, r30, 0x1
/* 00001BA4 00001C70  3B FF 00 04 */	addi r31, r31, 0x4
/* 00001BA8 00001C74  2C 1E 00 03 */	cmpwi r30, 0x3
/* 00001BAC 00001C78  41 80 FF E0 */	blt .L_00001B8C
/* 00001BB0 00001C7C  4B FF E4 51 */	bl marioGetPtr
/* 00001BB4 00001C80  80 03 00 00 */	lwz r0, 0x0(r3)
/* 00001BB8 00001C84  54 00 00 80 */	rlwinm r0, r0, 0, 2, 0
/* 00001BBC 00001C88  90 03 00 00 */	stw r0, 0x0(r3)
/* 00001BC0 00001C8C  48 00 00 50 */	b .L_00001C10
.L_00001BC4:
/* 00001BC4 00001C90  3C 80 00 00 */	lis r4, callback@ha
/* 00001BC8 00001C94  38 60 00 0A */	li r3, 0xa
/* 00001BCC 00001C98  38 84 00 00 */	addi r4, r4, callback@l
/* 00001BD0 00001C9C  4B FF E4 31 */	bl mapSetTevCallback
/* 00001BD4 00001CA0  3B C0 00 00 */	li r30, 0x0
/* 00001BD8 00001CA4  3B E0 00 00 */	li r31, 0x0
.L_00001BDC:
/* 00001BDC 00001CA8  4B FF E4 25 */	bl marioGetPtr
/* 00001BE0 00001CAC  38 1F 02 2C */	addi r0, r31, 0x22c
/* 00001BE4 00001CB0  3C 80 0A 00 */	lis r4, 0xa00
/* 00001BE8 00001CB4  7C 63 00 2E */	lwzx r3, r3, r0
/* 00001BEC 00001CB8  4B FF E4 15 */	bl animPoseSetMaterialFlagOn
/* 00001BF0 00001CBC  3B DE 00 01 */	addi r30, r30, 0x1
/* 00001BF4 00001CC0  3B FF 00 04 */	addi r31, r31, 0x4
/* 00001BF8 00001CC4  2C 1E 00 03 */	cmpwi r30, 0x3
/* 00001BFC 00001CC8  41 80 FF E0 */	blt .L_00001BDC
/* 00001C00 00001CCC  4B FF E4 01 */	bl marioGetPtr
/* 00001C04 00001CD0  80 03 00 00 */	lwz r0, 0x0(r3)
/* 00001C08 00001CD4  64 00 40 00 */	oris r0, r0, 0x4000
/* 00001C0C 00001CD8  90 03 00 00 */	stw r0, 0x0(r3)
.L_00001C10:
/* 00001C10 00001CDC  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00001C14 00001CE0  38 60 00 00 */	li r3, 0x0
/* 00001C18 00001CE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00001C1C 00001CE8  7C 08 03 A6 */	mtlr r0
/* 00001C20 00001CEC  38 21 00 10 */	addi r1, r1, 0x10
/* 00001C24 00001CF0  4E 80 00 20 */	blr
.endfn color_change_evt

# .text:0x2E8 | 0x1C28 | size: 0x124
.fn callback, local
/* 00001C28 00001CF4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00001C2C 00001CF8  7C 08 02 A6 */	mflr r0
/* 00001C30 00001CFC  90 01 00 34 */	stw r0, 0x34(r1)
/* 00001C34 00001D00  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 00001C38 00001D04  7C 7B 1B 78 */	mr r27, r3
/* 00001C3C 00001D08  83 E3 00 0C */	lwz r31, 0xc(r3)
/* 00001C40 00001D0C  83 C3 00 10 */	lwz r30, 0x10(r3)
/* 00001C44 00001D10  83 A3 00 14 */	lwz r29, 0x14(r3)
/* 00001C48 00001D14  83 83 00 18 */	lwz r28, 0x18(r3)
/* 00001C4C 00001D18  4B FF E3 B5 */	bl marioGetPtr
/* 00001C50 00001D1C  80 03 00 00 */	lwz r0, 0x0(r3)
/* 00001C54 00001D20  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 00001C58 00001D24  41 82 00 24 */	beq .L_00001C7C
/* 00001C5C 00001D28  3C 60 00 00 */	lis r3, dat_usu_00006470@ha
/* 00001C60 00001D2C  38 81 00 0C */	addi r4, r1, 0xc
/* 00001C64 00001D30  38 A3 00 00 */	addi r5, r3, dat_usu_00006470@l
/* 00001C68 00001D34  38 60 00 01 */	li r3, 0x1
/* 00001C6C 00001D38  80 05 00 00 */	lwz r0, 0x0(r5)
/* 00001C70 00001D3C  90 01 00 0C */	stw r0, 0xc(r1)
/* 00001C74 00001D40  4B FF E3 8D */	bl GXSetTevColor
/* 00001C78 00001D44  48 00 00 20 */	b .L_00001C98
.L_00001C7C:
/* 00001C7C 00001D48  3C 60 00 00 */	lis r3, dat_usu_00006474@ha
/* 00001C80 00001D4C  38 81 00 08 */	addi r4, r1, 0x8
/* 00001C84 00001D50  38 A3 00 00 */	addi r5, r3, dat_usu_00006474@l
/* 00001C88 00001D54  38 60 00 01 */	li r3, 0x1
/* 00001C8C 00001D58  80 05 00 00 */	lwz r0, 0x0(r5)
/* 00001C90 00001D5C  90 01 00 08 */	stw r0, 0x8(r1)
/* 00001C94 00001D60  4B FF E3 6D */	bl GXSetTevColor
.L_00001C98:
/* 00001C98 00001D64  7F E3 FB 78 */	mr r3, r31
/* 00001C9C 00001D68  38 80 00 FF */	li r4, 0xff
/* 00001CA0 00001D6C  38 A0 00 FF */	li r5, 0xff
/* 00001CA4 00001D70  38 C0 00 FF */	li r6, 0xff
/* 00001CA8 00001D74  4B FF E3 59 */	bl GXSetTevOrder
/* 00001CAC 00001D78  7F E3 FB 78 */	mr r3, r31
/* 00001CB0 00001D7C  38 80 00 00 */	li r4, 0x0
/* 00001CB4 00001D80  38 A0 00 00 */	li r5, 0x0
/* 00001CB8 00001D84  38 C0 00 00 */	li r6, 0x0
/* 00001CBC 00001D88  38 E0 00 01 */	li r7, 0x1
/* 00001CC0 00001D8C  39 00 00 00 */	li r8, 0x0
/* 00001CC4 00001D90  4B FF E3 3D */	bl GXSetTevColorOp
/* 00001CC8 00001D94  7F E3 FB 78 */	mr r3, r31
/* 00001CCC 00001D98  38 80 00 00 */	li r4, 0x0
/* 00001CD0 00001D9C  38 A0 00 00 */	li r5, 0x0
/* 00001CD4 00001DA0  38 C0 00 00 */	li r6, 0x0
/* 00001CD8 00001DA4  38 E0 00 01 */	li r7, 0x1
/* 00001CDC 00001DA8  39 00 00 00 */	li r8, 0x0
/* 00001CE0 00001DAC  4B FF E3 21 */	bl GXSetTevAlphaOp
/* 00001CE4 00001DB0  7F E3 FB 78 */	mr r3, r31
/* 00001CE8 00001DB4  38 80 00 0F */	li r4, 0xf
/* 00001CEC 00001DB8  38 A0 00 0F */	li r5, 0xf
/* 00001CF0 00001DBC  38 C0 00 0F */	li r6, 0xf
/* 00001CF4 00001DC0  38 E0 00 02 */	li r7, 0x2
/* 00001CF8 00001DC4  4B FF E3 09 */	bl GXSetTevColorIn
/* 00001CFC 00001DC8  7F E3 FB 78 */	mr r3, r31
/* 00001D00 00001DCC  38 80 00 07 */	li r4, 0x7
/* 00001D04 00001DD0  38 A0 00 07 */	li r5, 0x7
/* 00001D08 00001DD4  38 C0 00 07 */	li r6, 0x7
/* 00001D0C 00001DD8  38 E0 00 00 */	li r7, 0x0
/* 00001D10 00001DDC  4B FF E2 F1 */	bl GXSetTevAlphaIn
/* 00001D14 00001DE0  7F E3 FB 78 */	mr r3, r31
/* 00001D18 00001DE4  38 80 00 00 */	li r4, 0x0
/* 00001D1C 00001DE8  38 A0 00 00 */	li r5, 0x0
/* 00001D20 00001DEC  4B FF E2 E1 */	bl GXSetTevSwapMode
/* 00001D24 00001DF0  38 1F 00 01 */	addi r0, r31, 0x1
/* 00001D28 00001DF4  90 1B 00 0C */	stw r0, 0xc(r27)
/* 00001D2C 00001DF8  93 BB 00 14 */	stw r29, 0x14(r27)
/* 00001D30 00001DFC  93 9B 00 18 */	stw r28, 0x18(r27)
/* 00001D34 00001E00  93 DB 00 10 */	stw r30, 0x10(r27)
/* 00001D38 00001E04  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 00001D3C 00001E08  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00001D40 00001E0C  7C 08 03 A6 */	mtlr r0
/* 00001D44 00001E10  38 21 00 30 */	addi r1, r1, 0x30
/* 00001D48 00001E14  4E 80 00 20 */	blr
.endfn callback

# 0x00002C30..0x00002C38 | size: 0x8
.rodata
.balign 8

# .rodata:0x0 | 0x2C30 | size: 0x4
.obj dat_usu_00006470, local
	.4byte 0x000000FF
.endobj dat_usu_00006470

# .rodata:0x4 | 0x2C34 | size: 0x4
.obj dat_usu_00006474, local
	.4byte 0x4D0952FF
.endobj dat_usu_00006474

# 0x00010760..0x00010868 | size: 0x108
.data
.balign 8

# .data:0x0 | 0x10760 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x10768 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x1076C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x10770 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x10774 | size: 0x4
.obj gap_04_00010774_data, global
.hidden gap_04_00010774_data
	.4byte 0x00000000
.endobj gap_04_00010774_data

# .data:0x18 | 0x10778 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x10780 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x10784 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x10788 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x10790 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x10794 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x10798 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x1079C | size: 0x4
.obj gap_04_0001079C_data, global
.hidden gap_04_0001079C_data
	.4byte 0x00000000
.endobj gap_04_0001079C_data

# .data:0x40 | 0x107A0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x107A8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x107AC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x107B0 | size: 0x10
.obj evt_check, local
	.4byte 0x0001005B
	.4byte check
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_check

# .data:0x60 | 0x107C0 | size: 0xA8
.obj evt_usu_kagemario_party_kill_27_data_107C0, global
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
.endobj evt_usu_kagemario_party_kill_27_data_107C0
