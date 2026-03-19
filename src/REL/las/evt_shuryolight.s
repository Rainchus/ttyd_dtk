.include "macros.inc"
.file "evt_shuryolight.o"

# 0x000106A8..0x0001111C | size: 0xA74
.text
.balign 4

# .text:0x0 | 0x106A8 | size: 0x114
.fn evt_shuryolight_delete_16_text_106A8, global
/* 000106A8 00010774  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 000106AC 00010778  7C 08 02 A6 */	mflr r0
/* 000106B0 0001077C  3C 60 00 00 */	lis r3, slhp@ha
/* 000106B4 00010780  90 01 00 24 */	stw r0, 0x24(r1)
/* 000106B8 00010784  38 63 00 00 */	addi r3, r3, slhp@l
/* 000106BC 00010788  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 000106C0 0001078C  80 63 00 00 */	lwz r3, 0x0(r3)
/* 000106C4 00010790  80 63 00 00 */	lwz r3, 0x0(r3)
/* 000106C8 00010794  2C 03 00 00 */	cmpwi r3, 0x0
/* 000106CC 00010798  41 82 00 1C */	beq .L_000106E8
/* 000106D0 0001079C  4B FE FA 6D */	bl evtDeleteID
/* 000106D4 000107A0  3C 60 00 00 */	lis r3, slhp@ha
/* 000106D8 000107A4  38 00 00 00 */	li r0, 0x0
/* 000106DC 000107A8  38 63 00 00 */	addi r3, r3, slhp@l
/* 000106E0 000107AC  80 63 00 00 */	lwz r3, 0x0(r3)
/* 000106E4 000107B0  90 03 00 00 */	stw r0, 0x0(r3)
.L_000106E8:
/* 000106E8 000107B4  3C 60 00 00 */	lis r3, slhp@ha
/* 000106EC 000107B8  38 63 00 00 */	addi r3, r3, slhp@l
/* 000106F0 000107BC  80 63 00 00 */	lwz r3, 0x0(r3)
/* 000106F4 000107C0  80 63 00 04 */	lwz r3, 0x4(r3)
/* 000106F8 000107C4  2C 03 00 00 */	cmpwi r3, 0x0
/* 000106FC 000107C8  41 82 00 1C */	beq .L_00010718
/* 00010700 000107CC  4B FE FA 3D */	bl evtDeleteID
/* 00010704 000107D0  3C 60 00 00 */	lis r3, slhp@ha
/* 00010708 000107D4  38 00 00 00 */	li r0, 0x0
/* 0001070C 000107D8  38 63 00 00 */	addi r3, r3, slhp@l
/* 00010710 000107DC  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00010714 000107E0  90 03 00 04 */	stw r0, 0x4(r3)
.L_00010718:
/* 00010718 000107E4  3C 60 00 00 */	lis r3, slhp@ha
/* 0001071C 000107E8  38 63 00 00 */	addi r3, r3, slhp@l
/* 00010720 000107EC  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00010724 000107F0  80 63 00 08 */	lwz r3, 0x8(r3)
/* 00010728 000107F4  2C 03 00 00 */	cmpwi r3, 0x0
/* 0001072C 000107F8  41 82 00 1C */	beq .L_00010748
/* 00010730 000107FC  4B FE FA 0D */	bl evtDeleteID
/* 00010734 00010800  3C 60 00 00 */	lis r3, slhp@ha
/* 00010738 00010804  38 00 00 00 */	li r0, 0x0
/* 0001073C 00010808  38 63 00 00 */	addi r3, r3, slhp@l
/* 00010740 0001080C  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00010744 00010810  90 03 00 08 */	stw r0, 0x8(r3)
.L_00010748:
/* 00010748 00010814  3C 60 00 00 */	lis r3, slhp@ha
/* 0001074C 00010818  3B A0 00 00 */	li r29, 0x0
/* 00010750 0001081C  3B C3 00 00 */	addi r30, r3, slhp@l
/* 00010754 00010820  3B E0 00 00 */	li r31, 0x0
.L_00010758:
/* 00010758 00010824  80 7E 00 00 */	lwz r3, 0x0(r30)
/* 0001075C 00010828  38 1F 00 0C */	addi r0, r31, 0xc
/* 00010760 0001082C  7C 63 00 2E */	lwzx r3, r3, r0
/* 00010764 00010830  4B FE F9 D9 */	bl npcDeleteGroup
/* 00010768 00010834  3B BD 00 01 */	addi r29, r29, 0x1
/* 0001076C 00010838  3B FF 00 14 */	addi r31, r31, 0x14
/* 00010770 0001083C  2C 1D 00 05 */	cmpwi r29, 0x5
/* 00010774 00010840  41 80 FF E4 */	blt .L_00010758
/* 00010778 00010844  3C 80 00 00 */	lis r4, mapalloc_base_ptr@ha
/* 0001077C 00010848  3C 60 00 00 */	lis r3, slhp@ha
/* 00010780 0001084C  38 A4 00 00 */	addi r5, r4, mapalloc_base_ptr@l
/* 00010784 00010850  38 83 00 00 */	addi r4, r3, slhp@l
/* 00010788 00010854  80 65 00 00 */	lwz r3, 0x0(r5)
/* 0001078C 00010858  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00010790 0001085C  4B FE F9 AD */	bl _mapFree
/* 00010794 00010860  3C 60 00 00 */	lis r3, slhp@ha
/* 00010798 00010864  38 00 00 00 */	li r0, 0x0
/* 0001079C 00010868  38 83 00 00 */	addi r4, r3, slhp@l
/* 000107A0 0001086C  38 60 00 02 */	li r3, 0x2
/* 000107A4 00010870  90 04 00 00 */	stw r0, 0x0(r4)
/* 000107A8 00010874  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 000107AC 00010878  80 01 00 24 */	lwz r0, 0x24(r1)
/* 000107B0 0001087C  7C 08 03 A6 */	mtlr r0
/* 000107B4 00010880  38 21 00 20 */	addi r1, r1, 0x20
/* 000107B8 00010884  4E 80 00 20 */	blr
.endfn evt_shuryolight_delete_16_text_106A8

# .text:0x114 | 0x107BC | size: 0x88
.fn evt_shuryolight_run_tue_evt, local
/* 000107BC 00010888  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000107C0 0001088C  7C 08 02 A6 */	mflr r0
/* 000107C4 00010890  90 01 00 14 */	stw r0, 0x14(r1)
/* 000107C8 00010894  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 000107CC 00010898  80 83 00 18 */	lwz r4, 0x18(r3)
/* 000107D0 0001089C  80 84 00 00 */	lwz r4, 0x0(r4)
/* 000107D4 000108A0  4B FE F9 69 */	bl evtGetValue
/* 000107D8 000108A4  3C 80 00 00 */	lis r4, slhp@ha
/* 000107DC 000108A8  7C 7E 1B 78 */	mr r30, r3
/* 000107E0 000108AC  38 84 00 00 */	addi r4, r4, slhp@l
/* 000107E4 000108B0  80 84 00 00 */	lwz r4, 0x0(r4)
/* 000107E8 000108B4  83 E4 00 08 */	lwz r31, 0x8(r4)
/* 000107EC 000108B8  7F E3 FB 78 */	mr r3, r31
/* 000107F0 000108BC  4B FE F9 4D */	bl evtCheckID
/* 000107F4 000108C0  2C 03 00 00 */	cmpwi r3, 0x0
/* 000107F8 000108C4  41 82 00 0C */	beq .L_00010804
/* 000107FC 000108C8  7F E3 FB 78 */	mr r3, r31
/* 00010800 000108CC  4B FE F9 3D */	bl evtDeleteID
.L_00010804:
/* 00010804 000108D0  7F C3 F3 78 */	mr r3, r30
/* 00010808 000108D4  38 80 00 00 */	li r4, 0x0
/* 0001080C 000108D8  38 A0 00 00 */	li r5, 0x0
/* 00010810 000108DC  38 C0 00 00 */	li r6, 0x0
/* 00010814 000108E0  4B FE F9 29 */	bl evtEntryType
/* 00010818 000108E4  3C 80 00 00 */	lis r4, slhp@ha
/* 0001081C 000108E8  80 03 01 5C */	lwz r0, 0x15c(r3)
/* 00010820 000108EC  38 84 00 00 */	addi r4, r4, slhp@l
/* 00010824 000108F0  38 60 00 02 */	li r3, 0x2
/* 00010828 000108F4  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0001082C 000108F8  90 04 00 08 */	stw r0, 0x8(r4)
/* 00010830 000108FC  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00010834 00010900  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00010838 00010904  7C 08 03 A6 */	mtlr r0
/* 0001083C 00010908  38 21 00 10 */	addi r1, r1, 0x10
/* 00010840 0001090C  4E 80 00 20 */	blr
.endfn evt_shuryolight_run_tue_evt

