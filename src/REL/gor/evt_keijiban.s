.include "macros.inc"
.file "evt_keijiban.o"

# 0x00009F04..0x0000A344 | size: 0x440
.text
.balign 4

# .text:0x0 | 0x9F04 | size: 0x238
.fn keijiban_data_make, local
/* 00009F04 00009FD0  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 00009F08 00009FD4  7C 08 02 A6 */	mflr r0
/* 00009F0C 00009FD8  3C C0 00 00 */	lis r6, _kjdt@ha
/* 00009F10 00009FDC  3C A0 F5 DE */	lis r5, 0xf5de
/* 00009F14 00009FE0  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 00009F18 00009FE4  BE 61 00 8C */	stmw r19, 0x8c(r1)
/* 00009F1C 00009FE8  7C 73 1B 78 */	mr r19, r3
/* 00009F20 00009FEC  7C 94 23 78 */	mr r20, r4
/* 00009F24 00009FF0  3B 66 00 00 */	addi r27, r6, _kjdt@l
/* 00009F28 00009FF4  38 85 01 80 */	addi r4, r5, 0x180
/* 00009F2C 00009FF8  38 60 00 00 */	li r3, 0x0
/* 00009F30 00009FFC  4B FF 65 75 */	bl evtGetValue
/* 00009F34 0000A000  56 9A 07 FF */	clrlwi. r26, r20, 31
/* 00009F38 0000A004  7C 7C 1B 78 */	mr r28, r3
/* 00009F3C 0000A008  41 82 00 18 */	beq .L_00009F54
/* 00009F40 0000A00C  80 1B 00 14 */	lwz r0, 0x14(r27)
/* 00009F44 0000A010  2C 00 FF FF */	cmpwi r0, -0x1
/* 00009F48 0000A014  40 82 00 14 */	bne .L_00009F5C
/* 00009F4C 0000A018  38 60 00 00 */	li r3, 0x0
/* 00009F50 0000A01C  48 00 01 D8 */	b .L_0000A128
.L_00009F54:
/* 00009F54 0000A020  38 00 FF FF */	li r0, -0x1
/* 00009F58 0000A024  90 1B 00 14 */	stw r0, 0x14(r27)
.L_00009F5C:
/* 00009F5C 0000A028  3C 80 00 00 */	lis r4, str_enddata_gor_0001db88@ha
/* 00009F60 0000A02C  3C 60 00 00 */	lis r3, zero_gor_0001db90@ha
/* 00009F64 0000A030  3C A0 00 00 */	lis r5, str_PCTs_PCT04d_gor_0001db80@ha
/* 00009F68 0000A034  3A 80 00 00 */	li r20, 0x0
/* 00009F6C 0000A038  3B C4 00 00 */	addi r30, r4, str_enddata_gor_0001db88@l
/* 00009F70 0000A03C  3B E3 00 00 */	addi r31, r3, zero_gor_0001db90@l
/* 00009F74 0000A040  3B A5 00 00 */	addi r29, r5, str_PCTs_PCT04d_gor_0001db80@l
/* 00009F78 0000A044  3B 20 00 00 */	li r25, 0x0
.L_00009F7C:
/* 00009F7C 0000A048  7F A4 EB 78 */	mr r4, r29
/* 00009F80 0000A04C  7E 65 9B 78 */	mr r5, r19
/* 00009F84 0000A050  7F 26 CB 78 */	mr r6, r25
/* 00009F88 0000A054  38 61 00 48 */	addi r3, r1, 0x48
/* 00009F8C 0000A058  4C C6 31 82 */	crclr cr1eq
/* 00009F90 0000A05C  4B FF 65 15 */	bl sprintf
/* 00009F94 0000A060  38 61 00 48 */	addi r3, r1, 0x48
/* 00009F98 0000A064  4B FF 65 0D */	bl msgSearch
/* 00009F9C 0000A068  88 03 00 00 */	lbz r0, 0x0(r3)
/* 00009FA0 0000A06C  2C 00 00 3C */	cmpwi r0, 0x3c
/* 00009FA4 0000A070  40 82 01 80 */	bne .L_0000A124
/* 00009FA8 0000A074  88 03 00 01 */	lbz r0, 0x1(r3)
/* 00009FAC 0000A078  3A A3 00 02 */	addi r21, r3, 0x2
/* 00009FB0 0000A07C  2C 00 00 21 */	cmpwi r0, 0x21
/* 00009FB4 0000A080  40 82 01 70 */	bne .L_0000A124
/* 00009FB8 0000A084  3A E0 00 00 */	li r23, 0x0
/* 00009FBC 0000A088  3B 00 00 00 */	li r24, 0x0
/* 00009FC0 0000A08C  3A C0 00 00 */	li r22, 0x0
/* 00009FC4 0000A090  48 00 00 C0 */	b .L_0000A084
.L_00009FC8:
/* 00009FC8 0000A094  88 75 00 00 */	lbz r3, 0x0(r21)
/* 00009FCC 0000A098  7C 63 07 74 */	extsb r3, r3
/* 00009FD0 0000A09C  4B FF 64 D5 */	bl _ismbblead
/* 00009FD4 0000A0A0  2C 03 00 00 */	cmpwi r3, 0x0
/* 00009FD8 0000A0A4  41 82 00 3C */	beq .L_0000A014
/* 00009FDC 0000A0A8  2C 17 00 00 */	cmpwi r23, 0x0
/* 00009FE0 0000A0AC  40 82 00 28 */	bne .L_0000A008
/* 00009FE4 0000A0B0  88 15 00 00 */	lbz r0, 0x0(r21)
/* 00009FE8 0000A0B4  38 61 00 08 */	addi r3, r1, 0x8
/* 00009FEC 0000A0B8  7C 03 C1 AE */	stbx r0, r3, r24
/* 00009FF0 0000A0BC  3B 18 00 01 */	addi r24, r24, 0x1
/* 00009FF4 0000A0C0  88 15 00 01 */	lbz r0, 0x1(r21)
/* 00009FF8 0000A0C4  3A B5 00 02 */	addi r21, r21, 0x2
/* 00009FFC 0000A0C8  7C 03 C1 AE */	stbx r0, r3, r24
/* 0000A000 0000A0CC  3B 18 00 01 */	addi r24, r24, 0x1
/* 0000A004 0000A0D0  48 00 00 80 */	b .L_0000A084
.L_0000A008:
/* 0000A008 0000A0D4  3B 18 00 02 */	addi r24, r24, 0x2
/* 0000A00C 0000A0D8  3A B5 00 02 */	addi r21, r21, 0x2
/* 0000A010 0000A0DC  48 00 00 74 */	b .L_0000A084
.L_0000A014:
/* 0000A014 0000A0E0  88 15 00 00 */	lbz r0, 0x0(r21)
/* 0000A018 0000A0E4  7C 00 07 74 */	extsb r0, r0
/* 0000A01C 0000A0E8  2C 00 00 3E */	cmpwi r0, 0x3e
/* 0000A020 0000A0EC  41 82 00 14 */	beq .L_0000A034
/* 0000A024 0000A0F0  40 80 00 38 */	bge .L_0000A05C
/* 0000A028 0000A0F4  2C 00 00 2C */	cmpwi r0, 0x2c
/* 0000A02C 0000A0F8  41 82 00 0C */	beq .L_0000A038
/* 0000A030 0000A0FC  48 00 00 2C */	b .L_0000A05C
.L_0000A034:
/* 0000A034 0000A100  3A C0 00 01 */	li r22, 0x1
.L_0000A038:
/* 0000A038 0000A104  2C 17 00 00 */	cmpwi r23, 0x0
/* 0000A03C 0000A108  3A B5 00 01 */	addi r21, r21, 0x1
/* 0000A040 0000A10C  40 82 00 10 */	bne .L_0000A050
/* 0000A044 0000A110  38 61 00 08 */	addi r3, r1, 0x8
/* 0000A048 0000A114  38 00 00 00 */	li r0, 0x0
/* 0000A04C 0000A118  7C 03 C1 AE */	stbx r0, r3, r24
.L_0000A050:
/* 0000A050 0000A11C  3B 00 00 00 */	li r24, 0x0
/* 0000A054 0000A120  3A F7 00 01 */	addi r23, r23, 0x1
/* 0000A058 0000A124  48 00 00 2C */	b .L_0000A084
.L_0000A05C:
/* 0000A05C 0000A128  2C 17 00 00 */	cmpwi r23, 0x0
/* 0000A060 0000A12C  40 82 00 1C */	bne .L_0000A07C
/* 0000A064 0000A130  88 15 00 00 */	lbz r0, 0x0(r21)
/* 0000A068 0000A134  38 61 00 08 */	addi r3, r1, 0x8
/* 0000A06C 0000A138  3A B5 00 01 */	addi r21, r21, 0x1
/* 0000A070 0000A13C  7C 03 C1 AE */	stbx r0, r3, r24
/* 0000A074 0000A140  3B 18 00 01 */	addi r24, r24, 0x1
/* 0000A078 0000A144  48 00 00 0C */	b .L_0000A084
.L_0000A07C:
/* 0000A07C 0000A148  3B 18 00 01 */	addi r24, r24, 0x1
/* 0000A080 0000A14C  3A B5 00 01 */	addi r21, r21, 0x1
.L_0000A084:
/* 0000A084 0000A150  2C 16 00 00 */	cmpwi r22, 0x0
/* 0000A088 0000A154  41 82 FF 40 */	beq .L_00009FC8
/* 0000A08C 0000A158  7F C4 F3 78 */	mr r4, r30
/* 0000A090 0000A15C  38 61 00 08 */	addi r3, r1, 0x8
/* 0000A094 0000A160  4B FF 64 11 */	bl strcmp
/* 0000A098 0000A164  2C 03 00 00 */	cmpwi r3, 0x0
/* 0000A09C 0000A168  41 82 00 88 */	beq .L_0000A124
/* 0000A0A0 0000A16C  7F E4 FB 78 */	mr r4, r31
/* 0000A0A4 0000A170  38 61 00 08 */	addi r3, r1, 0x8
/* 0000A0A8 0000A174  4B FF 63 FD */	bl strcmp
/* 0000A0AC 0000A178  2C 03 00 00 */	cmpwi r3, 0x0
/* 0000A0B0 0000A17C  41 82 00 6C */	beq .L_0000A11C
/* 0000A0B4 0000A180  38 61 00 08 */	addi r3, r1, 0x8
/* 0000A0B8 0000A184  4B FF 63 ED */	bl search_evt_no
/* 0000A0BC 0000A188  2C 03 FF FF */	cmpwi r3, -0x1
/* 0000A0C0 0000A18C  41 82 00 5C */	beq .L_0000A11C
/* 0000A0C4 0000A190  2C 1A 00 00 */	cmpwi r26, 0x0
/* 0000A0C8 0000A194  41 82 00 30 */	beq .L_0000A0F8
/* 0000A0CC 0000A198  80 1B 00 14 */	lwz r0, 0x14(r27)
/* 0000A0D0 0000A19C  7C 03 00 00 */	cmpw r3, r0
/* 0000A0D4 0000A1A0  40 82 00 48 */	bne .L_0000A11C
/* 0000A0D8 0000A1A4  1C B4 00 06 */	mulli r5, r20, 0x6
/* 0000A0DC 0000A1A8  80 9B 00 00 */	lwz r4, 0x0(r27)
/* 0000A0E0 0000A1AC  38 05 00 02 */	addi r0, r5, 0x2
/* 0000A0E4 0000A1B0  7C 64 03 2E */	sthx r3, r4, r0
/* 0000A0E8 0000A1B4  38 05 00 04 */	addi r0, r5, 0x4
/* 0000A0EC 0000A1B8  80 7B 00 00 */	lwz r3, 0x0(r27)
/* 0000A0F0 0000A1BC  7F 23 03 2E */	sthx r25, r3, r0
/* 0000A0F4 0000A1C0  48 00 00 24 */	b .L_0000A118
.L_0000A0F8:
/* 0000A0F8 0000A1C4  7C 03 E0 00 */	cmpw r3, r28
/* 0000A0FC 0000A1C8  41 81 00 20 */	bgt .L_0000A11C
/* 0000A100 0000A1CC  80 1B 00 14 */	lwz r0, 0x14(r27)
/* 0000A104 0000A1D0  7C 03 00 00 */	cmpw r3, r0
/* 0000A108 0000A1D4  41 80 00 14 */	blt .L_0000A11C
/* 0000A10C 0000A1D8  40 81 00 0C */	ble .L_0000A118
/* 0000A110 0000A1DC  90 7B 00 14 */	stw r3, 0x14(r27)
/* 0000A114 0000A1E0  3A 80 00 00 */	li r20, 0x0
.L_0000A118:
/* 0000A118 0000A1E4  3A 94 00 01 */	addi r20, r20, 0x1
.L_0000A11C:
/* 0000A11C 0000A1E8  3B 39 00 01 */	addi r25, r25, 0x1
/* 0000A120 0000A1EC  4B FF FE 5C */	b .L_00009F7C
.L_0000A124:
/* 0000A124 0000A1F0  7E 83 A3 78 */	mr r3, r20
.L_0000A128:
/* 0000A128 0000A1F4  BA 61 00 8C */	lmw r19, 0x8c(r1)
/* 0000A12C 0000A1F8  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 0000A130 0000A1FC  7C 08 03 A6 */	mtlr r0
/* 0000A134 0000A200  38 21 00 C0 */	addi r1, r1, 0xc0
/* 0000A138 0000A204  4E 80 00 20 */	blr
.endfn keijiban_data_make

