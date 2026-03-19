.include "macros.inc"
.file "battle_database_las.o"

# 0x00007778..0x00007A5C | size: 0x2E4
.text
.balign 4

# .text:0x0 | 0x7778 | size: 0x18
.fn unk_las_00007844, local
/* 00007778 00007844  3C 60 00 00 */	lis r3, unk_las_bss00000098@ha
/* 0000777C 00007848  38 00 00 01 */	li r0, 0x1
/* 00007780 0000784C  38 83 00 00 */	addi r4, r3, unk_las_bss00000098@l
/* 00007784 00007850  38 60 00 02 */	li r3, 0x2
/* 00007788 00007854  98 04 00 00 */	stb r0, 0x0(r4)
/* 0000778C 00007858  4E 80 00 20 */	blr
.endfn unk_las_00007844

# .text:0x18 | 0x7790 | size: 0x194
.fn unk_las_0000785c, local
/* 00007790 0000785C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 00007794 00007860  7C 08 02 A6 */	mflr r0
/* 00007798 00007864  90 01 00 74 */	stw r0, 0x74(r1)
/* 0000779C 00007868  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 000077A0 0000786C  F3 E1 00 68 */	psq_st f31, 0x68(r1), 0, qr0
/* 000077A4 00007870  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 000077A8 00007874  F3 C1 00 58 */	psq_st f30, 0x58(r1), 0, qr0
/* 000077AC 00007878  BF 41 00 38 */	stmw r26, 0x38(r1)
/* 000077B0 0000787C  3C 60 00 00 */	lis r3, lbl_16_rodata_5710@ha
/* 000077B4 00007880  38 00 00 03 */	li r0, 0x3
/* 000077B8 00007884  38 63 00 00 */	addi r3, r3, lbl_16_rodata_5710@l
/* 000077BC 00007888  38 C1 00 10 */	addi r6, r1, 0x10
/* 000077C0 0000788C  38 A3 FF FC */	subi r5, r3, 0x4
/* 000077C4 00007890  7C 09 03 A6 */	mtctr r0
.L_000077C8:
/* 000077C8 00007894  80 65 00 04 */	lwz r3, 0x4(r5)
/* 000077CC 00007898  84 05 00 08 */	lwzu r0, 0x8(r5)
/* 000077D0 0000789C  90 66 00 04 */	stw r3, 0x4(r6)
/* 000077D4 000078A0  94 06 00 08 */	stwu r0, 0x8(r6)
/* 000077D8 000078A4  42 00 FF F0 */	bdnz .L_000077C8
/* 000077DC 000078A8  2C 04 00 00 */	cmpwi r4, 0x0
/* 000077E0 000078AC  41 82 00 68 */	beq .L_00007848
/* 000077E4 000078B0  3C 60 00 00 */	lis r3, unk_las_bss00000098@ha
/* 000077E8 000078B4  3C C0 00 00 */	lis r6, zero_las_00017190@ha
/* 000077EC 000078B8  38 E3 00 00 */	addi r7, r3, unk_las_bss00000098@l
/* 000077F0 000078BC  3B 60 00 00 */	li r27, 0x0
/* 000077F4 000078C0  3C A0 00 00 */	lis r5, float_neg1000_las_00017194@ha
/* 000077F8 000078C4  3C 80 00 00 */	lis r4, float_1_las_00017198@ha
/* 000077FC 000078C8  3C 60 00 00 */	lis r3, unk_las_bss0000009c@ha
/* 00007800 000078CC  9B 67 00 00 */	stb r27, 0x0(r7)
/* 00007804 000078D0  3B 86 00 00 */	addi r28, r6, zero_las_00017190@l
/* 00007808 000078D4  3B E5 00 00 */	addi r31, r5, float_neg1000_las_00017194@l
/* 0000780C 000078D8  3B C4 00 00 */	addi r30, r4, float_1_las_00017198@l
/* 00007810 000078DC  3B A3 00 00 */	addi r29, r3, unk_las_bss0000009c@l
/* 00007814 000078E0  3B 40 00 00 */	li r26, 0x0
.L_00007818:
/* 00007818 000078E4  C0 3C 00 00 */	lfs f1, 0x0(r28)
/* 0000781C 000078E8  38 60 00 08 */	li r3, 0x8
/* 00007820 000078EC  C0 5F 00 00 */	lfs f2, 0x0(r31)
/* 00007824 000078F0  38 80 03 E8 */	li r4, 0x3e8
/* 00007828 000078F4  FC 60 08 90 */	fmr f3, f1
/* 0000782C 000078F8  C0 9E 00 00 */	lfs f4, 0x0(r30)
/* 00007830 000078FC  4B FF 89 0D */	bl effFireEntry
/* 00007834 00007900  3B 5A 00 01 */	addi r26, r26, 0x1
/* 00007838 00007904  7C 7D D9 2E */	stwx r3, r29, r27
/* 0000783C 00007908  2C 1A 00 06 */	cmpwi r26, 0x6
/* 00007840 0000790C  3B 7B 00 04 */	addi r27, r27, 0x4
/* 00007844 00007910  41 80 FF D4 */	blt .L_00007818
.L_00007848:
/* 00007848 00007914  3C 60 00 00 */	lis r3, unk_las_bss00000098@ha
/* 0000784C 00007918  88 03 00 00 */	lbz r0, unk_las_bss00000098@l(r3)
/* 00007850 0000791C  7C 00 07 75 */	extsb. r0, r0
/* 00007854 00007920  41 82 00 34 */	beq .L_00007888
/* 00007858 00007924  3C 60 00 00 */	lis r3, unk_las_bss0000009c@ha
/* 0000785C 00007928  3B 60 00 00 */	li r27, 0x0
/* 00007860 0000792C  3B A3 00 00 */	addi r29, r3, unk_las_bss0000009c@l
/* 00007864 00007930  3B E0 00 00 */	li r31, 0x0
.L_00007868:
/* 00007868 00007934  7C 7D F8 2E */	lwzx r3, r29, r31
/* 0000786C 00007938  4B FF 88 D1 */	bl effSoftDelete
/* 00007870 0000793C  3B 7B 00 01 */	addi r27, r27, 0x1
/* 00007874 00007940  3B FF 00 04 */	addi r31, r31, 0x4
/* 00007878 00007944  2C 1B 00 06 */	cmpwi r27, 0x6
/* 0000787C 00007948  41 80 FF EC */	blt .L_00007868
/* 00007880 0000794C  38 60 00 02 */	li r3, 0x2
/* 00007884 00007950  48 00 00 7C */	b .L_00007900
.L_00007888:
/* 00007888 00007954  3C 80 00 00 */	lis r4, zero_las_00017190@ha
/* 0000788C 00007958  3C 60 00 00 */	lis r3, float_15_las_0001719c@ha
/* 00007890 0000795C  38 A4 00 00 */	addi r5, r4, zero_las_00017190@l
/* 00007894 00007960  C3 E3 00 00 */	lfs f31, float_15_las_0001719c@l(r3)
/* 00007898 00007964  3C 80 00 00 */	lis r4, unk_las_bss0000009c@ha
/* 0000789C 00007968  C3 C5 00 00 */	lfs f30, 0x0(r5)
/* 000078A0 0000796C  3B A1 00 14 */	addi r29, r1, 0x14
/* 000078A4 00007970  3B 60 00 00 */	li r27, 0x0
/* 000078A8 00007974  3B C4 00 00 */	addi r30, r4, unk_las_bss0000009c@l
/* 000078AC 00007978  3B E0 00 00 */	li r31, 0x0
.L_000078B0:
/* 000078B0 0000797C  7C 7D F8 2E */	lwzx r3, r29, r31
/* 000078B4 00007980  38 81 00 08 */	addi r4, r1, 0x8
/* 000078B8 00007984  4B FF 88 85 */	bl mapObjGetPos
/* 000078BC 00007988  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 000078C0 0000798C  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 000078C4 00007990  40 81 00 28 */	ble .L_000078EC
/* 000078C8 00007994  7C 7E F8 2E */	lwzx r3, r30, r31
/* 000078CC 00007998  C0 01 00 08 */	lfs f0, 0x8(r1)
/* 000078D0 0000799C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 000078D4 000079A0  D0 03 00 04 */	stfs f0, 0x4(r3)
/* 000078D8 000079A4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 000078DC 000079A8  EC 00 F8 28 */	fsubs f0, f0, f31
/* 000078E0 000079AC  D0 03 00 08 */	stfs f0, 0x8(r3)
/* 000078E4 000079B0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 000078E8 000079B4  D0 03 00 0C */	stfs f0, 0xc(r3)
.L_000078EC:
/* 000078EC 000079B8  3B 7B 00 01 */	addi r27, r27, 0x1
/* 000078F0 000079BC  3B FF 00 04 */	addi r31, r31, 0x4
/* 000078F4 000079C0  2C 1B 00 06 */	cmpwi r27, 0x6
/* 000078F8 000079C4  41 80 FF B8 */	blt .L_000078B0
/* 000078FC 000079C8  38 60 00 00 */	li r3, 0x0
.L_00007900:
/* 00007900 000079CC  E3 E1 00 68 */	psq_l f31, 0x68(r1), 0, qr0
/* 00007904 000079D0  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 00007908 000079D4  E3 C1 00 58 */	psq_l f30, 0x58(r1), 0, qr0
/* 0000790C 000079D8  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 00007910 000079DC  BB 41 00 38 */	lmw r26, 0x38(r1)
/* 00007914 000079E0  80 01 00 74 */	lwz r0, 0x74(r1)
/* 00007918 000079E4  7C 08 03 A6 */	mtlr r0
/* 0000791C 000079E8  38 21 00 70 */	addi r1, r1, 0x70
/* 00007920 000079EC  4E 80 00 20 */	blr
.endfn unk_las_0000785c

# .text:0x1AC | 0x7924 | size: 0x30
.fn check_battle_end, local
/* 00007924 000079F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00007928 000079F4  7C 08 02 A6 */	mflr r0
/* 0000792C 000079F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 00007930 000079FC  4B FF 88 0D */	bl battleSeqEndCheck
/* 00007934 00007A00  20 63 00 00 */	subfic r3, r3, 0x0
/* 00007938 00007A04  38 00 00 02 */	li r0, 0x2
/* 0000793C 00007A08  7C 63 19 10 */	subfe r3, r3, r3
/* 00007940 00007A0C  7C 03 18 38 */	and r3, r0, r3
/* 00007944 00007A10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00007948 00007A14  7C 08 03 A6 */	mtlr r0
/* 0000794C 00007A18  38 21 00 10 */	addi r1, r1, 0x10
/* 00007950 00007A1C  4E 80 00 20 */	blr
.endfn check_battle_end

# .text:0x1DC | 0x7954 | size: 0x108
.fn _gear_rotate, local
/* 00007954 00007A20  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 00007958 00007A24  7C 08 02 A6 */	mflr r0
/* 0000795C 00007A28  90 01 00 44 */	stw r0, 0x44(r1)
/* 00007960 00007A2C  BF 21 00 24 */	stmw r25, 0x24(r1)
/* 00007964 00007A30  7C 7E 1B 78 */	mr r30, r3
/* 00007968 00007A34  83 63 00 18 */	lwz r27, 0x18(r3)
/* 0000796C 00007A38  80 9B 00 00 */	lwz r4, 0x0(r27)
/* 00007970 00007A3C  4B FF 87 CD */	bl evtGetValue
/* 00007974 00007A40  80 9B 00 04 */	lwz r4, 0x4(r27)
/* 00007978 00007A44  7C 7D 1B 78 */	mr r29, r3
/* 0000797C 00007A48  7F C3 F3 78 */	mr r3, r30
/* 00007980 00007A4C  4B FF 87 BD */	bl evtGetValue
/* 00007984 00007A50  83 FB 00 08 */	lwz r31, 0x8(r27)
/* 00007988 00007A54  7C 79 1B 78 */	mr r25, r3
/* 0000798C 00007A58  7F C3 F3 78 */	mr r3, r30
/* 00007990 00007A5C  7F E4 FB 78 */	mr r4, r31
/* 00007994 00007A60  4B FF 87 A9 */	bl evtGetValue
/* 00007998 00007A64  80 9B 00 0C */	lwz r4, 0xc(r27)
/* 0000799C 00007A68  7C 7A 1B 78 */	mr r26, r3
/* 000079A0 00007A6C  7F C3 F3 78 */	mr r3, r30
/* 000079A4 00007A70  4B FF 87 99 */	bl evtGetValue
/* 000079A8 00007A74  80 9B 00 10 */	lwz r4, 0x10(r27)
/* 000079AC 00007A78  7C 7B 1B 78 */	mr r27, r3
/* 000079B0 00007A7C  7F C3 F3 78 */	mr r3, r30
/* 000079B4 00007A80  4B FF 87 89 */	bl evtGetValue
/* 000079B8 00007A84  7C 7C 1B 78 */	mr r28, r3
/* 000079BC 00007A88  7F A3 EB 78 */	mr r3, r29
/* 000079C0 00007A8C  4B FF 87 7D */	bl BattleSearchObjectPtr
/* 000079C4 00007A90  7C 7D 1B 78 */	mr r29, r3
/* 000079C8 00007A94  7F 23 CB 78 */	mr r3, r25
/* 000079CC 00007A98  4B FF 87 71 */	bl BattleSearchObjectPtr
/* 000079D0 00007A9C  3C 80 43 30 */	lis r4, 0x4330
/* 000079D4 00007AA0  6F 40 80 00 */	xoris r0, r26, 0x8000
/* 000079D8 00007AA4  90 01 00 0C */	stw r0, 0xc(r1)
/* 000079DC 00007AA8  3C A0 00 00 */	lis r5, double_to_int_las_000171a8@ha
/* 000079E0 00007AAC  6F 60 80 00 */	xoris r0, r27, 0x8000
/* 000079E4 00007AB0  C8 45 00 00 */	lfd f2, double_to_int_las_000171a8@l(r5)
/* 000079E8 00007AB4  90 81 00 08 */	stw r4, 0x8(r1)
/* 000079EC 00007AB8  3C C0 00 00 */	lis r6, float_360_las_000171a0@ha
/* 000079F0 00007ABC  7C BA E2 14 */	add r5, r26, r28
/* 000079F4 00007AC0  C0 66 00 00 */	lfs f3, float_360_las_000171a0@l(r6)
/* 000079F8 00007AC4  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 000079FC 00007AC8  7C 05 D8 00 */	cmpw r5, r27
/* 00007A00 00007ACC  90 01 00 14 */	stw r0, 0x14(r1)
/* 00007A04 00007AD0  EC 20 10 28 */	fsubs f1, f0, f2
/* 00007A08 00007AD4  90 81 00 10 */	stw r4, 0x10(r1)
/* 00007A0C 00007AD8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 00007A10 00007ADC  EC 23 00 72 */	fmuls f1, f3, f1
/* 00007A14 00007AE0  EC 00 10 28 */	fsubs f0, f0, f2
/* 00007A18 00007AE4  EC 01 00 24 */	fdivs f0, f1, f0
/* 00007A1C 00007AE8  D0 1D 00 24 */	stfs f0, 0x24(r29)
/* 00007A20 00007AEC  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 00007A24 00007AF0  41 80 00 08 */	blt .L_00007A2C
/* 00007A28 00007AF4  38 A0 00 00 */	li r5, 0x0
.L_00007A2C:
/* 00007A2C 00007AF8  2C 05 00 00 */	cmpwi r5, 0x0
/* 00007A30 00007AFC  40 80 00 08 */	bge .L_00007A38
/* 00007A34 00007B00  38 BB FF FF */	subi r5, r27, 0x1
.L_00007A38:
/* 00007A38 00007B04  7F C3 F3 78 */	mr r3, r30
/* 00007A3C 00007B08  7F E4 FB 78 */	mr r4, r31
/* 00007A40 00007B0C  4B FF 86 FD */	bl evtSetValue
/* 00007A44 00007B10  BB 21 00 24 */	lmw r25, 0x24(r1)
/* 00007A48 00007B14  38 60 00 02 */	li r3, 0x2
/* 00007A4C 00007B18  80 01 00 44 */	lwz r0, 0x44(r1)
/* 00007A50 00007B1C  7C 08 03 A6 */	mtlr r0
/* 00007A54 00007B20  38 21 00 40 */	addi r1, r1, 0x40
/* 00007A58 00007B24  4E 80 00 20 */	blr
.endfn _gear_rotate

# 0x00004E20..0x00005748 | size: 0x928
.rodata
.balign 8

# .rodata:0x0 | 0x4E20 | size: 0x3
.obj str_A1_las_00016888, local
	.string "A1"
.endobj str_A1_las_00016888

# .rodata:0x3 | 0x4E23 | size: 0x1
.obj gap_03_00004E23_rodata, global
.hidden gap_03_00004E23_rodata
	.byte 0x00
.endobj gap_03_00004E23_rodata

# .rodata:0x4 | 0x4E24 | size: 0x2
.obj str_B_las_0001688c, local
	.string "B"
.endobj str_B_las_0001688c

# .rodata:0x6 | 0x4E26 | size: 0x2
.obj gap_03_00004E26_rodata, global
.hidden gap_03_00004E26_rodata
	.2byte 0x0000
.endobj gap_03_00004E26_rodata

# .rodata:0x8 | 0x4E28 | size: 0x7
.obj str_C_kabe_las_00016890, local
	.string "C_kabe"
.endobj str_C_kabe_las_00016890

# .rodata:0xF | 0x4E2F | size: 0x1
.obj gap_03_00004E2F_rodata, global
.hidden gap_03_00004E2F_rodata
	.byte 0x00
.endobj gap_03_00004E2F_rodata

# .rodata:0x10 | 0x4E30 | size: 0x9
.obj str_gear_01a_las_00016898, local
	.string "gear_01a"
.endobj str_gear_01a_las_00016898

# .rodata:0x19 | 0x4E39 | size: 0x3
.obj gap_03_00004E39_rodata, global
.hidden gap_03_00004E39_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004E39_rodata

# .rodata:0x1C | 0x4E3C | size: 0x9
.obj str_gear_01b_las_000168a4, local
	.string "gear_01b"
.endobj str_gear_01b_las_000168a4

# .rodata:0x25 | 0x4E45 | size: 0x3
.obj gap_03_00004E45_rodata, global
.hidden gap_03_00004E45_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004E45_rodata

# .rodata:0x28 | 0x4E48 | size: 0x9
.obj str_gear_02a_las_000168b0, local
	.string "gear_02a"
.endobj str_gear_02a_las_000168b0

# .rodata:0x31 | 0x4E51 | size: 0x3
.obj gap_03_00004E51_rodata, global
.hidden gap_03_00004E51_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004E51_rodata

