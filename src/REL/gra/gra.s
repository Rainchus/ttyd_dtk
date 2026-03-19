.include "macros.inc"
.file "gra.o"

# 0x00000510..0x0000071C | size: 0x20C
.text
.balign 4

# .text:0x0 | 0x510 | size: 0x4
.fn _unresolved, global
/* 00000510 000005D4  4E 80 00 20 */	blr
.endfn _unresolved

# .text:0x4 | 0x514 | size: 0x84
.fn _epilog, global
/* 00000514 000005D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000518 000005DC  7C 08 02 A6 */	mflr r0
/* 0000051C 000005E0  3C 60 00 00 */	lis r3, _dtors@ha
/* 00000520 000005E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000524 000005E8  38 03 00 00 */	addi r0, r3, _dtors@l
/* 00000528 000005EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 0000052C 000005F0  7C 1F 03 78 */	mr r31, r0
/* 00000530 000005F4  48 00 00 10 */	b .L_00000540
.L_00000534:
/* 00000534 000005F8  7D 89 03 A6 */	mtctr r12
/* 00000538 000005FC  4E 80 04 21 */	bctrl
/* 0000053C 00000600  3B FF 00 04 */	addi r31, r31, 0x4
.L_00000540:
/* 00000540 00000604  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 00000544 00000608  28 0C 00 00 */	cmplwi r12, 0x0
/* 00000548 0000060C  40 82 FF EC */	bne .L_00000534
/* 0000054C 00000610  3C 80 00 00 */	lis r4, partyPoseTbl@ha
/* 00000550 00000614  3C 60 00 00 */	lis r3, pose_buf@ha
/* 00000554 00000618  38 C4 00 00 */	addi r6, r4, partyPoseTbl@l
/* 00000558 0000061C  80 83 00 00 */	lwz r4, pose_buf@l(r3)
/* 0000055C 00000620  38 A0 00 3C */	li r5, 0x3c
/* 00000560 00000624  38 66 01 68 */	addi r3, r6, 0x168
/* 00000564 00000628  4B FF FF AD */	bl memcpy
/* 00000568 0000062C  3C 80 00 00 */	lis r4, mapalloc_base_ptr@ha
/* 0000056C 00000630  3C 60 00 00 */	lis r3, pose_buf@ha
/* 00000570 00000634  38 A4 00 00 */	addi r5, r4, mapalloc_base_ptr@l
/* 00000574 00000638  38 83 00 00 */	addi r4, r3, pose_buf@l
/* 00000578 0000063C  80 65 00 00 */	lwz r3, 0x0(r5)
/* 0000057C 00000640  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00000580 00000644  4B FF FF 91 */	bl _mapFree
/* 00000584 00000648  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000588 0000064C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 0000058C 00000650  7C 08 03 A6 */	mtlr r0
/* 00000590 00000654  38 21 00 10 */	addi r1, r1, 0x10
/* 00000594 00000658  4E 80 00 20 */	blr
.endfn _epilog

