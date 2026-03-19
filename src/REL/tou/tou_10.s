.include "macros.inc"
.file "tou_10.o"

# 0x000070E4..0x00007410 | size: 0x32C
.text
.balign 4

# .text:0x0 | 0x70E4 | size: 0x6C
.fn unk_tou_000071a8, local
/* 000070E4 000071A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000070E8 000071AC  7C 08 02 A6 */	mflr r0
/* 000070EC 000071B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 000070F0 000071B4  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 000070F4 000071B8  7C 7E 1B 78 */	mr r30, r3
/* 000070F8 000071BC  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 000070FC 000071C0  4B FF C3 21 */	bl marioKeyOffChk
/* 00007100 000071C4  2C 03 00 00 */	cmpwi r3, 0x0
/* 00007104 000071C8  40 82 00 10 */	bne .L_00007114
/* 00007108 000071CC  4B FF C3 15 */	bl marioCtrlOffChk
/* 0000710C 000071D0  2C 03 00 00 */	cmpwi r3, 0x0
/* 00007110 000071D4  41 82 00 18 */	beq .L_00007128
.L_00007114:
/* 00007114 000071D8  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00007118 000071DC  7F C3 F3 78 */	mr r3, r30
/* 0000711C 000071E0  38 A0 00 01 */	li r5, 0x1
/* 00007120 000071E4  4B FF C2 FD */	bl evtSetValue
/* 00007124 000071E8  48 00 00 14 */	b .L_00007138
.L_00007128:
/* 00007128 000071EC  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 0000712C 000071F0  7F C3 F3 78 */	mr r3, r30
/* 00007130 000071F4  38 A0 00 00 */	li r5, 0x0
/* 00007134 000071F8  4B FF C2 E9 */	bl evtSetValue
.L_00007138:
/* 00007138 000071FC  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 0000713C 00007200  38 60 00 02 */	li r3, 0x2
/* 00007140 00007204  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00007144 00007208  7C 08 03 A6 */	mtlr r0
/* 00007148 0000720C  38 21 00 10 */	addi r1, r1, 0x10
/* 0000714C 00007210  4E 80 00 20 */	blr
.endfn unk_tou_000071a8

# .text:0x6C | 0x7150 | size: 0x38
.fn unk_tou_00007214, local
/* 00007150 00007214  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00007154 00007218  7C 08 02 A6 */	mflr r0
/* 00007158 0000721C  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000715C 00007220  4B FF C2 C1 */	bl marioGetPtr
/* 00007160 00007224  A0 63 00 2E */	lhz r3, 0x2e(r3)
/* 00007164 00007228  38 00 00 02 */	li r0, 0x2
/* 00007168 0000722C  38 63 FF F2 */	subi r3, r3, 0xe
/* 0000716C 00007230  20 63 00 00 */	subfic r3, r3, 0x0
/* 00007170 00007234  7C 63 19 10 */	subfe r3, r3, r3
/* 00007174 00007238  7C 03 18 38 */	and r3, r0, r3
/* 00007178 0000723C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0000717C 00007240  7C 08 03 A6 */	mtlr r0
/* 00007180 00007244  38 21 00 10 */	addi r1, r1, 0x10
/* 00007184 00007248  4E 80 00 20 */	blr
.endfn unk_tou_00007214

# .text:0xA4 | 0x7188 | size: 0xA4
.fn unk_tou_0000724c, local
/* 00007188 0000724C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0000718C 00007250  7C 08 02 A6 */	mflr r0
/* 00007190 00007254  90 01 00 14 */	stw r0, 0x14(r1)
/* 00007194 00007258  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00007198 0000725C  7C 7E 1B 78 */	mr r30, r3
/* 0000719C 00007260  7C 9F 23 78 */	mr r31, r4
/* 000071A0 00007264  4B FF C2 7D */	bl marioGetPtr
/* 000071A4 00007268  2C 1F 00 00 */	cmpwi r31, 0x0
/* 000071A8 0000726C  7C 7F 1B 78 */	mr r31, r3
/* 000071AC 00007270  41 82 00 0C */	beq .L_000071B8
/* 000071B0 00007274  38 00 00 00 */	li r0, 0x0
/* 000071B4 00007278  90 1E 00 78 */	stw r0, 0x78(r30)
.L_000071B8:
/* 000071B8 0000727C  4B FF C2 65 */	bl marioKeyOffChk
/* 000071BC 00007280  2C 03 00 00 */	cmpwi r3, 0x0
/* 000071C0 00007284  40 82 00 54 */	bne .L_00007214
/* 000071C4 00007288  4B FF C2 59 */	bl marioCtrlOffChk
/* 000071C8 0000728C  2C 03 00 00 */	cmpwi r3, 0x0
/* 000071CC 00007290  40 82 00 48 */	bne .L_00007214
/* 000071D0 00007294  A0 1F 00 2E */	lhz r0, 0x2e(r31)
/* 000071D4 00007298  28 00 00 00 */	cmplwi r0, 0x0
/* 000071D8 0000729C  41 82 00 14 */	beq .L_000071EC
/* 000071DC 000072A0  28 00 00 01 */	cmplwi r0, 0x1
/* 000071E0 000072A4  41 82 00 0C */	beq .L_000071EC
/* 000071E4 000072A8  28 00 00 02 */	cmplwi r0, 0x2
/* 000071E8 000072AC  40 82 00 2C */	bne .L_00007214
.L_000071EC:
/* 000071EC 000072B0  80 7E 00 78 */	lwz r3, 0x78(r30)
/* 000071F0 000072B4  38 03 00 01 */	addi r0, r3, 0x1
/* 000071F4 000072B8  90 1E 00 78 */	stw r0, 0x78(r30)
/* 000071F8 000072BC  80 1E 00 78 */	lwz r0, 0x78(r30)
/* 000071FC 000072C0  2C 00 00 F0 */	cmpwi r0, 0xf0
/* 00007200 000072C4  40 81 00 14 */	ble .L_00007214
/* 00007204 000072C8  38 00 00 F0 */	li r0, 0xf0
/* 00007208 000072CC  38 60 00 02 */	li r3, 0x2
/* 0000720C 000072D0  90 1E 00 78 */	stw r0, 0x78(r30)
/* 00007210 000072D4  48 00 00 08 */	b .L_00007218
.L_00007214:
/* 00007214 000072D8  38 60 00 00 */	li r3, 0x0
.L_00007218:
/* 00007218 000072DC  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 0000721C 000072E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00007220 000072E4  7C 08 03 A6 */	mtlr r0
/* 00007224 000072E8  38 21 00 10 */	addi r1, r1, 0x10
/* 00007228 000072EC  4E 80 00 20 */	blr
.endfn unk_tou_0000724c

# .text:0x148 | 0x722C | size: 0x48
.fn getYoshiColor, local
/* 0000722C 000072F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00007230 000072F4  7C 08 02 A6 */	mflr r0
/* 00007234 000072F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 00007238 000072FC  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 0000723C 00007300  7C 7E 1B 78 */	mr r30, r3
/* 00007240 00007304  38 60 00 04 */	li r3, 0x4
/* 00007244 00007308  83 FE 00 18 */	lwz r31, 0x18(r30)
/* 00007248 0000730C  4B FF C1 D5 */	bl pouchGetPartyColor
/* 0000724C 00007310  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00007250 00007314  7C 65 1B 78 */	mr r5, r3
/* 00007254 00007318  7F C3 F3 78 */	mr r3, r30
/* 00007258 0000731C  4B FF C1 C5 */	bl evtSetValue
/* 0000725C 00007320  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00007260 00007324  38 60 00 02 */	li r3, 0x2
/* 00007264 00007328  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00007268 0000732C  7C 08 03 A6 */	mtlr r0
/* 0000726C 00007330  38 21 00 10 */	addi r1, r1, 0x10
/* 00007270 00007334  4E 80 00 20 */	blr
.endfn getYoshiColor

# .text:0x190 | 0x7274 | size: 0x134
.fn setYoshiColor, local
/* 00007274 00007338  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00007278 0000733C  7C 08 02 A6 */	mflr r0
/* 0000727C 00007340  90 01 00 24 */	stw r0, 0x24(r1)
/* 00007280 00007344  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 00007284 00007348  3B C0 00 00 */	li r30, 0x0
/* 00007288 0000734C  3B E1 00 08 */	addi r31, r1, 0x8
.L_0000728C:
/* 0000728C 00007350  38 7E 01 FC */	addi r3, r30, 0x1fc
/* 00007290 00007354  4B FF C1 8D */	bl swByteGet
/* 00007294 00007358  3B DE 00 01 */	addi r30, r30, 0x1
/* 00007298 0000735C  98 7F 00 00 */	stb r3, 0x0(r31)
/* 0000729C 00007360  2C 1E 00 08 */	cmpwi r30, 0x8
/* 000072A0 00007364  3B FF 00 01 */	addi r31, r31, 0x1
/* 000072A4 00007368  41 80 FF E8 */	blt .L_0000728C
/* 000072A8 0000736C  3C 60 80 00 */	lis r3, 0x8000
/* 000072AC 00007370  3C 80 00 00 */	lis r4, gp@ha
/* 000072B0 00007374  80 03 00 F8 */	lwz r0, 0xf8(r3)
/* 000072B4 00007378  38 A0 00 00 */	li r5, 0x0
/* 000072B8 0000737C  80 64 00 00 */	lwz r3, gp@l(r4)
/* 000072BC 00007380  54 06 F0 BE */	srwi r6, r0, 2
/* 000072C0 00007384  80 01 00 0C */	lwz r0, 0xc(r1)
/* 000072C4 00007388  80 83 00 24 */	lwz r4, 0x24(r3)
/* 000072C8 0000738C  80 63 00 20 */	lwz r3, 0x20(r3)
/* 000072CC 00007390  7C 80 20 10 */	subfc r4, r0, r4
/* 000072D0 00007394  80 01 00 08 */	lwz r0, 0x8(r1)
/* 000072D4 00007398  7C 60 19 10 */	subfe r3, r0, r3
/* 000072D8 0000739C  4B FF C1 45 */	bl __div2i
/* 000072DC 000073A0  38 00 00 3C */	li r0, 0x3c
/* 000072E0 000073A4  38 60 00 14 */	li r3, 0x14
/* 000072E4 000073A8  7C 84 03 D6 */	divw r4, r4, r0
/* 000072E8 000073AC  7C 04 1B D6 */	divw r0, r4, r3
/* 000072EC 000073B0  7C 00 19 D6 */	mullw r0, r0, r3
/* 000072F0 000073B4  7C 80 20 50 */	subf r4, r0, r4
/* 000072F4 000073B8  2C 04 00 05 */	cmpwi r4, 0x5
/* 000072F8 000073BC  41 81 00 14 */	bgt .L_0000730C
/* 000072FC 000073C0  38 60 00 04 */	li r3, 0x4
/* 00007300 000073C4  38 80 00 00 */	li r4, 0x0
/* 00007304 000073C8  4B FF C1 19 */	bl pouchSetPartyColor
/* 00007308 000073CC  48 00 00 88 */	b .L_00007390
.L_0000730C:
/* 0000730C 000073D0  2C 04 00 08 */	cmpwi r4, 0x8
/* 00007310 000073D4  41 81 00 14 */	bgt .L_00007324
/* 00007314 000073D8  38 60 00 04 */	li r3, 0x4
/* 00007318 000073DC  38 80 00 01 */	li r4, 0x1
/* 0000731C 000073E0  4B FF C1 01 */	bl pouchSetPartyColor
/* 00007320 000073E4  48 00 00 70 */	b .L_00007390
.L_00007324:
/* 00007324 000073E8  2C 04 00 0B */	cmpwi r4, 0xb
/* 00007328 000073EC  41 81 00 14 */	bgt .L_0000733C
/* 0000732C 000073F0  38 60 00 04 */	li r3, 0x4
/* 00007330 000073F4  38 80 00 02 */	li r4, 0x2
/* 00007334 000073F8  4B FF C0 E9 */	bl pouchSetPartyColor
/* 00007338 000073FC  48 00 00 58 */	b .L_00007390
.L_0000733C:
/* 0000733C 00007400  2C 04 00 0E */	cmpwi r4, 0xe
/* 00007340 00007404  41 81 00 14 */	bgt .L_00007354
/* 00007344 00007408  38 60 00 04 */	li r3, 0x4
/* 00007348 0000740C  38 80 00 03 */	li r4, 0x3
/* 0000734C 00007410  4B FF C0 D1 */	bl pouchSetPartyColor
/* 00007350 00007414  48 00 00 40 */	b .L_00007390
.L_00007354:
/* 00007354 00007418  2C 04 00 11 */	cmpwi r4, 0x11
/* 00007358 0000741C  41 81 00 14 */	bgt .L_0000736C
/* 0000735C 00007420  38 60 00 04 */	li r3, 0x4
/* 00007360 00007424  38 80 00 04 */	li r4, 0x4
/* 00007364 00007428  4B FF C0 B9 */	bl pouchSetPartyColor
/* 00007368 0000742C  48 00 00 28 */	b .L_00007390
.L_0000736C:
/* 0000736C 00007430  2C 04 00 12 */	cmpwi r4, 0x12
/* 00007370 00007434  41 81 00 14 */	bgt .L_00007384
/* 00007374 00007438  38 60 00 04 */	li r3, 0x4
/* 00007378 0000743C  38 80 00 05 */	li r4, 0x5
/* 0000737C 00007440  4B FF C0 A1 */	bl pouchSetPartyColor
/* 00007380 00007444  48 00 00 10 */	b .L_00007390
.L_00007384:
/* 00007384 00007448  38 60 00 04 */	li r3, 0x4
/* 00007388 0000744C  38 80 00 06 */	li r4, 0x6
/* 0000738C 00007450  4B FF C0 91 */	bl pouchSetPartyColor
.L_00007390:
/* 00007390 00007454  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 00007394 00007458  38 60 00 02 */	li r3, 0x2
/* 00007398 0000745C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 0000739C 00007460  7C 08 03 A6 */	mtlr r0
/* 000073A0 00007464  38 21 00 20 */	addi r1, r1, 0x20
/* 000073A4 00007468  4E 80 00 20 */	blr
.endfn setYoshiColor

# .text:0x2C4 | 0x73A8 | size: 0x68
.fn name_check, local
/* 000073A8 0000746C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000073AC 00007470  7C 08 02 A6 */	mflr r0
/* 000073B0 00007474  90 01 00 14 */	stw r0, 0x14(r1)
/* 000073B4 00007478  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 000073B8 0000747C  7C 7E 1B 78 */	mr r30, r3
/* 000073BC 00007480  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 000073C0 00007484  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 000073C4 00007488  4B FF C0 59 */	bl evtGetValue
/* 000073C8 0000748C  3C 80 00 00 */	lis r4, str___tou_00010668@ha
/* 000073CC 00007490  38 84 00 00 */	addi r4, r4, str___tou_00010668@l
/* 000073D0 00007494  4B FF C0 4D */	bl strcmp
/* 000073D4 00007498  2C 03 00 00 */	cmpwi r3, 0x0
/* 000073D8 0000749C  40 82 00 20 */	bne .L_000073F8
/* 000073DC 000074A0  3C 60 00 00 */	lis r3, str_name_party3_tou_0001066c@ha
/* 000073E0 000074A4  38 63 00 00 */	addi r3, r3, str_name_party3_tou_0001066c@l
/* 000073E4 000074A8  4B FF C0 39 */	bl msgSearch
/* 000073E8 000074AC  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 000073EC 000074B0  7C 65 1B 78 */	mr r5, r3
/* 000073F0 000074B4  7F C3 F3 78 */	mr r3, r30
/* 000073F4 000074B8  4B FF C0 29 */	bl evtSetValue
.L_000073F8:
/* 000073F8 000074BC  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 000073FC 000074C0  38 60 00 02 */	li r3, 0x2
/* 00007400 000074C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00007404 000074C8  7C 08 03 A6 */	mtlr r0
/* 00007408 000074CC  38 21 00 10 */	addi r1, r1, 0x10
/* 0000740C 000074D0  4E 80 00 20 */	blr
.endfn name_check