# .text:0x19C | 0x10844 | size: 0x88
.fn evt_shuryolight_run_head_evt_16_text_10844, global
/* 00010844 00010910  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00010848 00010914  7C 08 02 A6 */	mflr r0
/* 0001084C 00010918  90 01 00 14 */	stw r0, 0x14(r1)
/* 00010850 0001091C  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00010854 00010920  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00010858 00010924  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0001085C 00010928  4B FE F8 E1 */	bl evtGetValue
/* 00010860 0001092C  3C 80 00 00 */	lis r4, slhp@ha
/* 00010864 00010930  7C 7E 1B 78 */	mr r30, r3
/* 00010868 00010934  38 84 00 00 */	addi r4, r4, slhp@l
/* 0001086C 00010938  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00010870 0001093C  83 E4 00 04 */	lwz r31, 0x4(r4)
/* 00010874 00010940  7F E3 FB 78 */	mr r3, r31
/* 00010878 00010944  4B FE F8 C5 */	bl evtCheckID
/* 0001087C 00010948  2C 03 00 00 */	cmpwi r3, 0x0
/* 00010880 0001094C  41 82 00 0C */	beq .L_0001088C
/* 00010884 00010950  7F E3 FB 78 */	mr r3, r31
/* 00010888 00010954  4B FE F8 B5 */	bl evtDeleteID
.L_0001088C:
/* 0001088C 00010958  7F C3 F3 78 */	mr r3, r30
/* 00010890 0001095C  38 80 00 00 */	li r4, 0x0
/* 00010894 00010960  38 A0 00 00 */	li r5, 0x0
/* 00010898 00010964  38 C0 00 00 */	li r6, 0x0
/* 0001089C 00010968  4B FE F8 A1 */	bl evtEntryType
/* 000108A0 0001096C  3C 80 00 00 */	lis r4, slhp@ha
/* 000108A4 00010970  80 03 01 5C */	lwz r0, 0x15c(r3)
/* 000108A8 00010974  38 84 00 00 */	addi r4, r4, slhp@l
/* 000108AC 00010978  38 60 00 02 */	li r3, 0x2
/* 000108B0 0001097C  80 84 00 00 */	lwz r4, 0x0(r4)
/* 000108B4 00010980  90 04 00 04 */	stw r0, 0x4(r4)
/* 000108B8 00010984  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 000108BC 00010988  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000108C0 0001098C  7C 08 03 A6 */	mtlr r0
/* 000108C4 00010990  38 21 00 10 */	addi r1, r1, 0x10
/* 000108C8 00010994  4E 80 00 20 */	blr
.endfn evt_shuryolight_run_head_evt_16_text_10844

# .text:0x224 | 0x108CC | size: 0x88
.fn evt_shuryolight_run_power_evt, local
/* 000108CC 00010998  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000108D0 0001099C  7C 08 02 A6 */	mflr r0
/* 000108D4 000109A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 000108D8 000109A4  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 000108DC 000109A8  80 83 00 18 */	lwz r4, 0x18(r3)
/* 000108E0 000109AC  80 84 00 00 */	lwz r4, 0x0(r4)
/* 000108E4 000109B0  4B FE F8 59 */	bl evtGetValue
/* 000108E8 000109B4  3C 80 00 00 */	lis r4, slhp@ha
/* 000108EC 000109B8  7C 7E 1B 78 */	mr r30, r3
/* 000108F0 000109BC  38 84 00 00 */	addi r4, r4, slhp@l
/* 000108F4 000109C0  80 84 00 00 */	lwz r4, 0x0(r4)
/* 000108F8 000109C4  83 E4 00 00 */	lwz r31, 0x0(r4)
/* 000108FC 000109C8  7F E3 FB 78 */	mr r3, r31
/* 00010900 000109CC  4B FE F8 3D */	bl evtCheckID
/* 00010904 000109D0  2C 03 00 00 */	cmpwi r3, 0x0
/* 00010908 000109D4  41 82 00 0C */	beq .L_00010914
/* 0001090C 000109D8  7F E3 FB 78 */	mr r3, r31
/* 00010910 000109DC  4B FE F8 2D */	bl evtDeleteID
.L_00010914:
/* 00010914 000109E0  7F C3 F3 78 */	mr r3, r30
/* 00010918 000109E4  38 80 00 00 */	li r4, 0x0
/* 0001091C 000109E8  38 A0 00 00 */	li r5, 0x0
/* 00010920 000109EC  38 C0 00 00 */	li r6, 0x0
/* 00010924 000109F0  4B FE F8 19 */	bl evtEntryType
/* 00010928 000109F4  3C 80 00 00 */	lis r4, slhp@ha
/* 0001092C 000109F8  80 03 01 5C */	lwz r0, 0x15c(r3)
/* 00010930 000109FC  38 84 00 00 */	addi r4, r4, slhp@l
/* 00010934 00010A00  38 60 00 02 */	li r3, 0x2
/* 00010938 00010A04  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0001093C 00010A08  90 04 00 00 */	stw r0, 0x0(r4)
/* 00010940 00010A0C  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00010944 00010A10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00010948 00010A14  7C 08 03 A6 */	mtlr r0
/* 0001094C 00010A18  38 21 00 10 */	addi r1, r1, 0x10
/* 00010950 00010A1C  4E 80 00 20 */	blr
.endfn evt_shuryolight_run_power_evt

# .text:0x2AC | 0x10954 | size: 0x164
.fn evt_shuryolight_run_evt_16_text_10954, global
/* 00010954 00010A20  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00010958 00010A24  7C 08 02 A6 */	mflr r0
/* 0001095C 00010A28  90 01 00 24 */	stw r0, 0x24(r1)
/* 00010960 00010A2C  BF 81 00 10 */	stmw r28, 0x10(r1)
/* 00010964 00010A30  7C 7F 1B 78 */	mr r31, r3
/* 00010968 00010A34  83 C3 00 18 */	lwz r30, 0x18(r3)
/* 0001096C 00010A38  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 00010970 00010A3C  4B FE F7 CD */	bl evtGetValue
/* 00010974 00010A40  80 9E 00 04 */	lwz r4, 0x4(r30)
/* 00010978 00010A44  7C 7D 1B 78 */	mr r29, r3
/* 0001097C 00010A48  7F E3 FB 78 */	mr r3, r31
/* 00010980 00010A4C  4B FE F7 BD */	bl evtGetValue
/* 00010984 00010A50  80 9E 00 08 */	lwz r4, 0x8(r30)
/* 00010988 00010A54  7C 7C 1B 78 */	mr r28, r3
/* 0001098C 00010A58  7F E3 FB 78 */	mr r3, r31
/* 00010990 00010A5C  4B FE F7 AD */	bl evtGetValue
/* 00010994 00010A60  28 1D 00 00 */	cmplwi r29, 0x0
/* 00010998 00010A64  7C 7F 1B 78 */	mr r31, r3
/* 0001099C 00010A68  41 82 00 54 */	beq .L_000109F0
/* 000109A0 00010A6C  3C 60 00 00 */	lis r3, slhp@ha
/* 000109A4 00010A70  38 63 00 00 */	addi r3, r3, slhp@l
/* 000109A8 00010A74  80 63 00 00 */	lwz r3, 0x0(r3)
/* 000109AC 00010A78  83 C3 00 00 */	lwz r30, 0x0(r3)
/* 000109B0 00010A7C  7F C3 F3 78 */	mr r3, r30
/* 000109B4 00010A80  4B FE F7 89 */	bl evtCheckID
/* 000109B8 00010A84  2C 03 00 00 */	cmpwi r3, 0x0
/* 000109BC 00010A88  41 82 00 0C */	beq .L_000109C8
/* 000109C0 00010A8C  7F C3 F3 78 */	mr r3, r30
/* 000109C4 00010A90  4B FE F7 79 */	bl evtDeleteID
.L_000109C8:
/* 000109C8 00010A94  7F A3 EB 78 */	mr r3, r29
/* 000109CC 00010A98  38 80 00 00 */	li r4, 0x0
/* 000109D0 00010A9C  38 A0 00 00 */	li r5, 0x0
/* 000109D4 00010AA0  38 C0 00 00 */	li r6, 0x0
/* 000109D8 00010AA4  4B FE F7 65 */	bl evtEntryType
/* 000109DC 00010AA8  3C 80 00 00 */	lis r4, slhp@ha
/* 000109E0 00010AAC  80 03 01 5C */	lwz r0, 0x15c(r3)
/* 000109E4 00010AB0  38 64 00 00 */	addi r3, r4, slhp@l
/* 000109E8 00010AB4  80 63 00 00 */	lwz r3, 0x0(r3)
/* 000109EC 00010AB8  90 03 00 00 */	stw r0, 0x0(r3)
.L_000109F0:
/* 000109F0 00010ABC  28 1C 00 00 */	cmplwi r28, 0x0
/* 000109F4 00010AC0  41 82 00 54 */	beq .L_00010A48
/* 000109F8 00010AC4  3C 60 00 00 */	lis r3, slhp@ha
/* 000109FC 00010AC8  38 63 00 00 */	addi r3, r3, slhp@l
/* 00010A00 00010ACC  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00010A04 00010AD0  83 C3 00 04 */	lwz r30, 0x4(r3)
/* 00010A08 00010AD4  7F C3 F3 78 */	mr r3, r30
/* 00010A0C 00010AD8  4B FE F7 31 */	bl evtCheckID
/* 00010A10 00010ADC  2C 03 00 00 */	cmpwi r3, 0x0
/* 00010A14 00010AE0  41 82 00 0C */	beq .L_00010A20
/* 00010A18 00010AE4  7F C3 F3 78 */	mr r3, r30
/* 00010A1C 00010AE8  4B FE F7 21 */	bl evtDeleteID
.L_00010A20:
/* 00010A20 00010AEC  7F 83 E3 78 */	mr r3, r28
/* 00010A24 00010AF0  38 80 00 00 */	li r4, 0x0
/* 00010A28 00010AF4  38 A0 00 00 */	li r5, 0x0
/* 00010A2C 00010AF8  38 C0 00 00 */	li r6, 0x0
/* 00010A30 00010AFC  4B FE F7 0D */	bl evtEntryType
/* 00010A34 00010B00  3C 80 00 00 */	lis r4, slhp@ha
/* 00010A38 00010B04  80 03 01 5C */	lwz r0, 0x15c(r3)
/* 00010A3C 00010B08  38 64 00 00 */	addi r3, r4, slhp@l
/* 00010A40 00010B0C  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00010A44 00010B10  90 03 00 04 */	stw r0, 0x4(r3)
.L_00010A48:
/* 00010A48 00010B14  28 1F 00 00 */	cmplwi r31, 0x0
/* 00010A4C 00010B18  41 82 00 54 */	beq .L_00010AA0
/* 00010A50 00010B1C  3C 60 00 00 */	lis r3, slhp@ha
/* 00010A54 00010B20  38 63 00 00 */	addi r3, r3, slhp@l
/* 00010A58 00010B24  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00010A5C 00010B28  83 C3 00 08 */	lwz r30, 0x8(r3)
/* 00010A60 00010B2C  7F C3 F3 78 */	mr r3, r30
/* 00010A64 00010B30  4B FE F6 D9 */	bl evtCheckID
/* 00010A68 00010B34  2C 03 00 00 */	cmpwi r3, 0x0
/* 00010A6C 00010B38  41 82 00 0C */	beq .L_00010A78
/* 00010A70 00010B3C  7F C3 F3 78 */	mr r3, r30
/* 00010A74 00010B40  4B FE F6 C9 */	bl evtDeleteID
.L_00010A78:
/* 00010A78 00010B44  7F E3 FB 78 */	mr r3, r31
/* 00010A7C 00010B48  38 80 00 00 */	li r4, 0x0
/* 00010A80 00010B4C  38 A0 00 00 */	li r5, 0x0
/* 00010A84 00010B50  38 C0 00 00 */	li r6, 0x0
/* 00010A88 00010B54  4B FE F6 B5 */	bl evtEntryType
/* 00010A8C 00010B58  3C 80 00 00 */	lis r4, slhp@ha
/* 00010A90 00010B5C  80 03 01 5C */	lwz r0, 0x15c(r3)
/* 00010A94 00010B60  38 64 00 00 */	addi r3, r4, slhp@l
/* 00010A98 00010B64  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00010A9C 00010B68  90 03 00 08 */	stw r0, 0x8(r3)
.L_00010AA0:
/* 00010AA0 00010B6C  BB 81 00 10 */	lmw r28, 0x10(r1)
/* 00010AA4 00010B70  38 60 00 02 */	li r3, 0x2
/* 00010AA8 00010B74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00010AAC 00010B78  7C 08 03 A6 */	mtlr r0
/* 00010AB0 00010B7C  38 21 00 20 */	addi r1, r1, 0x20
/* 00010AB4 00010B80  4E 80 00 20 */	blr
.endfn evt_shuryolight_run_evt_16_text_10954