# .rodata:0x34 | 0x4E54 | size: 0x9
.obj str_gear_02b_las_000168bc, local
	.string "gear_02b"
.endobj str_gear_02b_las_000168bc

# .rodata:0x3D | 0x4E5D | size: 0x3
.obj gap_03_00004E5D_rodata, global
.hidden gap_03_00004E5D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004E5D_rodata

# .rodata:0x40 | 0x4E60 | size: 0x9
.obj str_gear_03a_las_000168c8, local
	.string "gear_03a"
.endobj str_gear_03a_las_000168c8

# .rodata:0x49 | 0x4E69 | size: 0x3
.obj gap_03_00004E69_rodata, global
.hidden gap_03_00004E69_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004E69_rodata

# .rodata:0x4C | 0x4E6C | size: 0x9
.obj str_gear_03b_las_000168d4, local
	.string "gear_03b"
.endobj str_gear_03b_las_000168d4

# .rodata:0x55 | 0x4E75 | size: 0x3
.obj gap_03_00004E75_rodata, global
.hidden gap_03_00004E75_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004E75_rodata

# .rodata:0x58 | 0x4E78 | size: 0x2
.obj str_C_las_000168e0, local
	.string "C"
.endobj str_C_las_000168e0

# .rodata:0x5A | 0x4E7A | size: 0x2
.obj gap_03_00004E7A_rodata, global
.hidden gap_03_00004E7A_rodata
	.2byte 0x0000
.endobj gap_03_00004E7A_rodata

# .rodata:0x5C | 0x4E7C | size: 0x8
.obj str_if_wire_las_000168e4, local
	.string "if_wire"
.endobj str_if_wire_las_000168e4

# .rodata:0x64 | 0x4E84 | size: 0x8
.obj str_if_body_las_000168ec, local
	.string "if_body"
.endobj str_if_body_las_000168ec

# .rodata:0x6C | 0x4E8C | size: 0x9
.obj str_daiza_01_las_000168f4, local
	.string "daiza_01"
.endobj str_daiza_01_las_000168f4

# .rodata:0x75 | 0x4E95 | size: 0x3
.obj gap_03_00004E95_rodata, global
.hidden gap_03_00004E95_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004E95_rodata

# .rodata:0x78 | 0x4E98 | size: 0x9
.obj str_daiza_02_las_00016900, local
	.string "daiza_02"
.endobj str_daiza_02_las_00016900

# .rodata:0x81 | 0x4EA1 | size: 0x3
.obj gap_03_00004EA1_rodata, global
.hidden gap_03_00004EA1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004EA1_rodata

# .rodata:0x84 | 0x4EA4 | size: 0x9
.obj str_daiza_03_las_0001690c, local
	.string "daiza_03"
.endobj str_daiza_03_las_0001690c

# .rodata:0x8D | 0x4EAD | size: 0x3
.obj gap_03_00004EAD_rodata, global
.hidden gap_03_00004EAD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004EAD_rodata

# .rodata:0x90 | 0x4EB0 | size: 0x9
.obj str_daiza_04_las_00016918, local
	.string "daiza_04"
.endobj str_daiza_04_las_00016918

# .rodata:0x99 | 0x4EB9 | size: 0x3
.obj gap_03_00004EB9_rodata, global
.hidden gap_03_00004EB9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004EB9_rodata

# .rodata:0x9C | 0x4EBC | size: 0x5
.obj str_rou1_las_00016924, local
	.string "rou1"
.endobj str_rou1_las_00016924

# .rodata:0xA1 | 0x4EC1 | size: 0x3
.obj gap_03_00004EC1_rodata, global
.hidden gap_03_00004EC1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004EC1_rodata

# .rodata:0xA4 | 0x4EC4 | size: 0x5
.obj str_rou2_las_0001692c, local
	.string "rou2"
.endobj str_rou2_las_0001692c

# .rodata:0xA9 | 0x4EC9 | size: 0x3
.obj gap_03_00004EC9_rodata, global
.hidden gap_03_00004EC9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004EC9_rodata

# .rodata:0xAC | 0x4ECC | size: 0x5
.obj str_rou3_las_00016934, local
	.string "rou3"
.endobj str_rou3_las_00016934

# .rodata:0xB1 | 0x4ED1 | size: 0x3
.obj gap_03_00004ED1_rodata, global
.hidden gap_03_00004ED1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004ED1_rodata

# .rodata:0xB4 | 0x4ED4 | size: 0x5
.obj str_rou4_las_0001693c, local
	.string "rou4"
.endobj str_rou4_las_0001693c

# .rodata:0xB9 | 0x4ED9 | size: 0x3
.obj gap_03_00004ED9_rodata, global
.hidden gap_03_00004ED9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004ED9_rodata

# .rodata:0xBC | 0x4EDC | size: 0x5
.obj str_rou5_las_00016944, local
	.string "rou5"
.endobj str_rou5_las_00016944

# .rodata:0xC1 | 0x4EE1 | size: 0x3
.obj gap_03_00004EE1_rodata, global
.hidden gap_03_00004EE1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004EE1_rodata

# .rodata:0xC4 | 0x4EE4 | size: 0x5
.obj str_rou6_las_0001694c, local
	.string "rou6"
.endobj str_rou6_las_0001694c

# .rodata:0xC9 | 0x4EE9 | size: 0x3
.obj gap_03_00004EE9_rodata, global
.hidden gap_03_00004EE9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004EE9_rodata

# .rodata:0xCC | 0x4EEC | size: 0x3
.obj str_A2_las_00016954, local
	.string "A2"
.endobj str_A2_las_00016954

# .rodata:0xCF | 0x4EEF | size: 0x1
.obj gap_03_00004EEF_rodata, global
.hidden gap_03_00004EEF_rodata
	.byte 0x00
.endobj gap_03_00004EEF_rodata

# .rodata:0xD0 | 0x4EF0 | size: 0x7
.obj str_bti_01_las_00016958, local
	.string "bti_01"
.endobj str_bti_01_las_00016958

# .rodata:0xD7 | 0x4EF7 | size: 0x1
.obj gap_03_00004EF7_rodata, global
.hidden gap_03_00004EF7_rodata
	.byte 0x00
.endobj gap_03_00004EF7_rodata

# .rodata:0xD8 | 0x4EF8 | size: 0x9
.obj str_stg_08_5_las_00016960, local
	.string "stg_08_5"
.endobj str_stg_08_5_las_00016960

# .rodata:0xE1 | 0x4F01 | size: 0x3
.obj gap_03_00004F01_rodata, global
.hidden gap_03_00004F01_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004F01_rodata

# .rodata:0xE4 | 0x4F04 | size: 0x9
.obj str_stg_08_0_las_0001696c, local
	.string "stg_08_0"
.endobj str_stg_08_0_las_0001696c

# .rodata:0xED | 0x4F0D | size: 0x3
.obj gap_03_00004F0D_rodata, global
.hidden gap_03_00004F0D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004F0D_rodata

# .rodata:0xF0 | 0x4F10 | size: 0x9
.obj str_stg_08_2_las_00016978, local
	.string "stg_08_2"
.endobj str_stg_08_2_las_00016978

# .rodata:0xF9 | 0x4F19 | size: 0x3
.obj gap_03_00004F19_rodata, global
.hidden gap_03_00004F19_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004F19_rodata

# .rodata:0xFC | 0x4F1C | size: 0x9
.obj str_stg_08_4_las_00016984, local
	.string "stg_08_4"
.endobj str_stg_08_4_las_00016984

# .rodata:0x105 | 0x4F25 | size: 0x3
.obj gap_03_00004F25_rodata, global
.hidden gap_03_00004F25_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004F25_rodata

# .rodata:0x108 | 0x4F28 | size: 0x9
.obj str_stg_08_6_las_00016990, local
	.string "stg_08_6"
.endobj str_stg_08_6_las_00016990

# .rodata:0x111 | 0x4F31 | size: 0x3
.obj gap_03_00004F31_rodata, global
.hidden gap_03_00004F31_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004F31_rodata

# .rodata:0x114 | 0x4F34 | size: 0x9
.obj str_stg_08_1_las_0001699c, local
	.string "stg_08_1"
.endobj str_stg_08_1_las_0001699c

# .rodata:0x11D | 0x4F3D | size: 0x3
.obj gap_03_00004F3D_rodata, global
.hidden gap_03_00004F3D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004F3D_rodata

# .rodata:0x120 | 0x4F40 | size: 0x9
.obj str_stg_08_3_las_000169a8, local
	.string "stg_08_3"
.endobj str_stg_08_3_las_000169a8

# .rodata:0x129 | 0x4F49 | size: 0x3
.obj gap_03_00004F49_rodata, global
.hidden gap_03_00004F49_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004F49_rodata

# .rodata:0x12C | 0x4F4C | size: 0xF
.obj str_マップstg_08_0_las_000169b4, local
	.4byte 0x837D8362
	.4byte 0x83767374
	.4byte 0x675F3038
	.byte 0x5F, 0x30, 0x00
.endobj str_マップstg_08_0_las_000169b4

# .rodata:0x13B | 0x4F5B | size: 0x1
.obj gap_03_00004F5B_rodata, global
.hidden gap_03_00004F5B_rodata
	.byte 0x00
.endobj gap_03_00004F5B_rodata

# .rodata:0x13C | 0x4F5C | size: 0x11
.obj str_BGM_ZAKO_BATTLE1_las_000169c4, local
	.string "BGM_ZAKO_BATTLE1"
.endobj str_BGM_ZAKO_BATTLE1_las_000169c4

# .rodata:0x14D | 0x4F6D | size: 0x3
.obj gap_03_00004F6D_rodata, global
.hidden gap_03_00004F6D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004F6D_rodata

# .rodata:0x150 | 0x4F70 | size: 0xF
.obj str_マップstg_08_1_las_000169d8, local
	.4byte 0x837D8362
	.4byte 0x83767374
	.4byte 0x675F3038
	.byte 0x5F, 0x31, 0x00
.endobj str_マップstg_08_1_las_000169d8

# .rodata:0x15F | 0x4F7F | size: 0x1
.obj gap_03_00004F7F_rodata, global
.hidden gap_03_00004F7F_rodata
	.byte 0x00
.endobj gap_03_00004F7F_rodata

# .rodata:0x160 | 0x4F80 | size: 0xF
.obj str_マップstg_08_2_las_000169e8, local
	.4byte 0x837D8362
	.4byte 0x83767374
	.4byte 0x675F3038
	.byte 0x5F, 0x32, 0x00
.endobj str_マップstg_08_2_las_000169e8

# .rodata:0x16F | 0x4F8F | size: 0x1
.obj gap_03_00004F8F_rodata, global
.hidden gap_03_00004F8F_rodata
	.byte 0x00
.endobj gap_03_00004F8F_rodata

# .rodata:0x170 | 0x4F90 | size: 0xF
.obj str_マップstg_08_3_las_000169f8, local
	.4byte 0x837D8362
	.4byte 0x83767374
	.4byte 0x675F3038
	.byte 0x5F, 0x33, 0x00
.endobj str_マップstg_08_3_las_000169f8

# .rodata:0x17F | 0x4F9F | size: 0x1
.obj gap_03_00004F9F_rodata, global
.hidden gap_03_00004F9F_rodata
	.byte 0x00
.endobj gap_03_00004F9F_rodata

# .rodata:0x180 | 0x4FA0 | size: 0xF
.obj str_マップstg_08_4_las_00016a08, local
	.4byte 0x837D8362
	.4byte 0x83767374
	.4byte 0x675F3038
	.byte 0x5F, 0x34, 0x00
.endobj str_マップstg_08_4_las_00016a08

# .rodata:0x18F | 0x4FAF | size: 0x1
.obj gap_03_00004FAF_rodata, global
.hidden gap_03_00004FAF_rodata
	.byte 0x00
.endobj gap_03_00004FAF_rodata

# .rodata:0x190 | 0x4FB0 | size: 0xF
.obj str_マップstg_08_5_las_00016a18, local
	.4byte 0x837D8362
	.4byte 0x83767374
	.4byte 0x675F3038
	.byte 0x5F, 0x35, 0x00
.endobj str_マップstg_08_5_las_00016a18

# .rodata:0x19F | 0x4FBF | size: 0x1
.obj gap_03_00004FBF_rodata, global
.hidden gap_03_00004FBF_rodata
	.byte 0x00
.endobj gap_03_00004FBF_rodata

# .rodata:0x1A0 | 0x4FC0 | size: 0xF
.obj str_マップstg_08_6_las_00016a28, local
	.4byte 0x837D8362
	.4byte 0x83767374
	.4byte 0x675F3038
	.byte 0x5F, 0x36, 0x00
.endobj str_マップstg_08_6_las_00016a28

# .rodata:0x1AF | 0x4FCF | size: 0x1
.obj gap_03_00004FCF_rodata, global
.hidden gap_03_00004FCF_rodata
	.byte 0x00
.endobj gap_03_00004FCF_rodata

# .rodata:0x1B0 | 0x4FD0 | size: 0x9
.obj str_黒カロン_las_00016a38, local
	.4byte 0x8D95834A
	.4byte 0x838D8393
	.byte 0x00
.endobj str_黒カロン_las_00016a38

# .rodata:0x1B9 | 0x4FD9 | size: 0x3
.obj gap_03_00004FD9_rodata, global
.hidden gap_03_00004FD9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004FD9_rodata

# .rodata:0x1BC | 0x4FDC | size: 0x14
.obj str_BGM_CHUBOSS_BATTLE1_las_00016a44, local
	.string "BGM_CHUBOSS_BATTLE1"
.endobj str_BGM_CHUBOSS_BATTLE1_las_00016a44

# .rodata:0x1D0 | 0x4FF0 | size: 0x12
.obj str_変身ランペル_魔女_las_00016a58, local
	.4byte 0x95CF9067
	.4byte 0x83898393
	.4byte 0x8379838B
	.4byte 0x2B96828F
	.2byte 0x9700
.endobj str_変身ランペル_魔女_las_00016a58

# .rodata:0x1E2 | 0x5002 | size: 0x2
.obj gap_03_00005002_rodata, global
.hidden gap_03_00005002_rodata
	.2byte 0x0000
.endobj gap_03_00005002_rodata

# .rodata:0x1E4 | 0x5004 | size: 0x7
.obj str_las_09_las_00016a6c, local
	.string "las_09"
.endobj str_las_09_las_00016a6c

# .rodata:0x1EB | 0x500B | size: 0x1
.obj gap_03_0000500B_rodata, global
.hidden gap_03_0000500B_rodata
	.byte 0x00
.endobj gap_03_0000500B_rodata

# .rodata:0x1EC | 0x500C | size: 0x16
.obj str_BGM_BOSS_STG3_3WOMEN_las_00016a74, local
	.string "BGM_BOSS_STG3_3WOMEN1"
.endobj str_BGM_BOSS_STG3_3WOMEN_las_00016a74

# .rodata:0x202 | 0x5022 | size: 0x2
.obj gap_03_00005022_rodata, global
.hidden gap_03_00005022_rodata
	.2byte 0x0000
.endobj gap_03_00005022_rodata

# .rodata:0x204 | 0x5024 | size: 0xE
.obj str_las17クリボー_las_00016a8c, local
	.4byte 0x6C617331
	.4byte 0x37834E83
	.4byte 0x8A837B81
	.2byte 0x5B00
.endobj str_las17クリボー_las_00016a8c

# .rodata:0x212 | 0x5032 | size: 0x2
.obj gap_03_00005032_rodata, global
.hidden gap_03_00005032_rodata
	.2byte 0x0000
.endobj gap_03_00005032_rodata

# .rodata:0x214 | 0x5034 | size: 0x12
.obj str_las17トゲクリボー_las_00016a9c, local
	.4byte 0x6C617331
	.4byte 0x37836783
	.4byte 0x51834E83
	.4byte 0x8A837B81
	.2byte 0x5B00
.endobj str_las17トゲクリボー_las_00016a9c

# .rodata:0x226 | 0x5046 | size: 0x2
.obj gap_03_00005046_rodata, global
.hidden gap_03_00005046_rodata
	.2byte 0x0000
.endobj gap_03_00005046_rodata

# .rodata:0x228 | 0x5048 | size: 0xE
.obj str_las17ノコノコ_las_00016ab0, local
	.4byte 0x6C617331
	.4byte 0x37836D83
	.4byte 0x52836D83
	.2byte 0x5200
.endobj str_las17ノコノコ_las_00016ab0

# .rodata:0x236 | 0x5056 | size: 0x2
.obj gap_03_00005056_rodata, global
.hidden gap_03_00005056_rodata
	.2byte 0x0000
.endobj gap_03_00005056_rodata

# .rodata:0x238 | 0x5058 | size: 0x10
.obj str_las17シンノスケ_las_00016ac0, local
	.4byte 0x6C617331
	.4byte 0x37835683
	.4byte 0x93836D83
	.4byte 0x58835000
.endobj str_las17シンノスケ_las_00016ac0

# .rodata:0x248 | 0x5068 | size: 0x17
.obj str_クッパ＆カメックオババ_las_00016ad0, local
	.4byte 0x834E8362
	.4byte 0x83708195
	.4byte 0x834A8381
	.4byte 0x8362834E
	.4byte 0x8349836F
	.byte 0x83, 0x6F, 0x00
.endobj str_クッパ＆カメックオババ_las_00016ad0

# .rodata:0x25F | 0x507F | size: 0x1
.obj gap_03_0000507F_rodata, global
.hidden gap_03_0000507F_rodata
	.byte 0x00
.endobj gap_03_0000507F_rodata

# .rodata:0x260 | 0x5080 | size: 0x7
.obj str_las_28_las_00016ae8, local
	.string "las_28"
.endobj str_las_28_las_00016ae8

# .rodata:0x267 | 0x5087 | size: 0x1
.obj gap_03_00005087_rodata, global
.hidden gap_03_00005087_rodata
	.byte 0x00
.endobj gap_03_00005087_rodata

# .rodata:0x268 | 0x5088 | size: 0x14
.obj str_BGM_BOSS_STG8_KOOPA_las_00016af0, local
	.string "BGM_BOSS_STG8_KOOPA"
.endobj str_BGM_BOSS_STG8_KOOPA_las_00016af0

# .rodata:0x27C | 0x509C | size: 0x9
.obj str_ブンババ_las_00016b04, local
	.4byte 0x83758393
	.4byte 0x836F836F
	.byte 0x00
.endobj str_ブンババ_las_00016b04

# .rodata:0x285 | 0x50A5 | size: 0x3
.obj gap_03_000050A5_rodata, global
.hidden gap_03_000050A5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000050A5_rodata

# .rodata:0x288 | 0x50A8 | size: 0x7
.obj str_las_26_las_00016b10, local
	.string "las_26"
