.include "macros.inc"
.file "tou_00.o"

# 0x0000366C..0x000038F0 | size: 0x284
.text
.balign 4

# .text:0x0 | 0x366C | size: 0x98
.fn kemuri_move, local
/* 0000366C 00003730  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00003670 00003734  7C 08 02 A6 */	mflr r0
/* 00003674 00003738  90 01 00 34 */	stw r0, 0x34(r1)
/* 00003678 0000373C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 0000367C 00003740  F3 E1 00 28 */	psq_st f31, 0x28(r1), 0, qr0
/* 00003680 00003744  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 00003684 00003748  7C 7D 1B 78 */	mr r29, r3
/* 00003688 0000374C  7C 9E 23 78 */	mr r30, r4
/* 0000368C 00003750  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00003690 00003754  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00003694 00003758  4B FF FD 89 */	bl evtGetValue
/* 00003698 0000375C  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 0000369C 00003760  7C 7F 1B 78 */	mr r31, r3
/* 000036A0 00003764  7F A3 EB 78 */	mr r3, r29
/* 000036A4 00003768  4B FF FD 79 */	bl evtGetFloat
/* 000036A8 0000376C  FF E0 08 90 */	fmr f31, f1
/* 000036AC 00003770  7F E3 FB 78 */	mr r3, r31
/* 000036B0 00003774  4B FF FD 6D */	bl effNameToPtr
/* 000036B4 00003778  28 03 00 00 */	cmplwi r3, 0x0
/* 000036B8 0000377C  40 82 00 0C */	bne .L_000036C4
/* 000036BC 00003780  38 60 00 02 */	li r3, 0x2
/* 000036C0 00003784  48 00 00 28 */	b .L_000036E8
.L_000036C4:
/* 000036C4 00003788  2C 1E 00 00 */	cmpwi r30, 0x0
/* 000036C8 0000378C  41 82 00 0C */	beq .L_000036D4
/* 000036CC 00003790  38 60 00 00 */	li r3, 0x0
/* 000036D0 00003794  48 00 00 18 */	b .L_000036E8
.L_000036D4:
/* 000036D4 00003798  80 83 00 0C */	lwz r4, 0xc(r3)
/* 000036D8 0000379C  38 60 00 00 */	li r3, 0x0
/* 000036DC 000037A0  C0 04 00 04 */	lfs f0, 0x4(r4)
/* 000036E0 000037A4  EC 00 F8 2A */	fadds f0, f0, f31
/* 000036E4 000037A8  D0 04 00 04 */	stfs f0, 0x4(r4)
.L_000036E8:
/* 000036E8 000037AC  E3 E1 00 28 */	psq_l f31, 0x28(r1), 0, qr0
/* 000036EC 000037B0  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 000036F0 000037B4  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 000036F4 000037B8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 000036F8 000037BC  7C 08 03 A6 */	mtlr r0
/* 000036FC 000037C0  38 21 00 30 */	addi r1, r1, 0x30
/* 00003700 000037C4  4E 80 00 20 */	blr
.endfn kemuri_move

# .text:0x98 | 0x3704 | size: 0x48
.fn kpa_hikousen_yure, local
/* 00003704 000037C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00003708 000037CC  7C 08 02 A6 */	mflr r0
/* 0000370C 000037D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 00003710 000037D4  DB E1 00 08 */	stfd f31, 0x8(r1)
/* 00003714 000037D8  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00003718 000037DC  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000371C 000037E0  4B FF FD 01 */	bl evtGetFloat
/* 00003720 000037E4  FF E0 08 90 */	fmr f31, f1
/* 00003724 000037E8  3C 60 00 00 */	lis r3, str_飛クッパ_tou_0000ae80@ha
/* 00003728 000037EC  38 63 00 00 */	addi r3, r3, str_飛クッパ_tou_0000ae80@l
/* 0000372C 000037F0  4B FF FC F1 */	bl npcNameToPtr
/* 00003730 000037F4  D3 E3 01 B8 */	stfs f31, 0x1b8(r3)
/* 00003734 000037F8  38 60 00 02 */	li r3, 0x2
/* 00003738 000037FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0000373C 00003800  CB E1 00 08 */	lfd f31, 0x8(r1)
/* 00003740 00003804  7C 08 03 A6 */	mtlr r0
/* 00003744 00003808  38 21 00 10 */	addi r1, r1, 0x10
/* 00003748 0000380C  4E 80 00 20 */	blr
.endfn kpa_hikousen_yure

# .text:0xE0 | 0x374C | size: 0xE0
.fn npc_set_pos, local
/* 0000374C 00003810  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 00003750 00003814  7C 08 02 A6 */	mflr r0
/* 00003754 00003818  90 01 00 44 */	stw r0, 0x44(r1)
/* 00003758 0000381C  39 61 00 40 */	addi r11, r1, 0x40
/* 0000375C 00003820  4B FF FC C1 */	bl _savefpr_29
/* 00003760 00003824  BF A1 00 1C */	stmw r29, 0x1c(r1)
/* 00003764 00003828  7C 7D 1B 78 */	mr r29, r3
/* 00003768 0000382C  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 0000376C 00003830  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00003770 00003834  4B FF FC AD */	bl evtGetValue
/* 00003774 00003838  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00003778 0000383C  7C 7E 1B 78 */	mr r30, r3
/* 0000377C 00003840  7F A3 EB 78 */	mr r3, r29
/* 00003780 00003844  4B FF FC 9D */	bl evtGetFloat
/* 00003784 00003848  FF A0 08 90 */	fmr f29, f1
/* 00003788 0000384C  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 0000378C 00003850  7F A3 EB 78 */	mr r3, r29
/* 00003790 00003854  4B FF FC 8D */	bl evtGetFloat
/* 00003794 00003858  FF C0 08 90 */	fmr f30, f1
/* 00003798 0000385C  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 0000379C 00003860  7F A3 EB 78 */	mr r3, r29
/* 000037A0 00003864  4B FF FC 7D */	bl evtGetFloat
/* 000037A4 00003868  FF E0 08 90 */	fmr f31, f1
/* 000037A8 0000386C  7F C3 F3 78 */	mr r3, r30
/* 000037AC 00003870  4B FF FC 71 */	bl npcNameToPtr
/* 000037B0 00003874  3C 80 00 00 */	lis r4, vec3_tou_0000ae4c@ha
/* 000037B4 00003878  38 A4 00 00 */	addi r5, r4, vec3_tou_0000ae4c@l
/* 000037B8 0000387C  80 05 00 00 */	lwz r0, 0x0(r5)
/* 000037BC 00003880  80 85 00 04 */	lwz r4, 0x4(r5)
/* 000037C0 00003884  90 01 00 08 */	stw r0, 0x8(r1)
/* 000037C4 00003888  80 05 00 08 */	lwz r0, 0x8(r5)
/* 000037C8 0000388C  90 81 00 0C */	stw r4, 0xc(r1)
/* 000037CC 00003890  D3 A1 00 08 */	stfs f29, 0x8(r1)
/* 000037D0 00003894  90 01 00 10 */	stw r0, 0x10(r1)
/* 000037D4 00003898  80 01 00 08 */	lwz r0, 0x8(r1)
/* 000037D8 0000389C  D3 C1 00 0C */	stfs f30, 0xc(r1)
/* 000037DC 000038A0  D3 E1 00 10 */	stfs f31, 0x10(r1)
/* 000037E0 000038A4  80 81 00 0C */	lwz r4, 0xc(r1)
/* 000037E4 000038A8  90 03 00 98 */	stw r0, 0x98(r3)
/* 000037E8 000038AC  80 01 00 10 */	lwz r0, 0x10(r1)
/* 000037EC 000038B0  90 83 00 9C */	stw r4, 0x9c(r3)
/* 000037F0 000038B4  90 03 00 A0 */	stw r0, 0xa0(r3)
/* 000037F4 000038B8  80 83 00 98 */	lwz r4, 0x98(r3)
/* 000037F8 000038BC  80 03 00 9C */	lwz r0, 0x9c(r3)
/* 000037FC 000038C0  90 83 00 8C */	stw r4, 0x8c(r3)
/* 00003800 000038C4  90 03 00 90 */	stw r0, 0x90(r3)
/* 00003804 000038C8  80 03 00 A0 */	lwz r0, 0xa0(r3)
/* 00003808 000038CC  90 03 00 94 */	stw r0, 0x94(r3)
/* 0000380C 000038D0  38 60 00 02 */	li r3, 0x2
/* 00003810 000038D4  39 61 00 40 */	addi r11, r1, 0x40
/* 00003814 000038D8  4B FF FC 09 */	bl _restfpr_29
/* 00003818 000038DC  BB A1 00 1C */	lmw r29, 0x1c(r1)
/* 0000381C 000038E0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 00003820 000038E4  7C 08 03 A6 */	mtlr r0
/* 00003824 000038E8  38 21 00 40 */	addi r1, r1, 0x40
/* 00003828 000038EC  4E 80 00 20 */	blr
.endfn npc_set_pos

