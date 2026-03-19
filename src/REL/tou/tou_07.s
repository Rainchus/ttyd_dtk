.include "macros.inc"
.file "tou_07.o"

# 0x00006DF4..0x00007010 | size: 0x21C
.text
.balign 4

# .text:0x0 | 0x6DF4 | size: 0x6C
.fn unk_tou_00006eb8, local
/* 00006DF4 00006EB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00006DF8 00006EBC  7C 08 02 A6 */	mflr r0
/* 00006DFC 00006EC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 00006E00 00006EC4  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00006E04 00006EC8  7C 7E 1B 78 */	mr r30, r3
/* 00006E08 00006ECC  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00006E0C 00006ED0  4B FF C6 11 */	bl marioKeyOffChk
/* 00006E10 00006ED4  2C 03 00 00 */	cmpwi r3, 0x0
/* 00006E14 00006ED8  40 82 00 10 */	bne .L_00006E24
/* 00006E18 00006EDC  4B FF C6 05 */	bl marioCtrlOffChk
/* 00006E1C 00006EE0  2C 03 00 00 */	cmpwi r3, 0x0
/* 00006E20 00006EE4  41 82 00 18 */	beq .L_00006E38
.L_00006E24:
/* 00006E24 00006EE8  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00006E28 00006EEC  7F C3 F3 78 */	mr r3, r30
/* 00006E2C 00006EF0  38 A0 00 01 */	li r5, 0x1
/* 00006E30 00006EF4  4B FF C5 ED */	bl evtSetValue
/* 00006E34 00006EF8  48 00 00 14 */	b .L_00006E48
.L_00006E38:
/* 00006E38 00006EFC  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00006E3C 00006F00  7F C3 F3 78 */	mr r3, r30
/* 00006E40 00006F04  38 A0 00 00 */	li r5, 0x0
/* 00006E44 00006F08  4B FF C5 D9 */	bl evtSetValue
.L_00006E48:
/* 00006E48 00006F0C  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00006E4C 00006F10  38 60 00 02 */	li r3, 0x2
/* 00006E50 00006F14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00006E54 00006F18  7C 08 03 A6 */	mtlr r0
/* 00006E58 00006F1C  38 21 00 10 */	addi r1, r1, 0x10
/* 00006E5C 00006F20  4E 80 00 20 */	blr
.endfn unk_tou_00006eb8

# .text:0x6C | 0x6E60 | size: 0x28
.fn unk_tou_00006f24, local
/* 00006E60 00006F24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00006E64 00006F28  7C 08 02 A6 */	mflr r0
/* 00006E68 00006F2C  38 60 00 80 */	li r3, 0x80
/* 00006E6C 00006F30  90 01 00 14 */	stw r0, 0x14(r1)
/* 00006E70 00006F34  4B FF C5 AD */	bl psndClearFlag
/* 00006E74 00006F38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00006E78 00006F3C  38 60 00 02 */	li r3, 0x2
/* 00006E7C 00006F40  7C 08 03 A6 */	mtlr r0
/* 00006E80 00006F44  38 21 00 10 */	addi r1, r1, 0x10
/* 00006E84 00006F48  4E 80 00 20 */	blr
.endfn unk_tou_00006f24

# .text:0x94 | 0x6E88 | size: 0x28
.fn unk_tou_00006f4c, local
/* 00006E88 00006F4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00006E8C 00006F50  7C 08 02 A6 */	mflr r0
/* 00006E90 00006F54  38 60 00 80 */	li r3, 0x80
/* 00006E94 00006F58  90 01 00 14 */	stw r0, 0x14(r1)
/* 00006E98 00006F5C  4B FF C5 85 */	bl psndSetFlag
/* 00006E9C 00006F60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00006EA0 00006F64  38 60 00 02 */	li r3, 0x2
/* 00006EA4 00006F68  7C 08 03 A6 */	mtlr r0
/* 00006EA8 00006F6C  38 21 00 10 */	addi r1, r1, 0x10
/* 00006EAC 00006F70  4E 80 00 20 */	blr
.endfn unk_tou_00006f4c

# .text:0xBC | 0x6EB0 | size: 0x30
.fn mario_recovery, local
/* 00006EB0 00006F74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00006EB4 00006F78  7C 08 02 A6 */	mflr r0
/* 00006EB8 00006F7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 00006EBC 00006F80  4B FF C5 61 */	bl pouchGetMaxHP
/* 00006EC0 00006F84  4B FF C5 5D */	bl pouchSetHP
/* 00006EC4 00006F88  4B FF C5 59 */	bl pouchGetMaxFP
/* 00006EC8 00006F8C  4B FF C5 55 */	bl pouchSetFP
/* 00006ECC 00006F90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00006ED0 00006F94  38 60 00 02 */	li r3, 0x2
/* 00006ED4 00006F98  7C 08 03 A6 */	mtlr r0
/* 00006ED8 00006F9C  38 21 00 10 */	addi r1, r1, 0x10
/* 00006EDC 00006FA0  4E 80 00 20 */	blr
.endfn mario_recovery

# .text:0xEC | 0x6EE0 | size: 0x24
.fn paper_off, local
/* 00006EE0 00006FA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00006EE4 00006FA8  7C 08 02 A6 */	mflr r0
/* 00006EE8 00006FAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 00006EEC 00006FB0  4B FF C5 31 */	bl marioPaperOff
/* 00006EF0 00006FB4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00006EF4 00006FB8  38 60 00 02 */	li r3, 0x2
/* 00006EF8 00006FBC  7C 08 03 A6 */	mtlr r0
/* 00006EFC 00006FC0  38 21 00 10 */	addi r1, r1, 0x10
/* 00006F00 00006FC4  4E 80 00 20 */	blr
.endfn paper_off

# .text:0x110 | 0x6F04 | size: 0x80
.fn paper_on, local
/* 00006F04 00006FC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00006F08 00006FCC  7C 08 02 A6 */	mflr r0
/* 00006F0C 00006FD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 00006F10 00006FD4  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 00006F14 00006FD8  93 E1 00 14 */	stw r31, 0x14(r1)
/* 00006F18 00006FDC  7C 9F 23 78 */	mr r31, r4
/* 00006F1C 00006FE0  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 00006F20 00006FE4  80 85 00 00 */	lwz r4, 0x0(r5)
/* 00006F24 00006FE8  4B FF C4 F9 */	bl evtGetFloat
/* 00006F28 00006FEC  FF E0 08 90 */	fmr f31, f1
/* 00006F2C 00006FF0  4B FF C4 F1 */	bl marioGetPtr
/* 00006F30 00006FF4  2C 1F 00 00 */	cmpwi r31, 0x0
/* 00006F34 00006FF8  7C 7F 1B 78 */	mr r31, r3
/* 00006F38 00006FFC  41 82 00 28 */	beq .L_00006F60
/* 00006F3C 00007000  3C 60 00 00 */	lis r3, str_p_slit_tou_0000f114@ha
/* 00006F40 00007004  38 63 00 00 */	addi r3, r3, str_p_slit_tou_0000f114@l
/* 00006F44 00007008  4B FF C4 D9 */	bl marioPaperOn
/* 00006F48 0000700C  3C 60 00 00 */	lis r3, str_M_S_1_tou_0000ef4c@ha
/* 00006F4C 00007010  38 63 00 00 */	addi r3, r3, str_M_S_1_tou_0000ef4c@l
/* 00006F50 00007014  4B FF C4 CD */	bl marioChgPose
/* 00006F54 00007018  3C 60 00 00 */	lis r3, str_PM_S_3A_tou_0000f180@ha
/* 00006F58 0000701C  38 63 00 00 */	addi r3, r3, str_PM_S_3A_tou_0000f180@l
/* 00006F5C 00007020  4B FF C4 C1 */	bl marioChgPaper
.L_00006F60:
/* 00006F60 00007024  D3 FF 01 B0 */	stfs f31, 0x1b0(r31)
/* 00006F64 00007028  38 60 00 00 */	li r3, 0x0
/* 00006F68 0000702C  D3 FF 01 AC */	stfs f31, 0x1ac(r31)
/* 00006F6C 00007030  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 00006F70 00007034  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 00006F74 00007038  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00006F78 0000703C  7C 08 03 A6 */	mtlr r0
/* 00006F7C 00007040  38 21 00 20 */	addi r1, r1, 0x20
/* 00006F80 00007044  4E 80 00 20 */	blr
.endfn paper_on

