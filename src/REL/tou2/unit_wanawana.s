.include "macros.inc"
.file "unit_wanawana.o"

# 0x00008568..0x00008C04 | size: 0x69C
.text
.balign 4

# .text:0x0 | 0x8568 | size: 0x264
.fn replace_evt, local
/* 00008568 0000862C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 0000856C 00008630  7C 08 02 A6 */	mflr r0
/* 00008570 00008634  38 80 FF FE */	li r4, -0x2
/* 00008574 00008638  90 01 00 64 */	stw r0, 0x64(r1)
/* 00008578 0000863C  BF 61 00 4C */	stmw r27, 0x4c(r1)
/* 0000857C 00008640  7C 7B 1B 78 */	mr r27, r3
/* 00008580 00008644  4B FF CA 95 */	bl BattleTransID
/* 00008584 00008648  38 80 00 01 */	li r4, 0x1
/* 00008588 0000864C  4B FF CA 8D */	bl BattleGetUnitPartsPtr
/* 0000858C 00008650  7C 7E 1B 78 */	mr r30, r3
/* 00008590 00008654  7F 63 DB 78 */	mr r3, r27
/* 00008594 00008658  38 80 FF FE */	li r4, -0x2
/* 00008598 0000865C  4B FF CA 7D */	bl BattleTransID
/* 0000859C 00008660  3C A0 00 00 */	lis r5, _battleWorkPointer@ha
/* 000085A0 00008664  7C 64 1B 78 */	mr r4, r3
/* 000085A4 00008668  38 65 00 00 */	addi r3, r5, _battleWorkPointer@l
/* 000085A8 0000866C  80 63 00 00 */	lwz r3, 0x0(r3)
/* 000085AC 00008670  4B FF CA 69 */	bl BattleGetUnitPtr
/* 000085B0 00008674  7C 7F 1B 78 */	mr r31, r3
/* 000085B4 00008678  80 7E 01 C0 */	lwz r3, 0x1c0(r30)
/* 000085B8 0000867C  4B FF CA 5D */	bl animPoseGetAnimBaseDataPtr
/* 000085BC 00008680  3C 80 00 00 */	lis r4, vec3_tou2_00010d80@ha
/* 000085C0 00008684  3C A0 00 00 */	lis r5, vec3_tou2_00010d8c@ha
/* 000085C4 00008688  39 24 00 00 */	addi r9, r4, vec3_tou2_00010d80@l
/* 000085C8 0000868C  C0 23 00 D0 */	lfs f1, 0xd0(r3)
/* 000085CC 00008690  81 09 00 00 */	lwz r8, 0x0(r9)
/* 000085D0 00008694  38 C5 00 00 */	addi r6, r5, vec3_tou2_00010d8c@l
/* 000085D4 00008698  80 E9 00 08 */	lwz r7, 0x8(r9)
/* 000085D8 0000869C  3C 80 00 00 */	lis r4, float_2_tou2_00010da0@ha
/* 000085DC 000086A0  80 A6 00 00 */	lwz r5, 0x0(r6)
/* 000085E0 000086A4  80 06 00 08 */	lwz r0, 0x8(r6)
/* 000085E4 000086A8  91 01 00 14 */	stw r8, 0x14(r1)
/* 000085E8 000086AC  C0 03 00 D8 */	lfs f0, 0xd8(r3)
/* 000085EC 000086B0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 000085F0 000086B4  C0 23 00 DC */	lfs f1, 0xdc(r3)
/* 000085F4 000086B8  90 E1 00 1C */	stw r7, 0x1c(r1)
/* 000085F8 000086BC  81 01 00 14 */	lwz r8, 0x14(r1)
/* 000085FC 000086C0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 00008600 000086C4  C0 03 00 E4 */	lfs f0, 0xe4(r3)
/* 00008604 000086C8  90 A1 00 08 */	stw r5, 0x8(r1)
/* 00008608 000086CC  80 E1 00 1C */	lwz r7, 0x1c(r1)
/* 0000860C 000086D0  90 01 00 10 */	stw r0, 0x10(r1)
/* 00008610 000086D4  81 29 00 04 */	lwz r9, 0x4(r9)
/* 00008614 000086D8  D0 21 00 08 */	stfs f1, 0x8(r1)
/* 00008618 000086DC  80 C6 00 04 */	lwz r6, 0x4(r6)
/* 0000861C 000086E0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 00008620 000086E4  80 A1 00 08 */	lwz r5, 0x8(r1)
/* 00008624 000086E8  80 01 00 10 */	lwz r0, 0x10(r1)
/* 00008628 000086EC  91 01 00 2C */	stw r8, 0x2c(r1)
/* 0000862C 000086F0  C0 83 00 D4 */	lfs f4, 0xd4(r3)
/* 00008630 000086F4  90 E1 00 34 */	stw r7, 0x34(r1)
/* 00008634 000086F8  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 00008638 000086FC  90 A1 00 20 */	stw r5, 0x20(r1)
/* 0000863C 00008700  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 00008640 00008704  90 01 00 28 */	stw r0, 0x28(r1)
/* 00008644 00008708  C0 61 00 20 */	lfs f3, 0x20(r1)
/* 00008648 0000870C  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 0000864C 00008710  EC 43 10 28 */	fsubs f2, f3, f2
/* 00008650 00008714  91 21 00 18 */	stw r9, 0x18(r1)
/* 00008654 00008718  EC 01 00 28 */	fsubs f0, f1, f0
/* 00008658 0000871C  C0 64 00 00 */	lfs f3, float_2_tou2_00010da0@l(r4)
/* 0000865C 00008720  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 00008660 00008724  EC 23 00 B2 */	fmuls f1, f3, f2
/* 00008664 00008728  EC 03 00 32 */	fmuls f0, f3, f0
/* 00008668 0000872C  C0 43 00 E0 */	lfs f2, 0xe0(r3)
/* 0000866C 00008730  90 C1 00 0C */	stw r6, 0xc(r1)
/* 00008670 00008734  38 60 00 60 */	li r3, 0x60
/* 00008674 00008738  FC 20 08 1E */	fctiwz f1, f1
/* 00008678 0000873C  FC 00 00 1E */	fctiwz f0, f0
/* 0000867C 00008740  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 00008680 00008744  80 01 00 18 */	lwz r0, 0x18(r1)
/* 00008684 00008748  D8 21 00 38 */	stfd f1, 0x38(r1)
/* 00008688 0000874C  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 0000868C 00008750  D8 01 00 40 */	stfd f0, 0x40(r1)
/* 00008690 00008754  83 61 00 3C */	lwz r27, 0x3c(r1)
/* 00008694 00008758  83 81 00 44 */	lwz r28, 0x44(r1)
/* 00008698 0000875C  57 64 07 FE */	clrlwi r4, r27, 31
/* 0000869C 00008760  90 01 00 30 */	stw r0, 0x30(r1)
/* 000086A0 00008764  57 80 07 FE */	clrlwi r0, r28, 31
/* 000086A4 00008768  90 A1 00 24 */	stw r5, 0x24(r1)
/* 000086A8 0000876C  7F 7B 22 14 */	add r27, r27, r4
/* 000086AC 00008770  7F 9C 02 14 */	add r28, r28, r0
/* 000086B0 00008774  4B FF C9 65 */	bl BattleAlloc
/* 000086B4 00008778  7F 60 0E 70 */	srawi r0, r27, 1
/* 000086B8 0000877C  38 A0 00 05 */	li r5, 0x5
/* 000086BC 00008780  7F 60 01 94 */	addze r27, r0
/* 000086C0 00008784  7C 7D 1B 78 */	mr r29, r3
/* 000086C4 00008788  7F 80 0E 70 */	srawi r0, r28, 1
/* 000086C8 0000878C  38 C0 00 00 */	li r6, 0x0
/* 000086CC 00008790  7F 80 01 94 */	addze r28, r0
/* 000086D0 00008794  57 63 04 3E */	clrlwi r3, r27, 16
/* 000086D4 00008798  57 84 04 3E */	clrlwi r4, r28, 16
/* 000086D8 0000879C  38 E0 00 00 */	li r7, 0x0
/* 000086DC 000087A0  4B FF C9 39 */	bl GXGetTexBufferSize
/* 000086E0 000087A4  38 80 00 01 */	li r4, 0x1
/* 000086E4 000087A8  4B FF C9 31 */	bl smartAlloc
/* 000086E8 000087AC  90 7D 00 5C */	stw r3, 0x5c(r29)
/* 000086EC 000087B0  38 7D 00 38 */	addi r3, r29, 0x38
/* 000086F0 000087B4  57 65 04 3E */	clrlwi r5, r27, 16
/* 000086F4 000087B8  57 86 04 3E */	clrlwi r6, r28, 16
/* 000086F8 000087BC  80 1E 01 C0 */	lwz r0, 0x1c0(r30)
/* 000086FC 000087C0  38 E0 00 05 */	li r7, 0x5
/* 00008700 000087C4  39 00 00 00 */	li r8, 0x0
/* 00008704 000087C8  39 20 00 00 */	li r9, 0x0
/* 00008708 000087CC  90 1D 00 04 */	stw r0, 0x4(r29)
/* 0000870C 000087D0  39 40 00 00 */	li r10, 0x0
/* 00008710 000087D4  93 DD 00 58 */	stw r30, 0x58(r29)
/* 00008714 000087D8  80 9D 00 5C */	lwz r4, 0x5c(r29)
/* 00008718 000087DC  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000871C 000087E0  4B FF C8 F9 */	bl GXInitTexObj
/* 00008720 000087E4  3C 80 00 00 */	lis r4, zero_tou2_00010da4@ha
/* 00008724 000087E8  38 7D 00 38 */	addi r3, r29, 0x38
/* 00008728 000087EC  38 A4 00 00 */	addi r5, r4, zero_tou2_00010da4@l
/* 0000872C 000087F0  38 80 00 00 */	li r4, 0x0
/* 00008730 000087F4  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 00008734 000087F8  38 A0 00 00 */	li r5, 0x0
/* 00008738 000087FC  38 C0 00 00 */	li r6, 0x0
/* 0000873C 00008800  38 E0 00 00 */	li r7, 0x0
/* 00008740 00008804  FC 40 08 90 */	fmr f2, f1
/* 00008744 00008808  39 00 00 00 */	li r8, 0x0
/* 00008748 0000880C  FC 60 08 90 */	fmr f3, f1
/* 0000874C 00008810  4B FF C8 C9 */	bl GXInitTexObjLOD
/* 00008750 00008814  38 7D 00 08 */	addi r3, r29, 0x8
/* 00008754 00008818  4B FF C8 C1 */	bl PSMTXIdentity
/* 00008758 0000881C  4B FF C8 BD */	bl animGetPtr
/* 0000875C 00008820  80 1E 01 C0 */	lwz r0, 0x1c0(r30)
/* 00008760 00008824  3C C0 00 00 */	lis r6, replace_callback@ha
/* 00008764 00008828  81 23 00 10 */	lwz r9, 0x10(r3)
/* 00008768 0000882C  3C 60 00 00 */	lis r3, replace_disp@ha
/* 0000876C 00008830  1D 00 01 70 */	mulli r8, r0, 0x170
/* 00008770 00008834  38 E6 00 00 */	addi r7, r6, replace_callback@l
/* 00008774 00008838  38 A3 00 00 */	addi r5, r3, replace_disp@l
/* 00008778 0000883C  3C 80 00 00 */	lis r4, zero_tou2_00010da4@ha
/* 0000877C 00008840  7C 69 40 2E */	lwzx r3, r9, r8
/* 00008780 00008844  38 00 00 00 */	li r0, 0x0
/* 00008784 00008848  C0 24 00 00 */	lfs f1, zero_tou2_00010da4@l(r4)
/* 00008788 0000884C  7F A6 EB 78 */	mr r6, r29
/* 0000878C 00008850  60 63 00 10 */	ori r3, r3, 0x10
/* 00008790 00008854  38 80 00 00 */	li r4, 0x0
/* 00008794 00008858  7C 69 41 2E */	stwx r3, r9, r8
/* 00008798 0000885C  38 60 00 02 */	li r3, 0x2
/* 0000879C 00008860  90 FE 02 10 */	stw r7, 0x210(r30)
/* 000087A0 00008864  93 BF 03 14 */	stw r29, 0x314(r31)
/* 000087A4 00008868  80 FD 00 5C */	lwz r7, 0x5c(r29)
/* 000087A8 0000886C  90 FF 03 1C */	stw r7, 0x31c(r31)
/* 000087AC 00008870  90 1D 00 00 */	stw r0, 0x0(r29)
/* 000087B0 00008874  4B FF C8 65 */	bl dispEntry
/* 000087B4 00008878  BB 61 00 4C */	lmw r27, 0x4c(r1)
/* 000087B8 0000887C  38 60 00 02 */	li r3, 0x2
/* 000087BC 00008880  80 01 00 64 */	lwz r0, 0x64(r1)
/* 000087C0 00008884  7C 08 03 A6 */	mtlr r0
/* 000087C4 00008888  38 21 00 60 */	addi r1, r1, 0x60
/* 000087C8 0000888C  4E 80 00 20 */	blr
.endfn replace_evt

