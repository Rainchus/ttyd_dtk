.include "macros.inc"
.file "muj_01.o"

# 0x000029C8..0x00002F80 | size: 0x5B8
.text
.balign 4

# .text:0x0 | 0x29C8 | size: 0x64
.fn starstone_set_ry, local
/* 000029C8 00002A8C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 000029CC 00002A90  7C 08 02 A6 */	mflr r0
/* 000029D0 00002A94  90 01 00 24 */	stw r0, 0x24(r1)
/* 000029D4 00002A98  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 000029D8 00002A9C  BF C1 00 10 */	stmw r30, 0x10(r1)
/* 000029DC 00002AA0  7C 7E 1B 78 */	mr r30, r3
/* 000029E0 00002AA4  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 000029E4 00002AA8  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 000029E8 00002AAC  4B FF DF C1 */	bl evtGetValue
/* 000029EC 00002AB0  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 000029F0 00002AB4  7C 7F 1B 78 */	mr r31, r3
/* 000029F4 00002AB8  7F C3 F3 78 */	mr r3, r30
/* 000029F8 00002ABC  4B FF DF B1 */	bl evtGetFloat
/* 000029FC 00002AC0  FF E0 08 90 */	fmr f31, f1
/* 00002A00 00002AC4  7F E3 FB 78 */	mr r3, r31
/* 00002A04 00002AC8  4B FF DF A5 */	bl effNameToPtr
/* 00002A08 00002ACC  80 83 00 0C */	lwz r4, 0xc(r3)
/* 00002A0C 00002AD0  38 60 00 02 */	li r3, 0x2
/* 00002A10 00002AD4  D3 E4 00 1C */	stfs f31, 0x1c(r4)
/* 00002A14 00002AD8  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 00002A18 00002ADC  BB C1 00 10 */	lmw r30, 0x10(r1)
/* 00002A1C 00002AE0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00002A20 00002AE4  7C 08 03 A6 */	mtlr r0
/* 00002A24 00002AE8  38 21 00 20 */	addi r1, r1, 0x20
/* 00002A28 00002AEC  4E 80 00 20 */	blr
.endfn starstone_set_ry

# .text:0x64 | 0x2A2C | size: 0x9C
.fn starstone_set_pos, local
/* 00002A2C 00002AF0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00002A30 00002AF4  7C 08 02 A6 */	mflr r0
/* 00002A34 00002AF8  90 01 00 34 */	stw r0, 0x34(r1)
/* 00002A38 00002AFC  39 61 00 30 */	addi r11, r1, 0x30
/* 00002A3C 00002B00  4B FF DF 6D */	bl _savefpr_29
/* 00002A40 00002B04  BF A1 00 0C */	stmw r29, 0xc(r1)
/* 00002A44 00002B08  7C 7D 1B 78 */	mr r29, r3
/* 00002A48 00002B0C  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00002A4C 00002B10  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00002A50 00002B14  4B FF DF 59 */	bl evtGetValue
/* 00002A54 00002B18  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00002A58 00002B1C  7C 7E 1B 78 */	mr r30, r3
/* 00002A5C 00002B20  7F A3 EB 78 */	mr r3, r29
/* 00002A60 00002B24  4B FF DF 49 */	bl evtGetFloat
/* 00002A64 00002B28  FF A0 08 90 */	fmr f29, f1
/* 00002A68 00002B2C  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 00002A6C 00002B30  7F A3 EB 78 */	mr r3, r29
/* 00002A70 00002B34  4B FF DF 39 */	bl evtGetFloat
/* 00002A74 00002B38  FF C0 08 90 */	fmr f30, f1
/* 00002A78 00002B3C  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00002A7C 00002B40  7F A3 EB 78 */	mr r3, r29
/* 00002A80 00002B44  4B FF DF 29 */	bl evtGetFloat
/* 00002A84 00002B48  FF E0 08 90 */	fmr f31, f1
/* 00002A88 00002B4C  7F C3 F3 78 */	mr r3, r30
/* 00002A8C 00002B50  4B FF DF 1D */	bl effNameToPtr
/* 00002A90 00002B54  80 83 00 0C */	lwz r4, 0xc(r3)
/* 00002A94 00002B58  D3 A4 00 08 */	stfs f29, 0x8(r4)
/* 00002A98 00002B5C  80 83 00 0C */	lwz r4, 0xc(r3)
/* 00002A9C 00002B60  D3 C4 00 0C */	stfs f30, 0xc(r4)
/* 00002AA0 00002B64  80 83 00 0C */	lwz r4, 0xc(r3)
/* 00002AA4 00002B68  38 60 00 02 */	li r3, 0x2
/* 00002AA8 00002B6C  D3 E4 00 10 */	stfs f31, 0x10(r4)
/* 00002AAC 00002B70  39 61 00 30 */	addi r11, r1, 0x30
/* 00002AB0 00002B74  4B FF DE F9 */	bl _restfpr_29
/* 00002AB4 00002B78  BB A1 00 0C */	lmw r29, 0xc(r1)
/* 00002AB8 00002B7C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00002ABC 00002B80  7C 08 03 A6 */	mtlr r0
/* 00002AC0 00002B84  38 21 00 30 */	addi r1, r1, 0x30
/* 00002AC4 00002B88  4E 80 00 20 */	blr
.endfn starstone_set_pos

# .text:0x100 | 0x2AC8 | size: 0xB0
.fn starstone_entry, local
/* 00002AC8 00002B8C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 00002ACC 00002B90  7C 08 02 A6 */	mflr r0
/* 00002AD0 00002B94  90 01 00 44 */	stw r0, 0x44(r1)
/* 00002AD4 00002B98  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 00002AD8 00002B9C  F3 E1 00 38 */	psq_st f31, 0x38(r1), 0, qr0
/* 00002ADC 00002BA0  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 00002AE0 00002BA4  F3 C1 00 28 */	psq_st f30, 0x28(r1), 0, qr0
/* 00002AE4 00002BA8  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 00002AE8 00002BAC  7C 7D 1B 78 */	mr r29, r3
/* 00002AEC 00002BB0  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00002AF0 00002BB4  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00002AF4 00002BB8  4B FF DE B5 */	bl evtGetValue
/* 00002AF8 00002BBC  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00002AFC 00002BC0  7C 7E 1B 78 */	mr r30, r3
/* 00002B00 00002BC4  7F A3 EB 78 */	mr r3, r29
/* 00002B04 00002BC8  4B FF DE A5 */	bl evtGetFloat
/* 00002B08 00002BCC  FF E0 08 90 */	fmr f31, f1
/* 00002B0C 00002BD0  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 00002B10 00002BD4  7F A3 EB 78 */	mr r3, r29
/* 00002B14 00002BD8  4B FF DE 95 */	bl evtGetFloat
/* 00002B18 00002BDC  FF C0 08 90 */	fmr f30, f1
/* 00002B1C 00002BE0  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00002B20 00002BE4  7F A3 EB 78 */	mr r3, r29
/* 00002B24 00002BE8  4B FF DE 85 */	bl evtGetFloat
/* 00002B28 00002BEC  FC 00 08 90 */	fmr f0, f1
/* 00002B2C 00002BF0  3C 60 00 00 */	lis r3, float_1_muj_0000f920@ha
/* 00002B30 00002BF4  C0 83 00 00 */	lfs f4, float_1_muj_0000f920@l(r3)
/* 00002B34 00002BF8  FC 20 F8 90 */	fmr f1, f31
/* 00002B38 00002BFC  FC 40 F0 90 */	fmr f2, f30
/* 00002B3C 00002C00  38 60 00 04 */	li r3, 0x4
/* 00002B40 00002C04  FC 60 00 90 */	fmr f3, f0
/* 00002B44 00002C08  4B FF DE 65 */	bl effStarStoneEntry
/* 00002B48 00002C0C  7F C4 F3 78 */	mr r4, r30
/* 00002B4C 00002C10  4B FF DE 5D */	bl effSetName
/* 00002B50 00002C14  38 60 00 02 */	li r3, 0x2
/* 00002B54 00002C18  E3 E1 00 38 */	psq_l f31, 0x38(r1), 0, qr0
/* 00002B58 00002C1C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 00002B5C 00002C20  E3 C1 00 28 */	psq_l f30, 0x28(r1), 0, qr0
/* 00002B60 00002C24  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 00002B64 00002C28  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 00002B68 00002C2C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 00002B6C 00002C30  7C 08 03 A6 */	mtlr r0
/* 00002B70 00002C34  38 21 00 40 */	addi r1, r1, 0x40
/* 00002B74 00002C38  4E 80 00 20 */	blr
.endfn starstone_entry

# .text:0x1B0 | 0x2B78 | size: 0x6C
.fn sekai_yami_omise, local
/* 00002B78 00002C3C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 00002B7C 00002C40  7C 08 02 A6 */	mflr r0
/* 00002B80 00002C44  3C 80 00 00 */	lis r4, str_shpPCTd_muj_0000f924@ha
/* 00002B84 00002C48  3C 60 00 00 */	lis r3, float_3p004_muj_0000f6a4@ha
/* 00002B88 00002C4C  90 01 00 44 */	stw r0, 0x44(r1)
/* 00002B8C 00002C50  BF A1 00 34 */	stmw r29, 0x34(r1)
/* 00002B90 00002C54  3B C4 00 00 */	addi r30, r4, str_shpPCTd_muj_0000f924@l
/* 00002B94 00002C58  3B A0 00 00 */	li r29, 0x0
/* 00002B98 00002C5C  3B E3 00 00 */	addi r31, r3, float_3p004_muj_0000f6a4@l
.L_00002B9C:
/* 00002B9C 00002C60  7F C4 F3 78 */	mr r4, r30
/* 00002BA0 00002C64  7F A5 EB 78 */	mr r5, r29
/* 00002BA4 00002C68  38 61 00 08 */	addi r3, r1, 0x8
/* 00002BA8 00002C6C  4C C6 31 82 */	crclr cr1eq
/* 00002BAC 00002C70  4B FF DD FD */	bl sprintf
/* 00002BB0 00002C74  38 61 00 08 */	addi r3, r1, 0x8
/* 00002BB4 00002C78  4B FF DD F5 */	bl iconNameToPtr
/* 00002BB8 00002C7C  80 1F 00 00 */	lwz r0, 0x0(r31)
/* 00002BBC 00002C80  3B BD 00 01 */	addi r29, r29, 0x1
/* 00002BC0 00002C84  2C 1D 00 06 */	cmpwi r29, 0x6
/* 00002BC4 00002C88  90 03 00 14 */	stw r0, 0x14(r3)
/* 00002BC8 00002C8C  41 80 FF D4 */	blt .L_00002B9C
/* 00002BCC 00002C90  BB A1 00 34 */	lmw r29, 0x34(r1)
/* 00002BD0 00002C94  38 60 00 02 */	li r3, 0x2
/* 00002BD4 00002C98  80 01 00 44 */	lwz r0, 0x44(r1)
/* 00002BD8 00002C9C  7C 08 03 A6 */	mtlr r0
/* 00002BDC 00002CA0  38 21 00 40 */	addi r1, r1, 0x40
/* 00002BE0 00002CA4  4E 80 00 20 */	blr
.endfn sekai_yami_omise

# .text:0x21C | 0x2BE4 | size: 0x70
.fn anim_tevcallback_mobj, local
/* 00002BE4 00002CA8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00002BE8 00002CAC  7C 08 02 A6 */	mflr r0
/* 00002BEC 00002CB0  90 01 00 24 */	stw r0, 0x24(r1)
/* 00002BF0 00002CB4  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 00002BF4 00002CB8  7C 7D 1B 78 */	mr r29, r3
/* 00002BF8 00002CBC  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00002BFC 00002CC0  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00002C00 00002CC4  4B FF DD A9 */	bl evtGetValue
/* 00002C04 00002CC8  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00002C08 00002CCC  7C 7E 1B 78 */	mr r30, r3
/* 00002C0C 00002CD0  7F A3 EB 78 */	mr r3, r29
/* 00002C10 00002CD4  4B FF DD 99 */	bl evtGetValue
/* 00002C14 00002CD8  7C 7F 1B 78 */	mr r31, r3
/* 00002C18 00002CDC  7F C3 F3 78 */	mr r3, r30
/* 00002C1C 00002CE0  4B FF DD 8D */	bl mobjNameToPtrNoAssert
/* 00002C20 00002CE4  28 03 00 00 */	cmplwi r3, 0x0
/* 00002C24 00002CE8  40 82 00 0C */	bne .L_00002C30
/* 00002C28 00002CEC  38 60 00 02 */	li r3, 0x2
/* 00002C2C 00002CF0  48 00 00 14 */	b .L_00002C40
.L_00002C30:
/* 00002C30 00002CF4  80 63 00 70 */	lwz r3, 0x70(r3)
/* 00002C34 00002CF8  57 E4 C1 0E */	clrlslwi r4, r31, 28, 24
/* 00002C38 00002CFC  4B FF DD 71 */	bl animPoseSetMaterialFlagOn
/* 00002C3C 00002D00  38 60 00 02 */	li r3, 0x2
.L_00002C40:
/* 00002C40 00002D04  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 00002C44 00002D08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00002C48 00002D0C  7C 08 03 A6 */	mtlr r0
/* 00002C4C 00002D10  38 21 00 20 */	addi r1, r1, 0x20
/* 00002C50 00002D14  4E 80 00 20 */	blr
.endfn anim_tevcallback_mobj

# .text:0x28C | 0x2C54 | size: 0x70
.fn anim_tevcallback, local
/* 00002C54 00002D18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00002C58 00002D1C  7C 08 02 A6 */	mflr r0
/* 00002C5C 00002D20  90 01 00 24 */	stw r0, 0x24(r1)
/* 00002C60 00002D24  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 00002C64 00002D28  7C 7D 1B 78 */	mr r29, r3
/* 00002C68 00002D2C  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00002C6C 00002D30  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00002C70 00002D34  4B FF DD 39 */	bl evtGetValue
/* 00002C74 00002D38  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00002C78 00002D3C  7C 7E 1B 78 */	mr r30, r3
/* 00002C7C 00002D40  7F A3 EB 78 */	mr r3, r29
/* 00002C80 00002D44  4B FF DD 29 */	bl evtGetValue
/* 00002C84 00002D48  7C 7F 1B 78 */	mr r31, r3
/* 00002C88 00002D4C  7F C3 F3 78 */	mr r3, r30
/* 00002C8C 00002D50  4B FF DD 1D */	bl npcNameToPtr_NoAssert
/* 00002C90 00002D54  28 03 00 00 */	cmplwi r3, 0x0
/* 00002C94 00002D58  40 82 00 0C */	bne .L_00002CA0
/* 00002C98 00002D5C  38 60 00 02 */	li r3, 0x2
/* 00002C9C 00002D60  48 00 00 14 */	b .L_00002CB0
.L_00002CA0:
/* 00002CA0 00002D64  80 63 01 04 */	lwz r3, 0x104(r3)
/* 00002CA4 00002D68  57 E4 C1 0E */	clrlslwi r4, r31, 28, 24
/* 00002CA8 00002D6C  4B FF DD 01 */	bl animPoseSetMaterialFlagOn
/* 00002CAC 00002D70  38 60 00 02 */	li r3, 0x2
.L_00002CB0:
/* 00002CB0 00002D74  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 00002CB4 00002D78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00002CB8 00002D7C  7C 08 03 A6 */	mtlr r0
/* 00002CBC 00002D80  38 21 00 20 */	addi r1, r1, 0x20
/* 00002CC0 00002D84  4E 80 00 20 */	blr
.endfn anim_tevcallback

# .text:0x2FC | 0x2CC4 | size: 0xC4
.fn yami_view, local
/* 00002CC4 00002D88  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 00002CC8 00002D8C  7C 08 02 A6 */	mflr r0
/* 00002CCC 00002D90  90 01 00 74 */	stw r0, 0x74(r1)
/* 00002CD0 00002D94  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 00002CD4 00002D98  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00002CD8 00002D9C  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00002CDC 00002DA0  4B FF DC CD */	bl evtGetFloat
/* 00002CE0 00002DA4  3C 60 00 00 */	lis r3, float_100_muj_0000f92c@ha
/* 00002CE4 00002DA8  3C A0 00 00 */	lis r5, vec3_muj_0000f698@ha
/* 00002CE8 00002DAC  38 A5 00 00 */	addi r5, r5, vec3_muj_0000f698@l
/* 00002CEC 00002DB0  C0 03 00 00 */	lfs f0, float_100_muj_0000f92c@l(r3)
/* 00002CF0 00002DB4  3C 80 00 00 */	lis r4, vec3_muj_0000f680@ha
/* 00002CF4 00002DB8  3C 60 00 00 */	lis r3, vec3_muj_0000f68c@ha
/* 00002CF8 00002DBC  38 C3 00 00 */	addi r6, r3, vec3_muj_0000f68c@l
/* 00002CFC 00002DC0  EC 00 08 2A */	fadds f0, f0, f1
/* 00002D00 00002DC4  39 04 00 00 */	addi r8, r4, vec3_muj_0000f680@l
/* 00002D04 00002DC8  80 85 00 08 */	lwz r4, 0x8(r5)
/* 00002D08 00002DCC  80 08 00 08 */	lwz r0, 0x8(r8)
/* 00002D0C 00002DD0  38 61 00 2C */	addi r3, r1, 0x2c
/* 00002D10 00002DD4  90 81 00 10 */	stw r4, 0x10(r1)
/* 00002D14 00002DD8  83 E5 00 00 */	lwz r31, 0x0(r5)
/* 00002D18 00002DDC  38 81 00 20 */	addi r4, r1, 0x20
/* 00002D1C 00002DE0  90 01 00 28 */	stw r0, 0x28(r1)
/* 00002D20 00002DE4  81 85 00 04 */	lwz r12, 0x4(r5)
/* 00002D24 00002DE8  38 A1 00 14 */	addi r5, r1, 0x14
/* 00002D28 00002DEC  81 66 00 00 */	lwz r11, 0x0(r6)
/* 00002D2C 00002DF0  81 46 00 04 */	lwz r10, 0x4(r6)
/* 00002D30 00002DF4  81 26 00 08 */	lwz r9, 0x8(r6)
/* 00002D34 00002DF8  38 C1 00 08 */	addi r6, r1, 0x8
/* 00002D38 00002DFC  80 E8 00 00 */	lwz r7, 0x0(r8)
/* 00002D3C 00002E00  80 08 00 04 */	lwz r0, 0x4(r8)
/* 00002D40 00002E04  93 E1 00 08 */	stw r31, 0x8(r1)
/* 00002D44 00002E08  91 81 00 0C */	stw r12, 0xc(r1)
/* 00002D48 00002E0C  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 00002D4C 00002E10  91 61 00 14 */	stw r11, 0x14(r1)
/* 00002D50 00002E14  91 41 00 18 */	stw r10, 0x18(r1)
/* 00002D54 00002E18  91 21 00 1C */	stw r9, 0x1c(r1)
/* 00002D58 00002E1C  90 E1 00 20 */	stw r7, 0x20(r1)
/* 00002D5C 00002E20  90 01 00 24 */	stw r0, 0x24(r1)
/* 00002D60 00002E24  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 00002D64 00002E28  4B FF DC 45 */	bl C_MTXLookAt
/* 00002D68 00002E2C  38 61 00 2C */	addi r3, r1, 0x2c
/* 00002D6C 00002E30  4B FF DC 3D */	bl envSetYamiView
/* 00002D70 00002E34  80 01 00 74 */	lwz r0, 0x74(r1)
/* 00002D74 00002E38  38 60 00 02 */	li r3, 0x2
/* 00002D78 00002E3C  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 00002D7C 00002E40  7C 08 03 A6 */	mtlr r0
/* 00002D80 00002E44  38 21 00 70 */	addi r1, r1, 0x70
/* 00002D84 00002E48  4E 80 00 20 */	blr
.endfn yami_view

# .text:0x3C0 | 0x2D88 | size: 0xCC
.fn muj_get_door_check, local
/* 00002D88 00002E4C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 00002D8C 00002E50  7C 08 02 A6 */	mflr r0
/* 00002D90 00002E54  90 01 00 44 */	stw r0, 0x44(r1)
/* 00002D94 00002E58  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 00002D98 00002E5C  F3 E1 00 38 */	psq_st f31, 0x38(r1), 0, qr0
/* 00002D9C 00002E60  BF A1 00 24 */	stmw r29, 0x24(r1)
/* 00002DA0 00002E64  7C 7D 1B 78 */	mr r29, r3
/* 00002DA4 00002E68  83 C3 00 18 */	lwz r30, 0x18(r3)
/* 00002DA8 00002E6C  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 00002DAC 00002E70  4B FF DB FD */	bl evtGetValue
/* 00002DB0 00002E74  80 9E 00 04 */	lwz r4, 0x4(r30)
/* 00002DB4 00002E78  7C 7F 1B 78 */	mr r31, r3
/* 00002DB8 00002E7C  7F A3 EB 78 */	mr r3, r29
/* 00002DBC 00002E80  4B FF DB ED */	bl evtGetFloat
/* 00002DC0 00002E84  FF E0 08 90 */	fmr f31, f1
/* 00002DC4 00002E88  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 00002DC8 00002E8C  38 81 00 14 */	addi r4, r1, 0x14
/* 00002DCC 00002E90  4B FF DB DD */	bl hitObjGetPos
/* 00002DD0 00002E94  4B FF DB D9 */	bl marioGetPtr
/* 00002DD4 00002E98  80 A3 00 8C */	lwz r5, 0x8c(r3)
/* 00002DD8 00002E9C  3C 80 00 00 */	lis r4, zero_muj_0000f930@ha
/* 00002DDC 00002EA0  80 03 00 90 */	lwz r0, 0x90(r3)
/* 00002DE0 00002EA4  C0 04 00 00 */	lfs f0, zero_muj_0000f930@l(r4)
/* 00002DE4 00002EA8  38 81 00 08 */	addi r4, r1, 0x8
/* 00002DE8 00002EAC  90 A1 00 08 */	stw r5, 0x8(r1)
/* 00002DEC 00002EB0  90 01 00 0C */	stw r0, 0xc(r1)
/* 00002DF0 00002EB4  80 03 00 94 */	lwz r0, 0x94(r3)
/* 00002DF4 00002EB8  38 61 00 14 */	addi r3, r1, 0x14
/* 00002DF8 00002EBC  90 01 00 10 */	stw r0, 0x10(r1)
/* 00002DFC 00002EC0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 00002E00 00002EC4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 00002E04 00002EC8  4B FF DB A5 */	bl PSVECDistance
/* 00002E08 00002ECC  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 00002E0C 00002ED0  40 81 00 18 */	ble .L_00002E24
/* 00002E10 00002ED4  80 9E 00 08 */	lwz r4, 0x8(r30)
/* 00002E14 00002ED8  7F A3 EB 78 */	mr r3, r29
/* 00002E18 00002EDC  38 A0 00 00 */	li r5, 0x0
/* 00002E1C 00002EE0  4B FF DB 8D */	bl evtSetValue
/* 00002E20 00002EE4  48 00 00 14 */	b .L_00002E34
.L_00002E24:
/* 00002E24 00002EE8  80 9E 00 08 */	lwz r4, 0x8(r30)
/* 00002E28 00002EEC  7F A3 EB 78 */	mr r3, r29
/* 00002E2C 00002EF0  38 A0 00 01 */	li r5, 0x1
/* 00002E30 00002EF4  4B FF DB 79 */	bl evtSetValue
.L_00002E34:
/* 00002E34 00002EF8  38 60 00 02 */	li r3, 0x2
/* 00002E38 00002EFC  E3 E1 00 38 */	psq_l f31, 0x38(r1), 0, qr0
/* 00002E3C 00002F00  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 00002E40 00002F04  BB A1 00 24 */	lmw r29, 0x24(r1)
/* 00002E44 00002F08  80 01 00 44 */	lwz r0, 0x44(r1)
/* 00002E48 00002F0C  7C 08 03 A6 */	mtlr r0
/* 00002E4C 00002F10  38 21 00 40 */	addi r1, r1, 0x40
/* 00002E50 00002F14  4E 80 00 20 */	blr
.endfn muj_get_door_check

# .text:0x48C | 0x2E54 | size: 0x44
.fn evt_mario_get_reqdir, local
/* 00002E54 00002F18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00002E58 00002F1C  7C 08 02 A6 */	mflr r0
/* 00002E5C 00002F20  90 01 00 14 */	stw r0, 0x14(r1)
/* 00002E60 00002F24  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00002E64 00002F28  7C 7E 1B 78 */	mr r30, r3
/* 00002E68 00002F2C  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00002E6C 00002F30  4B FF DB 3D */	bl marioGetPtr
/* 00002E70 00002F34  C0 23 01 B0 */	lfs f1, 0x1b0(r3)
/* 00002E74 00002F38  7F C3 F3 78 */	mr r3, r30
/* 00002E78 00002F3C  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00002E7C 00002F40  4B FF DB 2D */	bl evtSetFloat
/* 00002E80 00002F44  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00002E84 00002F48  38 60 00 02 */	li r3, 0x2
/* 00002E88 00002F4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00002E8C 00002F50  7C 08 03 A6 */	mtlr r0
/* 00002E90 00002F54  38 21 00 10 */	addi r1, r1, 0x10
/* 00002E94 00002F58  4E 80 00 20 */	blr
.endfn evt_mario_get_reqdir

