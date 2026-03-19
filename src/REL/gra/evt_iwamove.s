.include "macros.inc"
.file "evt_iwamove.o"

# 0x00000B28..0x00000CF4 | size: 0x1CC
.text
.balign 4

# .text:0x0 | 0xB28 | size: 0x60
.fn evt_iwamove_ent_10_text_B28, global
/* 00000B28 00000BEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000B2C 00000BF0  7C 08 02 A6 */	mflr r0
/* 00000B30 00000BF4  3C 80 00 00 */	lis r4, iwamove@ha
/* 00000B34 00000BF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000B38 00000BFC  38 C4 00 00 */	addi r6, r4, iwamove@l
/* 00000B3C 00000C00  38 00 00 00 */	li r0, 0x0
/* 00000B40 00000C04  38 80 00 00 */	li r4, 0x0
/* 00000B44 00000C08  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 00000B48 00000C0C  3C 60 00 00 */	lis r3, evt_iwamove_main_evt@ha
/* 00000B4C 00000C10  38 63 00 00 */	addi r3, r3, evt_iwamove_main_evt@l
/* 00000B50 00000C14  80 A5 00 00 */	lwz r5, 0x0(r5)
/* 00000B54 00000C18  90 A6 00 10 */	stw r5, 0x10(r6)
/* 00000B58 00000C1C  38 A0 00 00 */	li r5, 0x0
/* 00000B5C 00000C20  90 06 00 08 */	stw r0, 0x8(r6)
/* 00000B60 00000C24  4B FF F9 B1 */	bl evtEntry
/* 00000B64 00000C28  3C 80 00 00 */	lis r4, iwamove@ha
/* 00000B68 00000C2C  38 84 00 00 */	addi r4, r4, iwamove@l
/* 00000B6C 00000C30  90 64 00 0C */	stw r3, 0xc(r4)
/* 00000B70 00000C34  90 83 00 9C */	stw r4, 0x9c(r3)
/* 00000B74 00000C38  38 60 00 02 */	li r3, 0x2
/* 00000B78 00000C3C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000B7C 00000C40  7C 08 03 A6 */	mtlr r0
/* 00000B80 00000C44  38 21 00 10 */	addi r1, r1, 0x10
/* 00000B84 00000C48  4E 80 00 20 */	blr
.endfn evt_iwamove_ent_10_text_B28

# .text:0x60 | 0xB88 | size: 0x18
.fn evt_iwamove_init_10_text_B88, global
/* 00000B88 00000C4C  3C 60 00 00 */	lis r3, iwamove@ha
/* 00000B8C 00000C50  38 00 00 00 */	li r0, 0x0
/* 00000B90 00000C54  38 83 00 00 */	addi r4, r3, iwamove@l
/* 00000B94 00000C58  38 60 00 02 */	li r3, 0x2
/* 00000B98 00000C5C  90 04 00 00 */	stw r0, 0x0(r4)
/* 00000B9C 00000C60  4E 80 00 20 */	blr
.endfn evt_iwamove_init_10_text_B88