# .text:0x190 | 0x6F84 | size: 0x38
.fn unk_tou_00007048, local
/* 00006F84 00007048  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00006F88 0000704C  7C 08 02 A6 */	mflr r0
/* 00006F8C 00007050  3C 60 00 00 */	lis r3, str_belt_tou_0000ef8c@ha
/* 00006F90 00007054  90 01 00 14 */	stw r0, 0x14(r1)
/* 00006F94 00007058  38 63 00 00 */	addi r3, r3, str_belt_tou_0000ef8c@l
/* 00006F98 0000705C  4B FF C4 85 */	bl itemNameToPtr
/* 00006F9C 00007060  38 80 00 02 */	li r4, 0x2
/* 00006FA0 00007064  38 63 00 0C */	addi r3, r3, 0xc
/* 00006FA4 00007068  4B FF C4 79 */	bl iconFlagOn
/* 00006FA8 0000706C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00006FAC 00007070  38 60 00 02 */	li r3, 0x2
/* 00006FB0 00007074  7C 08 03 A6 */	mtlr r0
/* 00006FB4 00007078  38 21 00 10 */	addi r1, r1, 0x10
/* 00006FB8 0000707C  4E 80 00 20 */	blr
.endfn unk_tou_00007048

# .text:0x1C8 | 0x6FBC | size: 0x54
.fn unk_tou_00007080, local
/* 00006FBC 00007080  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00006FC0 00007084  7C 08 02 A6 */	mflr r0
/* 00006FC4 00007088  3C 60 00 00 */	lis r3, str_belt_tou_0000ef8c@ha
/* 00006FC8 0000708C  90 01 00 14 */	stw r0, 0x14(r1)
/* 00006FCC 00007090  38 63 00 00 */	addi r3, r3, str_belt_tou_0000ef8c@l
/* 00006FD0 00007094  93 E1 00 0C */	stw r31, 0xc(r1)
/* 00006FD4 00007098  4B FF C4 49 */	bl effNameToPtr
/* 00006FD8 0000709C  3C 80 00 00 */	lis r4, str_ベルト_tou_0000ef74@ha
/* 00006FDC 000070A0  7C 7F 1B 78 */	mr r31, r3
/* 00006FE0 000070A4  38 64 00 00 */	addi r3, r4, str_ベルト_tou_0000ef74@l
/* 00006FE4 000070A8  4B FF C4 39 */	bl npcNameToPtr
/* 00006FE8 000070AC  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00006FEC 000070B0  38 00 00 07 */	li r0, 0x7
/* 00006FF0 000070B4  90 04 00 38 */	stw r0, 0x38(r4)
/* 00006FF4 000070B8  90 03 01 F4 */	stw r0, 0x1f4(r3)
/* 00006FF8 000070BC  38 60 00 02 */	li r3, 0x2
/* 00006FFC 000070C0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 00007000 000070C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00007004 000070C8  7C 08 03 A6 */	mtlr r0
/* 00007008 000070CC  38 21 00 10 */	addi r1, r1, 0x10
/* 0000700C 000070D0  4E 80 00 20 */	blr
.endfn unk_tou_00007080

# 0x000060F8..0x000064D0 | size: 0x3D8
.rodata
.balign 8

# .rodata:0x0 | 0x60F8 | size: 0x7
.obj str_door_1_tou_0000edb0, local
	.string "door_1"
.endobj str_door_1_tou_0000edb0

# .rodata:0x7 | 0x60FF | size: 0x1
.obj gap_03_000060FF_rodata, global
.hidden gap_03_000060FF_rodata
	.byte 0x00
.endobj gap_03_000060FF_rodata

# .rodata:0x8 | 0x6100 | size: 0x7
.obj str_n_bero_tou_0000edb8, local
	.string "n_bero"
.endobj str_n_bero_tou_0000edb8

# .rodata:0xF | 0x6107 | size: 0x1
.obj gap_03_00006107_rodata, global
.hidden gap_03_00006107_rodata
	.byte 0x00
.endobj gap_03_00006107_rodata

# .rodata:0x10 | 0x6108 | size: 0x7
.obj str_tou_04_tou_0000edc0, local
	.string "tou_04"
.endobj str_tou_04_tou_0000edc0

# .rodata:0x17 | 0x610F | size: 0x1
.obj gap_03_0000610F_rodata, global
.hidden gap_03_0000610F_rodata
	.byte 0x00
.endobj gap_03_0000610F_rodata

# .rodata:0x18 | 0x6110 | size: 0x9
.obj str_s_bero_3_tou_0000edc8, local
	.string "s_bero_3"
.endobj str_s_bero_3_tou_0000edc8

# .rodata:0x21 | 0x6119 | size: 0x3
.obj gap_03_00006119_rodata, global
.hidden gap_03_00006119_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006119_rodata

# .rodata:0x24 | 0x611C | size: 0x7
.obj str_e_bero_tou_0000edd4, local
	.string "e_bero"
.endobj str_e_bero_tou_0000edd4

# .rodata:0x2B | 0x6123 | size: 0x1
.obj gap_03_00006123_rodata, global
.hidden gap_03_00006123_rodata
	.byte 0x00
.endobj gap_03_00006123_rodata

# .rodata:0x2C | 0x6124 | size: 0x7
.obj str_tou_13_tou_0000eddc, local
	.string "tou_13"
.endobj str_tou_13_tou_0000eddc

# .rodata:0x33 | 0x612B | size: 0x1
.obj gap_03_0000612B_rodata, global
.hidden gap_03_0000612B_rodata
	.byte 0x00
.endobj gap_03_0000612B_rodata

# .rodata:0x34 | 0x612C | size: 0x8
.obj str_e_bero_tou_0000ede4, local
	.string "e_bero_"
.endobj str_e_bero_tou_0000ede4

# .rodata:0x3C | 0x6134 | size: 0x7
.obj str_ガンス_tou_0000edec, local
	.4byte 0x834B8393
	.byte 0x83, 0x58, 0x00
.endobj str_ガンス_tou_0000edec

# .rodata:0x43 | 0x613B | size: 0x1
.obj gap_03_0000613B_rodata, global
.hidden gap_03_0000613B_rodata
	.byte 0x00