# .text:0x4D0 | 0x2E98 | size: 0x3C
.fn delete_itemsel_table, local
/* 00002E98 00002F5C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00002E9C 00002F60  7C 08 02 A6 */	mflr r0
/* 00002EA0 00002F64  3C 80 00 00 */	lis r4, mapalloc_base_ptr@ha
/* 00002EA4 00002F68  3C 60 00 00 */	lis r3, itemsel_table_ram@ha
/* 00002EA8 00002F6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 00002EAC 00002F70  38 A4 00 00 */	addi r5, r4, mapalloc_base_ptr@l
/* 00002EB0 00002F74  38 83 00 00 */	addi r4, r3, itemsel_table_ram@l
/* 00002EB4 00002F78  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00002EB8 00002F7C  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00002EBC 00002F80  4B FF DA ED */	bl _mapFree
/* 00002EC0 00002F84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00002EC4 00002F88  38 60 00 02 */	li r3, 0x2
/* 00002EC8 00002F8C  7C 08 03 A6 */	mtlr r0
/* 00002ECC 00002F90  38 21 00 10 */	addi r1, r1, 0x10
/* 00002ED0 00002F94  4E 80 00 20 */	blr
.endfn delete_itemsel_table

# .text:0x50C | 0x2ED4 | size: 0xAC
.fn make_itemsel_table, local
/* 00002ED4 00002F98  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00002ED8 00002F9C  7C 08 02 A6 */	mflr r0
/* 00002EDC 00002FA0  90 01 00 24 */	stw r0, 0x24(r1)
/* 00002EE0 00002FA4  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 00002EE4 00002FA8  7C 7D 1B 78 */	mr r29, r3
/* 00002EE8 00002FAC  83 C3 00 18 */	lwz r30, 0x18(r3)
/* 00002EEC 00002FB0  4B FF DA BD */	bl pouchGetPtr
/* 00002EF0 00002FB4  3C 80 00 00 */	lis r4, mapalloc_base_ptr@ha
/* 00002EF4 00002FB8  7C 7F 1B 78 */	mr r31, r3
/* 00002EF8 00002FBC  38 64 00 00 */	addi r3, r4, mapalloc_base_ptr@l
/* 00002EFC 00002FC0  38 80 00 54 */	li r4, 0x54
/* 00002F00 00002FC4  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00002F04 00002FC8  4B FF DA A5 */	bl _mapAlloc
/* 00002F08 00002FCC  3C 80 00 00 */	lis r4, itemsel_table_ram@ha
/* 00002F0C 00002FD0  38 00 00 14 */	li r0, 0x14
/* 00002F10 00002FD4  7C 66 1B 78 */	mr r6, r3
/* 00002F14 00002FD8  90 64 00 00 */	stw r3, itemsel_table_ram@l(r4)
/* 00002F18 00002FDC  38 A0 00 00 */	li r5, 0x0
/* 00002F1C 00002FE0  38 60 00 00 */	li r3, 0x0
/* 00002F20 00002FE4  7C 09 03 A6 */	mtctr r0
.L_00002F24:
/* 00002F24 00002FE8  38 03 01 92 */	addi r0, r3, 0x192
/* 00002F28 00002FEC  7C 1F 02 AE */	lhax r0, r31, r0
/* 00002F2C 00002FF0  2C 00 00 00 */	cmpwi r0, 0x0
/* 00002F30 00002FF4  40 81 00 10 */	ble .L_00002F40
/* 00002F34 00002FF8  90 06 00 00 */	stw r0, 0x0(r6)
/* 00002F38 00002FFC  38 C6 00 04 */	addi r6, r6, 0x4
/* 00002F3C 00003000  38 A5 00 01 */	addi r5, r5, 0x1
.L_00002F40:
/* 00002F40 00003004  38 63 00 02 */	addi r3, r3, 0x2
/* 00002F44 00003008  42 00 FF E0 */	bdnz .L_00002F24
/* 00002F48 0000300C  38 00 FF FF */	li r0, -0x1
/* 00002F4C 00003010  7F A3 EB 78 */	mr r3, r29
/* 00002F50 00003014  90 06 00 00 */	stw r0, 0x0(r6)
/* 00002F54 00003018  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 00002F58 0000301C  4B FF DA 51 */	bl evtSetValue
/* 00002F5C 00003020  3C 80 00 00 */	lis r4, itemsel_table_ram@ha
/* 00002F60 00003024  38 60 00 02 */	li r3, 0x2
/* 00002F64 00003028  80 04 00 00 */	lwz r0, itemsel_table_ram@l(r4)
/* 00002F68 0000302C  90 1D 00 C4 */	stw r0, 0xc4(r29)
/* 00002F6C 00003030  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 00002F70 00003034  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00002F74 00003038  7C 08 03 A6 */	mtlr r0
/* 00002F78 0000303C  38 21 00 20 */	addi r1, r1, 0x20
/* 00002F7C 00003040  4E 80 00 20 */	blr
.endfn make_itemsel_table

# 0x00000DC8..0x00001C88 | size: 0xEC0
.rodata
.balign 8

# .rodata:0x0 | 0xDC8 | size: 0x3
.obj str_me_muj_0000ea78, local
	.string "me"
.endobj str_me_muj_0000ea78

# .rodata:0x3 | 0xDCB | size: 0x1
.obj gap_03_00000DCB_rodata, global
.hidden gap_03_00000DCB_rodata
	.byte 0x00
.endobj gap_03_00000DCB_rodata

# .rodata:0x4 | 0xDCC | size: 0xE
.obj str_stg5_muj_22_1_muj_0000ea7c, local
	.string "stg5_muj_22_1"
.endobj str_stg5_muj_22_1_muj_0000ea7c

# .rodata:0x12 | 0xDDA | size: 0x2
.obj gap_03_00000DDA_rodata, global
.hidden gap_03_00000DDA_rodata
	.2byte 0x0000
.endobj gap_03_00000DDA_rodata

# .rodata:0x14 | 0xDDC | size: 0xF
.obj str_stg5_muj_32_02_muj_0000ea8c, local
	.string "stg5_muj_32_02"
.endobj str_stg5_muj_32_02_muj_0000ea8c

# .rodata:0x23 | 0xDEB | size: 0x1
.obj gap_03_00000DEB_rodata, global
.hidden gap_03_00000DEB_rodata
	.byte 0x00
.endobj gap_03_00000DEB_rodata

# .rodata:0x24 | 0xDEC | size: 0xF
.obj str_stg5_muj_71_05_muj_0000ea9c, local
	.string "stg5_muj_71_05"
.endobj str_stg5_muj_71_05_muj_0000ea9c

# .rodata:0x33 | 0xDFB | size: 0x1
.obj gap_03_00000DFB_rodata, global
.hidden gap_03_00000DFB_rodata
	.byte 0x00
.endobj gap_03_00000DFB_rodata

# .rodata:0x34 | 0xDFC | size: 0xF
.obj str_stg5_muj_71_04_muj_0000eaac, local
	.string "stg5_muj_71_04"
.endobj str_stg5_muj_71_04_muj_0000eaac

# .rodata:0x43 | 0xE0B | size: 0x1
.obj gap_03_00000E0B_rodata, global
.hidden gap_03_00000E0B_rodata
	.byte 0x00
.endobj gap_03_00000E0B_rodata

# .rodata:0x44 | 0xE0C | size: 0xF
.obj str_stg5_muj_90_02_muj_0000eabc, local
	.string "stg5_muj_90_02"
.endobj str_stg5_muj_90_02_muj_0000eabc

# .rodata:0x53 | 0xE1B | size: 0x1
.obj gap_03_00000E1B_rodata, global
.hidden gap_03_00000E1B_rodata
	.byte 0x00
.endobj gap_03_00000E1B_rodata

# .rodata:0x54 | 0xE1C | size: 0x12
.obj str_stg5_muj_90_02_01_muj_0000eacc, local
	.string "stg5_muj_90_02_01"
.endobj str_stg5_muj_90_02_01_muj_0000eacc

# .rodata:0x66 | 0xE2E | size: 0x2
.obj gap_03_00000E2E_rodata, global
.hidden gap_03_00000E2E_rodata
	.2byte 0x0000
.endobj gap_03_00000E2E_rodata

# .rodata:0x68 | 0xE30 | size: 0xF
.obj str_stg5_muj_90_13_muj_0000eae0, local
	.string "stg5_muj_90_13"
.endobj str_stg5_muj_90_13_muj_0000eae0

# .rodata:0x77 | 0xE3F | size: 0x1
.obj gap_03_00000E3F_rodata, global
.hidden gap_03_00000E3F_rodata
	.byte 0x00
.endobj gap_03_00000E3F_rodata

# .rodata:0x78 | 0xE40 | size: 0x13
.obj str_stg5_muj_90_132_01_muj_0000eaf0, local
	.string "stg5_muj_90_132_01"
.endobj str_stg5_muj_90_132_01_muj_0000eaf0

# .rodata:0x8B | 0xE53 | size: 0x1
.obj gap_03_00000E53_rodata, global
.hidden gap_03_00000E53_rodata
	.byte 0x00
.endobj gap_03_00000E53_rodata

# .rodata:0x8C | 0xE54 | size: 0xD
.obj str_stg5_muj_149_muj_0000eb04, local
	.string "stg5_muj_149"
.endobj str_stg5_muj_149_muj_0000eb04

# .rodata:0x99 | 0xE61 | size: 0x3
.obj gap_03_00000E61_rodata, global
.hidden gap_03_00000E61_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000E61_rodata

# .rodata:0x9C | 0xE64 | size: 0x11
.obj str_stg5_muj_1492_01_muj_0000eb14, local
	.string "stg5_muj_1492_01"
.endobj str_stg5_muj_1492_01_muj_0000eb14

# .rodata:0xAD | 0xE75 | size: 0x3
.obj gap_03_00000E75_rodata, global
.hidden gap_03_00000E75_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000E75_rodata

# .rodata:0xB0 | 0xE78 | size: 0xD
.obj str_stg5_muj_150_muj_0000eb28, local
	.string "stg5_muj_150"
.endobj str_stg5_muj_150_muj_0000eb28

# .rodata:0xBD | 0xE85 | size: 0x3
.obj gap_03_00000E85_rodata, global
.hidden gap_03_00000E85_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000E85_rodata

# .rodata:0xC0 | 0xE88 | size: 0x11
.obj str_stg5_muj_1502_01_muj_0000eb38, local
	.string "stg5_muj_1502_01"
.endobj str_stg5_muj_1502_01_muj_0000eb38

# .rodata:0xD1 | 0xE99 | size: 0x3
.obj gap_03_00000E99_rodata, global
.hidden gap_03_00000E99_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000E99_rodata

# .rodata:0xD4 | 0xE9C | size: 0xD
.obj str_stg5_muj_151_muj_0000eb4c, local
	.string "stg5_muj_151"
.endobj str_stg5_muj_151_muj_0000eb4c

# .rodata:0xE1 | 0xEA9 | size: 0x3
.obj gap_03_00000EA9_rodata, global
.hidden gap_03_00000EA9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000EA9_rodata

# .rodata:0xE4 | 0xEAC | size: 0x11
.obj str_stg5_muj_1512_01_muj_0000eb5c, local
	.string "stg5_muj_1512_01"
.endobj str_stg5_muj_1512_01_muj_0000eb5c

# .rodata:0xF5 | 0xEBD | size: 0x3
.obj gap_03_00000EBD_rodata, global
.hidden gap_03_00000EBD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000EBD_rodata

# .rodata:0xF8 | 0xEC0 | size: 0xD
.obj str_stg5_muj_152_muj_0000eb70, local
	.string "stg5_muj_152"
.endobj str_stg5_muj_152_muj_0000eb70

# .rodata:0x105 | 0xECD | size: 0x3
.obj gap_03_00000ECD_rodata, global
.hidden gap_03_00000ECD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000ECD_rodata

# .rodata:0x108 | 0xED0 | size: 0x11
.obj str_stg5_muj_1522_01_muj_0000eb80, local
	.string "stg5_muj_1522_01"
.endobj str_stg5_muj_1522_01_muj_0000eb80

# .rodata:0x119 | 0xEE1 | size: 0x3
.obj gap_03_00000EE1_rodata, global
.hidden gap_03_00000EE1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000EE1_rodata

# .rodata:0x11C | 0xEE4 | size: 0xC
.obj str_stg7_muj_01_muj_0000eb94, local
	.string "stg7_muj_01"
.endobj str_stg7_muj_01_muj_0000eb94

# .rodata:0x128 | 0xEF0 | size: 0x10
.obj str_stg7_muj_012_01_muj_0000eba0, local
	.string "stg7_muj_012_01"
.endobj str_stg7_muj_012_01_muj_0000eba0

# .rodata:0x138 | 0xF00 | size: 0xD
.obj str_stg5_muj_153_muj_0000ebb0, local
	.string "stg5_muj_153"
.endobj str_stg5_muj_153_muj_0000ebb0

# .rodata:0x145 | 0xF0D | size: 0x3
.obj gap_03_00000F0D_rodata, global
.hidden gap_03_00000F0D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000F0D_rodata

# .rodata:0x148 | 0xF10 | size: 0x11
.obj str_stg5_muj_1532_01_muj_0000ebc0, local
	.string "stg5_muj_1532_01"
.endobj str_stg5_muj_1532_01_muj_0000ebc0

# .rodata:0x159 | 0xF21 | size: 0x3
.obj gap_03_00000F21_rodata, global
.hidden gap_03_00000F21_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000F21_rodata

# .rodata:0x15C | 0xF24 | size: 0x10
.obj str_stg5_muj_153_01_muj_0000ebd4, local
	.string "stg5_muj_153_01"
.endobj str_stg5_muj_153_01_muj_0000ebd4

# .rodata:0x16C | 0xF34 | size: 0x14
.obj str_stg5_muj_153_01_san_muj_0000ebe4, local
	.string "stg5_muj_153_01_san"
.endobj str_stg5_muj_153_01_san_muj_0000ebe4

# .rodata:0x180 | 0xF48 | size: 0x7
.obj str_マルコ_muj_0000ebf8, local
	.4byte 0x837D838B
	.byte 0x83, 0x52, 0x00
.endobj str_マルコ_muj_0000ebf8

# .rodata:0x187 | 0xF4F | size: 0x1
.obj gap_03_00000F4F_rodata, global
.hidden gap_03_00000F4F_rodata
	.byte 0x00
.endobj gap_03_00000F4F_rodata

# .rodata:0x188 | 0xF50 | size: 0xE
.obj str_stg5_muj_22_0_muj_0000ec00, local
	.string "stg5_muj_22_0"
.endobj str_stg5_muj_22_0_muj_0000ec00

# .rodata:0x196 | 0xF5E | size: 0x2
.obj gap_03_00000F5E_rodata, global
.hidden gap_03_00000F5E_rodata
	.2byte 0x0000
.endobj gap_03_00000F5E_rodata

# .rodata:0x198 | 0xF60 | size: 0xC
.obj str_stg5_muj_31_muj_0000ec10, local
	.string "stg5_muj_31"
.endobj str_stg5_muj_31_muj_0000ec10

# .rodata:0x1A4 | 0xF6C | size: 0xC
.obj str_stg5_muj_32_muj_0000ec1c, local
	.string "stg5_muj_32"
.endobj str_stg5_muj_32_muj_0000ec1c

# .rodata:0x1B0 | 0xF78 | size: 0xF
.obj str_stg5_muj_31_01_muj_0000ec28, local
	.string "stg5_muj_31_01"
.endobj str_stg5_muj_31_01_muj_0000ec28

# .rodata:0x1BF | 0xF87 | size: 0x1
.obj gap_03_00000F87_rodata, global
.hidden gap_03_00000F87_rodata
	.byte 0x00
.endobj gap_03_00000F87_rodata

# .rodata:0x1C0 | 0xF88 | size: 0x6
.obj str_M_I_2_muj_0000ec38, local
	.string "M_I_2"
.endobj str_M_I_2_muj_0000ec38

# .rodata:0x1C6 | 0xF8E | size: 0x2
.obj gap_03_00000F8E_rodata, global
.hidden gap_03_00000F8E_rodata
	.2byte 0x0000
.endobj gap_03_00000F8E_rodata

# .rodata:0x1C8 | 0xF90 | size: 0xF
.obj str_stg5_muj_31_02_muj_0000ec40, local
	.string "stg5_muj_31_02"
.endobj str_stg5_muj_31_02_muj_0000ec40

# .rodata:0x1D7 | 0xF9F | size: 0x1
.obj gap_03_00000F9F_rodata, global
.hidden gap_03_00000F9F_rodata
	.byte 0x00
.endobj gap_03_00000F9F_rodata

# .rodata:0x1D8 | 0xFA0 | size: 0x12
.obj str_stg5_muj_31_02_01_muj_0000ec50, local
	.string "stg5_muj_31_02_01"
.endobj str_stg5_muj_31_02_01_muj_0000ec50

# .rodata:0x1EA | 0xFB2 | size: 0x2
.obj gap_03_00000FB2_rodata, global
.hidden gap_03_00000FB2_rodata
	.2byte 0x0000
.endobj gap_03_00000FB2_rodata

# .rodata:0x1EC | 0xFB4 | size: 0x12
.obj str_stg5_muj_31_02_02_muj_0000ec64, local
	.string "stg5_muj_31_02_02"
.endobj str_stg5_muj_31_02_02_muj_0000ec64

# .rodata:0x1FE | 0xFC6 | size: 0x2
.obj gap_03_00000FC6_rodata, global
.hidden gap_03_00000FC6_rodata
	.2byte 0x0000
.endobj gap_03_00000FC6_rodata

# .rodata:0x200 | 0xFC8 | size: 0x6
.obj str_M_C_3_muj_0000ec78, local
	.string "M_C_3"
.endobj str_M_C_3_muj_0000ec78

# .rodata:0x206 | 0xFCE | size: 0x2
.obj gap_03_00000FCE_rodata, global
.hidden gap_03_00000FCE_rodata
	.2byte 0x0000
.endobj gap_03_00000FCE_rodata

# .rodata:0x208 | 0xFD0 | size: 0x7
.obj str_watasu_muj_0000ec80, local
	.string "watasu"
.endobj str_watasu_muj_0000ec80

# .rodata:0x20F | 0xFD7 | size: 0x1
.obj gap_03_00000FD7_rodata, global
.hidden gap_03_00000FD7_rodata
	.byte 0x00
.endobj gap_03_00000FD7_rodata

# .rodata:0x210 | 0xFD8 | size: 0x4
.obj str_I_1_muj_0000ec88, local
	.string "I_1"
.endobj str_I_1_muj_0000ec88

# .rodata:0x214 | 0xFDC | size: 0x6
.obj str_M_S_1_muj_0000ec8c, local
	.string "M_S_1"
.endobj str_M_S_1_muj_0000ec8c

# .rodata:0x21A | 0xFE2 | size: 0x2
.obj gap_03_00000FE2_rodata, global
.hidden gap_03_00000FE2_rodata
	.2byte 0x0000
.endobj gap_03_00000FE2_rodata

# .rodata:0x21C | 0xFE4 | size: 0x4
.obj str_I_2_muj_0000ec94, local
	.string "I_2"
.endobj str_I_2_muj_0000ec94

# .rodata:0x220 | 0xFE8 | size: 0x12
.obj str_stg5_muj_31_02_03_muj_0000ec98, local
	.string "stg5_muj_31_02_03"
.endobj str_stg5_muj_31_02_03_muj_0000ec98

# .rodata:0x232 | 0xFFA | size: 0x2
.obj gap_03_00000FFA_rodata, global
.hidden gap_03_00000FFA_rodata
	.2byte 0x0000
.endobj gap_03_00000FFA_rodata

# .rodata:0x234 | 0xFFC | size: 0x12
.obj str_stg5_muj_31_02_04_muj_0000ecac, local
	.string "stg5_muj_31_02_04"
.endobj str_stg5_muj_31_02_04_muj_0000ecac

# .rodata:0x246 | 0x100E | size: 0x2
.obj gap_03_0000100E_rodata, global
.hidden gap_03_0000100E_rodata
	.2byte 0x0000
.endobj gap_03_0000100E_rodata

# .rodata:0x248 | 0x1010 | size: 0x12
.obj str_stg5_muj_31_02_05_muj_0000ecc0, local
	.string "stg5_muj_31_02_05"
.endobj str_stg5_muj_31_02_05_muj_0000ecc0

# .rodata:0x25A | 0x1022 | size: 0x2
.obj gap_03_00001022_rodata, global
.hidden gap_03_00001022_rodata
	.2byte 0x0000
.endobj gap_03_00001022_rodata

# .rodata:0x25C | 0x1024 | size: 0x9
.obj str_itemwine_muj_0000ecd4, local
	.string "itemwine"
.endobj str_itemwine_muj_0000ecd4

# .rodata:0x265 | 0x102D | size: 0x3
.obj gap_03_0000102D_rodata, global
.hidden gap_03_0000102D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000102D_rodata

# .rodata:0x268 | 0x1030 | size: 0xF
.obj str_stg5_muj_31_03_muj_0000ece0, local
	.string "stg5_muj_31_03"
.endobj str_stg5_muj_31_03_muj_0000ece0

# .rodata:0x277 | 0x103F | size: 0x1
.obj gap_03_0000103F_rodata, global
.hidden gap_03_0000103F_rodata
	.byte 0x00
.endobj gap_03_0000103F_rodata

# .rodata:0x278 | 0x1040 | size: 0xC
.obj str_stg5_muj_71_muj_0000ecf0, local
	.string "stg5_muj_71"
.endobj str_stg5_muj_71_muj_0000ecf0

# .rodata:0x284 | 0x104C | size: 0xC
.obj str_stg5_muj_72_muj_0000ecfc, local
	.string "stg5_muj_72"
.endobj str_stg5_muj_72_muj_0000ecfc

# .rodata:0x290 | 0x1058 | size: 0x10
.obj str_stg5_muj_72_bom_muj_0000ed08, local
	.string "stg5_muj_72_bom"
.endobj str_stg5_muj_72_bom_muj_0000ed08

# .rodata:0x2A0 | 0x1068 | size: 0x9
.obj str_extparty_muj_0000ed18, local
	.string "extparty"
.endobj str_extparty_muj_0000ed18

# .rodata:0x2A9 | 0x1071 | size: 0x3
.obj gap_03_00001071_rodata, global
.hidden gap_03_00001071_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001071_rodata

# .rodata:0x2AC | 0x1074 | size: 0xC
.obj str_stg5_muj_79_muj_0000ed24, local
	.string "stg5_muj_79"
.endobj str_stg5_muj_79_muj_0000ed24

# .rodata:0x2B8 | 0x1080 | size: 0xC
.obj str_stg5_muj_80_muj_0000ed30, local
	.string "stg5_muj_80"
.endobj str_stg5_muj_80_muj_0000ed30

# .rodata:0x2C4 | 0x108C | size: 0x6
.obj str_party_muj_0000ed3c, local
	.string "party"
.endobj str_party_muj_0000ed3c

# .rodata:0x2CA | 0x1092 | size: 0x2
.obj gap_03_00001092_rodata, global
.hidden gap_03_00001092_rodata
	.2byte 0x0000
.endobj gap_03_00001092_rodata

# .rodata:0x2CC | 0x1094 | size: 0xF
.obj str_ガラの悪い水夫_muj_0000ed44, local
	.4byte 0x834B8389
	.4byte 0x82CC88AB
	.4byte 0x82A29085
	.byte 0x95, 0x76, 0x00
.endobj str_ガラの悪い水夫_muj_0000ed44

# .rodata:0x2DB | 0x10A3 | size: 0x1
.obj gap_03_000010A3_rodata, global
.hidden gap_03_000010A3_rodata
	.byte 0x00
.endobj gap_03_000010A3_rodata

# .rodata:0x2DC | 0x10A4 | size: 0xC
.obj str_stg5_muj_81_muj_0000ed54, local
	.string "stg5_muj_81"
.endobj str_stg5_muj_81_muj_0000ed54

# .rodata:0x2E8 | 0x10B0 | size: 0x16
.obj str_SFX_STG5_SAILER_FART_muj_0000ed60, local
	.string "SFX_STG5_SAILER_FART1"
.endobj str_SFX_STG5_SAILER_FART_muj_0000ed60

# .rodata:0x2FE | 0x10C6 | size: 0x2
.obj gap_03_000010C6_rodata, global
.hidden gap_03_000010C6_rodata
	.2byte 0x0000
.endobj gap_03_000010C6_rodata