# .text:0x410 | 0x10AB8 | size: 0x58
.fn evt_shuryolight_get_status, local
/* 00010AB8 00010B84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00010ABC 00010B88  7C 08 02 A6 */	mflr r0
/* 00010AC0 00010B8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 00010AC4 00010B90  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00010AC8 00010B94  7C 7E 1B 78 */	mr r30, r3
/* 00010ACC 00010B98  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00010AD0 00010B9C  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00010AD4 00010BA0  4B FE F6 69 */	bl evtGetValue
/* 00010AD8 00010BA4  1C A3 00 14 */	mulli r5, r3, 0x14
/* 00010ADC 00010BA8  3C C0 00 00 */	lis r6, slhp@ha
/* 00010AE0 00010BAC  80 C6 00 00 */	lwz r6, slhp@l(r6)
/* 00010AE4 00010BB0  7F C3 F3 78 */	mr r3, r30
/* 00010AE8 00010BB4  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00010AEC 00010BB8  38 05 00 14 */	addi r0, r5, 0x14
/* 00010AF0 00010BBC  7C A6 00 2E */	lwzx r5, r6, r0
/* 00010AF4 00010BC0  4B FE F6 49 */	bl evtSetValue
/* 00010AF8 00010BC4  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00010AFC 00010BC8  38 60 00 02 */	li r3, 0x2
/* 00010B00 00010BCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00010B04 00010BD0  7C 08 03 A6 */	mtlr r0
/* 00010B08 00010BD4  38 21 00 10 */	addi r1, r1, 0x10
/* 00010B0C 00010BD8  4E 80 00 20 */	blr
.endfn evt_shuryolight_get_status

# .text:0x468 | 0x10B10 | size: 0x9C
.fn evt_shuryolight_get_anim_time, local
/* 00010B10 00010BDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00010B14 00010BE0  7C 08 02 A6 */	mflr r0
/* 00010B18 00010BE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 00010B1C 00010BE8  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 00010B20 00010BEC  7C 7E 1B 78 */	mr r30, r3
/* 00010B24 00010BF0  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00010B28 00010BF4  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00010B2C 00010BF8  4B FE F6 11 */	bl evtGetValue
/* 00010B30 00010BFC  1C 63 00 14 */	mulli r3, r3, 0x14
/* 00010B34 00010C00  3C 80 00 00 */	lis r4, slhp@ha
/* 00010B38 00010C04  38 84 00 00 */	addi r4, r4, slhp@l
/* 00010B3C 00010C08  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00010B40 00010C0C  38 03 00 0C */	addi r0, r3, 0xc
/* 00010B44 00010C10  7C 64 00 2E */	lwzx r3, r4, r0
/* 00010B48 00010C14  80 63 01 04 */	lwz r3, 0x104(r3)
/* 00010B4C 00010C18  4B FE F5 F1 */	bl animPoseGetAnimDataPtr
/* 00010B50 00010C1C  80 A3 00 24 */	lwz r5, 0x24(r3)
/* 00010B54 00010C20  3C 80 00 00 */	lis r4, float_1000_las_0001a138@ha
/* 00010B58 00010C24  C0 64 00 00 */	lfs f3, float_1000_las_0001a138@l(r4)
/* 00010B5C 00010C28  3C 60 00 00 */	lis r3, float_60_las_0001a13c@ha
/* 00010B60 00010C2C  C0 45 00 08 */	lfs f2, 0x8(r5)
/* 00010B64 00010C30  38 83 00 00 */	addi r4, r3, float_60_las_0001a13c@l
/* 00010B68 00010C34  C0 25 00 04 */	lfs f1, 0x4(r5)
/* 00010B6C 00010C38  7F C3 F3 78 */	mr r3, r30
/* 00010B70 00010C3C  C0 04 00 00 */	lfs f0, 0x0(r4)
/* 00010B74 00010C40  EC 22 08 28 */	fsubs f1, f2, f1
/* 00010B78 00010C44  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00010B7C 00010C48  EC 23 00 72 */	fmuls f1, f3, f1
/* 00010B80 00010C4C  EC 01 00 24 */	fdivs f0, f1, f0
/* 00010B84 00010C50  FC 00 00 1E */	fctiwz f0, f0
/* 00010B88 00010C54  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 00010B8C 00010C58  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 00010B90 00010C5C  4B FE F5 AD */	bl evtSetValue
/* 00010B94 00010C60  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 00010B98 00010C64  38 60 00 02 */	li r3, 0x2
/* 00010B9C 00010C68  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00010BA0 00010C6C  7C 08 03 A6 */	mtlr r0
/* 00010BA4 00010C70  38 21 00 20 */	addi r1, r1, 0x20
/* 00010BA8 00010C74  4E 80 00 20 */	blr
.endfn evt_shuryolight_get_anim_time

# .text:0x504 | 0x10BAC | size: 0x64
.fn evt_shuryolight_wait_anim_end, local
/* 00010BAC 00010C78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00010BB0 00010C7C  7C 08 02 A6 */	mflr r0
/* 00010BB4 00010C80  90 01 00 14 */	stw r0, 0x14(r1)
/* 00010BB8 00010C84  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00010BBC 00010C88  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00010BC0 00010C8C  4B FE F5 7D */	bl evtGetValue
/* 00010BC4 00010C90  1C 63 00 14 */	mulli r3, r3, 0x14
/* 00010BC8 00010C94  3C 80 00 00 */	lis r4, slhp@ha
/* 00010BCC 00010C98  38 84 00 00 */	addi r4, r4, slhp@l
/* 00010BD0 00010C9C  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00010BD4 00010CA0  38 03 00 0C */	addi r0, r3, 0xc
/* 00010BD8 00010CA4  7C 64 00 2E */	lwzx r3, r4, r0
/* 00010BDC 00010CA8  80 63 01 04 */	lwz r3, 0x104(r3)
/* 00010BE0 00010CAC  4B FE F5 5D */	bl animPoseGetLoopTimes
/* 00010BE4 00010CB0  3C 60 00 00 */	lis r3, float_1_las_0001a140@ha
/* 00010BE8 00010CB4  C0 03 00 00 */	lfs f0, float_1_las_0001a140@l(r3)
/* 00010BEC 00010CB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 00010BF0 00010CBC  40 80 00 0C */	bge .L_00010BFC
/* 00010BF4 00010CC0  38 60 00 00 */	li r3, 0x0
/* 00010BF8 00010CC4  48 00 00 08 */	b .L_00010C00
.L_00010BFC:
/* 00010BFC 00010CC8  38 60 00 02 */	li r3, 0x2
.L_00010C00:
/* 00010C00 00010CCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00010C04 00010CD0  7C 08 03 A6 */	mtlr r0
/* 00010C08 00010CD4  38 21 00 10 */	addi r1, r1, 0x10
/* 00010C0C 00010CD8  4E 80 00 20 */	blr
.endfn evt_shuryolight_wait_anim_end