# .text:0x264 | 0x87CC | size: 0xB8
.fn replace_callback, local
/* 000087CC 00008890  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 000087D0 00008894  7C 08 02 A6 */	mflr r0
/* 000087D4 00008898  90 01 00 44 */	stw r0, 0x44(r1)
/* 000087D8 0000889C  BF C1 00 38 */	stmw r30, 0x38(r1)
/* 000087DC 000088A0  7C 9E 23 78 */	mr r30, r4
/* 000087E0 000088A4  80 63 04 EC */	lwz r3, 0x4ec(r3)
/* 000087E4 000088A8  83 E3 03 14 */	lwz r31, 0x314(r3)
/* 000087E8 000088AC  80 1F 00 00 */	lwz r0, 0x0(r31)
/* 000087EC 000088B0  2C 00 00 00 */	cmpwi r0, 0x0
/* 000087F0 000088B4  41 82 00 80 */	beq .L_00008870
/* 000087F4 000088B8  38 61 00 08 */	addi r3, r1, 0x8
/* 000087F8 000088BC  4B FF C8 1D */	bl PSMTXIdentity
/* 000087FC 000088C0  2C 1E 00 00 */	cmpwi r30, 0x0
/* 00008800 000088C4  40 82 00 3C */	bne .L_0000883C
/* 00008804 000088C8  38 61 00 08 */	addi r3, r1, 0x8
/* 00008808 000088CC  38 80 00 00 */	li r4, 0x0
/* 0000880C 000088D0  38 A0 00 00 */	li r5, 0x0
/* 00008810 000088D4  4B FF C8 05 */	bl animSetPaperTexMtx
/* 00008814 000088D8  80 DF 00 5C */	lwz r6, 0x5c(r31)
/* 00008818 000088DC  38 7F 00 38 */	addi r3, r31, 0x38
/* 0000881C 000088E0  38 80 00 00 */	li r4, 0x0
/* 00008820 000088E4  38 A0 00 00 */	li r5, 0x0
/* 00008824 000088E8  38 E0 00 00 */	li r7, 0x0
/* 00008828 000088EC  39 00 00 00 */	li r8, 0x0
/* 0000882C 000088F0  39 20 00 01 */	li r9, 0x1
/* 00008830 000088F4  39 40 00 01 */	li r10, 0x1
/* 00008834 000088F8  4B FF C7 E1 */	bl animSetPaperTexObj
/* 00008838 000088FC  48 00 00 38 */	b .L_00008870
.L_0000883C:
/* 0000883C 00008900  38 60 00 00 */	li r3, 0x0
/* 00008840 00008904  38 80 00 00 */	li r4, 0x0
/* 00008844 00008908  38 A0 00 00 */	li r5, 0x0
/* 00008848 0000890C  4B FF C7 CD */	bl animSetPaperTexMtx
/* 0000884C 00008910  38 60 00 00 */	li r3, 0x0
/* 00008850 00008914  38 80 00 00 */	li r4, 0x0
/* 00008854 00008918  38 A0 00 00 */	li r5, 0x0
/* 00008858 0000891C  38 C0 00 00 */	li r6, 0x0
/* 0000885C 00008920  38 E0 00 00 */	li r7, 0x0
/* 00008860 00008924  39 00 00 00 */	li r8, 0x0
/* 00008864 00008928  39 20 00 01 */	li r9, 0x1
/* 00008868 0000892C  39 40 00 01 */	li r10, 0x1
/* 0000886C 00008930  4B FF C7 A9 */	bl animSetPaperTexObj
.L_00008870:
/* 00008870 00008934  BB C1 00 38 */	lmw r30, 0x38(r1)
/* 00008874 00008938  80 01 00 44 */	lwz r0, 0x44(r1)
/* 00008878 0000893C  7C 08 03 A6 */	mtlr r0
/* 0000887C 00008940  38 21 00 40 */	addi r1, r1, 0x40
/* 00008880 00008944  4E 80 00 20 */	blr
.endfn replace_callback