# 0x00006F50..0x000079C0 | size: 0xA70
.rodata
.balign 8

# .rodata:0x0 | 0x6F50 | size: 0x7
.obj str_door_1_tou_0000fc08, local
	.string "door_1"
.endobj str_door_1_tou_0000fc08

# .rodata:0x7 | 0x6F57 | size: 0x1
.obj gap_03_00006F57_rodata, global
.hidden gap_03_00006F57_rodata
	.byte 0x00
.endobj gap_03_00006F57_rodata

# .rodata:0x8 | 0x6F58 | size: 0x7
.obj str_n_bero_tou_0000fc10, local
	.string "n_bero"
.endobj str_n_bero_tou_0000fc10

# .rodata:0xF | 0x6F5F | size: 0x1
.obj gap_03_00006F5F_rodata, global
.hidden gap_03_00006F5F_rodata
	.byte 0x00
.endobj gap_03_00006F5F_rodata

# .rodata:0x10 | 0x6F60 | size: 0x7
.obj str_tou_04_tou_0000fc18, local
	.string "tou_04"
.endobj str_tou_04_tou_0000fc18

# .rodata:0x17 | 0x6F67 | size: 0x1
.obj gap_03_00006F67_rodata, global
.hidden gap_03_00006F67_rodata
	.byte 0x00
.endobj gap_03_00006F67_rodata

# .rodata:0x18 | 0x6F68 | size: 0x9
.obj str_s_bero_7_tou_0000fc20, local
	.string "s_bero_7"
.endobj str_s_bero_7_tou_0000fc20

# .rodata:0x21 | 0x6F71 | size: 0x3
.obj gap_03_00006F71_rodata, global
.hidden gap_03_00006F71_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00006F71_rodata

# .rodata:0x24 | 0x6F74 | size: 0x3
.obj str_me_tou_0000fc2c, local
	.string "me"
.endobj str_me_tou_0000fc2c

# .rodata:0x27 | 0x6F77 | size: 0x1
.obj gap_03_00006F77_rodata, global
.hidden gap_03_00006F77_rodata
	.byte 0x00
.endobj gap_03_00006F77_rodata

# .rodata:0x28 | 0x6F78 | size: 0xC
.obj str_stg3_tou_66_tou_0000fc30, local
	.string "stg3_tou_66"
.endobj str_stg3_tou_66_tou_0000fc30

# .rodata:0x34 | 0x6F84 | size: 0xC
.obj str_stg3_tou_73_tou_0000fc3c, local
	.string "stg3_tou_73"
.endobj str_stg3_tou_73_tou_0000fc3c

# .rodata:0x40 | 0x6F90 | size: 0xB
.obj str_ガードマン_tou_0000fc48, local
	.4byte 0x834B815B
	.4byte 0x8368837D
	.byte 0x83, 0x93, 0x00
.endobj str_ガードマン_tou_0000fc48

# .rodata:0x4B | 0x6F9B | size: 0x1
.obj gap_03_00006F9B_rodata, global
.hidden gap_03_00006F9B_rodata
	.byte 0x00
.endobj gap_03_00006F9B_rodata

# .rodata:0x4C | 0x6F9C | size: 0x7
.obj str_tou_03_tou_0000fc54, local
	.string "tou_03"
.endobj str_tou_03_tou_0000fc54

# .rodata:0x53 | 0x6FA3 | size: 0x1
.obj gap_03_00006FA3_rodata, global
.hidden gap_03_00006FA3_rodata
	.byte 0x00
.endobj gap_03_00006FA3_rodata

# .rodata:0x54 | 0x6FA4 | size: 0x12
.obj str_stg3_npc_10_01_04_tou_0000fc5c, local
	.string "stg3_npc_10_01_04"
.endobj str_stg3_npc_10_01_04_tou_0000fc5c

# .rodata:0x66 | 0x6FB6 | size: 0x2
.obj gap_03_00006FB6_rodata, global
.hidden gap_03_00006FB6_rodata
	.2byte 0x0000
.endobj gap_03_00006FB6_rodata

# .rodata:0x68 | 0x6FB8 | size: 0x12
.obj str_stg3_npc_10_01_05_tou_0000fc70, local
	.string "stg3_npc_10_01_05"
.endobj str_stg3_npc_10_01_05_tou_0000fc70

# .rodata:0x7A | 0x6FCA | size: 0x2
.obj gap_03_00006FCA_rodata, global
.hidden gap_03_00006FCA_rodata
	.2byte 0x0000
.endobj gap_03_00006FCA_rodata

# .rodata:0x7C | 0x6FCC | size: 0x12
.obj str_stg3_npc_10_01_06_tou_0000fc84, local
	.string "stg3_npc_10_01_06"
.endobj str_stg3_npc_10_01_06_tou_0000fc84

# .rodata:0x8E | 0x6FDE | size: 0x2
.obj gap_03_00006FDE_rodata, global
.hidden gap_03_00006FDE_rodata
	.2byte 0x0000
.endobj gap_03_00006FDE_rodata

# .rodata:0x90 | 0x6FE0 | size: 0x12
.obj str_stg3_npc_10_01_07_tou_0000fc98, local
	.string "stg3_npc_10_01_07"
.endobj str_stg3_npc_10_01_07_tou_0000fc98

# .rodata:0xA2 | 0x6FF2 | size: 0x2
.obj gap_03_00006FF2_rodata, global
.hidden gap_03_00006FF2_rodata
	.2byte 0x0000
.endobj gap_03_00006FF2_rodata

# .rodata:0xA4 | 0x6FF4 | size: 0x12
.obj str_stg3_npc_10_01_08_tou_0000fcac, local
	.string "stg3_npc_10_01_08"
.endobj str_stg3_npc_10_01_08_tou_0000fcac

# .rodata:0xB6 | 0x7006 | size: 0x2
.obj gap_03_00007006_rodata, global
.hidden gap_03_00007006_rodata
	.2byte 0x0000
.endobj gap_03_00007006_rodata

# .rodata:0xB8 | 0x7008 | size: 0x12
.obj str_stg3_npc_10_01_09_tou_0000fcc0, local
	.string "stg3_npc_10_01_09"
.endobj str_stg3_npc_10_01_09_tou_0000fcc0

# .rodata:0xCA | 0x701A | size: 0x2
.obj gap_03_0000701A_rodata, global
.hidden gap_03_0000701A_rodata
	.2byte 0x0000
.endobj gap_03_0000701A_rodata

# .rodata:0xCC | 0x701C | size: 0x12
.obj str_stg3_npc_10_01_10_tou_0000fcd4, local
	.string "stg3_npc_10_01_10"
.endobj str_stg3_npc_10_01_10_tou_0000fcd4

# .rodata:0xDE | 0x702E | size: 0x2
.obj gap_03_0000702E_rodata, global
.hidden gap_03_0000702E_rodata
	.2byte 0x0000
.endobj gap_03_0000702E_rodata

# .rodata:0xE0 | 0x7030 | size: 0x12
.obj str_stg3_npc_10_01_11_tou_0000fce8, local
	.string "stg3_npc_10_01_11"
.endobj str_stg3_npc_10_01_11_tou_0000fce8

# .rodata:0xF2 | 0x7042 | size: 0x2
.obj gap_03_00007042_rodata, global
.hidden gap_03_00007042_rodata
	.2byte 0x0000
.endobj gap_03_00007042_rodata

# .rodata:0xF4 | 0x7044 | size: 0x10
.obj str_stg3_npc_re_060_tou_0000fcfc, local
	.string "stg3_npc_re_060"
.endobj str_stg3_npc_re_060_tou_0000fcfc

# .rodata:0x104 | 0x7054 | size: 0x10
.obj str_stg3_npc_re_061_tou_0000fd0c, local
	.string "stg3_npc_re_061"
.endobj str_stg3_npc_re_061_tou_0000fd0c

# .rodata:0x114 | 0x7064 | size: 0xB
.obj str_オクトール_tou_0000fd1c, local
	.4byte 0x8349834E
	.4byte 0x8367815B
	.byte 0x83, 0x8B, 0x00
.endobj str_オクトール_tou_0000fd1c

# .rodata:0x11F | 0x706F | size: 0x1
.obj gap_03_0000706F_rodata, global
.hidden gap_03_0000706F_rodata
	.byte 0x00
.endobj gap_03_0000706F_rodata

# .rodata:0x120 | 0x7070 | size: 0x12
.obj str_stg3_npc_10_02_04_tou_0000fd28, local
	.string "stg3_npc_10_02_04"
.endobj str_stg3_npc_10_02_04_tou_0000fd28

# .rodata:0x132 | 0x7082 | size: 0x2
.obj gap_03_00007082_rodata, global
.hidden gap_03_00007082_rodata
	.2byte 0x0000
.endobj gap_03_00007082_rodata

# .rodata:0x134 | 0x7084 | size: 0x12
.obj str_stg3_npc_10_02_05_tou_0000fd3c, local
	.string "stg3_npc_10_02_05"
.endobj str_stg3_npc_10_02_05_tou_0000fd3c

# .rodata:0x146 | 0x7096 | size: 0x2
.obj gap_03_00007096_rodata, global
.hidden gap_03_00007096_rodata
	.2byte 0x0000
.endobj gap_03_00007096_rodata

# .rodata:0x148 | 0x7098 | size: 0x12
.obj str_stg3_npc_10_02_06_tou_0000fd50, local
	.string "stg3_npc_10_02_06"
.endobj str_stg3_npc_10_02_06_tou_0000fd50

# .rodata:0x15A | 0x70AA | size: 0x2
.obj gap_03_000070AA_rodata, global
.hidden gap_03_000070AA_rodata
	.2byte 0x0000
.endobj gap_03_000070AA_rodata

# .rodata:0x15C | 0x70AC | size: 0x12
.obj str_stg3_npc_10_02_07_tou_0000fd64, local
	.string "stg3_npc_10_02_07"
.endobj str_stg3_npc_10_02_07_tou_0000fd64

# .rodata:0x16E | 0x70BE | size: 0x2
.obj gap_03_000070BE_rodata, global
.hidden gap_03_000070BE_rodata
	.2byte 0x0000
.endobj gap_03_000070BE_rodata

# .rodata:0x170 | 0x70C0 | size: 0x12
.obj str_stg3_npc_10_02_08_tou_0000fd78, local
	.string "stg3_npc_10_02_08"
.endobj str_stg3_npc_10_02_08_tou_0000fd78

# .rodata:0x182 | 0x70D2 | size: 0x2
.obj gap_03_000070D2_rodata, global
.hidden gap_03_000070D2_rodata
	.2byte 0x0000
.endobj gap_03_000070D2_rodata

# .rodata:0x184 | 0x70D4 | size: 0x12
.obj str_stg3_npc_10_02_09_tou_0000fd8c, local
	.string "stg3_npc_10_02_09"
.endobj str_stg3_npc_10_02_09_tou_0000fd8c

# .rodata:0x196 | 0x70E6 | size: 0x2
.obj gap_03_000070E6_rodata, global
.hidden gap_03_000070E6_rodata
	.2byte 0x0000
.endobj gap_03_000070E6_rodata

# .rodata:0x198 | 0x70E8 | size: 0x12
.obj str_stg3_npc_10_02_10_tou_0000fda0, local
	.string "stg3_npc_10_02_10"
.endobj str_stg3_npc_10_02_10_tou_0000fda0

# .rodata:0x1AA | 0x70FA | size: 0x2
.obj gap_03_000070FA_rodata, global
.hidden gap_03_000070FA_rodata
	.2byte 0x0000
.endobj gap_03_000070FA_rodata

# .rodata:0x1AC | 0x70FC | size: 0x12
.obj str_stg3_npc_10_02_11_tou_0000fdb4, local
	.string "stg3_npc_10_02_11"
.endobj str_stg3_npc_10_02_11_tou_0000fdb4

# .rodata:0x1BE | 0x710E | size: 0x2
.obj gap_03_0000710E_rodata, global
.hidden gap_03_0000710E_rodata
	.2byte 0x0000
.endobj gap_03_0000710E_rodata

# .rodata:0x1C0 | 0x7110 | size: 0x12
.obj str_stg3_npc_10_02_12_tou_0000fdc8, local
	.string "stg3_npc_10_02_12"
.endobj str_stg3_npc_10_02_12_tou_0000fdc8

# .rodata:0x1D2 | 0x7122 | size: 0x2
.obj gap_03_00007122_rodata, global
.hidden gap_03_00007122_rodata
	.2byte 0x0000
.endobj gap_03_00007122_rodata

# .rodata:0x1D4 | 0x7124 | size: 0x12
.obj str_stg3_npc_10_02_13_tou_0000fddc, local
	.string "stg3_npc_10_02_13"
.endobj str_stg3_npc_10_02_13_tou_0000fddc

# .rodata:0x1E6 | 0x7136 | size: 0x2
.obj gap_03_00007136_rodata, global
.hidden gap_03_00007136_rodata
	.2byte 0x0000
.endobj gap_03_00007136_rodata

# .rodata:0x1E8 | 0x7138 | size: 0x12
.obj str_stg3_npc_10_02_15_tou_0000fdf0, local
	.string "stg3_npc_10_02_15"
.endobj str_stg3_npc_10_02_15_tou_0000fdf0

# .rodata:0x1FA | 0x714A | size: 0x2
.obj gap_03_0000714A_rodata, global
.hidden gap_03_0000714A_rodata
	.2byte 0x0000
.endobj gap_03_0000714A_rodata

# .rodata:0x1FC | 0x714C | size: 0x12
.obj str_stg3_npc_10_02_14_tou_0000fe04, local
	.string "stg3_npc_10_02_14"
.endobj str_stg3_npc_10_02_14_tou_0000fe04

# .rodata:0x20E | 0x715E | size: 0x2
.obj gap_03_0000715E_rodata, global
.hidden gap_03_0000715E_rodata
	.2byte 0x0000
.endobj gap_03_0000715E_rodata

# .rodata:0x210 | 0x7160 | size: 0x10
.obj str_stg3_npc_re_065_tou_0000fe18, local
	.string "stg3_npc_re_065"
.endobj str_stg3_npc_re_065_tou_0000fe18

# .rodata:0x220 | 0x7170 | size: 0x10
.obj str_stg3_npc_re_066_tou_0000fe28, local
	.string "stg3_npc_re_066"
.endobj str_stg3_npc_re_066_tou_0000fe28

# .rodata:0x230 | 0x7180 | size: 0x12
.obj str_stg3_npc_10_04_04_tou_0000fe38, local
	.string "stg3_npc_10_04_04"
.endobj str_stg3_npc_10_04_04_tou_0000fe38

# .rodata:0x242 | 0x7192 | size: 0x2
.obj gap_03_00007192_rodata, global
.hidden gap_03_00007192_rodata
	.2byte 0x0000
.endobj gap_03_00007192_rodata

# .rodata:0x244 | 0x7194 | size: 0x10
.obj str_stg3_npc_re_075_tou_0000fe4c, local
	.string "stg3_npc_re_075"
.endobj str_stg3_npc_re_075_tou_0000fe4c

# .rodata:0x254 | 0x71A4 | size: 0x10
.obj str_stg3_npc_re_076_tou_0000fe5c, local
	.string "stg3_npc_re_076"
.endobj str_stg3_npc_re_076_tou_0000fe5c

# .rodata:0x264 | 0x71B4 | size: 0x12
.obj str_stg3_npc_10_03_04_tou_0000fe6c, local
	.string "stg3_npc_10_03_04"
.endobj str_stg3_npc_10_03_04_tou_0000fe6c

# .rodata:0x276 | 0x71C6 | size: 0x2
.obj gap_03_000071C6_rodata, global
.hidden gap_03_000071C6_rodata
	.2byte 0x0000
.endobj gap_03_000071C6_rodata

# .rodata:0x278 | 0x71C8 | size: 0x12
.obj str_stg3_npc_10_03_05_tou_0000fe80, local
	.string "stg3_npc_10_03_05"
