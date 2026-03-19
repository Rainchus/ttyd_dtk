.include "macros.inc"
.file "pik_02.o"

# 0x00000990..0x000011A8 | size: 0x818
.text
.balign 4

# .text:0x0 | 0x990 | size: 0x38
.fn reset_stone_cam, local
/* 00000990 00000A4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000994 00000A50  7C 08 02 A6 */	mflr r0
/* 00000998 00000A54  3C 60 00 00 */	lis r3, str_nise_pik_00002e88@ha
/* 0000099C 00000A58  90 01 00 14 */	stw r0, 0x14(r1)
/* 000009A0 00000A5C  38 63 00 00 */	addi r3, r3, str_nise_pik_00002e88@l
/* 000009A4 00000A60  4B FF F6 5D */	bl effNameToPtr
/* 000009A8 00000A64  80 83 00 0C */	lwz r4, 0xc(r3)
/* 000009AC 00000A68  38 00 00 04 */	li r0, 0x4
/* 000009B0 00000A6C  38 60 00 02 */	li r3, 0x2
/* 000009B4 00000A70  90 04 00 38 */	stw r0, 0x38(r4)
/* 000009B8 00000A74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000009BC 00000A78  7C 08 03 A6 */	mtlr r0
/* 000009C0 00000A7C  38 21 00 10 */	addi r1, r1, 0x10
/* 000009C4 00000A80  4E 80 00 20 */	blr
.endfn reset_stone_cam

# .text:0x38 | 0x9C8 | size: 0x58
.fn stone_bg, local
/* 000009C8 00000A84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000009CC 00000A88  7C 08 02 A6 */	mflr r0
/* 000009D0 00000A8C  3C 60 00 00 */	lis r3, str_sub_bg_pik_00002f00@ha
/* 000009D4 00000A90  90 01 00 14 */	stw r0, 0x14(r1)
/* 000009D8 00000A94  38 63 00 00 */	addi r3, r3, str_sub_bg_pik_00002f00@l
/* 000009DC 00000A98  4B FF F6 25 */	bl effNameToPtr
/* 000009E0 00000A9C  80 83 00 0C */	lwz r4, 0xc(r3)
/* 000009E4 00000AA0  38 00 00 05 */	li r0, 0x5
/* 000009E8 00000AA4  3C 60 00 00 */	lis r3, str_nise_pik_00002e88@ha
/* 000009EC 00000AA8  90 04 00 38 */	stw r0, 0x38(r4)
/* 000009F0 00000AAC  38 63 00 00 */	addi r3, r3, str_nise_pik_00002e88@l
/* 000009F4 00000AB0  4B FF F6 0D */	bl effNameToPtr
/* 000009F8 00000AB4  80 83 00 0C */	lwz r4, 0xc(r3)
/* 000009FC 00000AB8  38 00 00 05 */	li r0, 0x5
/* 00000A00 00000ABC  38 60 00 05 */	li r3, 0x5
/* 00000A04 00000AC0  90 04 00 38 */	stw r0, 0x38(r4)
/* 00000A08 00000AC4  4B FF F5 F9 */	bl marioSetCamId
/* 00000A0C 00000AC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000A10 00000ACC  38 60 00 02 */	li r3, 0x2
/* 00000A14 00000AD0  7C 08 03 A6 */	mtlr r0
/* 00000A18 00000AD4  38 21 00 10 */	addi r1, r1, 0x10
/* 00000A1C 00000AD8  4E 80 00 20 */	blr
.endfn stone_bg

# .text:0x90 | 0xA20 | size: 0xD0
.fn starstone_entry, local
/* 00000A20 00000ADC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00000A24 00000AE0  7C 08 02 A6 */	mflr r0
/* 00000A28 00000AE4  90 01 00 34 */	stw r0, 0x34(r1)
/* 00000A2C 00000AE8  39 61 00 30 */	addi r11, r1, 0x30
/* 00000A30 00000AEC  4B FF F5 D1 */	bl _savefpr_29
/* 00000A34 00000AF0  BF 81 00 08 */	stmw r28, 0x8(r1)
/* 00000A38 00000AF4  7C 7C 1B 78 */	mr r28, r3
/* 00000A3C 00000AF8  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00000A40 00000AFC  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00000A44 00000B00  4B FF F5 BD */	bl evtGetValue
/* 00000A48 00000B04  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00000A4C 00000B08  7C 7E 1B 78 */	mr r30, r3
/* 00000A50 00000B0C  7F 83 E3 78 */	mr r3, r28
/* 00000A54 00000B10  4B FF F5 AD */	bl evtGetValue
/* 00000A58 00000B14  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 00000A5C 00000B18  7C 7D 1B 78 */	mr r29, r3
/* 00000A60 00000B1C  7F 83 E3 78 */	mr r3, r28
/* 00000A64 00000B20  4B FF F5 9D */	bl evtGetFloat
/* 00000A68 00000B24  FF E0 08 90 */	fmr f31, f1
/* 00000A6C 00000B28  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00000A70 00000B2C  7F 83 E3 78 */	mr r3, r28
/* 00000A74 00000B30  4B FF F5 8D */	bl evtGetFloat
/* 00000A78 00000B34  FF C0 08 90 */	fmr f30, f1
/* 00000A7C 00000B38  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00000A80 00000B3C  7F 83 E3 78 */	mr r3, r28
/* 00000A84 00000B40  4B FF F5 7D */	bl evtGetFloat
/* 00000A88 00000B44  FF A0 08 90 */	fmr f29, f1
/* 00000A8C 00000B48  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 00000A90 00000B4C  7F 83 E3 78 */	mr r3, r28
/* 00000A94 00000B50  4B FF F5 6D */	bl evtGetFloat
/* 00000A98 00000B54  FC 00 08 90 */	fmr f0, f1
/* 00000A9C 00000B58  7F A3 EB 78 */	mr r3, r29
/* 00000AA0 00000B5C  FC 20 F8 90 */	fmr f1, f31
/* 00000AA4 00000B60  FC 40 F0 90 */	fmr f2, f30
/* 00000AA8 00000B64  FC 80 00 90 */	fmr f4, f0
/* 00000AAC 00000B68  FC 60 E8 90 */	fmr f3, f29
/* 00000AB0 00000B6C  4B FF F5 51 */	bl effStarStoneEntry
/* 00000AB4 00000B70  7C 7F 1B 78 */	mr r31, r3
/* 00000AB8 00000B74  7F C4 F3 78 */	mr r4, r30
/* 00000ABC 00000B78  4B FF F5 45 */	bl effSetName
/* 00000AC0 00000B7C  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00000AC4 00000B80  38 60 00 02 */	li r3, 0x2
/* 00000AC8 00000B84  39 61 00 30 */	addi r11, r1, 0x30
/* 00000ACC 00000B88  A0 04 00 04 */	lhz r0, 0x4(r4)
/* 00000AD0 00000B8C  60 00 00 10 */	ori r0, r0, 0x10
/* 00000AD4 00000B90  B0 04 00 04 */	sth r0, 0x4(r4)
/* 00000AD8 00000B94  4B FF F5 29 */	bl _restfpr_29
/* 00000ADC 00000B98  BB 81 00 08 */	lmw r28, 0x8(r1)
/* 00000AE0 00000B9C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00000AE4 00000BA0  7C 08 03 A6 */	mtlr r0
/* 00000AE8 00000BA4  38 21 00 30 */	addi r1, r1, 0x30
/* 00000AEC 00000BA8  4E 80 00 20 */	blr
.endfn starstone_entry

# .text:0x160 | 0xAF0 | size: 0x7C
.fn get_starstone_pos, local
/* 00000AF0 00000BAC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00000AF4 00000BB0  7C 08 02 A6 */	mflr r0
/* 00000AF8 00000BB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 00000AFC 00000BB8  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 00000B00 00000BBC  7C 7D 1B 78 */	mr r29, r3
/* 00000B04 00000BC0  83 C3 00 18 */	lwz r30, 0x18(r3)
/* 00000B08 00000BC4  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 00000B0C 00000BC8  4B FF F4 F5 */	bl evtGetValue
/* 00000B10 00000BCC  4B FF F4 F1 */	bl effNameToPtr
/* 00000B14 00000BD0  7C 7F 1B 78 */	mr r31, r3
/* 00000B18 00000BD4  80 9E 00 04 */	lwz r4, 0x4(r30)
/* 00000B1C 00000BD8  80 A3 00 0C */	lwz r5, 0xc(r3)
/* 00000B20 00000BDC  7F A3 EB 78 */	mr r3, r29
/* 00000B24 00000BE0  C0 25 00 08 */	lfs f1, 0x8(r5)
/* 00000B28 00000BE4  4B FF F4 D9 */	bl evtSetFloat
/* 00000B2C 00000BE8  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 00000B30 00000BEC  7F A3 EB 78 */	mr r3, r29
/* 00000B34 00000BF0  80 9E 00 08 */	lwz r4, 0x8(r30)
/* 00000B38 00000BF4  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 00000B3C 00000BF8  4B FF F4 C5 */	bl evtSetFloat
/* 00000B40 00000BFC  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 00000B44 00000C00  7F A3 EB 78 */	mr r3, r29
/* 00000B48 00000C04  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 00000B4C 00000C08  C0 25 00 10 */	lfs f1, 0x10(r5)
/* 00000B50 00000C0C  4B FF F4 B1 */	bl evtSetFloat
/* 00000B54 00000C10  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 00000B58 00000C14  38 60 00 02 */	li r3, 0x2
/* 00000B5C 00000C18  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00000B60 00000C1C  7C 08 03 A6 */	mtlr r0
/* 00000B64 00000C20  38 21 00 20 */	addi r1, r1, 0x20
/* 00000B68 00000C24  4E 80 00 20 */	blr
.endfn get_starstone_pos

# .text:0x1DC | 0xB6C | size: 0x9C
.fn set_starstone_pos, local
/* 00000B6C 00000C28  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00000B70 00000C2C  7C 08 02 A6 */	mflr r0
/* 00000B74 00000C30  90 01 00 34 */	stw r0, 0x34(r1)
/* 00000B78 00000C34  39 61 00 30 */	addi r11, r1, 0x30
/* 00000B7C 00000C38  4B FF F4 85 */	bl _savefpr_29
/* 00000B80 00000C3C  BF A1 00 0C */	stmw r29, 0xc(r1)
/* 00000B84 00000C40  7C 7D 1B 78 */	mr r29, r3
/* 00000B88 00000C44  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00000B8C 00000C48  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00000B90 00000C4C  4B FF F4 71 */	bl evtGetValue
/* 00000B94 00000C50  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00000B98 00000C54  7C 7E 1B 78 */	mr r30, r3
/* 00000B9C 00000C58  7F A3 EB 78 */	mr r3, r29
/* 00000BA0 00000C5C  4B FF F4 61 */	bl evtGetFloat
/* 00000BA4 00000C60  FF A0 08 90 */	fmr f29, f1
/* 00000BA8 00000C64  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 00000BAC 00000C68  7F A3 EB 78 */	mr r3, r29
/* 00000BB0 00000C6C  4B FF F4 51 */	bl evtGetFloat
/* 00000BB4 00000C70  FF C0 08 90 */	fmr f30, f1
/* 00000BB8 00000C74  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00000BBC 00000C78  7F A3 EB 78 */	mr r3, r29
/* 00000BC0 00000C7C  4B FF F4 41 */	bl evtGetFloat
/* 00000BC4 00000C80  FF E0 08 90 */	fmr f31, f1
/* 00000BC8 00000C84  7F C3 F3 78 */	mr r3, r30
/* 00000BCC 00000C88  4B FF F4 35 */	bl effNameToPtr
/* 00000BD0 00000C8C  80 83 00 0C */	lwz r4, 0xc(r3)
/* 00000BD4 00000C90  D3 A4 00 08 */	stfs f29, 0x8(r4)
/* 00000BD8 00000C94  80 83 00 0C */	lwz r4, 0xc(r3)
/* 00000BDC 00000C98  D3 C4 00 0C */	stfs f30, 0xc(r4)
/* 00000BE0 00000C9C  80 83 00 0C */	lwz r4, 0xc(r3)
/* 00000BE4 00000CA0  38 60 00 02 */	li r3, 0x2
/* 00000BE8 00000CA4  D3 E4 00 10 */	stfs f31, 0x10(r4)
/* 00000BEC 00000CA8  39 61 00 30 */	addi r11, r1, 0x30
/* 00000BF0 00000CAC  4B FF F4 11 */	bl _restfpr_29
/* 00000BF4 00000CB0  BB A1 00 0C */	lmw r29, 0xc(r1)
/* 00000BF8 00000CB4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00000BFC 00000CB8  7C 08 03 A6 */	mtlr r0
/* 00000C00 00000CBC  38 21 00 30 */	addi r1, r1, 0x30
/* 00000C04 00000CC0  4E 80 00 20 */	blr
.endfn set_starstone_pos

# .text:0x278 | 0xC08 | size: 0x3C
.fn starstone_fall, local
/* 00000C08 00000CC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000C0C 00000CC8  7C 08 02 A6 */	mflr r0
/* 00000C10 00000CCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000C14 00000CD0  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00000C18 00000CD4  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00000C1C 00000CD8  4B FF F3 E5 */	bl evtGetValue
/* 00000C20 00000CDC  4B FF F3 E1 */	bl effNameToPtr
/* 00000C24 00000CE0  80 83 00 0C */	lwz r4, 0xc(r3)
/* 00000C28 00000CE4  38 00 00 01 */	li r0, 0x1
/* 00000C2C 00000CE8  38 60 00 02 */	li r3, 0x2
/* 00000C30 00000CEC  90 04 00 3C */	stw r0, 0x3c(r4)
/* 00000C34 00000CF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000C38 00000CF4  7C 08 03 A6 */	mtlr r0
/* 00000C3C 00000CF8  38 21 00 10 */	addi r1, r1, 0x10
/* 00000C40 00000CFC  4E 80 00 20 */	blr
.endfn starstone_fall

# .text:0x2B4 | 0xC44 | size: 0x50
.fn get_starstone_seq, local
/* 00000C44 00000D00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000C48 00000D04  7C 08 02 A6 */	mflr r0
/* 00000C4C 00000D08  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000C50 00000D0C  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00000C54 00000D10  7C 7E 1B 78 */	mr r30, r3
/* 00000C58 00000D14  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00000C5C 00000D18  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00000C60 00000D1C  4B FF F3 A1 */	bl evtGetValue
/* 00000C64 00000D20  4B FF F3 9D */	bl effNameToPtr
/* 00000C68 00000D24  80 A3 00 0C */	lwz r5, 0xc(r3)
/* 00000C6C 00000D28  7F C3 F3 78 */	mr r3, r30
/* 00000C70 00000D2C  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00000C74 00000D30  80 A5 00 3C */	lwz r5, 0x3c(r5)
/* 00000C78 00000D34  4B FF F3 89 */	bl evtSetValue
/* 00000C7C 00000D38  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00000C80 00000D3C  38 60 00 02 */	li r3, 0x2
/* 00000C84 00000D40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000C88 00000D44  7C 08 03 A6 */	mtlr r0
/* 00000C8C 00000D48  38 21 00 10 */	addi r1, r1, 0x10
/* 00000C90 00000D4C  4E 80 00 20 */	blr
.endfn get_starstone_seq

