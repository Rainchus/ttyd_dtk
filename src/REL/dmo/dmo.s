.include "macros.inc"
.file "dmo.o"

# 0x00001CA0..0x00001D54 | size: 0xB4
.text
.balign 4

# .text:0x0 | 0x1CA0 | size: 0x4
.fn _unresolved, global
/* 00001CA0 00001D64  4E 80 00 20 */	blr
.endfn _unresolved

# .text:0x4 | 0x1CA4 | size: 0x50
.fn _epilog, global
/* 00001CA4 00001D68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00001CA8 00001D6C  7C 08 02 A6 */	mflr r0
/* 00001CAC 00001D70  3C 60 00 00 */	lis r3, _dtors@ha
/* 00001CB0 00001D74  90 01 00 14 */	stw r0, 0x14(r1)
/* 00001CB4 00001D78  38 03 00 00 */	addi r0, r3, _dtors@l
/* 00001CB8 00001D7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 00001CBC 00001D80  7C 1F 03 78 */	mr r31, r0
/* 00001CC0 00001D84  48 00 00 10 */	b .L_00001CD0
.L_00001CC4:
/* 00001CC4 00001D88  7D 89 03 A6 */	mtctr r12
/* 00001CC8 00001D8C  4E 80 04 21 */	bctrl
/* 00001CCC 00001D90  3B FF 00 04 */	addi r31, r31, 0x4
.L_00001CD0:
/* 00001CD0 00001D94  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 00001CD4 00001D98  28 0C 00 00 */	cmplwi r12, 0x0
/* 00001CD8 00001D9C  40 82 FF EC */	bne .L_00001CC4
/* 00001CDC 00001DA0  4B FF FE 25 */	bl demo_exit_4_text_1B00
/* 00001CE0 00001DA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00001CE4 00001DA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 00001CE8 00001DAC  7C 08 03 A6 */	mtlr r0
/* 00001CEC 00001DB0  38 21 00 10 */	addi r1, r1, 0x10
/* 00001CF0 00001DB4  4E 80 00 20 */	blr
.endfn _epilog

# .text:0x54 | 0x1CF4 | size: 0x60
.fn _prolog, global
/* 00001CF4 00001DB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00001CF8 00001DBC  7C 08 02 A6 */	mflr r0
/* 00001CFC 00001DC0  3C 60 00 00 */	lis r3, _ctors@ha
/* 00001D00 00001DC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 00001D04 00001DC8  38 03 00 00 */	addi r0, r3, _ctors@l
/* 00001D08 00001DCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 00001D0C 00001DD0  7C 1F 03 78 */	mr r31, r0
/* 00001D10 00001DD4  48 00 00 10 */	b .L_00001D20
.L_00001D14:
/* 00001D14 00001DD8  7D 89 03 A6 */	mtctr r12
/* 00001D18 00001DDC  4E 80 04 21 */	bctrl
/* 00001D1C 00001DE0  3B FF 00 04 */	addi r31, r31, 0x4
.L_00001D20:
/* 00001D20 00001DE4  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 00001D24 00001DE8  28 0C 00 00 */	cmplwi r12, 0x0
/* 00001D28 00001DEC  40 82 FF EC */	bne .L_00001D14
/* 00001D2C 00001DF0  3C 60 00 00 */	lis r3, str_dmo_00_dmo_000022e8@ha
/* 00001D30 00001DF4  3C 80 00 00 */	lis r4, dmo_00_init_evt_4_data_1A50@ha
/* 00001D34 00001DF8  38 63 00 00 */	addi r3, r3, str_dmo_00_dmo_000022e8@l
/* 00001D38 00001DFC  38 84 00 00 */	addi r4, r4, dmo_00_init_evt_4_data_1A50@l
/* 00001D3C 00001E00  4B FF FF 65 */	bl relSetEvtAddr
/* 00001D40 00001E04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00001D44 00001E08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 00001D48 00001E0C  7C 08 03 A6 */	mtlr r0
/* 00001D4C 00001E10  38 21 00 10 */	addi r1, r1, 0x10
/* 00001D50 00001E14  4E 80 00 20 */	blr
.endfn _prolog

# 0x000004C8..0x000004CF | size: 0x7
.rodata
.balign 8

# .rodata:0x0 | 0x4C8 | size: 0x7
.obj str_dmo_00_dmo_000022e8, local
	.string "dmo_00"
.endobj str_dmo_00_dmo_000022e8

# 0x00001E80..0x00001ED0 | size: 0x50
.data
.balign 8

# .data:0x0 | 0x1E80 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x1E88 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x1E8C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x1E90 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x1E94 | size: 0x4
.obj gap_04_00001E94_data, global
.hidden gap_04_00001E94_data
	.4byte 0x00000000
.endobj gap_04_00001E94_data

# .data:0x18 | 0x1E98 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x1EA0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x1EA4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x1EA8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x1EB0 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x1EB4 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x1EB8 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x1EBC | size: 0x4
.obj gap_04_00001EBC_data, global
.hidden gap_04_00001EBC_data
	.4byte 0x00000000
.endobj gap_04_00001EBC_data

# .data:0x40 | 0x1EC0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x1EC8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x1ECC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364