# .text:0x568 | 0x10C10 | size: 0x7C
.fn evt_shuryolight_set_anim, local
/* 00010C10 00010CDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00010C14 00010CE0  7C 08 02 A6 */	mflr r0
/* 00010C18 00010CE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 00010C1C 00010CE8  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00010C20 00010CEC  7C 7E 1B 78 */	mr r30, r3
/* 00010C24 00010CF0  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00010C28 00010CF4  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00010C2C 00010CF8  4B FE F5 11 */	bl evtGetValue
/* 00010C30 00010CFC  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00010C34 00010D00  7C 7F 1B 78 */	mr r31, r3
/* 00010C38 00010D04  7F C3 F3 78 */	mr r3, r30
/* 00010C3C 00010D08  4B FE F5 01 */	bl evtGetValue
/* 00010C40 00010D0C  1C 9F 00 14 */	mulli r4, r31, 0x14
/* 00010C44 00010D10  3C A0 00 00 */	lis r5, slhp@ha
/* 00010C48 00010D14  80 C5 00 00 */	lwz r6, slhp@l(r5)
/* 00010C4C 00010D18  54 60 10 3A */	slwi r0, r3, 2
/* 00010C50 00010D1C  38 A0 00 01 */	li r5, 0x1
/* 00010C54 00010D20  38 84 00 0C */	addi r4, r4, 0xc
/* 00010C58 00010D24  7C 86 22 14 */	add r4, r6, r4
/* 00010C5C 00010D28  90 64 00 08 */	stw r3, 0x8(r4)
/* 00010C60 00010D2C  80 64 00 00 */	lwz r3, 0x0(r4)
/* 00010C64 00010D30  80 84 00 04 */	lwz r4, 0x4(r4)
/* 00010C68 00010D34  80 63 01 04 */	lwz r3, 0x104(r3)
/* 00010C6C 00010D38  7C 84 00 2E */	lwzx r4, r4, r0
/* 00010C70 00010D3C  4B FE F4 CD */	bl animPoseSetAnim
/* 00010C74 00010D40  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00010C78 00010D44  38 60 00 02 */	li r3, 0x2
/* 00010C7C 00010D48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00010C80 00010D4C  7C 08 03 A6 */	mtlr r0
/* 00010C84 00010D50  38 21 00 10 */	addi r1, r1, 0x10
/* 00010C88 00010D54  4E 80 00 20 */	blr
.endfn evt_shuryolight_set_anim

