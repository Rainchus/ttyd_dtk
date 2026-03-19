.include "macros.inc"
.file "unit_act_mario.o"

# 0x000006EC..0x00000994 | size: 0x2A8
.text
.balign 4

# .text:0x0 | 0x6EC | size: 0x15C
.fn _clauda_breath_effect_fire, local
/* 000006EC 000007B0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 000006F0 000007B4  7C 08 02 A6 */	mflr r0
/* 000006F4 000007B8  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 000006F8 000007BC  90 01 00 34 */	stw r0, 0x34(r1)
/* 000006FC 000007C0  BF A1 00 24 */	stmw r29, 0x24(r1)
/* 00000700 000007C4  7C 7D 1B 78 */	mr r29, r3
/* 00000704 000007C8  83 C4 00 00 */	lwz r30, _battleWorkPointer@l(r4)
/* 00000708 000007CC  38 80 FF FE */	li r4, -0x2
/* 0000070C 000007D0  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00000710 000007D4  4B FF FA 39 */	bl BattleTransID
/* 00000714 000007D8  7C 60 1B 78 */	mr r0, r3
/* 00000718 000007DC  7F C3 F3 78 */	mr r3, r30
/* 0000071C 000007E0  7C 04 03 78 */	mr r4, r0
/* 00000720 000007E4  4B FF FA 29 */	bl BattleGetUnitPtr
/* 00000724 000007E8  83 DF 00 00 */	lwz r30, 0x0(r31)
/* 00000728 000007EC  38 A1 00 0C */	addi r5, r1, 0xc
/* 0000072C 000007F0  38 C1 00 10 */	addi r6, r1, 0x10
/* 00000730 000007F4  7C 7F 1B 78 */	mr r31, r3
/* 00000734 000007F8  38 81 00 08 */	addi r4, r1, 0x8
/* 00000738 000007FC  4B FF FA 11 */	bl BtlUnit_GetPos
/* 0000073C 00000800  88 BF 01 89 */	lbz r5, 0x189(r31)
/* 00000740 00000804  3C 00 43 30 */	lis r0, 0x4330
/* 00000744 00000808  3C 60 00 00 */	lis r3, float_15_nok_00002618@ha
/* 00000748 0000080C  90 01 00 18 */	stw r0, 0x18(r1)
/* 0000074C 00000810  7C A6 07 74 */	extsb r6, r5
/* 00000750 00000814  3C 80 00 00 */	lis r4, double_to_int_nok_00002630@ha
/* 00000754 00000818  1C E6 00 19 */	mulli r7, r6, 0x19
/* 00000758 0000081C  39 03 00 00 */	addi r8, r3, float_15_nok_00002618@l
/* 0000075C 00000820  38 C4 00 00 */	addi r6, r4, double_to_int_nok_00002630@l
/* 00000760 00000824  C0 9F 01 14 */	lfs f4, 0x114(r31)
/* 00000764 00000828  C8 26 00 00 */	lfd f1, 0x0(r6)
/* 00000768 0000082C  3C 80 00 00 */	lis r4, float_neg2_nok_00002620@ha
/* 0000076C 00000830  6C E0 80 00 */	xoris r0, r7, 0x8000
/* 00000770 00000834  38 C4 00 00 */	addi r6, r4, float_neg2_nok_00002620@l
/* 00000774 00000838  90 01 00 1C */	stw r0, 0x1c(r1)
/* 00000778 0000083C  3C A0 00 00 */	lis r5, zero_nok_0000261c@ha
/* 0000077C 00000840  C0 48 00 00 */	lfs f2, 0x0(r8)
/* 00000780 00000844  3C 60 00 00 */	lis r3, float_1_nok_00002624@ha
/* 00000784 00000848  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 00000788 0000084C  38 E5 00 00 */	addi r7, r5, zero_nok_0000261c@l
/* 0000078C 00000850  38 A3 00 00 */	addi r5, r3, float_1_nok_00002624@l
/* 00000790 00000854  C0 A6 00 00 */	lfs f5, 0x0(r6)
/* 00000794 00000858  EC 60 08 28 */	fsubs f3, f0, f1
/* 00000798 0000085C  C0 21 00 08 */	lfs f1, 0x8(r1)
/* 0000079C 00000860  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 000007A0 00000864  38 60 00 00 */	li r3, 0x0
/* 000007A4 00000868  C0 C5 00 00 */	lfs f6, 0x0(r5)
/* 000007A8 0000086C  38 80 00 00 */	li r4, 0x0
/* 000007AC 00000870  EC 24 08 FA */	fmadds f1, f4, f3, f1
/* 000007B0 00000874  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 000007B4 00000878  EC 42 01 3A */	fmadds f2, f2, f4, f0
/* 000007B8 0000087C  C0 87 00 00 */	lfs f4, 0x0(r7)
/* 000007BC 00000880  D0 21 00 08 */	stfs f1, 0x8(r1)
/* 000007C0 00000884  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 000007C4 00000888  4B FF F9 85 */	bl effKumokumoN64Entry
/* 000007C8 0000088C  7C 65 1B 78 */	mr r5, r3
/* 000007CC 00000890  80 63 00 0C */	lwz r3, 0xc(r3)
/* 000007D0 00000894  38 00 00 4C */	li r0, 0x4c
/* 000007D4 00000898  3C 80 00 00 */	lis r4, float_neg10_nok_00002628@ha
/* 000007D8 0000089C  90 03 00 18 */	stw r0, 0x18(r3)
/* 000007DC 000008A0  39 40 00 A7 */	li r10, 0xa7
/* 000007E0 000008A4  C0 04 00 00 */	lfs f0, float_neg10_nok_00002628@l(r4)
/* 000007E4 000008A8  39 20 00 CA */	li r9, 0xca
/* 000007E8 000008AC  80 C5 00 0C */	lwz r6, 0xc(r5)
/* 000007EC 000008B0  39 00 00 7D */	li r8, 0x7d
/* 000007F0 000008B4  38 E0 00 1B */	li r7, 0x1b
/* 000007F4 000008B8  38 00 00 F5 */	li r0, 0xf5
/* 000007F8 000008BC  91 46 00 1C */	stw r10, 0x1c(r6)
/* 000007FC 000008C0  7F A3 EB 78 */	mr r3, r29
/* 00000800 000008C4  7F C4 F3 78 */	mr r4, r30
/* 00000804 000008C8  80 C5 00 0C */	lwz r6, 0xc(r5)
/* 00000808 000008CC  91 26 00 20 */	stw r9, 0x20(r6)
/* 0000080C 000008D0  80 C5 00 0C */	lwz r6, 0xc(r5)
/* 00000810 000008D4  91 06 00 28 */	stw r8, 0x28(r6)
/* 00000814 000008D8  80 C5 00 0C */	lwz r6, 0xc(r5)
/* 00000818 000008DC  90 E6 00 2C */	stw r7, 0x2c(r6)
/* 0000081C 000008E0  80 C5 00 0C */	lwz r6, 0xc(r5)
/* 00000820 000008E4  90 06 00 30 */	stw r0, 0x30(r6)
/* 00000824 000008E8  80 C5 00 0C */	lwz r6, 0xc(r5)
/* 00000828 000008EC  D0 06 00 58 */	stfs f0, 0x58(r6)
/* 0000082C 000008F0  4B FF F9 1D */	bl evtSetValue
/* 00000830 000008F4  BB A1 00 24 */	lmw r29, 0x24(r1)
/* 00000834 000008F8  38 60 00 02 */	li r3, 0x2
/* 00000838 000008FC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 0000083C 00000900  7C 08 03 A6 */	mtlr r0
/* 00000840 00000904  38 21 00 30 */	addi r1, r1, 0x30
/* 00000844 00000908  4E 80 00 20 */	blr
.endfn _clauda_breath_effect_fire