# .text:0x304 | 0xC94 | size: 0x34C
.fn hoshi_jump, local
/* 00000C94 00000D50  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 00000C98 00000D54  7C 08 02 A6 */	mflr r0
/* 00000C9C 00000D58  90 01 00 64 */	stw r0, 0x64(r1)
/* 00000CA0 00000D5C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 00000CA4 00000D60  F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 00000CA8 00000D64  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 00000CAC 00000D68  F3 C1 00 48 */	psq_st f30, 0x48(r1), 0, qr0
/* 00000CB0 00000D6C  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 00000CB4 00000D70  F3 A1 00 38 */	psq_st f29, 0x38(r1), 0, qr0
/* 00000CB8 00000D74  BF A1 00 24 */	stmw r29, 0x24(r1)
/* 00000CBC 00000D78  7C 7E 1B 78 */	mr r30, r3
/* 00000CC0 00000D7C  3C 60 00 00 */	lis r3, str_マジョリン_pik_00002c40@ha
/* 00000CC4 00000D80  80 BE 00 C4 */	lwz r5, 0xc4(r30)
/* 00000CC8 00000D84  38 63 00 00 */	addi r3, r3, str_マジョリン_pik_00002c40@l
/* 00000CCC 00000D88  7C 9D 23 78 */	mr r29, r4
/* 00000CD0 00000D8C  83 E5 00 0C */	lwz r31, 0xc(r5)
/* 00000CD4 00000D90  4B FF F3 2D */	bl npcNameToPtr
/* 00000CD8 00000D94  3C A0 00 00 */	lis r5, float_50_pik_00003260@ha
/* 00000CDC 00000D98  3C 80 00 00 */	lis r4, float_0p5_pik_00003264@ha
/* 00000CE0 00000D9C  C0 23 00 90 */	lfs f1, 0x90(r3)
/* 00000CE4 00000DA0  2C 1D 00 00 */	cmpwi r29, 0x0
/* 00000CE8 00000DA4  C0 45 00 00 */	lfs f2, float_50_pik_00003260@l(r5)
/* 00000CEC 00000DA8  C0 04 00 00 */	lfs f0, float_0p5_pik_00003264@l(r4)
/* 00000CF0 00000DAC  EF C2 08 2A */	fadds f30, f2, f1
/* 00000CF4 00000DB0  C3 E3 00 8C */	lfs f31, 0x8c(r3)
/* 00000CF8 00000DB4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 00000CFC 00000DB8  C3 A3 00 94 */	lfs f29, 0x94(r3)
/* 00000D00 00000DBC  41 82 00 6C */	beq .L_00000D6C
/* 00000D04 00000DC0  FC 20 F8 90 */	fmr f1, f31
/* 00000D08 00000DC4  C0 7F 00 08 */	lfs f3, 0x8(r31)
/* 00000D0C 00000DC8  FC 40 E8 90 */	fmr f2, f29
/* 00000D10 00000DCC  C0 9F 00 10 */	lfs f4, 0x10(r31)
/* 00000D14 00000DD0  4B FF F2 ED */	bl distABf
/* 00000D18 00000DD4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 00000D1C 00000DD8  3C 60 00 00 */	lis r3, float_0p1_pik_00003268@ha
/* 00000D20 00000DDC  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 00000D24 00000DE0  3C 80 00 00 */	lis r4, float_0p5_pik_00003264@ha
/* 00000D28 00000DE4  EC 61 00 24 */	fdivs f3, f1, f0
/* 00000D2C 00000DE8  C0 03 00 00 */	lfs f0, float_0p1_pik_00003268@l(r3)
/* 00000D30 00000DEC  C0 24 00 00 */	lfs f1, float_0p5_pik_00003264@l(r4)
/* 00000D34 00000DF0  38 00 00 00 */	li r0, 0x0
/* 00000D38 00000DF4  80 61 00 0C */	lwz r3, 0xc(r1)
/* 00000D3C 00000DF8  EC 9E 10 28 */	fsubs f4, f30, f2
/* 00000D40 00000DFC  EC 40 00 F2 */	fmuls f2, f0, f3
/* 00000D44 00000E00  D0 61 00 08 */	stfs f3, 0x8(r1)
/* 00000D48 00000E04  EC 04 18 24 */	fdivs f0, f4, f3
/* 00000D4C 00000E08  80 81 00 08 */	lwz r4, 0x8(r1)
/* 00000D50 00000E0C  90 9E 00 78 */	stw r4, 0x78(r30)
/* 00000D54 00000E10  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 00000D58 00000E14  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 00000D5C 00000E18  80 81 00 10 */	lwz r4, 0x10(r1)
/* 00000D60 00000E1C  90 9E 00 7C */	stw r4, 0x7c(r30)
/* 00000D64 00000E20  90 7E 00 80 */	stw r3, 0x80(r30)
/* 00000D68 00000E24  90 1E 00 84 */	stw r0, 0x84(r30)
.L_00000D6C:
/* 00000D6C 00000E28  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 00000D70 00000E2C  FC 60 F8 90 */	fmr f3, f31
/* 00000D74 00000E30  C0 5E 00 7C */	lfs f2, 0x7c(r30)
/* 00000D78 00000E34  FC 80 E8 90 */	fmr f4, f29
/* 00000D7C 00000E38  C0 1E 00 80 */	lfs f0, 0x80(r30)
/* 00000D80 00000E3C  D0 21 00 08 */	stfs f1, 0x8(r1)
/* 00000D84 00000E40  C0 3F 00 08 */	lfs f1, 0x8(r31)
/* 00000D88 00000E44  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 00000D8C 00000E48  C0 5F 00 10 */	lfs f2, 0x10(r31)
/* 00000D90 00000E4C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 00000D94 00000E50  4B FF F2 6D */	bl angleABf_1
/* 00000D98 00000E54  3C 60 00 00 */	lis r3, float_6p2832_pik_0000326c@ha
/* 00000D9C 00000E58  3C C0 00 00 */	lis r6, float_0p00761_pik_00003274@ha
/* 00000DA0 00000E5C  38 A3 00 00 */	addi r5, r3, float_6p2832_pik_0000326c@l
/* 00000DA4 00000E60  3C 80 00 00 */	lis r4, float_360_pik_00003270@ha
/* 00000DA8 00000E64  C0 05 00 00 */	lfs f0, 0x0(r5)
/* 00000DAC 00000E68  3C A0 00 00 */	lis r5, float_0p16605_pik_00003278@ha
/* 00000DB0 00000E6C  3C 60 00 00 */	lis r3, float_3p1416_pik_00003280@ha
/* 00000DB4 00000E70  C0 86 00 00 */	lfs f4, float_0p00761_pik_00003274@l(r6)
/* 00000DB8 00000E74  EC 40 00 72 */	fmuls f2, f0, f1
/* 00000DBC 00000E78  C0 04 00 00 */	lfs f0, float_360_pik_00003270@l(r4)
/* 00000DC0 00000E7C  C0 23 00 00 */	lfs f1, float_3p1416_pik_00003280@l(r3)
/* 00000DC4 00000E80  3C 80 00 00 */	lis r4, float_1_pik_0000327c@ha
/* 00000DC8 00000E84  C0 65 00 00 */	lfs f3, float_0p16605_pik_00003278@l(r5)
/* 00000DCC 00000E88  EC A2 00 24 */	fdivs f5, f2, f0
/* 00000DD0 00000E8C  C0 44 00 00 */	lfs f2, float_1_pik_0000327c@l(r4)
/* 00000DD4 00000E90  FC 05 08 40 */	fcmpo cr0, f5, f1
/* 00000DD8 00000E94  4C 40 13 82 */	cror eq, lt, eq
/* 00000DDC 00000E98  40 82 00 48 */	bne .L_00000E24
/* 00000DE0 00000E9C  3C 60 00 00 */	lis r3, float_1p5708_pik_00003284@ha
/* 00000DE4 00000EA0  C0 23 00 00 */	lfs f1, float_1p5708_pik_00003284@l(r3)
/* 00000DE8 00000EA4  FC 05 08 40 */	fcmpo cr0, f5, f1
/* 00000DEC 00000EA8  4C 40 13 82 */	cror eq, lt, eq
/* 00000DF0 00000EAC  40 82 00 18 */	bne .L_00000E08
/* 00000DF4 00000EB0  EC 05 01 72 */	fmuls f0, f5, f5
/* 00000DF8 00000EB4  EC 84 18 38 */	fmsubs f4, f4, f0, f3
/* 00000DFC 00000EB8  EC 84 10 3A */	fmadds f4, f4, f0, f2
/* 00000E00 00000EBC  EC 84 01 72 */	fmuls f4, f4, f5
/* 00000E04 00000EC0  48 00 00 70 */	b .L_00000E74
.L_00000E08:
/* 00000E08 00000EC4  EC 05 08 28 */	fsubs f0, f5, f1
/* 00000E0C 00000EC8  EC 21 00 28 */	fsubs f1, f1, f0
/* 00000E10 00000ECC  EC 01 00 72 */	fmuls f0, f1, f1
/* 00000E14 00000ED0  EC 84 18 38 */	fmsubs f4, f4, f0, f3
/* 00000E18 00000ED4  EC 84 10 3A */	fmadds f4, f4, f0, f2
/* 00000E1C 00000ED8  EC 84 00 72 */	fmuls f4, f4, f1
/* 00000E20 00000EDC  48 00 00 54 */	b .L_00000E74
.L_00000E24:
/* 00000E24 00000EE0  3C 60 00 00 */	lis r3, float_4p7124_pik_00003288@ha
/* 00000E28 00000EE4  C0 03 00 00 */	lfs f0, float_4p7124_pik_00003288@l(r3)
/* 00000E2C 00000EE8  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 00000E30 00000EEC  40 80 00 20 */	bge .L_00000E50
/* 00000E34 00000EF0  EC 25 08 28 */	fsubs f1, f5, f1
/* 00000E38 00000EF4  EC 01 00 72 */	fmuls f0, f1, f1
/* 00000E3C 00000EF8  EC 84 18 38 */	fmsubs f4, f4, f0, f3
/* 00000E40 00000EFC  EC 84 10 3A */	fmadds f4, f4, f0, f2
/* 00000E44 00000F00  EC 84 00 72 */	fmuls f4, f4, f1
/* 00000E48 00000F04  FC 80 20 50 */	fneg f4, f4
/* 00000E4C 00000F08  48 00 00 28 */	b .L_00000E74
.L_00000E50:
/* 00000E50 00000F0C  3C 60 00 00 */	lis r3, float_1p5708_pik_00003284@ha
/* 00000E54 00000F10  EC 05 00 28 */	fsubs f0, f5, f0
/* 00000E58 00000F14  C0 23 00 00 */	lfs f1, float_1p5708_pik_00003284@l(r3)
/* 00000E5C 00000F18  EC 21 00 28 */	fsubs f1, f1, f0
/* 00000E60 00000F1C  EC 01 00 72 */	fmuls f0, f1, f1
/* 00000E64 00000F20  EC 84 18 38 */	fmsubs f4, f4, f0, f3
/* 00000E68 00000F24  EC 84 10 3A */	fmadds f4, f4, f0, f2
/* 00000E6C 00000F28  EC 84 00 72 */	fmuls f4, f4, f1
/* 00000E70 00000F2C  FC 80 20 50 */	fneg f4, f4
.L_00000E74:
/* 00000E74 00000F30  3C 60 00 00 */	lis r3, float_3p1416_pik_00003280@ha
/* 00000E78 00000F34  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 00000E7C 00000F38  C0 23 00 00 */	lfs f1, float_3p1416_pik_00003280@l(r3)
/* 00000E80 00000F3C  3C 80 00 00 */	lis r4, float_0p4967_pik_00003290@ha
/* 00000E84 00000F40  C0 1F 00 08 */	lfs f0, 0x8(r31)
/* 00000E88 00000F44  3C A0 00 00 */	lis r5, float_0p03705_pik_0000328c@ha
/* 00000E8C 00000F48  FC 05 08 40 */	fcmpo cr0, f5, f1
/* 00000E90 00000F4C  3C 60 00 00 */	lis r3, float_1_pik_0000327c@ha
/* 00000E94 00000F50  EC 02 01 3A */	fmadds f0, f2, f4, f0
/* 00000E98 00000F54  C0 85 00 00 */	lfs f4, float_0p03705_pik_0000328c@l(r5)
/* 00000E9C 00000F58  C0 64 00 00 */	lfs f3, float_0p4967_pik_00003290@l(r4)
/* 00000EA0 00000F5C  C0 43 00 00 */	lfs f2, float_1_pik_0000327c@l(r3)
/* 00000EA4 00000F60  D0 1F 00 08 */	stfs f0, 0x8(r31)
/* 00000EA8 00000F64  4C 40 13 82 */	cror eq, lt, eq
/* 00000EAC 00000F68  40 82 00 44 */	bne .L_00000EF0
/* 00000EB0 00000F6C  3C 60 00 00 */	lis r3, float_1p5708_pik_00003284@ha
/* 00000EB4 00000F70  C0 23 00 00 */	lfs f1, float_1p5708_pik_00003284@l(r3)
/* 00000EB8 00000F74  FC 05 08 40 */	fcmpo cr0, f5, f1
/* 00000EBC 00000F78  4C 40 13 82 */	cror eq, lt, eq
/* 00000EC0 00000F7C  40 82 00 14 */	bne .L_00000ED4
/* 00000EC4 00000F80  EC 05 01 72 */	fmuls f0, f5, f5
/* 00000EC8 00000F84  EC 84 18 38 */	fmsubs f4, f4, f0, f3
/* 00000ECC 00000F88  EC 84 10 3A */	fmadds f4, f4, f0, f2
/* 00000ED0 00000F8C  48 00 00 64 */	b .L_00000F34
.L_00000ED4:
/* 00000ED4 00000F90  EC 05 08 28 */	fsubs f0, f5, f1
/* 00000ED8 00000F94  EC 01 00 28 */	fsubs f0, f1, f0
/* 00000EDC 00000F98  EC 00 00 32 */	fmuls f0, f0, f0
/* 00000EE0 00000F9C  EC 84 18 38 */	fmsubs f4, f4, f0, f3
/* 00000EE4 00000FA0  EC 84 10 3A */	fmadds f4, f4, f0, f2
/* 00000EE8 00000FA4  FC 80 20 50 */	fneg f4, f4
/* 00000EEC 00000FA8  48 00 00 48 */	b .L_00000F34
.L_00000EF0:
/* 00000EF0 00000FAC  3C 60 00 00 */	lis r3, float_4p7124_pik_00003288@ha
/* 00000EF4 00000FB0  C0 03 00 00 */	lfs f0, float_4p7124_pik_00003288@l(r3)
/* 00000EF8 00000FB4  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 00000EFC 00000FB8  40 80 00 1C */	bge .L_00000F18
/* 00000F00 00000FBC  EC 05 08 28 */	fsubs f0, f5, f1
/* 00000F04 00000FC0  EC 00 00 32 */	fmuls f0, f0, f0
/* 00000F08 00000FC4  EC 84 18 38 */	fmsubs f4, f4, f0, f3
/* 00000F0C 00000FC8  EC 84 10 3A */	fmadds f4, f4, f0, f2
/* 00000F10 00000FCC  FC 80 20 50 */	fneg f4, f4
/* 00000F14 00000FD0  48 00 00 20 */	b .L_00000F34
.L_00000F18:
/* 00000F18 00000FD4  3C 60 00 00 */	lis r3, float_1p5708_pik_00003284@ha
/* 00000F1C 00000FD8  EC 05 00 28 */	fsubs f0, f5, f0
/* 00000F20 00000FDC  C0 23 00 00 */	lfs f1, float_1p5708_pik_00003284@l(r3)
/* 00000F24 00000FE0  EC 01 00 28 */	fsubs f0, f1, f0
/* 00000F28 00000FE4  EC 00 00 32 */	fmuls f0, f0, f0
/* 00000F2C 00000FE8  EC 84 18 38 */	fmsubs f4, f4, f0, f3
/* 00000F30 00000FEC  EC 84 10 3A */	fmadds f4, f4, f0, f2
.L_00000F34:
/* 00000F34 00000FF0  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 00000F38 00000FF4  3C 60 00 00 */	lis r3, float_1_pik_0000327c@ha
/* 00000F3C 00000FF8  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 00000F40 00000FFC  38 83 00 00 */	addi r4, r3, float_1_pik_0000327c@l
/* 00000F44 00001000  3C A0 00 00 */	lis r5, float_0p1_pik_00003268@ha
/* 00000F48 00001004  3C 60 00 00 */	lis r3, zero_pik_00003294@ha
/* 00000F4C 00001008  EC 41 01 3C */	fnmsubs f2, f1, f4, f0
/* 00000F50 0000100C  C0 21 00 08 */	lfs f1, 0x8(r1)
/* 00000F54 00001010  C0 04 00 00 */	lfs f0, 0x0(r4)
/* 00000F58 00001014  C0 81 00 10 */	lfs f4, 0x10(r1)
/* 00000F5C 00001018  D0 5F 00 10 */	stfs f2, 0x10(r31)
/* 00000F60 0000101C  EC 21 00 28 */	fsubs f1, f1, f0
/* 00000F64 00001020  C0 45 00 00 */	lfs f2, float_0p1_pik_00003268@l(r5)
/* 00000F68 00001024  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 00000F6C 00001028  EC 44 10 28 */	fsubs f2, f4, f2
/* 00000F70 0000102C  D0 21 00 08 */	stfs f1, 0x8(r1)
/* 00000F74 00001030  EC 60 20 2A */	fadds f3, f0, f4
/* 00000F78 00001034  C0 03 00 00 */	lfs f0, zero_pik_00003294@l(r3)
/* 00000F7C 00001038  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 00000F80 0000103C  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 00000F84 00001040  D0 7F 00 0C */	stfs f3, 0xc(r31)
/* 00000F88 00001044  40 80 00 18 */	bge .L_00000FA0
/* 00000F8C 00001048  D3 FF 00 08 */	stfs f31, 0x8(r31)
/* 00000F90 0000104C  38 60 00 02 */	li r3, 0x2
/* 00000F94 00001050  D3 DF 00 0C */	stfs f30, 0xc(r31)
/* 00000F98 00001054  D3 BF 00 10 */	stfs f29, 0x10(r31)
/* 00000F9C 00001058  48 00 00 18 */	b .L_00000FB4
.L_00000FA0:
/* 00000FA0 0000105C  80 81 00 08 */	lwz r4, 0x8(r1)
/* 00000FA4 00001060  38 60 00 00 */	li r3, 0x0
/* 00000FA8 00001064  80 01 00 10 */	lwz r0, 0x10(r1)
/* 00000FAC 00001068  90 9E 00 78 */	stw r4, 0x78(r30)
/* 00000FB0 0000106C  90 1E 00 7C */	stw r0, 0x7c(r30)
.L_00000FB4:
/* 00000FB4 00001070  E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 00000FB8 00001074  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 00000FBC 00001078  E3 C1 00 48 */	psq_l f30, 0x48(r1), 0, qr0
/* 00000FC0 0000107C  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 00000FC4 00001080  E3 A1 00 38 */	psq_l f29, 0x38(r1), 0, qr0
/* 00000FC8 00001084  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 00000FCC 00001088  BB A1 00 24 */	lmw r29, 0x24(r1)
/* 00000FD0 0000108C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 00000FD4 00001090  7C 08 03 A6 */	mtlr r0
/* 00000FD8 00001094  38 21 00 60 */	addi r1, r1, 0x60
/* 00000FDC 00001098  4E 80 00 20 */	blr
.endfn hoshi_jump

