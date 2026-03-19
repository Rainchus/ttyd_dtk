.include "macros.inc"
.file "unit_boss_kamec_obaba.o"

# 0x00007F54..0x0000846C | size: 0x518
.text
.balign 4

# .text:0x0 | 0x7F54 | size: 0x1DC
.fn eff_magic_support, local
/* 00007F54 00008020  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00007F58 00008024  7C 08 02 A6 */	mflr r0
/* 00007F5C 00008028  90 01 00 34 */	stw r0, 0x34(r1)
/* 00007F60 0000802C  BF A1 00 24 */	stmw r29, 0x24(r1)
/* 00007F64 00008030  7C 7D 1B 78 */	mr r29, r3
/* 00007F68 00008034  83 C3 00 18 */	lwz r30, 0x18(r3)
/* 00007F6C 00008038  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 00007F70 0000803C  4B FF 81 CD */	bl evtGetValue
/* 00007F74 00008040  7C 64 1B 78 */	mr r4, r3
/* 00007F78 00008044  7F A3 EB 78 */	mr r3, r29
/* 00007F7C 00008048  4B FF 81 C1 */	bl BattleTransID
/* 00007F80 0000804C  80 9E 00 04 */	lwz r4, 0x4(r30)
/* 00007F84 00008050  7C 7F 1B 78 */	mr r31, r3
/* 00007F88 00008054  7F A3 EB 78 */	mr r3, r29
/* 00007F8C 00008058  4B FF 81 B1 */	bl evtGetValue
/* 00007F90 0000805C  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00007F94 00008060  7C 7E 1B 78 */	mr r30, r3
/* 00007F98 00008064  38 64 00 00 */	addi r3, r4, _battleWorkPointer@l
/* 00007F9C 00008068  7F E4 FB 78 */	mr r4, r31
/* 00007FA0 0000806C  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00007FA4 00008070  4B FF 81 99 */	bl BattleGetUnitPtr
/* 00007FA8 00008074  7C 7F 1B 78 */	mr r31, r3
/* 00007FAC 00008078  38 81 00 10 */	addi r4, r1, 0x10
/* 00007FB0 0000807C  38 A1 00 0C */	addi r5, r1, 0xc
/* 00007FB4 00008080  38 C1 00 08 */	addi r6, r1, 0x8
/* 00007FB8 00008084  4B FF 81 85 */	bl BtlUnit_GetPos
/* 00007FBC 00008088  2C 1E 00 01 */	cmpwi r30, 0x1
/* 00007FC0 0000808C  41 82 00 B8 */	beq .L_00008078
/* 00007FC4 00008090  40 80 01 54 */	bge .L_00008118
/* 00007FC8 00008094  2C 1E 00 00 */	cmpwi r30, 0x0
/* 00007FCC 00008098  40 80 00 08 */	bge .L_00007FD4
/* 00007FD0 0000809C  48 00 01 48 */	b .L_00008118
.L_00007FD4:
/* 00007FD4 000080A0  88 7F 01 89 */	lbz r3, 0x189(r31)
/* 00007FD8 000080A4  3C 00 43 30 */	lis r0, 0x4330
/* 00007FDC 000080A8  3C C0 00 00 */	lis r6, float_30_las_0001792c@ha
/* 00007FE0 000080AC  3C A0 00 00 */	lis r5, double_to_int_las_00017940@ha
/* 00007FE4 000080B0  7C 63 07 74 */	extsb r3, r3
/* 00007FE8 000080B4  3C 80 00 00 */	lis r4, float_10_las_00017930@ha
/* 00007FEC 000080B8  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 00007FF0 000080BC  39 26 00 00 */	addi r9, r6, float_30_las_0001792c@l
/* 00007FF4 000080C0  90 61 00 1C */	stw r3, 0x1c(r1)
/* 00007FF8 000080C4  38 E4 00 00 */	addi r7, r4, float_10_las_00017930@l
/* 00007FFC 000080C8  39 05 00 00 */	addi r8, r5, double_to_int_las_00017940@l
/* 00008000 000080CC  3C 60 00 00 */	lis r3, float_5_las_00017934@ha
/* 00008004 000080D0  90 01 00 18 */	stw r0, 0x18(r1)
/* 00008008 000080D4  38 C3 00 00 */	addi r6, r3, float_5_las_00017934@l
/* 0000800C 000080D8  C0 69 00 00 */	lfs f3, 0x0(r9)
/* 00008010 000080DC  3C 60 00 00 */	lis r3, float_40_las_00017938@ha
/* 00008014 000080E0  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 00008018 000080E4  38 A3 00 00 */	addi r5, r3, float_40_las_00017938@l
/* 0000801C 000080E8  C8 48 00 00 */	lfd f2, 0x0(r8)
/* 00008020 000080EC  38 60 00 06 */	li r3, 0x6
/* 00008024 000080F0  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 00008028 000080F4  EC 63 00 32 */	fmuls f3, f3, f0
/* 0000802C 000080F8  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 00008030 000080FC  38 80 00 05 */	li r4, 0x5
/* 00008034 00008100  EC 21 10 28 */	fsubs f1, f1, f2
/* 00008038 00008104  C0 85 00 00 */	lfs f4, 0x0(r5)
/* 0000803C 00008108  C0 41 00 08 */	lfs f2, 0x8(r1)
/* 00008040 0000810C  C0 E7 00 00 */	lfs f7, 0x0(r7)
/* 00008044 00008110  FC A0 20 90 */	fmr f5, f4
/* 00008048 00008114  EC 23 00 7A */	fmadds f1, f3, f1, f0
/* 0000804C 00008118  C0 06 00 00 */	lfs f0, 0x0(r6)
/* 00008050 0000811C  38 A0 00 1E */	li r5, 0x1e
/* 00008054 00008120  C0 C1 00 0C */	lfs f6, 0xc(r1)
/* 00008058 00008124  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 0000805C 00008128  EC 62 00 2A */	fadds f3, f2, f0
/* 00008060 0000812C  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 00008064 00008130  EC 47 30 3A */	fmadds f2, f7, f0, f6
/* 00008068 00008134  D0 61 00 08 */	stfs f3, 0x8(r1)
/* 0000806C 00008138  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 00008070 0000813C  4B FF 80 CD */	bl effStardustEntry
/* 00008074 00008140  48 00 00 A4 */	b .L_00008118
.L_00008078:
/* 00008078 00008144  88 7F 01 89 */	lbz r3, 0x189(r31)
/* 0000807C 00008148  3C 00 43 30 */	lis r0, 0x4330
/* 00008080 0000814C  3C C0 00 00 */	lis r6, float_30_las_0001792c@ha
/* 00008084 00008150  3C A0 00 00 */	lis r5, double_to_int_las_00017940@ha
/* 00008088 00008154  7C 63 07 74 */	extsb r3, r3
/* 0000808C 00008158  3C 80 00 00 */	lis r4, float_50_las_0001793c@ha
/* 00008090 0000815C  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 00008094 00008160  39 26 00 00 */	addi r9, r6, float_30_las_0001792c@l
/* 00008098 00008164  90 61 00 1C */	stw r3, 0x1c(r1)
/* 0000809C 00008168  38 E4 00 00 */	addi r7, r4, float_50_las_0001793c@l
/* 000080A0 0000816C  39 05 00 00 */	addi r8, r5, double_to_int_las_00017940@l
/* 000080A4 00008170  3C 60 00 00 */	lis r3, float_5_las_00017934@ha
/* 000080A8 00008174  90 01 00 18 */	stw r0, 0x18(r1)
/* 000080AC 00008178  38 C3 00 00 */	addi r6, r3, float_5_las_00017934@l
/* 000080B0 0000817C  C0 69 00 00 */	lfs f3, 0x0(r9)
/* 000080B4 00008180  3C 60 00 00 */	lis r3, float_40_las_00017938@ha
/* 000080B8 00008184  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 000080BC 00008188  38 A3 00 00 */	addi r5, r3, float_40_las_00017938@l
/* 000080C0 0000818C  C8 48 00 00 */	lfd f2, 0x0(r8)
/* 000080C4 00008190  38 60 00 06 */	li r3, 0x6
/* 000080C8 00008194  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 000080CC 00008198  EC 63 00 32 */	fmuls f3, f3, f0
/* 000080D0 0000819C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 000080D4 000081A0  38 80 00 05 */	li r4, 0x5
/* 000080D8 000081A4  EC 21 10 28 */	fsubs f1, f1, f2
/* 000080DC 000081A8  C0 85 00 00 */	lfs f4, 0x0(r5)
/* 000080E0 000081AC  C0 41 00 08 */	lfs f2, 0x8(r1)
/* 000080E4 000081B0  C0 E7 00 00 */	lfs f7, 0x0(r7)
/* 000080E8 000081B4  FC A0 20 90 */	fmr f5, f4
/* 000080EC 000081B8  EC 23 00 7A */	fmadds f1, f3, f1, f0
/* 000080F0 000081BC  C0 06 00 00 */	lfs f0, 0x0(r6)
/* 000080F4 000081C0  38 A0 00 1E */	li r5, 0x1e
/* 000080F8 000081C4  C0 C1 00 0C */	lfs f6, 0xc(r1)
/* 000080FC 000081C8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 00008100 000081CC  EC 62 00 2A */	fadds f3, f2, f0
/* 00008104 000081D0  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 00008108 000081D4  EC 47 30 3A */	fmadds f2, f7, f0, f6
/* 0000810C 000081D8  D0 61 00 08 */	stfs f3, 0x8(r1)
/* 00008110 000081DC  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 00008114 000081E0  4B FF 80 29 */	bl effStardustEntry
.L_00008118:
/* 00008118 000081E4  BB A1 00 24 */	lmw r29, 0x24(r1)
/* 0000811C 000081E8  38 60 00 02 */	li r3, 0x2
/* 00008120 000081EC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00008124 000081F0  7C 08 03 A6 */	mtlr r0
/* 00008128 000081F4  38 21 00 30 */	addi r1, r1, 0x30
/* 0000812C 000081F8  4E 80 00 20 */	blr
.endfn eff_magic_support