# .text:0x31C | 0x8884 | size: 0x35C
.fn replace_disp, local
/* 00008884 00008948  94 21 FD 00 */	stwu r1, -0x300(r1)
/* 00008888 0000894C  7C 08 02 A6 */	mflr r0
/* 0000888C 00008950  90 01 03 04 */	stw r0, 0x304(r1)
/* 00008890 00008954  BF 61 02 EC */	stmw r27, 0x2ec(r1)
/* 00008894 00008958  7C 7B 1B 78 */	mr r27, r3
/* 00008898 0000895C  7C 9C 23 78 */	mr r28, r4
/* 0000889C 00008960  4B FF C7 79 */	bl camGetPtr
/* 000088A0 00008964  7C 64 1B 78 */	mr r4, r3
/* 000088A4 00008968  38 61 00 48 */	addi r3, r1, 0x48
/* 000088A8 0000896C  38 A0 02 60 */	li r5, 0x260
/* 000088AC 00008970  4B FF C7 69 */	bl memcpy
/* 000088B0 00008974  80 7C 00 04 */	lwz r3, 0x4(r28)
/* 000088B4 00008978  4B FF C7 61 */	bl animPoseGetAnimBaseDataPtr
/* 000088B8 0000897C  3C 80 00 00 */	lis r4, vec3_tou2_00010d5c@ha
/* 000088BC 00008980  3C A0 00 00 */	lis r5, vec3_tou2_00010d68@ha
/* 000088C0 00008984  39 24 00 00 */	addi r9, r4, vec3_tou2_00010d5c@l
/* 000088C4 00008988  C0 23 00 D0 */	lfs f1, 0xd0(r3)
/* 000088C8 0000898C  81 09 00 00 */	lwz r8, 0x0(r9)
/* 000088CC 00008990  38 C5 00 00 */	addi r6, r5, vec3_tou2_00010d68@l
/* 000088D0 00008994  80 E9 00 08 */	lwz r7, 0x8(r9)
/* 000088D4 00008998  3C 80 00 00 */	lis r4, float_2_tou2_00010da0@ha
/* 000088D8 0000899C  80 A6 00 00 */	lwz r5, 0x0(r6)
/* 000088DC 000089A0  80 06 00 08 */	lwz r0, 0x8(r6)
/* 000088E0 000089A4  91 01 00 14 */	stw r8, 0x14(r1)
/* 000088E4 000089A8  C0 03 00 D8 */	lfs f0, 0xd8(r3)
/* 000088E8 000089AC  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 000088EC 000089B0  C0 23 00 DC */	lfs f1, 0xdc(r3)
/* 000088F0 000089B4  90 E1 00 1C */	stw r7, 0x1c(r1)
/* 000088F4 000089B8  81 01 00 14 */	lwz r8, 0x14(r1)
/* 000088F8 000089BC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 000088FC 000089C0  C0 03 00 E4 */	lfs f0, 0xe4(r3)
/* 00008900 000089C4  90 A1 00 08 */	stw r5, 0x8(r1)
/* 00008904 000089C8  80 E1 00 1C */	lwz r7, 0x1c(r1)
/* 00008908 000089CC  90 01 00 10 */	stw r0, 0x10(r1)
/* 0000890C 000089D0  81 29 00 04 */	lwz r9, 0x4(r9)
/* 00008910 000089D4  D0 21 00 08 */	stfs f1, 0x8(r1)
/* 00008914 000089D8  80 C6 00 04 */	lwz r6, 0x4(r6)
/* 00008918 000089DC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 0000891C 000089E0  80 A1 00 08 */	lwz r5, 0x8(r1)
/* 00008920 000089E4  80 01 00 10 */	lwz r0, 0x10(r1)
/* 00008924 000089E8  91 01 00 38 */	stw r8, 0x38(r1)
/* 00008928 000089EC  C0 83 00 D4 */	lfs f4, 0xd4(r3)
/* 0000892C 000089F0  90 E1 00 40 */	stw r7, 0x40(r1)
/* 00008930 000089F4  C0 41 00 38 */	lfs f2, 0x38(r1)
/* 00008934 000089F8  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 00008938 000089FC  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 0000893C 00008A00  90 01 00 34 */	stw r0, 0x34(r1)
/* 00008940 00008A04  C0 61 00 2C */	lfs f3, 0x2c(r1)
/* 00008944 00008A08  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 00008948 00008A0C  EC 43 10 28 */	fsubs f2, f3, f2
/* 0000894C 00008A10  91 21 00 18 */	stw r9, 0x18(r1)
/* 00008950 00008A14  EC 01 00 28 */	fsubs f0, f1, f0
/* 00008954 00008A18  C0 64 00 00 */	lfs f3, float_2_tou2_00010da0@l(r4)
/* 00008958 00008A1C  D0 81 00 18 */	stfs f4, 0x18(r1)
/* 0000895C 00008A20  EC 23 00 B2 */	fmuls f1, f3, f2
/* 00008960 00008A24  EC 03 00 32 */	fmuls f0, f3, f0
/* 00008964 00008A28  C0 43 00 E0 */	lfs f2, 0xe0(r3)
/* 00008968 00008A2C  90 C1 00 0C */	stw r6, 0xc(r1)
/* 0000896C 00008A30  7F 63 DB 78 */	mr r3, r27
/* 00008970 00008A34  FC 20 08 1E */	fctiwz f1, f1
/* 00008974 00008A38  FC 00 00 1E */	fctiwz f0, f0
/* 00008978 00008A3C  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 0000897C 00008A40  80 81 00 18 */	lwz r4, 0x18(r1)
/* 00008980 00008A44  D8 21 02 A8 */	stfd f1, 0x2a8(r1)
/* 00008984 00008A48  80 01 00 0C */	lwz r0, 0xc(r1)
/* 00008988 00008A4C  D8 01 02 B0 */	stfd f0, 0x2b0(r1)
/* 0000898C 00008A50  83 C1 02 AC */	lwz r30, 0x2ac(r1)
/* 00008990 00008A54  90 81 00 3C */	stw r4, 0x3c(r1)
/* 00008994 00008A58  83 A1 02 B4 */	lwz r29, 0x2b4(r1)
/* 00008998 00008A5C  90 01 00 30 */	stw r0, 0x30(r1)
/* 0000899C 00008A60  4B FF C6 79 */	bl camGetPtr
/* 000089A0 00008A64  7C 7F 1B 78 */	mr r31, r3
/* 000089A4 00008A68  57 C4 07 FE */	clrlwi r4, r30, 31
/* 000089A8 00008A6C  57 A0 07 FE */	clrlwi r0, r29, 31
/* 000089AC 00008A70  80 7C 00 58 */	lwz r3, 0x58(r28)
/* 000089B0 00008A74  7F DE 22 14 */	add r30, r30, r4
/* 000089B4 00008A78  38 81 00 20 */	addi r4, r1, 0x20
/* 000089B8 00008A7C  7F BD 02 14 */	add r29, r29, r0
/* 000089BC 00008A80  38 A1 00 24 */	addi r5, r1, 0x24
/* 000089C0 00008A84  38 C1 00 28 */	addi r6, r1, 0x28
/* 000089C4 00008A88  4B FF C6 51 */	bl BtlUnit_GetPartsWorldPos
/* 000089C8 00008A8C  3C 80 00 00 */	lis r4, vec3_tou2_00010d74@ha
/* 000089CC 00008A90  3C 60 00 00 */	lis r3, float_0p21817_tou2_00010dac@ha
/* 000089D0 00008A94  38 A4 00 00 */	addi r5, r4, vec3_tou2_00010d74@l
/* 000089D4 00008A98  C0 23 00 00 */	lfs f1, float_0p21817_tou2_00010dac@l(r3)
/* 000089D8 00008A9C  80 85 00 00 */	lwz r4, 0x0(r5)
/* 000089DC 00008AA0  80 05 00 04 */	lwz r0, 0x4(r5)
/* 000089E0 00008AA4  90 9F 00 24 */	stw r4, 0x24(r31)
/* 000089E4 00008AA8  90 1F 00 28 */	stw r0, 0x28(r31)
/* 000089E8 00008AAC  80 05 00 08 */	lwz r0, 0x8(r5)
/* 000089EC 00008AB0  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 000089F0 00008AB4  80 61 00 20 */	lwz r3, 0x20(r1)
/* 000089F4 00008AB8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 000089F8 00008ABC  90 7F 00 18 */	stw r3, 0x18(r31)
/* 000089FC 00008AC0  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 00008A00 00008AC4  80 01 00 28 */	lwz r0, 0x28(r1)
/* 00008A04 00008AC8  90 1F 00 20 */	stw r0, 0x20(r31)
/* 00008A08 00008ACC  80 61 00 20 */	lwz r3, 0x20(r1)
/* 00008A0C 00008AD0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00008A10 00008AD4  90 7F 00 0C */	stw r3, 0xc(r31)
/* 00008A14 00008AD8  90 1F 00 10 */	stw r0, 0x10(r31)
/* 00008A18 00008ADC  80 01 00 28 */	lwz r0, 0x28(r1)
/* 00008A1C 00008AE0  90 1F 00 14 */	stw r0, 0x14(r31)
/* 00008A20 00008AE4  48 00 01 C1 */	bl tanf
/* 00008A24 00008AE8  3C E0 43 30 */	lis r7, 0x4330
/* 00008A28 00008AEC  6F A8 80 00 */	xoris r8, r29, 0x8000
/* 00008A2C 00008AF0  3C 60 00 00 */	lis r3, double_to_int_tou2_00010dc0@ha
/* 00008A30 00008AF4  91 01 02 BC */	stw r8, 0x2bc(r1)
/* 00008A34 00008AF8  38 83 00 00 */	addi r4, r3, double_to_int_tou2_00010dc0@l
/* 00008A38 00008AFC  6F C0 80 00 */	xoris r0, r30, 0x8000
/* 00008A3C 00008B00  90 E1 02 B8 */	stw r7, 0x2b8(r1)
/* 00008A40 00008B04  3C 60 00 00 */	lis r3, float_0p5_tou2_00010da8@ha
/* 00008A44 00008B08  C8 E4 00 00 */	lfd f7, 0x0(r4)
/* 00008A48 00008B0C  3C 80 00 00 */	lis r4, float_1_tou2_00010db4@ha
/* 00008A4C 00008B10  C8 41 02 B8 */	lfd f2, 0x2b8(r1)
/* 00008A50 00008B14  38 A4 00 00 */	addi r5, r4, float_1_tou2_00010db4@l
/* 00008A54 00008B18  C0 03 00 00 */	lfs f0, float_0p5_tou2_00010da8@l(r3)
/* 00008A58 00008B1C  3C 60 00 00 */	lis r3, float_32767_tou2_00010db8@ha
/* 00008A5C 00008B20  EC 42 38 28 */	fsubs f2, f2, f7
/* 00008A60 00008B24  38 83 00 00 */	addi r4, r3, float_32767_tou2_00010db8@l
/* 00008A64 00008B28  90 01 02 C4 */	stw r0, 0x2c4(r1)
/* 00008A68 00008B2C  3C C0 00 00 */	lis r6, float_25_tou2_00010db0@ha
/* 00008A6C 00008B30  C0 BF 00 10 */	lfs f5, 0x10(r31)
/* 00008A70 00008B34  38 7F 01 5C */	addi r3, r31, 0x15c
/* 00008A74 00008B38  EC 02 00 32 */	fmuls f0, f2, f0
/* 00008A78 00008B3C  90 E1 02 C0 */	stw r7, 0x2c0(r1)
/* 00008A7C 00008B40  C0 65 00 00 */	lfs f3, 0x0(r5)
/* 00008A80 00008B44  C8 41 02 C0 */	lfd f2, 0x2c0(r1)
/* 00008A84 00008B48  EC C0 08 24 */	fdivs f6, f0, f1
/* 00008A88 00008B4C  91 01 02 CC */	stw r8, 0x2cc(r1)
/* 00008A8C 00008B50  C0 26 00 00 */	lfs f1, float_25_tou2_00010db0@l(r6)
/* 00008A90 00008B54  90 E1 02 C8 */	stw r7, 0x2c8(r1)
/* 00008A94 00008B58  C0 84 00 00 */	lfs f4, 0x0(r4)
/* 00008A98 00008B5C  C8 01 02 C8 */	lfd f0, 0x2c8(r1)
/* 00008A9C 00008B60  EC A5 30 2A */	fadds f5, f5, f6
/* 00008AA0 00008B64  EC 42 38 28 */	fsubs f2, f2, f7
/* 00008AA4 00008B68  EC 00 38 28 */	fsubs f0, f0, f7
/* 00008AA8 00008B6C  D0 BF 00 10 */	stfs f5, 0x10(r31)
/* 00008AAC 00008B70  EC 42 00 24 */	fdivs f2, f2, f0
/* 00008AB0 00008B74  4B FF C5 65 */	bl C_MTXPerspective
/* 00008AB4 00008B78  38 00 00 00 */	li r0, 0x0
/* 00008AB8 00008B7C  38 7F 01 1C */	addi r3, r31, 0x11c
/* 00008ABC 00008B80  90 1F 01 9C */	stw r0, 0x19c(r31)
/* 00008AC0 00008B84  38 9F 00 0C */	addi r4, r31, 0xc
/* 00008AC4 00008B88  38 BF 00 24 */	addi r5, r31, 0x24
/* 00008AC8 00008B8C  38 DF 00 18 */	addi r6, r31, 0x18
/* 00008ACC 00008B90  4B FF C5 49 */	bl C_MTXLookAt
/* 00008AD0 00008B94  80 9F 01 9C */	lwz r4, 0x19c(r31)
/* 00008AD4 00008B98  38 7F 01 5C */	addi r3, r31, 0x15c
/* 00008AD8 00008B9C  4B FF C5 3D */	bl GXSetProjection
/* 00008ADC 00008BA0  3C 80 43 30 */	lis r4, 0x4330
/* 00008AE0 00008BA4  6F C3 80 00 */	xoris r3, r30, 0x8000
/* 00008AE4 00008BA8  90 61 02 D4 */	stw r3, 0x2d4(r1)
/* 00008AE8 00008BAC  6F A0 80 00 */	xoris r0, r29, 0x8000
/* 00008AEC 00008BB0  3C A0 00 00 */	lis r5, double_to_int_tou2_00010dc0@ha
/* 00008AF0 00008BB4  3C C0 00 00 */	lis r6, zero_tou2_00010da4@ha
/* 00008AF4 00008BB8  90 81 02 D0 */	stw r4, 0x2d0(r1)
/* 00008AF8 00008BBC  3C 60 00 00 */	lis r3, float_1_tou2_00010db4@ha
/* 00008AFC 00008BC0  C8 85 00 00 */	lfd f4, double_to_int_tou2_00010dc0@l(r5)
/* 00008B00 00008BC4  C0 26 00 00 */	lfs f1, zero_tou2_00010da4@l(r6)
/* 00008B04 00008BC8  C8 01 02 D0 */	lfd f0, 0x2d0(r1)
/* 00008B08 00008BCC  90 01 02 DC */	stw r0, 0x2dc(r1)
/* 00008B0C 00008BD0  FC 40 08 90 */	fmr f2, f1
/* 00008B10 00008BD4  EC 60 20 28 */	fsubs f3, f0, f4
/* 00008B14 00008BD8  C0 C3 00 00 */	lfs f6, float_1_tou2_00010db4@l(r3)
/* 00008B18 00008BDC  90 81 02 D8 */	stw r4, 0x2d8(r1)
/* 00008B1C 00008BE0  FC A0 08 90 */	fmr f5, f1
/* 00008B20 00008BE4  C8 01 02 D8 */	lfd f0, 0x2d8(r1)
/* 00008B24 00008BE8  EC 80 20 28 */	fsubs f4, f0, f4
/* 00008B28 00008BEC  4B FF C4 ED */	bl GXSetViewport
/* 00008B2C 00008BF0  7F C5 F3 78 */	mr r5, r30
/* 00008B30 00008BF4  7F A6 EB 78 */	mr r6, r29
/* 00008B34 00008BF8  38 60 00 00 */	li r3, 0x0
/* 00008B38 00008BFC  38 80 00 00 */	li r4, 0x0
/* 00008B3C 00008C00  4B FF C4 D9 */	bl GXSetScissor
/* 00008B40 00008C04  7F 63 DB 78 */	mr r3, r27
/* 00008B44 00008C08  4B FF C4 D1 */	bl test_kururing_mapdisp
/* 00008B48 00008C0C  4B FF C4 CD */	bl sysWaitDrawSync
/* 00008B4C 00008C10  57 C5 04 3E */	clrlwi r5, r30, 16
/* 00008B50 00008C14  57 A6 04 3E */	clrlwi r6, r29, 16
/* 00008B54 00008C18  38 60 00 00 */	li r3, 0x0
/* 00008B58 00008C1C  38 80 00 00 */	li r4, 0x0
/* 00008B5C 00008C20  4B FF C4 B9 */	bl GXSetTexCopySrc
/* 00008B60 00008C24  7F C0 0E 70 */	srawi r0, r30, 1
/* 00008B64 00008C28  38 A0 00 05 */	li r5, 0x5
/* 00008B68 00008C2C  7C 60 01 94 */	addze r3, r0
/* 00008B6C 00008C30  38 C0 00 01 */	li r6, 0x1
/* 00008B70 00008C34  7F A0 0E 70 */	srawi r0, r29, 1
/* 00008B74 00008C38  7C 00 01 94 */	addze r0, r0
/* 00008B78 00008C3C  54 63 04 3E */	clrlwi r3, r3, 16
/* 00008B7C 00008C40  54 04 04 3E */	clrlwi r4, r0, 16
/* 00008B80 00008C44  4B FF C4 95 */	bl GXSetTexCopyDst
/* 00008B84 00008C48  38 60 00 01 */	li r3, 0x1
/* 00008B88 00008C4C  38 80 00 03 */	li r4, 0x3
/* 00008B8C 00008C50  38 A0 00 01 */	li r5, 0x1
/* 00008B90 00008C54  4B FF C4 85 */	bl GXSetZMode
/* 00008B94 00008C58  80 7C 00 5C */	lwz r3, 0x5c(r28)
/* 00008B98 00008C5C  38 80 00 01 */	li r4, 0x1
/* 00008B9C 00008C60  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00008BA0 00008C64  4B FF C4 75 */	bl GXCopyTex
/* 00008BA4 00008C68  4B FF C4 71 */	bl GXInvalidateTexAll
/* 00008BA8 00008C6C  4B FF C4 6D */	bl GXPixModeSync
/* 00008BAC 00008C70  4B FF C4 69 */	bl GXTexModeSync
/* 00008BB0 00008C74  7F 63 DB 78 */	mr r3, r27
/* 00008BB4 00008C78  4B FF C4 61 */	bl camGetPtr
/* 00008BB8 00008C7C  38 81 00 48 */	addi r4, r1, 0x48
/* 00008BBC 00008C80  38 A0 02 60 */	li r5, 0x260
/* 00008BC0 00008C84  4B FF C4 55 */	bl memcpy
/* 00008BC4 00008C88  38 00 00 01 */	li r0, 0x1
/* 00008BC8 00008C8C  90 1C 00 00 */	stw r0, 0x0(r28)
/* 00008BCC 00008C90  BB 61 02 EC */	lmw r27, 0x2ec(r1)
/* 00008BD0 00008C94  80 01 03 04 */	lwz r0, 0x304(r1)
/* 00008BD4 00008C98  7C 08 03 A6 */	mtlr r0
/* 00008BD8 00008C9C  38 21 03 00 */	addi r1, r1, 0x300
/* 00008BDC 00008CA0  4E 80 00 20 */	blr
.endfn replace_disp