.endobj str_las_26_las_00016b10

# .rodata:0x28F | 0x50AF | size: 0x1
.obj gap_03_000050AF_rodata, global
.hidden gap_03_000050AF_rodata
	.byte 0x00
.endobj gap_03_000050AF_rodata

# .rodata:0x290 | 0x50B0 | size: 0x17
.obj str_BGM_BOSS_STG1_GONBAB_las_00016b18, local
	.string "BGM_BOSS_STG1_GONBABA1"
.endobj str_BGM_BOSS_STG1_GONBAB_las_00016b18

# .rodata:0x2A7 | 0x50C7 | size: 0x1
.obj gap_03_000050C7_rodata, global
.hidden gap_03_000050C7_rodata
	.byte 0x00
.endobj gap_03_000050C7_rodata

# .rodata:0x2A8 | 0x50C8 | size: 0x11
.obj str_バッテンリーダー_las_00016b30, local
	.4byte 0x836F8362
	.4byte 0x83658393
	.4byte 0x838A815B
	.4byte 0x835F815B
	.byte 0x00
.endobj str_バッテンリーダー_las_00016b30

# .rodata:0x2B9 | 0x50D9 | size: 0x3
.obj gap_03_000050D9_rodata, global
.hidden gap_03_000050D9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000050D9_rodata

# .rodata:0x2BC | 0x50DC | size: 0x17
.obj str_BGM_BOSS_STG8_3RDHEA_las_00016b44, local
	.string "BGM_BOSS_STG8_3RDHEAD1"
.endobj str_BGM_BOSS_STG8_3RDHEA_las_00016b44

# .rodata:0x2D3 | 0x50F3 | size: 0x1
.obj gap_03_000050F3_rodata, global
.hidden gap_03_000050F3_rodata
	.byte 0x00
.endobj gap_03_000050F3_rodata

# .rodata:0x2D4 | 0x50F4 | size: 0x14
.obj str_ブラックピーチ1回目_las_00016b5c, local
	.4byte 0x83758389
	.4byte 0x8362834E
	.4byte 0x8373815B
	.4byte 0x83603189
	.4byte 0xF196DA00
.endobj str_ブラックピーチ1回目_las_00016b5c

# .rodata:0x2E8 | 0x5108 | size: 0x7
.obj str_las_29_las_00016b70, local
	.string "las_29"
.endobj str_las_29_las_00016b70

# .rodata:0x2EF | 0x510F | size: 0x1
.obj gap_03_0000510F_rodata, global
.hidden gap_03_0000510F_rodata
	.byte 0x00
.endobj gap_03_0000510F_rodata

# .rodata:0x2F0 | 0x5110 | size: 0x14
.obj str_BGM_BOSS_STG8_WITCH_las_00016b78, local
	.string "BGM_BOSS_STG8_WITCH"
.endobj str_BGM_BOSS_STG8_WITCH_las_00016b78

# .rodata:0x304 | 0x5124 | size: 0x14
.obj str_ブラックピーチ2回目_las_00016b8c, local
	.4byte 0x83758389
	.4byte 0x8362834E
	.4byte 0x8373815B
	.4byte 0x83603289
	.4byte 0xF196DA00
.endobj str_ブラックピーチ2回目_las_00016b8c

# .rodata:0x318 | 0x5138 | size: 0x19
.obj str_BGM_BOSS_STG8_LAST_B_las_00016ba0, local
	.string "BGM_BOSS_STG8_LAST_BOSS2"
.endobj str_BGM_BOSS_STG8_LAST_B_las_00016ba0

# .rodata:0x331 | 0x5151 | size: 0x3
.obj gap_03_00005151_rodata, global
.hidden gap_03_00005151_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005151_rodata

# .rodata:0x334 | 0x5154 | size: 0x16
.obj str_las01バサバサチュルル_las_00016bbc, local
	.4byte 0x6C617330
	.4byte 0x31836F83
	.4byte 0x54836F83
	.4byte 0x54836083
	.4byte 0x85838B83
	.2byte 0x8B00
.endobj str_las01バサバサチュルル_las_00016bbc

# .rodata:0x34A | 0x516A | size: 0x2
.obj gap_03_0000516A_rodata, global
.hidden gap_03_0000516A_rodata
	.2byte 0x0000
.endobj gap_03_0000516A_rodata

# .rodata:0x34C | 0x516C | size: 0xC
.obj str_las02カロン_las_00016bd4, local
	.4byte 0x6C617330
	.4byte 0x32834A83
	.4byte 0x8D839300
.endobj str_las02カロン_las_00016bd4

# .rodata:0x358 | 0x5178 | size: 0x16
.obj str_las02バサバサチュルル_las_00016be0, local
	.4byte 0x6C617330
	.4byte 0x32836F83
	.4byte 0x54836F83
	.4byte 0x54836083
	.4byte 0x85838B83
	.2byte 0x8B00
.endobj str_las02バサバサチュルル_las_00016be0

# .rodata:0x36E | 0x518E | size: 0x2
.obj gap_03_0000518E_rodata, global
.hidden gap_03_0000518E_rodata
	.2byte 0x0000
.endobj gap_03_0000518E_rodata

# .rodata:0x370 | 0x5190 | size: 0x18
.obj str_las02スーパーキラー大砲_las_00016bf8, local
	.4byte 0x6C617330
	.4byte 0x32835881
	.4byte 0x5B837081
	.4byte 0x5B834C83
	.4byte 0x89815B91
	.4byte 0xE5964300
.endobj str_las02スーパーキラー大砲_las_00016bf8

# .rodata:0x388 | 0x51A8 | size: 0x14
.obj str_las02スーパーキラー_las_00016c10, local
	.4byte 0x6C617330
	.4byte 0x32835881
	.4byte 0x5B837081
	.4byte 0x5B834C83
	.4byte 0x89815B00
.endobj str_las02スーパーキラー_las_00016c10

# .rodata:0x39C | 0x51BC | size: 0x16
.obj str_las03バサバサチュルル_las_00016c24, local
	.4byte 0x6C617330
	.4byte 0x33836F83
	.4byte 0x54836F83
	.4byte 0x54836083
	.4byte 0x85838B83
	.2byte 0x8B00
.endobj str_las03バサバサチュルル_las_00016c24

# .rodata:0x3B2 | 0x51D2 | size: 0x2
.obj gap_03_000051D2_rodata, global
.hidden gap_03_000051D2_rodata
	.2byte 0x0000
.endobj gap_03_000051D2_rodata

# .rodata:0x3B4 | 0x51D4 | size: 0x10
.obj str_las04ファントム_las_00016c3c, local
	.4byte 0x6C617330
	.4byte 0x34837483
	.4byte 0x40839383
	.4byte 0x67838000
.endobj str_las04ファントム_las_00016c3c

# .rodata:0x3C4 | 0x51E4 | size: 0x18
.obj str_las06スーパーキラー大砲_las_00016c4c, local
	.4byte 0x6C617330
	.4byte 0x36835881
	.4byte 0x5B837081
	.4byte 0x5B834C83
	.4byte 0x89815B91
	.4byte 0xE5964300
.endobj str_las06スーパーキラー大砲_las_00016c4c

# .rodata:0x3DC | 0x51FC | size: 0x10
.obj str_las06ファントム_las_00016c64, local
	.4byte 0x6C617330
	.4byte 0x36837483
	.4byte 0x40839383
	.4byte 0x67838000
.endobj str_las06ファントム_las_00016c64

# .rodata:0x3EC | 0x520C | size: 0x14
.obj str_las06スーパーキラー_las_00016c74, local
	.4byte 0x6C617330
	.4byte 0x36835881
	.4byte 0x5B837081
	.4byte 0x5B834C83
	.4byte 0x89815B00
.endobj str_las06スーパーキラー_las_00016c74

# .rodata:0x400 | 0x5220 | size: 0x10
.obj str_las07ファントム_las_00016c88, local
	.4byte 0x6C617330
	.4byte 0x37837483
	.4byte 0x40839383
	.4byte 0x67838000
.endobj str_las07ファントム_las_00016c88

# .rodata:0x410 | 0x5230 | size: 0xC
.obj str_las07カロン_las_00016c98, local
	.4byte 0x6C617330
	.4byte 0x37834A83
	.4byte 0x8D839300
.endobj str_las07カロン_las_00016c98

# .rodata:0x41C | 0x523C | size: 0xE
.obj str_las09ワンワン_las_00016ca4, local
	.4byte 0x6C617330
	.4byte 0x39838F83
	.4byte 0x93838F83
	.2byte 0x9300
.endobj str_las09ワンワン_las_00016ca4

# .rodata:0x42A | 0x524A | size: 0x2
.obj gap_03_0000524A_rodata, global
.hidden gap_03_0000524A_rodata
	.2byte 0x0000
.endobj gap_03_0000524A_rodata

# .rodata:0x42C | 0x524C | size: 0x16
.obj str_las19スーパーマホーン_las_00016cb4, local
	.4byte 0x6C617331
	.4byte 0x39835881
	.4byte 0x5B837081
	.4byte 0x5B837D83
	.4byte 0x7A815B83
	.2byte 0x9300
.endobj str_las19スーパーマホーン_las_00016cb4

# .rodata:0x442 | 0x5262 | size: 0x2
.obj gap_03_00005262_rodata, global
.hidden gap_03_00005262_rodata
	.2byte 0x0000
.endobj gap_03_00005262_rodata

# .rodata:0x444 | 0x5264 | size: 0x16
.obj str_las20スーパーマホーン_las_00016ccc, local
	.4byte 0x6C617332
	.4byte 0x30835881
	.4byte 0x5B837081
	.4byte 0x5B837D83
	.4byte 0x7A815B83
	.2byte 0x9300
.endobj str_las20スーパーマホーン_las_00016ccc

# .rodata:0x45A | 0x527A | size: 0x2
.obj gap_03_0000527A_rodata, global
.hidden gap_03_0000527A_rodata
	.2byte 0x0000
.endobj gap_03_0000527A_rodata

# .rodata:0x45C | 0x527C | size: 0xE
.obj str_las21ワンワン_las_00016ce4, local
	.4byte 0x6C617332
	.4byte 0x31838F83
	.4byte 0x93838F83
	.2byte 0x9300
.endobj str_las21ワンワン_las_00016ce4

# .rodata:0x46A | 0x528A | size: 0x2
.obj gap_03_0000528A_rodata, global
.hidden gap_03_0000528A_rodata
	.2byte 0x0000
.endobj gap_03_0000528A_rodata

# .rodata:0x46C | 0x528C | size: 0x16
.obj str_las22スーパーマホーン_las_00016cf4, local
	.4byte 0x6C617332
	.4byte 0x32835881
	.4byte 0x5B837081
	.4byte 0x5B837D83
	.4byte 0x7A815B83
	.2byte 0x9300
.endobj str_las22スーパーマホーン_las_00016cf4

# .rodata:0x482 | 0x52A2 | size: 0x2
.obj gap_03_000052A2_rodata, global
.hidden gap_03_000052A2_rodata
	.2byte 0x0000
.endobj gap_03_000052A2_rodata

# .rodata:0x484 | 0x52A4 | size: 0x10
.obj str_las22ファントム_las_00016d0c, local
	.4byte 0x6C617332
	.4byte 0x32837483
	.4byte 0x40839383
	.4byte 0x67838000
.endobj str_las22ファントム_las_00016d0c

# .rodata:0x494 | 0x52B4 | size: 0xE
.obj str_las22ワンワン_las_00016d1c, local
	.4byte 0x6C617332
	.4byte 0x32838F83
	.4byte 0x93838F83
	.2byte 0x9300
.endobj str_las22ワンワン_las_00016d1c

# .rodata:0x4A2 | 0x52C2 | size: 0x2
.obj gap_03_000052C2_rodata, global
.hidden gap_03_000052C2_rodata
	.2byte 0x0000
.endobj gap_03_000052C2_rodata

# .rodata:0x4A4 | 0x52C4 | size: 0xE
.obj str_las24ワンワン_las_00016d2c, local
	.4byte 0x6C617332
	.4byte 0x34838F83
	.4byte 0x93838F83
	.2byte 0x9300
.endobj str_las24ワンワン_las_00016d2c

# .rodata:0x4B2 | 0x52D2 | size: 0x2
.obj gap_03_000052D2_rodata, global
.hidden gap_03_000052D2_rodata
	.2byte 0x0000
.endobj gap_03_000052D2_rodata

# .rodata:0x4B4 | 0x52D4 | size: 0x10
.obj str_las25ファントム_las_00016d3c, local
	.4byte 0x6C617332
	.4byte 0x35837483
	.4byte 0x40839383
	.4byte 0x67838000
.endobj str_las25ファントム_las_00016d3c

# .rodata:0x4C4 | 0x52E4 | size: 0x10
.obj str_BTLNO_LAS_TEST1_las_00016d4c, local
	.string "BTLNO_LAS_TEST1"
.endobj str_BTLNO_LAS_TEST1_las_00016d4c

# .rodata:0x4D4 | 0x52F4 | size: 0x10
.obj str_BTLNO_LAS_TEST2_las_00016d5c, local
	.string "BTLNO_LAS_TEST2"
.endobj str_BTLNO_LAS_TEST2_las_00016d5c

# .rodata:0x4E4 | 0x5304 | size: 0x10
.obj str_BTLNO_LAS_TEST3_las_00016d6c, local
	.string "BTLNO_LAS_TEST3"
.endobj str_BTLNO_LAS_TEST3_las_00016d6c

# .rodata:0x4F4 | 0x5314 | size: 0x10
.obj str_BTLNO_LAS_TEST4_las_00016d7c, local
	.string "BTLNO_LAS_TEST4"
.endobj str_BTLNO_LAS_TEST4_las_00016d7c

# .rodata:0x504 | 0x5324 | size: 0x10
.obj str_BTLNO_LAS_TEST5_las_00016d8c, local
	.string "BTLNO_LAS_TEST5"
.endobj str_BTLNO_LAS_TEST5_las_00016d8c

# .rodata:0x514 | 0x5334 | size: 0x10
.obj str_BTLNO_LAS_TEST6_las_00016d9c, local
	.string "BTLNO_LAS_TEST6"
.endobj str_BTLNO_LAS_TEST6_las_00016d9c

# .rodata:0x524 | 0x5344 | size: 0x10
.obj str_BTLNO_LAS_TEST7_las_00016dac, local
	.string "BTLNO_LAS_TEST7"
.endobj str_BTLNO_LAS_TEST7_las_00016dac

# .rodata:0x534 | 0x5354 | size: 0x10
.obj str_BTLNO_LAS_05_01_las_00016dbc, local
	.string "BTLNO_LAS_05_01"
.endobj str_BTLNO_LAS_05_01_las_00016dbc

# .rodata:0x544 | 0x5364 | size: 0x15
.obj str_BTLNO_LAS_09_RAMPELL_las_00016dcc, local
	.string "BTLNO_LAS_09_RAMPELL"
.endobj str_BTLNO_LAS_09_RAMPELL_las_00016dcc

# .rodata:0x559 | 0x5379 | size: 0x3
.obj gap_03_00005379_rodata, global
.hidden gap_03_00005379_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005379_rodata

# .rodata:0x55C | 0x537C | size: 0x10
.obj str_BTLNO_LAS_17_01_las_00016de4, local
	.string "BTLNO_LAS_17_01"
.endobj str_BTLNO_LAS_17_01_las_00016de4

# .rodata:0x56C | 0x538C | size: 0x10
.obj str_BTLNO_LAS_17_02_las_00016df4, local
	.string "BTLNO_LAS_17_02"
.endobj str_BTLNO_LAS_17_02_las_00016df4

# .rodata:0x57C | 0x539C | size: 0x10
.obj str_BTLNO_LAS_17_03_las_00016e04, local
	.string "BTLNO_LAS_17_03"
.endobj str_BTLNO_LAS_17_03_las_00016e04

# .rodata:0x58C | 0x53AC | size: 0x10
.obj str_BTLNO_LAS_17_04_las_00016e14, local
	.string "BTLNO_LAS_17_04"
.endobj str_BTLNO_LAS_17_04_las_00016e14

# .rodata:0x59C | 0x53BC | size: 0x13
.obj str_BTLNO_LAS_28_KOOPA_las_00016e24, local
	.string "BTLNO_LAS_28_KOOPA"
.endobj str_BTLNO_LAS_28_KOOPA_las_00016e24

# .rodata:0x5AF | 0x53CF | size: 0x1
.obj gap_03_000053CF_rodata, global
.hidden gap_03_000053CF_rodata
	.byte 0x00
.endobj gap_03_000053CF_rodata

# .rodata:0x5B0 | 0x53D0 | size: 0x12
.obj str_BTLNO_LAS_BUNBABA_las_00016e38, local
	.string "BTLNO_LAS_BUNBABA"
.endobj str_BTLNO_LAS_BUNBABA_las_00016e38

# .rodata:0x5C2 | 0x53E2 | size: 0x2
.obj gap_03_000053E2_rodata, global
.hidden gap_03_000053E2_rodata
	.2byte 0x0000
.endobj gap_03_000053E2_rodata

# .rodata:0x5C4 | 0x53E4 | size: 0x1B
.obj str_BTLNO_LAS_28_BATTEN__las_00016e4c, local
	.string "BTLNO_LAS_28_BATTEN_LEADER"
.endobj str_BTLNO_LAS_28_BATTEN__las_00016e4c

# .rodata:0x5DF | 0x53FF | size: 0x1
.obj gap_03_000053FF_rodata, global
.hidden gap_03_000053FF_rodata
	.byte 0x00
.endobj gap_03_000053FF_rodata

# .rodata:0x5E0 | 0x5400 | size: 0x1B
.obj str_BTLNO_LAS_29_BLACK_P_las_00016e68, local
	.string "BTLNO_LAS_29_BLACK_PEACH_1"
.endobj str_BTLNO_LAS_29_BLACK_P_las_00016e68

# .rodata:0x5FB | 0x541B | size: 0x1
.obj gap_03_0000541B_rodata, global
.hidden gap_03_0000541B_rodata
	.byte 0x00
.endobj gap_03_0000541B_rodata

# .rodata:0x5FC | 0x541C | size: 0x1B
.obj str_BTLNO_LAS_29_BLACK_P_las_00016e84, local
	.string "BTLNO_LAS_29_BLACK_PEACH_2"
.endobj str_BTLNO_LAS_29_BLACK_P_las_00016e84

# .rodata:0x617 | 0x5437 | size: 0x1
.obj gap_03_00005437_rodata, global
.hidden gap_03_00005437_rodata
	.byte 0x00
.endobj gap_03_00005437_rodata

# .rodata:0x618 | 0x5438 | size: 0x10
.obj str_BTLNO_LAS_01_01_las_00016ea0, local
	.string "BTLNO_LAS_01_01"