# .text:0x15C | 0x848 | size: 0x130
.fn _clauda_breath_effect_ready, local
/* 00000848 0000090C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 0000084C 00000910  7C 08 02 A6 */	mflr r0
/* 00000850 00000914  3C A0 00 00 */	lis r5, _battleWorkPointer@ha
/* 00000854 00000918  38 80 FF FE */	li r4, -0x2
/* 00000858 0000091C  90 01 00 34 */	stw r0, 0x34(r1)
/* 0000085C 00000920  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 00000860 00000924  83 E5 00 00 */	lwz r31, _battleWorkPointer@l(r5)
/* 00000864 00000928  4B FF F8 E5 */	bl BattleTransID
/* 00000868 0000092C  7C 60 1B 78 */	mr r0, r3
/* 0000086C 00000930  7F E3 FB 78 */	mr r3, r31
/* 00000870 00000934  7C 04 03 78 */	mr r4, r0
/* 00000874 00000938  4B FF F8 D5 */	bl BattleGetUnitPtr
/* 00000878 0000093C  38 A1 00 0C */	addi r5, r1, 0xc
/* 0000087C 00000940  38 C1 00 10 */	addi r6, r1, 0x10
/* 00000880 00000944  7C 7F 1B 78 */	mr r31, r3
/* 00000884 00000948  38 81 00 08 */	addi r4, r1, 0x8
/* 00000888 0000094C  4B FF F8 C1 */	bl BtlUnit_GetPos
/* 0000088C 00000950  88 BF 01 89 */	lbz r5, 0x189(r31)
/* 00000890 00000954  3C 00 43 30 */	lis r0, 0x4330
/* 00000894 00000958  3C 60 00 00 */	lis r3, float_25_nok_00002638@ha
/* 00000898 0000095C  90 01 00 18 */	stw r0, 0x18(r1)
/* 0000089C 00000960  7C A6 07 74 */	extsb r6, r5
/* 000008A0 00000964  3C 80 00 00 */	lis r4, double_to_int_nok_00002630@ha
/* 000008A4 00000968  1C E6 00 14 */	mulli r7, r6, 0x14
/* 000008A8 0000096C  39 03 00 00 */	addi r8, r3, float_25_nok_00002638@l
/* 000008AC 00000970  38 C4 00 00 */	addi r6, r4, double_to_int_nok_00002630@l
/* 000008B0 00000974  C0 9F 01 14 */	lfs f4, 0x114(r31)
/* 000008B4 00000978  C8 26 00 00 */	lfd f1, 0x0(r6)
/* 000008B8 0000097C  3C 80 00 00 */	lis r4, float_2_nok_0000263c@ha
/* 000008BC 00000980  6C E0 80 00 */	xoris r0, r7, 0x8000
/* 000008C0 00000984  38 C4 00 00 */	addi r6, r4, float_2_nok_0000263c@l
/* 000008C4 00000988  90 01 00 1C */	stw r0, 0x1c(r1)
/* 000008C8 0000098C  3C A0 00 00 */	lis r5, zero_nok_0000261c@ha
/* 000008CC 00000990  C0 48 00 00 */	lfs f2, 0x0(r8)
/* 000008D0 00000994  3C 60 00 00 */	lis r3, float_1_nok_00002624@ha
/* 000008D4 00000998  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 000008D8 0000099C  38 E5 00 00 */	addi r7, r5, zero_nok_0000261c@l
/* 000008DC 000009A0  38 A3 00 00 */	addi r5, r3, float_1_nok_00002624@l
/* 000008E0 000009A4  C0 A6 00 00 */	lfs f5, 0x0(r6)
/* 000008E4 000009A8  EC 60 08 28 */	fsubs f3, f0, f1
/* 000008E8 000009AC  C0 21 00 08 */	lfs f1, 0x8(r1)
/* 000008EC 000009B0  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 000008F0 000009B4  38 60 00 00 */	li r3, 0x0
/* 000008F4 000009B8  C0 C5 00 00 */	lfs f6, 0x0(r5)
/* 000008F8 000009BC  38 80 00 3C */	li r4, 0x3c
/* 000008FC 000009C0  EC 24 08 FA */	fmadds f1, f4, f3, f1
/* 00000900 000009C4  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 00000904 000009C8  EC 42 01 3A */	fmadds f2, f2, f4, f0
/* 00000908 000009CC  C0 87 00 00 */	lfs f4, 0x0(r7)
/* 0000090C 000009D0  D0 21 00 08 */	stfs f1, 0x8(r1)
/* 00000910 000009D4  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 00000914 000009D8  4B FF F8 35 */	bl effKumokumoN64Entry
/* 00000918 000009DC  80 83 00 0C */	lwz r4, 0xc(r3)
/* 0000091C 000009E0  38 00 00 4C */	li r0, 0x4c
/* 00000920 000009E4  39 00 00 A7 */	li r8, 0xa7
/* 00000924 000009E8  38 E0 00 CA */	li r7, 0xca
/* 00000928 000009EC  90 04 00 18 */	stw r0, 0x18(r4)
/* 0000092C 000009F0  38 C0 00 7D */	li r6, 0x7d
/* 00000930 000009F4  38 A0 00 1B */	li r5, 0x1b
/* 00000934 000009F8  38 00 00 F5 */	li r0, 0xf5
/* 00000938 000009FC  80 83 00 0C */	lwz r4, 0xc(r3)
/* 0000093C 00000A00  91 04 00 1C */	stw r8, 0x1c(r4)
/* 00000940 00000A04  80 83 00 0C */	lwz r4, 0xc(r3)
/* 00000944 00000A08  90 E4 00 20 */	stw r7, 0x20(r4)
/* 00000948 00000A0C  80 83 00 0C */	lwz r4, 0xc(r3)
/* 0000094C 00000A10  90 C4 00 28 */	stw r6, 0x28(r4)
/* 00000950 00000A14  80 83 00 0C */	lwz r4, 0xc(r3)
/* 00000954 00000A18  90 A4 00 2C */	stw r5, 0x2c(r4)
/* 00000958 00000A1C  80 83 00 0C */	lwz r4, 0xc(r3)
/* 0000095C 00000A20  38 60 00 02 */	li r3, 0x2
/* 00000960 00000A24  90 04 00 30 */	stw r0, 0x30(r4)
/* 00000964 00000A28  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 00000968 00000A2C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 0000096C 00000A30  7C 08 03 A6 */	mtlr r0
/* 00000970 00000A34  38 21 00 30 */	addi r1, r1, 0x30
/* 00000974 00000A38  4E 80 00 20 */	blr
.endfn _clauda_breath_effect_ready