.endobj str_stg3_npc_10_03_05_tou_0000fe80

# .rodata:0x28A | 0x71DA | size: 0x2
.obj gap_03_000071DA_rodata, global
.hidden gap_03_000071DA_rodata
	.2byte 0x0000
.endobj gap_03_000071DA_rodata

# .rodata:0x28C | 0x71DC | size: 0x12
.obj str_stg3_npc_10_03_06_tou_0000fe94, local
	.string "stg3_npc_10_03_06"
.endobj str_stg3_npc_10_03_06_tou_0000fe94

# .rodata:0x29E | 0x71EE | size: 0x2
.obj gap_03_000071EE_rodata, global
.hidden gap_03_000071EE_rodata
	.2byte 0x0000
.endobj gap_03_000071EE_rodata

# .rodata:0x2A0 | 0x71F0 | size: 0x12
.obj str_stg3_npc_10_03_07_tou_0000fea8, local
	.string "stg3_npc_10_03_07"
.endobj str_stg3_npc_10_03_07_tou_0000fea8

# .rodata:0x2B2 | 0x7202 | size: 0x2
.obj gap_03_00007202_rodata, global
.hidden gap_03_00007202_rodata
	.2byte 0x0000
.endobj gap_03_00007202_rodata

# .rodata:0x2B4 | 0x7204 | size: 0x12
.obj str_stg3_npc_10_03_08_tou_0000febc, local
	.string "stg3_npc_10_03_08"
.endobj str_stg3_npc_10_03_08_tou_0000febc

# .rodata:0x2C6 | 0x7216 | size: 0x2
.obj gap_03_00007216_rodata, global
.hidden gap_03_00007216_rodata
	.2byte 0x0000
.endobj gap_03_00007216_rodata

# .rodata:0x2C8 | 0x7218 | size: 0x12
.obj str_stg3_npc_10_03_09_tou_0000fed0, local
	.string "stg3_npc_10_03_09"
.endobj str_stg3_npc_10_03_09_tou_0000fed0

# .rodata:0x2DA | 0x722A | size: 0x2
.obj gap_03_0000722A_rodata, global
.hidden gap_03_0000722A_rodata
	.2byte 0x0000
.endobj gap_03_0000722A_rodata

# .rodata:0x2DC | 0x722C | size: 0x12
.obj str_stg3_npc_10_03_10_tou_0000fee4, local
	.string "stg3_npc_10_03_10"
.endobj str_stg3_npc_10_03_10_tou_0000fee4

# .rodata:0x2EE | 0x723E | size: 0x2
.obj gap_03_0000723E_rodata, global
.hidden gap_03_0000723E_rodata
	.2byte 0x0000
.endobj gap_03_0000723E_rodata

# .rodata:0x2F0 | 0x7240 | size: 0x12
.obj str_stg3_npc_10_03_11_tou_0000fef8, local
	.string "stg3_npc_10_03_11"
.endobj str_stg3_npc_10_03_11_tou_0000fef8

# .rodata:0x302 | 0x7252 | size: 0x2
.obj gap_03_00007252_rodata, global
.hidden gap_03_00007252_rodata
	.2byte 0x0000
.endobj gap_03_00007252_rodata

# .rodata:0x304 | 0x7254 | size: 0x12
.obj str_stg3_npc_10_03_12_tou_0000ff0c, local
	.string "stg3_npc_10_03_12"
.endobj str_stg3_npc_10_03_12_tou_0000ff0c

# .rodata:0x316 | 0x7266 | size: 0x2
.obj gap_03_00007266_rodata, global
.hidden gap_03_00007266_rodata
	.2byte 0x0000
.endobj gap_03_00007266_rodata

# .rodata:0x318 | 0x7268 | size: 0x12
.obj str_stg3_npc_10_03_13_tou_0000ff20, local
	.string "stg3_npc_10_03_13"
.endobj str_stg3_npc_10_03_13_tou_0000ff20

# .rodata:0x32A | 0x727A | size: 0x2
.obj gap_03_0000727A_rodata, global
.hidden gap_03_0000727A_rodata
	.2byte 0x0000
.endobj gap_03_0000727A_rodata

# .rodata:0x32C | 0x727C | size: 0x12
.obj str_stg3_npc_10_03_15_tou_0000ff34, local
	.string "stg3_npc_10_03_15"
.endobj str_stg3_npc_10_03_15_tou_0000ff34

# .rodata:0x33E | 0x728E | size: 0x2
.obj gap_03_0000728E_rodata, global
.hidden gap_03_0000728E_rodata
	.2byte 0x0000
.endobj gap_03_0000728E_rodata

# .rodata:0x340 | 0x7290 | size: 0x12
.obj str_stg3_npc_10_03_14_tou_0000ff48, local
	.string "stg3_npc_10_03_14"
.endobj str_stg3_npc_10_03_14_tou_0000ff48

# .rodata:0x352 | 0x72A2 | size: 0x2
.obj gap_03_000072A2_rodata, global
.hidden gap_03_000072A2_rodata
	.2byte 0x0000
.endobj gap_03_000072A2_rodata

# .rodata:0x354 | 0x72A4 | size: 0x10
.obj str_stg3_npc_re_070_tou_0000ff5c, local
	.string "stg3_npc_re_070"
.endobj str_stg3_npc_re_070_tou_0000ff5c

# .rodata:0x364 | 0x72B4 | size: 0x10
.obj str_stg3_npc_re_071_tou_0000ff6c, local
	.string "stg3_npc_re_071"
.endobj str_stg3_npc_re_071_tou_0000ff6c

# .rodata:0x374 | 0x72C4 | size: 0x12
.obj str_stg3_npc_10_05_12_tou_0000ff7c, local
	.string "stg3_npc_10_05_12"
.endobj str_stg3_npc_10_05_12_tou_0000ff7c

# .rodata:0x386 | 0x72D6 | size: 0x2
.obj gap_03_000072D6_rodata, global
.hidden gap_03_000072D6_rodata
	.2byte 0x0000
.endobj gap_03_000072D6_rodata

# .rodata:0x388 | 0x72D8 | size: 0x12
.obj str_stg3_npc_10_05_13_tou_0000ff90, local
	.string "stg3_npc_10_05_13"
.endobj str_stg3_npc_10_05_13_tou_0000ff90

# .rodata:0x39A | 0x72EA | size: 0x2
.obj gap_03_000072EA_rodata, global
.hidden gap_03_000072EA_rodata
	.2byte 0x0000
.endobj gap_03_000072EA_rodata

# .rodata:0x39C | 0x72EC | size: 0x12
.obj str_stg3_npc_10_05_15_tou_0000ffa4, local
	.string "stg3_npc_10_05_15"
.endobj str_stg3_npc_10_05_15_tou_0000ffa4

# .rodata:0x3AE | 0x72FE | size: 0x2
.obj gap_03_000072FE_rodata, global
.hidden gap_03_000072FE_rodata
	.2byte 0x0000
.endobj gap_03_000072FE_rodata

# .rodata:0x3B0 | 0x7300 | size: 0x12
.obj str_stg3_npc_10_05_14_tou_0000ffb8, local
	.string "stg3_npc_10_05_14"
.endobj str_stg3_npc_10_05_14_tou_0000ffb8

# .rodata:0x3C2 | 0x7312 | size: 0x2
.obj gap_03_00007312_rodata, global
.hidden gap_03_00007312_rodata
	.2byte 0x0000
.endobj gap_03_00007312_rodata

# .rodata:0x3C4 | 0x7314 | size: 0x12
.obj str_stg3_npc_10_06_07_tou_0000ffcc, local
	.string "stg3_npc_10_06_07"
.endobj str_stg3_npc_10_06_07_tou_0000ffcc

# .rodata:0x3D6 | 0x7326 | size: 0x2
.obj gap_03_00007326_rodata, global
.hidden gap_03_00007326_rodata
	.2byte 0x0000
.endobj gap_03_00007326_rodata

# .rodata:0x3D8 | 0x7328 | size: 0x10
.obj str_stg3_npc_re_080_tou_0000ffe0, local
	.string "stg3_npc_re_080"
.endobj str_stg3_npc_re_080_tou_0000ffe0

# .rodata:0x3E8 | 0x7338 | size: 0x10
.obj str_stg3_npc_re_081_tou_0000fff0, local
	.string "stg3_npc_re_081"
.endobj str_stg3_npc_re_081_tou_0000fff0

# .rodata:0x3F8 | 0x7348 | size: 0x12
.obj str_stg3_npc_10_06_08_tou_00010000, local
	.string "stg3_npc_10_06_08"
.endobj str_stg3_npc_10_06_08_tou_00010000

# .rodata:0x40A | 0x735A | size: 0x2
.obj gap_03_0000735A_rodata, global
.hidden gap_03_0000735A_rodata
	.2byte 0x0000
.endobj gap_03_0000735A_rodata

# .rodata:0x40C | 0x735C | size: 0xB
.obj str_キノシコワ_tou_00010014, local
	.4byte 0x834C836D
	.4byte 0x83568352
	.byte 0x83, 0x8F, 0x00
.endobj str_キノシコワ_tou_00010014

# .rodata:0x417 | 0x7367 | size: 0x1
.obj gap_03_00007367_rodata, global
.hidden gap_03_00007367_rodata
	.byte 0x00
.endobj gap_03_00007367_rodata

# .rodata:0x418 | 0x7368 | size: 0x7
.obj str_ガンス_tou_00010020, local
	.4byte 0x834B8393
	.byte 0x83, 0x58, 0x00
.endobj str_ガンス_tou_00010020

# .rodata:0x41F | 0x736F | size: 0x1
.obj gap_03_0000736F_rodata, global
.hidden gap_03_0000736F_rodata
	.byte 0x00
.endobj gap_03_0000736F_rodata

# .rodata:0x420 | 0x7370 | size: 0x9
.obj str_ヨッシー_tou_00010028, local
	.4byte 0x83888362
	.4byte 0x8356815B
	.byte 0x00
.endobj str_ヨッシー_tou_00010028

# .rodata:0x429 | 0x7379 | size: 0x3
.obj gap_03_00007379_rodata, global
.hidden gap_03_00007379_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007379_rodata

# .rodata:0x42C | 0x737C | size: 0x9
.obj str_マイケル_tou_00010034, local
	.4byte 0x837D8343
	.4byte 0x8350838B
	.byte 0x00
.endobj str_マイケル_tou_00010034

# .rodata:0x435 | 0x7385 | size: 0x3
.obj gap_03_00007385_rodata, global
.hidden gap_03_00007385_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007385_rodata

# .rodata:0x438 | 0x7388 | size: 0x9
.obj str_ブロッツ_tou_00010040, local
	.4byte 0x8375838D
	.4byte 0x83628363
	.byte 0x00
.endobj str_ブロッツ_tou_00010040

# .rodata:0x441 | 0x7391 | size: 0x3
.obj gap_03_00007391_rodata, global
.hidden gap_03_00007391_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007391_rodata

# .rodata:0x444 | 0x7394 | size: 0x9
.obj str_ガンガン_tou_0001004c, local
	.4byte 0x834B8393
	.4byte 0x834B8393
	.byte 0x00
.endobj str_ガンガン_tou_0001004c

# .rodata:0x44D | 0x739D | size: 0x3
.obj gap_03_0000739D_rodata, global
.hidden gap_03_0000739D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000739D_rodata

# .rodata:0x450 | 0x73A0 | size: 0x5
.obj str_ポグ_tou_00010058, local
	.4byte 0x837C834F
	.byte 0x00
.endobj str_ポグ_tou_00010058

# .rodata:0x455 | 0x73A5 | size: 0x3
.obj gap_03_000073A5_rodata, global
.hidden gap_03_000073A5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000073A5_rodata

# .rodata:0x458 | 0x73A8 | size: 0x9
.obj str_アイアン_tou_00010060, local
	.4byte 0x83418343
	.4byte 0x83418393
	.byte 0x00
.endobj str_アイアン_tou_00010060

# .rodata:0x461 | 0x73B1 | size: 0x3
.obj gap_03_000073B1_rodata, global
.hidden gap_03_000073B1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000073B1_rodata

# .rodata:0x464 | 0x73B4 | size: 0xB
.obj str_アイアン２_tou_0001006c, local
	.4byte 0x83418343
	.4byte 0x83418393
	.byte 0x82, 0x51, 0x00
.endobj str_アイアン２_tou_0001006c

# .rodata:0x46F | 0x73BF | size: 0x1
.obj gap_03_000073BF_rodata, global
.hidden gap_03_000073BF_rodata
	.byte 0x00
.endobj gap_03_000073BF_rodata

# .rodata:0x470 | 0x73C0 | size: 0x6
.obj str_mario_tou_00010078, local
	.string "mario"
.endobj str_mario_tou_00010078

# .rodata:0x476 | 0x73C6 | size: 0x2
.obj gap_03_000073C6_rodata, global
.hidden gap_03_000073C6_rodata
	.2byte 0x0000
.endobj gap_03_000073C6_rodata

# .rodata:0x478 | 0x73C8 | size: 0xC
.obj str_stg3_tou_89_tou_00010080, local
	.string "stg3_tou_89"
.endobj str_stg3_tou_89_tou_00010080

# .rodata:0x484 | 0x73D4 | size: 0xE
.obj str_stg3_tou_93_1_tou_0001008c, local
	.string "stg3_tou_93_1"
.endobj str_stg3_tou_93_1_tou_0001008c

# .rodata:0x492 | 0x73E2 | size: 0x2
.obj gap_03_000073E2_rodata, global
.hidden gap_03_000073E2_rodata
	.2byte 0x0000
.endobj gap_03_000073E2_rodata

# .rodata:0x494 | 0x73E4 | size: 0xC
.obj str_stg3_tou_90_tou_0001009c, local
	.string "stg3_tou_90"
.endobj str_stg3_tou_90_tou_0001009c

# .rodata:0x4A0 | 0x73F0 | size: 0x4
.obj str_A_1_tou_000100a8, local
	.string "A_1"
.endobj str_A_1_tou_000100a8

# .rodata:0x4A4 | 0x73F4 | size: 0x7
.obj str_fmoney_tou_000100ac, local
	.string "fmoney"
.endobj str_fmoney_tou_000100ac

# .rodata:0x4AB | 0x73FB | size: 0x1
.obj gap_03_000073FB_rodata, global
.hidden gap_03_000073FB_rodata
	.byte 0x00
.endobj gap_03_000073FB_rodata

# .rodata:0x4AC | 0x73FC | size: 0x6
.obj str_M_C_3_tou_000100b4, local
	.string "M_C_3"
.endobj str_M_C_3_tou_000100b4

# .rodata:0x4B2 | 0x7402 | size: 0x2
.obj gap_03_00007402_rodata, global
.hidden gap_03_00007402_rodata
	.2byte 0x0000
.endobj gap_03_00007402_rodata

# .rodata:0x4B4 | 0x7404 | size: 0x6
.obj str_M_S_1_tou_000100bc, local
	.string "M_S_1"
.endobj str_M_S_1_tou_000100bc

# .rodata:0x4BA | 0x740A | size: 0x2
.obj gap_03_0000740A_rodata, global
.hidden gap_03_0000740A_rodata
	.2byte 0x0000
.endobj gap_03_0000740A_rodata

# .rodata:0x4BC | 0x740C | size: 0xC
.obj str_stg3_tou_91_tou_000100c4, local
	.string "stg3_tou_91"
.endobj str_stg3_tou_91_tou_000100c4

# .rodata:0x4C8 | 0x7418 | size: 0xC
.obj str_stg3_tou_92_tou_000100d0, local
	.string "stg3_tou_92"
.endobj str_stg3_tou_92_tou_000100d0

# .rodata:0x4D4 | 0x7424 | size: 0x4
.obj str_M_1_tou_000100dc, local
	.string "M_1"
.endobj str_M_1_tou_000100dc

# .rodata:0x4D8 | 0x7428 | size: 0x4
.obj str_S_1_tou_000100e0, local
	.string "S_1"
.endobj str_S_1_tou_000100e0