.endobj str_BTLNO_LAS_01_01_las_00016ea0

# .rodata:0x628 | 0x5448 | size: 0x10
.obj str_BTLNO_LAS_01_02_las_00016eb0, local
	.string "BTLNO_LAS_01_02"
.endobj str_BTLNO_LAS_01_02_las_00016eb0

# .rodata:0x638 | 0x5458 | size: 0x10
.obj str_BTLNO_LAS_01_03_las_00016ec0, local
	.string "BTLNO_LAS_01_03"
.endobj str_BTLNO_LAS_01_03_las_00016ec0

# .rodata:0x648 | 0x5468 | size: 0x10
.obj str_BTLNO_LAS_02_01_las_00016ed0, local
	.string "BTLNO_LAS_02_01"
.endobj str_BTLNO_LAS_02_01_las_00016ed0

# .rodata:0x658 | 0x5478 | size: 0x10
.obj str_BTLNO_LAS_02_02_las_00016ee0, local
	.string "BTLNO_LAS_02_02"
.endobj str_BTLNO_LAS_02_02_las_00016ee0

# .rodata:0x668 | 0x5488 | size: 0x10
.obj str_BTLNO_LAS_02_03_las_00016ef0, local
	.string "BTLNO_LAS_02_03"
.endobj str_BTLNO_LAS_02_03_las_00016ef0

# .rodata:0x678 | 0x5498 | size: 0x10
.obj str_BTLNO_LAS_02_04_las_00016f00, local
	.string "BTLNO_LAS_02_04"
.endobj str_BTLNO_LAS_02_04_las_00016f00

# .rodata:0x688 | 0x54A8 | size: 0x10
.obj str_BTLNO_LAS_02_05_las_00016f10, local
	.string "BTLNO_LAS_02_05"
.endobj str_BTLNO_LAS_02_05_las_00016f10

# .rodata:0x698 | 0x54B8 | size: 0x10
.obj str_BTLNO_LAS_02_06_las_00016f20, local
	.string "BTLNO_LAS_02_06"
.endobj str_BTLNO_LAS_02_06_las_00016f20

# .rodata:0x6A8 | 0x54C8 | size: 0x10
.obj str_BTLNO_LAS_02_99_las_00016f30, local
	.string "BTLNO_LAS_02_99"
.endobj str_BTLNO_LAS_02_99_las_00016f30

# .rodata:0x6B8 | 0x54D8 | size: 0x10
.obj str_BTLNO_LAS_03_01_las_00016f40, local
	.string "BTLNO_LAS_03_01"
.endobj str_BTLNO_LAS_03_01_las_00016f40

# .rodata:0x6C8 | 0x54E8 | size: 0x10
.obj str_BTLNO_LAS_03_02_las_00016f50, local
	.string "BTLNO_LAS_03_02"
.endobj str_BTLNO_LAS_03_02_las_00016f50

# .rodata:0x6D8 | 0x54F8 | size: 0x10
.obj str_BTLNO_LAS_03_03_las_00016f60, local
	.string "BTLNO_LAS_03_03"
.endobj str_BTLNO_LAS_03_03_las_00016f60

# .rodata:0x6E8 | 0x5508 | size: 0x10
.obj str_BTLNO_LAS_04_01_las_00016f70, local
	.string "BTLNO_LAS_04_01"
.endobj str_BTLNO_LAS_04_01_las_00016f70

# .rodata:0x6F8 | 0x5518 | size: 0x10
.obj str_BTLNO_LAS_06_01_las_00016f80, local
	.string "BTLNO_LAS_06_01"
.endobj str_BTLNO_LAS_06_01_las_00016f80

# .rodata:0x708 | 0x5528 | size: 0x10
.obj str_BTLNO_LAS_06_02_las_00016f90, local
	.string "BTLNO_LAS_06_02"
.endobj str_BTLNO_LAS_06_02_las_00016f90

# .rodata:0x718 | 0x5538 | size: 0x10
.obj str_BTLNO_LAS_06_03_las_00016fa0, local
	.string "BTLNO_LAS_06_03"
.endobj str_BTLNO_LAS_06_03_las_00016fa0

# .rodata:0x728 | 0x5548 | size: 0x10
.obj str_BTLNO_LAS_06_04_las_00016fb0, local
	.string "BTLNO_LAS_06_04"
.endobj str_BTLNO_LAS_06_04_las_00016fb0

# .rodata:0x738 | 0x5558 | size: 0x10
.obj str_BTLNO_LAS_06_05_las_00016fc0, local
	.string "BTLNO_LAS_06_05"
.endobj str_BTLNO_LAS_06_05_las_00016fc0

# .rodata:0x748 | 0x5568 | size: 0x10
.obj str_BTLNO_LAS_06_06_las_00016fd0, local
	.string "BTLNO_LAS_06_06"
.endobj str_BTLNO_LAS_06_06_las_00016fd0

# .rodata:0x758 | 0x5578 | size: 0x10
.obj str_BTLNO_LAS_06_99_las_00016fe0, local
	.string "BTLNO_LAS_06_99"
.endobj str_BTLNO_LAS_06_99_las_00016fe0

# .rodata:0x768 | 0x5588 | size: 0x10
.obj str_BTLNO_LAS_07_01_las_00016ff0, local
	.string "BTLNO_LAS_07_01"
.endobj str_BTLNO_LAS_07_01_las_00016ff0

# .rodata:0x778 | 0x5598 | size: 0x10
.obj str_BTLNO_LAS_07_02_las_00017000, local
	.string "BTLNO_LAS_07_02"
.endobj str_BTLNO_LAS_07_02_las_00017000

# .rodata:0x788 | 0x55A8 | size: 0x10
.obj str_BTLNO_LAS_07_03_las_00017010, local
	.string "BTLNO_LAS_07_03"
.endobj str_BTLNO_LAS_07_03_las_00017010

# .rodata:0x798 | 0x55B8 | size: 0x10
.obj str_BTLNO_LAS_09_01_las_00017020, local
	.string "BTLNO_LAS_09_01"
.endobj str_BTLNO_LAS_09_01_las_00017020

# .rodata:0x7A8 | 0x55C8 | size: 0x10
.obj str_BTLNO_LAS_09_02_las_00017030, local
	.string "BTLNO_LAS_09_02"
.endobj str_BTLNO_LAS_09_02_las_00017030

# .rodata:0x7B8 | 0x55D8 | size: 0x10
.obj str_BTLNO_LAS_19_01_las_00017040, local
	.string "BTLNO_LAS_19_01"
.endobj str_BTLNO_LAS_19_01_las_00017040

# .rodata:0x7C8 | 0x55E8 | size: 0x10
.obj str_BTLNO_LAS_19_02_las_00017050, local
	.string "BTLNO_LAS_19_02"
.endobj str_BTLNO_LAS_19_02_las_00017050

# .rodata:0x7D8 | 0x55F8 | size: 0x10
.obj str_BTLNO_LAS_19_03_las_00017060, local
	.string "BTLNO_LAS_19_03"
.endobj str_BTLNO_LAS_19_03_las_00017060

# .rodata:0x7E8 | 0x5608 | size: 0x10
.obj str_BTLNO_LAS_20_01_las_00017070, local
	.string "BTLNO_LAS_20_01"
.endobj str_BTLNO_LAS_20_01_las_00017070

# .rodata:0x7F8 | 0x5618 | size: 0x10
.obj str_BTLNO_LAS_21_01_las_00017080, local
	.string "BTLNO_LAS_21_01"
.endobj str_BTLNO_LAS_21_01_las_00017080

# .rodata:0x808 | 0x5628 | size: 0x10
.obj str_BTLNO_LAS_21_02_las_00017090, local
	.string "BTLNO_LAS_21_02"
.endobj str_BTLNO_LAS_21_02_las_00017090

# .rodata:0x818 | 0x5638 | size: 0x10
.obj str_BTLNO_LAS_22_01_las_000170a0, local
	.string "BTLNO_LAS_22_01"
.endobj str_BTLNO_LAS_22_01_las_000170a0

# .rodata:0x828 | 0x5648 | size: 0x10
.obj str_BTLNO_LAS_22_02_las_000170b0, local
	.string "BTLNO_LAS_22_02"
.endobj str_BTLNO_LAS_22_02_las_000170b0

# .rodata:0x838 | 0x5658 | size: 0x10
.obj str_BTLNO_LAS_22_03_las_000170c0, local
	.string "BTLNO_LAS_22_03"
.endobj str_BTLNO_LAS_22_03_las_000170c0

# .rodata:0x848 | 0x5668 | size: 0x10
.obj str_BTLNO_LAS_24_01_las_000170d0, local
	.string "BTLNO_LAS_24_01"
.endobj str_BTLNO_LAS_24_01_las_000170d0

# .rodata:0x858 | 0x5678 | size: 0x10
.obj str_BTLNO_LAS_25_01_las_000170e0, local
	.string "BTLNO_LAS_25_01"
.endobj str_BTLNO_LAS_25_01_las_000170e0

# .rodata:0x868 | 0x5688 | size: 0x10
.obj str_BTLNO_LAS_25_02_las_000170f0, local
	.string "BTLNO_LAS_25_02"
.endobj str_BTLNO_LAS_25_02_las_000170f0

# .rodata:0x878 | 0x5698 | size: 0x10
.obj str_BTLNO_LAS_25_03_las_00017100, local
	.string "BTLNO_LAS_25_03"
.endobj str_BTLNO_LAS_25_03_las_00017100

# .rodata:0x888 | 0x56A8 | size: 0x10
.obj str_BTLNO_LAS_25_04_las_00017110, local
	.string "BTLNO_LAS_25_04"
.endobj str_BTLNO_LAS_25_04_las_00017110

# .rodata:0x898 | 0x56B8 | size: 0x10
.obj str_BTLNO_LAS_25_05_las_00017120, local
	.string "BTLNO_LAS_25_05"
.endobj str_BTLNO_LAS_25_05_las_00017120

# .rodata:0x8A8 | 0x56C8 | size: 0x10
.obj str_BTLNO_LAS_25_06_las_00017130, local
	.string "BTLNO_LAS_25_06"
.endobj str_BTLNO_LAS_25_06_las_00017130

# .rodata:0x8B8 | 0x56D8 | size: 0x4
.obj str_hi1_las_00017140, local
	.string "hi1"
.endobj str_hi1_las_00017140

# .rodata:0x8BC | 0x56DC | size: 0x5
.obj str_hi1_las_00017144, local
	.string "_hi1"
.endobj str_hi1_las_00017144

# .rodata:0x8C1 | 0x56E1 | size: 0x3
.obj gap_03_000056E1_rodata, global
.hidden gap_03_000056E1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000056E1_rodata

# .rodata:0x8C4 | 0x56E4 | size: 0x5
.obj str_fire_las_0001714c, local
	.string "fire"
.endobj str_fire_las_0001714c

# .rodata:0x8C9 | 0x56E9 | size: 0x3
.obj gap_03_000056E9_rodata, global
.hidden gap_03_000056E9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000056E9_rodata

# .rodata:0x8CC | 0x56EC | size: 0x4
.obj str_hi2_las_00017154, local
	.string "hi2"
.endobj str_hi2_las_00017154

# .rodata:0x8D0 | 0x56F0 | size: 0x5
.obj str_hi2_las_00017158, local
	.string "_hi2"
.endobj str_hi2_las_00017158

# .rodata:0x8D5 | 0x56F5 | size: 0x3
.obj gap_03_000056F5_rodata, global
.hidden gap_03_000056F5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000056F5_rodata

# .rodata:0x8D8 | 0x56F8 | size: 0x4
.obj str_hi3_las_00017160, local
	.string "hi3"
.endobj str_hi3_las_00017160

# .rodata:0x8DC | 0x56FC | size: 0x5
.obj str_hi3_las_00017164, local
	.string "_hi3"
.endobj str_hi3_las_00017164

# .rodata:0x8E1 | 0x5701 | size: 0x3
.obj gap_03_00005701_rodata, global
.hidden gap_03_00005701_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005701_rodata

# .rodata:0x8E4 | 0x5704 | size: 0x4
.obj str_hi4_las_0001716c, local
	.string "hi4"
.endobj str_hi4_las_0001716c

# .rodata:0x8E8 | 0x5708 | size: 0x4
.obj str_hi5_las_00017170, local
	.string "hi5"
.endobj str_hi5_las_00017170

# .rodata:0x8EC | 0x570C | size: 0x4
.obj str_hi6_las_00017174, local
	.string "hi6"
.endobj str_hi6_las_00017174

# .rodata:0x8F0 | 0x5710 | size: 0x18
.obj lbl_16_rodata_5710, global
	.4byte str_hi1_las_00017140
	.4byte str_hi2_las_00017154
	.4byte str_hi3_las_00017160
	.4byte str_hi4_las_0001716c
	.4byte str_hi5_las_00017170
	.4byte str_hi6_las_00017174
.endobj lbl_16_rodata_5710

# .rodata:0x908 | 0x5728 | size: 0x4
.obj zero_las_00017190, local
	.float 0
.endobj zero_las_00017190

# .rodata:0x90C | 0x572C | size: 0x4
.obj float_neg1000_las_00017194, local
	.float -1000
.endobj float_neg1000_las_00017194

# .rodata:0x910 | 0x5730 | size: 0x4
.obj float_1_las_00017198, local
	.float 1
.endobj float_1_las_00017198

# .rodata:0x914 | 0x5734 | size: 0x4
.obj float_15_las_0001719c, local
	.float 15
.endobj float_15_las_0001719c

# .rodata:0x918 | 0x5738 | size: 0x4
.obj float_360_las_000171a0, local
	.float 360
.endobj float_360_las_000171a0
	.4byte 0x00000000

# .rodata:0x920 | 0x5740 | size: 0x8
.obj double_to_int_las_000171a8, local
	.double 4503601774854144
.endobj double_to_int_las_000171a8

# 0x0001FB08..0x000249B8 | size: 0x4EB0
.data
.balign 8

# .data:0x0 | 0x1FB08 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x1FB10 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x1FB14 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x1FB18 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x1FB1C | size: 0x4
.obj gap_04_0001FB1C_data, global
.hidden gap_04_0001FB1C_data
	.4byte 0x00000000
.endobj gap_04_0001FB1C_data

# .data:0x18 | 0x1FB20 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x1FB28 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x1FB2C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x1FB30 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x1FB38 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x1FB3C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x1FB40 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x1FB44 | size: 0x4
.obj gap_04_0001FB44_data, global
.hidden gap_04_0001FB44_data
	.4byte 0x00000000
.endobj gap_04_0001FB44_data

# .data:0x40 | 0x1FB48 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x1FB50 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x1FB54 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x1FB58 | size: 0x390
.obj las_btlobject_data, local
	.4byte str_A1_las_00016888
	.4byte 0x00020000
	.4byte 0x42BA0000
	.4byte 0x00000000
	.4byte 0xC2800000
	.4byte 0x003C0000
	.4byte str_B_las_0001688c
	.4byte 0x00020002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_C_kabe_las_00016890
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_gear_01a_las_00016898
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_gear_01b_las_000168a4
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_gear_02a_las_000168b0
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_gear_02b_las_000168bc
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_gear_03a_las_000168c8
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_gear_03b_las_000168d4
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
.L_0001FC30:
	.4byte str_B_las_0001688c
	.4byte 0x00020002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_C_las_000168e0
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
.L_0001FC60:
	.4byte str_B_las_0001688c
	.4byte 0x00020002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_C_las_000168e0
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_if_wire_las_000168e4
	.4byte 0x00050006
	.4byte 0x00000000
	.4byte 0x43020000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_if_body_las_000168ec
	.4byte 0x00050006
	.4byte 0x00000000
	.4byte 0x43020000
	.4byte 0x00000000
	.4byte 0x00000000
.L_0001FCC0:
	.4byte str_C_las_000168e0
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xC2C60000
	.4byte 0x003C0000
.L_0001FCD8:
	.4byte str_C_las_000168e0
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xC2C60000
	.4byte 0x003C0000
	.4byte str_if_wire_las_000168e4
	.4byte 0x00050006
	.4byte 0x00000000
	.4byte 0x43020000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_if_body_las_000168ec
	.4byte 0x00050006
	.4byte 0x00000000
	.4byte 0x43020000
	.4byte 0x00000000
	.4byte 0x00000000
.L_0001FD20:
	.4byte str_daiza_01_las_000168f4
	.4byte 0x00020000
	.4byte 0x431E0000
	.4byte 0x00000000
	.4byte 0xC1E00000
	.4byte 0x003C0000
	.4byte str_daiza_02_las_00016900
	.4byte 0x00020000
	.4byte 0x42BE0000
	.4byte 0x00000000
	.4byte 0xC2480000
	.4byte 0x0A320000
	.4byte str_daiza_03_las_0001690c
	.4byte 0x00020000
	.4byte 0xC31E0000
	.4byte 0x00000000
	.4byte 0xC1E00000
	.4byte 0x14280000
	.4byte str_daiza_04_las_00016918
	.4byte 0x00020000
	.4byte 0xC2BE0000
	.4byte 0x00000000
	.4byte 0xC2480000
	.4byte 0x1E1E0000
	.4byte str_B_las_0001688c
	.4byte 0x00020002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_C_las_000168e0
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
.L_0001FDB0:
	.4byte str_C_las_000168e0
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
.L_0001FDC8:
	.4byte str_rou1_las_00016924
	.4byte 0x00020000
	.4byte 0x42680000
	.4byte 0x00000000
	.4byte 0xC2A20000
	.4byte 0x003C0000
	.4byte str_rou2_las_0001692c
	.4byte 0x00020000
	.4byte 0xC2DA0000
	.4byte 0x00000000
	.4byte 0xC28A0000
	.4byte 0x003C0000
	.4byte str_rou3_las_00016934
	.4byte 0x00020000
	.4byte 0xC2680000
	.4byte 0x00000000
	.4byte 0xC2A20000
	.4byte 0x003C0000
	.4byte str_rou4_las_0001693c
	.4byte 0x00020000
	.4byte 0x43330000
	.4byte 0x00000000
	.4byte 0xC2580000
	.4byte 0x003C0000
	.4byte str_rou5_las_00016944
	.4byte 0x00020000
	.4byte 0x42DA0000
	.4byte 0x00000000
	.4byte 0xC28A0000
	.4byte 0x003C0000
	.4byte str_rou6_las_0001694c
	.4byte 0x00020000
	.4byte 0xC3330000
	.4byte 0x00000000
	.4byte 0xC2580000
	.4byte 0x003C0000
	.4byte str_B_las_0001688c
	.4byte 0x00020002
	.4byte 0x42B60000
	.4byte 0x00000000
	.4byte 0xC2640000
	.4byte 0x003C0000
	.4byte str_C_las_000168e0
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
.L_0001FE88:
	.4byte str_A2_las_00016954
	.4byte 0x00020001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42A00000
	.4byte 0x003C0000
	.4byte str_C_las_000168e0
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
.L_0001FEB8:
	.4byte str_B_las_0001688c
	.4byte 0x00020002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_C_las_000168e0
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
.endobj las_btlobject_data