# .text:0x678 | 0x8BE0 | size: 0x24
.fn tanf, local
/* 00008BE0 00008CA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00008BE4 00008CA8  7C 08 02 A6 */	mflr r0
/* 00008BE8 00008CAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 00008BEC 00008CB0  4B FF C4 29 */	bl tan
/* 00008BF0 00008CB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00008BF4 00008CB8  FC 20 08 18 */	frsp f1, f1
/* 00008BF8 00008CBC  7C 08 03 A6 */	mtlr r0
/* 00008BFC 00008CC0  38 21 00 10 */	addi r1, r1, 0x10
/* 00008C00 00008CC4  4E 80 00 20 */	blr
.endfn tanf

# 0x000075A0..0x00007688 | size: 0xE8
.rodata
.balign 8

# .rodata:0x0 | 0x75A0 | size: 0x10
.obj str_btl_un_wanawana_tou2_00010ce0, local
	.string "btl_un_wanawana"
.endobj str_btl_un_wanawana_tou2_00010ce0

# .rodata:0x10 | 0x75B0 | size: 0x10
.obj str_SFX_BTL_DAMAGE1_tou2_00010cf0, local
	.string "SFX_BTL_DAMAGE1"
.endobj str_SFX_BTL_DAMAGE1_tou2_00010cf0