# .text:0x1DC | 0x8130 | size: 0x70
.fn eff_magic_get_posX, local
/* 00008130 000081FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00008134 00008200  7C 08 02 A6 */	mflr r0
/* 00008138 00008204  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000813C 00008208  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00008140 0000820C  7C 7E 1B 78 */	mr r30, r3
/* 00008144 00008210  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00008148 00008214  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 0000814C 00008218  4B FF 7F F1 */	bl evtGetValue
/* 00008150 0000821C  7C 64 1B 78 */	mr r4, r3
/* 00008154 00008220  7F C3 F3 78 */	mr r3, r30
/* 00008158 00008224  4B FF 7F E5 */	bl BattleTransID
/* 0000815C 00008228  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00008160 0000822C  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00008164 00008230  7C 64 1B 78 */	mr r4, r3
/* 00008168 00008234  80 65 00 00 */	lwz r3, 0x0(r5)
/* 0000816C 00008238  4B FF 7F D1 */	bl BattleGetUnitPtr
/* 00008170 0000823C  80 A3 02 28 */	lwz r5, 0x228(r3)
/* 00008174 00008240  7F C3 F3 78 */	mr r3, r30
/* 00008178 00008244  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 0000817C 00008248  80 A5 00 0C */	lwz r5, 0xc(r5)
/* 00008180 0000824C  C0 25 00 10 */	lfs f1, 0x10(r5)
/* 00008184 00008250  4B FF 7F B9 */	bl evtSetFloat
/* 00008188 00008254  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 0000818C 00008258  38 60 00 02 */	li r3, 0x2
/* 00008190 0000825C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00008194 00008260  7C 08 03 A6 */	mtlr r0
/* 00008198 00008264  38 21 00 10 */	addi r1, r1, 0x10
/* 0000819C 00008268  4E 80 00 20 */	blr
.endfn eff_magic_get_posX

# .text:0x24C | 0x81A0 | size: 0x17C
.fn eff_magic, local
/* 000081A0 0000826C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 000081A4 00008270  7C 08 02 A6 */	mflr r0
/* 000081A8 00008274  90 01 00 64 */	stw r0, 0x64(r1)
/* 000081AC 00008278  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 000081B0 0000827C  F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 000081B4 00008280  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 000081B8 00008284  F3 C1 00 48 */	psq_st f30, 0x48(r1), 0, qr0
/* 000081BC 00008288  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 000081C0 0000828C  F3 A1 00 38 */	psq_st f29, 0x38(r1), 0, qr0
/* 000081C4 00008290  BF A1 00 24 */	stmw r29, 0x24(r1)
/* 000081C8 00008294  7C 7D 1B 78 */	mr r29, r3
/* 000081CC 00008298  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 000081D0 0000829C  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 000081D4 000082A0  4B FF 7F 69 */	bl evtGetValue
/* 000081D8 000082A4  7C 64 1B 78 */	mr r4, r3
/* 000081DC 000082A8  7F A3 EB 78 */	mr r3, r29
/* 000081E0 000082AC  4B FF 7F 5D */	bl BattleTransID
/* 000081E4 000082B0  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 000081E8 000082B4  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 000081EC 000082B8  7C 64 1B 78 */	mr r4, r3
/* 000081F0 000082BC  80 65 00 00 */	lwz r3, 0x0(r5)
/* 000081F4 000082C0  4B FF 7F 49 */	bl BattleGetUnitPtr
/* 000081F8 000082C4  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 000081FC 000082C8  7C 7E 1B 78 */	mr r30, r3
/* 00008200 000082CC  7F A3 EB 78 */	mr r3, r29
/* 00008204 000082D0  4B FF 7F 39 */	bl evtGetFloat
/* 00008208 000082D4  FF E0 08 90 */	fmr f31, f1
/* 0000820C 000082D8  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 00008210 000082DC  7F A3 EB 78 */	mr r3, r29
/* 00008214 000082E0  4B FF 7F 29 */	bl evtGetFloat
/* 00008218 000082E4  FF C0 08 90 */	fmr f30, f1
/* 0000821C 000082E8  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00008220 000082EC  7F A3 EB 78 */	mr r3, r29
/* 00008224 000082F0  4B FF 7F 19 */	bl evtGetFloat
/* 00008228 000082F4  FF A0 08 90 */	fmr f29, f1
/* 0000822C 000082F8  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00008230 000082FC  7F A3 EB 78 */	mr r3, r29
/* 00008234 00008300  4B FF 7F 09 */	bl evtGetValue
/* 00008238 00008304  7C 60 1B 78 */	mr r0, r3
/* 0000823C 00008308  7F C3 F3 78 */	mr r3, r30
/* 00008240 0000830C  7C 1F 03 78 */	mr r31, r0
/* 00008244 00008310  38 81 00 10 */	addi r4, r1, 0x10
/* 00008248 00008314  38 A1 00 0C */	addi r5, r1, 0xc
/* 0000824C 00008318  38 C1 00 08 */	addi r6, r1, 0x8
/* 00008250 0000831C  4B FF 7E ED */	bl BtlUnit_GetPos
/* 00008254 00008320  88 7E 01 89 */	lbz r3, 0x189(r30)
/* 00008258 00008324  3C 00 43 30 */	lis r0, 0x4330
/* 0000825C 00008328  3C C0 00 00 */	lis r6, float_28_las_00017948@ha
/* 00008260 0000832C  3C A0 00 00 */	lis r5, double_to_int_las_00017940@ha
/* 00008264 00008330  7C 63 07 74 */	extsb r3, r3
/* 00008268 00008334  3C 80 00 00 */	lis r4, float_20_las_0001794c@ha
/* 0000826C 00008338  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 00008270 0000833C  C1 04 00 00 */	lfs f8, float_20_las_0001794c@l(r4)
/* 00008274 00008340  90 61 00 1C */	stw r3, 0x1c(r1)
/* 00008278 00008344  3C 60 00 00 */	lis r3, float_5_las_00017934@ha
/* 0000827C 00008348  C0 66 00 00 */	lfs f3, float_28_las_00017948@l(r6)
/* 00008280 0000834C  FC 80 F8 90 */	fmr f4, f31
/* 00008284 00008350  90 01 00 18 */	stw r0, 0x18(r1)
/* 00008288 00008354  FC A0 F0 90 */	fmr f5, f30
/* 0000828C 00008358  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 00008290 0000835C  FC C0 E8 90 */	fmr f6, f29
/* 00008294 00008360  C8 45 00 00 */	lfd f2, double_to_int_las_00017940@l(r5)
/* 00008298 00008364  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 0000829C 00008368  EC 63 00 32 */	fmuls f3, f3, f0
/* 000082A0 0000836C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 000082A4 00008370  7F E4 FB 78 */	mr r4, r31
/* 000082A8 00008374  EC 21 10 28 */	fsubs f1, f1, f2
/* 000082AC 00008378  C0 41 00 08 */	lfs f2, 0x8(r1)
/* 000082B0 0000837C  C0 E1 00 0C */	lfs f7, 0xc(r1)
/* 000082B4 00008380  EC 23 00 7A */	fmadds f1, f3, f1, f0
/* 000082B8 00008384  C0 03 00 00 */	lfs f0, float_5_las_00017934@l(r3)
/* 000082BC 00008388  38 60 00 00 */	li r3, 0x0
/* 000082C0 0000838C  EC 62 00 2A */	fadds f3, f2, f0
/* 000082C4 00008390  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 000082C8 00008394  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 000082CC 00008398  EC 48 38 3A */	fmadds f2, f8, f0, f7
/* 000082D0 0000839C  D0 61 00 08 */	stfs f3, 0x8(r1)
/* 000082D4 000083A0  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 000082D8 000083A4  4B FF 7E 65 */	bl effMagic1N64Entry
/* 000082DC 000083A8  90 7E 02 28 */	stw r3, 0x228(r30)
/* 000082E0 000083AC  80 83 00 0C */	lwz r4, 0xc(r3)
/* 000082E4 000083B0  38 60 00 02 */	li r3, 0x2
/* 000082E8 000083B4  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 000082EC 000083B8  D0 04 00 28 */	stfs f0, 0x28(r4)
/* 000082F0 000083BC  E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 000082F4 000083C0  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 000082F8 000083C4  E3 C1 00 48 */	psq_l f30, 0x48(r1), 0, qr0
/* 000082FC 000083C8  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 00008300 000083CC  E3 A1 00 38 */	psq_l f29, 0x38(r1), 0, qr0
/* 00008304 000083D0  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 00008308 000083D4  BB A1 00 24 */	lmw r29, 0x24(r1)
/* 0000830C 000083D8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 00008310 000083DC  7C 08 03 A6 */	mtlr r0
/* 00008314 000083E0  38 21 00 60 */	addi r1, r1, 0x60
/* 00008318 000083E4  4E 80 00 20 */	blr
.endfn eff_magic