# .text:0x650 | 0xFE0 | size: 0x64
.fn hoshi_r, local
/* 00000FE0 0000109C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00000FE4 000010A0  7C 08 02 A6 */	mflr r0
/* 00000FE8 000010A4  90 01 00 24 */	stw r0, 0x24(r1)
/* 00000FEC 000010A8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 00000FF0 000010AC  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00000FF4 000010B0  83 E3 00 C4 */	lwz r31, 0xc4(r3)
/* 00000FF8 000010B4  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00000FFC 000010B8  4B FF F0 05 */	bl evtGetValue
/* 00001000 000010BC  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 00001004 000010C0  3C 00 43 30 */	lis r0, 0x4330
/* 00001008 000010C4  3C 80 00 00 */	lis r4, double_to_int_pik_00003298@ha
/* 0000100C 000010C8  90 61 00 0C */	stw r3, 0xc(r1)
/* 00001010 000010CC  38 A4 00 00 */	addi r5, r4, double_to_int_pik_00003298@l
/* 00001014 000010D0  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00001018 000010D4  90 01 00 08 */	stw r0, 0x8(r1)
/* 0000101C 000010D8  38 60 00 02 */	li r3, 0x2
/* 00001020 000010DC  C8 25 00 00 */	lfd f1, 0x0(r5)
/* 00001024 000010E0  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 00001028 000010E4  EC 00 08 28 */	fsubs f0, f0, f1
/* 0000102C 000010E8  D0 04 00 1C */	stfs f0, 0x1c(r4)
/* 00001030 000010EC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 00001034 000010F0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00001038 000010F4  7C 08 03 A6 */	mtlr r0
/* 0000103C 000010F8  38 21 00 20 */	addi r1, r1, 0x20
/* 00001040 000010FC  4E 80 00 20 */	blr
.endfn hoshi_r

# .text:0x6B4 | 0x1044 | size: 0x28
.fn hoshi_delete, local
/* 00001044 00001100  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00001048 00001104  7C 08 02 A6 */	mflr r0
/* 0000104C 00001108  90 01 00 14 */	stw r0, 0x14(r1)
/* 00001050 0000110C  80 63 00 C4 */	lwz r3, 0xc4(r3)
/* 00001054 00001110  4B FF EF AD */	bl effSoftDelete
/* 00001058 00001114  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0000105C 00001118  38 60 00 02 */	li r3, 0x2
/* 00001060 0000111C  7C 08 03 A6 */	mtlr r0
/* 00001064 00001120  38 21 00 10 */	addi r1, r1, 0x10
/* 00001068 00001124  4E 80 00 20 */	blr
.endfn hoshi_delete

# .text:0x6DC | 0x106C | size: 0x58
.fn hoshi, local
/* 0000106C 00001128  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00001070 0000112C  7C 08 02 A6 */	mflr r0
/* 00001074 00001130  3C E0 00 00 */	lis r7, zero_pik_00003294@ha
/* 00001078 00001134  3C C0 00 00 */	lis r6, float_60_pik_000032a0@ha
/* 0000107C 00001138  90 01 00 14 */	stw r0, 0x14(r1)
/* 00001080 0000113C  3C A0 00 00 */	lis r5, float_neg950_pik_000032a4@ha
/* 00001084 00001140  3C 80 00 00 */	lis r4, float_1_pik_0000327c@ha
/* 00001088 00001144  C0 27 00 00 */	lfs f1, zero_pik_00003294@l(r7)
/* 0000108C 00001148  93 E1 00 0C */	stw r31, 0xc(r1)
/* 00001090 0000114C  7C 7F 1B 78 */	mr r31, r3
/* 00001094 00001150  C0 46 00 00 */	lfs f2, float_60_pik_000032a0@l(r6)
/* 00001098 00001154  38 60 00 05 */	li r3, 0x5
/* 0000109C 00001158  C0 65 00 00 */	lfs f3, float_neg950_pik_000032a4@l(r5)
/* 000010A0 0000115C  C0 84 00 00 */	lfs f4, float_1_pik_0000327c@l(r4)
/* 000010A4 00001160  4B FF EF 5D */	bl effStarStoneEntry
/* 000010A8 00001164  90 7F 00 C4 */	stw r3, 0xc4(r31)
/* 000010AC 00001168  38 60 00 02 */	li r3, 0x2
/* 000010B0 0000116C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000010B4 00001170  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 000010B8 00001174  7C 08 03 A6 */	mtlr r0
/* 000010BC 00001178  38 21 00 10 */	addi r1, r1, 0x10
/* 000010C0 0000117C  4E 80 00 20 */	blr
.endfn hoshi

# .text:0x734 | 0x10C4 | size: 0xE4
.fn npc_set_pos, local
/* 000010C4 00001180  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 000010C8 00001184  7C 08 02 A6 */	mflr r0
/* 000010CC 00001188  90 01 00 44 */	stw r0, 0x44(r1)
/* 000010D0 0000118C  39 61 00 40 */	addi r11, r1, 0x40
/* 000010D4 00001190  4B FF EF 2D */	bl _savefpr_29
/* 000010D8 00001194  BF A1 00 1C */	stmw r29, 0x1c(r1)
/* 000010DC 00001198  7C 7D 1B 78 */	mr r29, r3
/* 000010E0 0000119C  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 000010E4 000011A0  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 000010E8 000011A4  4B FF EF 19 */	bl evtGetValue
/* 000010EC 000011A8  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 000010F0 000011AC  7C 7E 1B 78 */	mr r30, r3
/* 000010F4 000011B0  7F A3 EB 78 */	mr r3, r29
/* 000010F8 000011B4  4B FF EF 09 */	bl evtGetFloat
/* 000010FC 000011B8  FF A0 08 90 */	fmr f29, f1
/* 00001100 000011BC  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 00001104 000011C0  7F A3 EB 78 */	mr r3, r29
/* 00001108 000011C4  4B FF EE F9 */	bl evtGetFloat
/* 0000110C 000011C8  FF C0 08 90 */	fmr f30, f1
/* 00001110 000011CC  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00001114 000011D0  7F A3 EB 78 */	mr r3, r29
/* 00001118 000011D4  4B FF EE E9 */	bl evtGetFloat
/* 0000111C 000011D8  FF E0 08 90 */	fmr f31, f1
/* 00001120 000011DC  7F A3 EB 78 */	mr r3, r29
/* 00001124 000011E0  7F C4 F3 78 */	mr r4, r30
/* 00001128 000011E4  4B FF EE D9 */	bl evtNpcNameToPtr
/* 0000112C 000011E8  3C 80 00 00 */	lis r4, vec3_pik_00002c78@ha
/* 00001130 000011EC  38 A4 00 00 */	addi r5, r4, vec3_pik_00002c78@l
/* 00001134 000011F0  80 05 00 00 */	lwz r0, 0x0(r5)
/* 00001138 000011F4  80 85 00 04 */	lwz r4, 0x4(r5)
/* 0000113C 000011F8  90 01 00 08 */	stw r0, 0x8(r1)
/* 00001140 000011FC  80 05 00 08 */	lwz r0, 0x8(r5)
/* 00001144 00001200  90 81 00 0C */	stw r4, 0xc(r1)
/* 00001148 00001204  D3 A1 00 08 */	stfs f29, 0x8(r1)
/* 0000114C 00001208  90 01 00 10 */	stw r0, 0x10(r1)
/* 00001150 0000120C  80 01 00 08 */	lwz r0, 0x8(r1)
/* 00001154 00001210  D3 C1 00 0C */	stfs f30, 0xc(r1)
/* 00001158 00001214  D3 E1 00 10 */	stfs f31, 0x10(r1)
/* 0000115C 00001218  80 81 00 0C */	lwz r4, 0xc(r1)
/* 00001160 0000121C  90 03 00 98 */	stw r0, 0x98(r3)
/* 00001164 00001220  80 01 00 10 */	lwz r0, 0x10(r1)
/* 00001168 00001224  90 83 00 9C */	stw r4, 0x9c(r3)
/* 0000116C 00001228  90 03 00 A0 */	stw r0, 0xa0(r3)
/* 00001170 0000122C  80 83 00 98 */	lwz r4, 0x98(r3)
/* 00001174 00001230  80 03 00 9C */	lwz r0, 0x9c(r3)
/* 00001178 00001234  90 83 00 8C */	stw r4, 0x8c(r3)
/* 0000117C 00001238  90 03 00 90 */	stw r0, 0x90(r3)
/* 00001180 0000123C  80 03 00 A0 */	lwz r0, 0xa0(r3)
/* 00001184 00001240  90 03 00 94 */	stw r0, 0x94(r3)
/* 00001188 00001244  38 60 00 02 */	li r3, 0x2
/* 0000118C 00001248  39 61 00 40 */	addi r11, r1, 0x40
/* 00001190 0000124C  4B FF EE 71 */	bl _restfpr_29
/* 00001194 00001250  BB A1 00 1C */	lmw r29, 0x1c(r1)
/* 00001198 00001254  80 01 00 44 */	lwz r0, 0x44(r1)
/* 0000119C 00001258  7C 08 03 A6 */	mtlr r0
/* 000011A0 0000125C  38 21 00 40 */	addi r1, r1, 0x40
/* 000011A4 00001260  4E 80 00 20 */	blr
.endfn npc_set_pos

# 0x000016A0..0x00001DE0 | size: 0x740
.rodata
.balign 8

# .rodata:0x0 | 0x16A0 | size: 0x9
.obj str_a_E_yuka_pik_00002b68, local
	.string "a_E_yuka"
.endobj str_a_E_yuka_pik_00002b68

# .rodata:0x9 | 0x16A9 | size: 0x3
.obj gap_03_000016A9_rodata, global
.hidden gap_03_000016A9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000016A9_rodata

# .rodata:0xC | 0x16AC | size: 0x7
.obj str_h_bero_pik_00002b74, local
	.string "h_bero"
.endobj str_h_bero_pik_00002b74

# .rodata:0x13 | 0x16B3 | size: 0x1
.obj gap_03_000016B3_rodata, global
.hidden gap_03_000016B3_rodata
	.byte 0x00
.endobj gap_03_000016B3_rodata

# .rodata:0x14 | 0x16B4 | size: 0x8
.obj str_h_dokan_pik_00002b7c, local
	.string "h_dokan"
.endobj str_h_dokan_pik_00002b7c

# .rodata:0x1C | 0x16BC | size: 0x8
.obj str_a_kaiga_pik_00002b84, local
	.string "a_kaiga"
.endobj str_a_kaiga_pik_00002b84

# .rodata:0x24 | 0x16C4 | size: 0xB
.obj str_ポワン探偵_pik_00002b8c, local
	.4byte 0x837C838F
	.4byte 0x83939254
	.byte 0x92, 0xE3, 0x00
.endobj str_ポワン探偵_pik_00002b8c

# .rodata:0x2F | 0x16CF | size: 0x1
.obj gap_03_000016CF_rodata, global
.hidden gap_03_000016CF_rodata
	.byte 0x00
.endobj gap_03_000016CF_rodata

# .rodata:0x30 | 0x16D0 | size: 0xC
.obj str_stg6_pik_21_pik_00002b98, local
	.string "stg6_pik_21"
.endobj str_stg6_pik_21_pik_00002b98

# .rodata:0x3C | 0x16DC | size: 0x7
.obj str_s_bero_pik_00002ba4, local
	.string "s_bero"
.endobj str_s_bero_pik_00002ba4

# .rodata:0x43 | 0x16E3 | size: 0x1
.obj gap_03_000016E3_rodata, global
.hidden gap_03_000016E3_rodata
	.byte 0x00
.endobj gap_03_000016E3_rodata

# .rodata:0x44 | 0x16E4 | size: 0x9
.obj str_door_1_a_pik_00002bac, local
	.string "door_1_a"
.endobj str_door_1_a_pik_00002bac

# .rodata:0x4D | 0x16ED | size: 0x3
.obj gap_03_000016ED_rodata, global
.hidden gap_03_000016ED_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000016ED_rodata

# .rodata:0x50 | 0x16F0 | size: 0x9
.obj str_door_1_b_pik_00002bb8, local
	.string "door_1_b"
.endobj str_door_1_b_pik_00002bb8

# .rodata:0x59 | 0x16F9 | size: 0x3
.obj gap_03_000016F9_rodata, global
.hidden gap_03_000016F9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000016F9_rodata

# .rodata:0x5C | 0x16FC | size: 0x7
.obj str_pik_01_pik_00002bc4, local
	.string "pik_01"
.endobj str_pik_01_pik_00002bc4

# .rodata:0x63 | 0x1703 | size: 0x1
.obj gap_03_00001703_rodata, global
.hidden gap_03_00001703_rodata
	.byte 0x00
.endobj gap_03_00001703_rodata

# .rodata:0x64 | 0x1704 | size: 0x7
.obj str_n_bero_pik_00002bcc, local
	.string "n_bero"
.endobj str_n_bero_pik_00002bcc

# .rodata:0x6B | 0x170B | size: 0x1
.obj gap_03_0000170B_rodata, global
.hidden gap_03_0000170B_rodata
	.byte 0x00
.endobj gap_03_0000170B_rodata

# .rodata:0x6C | 0x170C | size: 0x6
.obj str_dokan_pik_00002bd4, local
	.string "dokan"
.endobj str_dokan_pik_00002bd4

# .rodata:0x72 | 0x1712 | size: 0x2
.obj gap_03_00001712_rodata, global
.hidden gap_03_00001712_rodata
	.2byte 0x0000
.endobj gap_03_00001712_rodata

# .rodata:0x74 | 0x1714 | size: 0x7
.obj str_pik_03_pik_00002bdc, local
	.string "pik_03"
.endobj str_pik_03_pik_00002bdc

# .rodata:0x7B | 0x171B | size: 0x1
.obj gap_03_0000171B_rodata, global
.hidden gap_03_0000171B_rodata
	.byte 0x00
