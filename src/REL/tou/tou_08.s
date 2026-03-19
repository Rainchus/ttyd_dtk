.include "macros.inc"
.file "tou_08.o"

# 0x00007010..0x000070E4 | size: 0xD4
.text
.balign 4

# .text:0x0 | 0x7010 | size: 0x48
.fn get_yoshi_color, local
/* 00007010 000070D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00007014 000070D8  7C 08 02 A6 */	mflr r0
/* 00007018 000070DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000701C 000070E0  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00007020 000070E4  7C 7E 1B 78 */	mr r30, r3
/* 00007024 000070E8  38 60 00 04 */	li r3, 0x4
/* 00007028 000070EC  83 FE 00 18 */	lwz r31, 0x18(r30)
/* 0000702C 000070F0  4B FF C3 F1 */	bl pouchGetPartyColor
/* 00007030 000070F4  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00007034 000070F8  7C 65 1B 78 */	mr r5, r3
/* 00007038 000070FC  7F C3 F3 78 */	mr r3, r30
/* 0000703C 00007100  4B FF C3 E1 */	bl evtSetValue
/* 00007040 00007104  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00007044 00007108  38 60 00 02 */	li r3, 0x2
/* 00007048 0000710C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0000704C 00007110  7C 08 03 A6 */	mtlr r0
/* 00007050 00007114  38 21 00 10 */	addi r1, r1, 0x10
/* 00007054 00007118  4E 80 00 20 */	blr
.endfn get_yoshi_color

# .text:0x48 | 0x7058 | size: 0x38
.fn icon_off, local
/* 00007058 0000711C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0000705C 00007120  7C 08 02 A6 */	mflr r0
/* 00007060 00007124  3C 60 00 00 */	lis r3, str_belt_tou_0000f944@ha
/* 00007064 00007128  90 01 00 14 */	stw r0, 0x14(r1)
/* 00007068 0000712C  38 63 00 00 */	addi r3, r3, str_belt_tou_0000f944@l
/* 0000706C 00007130  4B FF C3 B1 */	bl itemNameToPtr
/* 00007070 00007134  38 80 00 02 */	li r4, 0x2
/* 00007074 00007138  38 63 00 0C */	addi r3, r3, 0xc
/* 00007078 0000713C  4B FF C3 A5 */	bl iconFlagOn
/* 0000707C 00007140  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00007080 00007144  38 60 00 02 */	li r3, 0x2
/* 00007084 00007148  7C 08 03 A6 */	mtlr r0
/* 00007088 0000714C  38 21 00 10 */	addi r1, r1, 0x10
/* 0000708C 00007150  4E 80 00 20 */	blr
.endfn icon_off

# .text:0x80 | 0x7090 | size: 0x54
.fn unk_tou_00007154, local
/* 00007090 00007154  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00007094 00007158  7C 08 02 A6 */	mflr r0
/* 00007098 0000715C  3C 60 00 00 */	lis r3, str_belt_tou_0000f944@ha
/* 0000709C 00007160  90 01 00 14 */	stw r0, 0x14(r1)
/* 000070A0 00007164  38 63 00 00 */	addi r3, r3, str_belt_tou_0000f944@l
/* 000070A4 00007168  93 E1 00 0C */	stw r31, 0xc(r1)
/* 000070A8 0000716C  4B FF C3 75 */	bl effNameToPtr
/* 000070AC 00007170  3C 80 00 00 */	lis r4, str_ベルト_tou_0000f92c@ha
/* 000070B0 00007174  7C 7F 1B 78 */	mr r31, r3
/* 000070B4 00007178  38 64 00 00 */	addi r3, r4, str_ベルト_tou_0000f92c@l
/* 000070B8 0000717C  4B FF C3 65 */	bl npcNameToPtr
/* 000070BC 00007180  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 000070C0 00007184  38 00 00 07 */	li r0, 0x7
/* 000070C4 00007188  90 04 00 38 */	stw r0, 0x38(r4)
/* 000070C8 0000718C  90 03 01 F4 */	stw r0, 0x1f4(r3)
/* 000070CC 00007190  38 60 00 02 */	li r3, 0x2
/* 000070D0 00007194  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 000070D4 00007198  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000070D8 0000719C  7C 08 03 A6 */	mtlr r0
/* 000070DC 000071A0  38 21 00 10 */	addi r1, r1, 0x10
/* 000070E0 000071A4  4E 80 00 20 */	blr
.endfn unk_tou_00007154

# 0x000064D0..0x00006E10 | size: 0x940
.rodata
.balign 8

# .rodata:0x0 | 0x64D0 | size: 0xD
.obj str_stg3_tou_422_tou_0000f188, local
	.string "stg3_tou_422"
.endobj str_stg3_tou_422_tou_0000f188

# .rodata:0xD | 0x64DD | size: 0x3
.obj gap_03_000064DD_rodata, global
.hidden gap_03_000064DD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000064DD_rodata

# .rodata:0x10 | 0x64E0 | size: 0x7
.obj str_door_1_tou_0000f198, local
	.string "door_1"
.endobj str_door_1_tou_0000f198

# .rodata:0x17 | 0x64E7 | size: 0x1
.obj gap_03_000064E7_rodata, global
.hidden gap_03_000064E7_rodata
	.byte 0x00
.endobj gap_03_000064E7_rodata

# .rodata:0x18 | 0x64E8 | size: 0x9
.obj str_anm_mizu_tou_0000f1a0, local
	.string "anm_mizu"
.endobj str_anm_mizu_tou_0000f1a0

# .rodata:0x21 | 0x64F1 | size: 0x3
.obj gap_03_000064F1_rodata, global
.hidden gap_03_000064F1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000064F1_rodata

# .rodata:0x24 | 0x64F4 | size: 0x9
.obj str_anm_futa_tou_0000f1ac, local
	.string "anm_futa"
.endobj str_anm_futa_tou_0000f1ac

# .rodata:0x2D | 0x64FD | size: 0x3
.obj gap_03_000064FD_rodata, global
.hidden gap_03_000064FD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000064FD_rodata

# .rodata:0x30 | 0x6500 | size: 0x11
.obj str_SFX_STG3_TOILET1_tou_0000f1b8, local
	.string "SFX_STG3_TOILET1"
.endobj str_SFX_STG3_TOILET1_tou_0000f1b8

# .rodata:0x41 | 0x6511 | size: 0x3
.obj gap_03_00006511_rodata, global
.hidden gap_03_00006511_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006511_rodata

# .rodata:0x44 | 0x6514 | size: 0x7
.obj str_n_bero_tou_0000f1cc, local
	.string "n_bero"
.endobj str_n_bero_tou_0000f1cc

# .rodata:0x4B | 0x651B | size: 0x1
.obj gap_03_0000651B_rodata, global
.hidden gap_03_0000651B_rodata
	.byte 0x00
.endobj gap_03_0000651B_rodata

# .rodata:0x4C | 0x651C | size: 0x7
.obj str_tou_04_tou_0000f1d4, local
	.string "tou_04"
.endobj str_tou_04_tou_0000f1d4

# .rodata:0x53 | 0x6523 | size: 0x1
.obj gap_03_00006523_rodata, global
.hidden gap_03_00006523_rodata
	.byte 0x00
.endobj gap_03_00006523_rodata

# .rodata:0x54 | 0x6524 | size: 0x9
.obj str_s_bero_6_tou_0000f1dc, local
	.string "s_bero_6"
.endobj str_s_bero_6_tou_0000f1dc

# .rodata:0x5D | 0x652D | size: 0x3
.obj gap_03_0000652D_rodata, global
.hidden gap_03_0000652D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000652D_rodata

# .rodata:0x60 | 0x6530 | size: 0x6
.obj str_dokan_tou_0000f1e8, local
	.string "dokan"
.endobj str_dokan_tou_0000f1e8

# .rodata:0x66 | 0x6536 | size: 0x2
.obj gap_03_00006536_rodata, global
.hidden gap_03_00006536_rodata
	.2byte 0x0000
.endobj gap_03_00006536_rodata

# .rodata:0x68 | 0x6538 | size: 0x7
.obj str_toire2_tou_0000f1f0, local
	.string "toire2"
.endobj str_toire2_tou_0000f1f0

# .rodata:0x6F | 0x653F | size: 0x1
.obj gap_03_0000653F_rodata, global
.hidden gap_03_0000653F_rodata
	.byte 0x00
.endobj gap_03_0000653F_rodata

# .rodata:0x70 | 0x6540 | size: 0x3
.obj str_me_tou_0000f1f8, local
	.string "me"
.endobj str_me_tou_0000f1f8

# .rodata:0x73 | 0x6543 | size: 0x1
.obj gap_03_00006543_rodata, global
.hidden gap_03_00006543_rodata
	.byte 0x00
.endobj gap_03_00006543_rodata

# .rodata:0x74 | 0x6544 | size: 0x15
.obj str_stg3_npc_08_01_13_01_tou_0000f1fc, local
	.string "stg3_npc_08_01_13_01"
.endobj str_stg3_npc_08_01_13_01_tou_0000f1fc

# .rodata:0x89 | 0x6559 | size: 0x3
.obj gap_03_00006559_rodata, global
.hidden gap_03_00006559_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006559_rodata

# .rodata:0x8C | 0x655C | size: 0x12
.obj str_stg3_npc_08_01_04_tou_0000f214, local
	.string "stg3_npc_08_01_04"
.endobj str_stg3_npc_08_01_04_tou_0000f214

# .rodata:0x9E | 0x656E | size: 0x2
.obj gap_03_0000656E_rodata, global
.hidden gap_03_0000656E_rodata
	.2byte 0x0000
.endobj gap_03_0000656E_rodata

# .rodata:0xA0 | 0x6570 | size: 0x12
.obj str_stg3_npc_08_01_05_tou_0000f228, local
	.string "stg3_npc_08_01_05"
.endobj str_stg3_npc_08_01_05_tou_0000f228

# .rodata:0xB2 | 0x6582 | size: 0x2
.obj gap_03_00006582_rodata, global
.hidden gap_03_00006582_rodata
	.2byte 0x0000
.endobj gap_03_00006582_rodata

# .rodata:0xB4 | 0x6584 | size: 0x12
.obj str_stg3_npc_08_01_06_tou_0000f23c, local
	.string "stg3_npc_08_01_06"
.endobj str_stg3_npc_08_01_06_tou_0000f23c

# .rodata:0xC6 | 0x6596 | size: 0x2
.obj gap_03_00006596_rodata, global
.hidden gap_03_00006596_rodata
	.2byte 0x0000
.endobj gap_03_00006596_rodata

# .rodata:0xC8 | 0x6598 | size: 0x12
.obj str_stg3_npc_08_01_07_tou_0000f250, local
	.string "stg3_npc_08_01_07"
.endobj str_stg3_npc_08_01_07_tou_0000f250

# .rodata:0xDA | 0x65AA | size: 0x2
.obj gap_03_000065AA_rodata, global
.hidden gap_03_000065AA_rodata
	.2byte 0x0000
.endobj gap_03_000065AA_rodata

# .rodata:0xDC | 0x65AC | size: 0x12
.obj str_stg3_npc_08_01_08_tou_0000f264, local
	.string "stg3_npc_08_01_08"
.endobj str_stg3_npc_08_01_08_tou_0000f264

# .rodata:0xEE | 0x65BE | size: 0x2
.obj gap_03_000065BE_rodata, global
.hidden gap_03_000065BE_rodata
	.2byte 0x0000
.endobj gap_03_000065BE_rodata

# .rodata:0xF0 | 0x65C0 | size: 0x12
.obj str_stg3_npc_08_01_09_tou_0000f278, local
	.string "stg3_npc_08_01_09"
.endobj str_stg3_npc_08_01_09_tou_0000f278

# .rodata:0x102 | 0x65D2 | size: 0x2
.obj gap_03_000065D2_rodata, global
.hidden gap_03_000065D2_rodata
	.2byte 0x0000
.endobj gap_03_000065D2_rodata

# .rodata:0x104 | 0x65D4 | size: 0x12
.obj str_stg3_npc_08_01_10_tou_0000f28c, local
	.string "stg3_npc_08_01_10"
.endobj str_stg3_npc_08_01_10_tou_0000f28c

# .rodata:0x116 | 0x65E6 | size: 0x2
.obj gap_03_000065E6_rodata, global
.hidden gap_03_000065E6_rodata
	.2byte 0x0000
.endobj gap_03_000065E6_rodata