.endobj gap_03_0000613B_rodata

# .rodata:0x44 | 0x613C | size: 0xB
.obj str_キノシコワ_tou_0000edf4, local
	.4byte 0x834C836D
	.4byte 0x83568352
	.byte 0x83, 0x8F, 0x00
.endobj str_キノシコワ_tou_0000edf4

# .rodata:0x4F | 0x6147 | size: 0x1
.obj gap_03_00006147_rodata, global
.hidden gap_03_00006147_rodata
	.byte 0x00
.endobj gap_03_00006147_rodata

# .rodata:0x50 | 0x6148 | size: 0xB
.obj str_ガードマン_tou_0000ee00, local
	.4byte 0x834B815B
	.4byte 0x8368837D
	.byte 0x83, 0x93, 0x00
.endobj str_ガードマン_tou_0000ee00

# .rodata:0x5B | 0x6153 | size: 0x1
.obj gap_03_00006153_rodata, global
.hidden gap_03_00006153_rodata
	.byte 0x00
.endobj gap_03_00006153_rodata

# .rodata:0x5C | 0x6154 | size: 0x6
.obj str_mario_tou_0000ee0c, local
	.string "mario"
.endobj str_mario_tou_0000ee0c

# .rodata:0x62 | 0x615A | size: 0x2
.obj gap_03_0000615A_rodata, global
.hidden gap_03_0000615A_rodata
	.2byte 0x0000
.endobj gap_03_0000615A_rodata

# .rodata:0x64 | 0x615C | size: 0xC
.obj str_stg3_tou_49_tou_0000ee14, local
	.string "stg3_tou_49"
.endobj str_stg3_tou_49_tou_0000ee14

# .rodata:0x70 | 0x6168 | size: 0x7
.obj str_tou_08_tou_0000ee20, local
	.string "tou_08"
.endobj str_tou_08_tou_0000ee20

# .rodata:0x77 | 0x616F | size: 0x1
.obj gap_03_0000616F_rodata, global
.hidden gap_03_0000616F_rodata
	.byte 0x00
.endobj gap_03_0000616F_rodata

# .rodata:0x78 | 0x6170 | size: 0xD
.obj str_stg3_tou_449_tou_0000ee28, local
	.string "stg3_tou_449"
.endobj str_stg3_tou_449_tou_0000ee28

# .rodata:0x85 | 0x617D | size: 0x3
.obj gap_03_0000617D_rodata, global
.hidden gap_03_0000617D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000617D_rodata

# .rodata:0x88 | 0x6180 | size: 0x4
.obj str_M_1_tou_0000ee38, local
	.string "M_1"
.endobj str_M_1_tou_0000ee38

# .rodata:0x8C | 0x6184 | size: 0x4
.obj str_S_1_tou_0000ee3c, local
	.string "S_1"
.endobj str_S_1_tou_0000ee3c

# .rodata:0x90 | 0x6188 | size: 0xD
.obj str_stg3_tou_450_tou_0000ee40, local
	.string "stg3_tou_450"
.endobj str_stg3_tou_450_tou_0000ee40

# .rodata:0x9D | 0x6195 | size: 0x3
.obj gap_03_00006195_rodata, global
.hidden gap_03_00006195_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006195_rodata

# .rodata:0xA0 | 0x6198 | size: 0x10
.obj str_stg3_tou_450_01_tou_0000ee50, local
	.string "stg3_tou_450_01"
.endobj str_stg3_tou_450_01_tou_0000ee50

# .rodata:0xB0 | 0x61A8 | size: 0x1A
.obj str_SFX_VOICE_MARIO_QUES_tou_0000ee60, local
	.string "SFX_VOICE_MARIO_QUESTION1"
.endobj str_SFX_VOICE_MARIO_QUES_tou_0000ee60

# .rodata:0xCA | 0x61C2 | size: 0x2
.obj gap_03_000061C2_rodata, global
.hidden gap_03_000061C2_rodata
	.2byte 0x0000
.endobj gap_03_000061C2_rodata

# .rodata:0xCC | 0x61C4 | size: 0x16
.obj str_SFX_VOICE_MARIO_FIND_tou_0000ee7c, local
	.string "SFX_VOICE_MARIO_FIND1"
.endobj str_SFX_VOICE_MARIO_FIND_tou_0000ee7c

# .rodata:0xE2 | 0x61DA | size: 0x2
.obj gap_03_000061DA_rodata, global
.hidden gap_03_000061DA_rodata
	.2byte 0x0000
.endobj gap_03_000061DA_rodata

# .rodata:0xE4 | 0x61DC | size: 0x10
.obj str_stg3_tou_450_02_tou_0000ee94, local
	.string "stg3_tou_450_02"
.endobj str_stg3_tou_450_02_tou_0000ee94

# .rodata:0xF4 | 0x61EC | size: 0x10
.obj str_stg3_tou_450_03_tou_0000eea4, local
	.string "stg3_tou_450_03"
.endobj str_stg3_tou_450_03_tou_0000eea4

# .rodata:0x104 | 0x61FC | size: 0x10
.obj str_stg3_tou_450_04_tou_0000eeb4, local
	.string "stg3_tou_450_04"
.endobj str_stg3_tou_450_04_tou_0000eeb4

# .rodata:0x114 | 0x620C | size: 0x18
.obj str_SFX_VOICE_MARIO_FIND_tou_0000eec4, local
	.string "SFX_VOICE_MARIO_FIND1_3"
.endobj str_SFX_VOICE_MARIO_FIND_tou_0000eec4

# .rodata:0x12C | 0x6224 | size: 0x17
.obj str_BGM_FF_MAIL_RECEPTIO_tou_0000eedc, local
	.string "BGM_FF_MAIL_RECEPTION2"
.endobj str_BGM_FF_MAIL_RECEPTIO_tou_0000eedc

# .rodata:0x143 | 0x623B | size: 0x1
.obj gap_03_0000623B_rodata, global
.hidden gap_03_0000623B_rodata
	.byte 0x00
.endobj gap_03_0000623B_rodata

# .rodata:0x144 | 0x623C | size: 0x10
.obj str_stg3_tou_450_05_tou_0000eef4, local
	.string "stg3_tou_450_05"
.endobj str_stg3_tou_450_05_tou_0000eef4

# .rodata:0x154 | 0x624C | size: 0x14
.obj str_SFX_MAIL_RECEPTION1_tou_0000ef04, local
	.string "SFX_MAIL_RECEPTION1"
.endobj str_SFX_MAIL_RECEPTION1_tou_0000ef04

# .rodata:0x168 | 0x6260 | size: 0x6
.obj str_M_N_9_tou_0000ef18, local
	.string "M_N_9"
.endobj str_M_N_9_tou_0000ef18

# .rodata:0x16E | 0x6266 | size: 0x2
.obj gap_03_00006266_rodata, global
.hidden gap_03_00006266_rodata
	.2byte 0x0000
.endobj gap_03_00006266_rodata

# .rodata:0x170 | 0x6268 | size: 0x14
.obj str_SFX_MAIL_RECEPTION2_tou_0000ef20, local
	.string "SFX_MAIL_RECEPTION2"
.endobj str_SFX_MAIL_RECEPTION2_tou_0000ef20

# .rodata:0x184 | 0x627C | size: 0x7
.obj str_M_N_10_tou_0000ef34, local
	.string "M_N_10"