# .rodata:0x300 | 0x10C8 | size: 0xF
.obj str_stg5_muj_81_01_muj_0000ed78, local
	.string "stg5_muj_81_01"
.endobj str_stg5_muj_81_01_muj_0000ed78

# .rodata:0x30F | 0x10D7 | size: 0x1
.obj gap_03_000010D7_rodata, global
.hidden gap_03_000010D7_rodata
	.byte 0x00
.endobj gap_03_000010D7_rodata

# .rodata:0x310 | 0x10D8 | size: 0xF
.obj str_stg5_muj_81_02_muj_0000ed88, local
	.string "stg5_muj_81_02"
.endobj str_stg5_muj_81_02_muj_0000ed88

# .rodata:0x31F | 0x10E7 | size: 0x1
.obj gap_03_000010E7_rodata, global
.hidden gap_03_000010E7_rodata
	.byte 0x00
.endobj gap_03_000010E7_rodata

# .rodata:0x320 | 0x10E8 | size: 0xC
.obj str_stg5_muj_82_muj_0000ed98, local
	.string "stg5_muj_82"
.endobj str_stg5_muj_82_muj_0000ed98

# .rodata:0x32C | 0x10F4 | size: 0xC
.obj str_stg5_muj_83_muj_0000eda4, local
	.string "stg5_muj_83"
.endobj str_stg5_muj_83_muj_0000eda4

# .rodata:0x338 | 0x1100 | size: 0xC
.obj str_stg5_muj_84_muj_0000edb0, local
	.string "stg5_muj_84"
.endobj str_stg5_muj_84_muj_0000edb0

# .rodata:0x344 | 0x110C | size: 0xC
.obj str_stg5_muj_85_muj_0000edbc, local
	.string "stg5_muj_85"
.endobj str_stg5_muj_85_muj_0000edbc

# .rodata:0x350 | 0x1118 | size: 0xC
.obj str_stg5_muj_86_muj_0000edc8, local
	.string "stg5_muj_86"
.endobj str_stg5_muj_86_muj_0000edc8

# .rodata:0x35C | 0x1124 | size: 0x6
.obj str_水夫A_muj_0000edd4, local
	.4byte 0x90859576
	.2byte 0x4100
.endobj str_水夫A_muj_0000edd4

# .rodata:0x362 | 0x112A | size: 0x2
.obj gap_03_0000112A_rodata, global
.hidden gap_03_0000112A_rodata
	.2byte 0x0000
.endobj gap_03_0000112A_rodata

# .rodata:0x364 | 0x112C | size: 0xC
.obj str_stg5_muj_87_muj_0000eddc, local
	.string "stg5_muj_87"
.endobj str_stg5_muj_87_muj_0000eddc

# .rodata:0x370 | 0x1138 | size: 0xB
.obj str_水夫ボム兵_muj_0000ede8, local
	.4byte 0x90859576
	.4byte 0x837B8380
	.byte 0x95, 0xBA, 0x00
.endobj str_水夫ボム兵_muj_0000ede8

# .rodata:0x37B | 0x1143 | size: 0x1
.obj gap_03_00001143_rodata, global
.hidden gap_03_00001143_rodata
	.byte 0x00
.endobj gap_03_00001143_rodata

# .rodata:0x37C | 0x1144 | size: 0xC
.obj str_stg5_muj_88_muj_0000edf4, local
	.string "stg5_muj_88"
.endobj str_stg5_muj_88_muj_0000edf4

# .rodata:0x388 | 0x1150 | size: 0xD
.obj str_オドオド水夫_muj_0000ee00, local
	.4byte 0x83498368
	.4byte 0x83498368
	.4byte 0x90859576
	.byte 0x00
.endobj str_オドオド水夫_muj_0000ee00

# .rodata:0x395 | 0x115D | size: 0x3
.obj gap_03_0000115D_rodata, global
.hidden gap_03_0000115D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000115D_rodata

# .rodata:0x398 | 0x1160 | size: 0xF
.obj str_stg5_muj_88_01_muj_0000ee10, local
	.string "stg5_muj_88_01"
.endobj str_stg5_muj_88_01_muj_0000ee10

# .rodata:0x3A7 | 0x116F | size: 0x1
.obj gap_03_0000116F_rodata, global
.hidden gap_03_0000116F_rodata
	.byte 0x00
.endobj gap_03_0000116F_rodata

# .rodata:0x3A8 | 0x1170 | size: 0xC
.obj str_stg5_muj_89_muj_0000ee20, local
	.string "stg5_muj_89"
.endobj str_stg5_muj_89_muj_0000ee20

# .rodata:0x3B4 | 0x117C | size: 0xC
.obj str_stg5_muj_90_muj_0000ee2c, local
	.string "stg5_muj_90"
.endobj str_stg5_muj_90_muj_0000ee2c

# .rodata:0x3C0 | 0x1188 | size: 0xC
.obj str_stg5_sys_00_muj_0000ee38, local
	.string "stg5_sys_00"
.endobj str_stg5_sys_00_muj_0000ee38

# .rodata:0x3CC | 0x1194 | size: 0xF
.obj str_stg5_muj_90_10_muj_0000ee44, local
	.string "stg5_muj_90_10"
.endobj str_stg5_muj_90_10_muj_0000ee44

# .rodata:0x3DB | 0x11A3 | size: 0x1
.obj gap_03_000011A3_rodata, global
.hidden gap_03_000011A3_rodata
	.byte 0x00
.endobj gap_03_000011A3_rodata

# .rodata:0x3DC | 0x11A4 | size: 0xF
.obj str_stg5_muj_32_01_muj_0000ee54, local
	.string "stg5_muj_32_01"
.endobj str_stg5_muj_32_01_muj_0000ee54

# .rodata:0x3EB | 0x11B3 | size: 0x1
.obj gap_03_000011B3_rodata, global
.hidden gap_03_000011B3_rodata
	.byte 0x00
.endobj gap_03_000011B3_rodata

# .rodata:0x3EC | 0x11B4 | size: 0xF
.obj str_stg5_muj_71_02_muj_0000ee64, local
	.string "stg5_muj_71_02"
.endobj str_stg5_muj_71_02_muj_0000ee64

# .rodata:0x3FB | 0x11C3 | size: 0x1
.obj gap_03_000011C3_rodata, global
.hidden gap_03_000011C3_rodata
	.byte 0x00
.endobj gap_03_000011C3_rodata

# .rodata:0x3FC | 0x11C4 | size: 0xF
.obj str_stg5_muj_71_03_muj_0000ee74, local
	.string "stg5_muj_71_03"
.endobj str_stg5_muj_71_03_muj_0000ee74

# .rodata:0x40B | 0x11D3 | size: 0x1
.obj gap_03_000011D3_rodata, global
.hidden gap_03_000011D3_rodata
	.byte 0x00
.endobj gap_03_000011D3_rodata

# .rodata:0x40C | 0x11D4 | size: 0xF
.obj str_stg5_muj_90_01_muj_0000ee84, local
	.string "stg5_muj_90_01"
.endobj str_stg5_muj_90_01_muj_0000ee84

# .rodata:0x41B | 0x11E3 | size: 0x1
.obj gap_03_000011E3_rodata, global
.hidden gap_03_000011E3_rodata
	.byte 0x00
.endobj gap_03_000011E3_rodata

# .rodata:0x41C | 0x11E4 | size: 0xF
.obj str_stg5_muj_90_12_muj_0000ee94, local
	.string "stg5_muj_90_12"
.endobj str_stg5_muj_90_12_muj_0000ee94

# .rodata:0x42B | 0x11F3 | size: 0x1
.obj gap_03_000011F3_rodata, global
.hidden gap_03_000011F3_rodata
	.byte 0x00
.endobj gap_03_000011F3_rodata

# .rodata:0x42C | 0x11F4 | size: 0xF
.obj str_stg5_muj_32_00_muj_0000eea4, local
	.string "stg5_muj_32_00"
.endobj str_stg5_muj_32_00_muj_0000eea4

# .rodata:0x43B | 0x1203 | size: 0x1
.obj gap_03_00001203_rodata, global
.hidden gap_03_00001203_rodata
	.byte 0x00
.endobj gap_03_00001203_rodata

# .rodata:0x43C | 0x1204 | size: 0xF
.obj str_stg5_muj_71_00_muj_0000eeb4, local
	.string "stg5_muj_71_00"
.endobj str_stg5_muj_71_00_muj_0000eeb4

# .rodata:0x44B | 0x1213 | size: 0x1
.obj gap_03_00001213_rodata, global
.hidden gap_03_00001213_rodata
	.byte 0x00
.endobj gap_03_00001213_rodata

# .rodata:0x44C | 0x1214 | size: 0xF
.obj str_stg5_muj_71_01_muj_0000eec4, local
	.string "stg5_muj_71_01"
.endobj str_stg5_muj_71_01_muj_0000eec4

# .rodata:0x45B | 0x1223 | size: 0x1
.obj gap_03_00001223_rodata, global
.hidden gap_03_00001223_rodata
	.byte 0x00
.endobj gap_03_00001223_rodata

# .rodata:0x45C | 0x1224 | size: 0xF
.obj str_stg5_muj_90_00_muj_0000eed4, local
	.string "stg5_muj_90_00"
.endobj str_stg5_muj_90_00_muj_0000eed4

# .rodata:0x46B | 0x1233 | size: 0x1
.obj gap_03_00001233_rodata, global
.hidden gap_03_00001233_rodata
	.byte 0x00
.endobj gap_03_00001233_rodata

# .rodata:0x46C | 0x1234 | size: 0xF
.obj str_stg5_muj_90_11_muj_0000eee4, local
	.string "stg5_muj_90_11"
.endobj str_stg5_muj_90_11_muj_0000eee4

# .rodata:0x47B | 0x1243 | size: 0x1
.obj gap_03_00001243_rodata, global
.hidden gap_03_00001243_rodata
	.byte 0x00
.endobj gap_03_00001243_rodata

# .rodata:0x47C | 0x1244 | size: 0xE
.obj str_stg5_muj_22_2_muj_0000eef4, local
	.string "stg5_muj_22_2"
.endobj str_stg5_muj_22_2_muj_0000eef4

# .rodata:0x48A | 0x1252 | size: 0x2
.obj gap_03_00001252_rodata, global
.hidden gap_03_00001252_rodata
	.2byte 0x0000
.endobj gap_03_00001252_rodata

# .rodata:0x48C | 0x1254 | size: 0xF
.obj str_stg5_muj_32_03_muj_0000ef04, local
	.string "stg5_muj_32_03"
.endobj str_stg5_muj_32_03_muj_0000ef04

# .rodata:0x49B | 0x1263 | size: 0x1
.obj gap_03_00001263_rodata, global
.hidden gap_03_00001263_rodata
	.byte 0x00
.endobj gap_03_00001263_rodata

# .rodata:0x49C | 0x1264 | size: 0xF
.obj str_stg5_muj_71_06_muj_0000ef14, local
	.string "stg5_muj_71_06"
.endobj str_stg5_muj_71_06_muj_0000ef14

# .rodata:0x4AB | 0x1273 | size: 0x1
.obj gap_03_00001273_rodata, global
.hidden gap_03_00001273_rodata
	.byte 0x00
.endobj gap_03_00001273_rodata

# .rodata:0x4AC | 0x1274 | size: 0xF
.obj str_stg5_muj_90_14_muj_0000ef24, local
	.string "stg5_muj_90_14"
.endobj str_stg5_muj_90_14_muj_0000ef24

# .rodata:0x4BB | 0x1283 | size: 0x1
.obj gap_03_00001283_rodata, global
.hidden gap_03_00001283_rodata
	.byte 0x00
.endobj gap_03_00001283_rodata

# .rodata:0x4BC | 0x1284 | size: 0xF
.obj str_stg5_muj_90_16_muj_0000ef34, local
	.string "stg5_muj_90_16"
.endobj str_stg5_muj_90_16_muj_0000ef34

# .rodata:0x4CB | 0x1293 | size: 0x1
.obj gap_03_00001293_rodata, global
.hidden gap_03_00001293_rodata
	.byte 0x00
.endobj gap_03_00001293_rodata

# .rodata:0x4CC | 0x1294 | size: 0xE
.obj str_stg5_muj_22_3_muj_0000ef44, local
	.string "stg5_muj_22_3"
.endobj str_stg5_muj_22_3_muj_0000ef44

# .rodata:0x4DA | 0x12A2 | size: 0x2
.obj gap_03_000012A2_rodata, global
.hidden gap_03_000012A2_rodata
	.2byte 0x0000
.endobj gap_03_000012A2_rodata

# .rodata:0x4DC | 0x12A4 | size: 0xF
.obj str_stg5_muj_32_04_muj_0000ef54, local
	.string "stg5_muj_32_04"
.endobj str_stg5_muj_32_04_muj_0000ef54

# .rodata:0x4EB | 0x12B3 | size: 0x1
.obj gap_03_000012B3_rodata, global
.hidden gap_03_000012B3_rodata
	.byte 0x00
.endobj gap_03_000012B3_rodata

# .rodata:0x4EC | 0x12B4 | size: 0xF
.obj str_stg5_muj_71_07_muj_0000ef64, local
	.string "stg5_muj_71_07"
.endobj str_stg5_muj_71_07_muj_0000ef64

# .rodata:0x4FB | 0x12C3 | size: 0x1
.obj gap_03_000012C3_rodata, global
.hidden gap_03_000012C3_rodata
	.byte 0x00
.endobj gap_03_000012C3_rodata

# .rodata:0x4FC | 0x12C4 | size: 0xF
.obj str_stg5_muj_90_15_muj_0000ef74, local
	.string "stg5_muj_90_15"
.endobj str_stg5_muj_90_15_muj_0000ef74

# .rodata:0x50B | 0x12D3 | size: 0x1
.obj gap_03_000012D3_rodata, global
.hidden gap_03_000012D3_rodata
	.byte 0x00
.endobj gap_03_000012D3_rodata

# .rodata:0x50C | 0x12D4 | size: 0xF
.obj str_stg5_muj_90_17_muj_0000ef84, local
	.string "stg5_muj_90_17"
.endobj str_stg5_muj_90_17_muj_0000ef84

# .rodata:0x51B | 0x12E3 | size: 0x1
.obj gap_03_000012E3_rodata, global
.hidden gap_03_000012E3_rodata
	.byte 0x00
.endobj gap_03_000012E3_rodata

# .rodata:0x51C | 0x12E4 | size: 0xD
.obj str_stg5_muj_159_muj_0000ef94, local
	.string "stg5_muj_159"
.endobj str_stg5_muj_159_muj_0000ef94

# .rodata:0x529 | 0x12F1 | size: 0x3
.obj gap_03_000012F1_rodata, global
.hidden gap_03_000012F1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000012F1_rodata

# .rodata:0x52C | 0x12F4 | size: 0xD
.obj str_stg5_muj_160_muj_0000efa4, local
	.string "stg5_muj_160"
.endobj str_stg5_muj_160_muj_0000efa4

# .rodata:0x539 | 0x1301 | size: 0x3
.obj gap_03_00001301_rodata, global
.hidden gap_03_00001301_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001301_rodata

# .rodata:0x53C | 0x1304 | size: 0xD
.obj str_stg5_muj_161_muj_0000efb4, local
	.string "stg5_muj_161"
.endobj str_stg5_muj_161_muj_0000efb4

# .rodata:0x549 | 0x1311 | size: 0x3
.obj gap_03_00001311_rodata, global
.hidden gap_03_00001311_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001311_rodata

# .rodata:0x54C | 0x1314 | size: 0xD
.obj str_stg5_muj_162_muj_0000efc4, local
	.string "stg5_muj_162"
.endobj str_stg5_muj_162_muj_0000efc4

# .rodata:0x559 | 0x1321 | size: 0x3
.obj gap_03_00001321_rodata, global
.hidden gap_03_00001321_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001321_rodata

# .rodata:0x55C | 0x1324 | size: 0xD
.obj str_stg5_muj_163_muj_0000efd4, local
	.string "stg5_muj_163"
.endobj str_stg5_muj_163_muj_0000efd4

# .rodata:0x569 | 0x1331 | size: 0x3
.obj gap_03_00001331_rodata, global
.hidden gap_03_00001331_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001331_rodata

# .rodata:0x56C | 0x1334 | size: 0xF
.obj str_stg5_muj_163_1_muj_0000efe4, local
	.string "stg5_muj_163_1"
.endobj str_stg5_muj_163_1_muj_0000efe4

# .rodata:0x57B | 0x1343 | size: 0x1
.obj gap_03_00001343_rodata, global
.hidden gap_03_00001343_rodata
	.byte 0x00
.endobj gap_03_00001343_rodata

# .rodata:0x57C | 0x1344 | size: 0xD
.obj str_stg5_muj_154_muj_0000eff4, local
	.string "stg5_muj_154"
.endobj str_stg5_muj_154_muj_0000eff4

# .rodata:0x589 | 0x1351 | size: 0x3
.obj gap_03_00001351_rodata, global
.hidden gap_03_00001351_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001351_rodata

# .rodata:0x58C | 0x1354 | size: 0xD
.obj str_stg5_muj_155_muj_0000f004, local
	.string "stg5_muj_155"
.endobj str_stg5_muj_155_muj_0000f004

# .rodata:0x599 | 0x1361 | size: 0x3
.obj gap_03_00001361_rodata, global
.hidden gap_03_00001361_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001361_rodata

# .rodata:0x59C | 0x1364 | size: 0xD
.obj str_stg5_muj_156_muj_0000f014, local
	.string "stg5_muj_156"
.endobj str_stg5_muj_156_muj_0000f014

# .rodata:0x5A9 | 0x1371 | size: 0x3
.obj gap_03_00001371_rodata, global
.hidden gap_03_00001371_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001371_rodata

# .rodata:0x5AC | 0x1374 | size: 0xD
.obj str_stg5_muj_157_muj_0000f024, local
	.string "stg5_muj_157"
.endobj str_stg5_muj_157_muj_0000f024

# .rodata:0x5B9 | 0x1381 | size: 0x3
.obj gap_03_00001381_rodata, global
.hidden gap_03_00001381_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001381_rodata

# .rodata:0x5BC | 0x1384 | size: 0xD
.obj str_stg5_muj_158_muj_0000f034, local
	.string "stg5_muj_158"
.endobj str_stg5_muj_158_muj_0000f034

# .rodata:0x5C9 | 0x1391 | size: 0x3
.obj gap_03_00001391_rodata, global
.hidden gap_03_00001391_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001391_rodata

# .rodata:0x5CC | 0x1394 | size: 0xF
.obj str_stg5_muj_158_1_muj_0000f044, local
	.string "stg5_muj_158_1"
.endobj str_stg5_muj_158_1_muj_0000f044

# .rodata:0x5DB | 0x13A3 | size: 0x1
.obj gap_03_000013A3_rodata, global
.hidden gap_03_000013A3_rodata
	.byte 0x00
.endobj gap_03_000013A3_rodata

# .rodata:0x5DC | 0x13A4 | size: 0xD
.obj str_stg5_muj_164_muj_0000f054, local
	.string "stg5_muj_164"
.endobj str_stg5_muj_164_muj_0000f054

# .rodata:0x5E9 | 0x13B1 | size: 0x3
.obj gap_03_000013B1_rodata, global
.hidden gap_03_000013B1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000013B1_rodata

# .rodata:0x5EC | 0x13B4 | size: 0xD
.obj str_stg5_muj_165_muj_0000f064, local
	.string "stg5_muj_165"
.endobj str_stg5_muj_165_muj_0000f064

# .rodata:0x5F9 | 0x13C1 | size: 0x3
.obj gap_03_000013C1_rodata, global
.hidden gap_03_000013C1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000013C1_rodata

# .rodata:0x5FC | 0x13C4 | size: 0xD
.obj str_stg5_muj_166_muj_0000f074, local
	.string "stg5_muj_166"
.endobj str_stg5_muj_166_muj_0000f074

# .rodata:0x609 | 0x13D1 | size: 0x3
.obj gap_03_000013D1_rodata, global
.hidden gap_03_000013D1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000013D1_rodata

# .rodata:0x60C | 0x13D4 | size: 0xD
.obj str_stg5_muj_167_muj_0000f084, local
	.string "stg5_muj_167"
.endobj str_stg5_muj_167_muj_0000f084

# .rodata:0x619 | 0x13E1 | size: 0x3
.obj gap_03_000013E1_rodata, global
.hidden gap_03_000013E1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000013E1_rodata

# .rodata:0x61C | 0x13E4 | size: 0xD
.obj str_stg5_muj_168_muj_0000f094, local
	.string "stg5_muj_168"
.endobj str_stg5_muj_168_muj_0000f094

# .rodata:0x629 | 0x13F1 | size: 0x3
.obj gap_03_000013F1_rodata, global
.hidden gap_03_000013F1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000013F1_rodata

# .rodata:0x62C | 0x13F4 | size: 0xF
.obj str_stg5_muj_168_1_muj_0000f0a4, local
	.string "stg5_muj_168_1"
.endobj str_stg5_muj_168_1_muj_0000f0a4

# .rodata:0x63B | 0x1403 | size: 0x1
.obj gap_03_00001403_rodata, global
.hidden gap_03_00001403_rodata
	.byte 0x00
.endobj gap_03_00001403_rodata

# .rodata:0x63C | 0x1404 | size: 0xD
.obj str_stg5_muj_147_muj_0000f0b4, local
	.string "stg5_muj_147"
.endobj str_stg5_muj_147_muj_0000f0b4

# .rodata:0x649 | 0x1411 | size: 0x3
.obj gap_03_00001411_rodata, global
.hidden gap_03_00001411_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001411_rodata

# .rodata:0x64C | 0x1414 | size: 0xD
.obj str_stg5_muj_148_muj_0000f0c4, local
	.string "stg5_muj_148"
.endobj str_stg5_muj_148_muj_0000f0c4

# .rodata:0x659 | 0x1421 | size: 0x3
.obj gap_03_00001421_rodata, global
.hidden gap_03_00001421_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001421_rodata

# .rodata:0x65C | 0x1424 | size: 0x10
.obj str_stg5_muj_168_01_muj_0000f0d4, local
	.string "stg5_muj_168_01"
.endobj str_stg5_muj_168_01_muj_0000f0d4

# .rodata:0x66C | 0x1434 | size: 0x9
.obj str_３人娘Ａ_muj_0000f0e4, local
	.4byte 0x8252906C
	.4byte 0x96BA8260
	.byte 0x00
.endobj str_３人娘Ａ_muj_0000f0e4

# .rodata:0x675 | 0x143D | size: 0x3
.obj gap_03_0000143D_rodata, global
.hidden gap_03_0000143D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000143D_rodata

# .rodata:0x678 | 0x1440 | size: 0x10
.obj str_stg5_muj_168_02_muj_0000f0f0, local
	.string "stg5_muj_168_02"
.endobj str_stg5_muj_168_02_muj_0000f0f0

# .rodata:0x688 | 0x1450 | size: 0x9
.obj str_３人娘Ｂ_muj_0000f100, local
	.4byte 0x8252906C
	.4byte 0x96BA8261
	.byte 0x00
.endobj str_３人娘Ｂ_muj_0000f100

# .rodata:0x691 | 0x1459 | size: 0x3
.obj gap_03_00001459_rodata, global
.hidden gap_03_00001459_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001459_rodata

# .rodata:0x694 | 0x145C | size: 0x10
.obj str_stg5_muj_168_03_muj_0000f10c, local
	.string "stg5_muj_168_03"
.endobj str_stg5_muj_168_03_muj_0000f10c

# .rodata:0x6A4 | 0x146C | size: 0x9
.obj str_３人娘Ｃ_muj_0000f11c, local
	.4byte 0x8252906C
	.4byte 0x96BA8262
	.byte 0x00
.endobj str_３人娘Ｃ_muj_0000f11c

# .rodata:0x6AD | 0x1475 | size: 0x3
.obj gap_03_00001475_rodata, global
.hidden gap_03_00001475_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001475_rodata

# .rodata:0x6B0 | 0x1478 | size: 0xA
.obj str_c_dance_r_muj_0000f128, local
	.string "c_dance_r"
.endobj str_c_dance_r_muj_0000f128

# .rodata:0x6BA | 0x1482 | size: 0x2
.obj gap_03_00001482_rodata, global
.hidden gap_03_00001482_rodata
	.2byte 0x0000
.endobj gap_03_00001482_rodata

# .rodata:0x6BC | 0x1484 | size: 0x7
.obj str_踊り子_muj_0000f134, local
	.4byte 0x977882E8
	.byte 0x8E, 0x71, 0x00
.endobj str_踊り子_muj_0000f134

# .rodata:0x6C3 | 0x148B | size: 0x1
.obj gap_03_0000148B_rodata, global
.hidden gap_03_0000148B_rodata
	.byte 0x00
.endobj gap_03_0000148B_rodata