# .text:0x1C0 | 0x382C | size: 0xC4
.fn time_shift, local
/* 0000382C 000038F0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00003830 000038F4  7C 08 02 A6 */	mflr r0
/* 00003834 000038F8  90 01 00 24 */	stw r0, 0x24(r1)
/* 00003838 000038FC  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 0000383C 00003900  7C 7F 1B 78 */	mr r31, r3
/* 00003840 00003904  38 60 00 04 */	li r3, 0x4
/* 00003844 00003908  4B FF FB D9 */	bl camGetPtr
/* 00003848 0000390C  3D 80 80 00 */	lis r12, 0x8000
/* 0000384C 00003910  39 60 03 E8 */	li r11, 0x3e8
/* 00003850 00003914  80 0C 00 F8 */	lwz r0, 0xf8(r12)
/* 00003854 00003918  38 C0 F8 30 */	li r6, -0x7d0
/* 00003858 0000391C  39 00 00 00 */	li r8, 0x0
/* 0000385C 00003920  38 A0 F2 54 */	li r5, -0xdac
/* 00003860 00003924  54 00 F0 BE */	srwi r0, r0, 2
/* 00003864 00003928  39 40 FF FF */	li r10, -0x1
/* 00003868 0000392C  7D 20 5B 96 */	divwu r9, r0, r11
/* 0000386C 00003930  83 A3 00 74 */	lwz r29, 0x74(r3)
/* 00003870 00003934  83 C3 00 70 */	lwz r30, 0x70(r3)
/* 00003874 00003938  7C 09 30 16 */	mulhwu r0, r9, r6
/* 00003878 0000393C  7C 88 31 D6 */	mullw r4, r8, r6
/* 0000387C 00003940  7C E9 31 D6 */	mullw r7, r9, r6
/* 00003880 00003944  7C C0 22 14 */	add r6, r0, r4
/* 00003884 00003948  7C 89 51 D6 */	mullw r4, r9, r10
/* 00003888 0000394C  7C 1D 38 14 */	addc r0, r29, r7
/* 0000388C 00003950  90 03 00 74 */	stw r0, 0x74(r3)
/* 00003890 00003954  7C 06 22 14 */	add r0, r6, r4
/* 00003894 00003958  7C 1E 01 14 */	adde r0, r30, r0
/* 00003898 0000395C  90 03 00 70 */	stw r0, 0x70(r3)
/* 0000389C 00003960  7C 88 29 D6 */	mullw r4, r8, r5
/* 000038A0 00003964  38 60 00 02 */	li r3, 0x2
/* 000038A4 00003968  80 0C 00 F8 */	lwz r0, 0xf8(r12)
/* 000038A8 0000396C  81 3F 01 9C */	lwz r9, 0x19c(r31)
/* 000038AC 00003970  54 00 F0 BE */	srwi r0, r0, 2
/* 000038B0 00003974  81 1F 01 98 */	lwz r8, 0x198(r31)
/* 000038B4 00003978  7C E0 5B 96 */	divwu r7, r0, r11
/* 000038B8 0000397C  7C 07 28 16 */	mulhwu r0, r7, r5
/* 000038BC 00003980  7C C7 29 D6 */	mullw r6, r7, r5
/* 000038C0 00003984  7C A0 22 14 */	add r5, r0, r4
/* 000038C4 00003988  7C 87 51 D6 */	mullw r4, r7, r10
/* 000038C8 0000398C  7C 09 30 14 */	addc r0, r9, r6
/* 000038CC 00003990  90 1F 01 9C */	stw r0, 0x19c(r31)
/* 000038D0 00003994  7C 05 22 14 */	add r0, r5, r4
/* 000038D4 00003998  7C 08 01 14 */	adde r0, r8, r0
/* 000038D8 0000399C  90 1F 01 98 */	stw r0, 0x198(r31)
/* 000038DC 000039A0  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 000038E0 000039A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 000038E4 000039A8  7C 08 03 A6 */	mtlr r0
/* 000038E8 000039AC  38 21 00 20 */	addi r1, r1, 0x20
/* 000038EC 000039B0  4E 80 00 20 */	blr
.endfn time_shift

# 0x00002048..0x00002328 | size: 0x2E0
.rodata
.balign 8

# .rodata:0x0 | 0x2048 | size: 0xA
.obj str_tou_enkei_tou_0000ad00, local
	.string "tou_enkei"
.endobj str_tou_enkei_tou_0000ad00

# .rodata:0xA | 0x2052 | size: 0x2
.obj gap_03_00002052_rodata, global
.hidden gap_03_00002052_rodata
	.2byte 0x0000
.endobj gap_03_00002052_rodata

# .rodata:0xC | 0x2054 | size: 0x12
.obj str_balloon_heiho_n64_tou_0000ad0c, local
	.string "balloon_heiho_n64"
.endobj str_balloon_heiho_n64_tou_0000ad0c

# .rodata:0x1E | 0x2066 | size: 0x2
.obj gap_03_00002066_rodata, global
.hidden gap_03_00002066_rodata
	.2byte 0x0000