.endobj str_M_N_10_tou_0000ef34

# .rodata:0x18B | 0x6283 | size: 0x1
.obj gap_03_00006283_rodata, global
.hidden gap_03_00006283_rodata
	.byte 0x00
.endobj gap_03_00006283_rodata

# .rodata:0x18C | 0x6284 | size: 0x10
.obj str_stg3_tou_450_06_tou_0000ef3c, local
	.string "stg3_tou_450_06"
.endobj str_stg3_tou_450_06_tou_0000ef3c

# .rodata:0x19C | 0x6294 | size: 0x6
.obj str_M_S_1_tou_0000ef4c, local
	.string "M_S_1"
.endobj str_M_S_1_tou_0000ef4c

# .rodata:0x1A2 | 0x629A | size: 0x2
.obj gap_03_0000629A_rodata, global
.hidden gap_03_0000629A_rodata
	.2byte 0x0000
.endobj gap_03_0000629A_rodata

# .rodata:0x1A4 | 0x629C | size: 0x10
.obj str_stg3_tou_450_07_tou_0000ef54, local
	.string "stg3_tou_450_07"
.endobj str_stg3_tou_450_07_tou_0000ef54

# .rodata:0x1B4 | 0x62AC | size: 0x10
.obj str_stg3_tou_re_140_tou_0000ef64, local
	.string "stg3_tou_re_140"
.endobj str_stg3_tou_re_140_tou_0000ef64

# .rodata:0x1C4 | 0x62BC | size: 0x7
.obj str_ベルト_tou_0000ef74, local
	.4byte 0x8378838B
	.byte 0x83, 0x67, 0x00
.endobj str_ベルト_tou_0000ef74

# .rodata:0x1CB | 0x62C3 | size: 0x1
.obj gap_03_000062C3_rodata, global
.hidden gap_03_000062C3_rodata
	.byte 0x00
.endobj gap_03_000062C3_rodata

# .rodata:0x1CC | 0x62C4 | size: 0x9
.obj str_c_bred_h_tou_0000ef7c, local
	.string "c_bred_h"
.endobj str_c_bred_h_tou_0000ef7c

# .rodata:0x1D5 | 0x62CD | size: 0x3
.obj gap_03_000062CD_rodata, global
.hidden gap_03_000062CD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000062CD_rodata

# .rodata:0x1D8 | 0x62D0 | size: 0x4
.obj str_C_1_tou_0000ef88, local
	.string "C_1"
.endobj str_C_1_tou_0000ef88

# .rodata:0x1DC | 0x62D4 | size: 0x5
.obj str_belt_tou_0000ef8c, local
	.string "belt"
.endobj str_belt_tou_0000ef8c

# .rodata:0x1E1 | 0x62D9 | size: 0x3
.obj gap_03_000062D9_rodata, global
.hidden gap_03_000062D9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000062D9_rodata

# .rodata:0x1E4 | 0x62DC | size: 0xA
.obj str_starstone_tou_0000ef94, local
	.string "starstone"
.endobj str_starstone_tou_0000ef94

# .rodata:0x1EE | 0x62E6 | size: 0x2
.obj gap_03_000062E6_rodata, global
.hidden gap_03_000062E6_rodata
	.2byte 0x0000
.endobj gap_03_000062E6_rodata

# .rodata:0x1F0 | 0x62E8 | size: 0x10
.obj str_stg3_tou_re_141_tou_0000efa0, local
	.string "stg3_tou_re_141"
.endobj str_stg3_tou_re_141_tou_0000efa0

# .rodata:0x200 | 0x62F8 | size: 0x6
.obj str_M_N_2_tou_0000efb0, local
	.string "M_N_2"
.endobj str_M_N_2_tou_0000efb0

# .rodata:0x206 | 0x62FE | size: 0x2
.obj gap_03_000062FE_rodata, global
.hidden gap_03_000062FE_rodata
	.2byte 0x0000
.endobj gap_03_000062FE_rodata

# .rodata:0x208 | 0x6300 | size: 0x10
.obj str_stg3_tou_re_142_tou_0000efb8, local
	.string "stg3_tou_re_142"
.endobj str_stg3_tou_re_142_tou_0000efb8

# .rodata:0x218 | 0x6310 | size: 0x10
.obj str_stg3_tou_re_143_tou_0000efc8, local
	.string "stg3_tou_re_143"
.endobj str_stg3_tou_re_143_tou_0000efc8

# .rodata:0x228 | 0x6320 | size: 0x1A
.obj str_SFX_STG3_DUCT_KOUSHI_tou_0000efd8, local
	.string "SFX_STG3_DUCT_KOUSHI_HIT1"
.endobj str_SFX_STG3_DUCT_KOUSHI_tou_0000efd8

# .rodata:0x242 | 0x633A | size: 0x2
.obj gap_03_0000633A_rodata, global
.hidden gap_03_0000633A_rodata
	.2byte 0x0000
.endobj gap_03_0000633A_rodata

# .rodata:0x244 | 0x633C | size: 0xA
.obj str_kankikuti_tou_0000eff4, local
	.string "kankikuti"
.endobj str_kankikuti_tou_0000eff4

# .rodata:0x24E | 0x6346 | size: 0x2
.obj gap_03_00006346_rodata, global
.hidden gap_03_00006346_rodata
	.2byte 0x0000
.endobj gap_03_00006346_rodata

# .rodata:0x250 | 0x6348 | size: 0x9
.obj str_win_kabe_tou_0000f000, local
	.string "win_kabe"
.endobj str_win_kabe_tou_0000f000

# .rodata:0x259 | 0x6351 | size: 0x3
.obj gap_03_00006351_rodata, global
.hidden gap_03_00006351_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006351_rodata

# .rodata:0x25C | 0x6354 | size: 0x18
.obj str_SFX_STG3_AIRDUCT_SHA_tou_0000f00c, local
	.string "SFX_STG3_AIRDUCT_SHAKE1"
.endobj str_SFX_STG3_AIRDUCT_SHA_tou_0000f00c

# .rodata:0x274 | 0x636C | size: 0x9
.obj str_anm_futa_tou_0000f024, local
	.string "anm_futa"
.endobj str_anm_futa_tou_0000f024

# .rodata:0x27D | 0x6375 | size: 0x3
.obj gap_03_00006375_rodata, global
.hidden gap_03_00006375_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006375_rodata

# .rodata:0x280 | 0x6378 | size: 0x7
.obj str_tou_07_tou_0000f030, local
	.string "tou_07"
.endobj str_tou_07_tou_0000f030

# .rodata:0x287 | 0x637F | size: 0x1
.obj gap_03_0000637F_rodata, global
.hidden gap_03_0000637F_rodata
	.byte 0x00
.endobj gap_03_0000637F_rodata

# .rodata:0x288 | 0x6380 | size: 0x7
.obj str_tou_10_tou_0000f038, local
	.string "tou_10"
.endobj str_tou_10_tou_0000f038

# .rodata:0x28F | 0x6387 | size: 0x1
.obj gap_03_00006387_rodata, global
.hidden gap_03_00006387_rodata
	.byte 0x00
.endobj gap_03_00006387_rodata

# .rodata:0x290 | 0x6388 | size: 0xD
.obj str_stg3_yado_00_tou_0000f040, local
	.string "stg3_yado_00"