# .text:0x88 | 0x598 | size: 0x128
.fn _prolog, global
/* 00000598 0000065C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0000059C 00000660  7C 08 02 A6 */	mflr r0
/* 000005A0 00000664  3C 60 00 00 */	lis r3, _ctors@ha
/* 000005A4 00000668  90 01 00 14 */	stw r0, 0x14(r1)
/* 000005A8 0000066C  38 03 00 00 */	addi r0, r3, _ctors@l
/* 000005AC 00000670  93 E1 00 0C */	stw r31, 0xc(r1)
/* 000005B0 00000674  7C 1F 03 78 */	mr r31, r0
/* 000005B4 00000678  48 00 00 10 */	b .L_000005C4
.L_000005B8:
/* 000005B8 0000067C  7D 89 03 A6 */	mtctr r12
/* 000005BC 00000680  4E 80 04 21 */	bctrl
/* 000005C0 00000684  3B FF 00 04 */	addi r31, r31, 0x4
.L_000005C4:
/* 000005C4 00000688  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 000005C8 0000068C  28 0C 00 00 */	cmplwi r12, 0x0
/* 000005CC 00000690  40 82 FF EC */	bne .L_000005B8
/* 000005D0 00000694  3C 60 00 00 */	lis r3, str_gra_00_gra_00001ee8@ha
/* 000005D4 00000698  3C 80 00 00 */	lis r4, gra_00_init_evt_10_data_1A38@ha
/* 000005D8 0000069C  38 63 00 00 */	addi r3, r3, str_gra_00_gra_00001ee8@l
/* 000005DC 000006A0  38 84 00 00 */	addi r4, r4, gra_00_init_evt_10_data_1A38@l
/* 000005E0 000006A4  4B FF FF 31 */	bl relSetEvtAddr
/* 000005E4 000006A8  3C 60 00 00 */	lis r3, str_gra_01_gra_00001ef0@ha
/* 000005E8 000006AC  3C 80 00 00 */	lis r4, gra_01_init_evt_10_data_1E3C@ha
/* 000005EC 000006B0  38 63 00 00 */	addi r3, r3, str_gra_01_gra_00001ef0@l
/* 000005F0 000006B4  38 84 00 00 */	addi r4, r4, gra_01_init_evt_10_data_1E3C@l
/* 000005F4 000006B8  4B FF FF 1D */	bl relSetEvtAddr
/* 000005F8 000006BC  3C 60 00 00 */	lis r3, str_gra_02_gra_00001ef8@ha
/* 000005FC 000006C0  3C 80 00 00 */	lis r4, gra_02_init_evt_10_data_23C0@ha
/* 00000600 000006C4  38 63 00 00 */	addi r3, r3, str_gra_02_gra_00001ef8@l
/* 00000604 000006C8  38 84 00 00 */	addi r4, r4, gra_02_init_evt_10_data_23C0@l
/* 00000608 000006CC  4B FF FF 09 */	bl relSetEvtAddr
/* 0000060C 000006D0  3C 60 00 00 */	lis r3, str_gra_03_gra_00001f00@ha
/* 00000610 000006D4  3C 80 00 00 */	lis r4, gra_03_init_evt_10_data_261C@ha
/* 00000614 000006D8  38 63 00 00 */	addi r3, r3, str_gra_03_gra_00001f00@l
/* 00000618 000006DC  38 84 00 00 */	addi r4, r4, gra_03_init_evt_10_data_261C@l
/* 0000061C 000006E0  4B FF FE F5 */	bl relSetEvtAddr
/* 00000620 000006E4  3C 60 00 00 */	lis r3, str_gra_04_gra_00001f08@ha
/* 00000624 000006E8  3C 80 00 00 */	lis r4, gra_04_init_evt_10_data_2CFC@ha
/* 00000628 000006EC  38 63 00 00 */	addi r3, r3, str_gra_04_gra_00001f08@l
/* 0000062C 000006F0  38 84 00 00 */	addi r4, r4, gra_04_init_evt_10_data_2CFC@l
/* 00000630 000006F4  4B FF FE E1 */	bl relSetEvtAddr
/* 00000634 000006F8  3C 60 00 00 */	lis r3, str_gra_05_gra_00001f10@ha
/* 00000638 000006FC  3C 80 00 00 */	lis r4, gra_05_init_evt_10_data_3CF4@ha
/* 0000063C 00000700  38 63 00 00 */	addi r3, r3, str_gra_05_gra_00001f10@l
/* 00000640 00000704  38 84 00 00 */	addi r4, r4, gra_05_init_evt_10_data_3CF4@l
/* 00000644 00000708  4B FF FE CD */	bl relSetEvtAddr
/* 00000648 0000070C  3C 60 00 00 */	lis r3, str_gra_06_gra_00001f18@ha
/* 0000064C 00000710  3C 80 00 00 */	lis r4, gra_06_init_evt_10_data_4D28@ha
/* 00000650 00000714  38 63 00 00 */	addi r3, r3, str_gra_06_gra_00001f18@l
/* 00000654 00000718  38 84 00 00 */	addi r4, r4, gra_06_init_evt_10_data_4D28@l
/* 00000658 0000071C  4B FF FE B9 */	bl relSetEvtAddr
/* 0000065C 00000720  3C 60 00 00 */	lis r3, str_gra_gra_00001f20@ha
/* 00000660 00000724  3C 80 00 00 */	lis r4, btlsetup_gra_tbl_10_data_6D28@ha
/* 00000664 00000728  3C A0 00 00 */	lis r5, btl_gra_setup_no_tbl_10_data_70E0@ha
/* 00000668 0000072C  38 63 00 00 */	addi r3, r3, str_gra_gra_00001f20@l
/* 0000066C 00000730  38 84 00 00 */	addi r4, r4, btlsetup_gra_tbl_10_data_6D28@l
/* 00000670 00000734  38 A5 00 00 */	addi r5, r5, btl_gra_setup_no_tbl_10_data_70E0@l
/* 00000674 00000738  4B FF FE 9D */	bl relSetBtlAddr
/* 00000678 0000073C  3C 60 00 00 */	lis r3, mapalloc_base_ptr@ha
/* 0000067C 00000740  38 80 00 3C */	li r4, 0x3c
/* 00000680 00000744  38 63 00 00 */	addi r3, r3, mapalloc_base_ptr@l
/* 00000684 00000748  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00000688 0000074C  4B FF FE 89 */	bl _mapAlloc
/* 0000068C 00000750  3C A0 00 00 */	lis r5, pose_buf@ha
/* 00000690 00000754  3C 80 00 00 */	lis r4, partyPoseTbl@ha
/* 00000694 00000758  38 C5 00 00 */	addi r6, r5, pose_buf@l
/* 00000698 0000075C  38 A0 00 3C */	li r5, 0x3c
/* 0000069C 00000760  38 84 00 00 */	addi r4, r4, partyPoseTbl@l
/* 000006A0 00000764  90 66 00 00 */	stw r3, 0x0(r6)
/* 000006A4 00000768  38 84 01 68 */	addi r4, r4, 0x168
/* 000006A8 0000076C  4B FF FE 69 */	bl memcpy
/* 000006AC 00000770  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000006B0 00000774  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 000006B4 00000778  7C 08 03 A6 */	mtlr r0
/* 000006B8 0000077C  38 21 00 10 */	addi r1, r1, 0x10
/* 000006BC 00000780  4E 80 00 20 */	blr
.endfn _prolog