.endobj gap_03_0000171B_rodata

# .rodata:0x7C | 0x171C | size: 0x7
.obj str_aji_10_pik_00002be4, local
	.string "aji_10"
.endobj str_aji_10_pik_00002be4

# .rodata:0x83 | 0x1723 | size: 0x1
.obj gap_03_00001723_rodata, global
.hidden gap_03_00001723_rodata
	.byte 0x00
.endobj gap_03_00001723_rodata

# .rodata:0x84 | 0x1724 | size: 0x3
.obj str_me_pik_00002bec, local
	.string "me"
.endobj str_me_pik_00002bec

# .rodata:0x87 | 0x1727 | size: 0x1
.obj gap_03_00001727_rodata, global
.hidden gap_03_00001727_rodata
	.byte 0x00
.endobj gap_03_00001727_rodata

# .rodata:0x88 | 0x1728 | size: 0xC
.obj str_stg6_pik_19_pik_00002bf0, local
	.string "stg6_pik_19"
.endobj str_stg6_pik_19_pik_00002bf0

# .rodata:0x94 | 0x1734 | size: 0xC
.obj str_stg6_pik_22_pik_00002bfc, local
	.string "stg6_pik_22"
.endobj str_stg6_pik_22_pik_00002bfc

# .rodata:0xA0 | 0x1740 | size: 0xC
.obj str_stg6_pik_23_pik_00002c08, local
	.string "stg6_pik_23"
.endobj str_stg6_pik_23_pik_00002c08

# .rodata:0xAC | 0x174C | size: 0x14
.obj str_stg7_pik_clear_09_1_pik_00002c14, local
	.string "stg7_pik_clear_09_1"
.endobj str_stg7_pik_clear_09_1_pik_00002c14

# .rodata:0xC0 | 0x1760 | size: 0x16
.obj str_stg7_pik_clear_09_1__pik_00002c28, local
	.string "stg7_pik_clear_09_1_1"
.endobj str_stg7_pik_clear_09_1__pik_00002c28

# .rodata:0xD6 | 0x1776 | size: 0x2
.obj gap_03_00001776_rodata, global
.hidden gap_03_00001776_rodata
	.2byte 0x0000
.endobj gap_03_00001776_rodata

# .rodata:0xD8 | 0x1778 | size: 0xB
.obj str_マジョリン_pik_00002c40, local
	.4byte 0x837D8357
	.4byte 0x8387838A
	.byte 0x83, 0x93, 0x00
.endobj str_マジョリン_pik_00002c40

# .rodata:0xE3 | 0x1783 | size: 0x1
.obj gap_03_00001783_rodata, global
.hidden gap_03_00001783_rodata
	.byte 0x00
.endobj gap_03_00001783_rodata

# .rodata:0xE4 | 0x1784 | size: 0x9
.obj str_マリリン_pik_00002c4c, local
	.4byte 0x837D838A
	.4byte 0x838A8393
	.byte 0x00
.endobj str_マリリン_pik_00002c4c

# .rodata:0xED | 0x178D | size: 0x3
.obj gap_03_0000178D_rodata, global
.hidden gap_03_0000178D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000178D_rodata

# .rodata:0xF0 | 0x1790 | size: 0x9
.obj str_ランペル_pik_00002c58, local
	.4byte 0x83898393
	.4byte 0x8379838B
	.byte 0x00
.endobj str_ランペル_pik_00002c58

# .rodata:0xF9 | 0x1799 | size: 0x3
.obj gap_03_00001799_rodata, global
.hidden gap_03_00001799_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001799_rodata

# .rodata:0xFC | 0x179C | size: 0x9
.obj str_パタクリ_pik_00002c64, local
	.4byte 0x8370835E
	.4byte 0x834E838A
	.byte 0x00
.endobj str_パタクリ_pik_00002c64

# .rodata:0x105 | 0x17A5 | size: 0x3
.obj gap_03_000017A5_rodata, global
.hidden gap_03_000017A5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000017A5_rodata

# .rodata:0x108 | 0x17A8 | size: 0x5
.obj str_ババ_pik_00002c70, local
	.4byte 0x836F836F
	.byte 0x00
.endobj str_ババ_pik_00002c70

# .rodata:0x10D | 0x17AD | size: 0x3
.obj gap_03_000017AD_rodata, global
.hidden gap_03_000017AD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000017AD_rodata

# .rodata:0x110 | 0x17B0 | size: 0xC
.obj vec3_pik_00002c78, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj vec3_pik_00002c78

# .rodata:0x11C | 0x17BC | size: 0x1D
.obj str_SFX_VOICE_MARIO_SURP_pik_00002c84, local
	.string "SFX_VOICE_MARIO_SURPRISED2_3"
.endobj str_SFX_VOICE_MARIO_SURP_pik_00002c84

# .rodata:0x139 | 0x17D9 | size: 0x3
.obj gap_03_000017D9_rodata, global
.hidden gap_03_000017D9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000017D9_rodata

# .rodata:0x13C | 0x17DC | size: 0x5
.obj str_eff0_pik_00002ca4, local
	.string "eff0"
.endobj str_eff0_pik_00002ca4

# .rodata:0x141 | 0x17E1 | size: 0x3
.obj gap_03_000017E1_rodata, global
.hidden gap_03_000017E1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000017E1_rodata

# .rodata:0x144 | 0x17E4 | size: 0x5
.obj str_eff1_pik_00002cac, local
	.string "eff1"
.endobj str_eff1_pik_00002cac

# .rodata:0x149 | 0x17E9 | size: 0x3
.obj gap_03_000017E9_rodata, global
.hidden gap_03_000017E9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000017E9_rodata

# .rodata:0x14C | 0x17EC | size: 0x16
.obj str_BGM_FF_ENV_SURPRISED_pik_00002cb4, local
	.string "BGM_FF_ENV_SURPRISED1"
.endobj str_BGM_FF_ENV_SURPRISED_pik_00002cb4

# .rodata:0x162 | 0x1802 | size: 0x2
.obj gap_03_00001802_rodata, global
.hidden gap_03_00001802_rodata
	.2byte 0x0000
.endobj gap_03_00001802_rodata

# .rodata:0x164 | 0x1804 | size: 0x9
.obj str_MJR_A2_1_pik_00002ccc, local
	.string "MJR_A2_1"
.endobj str_MJR_A2_1_pik_00002ccc

# .rodata:0x16D | 0x180D | size: 0x3
.obj gap_03_0000180D_rodata, global
.hidden gap_03_0000180D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000180D_rodata

# .rodata:0x170 | 0x1810 | size: 0x1A
.obj str_SFX_STG6_STARATONE_L_pik_00002cd8, local
	.string "SFX_STG6_STARATONE_LIGHT1"
.endobj str_SFX_STG6_STARATONE_L_pik_00002cd8

# .rodata:0x18A | 0x182A | size: 0x2
.obj gap_03_0000182A_rodata, global
.hidden gap_03_0000182A_rodata
	.2byte 0x0000
.endobj gap_03_0000182A_rodata

# .rodata:0x18C | 0x182C | size: 0xD
.obj str_stardust_n64_pik_00002cf4, local
	.string "stardust_n64"
.endobj str_stardust_n64_pik_00002cf4

# .rodata:0x199 | 0x1839 | size: 0x3
.obj gap_03_00001839_rodata, global
.hidden gap_03_00001839_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001839_rodata

# .rodata:0x19C | 0x183C | size: 0xF
.obj str_BGM_EVT_WITCH1_pik_00002d04, local
	.string "BGM_EVT_WITCH1"
.endobj str_BGM_EVT_WITCH1_pik_00002d04

# .rodata:0x1AB | 0x184B | size: 0x1
.obj gap_03_0000184B_rodata, global
.hidden gap_03_0000184B_rodata
	.byte 0x00
.endobj gap_03_0000184B_rodata

# .rodata:0x1AC | 0x184C | size: 0xC
.obj str_stg6_pik_13_pik_00002d14, local
	.string "stg6_pik_13"
.endobj str_stg6_pik_13_pik_00002d14

# .rodata:0x1B8 | 0x1858 | size: 0xC
.obj str_stg6_pik_14_pik_00002d20, local
	.string "stg6_pik_14"
.endobj str_stg6_pik_14_pik_00002d20

# .rodata:0x1C4 | 0x1864 | size: 0x6
.obj str_mario_pik_00002d2c, local
	.string "mario"
.endobj str_mario_pik_00002d2c

# .rodata:0x1CA | 0x186A | size: 0x2
.obj gap_03_0000186A_rodata, global
.hidden gap_03_0000186A_rodata
	.2byte 0x0000
.endobj gap_03_0000186A_rodata

# .rodata:0x1CC | 0x186C | size: 0xE
.obj str_stg6_pik_15_0_pik_00002d34, local
	.string "stg6_pik_15_0"
.endobj str_stg6_pik_15_0_pik_00002d34

# .rodata:0x1DA | 0x187A | size: 0x2
.obj gap_03_0000187A_rodata, global
.hidden gap_03_0000187A_rodata
	.2byte 0x0000
.endobj gap_03_0000187A_rodata

# .rodata:0x1DC | 0x187C | size: 0x6
.obj str_party_pik_00002d44, local
	.string "party"
.endobj str_party_pik_00002d44

# .rodata:0x1E2 | 0x1882 | size: 0x2
.obj gap_03_00001882_rodata, global
.hidden gap_03_00001882_rodata
	.2byte 0x0000
.endobj gap_03_00001882_rodata

# .rodata:0x1E4 | 0x1884 | size: 0xE
.obj str_stg6_pik_15_1_pik_00002d4c, local
	.string "stg6_pik_15_1"
.endobj str_stg6_pik_15_1_pik_00002d4c

# .rodata:0x1F2 | 0x1892 | size: 0x2
.obj gap_03_00001892_rodata, global
.hidden gap_03_00001892_rodata
	.2byte 0x0000
.endobj gap_03_00001892_rodata

# .rodata:0x1F4 | 0x1894 | size: 0xE
.obj str_stg6_pik_15_2_pik_00002d5c, local
	.string "stg6_pik_15_2"
.endobj str_stg6_pik_15_2_pik_00002d5c

# .rodata:0x202 | 0x18A2 | size: 0x2
.obj gap_03_000018A2_rodata, global
.hidden gap_03_000018A2_rodata
	.2byte 0x0000
.endobj gap_03_000018A2_rodata

# .rodata:0x204 | 0x18A4 | size: 0xE
.obj str_stg6_pik_15_3_pik_00002d6c, local
	.string "stg6_pik_15_3"
.endobj str_stg6_pik_15_3_pik_00002d6c

# .rodata:0x212 | 0x18B2 | size: 0x2
.obj gap_03_000018B2_rodata, global
.hidden gap_03_000018B2_rodata
	.2byte 0x0000
.endobj gap_03_000018B2_rodata

# .rodata:0x214 | 0x18B4 | size: 0xE
.obj str_stg6_pik_15_4_pik_00002d7c, local
	.string "stg6_pik_15_4"
.endobj str_stg6_pik_15_4_pik_00002d7c

# .rodata:0x222 | 0x18C2 | size: 0x2
.obj gap_03_000018C2_rodata, global
.hidden gap_03_000018C2_rodata
	.2byte 0x0000
.endobj gap_03_000018C2_rodata

# .rodata:0x224 | 0x18C4 | size: 0xE
.obj str_stg6_pik_15_5_pik_00002d8c, local
	.string "stg6_pik_15_5"
.endobj str_stg6_pik_15_5_pik_00002d8c

# .rodata:0x232 | 0x18D2 | size: 0x2
.obj gap_03_000018D2_rodata, global
.hidden gap_03_000018D2_rodata
	.2byte 0x0000
.endobj gap_03_000018D2_rodata

# .rodata:0x234 | 0x18D4 | size: 0xE
.obj str_stg6_pik_15_6_pik_00002d9c, local
	.string "stg6_pik_15_6"
.endobj str_stg6_pik_15_6_pik_00002d9c

# .rodata:0x242 | 0x18E2 | size: 0x2
.obj gap_03_000018E2_rodata, global
.hidden gap_03_000018E2_rodata
	.2byte 0x0000
.endobj gap_03_000018E2_rodata

# .rodata:0x244 | 0x18E4 | size: 0xC
.obj str_stg6_pik_16_pik_00002dac, local
	.string "stg6_pik_16"
.endobj str_stg6_pik_16_pik_00002dac

# .rodata:0x250 | 0x18F0 | size: 0x1B
.obj str_SFX_VOICE_MARIO_HAND_pik_00002db8, local
	.string "SFX_VOICE_MARIO_HAND_UP1_4"
.endobj str_SFX_VOICE_MARIO_HAND_pik_00002db8

# .rodata:0x26B | 0x190B | size: 0x1
.obj gap_03_0000190B_rodata, global
.hidden gap_03_0000190B_rodata
	.byte 0x00
.endobj gap_03_0000190B_rodata

# .rodata:0x26C | 0x190C | size: 0x6
.obj str_M_I_2_pik_00002dd4, local
	.string "M_I_2"
.endobj str_M_I_2_pik_00002dd4

# .rodata:0x272 | 0x1912 | size: 0x2
.obj gap_03_00001912_rodata, global
.hidden gap_03_00001912_rodata
	.2byte 0x0000
.endobj gap_03_00001912_rodata

# .rodata:0x274 | 0x1914 | size: 0x6
.obj str_M_S_1_pik_00002ddc, local
	.string "M_S_1"
.endobj str_M_S_1_pik_00002ddc

# .rodata:0x27A | 0x191A | size: 0x2
.obj gap_03_0000191A_rodata, global
.hidden gap_03_0000191A_rodata
	.2byte 0x0000
.endobj gap_03_0000191A_rodata

# .rodata:0x27C | 0x191C | size: 0xC
.obj str_stg6_pik_17_pik_00002de4, local
	.string "stg6_pik_17"
.endobj str_stg6_pik_17_pik_00002de4

# .rodata:0x288 | 0x1928 | size: 0x17
.obj str_SFX_VOICE_MARIO_AWAK_pik_00002df0, local
	.string "SFX_VOICE_MARIO_AWAKE1"
.endobj str_SFX_VOICE_MARIO_AWAK_pik_00002df0

# .rodata:0x29F | 0x193F | size: 0x1
.obj gap_03_0000193F_rodata, global
.hidden gap_03_0000193F_rodata
	.byte 0x00
.endobj gap_03_0000193F_rodata

# .rodata:0x2A0 | 0x1940 | size: 0x7
.obj str_M_N_5B_pik_00002e08, local
	.string "M_N_5B"
.endobj str_M_N_5B_pik_00002e08

# .rodata:0x2A7 | 0x1947 | size: 0x1
.obj gap_03_00001947_rodata, global
.hidden gap_03_00001947_rodata
	.byte 0x00
.endobj gap_03_00001947_rodata

# .rodata:0x2A8 | 0x1948 | size: 0xC
.obj str_stg6_pik_18_pik_00002e10, local
	.string "stg6_pik_18"
.endobj str_stg6_pik_18_pik_00002e10

# .rodata:0x2B4 | 0x1954 | size: 0x7
.obj str_ka_ten_pik_00002e1c, local
	.string "ka_ten"
.endobj str_ka_ten_pik_00002e1c

# .rodata:0x2BB | 0x195B | size: 0x1
.obj gap_03_0000195B_rodata, global
.hidden gap_03_0000195B_rodata
	.byte 0x00
.endobj gap_03_0000195B_rodata

# .rodata:0x2BC | 0x195C | size: 0x15
.obj str_SFX_STG6_CURTAIN_UP1_pik_00002e24, local
	.string "SFX_STG6_CURTAIN_UP1"
.endobj str_SFX_STG6_CURTAIN_UP1_pik_00002e24

# .rodata:0x2D1 | 0x1971 | size: 0x3
.obj gap_03_00001971_rodata, global
.hidden gap_03_00001971_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001971_rodata

# .rodata:0x2D4 | 0x1974 | size: 0x9
.obj str_a_ka_ten_pik_00002e3c, local
	.string "a_ka_ten"
.endobj str_a_ka_ten_pik_00002e3c