# .text:0x78 | 0xBA0 | size: 0x154
.fn evt_iwamove_main, local
/* 00000BA0 00000C64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000BA4 00000C68  7C 08 02 A6 */	mflr r0
/* 00000BA8 00000C6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000BAC 00000C70  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00000BB0 00000C74  7C 9F 23 78 */	mr r31, r4
/* 00000BB4 00000C78  83 C3 00 9C */	lwz r30, 0x9c(r3)
/* 00000BB8 00000C7C  4B FF F9 59 */	bl marioGetPtr
/* 00000BBC 00000C80  2C 1F 00 00 */	cmpwi r31, 0x0
/* 00000BC0 00000C84  7C 7F 1B 78 */	mr r31, r3
/* 00000BC4 00000C88  41 82 00 0C */	beq .L_00000BD0
/* 00000BC8 00000C8C  38 60 00 00 */	li r3, 0x0
/* 00000BCC 00000C90  48 00 01 14 */	b .L_00000CE0
.L_00000BD0:
/* 00000BD0 00000C94  80 1E 00 08 */	lwz r0, 0x8(r30)
/* 00000BD4 00000C98  2C 00 00 02 */	cmpwi r0, 0x2
/* 00000BD8 00000C9C  41 82 00 DC */	beq .L_00000CB4
/* 00000BDC 00000CA0  40 80 01 00 */	bge .L_00000CDC
/* 00000BE0 00000CA4  2C 00 00 00 */	cmpwi r0, 0x0
/* 00000BE4 00000CA8  41 82 00 10 */	beq .L_00000BF4
/* 00000BE8 00000CAC  40 80 00 60 */	bge .L_00000C48
/* 00000BEC 00000CB0  48 00 00 F0 */	b .L_00000CDC
/* 00000BF0 00000CB4  48 00 00 EC */	b .L_00000CDC
.L_00000BF4:
/* 00000BF4 00000CB8  3C 60 00 00 */	lis r3, str_A_h_iwa_gra_00001f30@ha
/* 00000BF8 00000CBC  38 63 00 00 */	addi r3, r3, str_A_h_iwa_gra_00001f30@l
/* 00000BFC 00000CC0  4B FF F9 15 */	bl hitNameToPtr
/* 00000C00 00000CC4  80 1F 01 F0 */	lwz r0, 0x1f0(r31)
/* 00000C04 00000CC8  7C 00 18 40 */	cmplw r0, r3
/* 00000C08 00000CCC  40 82 00 D4 */	bne .L_00000CDC
/* 00000C0C 00000CD0  38 00 00 50 */	li r0, 0x50
/* 00000C10 00000CD4  90 1E 00 04 */	stw r0, 0x4(r30)
/* 00000C14 00000CD8  80 7E 00 08 */	lwz r3, 0x8(r30)
/* 00000C18 00000CDC  38 03 00 01 */	addi r0, r3, 0x1
/* 00000C1C 00000CE0  90 1E 00 08 */	stw r0, 0x8(r30)
/* 00000C20 00000CE4  4B FF F8 F1 */	bl marioKeyOff
/* 00000C24 00000CE8  4B FF F8 ED */	bl partyKeyOff
/* 00000C28 00000CEC  3C 60 00 00 */	lis r3, str_M_O_1_gra_00001f38@ha
/* 00000C2C 00000CF0  38 63 00 00 */	addi r3, r3, str_M_O_1_gra_00001f38@l
/* 00000C30 00000CF4  4B FF F8 E1 */	bl marioChgPose
/* 00000C34 00000CF8  80 1F 00 04 */	lwz r0, 0x4(r31)
/* 00000C38 00000CFC  60 00 00 02 */	ori r0, r0, 0x2
/* 00000C3C 00000D00  90 1F 00 04 */	stw r0, 0x4(r31)
/* 00000C40 00000D04  4B FF F8 D1 */	bl statusWinForceOpen
/* 00000C44 00000D08  48 00 00 98 */	b .L_00000CDC
.L_00000C48:
/* 00000C48 00000D0C  38 60 00 00 */	li r3, 0x0
/* 00000C4C 00000D10  4B FF F8 C5 */	bl keyGetStickX
/* 00000C50 00000D14  7C 60 07 74 */	extsb r0, r3
/* 00000C54 00000D18  2C 00 00 0A */	cmpwi r0, 0xa
/* 00000C58 00000D1C  40 81 00 28 */	ble .L_00000C80
/* 00000C5C 00000D20  80 7E 00 04 */	lwz r3, 0x4(r30)
/* 00000C60 00000D24  38 03 FF FF */	subi r0, r3, 0x1
/* 00000C64 00000D28  2C 03 00 00 */	cmpwi r3, 0x0
/* 00000C68 00000D2C  90 1E 00 04 */	stw r0, 0x4(r30)
/* 00000C6C 00000D30  40 82 00 70 */	bne .L_00000CDC
/* 00000C70 00000D34  80 7E 00 08 */	lwz r3, 0x8(r30)
/* 00000C74 00000D38  38 03 00 01 */	addi r0, r3, 0x1
/* 00000C78 00000D3C  90 1E 00 08 */	stw r0, 0x8(r30)
/* 00000C7C 00000D40  48 00 00 60 */	b .L_00000CDC
.L_00000C80:
/* 00000C80 00000D44  80 9E 00 08 */	lwz r4, 0x8(r30)
/* 00000C84 00000D48  3C 60 00 00 */	lis r3, str_M_S_1_gra_00001f40@ha
/* 00000C88 00000D4C  38 63 00 00 */	addi r3, r3, str_M_S_1_gra_00001f40@l
/* 00000C8C 00000D50  38 04 FF FF */	subi r0, r4, 0x1
/* 00000C90 00000D54  90 1E 00 08 */	stw r0, 0x8(r30)
/* 00000C94 00000D58  80 1F 00 04 */	lwz r0, 0x4(r31)
/* 00000C98 00000D5C  54 00 07 FA */	rlwinm r0, r0, 0, 31, 29
/* 00000C9C 00000D60  90 1F 00 04 */	stw r0, 0x4(r31)
/* 00000CA0 00000D64  4B FF F8 71 */	bl marioChgPose
/* 00000CA4 00000D68  4B FF F8 6D */	bl marioKeyOn
/* 00000CA8 00000D6C  4B FF F8 69 */	bl partyKeyOn
/* 00000CAC 00000D70  4B FF F8 65 */	bl statusWinForceOff
/* 00000CB0 00000D74  48 00 00 2C */	b .L_00000CDC
.L_00000CB4:
/* 00000CB4 00000D78  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 00000CB8 00000D7C  28 03 00 00 */	cmplwi r3, 0x0
/* 00000CBC 00000D80  41 82 00 10 */	beq .L_00000CCC
/* 00000CC0 00000D84  38 80 00 00 */	li r4, 0x0
/* 00000CC4 00000D88  38 A0 00 00 */	li r5, 0x0
/* 00000CC8 00000D8C  4B FF F8 49 */	bl evtEntry
.L_00000CCC:
/* 00000CCC 00000D90  4B FF F8 45 */	bl statusWinForceOff
/* 00000CD0 00000D94  80 7E 00 08 */	lwz r3, 0x8(r30)
/* 00000CD4 00000D98  38 03 00 01 */	addi r0, r3, 0x1
/* 00000CD8 00000D9C  90 1E 00 08 */	stw r0, 0x8(r30)
.L_00000CDC:
/* 00000CDC 00000DA0  38 60 00 00 */	li r3, 0x0
.L_00000CE0:
/* 00000CE0 00000DA4  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00000CE4 00000DA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000CE8 00000DAC  7C 08 03 A6 */	mtlr r0
/* 00000CEC 00000DB0  38 21 00 10 */	addi r1, r1, 0x10
/* 00000CF0 00000DB4  4E 80 00 20 */	blr
.endfn evt_iwamove_main