# .rodata:0x20 | 0x75C0 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_tou2_00010d00, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_tou2_00010d00

# .rodata:0x35 | 0x75D5 | size: 0x3
.obj gap_03_000075D5_rodata, global
.hidden gap_03_000075D5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000075D5_rodata

# .rodata:0x38 | 0x75D8 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_tou2_00010d18, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_tou2_00010d18

# .rodata:0x4C | 0x75EC | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_tou2_00010d2c, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_tou2_00010d2c

# .rodata:0x65 | 0x7605 | size: 0x3
.obj gap_03_00007605_rodata, global
.hidden gap_03_00007605_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007605_rodata

# .rodata:0x68 | 0x7608 | size: 0x4
.obj str_S_1_tou2_00010d48, local
	.string "S_1"
.endobj str_S_1_tou2_00010d48

# .rodata:0x6C | 0x760C | size: 0xF
.obj str_nakayama_test4_tou2_00010d4c, local
	.string "nakayama_test4"
.endobj str_nakayama_test4_tou2_00010d4c

# .rodata:0x7B | 0x761B | size: 0x1
.obj gap_03_0000761B_rodata, global
.hidden gap_03_0000761B_rodata
	.byte 0x00
.endobj gap_03_0000761B_rodata

# .rodata:0x7C | 0x761C | size: 0xC
.obj vec3_tou2_00010d5c, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj vec3_tou2_00010d5c