# .rodata:0x118 | 0x65E8 | size: 0x12
.obj str_stg3_npc_08_01_11_tou_0000f2a0, local
	.string "stg3_npc_08_01_11"
.endobj str_stg3_npc_08_01_11_tou_0000f2a0

# .rodata:0x12A | 0x65FA | size: 0x2
.obj gap_03_000065FA_rodata, global
.hidden gap_03_000065FA_rodata
	.2byte 0x0000
.endobj gap_03_000065FA_rodata

# .rodata:0x12C | 0x65FC | size: 0x12
.obj str_stg3_npc_08_01_12_tou_0000f2b4, local
	.string "stg3_npc_08_01_12"
.endobj str_stg3_npc_08_01_12_tou_0000f2b4

# .rodata:0x13E | 0x660E | size: 0x2
.obj gap_03_0000660E_rodata, global
.hidden gap_03_0000660E_rodata
	.2byte 0x0000
.endobj gap_03_0000660E_rodata

# .rodata:0x140 | 0x6610 | size: 0x12
.obj str_stg3_npc_08_01_13_tou_0000f2c8, local
	.string "stg3_npc_08_01_13"
.endobj str_stg3_npc_08_01_13_tou_0000f2c8

# .rodata:0x152 | 0x6622 | size: 0x2
.obj gap_03_00006622_rodata, global
.hidden gap_03_00006622_rodata
	.2byte 0x0000
.endobj gap_03_00006622_rodata

# .rodata:0x154 | 0x6624 | size: 0x10
.obj str_stg3_npc_re_040_tou_0000f2dc, local
	.string "stg3_npc_re_040"
.endobj str_stg3_npc_re_040_tou_0000f2dc

# .rodata:0x164 | 0x6634 | size: 0x12
.obj str_stg3_npc_re_041_1_tou_0000f2ec, local
	.string "stg3_npc_re_041_1"
.endobj str_stg3_npc_re_041_1_tou_0000f2ec

# .rodata:0x176 | 0x6646 | size: 0x2
.obj gap_03_00006646_rodata, global
.hidden gap_03_00006646_rodata
	.2byte 0x0000
.endobj gap_03_00006646_rodata

# .rodata:0x178 | 0x6648 | size: 0x10
.obj str_stg3_npc_re_041_tou_0000f300, local
	.string "stg3_npc_re_041"
.endobj str_stg3_npc_re_041_tou_0000f300

# .rodata:0x188 | 0x6658 | size: 0xB
.obj str_トゲメット_tou_0000f310, local
	.4byte 0x83678351
	.4byte 0x83818362
	.byte 0x83, 0x67, 0x00
.endobj str_トゲメット_tou_0000f310

# .rodata:0x193 | 0x6663 | size: 0x1
.obj gap_03_00006663_rodata, global
.hidden gap_03_00006663_rodata
	.byte 0x00
.endobj gap_03_00006663_rodata

# .rodata:0x194 | 0x6664 | size: 0x15
.obj str_stg3_npc_08_02_13_01_tou_0000f31c, local
	.string "stg3_npc_08_02_13_01"
.endobj str_stg3_npc_08_02_13_01_tou_0000f31c

# .rodata:0x1A9 | 0x6679 | size: 0x3
.obj gap_03_00006679_rodata, global
.hidden gap_03_00006679_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006679_rodata

# .rodata:0x1AC | 0x667C | size: 0x12
.obj str_stg3_npc_08_02_04_tou_0000f334, local
	.string "stg3_npc_08_02_04"
.endobj str_stg3_npc_08_02_04_tou_0000f334

# .rodata:0x1BE | 0x668E | size: 0x2
.obj gap_03_0000668E_rodata, global
.hidden gap_03_0000668E_rodata
	.2byte 0x0000
.endobj gap_03_0000668E_rodata

# .rodata:0x1C0 | 0x6690 | size: 0x12
.obj str_stg3_npc_08_02_05_tou_0000f348, local
	.string "stg3_npc_08_02_05"
.endobj str_stg3_npc_08_02_05_tou_0000f348

# .rodata:0x1D2 | 0x66A2 | size: 0x2
.obj gap_03_000066A2_rodata, global
.hidden gap_03_000066A2_rodata
	.2byte 0x0000
.endobj gap_03_000066A2_rodata

# .rodata:0x1D4 | 0x66A4 | size: 0x12
.obj str_stg3_npc_08_02_06_tou_0000f35c, local
	.string "stg3_npc_08_02_06"
.endobj str_stg3_npc_08_02_06_tou_0000f35c

# .rodata:0x1E6 | 0x66B6 | size: 0x2
.obj gap_03_000066B6_rodata, global
.hidden gap_03_000066B6_rodata
	.2byte 0x0000
.endobj gap_03_000066B6_rodata

# .rodata:0x1E8 | 0x66B8 | size: 0x12
.obj str_stg3_npc_08_02_07_tou_0000f370, local
	.string "stg3_npc_08_02_07"
.endobj str_stg3_npc_08_02_07_tou_0000f370

# .rodata:0x1FA | 0x66CA | size: 0x2
.obj gap_03_000066CA_rodata, global
.hidden gap_03_000066CA_rodata
	.2byte 0x0000
.endobj gap_03_000066CA_rodata

# .rodata:0x1FC | 0x66CC | size: 0x12
.obj str_stg3_npc_08_02_08_tou_0000f384, local
	.string "stg3_npc_08_02_08"
.endobj str_stg3_npc_08_02_08_tou_0000f384

# .rodata:0x20E | 0x66DE | size: 0x2
.obj gap_03_000066DE_rodata, global
.hidden gap_03_000066DE_rodata
	.2byte 0x0000
.endobj gap_03_000066DE_rodata

# .rodata:0x210 | 0x66E0 | size: 0x12
.obj str_stg3_npc_08_02_09_tou_0000f398, local
	.string "stg3_npc_08_02_09"
.endobj str_stg3_npc_08_02_09_tou_0000f398

# .rodata:0x222 | 0x66F2 | size: 0x2
.obj gap_03_000066F2_rodata, global
.hidden gap_03_000066F2_rodata
	.2byte 0x0000
.endobj gap_03_000066F2_rodata

# .rodata:0x224 | 0x66F4 | size: 0x12
.obj str_stg3_npc_08_02_10_tou_0000f3ac, local
	.string "stg3_npc_08_02_10"
.endobj str_stg3_npc_08_02_10_tou_0000f3ac

# .rodata:0x236 | 0x6706 | size: 0x2
.obj gap_03_00006706_rodata, global
.hidden gap_03_00006706_rodata
	.2byte 0x0000
.endobj gap_03_00006706_rodata

# .rodata:0x238 | 0x6708 | size: 0x12
.obj str_stg3_npc_08_02_11_tou_0000f3c0, local
	.string "stg3_npc_08_02_11"
.endobj str_stg3_npc_08_02_11_tou_0000f3c0

# .rodata:0x24A | 0x671A | size: 0x2
.obj gap_03_0000671A_rodata, global
.hidden gap_03_0000671A_rodata
	.2byte 0x0000
.endobj gap_03_0000671A_rodata

# .rodata:0x24C | 0x671C | size: 0x12
.obj str_stg3_npc_08_02_12_tou_0000f3d4, local
	.string "stg3_npc_08_02_12"
.endobj str_stg3_npc_08_02_12_tou_0000f3d4

# .rodata:0x25E | 0x672E | size: 0x2
.obj gap_03_0000672E_rodata, global
.hidden gap_03_0000672E_rodata
	.2byte 0x0000
.endobj gap_03_0000672E_rodata

# .rodata:0x260 | 0x6730 | size: 0x12
.obj str_stg3_npc_08_02_13_tou_0000f3e8, local
	.string "stg3_npc_08_02_13"
.endobj str_stg3_npc_08_02_13_tou_0000f3e8

# .rodata:0x272 | 0x6742 | size: 0x2
.obj gap_03_00006742_rodata, global
.hidden gap_03_00006742_rodata
	.2byte 0x0000
.endobj gap_03_00006742_rodata

# .rodata:0x274 | 0x6744 | size: 0x10
.obj str_stg3_npc_re_045_tou_0000f3fc, local
	.string "stg3_npc_re_045"
.endobj str_stg3_npc_re_045_tou_0000f3fc

# .rodata:0x284 | 0x6754 | size: 0x12
.obj str_stg3_npc_re_046_1_tou_0000f40c, local
	.string "stg3_npc_re_046_1"
.endobj str_stg3_npc_re_046_1_tou_0000f40c

# .rodata:0x296 | 0x6766 | size: 0x2
.obj gap_03_00006766_rodata, global
.hidden gap_03_00006766_rodata
	.2byte 0x0000
.endobj gap_03_00006766_rodata

# .rodata:0x298 | 0x6768 | size: 0x10
.obj str_stg3_npc_re_046_tou_0000f420, local
	.string "stg3_npc_re_046"
.endobj str_stg3_npc_re_046_tou_0000f420

# .rodata:0x2A8 | 0x6778 | size: 0xF
.obj str_ハンマーブロス_tou_0000f430, local
	.4byte 0x836E8393
	.4byte 0x837D815B
	.4byte 0x8375838D
	.byte 0x83, 0x58, 0x00
.endobj str_ハンマーブロス_tou_0000f430

# .rodata:0x2B7 | 0x6787 | size: 0x1
.obj gap_03_00006787_rodata, global
.hidden gap_03_00006787_rodata
	.byte 0x00
.endobj gap_03_00006787_rodata

# .rodata:0x2B8 | 0x6788 | size: 0x15
.obj str_stg3_npc_08_03_13_01_tou_0000f440, local
	.string "stg3_npc_08_03_13_01"
.endobj str_stg3_npc_08_03_13_01_tou_0000f440

# .rodata:0x2CD | 0x679D | size: 0x3
.obj gap_03_0000679D_rodata, global
.hidden gap_03_0000679D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000679D_rodata

# .rodata:0x2D0 | 0x67A0 | size: 0x12
.obj str_stg3_npc_08_03_04_tou_0000f458, local
	.string "stg3_npc_08_03_04"
.endobj str_stg3_npc_08_03_04_tou_0000f458

# .rodata:0x2E2 | 0x67B2 | size: 0x2
.obj gap_03_000067B2_rodata, global
.hidden gap_03_000067B2_rodata
	.2byte 0x0000
.endobj gap_03_000067B2_rodata

# .rodata:0x2E4 | 0x67B4 | size: 0x12
.obj str_stg3_npc_08_03_05_tou_0000f46c, local
	.string "stg3_npc_08_03_05"
.endobj str_stg3_npc_08_03_05_tou_0000f46c

# .rodata:0x2F6 | 0x67C6 | size: 0x2
.obj gap_03_000067C6_rodata, global
.hidden gap_03_000067C6_rodata
	.2byte 0x0000
.endobj gap_03_000067C6_rodata

# .rodata:0x2F8 | 0x67C8 | size: 0x12
.obj str_stg3_npc_08_03_06_tou_0000f480, local
	.string "stg3_npc_08_03_06"
.endobj str_stg3_npc_08_03_06_tou_0000f480

# .rodata:0x30A | 0x67DA | size: 0x2
.obj gap_03_000067DA_rodata, global
.hidden gap_03_000067DA_rodata
	.2byte 0x0000
.endobj gap_03_000067DA_rodata

# .rodata:0x30C | 0x67DC | size: 0x12
.obj str_stg3_npc_08_03_07_tou_0000f494, local
	.string "stg3_npc_08_03_07"
.endobj str_stg3_npc_08_03_07_tou_0000f494

# .rodata:0x31E | 0x67EE | size: 0x2
.obj gap_03_000067EE_rodata, global
.hidden gap_03_000067EE_rodata
	.2byte 0x0000
.endobj gap_03_000067EE_rodata

# .rodata:0x320 | 0x67F0 | size: 0x12
.obj str_stg3_npc_08_03_08_tou_0000f4a8, local
	.string "stg3_npc_08_03_08"
.endobj str_stg3_npc_08_03_08_tou_0000f4a8

# .rodata:0x332 | 0x6802 | size: 0x2
.obj gap_03_00006802_rodata, global
.hidden gap_03_00006802_rodata
	.2byte 0x0000
.endobj gap_03_00006802_rodata

# .rodata:0x334 | 0x6804 | size: 0x12
.obj str_stg3_npc_08_03_09_tou_0000f4bc, local
	.string "stg3_npc_08_03_09"