# .rodata:0x6C4 | 0x148C | size: 0xA
.obj str_c_dance_p_muj_0000f13c, local
	.string "c_dance_p"
.endobj str_c_dance_p_muj_0000f13c

# .rodata:0x6CE | 0x1496 | size: 0x2
.obj gap_03_00001496_rodata, global
.hidden gap_03_00001496_rodata
	.2byte 0x0000
.endobj gap_03_00001496_rodata

# .rodata:0x6D0 | 0x1498 | size: 0xD
.obj str_踊り子ピンク_muj_0000f148, local
	.4byte 0x977882E8
	.4byte 0x8E718373
	.4byte 0x8393834E
	.byte 0x00
.endobj str_踊り子ピンク_muj_0000f148

# .rodata:0x6DD | 0x14A5 | size: 0x3
.obj gap_03_000014A5_rodata, global
.hidden gap_03_000014A5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000014A5_rodata

# .rodata:0x6E0 | 0x14A8 | size: 0xA
.obj str_c_dance_k_muj_0000f158, local
	.string "c_dance_k"
.endobj str_c_dance_k_muj_0000f158

# .rodata:0x6EA | 0x14B2 | size: 0x2
.obj gap_03_000014B2_rodata, global
.hidden gap_03_000014B2_rodata
	.2byte 0x0000
.endobj gap_03_000014B2_rodata

# .rodata:0x6EC | 0x14B4 | size: 0xB
.obj str_踊り子黄緑_muj_0000f164, local
	.4byte 0x977882E8
	.4byte 0x8E7189A9
	.byte 0x97, 0xCE, 0x00
.endobj str_踊り子黄緑_muj_0000f164

# .rodata:0x6F7 | 0x14BF | size: 0x1
.obj gap_03_000014BF_rodata, global
.hidden gap_03_000014BF_rodata
	.byte 0x00
.endobj gap_03_000014BF_rodata

# .rodata:0x6F8 | 0x14C0 | size: 0xB
.obj str_めがね水夫_muj_0000f170, local
	.4byte 0x82DF82AA
	.4byte 0x82CB9085
	.byte 0x95, 0x76, 0x00
.endobj str_めがね水夫_muj_0000f170

# .rodata:0x703 | 0x14CB | size: 0x1
.obj gap_03_000014CB_rodata, global
.hidden gap_03_000014CB_rodata
	.byte 0x00
.endobj gap_03_000014CB_rodata

# .rodata:0x704 | 0x14CC | size: 0x5
.obj str_店員_muj_0000f17c, local
	.4byte 0x935888F5
	.byte 0x00
.endobj str_店員_muj_0000f17c

# .rodata:0x709 | 0x14D1 | size: 0x3
.obj gap_03_000014D1_rodata, global
.hidden gap_03_000014D1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000014D1_rodata

# .rodata:0x70C | 0x14D4 | size: 0x7
.obj str_宿店員_muj_0000f184, local
	.4byte 0x8F689358
	.byte 0x88, 0xF5, 0x00
.endobj str_宿店員_muj_0000f184

# .rodata:0x713 | 0x14DB | size: 0x1
.obj gap_03_000014DB_rodata, global
.hidden gap_03_000014DB_rodata
	.byte 0x00
.endobj gap_03_000014DB_rodata

# .rodata:0x714 | 0x14DC | size: 0x6
.obj str_水夫D_muj_0000f18c, local
	.4byte 0x90859576
	.2byte 0x4400
.endobj str_水夫D_muj_0000f18c

# .rodata:0x71A | 0x14E2 | size: 0x2
.obj gap_03_000014E2_rodata, global
.hidden gap_03_000014E2_rodata
	.2byte 0x0000
.endobj gap_03_000014E2_rodata

# .rodata:0x71C | 0x14E4 | size: 0xA
.obj str_ボロ水夫A_muj_0000f194, local
	.4byte 0x837B838D
	.4byte 0x90859576
	.2byte 0x4100
.endobj str_ボロ水夫A_muj_0000f194

# .rodata:0x726 | 0x14EE | size: 0x2
.obj gap_03_000014EE_rodata, global
.hidden gap_03_000014EE_rodata
	.2byte 0x0000
.endobj gap_03_000014EE_rodata

# .rodata:0x728 | 0x14F0 | size: 0xA
.obj str_ボロ水夫B_muj_0000f1a0, local
	.4byte 0x837B838D
	.4byte 0x90859576
	.2byte 0x4200
.endobj str_ボロ水夫B_muj_0000f1a0

# .rodata:0x732 | 0x14FA | size: 0x2
.obj gap_03_000014FA_rodata, global
.hidden gap_03_000014FA_rodata
	.2byte 0x0000
.endobj gap_03_000014FA_rodata

# .rodata:0x734 | 0x14FC | size: 0x7
.obj str_モニー_muj_0000f1ac, local
	.4byte 0x8382836A
	.byte 0x81, 0x5B, 0x00
.endobj str_モニー_muj_0000f1ac

# .rodata:0x73B | 0x1503 | size: 0x1
.obj gap_03_00001503_rodata, global
.hidden gap_03_00001503_rodata
	.byte 0x00
.endobj gap_03_00001503_rodata

# .rodata:0x73C | 0x1504 | size: 0x9
.obj str_ピートン_muj_0000f1b4, local
	.4byte 0x8373815B
	.4byte 0x83678393
	.byte 0x00
.endobj str_ピートン_muj_0000f1b4

# .rodata:0x745 | 0x150D | size: 0x3
.obj gap_03_0000150D_rodata, global
.hidden gap_03_0000150D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000150D_rodata

# .rodata:0x748 | 0x1510 | size: 0xA
.obj str_エルモスA_muj_0000f1c0, local
	.4byte 0x8347838B
	.4byte 0x83828358
	.2byte 0x4100
.endobj str_エルモスA_muj_0000f1c0

# .rodata:0x752 | 0x151A | size: 0x2
.obj gap_03_0000151A_rodata, global
.hidden gap_03_0000151A_rodata
	.2byte 0x0000
.endobj gap_03_0000151A_rodata

# .rodata:0x754 | 0x151C | size: 0xA
.obj str_エルモスB_muj_0000f1cc, local
	.4byte 0x8347838B
	.4byte 0x83828358
	.2byte 0x4200
.endobj str_エルモスB_muj_0000f1cc

# .rodata:0x75E | 0x1526 | size: 0x2
.obj gap_03_00001526_rodata, global
.hidden gap_03_00001526_rodata
	.2byte 0x0000
.endobj gap_03_00001526_rodata

# .rodata:0x760 | 0x1528 | size: 0xA
.obj str_エルモスC_muj_0000f1d8, local
	.4byte 0x8347838B
	.4byte 0x83828358
	.2byte 0x4300
.endobj str_エルモスC_muj_0000f1d8

# .rodata:0x76A | 0x1532 | size: 0x2
.obj gap_03_00001532_rodata, global
.hidden gap_03_00001532_rodata
	.2byte 0x0000
.endobj gap_03_00001532_rodata

# .rodata:0x76C | 0x1534 | size: 0x7
.obj str_w_bero_muj_0000f1e4, local
	.string "w_bero"
.endobj str_w_bero_muj_0000f1e4

# .rodata:0x773 | 0x153B | size: 0x1
.obj gap_03_0000153B_rodata, global
.hidden gap_03_0000153B_rodata
	.byte 0x00
.endobj gap_03_0000153B_rodata

# .rodata:0x774 | 0x153C | size: 0x7
.obj str_muj_00_muj_0000f1ec, local
	.string "muj_00"
.endobj str_muj_00_muj_0000f1ec

# .rodata:0x77B | 0x1543 | size: 0x1
.obj gap_03_00001543_rodata, global
.hidden gap_03_00001543_rodata
	.byte 0x00
.endobj gap_03_00001543_rodata

# .rodata:0x77C | 0x1544 | size: 0x7
.obj str_e_bero_muj_0000f1f4, local
	.string "e_bero"
.endobj str_e_bero_muj_0000f1f4

# .rodata:0x783 | 0x154B | size: 0x1
.obj gap_03_0000154B_rodata, global
.hidden gap_03_0000154B_rodata
	.byte 0x00
.endobj gap_03_0000154B_rodata

# .rodata:0x784 | 0x154C | size: 0x8
.obj str_e_bero1_muj_0000f1fc, local
	.string "e_bero1"
.endobj str_e_bero1_muj_0000f1fc

# .rodata:0x78C | 0x1554 | size: 0x7
.obj str_muj_02_muj_0000f204, local
	.string "muj_02"
.endobj str_muj_02_muj_0000f204

# .rodata:0x793 | 0x155B | size: 0x1
.obj gap_03_0000155B_rodata, global
.hidden gap_03_0000155B_rodata
	.byte 0x00
.endobj gap_03_0000155B_rodata

# .rodata:0x794 | 0x155C | size: 0xB
.obj str_S_mise_kan_muj_0000f20c, local
	.string "S_mise_kan"
.endobj str_S_mise_kan_muj_0000f20c

# .rodata:0x79F | 0x1567 | size: 0x1
.obj gap_03_00001567_rodata, global
.hidden gap_03_00001567_rodata
	.byte 0x00
.endobj gap_03_00001567_rodata

# .rodata:0x7A0 | 0x1568 | size: 0xE
.obj str_S_mise_hasi04_muj_0000f218, local
	.string "S_mise_hasi04"
.endobj str_S_mise_hasi04_muj_0000f218

# .rodata:0x7AE | 0x1576 | size: 0x2
.obj gap_03_00001576_rodata, global
.hidden gap_03_00001576_rodata
	.2byte 0x0000
.endobj gap_03_00001576_rodata

# .rodata:0x7B0 | 0x1578 | size: 0xE
.obj str_S_mise_hasi05_muj_0000f228, local
	.string "S_mise_hasi05"
.endobj str_S_mise_hasi05_muj_0000f228

# .rodata:0x7BE | 0x1586 | size: 0x2
.obj gap_03_00001586_rodata, global
.hidden gap_03_00001586_rodata
	.2byte 0x0000
.endobj gap_03_00001586_rodata

# .rodata:0x7C0 | 0x1588 | size: 0xE
.obj str_A_mise_in_doa_muj_0000f238, local
	.string "A_mise_in_doa"
.endobj str_A_mise_in_doa_muj_0000f238

# .rodata:0x7CE | 0x1596 | size: 0x2
.obj gap_03_00001596_rodata, global
.hidden gap_03_00001596_rodata
	.2byte 0x0000
.endobj gap_03_00001596_rodata

# .rodata:0x7D0 | 0x1598 | size: 0xB
.obj str_A_mise_doa_muj_0000f248, local
	.string "A_mise_doa"
.endobj str_A_mise_doa_muj_0000f248

# .rodata:0x7DB | 0x15A3 | size: 0x1
.obj gap_03_000015A3_rodata, global
.hidden gap_03_000015A3_rodata
	.byte 0x00
.endobj gap_03_000015A3_rodata

# .rodata:0x7DC | 0x15A4 | size: 0x7
.obj str_S_mise_muj_0000f254, local
	.string "S_mise"
.endobj str_S_mise_muj_0000f254

# .rodata:0x7E3 | 0x15AB | size: 0x1
.obj gap_03_000015AB_rodata, global
.hidden gap_03_000015AB_rodata
	.byte 0x00
.endobj gap_03_000015AB_rodata

# .rodata:0x7E4 | 0x15AC | size: 0x7
.obj str_S_yado_muj_0000f25c, local
	.string "S_yado"
.endobj str_S_yado_muj_0000f25c

# .rodata:0x7EB | 0x15B3 | size: 0x1
.obj gap_03_000015B3_rodata, global
.hidden gap_03_000015B3_rodata
	.byte 0x00
.endobj gap_03_000015B3_rodata

# .rodata:0x7EC | 0x15B4 | size: 0xE
.obj str_A_yado_in_doa_muj_0000f264, local
	.string "A_yado_in_doa"
.endobj str_A_yado_in_doa_muj_0000f264

# .rodata:0x7FA | 0x15C2 | size: 0x2
.obj gap_03_000015C2_rodata, global
.hidden gap_03_000015C2_rodata
	.2byte 0x0000
.endobj gap_03_000015C2_rodata

# .rodata:0x7FC | 0x15C4 | size: 0xB
.obj str_A_yado_doa_muj_0000f274, local
	.string "A_yado_doa"
.endobj str_A_yado_doa_muj_0000f274

# .rodata:0x807 | 0x15CF | size: 0x1
.obj gap_03_000015CF_rodata, global
.hidden gap_03_000015CF_rodata
	.byte 0x00
.endobj gap_03_000015CF_rodata

# .rodata:0x808 | 0x15D0 | size: 0xA
.obj str_S_yado_in_muj_0000f280, local
	.string "S_yado_in"
.endobj str_S_yado_in_muj_0000f280

# .rodata:0x812 | 0x15DA | size: 0x2
.obj gap_03_000015DA_rodata, global
.hidden gap_03_000015DA_rodata
	.2byte 0x0000
.endobj gap_03_000015DA_rodata

# .rodata:0x814 | 0x15DC | size: 0xA
.obj str_S_item_01_muj_0000f28c, local
	.string "S_item_01"
.endobj str_S_item_01_muj_0000f28c

# .rodata:0x81E | 0x15E6 | size: 0x2
.obj gap_03_000015E6_rodata, global
.hidden gap_03_000015E6_rodata
	.2byte 0x0000
.endobj gap_03_000015E6_rodata

# .rodata:0x820 | 0x15E8 | size: 0xA
.obj str_A_item_01_muj_0000f298, local
	.string "A_item_01"
.endobj str_A_item_01_muj_0000f298

# .rodata:0x82A | 0x15F2 | size: 0x2
.obj gap_03_000015F2_rodata, global
.hidden gap_03_000015F2_rodata
	.2byte 0x0000
.endobj gap_03_000015F2_rodata

# .rodata:0x82C | 0x15F4 | size: 0xA
.obj str_S_item_02_muj_0000f2a4, local
	.string "S_item_02"
.endobj str_S_item_02_muj_0000f2a4

# .rodata:0x836 | 0x15FE | size: 0x2
.obj gap_03_000015FE_rodata, global
.hidden gap_03_000015FE_rodata
	.2byte 0x0000
.endobj gap_03_000015FE_rodata

# .rodata:0x838 | 0x1600 | size: 0xA
.obj str_A_item_02_muj_0000f2b0, local
	.string "A_item_02"
.endobj str_A_item_02_muj_0000f2b0

# .rodata:0x842 | 0x160A | size: 0x2
.obj gap_03_0000160A_rodata, global
.hidden gap_03_0000160A_rodata
	.2byte 0x0000
.endobj gap_03_0000160A_rodata

# .rodata:0x844 | 0x160C | size: 0xA
.obj str_S_item_03_muj_0000f2bc, local
	.string "S_item_03"
.endobj str_S_item_03_muj_0000f2bc

# .rodata:0x84E | 0x1616 | size: 0x2
.obj gap_03_00001616_rodata, global
.hidden gap_03_00001616_rodata
	.2byte 0x0000
.endobj gap_03_00001616_rodata

# .rodata:0x850 | 0x1618 | size: 0xA
.obj str_A_item_03_muj_0000f2c8, local
	.string "A_item_03"
.endobj str_A_item_03_muj_0000f2c8

# .rodata:0x85A | 0x1622 | size: 0x2
.obj gap_03_00001622_rodata, global
.hidden gap_03_00001622_rodata
	.2byte 0x0000
.endobj gap_03_00001622_rodata

# .rodata:0x85C | 0x1624 | size: 0xA
.obj str_S_item_04_muj_0000f2d4, local
	.string "S_item_04"
.endobj str_S_item_04_muj_0000f2d4

# .rodata:0x866 | 0x162E | size: 0x2
.obj gap_03_0000162E_rodata, global
.hidden gap_03_0000162E_rodata
	.2byte 0x0000
.endobj gap_03_0000162E_rodata

# .rodata:0x868 | 0x1630 | size: 0xA
.obj str_A_item_04_muj_0000f2e0, local
	.string "A_item_04"
.endobj str_A_item_04_muj_0000f2e0

# .rodata:0x872 | 0x163A | size: 0x2
.obj gap_03_0000163A_rodata, global
.hidden gap_03_0000163A_rodata
	.2byte 0x0000
.endobj gap_03_0000163A_rodata

# .rodata:0x874 | 0x163C | size: 0xA
.obj str_S_item_05_muj_0000f2ec, local
	.string "S_item_05"
.endobj str_S_item_05_muj_0000f2ec

# .rodata:0x87E | 0x1646 | size: 0x2
.obj gap_03_00001646_rodata, global
.hidden gap_03_00001646_rodata
	.2byte 0x0000
.endobj gap_03_00001646_rodata

# .rodata:0x880 | 0x1648 | size: 0xA
.obj str_A_item_05_muj_0000f2f8, local
	.string "A_item_05"
.endobj str_A_item_05_muj_0000f2f8

# .rodata:0x88A | 0x1652 | size: 0x2
.obj gap_03_00001652_rodata, global
.hidden gap_03_00001652_rodata
	.2byte 0x0000
.endobj gap_03_00001652_rodata

# .rodata:0x88C | 0x1654 | size: 0xA
.obj str_S_item_06_muj_0000f304, local
	.string "S_item_06"
.endobj str_S_item_06_muj_0000f304

# .rodata:0x896 | 0x165E | size: 0x2
.obj gap_03_0000165E_rodata, global
.hidden gap_03_0000165E_rodata
	.2byte 0x0000
.endobj gap_03_0000165E_rodata

# .rodata:0x898 | 0x1660 | size: 0xA
.obj str_A_item_06_muj_0000f310, local
	.string "A_item_06"
.endobj str_A_item_06_muj_0000f310

# .rodata:0x8A2 | 0x166A | size: 0x2
.obj gap_03_0000166A_rodata, global
.hidden gap_03_0000166A_rodata
	.2byte 0x0000
.endobj gap_03_0000166A_rodata

# .rodata:0x8A4 | 0x166C | size: 0x8
.obj str_shop_00_muj_0000f31c, local
	.string "shop_00"
.endobj str_shop_00_muj_0000f31c

# .rodata:0x8AC | 0x1674 | size: 0x8
.obj str_shop_01_muj_0000f324, local
	.string "shop_01"
.endobj str_shop_01_muj_0000f324

# .rodata:0x8B4 | 0x167C | size: 0x8
.obj str_shop_02_muj_0000f32c, local
	.string "shop_02"
.endobj str_shop_02_muj_0000f32c

# .rodata:0x8BC | 0x1684 | size: 0x8
.obj str_shop_03_muj_0000f334, local
	.string "shop_03"
.endobj str_shop_03_muj_0000f334

# .rodata:0x8C4 | 0x168C | size: 0x8
.obj str_shop_04_muj_0000f33c, local
	.string "shop_04"
.endobj str_shop_04_muj_0000f33c

# .rodata:0x8CC | 0x1694 | size: 0x8
.obj str_shop_05_muj_0000f344, local
	.string "shop_05"
.endobj str_shop_05_muj_0000f344

# .rodata:0x8D4 | 0x169C | size: 0x8
.obj str_shop_06_muj_0000f34c, local
	.string "shop_06"
.endobj str_shop_06_muj_0000f34c

# .rodata:0x8DC | 0x16A4 | size: 0x8
.obj str_shop_07_muj_0000f354, local
	.string "shop_07"
.endobj str_shop_07_muj_0000f354

# .rodata:0x8E4 | 0x16AC | size: 0x8
.obj str_shop_08_muj_0000f35c, local
	.string "shop_08"
.endobj str_shop_08_muj_0000f35c

# .rodata:0x8EC | 0x16B4 | size: 0x8
.obj str_shop_09_muj_0000f364, local
	.string "shop_09"
.endobj str_shop_09_muj_0000f364

# .rodata:0x8F4 | 0x16BC | size: 0x8
.obj str_shop_10_muj_0000f36c, local
	.string "shop_10"
.endobj str_shop_10_muj_0000f36c

# .rodata:0x8FC | 0x16C4 | size: 0x8
.obj str_shop_11_muj_0000f374, local
	.string "shop_11"
.endobj str_shop_11_muj_0000f374

# .rodata:0x904 | 0x16CC | size: 0x8
.obj str_shop_12_muj_0000f37c, local
	.string "shop_12"
.endobj str_shop_12_muj_0000f37c

# .rodata:0x90C | 0x16D4 | size: 0x8
.obj str_shop_13_muj_0000f384, local
	.string "shop_13"
.endobj str_shop_13_muj_0000f384

# .rodata:0x914 | 0x16DC | size: 0x8
.obj str_shop_14_muj_0000f38c, local
	.string "shop_14"
.endobj str_shop_14_muj_0000f38c

# .rodata:0x91C | 0x16E4 | size: 0x8
.obj str_shop_15_muj_0000f394, local
	.string "shop_15"
.endobj str_shop_15_muj_0000f394

# .rodata:0x924 | 0x16EC | size: 0x8
.obj str_shop_16_muj_0000f39c, local
	.string "shop_16"
.endobj str_shop_16_muj_0000f39c

# .rodata:0x92C | 0x16F4 | size: 0x8
.obj str_shop_17_muj_0000f3a4, local
	.string "shop_17"
.endobj str_shop_17_muj_0000f3a4

# .rodata:0x934 | 0x16FC | size: 0x8
.obj str_shop_18_muj_0000f3ac, local
	.string "shop_18"
.endobj str_shop_18_muj_0000f3ac

# .rodata:0x93C | 0x1704 | size: 0x8
.obj str_shop_19_muj_0000f3b4, local
	.string "shop_19"
.endobj str_shop_19_muj_0000f3b4

# .rodata:0x944 | 0x170C | size: 0x8
.obj str_shop_20_muj_0000f3bc, local
	.string "shop_20"
.endobj str_shop_20_muj_0000f3bc

# .rodata:0x94C | 0x1714 | size: 0x8
.obj str_shop_21_muj_0000f3c4, local
	.string "shop_21"
.endobj str_shop_21_muj_0000f3c4

# .rodata:0x954 | 0x171C | size: 0x8
.obj str_shop_22_muj_0000f3cc, local
	.string "shop_22"
.endobj str_shop_22_muj_0000f3cc

# .rodata:0x95C | 0x1724 | size: 0x8
.obj str_shop_23_muj_0000f3d4, local
	.string "shop_23"
.endobj str_shop_23_muj_0000f3d4

# .rodata:0x964 | 0x172C | size: 0x8
.obj str_shop_24_muj_0000f3dc, local
	.string "shop_24"
.endobj str_shop_24_muj_0000f3dc

# .rodata:0x96C | 0x1734 | size: 0x8
.obj str_shop_25_muj_0000f3e4, local
	.string "shop_25"
.endobj str_shop_25_muj_0000f3e4

# .rodata:0x974 | 0x173C | size: 0x8
.obj str_shop_26_muj_0000f3ec, local
	.string "shop_26"
.endobj str_shop_26_muj_0000f3ec

# .rodata:0x97C | 0x1744 | size: 0x8
.obj str_shop_27_muj_0000f3f4, local
	.string "shop_27"
.endobj str_shop_27_muj_0000f3f4

# .rodata:0x984 | 0x174C | size: 0x8
.obj str_shop_28_muj_0000f3fc, local
	.string "shop_28"
.endobj str_shop_28_muj_0000f3fc

# .rodata:0x98C | 0x1754 | size: 0x8
.obj str_shop_29_muj_0000f404, local
	.string "shop_29"
.endobj str_shop_29_muj_0000f404

# .rodata:0x994 | 0x175C | size: 0x8
.obj str_shop_30_muj_0000f40c, local
	.string "shop_30"
.endobj str_shop_30_muj_0000f40c

# .rodata:0x99C | 0x1764 | size: 0x8
.obj str_shop_31_muj_0000f414, local
	.string "shop_31"
.endobj str_shop_31_muj_0000f414

# .rodata:0x9A4 | 0x176C | size: 0x8
.obj str_shop_32_muj_0000f41c, local
	.string "shop_32"
.endobj str_shop_32_muj_0000f41c

# .rodata:0x9AC | 0x1774 | size: 0x8
.obj str_shop_33_muj_0000f424, local
	.string "shop_33"
.endobj str_shop_33_muj_0000f424

# .rodata:0x9B4 | 0x177C | size: 0x8
.obj str_shop_34_muj_0000f42c, local
	.string "shop_34"
.endobj str_shop_34_muj_0000f42c

# .rodata:0x9BC | 0x1784 | size: 0x8
.obj str_yado_00_muj_0000f434, local
	.string "yado_00"
.endobj str_yado_00_muj_0000f434

# .rodata:0x9C4 | 0x178C | size: 0x8
.obj str_yado_01_muj_0000f43c, local
	.string "yado_01"
.endobj str_yado_01_muj_0000f43c

# .rodata:0x9CC | 0x1794 | size: 0x8
.obj str_yado_02_muj_0000f444, local
	.string "yado_02"
.endobj str_yado_02_muj_0000f444