# .text:0x28C | 0x978 | size: 0x1C
.fn _status_window_off, local
/* 00000978 00000A3C  3C 60 00 00 */	lis r3, _battleWorkPointer@ha
/* 0000097C 00000A40  38 00 00 01 */	li r0, 0x1
/* 00000980 00000A44  38 83 00 00 */	addi r4, r3, _battleWorkPointer@l
/* 00000984 00000A48  38 60 00 02 */	li r3, 0x2
/* 00000988 00000A4C  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000098C 00000A50  90 04 27 3C */	stw r0, 0x273c(r4)
/* 00000990 00000A54  4E 80 00 20 */	blr
.endfn _status_window_off

# 0x00001AA0..0x00001BE0 | size: 0x140
.rodata
.balign 8

# .rodata:0x0 | 0x1AA0 | size: 0x11
.obj str_btl_un_act_mario_nok_00002500, local
	.string "btl_un_act_mario"
.endobj str_btl_un_act_mario_nok_00002500

# .rodata:0x11 | 0x1AB1 | size: 0x3
.obj gap_03_00001AB1_rodata, global
.hidden gap_03_00001AB1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001AB1_rodata

# .rodata:0x14 | 0x1AB4 | size: 0x10
.obj str_SFX_BTL_DAMAGE1_nok_00002514, local
	.string "SFX_BTL_DAMAGE1"
.endobj str_SFX_BTL_DAMAGE1_nok_00002514

# .rodata:0x24 | 0x1AC4 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_nok_00002524, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_nok_00002524

# .rodata:0x39 | 0x1AD9 | size: 0x3
.obj gap_03_00001AD9_rodata, global
.hidden gap_03_00001AD9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001AD9_rodata

# .rodata:0x3C | 0x1ADC | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_nok_0000253c, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_nok_0000253c

# .rodata:0x50 | 0x1AF0 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_nok_00002550, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_nok_00002550

# .rodata:0x69 | 0x1B09 | size: 0x3
.obj gap_03_00001B09_rodata, global
.hidden gap_03_00001B09_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001B09_rodata

# .rodata:0x6C | 0x1B0C | size: 0x7
.obj str_EM_S_1_nok_0000256c, local
	.string "EM_S_1"