# .text:0x5E4 | 0x10C8C | size: 0x364
.fn evt_shuryolight_init_16_text_10C8C, global
/* 00010C8C 00010D58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00010C90 00010D5C  7C 08 02 A6 */	mflr r0
/* 00010C94 00010D60  90 01 00 24 */	stw r0, 0x24(r1)
/* 00010C98 00010D64  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 00010C9C 00010D68  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00010CA0 00010D6C  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00010CA4 00010D70  4B FE F4 99 */	bl evtGetValue
/* 00010CA8 00010D74  4B FE F4 95 */	bl npcNameToPtr
/* 00010CAC 00010D78  3C 80 00 00 */	lis r4, str_c_shuryo_las_0001a150@ha
/* 00010CB0 00010D7C  3C A0 00 00 */	lis r5, str_light_power_las_0001a144@ha
/* 00010CB4 00010D80  7C 7F 1B 78 */	mr r31, r3
/* 00010CB8 00010D84  38 84 00 00 */	addi r4, r4, str_c_shuryo_las_0001a150@l
/* 00010CBC 00010D88  38 65 00 00 */	addi r3, r5, str_light_power_las_0001a144@l
/* 00010CC0 00010D8C  4B FE F4 7D */	bl npcEntry
/* 00010CC4 00010D90  3C 60 00 00 */	lis r3, str_light_head_1_las_0001a15c@ha
/* 00010CC8 00010D94  3C 80 00 00 */	lis r4, str_c_shuryo_las_0001a150@ha
/* 00010CCC 00010D98  38 63 00 00 */	addi r3, r3, str_light_head_1_las_0001a15c@l
/* 00010CD0 00010D9C  38 84 00 00 */	addi r4, r4, str_c_shuryo_las_0001a150@l
/* 00010CD4 00010DA0  4B FE F4 69 */	bl npcEntry
/* 00010CD8 00010DA4  3C 60 00 00 */	lis r3, str_light_head_2_las_0001a16c@ha
/* 00010CDC 00010DA8  3C 80 00 00 */	lis r4, str_c_shuryo_las_0001a150@ha
/* 00010CE0 00010DAC  38 63 00 00 */	addi r3, r3, str_light_head_2_las_0001a16c@l
/* 00010CE4 00010DB0  38 84 00 00 */	addi r4, r4, str_c_shuryo_las_0001a150@l
/* 00010CE8 00010DB4  4B FE F4 55 */	bl npcEntry
/* 00010CEC 00010DB8  3C 60 00 00 */	lis r3, str_light_head_3_las_0001a17c@ha
/* 00010CF0 00010DBC  3C 80 00 00 */	lis r4, str_c_shuryo_las_0001a150@ha
/* 00010CF4 00010DC0  38 63 00 00 */	addi r3, r3, str_light_head_3_las_0001a17c@l
/* 00010CF8 00010DC4  38 84 00 00 */	addi r4, r4, str_c_shuryo_las_0001a150@l
/* 00010CFC 00010DC8  4B FE F4 41 */	bl npcEntry
/* 00010D00 00010DCC  3C 60 00 00 */	lis r3, str_light_tue_1_las_0001a18c@ha
/* 00010D04 00010DD0  3C 80 00 00 */	lis r4, str_c_shuryo_las_0001a150@ha
/* 00010D08 00010DD4  38 63 00 00 */	addi r3, r3, str_light_tue_1_las_0001a18c@l
/* 00010D0C 00010DD8  38 84 00 00 */	addi r4, r4, str_c_shuryo_las_0001a150@l
/* 00010D10 00010DDC  4B FE F4 2D */	bl npcEntry
/* 00010D14 00010DE0  3C 60 00 00 */	lis r3, mapalloc_base_ptr@ha
/* 00010D18 00010DE4  38 80 00 70 */	li r4, 0x70
/* 00010D1C 00010DE8  38 63 00 00 */	addi r3, r3, mapalloc_base_ptr@l
/* 00010D20 00010DEC  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00010D24 00010DF0  4B FE F4 19 */	bl _mapAlloc
/* 00010D28 00010DF4  3C A0 00 00 */	lis r5, slhp@ha
/* 00010D2C 00010DF8  3C 80 00 00 */	lis r4, str_light_power_las_0001a144@ha
/* 00010D30 00010DFC  38 C5 00 00 */	addi r6, r5, slhp@l
/* 00010D34 00010E00  38 A0 00 00 */	li r5, 0x0
/* 00010D38 00010E04  90 66 00 00 */	stw r3, 0x0(r6)
/* 00010D3C 00010E08  38 04 00 00 */	addi r0, r4, str_light_power_las_0001a144@l
/* 00010D40 00010E0C  90 A3 00 00 */	stw r5, 0x0(r3)
/* 00010D44 00010E10  7C 03 03 78 */	mr r3, r0
/* 00010D48 00010E14  80 86 00 00 */	lwz r4, 0x0(r6)
/* 00010D4C 00010E18  90 A4 00 04 */	stw r5, 0x4(r4)
/* 00010D50 00010E1C  80 86 00 00 */	lwz r4, 0x0(r6)
/* 00010D54 00010E20  90 A4 00 08 */	stw r5, 0x8(r4)
/* 00010D58 00010E24  80 86 00 00 */	lwz r4, 0x0(r6)
/* 00010D5C 00010E28  3B C4 00 0C */	addi r30, r4, 0xc
/* 00010D60 00010E2C  4B FE F3 DD */	bl npcNameToPtr
/* 00010D64 00010E30  80 C3 00 00 */	lwz r6, 0x0(r3)
/* 00010D68 00010E34  7C 7D 1B 78 */	mr r29, r3
/* 00010D6C 00010E38  3C 60 00 00 */	lis r3, str_locator6_las_0001a198@ha
/* 00010D70 00010E3C  3C A0 00 00 */	lis r5, green_light_anim@ha
/* 00010D74 00010E40  38 83 00 00 */	addi r4, r3, str_locator6_las_0001a198@l
/* 00010D78 00010E44  60 C3 00 A0 */	ori r3, r6, 0xa0
/* 00010D7C 00010E48  38 05 00 00 */	addi r0, r5, green_light_anim@l
/* 00010D80 00010E4C  90 7D 00 00 */	stw r3, 0x0(r29)
/* 00010D84 00010E50  93 BE 00 00 */	stw r29, 0x0(r30)
/* 00010D88 00010E54  90 1E 00 04 */	stw r0, 0x4(r30)
/* 00010D8C 00010E58  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 00010D90 00010E5C  4B FE F3 AD */	bl animPoseGetGroupIdx
/* 00010D94 00010E60  90 7E 00 0C */	stw r3, 0xc(r30)
/* 00010D98 00010E64  3C 60 00 00 */	lis r3, str_pPlaneShape34_las_0001a1a4@ha
/* 00010D9C 00010E68  38 83 00 00 */	addi r4, r3, str_pPlaneShape34_las_0001a1a4@l
/* 00010DA0 00010E6C  80 7D 01 04 */	lwz r3, 0x104(r29)
/* 00010DA4 00010E70  4B FE F3 99 */	bl animPoseGetShapeIdx
/* 00010DA8 00010E74  90 7E 00 10 */	stw r3, 0x10(r30)
/* 00010DAC 00010E78  3C 80 00 00 */	lis r4, slhp@ha
/* 00010DB0 00010E7C  38 00 00 01 */	li r0, 0x1
/* 00010DB4 00010E80  38 A0 00 01 */	li r5, 0x1
/* 00010DB8 00010E84  80 84 00 00 */	lwz r4, slhp@l(r4)
/* 00010DBC 00010E88  90 04 00 14 */	stw r0, 0x14(r4)
/* 00010DC0 00010E8C  80 64 00 0C */	lwz r3, 0xc(r4)
/* 00010DC4 00010E90  80 84 00 10 */	lwz r4, 0x10(r4)
/* 00010DC8 00010E94  80 63 01 04 */	lwz r3, 0x104(r3)
/* 00010DCC 00010E98  80 84 00 04 */	lwz r4, 0x4(r4)
/* 00010DD0 00010E9C  4B FE F3 6D */	bl animPoseSetAnim
/* 00010DD4 00010EA0  3C 60 00 00 */	lis r3, str_light_head_1_las_0001a15c@ha
/* 00010DD8 00010EA4  38 63 00 00 */	addi r3, r3, str_light_head_1_las_0001a15c@l
/* 00010DDC 00010EA8  4B FE F3 61 */	bl npcNameToPtr
/* 00010DE0 00010EAC  80 C3 00 00 */	lwz r6, 0x0(r3)
/* 00010DE4 00010EB0  7C 7D 1B 78 */	mr r29, r3
/* 00010DE8 00010EB4  3C 60 00 00 */	lis r3, str_locator9_las_0001a1b4@ha
/* 00010DEC 00010EB8  3C A0 00 00 */	lis r5, orange_light_anim@ha
/* 00010DF0 00010EBC  38 83 00 00 */	addi r4, r3, str_locator9_las_0001a1b4@l
/* 00010DF4 00010EC0  60 C3 00 A0 */	ori r3, r6, 0xa0
/* 00010DF8 00010EC4  38 05 00 00 */	addi r0, r5, orange_light_anim@l
/* 00010DFC 00010EC8  90 7D 00 00 */	stw r3, 0x0(r29)
/* 00010E00 00010ECC  93 BE 00 14 */	stw r29, 0x14(r30)
/* 00010E04 00010ED0  90 1E 00 18 */	stw r0, 0x18(r30)
/* 00010E08 00010ED4  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 00010E0C 00010ED8  4B FE F3 31 */	bl animPoseGetGroupIdx
/* 00010E10 00010EDC  90 7E 00 20 */	stw r3, 0x20(r30)
/* 00010E14 00010EE0  3C 60 00 00 */	lis r3, str_pPlaneShape37_las_0001a1c0@ha
/* 00010E18 00010EE4  38 83 00 00 */	addi r4, r3, str_pPlaneShape37_las_0001a1c0@l
/* 00010E1C 00010EE8  80 7D 01 04 */	lwz r3, 0x104(r29)
/* 00010E20 00010EEC  4B FE F3 1D */	bl animPoseGetShapeIdx
/* 00010E24 00010EF0  90 7E 00 24 */	stw r3, 0x24(r30)
/* 00010E28 00010EF4  3C 80 00 00 */	lis r4, slhp@ha
/* 00010E2C 00010EF8  38 00 00 03 */	li r0, 0x3
/* 00010E30 00010EFC  38 A0 00 01 */	li r5, 0x1
/* 00010E34 00010F00  80 84 00 00 */	lwz r4, slhp@l(r4)
/* 00010E38 00010F04  90 04 00 28 */	stw r0, 0x28(r4)
/* 00010E3C 00010F08  80 64 00 20 */	lwz r3, 0x20(r4)
/* 00010E40 00010F0C  80 84 00 24 */	lwz r4, 0x24(r4)
/* 00010E44 00010F10  80 63 01 04 */	lwz r3, 0x104(r3)
/* 00010E48 00010F14  80 84 00 0C */	lwz r4, 0xc(r4)
/* 00010E4C 00010F18  4B FE F2 F1 */	bl animPoseSetAnim
/* 00010E50 00010F1C  3C 60 00 00 */	lis r3, str_light_head_2_las_0001a16c@ha
/* 00010E54 00010F20  38 63 00 00 */	addi r3, r3, str_light_head_2_las_0001a16c@l
/* 00010E58 00010F24  4B FE F2 E5 */	bl npcNameToPtr
/* 00010E5C 00010F28  80 C3 00 00 */	lwz r6, 0x0(r3)
/* 00010E60 00010F2C  7C 7D 1B 78 */	mr r29, r3
/* 00010E64 00010F30  3C 60 00 00 */	lis r3, str_locator8_las_0001a1d0@ha
/* 00010E68 00010F34  3C A0 00 00 */	lis r5, red_light_anim@ha
/* 00010E6C 00010F38  38 83 00 00 */	addi r4, r3, str_locator8_las_0001a1d0@l
/* 00010E70 00010F3C  60 C3 00 A0 */	ori r3, r6, 0xa0
/* 00010E74 00010F40  38 05 00 00 */	addi r0, r5, red_light_anim@l
/* 00010E78 00010F44  90 7D 00 00 */	stw r3, 0x0(r29)
/* 00010E7C 00010F48  93 BE 00 28 */	stw r29, 0x28(r30)
/* 00010E80 00010F4C  90 1E 00 2C */	stw r0, 0x2c(r30)
/* 00010E84 00010F50  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 00010E88 00010F54  4B FE F2 B5 */	bl animPoseGetGroupIdx
/* 00010E8C 00010F58  90 7E 00 34 */	stw r3, 0x34(r30)
/* 00010E90 00010F5C  3C 60 00 00 */	lis r3, str_pPlaneShape36_las_0001a1dc@ha
/* 00010E94 00010F60  38 83 00 00 */	addi r4, r3, str_pPlaneShape36_las_0001a1dc@l
/* 00010E98 00010F64  80 7D 01 04 */	lwz r3, 0x104(r29)
/* 00010E9C 00010F68  4B FE F2 A1 */	bl animPoseGetShapeIdx
/* 00010EA0 00010F6C  90 7E 00 38 */	stw r3, 0x38(r30)
/* 00010EA4 00010F70  3C 80 00 00 */	lis r4, slhp@ha
/* 00010EA8 00010F74  38 00 00 03 */	li r0, 0x3
/* 00010EAC 00010F78  38 A0 00 01 */	li r5, 0x1
/* 00010EB0 00010F7C  80 84 00 00 */	lwz r4, slhp@l(r4)
/* 00010EB4 00010F80  90 04 00 3C */	stw r0, 0x3c(r4)
/* 00010EB8 00010F84  80 64 00 34 */	lwz r3, 0x34(r4)
/* 00010EBC 00010F88  80 84 00 38 */	lwz r4, 0x38(r4)
/* 00010EC0 00010F8C  80 63 01 04 */	lwz r3, 0x104(r3)
/* 00010EC4 00010F90  80 84 00 0C */	lwz r4, 0xc(r4)
/* 00010EC8 00010F94  4B FE F2 75 */	bl animPoseSetAnim
/* 00010ECC 00010F98  3C 60 00 00 */	lis r3, str_light_head_3_las_0001a17c@ha
/* 00010ED0 00010F9C  38 63 00 00 */	addi r3, r3, str_light_head_3_las_0001a17c@l
/* 00010ED4 00010FA0  4B FE F2 69 */	bl npcNameToPtr
/* 00010ED8 00010FA4  80 C3 00 00 */	lwz r6, 0x0(r3)
/* 00010EDC 00010FA8  7C 7D 1B 78 */	mr r29, r3
/* 00010EE0 00010FAC  3C 60 00 00 */	lis r3, str_locator7_las_0001a1ec@ha
/* 00010EE4 00010FB0  3C A0 00 00 */	lis r5, yellow_light_anim@ha
/* 00010EE8 00010FB4  38 83 00 00 */	addi r4, r3, str_locator7_las_0001a1ec@l
/* 00010EEC 00010FB8  60 C3 00 A0 */	ori r3, r6, 0xa0
/* 00010EF0 00010FBC  38 05 00 00 */	addi r0, r5, yellow_light_anim@l
/* 00010EF4 00010FC0  90 7D 00 00 */	stw r3, 0x0(r29)
/* 00010EF8 00010FC4  93 BE 00 3C */	stw r29, 0x3c(r30)
/* 00010EFC 00010FC8  90 1E 00 40 */	stw r0, 0x40(r30)
/* 00010F00 00010FCC  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 00010F04 00010FD0  4B FE F2 39 */	bl animPoseGetGroupIdx
/* 00010F08 00010FD4  90 7E 00 48 */	stw r3, 0x48(r30)
/* 00010F0C 00010FD8  3C 60 00 00 */	lis r3, str_pPlaneShape35_las_0001a1f8@ha
/* 00010F10 00010FDC  38 83 00 00 */	addi r4, r3, str_pPlaneShape35_las_0001a1f8@l
/* 00010F14 00010FE0  80 7D 01 04 */	lwz r3, 0x104(r29)
/* 00010F18 00010FE4  4B FE F2 25 */	bl animPoseGetShapeIdx
/* 00010F1C 00010FE8  90 7E 00 4C */	stw r3, 0x4c(r30)
/* 00010F20 00010FEC  3C 80 00 00 */	lis r4, slhp@ha
/* 00010F24 00010FF0  38 00 00 03 */	li r0, 0x3
/* 00010F28 00010FF4  38 A0 00 01 */	li r5, 0x1
/* 00010F2C 00010FF8  80 84 00 00 */	lwz r4, slhp@l(r4)
/* 00010F30 00010FFC  90 04 00 50 */	stw r0, 0x50(r4)
/* 00010F34 00011000  80 64 00 48 */	lwz r3, 0x48(r4)
/* 00010F38 00011004  80 84 00 4C */	lwz r4, 0x4c(r4)
/* 00010F3C 00011008  80 63 01 04 */	lwz r3, 0x104(r3)
/* 00010F40 0001100C  80 84 00 0C */	lwz r4, 0xc(r4)
/* 00010F44 00011010  4B FE F1 F9 */	bl animPoseSetAnim
/* 00010F48 00011014  3C 60 00 00 */	lis r3, str_light_tue_1_las_0001a18c@ha
/* 00010F4C 00011018  38 63 00 00 */	addi r3, r3, str_light_tue_1_las_0001a18c@l
/* 00010F50 0001101C  4B FE F1 ED */	bl npcNameToPtr
/* 00010F54 00011020  80 C3 00 00 */	lwz r6, 0x0(r3)
/* 00010F58 00011024  7C 7D 1B 78 */	mr r29, r3
/* 00010F5C 00011028  3C 60 00 00 */	lis r3, str_locator5_las_0001a208@ha
/* 00010F60 0001102C  3C A0 00 00 */	lis r5, red_light_anim@ha
/* 00010F64 00011030  38 83 00 00 */	addi r4, r3, str_locator5_las_0001a208@l
/* 00010F68 00011034  60 C3 00 A0 */	ori r3, r6, 0xa0
/* 00010F6C 00011038  38 05 00 00 */	addi r0, r5, red_light_anim@l
/* 00010F70 0001103C  90 7D 00 00 */	stw r3, 0x0(r29)
/* 00010F74 00011040  93 BE 00 50 */	stw r29, 0x50(r30)
/* 00010F78 00011044  90 1E 00 54 */	stw r0, 0x54(r30)
/* 00010F7C 00011048  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 00010F80 0001104C  4B FE F1 BD */	bl animPoseGetGroupIdx
/* 00010F84 00011050  90 7E 00 5C */	stw r3, 0x5c(r30)
/* 00010F88 00011054  3C 60 00 00 */	lis r3, str_pPlaneShape36_las_0001a1dc@ha
/* 00010F8C 00011058  38 83 00 00 */	addi r4, r3, str_pPlaneShape36_las_0001a1dc@l
/* 00010F90 0001105C  80 7D 01 04 */	lwz r3, 0x104(r29)
/* 00010F94 00011060  4B FE F1 A9 */	bl animPoseGetShapeIdx
/* 00010F98 00011064  90 7E 00 60 */	stw r3, 0x60(r30)
/* 00010F9C 00011068  3C 80 00 00 */	lis r4, slhp@ha
/* 00010FA0 0001106C  38 00 00 01 */	li r0, 0x1
/* 00010FA4 00011070  38 A0 00 01 */	li r5, 0x1
/* 00010FA8 00011074  80 84 00 00 */	lwz r4, slhp@l(r4)
/* 00010FAC 00011078  90 04 00 64 */	stw r0, 0x64(r4)
/* 00010FB0 0001107C  80 64 00 5C */	lwz r3, 0x5c(r4)
/* 00010FB4 00011080  80 84 00 60 */	lwz r4, 0x60(r4)
/* 00010FB8 00011084  80 63 01 04 */	lwz r3, 0x104(r3)
/* 00010FBC 00011088  80 84 00 04 */	lwz r4, 0x4(r4)
/* 00010FC0 0001108C  4B FE F1 7D */	bl animPoseSetAnim
/* 00010FC4 00011090  3C 80 00 00 */	lis r4, shuryolight_callback@ha
/* 00010FC8 00011094  80 7F 01 04 */	lwz r3, 0x104(r31)
/* 00010FCC 00011098  38 84 00 00 */	addi r4, r4, shuryolight_callback@l
/* 00010FD0 0001109C  7F C5 F3 78 */	mr r5, r30
/* 00010FD4 000110A0  4B FE F1 69 */	bl animPoseSetDispCallBack
/* 00010FD8 000110A4  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 00010FDC 000110A8  38 60 00 02 */	li r3, 0x2
/* 00010FE0 000110AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00010FE4 000110B0  7C 08 03 A6 */	mtlr r0
/* 00010FE8 000110B4  38 21 00 20 */	addi r1, r1, 0x20
/* 00010FEC 000110B8  4E 80 00 20 */	blr
.endfn evt_shuryolight_init_16_text_10C8C