# .rodata:0x2DD | 0x197D | size: 0x3
.obj gap_03_0000197D_rodata, global
.hidden gap_03_0000197D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000197D_rodata

# .rodata:0x2E0 | 0x1980 | size: 0x14
.obj str_BGM_FF_ENV_SUCCESS1_pik_00002e48, local
	.string "BGM_FF_ENV_SUCCESS1"
.endobj str_BGM_FF_ENV_SUCCESS1_pik_00002e48

# .rodata:0x2F4 | 0x1994 | size: 0xC
.obj str_stg6_pik_24_pik_00002e5c, local
	.string "stg6_pik_24"
.endobj str_stg6_pik_24_pik_00002e5c

# .rodata:0x300 | 0x19A0 | size: 0x14
.obj str_stg7_pik_clear_09_2_pik_00002e68, local
	.string "stg7_pik_clear_09_2"
.endobj str_stg7_pik_clear_09_2_pik_00002e68

# .rodata:0x314 | 0x19B4 | size: 0xC
.obj str_stg6_pik_25_pik_00002e7c, local
	.string "stg6_pik_25"
.endobj str_stg6_pik_25_pik_00002e7c

# .rodata:0x320 | 0x19C0 | size: 0x5
.obj str_nise_pik_00002e88, local
	.string "nise"
.endobj str_nise_pik_00002e88

# .rodata:0x325 | 0x19C5 | size: 0x3
.obj gap_03_000019C5_rodata, global
.hidden gap_03_000019C5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000019C5_rodata

# .rodata:0x328 | 0x19C8 | size: 0xF
.obj str_BGM_EVT_KUPPA1_pik_00002e90, local
	.string "BGM_EVT_KUPPA1"
.endobj str_BGM_EVT_KUPPA1_pik_00002e90

# .rodata:0x337 | 0x19D7 | size: 0x1
.obj gap_03_000019D7_rodata, global
.hidden gap_03_000019D7_rodata
	.byte 0x00
.endobj gap_03_000019D7_rodata

# .rodata:0x338 | 0x19D8 | size: 0x8
.obj str_KPA_S_1_pik_00002ea0, local
	.string "KPA_S_1"
.endobj str_KPA_S_1_pik_00002ea0

# .rodata:0x340 | 0x19E0 | size: 0x8
.obj str_KPA_T_1_pik_00002ea8, local
	.string "KPA_T_1"
.endobj str_KPA_T_1_pik_00002ea8

# .rodata:0x348 | 0x19E8 | size: 0x10
.obj str_kpa_stg7_013_01_pik_00002eb0, local
	.string "kpa_stg7_013_01"
.endobj str_kpa_stg7_013_01_pik_00002eb0

# .rodata:0x358 | 0x19F8 | size: 0x19
.obj str_SFX_VOICE_KOOPA_HAPP_pik_00002ec0, local
	.string "SFX_VOICE_KOOPA_HAPPY2_1"
.endobj str_SFX_VOICE_KOOPA_HAPP_pik_00002ec0

# .rodata:0x371 | 0x1A11 | size: 0x3
.obj gap_03_00001A11_rodata, global
.hidden gap_03_00001A11_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001A11_rodata

# .rodata:0x374 | 0x1A14 | size: 0x8
.obj str_KPA_Y_1_pik_00002edc, local
	.string "KPA_Y_1"
.endobj str_KPA_Y_1_pik_00002edc

# .rodata:0x37C | 0x1A1C | size: 0xB
.obj str_sub_hikari_pik_00002ee4, local
	.string "sub_hikari"
.endobj str_sub_hikari_pik_00002ee4

# .rodata:0x387 | 0x1A27 | size: 0x1
.obj gap_03_00001A27_rodata, global
.hidden gap_03_00001A27_rodata
	.byte 0x00
.endobj gap_03_00001A27_rodata

# .rodata:0x388 | 0x1A28 | size: 0xE
.obj str_radiation_n64_pik_00002ef0, local
	.string "radiation_n64"
.endobj str_radiation_n64_pik_00002ef0

# .rodata:0x396 | 0x1A36 | size: 0x2
.obj gap_03_00001A36_rodata, global
.hidden gap_03_00001A36_rodata
	.2byte 0x0000
.endobj gap_03_00001A36_rodata

# .rodata:0x398 | 0x1A38 | size: 0x7
.obj str_sub_bg_pik_00002f00, local
	.string "sub_bg"
.endobj str_sub_bg_pik_00002f00

# .rodata:0x39F | 0x1A3F | size: 0x1
.obj gap_03_00001A3F_rodata, global
.hidden gap_03_00001A3F_rodata
	.byte 0x00
.endobj gap_03_00001A3F_rodata

# .rodata:0x3A0 | 0x1A40 | size: 0x8
.obj str_itemget_pik_00002f08, local
	.string "itemget"
.endobj str_itemget_pik_00002f08

# .rodata:0x3A8 | 0x1A48 | size: 0x1B
.obj str_BGM_FF_GET_IMPORTANT_pik_00002f10, local
	.string "BGM_FF_GET_IMPORTANT_ITEM1"
.endobj str_BGM_FF_GET_IMPORTANT_pik_00002f10

# .rodata:0x3C3 | 0x1A63 | size: 0x1
.obj gap_03_00001A63_rodata, global
.hidden gap_03_00001A63_rodata
	.byte 0x00
.endobj gap_03_00001A63_rodata

# .rodata:0x3C4 | 0x1A64 | size: 0x8
.obj str_KPA_S_6_pik_00002f2c, local
	.string "KPA_S_6"
.endobj str_KPA_S_6_pik_00002f2c

# .rodata:0x3CC | 0x1A6C | size: 0x8
.obj str_KPA_T_6_pik_00002f34, local
	.string "KPA_T_6"
.endobj str_KPA_T_6_pik_00002f34

# .rodata:0x3D4 | 0x1A74 | size: 0xD
.obj str_kpa_stg7_014_pik_00002f3c, local
	.string "kpa_stg7_014"
.endobj str_kpa_stg7_014_pik_00002f3c

# .rodata:0x3E1 | 0x1A81 | size: 0x3
.obj gap_03_00001A81_rodata, global
.hidden gap_03_00001A81_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001A81_rodata

# .rodata:0x3E4 | 0x1A84 | size: 0x4
.obj str_U_1_pik_00002f4c, local
	.string "U_1"
.endobj str_U_1_pik_00002f4c

# .rodata:0x3E8 | 0x1A88 | size: 0x4
.obj str_T_5_pik_00002f50, local
	.string "T_5"
.endobj str_T_5_pik_00002f50

# .rodata:0x3EC | 0x1A8C | size: 0xD
.obj str_kpa_stg7_015_pik_00002f54, local
	.string "kpa_stg7_015"
.endobj str_kpa_stg7_015_pik_00002f54

# .rodata:0x3F9 | 0x1A99 | size: 0x3
.obj gap_03_00001A99_rodata, global
.hidden gap_03_00001A99_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001A99_rodata

# .rodata:0x3FC | 0x1A9C | size: 0x1
.obj zero_pik_00002f64, local
	.byte 0x00
.endobj zero_pik_00002f64

# .rodata:0x3FD | 0x1A9D | size: 0x3
.obj gap_03_00001A9D_rodata, global
.hidden gap_03_00001A9D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001A9D_rodata

# .rodata:0x400 | 0x1AA0 | size: 0xD
.obj str_kpa_stg7_016_pik_00002f68, local
	.string "kpa_stg7_016"
.endobj str_kpa_stg7_016_pik_00002f68

# .rodata:0x40D | 0x1AAD | size: 0x3
.obj gap_03_00001AAD_rodata, global
.hidden gap_03_00001AAD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001AAD_rodata

# .rodata:0x410 | 0x1AB0 | size: 0x4
.obj str_S_1_pik_00002f78, local
	.string "S_1"
.endobj str_S_1_pik_00002f78

# .rodata:0x414 | 0x1AB4 | size: 0x4
.obj str_T_1_pik_00002f7c, local
	.string "T_1"
.endobj str_T_1_pik_00002f7c

# .rodata:0x418 | 0x1AB8 | size: 0xD
.obj str_kpa_stg7_017_pik_00002f80, local
	.string "kpa_stg7_017"
.endobj str_kpa_stg7_017_pik_00002f80

# .rodata:0x425 | 0x1AC5 | size: 0x3
.obj gap_03_00001AC5_rodata, global
.hidden gap_03_00001AC5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001AC5_rodata

# .rodata:0x428 | 0x1AC8 | size: 0xD
.obj str_kpa_stg7_018_pik_00002f90, local
	.string "kpa_stg7_018"
.endobj str_kpa_stg7_018_pik_00002f90

# .rodata:0x435 | 0x1AD5 | size: 0x3
.obj gap_03_00001AD5_rodata, global
.hidden gap_03_00001AD5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001AD5_rodata

# .rodata:0x438 | 0x1AD8 | size: 0xD
.obj str_kpa_stg7_019_pik_00002fa0, local
	.string "kpa_stg7_019"
.endobj str_kpa_stg7_019_pik_00002fa0

# .rodata:0x445 | 0x1AE5 | size: 0x3
.obj gap_03_00001AE5_rodata, global
.hidden gap_03_00001AE5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001AE5_rodata

# .rodata:0x448 | 0x1AE8 | size: 0xD
.obj str_kpa_stg7_020_pik_00002fb0, local
	.string "kpa_stg7_020"
.endobj str_kpa_stg7_020_pik_00002fb0

# .rodata:0x455 | 0x1AF5 | size: 0x3
.obj gap_03_00001AF5_rodata, global
.hidden gap_03_00001AF5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001AF5_rodata

# .rodata:0x458 | 0x1AF8 | size: 0xD
.obj str_kpa_stg7_021_pik_00002fc0, local
	.string "kpa_stg7_021"
.endobj str_kpa_stg7_021_pik_00002fc0

# .rodata:0x465 | 0x1B05 | size: 0x3
.obj gap_03_00001B05_rodata, global
.hidden gap_03_00001B05_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001B05_rodata

# .rodata:0x468 | 0x1B08 | size: 0xD
.obj str_kpa_stg7_022_pik_00002fd0, local
	.string "kpa_stg7_022"
.endobj str_kpa_stg7_022_pik_00002fd0

# .rodata:0x475 | 0x1B15 | size: 0x3
.obj gap_03_00001B15_rodata, global
.hidden gap_03_00001B15_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001B15_rodata

# .rodata:0x478 | 0x1B18 | size: 0xD
.obj str_kpa_stg7_023_pik_00002fe0, local
	.string "kpa_stg7_023"
.endobj str_kpa_stg7_023_pik_00002fe0

# .rodata:0x485 | 0x1B25 | size: 0x3
.obj gap_03_00001B25_rodata, global
.hidden gap_03_00001B25_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001B25_rodata

# .rodata:0x488 | 0x1B28 | size: 0xD
.obj str_kpa_stg7_024_pik_00002ff0, local
	.string "kpa_stg7_024"
.endobj str_kpa_stg7_024_pik_00002ff0

# .rodata:0x495 | 0x1B35 | size: 0x3
.obj gap_03_00001B35_rodata, global
.hidden gap_03_00001B35_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001B35_rodata

# .rodata:0x498 | 0x1B38 | size: 0x16
.obj str_BGM_FF_ENV_SURPRISED_pik_00003000, local
	.string "BGM_FF_ENV_SURPRISED3"
.endobj str_BGM_FF_ENV_SURPRISED_pik_00003000

# .rodata:0x4AE | 0x1B4E | size: 0x2
.obj gap_03_00001B4E_rodata, global
.hidden gap_03_00001B4E_rodata
	.2byte 0x0000
.endobj gap_03_00001B4E_rodata

# .rodata:0x4B0 | 0x1B50 | size: 0x1D
.obj str_SFX_VOICE_KOOPA_SURP_pik_00003018, local
	.string "SFX_VOICE_KOOPA_SURPRISED2_1"
.endobj str_SFX_VOICE_KOOPA_SURP_pik_00003018

# .rodata:0x4CD | 0x1B6D | size: 0x3
.obj gap_03_00001B6D_rodata, global
.hidden gap_03_00001B6D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001B6D_rodata

# .rodata:0x4D0 | 0x1B70 | size: 0x4
.obj str_P_1_pik_00003038, local
	.string "P_1"
.endobj str_P_1_pik_00003038

# .rodata:0x4D4 | 0x1B74 | size: 0x8
.obj str_KPA_S_5_pik_0000303c, local
	.string "KPA_S_5"
.endobj str_KPA_S_5_pik_0000303c

# .rodata:0x4DC | 0x1B7C | size: 0x8
.obj str_KPA_T_5_pik_00003044, local
	.string "KPA_T_5"
.endobj str_KPA_T_5_pik_00003044

# .rodata:0x4E4 | 0x1B84 | size: 0xD
.obj str_kpa_stg7_025_pik_0000304c, local
	.string "kpa_stg7_025"
.endobj str_kpa_stg7_025_pik_0000304c

# .rodata:0x4F1 | 0x1B91 | size: 0x3
.obj gap_03_00001B91_rodata, global
.hidden gap_03_00001B91_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001B91_rodata

# .rodata:0x4F4 | 0x1B94 | size: 0x16
.obj str_SFX_KUPPA_STONE_DOWN_pik_0000305c, local
	.string "SFX_KUPPA_STONE_DOWN1"
.endobj str_SFX_KUPPA_STONE_DOWN_pik_0000305c

# .rodata:0x50A | 0x1BAA | size: 0x2
.obj gap_03_00001BAA_rodata, global
.hidden gap_03_00001BAA_rodata
	.2byte 0x0000
.endobj gap_03_00001BAA_rodata

# .rodata:0x50C | 0x1BAC | size: 0x17
.obj str_SFX_KUPPA_STONE_BREA_pik_00003074, local
	.string "SFX_KUPPA_STONE_BREAK1"
.endobj str_SFX_KUPPA_STONE_BREA_pik_00003074

# .rodata:0x523 | 0x1BC3 | size: 0x1
.obj gap_03_00001BC3_rodata, global
.hidden gap_03_00001BC3_rodata
	.byte 0x00
.endobj gap_03_00001BC3_rodata

# .rodata:0x524 | 0x1BC4 | size: 0xD
.obj str_kpa_stg7_026_pik_0000308c, local
	.string "kpa_stg7_026"
.endobj str_kpa_stg7_026_pik_0000308c

# .rodata:0x531 | 0x1BD1 | size: 0x3
.obj gap_03_00001BD1_rodata, global
.hidden gap_03_00001BD1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001BD1_rodata

# .rodata:0x534 | 0x1BD4 | size: 0xD
.obj str_kpa_stg7_027_pik_0000309c, local
	.string "kpa_stg7_027"
.endobj str_kpa_stg7_027_pik_0000309c

# .rodata:0x541 | 0x1BE1 | size: 0x3
.obj gap_03_00001BE1_rodata, global
.hidden gap_03_00001BE1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001BE1_rodata

# .rodata:0x544 | 0x1BE4 | size: 0xD
.obj str_kpa_stg7_028_pik_000030ac, local
	.string "kpa_stg7_028"
.endobj str_kpa_stg7_028_pik_000030ac

# .rodata:0x551 | 0x1BF1 | size: 0x3
.obj gap_03_00001BF1_rodata, global
.hidden gap_03_00001BF1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001BF1_rodata

# .rodata:0x554 | 0x1BF4 | size: 0x8
.obj str_KPA_I_2_pik_000030bc, local
	.string "KPA_I_2"
.endobj str_KPA_I_2_pik_000030bc

# .rodata:0x55C | 0x1BFC | size: 0x11
.obj str_SFX_KUPPA_ANGRY1_pik_000030c4, local
	.string "SFX_KUPPA_ANGRY1"
.endobj str_SFX_KUPPA_ANGRY1_pik_000030c4

# .rodata:0x56D | 0x1C0D | size: 0x3
.obj gap_03_00001C0D_rodata, global
.hidden gap_03_00001C0D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001C0D_rodata

# .rodata:0x570 | 0x1C10 | size: 0x11
.obj str_SFX_KUPPA_ANGRY2_pik_000030d8, local
	.string "SFX_KUPPA_ANGRY2"
.endobj str_SFX_KUPPA_ANGRY2_pik_000030d8