# .text:0x1B0 | 0x6C0 | size: 0x5C
.fn evt_gra_vivian_pose_set_10_text_6C0, global
/* 000006C0 00000784  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000006C4 00000788  7C 08 02 A6 */	mflr r0
/* 000006C8 0000078C  90 01 00 14 */	stw r0, 0x14(r1)
/* 000006CC 00000790  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 000006D0 00000794  7C 7E 1B 78 */	mr r30, r3
/* 000006D4 00000798  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 000006D8 0000079C  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 000006DC 000007A0  4B FF FE 35 */	bl evtGetValue
/* 000006E0 000007A4  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 000006E4 000007A8  7C 7F 1B 78 */	mr r31, r3
/* 000006E8 000007AC  7F C3 F3 78 */	mr r3, r30
/* 000006EC 000007B0  4B FF FE 25 */	bl evtGetValue
/* 000006F0 000007B4  3C 80 00 00 */	lis r4, partyPoseTbl@ha
/* 000006F4 000007B8  57 E0 10 3A */	slwi r0, r31, 2
/* 000006F8 000007BC  38 84 00 00 */	addi r4, r4, partyPoseTbl@l
/* 000006FC 000007C0  7C 84 02 14 */	add r4, r4, r0
/* 00000700 000007C4  90 64 01 68 */	stw r3, 0x168(r4)
/* 00000704 000007C8  38 60 00 02 */	li r3, 0x2
/* 00000708 000007CC  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 0000070C 000007D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000710 000007D4  7C 08 03 A6 */	mtlr r0
/* 00000714 000007D8  38 21 00 10 */	addi r1, r1, 0x10
/* 00000718 000007DC  4E 80 00 20 */	blr
.endfn evt_gra_vivian_pose_set_10_text_6C0

# 0x00000A28..0x00000A68 | size: 0x40
.rodata
.balign 8