.endobj str_stg3_npc_08_03_09_tou_0000f4bc

# .rodata:0x346 | 0x6816 | size: 0x2
.obj gap_03_00006816_rodata, global
.hidden gap_03_00006816_rodata
	.2byte 0x0000
.endobj gap_03_00006816_rodata

# .rodata:0x348 | 0x6818 | size: 0x12
.obj str_stg3_npc_08_03_10_tou_0000f4d0, local
	.string "stg3_npc_08_03_10"
.endobj str_stg3_npc_08_03_10_tou_0000f4d0

# .rodata:0x35A | 0x682A | size: 0x2
.obj gap_03_0000682A_rodata, global
.hidden gap_03_0000682A_rodata
	.2byte 0x0000
.endobj gap_03_0000682A_rodata

# .rodata:0x35C | 0x682C | size: 0x12
.obj str_stg3_npc_08_03_11_tou_0000f4e4, local
	.string "stg3_npc_08_03_11"
.endobj str_stg3_npc_08_03_11_tou_0000f4e4

# .rodata:0x36E | 0x683E | size: 0x2
.obj gap_03_0000683E_rodata, global
.hidden gap_03_0000683E_rodata
	.2byte 0x0000
.endobj gap_03_0000683E_rodata

# .rodata:0x370 | 0x6840 | size: 0x12
.obj str_stg3_npc_08_03_12_tou_0000f4f8, local
	.string "stg3_npc_08_03_12"
.endobj str_stg3_npc_08_03_12_tou_0000f4f8

# .rodata:0x382 | 0x6852 | size: 0x2
.obj gap_03_00006852_rodata, global
.hidden gap_03_00006852_rodata
	.2byte 0x0000
.endobj gap_03_00006852_rodata

# .rodata:0x384 | 0x6854 | size: 0x12
.obj str_stg3_npc_08_03_13_tou_0000f50c, local
	.string "stg3_npc_08_03_13"
.endobj str_stg3_npc_08_03_13_tou_0000f50c

# .rodata:0x396 | 0x6866 | size: 0x2
.obj gap_03_00006866_rodata, global
.hidden gap_03_00006866_rodata
	.2byte 0x0000
.endobj gap_03_00006866_rodata

# .rodata:0x398 | 0x6868 | size: 0x10
.obj str_stg3_npc_re_050_tou_0000f520, local
	.string "stg3_npc_re_050"
.endobj str_stg3_npc_re_050_tou_0000f520

# .rodata:0x3A8 | 0x6878 | size: 0x12
.obj str_stg3_npc_re_051_1_tou_0000f530, local
	.string "stg3_npc_re_051_1"
.endobj str_stg3_npc_re_051_1_tou_0000f530

# .rodata:0x3BA | 0x688A | size: 0x2
.obj gap_03_0000688A_rodata, global
.hidden gap_03_0000688A_rodata
	.2byte 0x0000
.endobj gap_03_0000688A_rodata

# .rodata:0x3BC | 0x688C | size: 0x10
.obj str_stg3_npc_re_051_tou_0000f544, local
	.string "stg3_npc_re_051"
.endobj str_stg3_npc_re_051_tou_0000f544

# .rodata:0x3CC | 0x689C | size: 0x15
.obj str_stg3_npc_08_04_13_01_tou_0000f554, local
	.string "stg3_npc_08_04_13_01"
.endobj str_stg3_npc_08_04_13_01_tou_0000f554

# .rodata:0x3E1 | 0x68B1 | size: 0x3
.obj gap_03_000068B1_rodata, global
.hidden gap_03_000068B1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000068B1_rodata

# .rodata:0x3E4 | 0x68B4 | size: 0x12
.obj str_stg3_npc_08_04_04_tou_0000f56c, local
	.string "stg3_npc_08_04_04"
.endobj str_stg3_npc_08_04_04_tou_0000f56c

# .rodata:0x3F6 | 0x68C6 | size: 0x2
.obj gap_03_000068C6_rodata, global
.hidden gap_03_000068C6_rodata
	.2byte 0x0000
.endobj gap_03_000068C6_rodata

# .rodata:0x3F8 | 0x68C8 | size: 0x12
.obj str_stg3_npc_08_04_05_tou_0000f580, local
	.string "stg3_npc_08_04_05"
.endobj str_stg3_npc_08_04_05_tou_0000f580

# .rodata:0x40A | 0x68DA | size: 0x2
.obj gap_03_000068DA_rodata, global
.hidden gap_03_000068DA_rodata
	.2byte 0x0000
.endobj gap_03_000068DA_rodata

# .rodata:0x40C | 0x68DC | size: 0x12
.obj str_stg3_npc_08_04_06_tou_0000f594, local
	.string "stg3_npc_08_04_06"
.endobj str_stg3_npc_08_04_06_tou_0000f594

# .rodata:0x41E | 0x68EE | size: 0x2
.obj gap_03_000068EE_rodata, global
.hidden gap_03_000068EE_rodata
	.2byte 0x0000
.endobj gap_03_000068EE_rodata

# .rodata:0x420 | 0x68F0 | size: 0x12
.obj str_stg3_npc_08_04_07_tou_0000f5a8, local
	.string "stg3_npc_08_04_07"
.endobj str_stg3_npc_08_04_07_tou_0000f5a8

# .rodata:0x432 | 0x6902 | size: 0x2
.obj gap_03_00006902_rodata, global
.hidden gap_03_00006902_rodata
	.2byte 0x0000
.endobj gap_03_00006902_rodata

# .rodata:0x434 | 0x6904 | size: 0x12
.obj str_stg3_npc_08_04_08_tou_0000f5bc, local
	.string "stg3_npc_08_04_08"
.endobj str_stg3_npc_08_04_08_tou_0000f5bc

# .rodata:0x446 | 0x6916 | size: 0x2
.obj gap_03_00006916_rodata, global
.hidden gap_03_00006916_rodata
	.2byte 0x0000
.endobj gap_03_00006916_rodata

# .rodata:0x448 | 0x6918 | size: 0x12
.obj str_stg3_npc_08_04_09_tou_0000f5d0, local
	.string "stg3_npc_08_04_09"
.endobj str_stg3_npc_08_04_09_tou_0000f5d0

# .rodata:0x45A | 0x692A | size: 0x2
.obj gap_03_0000692A_rodata, global
.hidden gap_03_0000692A_rodata
	.2byte 0x0000
.endobj gap_03_0000692A_rodata

# .rodata:0x45C | 0x692C | size: 0x12
.obj str_stg3_npc_08_04_10_tou_0000f5e4, local
	.string "stg3_npc_08_04_10"
.endobj str_stg3_npc_08_04_10_tou_0000f5e4

# .rodata:0x46E | 0x693E | size: 0x2
.obj gap_03_0000693E_rodata, global
.hidden gap_03_0000693E_rodata
	.2byte 0x0000
.endobj gap_03_0000693E_rodata

# .rodata:0x470 | 0x6940 | size: 0x12
.obj str_stg3_npc_08_04_11_tou_0000f5f8, local
	.string "stg3_npc_08_04_11"
.endobj str_stg3_npc_08_04_11_tou_0000f5f8

# .rodata:0x482 | 0x6952 | size: 0x2
.obj gap_03_00006952_rodata, global
.hidden gap_03_00006952_rodata
	.2byte 0x0000
.endobj gap_03_00006952_rodata

# .rodata:0x484 | 0x6954 | size: 0x15
.obj str_stg3_npc_08_04_11_02_tou_0000f60c, local
	.string "stg3_npc_08_04_11_02"
.endobj str_stg3_npc_08_04_11_02_tou_0000f60c

# .rodata:0x499 | 0x6969 | size: 0x3
.obj gap_03_00006969_rodata, global
.hidden gap_03_00006969_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006969_rodata

# .rodata:0x49C | 0x696C | size: 0x12
.obj str_stg3_npc_08_04_12_tou_0000f624, local
	.string "stg3_npc_08_04_12"
.endobj str_stg3_npc_08_04_12_tou_0000f624

# .rodata:0x4AE | 0x697E | size: 0x2
.obj gap_03_0000697E_rodata, global
.hidden gap_03_0000697E_rodata
	.2byte 0x0000
.endobj gap_03_0000697E_rodata

# .rodata:0x4B0 | 0x6980 | size: 0x10
.obj str_stg3_npc_re_055_tou_0000f638, local
	.string "stg3_npc_re_055"
.endobj str_stg3_npc_re_055_tou_0000f638

# .rodata:0x4C0 | 0x6990 | size: 0x12
.obj str_stg3_npc_re_056_1_tou_0000f648, local
	.string "stg3_npc_re_056_1"
.endobj str_stg3_npc_re_056_1_tou_0000f648

# .rodata:0x4D2 | 0x69A2 | size: 0x2
.obj gap_03_000069A2_rodata, global
.hidden gap_03_000069A2_rodata
	.2byte 0x0000
.endobj gap_03_000069A2_rodata

# .rodata:0x4D4 | 0x69A4 | size: 0x10
.obj str_stg3_npc_re_056_tou_0000f65c, local
	.string "stg3_npc_re_056"
.endobj str_stg3_npc_re_056_tou_0000f65c

# .rodata:0x4E4 | 0x69B4 | size: 0x7
.obj str_ガンス_tou_0000f66c, local
	.4byte 0x834B8393
	.byte 0x83, 0x58, 0x00
.endobj str_ガンス_tou_0000f66c

# .rodata:0x4EB | 0x69BB | size: 0x1
.obj gap_03_000069BB_rodata, global
.hidden gap_03_000069BB_rodata
	.byte 0x00
.endobj gap_03_000069BB_rodata

# .rodata:0x4EC | 0x69BC | size: 0xB
.obj str_キノシコワ_tou_0000f674, local
	.4byte 0x834C836D
	.4byte 0x83568352
	.byte 0x83, 0x8F, 0x00
.endobj str_キノシコワ_tou_0000f674

# .rodata:0x4F7 | 0x69C7 | size: 0x1
.obj gap_03_000069C7_rodata, global
.hidden gap_03_000069C7_rodata
	.byte 0x00
.endobj gap_03_000069C7_rodata

# .rodata:0x4F8 | 0x69C8 | size: 0xB
.obj str_ガードマン_tou_0000f680, local
	.4byte 0x834B815B
	.4byte 0x8368837D
	.byte 0x83, 0x93, 0x00
.endobj str_ガードマン_tou_0000f680

# .rodata:0x503 | 0x69D3 | size: 0x1
.obj gap_03_000069D3_rodata, global
.hidden gap_03_000069D3_rodata
	.byte 0x00
.endobj gap_03_000069D3_rodata

# .rodata:0x504 | 0x69D4 | size: 0xF
.obj str_トゲノコエース_tou_0000f68c, local
	.4byte 0x83678351
	.4byte 0x836D8352
	.4byte 0x8347815B
	.byte 0x83, 0x58, 0x00
.endobj str_トゲノコエース_tou_0000f68c

# .rodata:0x513 | 0x69E3 | size: 0x1
.obj gap_03_000069E3_rodata, global
.hidden gap_03_000069E3_rodata
	.byte 0x00
.endobj gap_03_000069E3_rodata

# .rodata:0x514 | 0x69E4 | size: 0x9
.obj str_ウラノコ_tou_0000f69c, local
	.4byte 0x83458389
	.4byte 0x836D8352
	.byte 0x00
.endobj str_ウラノコ_tou_0000f69c

# .rodata:0x51D | 0x69ED | size: 0x3
.obj gap_03_000069ED_rodata, global
.hidden gap_03_000069ED_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000069ED_rodata

# .rodata:0x520 | 0x69F0 | size: 0xD
.obj str_チャンピョン_tou_0000f6a8, local
	.4byte 0x83608383
	.4byte 0x83938373
	.4byte 0x83878393
	.byte 0x00
.endobj str_チャンピョン_tou_0000f6a8

# .rodata:0x52D | 0x69FD | size: 0x3
.obj gap_03_000069FD_rodata, global
.hidden gap_03_000069FD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000069FD_rodata

# .rodata:0x530 | 0x6A00 | size: 0x6
.obj str_mario_tou_0000f6b8, local
	.string "mario"
.endobj str_mario_tou_0000f6b8

# .rodata:0x536 | 0x6A06 | size: 0x2
.obj gap_03_00006A06_rodata, global
.hidden gap_03_00006A06_rodata
	.2byte 0x0000
.endobj gap_03_00006A06_rodata