.endobj str_EM_S_1_nok_0000256c

# .rodata:0x73 | 0x1B13 | size: 0x1
.obj gap_03_00001B13_rodata, global
.hidden gap_03_00001B13_rodata
	.byte 0x00
.endobj gap_03_00001B13_rodata

# .rodata:0x74 | 0x1B14 | size: 0x8
.obj str_KNP_S_1_nok_00002574, local
	.string "KNP_S_1"
.endobj str_KNP_S_1_nok_00002574

# .rodata:0x7C | 0x1B1C | size: 0x7
.obj str_EM_D_1_nok_0000257c, local
	.string "EM_D_1"
.endobj str_EM_D_1_nok_0000257c

# .rodata:0x83 | 0x1B23 | size: 0x1
.obj gap_03_00001B23_rodata, global
.hidden gap_03_00001B23_rodata
	.byte 0x00
.endobj gap_03_00001B23_rodata

# .rodata:0x84 | 0x1B24 | size: 0x7
.obj str_EM_R_1_nok_00002584, local
	.string "EM_R_1"
.endobj str_EM_R_1_nok_00002584

# .rodata:0x8B | 0x1B2B | size: 0x1
.obj gap_03_00001B2B_rodata, global
.hidden gap_03_00001B2B_rodata
	.byte 0x00
.endobj gap_03_00001B2B_rodata

# .rodata:0x8C | 0x1B2C | size: 0x7
.obj str_EM_W_1_nok_0000258c, local
	.string "EM_W_1"
.endobj str_EM_W_1_nok_0000258c

# .rodata:0x93 | 0x1B33 | size: 0x1
.obj gap_03_00001B33_rodata, global
.hidden gap_03_00001B33_rodata
	.byte 0x00
.endobj gap_03_00001B33_rodata

# .rodata:0x94 | 0x1B34 | size: 0x7
.obj str_EM_T_1_nok_00002594, local
	.string "EM_T_1"
.endobj str_EM_T_1_nok_00002594

# .rodata:0x9B | 0x1B3B | size: 0x1
.obj gap_03_00001B3B_rodata, global
.hidden gap_03_00001B3B_rodata
	.byte 0x00
.endobj gap_03_00001B3B_rodata

# .rodata:0x9C | 0x1B3C | size: 0x8
.obj str_c_mario_nok_0000259c, local
	.string "c_mario"
.endobj str_c_mario_nok_0000259c

# .rodata:0xA4 | 0x1B44 | size: 0x6
.obj str_ep_39_nok_000025a4, local
	.string "ep_39"
.endobj str_ep_39_nok_000025a4

# .rodata:0xAA | 0x1B4A | size: 0x2
.obj gap_03_00001B4A_rodata, global
.hidden gap_03_00001B4A_rodata
	.2byte 0x0000
.endobj gap_03_00001B4A_rodata

# .rodata:0xAC | 0x1B4C | size: 0x8
.obj str_PWD_A_7_nok_000025ac, local
	.string "PWD_A_7"
.endobj str_PWD_A_7_nok_000025ac

# .rodata:0xB4 | 0x1B54 | size: 0x8
.obj str_EM_J_1B_nok_000025b4, local
	.string "EM_J_1B"
.endobj str_EM_J_1B_nok_000025b4

# .rodata:0xBC | 0x1B5C | size: 0x8
.obj str_EM_J_1D_nok_000025bc, local
	.string "EM_J_1D"
.endobj str_EM_J_1D_nok_000025bc

# .rodata:0xC4 | 0x1B64 | size: 0x4
.obj str_hit_nok_000025c4, local
	.string "hit"
.endobj str_hit_nok_000025c4

# .rodata:0xC8 | 0x1B68 | size: 0x9
.obj str_PWD_A1_1_nok_000025c8, local
	.string "PWD_A1_1"
.endobj str_PWD_A1_1_nok_000025c8

# .rodata:0xD1 | 0x1B71 | size: 0x3
.obj gap_03_00001B71_rodata, global
.hidden gap_03_00001B71_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001B71_rodata

# .rodata:0xD4 | 0x1B74 | size: 0x8
.obj str_PWD_Y_1_nok_000025d4, local
	.string "PWD_Y_1"
.endobj str_PWD_Y_1_nok_000025d4

# .rodata:0xDC | 0x1B7C | size: 0x9
.obj str_PWD_A2_1_nok_000025dc, local
	.string "PWD_A2_1"
.endobj str_PWD_A2_1_nok_000025dc

# .rodata:0xE5 | 0x1B85 | size: 0x3
.obj gap_03_00001B85_rodata, global
.hidden gap_03_00001B85_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001B85_rodata

# .rodata:0xE8 | 0x1B88 | size: 0x9
.obj str_PWD_A2_2_nok_000025e8, local
	.string "PWD_A2_2"
.endobj str_PWD_A2_2_nok_000025e8

# .rodata:0xF1 | 0x1B91 | size: 0x3
.obj gap_03_00001B91_rodata, global
.hidden gap_03_00001B91_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001B91_rodata

# .rodata:0xF4 | 0x1B94 | size: 0x9
.obj str_PWD_A2_3_nok_000025f4, local
	.string "PWD_A2_3"
.endobj str_PWD_A2_3_nok_000025f4

# .rodata:0xFD | 0x1B9D | size: 0x3
.obj gap_03_00001B9D_rodata, global
.hidden gap_03_00001B9D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001B9D_rodata

# .rodata:0x100 | 0x1BA0 | size: 0x4
.obj str_A_1_nok_00002600, local
	.string "A_1"