# .rodata:0x4DC | 0x742C | size: 0xC
.obj str_stg3_tou_93_tou_000100e4, local
	.string "stg3_tou_93"
.endobj str_stg3_tou_93_tou_000100e4

# .rodata:0x4E8 | 0x7438 | size: 0xE
.obj str_stg3_tou_93_2_tou_000100f0, local
	.string "stg3_tou_93_2"
.endobj str_stg3_tou_93_2_tou_000100f0

# .rodata:0x4F6 | 0x7446 | size: 0x2
.obj gap_03_00007446_rodata, global
.hidden gap_03_00007446_rodata
	.2byte 0x0000
.endobj gap_03_00007446_rodata

# .rodata:0x4F8 | 0x7448 | size: 0xE
.obj str_stg3_tou_93_3_tou_00010100, local
	.string "stg3_tou_93_3"
.endobj str_stg3_tou_93_3_tou_00010100

# .rodata:0x506 | 0x7456 | size: 0x2
.obj gap_03_00007456_rodata, global
.hidden gap_03_00007456_rodata
	.2byte 0x0000
.endobj gap_03_00007456_rodata

# .rodata:0x508 | 0x7458 | size: 0x11
.obj str_stg3_tou_93_3_00_tou_00010110, local
	.string "stg3_tou_93_3_00"
.endobj str_stg3_tou_93_3_00_tou_00010110

# .rodata:0x519 | 0x7469 | size: 0x3
.obj gap_03_00007469_rodata, global
.hidden gap_03_00007469_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007469_rodata

# .rodata:0x51C | 0x746C | size: 0xE
.obj str_stg3_tou_93_4_tou_00010124, local
	.string "stg3_tou_93_4"
.endobj str_stg3_tou_93_4_tou_00010124

# .rodata:0x52A | 0x747A | size: 0x2
.obj gap_03_0000747A_rodata, global
.hidden gap_03_0000747A_rodata
	.2byte 0x0000
.endobj gap_03_0000747A_rodata

# .rodata:0x52C | 0x747C | size: 0xE
.obj str_stg3_tou_93_5_tou_00010134, local
	.string "stg3_tou_93_5"
.endobj str_stg3_tou_93_5_tou_00010134

# .rodata:0x53A | 0x748A | size: 0x2
.obj gap_03_0000748A_rodata, global
.hidden gap_03_0000748A_rodata
	.2byte 0x0000
.endobj gap_03_0000748A_rodata

# .rodata:0x53C | 0x748C | size: 0xE
.obj str_stg3_tou_93_6_tou_00010144, local
	.string "stg3_tou_93_6"
.endobj str_stg3_tou_93_6_tou_00010144

# .rodata:0x54A | 0x749A | size: 0x2
.obj gap_03_0000749A_rodata, global
.hidden gap_03_0000749A_rodata
	.2byte 0x0000
.endobj gap_03_0000749A_rodata

# .rodata:0x54C | 0x749C | size: 0xE
.obj str_stg3_tou_93_7_tou_00010154, local
	.string "stg3_tou_93_7"
.endobj str_stg3_tou_93_7_tou_00010154

# .rodata:0x55A | 0x74AA | size: 0x2
.obj gap_03_000074AA_rodata, global
.hidden gap_03_000074AA_rodata
	.2byte 0x0000
.endobj gap_03_000074AA_rodata

# .rodata:0x55C | 0x74AC | size: 0xE
.obj str_stg3_tou_93_8_tou_00010164, local
	.string "stg3_tou_93_8"
.endobj str_stg3_tou_93_8_tou_00010164

# .rodata:0x56A | 0x74BA | size: 0x2
.obj gap_03_000074BA_rodata, global
.hidden gap_03_000074BA_rodata
	.2byte 0x0000
.endobj gap_03_000074BA_rodata

# .rodata:0x56C | 0x74BC | size: 0xE
.obj str_stg3_tou_93_9_tou_00010174, local
	.string "stg3_tou_93_9"
.endobj str_stg3_tou_93_9_tou_00010174

# .rodata:0x57A | 0x74CA | size: 0x2
.obj gap_03_000074CA_rodata, global
.hidden gap_03_000074CA_rodata
	.2byte 0x0000
.endobj gap_03_000074CA_rodata

# .rodata:0x57C | 0x74CC | size: 0xF
.obj str_stg3_tou_93_10_tou_00010184, local
	.string "stg3_tou_93_10"
.endobj str_stg3_tou_93_10_tou_00010184

# .rodata:0x58B | 0x74DB | size: 0x1
.obj gap_03_000074DB_rodata, global
.hidden gap_03_000074DB_rodata
	.byte 0x00
.endobj gap_03_000074DB_rodata

# .rodata:0x58C | 0x74DC | size: 0xF
.obj str_stg3_tou_93_11_tou_00010194, local
	.string "stg3_tou_93_11"
.endobj str_stg3_tou_93_11_tou_00010194

# .rodata:0x59B | 0x74EB | size: 0x1
.obj gap_03_000074EB_rodata, global
.hidden gap_03_000074EB_rodata
	.byte 0x00
.endobj gap_03_000074EB_rodata

# .rodata:0x59C | 0x74EC | size: 0xF
.obj str_stg3_tou_93_12_tou_000101a4, local
	.string "stg3_tou_93_12"
.endobj str_stg3_tou_93_12_tou_000101a4

# .rodata:0x5AB | 0x74FB | size: 0x1
.obj gap_03_000074FB_rodata, global
.hidden gap_03_000074FB_rodata
	.byte 0x00
.endobj gap_03_000074FB_rodata

# .rodata:0x5AC | 0x74FC | size: 0xF
.obj str_stg3_tou_93_13_tou_000101b4, local
	.string "stg3_tou_93_13"
.endobj str_stg3_tou_93_13_tou_000101b4

# .rodata:0x5BB | 0x750B | size: 0x1
.obj gap_03_0000750B_rodata, global
.hidden gap_03_0000750B_rodata
	.byte 0x00
.endobj gap_03_0000750B_rodata

# .rodata:0x5BC | 0x750C | size: 0xF
.obj str_stg3_tou_93_14_tou_000101c4, local
	.string "stg3_tou_93_14"
.endobj str_stg3_tou_93_14_tou_000101c4

# .rodata:0x5CB | 0x751B | size: 0x1
.obj gap_03_0000751B_rodata, global
.hidden gap_03_0000751B_rodata
	.byte 0x00
.endobj gap_03_0000751B_rodata

# .rodata:0x5CC | 0x751C | size: 0xF
.obj str_stg3_tou_93_15_tou_000101d4, local
	.string "stg3_tou_93_15"
.endobj str_stg3_tou_93_15_tou_000101d4

# .rodata:0x5DB | 0x752B | size: 0x1
.obj gap_03_0000752B_rodata, global
.hidden gap_03_0000752B_rodata
	.byte 0x00
.endobj gap_03_0000752B_rodata

# .rodata:0x5DC | 0x752C | size: 0xF
.obj str_stg3_tou_93_16_tou_000101e4, local
	.string "stg3_tou_93_16"
.endobj str_stg3_tou_93_16_tou_000101e4

# .rodata:0x5EB | 0x753B | size: 0x1
.obj gap_03_0000753B_rodata, global
.hidden gap_03_0000753B_rodata
	.byte 0x00
.endobj gap_03_0000753B_rodata

# .rodata:0x5EC | 0x753C | size: 0x10
.obj str_stg3_tou_re_028_tou_000101f4, local
	.string "stg3_tou_re_028"
.endobj str_stg3_tou_re_028_tou_000101f4

# .rodata:0x5FC | 0x754C | size: 0x10
.obj str_stg3_tou_re_029_tou_00010204, local
	.string "stg3_tou_re_029"
.endobj str_stg3_tou_re_029_tou_00010204

# .rodata:0x60C | 0x755C | size: 0x10
.obj str_stg3_tou_re_030_tou_00010214, local
	.string "stg3_tou_re_030"
.endobj str_stg3_tou_re_030_tou_00010214

# .rodata:0x61C | 0x756C | size: 0x10
.obj str_stg3_tou_re_031_tou_00010224, local
	.string "stg3_tou_re_031"
.endobj str_stg3_tou_re_031_tou_00010224

# .rodata:0x62C | 0x757C | size: 0x10
.obj str_stg3_tou_re_032_tou_00010234, local
	.string "stg3_tou_re_032"
.endobj str_stg3_tou_re_032_tou_00010234

# .rodata:0x63C | 0x758C | size: 0x10
.obj str_stg3_tou_re_033_tou_00010244, local
	.string "stg3_tou_re_033"
.endobj str_stg3_tou_re_033_tou_00010244

# .rodata:0x64C | 0x759C | size: 0x10
.obj str_stg3_tou_re_034_tou_00010254, local
	.string "stg3_tou_re_034"
.endobj str_stg3_tou_re_034_tou_00010254

# .rodata:0x65C | 0x75AC | size: 0x10
.obj str_stg3_tou_re_035_tou_00010264, local
	.string "stg3_tou_re_035"
.endobj str_stg3_tou_re_035_tou_00010264

# .rodata:0x66C | 0x75BC | size: 0xC
.obj str_c_babyyoshi_tou_00010274, local
	.string "c_babyyoshi"
.endobj str_c_babyyoshi_tou_00010274

# .rodata:0x678 | 0x75C8 | size: 0xD
.obj str_c_babyyoshi2_tou_00010280, local
	.string "c_babyyoshi2"
.endobj str_c_babyyoshi2_tou_00010280

# .rodata:0x685 | 0x75D5 | size: 0x3
.obj gap_03_000075D5_rodata, global
.hidden gap_03_000075D5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000075D5_rodata

# .rodata:0x688 | 0x75D8 | size: 0xD
.obj str_c_babyyoshi3_tou_00010290, local
	.string "c_babyyoshi3"
.endobj str_c_babyyoshi3_tou_00010290

# .rodata:0x695 | 0x75E5 | size: 0x3
.obj gap_03_000075E5_rodata, global
.hidden gap_03_000075E5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000075E5_rodata

# .rodata:0x698 | 0x75E8 | size: 0xD
.obj str_c_babyyoshi4_tou_000102a0, local
	.string "c_babyyoshi4"
.endobj str_c_babyyoshi4_tou_000102a0

# .rodata:0x6A5 | 0x75F5 | size: 0x3
.obj gap_03_000075F5_rodata, global
.hidden gap_03_000075F5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000075F5_rodata

# .rodata:0x6A8 | 0x75F8 | size: 0xD
.obj str_c_babyyoshi5_tou_000102b0, local
	.string "c_babyyoshi5"
.endobj str_c_babyyoshi5_tou_000102b0

# .rodata:0x6B5 | 0x7605 | size: 0x3
.obj gap_03_00007605_rodata, global
.hidden gap_03_00007605_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007605_rodata

# .rodata:0x6B8 | 0x7608 | size: 0xD
.obj str_c_babyyoshi6_tou_000102c0, local
	.string "c_babyyoshi6"
.endobj str_c_babyyoshi6_tou_000102c0

# .rodata:0x6C5 | 0x7615 | size: 0x3
.obj gap_03_00007615_rodata, global
.hidden gap_03_00007615_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007615_rodata

# .rodata:0x6C8 | 0x7618 | size: 0xD
.obj str_c_babyyoshi7_tou_000102d0, local
	.string "c_babyyoshi7"
.endobj str_c_babyyoshi7_tou_000102d0

# .rodata:0x6D5 | 0x7625 | size: 0x3
.obj gap_03_00007625_rodata, global
.hidden gap_03_00007625_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007625_rodata

# .rodata:0x6D8 | 0x7628 | size: 0xD
.obj str_stg3_tou_278_tou_000102e0, local
	.string "stg3_tou_278"
.endobj str_stg3_tou_278_tou_000102e0

# .rodata:0x6E5 | 0x7635 | size: 0x3
.obj gap_03_00007635_rodata, global
.hidden gap_03_00007635_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007635_rodata

# .rodata:0x6E8 | 0x7638 | size: 0xD
.obj str_stg3_tou_279_tou_000102f0, local
	.string "stg3_tou_279"
.endobj str_stg3_tou_279_tou_000102f0

# .rodata:0x6F5 | 0x7645 | size: 0x3
.obj gap_03_00007645_rodata, global
.hidden gap_03_00007645_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007645_rodata

# .rodata:0x6F8 | 0x7648 | size: 0x1A
.obj str_SFX_VOICE_MARIO_QUES_tou_00010300, local
	.string "SFX_VOICE_MARIO_QUESTION1"
.endobj str_SFX_VOICE_MARIO_QUES_tou_00010300

# .rodata:0x712 | 0x7662 | size: 0x2
.obj gap_03_00007662_rodata, global
.hidden gap_03_00007662_rodata
	.2byte 0x0000
.endobj gap_03_00007662_rodata

# .rodata:0x714 | 0x7664 | size: 0xD
.obj str_stg3_tou_280_tou_0001031c, local
	.string "stg3_tou_280"
.endobj str_stg3_tou_280_tou_0001031c

# .rodata:0x721 | 0x7671 | size: 0x3
.obj gap_03_00007671_rodata, global
.hidden gap_03_00007671_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007671_rodata

# .rodata:0x724 | 0x7674 | size: 0x1B
.obj str_SFX_VOICE_MARIO_SURP_tou_0001032c, local
	.string "SFX_VOICE_MARIO_SURPRISED2"
.endobj str_SFX_VOICE_MARIO_SURP_tou_0001032c

# .rodata:0x73F | 0x768F | size: 0x1
.obj gap_03_0000768F_rodata, global
.hidden gap_03_0000768F_rodata
	.byte 0x00
.endobj gap_03_0000768F_rodata

# .rodata:0x740 | 0x7690 | size: 0x7
.obj str_M_N_5B_tou_00010348, local
	.string "M_N_5B"
.endobj str_M_N_5B_tou_00010348

# .rodata:0x747 | 0x7697 | size: 0x1
.obj gap_03_00007697_rodata, global
.hidden gap_03_00007697_rodata
	.byte 0x00
.endobj gap_03_00007697_rodata

# .rodata:0x748 | 0x7698 | size: 0xD
.obj str_stg3_tou_281_tou_00010350, local
	.string "stg3_tou_281"
.endobj str_stg3_tou_281_tou_00010350

# .rodata:0x755 | 0x76A5 | size: 0x3
.obj gap_03_000076A5_rodata, global
.hidden gap_03_000076A5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000076A5_rodata

# .rodata:0x758 | 0x76A8 | size: 0xD
.obj str_stg3_tou_282_tou_00010360, local
	.string "stg3_tou_282"
.endobj str_stg3_tou_282_tou_00010360

# .rodata:0x765 | 0x76B5 | size: 0x3
.obj gap_03_000076B5_rodata, global
.hidden gap_03_000076B5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000076B5_rodata

# .rodata:0x768 | 0x76B8 | size: 0x6
.obj str_M_I_2_tou_00010370, local
	.string "M_I_2"
.endobj str_M_I_2_tou_00010370

# .rodata:0x76E | 0x76BE | size: 0x2
.obj gap_03_000076BE_rodata, global
.hidden gap_03_000076BE_rodata
	.2byte 0x0000
.endobj gap_03_000076BE_rodata

# .rodata:0x770 | 0x76C0 | size: 0xD
.obj str_stg3_tou_283_tou_00010378, local
	.string "stg3_tou_283"
.endobj str_stg3_tou_283_tou_00010378

# .rodata:0x77D | 0x76CD | size: 0x3
.obj gap_03_000076CD_rodata, global
.hidden gap_03_000076CD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000076CD_rodata

# .rodata:0x780 | 0x76D0 | size: 0xB
.obj str_OFF_d_roll_tou_00010388, local
	.string "OFF_d_roll"
.endobj str_OFF_d_roll_tou_00010388

# .rodata:0x78B | 0x76DB | size: 0x1
.obj gap_03_000076DB_rodata, global
.hidden gap_03_000076DB_rodata
	.byte 0x00
.endobj gap_03_000076DB_rodata