# .text:0x3C8 | 0x831C | size: 0x150
.fn eff_staff, local
/* 0000831C 000083E8  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00008320 000083EC  7C 08 02 A6 */	mflr r0
/* 00008324 000083F0  90 01 00 34 */	stw r0, 0x34(r1)
/* 00008328 000083F4  BF C1 00 28 */	stmw r30, 0x28(r1)
/* 0000832C 000083F8  7C 9E 23 78 */	mr r30, r4
/* 00008330 000083FC  7C 7F 1B 78 */	mr r31, r3
/* 00008334 00008400  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00008338 00008404  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000833C 00008408  4B FF 7E 01 */	bl evtGetValue
/* 00008340 0000840C  7C 64 1B 78 */	mr r4, r3
/* 00008344 00008410  7F E3 FB 78 */	mr r3, r31
/* 00008348 00008414  4B FF 7D F5 */	bl BattleTransID
/* 0000834C 00008418  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00008350 0000841C  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00008354 00008420  7C 64 1B 78 */	mr r4, r3
/* 00008358 00008424  80 65 00 00 */	lwz r3, 0x0(r5)
/* 0000835C 00008428  4B FF 7D E1 */	bl BattleGetUnitPtr
/* 00008360 0000842C  2C 1E 00 00 */	cmpwi r30, 0x0
/* 00008364 00008430  7C 7F 1B 78 */	mr r31, r3
/* 00008368 00008434  41 82 00 34 */	beq .L_0000839C
/* 0000836C 00008438  3C 60 00 00 */	lis r3, zero_las_00017950@ha
/* 00008370 0000843C  3C 80 00 00 */	lis r4, float_neg1000_las_00017954@ha
/* 00008374 00008440  38 A3 00 00 */	addi r5, r3, zero_las_00017950@l
/* 00008378 00008444  C0 44 00 00 */	lfs f2, float_neg1000_las_00017954@l(r4)
/* 0000837C 00008448  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 00008380 0000844C  3C 60 00 00 */	lis r3, float_1_las_00017958@ha
/* 00008384 00008450  C0 83 00 00 */	lfs f4, float_1_las_00017958@l(r3)
/* 00008388 00008454  38 60 00 00 */	li r3, 0x0
/* 0000838C 00008458  FC 60 08 90 */	fmr f3, f1
/* 00008390 0000845C  38 80 00 3C */	li r4, 0x3c
/* 00008394 00008460  4B FF 7D A9 */	bl effThunderflareN64Entry
/* 00008398 00008464  90 7F 02 24 */	stw r3, 0x224(r31)
.L_0000839C:
/* 0000839C 00008468  80 7F 02 24 */	lwz r3, 0x224(r31)
/* 000083A0 0000846C  80 03 00 00 */	lwz r0, 0x0(r3)
/* 000083A4 00008470  54 00 07 FF */	clrlwi. r0, r0, 31
/* 000083A8 00008474  40 82 00 0C */	bne .L_000083B4
/* 000083AC 00008478  38 60 00 02 */	li r3, 0x2
/* 000083B0 0000847C  48 00 00 A8 */	b .L_00008458
.L_000083B4:
/* 000083B4 00008480  83 C3 00 0C */	lwz r30, 0xc(r3)
/* 000083B8 00008484  7F E3 FB 78 */	mr r3, r31
/* 000083BC 00008488  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 000083C0 0000848C  38 81 00 10 */	addi r4, r1, 0x10
/* 000083C4 00008490  38 A1 00 0C */	addi r5, r1, 0xc
/* 000083C8 00008494  38 C1 00 08 */	addi r6, r1, 0x8
/* 000083CC 00008498  D0 1E 00 28 */	stfs f0, 0x28(r30)
/* 000083D0 0000849C  4B FF 7D 6D */	bl BtlUnit_GetPos
/* 000083D4 000084A0  88 7F 01 89 */	lbz r3, 0x189(r31)
/* 000083D8 000084A4  3C 00 43 30 */	lis r0, 0x4330
/* 000083DC 000084A8  3C C0 00 00 */	lis r6, float_30_las_0001792c@ha
/* 000083E0 000084AC  3C A0 00 00 */	lis r5, double_to_int_las_00017940@ha
/* 000083E4 000084B0  7C 64 07 74 */	extsb r4, r3
/* 000083E8 000084B4  3C 60 00 00 */	lis r3, float_35_las_0001795c@ha
/* 000083EC 000084B8  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 000083F0 000084BC  38 E6 00 00 */	addi r7, r6, float_30_las_0001792c@l
/* 000083F4 000084C0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 000083F8 000084C4  38 C5 00 00 */	addi r6, r5, double_to_int_las_00017940@l
/* 000083FC 000084C8  38 A3 00 00 */	addi r5, r3, float_35_las_0001795c@l
/* 00008400 000084CC  3C 60 00 00 */	lis r3, float_5_las_00017934@ha
/* 00008404 000084D0  90 01 00 18 */	stw r0, 0x18(r1)
/* 00008408 000084D4  38 83 00 00 */	addi r4, r3, float_5_las_00017934@l
/* 0000840C 000084D8  C0 67 00 00 */	lfs f3, 0x0(r7)
/* 00008410 000084DC  38 60 00 00 */	li r3, 0x0
/* 00008414 000084E0  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 00008418 000084E4  C8 46 00 00 */	lfd f2, 0x0(r6)
/* 0000841C 000084E8  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 00008420 000084EC  EC 83 00 32 */	fmuls f4, f3, f0
/* 00008424 000084F0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 00008428 000084F4  EC 41 10 28 */	fsubs f2, f1, f2
/* 0000842C 000084F8  C0 65 00 00 */	lfs f3, 0x0(r5)
/* 00008430 000084FC  C0 24 00 00 */	lfs f1, 0x0(r4)
/* 00008434 00008500  EC 04 00 BA */	fmadds f0, f4, f2, f0
/* 00008438 00008504  D0 1E 00 08 */	stfs f0, 0x8(r30)
/* 0000843C 00008508  C0 5F 01 14 */	lfs f2, 0x114(r31)
/* 00008440 0000850C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 00008444 00008510  EC 03 00 BA */	fmadds f0, f3, f2, f0
/* 00008448 00008514  D0 1E 00 0C */	stfs f0, 0xc(r30)
/* 0000844C 00008518  C0 01 00 08 */	lfs f0, 0x8(r1)
/* 00008450 0000851C  EC 01 00 2A */	fadds f0, f1, f0
/* 00008454 00008520  D0 1E 00 10 */	stfs f0, 0x10(r30)
.L_00008458:
/* 00008458 00008524  BB C1 00 28 */	lmw r30, 0x28(r1)
/* 0000845C 00008528  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00008460 0000852C  7C 08 03 A6 */	mtlr r0
/* 00008464 00008530  38 21 00 30 */	addi r1, r1, 0x30
/* 00008468 00008534  4E 80 00 20 */	blr
.endfn eff_staff

# 0x00005B58..0x00005EF8 | size: 0x3A0
.rodata
.balign 8

# .rodata:0x0 | 0x5B58 | size: 0x13
.obj str_btl_un_kamec_obaba_las_000175c0, local
	.string "btl_un_kamec_obaba"
.endobj str_btl_un_kamec_obaba_las_000175c0

# .rodata:0x13 | 0x5B6B | size: 0x1
.obj gap_03_00005B6B_rodata, global
.hidden gap_03_00005B6B_rodata
	.byte 0x00
.endobj gap_03_00005B6B_rodata

# .rodata:0x14 | 0x5B6C | size: 0x1B
.obj str_SFX_BOSS_KAMEBABA_DA_las_000175d4, local
	.string "SFX_BOSS_KAMEBABA_DAMAGED1"
.endobj str_SFX_BOSS_KAMEBABA_DA_las_000175d4