.endobj gap_03_00002066_rodata

# .rodata:0x20 | 0x2068 | size: 0x7
.obj str_hane_1_tou_0000ad20, local
	.string "hane_1"
.endobj str_hane_1_tou_0000ad20

# .rodata:0x27 | 0x206F | size: 0x1
.obj gap_03_0000206F_rodata, global
.hidden gap_03_0000206F_rodata
	.byte 0x00
.endobj gap_03_0000206F_rodata

# .rodata:0x28 | 0x2070 | size: 0x7
.obj str_hane_2_tou_0000ad28, local
	.string "hane_2"
.endobj str_hane_2_tou_0000ad28

# .rodata:0x2F | 0x2077 | size: 0x1
.obj gap_03_00002077_rodata, global
.hidden gap_03_00002077_rodata
	.byte 0x00
.endobj gap_03_00002077_rodata

# .rodata:0x30 | 0x2078 | size: 0xE
.obj str_BGM_STG3_URN1_tou_0000ad30, local
	.string "BGM_STG3_URN1"
.endobj str_BGM_STG3_URN1_tou_0000ad30

# .rodata:0x3E | 0x2086 | size: 0x2
.obj gap_03_00002086_rodata, global
.hidden gap_03_00002086_rodata
	.2byte 0x0000
.endobj gap_03_00002086_rodata

# .rodata:0x40 | 0x2088 | size: 0xA
.obj str_gondora_2_tou_0000ad40, local
	.string "gondora_2"
.endobj str_gondora_2_tou_0000ad40

# .rodata:0x4A | 0x2092 | size: 0x2
.obj gap_03_00002092_rodata, global
.hidden gap_03_00002092_rodata
	.2byte 0x0000
.endobj gap_03_00002092_rodata

# .rodata:0x4C | 0x2094 | size: 0x7
.obj str_hako_1_tou_0000ad4c, local
	.string "hako_1"
.endobj str_hako_1_tou_0000ad4c

# .rodata:0x53 | 0x209B | size: 0x1
.obj gap_03_0000209B_rodata, global
.hidden gap_03_0000209B_rodata
	.byte 0x00
.endobj gap_03_0000209B_rodata

# .rodata:0x54 | 0x209C | size: 0xA
.obj str_gondora_1_tou_0000ad54, local
	.string "gondora_1"
.endobj str_gondora_1_tou_0000ad54

# .rodata:0x5E | 0x20A6 | size: 0x2
.obj gap_03_000020A6_rodata, global
.hidden gap_03_000020A6_rodata
	.2byte 0x0000
.endobj gap_03_000020A6_rodata

# .rodata:0x60 | 0x20A8 | size: 0x7
.obj str_bou_10_tou_0000ad60, local
	.string "bou_10"
.endobj str_bou_10_tou_0000ad60

# .rodata:0x67 | 0x20AF | size: 0x1
.obj gap_03_000020AF_rodata, global
.hidden gap_03_000020AF_rodata
	.byte 0x00
.endobj gap_03_000020AF_rodata

# .rodata:0x68 | 0x20B0 | size: 0x6
.obj str_bou_9_tou_0000ad68, local
	.string "bou_9"
.endobj str_bou_9_tou_0000ad68

# .rodata:0x6E | 0x20B6 | size: 0x2
.obj gap_03_000020B6_rodata, global
.hidden gap_03_000020B6_rodata
	.2byte 0x0000
.endobj gap_03_000020B6_rodata

# .rodata:0x70 | 0x20B8 | size: 0x6
.obj str_bou_8_tou_0000ad70, local
	.string "bou_8"
.endobj str_bou_8_tou_0000ad70

# .rodata:0x76 | 0x20BE | size: 0x2
.obj gap_03_000020BE_rodata, global
.hidden gap_03_000020BE_rodata
	.2byte 0x0000
.endobj gap_03_000020BE_rodata

# .rodata:0x78 | 0x20C0 | size: 0x6
.obj str_bou_7_tou_0000ad78, local
	.string "bou_7"
.endobj str_bou_7_tou_0000ad78

# .rodata:0x7E | 0x20C6 | size: 0x2
.obj gap_03_000020C6_rodata, global
.hidden gap_03_000020C6_rodata
	.2byte 0x0000
.endobj gap_03_000020C6_rodata

# .rodata:0x80 | 0x20C8 | size: 0x6
.obj str_bou_4_tou_0000ad80, local
	.string "bou_4"
.endobj str_bou_4_tou_0000ad80

# .rodata:0x86 | 0x20CE | size: 0x2
.obj gap_03_000020CE_rodata, global
.hidden gap_03_000020CE_rodata
	.2byte 0x0000
.endobj gap_03_000020CE_rodata

# .rodata:0x88 | 0x20D0 | size: 0x6
.obj str_bou_2_tou_0000ad88, local
	.string "bou_2"
.endobj str_bou_2_tou_0000ad88

# .rodata:0x8E | 0x20D6 | size: 0x2
.obj gap_03_000020D6_rodata, global
.hidden gap_03_000020D6_rodata
	.2byte 0x0000
.endobj gap_03_000020D6_rodata

# .rodata:0x90 | 0x20D8 | size: 0x19
.obj str_SFX_STG3_AIR_SHIP_DR_tou_0000ad90, local
	.string "SFX_STG3_AIR_SHIP_DRIVE3"
.endobj str_SFX_STG3_AIR_SHIP_DR_tou_0000ad90

# .rodata:0xA9 | 0x20F1 | size: 0x3
.obj gap_03_000020F1_rodata, global
.hidden gap_03_000020F1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000020F1_rodata

# .rodata:0xAC | 0x20F4 | size: 0x9
.obj str_hikousen_tou_0000adac, local
	.string "hikousen"
.endobj str_hikousen_tou_0000adac

# .rodata:0xB5 | 0x20FD | size: 0x3
.obj gap_03_000020FD_rodata, global
.hidden gap_03_000020FD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000020FD_rodata

# .rodata:0xB8 | 0x2100 | size: 0x20
.obj str_SFX_STG3_AIR_SHIP_GO_tou_0000adb8, local
	.string "SFX_STG3_AIR_SHIP_GONDOLA_MOVE1"
.endobj str_SFX_STG3_AIR_SHIP_GO_tou_0000adb8

# .rodata:0xD8 | 0x2120 | size: 0x7
.obj str_tou_01_tou_0000add8, local
	.string "tou_01"
.endobj str_tou_01_tou_0000add8

# .rodata:0xDF | 0x2127 | size: 0x1
.obj gap_03_00002127_rodata, global
.hidden gap_03_00002127_rodata
	.byte 0x00
.endobj gap_03_00002127_rodata

# .rodata:0xE0 | 0x2128 | size: 0x7
.obj str_hako_2_tou_0000ade0, local
	.string "hako_2"
.endobj str_hako_2_tou_0000ade0

# .rodata:0xE7 | 0x212F | size: 0x1
.obj gap_03_0000212F_rodata, global
.hidden gap_03_0000212F_rodata
	.byte 0x00