# .text:0x238 | 0xA13C | size: 0xB4
.fn keijiban_joho_makelabel_9_text_A13C, global
/* 0000A13C 0000A208  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 0000A140 0000A20C  7C 08 02 A6 */	mflr r0
/* 0000A144 0000A210  90 01 00 24 */	stw r0, 0x24(r1)
/* 0000A148 0000A214  BF 81 00 10 */	stmw r28, 0x10(r1)
/* 0000A14C 0000A218  7C 7C 1B 78 */	mr r28, r3
/* 0000A150 0000A21C  83 A3 00 18 */	lwz r29, 0x18(r3)
/* 0000A154 0000A220  80 9D 00 00 */	lwz r4, 0x0(r29)
/* 0000A158 0000A224  4B FF 63 4D */	bl evtGetValue
/* 0000A15C 0000A228  7C 7E 1B 79 */	mr. r30, r3
/* 0000A160 0000A22C  3C 60 00 00 */	lis r3, _kjdt@ha
/* 0000A164 0000A230  3B E3 00 00 */	addi r31, r3, _kjdt@l
/* 0000A168 0000A234  41 80 00 54 */	blt .L_0000A1BC
/* 0000A16C 0000A238  80 1F 00 04 */	lwz r0, 0x4(r31)
/* 0000A170 0000A23C  7C 1E 00 00 */	cmpw r30, r0
/* 0000A174 0000A240  40 80 00 48 */	bge .L_0000A1BC
/* 0000A178 0000A244  1C 1E 00 06 */	mulli r0, r30, 0x6
/* 0000A17C 0000A248  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 0000A180 0000A24C  3C E0 00 00 */	lis r7, str_PCTs_PCT04d_gor_0001db80@ha
/* 0000A184 0000A250  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 0000A188 0000A254  80 BF 00 08 */	lwz r5, 0x8(r31)
/* 0000A18C 0000A258  7C C4 02 14 */	add r6, r4, r0
/* 0000A190 0000A25C  A8 C6 00 04 */	lha r6, 0x4(r6)
/* 0000A194 0000A260  38 87 00 00 */	addi r4, r7, str_PCTs_PCT04d_gor_0001db80@l
/* 0000A198 0000A264  4C C6 31 82 */	crclr cr1eq
/* 0000A19C 0000A268  4B FF 63 09 */	bl sprintf
/* 0000A1A0 0000A26C  80 9D 00 04 */	lwz r4, 0x4(r29)
/* 0000A1A4 0000A270  7F 83 E3 78 */	mr r3, r28
/* 0000A1A8 0000A274  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 0000A1AC 0000A278  4B FF 62 F9 */	bl evtSetValue
/* 0000A1B0 0000A27C  93 DF 00 10 */	stw r30, 0x10(r31)
/* 0000A1B4 0000A280  38 60 00 02 */	li r3, 0x2
/* 0000A1B8 0000A284  48 00 00 24 */	b .L_0000A1DC
.L_0000A1BC:
/* 0000A1BC 0000A288  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 0000A1C0 0000A28C  38 00 00 00 */	li r0, 0x0
/* 0000A1C4 0000A290  7F 83 E3 78 */	mr r3, r28
/* 0000A1C8 0000A294  98 04 00 00 */	stb r0, 0x0(r4)
/* 0000A1CC 0000A298  80 9D 00 04 */	lwz r4, 0x4(r29)
/* 0000A1D0 0000A29C  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 0000A1D4 0000A2A0  4B FF 62 D1 */	bl evtSetValue
/* 0000A1D8 0000A2A4  38 60 00 02 */	li r3, 0x2
.L_0000A1DC:
/* 0000A1DC 0000A2A8  BB 81 00 10 */	lmw r28, 0x10(r1)
/* 0000A1E0 0000A2AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 0000A1E4 0000A2B0  7C 08 03 A6 */	mtlr r0
/* 0000A1E8 0000A2B4  38 21 00 20 */	addi r1, r1, 0x20
/* 0000A1EC 0000A2B8  4E 80 00 20 */	blr
.endfn keijiban_joho_makelabel_9_text_A13C