.endobj str_A_1_nok_00002600

# .rodata:0x104 | 0x1BA4 | size: 0x4
.obj str_A_2_nok_00002604, local
	.string "A_2"
.endobj str_A_2_nok_00002604

# .rodata:0x108 | 0x1BA8 | size: 0x4
.obj str_R_1_nok_00002608, local
	.string "R_1"
.endobj str_R_1_nok_00002608

# .rodata:0x10C | 0x1BAC | size: 0x4
.obj str_Z_1_nok_0000260c, local
	.string "Z_1"
.endobj str_Z_1_nok_0000260c

# .rodata:0x110 | 0x1BB0 | size: 0x4
.obj str_W_1_nok_00002610, local
	.string "W_1"
.endobj str_W_1_nok_00002610

# .rodata:0x114 | 0x1BB4 | size: 0x4
.obj str_S_1_nok_00002614, local
	.string "S_1"
.endobj str_S_1_nok_00002614

# .rodata:0x118 | 0x1BB8 | size: 0x4
.obj float_15_nok_00002618, local
	.float 15
.endobj float_15_nok_00002618

# .rodata:0x11C | 0x1BBC | size: 0x4
.obj zero_nok_0000261c, local
	.float 0
.endobj zero_nok_0000261c

# .rodata:0x120 | 0x1BC0 | size: 0x4
.obj float_neg2_nok_00002620, local
	.float -2
.endobj float_neg2_nok_00002620

# .rodata:0x124 | 0x1BC4 | size: 0x4
.obj float_1_nok_00002624, local
	.float 1
.endobj float_1_nok_00002624

# .rodata:0x128 | 0x1BC8 | size: 0x4
.obj float_neg10_nok_00002628, local
	.float -10
.endobj float_neg10_nok_00002628
	.4byte 0x00000000

# .rodata:0x130 | 0x1BD0 | size: 0x8
.obj double_to_int_nok_00002630, local
	.double 4503601774854144
.endobj double_to_int_nok_00002630

# .rodata:0x138 | 0x1BD8 | size: 0x4
.obj float_25_nok_00002638, local
	.float 25
.endobj float_25_nok_00002638

# .rodata:0x13C | 0x1BDC | size: 0x4
.obj float_2_nok_0000263c, local
	.float 2
.endobj float_2_nok_0000263c

# 0x00007B00..0x00009830 | size: 0x1D30
.data
.balign 8

# .data:0x0 | 0x7B00 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x7B08 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x7B0C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x7B10 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x7B14 | size: 0x4
.obj gap_04_00007B14_data, global
.hidden gap_04_00007B14_data
	.4byte 0x00000000
.endobj gap_04_00007B14_data

# .data:0x18 | 0x7B18 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x7B20 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x7B24 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x7B28 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x7B30 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x7B34 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x7B38 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x7B3C | size: 0x4
.obj gap_04_00007B3C_data, global
.hidden gap_04_00007B3C_data
	.4byte 0x00000000
.endobj gap_04_00007B3C_data

# .data:0x40 | 0x7B40 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x7B48 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x7B4C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x7B50 | size: 0xC4
.obj unit_act_mario_20_data_7B50, global
	.4byte 0x000000B5
	.4byte str_btl_un_act_mario_nok_00002500
	.4byte 0x000A0000
	.4byte 0x01010100
	.4byte 0x00000064
	.4byte 0x0009001C
	.4byte 0x00180005
	.4byte 0x00190000
	.4byte 0x00000000
	.4byte 0x41600000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x41600000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41600000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41600000
	.4byte 0x4179999A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000FF00
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_BTL_DAMAGE1_nok_00002514
	.4byte str_SFX_BTL_DAMAGE_FIRE1_nok_00002524
	.4byte str_SFX_BTL_DAMAGE_ICE1_nok_0000253c
	.4byte str_SFX_BTL_DAMAGE_BIRIB_nok_00002550
	.4byte 0x00000000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_act_mario_20_data_7B50

# .data:0x114 | 0x7C14 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x7C19 | size: 0x3
.obj gap_04_00007C19_data, global
.hidden gap_04_00007C19_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00007C19_data

# .data:0x11C | 0x7C1C | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x7C21 | size: 0x3
.obj gap_04_00007C21_data, global
.hidden gap_04_00007C21_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00007C21_data

# .data:0x124 | 0x7C24 | size: 0x16
.obj regist, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.2byte 0x0000
.endobj regist

# .data:0x13A | 0x7C3A | size: 0x2
.obj gap_04_00007C3A_data, global
.hidden gap_04_00007C3A_data
	.2byte 0x0000
.endobj gap_04_00007C3A_data

# .data:0x13C | 0x7C3C | size: 0x38
.obj pose_table, local
	.4byte 0x0000001C
	.4byte str_EM_S_1_nok_0000256c
	.4byte 0x0000001F
	.4byte str_KNP_S_1_nok_00002574
	.4byte 0x00000027
	.4byte str_EM_D_1_nok_0000257c
	.4byte 0x0000002A
	.4byte str_EM_R_1_nok_00002584
	.4byte 0x00000028
	.4byte str_EM_W_1_nok_0000258c
	.4byte 0x00000041
	.4byte str_EM_T_1_nok_00002594
	.4byte 0x00000045
	.4byte str_EM_S_1_nok_0000256c
.endobj pose_table

# .data:0x174 | 0x7C74 | size: 0x8
.obj data_table, local
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x17C | 0x7C7C | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_act_mario_nok_00002500
	.4byte str_c_mario_nok_0000259c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xC0A00000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte pose_table