# .rodata:0x78C | 0x76DC | size: 0x4
.obj str_img_tou_00010394, local
	.string "img"
.endobj str_img_tou_00010394

# .rodata:0x790 | 0x76E0 | size: 0x4
.obj str_Z_1_tou_00010398, local
	.string "Z_1"
.endobj str_Z_1_tou_00010398

# .rodata:0x794 | 0x76E4 | size: 0x15
.obj str_SFX_OFF3_NAME_ENTRY1_tou_0001039c, local
	.string "SFX_OFF3_NAME_ENTRY1"
.endobj str_SFX_OFF3_NAME_ENTRY1_tou_0001039c

# .rodata:0x7A9 | 0x76F9 | size: 0x3
.obj gap_03_000076F9_rodata, global
.hidden gap_03_000076F9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000076F9_rodata

# .rodata:0x7AC | 0x76FC | size: 0x4
.obj str_A_2_tou_000103b4, local
	.string "A_2"
.endobj str_A_2_tou_000103b4

# .rodata:0x7B0 | 0x7700 | size: 0x15
.obj str_SFX_OFF3_NAME_ENTRY2_tou_000103b8, local
	.string "SFX_OFF3_NAME_ENTRY2"
.endobj str_SFX_OFF3_NAME_ENTRY2_tou_000103b8

# .rodata:0x7C5 | 0x7715 | size: 0x3
.obj gap_03_00007715_rodata, global
.hidden gap_03_00007715_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007715_rodata

# .rodata:0x7C8 | 0x7718 | size: 0xD
.obj str_stg3_tou_284_tou_000103d0, local
	.string "stg3_tou_284"
.endobj str_stg3_tou_284_tou_000103d0

# .rodata:0x7D5 | 0x7725 | size: 0x3
.obj gap_03_00007725_rodata, global
.hidden gap_03_00007725_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007725_rodata

# .rodata:0x7D8 | 0x7728 | size: 0x10
.obj str_stg3_tou_179_00_tou_000103e0, local
	.string "stg3_tou_179_00"
.endobj str_stg3_tou_179_00_tou_000103e0

# .rodata:0x7E8 | 0x7738 | size: 0x10
.obj str_stg3_tou_179_01_tou_000103f0, local
	.string "stg3_tou_179_01"
.endobj str_stg3_tou_179_01_tou_000103f0

# .rodata:0x7F8 | 0x7748 | size: 0xD
.obj str_stg3_tou_286_tou_00010400, local
	.string "stg3_tou_286"
.endobj str_stg3_tou_286_tou_00010400

# .rodata:0x805 | 0x7755 | size: 0x3
.obj gap_03_00007755_rodata, global
.hidden gap_03_00007755_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007755_rodata

# .rodata:0x808 | 0x7758 | size: 0x7
.obj str_tou_05_tou_00010410, local
	.string "tou_05"
.endobj str_tou_05_tou_00010410

# .rodata:0x80F | 0x775F | size: 0x1
.obj gap_03_0000775F_rodata, global
.hidden gap_03_0000775F_rodata
	.byte 0x00
.endobj gap_03_0000775F_rodata

# .rodata:0x810 | 0x7760 | size: 0x10
.obj str_stg3_tou_re_085_tou_00010418, local
	.string "stg3_tou_re_085"
.endobj str_stg3_tou_re_085_tou_00010418

# .rodata:0x820 | 0x7770 | size: 0xC
.obj str_stg3_tou_67_tou_00010428, local
	.string "stg3_tou_67"
.endobj str_stg3_tou_67_tou_00010428

# .rodata:0x82C | 0x777C | size: 0xF
.obj str_stg3_tou_73_01_tou_00010434, local
	.string "stg3_tou_73_01"
.endobj str_stg3_tou_73_01_tou_00010434

# .rodata:0x83B | 0x778B | size: 0x1
.obj gap_03_0000778B_rodata, global
.hidden gap_03_0000778B_rodata
	.byte 0x00
.endobj gap_03_0000778B_rodata

# .rodata:0x83C | 0x778C | size: 0xC
.obj str_stg3_tou_63_tou_00010444, local
	.string "stg3_tou_63"
.endobj str_stg3_tou_63_tou_00010444

# .rodata:0x848 | 0x7798 | size: 0xC
.obj str_stg3_tou_64_tou_00010450, local
	.string "stg3_tou_64"
.endobj str_stg3_tou_64_tou_00010450

# .rodata:0x854 | 0x77A4 | size: 0xC
.obj str_stg3_tou_65_tou_0001045c, local
	.string "stg3_tou_65"
.endobj str_stg3_tou_65_tou_0001045c

# .rodata:0x860 | 0x77B0 | size: 0x1B
.obj str_SFX_VOICE_MARIO_SURP_tou_00010468, local
	.string "SFX_VOICE_MARIO_SURPRISED1"
.endobj str_SFX_VOICE_MARIO_SURP_tou_00010468

# .rodata:0x87B | 0x77CB | size: 0x1
.obj gap_03_000077CB_rodata, global
.hidden gap_03_000077CB_rodata
	.byte 0x00
.endobj gap_03_000077CB_rodata

# .rodata:0x87C | 0x77CC | size: 0x6
.obj str_M_N_7_tou_00010484, local
	.string "M_N_7"
.endobj str_M_N_7_tou_00010484

# .rodata:0x882 | 0x77D2 | size: 0x2
.obj gap_03_000077D2_rodata, global
.hidden gap_03_000077D2_rodata
	.2byte 0x0000
.endobj gap_03_000077D2_rodata

# .rodata:0x884 | 0x77D4 | size: 0xC
.obj str_stg3_tou_74_tou_0001048c, local
	.string "stg3_tou_74"
.endobj str_stg3_tou_74_tou_0001048c

# .rodata:0x890 | 0x77E0 | size: 0xC
.obj str_stg3_tou_75_tou_00010498, local
	.string "stg3_tou_75"
.endobj str_stg3_tou_75_tou_00010498

# .rodata:0x89C | 0x77EC | size: 0x6
.obj str_gamen_tou_000104a4, local
	.string "gamen"
.endobj str_gamen_tou_000104a4

# .rodata:0x8A2 | 0x77F2 | size: 0x2
.obj gap_03_000077F2_rodata, global
.hidden gap_03_000077F2_rodata
	.2byte 0x0000
.endobj gap_03_000077F2_rodata

# .rodata:0x8A4 | 0x77F4 | size: 0xC
.obj str_stg3_tou_69_tou_000104ac, local
	.string "stg3_tou_69"
.endobj str_stg3_tou_69_tou_000104ac

# .rodata:0x8B0 | 0x7800 | size: 0xC
.obj str_stg3_tou_70_tou_000104b8, local
	.string "stg3_tou_70"
.endobj str_stg3_tou_70_tou_000104b8

# .rodata:0x8BC | 0x780C | size: 0xF
.obj str_stg3_tou_70_yn_tou_000104c4, local
	.string "stg3_tou_70_yn"
.endobj str_stg3_tou_70_yn_tou_000104c4

# .rodata:0x8CB | 0x781B | size: 0x1
.obj gap_03_0000781B_rodata, global
.hidden gap_03_0000781B_rodata
	.byte 0x00
.endobj gap_03_0000781B_rodata

# .rodata:0x8CC | 0x781C | size: 0xC
.obj str_stg3_tou_72_tou_000104d4, local
	.string "stg3_tou_72"
.endobj str_stg3_tou_72_tou_000104d4

# .rodata:0x8D8 | 0x7828 | size: 0xC
.obj str_stg3_tou_71_tou_000104e0, local
	.string "stg3_tou_71"
.endobj str_stg3_tou_71_tou_000104e0

# .rodata:0x8E4 | 0x7834 | size: 0x7
.obj str_M_make_tou_000104ec, local
	.string "M_make"
.endobj str_M_make_tou_000104ec

# .rodata:0x8EB | 0x783B | size: 0x1
.obj gap_03_0000783B_rodata, global
.hidden gap_03_0000783B_rodata
	.byte 0x00
.endobj gap_03_0000783B_rodata

# .rodata:0x8EC | 0x783C | size: 0x11
.obj str_SFX_TOUROKU_COM1_tou_000104f4, local
	.string "SFX_TOUROKU_COM1"
.endobj str_SFX_TOUROKU_COM1_tou_000104f4

# .rodata:0x8FD | 0x784D | size: 0x3
.obj gap_03_0000784D_rodata, global
.hidden gap_03_0000784D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000784D_rodata

# .rodata:0x900 | 0x7850 | size: 0xD
.obj str_stg3_tou_103_tou_00010508, local
	.string "stg3_tou_103"
.endobj str_stg3_tou_103_tou_00010508

# .rodata:0x90D | 0x785D | size: 0x3
.obj gap_03_0000785D_rodata, global
.hidden gap_03_0000785D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000785D_rodata

# .rodata:0x910 | 0x7860 | size: 0x10
.obj str_stg3_tou_103_yn_tou_00010518, local
	.string "stg3_tou_103_yn"
.endobj str_stg3_tou_103_yn_tou_00010518

# .rodata:0x920 | 0x7870 | size: 0x17
.obj str_scrl_auto_once_stop_tou_00010528, local
	.string "<scrl_auto><once_stop>"
.endobj str_scrl_auto_once_stop_tou_00010528

# .rodata:0x937 | 0x7887 | size: 0x1
.obj gap_03_00007887_rodata, global
.hidden gap_03_00007887_rodata
	.byte 0x00
.endobj gap_03_00007887_rodata

# .rodata:0x938 | 0x7888 | size: 0x10
.obj str_stg3_tou_104_01_tou_00010540, local
	.string "stg3_tou_104_01"
.endobj str_stg3_tou_104_01_tou_00010540

# .rodata:0x948 | 0x7898 | size: 0xC
.obj str_stg3_tou_68_tou_00010550, local
	.string "stg3_tou_68"
.endobj str_stg3_tou_68_tou_00010550

# .rodata:0x954 | 0x78A4 | size: 0xF
.obj str_stg3_tou_73_02_tou_0001055c, local
	.string "stg3_tou_73_02"
.endobj str_stg3_tou_73_02_tou_0001055c

# .rodata:0x963 | 0x78B3 | size: 0x1
.obj gap_03_000078B3_rodata, global
.hidden gap_03_000078B3_rodata
	.byte 0x00
.endobj gap_03_000078B3_rodata

# .rodata:0x964 | 0x78B4 | size: 0x10
.obj str_stg3_tou_297_16_tou_0001056c, local
	.string "stg3_tou_297_16"
.endobj str_stg3_tou_297_16_tou_0001056c

# .rodata:0x974 | 0x78C4 | size: 0x10
.obj str_stg3_tou_297_17_tou_0001057c, local
	.string "stg3_tou_297_17"
.endobj str_stg3_tou_297_17_tou_0001057c

# .rodata:0x984 | 0x78D4 | size: 0x10
.obj str_stg3_tou_297_19_tou_0001058c, local
	.string "stg3_tou_297_19"
.endobj str_stg3_tou_297_19_tou_0001058c

# .rodata:0x994 | 0x78E4 | size: 0x10
.obj str_stg3_tou_297_20_tou_0001059c, local
	.string "stg3_tou_297_20"
.endobj str_stg3_tou_297_20_tou_0001059c

# .rodata:0x9A4 | 0x78F4 | size: 0x10
.obj str_stg3_tou_297_21_tou_000105ac, local
	.string "stg3_tou_297_21"
.endobj str_stg3_tou_297_21_tou_000105ac

# .rodata:0x9B4 | 0x7904 | size: 0xE
.obj str_BGM_STG3_TOU1_tou_000105bc, local
	.string "BGM_STG3_TOU1"
.endobj str_BGM_STG3_TOU1_tou_000105bc

# .rodata:0x9C2 | 0x7912 | size: 0x2
.obj gap_03_00007912_rodata, global
.hidden gap_03_00007912_rodata
	.2byte 0x0000
.endobj gap_03_00007912_rodata

# .rodata:0x9C4 | 0x7914 | size: 0x7
.obj str_syorui_tou_000105cc, local
	.string "syorui"
.endobj str_syorui_tou_000105cc

# .rodata:0x9CB | 0x791B | size: 0x1
.obj gap_03_0000791B_rodata, global
.hidden gap_03_0000791B_rodata
	.byte 0x00
.endobj gap_03_0000791B_rodata

# .rodata:0x9CC | 0x791C | size: 0x6
.obj str_M_L_2_tou_000105d4, local
	.string "M_L_2"
.endobj str_M_L_2_tou_000105d4

# .rodata:0x9D2 | 0x7922 | size: 0x2
.obj gap_03_00007922_rodata, global
.hidden gap_03_00007922_rodata
	.2byte 0x0000
.endobj gap_03_00007922_rodata

# .rodata:0x9D4 | 0x7924 | size: 0x10
.obj str_stg3_tou_297_14_tou_000105dc, local
	.string "stg3_tou_297_14"
.endobj str_stg3_tou_297_14_tou_000105dc

# .rodata:0x9E4 | 0x7934 | size: 0x10
.obj str_stg3_tou_297_15_tou_000105ec, local
	.string "stg3_tou_297_15"
.endobj str_stg3_tou_297_15_tou_000105ec

# .rodata:0x9F4 | 0x7944 | size: 0xD
.obj str_stg3_tou_256_tou_000105fc, local
	.string "stg3_tou_256"
.endobj str_stg3_tou_256_tou_000105fc

# .rodata:0xA01 | 0x7951 | size: 0x3
.obj gap_03_00007951_rodata, global
.hidden gap_03_00007951_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00007951_rodata

# .rodata:0xA04 | 0x7954 | size: 0x6
.obj str_M_N_2_tou_0001060c, local
	.string "M_N_2"
.endobj str_M_N_2_tou_0001060c

# .rodata:0xA0A | 0x795A | size: 0x2
.obj gap_03_0000795A_rodata, global
.hidden gap_03_0000795A_rodata
	.2byte 0x0000
.endobj gap_03_0000795A_rodata

# .rodata:0xA0C | 0x795C | size: 0xE
.obj str_BGM_STG3_TOU2_tou_00010614, local
	.string "BGM_STG3_TOU2"
.endobj str_BGM_STG3_TOU2_tou_00010614

# .rodata:0xA1A | 0x796A | size: 0x2
.obj gap_03_0000796A_rodata, global
.hidden gap_03_0000796A_rodata
	.2byte 0x0000
.endobj gap_03_0000796A_rodata

# .rodata:0xA1C | 0x796C | size: 0xE
.obj str_ENV_STG3_TOU6_tou_00010624, local
	.string "ENV_STG3_TOU6"
.endobj str_ENV_STG3_TOU6_tou_00010624

# .rodata:0xA2A | 0x797A | size: 0x2
.obj gap_03_0000797A_rodata, global
.hidden gap_03_0000797A_rodata
	.2byte 0x0000
.endobj gap_03_0000797A_rodata

# .rodata:0xA2C | 0x797C | size: 0x7
.obj str_fuku_M_tou_00010634, local
	.string "fuku_M"
.endobj str_fuku_M_tou_00010634

# .rodata:0xA33 | 0x7983 | size: 0x1
.obj gap_03_00007983_rodata, global
.hidden gap_03_00007983_rodata
	.byte 0x00
.endobj gap_03_00007983_rodata

# .rodata:0xA34 | 0x7984 | size: 0x4
.obj str_isu_tou_0001063c, local
	.string "isu"
.endobj str_isu_tou_0001063c

# .rodata:0xA38 | 0x7988 | size: 0x4
.obj str_blk_tou_00010640, local
	.string "blk"
.endobj str_blk_tou_00010640

# .rodata:0xA3C | 0x798C | size: 0x14
.obj str_MOBJ_Lv1BigBigBlock_tou_00010644, local
	.string "MOBJ_Lv1BigBigBlock"
.endobj str_MOBJ_Lv1BigBigBlock_tou_00010644

# .rodata:0xA50 | 0x79A0 | size: 0x6
.obj str_a_b_H_tou_00010658, local
	.string "a_b_H"