# .text:0x2EC | 0xA1F0 | size: 0x38
.fn keijiban_joho_check_9_text_A1F0, global
/* 0000A1F0 0000A2BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0000A1F4 0000A2C0  7C 08 02 A6 */	mflr r0
/* 0000A1F8 0000A2C4  3C 80 00 00 */	lis r4, _kjdt@ha
/* 0000A1FC 0000A2C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000A200 0000A2CC  38 A4 00 00 */	addi r5, r4, _kjdt@l
/* 0000A204 0000A2D0  80 C3 00 18 */	lwz r6, 0x18(r3)
/* 0000A208 0000A2D4  80 A5 00 04 */	lwz r5, 0x4(r5)
/* 0000A20C 0000A2D8  80 86 00 00 */	lwz r4, 0x0(r6)
/* 0000A210 0000A2DC  4B FF 62 95 */	bl evtSetValue
/* 0000A214 0000A2E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0000A218 0000A2E4  38 60 00 02 */	li r3, 0x2
/* 0000A21C 0000A2E8  7C 08 03 A6 */	mtlr r0
/* 0000A220 0000A2EC  38 21 00 10 */	addi r1, r1, 0x10
/* 0000A224 0000A2F0  4E 80 00 20 */	blr
.endfn keijiban_joho_check_9_text_A1F0