# .rodata:0x581 | 0x1C21 | size: 0x3
.obj gap_03_00001C21_rodata, global
.hidden gap_03_00001C21_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001C21_rodata

# .rodata:0x584 | 0x1C24 | size: 0xD
.obj str_kpa_stg7_029_pik_000030ec, local
	.string "kpa_stg7_029"
.endobj str_kpa_stg7_029_pik_000030ec

# .rodata:0x591 | 0x1C31 | size: 0x3
.obj gap_03_00001C31_rodata, global
.hidden gap_03_00001C31_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001C31_rodata

# .rodata:0x594 | 0x1C34 | size: 0x1D
.obj str_SFX_KUPPA_PKURI_GLAS_pik_000030fc, local
	.string "SFX_KUPPA_PKURI_GLASS_BREAK1"
.endobj str_SFX_KUPPA_PKURI_GLAS_pik_000030fc

# .rodata:0x5B1 | 0x1C51 | size: 0x3
.obj gap_03_00001C51_rodata, global
.hidden gap_03_00001C51_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001C51_rodata

# .rodata:0x5B4 | 0x1C54 | size: 0x1D
.obj str_SFX_VOICE_KOOPA_SURP_pik_0000311c, local
	.string "SFX_VOICE_KOOPA_SURPRISED1_2"
.endobj str_SFX_VOICE_KOOPA_SURP_pik_0000311c

# .rodata:0x5D1 | 0x1C71 | size: 0x3
.obj gap_03_00001C71_rodata, global
.hidden gap_03_00001C71_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001C71_rodata

# .rodata:0x5D4 | 0x1C74 | size: 0xD
.obj str_kpa_stg7_030_pik_0000313c, local
	.string "kpa_stg7_030"
.endobj str_kpa_stg7_030_pik_0000313c

# .rodata:0x5E1 | 0x1C81 | size: 0x3
.obj gap_03_00001C81_rodata, global
.hidden gap_03_00001C81_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001C81_rodata

# .rodata:0x5E4 | 0x1C84 | size: 0x8
.obj str_PTK_A_1_pik_0000314c, local
	.string "PTK_A_1"
.endobj str_PTK_A_1_pik_0000314c

# .rodata:0x5EC | 0x1C8C | size: 0x8
.obj str_PTK_S_2_pik_00003154, local
	.string "PTK_S_2"
.endobj str_PTK_S_2_pik_00003154

# .rodata:0x5F4 | 0x1C94 | size: 0x7
.obj str_kemuri_pik_0000315c, local
	.string "kemuri"
.endobj str_kemuri_pik_0000315c

# .rodata:0x5FB | 0x1C9B | size: 0x1
.obj gap_03_00001C9B_rodata, global
.hidden gap_03_00001C9B_rodata
	.byte 0x00
.endobj gap_03_00001C9B_rodata

# .rodata:0x5FC | 0x1C9C | size: 0x19
.obj str_SFX_KUPPA_PKURI_LAND_pik_00003164, local
	.string "SFX_KUPPA_PKURI_LANDING1"
.endobj str_SFX_KUPPA_PKURI_LAND_pik_00003164

# .rodata:0x615 | 0x1CB5 | size: 0x3
.obj gap_03_00001CB5_rodata, global
.hidden gap_03_00001CB5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001CB5_rodata

# .rodata:0x618 | 0x1CB8 | size: 0x8
.obj str_PTK_S_3_pik_00003180, local
	.string "PTK_S_3"
.endobj str_PTK_S_3_pik_00003180

# .rodata:0x620 | 0x1CC0 | size: 0xD
.obj str_kpa_stg7_031_pik_00003188, local
	.string "kpa_stg7_031"
.endobj str_kpa_stg7_031_pik_00003188

# .rodata:0x62D | 0x1CCD | size: 0x3
.obj gap_03_00001CCD_rodata, global
.hidden gap_03_00001CCD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001CCD_rodata

# .rodata:0x630 | 0x1CD0 | size: 0x8
.obj str_PTK_T_2_pik_00003198, local
	.string "PTK_T_2"
.endobj str_PTK_T_2_pik_00003198

# .rodata:0x638 | 0x1CD8 | size: 0xD
.obj str_kpa_stg7_032_pik_000031a0, local
	.string "kpa_stg7_032"
.endobj str_kpa_stg7_032_pik_000031a0

# .rodata:0x645 | 0x1CE5 | size: 0x3
.obj gap_03_00001CE5_rodata, global
.hidden gap_03_00001CE5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001CE5_rodata

# .rodata:0x648 | 0x1CE8 | size: 0xD
.obj str_kpa_stg7_033_pik_000031b0, local
	.string "kpa_stg7_033"
.endobj str_kpa_stg7_033_pik_000031b0

# .rodata:0x655 | 0x1CF5 | size: 0x3
.obj gap_03_00001CF5_rodata, global
.hidden gap_03_00001CF5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001CF5_rodata

# .rodata:0x658 | 0x1CF8 | size: 0xD
.obj str_kpa_stg7_034_pik_000031c0, local
	.string "kpa_stg7_034"
.endobj str_kpa_stg7_034_pik_000031c0

# .rodata:0x665 | 0x1D05 | size: 0x3
.obj gap_03_00001D05_rodata, global
.hidden gap_03_00001D05_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001D05_rodata

# .rodata:0x668 | 0x1D08 | size: 0x8
.obj str_KPA_S_4_pik_000031d0, local
	.string "KPA_S_4"
.endobj str_KPA_S_4_pik_000031d0

# .rodata:0x670 | 0x1D10 | size: 0x8
.obj str_KPA_T_3_pik_000031d8, local
	.string "KPA_T_3"
.endobj str_KPA_T_3_pik_000031d8

# .rodata:0x678 | 0x1D18 | size: 0xD
.obj str_kpa_stg7_035_pik_000031e0, local
	.string "kpa_stg7_035"
.endobj str_kpa_stg7_035_pik_000031e0

# .rodata:0x685 | 0x1D25 | size: 0x3
.obj gap_03_00001D25_rodata, global
.hidden gap_03_00001D25_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001D25_rodata

# .rodata:0x688 | 0x1D28 | size: 0xD
.obj str_kpa_stg7_036_pik_000031f0, local
	.string "kpa_stg7_036"
.endobj str_kpa_stg7_036_pik_000031f0

# .rodata:0x695 | 0x1D35 | size: 0x3
.obj gap_03_00001D35_rodata, global
.hidden gap_03_00001D35_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001D35_rodata

# .rodata:0x698 | 0x1D38 | size: 0x7
.obj str_aji_18_pik_00003200, local
	.string "aji_18"
.endobj str_aji_18_pik_00003200

# .rodata:0x69F | 0x1D3F | size: 0x1
.obj gap_03_00001D3F_rodata, global
.hidden gap_03_00001D3F_rodata
	.byte 0x00
.endobj gap_03_00001D3F_rodata

# .rodata:0x6A0 | 0x1D40 | size: 0x7
.obj str_e_bero_pik_00003208, local
	.string "e_bero"
.endobj str_e_bero_pik_00003208

# .rodata:0x6A7 | 0x1D47 | size: 0x1
.obj gap_03_00001D47_rodata, global
.hidden gap_03_00001D47_rodata
	.byte 0x00
.endobj gap_03_00001D47_rodata

# .rodata:0x6A8 | 0x1D48 | size: 0x9
.obj str_nisemono_pik_00003210, local
	.string "nisemono"
.endobj str_nisemono_pik_00003210

# .rodata:0x6B1 | 0x1D51 | size: 0x3
.obj gap_03_00001D51_rodata, global
.hidden gap_03_00001D51_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001D51_rodata

# .rodata:0x6B4 | 0x1D54 | size: 0xE
.obj str_ENV_STG6_PIK2_pik_0000321c, local
	.string "ENV_STG6_PIK2"
.endobj str_ENV_STG6_PIK2_pik_0000321c

# .rodata:0x6C2 | 0x1D62 | size: 0x2
.obj gap_03_00001D62_rodata, global
.hidden gap_03_00001D62_rodata
	.2byte 0x0000
.endobj gap_03_00001D62_rodata

# .rodata:0x6C4 | 0x1D64 | size: 0x3
.obj str_sw_pik_0000322c, local
	.string "sw"
.endobj str_sw_pik_0000322c

# .rodata:0x6C7 | 0x1D67 | size: 0x1
.obj gap_03_00001D67_rodata, global
.hidden gap_03_00001D67_rodata
	.byte 0x00
.endobj gap_03_00001D67_rodata

# .rodata:0x6C8 | 0x1D68 | size: 0x6
.obj str_dai_a_pik_00003230, local
	.string "dai_a"
.endobj str_dai_a_pik_00003230

# .rodata:0x6CE | 0x1D6E | size: 0x2
.obj gap_03_00001D6E_rodata, global
.hidden gap_03_00001D6E_rodata
	.2byte 0x0000
.endobj gap_03_00001D6E_rodata

# .rodata:0x6D0 | 0x1D70 | size: 0x7
.obj str_door_1_pik_00003238, local
	.string "door_1"
.endobj str_door_1_pik_00003238

# .rodata:0x6D7 | 0x1D77 | size: 0x1
.obj gap_03_00001D77_rodata, global
.hidden gap_03_00001D77_rodata
	.byte 0x00
.endobj gap_03_00001D77_rodata

# .rodata:0x6D8 | 0x1D78 | size: 0x6
.obj str_hikou_pik_00003240, local
	.string "hikou"
.endobj str_hikou_pik_00003240

# .rodata:0x6DE | 0x1D7E | size: 0x2
.obj gap_03_00001D7E_rodata, global
.hidden gap_03_00001D7E_rodata
	.2byte 0x0000
.endobj gap_03_00001D7E_rodata

# .rodata:0x6E0 | 0x1D80 | size: 0x6
.obj str_a_hi1_pik_00003248, local
	.string "a_hi1"
.endobj str_a_hi1_pik_00003248

# .rodata:0x6E6 | 0x1D86 | size: 0x2
.obj gap_03_00001D86_rodata, global
.hidden gap_03_00001D86_rodata
	.2byte 0x0000
.endobj gap_03_00001D86_rodata

# .rodata:0x6E8 | 0x1D88 | size: 0x6
.obj str_s_jav_pik_00003250, local
	.string "s_jav"
.endobj str_s_jav_pik_00003250

# .rodata:0x6EE | 0x1D8E | size: 0x2
.obj gap_03_00001D8E_rodata, global
.hidden gap_03_00001D8E_rodata
	.2byte 0x0000
.endobj gap_03_00001D8E_rodata

# .rodata:0x6F0 | 0x1D90 | size: 0x7
.obj str_saku_2_pik_00003258, local
	.string "saku_2"
.endobj str_saku_2_pik_00003258
	.byte 0x00

# .rodata:0x6F8 | 0x1D98 | size: 0x4
.obj float_50_pik_00003260, local
	.float 50
.endobj float_50_pik_00003260

# .rodata:0x6FC | 0x1D9C | size: 0x4
.obj float_0p5_pik_00003264, local
	.float 0.5
.endobj float_0p5_pik_00003264

# .rodata:0x700 | 0x1DA0 | size: 0x4
.obj float_0p1_pik_00003268, local
	.float 0.1
.endobj float_0p1_pik_00003268

# .rodata:0x704 | 0x1DA4 | size: 0x4
.obj float_6p2832_pik_0000326c, local
	.float 6.2831855
.endobj float_6p2832_pik_0000326c

# .rodata:0x708 | 0x1DA8 | size: 0x4
.obj float_360_pik_00003270, local
	.float 360
.endobj float_360_pik_00003270

# .rodata:0x70C | 0x1DAC | size: 0x4
.obj float_0p00761_pik_00003274, local
	.float 0.00761
.endobj float_0p00761_pik_00003274

# .rodata:0x710 | 0x1DB0 | size: 0x4
.obj float_0p16605_pik_00003278, local
	.float 0.16605
.endobj float_0p16605_pik_00003278

# .rodata:0x714 | 0x1DB4 | size: 0x4
.obj float_1_pik_0000327c, local
	.float 1
.endobj float_1_pik_0000327c

# .rodata:0x718 | 0x1DB8 | size: 0x4
.obj float_3p1416_pik_00003280, local
	.float 3.1415927
.endobj float_3p1416_pik_00003280

# .rodata:0x71C | 0x1DBC | size: 0x4
.obj float_1p5708_pik_00003284, local
	.float 1.5707964
.endobj float_1p5708_pik_00003284

# .rodata:0x720 | 0x1DC0 | size: 0x4
.obj float_4p7124_pik_00003288, local
	.float 4.712389
.endobj float_4p7124_pik_00003288

# .rodata:0x724 | 0x1DC4 | size: 0x4
.obj float_0p03705_pik_0000328c, local
	.float 0.03705
.endobj float_0p03705_pik_0000328c

# .rodata:0x728 | 0x1DC8 | size: 0x4
.obj float_0p4967_pik_00003290, local
	.float 0.4967
.endobj float_0p4967_pik_00003290

# .rodata:0x72C | 0x1DCC | size: 0x4
.obj zero_pik_00003294, local
	.float 0
.endobj zero_pik_00003294

# .rodata:0x730 | 0x1DD0 | size: 0x8
.obj double_to_int_pik_00003298, local
	.double 4503601774854144
.endobj double_to_int_pik_00003298

# .rodata:0x738 | 0x1DD8 | size: 0x4
.obj float_60_pik_000032a0, local
	.float 60
.endobj float_60_pik_000032a0

# .rodata:0x73C | 0x1DDC | size: 0x4
.obj float_neg950_pik_000032a4, local
	.float -950
.endobj float_neg950_pik_000032a4

# 0x00008328..0x0000AEA8 | size: 0x2B80
.data
.balign 8

# .data:0x0 | 0x8328 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x8330 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x8334 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x8338 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x833C | size: 0x4
.obj gap_04_0000833C_data, global
.hidden gap_04_0000833C_data
	.4byte 0x00000000
.endobj gap_04_0000833C_data

# .data:0x18 | 0x8340 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x8348 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x834C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x8350 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x8358 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x835C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x8360 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x8364 | size: 0x4
.obj gap_04_00008364_data, global
.hidden gap_04_00008364_data
	.4byte 0x00000000
.endobj gap_04_00008364_data

# .data:0x40 | 0x8368 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x8370 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x8374 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x8378 | size: 0x60
.obj haikei_on, local
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_a_E_yuka_pik_00002b68
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_h_bero_pik_00002b74
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_h_dokan_pik_00002b7c
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_del_case_evt
	.4byte 0x00000000
	.4byte 0xFD050F8A
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj haikei_on

# .data:0xB0 | 0x83D8 | size: 0x70
.obj haikei_off, local
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_a_E_yuka_pik_00002b68
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_h_bero_pik_00002b74
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_h_dokan_pik_00002b7c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_a_kaiga_pik_00002b84
	.4byte 0x00000000
	.4byte evt_kaiga
	.4byte 0xFD050F8A
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj haikei_off

# .data:0x120 | 0x8448 | size: 0x18C
.obj evt_return_sub, local
	.4byte 0x0001005B
	.4byte evt_mario_wait_movable
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFF56
	.4byte 0xFFFFFC40
	.4byte 0xF24BBA80
	.4byte 0x0003005B
	.4byte evt_party_set_dir_npc
	.4byte 0x00000000
	.4byte str_ポワン探偵_pik_00002b8c
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFF60
	.4byte 0xFFFFFC59
	.4byte 0xF24BBA80
	.4byte 0x0002005B
	.4byte evt_mario_set_dir_npc
	.4byte str_ポワン探偵_pik_00002b8c
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF7E
	.4byte 0x00000040
	.4byte 0xFFFFFD8B
	.4byte 0xFFFFFF7E
	.4byte 0x00000032
	.4byte 0xFFFFFC5F
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_pik_21_pik_00002b98
	.4byte 0x00000000
	.4byte str_ポワン探偵_pik_00002b8c
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000153
	.4byte 0x0006005B
	.4byte evt_fade_set_mapchange_type
	.4byte 0x00000001
	.4byte 0x00000037
	.4byte 0x00000000
	.4byte 0x00000036
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_s_bero_pik_00002ba4
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x0003005B
	.4byte evt_bero_overwrite
	.4byte str_s_bero_pik_00002ba4
	.4byte s_bero_peach
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_s_bero_pik_00002ba4
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0xFFFFFF9C
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_npc_reverse_ry
	.4byte str_ポワン探偵_pik_00002b8c
	.4byte 0x0000006D
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_return_sub