# .rodata:0x9D4 | 0x179C | size: 0x8
.obj str_yado_03_muj_0000f44c, local
	.string "yado_03"
.endobj str_yado_03_muj_0000f44c

# .rodata:0x9DC | 0x17A4 | size: 0x8
.obj str_yado_04_muj_0000f454, local
	.string "yado_04"
.endobj str_yado_04_muj_0000f454

# .rodata:0x9E4 | 0x17AC | size: 0x8
.obj str_yado_05_muj_0000f45c, local
	.string "yado_05"
.endobj str_yado_05_muj_0000f45c

# .rodata:0x9EC | 0x17B4 | size: 0x8
.obj str_yado_06_muj_0000f464, local
	.string "yado_06"
.endobj str_yado_06_muj_0000f464

# .rodata:0x9F4 | 0x17BC | size: 0x8
.obj str_yado_07_muj_0000f46c, local
	.string "yado_07"
.endobj str_yado_07_muj_0000f46c

# .rodata:0x9FC | 0x17C4 | size: 0x8
.obj str_yado_08_muj_0000f474, local
	.string "yado_08"
.endobj str_yado_08_muj_0000f474

# .rodata:0xA04 | 0x17CC | size: 0x8
.obj str_yado_09_muj_0000f47c, local
	.string "yado_09"
.endobj str_yado_09_muj_0000f47c

# .rodata:0xA0C | 0x17D4 | size: 0x8
.obj str_yado_10_muj_0000f484, local
	.string "yado_10"
.endobj str_yado_10_muj_0000f484

# .rodata:0xA14 | 0x17DC | size: 0x8
.obj str_yado_11_muj_0000f48c, local
	.string "yado_11"
.endobj str_yado_11_muj_0000f48c

# .rodata:0xA1C | 0x17E4 | size: 0x8
.obj str_yado_12_muj_0000f494, local
	.string "yado_12"
.endobj str_yado_12_muj_0000f494

# .rodata:0xA24 | 0x17EC | size: 0x8
.obj str_yado_13_muj_0000f49c, local
	.string "yado_13"
.endobj str_yado_13_muj_0000f49c

# .rodata:0xA2C | 0x17F4 | size: 0xC
.obj str_stg5_muj_15_muj_0000f4a4, local
	.string "stg5_muj_15"
.endobj str_stg5_muj_15_muj_0000f4a4

# .rodata:0xA38 | 0x1800 | size: 0xC
.obj str_stg5_muj_16_muj_0000f4b0, local
	.string "stg5_muj_16"
.endobj str_stg5_muj_16_muj_0000f4b0

# .rodata:0xA44 | 0x180C | size: 0x12
.obj str_stg5_muj_16_yesno_muj_0000f4bc, local
	.string "stg5_muj_16_yesno"
.endobj str_stg5_muj_16_yesno_muj_0000f4bc

# .rodata:0xA56 | 0x181E | size: 0x2
.obj gap_03_0000181E_rodata, global
.hidden gap_03_0000181E_rodata
	.2byte 0x0000
.endobj gap_03_0000181E_rodata

# .rodata:0xA58 | 0x1820 | size: 0xC
.obj str_stg5_muj_17_muj_0000f4d0, local
	.string "stg5_muj_17"
.endobj str_stg5_muj_17_muj_0000f4d0

# .rodata:0xA64 | 0x182C | size: 0xC
.obj str_stg5_muj_18_muj_0000f4dc, local
	.string "stg5_muj_18"
.endobj str_stg5_muj_18_muj_0000f4dc

# .rodata:0xA70 | 0x1838 | size: 0x6
.obj str_M_I_N_muj_0000f4e8, local
	.string "M_I_N"
.endobj str_M_I_N_muj_0000f4e8

# .rodata:0xA76 | 0x183E | size: 0x2
.obj gap_03_0000183E_rodata, global
.hidden gap_03_0000183E_rodata
	.2byte 0x0000
.endobj gap_03_0000183E_rodata

# .rodata:0xA78 | 0x1840 | size: 0xC
.obj str_stg5_muj_19_muj_0000f4f0, local
	.string "stg5_muj_19"
.endobj str_stg5_muj_19_muj_0000f4f0

# .rodata:0xA84 | 0x184C | size: 0xC
.obj str_stg5_muj_20_muj_0000f4fc, local
	.string "stg5_muj_20"
.endobj str_stg5_muj_20_muj_0000f4fc

# .rodata:0xA90 | 0x1858 | size: 0xC
.obj str_stg5_muj_21_muj_0000f508, local
	.string "stg5_muj_21"
.endobj str_stg5_muj_21_muj_0000f508

# .rodata:0xA9C | 0x1864 | size: 0xC
.obj str_stg5_muj_22_muj_0000f514, local
	.string "stg5_muj_22"
.endobj str_stg5_muj_22_muj_0000f514

# .rodata:0xAA8 | 0x1870 | size: 0xE
.obj str_BGM_STG5_MUJ1_muj_0000f520, local
	.string "BGM_STG5_MUJ1"
.endobj str_BGM_STG5_MUJ1_muj_0000f520

# .rodata:0xAB6 | 0x187E | size: 0x2
.obj gap_03_0000187E_rodata, global
.hidden gap_03_0000187E_rodata
	.2byte 0x0000
.endobj gap_03_0000187E_rodata

# .rodata:0xAB8 | 0x1880 | size: 0xC
.obj str_stg5_muj_05_muj_0000f530, local
	.string "stg5_muj_05"
.endobj str_stg5_muj_05_muj_0000f530

# .rodata:0xAC4 | 0x188C | size: 0x10
.obj str_BGM_EVT_DANGER3_muj_0000f53c, local
	.string "BGM_EVT_DANGER3"
.endobj str_BGM_EVT_DANGER3_muj_0000f53c

# .rodata:0xAD4 | 0x189C | size: 0xC
.obj str_stg5_muj_06_muj_0000f54c, local
	.string "stg5_muj_06"
.endobj str_stg5_muj_06_muj_0000f54c

# .rodata:0xAE0 | 0x18A8 | size: 0xC
.obj str_stg5_muj_07_muj_0000f558, local
	.string "stg5_muj_07"
.endobj str_stg5_muj_07_muj_0000f558

# .rodata:0xAEC | 0x18B4 | size: 0xC
.obj str_stg5_muj_08_muj_0000f564, local
	.string "stg5_muj_08"
.endobj str_stg5_muj_08_muj_0000f564

# .rodata:0xAF8 | 0x18C0 | size: 0xC
.obj str_stg5_muj_09_muj_0000f570, local
	.string "stg5_muj_09"
.endobj str_stg5_muj_09_muj_0000f570

# .rodata:0xB04 | 0x18CC | size: 0x4
.obj str_K_1_muj_0000f57c, local
	.string "K_1"
.endobj str_K_1_muj_0000f57c

# .rodata:0xB08 | 0x18D0 | size: 0x4
.obj str_K_2_muj_0000f580, local
	.string "K_2"
.endobj str_K_2_muj_0000f580

# .rodata:0xB0C | 0x18D4 | size: 0xC
.obj str_stg5_muj_10_muj_0000f584, local
	.string "stg5_muj_10"
.endobj str_stg5_muj_10_muj_0000f584

# .rodata:0xB18 | 0x18E0 | size: 0xC
.obj str_stg5_muj_11_muj_0000f590, local
	.string "stg5_muj_11"
.endobj str_stg5_muj_11_muj_0000f590

# .rodata:0xB24 | 0x18EC | size: 0x4
.obj str_S_1_muj_0000f59c, local
	.string "S_1"
.endobj str_S_1_muj_0000f59c

# .rodata:0xB28 | 0x18F0 | size: 0x4
.obj str_T_1_muj_0000f5a0, local
	.string "T_1"
.endobj str_T_1_muj_0000f5a0

# .rodata:0xB2C | 0x18F4 | size: 0xC
.obj str_stg5_muj_12_muj_0000f5a4, local
	.string "stg5_muj_12"
.endobj str_stg5_muj_12_muj_0000f5a4

# .rodata:0xB38 | 0x1900 | size: 0x1D
.obj str_SFX_VOICE_MARIO_SURP_muj_0000f5b0, local
	.string "SFX_VOICE_MARIO_SURPRISED2_3"
.endobj str_SFX_VOICE_MARIO_SURP_muj_0000f5b0

# .rodata:0xB55 | 0x191D | size: 0x3
.obj gap_03_0000191D_rodata, global
.hidden gap_03_0000191D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000191D_rodata

# .rodata:0xB58 | 0x1920 | size: 0x7
.obj str_M_N_5B_muj_0000f5d0, local
	.string "M_N_5B"
.endobj str_M_N_5B_muj_0000f5d0

# .rodata:0xB5F | 0x1927 | size: 0x1
.obj gap_03_00001927_rodata, global
.hidden gap_03_00001927_rodata
	.byte 0x00
.endobj gap_03_00001927_rodata

# .rodata:0xB60 | 0x1928 | size: 0x17
.obj str_SFX_STG5_MARCO_ESCAP_muj_0000f5d8, local
	.string "SFX_STG5_MARCO_ESCAPE1"
.endobj str_SFX_STG5_MARCO_ESCAP_muj_0000f5d8

# .rodata:0xB77 | 0x193F | size: 0x1
.obj gap_03_0000193F_rodata, global
.hidden gap_03_0000193F_rodata
	.byte 0x00
.endobj gap_03_0000193F_rodata

# .rodata:0xB78 | 0x1940 | size: 0xC
.obj str_stg5_muj_13_muj_0000f5f0, local
	.string "stg5_muj_13"
.endobj str_stg5_muj_13_muj_0000f5f0

# .rodata:0xB84 | 0x194C | size: 0x14
.obj str_BGM_EVT_STG5_GHOST1_muj_0000f5fc, local
	.string "BGM_EVT_STG5_GHOST1"
.endobj str_BGM_EVT_STG5_GHOST1_muj_0000f5fc

# .rodata:0xB98 | 0x1960 | size: 0x6
.obj str_M_I_Y_muj_0000f610, local
	.string "M_I_Y"
.endobj str_M_I_Y_muj_0000f610

# .rodata:0xB9E | 0x1966 | size: 0x2
.obj gap_03_00001966_rodata, global
.hidden gap_03_00001966_rodata
	.2byte 0x0000
.endobj gap_03_00001966_rodata

# .rodata:0xBA0 | 0x1968 | size: 0x15
.obj str_SFX_STG5_ELMOS_MOVE1_muj_0000f618, local
	.string "SFX_STG5_ELMOS_MOVE1"
.endobj str_SFX_STG5_ELMOS_MOVE1_muj_0000f618

# .rodata:0xBB5 | 0x197D | size: 0x3
.obj gap_03_0000197D_rodata, global
.hidden gap_03_0000197D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000197D_rodata

# .rodata:0xBB8 | 0x1980 | size: 0xC
.obj str_stg5_muj_14_muj_0000f630, local
	.string "stg5_muj_14"
.endobj str_stg5_muj_14_muj_0000f630

# .rodata:0xBC4 | 0x198C | size: 0x1B
.obj str_SFX_VOICE_MARIO_HAND_muj_0000f63c, local
	.string "SFX_VOICE_MARIO_HAND_UP1_1"
.endobj str_SFX_VOICE_MARIO_HAND_muj_0000f63c

# .rodata:0xBDF | 0x19A7 | size: 0x1
.obj gap_03_000019A7_rodata, global
.hidden gap_03_000019A7_rodata
	.byte 0x00
.endobj gap_03_000019A7_rodata

# .rodata:0xBE0 | 0x19A8 | size: 0x6
.obj str_M_I_G_muj_0000f658, local
	.string "M_I_G"
.endobj str_M_I_G_muj_0000f658

# .rodata:0xBE6 | 0x19AE | size: 0x2
.obj gap_03_000019AE_rodata, global
.hidden gap_03_000019AE_rodata
	.2byte 0x0000
.endobj gap_03_000019AE_rodata

# .rodata:0xBE8 | 0x19B0 | size: 0xC
.obj str_stg5_muj_29_muj_0000f660, local
	.string "stg5_muj_29"
.endobj str_stg5_muj_29_muj_0000f660

# .rodata:0xBF4 | 0x19BC | size: 0x6
.obj str_mario_muj_0000f66c, local
	.string "mario"
.endobj str_mario_muj_0000f66c

# .rodata:0xBFA | 0x19C2 | size: 0x2
.obj gap_03_000019C2_rodata, global
.hidden gap_03_000019C2_rodata
	.2byte 0x0000
.endobj gap_03_000019C2_rodata

# .rodata:0xBFC | 0x19C4 | size: 0xC
.obj str_stg5_muj_30_muj_0000f674, local
	.string "stg5_muj_30"
.endobj str_stg5_muj_30_muj_0000f674

# .rodata:0xC08 | 0x19D0 | size: 0xC
.obj vec3_muj_0000f680, local
	.4byte 0x00000000
	.4byte 0x42C80000
	.4byte 0x00000000
.endobj vec3_muj_0000f680

# .rodata:0xC14 | 0x19DC | size: 0xC
.obj vec3_muj_0000f68c, local
	.4byte 0x00000000
	.4byte 0x3F800000
	.4byte 0x00000000
.endobj vec3_muj_0000f68c

# .rodata:0xC20 | 0x19E8 | size: 0xC
.obj vec3_muj_0000f698, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj vec3_muj_0000f698

# .rodata:0xC2C | 0x19F4 | size: 0x4
.obj float_3p004_muj_0000f6a4, local
	.4byte 0x404040FF
.endobj float_3p004_muj_0000f6a4

# .rodata:0xC30 | 0x19F8 | size: 0x2
.obj str_S_muj_0000f6a8, local
	.string "S"
.endobj str_S_muj_0000f6a8

# .rodata:0xC32 | 0x19FA | size: 0x2
.obj gap_03_000019FA_rodata, global
.hidden gap_03_000019FA_rodata
	.2byte 0x0000
.endobj gap_03_000019FA_rodata

# .rodata:0xC34 | 0x19FC | size: 0xA
.obj str_mobj_save_muj_0000f6ac, local
	.string "mobj_save"
.endobj str_mobj_save_muj_0000f6ac

# .rodata:0xC3E | 0x1A06 | size: 0x2
.obj gap_03_00001A06_rodata, global
.hidden gap_03_00001A06_rodata
	.2byte 0x0000
.endobj gap_03_00001A06_rodata

# .rodata:0xC40 | 0x1A08 | size: 0x10
.obj str_SFX_STG8_QUAKE1_muj_0000f6b8, local
	.string "SFX_STG8_QUAKE1"
.endobj str_SFX_STG8_QUAKE1_muj_0000f6b8

# .rodata:0xC50 | 0x1A18 | size: 0xD
.obj str_stg8_dark_06_muj_0000f6c8, local
	.string "stg8_dark_06"
.endobj str_stg8_dark_06_muj_0000f6c8

# .rodata:0xC5D | 0x1A25 | size: 0x3
.obj gap_03_00001A25_rodata, global
.hidden gap_03_00001A25_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001A25_rodata

# .rodata:0xC60 | 0x1A28 | size: 0x10
.obj str_SFX_STG8_LIGHT1_muj_0000f6d8, local
	.string "SFX_STG8_LIGHT1"
.endobj str_SFX_STG8_LIGHT1_muj_0000f6d8

# .rodata:0xC70 | 0x1A38 | size: 0x7
.obj str_pik_01_muj_0000f6e8, local
	.string "pik_01"
.endobj str_pik_01_muj_0000f6e8

# .rodata:0xC77 | 0x1A3F | size: 0x1
.obj gap_03_00001A3F_rodata, global
.hidden gap_03_00001A3F_rodata
	.byte 0x00
.endobj gap_03_00001A3F_rodata

# .rodata:0xC78 | 0x1A40 | size: 0xC
.obj str_sekai_yami2_muj_0000f6f0, local
	.string "sekai_yami2"
.endobj str_sekai_yami2_muj_0000f6f0

# .rodata:0xC84 | 0x1A4C | size: 0xA
.obj str_starstone_muj_0000f6fc, local
	.string "starstone"
.endobj str_starstone_muj_0000f6fc

# .rodata:0xC8E | 0x1A56 | size: 0x2
.obj gap_03_00001A56_rodata, global
.hidden gap_03_00001A56_rodata
	.2byte 0x0000
.endobj gap_03_00001A56_rodata

# .rodata:0xC90 | 0x1A58 | size: 0x10
.obj str_stg8_las_148_38_muj_0000f708, local
	.string "stg8_las_148_38"
.endobj str_stg8_las_148_38_muj_0000f708

# .rodata:0xCA0 | 0x1A68 | size: 0x10
.obj str_stg8_las_148_39_muj_0000f718, local
	.string "stg8_las_148_39"
.endobj str_stg8_las_148_39_muj_0000f718

# .rodata:0xCB0 | 0x1A78 | size: 0x10
.obj str_stg8_las_148_40_muj_0000f728, local
	.string "stg8_las_148_40"
.endobj str_stg8_las_148_40_muj_0000f728

# .rodata:0xCC0 | 0x1A88 | size: 0x10
.obj str_stg8_las_148_41_muj_0000f738, local
	.string "stg8_las_148_41"
.endobj str_stg8_las_148_41_muj_0000f738

# .rodata:0xCD0 | 0x1A98 | size: 0x10
.obj str_stg8_las_148_42_muj_0000f748, local
	.string "stg8_las_148_42"
.endobj str_stg8_las_148_42_muj_0000f748

# .rodata:0xCE0 | 0x1AA8 | size: 0x10
.obj str_stg8_las_148_43_muj_0000f758, local
	.string "stg8_las_148_43"
.endobj str_stg8_las_148_43_muj_0000f758

# .rodata:0xCF0 | 0x1AB8 | size: 0x10
.obj str_stg8_las_148_44_muj_0000f768, local
	.string "stg8_las_148_44"
.endobj str_stg8_las_148_44_muj_0000f768

# .rodata:0xD00 | 0x1AC8 | size: 0x10
.obj str_stg8_las_148_45_muj_0000f778, local
	.string "stg8_las_148_45"
.endobj str_stg8_las_148_45_muj_0000f778

# .rodata:0xD10 | 0x1AD8 | size: 0x10
.obj str_stg8_las_148_46_muj_0000f788, local
	.string "stg8_las_148_46"
.endobj str_stg8_las_148_46_muj_0000f788

# .rodata:0xD20 | 0x1AE8 | size: 0x10
.obj str_stg8_las_148_47_muj_0000f798, local
	.string "stg8_las_148_47"
.endobj str_stg8_las_148_47_muj_0000f798

# .rodata:0xD30 | 0x1AF8 | size: 0x10
.obj str_stg8_las_148_48_muj_0000f7a8, local
	.string "stg8_las_148_48"
.endobj str_stg8_las_148_48_muj_0000f7a8

# .rodata:0xD40 | 0x1B08 | size: 0x10
.obj str_stg8_las_148_49_muj_0000f7b8, local
	.string "stg8_las_148_49"
.endobj str_stg8_las_148_49_muj_0000f7b8

# .rodata:0xD50 | 0x1B18 | size: 0x10
.obj str_stg8_las_148_50_muj_0000f7c8, local
	.string "stg8_las_148_50"
.endobj str_stg8_las_148_50_muj_0000f7c8

# .rodata:0xD60 | 0x1B28 | size: 0x10
.obj str_stg8_las_148_51_muj_0000f7d8, local
	.string "stg8_las_148_51"
.endobj str_stg8_las_148_51_muj_0000f7d8

# .rodata:0xD70 | 0x1B38 | size: 0x10
.obj str_stg8_las_148_52_muj_0000f7e8, local
	.string "stg8_las_148_52"
.endobj str_stg8_las_148_52_muj_0000f7e8

# .rodata:0xD80 | 0x1B48 | size: 0xC
.obj str_minnnanokoe_muj_0000f7f8, local
	.string "minnnanokoe"
.endobj str_minnnanokoe_muj_0000f7f8

# .rodata:0xD8C | 0x1B54 | size: 0xD
.obj str_クリスチーヌ_muj_0000f804, local
	.4byte 0x834E838A
	.4byte 0x83588360
	.4byte 0x815B836B
	.byte 0x00
.endobj str_クリスチーヌ_muj_0000f804

# .rodata:0xD99 | 0x1B61 | size: 0x3
.obj gap_03_00001B61_rodata, global
.hidden gap_03_00001B61_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001B61_rodata

# .rodata:0xD9C | 0x1B64 | size: 0x6
.obj str_c_pkr_muj_0000f814, local
	.string "c_pkr"
.endobj str_c_pkr_muj_0000f814

# .rodata:0xDA2 | 0x1B6A | size: 0x2
.obj gap_03_00001B6A_rodata, global
.hidden gap_03_00001B6A_rodata
	.2byte 0x0000
.endobj gap_03_00001B6A_rodata

# .rodata:0xDA4 | 0x1B6C | size: 0xB
.obj str_サンダース_muj_0000f81c, local
	.4byte 0x83548393
	.4byte 0x835F815B
	.byte 0x83, 0x58, 0x00
.endobj str_サンダース_muj_0000f81c

# .rodata:0xDAF | 0x1B77 | size: 0x1
.obj gap_03_00001B77_rodata, global
.hidden gap_03_00001B77_rodata
	.byte 0x00
.endobj gap_03_00001B77_rodata

# .rodata:0xDB0 | 0x1B78 | size: 0x9
.obj str_c_bomt_n_muj_0000f828, local
	.string "c_bomt_n"
.endobj str_c_bomt_n_muj_0000f828

# .rodata:0xDB9 | 0x1B81 | size: 0x3
.obj gap_03_00001B81_rodata, global
.hidden gap_03_00001B81_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001B81_rodata

# .rodata:0xDBC | 0x1B84 | size: 0x8
.obj str_PKR_T_1_muj_0000f834, local
	.string "PKR_T_1"
.endobj str_PKR_T_1_muj_0000f834

# .rodata:0xDC4 | 0x1B8C | size: 0x8
.obj str_PKR_S_1_muj_0000f83c, local
	.string "PKR_S_1"
.endobj str_PKR_S_1_muj_0000f83c

# .rodata:0xDCC | 0x1B94 | size: 0x1
.obj zero_muj_0000f844, local
	.byte 0x00
.endobj zero_muj_0000f844

# .rodata:0xDCD | 0x1B95 | size: 0x3
.obj gap_03_00001B95_rodata, global
.hidden gap_03_00001B95_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001B95_rodata

# .rodata:0xDD0 | 0x1B98 | size: 0x6
.obj str_ep_42_muj_0000f848, local
	.string "ep_42"
.endobj str_ep_42_muj_0000f848

# .rodata:0xDD6 | 0x1B9E | size: 0x2
.obj gap_03_00001B9E_rodata, global
.hidden gap_03_00001B9E_rodata
	.2byte 0x0000
.endobj gap_03_00001B9E_rodata

# .rodata:0xDD8 | 0x1BA0 | size: 0x7
.obj str_gor_01_muj_0000f850, local
	.string "gor_01"
.endobj str_gor_01_muj_0000f850

# .rodata:0xDDF | 0x1BA7 | size: 0x1
.obj gap_03_00001BA7_rodata, global
.hidden gap_03_00001BA7_rodata
	.byte 0x00
.endobj gap_03_00001BA7_rodata

# .rodata:0xDE0 | 0x1BA8 | size: 0x7
.obj str_pik_04_muj_0000f858, local
	.string "pik_04"
.endobj str_pik_04_muj_0000f858

# .rodata:0xDE7 | 0x1BAF | size: 0x1
.obj gap_03_00001BAF_rodata, global
.hidden gap_03_00001BAF_rodata
	.byte 0x00
.endobj gap_03_00001BAF_rodata

# .rodata:0xDE8 | 0x1BB0 | size: 0x6
.obj str_yakan_muj_0000f860, local
	.string "yakan"
.endobj str_yakan_muj_0000f860

# .rodata:0xDEE | 0x1BB6 | size: 0x2
.obj gap_03_00001BB6_rodata, global
.hidden gap_03_00001BB6_rodata
	.2byte 0x0000
.endobj gap_03_00001BB6_rodata

# .rodata:0xDF0 | 0x1BB8 | size: 0x14
.obj str_BGM_EVT_STG8_VOICE1_muj_0000f868, local
	.string "BGM_EVT_STG8_VOICE1"
.endobj str_BGM_EVT_STG8_VOICE1_muj_0000f868

# .rodata:0xE04 | 0x1BCC | size: 0xE
.obj str_ENV_STG5_MUJ3_muj_0000f87c, local
	.string "ENV_STG5_MUJ3"
.endobj str_ENV_STG5_MUJ3_muj_0000f87c

# .rodata:0xE12 | 0x1BDA | size: 0x2
.obj gap_03_00001BDA_rodata, global
.hidden gap_03_00001BDA_rodata
	.2byte 0x0000
.endobj gap_03_00001BDA_rodata