.endobj gap_03_0000212F_rodata

# .rodata:0xE8 | 0x2130 | size: 0x7
.obj str_bou_20_tou_0000ade8, local
	.string "bou_20"
.endobj str_bou_20_tou_0000ade8

# .rodata:0xEF | 0x2137 | size: 0x1
.obj gap_03_00002137_rodata, global
.hidden gap_03_00002137_rodata
	.byte 0x00
.endobj gap_03_00002137_rodata

# .rodata:0xF0 | 0x2138 | size: 0x7
.obj str_bou_19_tou_0000adf0, local
	.string "bou_19"
.endobj str_bou_19_tou_0000adf0

# .rodata:0xF7 | 0x213F | size: 0x1
.obj gap_03_0000213F_rodata, global
.hidden gap_03_0000213F_rodata
	.byte 0x00
.endobj gap_03_0000213F_rodata

# .rodata:0xF8 | 0x2140 | size: 0x7
.obj str_bou_17_tou_0000adf8, local
	.string "bou_17"
.endobj str_bou_17_tou_0000adf8

# .rodata:0xFF | 0x2147 | size: 0x1
.obj gap_03_00002147_rodata, global
.hidden gap_03_00002147_rodata
	.byte 0x00
.endobj gap_03_00002147_rodata

# .rodata:0x100 | 0x2148 | size: 0x7
.obj str_bou_18_tou_0000ae00, local
	.string "bou_18"
.endobj str_bou_18_tou_0000ae00

# .rodata:0x107 | 0x214F | size: 0x1
.obj gap_03_0000214F_rodata, global
.hidden gap_03_0000214F_rodata
	.byte 0x00
.endobj gap_03_0000214F_rodata

# .rodata:0x108 | 0x2150 | size: 0x7
.obj str_bou_12_tou_0000ae08, local
	.string "bou_12"
.endobj str_bou_12_tou_0000ae08

# .rodata:0x10F | 0x2157 | size: 0x1
.obj gap_03_00002157_rodata, global
.hidden gap_03_00002157_rodata
	.byte 0x00
.endobj gap_03_00002157_rodata

# .rodata:0x110 | 0x2158 | size: 0x7
.obj str_bou_14_tou_0000ae10, local
	.string "bou_14"
.endobj str_bou_14_tou_0000ae10

# .rodata:0x117 | 0x215F | size: 0x1
.obj gap_03_0000215F_rodata, global
.hidden gap_03_0000215F_rodata
	.byte 0x00
.endobj gap_03_0000215F_rodata

# .rodata:0x118 | 0x2160 | size: 0x19
.obj str_SFX_STG3_AIR_SHIP_DR_tou_0000ae18, local
	.string "SFX_STG3_AIR_SHIP_DRIVE4"
.endobj str_SFX_STG3_AIR_SHIP_DR_tou_0000ae18

# .rodata:0x131 | 0x2179 | size: 0x3
.obj gap_03_00002179_rodata, global
.hidden gap_03_00002179_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002179_rodata

# .rodata:0x134 | 0x217C | size: 0x7
.obj str_gor_04_tou_0000ae34, local
	.string "gor_04"
.endobj str_gor_04_tou_0000ae34

# .rodata:0x13B | 0x2183 | size: 0x1
.obj gap_03_00002183_rodata, global
.hidden gap_03_00002183_rodata
	.byte 0x00
.endobj gap_03_00002183_rodata

# .rodata:0x13C | 0x2184 | size: 0x10
.obj str_hikousen_return_tou_0000ae3c, local
	.string "hikousen_return"
.endobj str_hikousen_return_tou_0000ae3c

# .rodata:0x14C | 0x2194 | size: 0xC
.obj vec3_tou_0000ae4c, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj vec3_tou_0000ae4c

# .rodata:0x158 | 0x21A0 | size: 0x8
.obj str_kosyo01_tou_0000ae58, local
	.string "kosyo01"
.endobj str_kosyo01_tou_0000ae58

# .rodata:0x160 | 0x21A8 | size: 0x8
.obj str_kosyo02_tou_0000ae60, local
	.string "kosyo02"
.endobj str_kosyo02_tou_0000ae60

# .rodata:0x168 | 0x21B0 | size: 0x8
.obj str_kosyo03_tou_0000ae68, local
	.string "kosyo03"
.endobj str_kosyo03_tou_0000ae68

# .rodata:0x170 | 0x21B8 | size: 0x8
.obj str_kosyo04_tou_0000ae70, local
	.string "kosyo04"
.endobj str_kosyo04_tou_0000ae70

# .rodata:0x178 | 0x21C0 | size: 0x8
.obj str_kosyo05_tou_0000ae78, local
	.string "kosyo05"
.endobj str_kosyo05_tou_0000ae78

# .rodata:0x180 | 0x21C8 | size: 0x9
.obj str_飛クッパ_tou_0000ae80, local
	.4byte 0x94F2834E
	.4byte 0x83628370
	.byte 0x00
.endobj str_飛クッパ_tou_0000ae80

# .rodata:0x189 | 0x21D1 | size: 0x3
.obj gap_03_000021D1_rodata, global
.hidden gap_03_000021D1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000021D1_rodata

# .rodata:0x18C | 0x21D4 | size: 0x9
.obj str_HKPA_W_1_tou_0000ae8c, local
	.string "HKPA_W_1"
.endobj str_HKPA_W_1_tou_0000ae8c

# .rodata:0x195 | 0x21DD | size: 0x3
.obj gap_03_000021DD_rodata, global
.hidden gap_03_000021DD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000021DD_rodata

# .rodata:0x198 | 0x21E0 | size: 0x18
.obj str_SFX_KUPPA_AIRSHIP_MO_tou_0000ae98, local
	.string "SFX_KUPPA_AIRSHIP_MOVE1"
.endobj str_SFX_KUPPA_AIRSHIP_MO_tou_0000ae98

# .rodata:0x1B0 | 0x21F8 | size: 0x19
.obj str_SFX_KUPPA_AIRSHIP_BR_tou_0000aeb0, local
	.string "SFX_KUPPA_AIRSHIP_BREAK1"
.endobj str_SFX_KUPPA_AIRSHIP_BR_tou_0000aeb0

# .rodata:0x1C9 | 0x2211 | size: 0x3
.obj gap_03_00002211_rodata, global
.hidden gap_03_00002211_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002211_rodata

# .rodata:0x1CC | 0x2214 | size: 0x7
.obj str_kosyo1_tou_0000aecc, local
	.string "kosyo1"
.endobj str_kosyo1_tou_0000aecc

# .rodata:0x1D3 | 0x221B | size: 0x1
.obj gap_03_0000221B_rodata, global
.hidden gap_03_0000221B_rodata
	.byte 0x00
.endobj gap_03_0000221B_rodata

# .rodata:0x1D4 | 0x221C | size: 0xD
.obj str_kemuri12_n64_tou_0000aed4, local
	.string "kemuri12_n64"
.endobj str_kemuri12_n64_tou_0000aed4