# .rodata:0x88 | 0x7628 | size: 0xC
.obj vec3_tou2_00010d68, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj vec3_tou2_00010d68

# .rodata:0x94 | 0x7634 | size: 0xC
.obj vec3_tou2_00010d74, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xBF800000
.endobj vec3_tou2_00010d74

# .rodata:0xA0 | 0x7640 | size: 0xC
.obj vec3_tou2_00010d80, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj vec3_tou2_00010d80

# .rodata:0xAC | 0x764C | size: 0xC
.obj vec3_tou2_00010d8c, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj vec3_tou2_00010d8c

# .rodata:0xB8 | 0x7658 | size: 0x7
.obj str_S_yuka_tou2_00010d98, local
	.string "S_yuka"
.endobj str_S_yuka_tou2_00010d98
	.byte 0x00

# .rodata:0xC0 | 0x7660 | size: 0x4
.obj float_2_tou2_00010da0, local
	.float 2
.endobj float_2_tou2_00010da0

# .rodata:0xC4 | 0x7664 | size: 0x4
.obj zero_tou2_00010da4, local
	.float 0
.endobj zero_tou2_00010da4

# .rodata:0xC8 | 0x7668 | size: 0x4
.obj float_0p5_tou2_00010da8, local
	.float 0.5
.endobj float_0p5_tou2_00010da8