.endobj parts

# .data:0x1C8 | 0x7CC8 | size: 0x3C
.obj init_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventWait
	.4byte 0xFFFFFFFE
	.4byte wait_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventEntry
	.4byte 0xFFFFFFFE
	.4byte battle_entry_event
	.4byte 0x0001005B
	.4byte _status_window_off
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x204 | 0x7D04 | size: 0x28
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

# .data:0x22C | 0x7D2C | size: 0x8
.obj phase_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0x234 | 0x7D34 | size: 0x14
.obj attack_event, local
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x248 | 0x7D48 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x260 | 0x7D60 | size: 0x180
.obj entry_unit_data, local
	.4byte unit_act_clauda_20_data_7528
	.4byte 0x00000000
	.4byte 0x04000004
	.4byte 0xC30C0000
	.4byte 0x00000000
	.4byte 0x40A00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.L_00007D90:
	.4byte unit_act_teresa_20_data_9880
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42340000
	.4byte 0x42200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.L_00007DC0:
	.4byte unit_act_teresa_20_data_9880
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42AA0000
	.4byte 0x42200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.L_00007DF0:
	.4byte unit_act_atmic_teresa_20_data_7308
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x43160000
	.4byte 0x42200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.L_00007E20:
	.4byte unit_act_kinopio_20_data_7930
	.4byte 0x02000000
	.4byte 0x04000004
	.4byte 0xC2960000
	.4byte 0x00000000
	.4byte 0xC2200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.L_00007E50:
	.4byte unit_act_kinopio_20_data_7930
	.4byte 0x02000000
	.4byte 0x04000004
	.4byte 0xC1700000
	.4byte 0x00000000
	.4byte 0xC2200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.L_00007E80:
	.4byte unit_act_kinopiko_20_data_7710
	.4byte 0x02000000
	.4byte 0x04000004
	.4byte 0xC2340000
	.4byte 0x00000000
	.4byte 0xC2200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.L_00007EB0:
	.4byte unitdata_Party_Christine
	.4byte 0x02000000
	.4byte 0x04000004
	.4byte 0x00000000
	.4byte 0xC2480000
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj entry_unit_data

# .data:0x3E0 | 0x7EE0 | size: 0x2A0
.obj battle_entry_event, local
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFD
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_GetStageSize
	.4byte 0xFE363C86
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0x00020037
	.4byte 0xFE363C86
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFD
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFD
	.4byte 0xFE363C86
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitId
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SpawnUnit
	.4byte 0xFE363C83
	.4byte entry_unit_data
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C83
	.4byte 0x0004005B
	.4byte btlevtcmd_SpawnUnit
	.4byte 0xFE363C83
	.rel entry_unit_data, .L_00007D90
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C83
	.4byte 0x0004005B
	.4byte btlevtcmd_SpawnUnit
	.4byte 0xFE363C83
	.rel entry_unit_data, .L_00007DC0
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xFE363C83
	.4byte 0x0004005B
	.4byte btlevtcmd_SpawnUnit
	.4byte 0xFE363C83
	.rel entry_unit_data, .L_00007DF0
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0xFE363C83
	.4byte 0x0004005B
	.4byte btlevtcmd_SpawnUnit
	.4byte 0xFE363C83
	.rel entry_unit_data, .L_00007E20
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SpawnUnit
	.4byte 0xFE363C83
	.rel entry_unit_data, .L_00007E50
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000006
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SpawnUnit
	.4byte 0xFE363C83
	.rel entry_unit_data, .L_00007E80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000007
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SpawnUnit
	.4byte 0xFE363C83
	.rel entry_unit_data, .L_00007EB0
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000008
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte _battle_event
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_ep_39_nok_000025a4
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte btlevtcmd_onoff_battleflag
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x00000002
	.4byte 0x00000001
.endobj battle_entry_event

# .data:0x680 | 0x8180 | size: 0x26C
.obj _battle_event, local
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte _act_mario_jump_attack
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C85
	.4byte 0x0003005B
	.4byte btlevtcmd_GetBodyId
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte _act_clauda_press_attack
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte _act_clauda_breath_attack
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte str_PWD_A_7_nok_000025ac
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x0000001C
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C85
	.4byte 0x0003005B
	.4byte btlevtcmd_GetBodyId
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x00000041
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0001005E
	.4byte _act_teresa_attack
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x0000001C
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xFE363C85
	.4byte 0x0003005B
	.4byte btlevtcmd_GetBodyId
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x00000041
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0001005E
	.4byte _act_teresa_attack
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x0000001C
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0xFE363C85
	.4byte 0x0003005B
	.4byte btlevtcmd_GetBodyId
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x00000041
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0001005E
	.4byte _act_atmic_teresa_press_attack
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x0000001C
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xFE363C85
	.4byte 0x0003005B
	.4byte btlevtcmd_GetBodyId
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x00000041
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x0000001C
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000007
	.4byte 0xFE363C85
	.4byte 0x0003005B
	.4byte btlevtcmd_GetBodyId
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x00000041
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x0000001C
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj _battle_event

# .data:0x8EC | 0x83EC | size: 0x84
.obj _act_target_enemy, local
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C83
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xFE363C83
	.4byte 0x0000002A
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0xFE363C83
	.4byte 0x00000031
	.4byte 0x0003005B
	.4byte btlevtcmd_GetBodyId
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000002
	.4byte 0x00000001
.endobj _act_target_enemy