# .rodata:0x1E1 | 0x2229 | size: 0x3
.obj gap_03_00002229_rodata, global
.hidden gap_03_00002229_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002229_rodata

# .rodata:0x1E4 | 0x222C | size: 0x7
.obj str_kosyo2_tou_0000aee4, local
	.string "kosyo2"
.endobj str_kosyo2_tou_0000aee4

# .rodata:0x1EB | 0x2233 | size: 0x1
.obj gap_03_00002233_rodata, global
.hidden gap_03_00002233_rodata
	.byte 0x00
.endobj gap_03_00002233_rodata

# .rodata:0x1EC | 0x2234 | size: 0x9
.obj str_HKPA_S_1_tou_0000aeec, local
	.string "HKPA_S_1"
.endobj str_HKPA_S_1_tou_0000aeec

# .rodata:0x1F5 | 0x223D | size: 0x3
.obj gap_03_0000223D_rodata, global
.hidden gap_03_0000223D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000223D_rodata

# .rodata:0x1F8 | 0x2240 | size: 0xD
.obj str_kpa_stg4_008_tou_0000aef8, local
	.string "kpa_stg4_008"
.endobj str_kpa_stg4_008_tou_0000aef8

# .rodata:0x205 | 0x224D | size: 0x3
.obj gap_03_0000224D_rodata, global
.hidden gap_03_0000224D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000224D_rodata

# .rodata:0x208 | 0x2250 | size: 0x9
.obj str_HKPA_O_1_tou_0000af08, local
	.string "HKPA_O_1"
.endobj str_HKPA_O_1_tou_0000af08

# .rodata:0x211 | 0x2259 | size: 0x3
.obj gap_03_00002259_rodata, global
.hidden gap_03_00002259_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002259_rodata

# .rodata:0x214 | 0x225C | size: 0x9
.obj str_HKPA_O_2_tou_0000af14, local
	.string "HKPA_O_2"
.endobj str_HKPA_O_2_tou_0000af14

# .rodata:0x21D | 0x2265 | size: 0x3
.obj gap_03_00002265_rodata, global
.hidden gap_03_00002265_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002265_rodata

# .rodata:0x220 | 0x2268 | size: 0xD
.obj str_kpa_stg4_009_tou_0000af20, local
	.string "kpa_stg4_009"
.endobj str_kpa_stg4_009_tou_0000af20

# .rodata:0x22D | 0x2275 | size: 0x3
.obj gap_03_00002275_rodata, global
.hidden gap_03_00002275_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002275_rodata

# .rodata:0x230 | 0x2278 | size: 0x9
.obj str_HKPA_O_3_tou_0000af30, local
	.string "HKPA_O_3"
.endobj str_HKPA_O_3_tou_0000af30

# .rodata:0x239 | 0x2281 | size: 0x3
.obj gap_03_00002281_rodata, global
.hidden gap_03_00002281_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002281_rodata

# .rodata:0x23C | 0x2284 | size: 0x1D
.obj str_SFX_VOICE_KOOPA_VEXA_tou_0000af3c, local
	.string "SFX_VOICE_KOOPA_VEXATIOUS2_2"
.endobj str_SFX_VOICE_KOOPA_VEXA_tou_0000af3c

# .rodata:0x259 | 0x22A1 | size: 0x3
.obj gap_03_000022A1_rodata, global
.hidden gap_03_000022A1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000022A1_rodata

# .rodata:0x25C | 0x22A4 | size: 0x18
.obj str_SFX_KUPPA_AIRSHIP_FA_tou_0000af5c, local
	.string "SFX_KUPPA_AIRSHIP_FALL1"
.endobj str_SFX_KUPPA_AIRSHIP_FA_tou_0000af5c

# .rodata:0x274 | 0x22BC | size: 0x7
.obj str_muj_20_tou_0000af74, local
	.string "muj_20"
.endobj str_muj_20_tou_0000af74

# .rodata:0x27B | 0x22C3 | size: 0x1
.obj gap_03_000022C3_rodata, global
.hidden gap_03_000022C3_rodata
	.byte 0x00
.endobj gap_03_000022C3_rodata

# .rodata:0x27C | 0x22C4 | size: 0x1
.obj zero_tou_0000af7c, local
	.byte 0x00
.endobj zero_tou_0000af7c

# .rodata:0x27D | 0x22C5 | size: 0x3
.obj gap_03_000022C5_rodata, global
.hidden gap_03_000022C5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000022C5_rodata

# .rodata:0x280 | 0x22C8 | size: 0x3
.obj str_me_tou_0000af80, local
	.string "me"
.endobj str_me_tou_0000af80

# .rodata:0x283 | 0x22CB | size: 0x1
.obj gap_03_000022CB_rodata, global
.hidden gap_03_000022CB_rodata
	.byte 0x00
.endobj gap_03_000022CB_rodata

# .rodata:0x284 | 0x22CC | size: 0x7
.obj str_modoru_tou_0000af84, local
	.string "modoru"
.endobj str_modoru_tou_0000af84

# .rodata:0x28B | 0x22D3 | size: 0x1
.obj gap_03_000022D3_rodata, global
.hidden gap_03_000022D3_rodata
	.byte 0x00
.endobj gap_03_000022D3_rodata

# .rodata:0x28C | 0x22D4 | size: 0x2
.obj str_S_tou_0000af8c, local
	.string "S"
.endobj str_S_tou_0000af8c

# .rodata:0x28E | 0x22D6 | size: 0x2
.obj gap_03_000022D6_rodata, global
.hidden gap_03_000022D6_rodata
	.2byte 0x0000
.endobj gap_03_000022D6_rodata

# .rodata:0x290 | 0x22D8 | size: 0xE
.obj str_ENV_STG3_TOU8_tou_0000af90, local
	.string "ENV_STG3_TOU8"
.endobj str_ENV_STG3_TOU8_tou_0000af90

# .rodata:0x29E | 0x22E6 | size: 0x2
.obj gap_03_000022E6_rodata, global
.hidden gap_03_000022E6_rodata
	.2byte 0x0000
.endobj gap_03_000022E6_rodata

# .rodata:0x2A0 | 0x22E8 | size: 0x4
.obj str_jet_tou_0000afa0, local
	.string "jet"
.endobj str_jet_tou_0000afa0

# .rodata:0x2A4 | 0x22EC | size: 0xC
.obj str_lightcoloer_tou_0000afa4, local
	.string "lightcoloer"
.endobj str_lightcoloer_tou_0000afa4

# .rodata:0x2B0 | 0x22F8 | size: 0xF
.obj str_coloer_light_1_tou_0000afb0, local
	.string "coloer_light_1"
.endobj str_coloer_light_1_tou_0000afb0

# .rodata:0x2BF | 0x2307 | size: 0x1
.obj gap_03_00002307_rodata, global
.hidden gap_03_00002307_rodata
	.byte 0x00
.endobj gap_03_00002307_rodata

# .rodata:0x2C0 | 0x2308 | size: 0xF
.obj str_coloer_light_2_tou_0000afc0, local
	.string "coloer_light_2"