.endobj str_stg3_yado_00_tou_0000f040

# .rodata:0x29D | 0x6395 | size: 0x3
.obj gap_03_00006395_rodata, global
.hidden gap_03_00006395_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006395_rodata

# .rodata:0x2A0 | 0x6398 | size: 0xD
.obj str_stg3_yado_01_tou_0000f050, local
	.string "stg3_yado_01"
.endobj str_stg3_yado_01_tou_0000f050

# .rodata:0x2AD | 0x63A5 | size: 0x3
.obj gap_03_000063A5_rodata, global
.hidden gap_03_000063A5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000063A5_rodata

# .rodata:0x2B0 | 0x63A8 | size: 0x1A
.obj str_SFX_VOICE_MARIO_FLD__tou_0000f060, local
	.string "SFX_VOICE_MARIO_FLD_JUMP5"
.endobj str_SFX_VOICE_MARIO_FLD__tou_0000f060

# .rodata:0x2CA | 0x63C2 | size: 0x2
.obj gap_03_000063C2_rodata, global
.hidden gap_03_000063C2_rodata
	.2byte 0x0000
.endobj gap_03_000063C2_rodata

# .rodata:0x2CC | 0x63C4 | size: 0x1A
.obj str_SFX_VOICE_MARIO_FLD__tou_0000f07c, local
	.string "SFX_VOICE_MARIO_FLD_JUMP3"
.endobj str_SFX_VOICE_MARIO_FLD__tou_0000f07c

# .rodata:0x2E6 | 0x63DE | size: 0x2
.obj gap_03_000063DE_rodata, global
.hidden gap_03_000063DE_rodata
	.2byte 0x0000
.endobj gap_03_000063DE_rodata

# .rodata:0x2E8 | 0x63E0 | size: 0x1A
.obj str_SFX_VOICE_MARIO_FLD__tou_0000f098, local
	.string "SFX_VOICE_MARIO_FLD_JUMP1"
.endobj str_SFX_VOICE_MARIO_FLD__tou_0000f098

# .rodata:0x302 | 0x63FA | size: 0x2
.obj gap_03_000063FA_rodata, global
.hidden gap_03_000063FA_rodata
	.2byte 0x0000
.endobj gap_03_000063FA_rodata

# .rodata:0x304 | 0x63FC | size: 0x15
.obj str_SFX_OFF_MARIO_SLEEP1_tou_0000f0b4, local
	.string "SFX_OFF_MARIO_SLEEP1"
.endobj str_SFX_OFF_MARIO_SLEEP1_tou_0000f0b4

# .rodata:0x319 | 0x6411 | size: 0x3
.obj gap_03_00006411_rodata, global
.hidden gap_03_00006411_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006411_rodata

# .rodata:0x31C | 0x6414 | size: 0x15
.obj str_SFX_OFF_MARIO_SLEEP2_tou_0000f0cc, local
	.string "SFX_OFF_MARIO_SLEEP2"
.endobj str_SFX_OFF_MARIO_SLEEP2_tou_0000f0cc

# .rodata:0x331 | 0x6429 | size: 0x3
.obj gap_03_00006429_rodata, global
.hidden gap_03_00006429_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006429_rodata

# .rodata:0x334 | 0x642C | size: 0x14
.obj str_BGM_FF_GO_SLEEPING1_tou_0000f0e4, local
	.string "BGM_FF_GO_SLEEPING1"
.endobj str_BGM_FF_GO_SLEEPING1_tou_0000f0e4

# .rodata:0x348 | 0x6440 | size: 0xB
.obj str_mobj_box00_tou_0000f0f8, local
	.string "mobj_box00"
.endobj str_mobj_box00_tou_0000f0f8

# .rodata:0x353 | 0x644B | size: 0x1
.obj gap_03_0000644B_rodata, global
.hidden gap_03_0000644B_rodata
	.byte 0x00
.endobj gap_03_0000644B_rodata

# .rodata:0x354 | 0x644C | size: 0x7
.obj str_item00_tou_0000f104, local
	.string "item00"
.endobj str_item00_tou_0000f104

# .rodata:0x35B | 0x6453 | size: 0x1
.obj gap_03_00006453_rodata, global
.hidden gap_03_00006453_rodata
	.byte 0x00
.endobj gap_03_00006453_rodata

# .rodata:0x35C | 0x6454 | size: 0x6
.obj str_a_bed_tou_0000f10c, local
	.string "a_bed"
.endobj str_a_bed_tou_0000f10c

# .rodata:0x362 | 0x645A | size: 0x2
.obj gap_03_0000645A_rodata, global
.hidden gap_03_0000645A_rodata
	.2byte 0x0000
.endobj gap_03_0000645A_rodata

# .rodata:0x364 | 0x645C | size: 0x7
.obj str_p_slit_tou_0000f114, local
	.string "p_slit"
.endobj str_p_slit_tou_0000f114

# .rodata:0x36B | 0x6463 | size: 0x1
.obj gap_03_00006463_rodata, global
.hidden gap_03_00006463_rodata
	.byte 0x00
.endobj gap_03_00006463_rodata

# .rodata:0x36C | 0x6464 | size: 0x4
.obj str_e_1_tou_0000f11c, local
	.string "e_1"
.endobj str_e_1_tou_0000f11c

# .rodata:0x370 | 0x6468 | size: 0x4
.obj str_e_2_tou_0000f120, local
	.string "e_2"
.endobj str_e_2_tou_0000f120

# .rodata:0x374 | 0x646C | size: 0x7
.obj str_M_make_tou_0000f124, local
	.string "M_make"
.endobj str_M_make_tou_0000f124

# .rodata:0x37B | 0x6473 | size: 0x1
.obj gap_03_00006473_rodata, global
.hidden gap_03_00006473_rodata
	.byte 0x00
.endobj gap_03_00006473_rodata

# .rodata:0x37C | 0x6474 | size: 0xE
.obj str_BGM_STG3_TOU2_tou_0000f12c, local
	.string "BGM_STG3_TOU2"
.endobj str_BGM_STG3_TOU2_tou_0000f12c

# .rodata:0x38A | 0x6482 | size: 0x2
.obj gap_03_00006482_rodata, global
.hidden gap_03_00006482_rodata
	.2byte 0x0000
.endobj gap_03_00006482_rodata

# .rodata:0x38C | 0x6484 | size: 0xE
.obj str_ENV_STG3_TOU2_tou_0000f13c, local
	.string "ENV_STG3_TOU2"
.endobj str_ENV_STG3_TOU2_tou_0000f13c

# .rodata:0x39A | 0x6492 | size: 0x2
.obj gap_03_00006492_rodata, global
.hidden gap_03_00006492_rodata
	.2byte 0x0000
.endobj gap_03_00006492_rodata

# .rodata:0x39C | 0x6494 | size: 0xE
.obj str_BGM_STG3_TOU1_tou_0000f14c, local
	.string "BGM_STG3_TOU1"
.endobj str_BGM_STG3_TOU1_tou_0000f14c

# .rodata:0x3AA | 0x64A2 | size: 0x2
.obj gap_03_000064A2_rodata, global
.hidden gap_03_000064A2_rodata
	.2byte 0x0000
.endobj gap_03_000064A2_rodata