# .text:0x948 | 0x10FF0 | size: 0x5C
.fn shuryolightRunEvt, local
/* 00010FF0 000110BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00010FF4 000110C0  7C 08 02 A6 */	mflr r0
/* 00010FF8 000110C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 00010FFC 000110C8  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00011000 000110CC  7C 9F 23 78 */	mr r31, r4
/* 00011004 000110D0  7C 7E 1B 78 */	mr r30, r3
/* 00011008 000110D4  7F E3 FB 78 */	mr r3, r31
/* 0001100C 000110D8  4B FE F1 31 */	bl evtCheckID
/* 00011010 000110DC  2C 03 00 00 */	cmpwi r3, 0x0
/* 00011014 000110E0  41 82 00 0C */	beq .L_00011020
/* 00011018 000110E4  7F E3 FB 78 */	mr r3, r31
/* 0001101C 000110E8  4B FE F1 21 */	bl evtDeleteID
.L_00011020:
/* 00011020 000110EC  7F C3 F3 78 */	mr r3, r30
/* 00011024 000110F0  38 80 00 00 */	li r4, 0x0
/* 00011028 000110F4  38 A0 00 00 */	li r5, 0x0
/* 0001102C 000110F8  38 C0 00 00 */	li r6, 0x0
/* 00011030 000110FC  4B FE F1 0D */	bl evtEntryType
/* 00011034 00011100  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00011038 00011104  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0001103C 00011108  80 63 01 5C */	lwz r3, 0x15c(r3)
/* 00011040 0001110C  7C 08 03 A6 */	mtlr r0
/* 00011044 00011110  38 21 00 10 */	addi r1, r1, 0x10
/* 00011048 00011114  4E 80 00 20 */	blr
.endfn shuryolightRunEvt

# .text:0x9A4 | 0x1104C | size: 0x50
.fn shuryolightSetAnim, local
/* 0001104C 00011118  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00011050 0001111C  7C 08 02 A6 */	mflr r0
/* 00011054 00011120  1C 63 00 14 */	mulli r3, r3, 0x14
/* 00011058 00011124  3C A0 00 00 */	lis r5, slhp@ha
/* 0001105C 00011128  90 01 00 14 */	stw r0, 0x14(r1)
/* 00011060 0001112C  54 80 10 3A */	slwi r0, r4, 2
/* 00011064 00011130  80 C5 00 00 */	lwz r6, slhp@l(r5)
/* 00011068 00011134  38 E3 00 0C */	addi r7, r3, 0xc
/* 0001106C 00011138  38 A0 00 01 */	li r5, 0x1
/* 00011070 0001113C  7C E6 3A 14 */	add r7, r6, r7
/* 00011074 00011140  90 87 00 08 */	stw r4, 0x8(r7)
/* 00011078 00011144  80 67 00 00 */	lwz r3, 0x0(r7)
/* 0001107C 00011148  80 87 00 04 */	lwz r4, 0x4(r7)
/* 00011080 0001114C  80 63 01 04 */	lwz r3, 0x104(r3)
/* 00011084 00011150  7C 84 00 2E */	lwzx r4, r4, r0
/* 00011088 00011154  4B FE F0 B5 */	bl animPoseSetAnim
/* 0001108C 00011158  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00011090 0001115C  7C 08 03 A6 */	mtlr r0
/* 00011094 00011160  38 21 00 10 */	addi r1, r1, 0x10
/* 00011098 00011164  4E 80 00 20 */	blr
.endfn shuryolightSetAnim

# .text:0x9F4 | 0x1109C | size: 0x80
.fn shuryolight_callback, local
/* 0001109C 00011168  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000110A0 0001116C  7C 08 02 A6 */	mflr r0
/* 000110A4 00011170  38 A0 00 00 */	li r5, 0x0
/* 000110A8 00011174  90 01 00 14 */	stw r0, 0x14(r1)
/* 000110AC 00011178  38 00 00 05 */	li r0, 0x5
/* 000110B0 0001117C  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 000110B4 00011180  7C 7E 1B 78 */	mr r30, r3
/* 000110B8 00011184  38 60 00 00 */	li r3, 0x0
/* 000110BC 00011188  7C 09 03 A6 */	mtctr r0
.L_000110C0:
/* 000110C0 0001118C  38 03 00 0C */	addi r0, r3, 0xc
/* 000110C4 00011190  7C 1E 00 2E */	lwzx r0, r30, r0
/* 000110C8 00011194  7C 04 00 00 */	cmpw r4, r0
/* 000110CC 00011198  41 82 00 10 */	beq .L_000110DC
/* 000110D0 0001119C  38 A5 00 01 */	addi r5, r5, 0x1
/* 000110D4 000111A0  38 63 00 14 */	addi r3, r3, 0x14
/* 000110D8 000111A4  42 00 FF E8 */	bdnz .L_000110C0
.L_000110DC:
/* 000110DC 000111A8  2C 05 00 05 */	cmpwi r5, 0x5
/* 000110E0 000111AC  41 82 00 28 */	beq .L_00011108
/* 000110E4 000111B0  1F E5 00 14 */	mulli r31, r5, 0x14
/* 000110E8 000111B4  7C 7E F8 2E */	lwzx r3, r30, r31
/* 000110EC 000111B8  80 63 01 04 */	lwz r3, 0x104(r3)
/* 000110F0 000111BC  4B FE F0 4D */	bl animPoseMain
/* 000110F4 000111C0  7C BE F8 2E */	lwzx r5, r30, r31
/* 000110F8 000111C4  7C 7E FA 14 */	add r3, r30, r31
/* 000110FC 000111C8  80 83 00 10 */	lwz r4, 0x10(r3)
/* 00011100 000111CC  80 65 01 04 */	lwz r3, 0x104(r5)
/* 00011104 000111D0  4B FE F0 39 */	bl animPoseDrawShape
.L_00011108:
/* 00011108 000111D4  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 0001110C 000111D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00011110 000111DC  7C 08 03 A6 */	mtlr r0
/* 00011114 000111E0  38 21 00 10 */	addi r1, r1, 0x10
/* 00011118 000111E4  4E 80 00 20 */	blr
.endfn shuryolight_callback