# .text:0x324 | 0xA228 | size: 0x6C
.fn keijiban_data_free_9_text_A228, global
/* 0000A228 0000A2F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0000A22C 0000A2F8  7C 08 02 A6 */	mflr r0
/* 0000A230 0000A2FC  3C 60 00 00 */	lis r3, _kjdt@ha
/* 0000A234 0000A300  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000A238 0000A304  93 E1 00 0C */	stw r31, 0xc(r1)
/* 0000A23C 0000A308  3B E3 00 00 */	addi r31, r3, _kjdt@l
/* 0000A240 0000A30C  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 0000A244 0000A310  28 04 00 00 */	cmplwi r4, 0x0
/* 0000A248 0000A314  40 82 00 0C */	bne .L_0000A254
/* 0000A24C 0000A318  38 60 00 02 */	li r3, 0x2
/* 0000A250 0000A31C  48 00 00 30 */	b .L_0000A280
.L_0000A254:
/* 0000A254 0000A320  3C 60 00 00 */	lis r3, mapalloc_base_ptr@ha
/* 0000A258 0000A324  38 63 00 00 */	addi r3, r3, mapalloc_base_ptr@l
/* 0000A25C 0000A328  80 63 00 00 */	lwz r3, 0x0(r3)
/* 0000A260 0000A32C  4B FF 62 45 */	bl _mapFree
/* 0000A264 0000A330  38 00 00 00 */	li r0, 0x0
/* 0000A268 0000A334  38 60 00 02 */	li r3, 0x2
/* 0000A26C 0000A338  90 1F 00 00 */	stw r0, 0x0(r31)
/* 0000A270 0000A33C  90 1F 00 04 */	stw r0, 0x4(r31)
/* 0000A274 0000A340  90 1F 00 08 */	stw r0, 0x8(r31)
/* 0000A278 0000A344  90 1F 00 0C */	stw r0, 0xc(r31)
/* 0000A27C 0000A348  90 1F 00 10 */	stw r0, 0x10(r31)
.L_0000A280:
/* 0000A280 0000A34C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0000A284 0000A350  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 0000A288 0000A354  7C 08 03 A6 */	mtlr r0
/* 0000A28C 0000A358  38 21 00 10 */	addi r1, r1, 0x10
/* 0000A290 0000A35C  4E 80 00 20 */	blr
.endfn keijiban_data_free_9_text_A228