# .rodata:0x3AC | 0x64A4 | size: 0xE
.obj str_ENV_STG3_TOU6_tou_0000f15c, local
	.string "ENV_STG3_TOU6"
.endobj str_ENV_STG3_TOU6_tou_0000f15c

# .rodata:0x3BA | 0x64B2 | size: 0x2
.obj gap_03_000064B2_rodata, global
.hidden gap_03_000064B2_rodata
	.2byte 0x0000
.endobj gap_03_000064B2_rodata

# .rodata:0x3BC | 0x64B4 | size: 0x14
.obj str_BGM_EVT_STG3_GANCE1_tou_0000f16c, local
	.string "BGM_EVT_STG3_GANCE1"
.endobj str_BGM_EVT_STG3_GANCE1_tou_0000f16c

# .rodata:0x3D0 | 0x64C8 | size: 0x8
.obj str_PM_S_3A_tou_0000f180, local
	.string "PM_S_3A"
.endobj str_PM_S_3A_tou_0000f180

# 0x00022380..0x00024438 | size: 0x20B8
.data
.balign 8

# .data:0x0 | 0x22380 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x22388 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x2238C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x22390 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x22394 | size: 0x4
.obj gap_04_00022394_data, global
.hidden gap_04_00022394_data
	.4byte 0x00000000
.endobj gap_04_00022394_data

# .data:0x18 | 0x22398 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x223A0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x223A4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x223A8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x223B0 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x223B4 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x223B8 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x223BC | size: 0x4
.obj gap_04_000223BC_data, global
.hidden gap_04_000223BC_data
	.4byte 0x00000000
.endobj gap_04_000223BC_data

# .data:0x40 | 0x223C0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x223C8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x223CC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x223D0 | size: 0x30
.obj n_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_1_tou_0000edb0
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj n_door_open

# .data:0x80 | 0x22400 | size: 0x30
.obj n_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78B9
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_1_tou_0000edb0
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj n_door_close

# .data:0xB0 | 0x22430 | size: 0xB4
.obj bero_data, local
	.4byte str_n_bero_tou_0000edb8
	.4byte 0x00010004
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_tou_04_tou_0000edc0
	.4byte str_s_bero_3_tou_0000edc8
	.4byte 0x00050005
	.4byte n_door_close
	.4byte n_door_open
	.4byte str_e_bero_tou_0000edd4
	.4byte 0x00000001
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_tou_13_tou_0000eddc
	.4byte str_e_bero_tou_0000ede4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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

# .data:0x164 | 0x224E4 | size: 0x8
.obj init_gans, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_gans

# .data:0x16C | 0x224EC | size: 0x8
.obj talk_gans, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj talk_gans

# .data:0x174 | 0x224F4 | size: 0x170
.obj npcEnt, local
	.4byte str_ガンス_tou_0000edec
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte init_gans
	.4byte 0x00000000
	.4byte talk_gans
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_0000edf4
	.4byte 0x40000620
	.4byte 0x00000000
	.4byte init_gans
	.4byte 0x00000000
	.4byte talk_gans
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ガードマン_tou_0000ee00
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte init_gans
	.4byte 0x00000000
	.4byte talk_gans
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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

# .data:0x2E4 | 0x22664 | size: 0x2A4
.obj evt_sensyu, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFF60
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFF42
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ガンス_tou_0000edec
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFF65
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
	.4byte str_ガンス_tou_0000edec
	.4byte 0x00000002
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガンス_tou_0000edec
	.4byte 0x00000001
	.4byte 0xFFFFFFCE
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガンス_tou_0000edec
	.4byte 0xFFFFFFE2
	.4byte 0xFFFFFFCE
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_ガンス_tou_0000edec
	.4byte str_mario_tou_0000ee0c
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFBA
	.4byte 0xF24B6A80
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0xFFFFFFBA
	.4byte 0xF24B6A80
	.4byte 0x0003005B
	.4byte evt_party_set_dir_npc
	.4byte 0x00000000
	.4byte str_ガンス_tou_0000edec
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFFCE
	.4byte 0xF24B6A80
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x00000023
	.4byte 0xFFFFFFCE
	.4byte 0xF24B6A80
	.4byte 0x0002005B
	.4byte evt_mario_set_dir_npc
	.4byte str_ガンス_tou_0000edec
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
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_49_tou_0000ee14
	.4byte 0x00000000
	.4byte str_ガンス_tou_0000edec
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
	.4byte str_tou_08_tou_0000ee20
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_sensyu

# .data:0x588 | 0x22908 | size: 0x908
.obj evt_champion, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFF60
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFF5B
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_キノシコワ_tou_0000edf4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFF65
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
	.4byte evt_npc_set_ry
	.4byte str_キノシコワ_tou_0000edf4
	.4byte 0x0000005A
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
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
	.4byte str_キノシコワ_tou_0000edf4
	.4byte 0x00000002
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_0000edf4
	.4byte 0x00000003
	.4byte 0xFFFFFF9C
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0xFFFFFF92
	.4byte 0xF24B6A80
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0x00000046
	.4byte 0xFFFFFF92
	.4byte 0xF24B6A80
	.4byte 0x0003005B
	.4byte evt_party_set_dir_npc
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_0000edf4
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x00000003
	.4byte 0xFFFFFF92
	.4byte 0xF24B6A80
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x00000028
	.4byte 0xFFFFFF9C
	.4byte 0xF24B6A80
	.4byte 0x0002005B
	.4byte evt_mario_set_dir_npc
	.4byte str_キノシコワ_tou_0000edf4
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
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000014
	.4byte 0x0000005A
	.4byte 0x000000BD
	.4byte 0x00000014
	.4byte 0x0000003C
	.4byte 0xFFFFFFF7
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_449_tou_0000ee28
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_0000edf4
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_キノシコワ_tou_0000edf4
	.4byte str_M_1_tou_0000ee38
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_キノシコワ_tou_0000edf4
	.4byte str_S_1_tou_0000ee3c
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_0000edf4
	.4byte 0x00000000
	.4byte 0xFFFFFF74
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
	.4byte str_キノシコワ_tou_0000edf4
	.4byte 0x00000000
	.4byte 0xFFFFFF38
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_キノシコワ_tou_0000edf4
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte bero_close_door_play_se
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x000000B4
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
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000003F
	.4byte 0x0000004E
	.4byte 0x0000008B
	.4byte 0x0000003F
	.4byte 0x00000037
	.4byte 0xFFFFFFF7
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0x00000055
	.4byte 0xFFFFFF9C
	.4byte 0xF24B6A80
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg3_tou_450_tou_0000ee40
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000003
	.4byte 0x00000000
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
	.4byte 0x000007D0
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg3_tou_450_01_tou_0000ee50
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_QUES_tou_0000ee60
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000001E
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
	.4byte str_SFX_VOICE_MARIO_FIND_tou_0000ee7c
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
	.4byte 0x000003E8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFB5
	.4byte 0x00000044
	.4byte 0x0000010E
	.4byte 0x0000003B
	.4byte 0x0000004E
	.4byte 0x00000002
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00010005
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0x00000096
	.4byte 0x00000064
	.4byte 0xFFFFFFA6
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_450_02_tou_0000ee94
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0x0000008C
	.4byte 0x0000005A
	.4byte 0xFFFFFFA6
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_450_03_tou_0000eea4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x00000006
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000003F
	.4byte 0x0000004E
	.4byte 0x0000008B
	.4byte 0x0000003F
	.4byte 0x00000037
	.4byte 0xFFFFFFF7
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg3_tou_450_04_tou_0000eeb4
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
	.4byte str_SFX_VOICE_MARIO_FIND_tou_0000eec4
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
	.4byte str_BGM_FF_MAIL_RECEPTIO_tou_0000eedc
	.4byte 0x0002005D
	.4byte evt_sub_mail_vibration
	.4byte 0xFE363C8A
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg3_tou_450_05_tou_0000eef4
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
	.4byte str_SFX_MAIL_RECEPTION1_tou_0000ef04
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
	.4byte str_M_N_9_tou_0000ef18
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
	.4byte str_SFX_MAIL_RECEPTION2_tou_0000ef20
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_10_tou_0000ef34
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_450_06_tou_0000ef3c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_tou_0000ef4c
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg3_tou_450_07_tou_0000ef54
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_pouch_receive_mail
	.4byte 0x0000002B
	.4byte 0x0002005B
	.4byte evt_pouch_open_mail
	.4byte 0x0000002B
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000009E
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_champion