# .rodata:0xE14 | 0x1BDC | size: 0xF
.obj str_モニー（指輪）_muj_0000f88c, local
	.4byte 0x8382836A
	.4byte 0x815B8169
	.4byte 0x8E7797D6
	.byte 0x81, 0x6A, 0x00
.endobj str_モニー（指輪）_muj_0000f88c

# .rodata:0xE23 | 0x1BEB | size: 0x1
.obj gap_03_00001BEB_rodata, global
.hidden gap_03_00001BEB_rodata
	.byte 0x00
.endobj gap_03_00001BEB_rodata

# .rodata:0xE24 | 0x1BEC | size: 0x11
.obj str_ピートン（指輪）_muj_0000f89c, local
	.4byte 0x8373815B
	.4byte 0x83678393
	.4byte 0x81698E77
	.4byte 0x97D6816A
	.byte 0x00
.endobj str_ピートン（指輪）_muj_0000f89c

# .rodata:0xE35 | 0x1BFD | size: 0x3
.obj gap_03_00001BFD_rodata, global
.hidden gap_03_00001BFD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001BFD_rodata

# .rodata:0xE38 | 0x1C00 | size: 0x16
.obj str_SFX_STG5_MARCO_MOVE1_muj_0000f8b0, local
	.string "SFX_STG5_MARCO_MOVE1L"
.endobj str_SFX_STG5_MARCO_MOVE1_muj_0000f8b0

# .rodata:0xE4E | 0x1C16 | size: 0x2
.obj gap_03_00001C16_rodata, global
.hidden gap_03_00001C16_rodata
	.2byte 0x0000
.endobj gap_03_00001C16_rodata

# .rodata:0xE50 | 0x1C18 | size: 0x16
.obj str_SFX_STG5_MARCO_MOVE1_muj_0000f8c8, local
	.string "SFX_STG5_MARCO_MOVE1R"
.endobj str_SFX_STG5_MARCO_MOVE1_muj_0000f8c8

# .rodata:0xE66 | 0x1C2E | size: 0x2
.obj gap_03_00001C2E_rodata, global
.hidden gap_03_00001C2E_rodata
	.2byte 0x0000
.endobj gap_03_00001C2E_rodata

# .rodata:0xE68 | 0x1C30 | size: 0x5
.obj str_mizu_muj_0000f8e0, local
	.string "mizu"
.endobj str_mizu_muj_0000f8e0

# .rodata:0xE6D | 0x1C35 | size: 0x3
.obj gap_03_00001C35_rodata, global
.hidden gap_03_00001C35_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001C35_rodata

# .rodata:0xE70 | 0x1C38 | size: 0xA
.obj str_fuku_hata_muj_0000f8e8, local
	.string "fuku_hata"
.endobj str_fuku_hata_muj_0000f8e8

# .rodata:0xE7A | 0x1C42 | size: 0x2
.obj gap_03_00001C42_rodata, global
.hidden gap_03_00001C42_rodata
	.2byte 0x0000
.endobj gap_03_00001C42_rodata

# .rodata:0xE7C | 0x1C44 | size: 0x8
.obj str_item_00_muj_0000f8f4, local
	.string "item_00"
.endobj str_item_00_muj_0000f8f4

# .rodata:0xE84 | 0x1C4C | size: 0x8
.obj str_item_01_muj_0000f8fc, local
	.string "item_01"
.endobj str_item_01_muj_0000f8fc

# .rodata:0xE8C | 0x1C54 | size: 0x9
.obj str_sunlight_muj_0000f904, local
	.string "sunlight"
.endobj str_sunlight_muj_0000f904

# .rodata:0xE95 | 0x1C5D | size: 0x3
.obj gap_03_00001C5D_rodata, global
.hidden gap_03_00001C5D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001C5D_rodata

# .rodata:0xE98 | 0x1C60 | size: 0xD
.obj str_sunlight_n64_muj_0000f910, local
	.string "sunlight_n64"
.endobj str_sunlight_n64_muj_0000f910
	.byte 0x00, 0x00, 0x00

# .rodata:0xEA8 | 0x1C70 | size: 0x4
.obj float_1_muj_0000f920, local
	.float 1
.endobj float_1_muj_0000f920

# .rodata:0xEAC | 0x1C74 | size: 0x6
.obj str_shpPCTd_muj_0000f924, local
	.string "shp%d"
.endobj str_shpPCTd_muj_0000f924
	.2byte 0x0000

# .rodata:0xEB4 | 0x1C7C | size: 0x4
.obj float_100_muj_0000f92c, local
	.float 100
.endobj float_100_muj_0000f92c

# .rodata:0xEB8 | 0x1C80 | size: 0x4
.obj zero_muj_0000f930, local
	.float 0
.endobj zero_muj_0000f930

# .rodata:0xEBC | 0x1C84 | size: 0x4
.obj gap_03_00001C84_rodata, global
.hidden gap_03_00001C84_rodata
	.4byte 0x00000000
.endobj gap_03_00001C84_rodata

# 0x0000A5D8..0x0000FB88 | size: 0x55B0
.data
.balign 8

# .data:0x0 | 0xA5D8 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0xA5E0 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0xA5E4 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0xA5E8 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0xA5EC | size: 0x4
.obj gap_04_0000A5EC_data, global
.hidden gap_04_0000A5EC_data
	.4byte 0x00000000
.endobj gap_04_0000A5EC_data

# .data:0x18 | 0xA5F0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0xA5F8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0xA5FC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0xA600 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0xA608 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0xA60C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0xA610 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0xA614 | size: 0x4
.obj gap_04_0000A614_data, global
.hidden gap_04_0000A614_data
	.4byte 0x00000000
.endobj gap_04_0000A614_data

# .data:0x40 | 0xA618 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0xA620 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0xA624 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0xA628 | size: 0x88
.obj custom_door_dark2, local
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x000000FF
	.4byte 0x00000000
	.4byte 0x0000012C
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_map_set_blend
	.4byte 0x00000001
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
	.4byte 0x0006005B
	.4byte evt_map_set_blend
	.4byte 0x00000001
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj custom_door_dark2

# .data:0xD8 | 0xA6B0 | size: 0x78
.obj custom_door_light2, local
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x000000FF
	.4byte 0x0000012C
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_map_set_blend
	.4byte 0x00000001
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
	.4byte 0x0002005B
	.4byte evt_map_blend_off
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj custom_door_light2

# .data:0x150 | 0xA728 | size: 0x9C
.obj garawaru_init, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x000000E8
	.4byte 0x000000EE
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_muj_0000ea78
	.4byte 0xFFFFFF65
	.4byte 0x00000000
	.4byte 0x000000AA
	.4byte 0x00010024
	.4byte 0x000000EF
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_muj_0000ea78
	.4byte 0xFFFFFF92
	.4byte 0x00000000
	.4byte 0x000000E1
	.4byte 0x0002002F
	.4byte 0x000000F0
	.4byte 0x000000FE
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_muj_0000ea78
	.4byte 0xFFFFFF65
	.4byte 0x00000000
	.4byte 0x000000AA
	.4byte 0x00010029
	.4byte 0x0000010D
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_muj_0000ea78
	.4byte 0xFFFFFF65
	.4byte 0x00000000
	.4byte 0x000000AA
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj garawaru_init

# .data:0x1EC | 0xA7C4 | size: 0x438
.obj garawaru_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010024
	.4byte 0x000000E9
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_22_1_muj_0000ea7c
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x0002002F
	.4byte 0x000000EA
	.4byte 0x000000EE
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_32_02_muj_0000ea8c
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x00010024
	.4byte 0x000000EF
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_71_05_muj_0000ea9c
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_71_04_muj_0000eaac
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x00000021
	.4byte 0x0002002F
	.4byte 0x000000F0
	.4byte 0x000000F1
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_90_02_muj_0000eabc
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_90_02_01_muj_0000eacc
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x00000021
	.4byte 0x0002002F
	.4byte 0x000000F2
	.4byte 0x000000FE
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_90_13_muj_0000eae0
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_90_132_01_muj_0000eaf0
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x00000021
	.4byte 0x0002002F
	.4byte 0x0000010C
	.4byte 0x00000110
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_149_muj_0000eb04
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_1492_01_muj_0000eb14
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x00000021
	.4byte 0x0002002F
	.4byte 0x00000111
	.4byte 0x00000113
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_150_muj_0000eb28
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_1502_01_muj_0000eb38
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x00000021
	.4byte 0x00010024
	.4byte 0x00000114
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_151_muj_0000eb4c
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_1512_01_muj_0000eb5c
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x00000021
	.4byte 0x0002002F
	.4byte 0x00000117
	.4byte 0x00000175
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x00000162
	.4byte 0x0002001C
	.4byte 0xF5DE0180
	.4byte 0x00000162
	.4byte 0x00020018
	.4byte 0xF8406AA5
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF8406AA6
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_152_muj_0000eb70
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_1522_01_muj_0000eb80
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_muj_01_muj_0000eb94
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_muj_012_01_muj_0000eba0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010026
	.4byte 0x00000191
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_153_muj_0000ebb0
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_1532_01_muj_0000ebc0
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x00000021
	.4byte 0x0000002A
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_153_01_muj_0000ebd4
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_153_01_san_muj_0000ebe4
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj garawaru_talk

# .data:0x624 | 0xABFC | size: 0x7C
.obj marco_init, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x000000E8
	.4byte 0x000000EF
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_muj_0000ea78
	.4byte 0xFFFFFFC0
	.4byte 0x00000000
	.4byte 0x000000AA
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_muj_0000ea78
	.4byte 0x0000005A
	.4byte 0x0002002F
	.4byte 0x000000F3
	.4byte 0x000000FE
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_muj_0000ea78
	.4byte 0xFFFFFFC0
	.4byte 0x00000000
	.4byte 0x000000AA
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_muj_0000ea78
	.4byte 0x0000005A
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj marco_init

# .data:0x6A0 | 0xAC78 | size: 0x70
.obj marco_kyorokyoro, local
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00000096
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte evt_npc_set_rotate
	.4byte str_マルコ_muj_0000ebf8
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
	.4byte 0x00000002
	.4byte 0x00000001
.endobj marco_kyorokyoro

# .data:0x710 | 0xACE8 | size: 0xD40
.obj marco_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x000000EA
	.4byte 0x000000ED
	.4byte 0x00020018
	.4byte 0xF84067B9
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte settoku_event_main
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010024
	.4byte 0x000000E9
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_22_0_muj_0000ec00
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x0002002F
	.4byte 0x000000EA
	.4byte 0x000000EA
	.4byte 0x00020018
	.4byte 0xF84067B7
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_31_muj_0000ec10
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x00020032
	.4byte 0xF84067B7
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_32_muj_0000ec1c
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x00000021
	.4byte 0x00010024
	.4byte 0x000000EB
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_31_01_muj_0000ec28
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_2_muj_0000ec38
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_31_02_muj_0000ec40
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_muj_0000ea78
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFE363C80
	.4byte 0x00000061
	.4byte 0x000001CB
	.4byte 0xFE363C80
	.4byte 0x0000002D
	.4byte 0x000000A3
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_31_02_01_muj_0000ec50
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x000000EC
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00010024
	.4byte 0x000000EC
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_マルコ_muj_0000ebf8
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_マルコ_muj_0000ebf8
	.4byte 0x00000020
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFE2
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFE363C8A
	.4byte 0xFE363C8C
	.4byte 0xF24C5A80
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_move_behind_mario
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFE363C8A
	.4byte 0xFE363C8C
	.4byte 0xF24C5A80
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_move_behind_mario
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_マルコ_muj_0000ebf8
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_31_02_02_muj_0000ec64
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x0002005B
	.4byte make_itemsel_table
	.4byte 0xFE363C8B
	.4byte 0x00020018
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte delete_itemsel_table
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_win_item_select
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte delete_itemsel_table
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_C_3_muj_0000ec78
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00020035
	.4byte 0xFE363C84
	.4byte 0x00000014
	.4byte 0x00020035
	.4byte 0xFE363C85
	.4byte 0x0000000A
	.4byte 0x0002005B
	.4byte evt_mario_get_reqdir
	.4byte 0xFE363C86
	.4byte 0x00020012
	.4byte 0xFE363C86
	.4byte 0xF24A7A80
	.4byte 0x00020035
	.4byte 0xFE363C83
	.4byte 0xFFFFFFEC
	.4byte 0x00000020
	.4byte 0x00020035
	.4byte 0xFE363C83
	.4byte 0x00000014
	.4byte 0x00000021
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_watasu_muj_0000ec80
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_item_flag_on
	.4byte str_watasu_muj_0000ec80
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_me_muj_0000ea78
	.4byte str_I_1_muj_0000ec88
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_item_delete
	.4byte str_watasu_muj_0000ec80
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_muj_0000ec8c
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_me_muj_0000ea78
	.4byte str_I_2_muj_0000ec94
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xFBD3E281
	.4byte 0x00000000
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x000000A5
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0x000000B1
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000094
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0x000000A1
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x000000B3
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0x000000EC
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_pouch_remove_item
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_31_02_03_muj_0000ec98
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x000000A6
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_31_02_04_muj_0000ecac
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_31_02_05_muj_0000ecc0
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_me_muj_0000ea78
	.4byte str_I_1_muj_0000ec88
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_me_muj_0000ea78
	.4byte str_I_2_muj_0000ec94
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_itemwine_muj_0000ecd4
	.4byte 0x00000046
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_item_flag_on
	.4byte str_itemwine_muj_0000ecd4
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_itemwine_muj_0000ecd4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_31_03_muj_0000ece0
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x000000ED
	.4byte 0x00010024
	.4byte 0x000000ED
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_31_03_muj_0000ece0
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x00010024
	.4byte 0x000000EE
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_32_muj_0000ec1c
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x00010024
	.4byte 0x000000EF
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
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFC4
	.4byte 0x0000005F
	.4byte 0x000001EB
	.4byte 0xFFFFFFC4
	.4byte 0x00000023
	.4byte 0x00000092
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_me_muj_0000ea78
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFFDE
	.4byte 0x000000A2
	.4byte 0xF24C5A80
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry_lr
	.4byte str_me_muj_0000ea78
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x00000020
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFBD3E28A
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x00020032
	.4byte 0xFBD3E28A
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mario_hello_exparty_pos
	.4byte 0x0000000F
	.4byte 0xFFFFFFE7
	.4byte 0x00000000
	.4byte 0x000000D2
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000000AA
	.4byte 0xF24C5A80
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0x00000014
	.4byte 0x000000AA
	.4byte 0xF24C5A80
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0xFFFFFFFF
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_71_muj_0000ecf0
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x0001000B
	.4byte 0xFAA2B580
	.4byte 0x00020018
	.4byte 0xFBD3E28A
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg5_muj_72_muj_0000ecfc
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_72_bom_muj_0000ed08
	.4byte 0x00000000
	.4byte str_extparty_muj_0000ed18
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_79_muj_0000ed24
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x00020018
	.4byte 0xFBD3E28A
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_80_muj_0000ed30
	.4byte 0x00000000
	.4byte str_party_muj_0000ed3c
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_80_muj_0000ed30
	.4byte 0x00000000
	.4byte str_extparty_muj_0000ed18
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte str_me_muj_0000ea78
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_81_muj_0000ed54
	.4byte 0x00000000
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_SAILER_FART_muj_0000ed60
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_81_01_muj_0000ed78
	.4byte 0x00000000
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_81_02_muj_0000ed88
	.4byte 0x00000000
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_82_muj_0000ed98
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x00020018
	.4byte 0xFBD3E28A
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_83_muj_0000eda4
	.4byte 0x00000000
	.4byte str_party_muj_0000ed3c
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_83_muj_0000eda4
	.4byte 0x00000000
	.4byte str_extparty_muj_0000ed18
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_84_muj_0000edb0
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x00010005
	.4byte 0x00000003
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x000000B4
	.4byte 0x0001005E
	.4byte marco_kyorokyoro
	.4byte 0x0001000A
	.4byte 0x000000A0
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x000000B4
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte marco_kyorokyoro
	.4byte 0x0001000A
	.4byte 0x000000A0
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_85_muj_0000edbc
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFC4
	.4byte 0x00000090
	.4byte 0x000002F1
	.4byte 0xFFFFFFC4
	.4byte 0x00000028
	.4byte 0x000000A2
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_86_muj_0000edc8
	.4byte 0x00000000
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_水夫A_muj_0000edd4
	.4byte str_me_muj_0000ea78
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_水夫A_muj_0000edd4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000028
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_87_muj_0000eddc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_水夫ボム兵_muj_0000ede8
	.4byte str_me_muj_0000ea78
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_88_muj_0000edf4
	.4byte 0x00000000
	.4byte str_水夫ボム兵_muj_0000ede8
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_オドオド水夫_muj_0000ee00
	.4byte str_me_muj_0000ea78
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_オドオド水夫_muj_0000ee00
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFFE2
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000028
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002005B
	.4byte evt_msg_togelr
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_88_01_muj_0000ee10
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00000BB8
	.4byte 0x00020018
	.4byte 0xFBD3E28A
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_89_muj_0000ee20
	.4byte 0x00000000
	.4byte str_party_muj_0000ed3c
	.4byte 0x00000020
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_89_muj_0000ee20
	.4byte 0x00000000
	.4byte str_extparty_muj_0000ed18
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00010005
	.4byte 0x00000003
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x000000B4
	.4byte 0x0001005E
	.4byte marco_kyorokyoro
	.4byte 0x0001000A
	.4byte 0x000000A0
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x000000B4
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte marco_kyorokyoro
	.4byte 0x0001000A
	.4byte 0x000000A0
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_90_muj_0000ee2c
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_sys_00_muj_0000ee38
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFBD3E28A
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_goodbye_party
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_muj_0000ea78
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_muj_0000ea78
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte evt_mario_set_party_pos
	.4byte 0x00000001
	.4byte 0x00000009
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x000000F0
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002002F
	.4byte 0x000000F2
	.4byte 0x000000FE
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_90_10_muj_0000ee44
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj marco_talk

# .data:0x1450 | 0xBA28 | size: 0x38
.obj megane_init, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x000000EA
	.4byte 0x000000FA
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_muj_0000ea78
	.4byte 0x00000073
	.4byte 0x00000000
	.4byte 0x000000F7
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj megane_init

# .data:0x1488 | 0xBA60 | size: 0xD8
.obj megane_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x000000EA
	.4byte 0x000000EE
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_32_01_muj_0000ee54
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x00010024
	.4byte 0x000000EF
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_71_02_muj_0000ee64
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_71_03_muj_0000ee74
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x00000021
	.4byte 0x0002002F
	.4byte 0x000000F0
	.4byte 0x000000F1
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_90_01_muj_0000ee84
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x0002002F
	.4byte 0x000000F2
	.4byte 0x000000FE
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_90_12_muj_0000ee94
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj megane_talk

# .data:0x1560 | 0xBB38 | size: 0x38
.obj odoodo_init, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x000000EA
	.4byte 0x000000FE
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_muj_0000ea78
	.4byte 0x0000005F
	.4byte 0x00000000
	.4byte 0x00000052
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj odoodo_init

# .data:0x1598 | 0xBB70 | size: 0xD8
.obj odoodo_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x000000EA
	.4byte 0x000000EE
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_32_00_muj_0000eea4
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x00010024
	.4byte 0x000000EF
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_71_00_muj_0000eeb4
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_71_01_muj_0000eec4
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x00000021
	.4byte 0x0002002F
	.4byte 0x000000F0
	.4byte 0x000000F1
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_90_00_muj_0000eed4
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x0002002F
	.4byte 0x000000F2
	.4byte 0x000000FE
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_90_11_muj_0000eee4
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj odoodo_talk

# .data:0x1670 | 0xBC48 | size: 0x38
.obj suifu_a_init, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x000000E8
	.4byte 0x00000105
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_muj_0000ea78
	.4byte 0xFFFFFF3F
	.4byte 0x00000000
	.4byte 0x0000004D
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj suifu_a_init

# .data:0x16A8 | 0xBC80 | size: 0xC0
.obj suifu_a_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010024
	.4byte 0x000000E9
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_22_2_muj_0000eef4
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x0002002F
	.4byte 0x000000EA
	.4byte 0x000000EE
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_32_03_muj_0000ef04
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x0002002F
	.4byte 0x000000EF
	.4byte 0x000000F1
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_71_06_muj_0000ef14
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x0002002F
	.4byte 0x000000F2
	.4byte 0x000000FE
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_90_14_muj_0000ef24
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x00010029
	.4byte 0x000000FF
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_90_16_muj_0000ef34
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj suifu_a_talk

# .data:0x1768 | 0xBD40 | size: 0x38
.obj suifu_bomb_init, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x000000E8
	.4byte 0x00000105
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_muj_0000ea78
	.4byte 0xFFFFFFDF
	.4byte 0x00000000
	.4byte 0x0000004A
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj suifu_bomb_init

# .data:0x17A0 | 0xBD78 | size: 0xC0
.obj suifu_bomb_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010024
	.4byte 0x000000E9
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_22_3_muj_0000ef44
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x0002002F
	.4byte 0x000000EA
	.4byte 0x000000EE
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_32_04_muj_0000ef54
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x0002002F
	.4byte 0x000000EF
	.4byte 0x000000F1
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_71_07_muj_0000ef64
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x0002002F
	.4byte 0x000000F2
	.4byte 0x000000FE
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_90_15_muj_0000ef74
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x00010029
	.4byte 0x000000FF
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_90_17_muj_0000ef84
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj suifu_bomb_talk

# .data:0x1860 | 0xBE38 | size: 0x34
.obj suifu_d_init, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010029
	.4byte 0x0000010D
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_muj_0000ea78
	.4byte 0x00000019
	.4byte 0x00000000
	.4byte 0x00000096
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj suifu_d_init

# .data:0x1894 | 0xBE6C | size: 0x60
.obj suifu_d_regl, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010029
	.4byte 0x0000010D
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_muj_0000ea78
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte urouro_init_func
	.4byte str_me_muj_0000ea78
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xF24C0A80
	.4byte 0xF24AF280
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte urouro_main_func
	.4byte str_me_muj_0000ea78
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj suifu_d_regl

# .data:0x18F4 | 0xBECC | size: 0xE0
.obj suifu_d_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x0000010C
	.4byte 0x00000110
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_159_muj_0000ef94
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x0002002F
	.4byte 0x00000111
	.4byte 0x00000113
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_160_muj_0000efa4
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x00010024
	.4byte 0x00000114
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_161_muj_0000efb4
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x0002002F
	.4byte 0x00000117
	.4byte 0x00000179
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_162_muj_0000efc4
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x0002002F
	.4byte 0x0000017A
	.4byte 0x00000192
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_163_muj_0000efd4
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_163_1_muj_0000efe4
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj suifu_d_talk

# .data:0x19D4 | 0xBFAC | size: 0x34
.obj borosuifu_a_init, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010029
	.4byte 0x0000010D
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_muj_0000ea78
	.4byte 0x0000005F
	.4byte 0x00000000
	.4byte 0x00000052
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj borosuifu_a_init

# .data:0x1A08 | 0xBFE0 | size: 0xE0
.obj borosuifu_a_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x0000010C
	.4byte 0x00000110
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_154_muj_0000eff4
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x0002002F
	.4byte 0x00000111
	.4byte 0x00000113
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_155_muj_0000f004
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x00010024
	.4byte 0x00000114
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_156_muj_0000f014
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x0002002F
	.4byte 0x00000117
	.4byte 0x00000179
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_157_muj_0000f024
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x0002002F
	.4byte 0x0000017A
	.4byte 0x00000192
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_158_muj_0000f034
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_158_1_muj_0000f044
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj borosuifu_a_talk

# .data:0x1AE8 | 0xC0C0 | size: 0x58
.obj borosuifu_b_init, local
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_me_muj_0000ea78
	.4byte 0x00000002
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010029
	.4byte 0x0000010D
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_muj_0000ea78
	.4byte 0xFFFFFEA2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_muj_0000ea78
	.4byte 0x0000005A
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj borosuifu_b_init

# .data:0x1B40 | 0xC118 | size: 0x78
.obj borosuifu_b_regl, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010029
	.4byte 0x0000010D
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_muj_0000ea78
	.4byte 0x0000015E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24B1A80
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_muj_0000ea78
	.4byte 0xFFFFFEA2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24B1A80
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00000006
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj borosuifu_b_regl

# .data:0x1BB8 | 0xC190 | size: 0xE0
.obj borosuifu_b_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x0000010C
	.4byte 0x00000110
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_164_muj_0000f054
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x0002002F
	.4byte 0x00000111
	.4byte 0x00000113
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_165_muj_0000f064
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x00010024
	.4byte 0x00000114
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_166_muj_0000f074
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x0002002F
	.4byte 0x00000117
	.4byte 0x00000179
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_167_muj_0000f084
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x0002002F
	.4byte 0x0000017A
	.4byte 0x00000192
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_168_muj_0000f094
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_168_1_muj_0000f0a4
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj borosuifu_b_talk