# .text:0x390 | 0xA294 | size: 0xB0
.fn keijiban_data_alloc_9_text_A294, global
/* 0000A294 0000A360  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0000A298 0000A364  7C 08 02 A6 */	mflr r0
/* 0000A29C 0000A368  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000A2A0 0000A36C  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 0000A2A4 0000A370  80 83 00 18 */	lwz r4, 0x18(r3)
/* 0000A2A8 0000A374  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000A2AC 0000A378  4B FF 61 F9 */	bl evtGetValue
/* 0000A2B0 0000A37C  3C A0 00 00 */	lis r5, _kjdt@ha
/* 0000A2B4 0000A380  38 80 00 00 */	li r4, 0x0
/* 0000A2B8 0000A384  3B C5 00 00 */	addi r30, r5, _kjdt@l
/* 0000A2BC 0000A388  90 7E 00 08 */	stw r3, 0x8(r30)
/* 0000A2C0 0000A38C  4B FF FC 45 */	bl keijiban_data_make
/* 0000A2C4 0000A390  3C C0 00 00 */	lis r6, _kjdt@ha
/* 0000A2C8 0000A394  3C A0 00 00 */	lis r5, mapalloc_base_ptr@ha
/* 0000A2CC 0000A398  1C 83 00 06 */	mulli r4, r3, 0x6
/* 0000A2D0 0000A39C  3B E6 00 00 */	addi r31, r6, _kjdt@l
/* 0000A2D4 0000A3A0  90 7F 00 04 */	stw r3, 0x4(r31)
/* 0000A2D8 0000A3A4  80 65 00 00 */	lwz r3, mapalloc_base_ptr@l(r5)
/* 0000A2DC 0000A3A8  38 84 00 40 */	addi r4, r4, 0x40
/* 0000A2E0 0000A3AC  4B FF 61 C5 */	bl _mapAlloc
/* 0000A2E4 0000A3B0  80 1F 00 04 */	lwz r0, 0x4(r31)
/* 0000A2E8 0000A3B4  3C 80 00 00 */	lis r4, _kjdt@ha
/* 0000A2EC 0000A3B8  38 C4 00 00 */	addi r6, r4, _kjdt@l
/* 0000A2F0 0000A3BC  38 80 00 00 */	li r4, 0x0
/* 0000A2F4 0000A3C0  1C A0 00 06 */	mulli r5, r0, 0x6
/* 0000A2F8 0000A3C4  90 66 00 00 */	stw r3, 0x0(r6)
/* 0000A2FC 0000A3C8  38 A5 00 40 */	addi r5, r5, 0x40
/* 0000A300 0000A3CC  4B FF 61 A5 */	bl memset
/* 0000A304 0000A3D0  80 1F 00 04 */	lwz r0, 0x4(r31)
/* 0000A308 0000A3D4  3C 60 00 00 */	lis r3, _kjdt@ha
/* 0000A30C 0000A3D8  38 C3 00 00 */	addi r6, r3, _kjdt@l
/* 0000A310 0000A3DC  80 7E 00 08 */	lwz r3, 0x8(r30)
/* 0000A314 0000A3E0  1C 00 00 06 */	mulli r0, r0, 0x6
/* 0000A318 0000A3E4  80 A6 00 00 */	lwz r5, 0x0(r6)
/* 0000A31C 0000A3E8  38 80 00 01 */	li r4, 0x1
/* 0000A320 0000A3EC  7C 05 02 14 */	add r0, r5, r0
/* 0000A324 0000A3F0  90 06 00 0C */	stw r0, 0xc(r6)
/* 0000A328 0000A3F4  4B FF FB DD */	bl keijiban_data_make
/* 0000A32C 0000A3F8  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 0000A330 0000A3FC  38 60 00 02 */	li r3, 0x2
/* 0000A334 0000A400  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0000A338 0000A404  7C 08 03 A6 */	mtlr r0
/* 0000A33C 0000A408  38 21 00 10 */	addi r1, r1, 0x10
/* 0000A340 0000A40C  4E 80 00 20 */	blr
.endfn keijiban_data_alloc_9_text_A294