.endobj str_a_b_H_tou_00010658

# .rodata:0xA56 | 0x79A6 | size: 0x2
.obj gap_03_000079A6_rodata, global
.hidden gap_03_000079A6_rodata
	.2byte 0x0000
.endobj gap_03_000079A6_rodata

# .rodata:0xA58 | 0x79A8 | size: 0x7
.obj str_p_slit_tou_00010660, local
	.string "p_slit"
.endobj str_p_slit_tou_00010660

# .rodata:0xA5F | 0x79AF | size: 0x1
.obj gap_03_000079AF_rodata, global
.hidden gap_03_000079AF_rodata
	.byte 0x00
.endobj gap_03_000079AF_rodata

# .rodata:0xA60 | 0x79B0 | size: 0x3
.obj str___tou_00010668, local
	.byte 0x81, 0x40, 0x00
.endobj str___tou_00010668

# .rodata:0xA63 | 0x79B3 | size: 0x1
.obj gap_03_000079B3_rodata, global
.hidden gap_03_000079B3_rodata
	.byte 0x00
.endobj gap_03_000079B3_rodata

# .rodata:0xA64 | 0x79B4 | size: 0xC
.obj str_name_party3_tou_0001066c, local
	.string "name_party3"
.endobj str_name_party3_tou_0001066c

# 0x00028488..0x0002CE18 | size: 0x4990
.data
.balign 8

# .data:0x0 | 0x28488 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x28490 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x28494 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x28498 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x2849C | size: 0x4
.obj gap_04_0002849C_data, global
.hidden gap_04_0002849C_data
	.4byte 0x00000000
.endobj gap_04_0002849C_data

# .data:0x18 | 0x284A0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x284A8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x284AC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x284B0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x284B8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x284BC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x284C0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x284C4 | size: 0x4
.obj gap_04_000284C4_data, global
.hidden gap_04_000284C4_data
	.4byte 0x00000000
.endobj gap_04_000284C4_data

# .data:0x40 | 0x284C8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x284D0 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x284D4 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x284D8 | size: 0x20
.obj room_out, local
	.4byte 0x00020032
	.4byte 0xF84064D6
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj room_out

# .data:0x70 | 0x284F8 | size: 0x30
.obj n_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C47
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_1_tou_0000fc08
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj n_door_open

# .data:0xA0 | 0x28528 | size: 0x30
.obj n_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78B9
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_1_tou_0000fc08
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj n_door_close

# .data:0xD0 | 0x28558 | size: 0x78
.obj bero_data, local
	.4byte str_n_bero_tou_0000fc10
	.4byte 0x00010004
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte room_out
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_tou_04_tou_0000fc18
	.4byte str_s_bero_7_tou_0000fc20
	.4byte 0x00050005
	.4byte n_door_close
	.4byte n_door_open
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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

# .data:0x148 | 0x285D0 | size: 0x34
.obj init_kino, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x00000084
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_tou_0000fc2c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFF60
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_kino

# .data:0x17C | 0x28604 | size: 0x60
.obj talk_kino, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x00000084
	.4byte 0x00020018
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_66_tou_0000fc30
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_73_tou_0000fc3c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj talk_kino

# .data:0x1DC | 0x28664 | size: 0x8
.obj init_gard, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_gard

# .data:0x1E4 | 0x2866C | size: 0x114
.obj talk_gard, local
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ガードマン_tou_0000fc48
	.4byte 0x00000020
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガードマン_tou_0000fc48
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
	.4byte str_ガードマン_tou_0000fc48
	.4byte 0x00000000
	.4byte 0xFFFFFF38
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ガードマン_tou_0000fc48
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFF38
	.4byte 0x0000003C
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_tou_03_tou_0000fc54
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj talk_gard

# .data:0x2F8 | 0x28780 | size: 0xA8
.obj init_michel, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x000000AC
	.4byte 0x00020018
	.4byte 0xF84064EC
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_tou_0000fc2c
	.4byte 0x00000078
	.4byte 0x00000000
	.4byte 0xFFFFFFE2
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_me_tou_0000fc2c
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_tou_0000fc2c
	.4byte 0x0000010E
	.4byte 0x00000021
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_tou_0000fc2c
	.4byte 0x00000078
	.4byte 0x00000000
	.4byte 0xFFFFFFE2
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_me_tou_0000fc2c
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_tou_0000fc2c
	.4byte 0x0000010E
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_michel

# .data:0x3A0 | 0x28828 | size: 0x178
.obj talk_michel, local
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x000000AC
	.4byte 0x0002005B
	.4byte evt_tou_get_ranking_25_text_1FE0
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000014
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_10_01_04_tou_0000fc5c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000013
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_10_01_05_tou_0000fc70
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000012
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_10_01_06_tou_0000fc84
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000011
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_10_01_07_tou_0000fc98
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000010
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_10_01_08_tou_0000fcac
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x0000000F
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_10_01_09_tou_0000fcc0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x0000000E
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_10_01_10_tou_0000fcd4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x0000000D
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_10_01_11_tou_0000fce8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xF8406549
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_re_060_tou_0000fcfc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_re_061_tou_0000fd0c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj talk_michel

# .data:0x518 | 0x289A0 | size: 0x44
.obj init_octo, local
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_オクトール_tou_0000fd1c
	.4byte 0x00000050
	.4byte 0x00000000
	.4byte 0x00000055
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_オクトール_tou_0000fd1c
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_オクトール_tou_0000fd1c
	.4byte 0x0000010E
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_octo

# .data:0x55C | 0x289E4 | size: 0x234
.obj talk_octo, local
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x000000AC
	.4byte 0x0002005B
	.4byte evt_tou_get_ranking_25_text_1FE0
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000014
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_10_02_04_tou_0000fd28
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000013
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_10_02_05_tou_0000fd3c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000012
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_10_02_06_tou_0000fd50
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000011
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_10_02_07_tou_0000fd64
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000010
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_10_02_08_tou_0000fd78
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x0000000F
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_10_02_09_tou_0000fd8c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x0000000E
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_10_02_10_tou_0000fda0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x0000000D
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_10_02_11_tou_0000fdb4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x0000000C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_10_02_12_tou_0000fdc8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x0000000B
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_10_02_13_tou_0000fddc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000002A
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x0000008D
	.4byte 0x0000008F
	.4byte 0x00020018
	.4byte 0xF8406555
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_10_02_15_tou_0000fdf0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_10_02_14_tou_0000fe04
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_10_02_14_tou_0000fe04
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00000031
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xF8406549
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_re_065_tou_0000fe18
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_re_066_tou_0000fe28
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj talk_octo

# .data:0x790 | 0x28C18 | size: 0xC4
.obj init_brots, local
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x000000AC
	.4byte 0x0002005B
	.4byte evt_tou_get_ranking_25_text_1FE0
	.4byte 0xFE363C80
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0x00000013
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xF84064E6
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_tou_0000fc2c
	.4byte 0xFFFFFF60
	.4byte 0x00000000
	.4byte 0xFFFFFFCE
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_me_tou_0000fc2c
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_tou_0000fc2c
	.4byte 0x0000005A
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_tou_0000fc2c
	.4byte 0xFFFFFF60
	.4byte 0x00000000
	.4byte 0xFFFFFFCE
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_me_tou_0000fc2c
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_tou_0000fc2c
	.4byte 0x0000005A
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_brots

# .data:0x854 | 0x28CDC | size: 0x98
.obj talk_brots, local
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x000000AC
	.4byte 0x0002005B
	.4byte evt_tou_get_ranking_25_text_1FE0
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010029
	.4byte 0x00000013
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_10_04_04_tou_0000fe38
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xF8406549
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_re_075_tou_0000fe4c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_re_076_tou_0000fe5c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj talk_brots

# .data:0x8EC | 0x28D74 | size: 0x44
.obj init_gangan, local
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_tou_0000fc2c
	.4byte 0xFFFFFFB5
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_me_tou_0000fc2c
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_tou_0000fc2c
	.4byte 0x0000005A
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_gangan

# .data:0x930 | 0x28DB8 | size: 0x234
.obj talk_gangan, local
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x000000AC
	.4byte 0x0002005B
	.4byte evt_tou_get_ranking_25_text_1FE0
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000014
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_10_03_04_tou_0000fe6c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000013
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_10_03_05_tou_0000fe80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000012
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_10_03_06_tou_0000fe94
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000011
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_10_03_07_tou_0000fea8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000010
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_10_03_08_tou_0000febc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x0000000F
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_10_03_09_tou_0000fed0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x0000000E
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_10_03_10_tou_0000fee4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x0000000D
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_10_03_11_tou_0000fef8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x0000000C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_10_03_12_tou_0000ff0c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x0000000B
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_10_03_13_tou_0000ff20
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000002A
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x0000008D
	.4byte 0x0000008F
	.4byte 0x00020018
	.4byte 0xF8406555
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_10_03_15_tou_0000ff34
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_10_03_14_tou_0000ff48
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_10_03_14_tou_0000ff48
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00000031
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xF8406549
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_re_070_tou_0000ff5c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_re_071_tou_0000ff6c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj talk_gangan

# .data:0xB64 | 0x28FEC | size: 0xAC
.obj init_poku, local
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_me_tou_0000fc2c
	.4byte 0x00000002
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x000000AC
	.4byte 0x00020018
	.4byte 0xF84064DD
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_tou_0000fc2c
	.4byte 0x00000078
	.4byte 0x00000000
	.4byte 0xFFFFFFE2
	.4byte 0x00000021
	.4byte 0x00010024
	.4byte 0x000000AC
	.4byte 0x00020018
	.4byte 0xF8406540
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_tou_0000fc2c
	.4byte 0x00000078
	.4byte 0x00000000
	.4byte 0xFFFFFFE2
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_me_tou_0000fc2c
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_tou_0000fc2c
	.4byte 0x0000010E
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_poku

# .data:0xC10 | 0x29098 | size: 0xDC
.obj talk_poku, local
	.4byte 0x0002005B
	.4byte evt_tou_get_ranking_25_text_1FE0
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x0000000C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_10_05_12_tou_0000ff7c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x0000000B
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_10_05_13_tou_0000ff90
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000002A
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x0000008D
	.4byte 0x0000008F
	.4byte 0x00020018
	.4byte 0xF8406555
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_10_05_15_tou_0000ffa4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_10_05_14_tou_0000ffb8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_10_05_14_tou_0000ffb8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj talk_poku

# .data:0xCEC | 0x29174 | size: 0xB4
.obj init_iron, local
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x000000AC
	.4byte 0x0002005B
	.4byte evt_tou_get_ranking_25_text_1FE0
	.4byte 0xFE363C80
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0x0000000B
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_tou_0000fc2c
	.4byte 0x0000004B
	.4byte 0x00000000
	.4byte 0xFFFFFF9C
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xF8406540
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_tou_0000fc2c
	.4byte 0x0000004B
	.4byte 0x00000000
	.4byte 0xFFFFFF9C
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_me_tou_0000fc2c
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_tou_0000fc2c
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_npc_set_scale
	.4byte str_me_tou_0000fc2c
	.4byte 0xF24A8080
	.4byte 0xF24A8080
	.4byte 0xF24A7E80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_iron

# .data:0xDA0 | 0x29228 | size: 0x78
.obj talk_iron, local
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x000000AC
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_10_06_07_tou_0000ffcc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xF8406549
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_re_080_tou_0000ffe0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_re_081_tou_0000fff0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj talk_iron

# .data:0xE18 | 0x292A0 | size: 0xB4
.obj init_iron2, local
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x000000AC
	.4byte 0x0002005B
	.4byte evt_tou_get_ranking_25_text_1FE0
	.4byte 0xFE363C80
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0x0000000B
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_tou_0000fc2c
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0xFFFFFFB0
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xF8406540
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_tou_0000fc2c
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0xFFFFFFB0
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_me_tou_0000fc2c
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_tou_0000fc2c
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_npc_set_scale
	.4byte str_me_tou_0000fc2c
	.4byte 0xF24A8080
	.4byte 0xF24A8080
	.4byte 0xF24A7E80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_iron2

# .data:0xECC | 0x29354 | size: 0x78
.obj talk_iron2, local
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x000000AC
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_10_06_08_tou_00010000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xF8406549
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_re_080_tou_0000ffe0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_npc_re_081_tou_0000fff0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj talk_iron2

# .data:0xF44 | 0x293CC | size: 0x3F4
.obj npcEnt, local
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte init_kino
	.4byte 0x00000000
	.4byte talk_kino
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ガードマン_tou_0000fc48
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte init_gard
	.4byte 0x00000000
	.4byte talk_gard
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ガンス_tou_00010020
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
	.4byte str_ヨッシー_tou_00010028
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
	.4byte str_マイケル_tou_00010034
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte init_michel
	.4byte 0x00000000
	.4byte talk_michel
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ブロッツ_tou_00010040
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte init_brots
	.4byte 0x00000000
	.4byte talk_brots
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ガンガン_tou_0001004c
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte init_gangan
	.4byte 0x00000000
	.4byte talk_gangan
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ポグ_tou_00010058
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte init_poku
	.4byte 0x00000000
	.4byte talk_poku
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_アイアン_tou_00010060
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte init_iron
	.4byte 0x00000000
	.4byte talk_iron
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_アイアン２_tou_0001006c
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte init_iron2
	.4byte 0x00000000
	.4byte talk_iron2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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