# .data:0x3E0 | 0x1FEE8 | size: 0x1108
.obj las_btlstage_data, local
	.4byte str_bti_01_las_00016958
	.4byte str_stg_08_5_las_00016960
	.4byte 0x00000009
	.4byte las_btlobject_data
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x0210006F
	.4byte 0x20000000
	.4byte 0x001A0302
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000007FF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x02100060
	.4byte 0x20000000
	.4byte 0x001A0302
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000007FF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte bgset_las_gear_event
	.4byte 0x00000000
.L_0002009C:
	.4byte str_bti_01_las_00016958
	.4byte str_stg_08_0_las_0001696c
	.4byte 0x00000002
	.rel las_btlobject_data, .L_0001FC30
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x02100060
	.4byte 0x20000000
	.4byte 0x001A0302
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000007FF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x02100060
	.4byte 0x20000000
	.4byte 0x001A0302
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000007FF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.L_00020250:
	.4byte str_bti_01_las_00016958
	.4byte str_stg_08_0_las_0001696c
	.4byte 0x00000004
	.rel las_btlobject_data, .L_0001FC60
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x02100060
	.4byte 0x20000000
	.4byte 0x001A0302
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000007FF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x02100060
	.4byte 0x20000000
	.4byte 0x001A0302
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000007FF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.L_00020404:
	.4byte str_bti_01_las_00016958
	.4byte str_stg_08_2_las_00016978
	.4byte 0x00000001
	.rel las_btlobject_data, .L_0001FCC0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x02100060
	.4byte 0x20000000
	.4byte 0x001A0302
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000007FF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x02100060
	.4byte 0x20000000
	.4byte 0x001A0302
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000007FF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.L_000205B8:
	.4byte str_bti_01_las_00016958
	.4byte str_stg_08_2_las_00016978
	.4byte 0x00000003
	.rel las_btlobject_data, .L_0001FCD8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x02100060
	.4byte 0x20000000
	.4byte 0x001A0302
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000007FF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x02100060
	.4byte 0x20000000
	.4byte 0x001A0302
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000007FF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.L_0002076C:
	.4byte str_bti_01_las_00016958
	.4byte str_stg_08_4_las_00016984
	.4byte 0x00000006
	.rel las_btlobject_data, .L_0001FD20
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x02100060
	.4byte 0x20000000
	.4byte 0x001A0302
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000007FF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x02100060
	.4byte 0x20000000
	.4byte 0x001A0302
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000007FF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.L_00020920:
	.4byte str_bti_01_las_00016958
	.4byte str_stg_08_4_las_00016984
	.4byte 0x00000001
	.rel las_btlobject_data, .L_0001FDB0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x02100060
	.4byte 0x20000000
	.4byte 0x001A0302
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000007FF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x02100060
	.4byte 0x20000000
	.4byte 0x001A0302
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000007FF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.L_00020AD4:
	.4byte str_bti_01_las_00016958
	.4byte str_stg_08_6_las_00016990
	.4byte 0x00000008
	.rel las_btlobject_data, .L_0001FDC8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x02100070
	.4byte 0x10000000
	.4byte 0x001A0302
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000007FF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x0210006F
	.4byte 0x20000000
	.4byte 0x001A0302
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000007FF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte stg_08_6_init_event
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010101
.L_00020C88:
	.4byte str_bti_01_las_00016958
	.4byte str_stg_08_1_las_0001699c
	.4byte 0x00000002
	.rel las_btlobject_data, .L_0001FE88
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x02100060
	.4byte 0x20000000
	.4byte 0x001A0302
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000007FF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x02100060
	.4byte 0x20000000
	.4byte 0x001A0302
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000007FF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte stg_08_1_init_event
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010101
.L_00020E3C:
	.4byte str_bti_01_las_00016958
	.4byte str_stg_08_3_las_000169a8
	.4byte 0x00000002
	.rel las_btlobject_data, .L_0001FEB8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x02100060
	.4byte 0x20000000
	.4byte 0x001A0302
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000007FF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x02100060
	.4byte 0x20000000
	.4byte 0x001A0302
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000007FF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj las_btlstage_data

# .data:0x14E8 | 0x20FF0 | size: 0xF0
.obj btlparty_las_las_05_01, local
	.4byte unit_karon_16_data_3F5A8
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0xC1A00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_karon
	.4byte unit_karon_16_data_3F5A8
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42480000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_karon
	.4byte unit_black_karon_16_data_3D138
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_karon
	.4byte unit_karon_16_data_3F5A8
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x43020000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_karon
	.4byte unit_karon_16_data_3F5A8
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x432A0000
	.4byte 0x00000000
	.4byte 0x41A00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_karon
.endobj btlparty_las_las_05_01

# .data:0x15D8 | 0x210E0 | size: 0x20
.obj btlgrp_las_las_05_01, local
	.4byte 0x00000005
	.4byte btlparty_las_las_05_01
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default3
	.4byte 0x00000005
.endobj btlgrp_las_las_05_01

# .data:0x15F8 | 0x21100 | size: 0x30
.obj btlparty_las_las_17_01_off_1, local
	.4byte unit_honenoko_16_data_57190
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_NONE
.endobj btlparty_las_las_17_01_off_1

# .data:0x1628 | 0x21130 | size: 0x20
.obj btlgrp_las_las_17_01_off_1, local
	.4byte 0x00000001
	.4byte btlparty_las_las_17_01_off_1
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_las_las_17_01_off_1

# .data:0x1648 | 0x21150 | size: 0x30
.obj btlparty_las_las_17_02_off_1, local
	.4byte unit_red_honenoko_16_data_58BD0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_NONE
.endobj btlparty_las_las_17_02_off_1

# .data:0x1678 | 0x21180 | size: 0x20
.obj btlgrp_las_las_17_02_off_1, local
	.4byte 0x00000001
	.4byte btlparty_las_las_17_02_off_1
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_las_las_17_02_off_1

# .data:0x1698 | 0x211A0 | size: 0x30
.obj btlparty_las_las_17_03_off_1, local
	.4byte unit_karon_16_data_3F5A8
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_NONE
.endobj btlparty_las_las_17_03_off_1

# .data:0x16C8 | 0x211D0 | size: 0x20
.obj btlgrp_las_las_17_03_off_1, local
	.4byte 0x00000001
	.4byte btlparty_las_las_17_03_off_1
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default3
	.4byte 0x00000005
.endobj btlgrp_las_las_17_03_off_1

# .data:0x16E8 | 0x211F0 | size: 0x30
.obj btlparty_las_las_17_04_off_1, local
	.4byte unit_black_karon_16_data_3D138
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_NONE
.endobj btlparty_las_las_17_04_off_1

# .data:0x1718 | 0x21220 | size: 0x20
.obj btlgrp_las_las_17_04_off_1, local
	.4byte 0x00000001
	.4byte btlparty_las_las_17_04_off_1
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_las_las_17_04_off_1

# .data:0x1738 | 0x21240 | size: 0x30
.obj btlparty_las_las_09_rampell, local
	.4byte unit_boss_rampell_las_16_data_298B0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x425C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_default_param_list
.endobj btlparty_las_las_09_rampell

# .data:0x1768 | 0x21270 | size: 0x20
.obj btlgrp_las_las_09_rampell, local
	.4byte 0x00000001
	.4byte btlparty_las_las_09_rampell
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_las_las_09_rampell

# .data:0x1788 | 0x21290 | size: 0x30
.obj btlparty_las_las_bunbaba, local
	.4byte unit_boss_bunbaba_16_data_47A80
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x43B68000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_default_param_list
.endobj btlparty_las_las_bunbaba

# .data:0x17B8 | 0x212C0 | size: 0x20
.obj btlgrp_las_las_bunbaba, local
	.4byte 0x00000001
	.4byte btlparty_las_las_bunbaba
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_las_las_bunbaba

# .data:0x17D8 | 0x212E0 | size: 0x30
.obj btlparty_las_las_28_batten_leader, local
	.4byte unit_boss_batten_leader_16_data_424F0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_default_param_list
.endobj btlparty_las_las_28_batten_leader

# .data:0x1808 | 0x21310 | size: 0x20
.obj btlgrp_las_las_28_batten_leader, local
	.4byte 0x00000001
	.4byte btlparty_las_las_28_batten_leader
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_las_las_28_batten_leader

# .data:0x1828 | 0x21330 | size: 0x30
.obj btlparty_las_las_28_koopa, local
	.4byte unit_boss_koopa_16_data_24A08
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_default_param_list
.endobj btlparty_las_las_28_koopa

# .data:0x1858 | 0x21360 | size: 0x20
.obj btlgrp_las_las_28_koopa, local
	.4byte 0x00000001
	.4byte btlparty_las_las_28_koopa
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_las_las_28_koopa

# .data:0x1878 | 0x21380 | size: 0x30
.obj btlparty_las_las_29_black_peach_1, local
	.4byte unit_boss_black_peach_16_data_33970
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_default_param_list
.endobj btlparty_las_las_29_black_peach_1

# .data:0x18A8 | 0x213B0 | size: 0x20
.obj btlgrp_las_las_29_black_peach_1, local
	.4byte 0x00000001
	.4byte btlparty_las_las_29_black_peach_1
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_las_las_29_black_peach_1

# .data:0x18C8 | 0x213D0 | size: 0x30
.obj btlparty_las_las_29_black_peach_2, local
	.4byte unit_boss_black_peach_16_data_33970
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_default_param_list
.endobj btlparty_las_las_29_black_peach_2

# .data:0x18F8 | 0x21400 | size: 0x20
.obj btlgrp_las_las_29_black_peach_2, local
	.4byte 0x00000001
	.4byte btlparty_las_las_29_black_peach_2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_las_las_29_black_peach_2

# .data:0x1918 | 0x21420 | size: 0x60
.obj btlparty_las_las_01_01_off_1, local
	.4byte unit_basabasa_chururu_16_data_527F8
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x43020000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_basabasa_chururu
	.4byte unit_basabasa_chururu_16_data_527F8
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x43020000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_basabasa_chururu
.endobj btlparty_las_las_01_01_off_1

# .data:0x1978 | 0x21480 | size: 0x20
.obj btlgrp_las_las_01_01_off_1, local
	.4byte 0x00000002
	.4byte btlparty_las_las_01_01_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default2
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_las_las_01_01_off_1

# .data:0x1998 | 0x214A0 | size: 0x90
.obj btlparty_las_las_01_02_off_1, local
	.4byte unit_basabasa_chururu_16_data_527F8
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42480000
	.4byte 0x43020000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_basabasa_chururu
	.4byte unit_basabasa_chururu_16_data_527F8
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x43020000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_basabasa_chururu
	.4byte unit_basabasa_chururu_16_data_527F8
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x43020000
	.4byte 0x43020000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_basabasa_chururu
.endobj btlparty_las_las_01_02_off_1

# .data:0x1A28 | 0x21530 | size: 0x20
.obj btlgrp_las_las_01_02_off_1, local
	.4byte 0x00000003
	.4byte btlparty_las_las_01_02_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default2
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_las_las_01_02_off_1

# .data:0x1A48 | 0x21550 | size: 0xC0
.obj btlparty_las_las_01_03_off_1, local
	.4byte unit_basabasa_chururu_16_data_527F8
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x41F00000
	.4byte 0x43020000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_basabasa_chururu
	.4byte unit_basabasa_chururu_16_data_527F8
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x43020000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_basabasa_chururu
	.4byte unit_basabasa_chururu_16_data_527F8
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x43020000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_basabasa_chururu
	.4byte unit_basabasa_chururu_16_data_527F8
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x43160000
	.4byte 0x43020000
	.4byte 0x41A00000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_basabasa_chururu
.endobj btlparty_las_las_01_03_off_1

# .data:0x1B08 | 0x21610 | size: 0x20
.obj btlgrp_las_las_01_03_off_1, local
	.4byte 0x00000004
	.4byte btlparty_las_las_01_03_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default2
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_las_las_01_03_off_1

# .data:0x1B28 | 0x21630 | size: 0x60
.obj btlparty_las_las_01_01_off_2, local
	.4byte unit_basabasa_chururu_16_data_527F8
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x43020000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_basabasa_chururu
	.4byte unit_basabasa_chururu_16_data_527F8
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x43020000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_basabasa_chururu
.endobj btlparty_las_las_01_01_off_2

# .data:0x1B88 | 0x21690 | size: 0x20
.obj btlgrp_las_las_01_01_off_2, local
	.4byte 0x00000002
	.4byte btlparty_las_las_01_01_off_2
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default2
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_las_las_01_01_off_2

# .data:0x1BA8 | 0x216B0 | size: 0x90
.obj btlparty_las_las_01_02_off_2, local
	.4byte unit_basabasa_chururu_16_data_527F8
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42480000
	.4byte 0x43020000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_basabasa_chururu
	.4byte unit_basabasa_chururu_16_data_527F8
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x43020000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_basabasa_chururu
	.4byte unit_basabasa_chururu_16_data_527F8
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x43020000
	.4byte 0x43020000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_basabasa_chururu
.endobj btlparty_las_las_01_02_off_2

# .data:0x1C38 | 0x21740 | size: 0x20
.obj btlgrp_las_las_01_02_off_2, local
	.4byte 0x00000003
	.4byte btlparty_las_las_01_02_off_2
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default2
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_las_las_01_02_off_2

# .data:0x1C58 | 0x21760 | size: 0xC0
.obj btlparty_las_las_01_03_off_2, local
	.4byte unit_basabasa_chururu_16_data_527F8
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x41F00000
	.4byte 0x43020000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_basabasa_chururu
	.4byte unit_basabasa_chururu_16_data_527F8
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x43020000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_basabasa_chururu
	.4byte unit_basabasa_chururu_16_data_527F8
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x43020000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_basabasa_chururu
	.4byte unit_basabasa_chururu_16_data_527F8
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x43160000
	.4byte 0x43020000
	.4byte 0x41A00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_basabasa_chururu
.endobj btlparty_las_las_01_03_off_2

# .data:0x1D18 | 0x21820 | size: 0x20
.obj btlgrp_las_las_01_03_off_2, local
	.4byte 0x00000004
	.4byte btlparty_las_las_01_03_off_2
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default2
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_las_las_01_03_off_2

# .data:0x1D38 | 0x21840 | size: 0x60
.obj btlparty_las_las_02_01_off_1, local
	.4byte unit_karon_16_data_3F5A8
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_karon
	.4byte unit_karon_16_data_3F5A8
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_karon
.endobj btlparty_las_las_02_01_off_1

# .data:0x1D98 | 0x218A0 | size: 0x20
.obj btlgrp_las_las_02_01_off_1, local
	.4byte 0x00000002
	.4byte btlparty_las_las_02_01_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default3
	.4byte 0x00000005
.endobj btlgrp_las_las_02_01_off_1

# .data:0x1DB8 | 0x218C0 | size: 0x90
.obj btlparty_las_las_02_02_off_1, local
	.4byte unit_basabasa_chururu_16_data_527F8
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42480000
	.4byte 0x43020000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_basabasa_chururu
	.4byte unit_karon_16_data_3F5A8
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_karon
	.4byte unit_basabasa_chururu_16_data_527F8
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x43020000
	.4byte 0x43020000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_basabasa_chururu
.endobj btlparty_las_las_02_02_off_1

# .data:0x1E48 | 0x21950 | size: 0x20
.obj btlgrp_las_las_02_02_off_1, local
	.4byte 0x00000003
	.4byte btlparty_las_las_02_02_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default2
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_las_las_02_02_off_1

# .data:0x1E68 | 0x21970 | size: 0x90
.obj btlparty_las_las_02_03_off_1, local
	.4byte unit_karon_16_data_3F5A8
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42480000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_karon
	.4byte unit_karon_16_data_3F5A8
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_karon
	.4byte unit_basabasa_chururu_16_data_527F8
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x43020000
	.4byte 0x43020000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_basabasa_chururu
.endobj btlparty_las_las_02_03_off_1

# .data:0x1EF8 | 0x21A00 | size: 0x20
.obj btlgrp_las_las_02_03_off_1, local
	.4byte 0x00000003
	.4byte btlparty_las_las_02_03_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default3
	.4byte 0x00000005
.endobj btlgrp_las_las_02_03_off_1

# .data:0x1F18 | 0x21A20 | size: 0xC0
.obj btlparty_las_las_02_04_off_1, local
	.4byte unit_karon_16_data_3F5A8
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_karon
	.4byte unit_karon_16_data_3F5A8
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_karon
	.4byte unit_karon_16_data_3F5A8
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_karon
	.4byte unit_karon_16_data_3F5A8
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x43160000
	.4byte 0x00000000
	.4byte 0x41A00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_karon
.endobj btlparty_las_las_02_04_off_1

# .data:0x1FD8 | 0x21AE0 | size: 0x20
.obj btlgrp_las_las_02_04_off_1, local
	.4byte 0x00000004
	.4byte btlparty_las_las_02_04_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default3
	.4byte 0x00000005
.endobj btlgrp_las_las_02_04_off_1

# .data:0x1FF8 | 0x21B00 | size: 0x60
.obj btlparty_las_las_02_05_off_1, local
	.4byte unit_super_killer_cannon_16_data_4B0F0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_super_killer_cannon
	.4byte unit_super_killer_cannon_16_data_4B0F0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_super_killer_cannon
.endobj btlparty_las_las_02_05_off_1

# .data:0x2058 | 0x21B60 | size: 0x20
.obj btlgrp_las_las_02_05_off_1, local
	.4byte 0x00000002
	.4byte btlparty_las_las_02_05_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default3
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_las_las_02_05_off_1

# .data:0x2078 | 0x21B80 | size: 0x60
.obj btlparty_las_las_02_06_off_1, local
	.4byte unit_super_killer_cannon_16_data_4B0F0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_super_killer_cannon
	.4byte unit_super_killer_cannon_16_data_4B0F0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_super_killer_cannon
.endobj btlparty_las_las_02_06_off_1

# .data:0x20D8 | 0x21BE0 | size: 0x20
.obj btlgrp_las_las_02_06_off_1, local
	.4byte 0x00000002
	.4byte btlparty_las_las_02_06_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default3
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_las_las_02_06_off_1