# .rodata:0x538 | 0x6A08 | size: 0xC
.obj str_stg3_tou_50_tou_0000f6c0, local
	.string "stg3_tou_50"
.endobj str_stg3_tou_50_tou_0000f6c0

# .rodata:0x544 | 0x6A14 | size: 0x7
.obj str_tou_05_tou_0000f6cc, local
	.string "tou_05"
.endobj str_tou_05_tou_0000f6cc

# .rodata:0x54B | 0x6A1B | size: 0x1
.obj gap_03_00006A1B_rodata, global
.hidden gap_03_00006A1B_rodata
	.byte 0x00
.endobj gap_03_00006A1B_rodata

# .rodata:0x54C | 0x6A1C | size: 0xD
.obj str_stg3_tou_294_tou_0000f6d4, local
	.string "stg3_tou_294"
.endobj str_stg3_tou_294_tou_0000f6d4

# .rodata:0x559 | 0x6A29 | size: 0x3
.obj gap_03_00006A29_rodata, global
.hidden gap_03_00006A29_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006A29_rodata

# .rodata:0x55C | 0x6A2C | size: 0x4
.obj str_M_1_tou_0000f6e4, local
	.string "M_1"
.endobj str_M_1_tou_0000f6e4

# .rodata:0x560 | 0x6A30 | size: 0x4
.obj str_S_1_tou_0000f6e8, local
	.string "S_1"
.endobj str_S_1_tou_0000f6e8

# .rodata:0x564 | 0x6A34 | size: 0x10
.obj str_stg3_tou_294_01_tou_0000f6ec, local
	.string "stg3_tou_294_01"
.endobj str_stg3_tou_294_01_tou_0000f6ec

# .rodata:0x574 | 0x6A44 | size: 0x10
.obj str_stg3_tou_294_02_tou_0000f6fc, local
	.string "stg3_tou_294_02"
.endobj str_stg3_tou_294_02_tou_0000f6fc

# .rodata:0x584 | 0x6A54 | size: 0x13
.obj str_stg3_tou_294_02_01_tou_0000f70c, local
	.string "stg3_tou_294_02_01"
.endobj str_stg3_tou_294_02_01_tou_0000f70c

# .rodata:0x597 | 0x6A67 | size: 0x1
.obj gap_03_00006A67_rodata, global
.hidden gap_03_00006A67_rodata
	.byte 0x00
.endobj gap_03_00006A67_rodata

# .rodata:0x598 | 0x6A68 | size: 0x16
.obj str_SFX_VOICE_MARIO_FIND_tou_0000f720, local
	.string "SFX_VOICE_MARIO_FIND1"
.endobj str_SFX_VOICE_MARIO_FIND_tou_0000f720

# .rodata:0x5AE | 0x6A7E | size: 0x2
.obj gap_03_00006A7E_rodata, global
.hidden gap_03_00006A7E_rodata
	.2byte 0x0000
.endobj gap_03_00006A7E_rodata

# .rodata:0x5B0 | 0x6A80 | size: 0x7
.obj str_M_N_5B_tou_0000f738, local
	.string "M_N_5B"
.endobj str_M_N_5B_tou_0000f738

# .rodata:0x5B7 | 0x6A87 | size: 0x1
.obj gap_03_00006A87_rodata, global
.hidden gap_03_00006A87_rodata
	.byte 0x00
.endobj gap_03_00006A87_rodata

# .rodata:0x5B8 | 0x6A88 | size: 0x6
.obj str_M_I_2_tou_0000f740, local
	.string "M_I_2"
.endobj str_M_I_2_tou_0000f740

# .rodata:0x5BE | 0x6A8E | size: 0x2
.obj gap_03_00006A8E_rodata, global
.hidden gap_03_00006A8E_rodata
	.2byte 0x0000
.endobj gap_03_00006A8E_rodata

# .rodata:0x5C0 | 0x6A90 | size: 0x10
.obj str_stg3_tou_294_03_tou_0000f748, local
	.string "stg3_tou_294_03"
.endobj str_stg3_tou_294_03_tou_0000f748

# .rodata:0x5D0 | 0x6AA0 | size: 0x10
.obj str_stg3_tou_294_04_tou_0000f758, local
	.string "stg3_tou_294_04"
.endobj str_stg3_tou_294_04_tou_0000f758

# .rodata:0x5E0 | 0x6AB0 | size: 0x10
.obj str_stg3_tou_294_05_tou_0000f768, local
	.string "stg3_tou_294_05"
.endobj str_stg3_tou_294_05_tou_0000f768

# .rodata:0x5F0 | 0x6AC0 | size: 0x17
.obj str_SFX_VOICE_MARIO_NOD1_tou_0000f778, local
	.string "SFX_VOICE_MARIO_NOD1_6"
.endobj str_SFX_VOICE_MARIO_NOD1_tou_0000f778

# .rodata:0x607 | 0x6AD7 | size: 0x1
.obj gap_03_00006AD7_rodata, global
.hidden gap_03_00006AD7_rodata
	.byte 0x00
.endobj gap_03_00006AD7_rodata

# .rodata:0x608 | 0x6AD8 | size: 0x6
.obj str_M_N_2_tou_0000f790, local
	.string "M_N_2"
.endobj str_M_N_2_tou_0000f790

# .rodata:0x60E | 0x6ADE | size: 0x2
.obj gap_03_00006ADE_rodata, global
.hidden gap_03_00006ADE_rodata
	.2byte 0x0000
.endobj gap_03_00006ADE_rodata

# .rodata:0x610 | 0x6AE0 | size: 0x6
.obj str_M_S_1_tou_0000f798, local
	.string "M_S_1"
.endobj str_M_S_1_tou_0000f798

# .rodata:0x616 | 0x6AE6 | size: 0x2
.obj gap_03_00006AE6_rodata, global
.hidden gap_03_00006AE6_rodata
	.2byte 0x0000
.endobj gap_03_00006AE6_rodata

# .rodata:0x618 | 0x6AE8 | size: 0x10
.obj str_stg3_tou_294_06_tou_0000f7a0, local
	.string "stg3_tou_294_06"
.endobj str_stg3_tou_294_06_tou_0000f7a0

# .rodata:0x628 | 0x6AF8 | size: 0x13
.obj str_stg3_tou_294_06_01_tou_0000f7b0, local
	.string "stg3_tou_294_06_01"
.endobj str_stg3_tou_294_06_01_tou_0000f7b0

# .rodata:0x63B | 0x6B0B | size: 0x1
.obj gap_03_00006B0B_rodata, global
.hidden gap_03_00006B0B_rodata
	.byte 0x00
.endobj gap_03_00006B0B_rodata

# .rodata:0x63C | 0x6B0C | size: 0x10
.obj str_stg3_tou_294_07_tou_0000f7c4, local
	.string "stg3_tou_294_07"
.endobj str_stg3_tou_294_07_tou_0000f7c4

# .rodata:0x64C | 0x6B1C | size: 0x10
.obj str_stg3_tou_294_08_tou_0000f7d4, local
	.string "stg3_tou_294_08"
.endobj str_stg3_tou_294_08_tou_0000f7d4

# .rodata:0x65C | 0x6B2C | size: 0x10
.obj str_stg3_tou_294_09_tou_0000f7e4, local
	.string "stg3_tou_294_09"
.endobj str_stg3_tou_294_09_tou_0000f7e4

# .rodata:0x66C | 0x6B3C | size: 0x6
.obj str_M_N_1_tou_0000f7f4, local
	.string "M_N_1"
.endobj str_M_N_1_tou_0000f7f4

# .rodata:0x672 | 0x6B42 | size: 0x2
.obj gap_03_00006B42_rodata, global
.hidden gap_03_00006B42_rodata
	.2byte 0x0000
.endobj gap_03_00006B42_rodata

# .rodata:0x674 | 0x6B44 | size: 0x10
.obj str_stg3_tou_294_10_tou_0000f7fc, local
	.string "stg3_tou_294_10"
.endobj str_stg3_tou_294_10_tou_0000f7fc

# .rodata:0x684 | 0x6B54 | size: 0x18
.obj str_SFX_VOICE_MARIO_FIND_tou_0000f80c, local
	.string "SFX_VOICE_MARIO_FIND1_3"
.endobj str_SFX_VOICE_MARIO_FIND_tou_0000f80c

# .rodata:0x69C | 0x6B6C | size: 0x17
.obj str_BGM_FF_MAIL_RECEPTIO_tou_0000f824, local
	.string "BGM_FF_MAIL_RECEPTION2"
.endobj str_BGM_FF_MAIL_RECEPTIO_tou_0000f824

# .rodata:0x6B3 | 0x6B83 | size: 0x1
.obj gap_03_00006B83_rodata, global
.hidden gap_03_00006B83_rodata
	.byte 0x00
.endobj gap_03_00006B83_rodata

# .rodata:0x6B4 | 0x6B84 | size: 0x10
.obj str_stg3_tou_294_11_tou_0000f83c, local
	.string "stg3_tou_294_11"
.endobj str_stg3_tou_294_11_tou_0000f83c

# .rodata:0x6C4 | 0x6B94 | size: 0x14
.obj str_SFX_MAIL_RECEPTION1_tou_0000f84c, local
	.string "SFX_MAIL_RECEPTION1"
.endobj str_SFX_MAIL_RECEPTION1_tou_0000f84c

# .rodata:0x6D8 | 0x6BA8 | size: 0x6
.obj str_M_N_9_tou_0000f860, local
	.string "M_N_9"
.endobj str_M_N_9_tou_0000f860

# .rodata:0x6DE | 0x6BAE | size: 0x2
.obj gap_03_00006BAE_rodata, global
.hidden gap_03_00006BAE_rodata
	.2byte 0x0000
.endobj gap_03_00006BAE_rodata

# .rodata:0x6E0 | 0x6BB0 | size: 0x14
.obj str_SFX_MAIL_RECEPTION2_tou_0000f868, local
	.string "SFX_MAIL_RECEPTION2"
.endobj str_SFX_MAIL_RECEPTION2_tou_0000f868

# .rodata:0x6F4 | 0x6BC4 | size: 0x7
.obj str_M_N_10_tou_0000f87c, local
	.string "M_N_10"
.endobj str_M_N_10_tou_0000f87c

# .rodata:0x6FB | 0x6BCB | size: 0x1
.obj gap_03_00006BCB_rodata, global
.hidden gap_03_00006BCB_rodata
	.byte 0x00
.endobj gap_03_00006BCB_rodata

# .rodata:0x6FC | 0x6BCC | size: 0xE
.obj str_BGM_STG3_TOU1_tou_0000f884, local
	.string "BGM_STG3_TOU1"
.endobj str_BGM_STG3_TOU1_tou_0000f884

# .rodata:0x70A | 0x6BDA | size: 0x2
.obj gap_03_00006BDA_rodata, global
.hidden gap_03_00006BDA_rodata
	.2byte 0x0000
.endobj gap_03_00006BDA_rodata

# .rodata:0x70C | 0x6BDC | size: 0xE
.obj str_ENV_STG3_TOU6_tou_0000f894, local
	.string "ENV_STG3_TOU6"
.endobj str_ENV_STG3_TOU6_tou_0000f894

# .rodata:0x71A | 0x6BEA | size: 0x2
.obj gap_03_00006BEA_rodata, global
.hidden gap_03_00006BEA_rodata
	.2byte 0x0000
.endobj gap_03_00006BEA_rodata

# .rodata:0x71C | 0x6BEC | size: 0x10
.obj str_stg3_tou_294_12_tou_0000f8a4, local
	.string "stg3_tou_294_12"
.endobj str_stg3_tou_294_12_tou_0000f8a4

# .rodata:0x72C | 0x6BFC | size: 0x10
.obj str_stg3_tou_294_13_tou_0000f8b4, local
	.string "stg3_tou_294_13"
.endobj str_stg3_tou_294_13_tou_0000f8b4

# .rodata:0x73C | 0x6C0C | size: 0xE
.obj str_stg3_tou_t_00_tou_0000f8c4, local
	.string "stg3_tou_t_00"
.endobj str_stg3_tou_t_00_tou_0000f8c4

# .rodata:0x74A | 0x6C1A | size: 0x2
.obj gap_03_00006C1A_rodata, global
.hidden gap_03_00006C1A_rodata
	.2byte 0x0000
.endobj gap_03_00006C1A_rodata

# .rodata:0x74C | 0x6C1C | size: 0x9
.obj str_t_door_2_tou_0000f8d4, local
	.string "t_door_2"