# .data:0x1338 | 0x297C0 | size: 0xB74
.obj evt_saisyo_after, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
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
	.4byte str_ガンス_tou_00010020
	.4byte 0xFFFFFFD3
	.4byte 0x00000000
	.4byte 0xFFFFFFA1
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_キノシコワ_tou_00010014
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
	.4byte str_ガンス_tou_00010020
	.4byte str_mario_tou_00010078
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_キノシコワ_tou_00010014
	.4byte str_mario_tou_00010078
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
	.4byte 0x0002005B
	.4byte evt_tou_get_ranking_25_text_1FE0
	.4byte 0xFE363C80
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_89_tou_00010080
	.4byte 0x00000000
	.4byte str_ガンス_tou_00010020
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_93_1_tou_0001008c
	.4byte 0x00000000
	.4byte str_ガンス_tou_00010020
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_ガンス_tou_00010020
	.4byte 0x00000002
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガンス_tou_00010020
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
	.4byte str_ガンス_tou_00010020
	.4byte 0x00000000
	.4byte 0xFFFFFF38
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ガンス_tou_00010020
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
	.4byte 0x0001005E
	.4byte n_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x00000002
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_00010014
	.4byte 0xFFFFFFC9
	.4byte 0xFFFFFFA1
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF84064DC
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_90_tou_0001009c
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_キノシコワ_tou_00010014
	.4byte str_A_1_tou_000100a8
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_fmoney_tou_000100ac
	.4byte 0x00000079
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000011
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_C_3_tou_000100b4
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_item_delete
	.4byte str_fmoney_tou_000100ac
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_tou_000100bc
	.4byte 0x0002005B
	.4byte evt_sub_get_language
	.4byte 0xFE363C8F
	.4byte 0x00010022
	.4byte 0xFE363C8F
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_msg_print_insert
	.4byte 0x00000000
	.4byte str_stg3_tou_91_tou_000100c4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte unk_800d0998
	.4byte 0x00000000
	.4byte 0xFE363C8E
	.4byte str_stg3_tou_91_tou_000100c4
	.4byte 0x00000003
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000001
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x0001005E
	.4byte evt_tou_ranking_msg_25_data_5F2C
	.4byte 0x0002005B
	.4byte evt_pouch_add_coin
	.4byte 0x00000003
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_92_tou_000100d0
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_キノシコワ_tou_00010014
	.4byte str_M_1_tou_000100dc
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_キノシコワ_tou_00010014
	.4byte str_S_1_tou_000100e0
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_93_tou_000100e4
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_キノシコワ_tou_00010014
	.4byte str_M_1_tou_000100dc
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_キノシコワ_tou_00010014
	.4byte str_S_1_tou_000100e0
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_93_2_tou_000100f0
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_キノシコワ_tou_00010014
	.4byte str_A_1_tou_000100a8
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_fmoney_tou_000100ac
	.4byte 0x00000079
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000011
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_C_3_tou_000100b4
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_item_delete
	.4byte str_fmoney_tou_000100ac
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_tou_000100bc
	.4byte 0x0002005B
	.4byte evt_sub_get_language
	.4byte 0xFE363C8F
	.4byte 0x00010022
	.4byte 0xFE363C8F
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_msg_print_insert
	.4byte 0x00000000
	.4byte str_stg3_tou_93_3_tou_00010100
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte unk_800d0998
	.4byte 0x00000000
	.4byte 0xFE363C8E
	.4byte str_stg3_tou_93_3_tou_00010100
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000001
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x0001005E
	.4byte evt_tou_ranking_msg_25_data_5F2C
	.4byte 0x0002005B
	.4byte evt_pouch_add_coin
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_93_3_00_tou_00010110
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_npc_reverse_ry
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_キノシコワ_tou_00010014
	.4byte str_M_1_tou_000100dc
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_キノシコワ_tou_00010014
	.4byte str_S_1_tou_000100e0
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_93_4_tou_00010124
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_キノシコワ_tou_00010014
	.4byte str_M_1_tou_000100dc
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_キノシコワ_tou_00010014
	.4byte str_S_1_tou_000100e0
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x00000002
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_00010014
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
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x00000000
	.4byte 0xFFFFFF38
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_キノシコワ_tou_00010014
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
	.4byte 0x0001005E
	.4byte n_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_npc_get_reglid
	.4byte str_オクトール_tou_0000fd1c
	.4byte 0xFE363C80
	.4byte 0x0001005F
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_オクトール_tou_0000fd1c
	.4byte 0x00000050
	.4byte 0x00000000
	.4byte 0x00000055
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_オクトール_tou_0000fd1c
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_93_5_tou_00010134
	.4byte 0x00000000
	.4byte str_マイケル_tou_00010034
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFEC
	.4byte 0x0000005D
	.4byte 0x00000122
	.4byte 0xFFFFFFEC
	.4byte 0x00000039
	.4byte 0xFFFFFFF8
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_マイケル_tou_00010034
	.4byte 0x00000028
	.4byte 0xFFFFFFB0
	.4byte 0x00000000
	.4byte 0xF24B6A80
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_93_6_tou_00010144
	.4byte 0x00000000
	.4byte str_マイケル_tou_00010034
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000004B
	.4byte 0x0000006B
	.4byte 0x000001A7
	.4byte 0x0000004B
	.4byte 0x00000037
	.4byte 0x00000080
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_93_7_tou_00010154
	.4byte 0x00000000
	.4byte str_マイケル_tou_00010034
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_93_8_tou_00010164
	.4byte 0x00000000
	.4byte str_オクトール_tou_0000fd1c
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_93_9_tou_00010174
	.4byte 0x00000000
	.4byte str_マイケル_tou_00010034
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_93_10_tou_00010184
	.4byte 0x00000000
	.4byte str_オクトール_tou_0000fd1c
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF60
	.4byte 0x0000005F
	.4byte 0x0000013B
	.4byte 0xFFFFFF60
	.4byte 0x00000025
	.4byte 0xFFFFFFF2
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_93_11_tou_00010194
	.4byte 0x00000000
	.4byte str_マイケル_tou_00010034
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_93_12_tou_000101a4
	.4byte 0x00000000
	.4byte str_ブロッツ_tou_00010040
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFC4
	.4byte 0x0000006B
	.4byte 0x000001A7
	.4byte 0xFFFFFFC4
	.4byte 0x00000037
	.4byte 0x00000080
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_93_13_tou_000101b4
	.4byte 0x00000000
	.4byte str_マイケル_tou_00010034
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_npc_reverse_ry
	.4byte str_ガンガン_tou_0001004c
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_93_14_tou_000101c4
	.4byte 0x00000000
	.4byte str_ガンガン_tou_0001004c
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_93_15_tou_000101d4
	.4byte 0x00000000
	.4byte str_マイケル_tou_00010034
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFDD
	.4byte 0x00000060
	.4byte 0x0000013B
	.4byte 0xFFFFFFDD
	.4byte 0x00000039
	.4byte 0xFFFFFFF8
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_93_16_tou_000101e4
	.4byte 0x00000000
	.4byte str_マイケル_tou_00010034
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_マイケル_tou_00010034
	.4byte 0x00000078
	.4byte 0xFFFFFFE2
	.4byte 0x00000000
	.4byte 0xF24B6A80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_マイケル_tou_00010034
	.4byte str_mario_tou_00010078
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000086
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_npc_restart_regular_event
	.4byte str_オクトール_tou_0000fd1c
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_saisyo_after

# .data:0x1EAC | 0x2A334 | size: 0x5BC
.obj evt_saisyo_after_re, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
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
	.4byte str_キノシコワ_tou_00010014
	.4byte 0xFFFFFFC9
	.4byte 0x00000000
	.4byte 0xFFFFFFA1
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
	.4byte str_キノシコワ_tou_00010014
	.4byte str_mario_tou_00010078
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
	.4byte 0x0002005B
	.4byte evt_tou_get_ranking_25_text_1FE0
	.4byte 0xFE363C80
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_re_028_tou_000101f4
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_re_029_tou_00010204
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_キノシコワ_tou_00010014
	.4byte str_A_1_tou_000100a8
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_fmoney_tou_000100ac
	.4byte 0x00000079
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000011
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_C_3_tou_000100b4
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_item_delete
	.4byte str_fmoney_tou_000100ac
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_tou_000100bc
	.4byte 0x0002005B
	.4byte evt_sub_get_language
	.4byte 0xFE363C8F
	.4byte 0x00010022
	.4byte 0xFE363C8F
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_msg_print_insert
	.4byte 0x00000000
	.4byte str_stg3_tou_re_030_tou_00010214
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte unk_800d0998
	.4byte 0x00000000
	.4byte 0xFE363C8E
	.4byte str_stg3_tou_re_030_tou_00010214
	.4byte 0x00000003
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000001
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x0001005E
	.4byte evt_tou_ranking_msg_25_data_5F2C
	.4byte 0x0002005B
	.4byte evt_pouch_add_coin
	.4byte 0x00000003
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_re_031_tou_00010224
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_キノシコワ_tou_00010014
	.4byte str_M_1_tou_000100dc
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_キノシコワ_tou_00010014
	.4byte str_S_1_tou_000100e0
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_re_032_tou_00010234
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_re_033_tou_00010244
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_キノシコワ_tou_00010014
	.4byte str_A_1_tou_000100a8
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_fmoney_tou_000100ac
	.4byte 0x00000079
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000011
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_C_3_tou_000100b4
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_item_delete
	.4byte str_fmoney_tou_000100ac
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_tou_000100bc
	.4byte 0x0002005B
	.4byte evt_sub_get_language
	.4byte 0xFE363C8F
	.4byte 0x00010022
	.4byte 0xFE363C8F
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_msg_print_insert
	.4byte 0x00000000
	.4byte str_stg3_tou_re_034_tou_00010254
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte unk_800d0998
	.4byte 0x00000000
	.4byte 0xFE363C8E
	.4byte str_stg3_tou_re_034_tou_00010254
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000001
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x0001005E
	.4byte evt_tou_ranking_msg_25_data_5F2C
	.4byte 0x0002005B
	.4byte evt_pouch_add_coin
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_re_035_tou_00010264
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_キノシコワ_tou_00010014
	.4byte str_M_1_tou_000100dc
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_キノシコワ_tou_00010014
	.4byte str_S_1_tou_000100e0
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_キノシコワ_tou_00010014
	.4byte str_M_1_tou_000100dc
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x00000002
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_00010014
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
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x00000000
	.4byte 0xFFFFFF38
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_キノシコワ_tou_00010014
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
	.4byte 0x0001005E
	.4byte n_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_saisyo_after_re

# .data:0x2468 | 0x2A8F0 | size: 0x6A0
.obj evt_tou_chibi_yoshi_25_data_2A8F0, global
	.4byte 0x0001005B
	.4byte setYoshiColor
	.4byte 0x0002005B
	.4byte getYoshiColor
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_c_babyyoshi_tou_00010274
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_c_babyyoshi2_tou_00010280
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_c_babyyoshi3_tou_00010290
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_c_babyyoshi4_tou_000102a0
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_c_babyyoshi5_tou_000102b0
	.4byte 0x00010024
	.4byte 0x00000005
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_c_babyyoshi6_tou_000102c0
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_c_babyyoshi7_tou_000102d0
	.4byte 0x00000031
	.4byte 0x0003005B
	.4byte evt_npc_check
	.4byte str_ヨッシー_tou_00010028
	.4byte 0xFE363C8A
	.4byte 0x00020019
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_npc_delete
	.4byte str_ヨッシー_tou_00010028
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_ヨッシー_tou_00010028
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ヨッシー_tou_00010028
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_ヨッシー_tou_00010028
	.4byte str_ヨッシー_tou_00010028
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ヨッシー_tou_00010028
	.4byte 0x40000600
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg3_tou_278_tou_000102e0
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0xFFFFFFFF
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0xFFFFFFFF
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0xFFFFFFFF
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ヨッシー_tou_00010028
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0xFFFFFF9C
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_ヨッシー_tou_00010028
	.4byte str_mario_tou_00010078
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_279_tou_000102f0
	.4byte 0x00000000
	.4byte str_ヨッシー_tou_00010028
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_QUES_tou_00010300
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
	.4byte 0x00000000
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000003C
	.4byte 0x0000005B
	.4byte 0x0000010A
	.4byte 0x0000003C
	.4byte 0x00000039
	.4byte 0xFFFFFFF5
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ヨッシー_tou_00010028
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xF24B9280
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000003E8
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
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_280_tou_0001031c
	.4byte 0x00000000
	.4byte str_ヨッシー_tou_00010028
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_SURP_tou_0001032c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_5B_tou_00010348
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_tou_000100bc
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg3_tou_281_tou_00010350
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_282_tou_00010360
	.4byte 0x00000000
	.4byte str_ヨッシー_tou_00010028
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_2_tou_00010370
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_tou_000100bc
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_283_tou_00010378
	.4byte 0x00000000
	.4byte str_ヨッシー_tou_00010028
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_paper_entry
	.4byte str_OFF_d_roll_tou_00010388
	.4byte 0x0002005B
	.4byte evt_img_entry
	.4byte str_img_tou_00010394
	.4byte 0x0003005B
	.4byte evt_img_set_paper
	.4byte str_img_tou_00010394
	.4byte str_OFF_d_roll_tou_00010388
	.4byte 0x0003005B
	.4byte evt_img_set_paper_anim
	.4byte str_img_tou_00010394
	.4byte str_Z_1_tou_00010398
	.4byte 0x0009005B
	.4byte evt_img_alloc_capture
	.4byte str_img_tou_00010394
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000260
	.4byte 0x000001E0
	.4byte 0x0002005B
	.4byte evt_img_clear_virtual_point
	.4byte str_img_tou_00010394
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_img_tou_00010394
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_cam_letter_box_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_win_nameent_on
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_OFF3_NAME_ENTRY1_tou_0001039c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_img_set_paper_anim
	.4byte str_img_tou_00010394
	.4byte str_A_2_tou_000103b4
	.4byte 0x0002005B
	.4byte evt_img_wait_animend
	.4byte str_img_tou_00010394
	.4byte 0x0001005B
	.4byte evt_win_nameent_wait
	.4byte 0x0002005B
	.4byte evt_win_nameent_name
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte name_check
	.4byte 0xFE363C80
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_OFF3_NAME_ENTRY2_tou_000103b8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_img_set_paper_anim
	.4byte str_img_tou_00010394
	.4byte str_A_1_tou_000100a8
	.4byte 0x0002005B
	.4byte evt_img_wait_animend
	.4byte str_img_tou_00010394
	.4byte 0x0001005B
	.4byte evt_win_nameent_off
	.4byte 0x0002005B
	.4byte evt_img_release
	.4byte str_img_tou_00010394
	.4byte 0x0002005B
	.4byte evt_paper_delete
	.4byte str_OFF_d_roll_tou_00010388
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_msg_print_insert
	.4byte 0x00000000
	.4byte str_stg3_tou_284_tou_000103d0
	.4byte 0x00000000
	.4byte str_ヨッシー_tou_00010028
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_mario_clear_party
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFDD
	.4byte 0x00000046
	.4byte 0x000000B4
	.4byte 0xFFFFFFDD
	.4byte 0x00000032
	.4byte 0xFFFFFFF6
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0002005B
	.4byte evt_pouch_set_yoshiname
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte str_ヨッシー_tou_00010028
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte 0x00000004
	.4byte 0x0001005E
	.4byte all_party_lecture_25_data_2FAF4
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_tou_chibi_yoshi_25_data_2A8F0

# .data:0x2B08 | 0x2AF90 | size: 0x3AC
.obj evt_1st_leagu, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
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
	.4byte str_キノシコワ_tou_00010014
	.4byte 0xFFFFFFD3
	.4byte 0x00000000
	.4byte 0xFFFFFFA1
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
	.4byte str_キノシコワ_tou_00010014
	.4byte str_mario_tou_00010078
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
	.4byte 0x00020018
	.4byte 0xF840650A
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000007
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_179_00_tou_000103e0
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_キノシコワ_tou_00010014
	.4byte str_A_1_tou_000100a8
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_fmoney_tou_000100ac
	.4byte 0x00000079
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000011
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_C_3_tou_000100b4
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_item_delete
	.4byte str_fmoney_tou_000100ac
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_tou_000100bc
	.4byte 0x0002005B
	.4byte evt_sub_get_language
	.4byte 0xFE363C8F
	.4byte 0x00010022
	.4byte 0xFE363C8F
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_msg_print_insert
	.4byte 0x00000000
	.4byte str_stg3_tou_179_01_tou_000103f0
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_00010014
	.4byte 0xFE363C8A
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte unk_800d0998
	.4byte 0x00000000
	.4byte 0xFE363C8E
	.4byte str_stg3_tou_179_01_tou_000103f0
	.4byte 0xFE363C8A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000001
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x00000031
	.4byte 0x0001005E
	.4byte evt_tou_ranking_msg_25_data_5F2C
	.4byte 0x0002005B
	.4byte evt_pouch_add_coin
	.4byte 0xFE363C8A
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_286_tou_00010400
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_キノシコワ_tou_00010014
	.4byte str_M_1_tou_000100dc
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_キノシコワ_tou_00010014
	.4byte str_S_1_tou_000100e0
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x00000002
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_00010014
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
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x00000000
	.4byte 0xFFFFFF38
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_キノシコワ_tou_00010014
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
	.4byte 0x00000000
	.4byte 0xFFFFFF38
	.4byte 0xF24B6A80
	.4byte 0x0000006D
	.4byte 0x00020032
	.4byte 0xF84064D9
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_tou_05_tou_00010410
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_1st_leagu

# .data:0x2EB4 | 0x2B33C | size: 0x3E4
.obj evt_1st_leagu_re, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
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
	.4byte str_キノシコワ_tou_00010014
	.4byte 0xFFFFFFD3
	.4byte 0x00000000
	.4byte 0xFFFFFFA1
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
	.4byte str_キノシコワ_tou_00010014
	.4byte str_mario_tou_00010078
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
	.4byte 0x00020018
	.4byte 0xF840650A
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000006
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_179_00_tou_000103e0
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_キノシコワ_tou_00010014
	.4byte str_A_1_tou_000100a8
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_fmoney_tou_000100ac
	.4byte 0x00000079
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000011
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_C_3_tou_000100b4
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_item_delete
	.4byte str_fmoney_tou_000100ac
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_tou_000100bc
	.4byte 0x0002005B
	.4byte evt_sub_get_language
	.4byte 0xFE363C8F
	.4byte 0x00010022
	.4byte 0xFE363C8F
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_msg_print_insert
	.4byte 0x00000000
	.4byte str_stg3_tou_179_01_tou_000103f0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte unk_800d0998
	.4byte 0x00000000
	.4byte 0xFE363C8E
	.4byte str_stg3_tou_179_01_tou_000103f0
	.4byte 0xFE363C8A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000001
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x0001005E
	.4byte evt_tou_ranking_msg_25_data_5F2C
	.4byte 0x0002005B
	.4byte evt_pouch_add_coin
	.4byte 0xFE363C8A
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_re_085_tou_00010418
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_キノシコワ_tou_00010014
	.4byte str_M_1_tou_000100dc
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_キノシコワ_tou_00010014
	.4byte str_S_1_tou_000100e0
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x00000002
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_00010014
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
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x00000000
	.4byte 0xFFFFFF38
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_キノシコワ_tou_00010014
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
	.4byte 0x0001005E
	.4byte n_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00020032
	.4byte 0xF8406548
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
.endobj evt_1st_leagu_re