# .rodata:0x2F | 0x5B87 | size: 0x1
.obj gap_03_00005B87_rodata, global
.hidden gap_03_00005B87_rodata
	.byte 0x00
.endobj gap_03_00005B87_rodata

# .rodata:0x30 | 0x5B88 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_las_000175f0, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_las_000175f0

# .rodata:0x45 | 0x5B9D | size: 0x3
.obj gap_03_00005B9D_rodata, global
.hidden gap_03_00005B9D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005B9D_rodata

# .rodata:0x48 | 0x5BA0 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_las_00017608, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_las_00017608

# .rodata:0x5C | 0x5BB4 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_las_0001761c, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_las_0001761c

# .rodata:0x75 | 0x5BCD | size: 0x3
.obj gap_03_00005BCD_rodata, global
.hidden gap_03_00005BCD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005BCD_rodata

# .rodata:0x78 | 0x5BD0 | size: 0x4
.obj str_N_1_las_00017638, local
	.string "N_1"
.endobj str_N_1_las_00017638

# .rodata:0x7C | 0x5BD4 | size: 0x4
.obj str_Y_1_las_0001763c, local
	.string "Y_1"
.endobj str_Y_1_las_0001763c

# .rodata:0x80 | 0x5BD8 | size: 0x4
.obj str_K_1_las_00017640, local
	.string "K_1"
.endobj str_K_1_las_00017640

# .rodata:0x84 | 0x5BDC | size: 0x4
.obj str_X_1_las_00017644, local
	.string "X_1"
.endobj str_X_1_las_00017644

# .rodata:0x88 | 0x5BE0 | size: 0x4
.obj str_S_1_las_00017648, local
	.string "S_1"
.endobj str_S_1_las_00017648

# .rodata:0x8C | 0x5BE4 | size: 0x4
.obj str_Q_1_las_0001764c, local
	.string "Q_1"
.endobj str_Q_1_las_0001764c

# .rodata:0x90 | 0x5BE8 | size: 0x4
.obj str_D_1_las_00017650, local
	.string "D_1"
.endobj str_D_1_las_00017650

# .rodata:0x94 | 0x5BEC | size: 0x4
.obj str_R_1_las_00017654, local
	.string "R_1"
.endobj str_R_1_las_00017654

# .rodata:0x98 | 0x5BF0 | size: 0x4
.obj str_W_1_las_00017658, local
	.string "W_1"
.endobj str_W_1_las_00017658

# .rodata:0x9C | 0x5BF4 | size: 0x4
.obj str_T_1_las_0001765c, local
	.string "T_1"
.endobj str_T_1_las_0001765c

# .rodata:0xA0 | 0x5BF8 | size: 0x4
.obj str_N_2_las_00017660, local
	.string "N_2"
.endobj str_N_2_las_00017660

# .rodata:0xA4 | 0x5BFC | size: 0x4
.obj str_Y_2_las_00017664, local
	.string "Y_2"
.endobj str_Y_2_las_00017664

# .rodata:0xA8 | 0x5C00 | size: 0x4
.obj str_K_2_las_00017668, local
	.string "K_2"
.endobj str_K_2_las_00017668

# .rodata:0xAC | 0x5C04 | size: 0x4
.obj str_X_2_las_0001766c, local
	.string "X_2"
.endobj str_X_2_las_0001766c

# .rodata:0xB0 | 0x5C08 | size: 0x4
.obj str_S_2_las_00017670, local
	.string "S_2"
.endobj str_S_2_las_00017670

# .rodata:0xB4 | 0x5C0C | size: 0x4
.obj str_Q_2_las_00017674, local
	.string "Q_2"
.endobj str_Q_2_las_00017674

# .rodata:0xB8 | 0x5C10 | size: 0x4
.obj str_D_2_las_00017678, local
	.string "D_2"
.endobj str_D_2_las_00017678

# .rodata:0xBC | 0x5C14 | size: 0x4
.obj str_R_2_las_0001767c, local
	.string "R_2"
.endobj str_R_2_las_0001767c

# .rodata:0xC0 | 0x5C18 | size: 0x4
.obj str_W_2_las_00017680, local
	.string "W_2"
.endobj str_W_2_las_00017680

# .rodata:0xC4 | 0x5C1C | size: 0x4
.obj str_T_2_las_00017684, local
	.string "T_2"
.endobj str_T_2_las_00017684

# .rodata:0xC8 | 0x5C20 | size: 0x4
.obj str_D_3_las_00017688, local
	.string "D_3"
.endobj str_D_3_las_00017688

# .rodata:0xCC | 0x5C24 | size: 0xB
.obj str_c_kamek_bb_las_0001768c, local
	.string "c_kamek_bb"
.endobj str_c_kamek_bb_las_0001768c

# .rodata:0xD7 | 0x5C2F | size: 0x1
.obj gap_03_00005C2F_rodata, global
.hidden gap_03_00005C2F_rodata
	.byte 0x00
.endobj gap_03_00005C2F_rodata

# .rodata:0xD8 | 0x5C30 | size: 0x19
.obj str_SFX_BOSS_KAMEBABA_MO_las_00017698, local
	.string "SFX_BOSS_KAMEBABA_MOVE1L"
.endobj str_SFX_BOSS_KAMEBABA_MO_las_00017698

# .rodata:0xF1 | 0x5C49 | size: 0x3
.obj gap_03_00005C49_rodata, global
.hidden gap_03_00005C49_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005C49_rodata

# .rodata:0xF4 | 0x5C4C | size: 0x19
.obj str_SFX_BOSS_KAMEBABA_MO_las_000176b4, local
	.string "SFX_BOSS_KAMEBABA_MOVE1R"
.endobj str_SFX_BOSS_KAMEBABA_MO_las_000176b4

# .rodata:0x10D | 0x5C65 | size: 0x3
.obj gap_03_00005C65_rodata, global
.hidden gap_03_00005C65_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005C65_rodata

# .rodata:0x110 | 0x5C68 | size: 0x4
.obj str_H_1_las_000176d0, local
	.string "H_1"
.endobj str_H_1_las_000176d0

# .rodata:0x114 | 0x5C6C | size: 0xE
.obj str_SFX_ENM_FALL1_las_000176d4, local
	.string "SFX_ENM_FALL1"
.endobj str_SFX_ENM_FALL1_las_000176d4

# .rodata:0x122 | 0x5C7A | size: 0x2
.obj gap_03_00005C7A_rodata, global
.hidden gap_03_00005C7A_rodata
	.2byte 0x0000
.endobj gap_03_00005C7A_rodata

# .rodata:0x124 | 0x5C7C | size: 0x18
.obj str_SFX_BOSS_KAMEBABA_DO_las_000176e4, local
	.string "SFX_BOSS_KAMEBABA_DOWN1"
.endobj str_SFX_BOSS_KAMEBABA_DO_las_000176e4

# .rodata:0x13C | 0x5C94 | size: 0x15
.obj str_カメックオババ_死亡_las_000176fc, local
	.4byte 0x834A8381
	.4byte 0x8362834E
	.4byte 0x8349836F
	.4byte 0x836F8140
	.4byte 0x8E809653
	.byte 0x00
.endobj str_カメックオババ_死亡_las_000176fc

# .rodata:0x151 | 0x5CA9 | size: 0x3
.obj gap_03_00005CA9_rodata, global
.hidden gap_03_00005CA9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005CA9_rodata

# .rodata:0x154 | 0x5CAC | size: 0x21
.obj str_カメックオババ_死亡イベント開始_las_00017714, local
	.4byte 0x834A8381
	.4byte 0x8362834E
	.4byte 0x8349836F
	.4byte 0x836F8140
	.4byte 0x8E809653
	.4byte 0x83438378
	.4byte 0x83938367
	.4byte 0x8A4A8E6E
	.byte 0x00
.endobj str_カメックオババ_死亡イベント開始_las_00017714

# .rodata:0x175 | 0x5CCD | size: 0x3
.obj gap_03_00005CCD_rodata, global
.hidden gap_03_00005CCD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005CCD_rodata

# .rodata:0x178 | 0x5CD0 | size: 0x29
.obj str_カメックオババ_死亡イベント_クッパ生存_las_00017738, local
	.4byte 0x834A8381
	.4byte 0x8362834E
	.4byte 0x8349836F
	.4byte 0x836F8140
	.4byte 0x8E809653
	.4byte 0x83438378
	.4byte 0x83938367
	.4byte 0x8140834E
	.4byte 0x83628370
	.4byte 0x90B691B6
	.byte 0x00
.endobj str_カメックオババ_死亡イベント_クッパ生存_las_00017738

# .rodata:0x1A1 | 0x5CF9 | size: 0x3
.obj gap_03_00005CF9_rodata, global
.hidden gap_03_00005CF9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005CF9_rodata

# .rodata:0x1A4 | 0x5CFC | size: 0x4
.obj str_T_3_las_00017764, local
	.string "T_3"
.endobj str_T_3_las_00017764