# .data:0x970 | 0x8470 | size: 0x68
.obj _act_target_mario, local
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0x0000002A
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C83
	.4byte 0x00000031
	.4byte 0x0003005B
	.4byte btlevtcmd_GetBodyId
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000002
	.4byte 0x00000001
.endobj _act_target_mario

# .data:0x9D8 | 0x84D8 | size: 0x3C0
.obj _act_mario_jump_attack, local
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000014
	.4byte 0xF24A7A80
	.4byte 0xF24A7D4C
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000041
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0001005E
	.4byte _act_target_enemy
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7D4C
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002A
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFFFFFFEC
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0xFE363C86
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C86
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8680
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_J_1B_nok_000025b4
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000024
	.4byte 0x0006005B
	.4byte btlevtcmd_MarioJumpParam
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C86
	.4byte 0x0008005B
	.4byte btlevtcmd_MarioJumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C86
	.4byte 0x00000003
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_J_1D_nok_000025bc
	.4byte 0x0001000A
	.4byte 0x00000032
	.4byte 0x0001006F
	.4byte 0xFE363C8F
	.4byte 0x0002005B
	.4byte btlevtcmd_StopWaitEvent
	.4byte 0xFE363C83
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_hit_nok_000025c4
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A7E80
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_audience_joy_ending
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000027
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFE363C83
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_J_1B_nok_000025b4
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7D4C
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xF1194D80
	.4byte 0xFE363C81
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0000001B
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7CE6
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000000C
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000008
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000008
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_EM_R_1_nok_00002584
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A9280
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte btlevtcmd_WaitEventEnd
	.4byte 0xFE363C8F
	.4byte 0x00000002
	.4byte 0x00000001
.endobj _act_mario_jump_attack

# .data:0xD98 | 0x8898 | size: 0x578
.obj _act_clauda_press_attack, local
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x00000041
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0001005E
	.4byte _act_target_enemy
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFE363C85
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000010
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFE363C85
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte str_PWD_A1_1_nok_000025c8
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFE363C85
	.4byte 0xF24A7B4C
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFE363C85
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000003C
	.4byte 0xFFFFFFFF
	.4byte 0x0001006F
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000027
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init_float
	.4byte 0x00000005
	.4byte 0xF24A7E80
	.4byte 0xF24A7B19
	.4byte 0x0000000A
	.4byte 0x00010005
	.4byte 0x0000000B
	.4byte 0x0003005B
	.4byte evt_sub_intpl_get_float
	.4byte 0xFE363C87
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetScale
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetScale
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C87
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init_float
	.4byte 0x00000005
	.4byte 0xF24A7B19
	.4byte 0xF24A7F80
	.4byte 0x0000000A
	.4byte 0x00010005
	.4byte 0x0000000B
	.4byte 0x0003005B
	.4byte evt_sub_intpl_get_float
	.4byte 0xFE363C87
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetScale
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetScale
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C87
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init_float
	.4byte 0x00000007
	.4byte 0xF24A7F80
	.4byte 0xF24A7E80
	.4byte 0x0000001E
	.4byte 0x00010005
	.4byte 0x0000001F
	.4byte 0x0003005B
	.4byte evt_sub_intpl_get_float
	.4byte 0xFE363C87
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetScale
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetScale
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C87
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0000001C
	.4byte 0x00000070
	.4byte 0x0002005B
	.4byte btlevtcmd_JumpContinue
	.4byte 0xFE363C85
	.4byte 0x0001006F
	.4byte 0xFE363C8E
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init_float
	.4byte 0x0000000B
	.4byte 0xF24A7E80
	.4byte 0xF24A7C19
	.4byte 0x0000000A
	.4byte 0x00010005
	.4byte 0x0000000A
	.4byte 0x0003005B
	.4byte evt_sub_intpl_get_float
	.4byte 0xFE363C87
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetScale
	.4byte 0xFE363C85
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetScale
	.4byte 0xFE363C85
	.4byte 0xFE363C80
	.4byte 0xFE363C87
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init_float
	.4byte 0x0000000B
	.4byte 0xF24A7C19
	.4byte 0xF24A7E80
	.4byte 0x00000006
	.4byte 0x00010005
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_sub_intpl_get_float
	.4byte 0xFE363C87
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetScale
	.4byte 0xFE363C85
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetScale
	.4byte 0xFE363C85
	.4byte 0xFE363C80
	.4byte 0xFE363C87
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init_float
	.4byte 0x0000000B
	.4byte 0xF24A7E80
	.4byte 0xF24A8080
	.4byte 0x0000000A
	.4byte 0x00010005
	.4byte 0x0000000A
	.4byte 0x0003005B
	.4byte evt_sub_intpl_get_float
	.4byte 0xFE363C87
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetScale
	.4byte 0xFE363C85
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetScale
	.4byte 0xFE363C85
	.4byte 0xFE363C87
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init_float
	.4byte 0x0000000B
	.4byte 0xF24A8080
	.4byte 0xF24A7E80
	.4byte 0x00000006
	.4byte 0x00010005
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_sub_intpl_get_float
	.4byte 0xFE363C87
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetScale
	.4byte 0xFE363C85
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetScale
	.4byte 0xFE363C85
	.4byte 0xFE363C87
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C85
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFE363C85
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFE363C85
	.4byte 0xF24A7BB3
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFE363C85
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000012
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte str_PWD_Y_1_nok_000025d4
	.4byte 0x0001005B
	.4byte evt_audience_joy_ending
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte btlevtcmd_WaitEventEnd
	.4byte 0xFE363C8E
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFE363C85
	.4byte 0xF24A9280
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x00000028
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFE363C85
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte btlevtcmd_GetMoveFrame
	.4byte 0xFE363C85
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A9280
	.4byte 0xFE363C89
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFE363C85
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C89
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x0000001C
	.4byte 0x0002005B
	.4byte btlevtcmd_WaitEventEnd
	.4byte 0xFE363C8F
	.4byte 0x00000002
	.4byte 0x00000001