.endobj str_t_door_2_tou_0000f8d4

# .rodata:0x755 | 0x6C25 | size: 0x3
.obj gap_03_00006C25_rodata, global
.hidden gap_03_00006C25_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006C25_rodata

# .rodata:0x758 | 0x6C28 | size: 0x9
.obj str_t_door_3_tou_0000f8e0, local
	.string "t_door_3"
.endobj str_t_door_3_tou_0000f8e0

# .rodata:0x761 | 0x6C31 | size: 0x3
.obj gap_03_00006C31_rodata, global
.hidden gap_03_00006C31_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006C31_rodata

# .rodata:0x764 | 0x6C34 | size: 0x14
.obj str_SFX_DOOR_OPEN_WOOD3_tou_0000f8ec, local
	.string "SFX_DOOR_OPEN_WOOD3"
.endobj str_SFX_DOOR_OPEN_WOOD3_tou_0000f8ec

# .rodata:0x778 | 0x6C48 | size: 0x7
.obj str_door_2_tou_0000f900, local
	.string "door_2"
.endobj str_door_2_tou_0000f900

# .rodata:0x77F | 0x6C4F | size: 0x1
.obj gap_03_00006C4F_rodata, global
.hidden gap_03_00006C4F_rodata
	.byte 0x00
.endobj gap_03_00006C4F_rodata

# .rodata:0x780 | 0x6C50 | size: 0x14
.obj str_SFX_DOOR_SHUT_WOOD3_tou_0000f908, local
	.string "SFX_DOOR_SHUT_WOOD3"
.endobj str_SFX_DOOR_SHUT_WOOD3_tou_0000f908

# .rodata:0x794 | 0x6C64 | size: 0xD
.obj str_stg3_tou_445_tou_0000f91c, local
	.string "stg3_tou_445"
.endobj str_stg3_tou_445_tou_0000f91c

# .rodata:0x7A1 | 0x6C71 | size: 0x3
.obj gap_03_00006C71_rodata, global
.hidden gap_03_00006C71_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006C71_rodata

# .rodata:0x7A4 | 0x6C74 | size: 0x7
.obj str_ベルト_tou_0000f92c, local
	.4byte 0x8378838B
	.byte 0x83, 0x67, 0x00
.endobj str_ベルト_tou_0000f92c

# .rodata:0x7AB | 0x6C7B | size: 0x1
.obj gap_03_00006C7B_rodata, global
.hidden gap_03_00006C7B_rodata
	.byte 0x00
.endobj gap_03_00006C7B_rodata

# .rodata:0x7AC | 0x6C7C | size: 0x9
.obj str_c_bred_h_tou_0000f934, local
	.string "c_bred_h"
.endobj str_c_bred_h_tou_0000f934

# .rodata:0x7B5 | 0x6C85 | size: 0x3
.obj gap_03_00006C85_rodata, global
.hidden gap_03_00006C85_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006C85_rodata

# .rodata:0x7B8 | 0x6C88 | size: 0x4
.obj str_C_1_tou_0000f940, local
	.string "C_1"
.endobj str_C_1_tou_0000f940

# .rodata:0x7BC | 0x6C8C | size: 0x5
.obj str_belt_tou_0000f944, local
	.string "belt"
.endobj str_belt_tou_0000f944

# .rodata:0x7C1 | 0x6C91 | size: 0x3
.obj gap_03_00006C91_rodata, global
.hidden gap_03_00006C91_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006C91_rodata

# .rodata:0x7C4 | 0x6C94 | size: 0xA
.obj str_starstone_tou_0000f94c, local
	.string "starstone"
.endobj str_starstone_tou_0000f94c

# .rodata:0x7CE | 0x6C9E | size: 0x2
.obj gap_03_00006C9E_rodata, global
.hidden gap_03_00006C9E_rodata
	.2byte 0x0000
.endobj gap_03_00006C9E_rodata

# .rodata:0x7D0 | 0x6CA0 | size: 0xD
.obj str_stg3_tou_447_tou_0000f958, local
	.string "stg3_tou_447"
.endobj str_stg3_tou_447_tou_0000f958

# .rodata:0x7DD | 0x6CAD | size: 0x3
.obj gap_03_00006CAD_rodata, global
.hidden gap_03_00006CAD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006CAD_rodata

# .rodata:0x7E0 | 0x6CB0 | size: 0xD
.obj str_stg3_tou_448_tou_0000f968, local
	.string "stg3_tou_448"
.endobj str_stg3_tou_448_tou_0000f968

# .rodata:0x7ED | 0x6CBD | size: 0x3
.obj gap_03_00006CBD_rodata, global
.hidden gap_03_00006CBD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006CBD_rodata

# .rodata:0x7F0 | 0x6CC0 | size: 0xF
.obj str_stg3_tou_297_2_tou_0000f978, local
	.string "stg3_tou_297_2"
.endobj str_stg3_tou_297_2_tou_0000f978

# .rodata:0x7FF | 0x6CCF | size: 0x1
.obj gap_03_00006CCF_rodata, global
.hidden gap_03_00006CCF_rodata
	.byte 0x00
.endobj gap_03_00006CCF_rodata

# .rodata:0x800 | 0x6CD0 | size: 0xD
.obj str_クリスチーヌ_tou_0000f988, local
	.4byte 0x834E838A
	.4byte 0x83588360
	.4byte 0x815B836B
	.byte 0x00
.endobj str_クリスチーヌ_tou_0000f988

# .rodata:0x80D | 0x6CDD | size: 0x3
.obj gap_03_00006CDD_rodata, global
.hidden gap_03_00006CDD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006CDD_rodata

# .rodata:0x810 | 0x6CE0 | size: 0x6
.obj str_c_pkr_tou_0000f998, local
	.string "c_pkr"
.endobj str_c_pkr_tou_0000f998

# .rodata:0x816 | 0x6CE6 | size: 0x2
.obj gap_03_00006CE6_rodata, global
.hidden gap_03_00006CE6_rodata
	.2byte 0x0000
.endobj gap_03_00006CE6_rodata

# .rodata:0x818 | 0x6CE8 | size: 0xC
.obj str_c_babyyoshi_tou_0000f9a0, local
	.string "c_babyyoshi"
.endobj str_c_babyyoshi_tou_0000f9a0

# .rodata:0x824 | 0x6CF4 | size: 0xD
.obj str_c_babyyoshi2_tou_0000f9ac, local
	.string "c_babyyoshi2"
.endobj str_c_babyyoshi2_tou_0000f9ac

# .rodata:0x831 | 0x6D01 | size: 0x3
.obj gap_03_00006D01_rodata, global
.hidden gap_03_00006D01_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006D01_rodata

# .rodata:0x834 | 0x6D04 | size: 0xD
.obj str_c_babyyoshi3_tou_0000f9bc, local
	.string "c_babyyoshi3"
.endobj str_c_babyyoshi3_tou_0000f9bc

# .rodata:0x841 | 0x6D11 | size: 0x3
.obj gap_03_00006D11_rodata, global
.hidden gap_03_00006D11_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006D11_rodata

# .rodata:0x844 | 0x6D14 | size: 0xD
.obj str_c_babyyoshi4_tou_0000f9cc, local
	.string "c_babyyoshi4"
.endobj str_c_babyyoshi4_tou_0000f9cc

# .rodata:0x851 | 0x6D21 | size: 0x3
.obj gap_03_00006D21_rodata, global
.hidden gap_03_00006D21_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006D21_rodata

# .rodata:0x854 | 0x6D24 | size: 0xD
.obj str_c_babyyoshi5_tou_0000f9dc, local
	.string "c_babyyoshi5"
.endobj str_c_babyyoshi5_tou_0000f9dc

# .rodata:0x861 | 0x6D31 | size: 0x3
.obj gap_03_00006D31_rodata, global
.hidden gap_03_00006D31_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006D31_rodata

# .rodata:0x864 | 0x6D34 | size: 0xD
.obj str_c_babyyoshi6_tou_0000f9ec, local
	.string "c_babyyoshi6"
.endobj str_c_babyyoshi6_tou_0000f9ec

# .rodata:0x871 | 0x6D41 | size: 0x3
.obj gap_03_00006D41_rodata, global
.hidden gap_03_00006D41_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006D41_rodata

# .rodata:0x874 | 0x6D44 | size: 0xD
.obj str_c_babyyoshi7_tou_0000f9fc, local
	.string "c_babyyoshi7"
.endobj str_c_babyyoshi7_tou_0000f9fc

# .rodata:0x881 | 0x6D51 | size: 0x3
.obj gap_03_00006D51_rodata, global
.hidden gap_03_00006D51_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006D51_rodata

# .rodata:0x884 | 0x6D54 | size: 0xD
.obj str_チビヨッシー_tou_0000fa0c, local
	.4byte 0x83608372
	.4byte 0x83888362
	.4byte 0x8356815B
	.byte 0x00
.endobj str_チビヨッシー_tou_0000fa0c

# .rodata:0x891 | 0x6D61 | size: 0x3
.obj gap_03_00006D61_rodata, global
.hidden gap_03_00006D61_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006D61_rodata

# .rodata:0x894 | 0x6D64 | size: 0x9
.obj str_ヨッシー_tou_0000fa1c, local
	.4byte 0x83888362
	.4byte 0x8356815B
	.byte 0x00
.endobj str_ヨッシー_tou_0000fa1c

# .rodata:0x89D | 0x6D6D | size: 0x3
.obj gap_03_00006D6D_rodata, global
.hidden gap_03_00006D6D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006D6D_rodata

# .rodata:0x8A0 | 0x6D70 | size: 0x8
.obj str_PKR_T_1_tou_0000fa28, local
	.string "PKR_T_1"
.endobj str_PKR_T_1_tou_0000fa28

# .rodata:0x8A8 | 0x6D78 | size: 0x8
.obj str_PKR_S_1_tou_0000fa30, local
	.string "PKR_S_1"
.endobj str_PKR_S_1_tou_0000fa30

# .rodata:0x8B0 | 0x6D80 | size: 0x8
.obj str_PYS_T_1_tou_0000fa38, local
	.string "PYS_T_1"
.endobj str_PYS_T_1_tou_0000fa38

# .rodata:0x8B8 | 0x6D88 | size: 0x8
.obj str_PYS_S_1_tou_0000fa40, local
	.string "PYS_S_1"
.endobj str_PYS_S_1_tou_0000fa40

# .rodata:0x8C0 | 0x6D90 | size: 0xE
.obj str_BGM_STG3_URN1_tou_0000fa48, local
	.string "BGM_STG3_URN1"
.endobj str_BGM_STG3_URN1_tou_0000fa48

# .rodata:0x8CE | 0x6D9E | size: 0x2
.obj gap_03_00006D9E_rodata, global
.hidden gap_03_00006D9E_rodata
	.2byte 0x0000
.endobj gap_03_00006D9E_rodata

# .rodata:0x8D0 | 0x6DA0 | size: 0xB
.obj str_cake_tukue_tou_0000fa58, local
	.string "cake_tukue"
.endobj str_cake_tukue_tou_0000fa58

# .rodata:0x8DB | 0x6DAB | size: 0x1
.obj gap_03_00006DAB_rodata, global
.hidden gap_03_00006DAB_rodata
	.byte 0x00
.endobj gap_03_00006DAB_rodata

# .rodata:0x8DC | 0x6DAC | size: 0x6
.obj str_ep_40_tou_0000fa64, local
	.string "ep_40"
.endobj str_ep_40_tou_0000fa64

# .rodata:0x8E2 | 0x6DB2 | size: 0x2
.obj gap_03_00006DB2_rodata, global
.hidden gap_03_00006DB2_rodata
	.2byte 0x0000
.endobj gap_03_00006DB2_rodata

# .rodata:0x8E4 | 0x6DB4 | size: 0x7
.obj str_usu_00_tou_0000fa6c, local
	.string "usu_00"
.endobj str_usu_00_tou_0000fa6c

# .rodata:0x8EB | 0x6DBB | size: 0x1
.obj gap_03_00006DBB_rodata, global
.hidden gap_03_00006DBB_rodata
	.byte 0x00
.endobj gap_03_00006DBB_rodata

# .rodata:0x8EC | 0x6DBC | size: 0x1
.obj zero_tou_0000fa74, local
	.byte 0x00
.endobj zero_tou_0000fa74

# .rodata:0x8ED | 0x6DBD | size: 0x3
.obj gap_03_00006DBD_rodata, global
.hidden gap_03_00006DBD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006DBD_rodata