# .data:0x3298 | 0x2B720 | size: 0x64
.obj evt_door, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF84064D4
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_67_tou_00010428
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_73_01_tou_00010434
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_door

# .data:0x32FC | 0x2B784 | size: 0x448
.obj evt_rec, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFF4C
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFF38
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
	.4byte 0x0001005B
	.4byte evt_mario_adjust_dir
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF6A
	.4byte 0x00000085
	.4byte 0x00000215
	.4byte 0xFFFFFF6A
	.4byte 0x00000025
	.4byte 0xFFFFFFF8
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_n_bero_tou_0000fc10
	.4byte 0x00000000
	.4byte evt_door
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x00000BB8
	.4byte 0x00000000
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
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x00000002
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x00000001
	.4byte 0xFFFFFF88
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
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
	.4byte 0xFFFFFFA6
	.4byte 0xF24C5A80
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFFF1
	.4byte 0xFFFFFFBA
	.4byte 0xF24C5A80
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0003005B
	.4byte evt_party_set_dir_npc
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFFAB
	.4byte 0xF24C5A80
	.4byte 0x0002005B
	.4byte evt_mario_set_dir_npc
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x00000028
	.4byte 0xFFFFFF9C
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_キノシコワ_tou_00010014
	.4byte str_mario_tou_00010078
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
	.4byte 0x0002005B
	.4byte evt_mario_set_dir_npc
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_63_tou_00010444
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x0001000A
	.4byte 0x0000012C
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
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_キノシコワ_tou_00010014
	.4byte str_M_1_tou_000100dc
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_64_tou_00010450
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFEC
	.4byte 0x00000068
	.4byte 0x000000EE
	.4byte 0xFFFFFFEC
	.4byte 0x0000003C
	.4byte 0xFFFFFFF8
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x00000020
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_00010014
	.4byte 0xFFFFFFD8
	.4byte 0xFFFFFF9C
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x00000020
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_キノシコワ_tou_00010014
	.4byte str_M_1_tou_000100dc
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_65_tou_0001045c
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_00010014
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
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_rec

# .data:0x3744 | 0x2BBCC | size: 0x328
.obj evt_gardman, local
	.4byte 0x0001005B
	.4byte unk_tou_0000724c
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_wait_landon
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0001005B
	.4byte unk_tou_00007214
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001B
	.4byte 0xFE363C82
	.4byte 0xFFFFFFC4
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFFFFFFDD
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0x00000023
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_SURP_tou_00010468
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_7_tou_00010484
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ガードマン_tou_0000fc48
	.4byte 0x00000020
	.4byte 0x0007005B
	.4byte evt_mario_jump_pos
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0xFFFFFF88
	.4byte 0x00000190
	.4byte 0x00000001
	.4byte 0xFFFFFC18
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_ガードマン_tou_0000fc48
	.4byte 0x00000020
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_tou_000100bc
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mario_set_dir_npc
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x0002005B
	.4byte evt_mario_set_dir_npc
	.4byte str_ガードマン_tou_0000fc48
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
	.4byte 0x00000000
	.4byte str_ガードマン_tou_0000fc48
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ガードマン_tou_0000fc48
	.4byte 0x00008000
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_ガードマン_tou_0000fc48
	.4byte str_mario_tou_00010078
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ガードマン_tou_0000fc48
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFF56
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ガードマン_tou_0000fc48
	.4byte 0x00000000
	.4byte 0xFFFFFFA6
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
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_キノシコワ_tou_00010014
	.4byte str_mario_tou_00010078
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_74_tou_0001048c
	.4byte 0x00000000
	.4byte str_ガードマン_tou_0000fc48
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_75_tou_00010498
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_ガードマン_tou_0000fc48
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_ガードマン_tou_0000fc48
	.4byte 0x00008000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_gardman

# .data:0x3A6C | 0x2BEF4 | size: 0x228
.obj evt_match_make_sub, local
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFB5
	.4byte 0x0000005B
	.4byte 0x000000BC
	.4byte 0xFFFFFFB5
	.4byte 0x00000039
	.4byte 0xFFFFFFFF
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFF7E
	.4byte 0xFFFFFFA6
	.4byte 0xF24BBA80
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x00000064
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos
	.4byte 0xFFFFFFA6
	.4byte 0xFFFFFFA0
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos
	.4byte 0xFFFFFFA9
	.4byte 0xFFFFFF9D
	.4byte 0x000001F4
	.4byte 0x0001005E
	.4byte evt_tou_monitor_on_25_data_1068
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_gamen_tou_000104a4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_69_tou_000104ac
	.4byte 0x00000000
	.4byte str_ガンス_tou_00010020
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x00020032
	.4byte 0xF5DE0376
	.4byte 0x0000002B
	.4byte 0x00020032
	.4byte 0xF5DE0377
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF5DE0378
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte evt_tou_monitor_off_25_data_10B0
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFD8
	.4byte 0x0000005B
	.4byte 0x000000BC
	.4byte 0xFFFFFFD8
	.4byte 0x00000039
	.4byte 0xFFFFFFFF
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_mario_set_dir_npc
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_キノシコワ_tou_00010014
	.4byte str_mario_tou_00010078
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_70_tou_000104b8
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg3_tou_70_yn_tou_000104c4
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg3_tou_72_tou_000104d4
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg3_tou_71_tou_000104e0
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte evt_gardman
	.4byte 0x00020032
	.4byte 0xF84064D4
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF5DE0375
	.4byte 0x00000013
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_match_make_sub

# .data:0x3C94 | 0x2C11C | size: 0x1D0
.obj evt_match_make, local
	.4byte 0x0002005B
	.4byte unk_tou_000071a8
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_hit_get_position
	.4byte str_M_make_tou_000104ec
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_TOUROKU_COM1_tou_000104f4
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFFA6
	.4byte 0xFFFFFF92
	.4byte 0xF24BBA80
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x0000012C
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_103_tou_00010508
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg3_tou_103_yn_tou_00010518
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF84064D4
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_tou_get_fighter_info_25_text_1DC4
	.4byte 0xF5DE0375
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0003005B
	.4byte evt_tou_get_rule_msg2_25_text_1938
	.4byte 0xF5DE0376
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000001
	.4byte str_scrl_auto_once_stop_tou_00010528
	.4byte 0x0005005B
	.4byte evt_msg_print_add_insert
	.4byte 0x00000000
	.4byte str_stg3_tou_104_01_tou_00010540
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000020
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x0001005E
	.4byte evt_match_make_sub
	.4byte 0x00000021
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_キノシコワ_tou_00010014
	.4byte str_mario_tou_00010078
	.4byte 0x0002005B
	.4byte evt_mario_set_dir_npc
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x00020018
	.4byte 0xF84064D4
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_68_tou_00010550
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_73_02_tou_0001055c
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x00000021
	.4byte 0x0000002A
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x00000031
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_match_make

# .data:0x3E64 | 0x2C2EC | size: 0x28
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

# .data:0x3E8C | 0x2C314 | size: 0x4B4
.obj evt_okorareru, local
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFAB
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_キノシコワ_tou_00010014
	.4byte str_mario_tou_00010078
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x00000002
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFFFFFEF2
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_snd_bgmoff_f
	.4byte 0x00000200
	.4byte 0x000007D0
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_297_16_tou_0001056c
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x0000011F
	.4byte 0x00000000
	.4byte 0x00000037
	.4byte 0xFFFFFFF6
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFF38
	.4byte 0x0000005A
	.4byte 0xF24BBA80
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFF1F
	.4byte 0x0000006E
	.4byte 0xF24BBA80
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_297_17_tou_0001057c
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000007D0
	.4byte 0x0000000B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_00010014
	.4byte 0xFFFFFF65
	.4byte 0xFFFFFFC9
	.4byte 0x00000000
	.4byte 0xF24B9280
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_00010014
	.4byte 0xFFFFFF5F
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0xF24B9280
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg3_tou_297_19_tou_0001058c
	.4byte 0x00000000
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_キノシコワ_tou_00010014
	.4byte str_A_1_tou_000100a8
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000000F
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0xFFFFFFFF
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_fmoney_tou_000100ac
	.4byte 0x00000061
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000011
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_C_3_tou_000100b4
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_item_delete
	.4byte str_fmoney_tou_000100ac
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_tou_000100bc
	.4byte 0x0003005B
	.4byte evt_pouch_remove_item
	.4byte 0x00000061
	.4byte 0xFE363C80
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_00010014
	.4byte 0xFFFFFF65
	.4byte 0xFFFFFFC9
	.4byte 0x00000000
	.4byte 0xF24B9280
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x0000011F
	.4byte 0x00000000
	.4byte 0x00000037
	.4byte 0xFFFFFFF6
	.4byte 0x000007D0
	.4byte 0x0000000B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x00000000
	.4byte 0xFFFFFF88
	.4byte 0x00000000
	.4byte 0xF24B9280
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
	.4byte str_キノシコワ_tou_00010014
	.4byte 0x00000000
	.4byte 0xFFFFFF38
	.4byte 0x00000000
	.4byte 0xF24BBA80
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_キノシコワ_tou_00010014
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
	.4byte 0x0001005E
	.4byte n_door_open
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg3_tou_297_20_tou_0001059c
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF49
	.4byte 0x00000055
	.4byte 0x00000182
	.4byte 0xFFFFFF49
	.4byte 0x00000019
	.4byte 0xFFFFFFF6
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg3_tou_297_21_tou_000105ac
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000008F
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_snd_bgmon_f
	.4byte 0x00000300
	.4byte str_BGM_STG3_TOU1_tou_000105bc
	.4byte 0x000007D0
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00006800
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_okorareru

# .data:0x4340 | 0x2C7C8 | size: 0x170
.obj evt_syorui, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0003005B
	.4byte evt_party_yoshi_ride
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_item_get_item_end_wait
	.4byte str_syorui_tou_000105cc
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFE6B
	.4byte 0x0000004B
	.4byte 0xF24BBA80
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFE93
	.4byte 0x0000004B
	.4byte 0xF24BBA80
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_L_2_tou_000105d4
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_tou_000100bc
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg3_tou_297_14_tou_000105dc
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFE7F
	.4byte 0x00000050
	.4byte 0x00000151
	.4byte 0xFFFFFE7F
	.4byte 0x0000001B
	.4byte 0xFFFFFFF7
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg3_tou_297_15_tou_000105ec
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0001005C
	.4byte evt_okorareru
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
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_syorui

# .data:0x44B0 | 0x2C938 | size: 0xD0
.obj first_tamago, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFFE2
	.4byte 0xFFFFFFA6
	.4byte 0xF24BBA80
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0xFFFFFFA6
	.4byte 0xF24BBA80
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg3_tou_256_tou_000105fc
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_2_tou_0001060c
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj first_tamago

# .data:0x4580 | 0x2CA08 | size: 0x14
.obj evt_block, local
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000008E
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_block

# .data:0x4594 | 0x2CA1C | size: 0x3F8
.obj tou_10_init_evt_25_data_2CA1C, global
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x0000007F
	.4byte 0x00000089
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG3_TOU2_tou_00010614
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG3_TOU6_tou_00010624
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00006800
	.4byte 0x00010029
	.4byte 0x000000A5
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG3_TOU2_tou_00010614
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG3_TOU6_tou_00010624
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00006800
	.4byte 0x0000002A
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG3_TOU1_tou_000105bc
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG3_TOU6_tou_00010624
	.4byte 0x00000031
	.4byte 0x00020018
	.4byte 0xF84064D7
	.4byte 0x00000001
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000089
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000089
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0001005E
	.4byte evt_tou_locker_init_25_data_EB4
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_fuku_M_tou_00010634
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_npc_setup
	.4byte npcEnt
	.4byte 0x0001005E
	.4byte init_octo
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_オクトール_tou_0000fd1c
	.4byte 0x00000006
	.4byte talk_octo
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_isu_tou_0001063c
	.4byte 0x00000002
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000085
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_M_make_tou_000104ec
	.4byte 0x00000000
	.4byte evt_match_make
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_M_make_tou_000104ec
	.4byte 0x00000000
	.4byte evt_tou_match_make_default_25_data_28F0
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte evt_tou_monitor_init_25_data_10F8
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x0000008E
	.4byte 0x0008005B
	.4byte evt_mobj_lv_blk
	.4byte str_blk_tou_00010640
	.4byte 0xFFFFFEE8
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte evt_block
	.4byte 0xF8406508
	.4byte str_MOBJ_Lv1BigBigBlock_tou_00010644
	.4byte 0x0004005B
	.4byte evt_mobj_flag_onoff
	.4byte 0x00000001
	.4byte str_blk_tou_00010640
	.4byte 0x00000080
	.4byte 0x00000021
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x00000084
	.4byte 0x0001005C
	.4byte evt_rec
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x00000002
	.4byte 0x00000031
	.4byte 0x00020018
	.4byte 0xF84064D5
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF8406512
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF8406513
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_pouch_party_join
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_pouch_party_join
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_pouch_party_join
	.4byte 0x00000005
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF84064D5
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF84064D5
	.4byte 0x00000000
	.4byte 0x00010022
	.4byte 0xF5DE0375
	.4byte 0x00010024
	.4byte 0x00000013
	.4byte 0x00020018
	.4byte 0xF84064D8
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF84064D8
	.4byte 0x00000001
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x000000AC
	.4byte 0x0001005C
	.4byte evt_saisyo_after
	.4byte 0x00000020
	.4byte 0x0001005C
	.4byte evt_saisyo_after_re
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0001005C
	.4byte evt_tou_match_after_default_25_data_6024
	.4byte 0x00000021
	.4byte 0x00010024
	.4byte 0x0000000A
	.4byte 0x0002005B
	.4byte evt_tou_get_ranking_25_text_1FE0
	.4byte 0xFE363C80
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x000000AC
	.4byte 0x0001005C
	.4byte evt_1st_leagu
	.4byte 0x00000020
	.4byte 0x0001005C
	.4byte evt_1st_leagu_re
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0001005C
	.4byte evt_tou_match_after_default_25_data_6024
	.4byte 0x00000021
	.4byte 0x0000002A
	.4byte 0x0001005C
	.4byte evt_tou_match_after_default_25_data_6024
	.4byte 0x00000031
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_hitobj_name_callback
	.4byte str_a_b_H_tou_00010658
	.4byte bed_entry
	.4byte 0x0002005B
	.4byte evt_sub_animgroup_async
	.4byte str_p_slit_tou_00010660
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x0000008F
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_syorui_tou_000105cc
	.4byte 0x00000061
	.4byte 0xFFFFFE25
	.4byte 0x0000005A
	.4byte 0x0000004B
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte evt_syorui
	.4byte 0x00000021
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x00000089
	.4byte 0x00020018
	.4byte 0xF840650E
	.4byte 0x00000000
	.4byte 0x0002001D
	.4byte 0xF5DE0379
	.4byte 0x00000002
	.4byte 0x0001005C
	.4byte first_tamago
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xF840650E
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj tou_10_init_evt_25_data_2CA1C

# .data:0x498C | 0x2CE14 | size: 0x4
.obj gap_04_0002CE14_data, global
.hidden gap_04_0002CE14_data
	.4byte 0x00000000
.endobj gap_04_0002CE14_data