# .rodata:0x1A8 | 0x5D00 | size: 0x10
.obj str_stg8_las_100_01_las_00017768, local
	.string "stg8_las_100_01"
.endobj str_stg8_las_100_01_las_00017768

# .rodata:0x1B8 | 0x5D10 | size: 0x29
.obj str_カメックオババ_死亡イベント_同時に死亡_las_00017778, local
	.4byte 0x834A8381
	.4byte 0x8362834E
	.4byte 0x8349836F
	.4byte 0x836F8140
	.4byte 0x8E809653
	.4byte 0x83438378
	.4byte 0x83938367
	.4byte 0x814093AF
	.4byte 0x8E9E82C9
	.4byte 0x8E809653
	.byte 0x00
.endobj str_カメックオババ_死亡イベント_同時に死亡_las_00017778

# .rodata:0x1E1 | 0x5D39 | size: 0x3
.obj gap_03_00005D39_rodata, global
.hidden gap_03_00005D39_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005D39_rodata

# .rodata:0x1E4 | 0x5D3C | size: 0x29
.obj str_カメックオババ_死亡イベント_クッパ死亡_las_000177a4, local
	.4byte 0x834A8381
	.4byte 0x8362834E
	.4byte 0x8349836F
	.4byte 0x836F8140
	.4byte 0x8E809653
	.4byte 0x83438378
	.4byte 0x83938367
	.4byte 0x8140834E
	.4byte 0x83628370
	.4byte 0x8E809653
	.byte 0x00
.endobj str_カメックオババ_死亡イベント_クッパ死亡_las_000177a4

# .rodata:0x20D | 0x5D65 | size: 0x3
.obj gap_03_00005D65_rodata, global
.hidden gap_03_00005D65_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005D65_rodata

# .rodata:0x210 | 0x5D68 | size: 0x10
.obj str_stg8_las_100_03_las_000177d0, local
	.string "stg8_las_100_03"
.endobj str_stg8_las_100_03_las_000177d0

# .rodata:0x220 | 0x5D78 | size: 0x18
.obj str_SFX_BOSS_KAMEBABA_MO_las_000177e0, local
	.string "SFX_BOSS_KAMEBABA_MOVE2"
.endobj str_SFX_BOSS_KAMEBABA_MO_las_000177e0

# .rodata:0x238 | 0x5D90 | size: 0x19
.obj str_SFX_BOSS_KAMEBABA_MA_las_000177f8, local
	.string "SFX_BOSS_KAMEBABA_MAGIC1"
.endobj str_SFX_BOSS_KAMEBABA_MA_las_000177f8

# .rodata:0x251 | 0x5DA9 | size: 0x3
.obj gap_03_00005DA9_rodata, global
.hidden gap_03_00005DA9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005DA9_rodata

# .rodata:0x254 | 0x5DAC | size: 0x5
.obj str_A_1A_las_00017814, local
	.string "A_1A"
.endobj str_A_1A_las_00017814

# .rodata:0x259 | 0x5DB1 | size: 0x3
.obj gap_03_00005DB1_rodata, global
.hidden gap_03_00005DB1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005DB1_rodata

# .rodata:0x25C | 0x5DB4 | size: 0x19
.obj str_SFX_BOSS_KAMEBABA_MA_las_0001781c, local
	.string "SFX_BOSS_KAMEBABA_MAGIC4"
.endobj str_SFX_BOSS_KAMEBABA_MA_las_0001781c

# .rodata:0x275 | 0x5DCD | size: 0x3
.obj gap_03_00005DCD_rodata, global
.hidden gap_03_00005DCD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005DCD_rodata

# .rodata:0x278 | 0x5DD0 | size: 0x5
.obj str_A_1B_las_00017838, local
	.string "A_1B"
.endobj str_A_1B_las_00017838

# .rodata:0x27D | 0x5DD5 | size: 0x3
.obj gap_03_00005DD5_rodata, global
.hidden gap_03_00005DD5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005DD5_rodata

# .rodata:0x280 | 0x5DD8 | size: 0x5
.obj str_A_1C_las_00017840, local
	.string "A_1C"
.endobj str_A_1C_las_00017840

# .rodata:0x285 | 0x5DDD | size: 0x3
.obj gap_03_00005DDD_rodata, global
.hidden gap_03_00005DDD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005DDD_rodata

# .rodata:0x288 | 0x5DE0 | size: 0x19
.obj str_SFX_BOSS_KAMEBABA_MA_las_00017848, local
	.string "SFX_BOSS_KAMEBABA_MAGIC8"
.endobj str_SFX_BOSS_KAMEBABA_MA_las_00017848

# .rodata:0x2A1 | 0x5DF9 | size: 0x3
.obj gap_03_00005DF9_rodata, global
.hidden gap_03_00005DF9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005DF9_rodata

# .rodata:0x2A4 | 0x5DFC | size: 0x5
.obj str_A_1D_las_00017864, local
	.string "A_1D"
.endobj str_A_1D_las_00017864

# .rodata:0x2A9 | 0x5E01 | size: 0x3
.obj gap_03_00005E01_rodata, global
.hidden gap_03_00005E01_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005E01_rodata

# .rodata:0x2AC | 0x5E04 | size: 0x5
.obj str_A_1E_las_0001786c, local
	.string "A_1E"
.endobj str_A_1E_las_0001786c

# .rodata:0x2B1 | 0x5E09 | size: 0x3
.obj gap_03_00005E09_rodata, global
.hidden gap_03_00005E09_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005E09_rodata

# .rodata:0x2B4 | 0x5E0C | size: 0x19
.obj str_SFX_BOSS_KAMEBABA_MA_las_00017874, local
	.string "SFX_BOSS_KAMEBABA_MAGIC2"
.endobj str_SFX_BOSS_KAMEBABA_MA_las_00017874

# .rodata:0x2CD | 0x5E25 | size: 0x3
.obj gap_03_00005E25_rodata, global
.hidden gap_03_00005E25_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005E25_rodata

# .rodata:0x2D0 | 0x5E28 | size: 0x19
.obj str_SFX_BOSS_KAMEBABA_MA_las_00017890, local
	.string "SFX_BOSS_KAMEBABA_MAGIC6"
.endobj str_SFX_BOSS_KAMEBABA_MA_las_00017890

# .rodata:0x2E9 | 0x5E41 | size: 0x3
.obj gap_03_00005E41_rodata, global
.hidden gap_03_00005E41_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005E41_rodata

# .rodata:0x2EC | 0x5E44 | size: 0x5
.obj str_A_2A_las_000178ac, local
	.string "A_2A"
.endobj str_A_2A_las_000178ac

# .rodata:0x2F1 | 0x5E49 | size: 0x3
.obj gap_03_00005E49_rodata, global
.hidden gap_03_00005E49_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005E49_rodata

# .rodata:0x2F4 | 0x5E4C | size: 0x19
.obj str_SFX_BOSS_KAMEBABA_MA_las_000178b4, local
	.string "SFX_BOSS_KAMEBABA_MAGIC7"
.endobj str_SFX_BOSS_KAMEBABA_MA_las_000178b4

# .rodata:0x30D | 0x5E65 | size: 0x3
.obj gap_03_00005E65_rodata, global
.hidden gap_03_00005E65_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005E65_rodata

# .rodata:0x310 | 0x5E68 | size: 0x5
.obj str_A_2B_las_000178d0, local
	.string "A_2B"
.endobj str_A_2B_las_000178d0

# .rodata:0x315 | 0x5E6D | size: 0x3
.obj gap_03_00005E6D_rodata, global
.hidden gap_03_00005E6D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005E6D_rodata

# .rodata:0x318 | 0x5E70 | size: 0x5
.obj str_A_2C_las_000178d8, local
	.string "A_2C"
.endobj str_A_2C_las_000178d8

# .rodata:0x31D | 0x5E75 | size: 0x3
.obj gap_03_00005E75_rodata, global
.hidden gap_03_00005E75_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005E75_rodata

# .rodata:0x320 | 0x5E78 | size: 0x5
.obj str_A_3A_las_000178e0, local
	.string "A_3A"
.endobj str_A_3A_las_000178e0

# .rodata:0x325 | 0x5E7D | size: 0x3
.obj gap_03_00005E7D_rodata, global
.hidden gap_03_00005E7D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005E7D_rodata

# .rodata:0x328 | 0x5E80 | size: 0x5
.obj str_A_3B_las_000178e8, local
	.string "A_3B"
.endobj str_A_3B_las_000178e8

# .rodata:0x32D | 0x5E85 | size: 0x3
.obj gap_03_00005E85_rodata, global
.hidden gap_03_00005E85_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005E85_rodata

# .rodata:0x330 | 0x5E88 | size: 0x5
.obj str_A_3C_las_000178f0, local
	.string "A_3C"
.endobj str_A_3C_las_000178f0

# .rodata:0x335 | 0x5E8D | size: 0x3
.obj gap_03_00005E8D_rodata, global
.hidden gap_03_00005E8D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005E8D_rodata