.endobj str_coloer_light_2_tou_0000afc0

# .rodata:0x2CF | 0x2317 | size: 0x1
.obj gap_03_00002317_rodata, global
.hidden gap_03_00002317_rodata
	.byte 0x00
.endobj gap_03_00002317_rodata

# .rodata:0x2D0 | 0x2318 | size: 0xF
.obj str_coloer_light_3_tou_0000afd0, local
	.string "coloer_light_3"
.endobj str_coloer_light_3_tou_0000afd0

# .rodata:0x2DF | 0x2327 | size: 0x1
.obj gap_03_00002327_rodata, global
.hidden gap_03_00002327_rodata
	.byte 0x00
.endobj gap_03_00002327_rodata

# 0x00007978..0x00009480 | size: 0x1B08
.data
.balign 8

# .data:0x0 | 0x7978 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x7980 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x7984 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x7988 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x798C | size: 0x4
.obj gap_04_0000798C_data, global
.hidden gap_04_0000798C_data
	.4byte 0x00000000
.endobj gap_04_0000798C_data

# .data:0x18 | 0x7990 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x7998 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x799C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x79A0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x79A8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x79AC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x79B0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x79B4 | size: 0x4
.obj gap_04_000079B4_data, global
.hidden gap_04_000079B4_data
	.4byte 0x00000000
.endobj gap_04_000079B4_data

# .data:0x40 | 0x79B8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x79C0 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x79C4 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x79C8 | size: 0x154
.obj evt_tou_balloon, local
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_tou_enkei_tou_0000ad00
	.4byte 0xFE363C8D
	.4byte 0xFE363C8E
	.4byte 0xFE363C8F
	.4byte 0x00020036
	.4byte 0xFE363C8E
	.4byte 0x00000014
	.4byte 0x00020036
	.4byte 0xFE363C8F
	.4byte 0x00000032
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000032
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000064
	.4byte 0xFE363C8A
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0xFE363C8A
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000028
	.4byte 0xFE363C8A
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0xFE363C8A
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000028
	.4byte 0xFE363C8A
	.4byte 0x00020036
	.4byte 0xFE363C83
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0xFE363C8D
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0xFE363C8E
	.4byte 0x00020035
	.4byte 0xFE363C83
	.4byte 0xFE363C8F
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte 0x00000000
	.4byte str_balloon_heiho_n64_tou_0000ad0c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xF24A7A8A
	.4byte 0xF24A7C19
	.4byte 0x00000258
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x000001F4
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000012C
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_tou_balloon

# .data:0x1A4 | 0x7B1C | size: 0x108
.obj evt_light, local
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte 0xFE363C80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x0000000B
	.4byte 0xFFFFFFEC
	.4byte 0x00000014
	.4byte 0x0000003C
	.4byte 0x00010005
	.4byte 0x0000003D
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte 0xFE363C89
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000078
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x0000000B
	.4byte 0x00000014
	.4byte 0xFFFFFFEC
	.4byte 0x0000003C
	.4byte 0x00010005
	.4byte 0x0000003D
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte 0xFE363C89
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x000000B4
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x00010009
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_light

# .data:0x2AC | 0x7C24 | size: 0x1F4
.obj evt_wing, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000064
	.4byte 0xFE363C80
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x00010005
	.4byte 0x00000003
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x0000000C
	.4byte 0xFFFFFFF6
	.4byte 0x0000000A
	.4byte 0x0000000A
	.4byte 0x00010005
	.4byte 0x0000000B
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_hane_1_tou_0000ad20
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_hane_2_tou_0000ad28
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x0000000C
	.4byte 0x0000000A
	.4byte 0xFFFFFFF6
	.4byte 0x0000000A
	.4byte 0x00010005
	.4byte 0x0000000B
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_hane_1_tou_0000ad20
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_hane_2_tou_0000ad28
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x0000000C
	.4byte 0xFFFFFFF6
	.4byte 0x0000000A
	.4byte 0x0000001E
	.4byte 0x00010005
	.4byte 0x0000001F
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_hane_1_tou_0000ad20
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_hane_2_tou_0000ad28
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x0000000C
	.4byte 0x0000000A
	.4byte 0xFFFFFFF6
	.4byte 0x0000001E
	.4byte 0x00010005
	.4byte 0x0000001F
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_hane_1_tou_0000ad20
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_hane_2_tou_0000ad28
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_wing

# .data:0x4A0 | 0x7E18 | size: 0x494
.obj evt_to_tou, local
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFF830
	.4byte 0x000000F1
	.4byte 0x00000216
	.4byte 0xFFFFF830
	.4byte 0x00000091
	.4byte 0xFFFFFFF8
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte unk_801524c8
	.4byte 0x00000300
	.4byte str_BGM_STG3_URN1_tou_0000ad30
	.4byte 0x00004650
	.4byte 0x00004650
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00006800
	.4byte 0x0003005B
	.4byte evt_snd_bgm_scope
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_bgmode_on
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_gondora_2_tou_0000ad40
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_hako_1_tou_0000ad4c
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_gondora_1_tou_0000ad54
	.4byte 0x00000000
	.4byte 0x00000050
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_bou_10_tou_0000ad60
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_bou_9_tou_0000ad68
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_bou_8_tou_0000ad70
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_bou_7_tou_0000ad78
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_bou_4_tou_0000ad80
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_bou_2_tou_0000ad88
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG3_AIR_SHIP_DR_tou_0000ad90
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x000000F1
	.4byte 0x00000216
	.4byte 0x00000000
	.4byte 0x00000091
	.4byte 0xFFFFFFF8
	.4byte 0x00003A98
	.4byte 0x0000000B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFFFF9E58
	.4byte 0x00000000
	.4byte 0x00004650
	.4byte 0x0001005B
	.4byte time_shift
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24AA280
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_hikousen_tou_0000adac
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_gondora_1_tou_0000ad54
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0x00000003
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_bou_2_tou_0000ad88
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_bou_4_tou_0000ad80
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_bou_7_tou_0000ad78
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_bou_8_tou_0000ad70
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_bou_10_tou_0000ad60
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_bou_9_tou_0000ad68
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_gondora_1_tou_0000ad54
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG3_AIR_SHIP_GO_tou_0000adb8
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0xFD050F8B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000050
	.4byte 0x00000000
	.4byte 0x00000BB8
	.4byte 0x00010003
	.4byte 0x00000002
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_gondora_1_tou_0000ad54
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_gondora_1_tou_0000ad54
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x0005005B
	.4byte evt_snd_sfx_pos
	.4byte 0xFD050F8B
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFD050F8B
	.4byte 0x0001005F
	.4byte 0xFD050F8F
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_tou_01_tou_0000add8
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_to_tou

# .data:0x934 | 0x82AC | size: 0x9C
.obj evt_pos_keep, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_gondora_1_tou_0000ad54
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_gondora_2_tou_0000ad40
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0x00000003
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_pos_keep