# .data:0xE90 | 0x23210 | size: 0x4D0
.obj evt_champion_re, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000041
	.4byte 0x00000000
	.4byte 0xFFFFFFA1
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x0000005F
	.4byte 0x00000000
	.4byte 0xFFFFFF97
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_キノシコワ_tou_0000edf4
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0xFFFFFFA1
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_キノシコワ_tou_0000edf4
	.4byte str_mario_tou_0000ee0c
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000002D
	.4byte 0x0000005B
	.4byte 0x0000010A
	.4byte 0x0000002D
	.4byte 0x00000039
	.4byte 0xFFFFFFF5
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
	.4byte str_stg3_tou_re_140_tou_0000ef64
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_0000edf4
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_キノシコワ_tou_0000edf4
	.4byte 0x00000020
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_0000edf4
	.4byte 0x00000028
	.4byte 0xFFFFFFA1
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_0000edf4
	.4byte 0x0000001E
	.4byte 0xFFFFFFA1
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_キノシコワ_tou_0000edf4
	.4byte str_mario_tou_0000ee0c
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_ベルト_tou_0000ef74
	.4byte str_c_bred_h_tou_0000ef7c
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
	.4byte str_ベルト_tou_0000ef74
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ベルト_tou_0000ef74
	.4byte str_C_1_tou_0000ef88
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000004
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000000F
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte str_belt_tou_0000ef8c
	.4byte str_starstone_tou_0000ef94
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
	.4byte unk_tou_00007080
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_belt_tou_0000ef8c
	.4byte 0x00000041
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000011
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte unk_tou_00007048
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_belt_tou_0000ef8c
	.4byte 0x0002005B
	.4byte evt_item_get_item_end_wait
	.4byte str_belt_tou_0000ef8c
	.4byte 0x0002005B
	.4byte evt_npc_delete
	.4byte str_ベルト_tou_0000ef74
	.4byte 0x0002005B
	.4byte evt_eff_delete
	.4byte str_belt_tou_0000ef8c
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_re_141_tou_0000efa0
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_0000edf4
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_2_tou_0000efb0
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_tou_0000ef4c
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_re_142_tou_0000efb8
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_0000edf4
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_2_tou_0000efb0
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_tou_0000ef4c
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_re_143_tou_0000efc8
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_0000edf4
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_キノシコワ_tou_0000edf4
	.4byte str_M_1_tou_0000ee38
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_キノシコワ_tou_0000edf4
	.4byte str_S_1_tou_0000ee3c
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_キノシコワ_tou_0000edf4
	.4byte 0x00000002
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_0000edf4
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
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_1_tou_0000edb0
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_0000edf4
	.4byte 0x00000000
	.4byte 0xFFFFFF38
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_キノシコワ_tou_0000edf4
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
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x000000B4
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
	.4byte str_door_1_tou_0000edb0
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00020032
	.4byte 0xF8406547
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_champion_re

# .data:0x1360 | 0x236E0 | size: 0x9C
.obj evt_dakuto, local
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7AB3
	.4byte 0xF24A7A80
	.4byte 0x000001F4
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG3_DUCT_KOUSHI_tou_0000efd8
	.4byte 0x00000087
	.4byte 0x00000050
	.4byte 0xFFFFFFA1
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_kankikuti_tou_0000eff4
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_win_kabe_tou_0000f000
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x0000009F
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000009F
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xF8406546
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_dakuto

# .data:0x13FC | 0x2377C | size: 0xB0
.obj evt_dakuto2, local
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG3_AIRDUCT_SHA_tou_0000f00c
	.4byte 0x00000087
	.4byte 0x00000050
	.4byte 0xFFFFFFA1
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG3_AIRDUCT_SHA_tou_0000f00c
	.4byte 0x00000087
	.4byte 0x00000050
	.4byte 0xFFFFFFA1
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_anm_futa_tou_0000f024
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_checkanim
	.4byte str_anm_futa_tou_0000f024
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0001000A
	.4byte 0xFE363C81
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_dakuto2