# .rodata:0x8F0 | 0x6DC0 | size: 0x8
.obj str_item_01_tou_0000fa78, local
	.string "item_01"
.endobj str_item_01_tou_0000fa78

# .rodata:0x8F8 | 0x6DC8 | size: 0x7
.obj str_fuku_M_tou_0000fa80, local
	.string "fuku_M"
.endobj str_fuku_M_tou_0000fa80

# .rodata:0x8FF | 0x6DCF | size: 0x1
.obj gap_03_00006DCF_rodata, global
.hidden gap_03_00006DCF_rodata
	.byte 0x00
.endobj gap_03_00006DCF_rodata

# .rodata:0x900 | 0x6DD0 | size: 0x7
.obj str_M_make_tou_0000fa88, local
	.string "M_make"
.endobj str_M_make_tou_0000fa88

# .rodata:0x907 | 0x6DD7 | size: 0x1
.obj gap_03_00006DD7_rodata, global
.hidden gap_03_00006DD7_rodata
	.byte 0x00
.endobj gap_03_00006DD7_rodata

# .rodata:0x908 | 0x6DD8 | size: 0x4
.obj str_isu_tou_0000fa90, local
	.string "isu"
.endobj str_isu_tou_0000fa90

# .rodata:0x90C | 0x6DDC | size: 0x6
.obj str_a_b_H_tou_0000fa94, local
	.string "a_b_H"
.endobj str_a_b_H_tou_0000fa94

# .rodata:0x912 | 0x6DE2 | size: 0x2
.obj gap_03_00006DE2_rodata, global
.hidden gap_03_00006DE2_rodata
	.2byte 0x0000
.endobj gap_03_00006DE2_rodata

# .rodata:0x914 | 0x6DE4 | size: 0x7
.obj str_p_slit_tou_0000fa9c, local
	.string "p_slit"
.endobj str_p_slit_tou_0000fa9c

# .rodata:0x91B | 0x6DEB | size: 0x1
.obj gap_03_00006DEB_rodata, global
.hidden gap_03_00006DEB_rodata
	.byte 0x00
.endobj gap_03_00006DEB_rodata

# .rodata:0x91C | 0x6DEC | size: 0x14
.obj str_BGM_EVT_STG3_GANCE1_tou_0000faa4, local
	.string "BGM_EVT_STG3_GANCE1"
.endobj str_BGM_EVT_STG3_GANCE1_tou_0000faa4

# .rodata:0x930 | 0x6E00 | size: 0xE
.obj str_BGM_STG3_TOU2_tou_0000fab8, local
	.string "BGM_STG3_TOU2"
.endobj str_BGM_STG3_TOU2_tou_0000fab8

# .rodata:0x93E | 0x6E0E | size: 0x2
.obj gap_03_00006E0E_rodata, global
.hidden gap_03_00006E0E_rodata
	.2byte 0x0000
.endobj gap_03_00006E0E_rodata

# 0x00024438..0x000279B0 | size: 0x3578
.data
.balign 8

# .data:0x0 | 0x24438 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x24440 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x24444 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x24448 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x2444C | size: 0x4
.obj gap_04_0002444C_data, global
.hidden gap_04_0002444C_data
	.4byte 0x00000000
.endobj gap_04_0002444C_data

# .data:0x18 | 0x24450 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x24458 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x2445C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x24460 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x24468 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x2446C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x24470 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x24474 | size: 0x4
.obj gap_04_00024474_data, global
.hidden gap_04_00024474_data
	.4byte 0x00000000
.endobj gap_04_00024474_data

# .data:0x40 | 0x24478 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x24480 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x24484 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x24488 | size: 0xA8
.obj evt_toile, local
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x0000009D
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFEF7
	.4byte 0x0000007D
	.4byte 0xF24BBA80
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg3_tou_422_tou_0000f188
	.4byte 0x00020032
	.4byte 0xF84064CF
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000009D
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_toile

# .data:0xF8 | 0x24530 | size: 0x30
.obj n_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_1_tou_0000f198
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj n_door_open

# .data:0x128 | 0x24560 | size: 0x30
.obj n_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78B9
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_1_tou_0000f198
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj n_door_close

# .data:0x158 | 0x24590 | size: 0x34
.obj toile_in, local
	.4byte 0x00020032
	.4byte 0xF84064D0
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF84064D1
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte evt_toile
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj toile_in

# .data:0x18C | 0x245C4 | size: 0x8C
.obj toile_out, local
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_anm_mizu_tou_0000f1a0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_anm_futa_tou_0000f1ac
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG3_TOILET1_tou_0000f1b8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF84064D1
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj toile_out

# .data:0x218 | 0x24650 | size: 0xB4
.obj bero_data, local
	.4byte str_n_bero_tou_0000f1cc
	.4byte 0x00010004
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_tou_04_tou_0000f1d4
	.4byte str_s_bero_6_tou_0000f1dc
	.4byte 0x00050005
	.4byte n_door_close
	.4byte n_door_open
	.4byte str_dokan_tou_0000f1e8
	.4byte 0x00020000
	.4byte 0x00000009
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte toile_in
	.4byte 0x00000006
	.4byte toile_out
	.4byte str_tou_04_tou_0000f1d4
	.4byte str_toire2_tou_0000f1f0
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj bero_data

# .data:0x2CC | 0x24704 | size: 0x30
.obj init_togenoko, local
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_tou_0000f1f8
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0xFFFFFFCE
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_tou_0000f1f8
	.4byte 0x0000010E
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_togenoko

# .data:0x2FC | 0x24734 | size: 0x220
.obj talk_togenoko, local
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x000000AC
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x0000009D
	.4byte 0x00020018
	.4byte 0xF84064DF
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_08_01_13_01_tou_0000f1fc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_tou_get_ranking_25_text_1FE0
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_08_01_04_tou_0000f214
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000009
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_08_01_05_tou_0000f228
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000008
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_08_01_06_tou_0000f23c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000007
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_08_01_07_tou_0000f250
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_08_01_08_tou_0000f264
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000005
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_08_01_09_tou_0000f278
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_08_01_10_tou_0000f28c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_08_01_11_tou_0000f2a0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_08_01_12_tou_0000f2b4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_08_01_13_tou_0000f2c8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xF8406549
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF8406547
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_re_040_tou_0000f2dc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_re_041_1_tou_0000f2ec
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_re_041_tou_0000f300
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj talk_togenoko

# .data:0x51C | 0x24954 | size: 0x30
.obj init_togemet, local
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_トゲメット_tou_0000f310
	.4byte 0x00000078
	.4byte 0x00000000
	.4byte 0x00000050
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_トゲメット_tou_0000f310
	.4byte 0x0000010E
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_togemet

# .data:0x54C | 0x24984 | size: 0x220
.obj talk_togemet, local
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x000000AC
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x0000009D
	.4byte 0x00020018
	.4byte 0xF84064DF
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_08_02_13_01_tou_0000f31c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_tou_get_ranking_25_text_1FE0
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_08_02_04_tou_0000f334
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000009
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_08_02_05_tou_0000f348
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000008
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_08_02_06_tou_0000f35c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000007
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_08_02_07_tou_0000f370
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_08_02_08_tou_0000f384
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000005
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_08_02_09_tou_0000f398
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_08_02_10_tou_0000f3ac
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_08_02_11_tou_0000f3c0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_08_02_12_tou_0000f3d4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_08_02_13_tou_0000f3e8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xF8406549
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF8406547
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_re_045_tou_0000f3fc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_re_046_1_tou_0000f40c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_re_046_tou_0000f420
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj talk_togemet

# .data:0x76C | 0x24BA4 | size: 0x30
.obj init_hammerbros, local
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ハンマーブロス_tou_0000f430
	.4byte 0xFFFFFF8D
	.4byte 0x00000000
	.4byte 0x00000073
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ハンマーブロス_tou_0000f430
	.4byte 0x0000005A
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_hammerbros

# .data:0x79C | 0x24BD4 | size: 0x220
.obj talk_hammerbros, local
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x000000AC
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x0000009D
	.4byte 0x00020018
	.4byte 0xF84064DF
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_08_03_13_01_tou_0000f440
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_tou_get_ranking_25_text_1FE0
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_08_03_04_tou_0000f458
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000009
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_08_03_05_tou_0000f46c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000008
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_08_03_06_tou_0000f480
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000007
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_08_03_07_tou_0000f494
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_08_03_08_tou_0000f4a8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000005
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_08_03_09_tou_0000f4bc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_08_03_10_tou_0000f4d0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_08_03_11_tou_0000f4e4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_08_03_12_tou_0000f4f8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_08_03_13_tou_0000f50c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xF8406549
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF8406547
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_re_050_tou_0000f520
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_re_051_1_tou_0000f530
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_re_051_tou_0000f544
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj talk_hammerbros

# .data:0x9BC | 0x24DF4 | size: 0x30
.obj init_uranoko, local
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_tou_0000f1f8
	.4byte 0xFFFFFF60
	.4byte 0x00000000
	.4byte 0xFFFFFFCE
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_tou_0000f1f8
	.4byte 0x0000005A
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_uranoko

# .data:0x9EC | 0x24E24 | size: 0x220
.obj talk_uranoko, local
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x000000AC
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x0000009D
	.4byte 0x00020018
	.4byte 0xF84064DF
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_08_04_13_01_tou_0000f554
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_tou_get_ranking_25_text_1FE0
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_08_04_04_tou_0000f56c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000009
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_08_04_05_tou_0000f580
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000008
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_08_04_06_tou_0000f594
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000007
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_08_04_07_tou_0000f5a8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_08_04_08_tou_0000f5bc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000005
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_08_04_09_tou_0000f5d0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_08_04_10_tou_0000f5e4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_08_04_11_tou_0000f5f8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_08_04_11_02_tou_0000f60c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_08_04_12_tou_0000f624
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xF8406549
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF8406547
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_re_055_tou_0000f638
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_re_056_1_tou_0000f648
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_re_056_tou_0000f65c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj talk_uranoko

# .data:0xC0C | 0x25044 | size: 0x284
.obj npcEnt, local
	.4byte str_ガンス_tou_0000f66c
	.4byte 0x40000620
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_0000f674
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ガードマン_tou_0000f680
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_トゲノコエース_tou_0000f68c
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte init_togenoko
	.4byte 0x00000000
	.4byte talk_togenoko
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ウラノコ_tou_0000f69c
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte init_uranoko
	.4byte 0x00000000
	.4byte talk_uranoko
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_チャンピョン_tou_0000f6a8
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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

# .data:0xE90 | 0x252C8 | size: 0x118
.obj evt_sensyu, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFB5
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFFE2
	.4byte 0x00000000
	.4byte 0xFFFFFFB5
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ガンス_tou_0000f66c
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0xFFFFFFB5
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_ガンス_tou_0000f66c
	.4byte str_mario_tou_0000f6b8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x00000091
	.4byte 0x00000216
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0xFFFFFFF8
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_50_tou_0000f6c0
	.4byte 0x00000000
	.4byte str_ガンス_tou_0000f66c
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0006005B
	.4byte evt_fade_set_mapchange_type
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_tou_05_tou_0000f6cc
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_sensyu

# .data:0xFA8 | 0x253E0 | size: 0x1AC
.obj evt_1st_sub, local
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte 0xFE363C88
	.4byte 0x00000020
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0xFFFFFF7E
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_set_dir_npc
	.4byte 0xFE363C88
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte bero_open_door_play_se
	.4byte 0x0002000C
	.4byte 0xFE363C88
	.4byte str_キノシコワ_tou_0000f674
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x000001F4
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x00000104
	.4byte 0x000001F4
	.4byte 0x00000021
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0001005E
	.4byte n_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0xFFFFFF38
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte bero_close_door_play_se
	.4byte 0x0002000C
	.4byte 0xFE363C88
	.4byte str_キノシコワ_tou_0000f674
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000104
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00000021
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0001005E
	.4byte n_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_1st_sub