# 0x00008630..0x000087B0 | size: 0x180
.rodata
.balign 8

# .rodata:0x0 | 0x8630 | size: 0x5
.obj str_L_1C_las_0001a098, local
	.string "L_1C"
.endobj str_L_1C_las_0001a098

# .rodata:0x5 | 0x8635 | size: 0x3
.obj gap_03_00008635_rodata, global
.hidden gap_03_00008635_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00008635_rodata

# .rodata:0x8 | 0x8638 | size: 0x5
.obj str_L_1B_las_0001a0a0, local
	.string "L_1B"
.endobj str_L_1B_las_0001a0a0

# .rodata:0xD | 0x863D | size: 0x3
.obj gap_03_0000863D_rodata, global
.hidden gap_03_0000863D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000863D_rodata

# .rodata:0x10 | 0x8640 | size: 0x5
.obj str_L_1D_las_0001a0a8, local
	.string "L_1D"
.endobj str_L_1D_las_0001a0a8

# .rodata:0x15 | 0x8645 | size: 0x3
.obj gap_03_00008645_rodata, global
.hidden gap_03_00008645_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00008645_rodata

# .rodata:0x18 | 0x8648 | size: 0x5
.obj str_L_1A_las_0001a0b0, local
	.string "L_1A"
.endobj str_L_1A_las_0001a0b0

# .rodata:0x1D | 0x864D | size: 0x3
.obj gap_03_0000864D_rodata, global
.hidden gap_03_0000864D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000864D_rodata

# .rodata:0x20 | 0x8650 | size: 0x5
.obj str_L_1E_las_0001a0b8, local
	.string "L_1E"
.endobj str_L_1E_las_0001a0b8

# .rodata:0x25 | 0x8655 | size: 0x3
.obj gap_03_00008655_rodata, global
.hidden gap_03_00008655_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00008655_rodata

# .rodata:0x28 | 0x8658 | size: 0x5
.obj str_L_2C_las_0001a0c0, local
	.string "L_2C"
.endobj str_L_2C_las_0001a0c0

# .rodata:0x2D | 0x865D | size: 0x3
.obj gap_03_0000865D_rodata, global
.hidden gap_03_0000865D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000865D_rodata

# .rodata:0x30 | 0x8660 | size: 0x5
.obj str_L_2B_las_0001a0c8, local
	.string "L_2B"
.endobj str_L_2B_las_0001a0c8

# .rodata:0x35 | 0x8665 | size: 0x3
.obj gap_03_00008665_rodata, global
.hidden gap_03_00008665_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00008665_rodata

# .rodata:0x38 | 0x8668 | size: 0x5
.obj str_L_2D_las_0001a0d0, local
	.string "L_2D"
.endobj str_L_2D_las_0001a0d0

# .rodata:0x3D | 0x866D | size: 0x3
.obj gap_03_0000866D_rodata, global
.hidden gap_03_0000866D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000866D_rodata

# .rodata:0x40 | 0x8670 | size: 0x5
.obj str_L_2A_las_0001a0d8, local
	.string "L_2A"
.endobj str_L_2A_las_0001a0d8

# .rodata:0x45 | 0x8675 | size: 0x3
.obj gap_03_00008675_rodata, global
.hidden gap_03_00008675_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00008675_rodata

# .rodata:0x48 | 0x8678 | size: 0x5
.obj str_L_2E_las_0001a0e0, local
	.string "L_2E"
.endobj str_L_2E_las_0001a0e0

# .rodata:0x4D | 0x867D | size: 0x3
.obj gap_03_0000867D_rodata, global
.hidden gap_03_0000867D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000867D_rodata

# .rodata:0x50 | 0x8680 | size: 0x5
.obj str_L_3C_las_0001a0e8, local
	.string "L_3C"
.endobj str_L_3C_las_0001a0e8

# .rodata:0x55 | 0x8685 | size: 0x3
.obj gap_03_00008685_rodata, global
.hidden gap_03_00008685_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00008685_rodata

# .rodata:0x58 | 0x8688 | size: 0x5
.obj str_L_3B_las_0001a0f0, local
	.string "L_3B"
.endobj str_L_3B_las_0001a0f0

# .rodata:0x5D | 0x868D | size: 0x3
.obj gap_03_0000868D_rodata, global
.hidden gap_03_0000868D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000868D_rodata

# .rodata:0x60 | 0x8690 | size: 0x5
.obj str_L_3D_las_0001a0f8, local
	.string "L_3D"
.endobj str_L_3D_las_0001a0f8

# .rodata:0x65 | 0x8695 | size: 0x3
.obj gap_03_00008695_rodata, global
.hidden gap_03_00008695_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00008695_rodata

# .rodata:0x68 | 0x8698 | size: 0x5
.obj str_L_3A_las_0001a100, local
	.string "L_3A"
.endobj str_L_3A_las_0001a100

# .rodata:0x6D | 0x869D | size: 0x3
.obj gap_03_0000869D_rodata, global
.hidden gap_03_0000869D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000869D_rodata

# .rodata:0x70 | 0x86A0 | size: 0x5
.obj str_L_3E_las_0001a108, local
	.string "L_3E"
.endobj str_L_3E_las_0001a108

# .rodata:0x75 | 0x86A5 | size: 0x3
.obj gap_03_000086A5_rodata, global
.hidden gap_03_000086A5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000086A5_rodata

# .rodata:0x78 | 0x86A8 | size: 0x5
.obj str_L_4C_las_0001a110, local
	.string "L_4C"
.endobj str_L_4C_las_0001a110

# .rodata:0x7D | 0x86AD | size: 0x3
.obj gap_03_000086AD_rodata, global
.hidden gap_03_000086AD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000086AD_rodata

# .rodata:0x80 | 0x86B0 | size: 0x5
.obj str_L_4B_las_0001a118, local
	.string "L_4B"
.endobj str_L_4B_las_0001a118

# .rodata:0x85 | 0x86B5 | size: 0x3
.obj gap_03_000086B5_rodata, global
.hidden gap_03_000086B5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000086B5_rodata

# .rodata:0x88 | 0x86B8 | size: 0x5
.obj str_L_4D_las_0001a120, local
	.string "L_4D"
.endobj str_L_4D_las_0001a120

# .rodata:0x8D | 0x86BD | size: 0x3
.obj gap_03_000086BD_rodata, global
.hidden gap_03_000086BD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000086BD_rodata

# .rodata:0x90 | 0x86C0 | size: 0x5
.obj str_L_4A_las_0001a128, local
	.string "L_4A"
.endobj str_L_4A_las_0001a128

# .rodata:0x95 | 0x86C5 | size: 0x3
.obj gap_03_000086C5_rodata, global
.hidden gap_03_000086C5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000086C5_rodata

# .rodata:0x98 | 0x86C8 | size: 0x5
.obj str_L_4E_las_0001a130, local
	.string "L_4E"
.endobj str_L_4E_las_0001a130
	.byte 0x00, 0x00, 0x00

# .rodata:0xA0 | 0x86D0 | size: 0x4
.obj float_1000_las_0001a138, local
	.float 1000
.endobj float_1000_las_0001a138

# .rodata:0xA4 | 0x86D4 | size: 0x4
.obj float_60_las_0001a13c, local
	.float 60
.endobj float_60_las_0001a13c

# .rodata:0xA8 | 0x86D8 | size: 0x4
.obj float_1_las_0001a140, local
	.float 1
.endobj float_1_las_0001a140

# .rodata:0xAC | 0x86DC | size: 0xC
.obj str_light_power_las_0001a144, local
	.string "light_power"
.endobj str_light_power_las_0001a144

# .rodata:0xB8 | 0x86E8 | size: 0x9
.obj str_c_shuryo_las_0001a150, local
	.string "c_shuryo"
.endobj str_c_shuryo_las_0001a150

# .rodata:0xC1 | 0x86F1 | size: 0x3
.obj gap_03_000086F1_rodata, global
.hidden gap_03_000086F1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000086F1_rodata

# .rodata:0xC4 | 0x86F4 | size: 0xD
.obj str_light_head_1_las_0001a15c, local
	.string "light_head_1"
.endobj str_light_head_1_las_0001a15c

# .rodata:0xD1 | 0x8701 | size: 0x3
.obj gap_03_00008701_rodata, global
.hidden gap_03_00008701_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00008701_rodata

# .rodata:0xD4 | 0x8704 | size: 0xD
.obj str_light_head_2_las_0001a16c, local
	.string "light_head_2"