# .data:0x14AC | 0x2382C | size: 0x6E0
.obj evt_tou_bed_25_data_2382C, global
	.4byte 0x0002005B
	.4byte unk_tou_00006eb8
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFBD3E281
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFBD3E282
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_sub_get_mapname
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_tou_07_tou_0000f030
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_tou_08_tou_0000ee20
	.4byte 0x00020032
	.4byte 0xFBD3E281
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_tou_10_tou_0000f038
	.4byte 0x00020032
	.4byte 0xFBD3E282
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_yado_00_tou_0000f040
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg3_yado_01_tou_0000f050
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C8C
	.4byte 0x0002005B
	.4byte evt_mario_get_exparty
	.4byte 0xFE363C8D
	.4byte 0x0002005B
	.4byte evt_mario_goodbye_party
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_goodbye_party
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF79
	.4byte 0x000000C1
	.4byte 0x00000127
	.4byte 0x00000078
	.4byte 0x0000002D
	.4byte 0x00000052
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFBD3E281
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFCF
	.4byte 0x00000075
	.4byte 0x000000BE
	.4byte 0x00000098
	.4byte 0x0000002D
	.4byte 0xFFFFFFF6
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFBD3E282
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFB5
	.4byte 0x000000A0
	.4byte 0x0000010A
	.4byte 0x0000009B
	.4byte 0x00000041
	.4byte 0xFFFFFFF6
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_mario_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000300
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_FLD__tou_0000f060
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_mario_jump_pos
	.4byte 0x00000073
	.4byte 0x00000020
	.4byte 0x0000005A
	.4byte 0xF250BA80
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000073
	.4byte 0x00000020
	.4byte 0x0000005A
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFBD3E281
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_FLD__tou_0000f07c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_mario_jump_pos
	.4byte 0x000000CD
	.4byte 0x00000010
	.4byte 0xFFFFFF8D
	.4byte 0xF250BA80
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x000000CD
	.4byte 0x00000010
	.4byte 0xFFFFFF8D
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFBD3E282
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_FLD__tou_0000f098
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_mario_jump_pos
	.4byte 0x000000E4
	.4byte 0x00000011
	.4byte 0xFFFFFFA6
	.4byte 0xF250BA80
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x000000E4
	.4byte 0x00000011
	.4byte 0xFFFFFFA6
	.4byte 0x00000021
	.4byte 0x0001005B
	.4byte evt_mario_adjust_dir
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0001006C
	.4byte 0xFE363C8A
	.4byte 0x0002005B
	.4byte paper_on
	.4byte 0xF249C680
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_OFF_MARIO_SLEEP1_tou_0000f0b4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_OFF_MARIO_SLEEP2_tou_0000f0cc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001005B
	.4byte unk_tou_00006f4c
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000001
	.4byte str_BGM_FF_GO_SLEEPING1_tou_0000f0e4
	.4byte 0x0006005B
	.4byte evt_fade_entry
	.4byte 0x00000004
	.4byte 0x000003E8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte evt_fade_set_spot_pos
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0001005B
	.4byte evt_fade_end_wait
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_pouch_mario_recovery
	.4byte 0x00000020
	.4byte 0x0001005B
	.4byte mario_recovery
	.4byte 0x00000021
	.4byte 0x0001005B
	.4byte evt_pouch_all_party_recovery
	.4byte 0x0001000A
	.4byte 0x00000BB8
	.4byte 0x0001005F
	.4byte 0xFE363C8A
	.4byte 0x0001005B
	.4byte paper_off
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_tou_0000ef4c
	.4byte 0x0003005B
	.4byte evt_mario_flag_onoff
	.4byte 0x00000000
	.4byte 0x00000300
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mario_set_party_pos
	.4byte 0x00000000
	.4byte 0xFE363C8C
	.4byte 0x0000004B
	.4byte 0x00000025
	.4byte 0x00000064
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8D
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mario_set_party_pos
	.4byte 0x00000001
	.4byte 0xFE363C8D
	.4byte 0x0000004B
	.4byte 0x00000025
	.4byte 0x00000069
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000073
	.4byte 0x00000020
	.4byte 0x0000005A
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFBD3E281
	.4byte 0x00000001
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mario_set_party_pos
	.4byte 0x00000000
	.4byte 0xFE363C8C
	.4byte 0x000000A0
	.4byte 0x00000016
	.4byte 0xFFFFFF8D
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8D
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mario_set_party_pos
	.4byte 0x00000001
	.4byte 0xFE363C8D
	.4byte 0x000000A0
	.4byte 0x00000016
	.4byte 0xFFFFFF92
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x000000CD
	.4byte 0x00000010
	.4byte 0xFFFFFF8D
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFBD3E282
	.4byte 0x00000001
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mario_set_party_pos
	.4byte 0x00000000
	.4byte 0xFE363C8C
	.4byte 0x000000B7
	.4byte 0x00000016
	.4byte 0xFFFFFFA6
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8D
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mario_set_party_pos
	.4byte 0x00000001
	.4byte 0xFE363C8D
	.4byte 0x000000CD
	.4byte 0x00000016
	.4byte 0xFFFFFFAB
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x000000E4
	.4byte 0x00000011
	.4byte 0xFFFFFFA6
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000001
	.4byte 0x0000010E
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_adjust_dir
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000201
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000120
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte unk_tou_00006f24
	.4byte 0x0006005B
	.4byte evt_fade_entry
	.4byte 0x00000009
	.4byte 0x000003E8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_tou_bed_25_data_2382C

# .data:0x1B8C | 0x23F0C | size: 0x28
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

# .data:0x1BB4 | 0x23F34 | size: 0x88
.obj mobj_box00, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte str_mobj_box00_tou_0000f0f8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item00_tou_0000f104
	.4byte 0x00000104
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_item_flag_on
	.4byte str_item00_tou_0000f104
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mobj_wait_animation_end
	.4byte str_mobj_box00_tou_0000f0f8
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_item00_tou_0000f104
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mobj_box00

# .data:0x1C3C | 0x23FBC | size: 0x478
.obj tou_07_init_evt_25_data_23FBC, global
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0003005B
	.4byte evt_hitobj_name_callback
	.4byte str_a_bed_tou_0000f10c
	.4byte bed_entry
	.4byte 0x0002005B
	.4byte evt_sub_animgroup_async
	.4byte str_p_slit_tou_0000f114
	.4byte 0x0002005B
	.4byte evt_npc_setup
	.4byte npcEnt
	.4byte 0x00020018
	.4byte 0xF84064D5
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_tou_get_ranking_25_text_1FE0
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x0000009E
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000009E
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_tou_get_ranking_25_text_1FE0
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_e_1_tou_0000f11c
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_e_2_tou_0000f120
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_e_1_tou_0000f11c
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_e_2_tou_0000f120
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x0000009F
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00010026
	.4byte 0x000000AC
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x0000002A
	.4byte 0x00020018
	.4byte 0xF8406546
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x0000000E
	.4byte 0x00000001
	.4byte str_win_kabe_tou_0000f000
	.4byte 0x00000000
	.4byte evt_dakuto
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte str_win_kabe_tou_0000f000
	.4byte 0x00000000
	.4byte evt_dakuto2
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_win_kabe_tou_0000f000
	.4byte 0x00000000
	.4byte evt_dakuto2
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_kankikuti_tou_0000eff4
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_win_kabe_tou_0000f000
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_M_make_tou_0000f124
	.4byte 0x00000000
	.4byte evt_tou_match_make_default_25_data_28F0
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte evt_tou_monitor_init_25_data_10F8
	.4byte 0x00020018
	.4byte 0xF84064D5
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF84064D5
	.4byte 0x00000000
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x0000007F
	.4byte 0x00000089
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG3_TOU2_tou_0000f12c
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG3_TOU2_tou_0000f13c
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00006800
	.4byte 0x00010029
	.4byte 0x000000A5
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG3_TOU2_tou_0000f12c
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG3_TOU2_tou_0000f13c
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00006800
	.4byte 0x0000002A
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG3_TOU1_tou_0000f14c
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG3_TOU6_tou_0000f15c
	.4byte 0x00000031
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x0000009E
	.4byte 0x0001005C
	.4byte evt_champion
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x000000AC
	.4byte 0x0001005C
	.4byte evt_tou_match_after_default_25_data_6024
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406547
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte evt_champion_re
	.4byte 0x00000020
	.4byte 0x0001005C
	.4byte evt_tou_match_after_default_25_data_6024
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF84064C7
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_STG3_GANCE1_tou_0000f16c
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000200
	.4byte 0x0001005C
	.4byte evt_sensyu
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x000000A3
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000200
	.4byte 0x00000020
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x0000007F
	.4byte 0x0000008A
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG3_TOU2_tou_0000f12c
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG3_TOU6_tou_0000f15c
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00006800
	.4byte 0x0000002A
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG3_TOU1_tou_0000f14c
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00006800
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG3_TOU6_tou_0000f15c
	.4byte 0x00000031
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_e_bero_tou_0000edd4
	.4byte 0x00020018
	.4byte 0xF84064D4
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_n_bero_tou_0000edb8
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x0001005C
	.4byte unk_evt_tou_00013190_25_data_2288
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj tou_07_init_evt_25_data_23FBC

# .data:0x20B4 | 0x24434 | size: 0x4
.obj gap_04_00024434_data, global
.hidden gap_04_00024434_data
	.4byte 0x00000000
.endobj gap_04_00024434_data