# .data:0x9D0 | 0x8348 | size: 0x3DC
.obj evt_to_gor, local
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x000000F1
	.4byte 0x00000216
	.4byte 0x00000000
	.4byte 0x00000091
	.4byte 0xFFFFFFF8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_gondora_1_tou_0000ad54
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_hako_2_tou_0000ade0
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_hikousen_tou_0000adac
	.4byte 0xFFFFFFE2
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_hikousen_tou_0000adac
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_bgmode_on
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0002005D
	.4byte evt_pos_keep
	.4byte 0xFE363C89
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_bou_20_tou_0000ade8
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_bou_19_tou_0000adf0
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_bou_17_tou_0000adf8
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_bou_18_tou_0000ae00
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_bou_12_tou_0000ae08
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_bou_14_tou_0000ae10
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_gondora_2_tou_0000ad40
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG3_AIR_SHIP_GO_tou_0000adb8
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0xFD050F8B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x00000050
	.4byte 0x00000BB8
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_gondora_2_tou_0000ad40
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_gondora_2_tou_0000ad40
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x0005005B
	.4byte evt_snd_sfx_pos
	.4byte 0xFD050F8B
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFD050F8B
	.4byte 0x0001005F
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_gondora_2_tou_0000ad40
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG3_AIR_SHIP_DR_tou_0000ae18
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFFFFFFE2
	.4byte 0xFFFFF830
	.4byte 0x00004E20
	.4byte 0x00010003
	.4byte 0x00000002
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_hikousen_tou_0000adac
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_hikousen_tou_0000adac
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFF830
	.4byte 0x000000F1
	.4byte 0x00000216
	.4byte 0xFFFFF830
	.4byte 0x00000091
	.4byte 0xFFFFFFF8
	.4byte 0x00004E20
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00001F40
	.4byte 0x0001005F
	.4byte 0xFD050F8F
	.4byte 0x00020032
	.4byte 0xF840605C
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_gor_04_tou_0000ae34
	.4byte str_hikousen_return_tou_0000ae3c
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_to_gor

# .data:0xDAC | 0x8724 | size: 0x14
.obj kemuri_name, local
	.4byte str_kosyo01_tou_0000ae58
	.4byte str_kosyo02_tou_0000ae60
	.4byte str_kosyo03_tou_0000ae68
	.4byte str_kosyo04_tou_0000ae70
	.4byte str_kosyo05_tou_0000ae78
.endobj kemuri_name