# .data:0x2AC | 0x85D4 | size: 0x34
.obj evt_return, local
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000152
	.4byte 0x0001005C
	.4byte evt_return_sub
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte haikei_off
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_return

# .data:0x2E0 | 0x8608 | size: 0x1C
.obj evt_go, local
	.4byte 0x0001005E
	.4byte haikei_on
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_go

# .data:0x2FC | 0x8624 | size: 0x58
.obj s_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78F2
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_1_a_pik_00002bac
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_1_b_pik_00002bb8
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj s_door_open

# .data:0x354 | 0x867C | size: 0x58
.obj s_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C0E
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_1_a_pik_00002bac
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_1_b_pik_00002bb8
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj s_door_close

# .data:0x3AC | 0x86D4 | size: 0x12C
.obj bero_data, local
	.4byte str_s_bero_pik_00002ba4
	.4byte 0x00010006
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000050
	.4byte haikei_off
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_pik_01_pik_00002bc4
	.4byte str_n_bero_pik_00002bcc
	.4byte 0x00050005
	.4byte s_door_close
	.4byte s_door_open
	.4byte str_dokan_pik_00002bd4
	.4byte 0x00020000
	.4byte 0x00000009
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte evt_return
	.4byte 0x00000006
	.4byte evt_go
	.4byte 0x00000000
	.4byte str_h_dokan_pik_00002b7c
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_h_dokan_pik_00002b7c
	.4byte 0x10020000
	.4byte 0x00000009
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan_pik_00002bd4
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_h_bero_pik_00002b74
	.4byte 0x10000000
	.4byte 0x00000002
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_pik_03_pik_00002bdc
	.4byte str_s_bero_pik_00002ba4
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
.endobj bero_data

# .data:0x4D8 | 0x8800 | size: 0x30
.obj out_room, local
	.4byte 0x0003005B
	.4byte evt_snd_bgmoff_f
	.4byte 0x00000200
	.4byte 0x000007D0
	.4byte 0x0003005B
	.4byte evt_snd_envoff_f
	.4byte 0x00000200
	.4byte 0x000007D0
	.4byte 0x0001005B
	.4byte evt_snd_sfx_all_stop
	.4byte 0x00000002
	.4byte 0x00000001
.endobj out_room

# .data:0x508 | 0x8830 | size: 0x3C
.obj s_bero_peach, local
	.4byte str_s_bero_pik_00002ba4
	.4byte 0x00010006
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000050
	.4byte haikei_off
	.4byte 0xFFFFFFFF
	.4byte out_room
	.4byte str_aji_10_pik_00002be4
	.4byte 0x00000000
	.4byte 0x00050005
	.4byte s_door_close
	.4byte s_door_open
.endobj s_bero_peach

# .data:0x544 | 0x886C | size: 0x78
.obj init_powan, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x00000150
	.4byte 0x00000151
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_pik_00002bec
	.4byte 0xFFFFFF88
	.4byte 0x00000000
	.4byte 0x000001EA
	.4byte 0x00010024
	.4byte 0x00000152
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_pik_00002bec
	.4byte 0xFFFFFF9C
	.4byte 0x0000000A
	.4byte 0xFFFFFC5E
	.4byte 0x00010027
	.4byte 0x00000152
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_pik_00002bec
	.4byte 0xFFFFFF88
	.4byte 0x00000000
	.4byte 0x000001EA
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_powan

# .data:0x5BC | 0x88E4 | size: 0xD4
.obj talk_powan, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x00000152
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_pik_19_pik_00002bf0
	.4byte 0x00000000
	.4byte str_me_pik_00002bec
	.4byte 0x00010028
	.4byte 0x00000153
	.4byte 0x00020018
	.4byte 0xF9718880
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF9718880
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_pik_22_pik_00002bfc
	.4byte 0x00000000
	.4byte str_me_pik_00002bec
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xF9718880
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_pik_23_pik_00002c08
	.4byte 0x00000000
	.4byte str_me_pik_00002bec
	.4byte 0x00000021
	.4byte 0x00010028
	.4byte 0x00000192
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_pik_clear_09_1_pik_00002c14
	.4byte 0x00000000
	.4byte str_me_pik_00002bec
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_pik_clear_09_1__pik_00002c28
	.4byte 0x00000000
	.4byte str_me_pik_00002bec
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj talk_powan

# .data:0x690 | 0x89B8 | size: 0x44
.obj init_majo, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x00000150
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_pik_00002bec
	.4byte 0xFFFFFFDD
	.4byte 0x0000000A
	.4byte 0xFFFFFC4A
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_pik_00002bec
	.4byte 0x0000005A
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_majo

# .data:0x6D4 | 0x89FC | size: 0x44
.obj init_mari, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x00000150
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_pik_00002bec
	.4byte 0x0000001E
	.4byte 0x0000000A
	.4byte 0xFFFFFC4A
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_pik_00002bec
	.4byte 0x0000010E
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_mari

# .data:0x718 | 0x8A40 | size: 0x44
.obj init_ramp, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x00000150
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_pik_00002bec
	.4byte 0x00000014
	.4byte 0x0000000A
	.4byte 0xFFFFFC72
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_pik_00002bec
	.4byte 0x0000010E
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_ramp

# .data:0x75C | 0x8A84 | size: 0x1C
.obj patakuri_init, local
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_me_pik_00002bec
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000001
.endobj patakuri_init

# .data:0x778 | 0x8AA0 | size: 0x1C
.obj baba_init, local
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_me_pik_00002bec
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000001
.endobj baba_init

# .data:0x794 | 0x8ABC | size: 0x284
.obj npc_data, local
	.4byte str_ポワン探偵_pik_00002b8c
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte init_powan
	.4byte 0x00000000
	.4byte talk_powan
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_マジョリン_pik_00002c40
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte init_majo
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_マリリン_pik_00002c4c
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte init_mari
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ランペル_pik_00002c58
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte init_ramp
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_パタクリ_pik_00002c64
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte patakuri_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ババ_pik_00002c70
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte baba_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj npc_data

# .data:0xA18 | 0x8D40 | size: 0x8C8
.obj evt_garnet, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_1_a_pik_00002bac
	.4byte 0x00000000
	.4byte 0x00000046
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_1_b_pik_00002bb8
	.4byte 0x00000000
	.4byte 0xFFFFFFBA
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000028A
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x000002A8
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ポワン探偵_pik_00002b8c
	.4byte 0xFFFFFFE2
	.4byte 0x00000000
	.4byte 0x000002C6
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ポワン探偵_pik_00002b8c
	.4byte 0x0000005A
	.4byte 0x0001005B
	.4byte hoshi
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos
	.4byte 0x00000000
	.4byte 0x0000023A
	.4byte 0x000003E8
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_move_pos
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x00000244
	.4byte 0x000003E8
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_ポワン探偵_pik_00002b8c
	.4byte 0x00000002
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ポワン探偵_pik_00002b8c
	.4byte 0xFFFFFFE2
	.4byte 0x00000258
	.4byte 0x000003E8
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte bero_close_door_play_se
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000046
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_1_a_pik_00002bac
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020037
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_1_b_pik_00002bb8
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_SURP_pik_00002c84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000000
	.4byte str_eff0_pik_00002ca4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000003
	.4byte str_eff1_pik_00002cac
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x0000007D
	.4byte 0xFFFFFDB2
	.4byte 0x00000000
	.4byte 0x00000041
	.4byte 0xFFFFFC5E
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000001
	.4byte str_BGM_FF_ENV_SURPRISED_pik_00002cb4
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_マジョリン_pik_00002c40
	.4byte str_MJR_A2_1_pik_00002ccc
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0001006C
	.4byte 0xFE363C8F
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte hoshi_r
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0001005B
	.4byte hoshi_jump
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0001005F
	.4byte 0xFE363C8F
	.4byte 0x0001005B
	.4byte hoshi_delete
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_マジョリン_pik_00002c40
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000032
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG6_STARATONE_L_pik_00002cd8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte 0x00000000
	.4byte str_stardust_n64_pik_00002cf4
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24ACA80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_WITCH1_pik_00002d04
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000400
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_pik_13_pik_00002d14
	.4byte 0x00000000
	.4byte str_マジョリン_pik_00002c40
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_npc_majo_disp_off
	.4byte str_マジョリン_pik_00002c40
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_npc_majo_disp_off
	.4byte str_マリリン_pik_00002c4c
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_マジョリン_pik_00002c40
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_マリリン_pik_00002c4c
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_npc_reverse_ry
	.4byte str_ランペル_pik_00002c58
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_pik_14_pik_00002d20
	.4byte 0x00000000
	.4byte str_ランペル_pik_00002c58
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x00000036
	.4byte 0xFFFFFDC8
	.4byte 0xFFFFFF1A
	.4byte 0x0000001E
	.4byte 0xFFFFFC5E
	.4byte 0x00000B54
	.4byte 0x0000000B
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_ランペル_pik_00002c58
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ランペル_pik_00002c58
	.4byte 0x00020030
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ランペル_pik_00002c58
	.4byte 0xFFFFFF97
	.4byte 0xFFFFFCB3
	.4byte 0x00000000
	.4byte 0xF24C0A80
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_ランペル_pik_00002c58
	.4byte 0x00020010
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ランペル_pik_00002c58
	.4byte 0xFFFFFF47
	.4byte 0xFFFFFCE5
	.4byte 0x00000000
	.4byte 0xF24C0A80
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_ランペル_pik_00002c58
	.4byte 0xFFFFFF06
	.4byte 0x00000000
	.4byte 0xFFFFFCE5
	.4byte 0xF24F2A80
	.4byte 0x00000028
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ランペル_pik_00002c58
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_snd_bgmoff_f
	.4byte 0x00000200
	.4byte 0x00000BB8
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000201
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000120
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ポワン探偵_pik_00002b8c
	.4byte 0x00008000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFFA6
	.4byte 0x00000000
	.4byte 0x000001C2
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFFBA
	.4byte 0x00000000
	.4byte 0x000001EA
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ポワン探偵_pik_00002b8c
	.4byte 0xFFFFFF88
	.4byte 0x00000000
	.4byte 0x000001EA
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_ポワン探偵_pik_00002b8c
	.4byte str_mario_pik_00002d2c
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF9C
	.4byte 0x0000004D
	.4byte 0x000002EC
	.4byte 0xFFFFFF9C
	.4byte 0x00000023
	.4byte 0x000001C2
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_pik_15_0_pik_00002d34
	.4byte 0x00000000
	.4byte str_party_pik_00002d44
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_pik_15_1_pik_00002d4c
	.4byte 0x00000000
	.4byte str_party_pik_00002d44
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_pik_15_2_pik_00002d5c
	.4byte 0x00000000
	.4byte str_party_pik_00002d44
	.4byte 0x00010024
	.4byte 0x00000005
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_pik_15_3_pik_00002d6c
	.4byte 0x00000000
	.4byte str_party_pik_00002d44
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_pik_15_4_pik_00002d7c
	.4byte 0x00000000
	.4byte str_party_pik_00002d44
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_pik_15_5_pik_00002d8c
	.4byte 0x00000000
	.4byte str_party_pik_00002d44
	.4byte 0x00010024
	.4byte 0x00000007
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_pik_15_6_pik_00002d9c
	.4byte 0x00000000
	.4byte str_party_pik_00002d44
	.4byte 0x00000031
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_pik_16_pik_00002dac
	.4byte 0x00000000
	.4byte str_ポワン探偵_pik_00002b8c
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_HAND_pik_00002db8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_2_pik_00002dd4
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_pik_00002ddc
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_pik_17_pik_00002de4
	.4byte 0x00000000
	.4byte str_ポワン探偵_pik_00002b8c
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_AWAK_pik_00002df0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_5B_pik_00002e08
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_pik_00002ddc
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_pik_18_pik_00002e10
	.4byte 0x00000000
	.4byte str_ポワン探偵_pik_00002b8c
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000150
	.4byte 0x0001005B
	.4byte N_evt_bero_set_mario_bottomless_respawn_pos_to_current_mario_pos
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_garnet

# .data:0x12E0 | 0x9608 | size: 0x164
.obj evt_sw, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFBF
	.4byte 0x000001C2
	.4byte 0xFFFFFE20
	.4byte 0xFFFFFF5B
	.4byte 0x00000073
	.4byte 0xFFFFFC5E
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_ka_ten_pik_00002e1c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG6_CURTAIN_UP1_pik_00002e24
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C89
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x00000096
	.4byte 0x000005DC
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_ka_ten_pik_00002e1c
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_a_ka_ten_pik_00002e3c
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C89
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000151
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000001
	.4byte str_BGM_FF_ENV_SUCCESS1_pik_00002e48
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_sw

# .data:0x1444 | 0x976C | size: 0x38
.obj evt_kaiga, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_pik_24_pik_00002e5c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_kaiga

# .data:0x147C | 0x97A4 | size: 0x6C
.obj evt_daiza, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x0000015B
	.4byte 0x00000176
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_pik_clear_09_2_pik_00002e68
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_pik_25_pik_00002e7c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_daiza