# .data:0x20F8 | 0x21C00 | size: 0x60
.obj btlparty_las_las_02_99_off_1, local
	.4byte unit_super_killer_16_data_4A668
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x42200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_super_killer
	.4byte unit_super_killer_16_data_4A668
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x42200000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_super_killer
.endobj btlparty_las_las_02_99_off_1

# .data:0x2158 | 0x21C60 | size: 0x20
.obj btlgrp_las_las_02_99_off_1, local
	.4byte 0x00000002
	.4byte btlparty_las_las_02_99_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_las_las_02_99_off_1

# .data:0x2178 | 0x21C80 | size: 0x30
.obj btlparty_las_las_03_01_off_1, local
	.4byte unit_basabasa_chururu_16_data_527F8
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x43020000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_basabasa_chururu
.endobj btlparty_las_las_03_01_off_1

# .data:0x21A8 | 0x21CB0 | size: 0x20
.obj btlgrp_las_las_03_01_off_1, local
	.4byte 0x00000001
	.4byte btlparty_las_las_03_01_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default2
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_las_las_03_01_off_1

# .data:0x21C8 | 0x21CD0 | size: 0x30
.obj btlparty_las_las_03_02_off_1, local
	.4byte unit_basabasa_chururu_16_data_527F8
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x43020000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_basabasa_chururu
.endobj btlparty_las_las_03_02_off_1

# .data:0x21F8 | 0x21D00 | size: 0x20
.obj btlgrp_las_las_03_02_off_1, local
	.4byte 0x00000001
	.4byte btlparty_las_las_03_02_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default2
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_las_las_03_02_off_1

# .data:0x2218 | 0x21D20 | size: 0x30
.obj btlparty_las_las_03_03_off_1, local
	.4byte unit_basabasa_chururu_16_data_527F8
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x43020000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_basabasa_chururu
.endobj btlparty_las_las_03_03_off_1

# .data:0x2248 | 0x21D50 | size: 0x20
.obj btlgrp_las_las_03_03_off_1, local
	.4byte 0x00000001
	.4byte btlparty_las_las_03_03_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default2
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_las_las_03_03_off_1

# .data:0x2268 | 0x21D70 | size: 0x30
.obj btlparty_las_las_03_01_off_2, local
	.4byte unit_basabasa_chururu_16_data_527F8
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x43020000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_basabasa_chururu
.endobj btlparty_las_las_03_01_off_2

# .data:0x2298 | 0x21DA0 | size: 0x20
.obj btlgrp_las_las_03_01_off_2, local
	.4byte 0x00000001
	.4byte btlparty_las_las_03_01_off_2
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default2
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_las_las_03_01_off_2

# .data:0x22B8 | 0x21DC0 | size: 0x30
.obj btlparty_las_las_03_02_off_2, local
	.4byte unit_basabasa_chururu_16_data_527F8
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x43020000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_basabasa_chururu
.endobj btlparty_las_las_03_02_off_2

# .data:0x22E8 | 0x21DF0 | size: 0x20
.obj btlgrp_las_las_03_02_off_2, local
	.4byte 0x00000001
	.4byte btlparty_las_las_03_02_off_2
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default2
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_las_las_03_02_off_2

# .data:0x2308 | 0x21E10 | size: 0x30
.obj btlparty_las_las_03_03_off_2, local
	.4byte unit_basabasa_chururu_16_data_527F8
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x43020000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_basabasa_chururu
.endobj btlparty_las_las_03_03_off_2

# .data:0x2338 | 0x21E40 | size: 0x20
.obj btlgrp_las_las_03_03_off_2, local
	.4byte 0x00000001
	.4byte btlparty_las_las_03_03_off_2
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default2
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_las_las_03_03_off_2

# .data:0x2358 | 0x21E60 | size: 0x30
.obj btlparty_las_las_04_01_off_1, local
	.4byte unit_phantom_16_data_53FD0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_phantom
.endobj btlparty_las_las_04_01_off_1

# .data:0x2388 | 0x21E90 | size: 0x20
.obj btlgrp_las_las_04_01_off_1, local
	.4byte 0x00000001
	.4byte btlparty_las_las_04_01_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default3
	.4byte 0x00000005
.endobj btlgrp_las_las_04_01_off_1

# .data:0x23A8 | 0x21EB0 | size: 0x60
.obj btlparty_las_las_06_01_off_1, local
	.4byte unit_super_killer_cannon_16_data_4B0F0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_super_killer_cannon
	.4byte unit_super_killer_cannon_16_data_4B0F0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_super_killer_cannon
.endobj btlparty_las_las_06_01_off_1

# .data:0x2408 | 0x21F10 | size: 0x20
.obj btlgrp_las_las_06_01_off_1, local
	.4byte 0x00000002
	.4byte btlparty_las_las_06_01_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default3
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_las_las_06_01_off_1

# .data:0x2428 | 0x21F30 | size: 0x60
.obj btlparty_las_las_06_02_off_1, local
	.4byte unit_super_killer_cannon_16_data_4B0F0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_super_killer_cannon
	.4byte unit_super_killer_cannon_16_data_4B0F0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_super_killer_cannon
.endobj btlparty_las_las_06_02_off_1

# .data:0x2488 | 0x21F90 | size: 0x20
.obj btlgrp_las_las_06_02_off_1, local
	.4byte 0x00000002
	.4byte btlparty_las_las_06_02_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default3
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_las_las_06_02_off_1

# .data:0x24A8 | 0x21FB0 | size: 0x60
.obj btlparty_las_las_06_03_off_1, local
	.4byte unit_phantom_16_data_53FD0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_phantom
	.4byte unit_phantom_16_data_53FD0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_phantom
.endobj btlparty_las_las_06_03_off_1

# .data:0x2508 | 0x22010 | size: 0x20
.obj btlgrp_las_las_06_03_off_1, local
	.4byte 0x00000002
	.4byte btlparty_las_las_06_03_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default3
	.4byte 0x00000005
.endobj btlgrp_las_las_06_03_off_1

# .data:0x2528 | 0x22030 | size: 0xC0
.obj btlparty_las_las_06_04_off_1, local
	.4byte unit_phantom_16_data_53FD0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_phantom
	.4byte unit_phantom_16_data_53FD0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_phantom
	.4byte unit_phantom_16_data_53FD0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_phantom
	.4byte unit_phantom_16_data_53FD0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x43160000
	.4byte 0x00000000
	.4byte 0x41A00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_phantom
.endobj btlparty_las_las_06_04_off_1

# .data:0x25E8 | 0x220F0 | size: 0x20
.obj btlgrp_las_las_06_04_off_1, local
	.4byte 0x00000004
	.4byte btlparty_las_las_06_04_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default3
	.4byte 0x00000005
.endobj btlgrp_las_las_06_04_off_1

# .data:0x2608 | 0x22110 | size: 0x60
.obj btlparty_las_las_06_05_off_1, local
	.4byte unit_super_killer_cannon_16_data_4B0F0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_super_killer_cannon
	.4byte unit_super_killer_cannon_16_data_4B0F0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_super_killer_cannon
.endobj btlparty_las_las_06_05_off_1

# .data:0x2668 | 0x22170 | size: 0x20
.obj btlgrp_las_las_06_05_off_1, local
	.4byte 0x00000002
	.4byte btlparty_las_las_06_05_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default3
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_las_las_06_05_off_1

# .data:0x2688 | 0x22190 | size: 0x60
.obj btlparty_las_las_06_06_off_1, local
	.4byte unit_super_killer_cannon_16_data_4B0F0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_super_killer_cannon
	.4byte unit_super_killer_cannon_16_data_4B0F0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_super_killer_cannon
.endobj btlparty_las_las_06_06_off_1

# .data:0x26E8 | 0x221F0 | size: 0x20
.obj btlgrp_las_las_06_06_off_1, local
	.4byte 0x00000002
	.4byte btlparty_las_las_06_06_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default3
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_las_las_06_06_off_1

# .data:0x2708 | 0x22210 | size: 0x60
.obj btlparty_las_las_06_99_off_1, local
	.4byte unit_super_killer_16_data_4A668
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x42200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_super_killer
	.4byte unit_super_killer_16_data_4A668
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x42200000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_super_killer
.endobj btlparty_las_las_06_99_off_1

# .data:0x2768 | 0x22270 | size: 0x20
.obj btlgrp_las_las_06_99_off_1, local
	.4byte 0x00000002
	.4byte btlparty_las_las_06_99_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_las_las_06_99_off_1

# .data:0x2788 | 0x22290 | size: 0x90
.obj btlparty_las_las_07_01_off_1, local
	.4byte unit_phantom_16_data_53FD0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42480000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_phantom
	.4byte unit_phantom_16_data_53FD0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_phantom
	.4byte unit_phantom_16_data_53FD0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x43020000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_phantom
.endobj btlparty_las_las_07_01_off_1

# .data:0x2818 | 0x22320 | size: 0x20
.obj btlgrp_las_las_07_01_off_1, local
	.4byte 0x00000003
	.4byte btlparty_las_las_07_01_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default3
	.4byte 0x00000005
.endobj btlgrp_las_las_07_01_off_1

# .data:0x2838 | 0x22340 | size: 0x90
.obj btlparty_las_las_07_02_off_1, local
	.4byte unit_karon_16_data_3F5A8
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42480000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_karon
	.4byte unit_karon_16_data_3F5A8
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_karon
	.4byte unit_phantom_16_data_53FD0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x43020000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_phantom
.endobj btlparty_las_las_07_02_off_1

# .data:0x28C8 | 0x223D0 | size: 0x20
.obj btlgrp_las_las_07_02_off_1, local
	.4byte 0x00000003
	.4byte btlparty_las_las_07_02_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default3
	.4byte 0x00000005
.endobj btlgrp_las_las_07_02_off_1

# .data:0x28E8 | 0x223F0 | size: 0x90
.obj btlparty_las_las_07_03_off_1, local
	.4byte unit_karon_16_data_3F5A8
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42480000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_karon
	.4byte unit_karon_16_data_3F5A8
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_karon
	.4byte unit_phantom_16_data_53FD0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x43020000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_phantom
.endobj btlparty_las_las_07_03_off_1

# .data:0x2978 | 0x22480 | size: 0x20
.obj btlgrp_las_las_07_03_off_1, local
	.4byte 0x00000003
	.4byte btlparty_las_las_07_03_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default3
	.4byte 0x00000005
.endobj btlgrp_las_las_07_03_off_1

# .data:0x2998 | 0x224A0 | size: 0x60
.obj btlparty_las_las_09_01_off_1, local
	.4byte unit_wanwan_16_data_50D20
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_wanwan
	.4byte unit_wanwan_16_data_50D20
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_wanwan
.endobj btlparty_las_las_09_01_off_1

# .data:0x29F8 | 0x22500 | size: 0x20
.obj btlgrp_las_las_09_01_off_1, local
	.4byte 0x00000002
	.4byte btlparty_las_las_09_01_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default4
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_las_las_09_01_off_1

# .data:0x2A18 | 0x22520 | size: 0x90
.obj btlparty_las_las_09_02_off_1, local
	.4byte unit_wanwan_16_data_50D20
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42480000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_wanwan
	.4byte unit_wanwan_16_data_50D20
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_wanwan
	.4byte unit_wanwan_16_data_50D20
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x43020000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_wanwan
.endobj btlparty_las_las_09_02_off_1

# .data:0x2AA8 | 0x225B0 | size: 0x20
.obj btlgrp_las_las_09_02_off_1, local
	.4byte 0x00000003
	.4byte btlparty_las_las_09_02_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default4
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_las_las_09_02_off_1

# .data:0x2AC8 | 0x225D0 | size: 0x30
.obj btlparty_las_las_19_01_off_1, local
	.4byte unit_super_mahorn_16_data_4C958
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_super_mahorn
.endobj btlparty_las_las_19_01_off_1

# .data:0x2AF8 | 0x22600 | size: 0x20
.obj btlgrp_las_las_19_01_off_1, local
	.4byte 0x00000001
	.4byte btlparty_las_las_19_01_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default3
	.4byte battle_flower_drop_param_default3
	.4byte 0x00000005
.endobj btlgrp_las_las_19_01_off_1

# .data:0x2B18 | 0x22620 | size: 0x60
.obj btlparty_las_las_19_02_off_1, local
	.4byte unit_super_mahorn_16_data_4C958
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_super_mahorn
	.4byte unit_super_mahorn_16_data_4C958
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_super_mahorn
.endobj btlparty_las_las_19_02_off_1

# .data:0x2B78 | 0x22680 | size: 0x20
.obj btlgrp_las_las_19_02_off_1, local
	.4byte 0x00000002
	.4byte btlparty_las_las_19_02_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default3
	.4byte battle_flower_drop_param_default3
	.4byte 0x00000005
.endobj btlgrp_las_las_19_02_off_1

# .data:0x2B98 | 0x226A0 | size: 0x90
.obj btlparty_las_las_19_03_off_1, local
	.4byte unit_super_mahorn_16_data_4C958
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42480000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_super_mahorn
	.4byte unit_super_mahorn_16_data_4C958
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_super_mahorn
	.4byte unit_super_mahorn_16_data_4C958
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x43020000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_super_mahorn
.endobj btlparty_las_las_19_03_off_1

# .data:0x2C28 | 0x22730 | size: 0x20
.obj btlgrp_las_las_19_03_off_1, local
	.4byte 0x00000003
	.4byte btlparty_las_las_19_03_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default3
	.4byte battle_flower_drop_param_default3
	.4byte 0x00000005
.endobj btlgrp_las_las_19_03_off_1

# .data:0x2C48 | 0x22750 | size: 0x30
.obj btlparty_las_las_20_01_off_1, local
	.4byte unit_super_mahorn_16_data_4C958
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_super_mahorn
.endobj btlparty_las_las_20_01_off_1

# .data:0x2C78 | 0x22780 | size: 0x20
.obj btlgrp_las_las_20_01_off_1, local
	.4byte 0x00000001
	.4byte btlparty_las_las_20_01_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default3
	.4byte battle_flower_drop_param_default3
	.4byte 0x00000005
.endobj btlgrp_las_las_20_01_off_1

# .data:0x2C98 | 0x227A0 | size: 0x60
.obj btlparty_las_las_21_01_off_1, local
	.4byte unit_wanwan_16_data_50D20
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_wanwan
	.4byte unit_wanwan_16_data_50D20
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_wanwan
.endobj btlparty_las_las_21_01_off_1

# .data:0x2CF8 | 0x22800 | size: 0x20
.obj btlgrp_las_las_21_01_off_1, local
	.4byte 0x00000002
	.4byte btlparty_las_las_21_01_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default4
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_las_las_21_01_off_1

# .data:0x2D18 | 0x22820 | size: 0x60
.obj btlparty_las_las_21_02_off_1, local
	.4byte unit_wanwan_16_data_50D20
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_wanwan
	.4byte unit_wanwan_16_data_50D20
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_wanwan
.endobj btlparty_las_las_21_02_off_1

# .data:0x2D78 | 0x22880 | size: 0x20
.obj btlgrp_las_las_21_02_off_1, local
	.4byte 0x00000002
	.4byte btlparty_las_las_21_02_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default4
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_las_las_21_02_off_1

# .data:0x2D98 | 0x228A0 | size: 0x60
.obj btlparty_las_las_22_01_off_1, local
	.4byte unit_super_mahorn_16_data_4C958
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_super_mahorn
	.4byte unit_super_mahorn_16_data_4C958
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_super_mahorn
.endobj btlparty_las_las_22_01_off_1

# .data:0x2DF8 | 0x22900 | size: 0x20
.obj btlgrp_las_las_22_01_off_1, local
	.4byte 0x00000002
	.4byte btlparty_las_las_22_01_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default3
	.4byte battle_flower_drop_param_default3
	.4byte 0x00000005
.endobj btlgrp_las_las_22_01_off_1

# .data:0x2E18 | 0x22920 | size: 0xC0
.obj btlparty_las_las_22_02_off_1, local
	.4byte unit_phantom_16_data_53FD0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_phantom
	.4byte unit_phantom_16_data_53FD0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_phantom
	.4byte unit_phantom_16_data_53FD0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_phantom
	.4byte unit_phantom_16_data_53FD0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x43160000
	.4byte 0x00000000
	.4byte 0x41A00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_phantom
.endobj btlparty_las_las_22_02_off_1

# .data:0x2ED8 | 0x229E0 | size: 0x20
.obj btlgrp_las_las_22_02_off_1, local
	.4byte 0x00000004
	.4byte btlparty_las_las_22_02_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default3
	.4byte 0x00000005
.endobj btlgrp_las_las_22_02_off_1

# .data:0x2EF8 | 0x22A00 | size: 0x60
.obj btlparty_las_las_22_03_off_1, local
	.4byte unit_wanwan_16_data_50D20
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_wanwan
	.4byte unit_phantom_16_data_53FD0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_phantom
.endobj btlparty_las_las_22_03_off_1

# .data:0x2F58 | 0x22A60 | size: 0x20
.obj btlgrp_las_las_22_03_off_1, local
	.4byte 0x00000002
	.4byte btlparty_las_las_22_03_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default4
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_las_las_22_03_off_1

# .data:0x2F78 | 0x22A80 | size: 0x60
.obj btlparty_las_las_24_01_off_1, local
	.4byte unit_wanwan_16_data_50D20
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_wanwan
	.4byte unit_super_mahorn_16_data_4C958
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_super_mahorn
.endobj btlparty_las_las_24_01_off_1

# .data:0x2FD8 | 0x22AE0 | size: 0x20
.obj btlgrp_las_las_24_01_off_1, local
	.4byte 0x00000002
	.4byte btlparty_las_las_24_01_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default4
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_las_las_24_01_off_1

# .data:0x2FF8 | 0x22B00 | size: 0x30
.obj btlparty_las_las_25_01_off_1, local
	.4byte unit_phantom_16_data_53FD0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_phantom
.endobj btlparty_las_las_25_01_off_1

# .data:0x3028 | 0x22B30 | size: 0x20
.obj btlgrp_las_las_25_01_off_1, local
	.4byte 0x00000001
	.4byte btlparty_las_las_25_01_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default3
	.4byte 0x00000005
.endobj btlgrp_las_las_25_01_off_1

# .data:0x3048 | 0x22B50 | size: 0x90
.obj btlparty_las_las_25_02_off_1, local
	.4byte unit_phantom_16_data_53FD0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42480000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_phantom
	.4byte unit_phantom_16_data_53FD0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_phantom
	.4byte unit_phantom_16_data_53FD0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x43020000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_phantom
.endobj btlparty_las_las_25_02_off_1

# .data:0x30D8 | 0x22BE0 | size: 0x20
.obj btlgrp_las_las_25_02_off_1, local
	.4byte 0x00000003
	.4byte btlparty_las_las_25_02_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default3
	.4byte 0x00000005
.endobj btlgrp_las_las_25_02_off_1