# .rodata:0x338 | 0x5E90 | size: 0x5
.obj str_A_3D_las_000178f8, local
	.string "A_3D"
.endobj str_A_3D_las_000178f8

# .rodata:0x33D | 0x5E95 | size: 0x3
.obj gap_03_00005E95_rodata, global
.hidden gap_03_00005E95_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005E95_rodata

# .rodata:0x340 | 0x5E98 | size: 0x1B
.obj str_SFX_BOSS_KAMEBABA_MA_las_00017900, local
	.string "SFX_BOSS_KAMEBABA_MAGIC3_2"
.endobj str_SFX_BOSS_KAMEBABA_MA_las_00017900

# .rodata:0x35B | 0x5EB3 | size: 0x1
.obj gap_03_00005EB3_rodata, global
.hidden gap_03_00005EB3_rodata
	.byte 0x00
.endobj gap_03_00005EB3_rodata

# .rodata:0x35C | 0x5EB4 | size: 0x1
.obj zero_las_0001791c, local
	.byte 0x00
.endobj zero_las_0001791c

# .rodata:0x35D | 0x5EB5 | size: 0x3
.obj gap_03_00005EB5_rodata, global
.hidden gap_03_00005EB5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00005EB5_rodata

# .rodata:0x360 | 0x5EB8 | size: 0x9
.obj str_recovery_las_00017920, local
	.string "recovery"
.endobj str_recovery_las_00017920
	.byte 0x00, 0x00, 0x00

# .rodata:0x36C | 0x5EC4 | size: 0x4
.obj float_30_las_0001792c, local
	.float 30
.endobj float_30_las_0001792c

# .rodata:0x370 | 0x5EC8 | size: 0x4
.obj float_10_las_00017930, local
	.float 10
.endobj float_10_las_00017930

# .rodata:0x374 | 0x5ECC | size: 0x4
.obj float_5_las_00017934, local
	.float 5
.endobj float_5_las_00017934

# .rodata:0x378 | 0x5ED0 | size: 0x4
.obj float_40_las_00017938, local
	.float 40
.endobj float_40_las_00017938

# .rodata:0x37C | 0x5ED4 | size: 0x4
.obj float_50_las_0001793c, local
	.float 50
.endobj float_50_las_0001793c

# .rodata:0x380 | 0x5ED8 | size: 0x8
.obj double_to_int_las_00017940, local
	.double 4503601774854144
.endobj double_to_int_las_00017940

# .rodata:0x388 | 0x5EE0 | size: 0x4
.obj float_28_las_00017948, local
	.float 28
.endobj float_28_las_00017948

# .rodata:0x38C | 0x5EE4 | size: 0x4
.obj float_20_las_0001794c, local
	.float 20
.endobj float_20_las_0001794c

# .rodata:0x390 | 0x5EE8 | size: 0x4
.obj zero_las_00017950, local
	.float 0
.endobj zero_las_00017950

# .rodata:0x394 | 0x5EEC | size: 0x4
.obj float_neg1000_las_00017954, local
	.float -1000
.endobj float_neg1000_las_00017954

# .rodata:0x398 | 0x5EF0 | size: 0x4
.obj float_1_las_00017958, local
	.float 1
.endobj float_1_las_00017958

# .rodata:0x39C | 0x5EF4 | size: 0x4
.obj float_35_las_0001795c, local
	.float 35
.endobj float_35_las_0001795c

# 0x00027310..0x00029860 | size: 0x2550
.data
.balign 8

# .data:0x0 | 0x27310 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x27318 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x2731C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x27320 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x27324 | size: 0x4
.obj gap_04_00027324_data, global
.hidden gap_04_00027324_data
	.4byte 0x00000000
.endobj gap_04_00027324_data

# .data:0x18 | 0x27328 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x27330 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x27334 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x27338 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x27340 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x27344 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x27348 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x2734C | size: 0x4
.obj gap_04_0002734C_data, global
.hidden gap_04_0002734C_data
	.4byte 0x00000000
.endobj gap_04_0002734C_data

# .data:0x40 | 0x27350 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x27358 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x2735C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x27360 | size: 0xC0
.obj weapon_kamec_obaba_attack_magic, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x01101260
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000047
	.4byte 0x000007FF
	.4byte 0x80000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
.endobj weapon_kamec_obaba_attack_magic

# .data:0x110 | 0x27420 | size: 0xC0
.obj weapon_kamec_obaba_dekadeka_magic, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000000
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x01100160
	.4byte 0x10000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000008
	.4byte 0x000007FF
	.4byte 0x80000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x03020000
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
.endobj weapon_kamec_obaba_dekadeka_magic

# .data:0x1D0 | 0x274E0 | size: 0xC0
.obj weapon_kamec_obaba_biribiri_magic, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000000
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x01100160
	.4byte 0x10000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000008
	.4byte 0x000007FF
	.4byte 0x80000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x03000000
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
.endobj weapon_kamec_obaba_biribiri_magic

# .data:0x290 | 0x275A0 | size: 0xC0
.obj weapon_kamec_obaba_katikati_magic, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000000
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x01100160
	.4byte 0x10000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000008
	.4byte 0x000007FF
	.4byte 0x80000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00640303
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_kamec_obaba_katikati_magic

# .data:0x350 | 0x27660 | size: 0xC0
.obj weapon_kamec_obaba_trans_magic, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000000
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x01100160
	.4byte 0x10000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000008
	.4byte 0x000007FF
	.4byte 0x80000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64030000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_kamec_obaba_trans_magic

# .data:0x410 | 0x27720 | size: 0xC0
.obj weapon_kamec_obaba_recover_magic, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000000
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x01100160
	.4byte 0x10000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000008
	.4byte 0x000007FF
	.4byte 0x00001500
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
.endobj weapon_kamec_obaba_recover_magic

# .data:0x4D0 | 0x277E0 | size: 0xC4
.obj unit_boss_kamec_obaba_16_data_277E0, global
	.4byte 0x00000091
	.4byte str_btl_un_kamec_obaba_las_000175c0
	.4byte 0x00320000
	.4byte 0x01013000
	.4byte 0x00640032
	.4byte 0x0006002A
	.4byte 0x002A0007
	.4byte 0x002A0000
	.4byte 0x00000000
	.4byte 0x41A80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41A00000
	.4byte 0x41A00000
	.4byte 0x00000000
	.4byte 0x41A80000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41900000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41A80000
	.4byte 0x41DA6666
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41A80000
	.4byte 0x00000000
	.4byte 0x42280000
	.4byte 0x42280000
	.4byte 0x00000002
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_BOSS_KAMEBABA_DA_las_000175d4
	.4byte str_SFX_BTL_DAMAGE_FIRE1_las_000175f0
	.4byte str_SFX_BTL_DAMAGE_ICE1_las_00017608
	.4byte str_SFX_BTL_DAMAGE_BIRIB_las_0001761c
	.4byte 0x00000004
	.4byte regist
	.4byte 0x02000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_boss_kamec_obaba_16_data_277E0

# .data:0x594 | 0x278A4 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x599 | 0x278A9 | size: 0x3
.obj gap_04_000278A9_data, global
.hidden gap_04_000278A9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_000278A9_data

# .data:0x59C | 0x278AC | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x5A1 | 0x278B1 | size: 0x3
.obj gap_04_000278B1_data, global
.hidden gap_04_000278B1_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_000278B1_data

# .data:0x5A4 | 0x278B4 | size: 0x16
.obj regist, local
	.4byte 0x28283C64
	.4byte 0x28646428
	.4byte 0x643C643C
	.4byte 0x64502800
	.4byte 0x00642864
	.2byte 0x6405
.endobj regist

# .data:0x5BA | 0x278CA | size: 0x2
.obj gap_04_000278CA_data, global
.hidden gap_04_000278CA_data
	.2byte 0x0000
.endobj gap_04_000278CA_data

# .data:0x5BC | 0x278CC | size: 0x88
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_N_1_las_00017638
	.4byte 0x00000002
	.4byte str_Y_1_las_0001763c
	.4byte 0x00000009
	.4byte str_Y_1_las_0001763c
	.4byte 0x00000005
	.4byte str_K_1_las_00017640
	.4byte 0x00000004
	.4byte str_X_1_las_00017644
	.4byte 0x00000003
	.4byte str_X_1_las_00017644
	.4byte 0x0000001C
	.4byte str_S_1_las_00017648
	.4byte 0x0000001D
	.4byte str_Q_1_las_0001764c
	.4byte 0x0000001E
	.4byte str_Q_1_las_0001764c
	.4byte 0x0000001F
	.4byte str_D_1_las_00017650
	.4byte 0x00000027
	.4byte str_D_1_las_00017650
	.4byte 0x0000002A
	.4byte str_R_1_las_00017654
	.4byte 0x00000028
	.4byte str_W_1_las_00017658
	.4byte 0x00000038
	.4byte str_X_1_las_00017644
	.4byte 0x00000039
	.4byte str_X_1_las_00017644
	.4byte 0x00000041
	.4byte str_T_1_las_0001765c
	.4byte 0x00000045
	.4byte str_S_1_las_00017648