.endobj str_light_head_2_las_0001a16c

# .rodata:0xE1 | 0x8711 | size: 0x3
.obj gap_03_00008711_rodata, global
.hidden gap_03_00008711_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00008711_rodata

# .rodata:0xE4 | 0x8714 | size: 0xD
.obj str_light_head_3_las_0001a17c, local
	.string "light_head_3"
.endobj str_light_head_3_las_0001a17c

# .rodata:0xF1 | 0x8721 | size: 0x3
.obj gap_03_00008721_rodata, global
.hidden gap_03_00008721_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00008721_rodata

# .rodata:0xF4 | 0x8724 | size: 0xC
.obj str_light_tue_1_las_0001a18c, local
	.string "light_tue_1"
.endobj str_light_tue_1_las_0001a18c

# .rodata:0x100 | 0x8730 | size: 0x9
.obj str_locator6_las_0001a198, local
	.string "locator6"
.endobj str_locator6_las_0001a198

# .rodata:0x109 | 0x8739 | size: 0x3
.obj gap_03_00008739_rodata, global
.hidden gap_03_00008739_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00008739_rodata

# .rodata:0x10C | 0x873C | size: 0xE
.obj str_pPlaneShape34_las_0001a1a4, local
	.string "pPlaneShape34"
.endobj str_pPlaneShape34_las_0001a1a4

# .rodata:0x11A | 0x874A | size: 0x2
.obj gap_03_0000874A_rodata, global
.hidden gap_03_0000874A_rodata
	.2byte 0x0000
.endobj gap_03_0000874A_rodata

# .rodata:0x11C | 0x874C | size: 0x9
.obj str_locator9_las_0001a1b4, local
	.string "locator9"
.endobj str_locator9_las_0001a1b4

# .rodata:0x125 | 0x8755 | size: 0x3
.obj gap_03_00008755_rodata, global
.hidden gap_03_00008755_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00008755_rodata

# .rodata:0x128 | 0x8758 | size: 0xE
.obj str_pPlaneShape37_las_0001a1c0, local
	.string "pPlaneShape37"
.endobj str_pPlaneShape37_las_0001a1c0

# .rodata:0x136 | 0x8766 | size: 0x2
.obj gap_03_00008766_rodata, global
.hidden gap_03_00008766_rodata
	.2byte 0x0000
.endobj gap_03_00008766_rodata

# .rodata:0x138 | 0x8768 | size: 0x9
.obj str_locator8_las_0001a1d0, local
	.string "locator8"
.endobj str_locator8_las_0001a1d0

# .rodata:0x141 | 0x8771 | size: 0x3
.obj gap_03_00008771_rodata, global
.hidden gap_03_00008771_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00008771_rodata

# .rodata:0x144 | 0x8774 | size: 0xE
.obj str_pPlaneShape36_las_0001a1dc, local
	.string "pPlaneShape36"
.endobj str_pPlaneShape36_las_0001a1dc

# .rodata:0x152 | 0x8782 | size: 0x2
.obj gap_03_00008782_rodata, global
.hidden gap_03_00008782_rodata
	.2byte 0x0000
.endobj gap_03_00008782_rodata

# .rodata:0x154 | 0x8784 | size: 0x9
.obj str_locator7_las_0001a1ec, local
	.string "locator7"
.endobj str_locator7_las_0001a1ec

# .rodata:0x15D | 0x878D | size: 0x3
.obj gap_03_0000878D_rodata, global
.hidden gap_03_0000878D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000878D_rodata

# .rodata:0x160 | 0x8790 | size: 0xE
.obj str_pPlaneShape35_las_0001a1f8, local
	.string "pPlaneShape35"
.endobj str_pPlaneShape35_las_0001a1f8

# .rodata:0x16E | 0x879E | size: 0x2
.obj gap_03_0000879E_rodata, global
.hidden gap_03_0000879E_rodata
	.2byte 0x0000
.endobj gap_03_0000879E_rodata

# .rodata:0x170 | 0x87A0 | size: 0x9
.obj str_locator5_las_0001a208, local
	.string "locator5"
.endobj str_locator5_las_0001a208

# .rodata:0x179 | 0x87A9 | size: 0x7
.obj gap_03_000087A9_rodata, global
.hidden gap_03_000087A9_rodata
	.4byte 0x00000000
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000087A9_rodata

# 0x00053C38..0x00053F80 | size: 0x348
.data
.balign 8

# .data:0x0 | 0x53C38 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x53C40 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x53C44 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x53C48 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x53C4C | size: 0x4
.obj gap_04_00053C4C_data, global
.hidden gap_04_00053C4C_data
	.4byte 0x00000000
.endobj gap_04_00053C4C_data

# .data:0x18 | 0x53C50 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x53C58 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x53C5C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x53C60 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x53C68 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x53C6C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x53C70 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x53C74 | size: 0x4
.obj gap_04_00053C74_data, global
.hidden gap_04_00053C74_data
	.4byte 0x00000000
.endobj gap_04_00053C74_data

# .data:0x40 | 0x53C78 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x53C80 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x53C84 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x53C88 | size: 0x14
.obj green_light_anim, local
	.4byte str_L_1C_las_0001a098
	.4byte str_L_1B_las_0001a0a0
	.4byte str_L_1D_las_0001a0a8
	.4byte str_L_1A_las_0001a0b0
	.4byte str_L_1E_las_0001a0b8
.endobj green_light_anim

# .data:0x64 | 0x53C9C | size: 0x14
.obj yellow_light_anim, local
	.4byte str_L_2C_las_0001a0c0
	.4byte str_L_2B_las_0001a0c8
	.4byte str_L_2D_las_0001a0d0
	.4byte str_L_2A_las_0001a0d8
	.4byte str_L_2E_las_0001a0e0
.endobj yellow_light_anim

# .data:0x78 | 0x53CB0 | size: 0x14
.obj red_light_anim, local
	.4byte str_L_3C_las_0001a0e8
	.4byte str_L_3B_las_0001a0f0
	.4byte str_L_3D_las_0001a0f8
	.4byte str_L_3A_las_0001a100
	.4byte str_L_3E_las_0001a108
.endobj red_light_anim

# .data:0x8C | 0x53CC4 | size: 0x14
.obj orange_light_anim, local
	.4byte str_L_4C_las_0001a110
	.4byte str_L_4B_las_0001a118
	.4byte str_L_4D_las_0001a120
	.4byte str_L_4A_las_0001a128
	.4byte str_L_4E_las_0001a130
.endobj orange_light_anim

# .data:0xA0 | 0x53CD8 | size: 0xB0
.obj shuryolight_pow_normal_16_data_53CD8, global
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_shuryolight_set_anim
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000BB8
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000BB8
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000064
	.4byte 0xFE363C80
	.4byte 0x00020038
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_shuryolight_set_anim
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x0001000A
	.4byte 0x00000050
	.4byte 0x0003005B
	.4byte evt_shuryolight_set_anim
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x00000050
	.4byte 0x00000006
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj shuryolight_pow_normal_16_data_53CD8

# .data:0x150 | 0x53D88 | size: 0x7C
.obj shuryolight_pow_tenmetu_16_data_53D88, global
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_shuryolight_set_anim
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000BB8
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x000003E8
	.4byte 0xFE363C81
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x000002BC
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_shuryolight_set_anim
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj shuryolight_pow_tenmetu_16_data_53D88

# .data:0x1CC | 0x53E04 | size: 0x78
.obj shuryolight_head_normal_16_data_53E04, global
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_shuryolight_set_anim
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0003005B
	.4byte evt_shuryolight_set_anim
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj shuryolight_head_normal_16_data_53E04

# .data:0x244 | 0x53E7C | size: 0x50
.obj shuryolight_head_tenmetu_16_data_53E7C, global
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_shuryolight_set_anim
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0x0003005B
	.4byte evt_shuryolight_set_anim
	.4byte 0x00000002
	.4byte 0x00000004
	.4byte 0x0003005B
	.4byte evt_shuryolight_set_anim
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x0002005B
	.4byte evt_shuryolight_wait_anim_end
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj shuryolight_head_tenmetu_16_data_53E7C

# .data:0x294 | 0x53ECC | size: 0x38
.obj shuryolight_head_off_16_data_53ECC, global
	.4byte 0x0003005B
	.4byte evt_shuryolight_set_anim
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte evt_shuryolight_set_anim
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte evt_shuryolight_set_anim
	.4byte 0x00000003
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0x00000001
.endobj shuryolight_head_off_16_data_53ECC

# .data:0x2CC | 0x53F04 | size: 0x7C
.obj shuryolight_tue_normal_16_data_53F04, global
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_shuryolight_set_anim
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_shuryolight_wait_anim_end
	.4byte 0x00000004
	.4byte 0x0003005B
	.4byte evt_shuryolight_set_anim
	.4byte 0x00000004
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_shuryolight_set_anim
	.4byte 0x00000004
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_shuryolight_wait_anim_end
	.4byte 0x00000004
	.4byte 0x0003005B
	.4byte evt_shuryolight_set_anim
	.4byte 0x00000004
	.4byte 0x00000003
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj shuryolight_tue_normal_16_data_53F04

# 0x000002F8..0x00000300 | size: 0x8
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x2F8 | size: 0x4
.obj slhp, local
	.skip 0x4
.endobj slhp

# .bss:0x4 | 0x2FC | size: 0x4
.obj gap_05_000002FC_bss, global
.hidden gap_05_000002FC_bss
	.skip 0x4
.endobj gap_05_000002FC_bss