# .data:0x30F8 | 0x22C00 | size: 0xC0
.obj btlparty_las_las_25_03_off_1, local
	.4byte unit_phantom_16_data_53FD0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_phantom
	.4byte unit_phantom_16_data_53FD0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_phantom
	.4byte unit_phantom_16_data_53FD0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_phantom
	.4byte unit_super_mahorn_16_data_4C958
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x43160000
	.4byte 0x00000000
	.4byte 0x41A00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_super_mahorn
.endobj btlparty_las_las_25_03_off_1

# .data:0x31B8 | 0x22CC0 | size: 0x20
.obj btlgrp_las_las_25_03_off_1, local
	.4byte 0x00000004
	.4byte btlparty_las_las_25_03_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default3
	.4byte 0x00000005
.endobj btlgrp_las_las_25_03_off_1

# .data:0x31D8 | 0x22CE0 | size: 0x60
.obj btlparty_las_las_25_04_off_1, local
	.4byte unit_phantom_16_data_53FD0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_phantom
	.4byte unit_phantom_16_data_53FD0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_phantom
.endobj btlparty_las_las_25_04_off_1

# .data:0x3238 | 0x22D40 | size: 0x20
.obj btlgrp_las_las_25_04_off_1, local
	.4byte 0x00000002
	.4byte btlparty_las_las_25_04_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default3
	.4byte 0x00000005
.endobj btlgrp_las_las_25_04_off_1

# .data:0x3258 | 0x22D60 | size: 0x90
.obj btlparty_las_las_25_05_off_1, local
	.4byte unit_phantom_16_data_53FD0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42480000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_phantom
	.4byte unit_phantom_16_data_53FD0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_phantom
	.4byte unit_super_mahorn_16_data_4C958
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x43020000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_super_mahorn
.endobj btlparty_las_las_25_05_off_1

# .data:0x32E8 | 0x22DF0 | size: 0x20
.obj btlgrp_las_las_25_05_off_1, local
	.4byte 0x00000003
	.4byte btlparty_las_las_25_05_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default3
	.4byte 0x00000005
.endobj btlgrp_las_las_25_05_off_1

# .data:0x3308 | 0x22E10 | size: 0x90
.obj btlparty_las_las_25_06_off_1, local
	.4byte unit_phantom_16_data_53FD0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42480000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_phantom
	.4byte unit_phantom_16_data_53FD0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_phantom
	.4byte unit_phantom_16_data_53FD0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x43020000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_phantom
.endobj btlparty_las_las_25_06_off_1

# .data:0x3398 | 0x22EA0 | size: 0x20
.obj btlgrp_las_las_25_06_off_1, local
	.4byte 0x00000003
	.4byte btlparty_las_las_25_06_off_1
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default3
	.4byte 0x00000005
.endobj btlgrp_las_las_25_06_off_1

# .data:0x33B8 | 0x22EC0 | size: 0x18
.obj btlgrpsel_las_btlno_las_test1_off, local
	.4byte 0x00000032
	.4byte btlgrp_las_las_05_01
	.rel las_btlstage_data, .L_0002009C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_test1_off

# .data:0x33D0 | 0x22ED8 | size: 0x18
.obj btlgrpsel_las_btlno_las_test2_off, local
	.4byte 0x00000032
	.4byte btlgrp_las_las_05_01
	.rel las_btlstage_data, .L_00020C88
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_test2_off

# .data:0x33E8 | 0x22EF0 | size: 0x18
.obj btlgrpsel_las_btlno_las_test3_off, local
	.4byte 0x00000032
	.4byte btlgrp_las_las_05_01
	.rel las_btlstage_data, .L_00020404
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_test3_off

# .data:0x3400 | 0x22F08 | size: 0x18
.obj btlgrpsel_las_btlno_las_test4_off, local
	.4byte 0x00000032
	.4byte btlgrp_las_las_05_01
	.rel las_btlstage_data, .L_00020E3C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_test4_off

# .data:0x3418 | 0x22F20 | size: 0x18
.obj btlgrpsel_las_btlno_las_test5_off, local
	.4byte 0x00000032
	.4byte btlgrp_las_las_05_01
	.rel las_btlstage_data, .L_0002076C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_test5_off

# .data:0x3430 | 0x22F38 | size: 0x18
.obj btlgrpsel_las_btlno_las_test6_off, local
	.4byte 0x00000032
	.4byte btlgrp_las_las_05_01
	.4byte las_btlstage_data
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_test6_off

# .data:0x3448 | 0x22F50 | size: 0x18
.obj btlgrpsel_las_btlno_las_test7_off, local
	.4byte 0x00000032
	.4byte btlgrp_las_las_05_01
	.rel las_btlstage_data, .L_00020AD4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_test7_off

# .data:0x3460 | 0x22F68 | size: 0x18
.obj btlgrpsel_las_btlno_las_05_01_off, local
	.4byte 0x00000032
	.4byte btlgrp_las_las_05_01
	.rel las_btlstage_data, .L_00020404
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_05_01_off

# .data:0x3478 | 0x22F80 | size: 0x18
.obj btlgrpsel_las_btlno_las_09_rampell_off, local
	.4byte 0x00000032
	.4byte btlgrp_las_las_09_rampell
	.rel las_btlstage_data, .L_00020E3C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_09_rampell_off

# .data:0x3490 | 0x22F98 | size: 0x18
.obj btlgrpsel_las_btlno_las_17_01_off, local
	.4byte 0x00000032
	.4byte btlgrp_las_las_17_01_off_1
	.rel las_btlstage_data, .L_00020920
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_17_01_off

# .data:0x34A8 | 0x22FB0 | size: 0x18
.obj btlgrpsel_las_btlno_las_17_02_off, local
	.4byte 0x00000032
	.4byte btlgrp_las_las_17_02_off_1
	.rel las_btlstage_data, .L_00020920
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_17_02_off

# .data:0x34C0 | 0x22FC8 | size: 0x18
.obj btlgrpsel_las_btlno_las_17_03_off, local
	.4byte 0x00000032
	.4byte btlgrp_las_las_17_03_off_1
	.rel las_btlstage_data, .L_00020920
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_17_03_off

# .data:0x34D8 | 0x22FE0 | size: 0x18
.obj btlgrpsel_las_btlno_las_17_04_off, local
	.4byte 0x00000032
	.4byte btlgrp_las_las_17_04_off_1
	.rel las_btlstage_data, .L_00020920
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_17_04_off

# .data:0x34F0 | 0x22FF8 | size: 0x18
.obj btlgrpsel_las_btlno_las_28_koopa_off, local
	.4byte 0x00000032
	.4byte btlgrp_las_las_28_koopa
	.rel las_btlstage_data, .L_00020404
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_28_koopa_off

# .data:0x3508 | 0x23010 | size: 0x18
.obj btlgrpsel_las_btlno_las_bunbaba_off, local
	.4byte 0x00000032
	.4byte btlgrp_las_las_bunbaba
	.rel las_btlstage_data, .L_00020404
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_bunbaba_off

# .data:0x3520 | 0x23028 | size: 0x18
.obj btlgrpsel_las_btlno_las_28_batten_leader_off, local
	.4byte 0x00000032
	.4byte btlgrp_las_las_28_batten_leader
	.rel las_btlstage_data, .L_00020404
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_28_batten_leader_off

# .data:0x3538 | 0x23040 | size: 0x18
.obj btlgrpsel_las_btlno_las_29_black_peach_1_off, local
	.4byte 0x00000032
	.4byte btlgrp_las_las_29_black_peach_1
	.rel las_btlstage_data, .L_00020AD4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_29_black_peach_1_off

# .data:0x3550 | 0x23058 | size: 0x18
.obj btlgrpsel_las_btlno_las_29_black_peach_2_off, local
	.4byte 0x00000032
	.4byte btlgrp_las_las_29_black_peach_2
	.rel las_btlstage_data, .L_00020AD4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_29_black_peach_2_off

# .data:0x3568 | 0x23070 | size: 0x24
.obj btlgrpsel_las_btlno_las_01_01_off, local
	.4byte 0x00000014
	.4byte btlgrp_las_las_01_01_off_1
	.rel las_btlstage_data, .L_0002009C
	.4byte 0x00000000
	.4byte btlgrp_las_las_01_01_off_2
	.rel las_btlstage_data, .L_00020250
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_01_01_off

# .data:0x358C | 0x23094 | size: 0x24
.obj btlgrpsel_las_btlno_las_01_02_off, local
	.4byte 0x00000014
	.4byte btlgrp_las_las_01_02_off_1
	.rel las_btlstage_data, .L_0002009C
	.4byte 0x00000000
	.4byte btlgrp_las_las_01_02_off_2
	.rel las_btlstage_data, .L_00020250
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_01_02_off

# .data:0x35B0 | 0x230B8 | size: 0x24
.obj btlgrpsel_las_btlno_las_01_03_off, local
	.4byte 0x00000014
	.4byte btlgrp_las_las_01_03_off_1
	.rel las_btlstage_data, .L_0002009C
	.4byte 0x00000000
	.4byte btlgrp_las_las_01_03_off_2
	.rel las_btlstage_data, .L_00020250
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_01_03_off

# .data:0x35D4 | 0x230DC | size: 0x18
.obj btlgrpsel_las_btlno_las_02_01_off, local
	.4byte 0x00000014
	.4byte btlgrp_las_las_02_01_off_1
	.rel las_btlstage_data, .L_00020C88
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_02_01_off

# .data:0x35EC | 0x230F4 | size: 0x18
.obj btlgrpsel_las_btlno_las_02_02_off, local
	.4byte 0x00000014
	.4byte btlgrp_las_las_02_02_off_1
	.rel las_btlstage_data, .L_00020C88
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_02_02_off

# .data:0x3604 | 0x2310C | size: 0x18
.obj btlgrpsel_las_btlno_las_02_03_off, local
	.4byte 0x00000014
	.4byte btlgrp_las_las_02_03_off_1
	.rel las_btlstage_data, .L_00020C88
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_02_03_off

# .data:0x361C | 0x23124 | size: 0x18
.obj btlgrpsel_las_btlno_las_02_04_off, local
	.4byte 0x00000014
	.4byte btlgrp_las_las_02_04_off_1
	.rel las_btlstage_data, .L_00020C88
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_02_04_off

# .data:0x3634 | 0x2313C | size: 0x18
.obj btlgrpsel_las_btlno_las_02_05_off, local
	.4byte 0x00000014
	.4byte btlgrp_las_las_02_05_off_1
	.rel las_btlstage_data, .L_00020C88
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_02_05_off

# .data:0x364C | 0x23154 | size: 0x18
.obj btlgrpsel_las_btlno_las_02_06_off, local
	.4byte 0x00000014
	.4byte btlgrp_las_las_02_06_off_1
	.rel las_btlstage_data, .L_00020C88
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_02_06_off

# .data:0x3664 | 0x2316C | size: 0x18
.obj btlgrpsel_las_btlno_las_02_99_off, local
	.4byte 0x00000014
	.4byte btlgrp_las_las_02_99_off_1
	.rel las_btlstage_data, .L_00020C88
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_02_99_off

# .data:0x367C | 0x23184 | size: 0x24
.obj btlgrpsel_las_btlno_las_03_01_off, local
	.4byte 0x00000014
	.4byte btlgrp_las_las_03_01_off_1
	.rel las_btlstage_data, .L_00020404
	.4byte 0x00000000
	.4byte btlgrp_las_las_03_01_off_2
	.rel las_btlstage_data, .L_000205B8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_03_01_off

# .data:0x36A0 | 0x231A8 | size: 0x24
.obj btlgrpsel_las_btlno_las_03_02_off, local
	.4byte 0x00000014
	.4byte btlgrp_las_las_03_02_off_1
	.rel las_btlstage_data, .L_00020404
	.4byte 0x00000000
	.4byte btlgrp_las_las_03_02_off_2
	.rel las_btlstage_data, .L_000205B8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_03_02_off

# .data:0x36C4 | 0x231CC | size: 0x24
.obj btlgrpsel_las_btlno_las_03_03_off, local
	.4byte 0x00000014
	.4byte btlgrp_las_las_03_03_off_1
	.rel las_btlstage_data, .L_00020404
	.4byte 0x00000000
	.4byte btlgrp_las_las_03_03_off_2
	.rel las_btlstage_data, .L_000205B8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_03_03_off

# .data:0x36E8 | 0x231F0 | size: 0x18
.obj btlgrpsel_las_btlno_las_04_01_off, local
	.4byte 0x00000014
	.4byte btlgrp_las_las_04_01_off_1
	.rel las_btlstage_data, .L_0002009C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_04_01_off

# .data:0x3700 | 0x23208 | size: 0x18
.obj btlgrpsel_las_btlno_las_06_01_off, local
	.4byte 0x00000014
	.4byte btlgrp_las_las_06_01_off_1
	.rel las_btlstage_data, .L_00020C88
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_06_01_off

# .data:0x3718 | 0x23220 | size: 0x18
.obj btlgrpsel_las_btlno_las_06_02_off, local
	.4byte 0x00000014
	.4byte btlgrp_las_las_06_02_off_1
	.rel las_btlstage_data, .L_00020C88
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_06_02_off

# .data:0x3730 | 0x23238 | size: 0x18
.obj btlgrpsel_las_btlno_las_06_03_off, local
	.4byte 0x00000014
	.4byte btlgrp_las_las_06_03_off_1
	.rel las_btlstage_data, .L_00020C88
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_06_03_off

# .data:0x3748 | 0x23250 | size: 0x18
.obj btlgrpsel_las_btlno_las_06_04_off, local
	.4byte 0x00000014
	.4byte btlgrp_las_las_06_04_off_1
	.rel las_btlstage_data, .L_00020C88
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_06_04_off

# .data:0x3760 | 0x23268 | size: 0x18
.obj btlgrpsel_las_btlno_las_06_05_off, local
	.4byte 0x00000014
	.4byte btlgrp_las_las_06_05_off_1
	.rel las_btlstage_data, .L_00020C88
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_06_05_off

# .data:0x3778 | 0x23280 | size: 0x18
.obj btlgrpsel_las_btlno_las_06_06_off, local
	.4byte 0x00000014
	.4byte btlgrp_las_las_06_06_off_1
	.rel las_btlstage_data, .L_00020C88
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_06_06_off

# .data:0x3790 | 0x23298 | size: 0x18
.obj btlgrpsel_las_btlno_las_06_99_off, local
	.4byte 0x00000014
	.4byte btlgrp_las_las_06_99_off_1
	.rel las_btlstage_data, .L_00020C88
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_06_99_off

# .data:0x37A8 | 0x232B0 | size: 0x18
.obj btlgrpsel_las_btlno_las_07_01_off, local
	.4byte 0x00000014
	.4byte btlgrp_las_las_07_01_off_1
	.rel las_btlstage_data, .L_00020404
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_07_01_off

# .data:0x37C0 | 0x232C8 | size: 0x18
.obj btlgrpsel_las_btlno_las_07_02_off, local
	.4byte 0x00000014
	.4byte btlgrp_las_las_07_02_off_1
	.rel las_btlstage_data, .L_00020404
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_07_02_off

# .data:0x37D8 | 0x232E0 | size: 0x18
.obj btlgrpsel_las_btlno_las_07_03_off, local
	.4byte 0x00000014
	.4byte btlgrp_las_las_07_03_off_1
	.rel las_btlstage_data, .L_00020404
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_07_03_off

# .data:0x37F0 | 0x232F8 | size: 0x18
.obj btlgrpsel_las_btlno_las_09_01_off, local
	.4byte 0x00000014
	.4byte btlgrp_las_las_09_01_off_1
	.rel las_btlstage_data, .L_00020E3C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_09_01_off

# .data:0x3808 | 0x23310 | size: 0x18
.obj btlgrpsel_las_btlno_las_09_02_off, local
	.4byte 0x00000014
	.4byte btlgrp_las_las_09_02_off_1
	.rel las_btlstage_data, .L_00020E3C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_09_02_off

# .data:0x3820 | 0x23328 | size: 0x18
.obj btlgrpsel_las_btlno_las_19_01_off, local
	.4byte 0x00000014
	.4byte btlgrp_las_las_19_01_off_1
	.rel las_btlstage_data, .L_00020404
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_19_01_off

# .data:0x3838 | 0x23340 | size: 0x18
.obj btlgrpsel_las_btlno_las_19_02_off, local
	.4byte 0x00000014
	.4byte btlgrp_las_las_19_02_off_1
	.rel las_btlstage_data, .L_00020404
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_19_02_off

# .data:0x3850 | 0x23358 | size: 0x18
.obj btlgrpsel_las_btlno_las_19_03_off, local
	.4byte 0x00000014
	.4byte btlgrp_las_las_19_03_off_1
	.rel las_btlstage_data, .L_00020404
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_19_03_off

# .data:0x3868 | 0x23370 | size: 0x18
.obj btlgrpsel_las_btlno_las_20_01_off, local
	.4byte 0x00000014
	.4byte btlgrp_las_las_20_01_off_1
	.4byte las_btlstage_data
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_20_01_off

# .data:0x3880 | 0x23388 | size: 0x18
.obj btlgrpsel_las_btlno_las_21_01_off, local
	.4byte 0x00000014
	.4byte btlgrp_las_las_21_01_off_1
	.rel las_btlstage_data, .L_00020404
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_21_01_off

# .data:0x3898 | 0x233A0 | size: 0x18
.obj btlgrpsel_las_btlno_las_21_02_off, local
	.4byte 0x00000014
	.4byte btlgrp_las_las_21_02_off_1
	.rel las_btlstage_data, .L_00020404
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_21_02_off

# .data:0x38B0 | 0x233B8 | size: 0x18
.obj btlgrpsel_las_btlno_las_22_01_off, local
	.4byte 0x00000014
	.4byte btlgrp_las_las_22_01_off_1
	.4byte las_btlstage_data
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_22_01_off

# .data:0x38C8 | 0x233D0 | size: 0x18
.obj btlgrpsel_las_btlno_las_22_02_off, local
	.4byte 0x00000014
	.4byte btlgrp_las_las_22_02_off_1
	.4byte las_btlstage_data
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_22_02_off

# .data:0x38E0 | 0x233E8 | size: 0x18
.obj btlgrpsel_las_btlno_las_22_03_off, local
	.4byte 0x00000014
	.4byte btlgrp_las_las_22_03_off_1
	.4byte las_btlstage_data
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_22_03_off

# .data:0x38F8 | 0x23400 | size: 0x18
.obj btlgrpsel_las_btlno_las_24_01_off, local
	.4byte 0x00000014
	.4byte btlgrp_las_las_24_01_off_1
	.4byte las_btlstage_data
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_24_01_off