# .data:0xDC0 | 0x8738 | size: 0xA98
.obj tou_00_koopa_evt, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_kill_party
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_飛クッパ_tou_0000ae80
	.4byte 0xFFFFF704
	.4byte 0xFFFFFFEF
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_飛クッパ_tou_0000ae80
	.4byte 0x0000005A
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFF830
	.4byte 0x000000BA
	.4byte 0x000002DA
	.4byte 0xFFFFF830
	.4byte 0x00000037
	.4byte 0xFFFFFFF8
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_bg_auto_scroll_onoff
	.4byte 0x00000001
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xF24A7A82
	.4byte 0x0000006B
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x00020034
	.4byte 0xFE363C81
	.4byte 0xF24A7A80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xFD050F80
	.4byte 0x0003005B
	.4byte evt_bg_set_scrl_offset
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x00020032
	.4byte 0xFAA2B581
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x00020034
	.4byte 0xFE363C81
	.4byte 0xF24A7A80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFAA2B581
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_sub_get_sincos
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0002003C
	.4byte 0xFE363C82
	.4byte 0xF24A8E80
	.4byte 0x00020034
	.4byte 0xFE363C83
	.4byte 0xFE363C82
	.4byte 0x0002003B
	.4byte 0xFE363C83
	.4byte 0xFE363C81
	.4byte 0x0002005B
	.4byte kpa_hikousen_yure
	.4byte 0xFE363C83
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xF24A8280
	.4byte 0x00020034
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_飛クッパ_tou_0000ae80
	.4byte str_HKPA_W_1_tou_0000ae8c
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_KUPPA_AIRSHIP_MO_tou_0000ae98
	.4byte 0xFD050F82
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0xFFFFF704
	.4byte 0xFFFFF830
	.4byte 0x00001D4C
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_飛クッパ_tou_0000ae80
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_飛クッパ_tou_0000ae80
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0005005B
	.4byte evt_snd_sfx_pos
	.4byte 0xFD050F82
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x00000EA6
	.4byte 0x00020032
	.4byte 0xFAA2B581
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_飛クッパ_tou_0000ae80
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_KUPPA_AIRSHIP_BR_tou_0000aeb0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00007D00
	.4byte 0x00010005
	.4byte 0x00000064
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000140
	.4byte 0x0003005B
	.4byte evt_snd_bgm_freq
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0x00000032
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_snd_bgmoff_f
	.4byte 0x00000200
	.4byte 0x000007D0
	.4byte 0x0000006D
	.4byte 0x0002003B
	.4byte 0xFE363C80
	.4byte 0xF24AA280
	.4byte 0x0002003A
	.4byte 0xFE363C81
	.4byte 0xF24ACA80
	.4byte 0x0002003A
	.4byte 0xFE363C82
	.4byte 0xF24BBA80
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte str_kosyo1_tou_0000aecc
	.4byte str_kemuri12_n64_tou_0000aed4
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A7E80
	.4byte 0x00000012
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xF24AF280
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte str_kosyo2_tou_0000aee4
	.4byte str_kemuri12_n64_tou_0000aed4
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A7E80
	.4byte 0x00000012
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xFD050F80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF23ADA80
	.4byte 0x0003005B
	.4byte kemuri_move
	.4byte str_kosyo1_tou_0000aecc
	.4byte 0xFE363C80
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xFD050F80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF23ADA80
	.4byte 0x0003005B
	.4byte kemuri_move
	.4byte str_kosyo2_tou_0000aee4
	.4byte 0xFE363C80
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_飛クッパ_tou_0000ae80
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020032
	.4byte 0xFD050F81
	.4byte 0xFE363C83
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_飛クッパ_tou_0000ae80
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000004
	.4byte 0x000000B4
	.4byte 0x00000168
	.4byte 0x00000190
	.4byte 0x00010003
	.4byte 0x00000002
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0004005B
	.4byte evt_sub_get_sincos
	.4byte 0xFE363C80
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x0002003C
	.4byte 0xFE363C85
	.4byte 0xF24ACA80
	.4byte 0x0002003A
	.4byte 0xFE363C85
	.4byte 0xFE363C83
	.4byte 0x00020032
	.4byte 0xFD050F81
	.4byte 0xFE363C85
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_snd_sfx_pit
	.4byte 0xFD050F82
	.4byte 0xFFFFFAAB
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0xFE363C82
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000004
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_飛クッパ_tou_0000ae80
	.4byte 0xFE363C80
	.4byte 0xFD050F81
	.4byte 0xFE363C84
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000004
	.4byte 0x00000021
	.4byte 0x0002003C
	.4byte 0xFD050F80
	.4byte 0xF24A7C80
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_飛クッパ_tou_0000ae80
	.4byte str_HKPA_S_1_tou_0000aeec
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_npc_reverse_ry
	.4byte str_飛クッパ_tou_0000ae80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_npc_wait_pera
	.4byte str_飛クッパ_tou_0000ae80
	.4byte 0x0002005B
	.4byte evt_npc_reverse_ry
	.4byte str_飛クッパ_tou_0000ae80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_npc_wait_pera
	.4byte str_飛クッパ_tou_0000ae80
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_飛クッパ_tou_0000ae80
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020034
	.4byte 0xFE363C85
	.4byte 0xF24A7A80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_sub_get_sincos
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0002001D
	.4byte 0xFE363C85
	.4byte 0xF24D4A80
	.4byte 0x0002001A
	.4byte 0xFE363C85
	.4byte 0xF2501A80
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C86
	.4byte 0xF24A7E80
	.4byte 0x00000020
	.4byte 0x0002003C
	.4byte 0xFE363C86
	.4byte 0xF24A8E80
	.4byte 0x00000021
	.4byte 0x0002003A
	.4byte 0xFE363C86
	.4byte 0xFE363C83
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_飛クッパ_tou_0000ae80
	.4byte 0xFE363C82
	.4byte 0xFE363C86
	.4byte 0xFE363C84
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0002001D
	.4byte 0xFE363C85
	.4byte 0xF24BE280
	.4byte 0x0002001A
	.4byte 0xFE363C85
	.4byte 0xF24EB280
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0002003A
	.4byte 0xFE363C85
	.4byte 0xF24A8280
	.4byte 0x00000020
	.4byte 0x0002003A
	.4byte 0xFE363C85
	.4byte 0xF24A9280
	.4byte 0x00000021
	.4byte 0x0002001D
	.4byte 0xFE363C85
	.4byte 0xF2501A80
	.4byte 0x0002003B
	.4byte 0xFE363C85
	.4byte 0xF2501A80
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg4_008_tou_0000aef8
	.4byte 0x00000000
	.4byte str_飛クッパ_tou_0000ae80
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_飛クッパ_tou_0000ae80
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000050
	.4byte 0x0001003E
	.4byte kemuri_name
	.4byte 0x00010005
	.4byte 0x00000005
	.4byte 0x0001003F
	.4byte 0xFE363C85
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000028
	.4byte 0xFE363C83
	.4byte 0x00020036
	.4byte 0xFE363C83
	.4byte 0x00000014
	.4byte 0x00020035
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000028
	.4byte 0xFE363C84
	.4byte 0x00020035
	.4byte 0xFE363C84
	.4byte 0xFE363C81
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte 0xFE363C85
	.4byte str_kemuri12_n64_tou_0000aed4
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C82
	.4byte 0xF24A7E80
	.4byte 0x00000012
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xFD050F80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF23ADA80
	.4byte 0x0003005B
	.4byte kemuri_move
	.4byte 0xFE363C85
	.4byte 0xFE363C80
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x00000006
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000004
	.4byte 0xFFFFFAAB
	.4byte 0xFFFFEAAB
	.4byte 0x000005DC
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0003005B
	.4byte evt_snd_sfx_pit
	.4byte 0xFD050F82
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFD050F82
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_飛クッパ_tou_0000ae80
	.4byte str_HKPA_O_1_tou_0000af08
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xF24A7A80
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_飛クッパ_tou_0000ae80
	.4byte str_HKPA_O_2_tou_0000af14
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_飛クッパ_tou_0000ae80
	.4byte 0x00000200
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg4_009_tou_0000af20
	.4byte 0x00000000
	.4byte str_飛クッパ_tou_0000ae80
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_飛クッパ_tou_0000ae80
	.4byte str_HKPA_O_3_tou_0000af30
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_npc_set_rotate_offset
	.4byte str_飛クッパ_tou_0000ae80
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFFFFFF4C
	.4byte 0x00000190
	.4byte 0x00010003
	.4byte 0x00000005
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0005005B
	.4byte evt_npc_set_rotate
	.4byte str_飛クッパ_tou_0000ae80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000005
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_飛クッパ_tou_0000ae80
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_KOOPA_VEXA_tou_0000af3c
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_KUPPA_AIRSHIP_FA_tou_0000af5c
	.4byte 0xFD050F81
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000001
	.4byte 0xFE363C83
	.4byte 0xFFFFFF38
	.4byte 0x00000320
	.4byte 0x00010003
	.4byte 0x00000006
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_飛クッパ_tou_0000ae80
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0xFE363C84
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000006
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte evt_fade_set_mapchange_type
	.4byte 0x00000001
	.4byte 0x0000000A
	.4byte 0x0000012C
	.4byte 0x00000009
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_muj_20_tou_0000af74
	.4byte zero_tou_0000af7c
	.4byte 0x00000002
	.4byte 0x00000001
.endobj tou_00_koopa_evt

# .data:0x1858 | 0x91D0 | size: 0x1C
.obj hkoopa_init, local
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_me_tou_0000af80
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hkoopa_init

# .data:0x1874 | 0x91EC | size: 0xB8
.obj npcEnt, local
	.4byte str_飛クッパ_tou_0000ae80
	.4byte 0x00000200
	.4byte 0x00000000
	.4byte hkoopa_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj npcEnt

# .data:0x192C | 0x92A4 | size: 0xAC
.obj evt_skip, local
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x0000044C
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_key_get_buttontrg
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002001E
	.4byte 0xFE363C80
	.4byte 0x00000300
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFD050F8B
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_modoru_tou_0000af84
	.4byte 0x00020032
	.4byte 0xF840605C
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_gor_04_tou_0000ae34
	.4byte str_hikousen_return_tou_0000ae3c
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_tou_01_tou_0000add8
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_skip

# .data:0x19D8 | 0x9350 | size: 0x130
.obj tou_00_init_evt_25_data_9350, global
	.4byte 0x00020032
	.4byte 0xFD050F8B
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_npc_setup
	.4byte npcEnt
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x000000D7
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_tou_0000af8c
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_set_mode
	.4byte 0x00000002
	.4byte 0x0001005C
	.4byte tou_00_koopa_evt
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG3_TOU8_tou_0000af90
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_jet_tou_0000afa0
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_lightcoloer_tou_0000afa4
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_coloer_light_1_tou_0000afb0
	.4byte 0x0001005C
	.4byte evt_light
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_coloer_light_2_tou_0000afc0
	.4byte 0x0001005C
	.4byte evt_light
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_coloer_light_3_tou_0000afd0
	.4byte 0x0001005C
	.4byte evt_light
	.4byte 0x0001005C
	.4byte evt_wing
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_modoru_tou_0000af84
	.4byte 0x0001005C
	.4byte evt_to_gor
	.4byte 0x00000020
	.4byte 0x0001005C
	.4byte evt_to_tou
	.4byte 0x00000021
	.4byte 0x0001005C
	.4byte evt_tou_balloon
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x0000007F
	.4byte 0x0002005D
	.4byte evt_skip
	.4byte 0xFD050F8F
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj tou_00_init_evt_25_data_9350