# .rodata:0xCC | 0x766C | size: 0x4
.obj float_0p21817_tou2_00010dac, local
	.float 0.21816616
.endobj float_0p21817_tou2_00010dac

# .rodata:0xD0 | 0x7670 | size: 0x4
.obj float_25_tou2_00010db0, local
	.float 25
.endobj float_25_tou2_00010db0

# .rodata:0xD4 | 0x7674 | size: 0x4
.obj float_1_tou2_00010db4, local
	.float 1
.endobj float_1_tou2_00010db4

# .rodata:0xD8 | 0x7678 | size: 0x4
.obj float_32767_tou2_00010db8, local
	.float 32767
.endobj float_32767_tou2_00010db8
	.4byte 0x00000000

# .rodata:0xE0 | 0x7680 | size: 0x8
.obj double_to_int_tou2_00010dc0, local
	.double 4503601774854144
.endobj double_to_int_tou2_00010dc0

# 0x00050BD0..0x00050E88 | size: 0x2B8
.data
.balign 8

# .data:0x0 | 0x50BD0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x50BD8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x50BDC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x50BE0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x50BE4 | size: 0x4
.obj gap_04_00050BE4_data, global
.hidden gap_04_00050BE4_data
	.4byte 0x00000000
.endobj gap_04_00050BE4_data

