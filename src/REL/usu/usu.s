.include "macros.inc"
.file "usu.o"

# 0x00000000..0x0000018C | size: 0x18C
.text
.balign 4

# .text:0x0 | 0x0 | size: 0x4
.fn _unresolved, global
/* 00000000 000000CC  4E 80 00 20 */	blr
.endfn _unresolved

# .text:0x4 | 0x4 | size: 0x84
.fn _epilog, global
/* 00000004 000000D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000008 000000D4  7C 08 02 A6 */	mflr r0
/* 0000000C 000000D8  3C 60 00 00 */	lis r3, _dtors@ha
/* 00000010 000000DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000014 000000E0  38 03 00 00 */	addi r0, r3, _dtors@l
/* 00000018 000000E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 0000001C 000000E8  7C 1F 03 78 */	mr r31, r0
/* 00000020 000000EC  48 00 00 10 */	b .L_00000030
.L_00000024:
/* 00000024 000000F0  7D 89 03 A6 */	mtctr r12
/* 00000028 000000F4  4E 80 04 21 */	bctrl
/* 0000002C 000000F8  3B FF 00 04 */	addi r31, r31, 0x4
.L_00000030:
/* 00000030 000000FC  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 00000034 00000100  28 0C 00 00 */	cmplwi r12, 0x0
/* 00000038 00000104  40 82 FF EC */	bne .L_00000024
/* 0000003C 00000108  3C 80 00 00 */	lis r4, partyPoseTbl@ha
/* 00000040 0000010C  3C 60 00 00 */	lis r3, pose_buf@ha
/* 00000044 00000110  38 C4 00 00 */	addi r6, r4, partyPoseTbl@l
/* 00000048 00000114  80 83 00 00 */	lwz r4, pose_buf@l(r3)
/* 0000004C 00000118  38 A0 00 3C */	li r5, 0x3c
/* 00000050 0000011C  38 66 01 68 */	addi r3, r6, 0x168
/* 00000054 00000120  4B FF FF AD */	bl memcpy
/* 00000058 00000124  3C 80 00 00 */	lis r4, mapalloc_base_ptr@ha
/* 0000005C 00000128  3C 60 00 00 */	lis r3, pose_buf@ha
/* 00000060 0000012C  38 A4 00 00 */	addi r5, r4, mapalloc_base_ptr@l
/* 00000064 00000130  38 83 00 00 */	addi r4, r3, pose_buf@l
/* 00000068 00000134  80 65 00 00 */	lwz r3, 0x0(r5)
/* 0000006C 00000138  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00000070 0000013C  4B FF FF 91 */	bl _mapFree
/* 00000074 00000140  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000078 00000144  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 0000007C 00000148  7C 08 03 A6 */	mtlr r0
/* 00000080 0000014C  38 21 00 10 */	addi r1, r1, 0x10
/* 00000084 00000150  4E 80 00 20 */	blr
.endfn _epilog

# .text:0x88 | 0x88 | size: 0xA8
.fn _prolog, global
/* 00000088 00000154  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0000008C 00000158  7C 08 02 A6 */	mflr r0
/* 00000090 0000015C  3C 60 00 00 */	lis r3, _ctors@ha
/* 00000094 00000160  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000098 00000164  38 03 00 00 */	addi r0, r3, _ctors@l
/* 0000009C 00000168  93 E1 00 0C */	stw r31, 0xc(r1)
/* 000000A0 0000016C  7C 1F 03 78 */	mr r31, r0
/* 000000A4 00000170  48 00 00 10 */	b .L_000000B4
.L_000000A8:
/* 000000A8 00000174  7D 89 03 A6 */	mtctr r12
/* 000000AC 00000178  4E 80 04 21 */	bctrl
/* 000000B0 0000017C  3B FF 00 04 */	addi r31, r31, 0x4
.L_000000B4:
/* 000000B4 00000180  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 000000B8 00000184  28 0C 00 00 */	cmplwi r12, 0x0
/* 000000BC 00000188  40 82 FF EC */	bne .L_000000A8
/* 000000C0 0000018C  3C 60 00 00 */	lis r3, str_usu_00_usu_00003840@ha
/* 000000C4 00000190  3C 80 00 00 */	lis r4, usu_00_init_evt_27_data_8C80@ha
/* 000000C8 00000194  38 63 00 00 */	addi r3, r3, str_usu_00_usu_00003840@l
/* 000000CC 00000198  38 84 00 00 */	addi r4, r4, usu_00_init_evt_27_data_8C80@l
/* 000000D0 0000019C  4B FF FF 31 */	bl relSetEvtAddr
/* 000000D4 000001A0  3C 60 00 00 */	lis r3, str_usu_01_usu_00003848@ha
/* 000000D8 000001A4  3C 80 00 00 */	lis r4, usu_01_init_evt_27_data_101E4@ha
/* 000000DC 000001A8  38 63 00 00 */	addi r3, r3, str_usu_01_usu_00003848@l
/* 000000E0 000001AC  38 84 00 00 */	addi r4, r4, usu_01_init_evt_27_data_101E4@l
/* 000000E4 000001B0  4B FF FF 1D */	bl relSetEvtAddr
/* 000000E8 000001B4  3C 60 00 00 */	lis r3, mapalloc_base_ptr@ha
/* 000000EC 000001B8  38 80 00 3C */	li r4, 0x3c
/* 000000F0 000001BC  38 63 00 00 */	addi r3, r3, mapalloc_base_ptr@l
/* 000000F4 000001C0  80 63 00 00 */	lwz r3, 0x0(r3)
/* 000000F8 000001C4  4B FF FF 09 */	bl _mapAlloc
/* 000000FC 000001C8  3C A0 00 00 */	lis r5, pose_buf@ha
/* 00000100 000001CC  3C 80 00 00 */	lis r4, partyPoseTbl@ha
/* 00000104 000001D0  38 C5 00 00 */	addi r6, r5, pose_buf@l
/* 00000108 000001D4  38 A0 00 3C */	li r5, 0x3c
/* 0000010C 000001D8  38 84 00 00 */	addi r4, r4, partyPoseTbl@l
/* 00000110 000001DC  90 66 00 00 */	stw r3, 0x0(r6)
/* 00000114 000001E0  38 84 01 68 */	addi r4, r4, 0x168
/* 00000118 000001E4  4B FF FE E9 */	bl memcpy
/* 0000011C 000001E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000120 000001EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 00000124 000001F0  7C 08 03 A6 */	mtlr r0
/* 00000128 000001F4  38 21 00 10 */	addi r1, r1, 0x10
/* 0000012C 000001F8  4E 80 00 20 */	blr
.endfn _prolog