# .data:0x14E8 | 0x9810 | size: 0x13A0
.obj pik_02_koopa_evt, local
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000200
	.4byte 0x0002005B
	.4byte evt_snd_set_rev_mode
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte starstone_entry
	.4byte str_nise_pik_00002e88
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x00000039
	.4byte 0xFFFFFC45
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0xFFFFFE0C
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ババ_pik_00002c70
	.4byte 0x0000008C
	.4byte 0x00000000
	.4byte 0xFFFFFE0C
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ババ_pik_00002c70
	.4byte 0x0000010E
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x00000168
	.4byte 0xFFFFFEAE
	.4byte 0x00000000
	.4byte 0x000000FA
	.4byte 0xFFFFFB96
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_KUPPA1_pik_00002e90
	.4byte 0x0003005B
	.4byte evt_snd_bgm_scope
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x00000096
	.4byte 0xFFFFFEAE
	.4byte 0x00000000
	.4byte 0x00000028
	.4byte 0xFFFFFB96
	.4byte 0x00001B58
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ババ_pik_00002c70
	.4byte 0x0000008C
	.4byte 0xFFFFFC90
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ババ_pik_00002c70
	.4byte 0x0000008C
	.4byte 0x00000009
	.4byte 0xFFFFFC8B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ババ_pik_00002c70
	.4byte 0x0000008C
	.4byte 0xFFFFFC63
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x0000003C
	.4byte 0xFFFFFC90
	.4byte 0x0000003C
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x0000003C
	.4byte 0x00000009
	.4byte 0xFFFFFC8B
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x0000003C
	.4byte 0xFFFFFC63
	.4byte 0x0000003C
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_pik_00002d2c
	.4byte str_KPA_S_1_pik_00002ea0
	.4byte str_KPA_T_1_pik_00002ea8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg7_013_01_pik_00002eb0
	.4byte 0x00000000
	.4byte str_mario_pik_00002d2c
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000003C
	.4byte 0x0000007F
	.4byte 0xFFFFFE2D
	.4byte 0x0000003C
	.4byte 0x00000050
	.4byte 0xFFFFFC6E
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_KOOPA_HAPP_pik_00002ec0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte set_starstone_pos
	.4byte str_nise_pik_00002e88
	.4byte 0x00000050
	.4byte 0x00000055
	.4byte 0xFFFFFC6D
	.4byte 0x0002005B
	.4byte kpa_chg_pose
	.4byte str_KPA_Y_1_pik_00002edc
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte str_sub_hikari_pik_00002ee4
	.4byte str_radiation_n64_pik_00002ef0
	.4byte 0x00000002
	.4byte 0x0000003C
	.4byte 0x00000038
	.4byte 0xFFFFFC63
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte str_sub_bg_pik_00002f00
	.4byte str_itemget_pik_00002f08
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x00000038
	.4byte 0xFFFFFC59
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte stone_bg
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000001
	.4byte str_BGM_FF_GET_IMPORTANT_pik_00002f10
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000201
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000120
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_eff_softdelete
	.4byte str_sub_hikari_pik_00002ee4
	.4byte 0x0002005B
	.4byte evt_eff_softdelete
	.4byte str_sub_bg_pik_00002f00
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0001005B
	.4byte reset_stone_cam
	.4byte 0x0001005B
	.4byte evt_mario_init_camid
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_pik_00002d2c
	.4byte str_KPA_S_6_pik_00002f2c
	.4byte str_KPA_T_6_pik_00002f34
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg7_014_pik_00002f3c
	.4byte 0x00000000
	.4byte str_mario_pik_00002d2c
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_ババ_pik_00002c70
	.4byte str_U_1_pik_00002f4c
	.4byte str_T_5_pik_00002f50
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg7_015_pik_00002f54
	.4byte 0x00000000
	.4byte str_ババ_pik_00002c70
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000013
	.4byte 0x0000008F
	.4byte 0xFFFFFEF4
	.4byte 0x00000013
	.4byte 0x0000004A
	.4byte 0xFFFFFC6E
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_ポワン探偵_pik_00002b8c
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ポワン探偵_pik_00002b8c
	.4byte 0xFFFFFFB0
	.4byte 0x00000000
	.4byte 0xFFFFFDA8
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ポワン探偵_pik_00002b8c
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ポワン探偵_pik_00002b8c
	.4byte 0xFFFFFFBA
	.4byte 0xFFFFFCE0
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000000
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte zero_pik_00002f64
	.4byte str_ポワン探偵_pik_00002b8c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x0002005B
	.4byte kpa_chg_pose
	.4byte str_KPA_S_1_pik_00002ea0
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002003B
	.4byte 0xFE363C80
	.4byte 0x00000023
	.4byte 0x0002003A
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x0005005B
	.4byte set_starstone_pos
	.4byte str_nise_pik_00002e88
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000006D
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFBF
	.4byte 0x0000003C
	.4byte 0xFFFFFDCD
	.4byte 0xFFFFFFBF
	.4byte 0x00000028
	.4byte 0xFFFFFD06
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg7_016_pik_00002f68
	.4byte 0x00000000
	.4byte str_ポワン探偵_pik_00002b8c
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_ババ_pik_00002c70
	.4byte str_S_1_pik_00002f78
	.4byte str_T_1_pik_00002f7c
	.4byte 0x0002005B
	.4byte evt_npc_set_stay_anim
	.4byte str_ババ_pik_00002c70
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000000A
	.4byte 0x00000071
	.4byte 0xFFFFFE91
	.4byte 0x0000000A
	.4byte 0x00000037
	.4byte 0xFFFFFC6E
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000514
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002003B
	.4byte 0xFE363C80
	.4byte 0x00000023
	.4byte 0x0002003A
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x0005005B
	.4byte set_starstone_pos
	.4byte str_nise_pik_00002e88
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002003B
	.4byte 0xFE363C80
	.4byte 0x00000023
	.4byte 0x0002003A
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x0005005B
	.4byte set_starstone_pos
	.4byte str_nise_pik_00002e88
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ババ_pik_00002c70
	.4byte 0x00020010
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ババ_pik_00002c70
	.4byte 0x0000006F
	.4byte 0xFFFFFCF3
	.4byte 0x000006D6
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos
	.4byte 0x0000003C
	.4byte 0xFFFFFCE0
	.4byte 0x000006D6
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_pik_00002d2c
	.4byte str_KPA_S_1_pik_00002ea0
	.4byte str_KPA_T_1_pik_00002ea8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg7_017_pik_00002f80
	.4byte 0x00000000
	.4byte str_mario_pik_00002d2c
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_kpa_stg7_018_pik_00002f90
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_kpa_stg7_019_pik_00002fa0
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte str_kpa_stg7_020_pik_00002fb0
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_kpa_stg7_021_pik_00002fc0
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte str_kpa_stg7_022_pik_00002fd0
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte str_kpa_stg7_023_pik_00002fe0
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte str_kpa_stg7_024_pik_00002ff0
	.4byte 0x00000031
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte 0xFE363C81
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFBF
	.4byte 0x0000003C
	.4byte 0xFFFFFDCD
	.4byte 0xFFFFFFBF
	.4byte 0x00000028
	.4byte 0xFFFFFD06
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ポワン探偵_pik_00002b8c
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0xFE363C83
	.4byte 0x00020036
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ポワン探偵_pik_00002b8c
	.4byte 0xFE363C86
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x00020035
	.4byte 0xFE363C86
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ポワン探偵_pik_00002b8c
	.4byte 0xFE363C86
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x00020036
	.4byte 0xFE363C86
	.4byte 0x00000002
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ポワン探偵_pik_00002b8c
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte str_ポワン探偵_pik_00002b8c
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000000A
	.4byte 0x00000071
	.4byte 0xFFFFFE91
	.4byte 0x0000000A
	.4byte 0x00000037
	.4byte 0xFFFFFC6E
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000001
	.4byte str_BGM_FF_ENV_SURPRISED_pik_00003000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000201
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000120
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_KOOPA_SURP_pik_00003018
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ババ_pik_00002c70
	.4byte str_P_1_pik_00003038
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_pik_00002d2c
	.4byte str_KPA_S_5_pik_0000303c
	.4byte str_KPA_T_5_pik_00003044
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg7_025_pik_0000304c
	.4byte 0x00000000
	.4byte str_mario_pik_00002d2c
	.4byte 0x0005005B
	.4byte get_starstone_pos
	.4byte str_nise_pik_00002e88
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_KUPPA_STONE_DOWN_pik_0000305c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C8F
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte get_starstone_seq
	.4byte str_nise_pik_00002e88
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x0005005B
	.4byte get_starstone_pos
	.4byte str_nise_pik_00002e88
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_KUPPA_STONE_BREA_pik_00003074
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte starstone_fall
	.4byte str_nise_pik_00002e88
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte get_starstone_pos
	.4byte str_nise_pik_00002e88
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010005
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte set_starstone_pos
	.4byte str_nise_pik_00002e88
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte set_starstone_pos
	.4byte str_nise_pik_00002e88
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_eff_softdelete
	.4byte str_nise_pik_00002e88
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ババ_pik_00002c70
	.4byte 0x00000020
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ババ_pik_00002c70
	.4byte 0xFFFFFFF3
	.4byte 0xFFFFFCE8
	.4byte 0x00000000
	.4byte 0xF24BE280
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_ババ_pik_00002c70
	.4byte 0x00000020
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg7_026_pik_0000308c
	.4byte 0x00000000
	.4byte str_ババ_pik_00002c70
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg7_027_pik_0000309c
	.4byte 0x00000000
	.4byte str_ポワン探偵_pik_00002b8c
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ババ_pik_00002c70
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_pik_00002d2c
	.4byte str_KPA_S_1_pik_00002ea0
	.4byte str_KPA_T_1_pik_00002ea8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg7_028_pik_000030ac
	.4byte 0x00000000
	.4byte str_mario_pik_00002d2c
	.4byte 0x0002005B
	.4byte kpa_chg_pose
	.4byte str_KPA_I_2_pik_000030bc
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0002005D
	.4byte evt_sub_stopwatch
	.4byte 0xFE363C80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_get_stopwatch
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0002001D
	.4byte 0xFE363C81
	.4byte 0x00007530
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A80
	.4byte 0xF24A7A8A
	.4byte 0x00000096
	.4byte 0x0001000A
	.4byte 0x00000096
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_KUPPA_ANGRY1_pik_000030c4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_KUPPA_ANGRY2_pik_000030d8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg7_029_pik_000030ec
	.4byte 0x00000000
	.4byte str_ババ_pik_00002c70
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_パタクリ_pik_00002c64
	.4byte 0xFFFFFF06
	.4byte 0x00000082
	.4byte 0xFFFFFCE0
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_KUPPA_PKURI_GLAS_pik_000030fc
	.4byte 0xFFFFFF06
	.4byte 0x00000082
	.4byte 0xFFFFFCE0
	.4byte 0xFE363C80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_sfxchk
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte kpa_chg_pose
	.4byte str_KPA_S_1_pik_00002ea0
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_KOOPA_SURP_pik_0000311c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000000
	.4byte zero_pik_00002f64
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
	.4byte 0x00000001
	.4byte zero_pik_00002f64
	.4byte str_ババ_pik_00002c70
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ババ_pik_00002c70
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg7_030_pik_0000313c
	.4byte 0x00000000
	.4byte str_パタクリ_pik_00002c64
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_パタクリ_pik_00002c64
	.4byte 0xFFFFFF38
	.4byte 0x00000050
	.4byte 0xFFFFFCE0
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_パタクリ_pik_00002c64
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00020032
	.4byte 0xFD050F80
	.4byte 0x00000050
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x000000B4
	.4byte 0x0000014A
	.4byte 0x00000514
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0004005B
	.4byte evt_sub_get_sincos
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0002003C
	.4byte 0xFE363C82
	.4byte 0xF24B4280
	.4byte 0x0002003A
	.4byte 0xFE363C82
	.4byte 0xF24BBA80
	.4byte 0x00020032
	.4byte 0xFD050F80
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ポワン探偵_pik_00002b8c
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0xFFFFFF38
	.4byte 0xFE363C82
	.4byte 0x00000514
	.4byte 0x00010003
	.4byte 0x00000002
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_パタクリ_pik_00002c64
	.4byte 0xFE363C80
	.4byte 0xFD050F80
	.4byte 0xFFFFFCE0
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_パタクリ_pik_00002c64
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_パタクリ_pik_00002c64
	.4byte str_PTK_A_1_pik_0000314c
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_パタクリ_pik_00002c64
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000004
	.4byte 0xFE363C83
	.4byte 0x0000001E
	.4byte 0x000004B0
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_パタクリ_pik_00002c64
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0xFE363C84
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_パタクリ_pik_00002c64
	.4byte str_PTK_S_2_pik_00003154
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0xFE363C80
	.4byte 0x00020036
	.4byte 0xFE363C85
	.4byte 0x00000005
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_pik_00002f64
	.4byte str_kemuri_pik_0000315c
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0xFE363C85
	.4byte 0xFE363C84
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_KUPPA_PKURI_LAND_pik_00003164
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0xFE363C84
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_パタクリ_pik_00002c64
	.4byte str_PTK_S_3_pik_00003180
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg7_031_pik_00003188
	.4byte 0x00000000
	.4byte str_ババ_pik_00002c70
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFBF
	.4byte 0x00000053
	.4byte 0xFFFFFE08
	.4byte 0xFFFFFFBF
	.4byte 0x0000002F
	.4byte 0xFFFFFCAC
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_パタクリ_pik_00002c64
	.4byte str_PTK_S_3_pik_00003180
	.4byte str_PTK_T_2_pik_00003198
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg7_032_pik_000031a0
	.4byte 0x00000000
	.4byte str_パタクリ_pik_00002c64
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_ババ_pik_00002c70
	.4byte str_S_1_pik_00002f78
	.4byte str_T_1_pik_00002f7c
	.4byte 0x0002005B
	.4byte evt_npc_set_stay_anim
	.4byte str_ババ_pik_00002c70
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000014
	.4byte 0x00000072
	.4byte 0xFFFFFE8F
	.4byte 0x00000014
	.4byte 0x0000003A
	.4byte 0xFFFFFC6E
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg7_033_pik_000031b0
	.4byte 0x00000000
	.4byte str_mario_pik_00002d2c
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ババ_pik_00002c70
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg7_034_pik_000031c0
	.4byte 0x00000000
	.4byte str_ババ_pik_00002c70
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_pik_00002d2c
	.4byte str_KPA_S_4_pik_000031d0
	.4byte str_KPA_T_3_pik_000031d8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg7_035_pik_000031e0
	.4byte 0x00000000
	.4byte str_mario_pik_00002d2c
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFE363C80
	.4byte 0xFFFFFE70
	.4byte 0xF24BE280
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ババ_pik_00002c70
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ババ_pik_00002c70
	.4byte 0xFE363C80
	.4byte 0xFFFFFE70
	.4byte 0x00000000
	.4byte 0xF24BE280
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_パタクリ_pik_00002c64
	.4byte 0x00000400
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_パタクリ_pik_00002c64
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000A005B
	.4byte evt_npc_glide_position
	.4byte str_パタクリ_pik_00002c64
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFFFFFE70
	.4byte 0x00000000
	.4byte 0xF24BE280
	.4byte 0xF24AF280
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFBF
	.4byte 0x0000003C
	.4byte 0xFFFFFDCD
	.4byte 0xFFFFFFBF
	.4byte 0x00000028
	.4byte 0xFFFFFD06
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg7_036_pik_000031f0
	.4byte 0x00000000
	.4byte str_ポワン探偵_pik_00002b8c
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000177
	.4byte 0x0003005B
	.4byte evt_snd_bgmoff_f
	.4byte 0x00000200
	.4byte 0x000003E8
	.4byte 0x0006005B
	.4byte evt_fade_entry
	.4byte 0x00000006
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_fade_end_wait
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x00020032
	.4byte 0xFBD3E28A
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x0001005E
	.4byte unk_evt_803bac3c
	.4byte 0x0002005B
	.4byte evt_mario_set_mode
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_bgmoff_f
	.4byte 0x00000200
	.4byte 0x000007D0
	.4byte 0x0003005B
	.4byte evt_snd_envoff_f
	.4byte 0x00000200
	.4byte 0x000007D0
	.4byte 0x0006005B
	.4byte evt_fade_set_mapchange_type
	.4byte 0x00000001
	.4byte 0x0000003B
	.4byte 0x00000000
	.4byte 0x0000003A
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_aji_18_pik_00003200
	.4byte str_e_bero_pik_00003208
	.4byte 0x00000002
	.4byte 0x00000001
.endobj pik_02_koopa_evt

# .data:0x2888 | 0xABB0 | size: 0x48
.obj nise_starstone_init, local
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x0000015B
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000176
	.4byte 0x0007005B
	.4byte starstone_entry
	.4byte str_nisemono_pik_00003210
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x00000039
	.4byte 0xFFFFFC45
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nise_starstone_init

# .data:0x28D0 | 0xABF8 | size: 0x2B0
.obj pik_02_init_evt_21_data_ABF8, global
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000150
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte bero_case_entry
	.4byte 0x0001005E
	.4byte haikei_off
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xF5DE0180
	.4byte 0x00000176
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG6_PIK2_pik_0000321c
	.4byte 0x0002005B
	.4byte evt_snd_set_rev_mode
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_npc_setup
	.4byte npc_data
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_a_ka_ten_pik_00002e3c
	.4byte str_ka_ten_pik_00002e1c
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000151
	.4byte 0x0008005B
	.4byte evt_mobj_switch_blue
	.4byte 0x00000000
	.4byte str_sw_pik_0000322c
	.4byte 0xFFFFFED4
	.4byte 0x0000014A
	.4byte 0xFFFFFC31
	.4byte evt_sw
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x00000020
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_ka_ten_pik_00002e1c
	.4byte 0x00000000
	.4byte 0x00000096
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_a_ka_ten_pik_00002e3c
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_s_bero_pik_00002ba4
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_a_kaiga_pik_00002b84
	.4byte 0x00000000
	.4byte evt_kaiga
	.4byte 0xFD050F8A
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_dai_a_pik_00003230
	.4byte 0x00000000
	.4byte evt_daiza
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_door_1_pik_00003238
	.4byte 0x00000002
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000150
	.4byte 0x0001005C
	.4byte evt_garnet
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000153
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x0006005B
	.4byte evt_fade_set_mapchange_type
	.4byte 0x00000001
	.4byte 0x00000037
	.4byte 0x00000000
	.4byte 0x00000036
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_s_bero_pik_00002ba4
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x0003005B
	.4byte evt_bero_overwrite
	.4byte str_s_bero_pik_00002ba4
	.4byte s_bero_peach
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_s_bero_pik_00002ba4
	.4byte 0x0001005E
	.4byte bero_case_switch_on
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte nise_starstone_init
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000176
	.4byte 0x0002005B
	.4byte evt_mario_set_mode
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mario_kill_party
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte pik_02_koopa_evt
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_map_entry_airport_harbor
	.4byte 0x00000000
	.4byte str_hikou_pik_00003240
	.4byte str_a_hi1_pik_00003248
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_s_jav_pik_00003250
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_saku_2_pik_00003258
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj pik_02_init_evt_21_data_ABF8