# .data:0x18 | 0x50BE8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x50BF0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x50BF4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x50BF8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x50C00 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x50C04 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x50C08 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x50C0C | size: 0x4
.obj gap_04_00050C0C_data, global
.hidden gap_04_00050C0C_data
	.4byte 0x00000000
.endobj gap_04_00050C0C_data

# .data:0x40 | 0x50C10 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x50C18 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x50C1C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x50C20 | size: 0xC4
.obj unit_wanawana, local
	.4byte 0x000000C7
	.4byte str_btl_un_wanawana_tou2_00010ce0
	.4byte 0x00020000
	.4byte 0x01010100
	.4byte 0x01000064
	.4byte 0x00090018
	.4byte 0x00180018
	.4byte 0x00180000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41400000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41400000
	.4byte 0x4179999A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_BTL_DAMAGE1_tou2_00010cf0
	.4byte str_SFX_BTL_DAMAGE_FIRE1_tou2_00010d00
	.4byte str_SFX_BTL_DAMAGE_ICE1_tou2_00010d18
	.4byte str_SFX_BTL_DAMAGE_BIRIB_tou2_00010d2c
	.4byte 0x00000000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_wanawana

# .data:0x114 | 0x50CE4 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x50CE9 | size: 0x3
.obj gap_04_00050CE9_data, global
.hidden gap_04_00050CE9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00050CE9_data

# .data:0x11C | 0x50CEC | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x50CF1 | size: 0x3
.obj gap_04_00050CF1_data, global
.hidden gap_04_00050CF1_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00050CF1_data

# .data:0x124 | 0x50CF4 | size: 0x16
.obj regist, local
	.ascii "dddddddddddddddddddddd"
.endobj regist

# .data:0x13A | 0x50D0A | size: 0x2
.obj gap_04_00050D0A_data, global
.hidden gap_04_00050D0A_data
	.2byte 0x0000
.endobj gap_04_00050D0A_data

# .data:0x13C | 0x50D0C | size: 0x20
.obj pose_table, local
	.4byte 0x0000001C
	.4byte str_S_1_tou2_00010d48
	.4byte 0x0000001F
	.4byte str_S_1_tou2_00010d48
	.4byte 0x00000027
	.4byte str_S_1_tou2_00010d48
	.4byte 0x00000045
	.4byte str_S_1_tou2_00010d48
.endobj pose_table

# .data:0x15C | 0x50D2C | size: 0x8
.obj data_table, local
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x164 | 0x50D34 | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_wanawana_tou2_00010ce0
	.4byte str_nakayama_test4_tou2_00010d4c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42200000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte pose_table
.endobj parts

# .data:0x1B0 | 0x50D80 | size: 0x74
.obj init_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventWait
	.4byte 0xFFFFFFFE
	.4byte wait_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventAttack
	.4byte 0xFFFFFFFE
	.4byte attack_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventDamage
	.4byte 0xFFFFFFFE
	.4byte damage_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventConfusion
	.4byte 0xFFFFFFFE
	.4byte btldefaultevt_Confuse
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_yuka_tou2_00010d98
	.4byte 0x00400000
	.4byte 0x0001005B
	.4byte replace_evt
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x224 | 0x50DF4 | size: 0x28
.obj damage_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte btldefaultevt_Damage
	.4byte 0x00000002
	.4byte 0x00000001
.endobj damage_event

# .data:0x24C | 0x50E1C | size: 0x8
.obj phase_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0x254 | 0x50E24 | size: 0x4C
.obj attack_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_EnemyItemUseCheck
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x2A0 | 0x50E70 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event