.endobj _act_clauda_press_attack

# .data:0x1310 | 0x8E10 | size: 0x434
.obj _act_clauda_breath_attack, local
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFE363C85
	.4byte 0x00000014
	.4byte 0xF24A7A80
	.4byte 0xF24A7D4C
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x00000041
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0001005B
	.4byte _clauda_breath_effect_ready
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte str_PWD_A2_1_nok_000025dc
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeWaitPlayComplete
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte str_PWD_A2_2_nok_000025e8
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeWaitPlayComplete
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte str_PWD_A2_3_nok_000025f4
	.4byte 0x0002005B
	.4byte _clauda_breath_effect_fire
	.4byte 0xFE363C8C
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte btlevtcmd_GetBodyId
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0001006F
	.4byte 0xFE363C8D
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_hit_nok_000025c4
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A7E80
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_audience_joy_ending
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000027
	.4byte 0x00010005
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte btlevtcmd_SetDispOffset
	.4byte 0xFE363C83
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte btlevtcmd_SetDispOffset
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0000001C
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte btlevtcmd_GetBodyId
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0001006F
	.4byte 0xFE363C8E
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_hit_nok_000025c4
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A7E80
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_audience_joy_ending
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000027
	.4byte 0x00010005
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte btlevtcmd_SetDispOffset
	.4byte 0xFE363C83
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte btlevtcmd_SetDispOffset
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0000001C
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte btlevtcmd_GetBodyId
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0001006F
	.4byte 0xFE363C8F
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_hit_nok_000025c4
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A7E80
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_audience_joy_ending
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000027
	.4byte 0x00010005
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte btlevtcmd_SetDispOffset
	.4byte 0xFE363C83
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte btlevtcmd_SetDispOffset
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0000001C
	.4byte 0x00000070
	.4byte 0x00010009
	.4byte 0x00000078
	.4byte 0x0002005B
	.4byte evt_eff_delete_ptr
	.4byte 0xFE363C8C
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte str_PWD_Y_1_nok_000025d4
	.4byte 0x0001005B
	.4byte evt_audience_joy_ending
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x0000001C
	.4byte 0x00000002
	.4byte 0x00000001
.endobj _act_clauda_breath_attack

# .data:0x1744 | 0x9244 | size: 0x2F8
.obj _act_teresa_attack, local
	.4byte 0x0001005E
	.4byte _act_target_mario
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x0000002A
	.4byte 0x0000006E
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x000000FF
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0x00000100
	.4byte 0x00010005
	.4byte 0x00000010
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020036
	.4byte 0xFE363C87
	.4byte 0x00000010
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x00000006
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte str_A_1_nok_00002600
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0xFFFFFFFF
	.4byte 0x00010005
	.4byte 0x00000008
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C87
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFE363C85
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFE363C85
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000003C
	.4byte 0xFFFFFFFB
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_SetAlpha
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x000000FF
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte str_A_2_nok_00002604
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0001006F
	.4byte 0xFE363C8F
	.4byte 0x0002005B
	.4byte btlevtcmd_StopWaitEvent
	.4byte 0xFE363C83
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_hit_nok_000025c4
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A7E80
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_audience_joy_ending
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000027
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFE363C83
	.4byte 0x00000070
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x0000002A
	.4byte 0x0006005B
	.4byte btlevtcmd_AddPartsRotate
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFE363C85
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFE363C85
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotate
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0000001C
	.4byte 0x0002005B
	.4byte btlevtcmd_WaitEventEnd
	.4byte 0xFE363C8F
	.4byte 0x00000002
	.4byte 0x00000001
.endobj _act_teresa_attack

# .data:0x1A3C | 0x953C | size: 0x2F0
.obj _act_atmic_teresa_press_attack, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte btlevtcmd_GetBodyId
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte str_R_1_nok_00002608
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFE363C85
	.4byte 0xFFFFFF83
	.4byte 0x00000064
	.4byte 0xFE363C82
	.4byte 0x00000078
	.4byte 0x0000000A
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte str_Z_1_nok_0000260c
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFE363C85
	.4byte 0xFFFFFF83
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0001006F
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte btlevtcmd_GetBodyId
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0002005B
	.4byte btlevtcmd_StopWaitEvent
	.4byte 0xFE363C83
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_hit_nok_000025c4
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A7E80
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_audience_joy_ending
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000027
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFE363C83
	.4byte 0x00000070
	.4byte 0x0001006F
	.4byte 0xFE363C8E
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte btlevtcmd_GetBodyId
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0002005B
	.4byte btlevtcmd_StopWaitEvent
	.4byte 0xFE363C83
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_hit_nok_000025c4
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A7E80
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_audience_joy_ending
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000027
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFE363C83
	.4byte 0x00000070
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte str_W_1_nok_00002610
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFE363C85
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFE363C85
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000003C
	.4byte 0x00000032
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte str_S_1_nok_00002614
	.4byte 0x00000002
	.4byte 0x00000001
.endobj _act_atmic_teresa_press_attack

# .data:0x1D2C | 0x982C | size: 0x4
.obj gap_04_0000982C_data, global
.hidden gap_04_0000982C_data
	.4byte 0x00000000
.endobj gap_04_0000982C_data