# 0x00000A70..0x00000A88 | size: 0x18
.rodata
.balign 8

# .rodata:0x0 | 0xA70 | size: 0x8
.obj str_A_h_iwa_gra_00001f30, local
	.string "A_h_iwa"
.endobj str_A_h_iwa_gra_00001f30

# .rodata:0x8 | 0xA78 | size: 0x6
.obj str_M_O_1_gra_00001f38, local
	.string "M_O_1"
.endobj str_M_O_1_gra_00001f38

# .rodata:0xE | 0xA7E | size: 0x2
.obj gap_03_00000A7E_rodata, global
.hidden gap_03_00000A7E_rodata
	.2byte 0x0000
.endobj gap_03_00000A7E_rodata

# .rodata:0x10 | 0xA80 | size: 0x6
.obj str_M_S_1_gra_00001f40, local
	.string "M_S_1"
.endobj str_M_S_1_gra_00001f40

# .rodata:0x16 | 0xA86 | size: 0x2
.obj gap_03_00000A86_rodata, global
.hidden gap_03_00000A86_rodata
	.2byte 0x0000
.endobj gap_03_00000A86_rodata

# 0x000050D0..0x00005130 | size: 0x60
.data
.balign 8

# .data:0x0 | 0x50D0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x50D8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x50DC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x50E0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x50E4 | size: 0x4
.obj gap_04_000050E4_data, global
.hidden gap_04_000050E4_data
	.4byte 0x00000000
.endobj gap_04_000050E4_data

# .data:0x18 | 0x50E8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x50F0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x50F4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x50F8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x5100 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x5104 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x5108 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x510C | size: 0x4
.obj gap_04_0000510C_data, global
.hidden gap_04_0000510C_data
	.4byte 0x00000000
.endobj gap_04_0000510C_data

# .data:0x40 | 0x5110 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x5118 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x511C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x5120 | size: 0x10
.obj evt_iwamove_main_evt, local
	.4byte 0x0001005B
	.4byte evt_iwamove_main
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_iwamove_main_evt

# 0x00000008..0x0000001C | size: 0x14
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x8 | size: 0x14
.obj iwamove, local
	.skip 0x14
.endobj iwamove