# .text:0x130 | 0x130 | size: 0x5C
.fn evt_usu_vivian_pose_set, local
/* 00000130 000001FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000134 00000200  7C 08 02 A6 */	mflr r0
/* 00000138 00000204  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000013C 00000208  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00000140 0000020C  7C 7E 1B 78 */	mr r30, r3
/* 00000144 00000210  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00000148 00000214  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 0000014C 00000218  4B FF FE B5 */	bl evtGetValue
/* 00000150 0000021C  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00000154 00000220  7C 7F 1B 78 */	mr r31, r3
/* 00000158 00000224  7F C3 F3 78 */	mr r3, r30
/* 0000015C 00000228  4B FF FE A5 */	bl evtGetValue
/* 00000160 0000022C  3C 80 00 00 */	lis r4, partyPoseTbl@ha
/* 00000164 00000230  57 E0 10 3A */	slwi r0, r31, 2
/* 00000168 00000234  38 84 00 00 */	addi r4, r4, partyPoseTbl@l
/* 0000016C 00000238  7C 84 02 14 */	add r4, r4, r0
/* 00000170 0000023C  90 64 01 68 */	stw r3, 0x168(r4)
/* 00000174 00000240  38 60 00 02 */	li r3, 0x2
/* 00000178 00000244  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 0000017C 00000248  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000180 0000024C  7C 08 03 A6 */	mtlr r0
/* 00000184 00000250  38 21 00 10 */	addi r1, r1, 0x10
/* 00000188 00000254  4E 80 00 20 */	blr
.endfn evt_usu_vivian_pose_set

# 0x00000000..0x00000010 | size: 0x10
.rodata
.balign 8

# .rodata:0x0 | 0x0 | size: 0x7
.obj str_usu_00_usu_00003840, local
	.string "usu_00"
.endobj str_usu_00_usu_00003840

# .rodata:0x7 | 0x7 | size: 0x1
.obj gap_03_00000007_rodata, global
.hidden gap_03_00000007_rodata
	.byte 0x00
.endobj gap_03_00000007_rodata

# .rodata:0x8 | 0x8 | size: 0x7
.obj str_usu_01_usu_00003848, local
	.string "usu_01"
.endobj str_usu_01_usu_00003848

# .rodata:0xF | 0xF | size: 0x1
.obj gap_03_0000000F_rodata, global
.hidden gap_03_0000000F_rodata
	.byte 0x00
.endobj gap_03_0000000F_rodata

# 0x00000000..0x00000060 | size: 0x60
.data
.balign 8

# .data:0x0 | 0x0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0xC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x10 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x14 | size: 0x4
.obj gap_04_00000014_data, global
.hidden gap_04_00000014_data
	.4byte 0x00000000
.endobj gap_04_00000014_data

# .data:0x18 | 0x18 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x20 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x24 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x28 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x30 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x34 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x38 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x3C | size: 0x4
.obj gap_04_0000003C_data, global
.hidden gap_04_0000003C_data
	.4byte 0x00000000
.endobj gap_04_0000003C_data

# .data:0x40 | 0x40 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x48 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x4C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x50 | size: 0x8
.obj _three$localstatic4$sqrtf, local
	.4byte 0x40080000
	.4byte 0x00000000
.endobj _three$localstatic4$sqrtf

# .data:0x58 | 0x58 | size: 0x8
.obj _half$localstatic3$sqrtf, local
	.4byte 0x3FE00000
	.4byte 0x00000000
.endobj _half$localstatic3$sqrtf

# 0x00000000..0x00000008 | size: 0x8
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x0 | size: 0x4
.obj pose_buf, local
	.skip 0x4
.endobj pose_buf

# .bss:0x4 | 0x4 | size: 0x4
.obj gap_05_00000004_bss, global
.hidden gap_05_00000004_bss
	.skip 0x4
.endobj gap_05_00000004_bss