# .data:0x1154 | 0x2558C | size: 0xBAC
.obj evt_1st_leagu, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_キノシコワ_tou_0000f674
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFF4C
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFF42
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFF38
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte tou_champion_belt_25_text_34
	.4byte str_チャンピョン_tou_0000f6a8
	.4byte 0x0000006D
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte bero_open_door_play_se
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0xFFFFFF4C
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0001005E
	.4byte n_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_キノシコワ_tou_0000f674
	.4byte 0x00000002
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_0000f674
	.4byte 0xFFFFFFFF
	.4byte 0xFFFFFFA6
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFFFD
	.4byte 0xFFFFFFB0
	.4byte 0xF24C5A80
	.4byte 0x0002005B
	.4byte evt_mario_set_dir_npc
	.4byte str_キノシコワ_tou_0000f674
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFF9C
	.4byte 0xF24C5A80
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0x00000028
	.4byte 0xFFFFFF9C
	.4byte 0xF24C5A80
	.4byte 0x0003005B
	.4byte evt_party_set_dir_npc
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_0000f674
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_0000f674
	.4byte 0xFFFFFFD8
	.4byte 0xFFFFFFA6
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_キノシコワ_tou_0000f674
	.4byte str_mario_tou_0000f6b8
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte bero_close_door_play_se
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFFFFFF4C
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0001005E
	.4byte n_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFEC
	.4byte 0x00000054
	.4byte 0x000000AE
	.4byte 0xFFFFFFEC
	.4byte 0x00000025
	.4byte 0xFFFFFFA3
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_294_tou_0000f6d4
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_0000f674
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_キノシコワ_tou_0000f674
	.4byte str_M_1_tou_0000f6e4
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_キノシコワ_tou_0000f674
	.4byte str_S_1_tou_0000f6e8
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_キノシコワ_tou_0000f674
	.4byte 0x0001005E
	.4byte evt_1st_sub
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF76
	.4byte 0x00000096
	.4byte 0x00000215
	.4byte 0xFFFFFF76
	.4byte 0x00000032
	.4byte 0xFFFFFFF8
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000008A
	.4byte 0x00000096
	.4byte 0x00000215
	.4byte 0x0000008A
	.4byte 0x00000032
	.4byte 0xFFFFFFF8
	.4byte 0x00000BB8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000DAC
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000014
	.4byte 0x00000068
	.4byte 0x000000EE
	.4byte 0x00000014
	.4byte 0x0000003C
	.4byte 0xFFFFFFF8
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg3_tou_294_01_tou_0000f6ec
	.4byte 0x0003005B
	.4byte evt_snd_bgmoff_f
	.4byte 0x00000200
	.4byte 0x000007D0
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_チャンピョン_tou_0000f6a8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFF4C
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte bero_open_door_play_se
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0xFFFFFEFC
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0001005E
	.4byte n_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFFC4
	.4byte 0xFFFFFFAB
	.4byte 0xF24B6A80
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFFA1
	.4byte 0xFFFFFFAB
	.4byte 0xF24B6A80
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x0000012C
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_チャンピョン_tou_0000f6a8
	.4byte 0x00000002
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_チャンピョン_tou_0000f6a8
	.4byte 0x00000000
	.4byte 0xFFFFFFAB
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte bero_close_door_play_se
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFFFFFEFC
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0001005E
	.4byte n_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_294_02_tou_0000f6fc
	.4byte 0x00000000
	.4byte str_チャンピョン_tou_0000f6a8
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFE2
	.4byte 0x00000068
	.4byte 0x000000EE
	.4byte 0xFFFFFFE2
	.4byte 0x0000003C
	.4byte 0xFFFFFFF8
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_チャンピョン_tou_0000f6a8
	.4byte str_mario_tou_0000f6b8
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_チャンピョン_tou_0000f6a8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_294_02_01_tou_0000f70c
	.4byte 0x00000000
	.4byte str_チャンピョン_tou_0000f6a8
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_FIND_tou_0000f720
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_5B_tou_0000f738
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFB0
	.4byte 0x00000068
	.4byte 0x000000EE
	.4byte 0xFFFFFFB0
	.4byte 0x0000003C
	.4byte 0xFFFFFFF8
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_2_tou_0000f740
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg3_tou_294_03_tou_0000f748
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFF6
	.4byte 0x00000068
	.4byte 0x000000EE
	.4byte 0xFFFFFFF6
	.4byte 0x0000003C
	.4byte 0xFFFFFFF8
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFFEC
	.4byte 0xFFFFFFB5
	.4byte 0xF24B6A80
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_294_04_tou_0000f758
	.4byte 0x00000000
	.4byte str_チャンピョン_tou_0000f6a8
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg3_tou_294_05_tou_0000f768
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_NOD1_tou_0000f778
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_2_tou_0000f790
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_tou_0000f798
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_294_06_tou_0000f7a0
	.4byte 0x00000000
	.4byte str_チャンピョン_tou_0000f6a8
	.4byte 0x0003005B
	.4byte evt_party_set_dir_npc
	.4byte 0x00000000
	.4byte str_チャンピョン_tou_0000f6a8
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_294_06_01_tou_0000f7b0
	.4byte 0x00000000
	.4byte str_チャンピョン_tou_0000f6a8
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg3_tou_294_07_tou_0000f7c4
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_294_08_tou_0000f7d4
	.4byte 0x00000000
	.4byte str_チャンピョン_tou_0000f6a8
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_チャンピョン_tou_0000f6a8
	.4byte 0x0001005E
	.4byte evt_1st_sub
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFD3
	.4byte 0x00000078
	.4byte 0x000001E4
	.4byte 0xFFFFFFD3
	.4byte 0x0000002D
	.4byte 0xFFFFFFF7
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg3_tou_294_09_tou_0000f7e4
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_1_tou_0000f7f4
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_tou_0000f798
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg3_tou_294_10_tou_0000f7fc
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0001006C
	.4byte 0xFE363C8B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_FIND_tou_0000f80c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000001
	.4byte str_BGM_FF_MAIL_RECEPTIO_tou_0000f824
	.4byte 0x0002005D
	.4byte evt_sub_mail_vibration
	.4byte 0xFE363C8A
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg3_tou_294_11_tou_0000f83c
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002006A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00020018
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001005B
	.4byte evt_mario_balloon_bikkuri
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_key_get_buttontrg
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000100
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001005B
	.4byte evt_mario_balloon_off
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000201
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000120
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_MAIL_RECEPTION1_tou_0000f84c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFE363C8A
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_rumble_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_9_tou_0000f860
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_MAIL_RECEPTION2_tou_0000f868
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_10_tou_0000f87c
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_snd_bgmon_f
	.4byte 0x00000300
	.4byte str_BGM_STG3_TOU1_tou_0000f884
	.4byte 0x000007D0
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00006800
	.4byte 0x0004005B
	.4byte evt_snd_envon_f
	.4byte 0x00000110
	.4byte str_ENV_STG3_TOU6_tou_0000f894
	.4byte 0x000007D0
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_294_12_tou_0000f8a4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_tou_0000f798
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg3_tou_294_13_tou_0000f8b4
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_pouch_receive_mail
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_pouch_open_mail
	.4byte 0x00000006
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000008A
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_1st_leagu

# .data:0x1D00 | 0x26138 | size: 0x3B0
.obj evt_toile_door, local
	.4byte 0x00020018
	.4byte 0xF84064CF
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF84064D4
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_t_00_tou_0000f8c4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x0000009D
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_t_00_tou_0000f8c4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x000000AC
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_t_00_tou_0000f8c4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF84064DF
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_t_00_tou_0000f8c4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_hitobj_attr_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_t_door_2_tou_0000f8d4
	.4byte 0x00800000
	.4byte 0x0005005B
	.4byte evt_hitobj_attr_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_t_door_3_tou_0000f8e0
	.4byte 0x00800000
	.4byte 0x0001005B
	.4byte evt_mario_adjust_dir
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000100
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFF38
	.4byte 0x0000006E
	.4byte 0xF24BBA80
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFF38
	.4byte 0x00000082
	.4byte 0xF24BBA80
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000100
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_DOOR_OPEN_WOOD3_tou_0000f8ec
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x00000050
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_2_tou_0000f900
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_move_pos
	.4byte 0x00000000
	.4byte 0xFFFFFEF2
	.4byte 0x0000006E
	.4byte 0x000002BC
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos
	.4byte 0xFFFFFEF2
	.4byte 0x00000082
	.4byte 0x000002BC
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_DOOR_SHUT_WOOD3_tou_0000f908
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000050
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_2_tou_0000f900
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_hitobj_attr_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_t_door_2_tou_0000f8d4
	.4byte 0x00800000
	.4byte 0x0005005B
	.4byte evt_hitobj_attr_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_t_door_3_tou_0000f8e0
	.4byte 0x00800000
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_toile_door

# .data:0x20B0 | 0x264E8 | size: 0x220
.obj evt_toile_door2, local
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_hitobj_attr_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_t_door_2_tou_0000f8d4
	.4byte 0x00800000
	.4byte 0x0005005B
	.4byte evt_hitobj_attr_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_t_door_3_tou_0000f8e0
	.4byte 0x00800000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_DOOR_OPEN_WOOD3_tou_0000f8ec
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x00000050
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_2_tou_0000f900
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_move_pos
	.4byte 0x00000000
	.4byte 0xFFFFFF38
	.4byte 0x0000006E
	.4byte 0x000002BC
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos
	.4byte 0xFFFFFF38
	.4byte 0x00000082
	.4byte 0x000002BC
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_DOOR_SHUT_WOOD3_tou_0000f908
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000050
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_2_tou_0000f900
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_hitobj_attr_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_t_door_2_tou_0000f8d4
	.4byte 0x00800000
	.4byte 0x0005005B
	.4byte evt_hitobj_attr_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_t_door_3_tou_0000f8e0
	.4byte 0x00800000
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_toile_door2

# .data:0x22D0 | 0x26708 | size: 0x488
.obj evt_champion_win, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_check
	.4byte str_ハンマーブロス_tou_0000f430
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_npc_get_reglid
	.4byte str_ハンマーブロス_tou_0000f430
	.4byte 0xFE363C80
	.4byte 0x0001005F
	.4byte 0xFE363C80
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFFA6
	.4byte 0x00000000
	.4byte 0xFFFFFFA1
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFF88
	.4byte 0x00000000
	.4byte 0xFFFFFF97
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ガンス_tou_0000f66c
	.4byte 0xFFFFFFD3
	.4byte 0x00000000
	.4byte 0xFFFFFFA1
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_キノシコワ_tou_0000f674
	.4byte 0xFFFFFFF1
	.4byte 0x00000000
	.4byte 0xFFFFFFA6
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFB5
	.4byte 0x0000005B
	.4byte 0x0000010A
	.4byte 0xFFFFFFB5
	.4byte 0x00000039
	.4byte 0xFFFFFFF5
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_ガンス_tou_0000f66c
	.4byte str_mario_tou_0000f6b8
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_キノシコワ_tou_0000f674
	.4byte str_mario_tou_0000f6b8
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ガンス_tou_0000f66c
	.4byte 0x00008000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_キノシコワ_tou_0000f674
	.4byte 0x00008000
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_ガンス_tou_0000f66c
	.4byte 0x00008000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_0000f674
	.4byte 0x00008000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_445_tou_0000f91c
	.4byte 0x00000000
	.4byte str_ガンス_tou_0000f66c
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガンス_tou_0000f66c
	.4byte 0xFFFFFFC4
	.4byte 0xFFFFFFA1
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガンス_tou_0000f66c
	.4byte 0xFFFFFFD3
	.4byte 0xFFFFFFA1
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_ガンス_tou_0000f66c
	.4byte str_mario_tou_0000f6b8
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_ベルト_tou_0000f92c
	.4byte str_c_bred_h_tou_0000f934
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000038
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ベルト_tou_0000f92c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ベルト_tou_0000f92c
	.4byte str_C_1_tou_0000f940
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000004
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000000F
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte str_belt_tou_0000f944
	.4byte str_starstone_tou_0000f94c
	.4byte 0x00000009
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A7D80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte unk_tou_00007154
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_belt_tou_0000f944
	.4byte 0x00000041
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000011
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte icon_off
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_belt_tou_0000f944
	.4byte 0x0002005B
	.4byte evt_item_get_item_end_wait
	.4byte str_belt_tou_0000f944
	.4byte 0x0002005B
	.4byte evt_npc_delete
	.4byte str_ベルト_tou_0000f92c
	.4byte 0x0002005B
	.4byte evt_eff_delete
	.4byte str_belt_tou_0000f944
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_447_tou_0000f958
	.4byte 0x00000000
	.4byte str_ガンス_tou_0000f66c
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_448_tou_0000f968
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_0000f674
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_キノシコワ_tou_0000f674
	.4byte 0x00000002
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_0000f674
	.4byte 0x00000000
	.4byte 0xFFFFFF7E
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte bero_open_door_play_se
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0001005E
	.4byte n_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_0000f674
	.4byte 0xFFFFFFFB
	.4byte 0xFFFFFF38
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_キノシコワ_tou_0000f674
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFF7E
	.4byte 0xF24B6A80
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFFFB
	.4byte 0xFFFFFF38
	.4byte 0xF24B6A80
	.4byte 0x0000006D
	.4byte 0x00020032
	.4byte 0xF84064CA
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_tou_04_tou_0000f1d4
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_champion_win