# .data:0x3910 | 0x23418 | size: 0x18
.obj btlgrpsel_las_btlno_las_25_01_off, local
	.4byte 0x00000014
	.4byte btlgrp_las_las_25_01_off_1
	.rel las_btlstage_data, .L_00020404
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_25_01_off

# .data:0x3928 | 0x23430 | size: 0x18
.obj btlgrpsel_las_btlno_las_25_02_off, local
	.4byte 0x00000014
	.4byte btlgrp_las_las_25_02_off_1
	.rel las_btlstage_data, .L_00020404
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_25_02_off

# .data:0x3940 | 0x23448 | size: 0x18
.obj btlgrpsel_las_btlno_las_25_03_off, local
	.4byte 0x00000014
	.4byte btlgrp_las_las_25_03_off_1
	.rel las_btlstage_data, .L_00020404
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_25_03_off

# .data:0x3958 | 0x23460 | size: 0x18
.obj btlgrpsel_las_btlno_las_25_04_off, local
	.4byte 0x00000014
	.4byte btlgrp_las_las_25_04_off_1
	.rel las_btlstage_data, .L_00020404
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_25_04_off

# .data:0x3970 | 0x23478 | size: 0x18
.obj btlgrpsel_las_btlno_las_25_05_off, local
	.4byte 0x00000014
	.4byte btlgrp_las_las_25_05_off_1
	.rel las_btlstage_data, .L_00020404
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_25_05_off

# .data:0x3988 | 0x23490 | size: 0x18
.obj btlgrpsel_las_btlno_las_25_06_off, local
	.4byte 0x00000014
	.4byte btlgrp_las_las_25_06_off_1
	.rel las_btlstage_data, .L_00020404
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_las_btlno_las_25_06_off

# .data:0x39A0 | 0x234A8 | size: 0x1034
.obj btlsetup_las_tbl_16_data_234A8, global
	.4byte str_マップstg_08_0_las_000169b4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_test1_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_las_000169c4
	.4byte str_マップstg_08_1_las_000169d8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_test2_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_las_000169c4
	.4byte str_マップstg_08_2_las_000169e8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_test3_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_las_000169c4
	.4byte str_マップstg_08_3_las_000169f8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_test4_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_las_000169c4
	.4byte str_マップstg_08_4_las_00016a08
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_test5_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_las_000169c4
	.4byte str_マップstg_08_5_las_00016a18
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_test6_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_las_000169c4
	.4byte str_マップstg_08_6_las_00016a28
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_test7_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_las_000169c4
	.4byte str_黒カロン_las_00016a38
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_05_01_off
	.4byte 0x20000010
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_CHUBOSS_BATTLE1_las_00016a44
	.4byte str_変身ランペル_魔女_las_00016a58
	.4byte str_las_09_las_00016a6c
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_09_rampell_off
	.4byte 0x20000010
	.4byte 0x00000006
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_BOSS_STG3_3WOMEN_las_00016a74
	.4byte str_las17クリボー_las_00016a8c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_17_01_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_las_000169c4
	.4byte str_las17トゲクリボー_las_00016a9c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_17_02_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_las_000169c4
	.4byte str_las17ノコノコ_las_00016ab0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_17_03_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_las_000169c4
	.4byte str_las17シンノスケ_las_00016ac0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_17_04_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_las_000169c4
	.4byte str_クッパ＆カメックオババ_las_00016ad0
	.4byte str_las_28_las_00016ae8
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_28_koopa_off
	.4byte 0x20000010
	.4byte 0x00000006
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_BOSS_STG8_KOOPA_las_00016af0
	.4byte str_ブンババ_las_00016b04
	.4byte str_las_26_las_00016b10
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_bunbaba_off
	.4byte 0x20100010
	.4byte 0x00000006
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_BOSS_STG1_GONBAB_las_00016b18
	.4byte str_バッテンリーダー_las_00016b30
	.4byte str_las_28_las_00016ae8
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_28_batten_leader_off
	.4byte 0x20000010
	.4byte 0x00000005
	.4byte 0x00000A0A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000101
	.4byte 0x01010101
	.4byte str_BGM_BOSS_STG8_3RDHEA_las_00016b44
	.4byte str_ブラックピーチ1回目_las_00016b5c
	.4byte str_las_29_las_00016b70
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_29_black_peach_1_off
	.4byte 0x20000010
	.4byte 0x00000006
	.4byte 0x0A0A0101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010A0A
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_BOSS_STG8_WITCH_las_00016b78
	.4byte str_ブラックピーチ2回目_las_00016b8c
	.4byte str_las_29_las_00016b70
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_29_black_peach_2_off
	.4byte 0x20000010
	.4byte 0x00000006
	.4byte 0x0A0A0101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010A0A
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_BOSS_STG8_LAST_B_las_00016ba0
	.4byte str_las01バサバサチュルル_las_00016bbc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_01_01_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_las_000169c4
	.4byte str_las01バサバサチュルル_las_00016bbc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_01_02_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_las_000169c4
	.4byte str_las01バサバサチュルル_las_00016bbc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_01_03_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_las_000169c4
	.4byte str_las02カロン_las_00016bd4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_02_01_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x0A0A0303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_las_000169c4
	.4byte str_las02バサバサチュルル_las_00016be0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_02_02_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_las_000169c4
	.4byte str_las02カロン_las_00016bd4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_02_03_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x0A0A0303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_las_000169c4
	.4byte str_las02カロン_las_00016bd4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_02_04_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x0A0A0303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_las_000169c4
	.4byte str_las02スーパーキラー大砲_las_00016bf8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_02_05_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_las_000169c4
	.4byte str_las02スーパーキラー大砲_las_00016bf8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_02_06_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_las_000169c4
	.4byte str_las02スーパーキラー_las_00016c10
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_02_99_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_las_000169c4
	.4byte str_las03バサバサチュルル_las_00016c24
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_03_01_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_las_000169c4
	.4byte str_las03バサバサチュルル_las_00016c24
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_03_02_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_las_000169c4
	.4byte str_las03バサバサチュルル_las_00016c24
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_03_03_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_las_000169c4
	.4byte str_las04ファントム_las_00016c3c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_04_01_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_las_000169c4
	.4byte str_las06スーパーキラー大砲_las_00016c4c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_06_01_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_las_000169c4
	.4byte str_las06スーパーキラー大砲_las_00016c4c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_06_02_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_las_000169c4
	.4byte str_las06ファントム_las_00016c64
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_06_03_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_las_000169c4
	.4byte str_las06ファントム_las_00016c64
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_06_04_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_las_000169c4
	.4byte str_las06スーパーキラー大砲_las_00016c4c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_06_05_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_las_000169c4
	.4byte str_las06スーパーキラー大砲_las_00016c4c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_06_06_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_las_000169c4
	.4byte str_las06スーパーキラー_las_00016c74
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_06_99_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_las_000169c4
	.4byte str_las07ファントム_las_00016c88
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_07_01_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_las_000169c4
	.4byte str_las07カロン_las_00016c98
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_07_02_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x0A0A0303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_las_000169c4
	.4byte str_las07カロン_las_00016c98
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_07_03_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x0A0A0303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_las_000169c4
	.4byte str_las09ワンワン_las_00016ca4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_09_01_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_las_000169c4
	.4byte str_las09ワンワン_las_00016ca4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_09_02_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_las_000169c4
	.4byte str_las19スーパーマホーン_las_00016cb4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_19_01_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_las_000169c4
	.4byte str_las19スーパーマホーン_las_00016cb4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_19_02_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_las_000169c4
	.4byte str_las19スーパーマホーン_las_00016cb4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_19_03_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_las_000169c4
	.4byte str_las20スーパーマホーン_las_00016ccc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_20_01_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_las_000169c4
	.4byte str_las21ワンワン_las_00016ce4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_21_01_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_las_000169c4
	.4byte str_las21ワンワン_las_00016ce4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_21_02_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_las_000169c4
	.4byte str_las22スーパーマホーン_las_00016cf4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_22_01_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_las_000169c4
	.4byte str_las22ファントム_las_00016d0c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_22_02_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_las_000169c4
	.4byte str_las22ワンワン_las_00016d1c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_22_03_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_las_000169c4
	.4byte str_las24ワンワン_las_00016d2c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_24_01_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_las_000169c4
	.4byte str_las25ファントム_las_00016d3c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_25_01_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_las_000169c4
	.4byte str_las25ファントム_las_00016d3c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_25_02_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_las_000169c4
	.4byte str_las25ファントム_las_00016d3c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_25_03_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_las_000169c4
	.4byte str_las25ファントム_las_00016d3c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_25_04_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_las_000169c4
	.4byte str_las25ファントム_las_00016d3c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_25_05_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_las_000169c4
	.4byte str_las25ファントム_las_00016d3c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_las_btlno_las_25_06_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_las_000169c4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlsetup_las_tbl_16_data_234A8

# .data:0x49D4 | 0x244DC | size: 0x1E8
.obj btl_las_setup_no_tbl_16_data_244DC, global
	.4byte str_BTLNO_LAS_TEST1_las_00016d4c
	.4byte 0x00000000
	.4byte str_BTLNO_LAS_TEST2_las_00016d5c
	.4byte 0x00000001
	.4byte str_BTLNO_LAS_TEST3_las_00016d6c
	.4byte 0x00000002
	.4byte str_BTLNO_LAS_TEST4_las_00016d7c
	.4byte 0x00000003
	.4byte str_BTLNO_LAS_TEST5_las_00016d8c
	.4byte 0x00000004
	.4byte str_BTLNO_LAS_TEST6_las_00016d9c
	.4byte 0x00000005
	.4byte str_BTLNO_LAS_TEST7_las_00016dac
	.4byte 0x00000006
	.4byte str_BTLNO_LAS_05_01_las_00016dbc
	.4byte 0x00000007
	.4byte str_BTLNO_LAS_09_RAMPELL_las_00016dcc
	.4byte 0x00000008
	.4byte str_BTLNO_LAS_17_01_las_00016de4
	.4byte 0x00000009
	.4byte str_BTLNO_LAS_17_02_las_00016df4
	.4byte 0x0000000A
	.4byte str_BTLNO_LAS_17_03_las_00016e04
	.4byte 0x0000000B
	.4byte str_BTLNO_LAS_17_04_las_00016e14
	.4byte 0x0000000C
	.4byte str_BTLNO_LAS_28_KOOPA_las_00016e24
	.4byte 0x0000000D
	.4byte str_BTLNO_LAS_BUNBABA_las_00016e38
	.4byte 0x0000000E
	.4byte str_BTLNO_LAS_28_BATTEN__las_00016e4c
	.4byte 0x0000000F
	.4byte str_BTLNO_LAS_29_BLACK_P_las_00016e68
	.4byte 0x00000010
	.4byte str_BTLNO_LAS_29_BLACK_P_las_00016e84
	.4byte 0x00000011
	.4byte str_BTLNO_LAS_01_01_las_00016ea0
	.4byte 0x00000012
	.4byte str_BTLNO_LAS_01_02_las_00016eb0
	.4byte 0x00000013
	.4byte str_BTLNO_LAS_01_03_las_00016ec0
	.4byte 0x00000014
	.4byte str_BTLNO_LAS_02_01_las_00016ed0
	.4byte 0x00000015
	.4byte str_BTLNO_LAS_02_02_las_00016ee0
	.4byte 0x00000016
	.4byte str_BTLNO_LAS_02_03_las_00016ef0
	.4byte 0x00000017
	.4byte str_BTLNO_LAS_02_04_las_00016f00
	.4byte 0x00000018
	.4byte str_BTLNO_LAS_02_05_las_00016f10
	.4byte 0x00000019
	.4byte str_BTLNO_LAS_02_06_las_00016f20
	.4byte 0x0000001A
	.4byte str_BTLNO_LAS_02_99_las_00016f30
	.4byte 0x0000001B
	.4byte str_BTLNO_LAS_03_01_las_00016f40
	.4byte 0x0000001C
	.4byte str_BTLNO_LAS_03_02_las_00016f50
	.4byte 0x0000001D
	.4byte str_BTLNO_LAS_03_03_las_00016f60
	.4byte 0x0000001E
	.4byte str_BTLNO_LAS_04_01_las_00016f70
	.4byte 0x0000001F
	.4byte str_BTLNO_LAS_06_01_las_00016f80
	.4byte 0x00000020
	.4byte str_BTLNO_LAS_06_02_las_00016f90
	.4byte 0x00000021
	.4byte str_BTLNO_LAS_06_03_las_00016fa0
	.4byte 0x00000022
	.4byte str_BTLNO_LAS_06_04_las_00016fb0
	.4byte 0x00000023
	.4byte str_BTLNO_LAS_06_05_las_00016fc0
	.4byte 0x00000024
	.4byte str_BTLNO_LAS_06_06_las_00016fd0
	.4byte 0x00000025
	.4byte str_BTLNO_LAS_06_99_las_00016fe0
	.4byte 0x00000026
	.4byte str_BTLNO_LAS_07_01_las_00016ff0
	.4byte 0x00000027
	.4byte str_BTLNO_LAS_07_02_las_00017000
	.4byte 0x00000028
	.4byte str_BTLNO_LAS_07_03_las_00017010
	.4byte 0x00000029
	.4byte str_BTLNO_LAS_09_01_las_00017020
	.4byte 0x0000002A
	.4byte str_BTLNO_LAS_09_02_las_00017030
	.4byte 0x0000002B
	.4byte str_BTLNO_LAS_19_01_las_00017040
	.4byte 0x0000002C
	.4byte str_BTLNO_LAS_19_02_las_00017050
	.4byte 0x0000002D
	.4byte str_BTLNO_LAS_19_03_las_00017060
	.4byte 0x0000002E
	.4byte str_BTLNO_LAS_20_01_las_00017070
	.4byte 0x0000002F
	.4byte str_BTLNO_LAS_21_01_las_00017080
	.4byte 0x00000030
	.4byte str_BTLNO_LAS_21_02_las_00017090
	.4byte 0x00000031
	.4byte str_BTLNO_LAS_22_01_las_000170a0
	.4byte 0x00000032
	.4byte str_BTLNO_LAS_22_02_las_000170b0
	.4byte 0x00000033
	.4byte str_BTLNO_LAS_22_03_las_000170c0
	.4byte 0x00000034
	.4byte str_BTLNO_LAS_24_01_las_000170d0
	.4byte 0x00000035
	.4byte str_BTLNO_LAS_25_01_las_000170e0
	.4byte 0x00000036
	.4byte str_BTLNO_LAS_25_02_las_000170f0
	.4byte 0x00000037
	.4byte str_BTLNO_LAS_25_03_las_00017100
	.4byte 0x00000038
	.4byte str_BTLNO_LAS_25_04_las_00017110
	.4byte 0x00000039
	.4byte str_BTLNO_LAS_25_05_las_00017120
	.4byte 0x0000003A
	.4byte str_BTLNO_LAS_25_06_las_00017130
	.4byte 0x0000003B
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btl_las_setup_no_tbl_16_data_244DC

# .data:0x4BBC | 0x246C4 | size: 0x98
.obj bgset_las_gear_event, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte _gear_rotate
	.4byte str_gear_01a_las_00016898
	.4byte str_gear_01b_las_000168a4
	.4byte 0xFE363C80
	.4byte 0x00000190
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte _gear_rotate
	.4byte str_gear_02a_las_000168b0
	.4byte str_gear_02b_las_000168bc
	.4byte 0xFE363C81
	.4byte 0x00000258
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte _gear_rotate
	.4byte str_gear_03a_las_000168c8
	.4byte str_gear_03b_las_000168d4
	.4byte 0xFE363C82
	.4byte 0x00000320
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bgset_las_gear_event

# .data:0x4C54 | 0x2475C | size: 0x184
.obj stg_08_1_init_sub_event, local
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_hi1_las_00017140
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte str_hi1_las_00017144
	.4byte str_fire_las_0001714c
	.4byte 0x00000003
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A7E80
	.4byte 0x000003E8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_hi2_las_00017154
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte str_hi2_las_00017158
	.4byte str_fire_las_0001714c
	.4byte 0x00000003
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A7E80
	.4byte 0x000003E8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_hi3_las_00017160
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte str_hi3_las_00017164
	.4byte str_fire_las_0001714c
	.4byte 0x00000003
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A7E80
	.4byte 0x000003E8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_hi1_las_00017140
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_hi2_las_00017154
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_hi3_las_00017160
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte check_battle_end
	.4byte 0x0002005B
	.4byte evt_eff_softdelete
	.4byte str_hi1_las_00017144
	.4byte 0x0002005B
	.4byte evt_eff_softdelete
	.4byte str_hi2_las_00017158
	.4byte 0x0002005B
	.4byte evt_eff_softdelete
	.4byte str_hi3_las_00017164
	.4byte 0x00000002
	.4byte 0x00000001
.endobj stg_08_1_init_sub_event

# .data:0x4DD8 | 0x248E0 | size: 0x10
.obj stg_08_1_init_event, local
	.4byte 0x0001005C
	.4byte stg_08_1_init_sub_event
	.4byte 0x00000002
	.4byte 0x00000001
.endobj stg_08_1_init_event

# .data:0x4DE8 | 0x248F0 | size: 0xB8
.obj stg_08_6_init_sub_event, local
	.4byte 0x0000006E
	.4byte 0x0001005B
	.4byte unk_las_0000785c
	.4byte 0x00000070
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_hi1_las_00017140
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_hi2_las_00017154
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_hi3_las_00017160
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_hi4_las_0001716c
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_hi5_las_00017170
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_hi6_las_00017174
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte check_battle_end
	.4byte 0x0001005B
	.4byte unk_las_00007844
	.4byte 0x00000002
	.4byte 0x00000001
.endobj stg_08_6_init_sub_event

# .data:0x4EA0 | 0x249A8 | size: 0x10
.obj stg_08_6_init_event, local
	.4byte 0x0001005C
	.4byte stg_08_6_init_sub_event
	.4byte 0x00000002
	.4byte 0x00000001
.endobj stg_08_6_init_event

# 0x00000098..0x000000B8 | size: 0x20
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x98 | size: 0x1
.obj unk_las_bss00000098, local
	.skip 0x1
.endobj unk_las_bss00000098

# .bss:0x1 | 0x99 | size: 0x3
.obj gap_05_00000099_bss, global
.hidden gap_05_00000099_bss
	.skip 0x3
.endobj gap_05_00000099_bss

# .bss:0x4 | 0x9C | size: 0x18
.obj unk_las_bss0000009c, local
	.skip 0x18
.endobj unk_las_bss0000009c

# .bss:0x1C | 0xB4 | size: 0x4
.obj gap_05_000000B4_bss, global
.hidden gap_05_000000B4_bss
	.skip 0x4
.endobj gap_05_000000B4_bss