.endobj pose_table

# .data:0x644 | 0x27954 | size: 0x88
.obj pose_table_sky, local
	.4byte 0x00000001
	.4byte str_N_2_las_00017660
	.4byte 0x00000002
	.4byte str_Y_2_las_00017664
	.4byte 0x00000009
	.4byte str_Y_2_las_00017664
	.4byte 0x00000005
	.4byte str_K_2_las_00017668
	.4byte 0x00000004
	.4byte str_X_2_las_0001766c
	.4byte 0x00000003
	.4byte str_X_2_las_0001766c
	.4byte 0x0000001C
	.4byte str_S_2_las_00017670
	.4byte 0x0000001D
	.4byte str_Q_2_las_00017674
	.4byte 0x0000001E
	.4byte str_Q_2_las_00017674
	.4byte 0x0000001F
	.4byte str_D_2_las_00017678
	.4byte 0x00000027
	.4byte str_D_2_las_00017678
	.4byte 0x0000002A
	.4byte str_R_2_las_0001767c
	.4byte 0x00000028
	.4byte str_W_2_las_00017680
	.4byte 0x00000038
	.4byte str_X_2_las_0001766c
	.4byte 0x00000039
	.4byte str_X_2_las_0001766c
	.4byte 0x00000041
	.4byte str_T_2_las_00017684
	.4byte 0x00000045
	.4byte str_S_2_las_00017670
.endobj pose_table_sky

# .data:0x6CC | 0x279DC | size: 0x18
.obj pose_table_dead, local
	.4byte 0x0000001C
	.4byte str_D_3_las_00017688
	.4byte 0x00000027
	.4byte str_D_3_las_00017688
	.4byte 0x00000045
	.4byte str_D_3_las_00017688
.endobj pose_table_dead

# .data:0x6E4 | 0x279F4 | size: 0x10
.obj data_table, local
	.4byte 0x00000031
	.4byte dead_event
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x6F4 | 0x27A04 | size: 0x98
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_kamec_obaba_las_000175c0
	.4byte str_c_kamek_bb_las_0001768c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42200000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x00600009
	.4byte 0x00000000
	.4byte pose_table_sky
	.4byte 0x00000002
	.4byte str_btl_un_kamec_obaba_las_000175c0
	.4byte str_c_kamek_bb_las_0001768c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x13010000
	.4byte 0x00000000
	.4byte pose_table
.endobj parts

# .data:0x78C | 0x27A9C | size: 0xA0
.obj kamec_obaba_zoom, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFD050F89
	.4byte 0x00000000
	.4byte 0xFE363C81
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0x00000087
	.4byte 0x0000006A
	.4byte 0x00000128
	.4byte 0x00000087
	.4byte 0x00000037
	.4byte 0xFFFFFE6E
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00000020
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0x0000008C
	.4byte 0x00000022
	.4byte 0x00000128
	.4byte 0x0000008C
	.4byte 0x00000032
	.4byte 0xFFFFFE6E
	.4byte 0x0000001E
	.4byte 0x0000000B
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000025
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kamec_obaba_zoom

# .data:0x82C | 0x27B3C | size: 0xE0
.obj init_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventWait
	.4byte 0xFFFFFFFE
	.4byte wait_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventPhase
	.4byte 0xFFFFFFFE
	.4byte phase_event
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
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte btlevtcmd_SetWalkSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KAMEBABA_MO_las_00017698
	.4byte str_SFX_BOSS_KAMEBABA_MO_las_000176b4
	.4byte 0x00000000
	.4byte 0x0000000F
	.4byte 0x0000000F
	.4byte 0x0007005B
	.4byte btlevtcmd_SetRunSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KAMEBABA_MO_las_00017698
	.4byte str_SFX_BOSS_KAMEBABA_MO_las_000176b4
	.4byte 0x00000000
	.4byte 0x00000008
	.4byte 0x00000008
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x90C | 0x27C1C | size: 0x128
.obj damage_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte btldefaultevt_Damage
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x0000001B
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckDamageCode
	.4byte 0xFFFFFFFE
	.4byte 0x00000100
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_GetTotalDamage
	.4byte 0xFE363C8A
	.4byte 0xFE363C81
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitAttackEnd
	.4byte 0x0002005B
	.4byte btlevtcmd_StopWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x0001005E
	.4byte dmg_fall_event
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj damage_event

# .data:0xA34 | 0x27D44 | size: 0x254
.obj dmg_fall_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_OffAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00200000
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00400000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_D_2_las_00017678
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table
	.4byte 0x0003005B
	.4byte btlevtcmd_SetTalkPoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000041
	.4byte 0x0003005B
	.4byte btlevtcmd_SetStayPoseType
	.4byte 0xFFFFFFFE
	.4byte 0x0000002B
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000027
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte str_H_1_las_000176d0
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x000000FF
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x01000000
	.4byte 0x00010009
	.4byte 0x00000050
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x00000000
	.4byte 0x000000FF
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x00010005
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte evt_sub_intpl_get_value_para
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C81
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x01000000
	.4byte 0x0000006D
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_FALL1_las_000176d4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7E80
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KAMEBABA_DO_las_000176e4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dmg_fall_event

# .data:0xC88 | 0x27F98 | size: 0x26C
.obj dead_event, local
	.4byte 0x00010071
	.4byte str_カメックオババ_死亡_las_000176fc
	.4byte 0x00020032
	.4byte 0xFD050F8B
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitAttackEnd
	.4byte 0x00010071
	.4byte str_カメックオババ_死亡イベント開始_las_00017714
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte dmg_fall_event
	.4byte 0x00000021
	.4byte 0x00010022
	.4byte 0xFD050F8A
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00010071
	.4byte str_カメックオババ_死亡イベント_クッパ生存_las_00017738
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte kamec_obaba_zoom
	.4byte 0x0003005B
	.4byte btlevtcmd_SetTalkPose
	.4byte 0xFFFFFFFE
	.4byte str_T_3_las_00017764
	.4byte 0x0003005B
	.4byte btlevtcmd_SetStayPose
	.4byte 0xFFFFFFFE
	.4byte str_D_3_las_00017688
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg8_las_100_01_las_00017768
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_D_3_las_00017688
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_dead
	.4byte 0x00020032
	.4byte 0xFD050F8B
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x0001005E
	.4byte subsetevt_dead_core_nospin_norotate
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00010071
	.4byte str_カメックオババ_死亡イベント_同時に死亡_las_00017778
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFD050F8A
	.4byte 0x00000002
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_D_3_las_00017688
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_dead
	.4byte 0x00020032
	.4byte 0xFD050F8B
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x0001005E
	.4byte subsetevt_dead_core_nospin_norotate
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00010071
	.4byte str_カメックオババ_死亡イベント_クッパ死亡_las_000177a4
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte kamec_obaba_zoom
	.4byte 0x0003005B
	.4byte btlevtcmd_SetTalkPose
	.4byte 0xFFFFFFFE
	.4byte str_D_1_las_00017650
	.4byte 0x0003005B
	.4byte btlevtcmd_SetStayPose
	.4byte 0xFFFFFFFE
	.4byte str_D_1_las_00017650
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg8_las_100_03_las_000177d0
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_D_3_las_00017688
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_dead
	.4byte 0x00020032
	.4byte 0xFD050F8B
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x0001005E
	.4byte subsetevt_dead_core_nospin_norotate
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x00000031
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dead_event