# .data:0x2758 | 0x26B90 | size: 0x28
.obj bed_entry, local
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte evt_tou_bed_25_data_2382C
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bed_entry

# .data:0x2780 | 0x26BB8 | size: 0xD4
.obj evt_tou_08_cake_25_data_26BB8, global
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ウラノコ_tou_0000f69c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFE363C80
	.4byte 0x0000005A
	.4byte 0x0000011B
	.4byte 0xFE363C80
	.4byte 0x0000002D
	.4byte 0xFFFFFFF7
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_mario_set_dir_npc
	.4byte str_ウラノコ_tou_0000f69c
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_party_set_dir_npc
	.4byte 0x00000000
	.4byte str_ウラノコ_tou_0000f69c
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_297_2_tou_0000f978
	.4byte 0x00000000
	.4byte str_ウラノコ_tou_0000f69c
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF840650F
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_tou_08_cake_25_data_26BB8

# .data:0x2854 | 0x26C8C | size: 0x150
.obj epilogue_npc_entry, local
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_クリスチーヌ_tou_0000f988
	.4byte str_c_pkr_tou_0000f998
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_クリスチーヌ_tou_0000f988
	.4byte str_クリスチーヌ_tou_0000f988
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_クリスチーヌ_tou_0000f988
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0xFFFFFFCE
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_クリスチーヌ_tou_0000f988
	.4byte 0x0000010E
	.4byte 0x0002005B
	.4byte get_yoshi_color
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_c_babyyoshi_tou_0000f9a0
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_c_babyyoshi2_tou_0000f9ac
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_c_babyyoshi3_tou_0000f9bc
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_c_babyyoshi4_tou_0000f9cc
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_c_babyyoshi5_tou_0000f9dc
	.4byte 0x00010024
	.4byte 0x00000005
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_c_babyyoshi6_tou_0000f9ec
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_c_babyyoshi7_tou_0000f9fc
	.4byte 0x00000031
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_チビヨッシー_tou_0000fa0c
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_チビヨッシー_tou_0000fa0c
	.4byte str_ヨッシー_tou_0000fa1c
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_チビヨッシー_tou_0000fa0c
	.4byte 0xFFFFFFE2
	.4byte 0x00000000
	.4byte 0xFFFFFFCE
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_チビヨッシー_tou_0000fa0c
	.4byte 0x0000005A
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_チビヨッシー_tou_0000fa0c
	.4byte 0x40000420
	.4byte 0x00000002
	.4byte 0x00000001
.endobj epilogue_npc_entry

# .data:0x29A4 | 0x26DDC | size: 0x508
.obj epilogue_evt_sub, local
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_クリスチーヌ_tou_0000f988
	.4byte str_PKR_T_1_tou_0000fa28
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_クリスチーヌ_tou_0000f988
	.4byte str_PKR_S_1_tou_0000fa30
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_チビヨッシー_tou_0000fa0c
	.4byte str_PYS_T_1_tou_0000fa38
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_チビヨッシー_tou_0000fa0c
	.4byte str_PYS_S_1_tou_0000fa40
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000BB8
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte bero_open_door_play_se
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0xFFFFFF4C
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_1_tou_0000f198
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ガードマン_tou_0000f680
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFF56
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガードマン_tou_0000f680
	.4byte 0x00000000
	.4byte 0xFFFFFFA6
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_ガードマン_tou_0000f680
	.4byte str_チビヨッシー_tou_0000fa0c
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte bero_close_door_play_se
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFFFFFF4C
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_1_tou_0000f198
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_クリスチーヌ_tou_0000f988
	.4byte str_PKR_T_1_tou_0000fa28
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_クリスチーヌ_tou_0000f988
	.4byte str_PKR_S_1_tou_0000fa30
	.4byte 0x00020018
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_チビヨッシー_tou_0000fa0c
	.4byte str_PYS_T_1_tou_0000fa38
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_チビヨッシー_tou_0000fa0c
	.4byte str_PYS_S_1_tou_0000fa40
	.4byte 0x00020018
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_チビヨッシー_tou_0000fa0c
	.4byte str_PYS_T_1_tou_0000fa38
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_チビヨッシー_tou_0000fa0c
	.4byte str_PYS_S_1_tou_0000fa40
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ガードマン_tou_0000f680
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x0000000F
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_チビヨッシー_tou_0000fa0c
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガードマン_tou_0000f680
	.4byte 0x00000000
	.4byte 0xFFFFFF7E
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_チビヨッシー_tou_0000fa0c
	.4byte 0xFFFFFFF1
	.4byte 0xFFFFFF92
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte bero_open_door_play_se
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_1_tou_0000f198
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガードマン_tou_0000f680
	.4byte 0x00000000
	.4byte 0xFFFFFF38
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ガードマン_tou_0000f680
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_チビヨッシー_tou_0000fa0c
	.4byte 0x00000000
	.4byte 0xFFFFFF38
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_チビヨッシー_tou_0000fa0c
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte bero_close_door_play_se
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFFFFFF4C
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_1_tou_0000f198
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000BB8
	.4byte 0x0002005B
	.4byte evt_npc_reverse_ry
	.4byte str_クリスチーヌ_tou_0000f988
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_npc_wait_pera
	.4byte str_クリスチーヌ_tou_0000f988
	.4byte 0x0002005B
	.4byte evt_npc_reverse_ry
	.4byte str_クリスチーヌ_tou_0000f988
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_npc_wait_pera
	.4byte str_クリスチーヌ_tou_0000f988
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj epilogue_evt_sub

# .data:0x2EAC | 0x272E4 | size: 0x14C
.obj epilogue_evt, local
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG3_URN1_tou_0000fa48
	.4byte 0x0003005B
	.4byte evt_snd_bgm_scope
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_cake_tukue_tou_0000fa58
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_チビヨッシー_tou_0000fa0c
	.4byte 0x00008000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000151
	.4byte 0x00000000
	.4byte 0x0000002D
	.4byte 0xFFFFFFF7
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_チビヨッシー_tou_0000fa0c
	.4byte 0x00008000
	.4byte 0x0001005C
	.4byte epilogue_evt_sub
	.4byte 0x0001005B
	.4byte evt_fade_end_wait
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_pouch_get_yoshiname
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte evt_msg_print_insert
	.4byte 0x00000000
	.4byte str_ep_40_tou_0000fa64
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_snd_bgmoff_f
	.4byte 0x00000200
	.4byte 0x00000BB8
	.4byte 0x0003005B
	.4byte evt_snd_envoff_f
	.4byte 0x00000200
	.4byte 0x00000BB8
	.4byte 0x0006005B
	.4byte evt_fade_set_mapchange_type
	.4byte 0x00000001
	.4byte 0x0000000A
	.4byte 0x00000384
	.4byte 0x00000009
	.4byte 0x00000384
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_usu_00_tou_0000fa6c
	.4byte zero_tou_0000fa74
	.4byte 0x00000002
	.4byte 0x00000001
.endobj epilogue_evt

# .data:0x2FF8 | 0x27430 | size: 0xFC
.obj unk_evt_tou_00038338, local
	.4byte 0x0002005D
	.4byte evt_tou_match_after_default_25_data_6024
	.4byte 0xFE363C8A
	.4byte 0x0003005B
	.4byte evt_npc_check
	.4byte str_ハンマーブロス_tou_0000f430
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_npc_get_reglid
	.4byte str_ハンマーブロス_tou_0000f430
	.4byte 0xFE363C80
	.4byte 0x0001005F
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_npc_check
	.4byte str_トゲメット_tou_0000f310
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_get_reglid
	.4byte str_トゲメット_tou_0000f310
	.4byte 0xFE363C80
	.4byte 0x0001005F
	.4byte 0xFE363C80
	.4byte 0x00000021
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002006A
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_npc_restart_regular_event
	.4byte str_ハンマーブロス_tou_0000f430
	.4byte 0x0003005B
	.4byte evt_npc_check
	.4byte str_トゲメット_tou_0000f310
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_npc_restart_regular_event
	.4byte str_トゲメット_tou_0000f310
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj unk_evt_tou_00038338

# .data:0x30F4 | 0x2752C | size: 0x484
.obj tou_08_init_evt_25_data_2752C, global
	.4byte 0x0002005B
	.4byte evt_tou_get_ranking_25_text_1FE0
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010028
	.4byte 0x00000003
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000098
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000098
	.4byte 0x00000021
	.4byte 0x00010028
	.4byte 0x00000007
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x0000008F
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000008F
	.4byte 0x00000021
	.4byte 0x00010028
	.4byte 0x00000008
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x0000008B
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000008B
	.4byte 0x00000021
	.4byte 0x00010028
	.4byte 0x0000000A
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x0000008A
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000008A
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00020018
	.4byte 0xF8406514
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF8406514
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000008F
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406515
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF8406515
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000090
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406516
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF8406516
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000099
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_01_tou_0000fa78
	.4byte 0x00000083
	.4byte 0xFFFFFF10
	.4byte 0x00000000
	.4byte 0xFFFFFFA6
	.4byte 0x00000010
	.4byte 0xF840655C
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte evt_tou_locker_init_25_data_EB4
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_fuku_M_tou_0000fa80
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_npc_setup
	.4byte npcEnt
	.4byte 0x0001005E
	.4byte init_hammerbros
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_ハンマーブロス_tou_0000f430
	.4byte 0x00000006
	.4byte talk_hammerbros
	.4byte 0x0001005E
	.4byte init_togemet
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_トゲメット_tou_0000f310
	.4byte 0x00000006
	.4byte talk_togemet
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_M_make_tou_0000fa88
	.4byte 0x00000000
	.4byte evt_tou_match_make_default_25_data_28F0
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte evt_tou_monitor_init_25_data_10F8
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_isu_tou_0000fa90
	.4byte 0x00000002
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_t_door_2_tou_0000f8d4
	.4byte 0x00000000
	.4byte evt_toile_door
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_t_door_3_tou_0000f8e0
	.4byte 0x00000000
	.4byte evt_toile_door2
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_hitobj_name_callback
	.4byte str_a_b_H_tou_0000fa94
	.4byte bed_entry
	.4byte 0x0002005B
	.4byte evt_sub_animgroup_async
	.4byte str_p_slit_tou_0000fa9c
	.4byte 0x00020018
	.4byte 0xF84064D5
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF84064D5
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG3_TOU1_tou_0000f884
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00006800
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG3_TOU6_tou_0000f894
	.4byte 0x0002005B
	.4byte evt_tou_get_ranking_25_text_1FE0
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF84064D5
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte evt_champion_win
	.4byte 0x00000020
	.4byte 0x0001005C
	.4byte unk_evt_tou_00038338
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x00000082
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_STG3_GANCE1_tou_0000faa4
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000200
	.4byte 0x0001005C
	.4byte evt_sensyu
	.4byte 0x0000002A
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x0000007F
	.4byte 0x00000089
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG3_TOU2_tou_0000fab8
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG3_TOU6_tou_0000f894
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00006800
	.4byte 0x00010029
	.4byte 0x000000A5
	.4byte 0x00020019
	.4byte 0xF5DE0180
	.4byte 0x00000192
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG3_TOU2_tou_0000fab8
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG3_TOU6_tou_0000f894
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00006800
	.4byte 0x00000021
	.4byte 0x0000002A
	.4byte 0x00020019
	.4byte 0xF84064D9
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG3_TOU1_tou_0000f884
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG3_TOU6_tou_0000f894
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG3_TOU2_tou_0000fab8
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG3_TOU6_tou_0000f894
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00006800
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00000031
	.4byte 0x00020018
	.4byte 0xF84064D9
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF84064D9
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte evt_1st_leagu
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF840650F
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte evt_tou_08_cake_25_data_26BB8
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000192
	.4byte 0x0002005B
	.4byte evt_mario_kill_party
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte epilogue_npc_entry
	.4byte 0x0001005C
	.4byte epilogue_evt
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj tou_08_init_evt_25_data_2752C