# .data:0x1C98 | 0xC270 | size: 0x38
.obj mony_init, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x0000010D
	.4byte 0x00000110
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_muj_0000ea78
	.4byte 0x00000069
	.4byte 0x00000000
	.4byte 0x00000112
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mony_init

# .data:0x1CD0 | 0xC2A8 | size: 0x20
.obj mony_talk, local
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_147_muj_0000f0b4
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mony_talk

# .data:0x1CF0 | 0xC2C8 | size: 0x38
.obj peton_init, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x0000010D
	.4byte 0x00000110
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_muj_0000ea78
	.4byte 0x0000002D
	.4byte 0x00000000
	.4byte 0x00000112
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peton_init

# .data:0x1D28 | 0xC300 | size: 0x20
.obj peton_talk, local
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_148_muj_0000f0c4
	.4byte 0x00000000
	.4byte str_me_muj_0000ea78
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peton_talk

# .data:0x1D48 | 0xC320 | size: 0x50
.obj musume_talk, local
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_168_01_muj_0000f0d4
	.4byte 0x00000000
	.4byte str_３人娘Ａ_muj_0000f0e4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_168_02_muj_0000f0f0
	.4byte 0x00000000
	.4byte str_３人娘Ｂ_muj_0000f100
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_168_03_muj_0000f10c
	.4byte 0x00000000
	.4byte str_３人娘Ｃ_muj_0000f11c
	.4byte 0x00000002
	.4byte 0x00000001
.endobj musume_talk

# .data:0x1D98 | 0xC370 | size: 0x78
.obj musume_a_entry, local
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_３人娘Ａ_muj_0000f0e4
	.4byte str_c_dance_r_muj_0000f128
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_３人娘Ａ_muj_0000f0e4
	.4byte str_踊り子_muj_0000f134
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_３人娘Ａ_muj_0000f0e4
	.4byte 0x000000C8
	.4byte 0xFFFFFFF6
	.4byte 0x00000168
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_３人娘Ａ_muj_0000f0e4
	.4byte 0x0000005A
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_３人娘Ａ_muj_0000f0e4
	.4byte 0x00000600
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_３人娘Ａ_muj_0000f0e4
	.4byte 0x00000006
	.4byte musume_talk
	.4byte 0x00000002
	.4byte 0x00000001
.endobj musume_a_entry

# .data:0x1E10 | 0xC3E8 | size: 0x78
.obj musume_b_entry, local
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_３人娘Ｂ_muj_0000f100
	.4byte str_c_dance_p_muj_0000f13c
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_３人娘Ｂ_muj_0000f100
	.4byte str_踊り子ピンク_muj_0000f148
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_３人娘Ｂ_muj_0000f100
	.4byte 0x000000EB
	.4byte 0xFFFFFFF9
	.4byte 0x00000136
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_３人娘Ｂ_muj_0000f100
	.4byte 0x0000005A
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_３人娘Ｂ_muj_0000f100
	.4byte 0x00000600
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_３人娘Ｂ_muj_0000f100
	.4byte 0x00000006
	.4byte musume_talk
	.4byte 0x00000002
	.4byte 0x00000001
.endobj musume_b_entry

# .data:0x1E88 | 0xC460 | size: 0x78
.obj musume_c_entry, local
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_３人娘Ｃ_muj_0000f11c
	.4byte str_c_dance_k_muj_0000f158
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_３人娘Ｃ_muj_0000f11c
	.4byte str_踊り子黄緑_muj_0000f164
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_３人娘Ｃ_muj_0000f11c
	.4byte 0x00000118
	.4byte 0xFFFFFFF6
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_３人娘Ｃ_muj_0000f11c
	.4byte 0x0000005A
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_３人娘Ｃ_muj_0000f11c
	.4byte 0x00000600
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_３人娘Ｃ_muj_0000f11c
	.4byte 0x00000006
	.4byte musume_talk
	.4byte 0x00000002
	.4byte 0x00000001
.endobj musume_c_entry

# .data:0x1F00 | 0xC4D8 | size: 0x61C
.obj npcEnt, local
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte garawaru_init
	.4byte 0x00000000
	.4byte garawaru_talk
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
	.4byte str_マルコ_muj_0000ebf8
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte marco_init
	.4byte 0x00000000
	.4byte marco_talk
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
	.4byte str_めがね水夫_muj_0000f170
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte megane_init
	.4byte 0x00000000
	.4byte megane_talk
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
	.4byte str_オドオド水夫_muj_0000ee00
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte odoodo_init
	.4byte 0x00000000
	.4byte odoodo_talk
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
	.4byte str_店員_muj_0000f17c
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte npc_init_evt
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
	.4byte str_宿店員_muj_0000f184
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte npc_init_evt
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
	.4byte str_水夫A_muj_0000edd4
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte suifu_a_init
	.4byte 0x00000000
	.4byte suifu_a_talk
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
	.4byte str_水夫ボム兵_muj_0000ede8
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte suifu_bomb_init
	.4byte 0x00000000
	.4byte suifu_bomb_talk
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
	.4byte str_水夫D_muj_0000f18c
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte suifu_d_init
	.4byte suifu_d_regl
	.4byte suifu_d_talk
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
	.4byte str_ボロ水夫A_muj_0000f194
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte borosuifu_a_init
	.4byte 0x00000000
	.4byte borosuifu_a_talk
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
	.4byte str_ボロ水夫B_muj_0000f1a0
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte borosuifu_b_init
	.4byte borosuifu_b_regl
	.4byte borosuifu_b_talk
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
	.4byte str_モニー_muj_0000f1ac
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte mony_init
	.4byte 0x00000000
	.4byte mony_talk
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
	.4byte str_ピートン_muj_0000f1b4
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte peton_init
	.4byte 0x00000000
	.4byte peton_talk
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
	.4byte str_エルモスA_muj_0000f1c0
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte npc_init_evt
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
	.4byte str_エルモスB_muj_0000f1cc
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte npc_init_evt
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
	.4byte str_エルモスC_muj_0000f1d8
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte npc_init_evt
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
	.4byte 0x00000000
	.4byte 0x00000000
.endobj npcEnt

# .data:0x251C | 0xCAF4 | size: 0x14
.obj bero_in_event, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bero_in_event

# .data:0x2530 | 0xCB08 | size: 0xB4
.obj bero_entry_data, local
	.4byte str_w_bero_muj_0000f1e4
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte bero_in_event
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_muj_00_muj_0000f1ec
	.4byte str_e_bero_muj_0000f1f4
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_e_bero1_muj_0000f1fc
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte bero_in_event
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_muj_02_muj_0000f204
	.4byte str_w_bero_muj_0000f1e4
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

# .data:0x25E4 | 0xCBBC | size: 0x3DC
.obj muj_00_door_open, local
	.4byte 0x0002005B
	.4byte evt_mario_party_use_check
	.4byte 0xFE363C84
	.4byte 0x00020018
	.4byte 0xFE363C84
	.4byte 0x00000004
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte muj_get_door_check
	.4byte 0xFE363C80
	.4byte 0xF24AF280
	.4byte 0xFE363C81
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_door_param
	.4byte 0xFE363C80
	.4byte 0x00000007
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte 0xFE363C81
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_door_param
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_door_save_mapflag
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFE363C81
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0000006B
	.4byte 0x0006005B
	.4byte evt_door_param
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x00020035
	.4byte 0xFE363C85
	.4byte 0x00000002
	.4byte 0x0007005B
	.4byte evt_cam3d_evt_set_xyz
	.4byte 0xFE363C81
	.4byte 0xFE363C85
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00000096
	.4byte 0x0000000B
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_door_param
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xFE363C81
	.4byte 0x00000800
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte evt_door_param
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xFE363C81
	.4byte 0x00000800
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xFE363C81
	.4byte 0x00001000
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_door_param
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xFE363C81
	.4byte 0x00000800
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xFE363C81
	.4byte 0x00001000
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte door_dark_flag
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0002001F
	.4byte 0xFE363C8F
	.4byte 0x00000002
	.4byte 0x0001005C
	.4byte door_dark
	.4byte 0x00000021
	.4byte 0x0001005C
	.4byte door_open_se
	.4byte 0x0006005B
	.4byte evt_door_param
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x00020019
	.4byte 0xFE363C87
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0006005B
	.4byte evt_door_param
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte 0xFE363C87
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0006005B
	.4byte evt_door_param
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0004005B
	.4byte evt_mario_party_door_move
	.4byte 0xFE363C81
	.4byte 0xFE363C83
	.4byte 0xF24C9680
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_xyz_off
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj muj_00_door_open

# .data:0x29C0 | 0xCF98 | size: 0x58
.obj muj_00_door_close, local
	.4byte 0x0002005B
	.4byte evt_mario_party_use_check
	.4byte 0xFE363C84
	.4byte 0x00020018
	.4byte 0xFE363C84
	.4byte 0x00000004
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte muj_get_door_check
	.4byte 0xFE363C80
	.4byte 0xF24AF280
	.4byte 0xFE363C81
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte evt_door_close
	.4byte 0x00000002
	.4byte 0x00000001
.endobj muj_00_door_close

# .data:0x2A18 | 0xCFF0 | size: 0x8
.obj mise_npc, local
	.4byte str_店員_muj_0000f17c
	.4byte 0x00000000
.endobj mise_npc

# .data:0x2A20 | 0xCFF8 | size: 0x80
.obj mise_data_open, local
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_mise_kan_muj_0000f20c
	.4byte 0x00001000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_mise_hasi04_muj_0000f218
	.4byte 0x00001000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_mise_hasi05_muj_0000f228
	.4byte 0x00001000
	.4byte 0x0001005C
	.4byte custom_door_dark2
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00004800
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00004800
	.4byte 0x0003005B
	.4byte evt_snd_env_lpf
	.4byte 0x00000000
	.4byte 0x00000320
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mise_data_open

# .data:0x2AA0 | 0xD078 | size: 0x90
.obj mise_data_close, local
	.4byte 0x0000006B
	.4byte 0x0001005E
	.4byte custom_door_light2
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_mise_kan_muj_0000f20c
	.4byte 0x00001000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_mise_hasi04_muj_0000f218
	.4byte 0x00001000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_mise_hasi05_muj_0000f228
	.4byte 0x00001000
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x000000A0
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x000000A0
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_env_lpf
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mise_data_close

# .data:0x2B30 | 0xD108 | size: 0x48
.obj mise_data, local
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_A_mise_in_doa_muj_0000f238
	.4byte str_A_mise_doa_muj_0000f248
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_S_mise_muj_0000f254
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte mise_npc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte mise_data_open
	.4byte mise_data_close
.endobj mise_data

# .data:0x2B78 | 0xD150 | size: 0x8
.obj yado_npc, local
	.4byte str_宿店員_muj_0000f184
	.4byte 0x00000000
.endobj yado_npc

# .data:0x2B80 | 0xD158 | size: 0x58
.obj mise_open_event, local
	.4byte 0x0001005C
	.4byte door_dark
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_yado_muj_0000f25c
	.4byte 0x00000800
	.4byte 0x0001005C
	.4byte custom_door_dark2
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00004800
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00004800
	.4byte 0x0003005B
	.4byte evt_snd_env_lpf
	.4byte 0x00000000
	.4byte 0x00000320
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mise_open_event

# .data:0x2BD8 | 0xD1B0 | size: 0x68
.obj mise_close_event, local
	.4byte 0x0001005C
	.4byte door_light
	.4byte 0x0001005C
	.4byte custom_door_light2
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_yado_muj_0000f25c
	.4byte 0x00000800
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x000000A0
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x000000A0
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_env_lpf
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mise_close_event

# .data:0x2C40 | 0xD218 | size: 0x48
.obj yado_data, local
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_A_yado_in_doa_muj_0000f264
	.4byte str_A_yado_doa_muj_0000f274
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_S_yado_in_muj_0000f280
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte yado_npc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte mise_open_event
	.4byte mise_close_event
.endobj yado_data

# .data:0x2C88 | 0xD260 | size: 0x9C
.obj evt_door_entry_custom00, local
	.4byte 0x0006005B
	.4byte evt_door_param
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00020019
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000011
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000008
	.4byte 0x00000001
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte muj_00_door_close
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000011
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000008
	.4byte 0x00000001
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte muj_00_door_open
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_door_entry_custom00

# .data:0x2D24 | 0xD2FC | size: 0x9C
.obj evt_door_entry_custom01, local
	.4byte 0x0006005B
	.4byte evt_door_param
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00020019
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000013
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000008
	.4byte 0x00000001
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte muj_00_door_close
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000013
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000008
	.4byte 0x00000001
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte muj_00_door_open
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_door_entry_custom01

# .data:0x2DC0 | 0xD398 | size: 0x30
.obj obj_list, local
	.4byte str_S_item_01_muj_0000f28c
	.4byte str_A_item_01_muj_0000f298
	.4byte str_S_item_02_muj_0000f2a4
	.4byte str_A_item_02_muj_0000f2b0
	.4byte str_S_item_03_muj_0000f2bc
	.4byte str_A_item_03_muj_0000f2c8
	.4byte str_S_item_04_muj_0000f2d4
	.4byte str_A_item_04_muj_0000f2e0
	.4byte str_S_item_05_muj_0000f2ec
	.4byte str_A_item_05_muj_0000f2f8
	.4byte str_S_item_06_muj_0000f304
	.4byte str_A_item_06_muj_0000f310
.endobj obj_list

# .data:0x2DF0 | 0xD3C8 | size: 0x30
.obj goods_list, local
	.4byte 0x00000083
	.4byte 0x0000000F
	.4byte 0x00000084
	.4byte 0x00000005
	.4byte 0x0000008A
	.4byte 0x0000000A
	.4byte 0x000000A2
	.4byte 0x00000002
	.4byte 0x0000009A
	.4byte 0x00000003
	.4byte 0x00000095
	.4byte 0x0000000C
.endobj goods_list

# .data:0x2E20 | 0xD3F8 | size: 0x60
.obj trade_list, local
	.4byte 0x00000083
	.4byte 0x000A0000
	.4byte 0x00000084
	.4byte 0x00020000
	.4byte 0x0000008A
	.4byte 0x00050000
	.4byte 0x000000A2
	.4byte 0x00010000
	.4byte 0x0000009A
	.4byte 0x00010000
	.4byte 0x00000095
	.4byte 0x00060000
	.4byte 0x00000099
	.4byte 0x00050000
	.4byte 0x0000009F
	.4byte 0x000D0000
	.4byte 0x000000C7
	.4byte 0x00140000
	.4byte 0x000000C8
	.4byte 0x00230000
	.4byte 0x000000C9
	.4byte 0x000F0000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj trade_list

# .data:0x2E80 | 0xD458 | size: 0x98
.obj shopper_data, local
	.4byte str_店員_muj_0000f17c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_shop_00_muj_0000f31c
	.4byte str_shop_01_muj_0000f324
	.4byte str_shop_02_muj_0000f32c
	.4byte str_shop_03_muj_0000f334
	.4byte str_shop_04_muj_0000f33c
	.4byte str_shop_05_muj_0000f344
	.4byte str_shop_06_muj_0000f34c
	.4byte str_shop_07_muj_0000f354
	.4byte str_shop_08_muj_0000f35c
	.4byte str_shop_09_muj_0000f364
	.4byte str_shop_10_muj_0000f36c
	.4byte str_shop_11_muj_0000f374
	.4byte str_shop_12_muj_0000f37c
	.4byte str_shop_13_muj_0000f384
	.4byte str_shop_14_muj_0000f38c
	.4byte str_shop_15_muj_0000f394
	.4byte str_shop_16_muj_0000f39c
	.4byte str_shop_17_muj_0000f3a4
	.4byte str_shop_18_muj_0000f3ac
	.4byte str_shop_19_muj_0000f3b4
	.4byte str_shop_20_muj_0000f3bc
	.4byte str_shop_21_muj_0000f3c4
	.4byte str_shop_22_muj_0000f3cc
	.4byte str_shop_23_muj_0000f3d4
	.4byte str_shop_24_muj_0000f3dc
	.4byte str_shop_25_muj_0000f3e4
	.4byte str_shop_26_muj_0000f3ec
	.4byte str_shop_27_muj_0000f3f4
	.4byte str_shop_28_muj_0000f3fc
	.4byte str_shop_29_muj_0000f404
	.4byte str_shop_30_muj_0000f40c
	.4byte str_shop_31_muj_0000f414
	.4byte str_shop_32_muj_0000f41c
	.4byte str_shop_33_muj_0000f424
	.4byte str_shop_34_muj_0000f42c
.endobj shopper_data

# .data:0x2F18 | 0xD4F0 | size: 0x98
.obj kino_dt, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x43C98000
	.4byte 0x41880000
	.4byte 0xC3360000
	.4byte 0x43B18000
	.4byte 0x00000000
	.4byte 0xC31B0000
	.4byte 0x43550000
	.4byte 0x42F40000
	.4byte 0xC2C20000
	.4byte 0x43AA8000
	.4byte 0x42340000
	.4byte 0xC3320000
	.4byte 0xC1F00000
	.4byte 0x43B00000
	.4byte 0x00000000
	.4byte 0xC3070000
	.4byte str_宿店員_muj_0000f184
	.4byte str_yado_00_muj_0000f434
	.4byte str_yado_01_muj_0000f43c
	.4byte str_yado_02_muj_0000f444
	.4byte str_yado_03_muj_0000f44c
	.4byte str_yado_04_muj_0000f454
	.4byte str_yado_05_muj_0000f45c
	.4byte str_yado_06_muj_0000f464
	.4byte str_yado_07_muj_0000f46c
	.4byte str_yado_08_muj_0000f474
	.4byte str_yado_09_muj_0000f47c
	.4byte str_yado_10_muj_0000f484
	.4byte str_yado_11_muj_0000f48c
	.4byte str_yado_12_muj_0000f494
	.4byte str_yado_13_muj_0000f49c
	.4byte 0x00000000
	.4byte 0x00000000
.endobj kino_dt

# .data:0x2FB0 | 0xD588 | size: 0x310
.obj kyoshu_event, local
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_水夫A_muj_0000edd4
	.4byte 0xFFFFFF3F
	.4byte 0x00000000
	.4byte 0x0000004D
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_水夫A_muj_0000edd4
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_水夫ボム兵_muj_0000ede8
	.4byte 0xFFFFFFDF
	.4byte 0x00000000
	.4byte 0x0000004A
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_水夫ボム兵_muj_0000ede8
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0xFFFFFF65
	.4byte 0x00000000
	.4byte 0x000000AA
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_マルコ_muj_0000ebf8
	.4byte 0xFFFFFFC0
	.4byte 0x00000000
	.4byte 0x000000AA
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_マルコ_muj_0000ebf8
	.4byte 0x0000010E
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFF92
	.4byte 0x00000000
	.4byte 0x000000E6
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFF59
	.4byte 0x00000000
	.4byte 0x0000010C
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF92
	.4byte 0x00000077
	.4byte 0x00000267
	.4byte 0xFFFFFF92
	.4byte 0x00000028
	.4byte 0x000000AC
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_15_muj_0000f4a4
	.4byte 0x00000000
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_16_muj_0000f4b0
	.4byte 0x00000000
	.4byte str_マルコ_muj_0000ebf8
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg5_muj_16_yesno_muj_0000f4bc
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg5_muj_17_muj_0000f4d0
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg5_muj_18_muj_0000f4dc
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000003
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x00000096
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000A0
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000096
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000A0
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_N_muj_0000f4e8
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_19_muj_0000f4f0
	.4byte 0x00000000
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_20_muj_0000f4fc
	.4byte 0x00000000
	.4byte str_水夫A_muj_0000edd4
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_21_muj_0000f508
	.4byte 0x00000000
	.4byte str_水夫ボム兵_muj_0000ede8
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000009C4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_22_muj_0000f514
	.4byte 0x00000000
	.4byte str_マルコ_muj_0000ebf8
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x000000E9
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG5_MUJ1_muj_0000f520
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kyoshu_event

# .data:0x32C0 | 0xD898 | size: 0x44
.obj maruco_buruburu, local
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_マルコ_muj_0000ebf8
	.4byte 0x00000400
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte muj_npc_buruburu_19_text_90
	.4byte str_マルコ_muj_0000ebf8
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte 0x0000000A
	.4byte 0x00002710
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj maruco_buruburu

# .data:0x3304 | 0xD8DC | size: 0x44
.obj garawaru_buruburu, local
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0x00000400
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte muj_npc_buruburu_19_text_90
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte 0x0000000A
	.4byte 0x00002710
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj garawaru_buruburu

# .data:0x3348 | 0xD920 | size: 0x44
.obj suifu_a_buruburu, local
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_水夫A_muj_0000edd4
	.4byte 0x00000400
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte muj_npc_buruburu_19_text_90
	.4byte str_水夫A_muj_0000edd4
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte 0x0000000A
	.4byte 0x00002710
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj suifu_a_buruburu

# .data:0x338C | 0xD964 | size: 0x44
.obj suifu_bom_buruburu, local
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_水夫ボム兵_muj_0000ede8
	.4byte 0x00000400
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte muj_npc_buruburu_19_text_90
	.4byte str_水夫ボム兵_muj_0000ede8
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte 0x0000000A
	.4byte 0x00002710
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj suifu_bom_buruburu