# .data:0xEF4 | 0x28204 | size: 0x360
.obj phase_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_CheckPhase
	.4byte 0xFE363C80
	.4byte 0x04000001
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_get_turn
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x0000001B
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_CheckActStatus
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_AddUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8E80
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0x0000012C
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0003005B
	.4byte btlevtcmd_OnAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00200000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00400000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000028
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_sky
	.4byte 0x0003005B
	.4byte btlevtcmd_SetTalkPoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000041
	.4byte 0x0003005B
	.4byte btlevtcmd_SetStayPoseType
	.4byte 0xFFFFFFFE
	.4byte 0x0000002B
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000028
	.4byte 0x0001006F
	.4byte 0xFE363C8F
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KAMEBABA_MO_las_000177e0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0001000A
	.4byte 0x000000A6
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0xFE363C82
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000045
	.4byte 0x0001005F
	.4byte 0xFE363C8F
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0x1254 | 0x28564 | size: 0x580
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
	.4byte btlevtcmd_get_turn
	.4byte 0xFE363C80
	.4byte 0x00010073
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_kamec_obaba_attack_magic
	.4byte 0x0001005E
	.4byte attack_magic_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte btlevtcmd_GetMaxHp
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C81
	.4byte 0x00020037
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x00020038
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010026
	.4byte 0x00000019
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x00000019
	.4byte 0x00010026
	.4byte 0x00000032
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x0000000A
	.4byte 0x00010026
	.4byte 0x0000004B
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x00000005
	.4byte 0x00000031
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFD050F8A
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFD050F88
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte btlevtcmd_GetMaxHp
	.4byte 0xFD050F88
	.4byte 0xFE363C81
	.4byte 0x00020037
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x00020038
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010026
	.4byte 0x00000019
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000019
	.4byte 0x00010026
	.4byte 0x00000032
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x0000000A
	.4byte 0x00010026
	.4byte 0x0000004B
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000005
	.4byte 0x00000031
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_kamec_obaba_dekadeka_magic
	.4byte 0x0001005E
	.4byte magic_select_pri_obaba
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFE363C83
	.4byte 0x00000006
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFE363C83
	.4byte 0x00000012
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte 0xFE363C83
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0xFE363C84
	.4byte 0x0001005E
	.4byte magic_select_pri_koopa
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFE363C83
	.4byte 0x0000000E
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0xFE363C85
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0xFE363C86
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0xFE363C87
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0xFE363C88
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0xFE363C8B
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000032
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0xFE363C85
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0xFE363C86
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_kamec_obaba_recover_magic
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte 0xFE363C89
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckToken
	.4byte 0xFFFFFFFE
	.4byte 0x00000010
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte subsetevt_confuse_flustered
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte btlevtcmd_GetMaxHp
	.4byte 0xFE363C83
	.4byte 0xFE363C81
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte recover_magic_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0xFE363C87
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_kamec_obaba_katikati_magic
	.4byte 0x0001005E
	.4byte katikati_magic_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0xFE363C88
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_kamec_obaba_biribiri_magic
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0xFE363C8D
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0xFE363C8E
	.4byte 0x0001005E
	.4byte biribiri_magic_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0xFE363C8A
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_kamec_obaba_trans_magic
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0xFE363C8D
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0xFE363C8E
	.4byte 0x0001005E
	.4byte trans_magic_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0xFE363C8B
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_kamec_obaba_dekadeka_magic
	.4byte 0x0001005E
	.4byte dekadeka_magic_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_kamec_obaba_attack_magic
	.4byte 0x0001005E
	.4byte attack_magic_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x17D4 | 0x28AE4 | size: 0x15C
.obj ground_magic_common_event1, local
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000002
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KAMEBABA_MA_las_000177f8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x0002005B
	.4byte eff_staff
	.4byte 0xFFFFFFFE
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1A_las_00017814
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KAMEBABA_MA_las_0001781c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1B_las_00017838
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1C_las_00017840
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0000006E
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KAMEBABA_MA_las_00017848
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1D_las_00017864
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1E_las_0001786c
	.4byte 0x00020019
	.4byte 0xFE363C89
	.4byte weapon_kamec_obaba_attack_magic
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KAMEBABA_MA_las_00017874
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte eff_magic_support
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj ground_magic_common_event1

# .data:0x1930 | 0x28C40 | size: 0x130
.obj ground_magic_common_event2, local
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000002
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KAMEBABA_MA_las_000177f8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x0002005B
	.4byte eff_staff
	.4byte 0xFFFFFFFE
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1A_las_00017814
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KAMEBABA_MA_las_00017890
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2A_las_000178ac
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KAMEBABA_MA_las_000178b4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2B_las_000178d0
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2C_las_000178d8
	.4byte 0x00020019
	.4byte 0xFE363C89
	.4byte weapon_kamec_obaba_attack_magic
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KAMEBABA_MA_las_00017874
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte eff_magic_support
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj ground_magic_common_event2

# .data:0x1A60 | 0x28D70 | size: 0x130
.obj sky_magic_common_event, local
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000002
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KAMEBABA_MA_las_000177f8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x0002005B
	.4byte eff_staff
	.4byte 0xFFFFFFFE
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_3A_las_000178e0
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KAMEBABA_MA_las_00017848
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_3B_las_000178e8
	.4byte 0x00010009
	.4byte 0x00000023
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KAMEBABA_MA_las_000178b4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_3C_las_000178f0
	.4byte 0x00010009
	.4byte 0x0000000F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_3D_las_000178f8
	.4byte 0x00020019
	.4byte 0xFE363C89
	.4byte weapon_kamec_obaba_attack_magic
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KAMEBABA_MA_las_00017874
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte eff_magic_support
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj sky_magic_common_event

# .data:0x1B90 | 0x28EA0 | size: 0x6C
.obj magic_common_event1, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitId
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8D
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFE363C8D
	.4byte 0x0001005E
	.4byte ground_magic_common_event1
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte ground_magic_common_event2
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte sky_magic_common_event
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj magic_common_event1

# .data:0x1BFC | 0x28F0C | size: 0x40
.obj magic_common_event2, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte ground_magic_common_event2
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte sky_magic_common_event
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj magic_common_event2

# .data:0x1C3C | 0x28F4C | size: 0x68
.obj start_avoid, local
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000026
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000027
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000028
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj start_avoid

# .data:0x1CA4 | 0x28FB4 | size: 0x434
.obj attack_magic_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte 0xFE363C89
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckToken
	.4byte 0xFFFFFFFE
	.4byte 0x00000010
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte subsetevt_confuse_flustered
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte btlevtcmd_AttackDeclare
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitGuardMove
	.4byte 0x0003005B
	.4byte btlevtcmd_PayWeaponCost
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000010
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x0001005E
	.4byte magic_common_event1
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_KAMEBABA_MA_las_00017900
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00010022
	.4byte 0xFE363C85
	.4byte 0x0001002B
	.4byte 0x00000004
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x0000002E
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x0000002E
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000005B
	.4byte 0x0000002E
	.4byte 0x0000002A
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x0000002E
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x0000006E
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte eff_magic_get_posX
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0xFE363C86
	.4byte 0x0001005E
	.4byte start_avoid
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte eff_magic_get_posX
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0xFE363C86
	.4byte 0x0001005E
	.4byte start_avoid
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFFC7
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0004005B
	.4byte btlevtcmd_GetStageSize
	.4byte 0xFE363C8A
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_GetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020037
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x00020036
	.4byte 0xFE363C8B
	.4byte 0x00000005
	.4byte 0x0006005B
	.4byte eff_magic
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0000003C
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFFC7
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte eff_magic
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0000002D
	.4byte 0x00010009
	.4byte 0x0000002D
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002B
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_magic_event

# .data:0x20D8 | 0x293E8 | size: 0xD0
.obj magic_select_pri_obaba, local
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFD050F8A
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x00000019
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFD050F8B
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x0000004B
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0xFE363C85
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0xFE363C86
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C85
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0xFD050F88
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj magic_select_pri_obaba

# .data:0x21A8 | 0x294B8 | size: 0xD0
.obj magic_select_pri_koopa, local
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFD050F8A
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x0000004B
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFD050F8B
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000019
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0xFE363C85
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0xFE363C86
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C85
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0xFD050F88
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj magic_select_pri_koopa

# .data:0x2278 | 0x29588 | size: 0x124
.obj dekadeka_magic_event, local
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckToken
	.4byte 0xFFFFFFFE
	.4byte 0x00000010
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte subsetevt_confuse_flustered
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte btlevtcmd_AttackDeclare
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitGuardMove
	.4byte 0x0003005B
	.4byte btlevtcmd_PayWeaponCost
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000010
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x0001005E
	.4byte magic_common_event1
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dekadeka_magic_event

# .data:0x239C | 0x296AC | size: 0x10
.obj katikati_magic_event, local
	.4byte 0x0001005E
	.4byte dekadeka_magic_event
	.4byte 0x00000002
	.4byte 0x00000001
.endobj katikati_magic_event

# .data:0x23AC | 0x296BC | size: 0x10
.obj biribiri_magic_event, local
	.4byte 0x0001005E
	.4byte dekadeka_magic_event
	.4byte 0x00000002
	.4byte 0x00000001
.endobj biribiri_magic_event

# .data:0x23BC | 0x296CC | size: 0x10
.obj trans_magic_event, local
	.4byte 0x0001005E
	.4byte dekadeka_magic_event
	.4byte 0x00000002
	.4byte 0x00000001
.endobj trans_magic_event

# .data:0x23CC | 0x296DC | size: 0x168
.obj recover_magic_event, local
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte btlevtcmd_AttackDeclare
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitGuardMove
	.4byte 0x0003005B
	.4byte btlevtcmd_PayWeaponCost
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000010
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x0001005E
	.4byte magic_common_event1
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte btlevtcmd_RecoverHp
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000008
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFD050F88
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFFE2
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000064
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x00000020
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000032
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_las_0001791c
	.4byte str_recovery_las_00017920
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj recover_magic_event

# .data:0x2534 | 0x29844 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x254C | 0x2985C | size: 0x4
.obj gap_04_0002985C_data, global
.hidden gap_04_0002985C_data
	.4byte 0x00000000
.endobj gap_04_0002985C_data