# .rodata:0x0 | 0xA28 | size: 0x7
.obj str_gra_00_gra_00001ee8, local
	.string "gra_00"
.endobj str_gra_00_gra_00001ee8

# .rodata:0x7 | 0xA2F | size: 0x1
.obj gap_03_00000A2F_rodata, global
.hidden gap_03_00000A2F_rodata
	.byte 0x00
.endobj gap_03_00000A2F_rodata

# .rodata:0x8 | 0xA30 | size: 0x7
.obj str_gra_01_gra_00001ef0, local
	.string "gra_01"
.endobj str_gra_01_gra_00001ef0

# .rodata:0xF | 0xA37 | size: 0x1
.obj gap_03_00000A37_rodata, global
.hidden gap_03_00000A37_rodata
	.byte 0x00
.endobj gap_03_00000A37_rodata

# .rodata:0x10 | 0xA38 | size: 0x7
.obj str_gra_02_gra_00001ef8, local
	.string "gra_02"
.endobj str_gra_02_gra_00001ef8

# .rodata:0x17 | 0xA3F | size: 0x1
.obj gap_03_00000A3F_rodata, global
.hidden gap_03_00000A3F_rodata
	.byte 0x00
.endobj gap_03_00000A3F_rodata

# .rodata:0x18 | 0xA40 | size: 0x7
.obj str_gra_03_gra_00001f00, local
	.string "gra_03"
.endobj str_gra_03_gra_00001f00

# .rodata:0x1F | 0xA47 | size: 0x1
.obj gap_03_00000A47_rodata, global
.hidden gap_03_00000A47_rodata
	.byte 0x00
.endobj gap_03_00000A47_rodata

# .rodata:0x20 | 0xA48 | size: 0x7
.obj str_gra_04_gra_00001f08, local
	.string "gra_04"
.endobj str_gra_04_gra_00001f08

# .rodata:0x27 | 0xA4F | size: 0x1
.obj gap_03_00000A4F_rodata, global
.hidden gap_03_00000A4F_rodata
	.byte 0x00
.endobj gap_03_00000A4F_rodata

# .rodata:0x28 | 0xA50 | size: 0x7
.obj str_gra_05_gra_00001f10, local
	.string "gra_05"
.endobj str_gra_05_gra_00001f10

# .rodata:0x2F | 0xA57 | size: 0x1
.obj gap_03_00000A57_rodata, global
.hidden gap_03_00000A57_rodata
	.byte 0x00
.endobj gap_03_00000A57_rodata

# .rodata:0x30 | 0xA58 | size: 0x7
.obj str_gra_06_gra_00001f18, local
	.string "gra_06"
.endobj str_gra_06_gra_00001f18

# .rodata:0x37 | 0xA5F | size: 0x1
.obj gap_03_00000A5F_rodata, global
.hidden gap_03_00000A5F_rodata
	.byte 0x00
.endobj gap_03_00000A5F_rodata

# .rodata:0x38 | 0xA60 | size: 0x4
.obj str_gra_gra_00001f20, local
	.string "gra"
.endobj str_gra_gra_00001f20

# .rodata:0x3C | 0xA64 | size: 0x4
.obj gap_03_00000A64_rodata, global
.hidden gap_03_00000A64_rodata
	.4byte 0x00000000
.endobj gap_03_00000A64_rodata

# 0x00004F78..0x00004FC8 | size: 0x50
.data
.balign 8

# .data:0x0 | 0x4F78 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x4F80 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x4F84 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x4F88 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x4F8C | size: 0x4
.obj gap_04_00004F8C_data, global
.hidden gap_04_00004F8C_data
	.4byte 0x00000000
.endobj gap_04_00004F8C_data

# .data:0x18 | 0x4F90 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x4F98 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x4F9C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x4FA0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x4FA8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x4FAC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x4FB0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x4FB4 | size: 0x4
.obj gap_04_00004FB4_data, global
.hidden gap_04_00004FB4_data
	.4byte 0x00000000
.endobj gap_04_00004FB4_data

# .data:0x40 | 0x4FB8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x4FC0 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x4FC4 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

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