# .data:0x33D0 | 0xD9A8 | size: 0xC5C
.obj nakamaware_event, local
	.4byte 0x00020018
	.4byte 0xF84067B6
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFAB
	.4byte 0x00000086
	.4byte 0x000002CA
	.4byte 0xFFFFFFAB
	.4byte 0x00000026
	.4byte 0x000000AC
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001005C
	.4byte kyoshu_event
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_水夫ボム兵_muj_0000ede8
	.4byte 0xFFFFFFDF
	.4byte 0x00000000
	.4byte 0x0000004A
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_水夫ボム兵_muj_0000ede8
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0xFFFFFF86
	.4byte 0x00000000
	.4byte 0x000000AA
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_マルコ_muj_0000ebf8
	.4byte 0xFFFFFFC0
	.4byte 0x00000000
	.4byte 0x000000AA
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_マルコ_muj_0000ebf8
	.4byte 0x0000010E
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_マルコ_muj_0000ebf8
	.4byte 0x00020010
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0x00020010
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_エルモスA_muj_0000f1c0
	.4byte 0x40000020
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_エルモスB_muj_0000f1cc
	.4byte 0x40000020
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_エルモスC_muj_0000f1d8
	.4byte 0x40000020
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0xFFFFFE7A
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_水夫A_muj_0000edd4
	.4byte 0xFFFFFF24
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_水夫A_muj_0000edd4
	.4byte 0xFFFFFEB6
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_05_muj_0000f530
	.4byte 0x00000000
	.4byte str_水夫A_muj_0000edd4
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFE7F
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_水夫A_muj_0000edd4
	.4byte 0x0000005A
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_水夫A_muj_0000edd4
	.4byte 0xFFFFFF3F
	.4byte 0x0000004D
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_DANGER3_muj_0000f53c
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFA1
	.4byte 0x00000080
	.4byte 0x0000025D
	.4byte 0xFFFFFFA1
	.4byte 0x00000032
	.4byte 0x000000A2
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFF09
	.4byte 0x0000001A
	.4byte 0xF24C5A80
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFF56
	.4byte 0x000000AE
	.4byte 0xF24C5A80
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_06_muj_0000f54c
	.4byte 0x00000000
	.4byte str_マルコ_muj_0000ebf8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_07_muj_0000f558
	.4byte 0x00000000
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_マルコ_muj_0000ebf8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFB
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_マルコ_muj_0000ebf8
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xF24B6A80
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_08_muj_0000f564
	.4byte 0x00000000
	.4byte str_マルコ_muj_0000ebf8
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000005
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xF24B6A80
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_09_muj_0000f570
	.4byte 0x00000000
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_マルコ_muj_0000ebf8
	.4byte str_K_1_muj_0000f57c
	.4byte str_K_2_muj_0000f580
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_マルコ_muj_0000ebf8
	.4byte str_K_1_muj_0000f57c
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_10_muj_0000f584
	.4byte 0x00000000
	.4byte str_マルコ_muj_0000ebf8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_11_muj_0000f590
	.4byte 0x00000000
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_マルコ_muj_0000ebf8
	.4byte str_S_1_muj_0000f59c
	.4byte str_T_1_muj_0000f5a0
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_マルコ_muj_0000ebf8
	.4byte str_S_1_muj_0000f59c
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_水夫ボム兵_muj_0000ede8
	.4byte 0x0000005A
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0x0000005A
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0x00000080
	.4byte 0x000000A6
	.4byte 0x00000000
	.4byte 0xF24C0A80
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_マルコ_muj_0000ebf8
	.4byte 0x0000005A
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_マルコ_muj_0000ebf8
	.4byte 0x00000062
	.4byte 0x000000A6
	.4byte 0x00000000
	.4byte 0xF24C0A80
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_12_muj_0000f5a4
	.4byte 0x00000000
	.4byte str_マルコ_muj_0000ebf8
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_SURP_muj_0000f5b0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_5B_muj_0000f5d0
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_MARCO_ESCAP_muj_0000f5d8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0x0000010E
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0x00000020
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0xFFFFFF38
	.4byte 0x000000A6
	.4byte 0x00000000
	.4byte 0xF24E3A80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0x0000005A
	.4byte 0x0002005D
	.4byte garawaru_buruburu
	.4byte 0xFD050F80
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_マルコ_muj_0000ebf8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_MARCO_ESCAP_muj_0000f5d8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_マルコ_muj_0000ebf8
	.4byte 0x0000010E
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_マルコ_muj_0000ebf8
	.4byte 0x00000020
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_マルコ_muj_0000ebf8
	.4byte 0xFFFFFF47
	.4byte 0x000000AA
	.4byte 0x00000000
	.4byte 0xF24E3A80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_マルコ_muj_0000ebf8
	.4byte 0x0000005A
	.4byte 0x0002005D
	.4byte maruco_buruburu
	.4byte 0xFD050F81
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF56
	.4byte 0x00000080
	.4byte 0x0000025D
	.4byte 0xFFFFFF56
	.4byte 0x00000032
	.4byte 0x000000A2
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_13_muj_0000f5f0
	.4byte 0x00000000
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_STG5_GHOST1_muj_0000f5fc
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000000B5
	.4byte 0x00000086
	.4byte 0x000002B4
	.4byte 0x000000B5
	.4byte 0x00000026
	.4byte 0x00000096
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_水夫A_muj_0000edd4
	.4byte 0xFFFFFF20
	.4byte 0x00000000
	.4byte 0x00000030
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_水夫A_muj_0000edd4
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_水夫ボム兵_muj_0000ede8
	.4byte 0xFFFFFF3B
	.4byte 0x00000000
	.4byte 0x00000053
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_水夫ボム兵_muj_0000ede8
	.4byte 0x0000005A
	.4byte 0x0002005D
	.4byte suifu_a_buruburu
	.4byte 0xFD050F82
	.4byte 0x0002005D
	.4byte suifu_bom_buruburu
	.4byte 0xFD050F83
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_Y_muj_0000f610
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000005
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFF4C
	.4byte 0xFFFFFFFD
	.4byte 0x00000109
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFF4C
	.4byte 0xFFFFFFFD
	.4byte 0x0000012C
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0xFFFFFFFF
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_エルモスB_muj_0000f1cc
	.4byte 0x000001CC
	.4byte 0x00000032
	.4byte 0x0000002D
	.4byte 0x000A005B
	.4byte evt_npc_glide_position
	.4byte str_エルモスB_muj_0000f1cc
	.4byte 0x00000087
	.4byte 0x00000032
	.4byte 0x0000002D
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x000A005B
	.4byte evt_npc_glide_position
	.4byte str_エルモスB_muj_0000f1cc
	.4byte 0xFFFFFFD2
	.4byte 0x0000000A
	.4byte 0x00000097
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000096
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_エルモスC_muj_0000f1d8
	.4byte 0x000001AE
	.4byte 0x00000032
	.4byte 0x0000002D
	.4byte 0x000A005B
	.4byte evt_npc_glide_position
	.4byte str_エルモスC_muj_0000f1d8
	.4byte 0x00000069
	.4byte 0x00000032
	.4byte 0x0000002D
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x000A005B
	.4byte evt_npc_glide_position
	.4byte str_エルモスC_muj_0000f1d8
	.4byte 0x00000005
	.4byte 0x0000000A
	.4byte 0x000000A9
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_エルモスA_muj_0000f1c0
	.4byte 0x000001BD
	.4byte 0x00000014
	.4byte 0x0000002D
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_エルモスA_muj_0000f1c0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_ELMOS_MOVE1_muj_0000f618
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x000A005B
	.4byte evt_npc_glide_position
	.4byte str_エルモスA_muj_0000f1c0
	.4byte 0x00000078
	.4byte 0x00000014
	.4byte 0x0000002D
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_エルモスA_muj_0000f1c0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_ELMOS_MOVE1_muj_0000f618
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x000A005B
	.4byte evt_npc_glide_position
	.4byte str_エルモスA_muj_0000f1c0
	.4byte 0xFFFFFFE4
	.4byte 0x0000000A
	.4byte 0x000000E5
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00000C80
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF9C
	.4byte 0x00000088
	.4byte 0x000002CA
	.4byte 0xFFFFFF9C
	.4byte 0x00000028
	.4byte 0x000000AC
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_14_muj_0000f630
	.4byte 0x00000000
	.4byte str_マルコ_muj_0000ebf8
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_HAND_muj_0000f63c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_5B_muj_0000f5d0
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_G_muj_0000f658
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_muj_0000ec8c
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x0000004B
	.4byte 0x000A005B
	.4byte evt_npc_glide_position
	.4byte str_エルモスB_muj_0000f1cc
	.4byte 0xFFFFFF6E
	.4byte 0x0000000A
	.4byte 0x00000097
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000096
	.4byte 0x000A005B
	.4byte evt_npc_glide_position
	.4byte str_エルモスC_muj_0000f1d8
	.4byte 0xFFFFFFA1
	.4byte 0x0000000A
	.4byte 0x000000A9
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_エルモスA_muj_0000f1c0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_ELMOS_MOVE1_muj_0000f618
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x000A005B
	.4byte evt_npc_glide_position
	.4byte str_エルモスA_muj_0000f1c0
	.4byte 0xFFFFFF80
	.4byte 0x0000000A
	.4byte 0x000000E5
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_npc_release_filednpc
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0003005B
	.4byte evt_npc_set_battle_info
	.4byte str_エルモスA_muj_0000f1c0
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_npc_battle_start
	.4byte str_エルモスA_muj_0000f1c0
	.4byte 0x0001005B
	.4byte evt_npc_wait_battle_end
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0001005F
	.4byte 0xFD050F80
	.4byte 0x0001005F
	.4byte 0xFD050F81
	.4byte 0x0001005F
	.4byte 0xFD050F82
	.4byte 0x0001005F
	.4byte 0xFD050F83
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_マルコ_muj_0000ebf8
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_エルモスA_muj_0000f1c0
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_エルモスB_muj_0000f1cc
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_エルモスC_muj_0000f1d8
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0x00000400
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_マルコ_muj_0000ebf8
	.4byte 0x00000400
	.4byte 0x0001005C
	.4byte kyoshu_event
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nakamaware_event

# .data:0x402C | 0xE604 | size: 0xD8
.obj settoku_event, local
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_水夫A_muj_0000edd4
	.4byte 0xFFFFFF35
	.4byte 0x00000000
	.4byte 0x0000003D
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_水夫A_muj_0000edd4
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_水夫ボム兵_muj_0000ede8
	.4byte 0xFFFFFF24
	.4byte 0x00000000
	.4byte 0x000000A0
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_水夫ボム兵_muj_0000ede8
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_マルコ_muj_0000ebf8
	.4byte 0xFFFFFF68
	.4byte 0x00000000
	.4byte 0x00000096
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_マルコ_muj_0000ebf8
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_めがね水夫_muj_0000f170
	.4byte 0xFFFFFFD3
	.4byte 0x00000000
	.4byte 0x00000096
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_オドオド水夫_muj_0000ee00
	.4byte 0xFFFFFFF6
	.4byte 0x00000000
	.4byte 0x00000096
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0xFFFFFF4A
	.4byte 0x00000000
	.4byte 0x000000D2
	.4byte 0x00000002
	.4byte 0x00000001
.endobj settoku_event

# .data:0x4104 | 0xE6DC | size: 0x17C
.obj settoku_event_main, local
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_水夫A_muj_0000edd4
	.4byte str_マルコ_muj_0000ebf8
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_水夫ボム兵_muj_0000ede8
	.4byte str_マルコ_muj_0000ebf8
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte str_マルコ_muj_0000ebf8
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_めがね水夫_muj_0000f170
	.4byte str_マルコ_muj_0000ebf8
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_オドオド水夫_muj_0000ee00
	.4byte str_マルコ_muj_0000ebf8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_29_muj_0000f660
	.4byte 0x00000000
	.4byte str_マルコ_muj_0000ebf8
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_オドオド水夫_muj_0000ee00
	.4byte 0x00000020
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_オドオド水夫_muj_0000ee00
	.4byte 0xFFFFFFE6
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_オドオド水夫_muj_0000ee00
	.4byte 0xFFFFFF97
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_オドオド水夫_muj_0000ee00
	.4byte str_mario_muj_0000f66c
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_30_muj_0000f674
	.4byte 0x00000000
	.4byte str_オドオド水夫_muj_0000ee00
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_オドオド水夫_muj_0000ee00
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xF84067B9
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x000000EB
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_2_muj_0000ec38
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_muj_0000ec8c
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_31_muj_0000ec10
	.4byte 0x00000000
	.4byte str_マルコ_muj_0000ebf8
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_2_muj_0000ec38
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_muj_0000ec8c
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj settoku_event_main

# .data:0x4280 | 0xE858 | size: 0x60
.obj delete_npc_regl_evt, local
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_ボロ水夫B_muj_0000f1a0
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_get_reglid
	.4byte str_ボロ水夫B_muj_0000f1a0
	.4byte 0xFE363C80
	.4byte 0x0001005F
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_水夫D_muj_0000f18c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_get_reglid
	.4byte str_水夫D_muj_0000f18c
	.4byte 0xFE363C80
	.4byte 0x0001005F
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj delete_npc_regl_evt

# .data:0x42E0 | 0xE8B8 | size: 0x2C
.obj sekai_yami_shake, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A80
	.4byte 0xF24A7A8A
	.4byte 0x000001F4
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj sekai_yami_shake

# .data:0x430C | 0xE8E4 | size: 0x46C
.obj sekai_yami_evt, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
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
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ボロ水夫A_muj_0000f194
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000000AA
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_水夫D_muj_0000f18c
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_オドオド水夫_muj_0000ee00
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_店員_muj_0000f17c
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_map_set_tevcallback
	.4byte 0x00000001
	.4byte envSetYami
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_muj_0000f6a8
	.4byte 0x01000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_muj_0000f6a8
	.4byte 0x00000100
	.4byte 0x0003005B
	.4byte anim_tevcallback
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte anim_tevcallback
	.4byte str_水夫D_muj_0000f18c
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte anim_tevcallback
	.4byte str_オドオド水夫_muj_0000ee00
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte anim_tevcallback
	.4byte str_店員_muj_0000f17c
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte anim_tevcallback_mobj
	.4byte str_mobj_save_muj_0000f6ac
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_bg_set_color
	.4byte 0x00000040
	.4byte 0x00000040
	.4byte 0x00000040
	.4byte 0x000000FF
	.4byte 0x0002005B
	.4byte yami_view
	.4byte 0xFFFFFCE0
	.4byte 0x0001005B
	.4byte sekai_yami_omise
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x00000078
	.4byte 0x0000031B
	.4byte 0x00000000
	.4byte 0x00000046
	.4byte 0x0000015C
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001005C
	.4byte sekai_yami_shake
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG8_QUAKE1_muj_0000f6b8
	.4byte 0xFE363C80
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0x0000009B
	.4byte 0x000000AA
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0xFFFFFF6A
	.4byte 0x000000AA
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_水夫D_muj_0000f18c
	.4byte 0xFFFFFFBA
	.4byte 0x0000004C
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_水夫D_muj_0000f18c
	.4byte 0x00000078
	.4byte 0x0000004C
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_オドオド水夫_muj_0000ee00
	.4byte 0xFFFFFFC4
	.4byte 0x00000052
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_オドオド水夫_muj_0000ee00
	.4byte 0xFFFFFFA6
	.4byte 0x00000052
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_店員_muj_0000f17c
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFBB
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_店員_muj_0000f17c
	.4byte 0xFFFFFF84
	.4byte 0xFFFFFFBB
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_店員_muj_0000f17c
	.4byte 0x00000004
	.4byte 0xFFFFFFBB
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_dark_06_muj_0000f6c8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x00010005
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG8_LIGHT1_muj_0000f6d8
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_fade_entry
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0006005B
	.4byte evt_fade_entry
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000004B0
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte evt_fade_set_mapchange_type
	.4byte 0x00000001
	.4byte 0x0000000A
	.4byte 0x0000012C
	.4byte 0x00000009
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_pik_01_muj_0000f6e8
	.4byte str_sekai_yami2_muj_0000f6f0
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj sekai_yami_evt

# .data:0x4778 | 0xED50 | size: 0x648
.obj minnnanokoe_evt, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
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
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0xFFFFFFCE
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0x0000005A
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0x00008000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_水夫D_muj_0000f18c
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_水夫D_muj_0000f18c
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ボロ水夫A_muj_0000f194
	.4byte 0xFFFFFFF6
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ボロ水夫A_muj_0000f194
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ボロ水夫B_muj_0000f1a0
	.4byte 0x00000019
	.4byte 0x00000000
	.4byte 0x0000004B
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ボロ水夫B_muj_0000f1a0
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_店員_muj_0000f17c
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_map_set_tevcallback
	.4byte 0x00000001
	.4byte envSetYami
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_muj_0000f6a8
	.4byte 0x01000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_muj_0000f6a8
	.4byte 0x00000100
	.4byte 0x0003005B
	.4byte anim_tevcallback
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte anim_tevcallback
	.4byte str_水夫D_muj_0000f18c
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte anim_tevcallback
	.4byte str_ボロ水夫A_muj_0000f194
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte anim_tevcallback
	.4byte str_ボロ水夫B_muj_0000f1a0
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte anim_tevcallback_mobj
	.4byte str_mobj_save_muj_0000f6ac
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte yami_view
	.4byte 0xFFFFFCE0
	.4byte 0x0005005B
	.4byte evt_bg_set_color
	.4byte 0x00000040
	.4byte 0x00000040
	.4byte 0x00000040
	.4byte 0x000000FF
	.4byte 0x0001005B
	.4byte sekai_yami_omise
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x0000005F
	.4byte 0x00000224
	.4byte 0x00000000
	.4byte 0x00000037
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0005005B
	.4byte starstone_entry
	.4byte str_starstone_muj_0000f6fc
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFD050F80
	.4byte 0x00000032
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte starstone_set_pos
	.4byte str_starstone_muj_0000f6fc
	.4byte 0x00000000
	.4byte 0xFD050F80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte starstone_set_ry
	.4byte str_starstone_muj_0000f6fc
	.4byte 0xFE363C80
	.4byte 0x0002003B
	.4byte 0xFE363C80
	.4byte 0xF24A8680
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xF2501A80
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00001388
	.4byte 0x0000157C
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x0000157C
	.4byte 0x00001388
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000002
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0x00008000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_148_38_muj_0000f708
	.4byte 0x00000000
	.4byte str_水夫D_muj_0000f18c
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_148_39_muj_0000f718
	.4byte 0x00000000
	.4byte str_ボロ水夫A_muj_0000f194
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_148_40_muj_0000f728
	.4byte 0x00000000
	.4byte str_ボロ水夫B_muj_0000f1a0
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x0000012C
	.4byte 0x0000049C
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000012C
	.4byte 0x0000000A
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000012C
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_148_41_muj_0000f738
	.4byte 0x00000000
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_148_42_muj_0000f748
	.4byte 0x00000000
	.4byte str_水夫D_muj_0000f18c
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_148_43_muj_0000f758
	.4byte 0x00000000
	.4byte str_ボロ水夫A_muj_0000f194
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_148_44_muj_0000f768
	.4byte 0x00000000
	.4byte str_ボロ水夫B_muj_0000f1a0
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000012C
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_148_45_muj_0000f778
	.4byte 0x00000000
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_148_46_muj_0000f788
	.4byte 0x00000000
	.4byte str_水夫D_muj_0000f18c
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_148_47_muj_0000f798
	.4byte 0x00000000
	.4byte str_ボロ水夫A_muj_0000f194
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_148_48_muj_0000f7a8
	.4byte 0x00000000
	.4byte str_ボロ水夫B_muj_0000f1a0
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x0000005F
	.4byte 0x00000224
	.4byte 0x00000000
	.4byte 0x00000037
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_148_49_muj_0000f7b8
	.4byte 0x00000000
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_148_50_muj_0000f7c8
	.4byte 0x00000000
	.4byte str_水夫D_muj_0000f18c
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_148_51_muj_0000f7d8
	.4byte 0x00000000
	.4byte str_ボロ水夫A_muj_0000f194
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_148_52_muj_0000f7e8
	.4byte 0x00000000
	.4byte str_ボロ水夫B_muj_0000f1a0
	.4byte 0x0006005B
	.4byte evt_fade_set_mapchange_type
	.4byte 0x00000001
	.4byte 0x0000000A
	.4byte 0x0000012C
	.4byte 0x00000009
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_pik_01_muj_0000f6e8
	.4byte str_minnnanokoe_muj_0000f7f8
	.4byte 0x00000002
	.4byte 0x00000001
.endobj minnnanokoe_evt

# .data:0x4DC0 | 0xF398 | size: 0xF0
.obj epilogue_npc_entry, local
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_クリスチーヌ_muj_0000f804
	.4byte str_c_pkr_muj_0000f814
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_クリスチーヌ_muj_0000f804
	.4byte str_クリスチーヌ_muj_0000f804
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_クリスチーヌ_muj_0000f804
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_クリスチーヌ_muj_0000f804
	.4byte 0x0000010E
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_サンダース_muj_0000f81c
	.4byte str_c_bomt_n_muj_0000f828
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_サンダース_muj_0000f81c
	.4byte str_サンダース_muj_0000f81c
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_サンダース_muj_0000f81c
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_サンダース_muj_0000f81c
	.4byte 0x0000005A
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_サンダース_muj_0000f81c
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_npc_get_reglid
	.4byte str_水夫D_muj_0000f18c
	.4byte 0xFE363C80
	.4byte 0x0001005F
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_水夫D_muj_0000f18c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_水夫D_muj_0000f18c
	.4byte 0x00000018
	.4byte 0x00000000
	.4byte 0x00000046
	.4byte 0x00000002
	.4byte 0x00000001
.endobj epilogue_npc_entry

# .data:0x4EB0 | 0xF488 | size: 0x1D4
.obj epilogue_evt_sub, local
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_クリスチーヌ_muj_0000f804
	.4byte str_PKR_T_1_muj_0000f834
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_クリスチーヌ_muj_0000f804
	.4byte str_PKR_S_1_muj_0000f83c
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte str_T_1_muj_0000f5a0
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte str_S_1_muj_0000f59c
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte zero_muj_0000f844
	.4byte str_クリスチーヌ_muj_0000f804
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000024
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFD8
	.4byte 0x0000008F
	.4byte 0x00000317
	.4byte 0xFFFFFFD8
	.4byte 0x00000027
	.4byte 0x000000C8
	.4byte 0x0000012C
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0x0000010E
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_npc_wait_pera
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_サンダース_muj_0000f81c
	.4byte 0xFFFFFF15
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_サンダース_muj_0000f81c
	.4byte 0xFFFFFFB0
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_クリスチーヌ_muj_0000f804
	.4byte str_PKR_T_1_muj_0000f834
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_クリスチーヌ_muj_0000f804
	.4byte str_PKR_S_1_muj_0000f83c
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte str_T_1_muj_0000f5a0
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte str_S_1_muj_0000f59c
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_サンダース_muj_0000f81c
	.4byte str_T_1_muj_0000f5a0
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_サンダース_muj_0000f81c
	.4byte str_S_1_muj_0000f59c
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj epilogue_evt_sub

# .data:0x5084 | 0xF65C | size: 0x160
.obj epilogue_evt, local
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG5_MUJ1_muj_0000f520
	.4byte 0x0003005B
	.4byte evt_snd_bgm_scope
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0xFFFFFFD8
	.4byte 0x00000000
	.4byte 0x000000A0
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0x0000005A
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0x00008000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFEC
	.4byte 0x0000008F
	.4byte 0x00000317
	.4byte 0xFFFFFFEC
	.4byte 0x00000027
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_ガラの悪い水夫_muj_0000ed44
	.4byte 0x00008000
	.4byte 0x0001005C
	.4byte epilogue_evt_sub
	.4byte 0x0001005B
	.4byte evt_fade_end_wait
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_ep_42_muj_0000f848
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0006005B
	.4byte evt_fade_set_mapchange_type
	.4byte 0x00000001
	.4byte 0x0000000A
	.4byte 0x00000384
	.4byte 0x00000009
	.4byte 0x00000384
	.4byte 0x0003005B
	.4byte evt_mario_chk_join_party
	.4byte 0xFE363C80
	.4byte 0x00000007
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_gor_01_muj_0000f850
	.4byte zero_muj_0000f844
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_pik_04_muj_0000f858
	.4byte zero_muj_0000f844
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj epilogue_evt

# .data:0x51E4 | 0xF7BC | size: 0x44
.obj yakan_anime, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_yakan_muj_0000f860
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_checkanim
	.4byte str_yakan_muj_0000f860
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0001000A
	.4byte 0xFE363C81
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj yakan_anime

# .data:0x5228 | 0xF800 | size: 0x384
.obj muj_01_init_evt_19_data_F800, global
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000190
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_sekai_yami2_muj_0000f6f0
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000200
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_minnnanokoe_muj_0000f7f8
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_STG8_VOICE1_muj_0000f868
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000200
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG5_MUJ1_muj_0000f520
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG5_MUJ3_muj_0000f87c
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0002005B
	.4byte evt_npc_setup
	.4byte npcEnt
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_モニー_muj_0000f1ac
	.4byte str_モニー（指輪）_muj_0000f88c
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_ピートン_muj_0000f1b4
	.4byte str_ピートン（指輪）_muj_0000f89c
	.4byte 0x0007005B
	.4byte evt_npc_sound_data_set
	.4byte str_マルコ_muj_0000ebf8
	.4byte str_SFX_STG5_MARCO_MOVE1_muj_0000f8b0
	.4byte str_SFX_STG5_MARCO_MOVE1_muj_0000f8c8
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x0000017E
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte musume_a_entry
	.4byte 0x0001005E
	.4byte musume_b_entry
	.4byte 0x0001005E
	.4byte musume_c_entry
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_mizu_muj_0000f8e0
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_fuku_hata_muj_0000f8e8
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte yakan_anime
	.4byte 0x0007005B
	.4byte evt_mobj_save_blk
	.4byte str_mobj_save_muj_0000f6ac
	.4byte 0x00000064
	.4byte 0x0000003C
	.4byte 0xFFFFFFE7
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_00_muj_0000f8f4
	.4byte 0x0000007D
	.4byte 0x000001DB
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000010
	.4byte 0xF8407187
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_01_muj_0000f8fc
	.4byte 0x0000007D
	.4byte 0xFFFFFF38
	.4byte 0xFFFFFFF0
	.4byte 0x000001E5
	.4byte 0x00000010
	.4byte 0xF8407188
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte mise_data
	.4byte 0x0001005C
	.4byte evt_door_entry_custom00
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte yado_data
	.4byte 0x0001005C
	.4byte evt_door_entry_custom01
	.4byte 0x0005005B
	.4byte evt_shop_setup
	.4byte obj_list
	.4byte goods_list
	.4byte shopper_data
	.4byte trade_list
	.4byte 0x0002005B
	.4byte evt_kinopio_setup
	.4byte kino_dt
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010024
	.4byte 0x000000E8
	.4byte 0x0001005C
	.4byte nakamaware_event
	.4byte 0x00010029
	.4byte 0x000000EA
	.4byte 0x00020018
	.4byte 0xF84067B9
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte settoku_event
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000190
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C81
	.4byte 0x0002000C
	.4byte 0xFE363C81
	.4byte str_sekai_yami2_muj_0000f6f0
	.4byte 0x0001005E
	.4byte delete_npc_regl_evt
	.4byte 0x0001005C
	.4byte sekai_yami_evt
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C81
	.4byte str_minnnanokoe_muj_0000f7f8
	.4byte 0x0001005E
	.4byte delete_npc_regl_evt
	.4byte 0x0001005C
	.4byte minnnanokoe_evt
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000192
	.4byte 0x0002005B
	.4byte evt_mario_kill_party
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte epilogue_npc_entry
	.4byte 0x0001005C
	.4byte epilogue_evt
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte str_sunlight_muj_0000f904
	.4byte str_sunlight_n64_muj_0000f910
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
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_mise_muj_0000f254
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000001
.endobj muj_01_init_evt_19_data_F800

# .data:0x55AC | 0xFB84 | size: 0x4
.obj gap_04_0000FB84_data, global
.hidden gap_04_0000FB84_data
	.4byte 0x00000000
.endobj gap_04_0000FB84_data

# 0x00000010..0x00000018 | size: 0x8
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x10 | size: 0x4
.obj itemsel_table_ram, local
	.skip 0x4
.endobj itemsel_table_ram

# .bss:0x4 | 0x14 | size: 0x4
.obj gap_05_00000014_bss, global
.hidden gap_05_00000014_bss
	.skip 0x4
.endobj gap_05_00000014_bss