# 0x0000A080..0x0000A098 | size: 0x18
.rodata
.balign 8

# .rodata:0x0 | 0xA080 | size: 0x8
.obj str_PCTs_PCT04d_gor_0001db80, local
	.string "%s_%04d"
.endobj str_PCTs_PCT04d_gor_0001db80

# .rodata:0x8 | 0xA088 | size: 0x8
.obj str_enddata_gor_0001db88, local
	.string "enddata"
.endobj str_enddata_gor_0001db88

# .rodata:0x10 | 0xA090 | size: 0x1
.obj zero_gor_0001db90, local
	.byte 0x00
.endobj zero_gor_0001db90

# .rodata:0x11 | 0xA091 | size: 0x7
.obj gap_03_0000A091_rodata, global
.hidden gap_03_0000A091_rodata
	.4byte 0x00000000
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000A091_rodata

# 0x00040728..0x00040790 | size: 0x68
.data
.balign 8

# .data:0x0 | 0x40728 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x40730 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x40734 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x40738 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x4073C | size: 0x4
.obj gap_04_0004073C_data, global
.hidden gap_04_0004073C_data
	.4byte 0x00000000
.endobj gap_04_0004073C_data

# .data:0x18 | 0x40740 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x40748 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x4074C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x40750 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x40758 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x4075C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x40760 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x40764 | size: 0x4
.obj gap_04_00040764_data, global
.hidden gap_04_00040764_data
	.4byte 0x00000000
.endobj gap_04_00040764_data

# .data:0x40 | 0x40768 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x40770 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x40774 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x40778 | size: 0x18
.obj _kjdt, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj _kjdt
