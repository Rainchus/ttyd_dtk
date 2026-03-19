.include "macros.inc"
.file "gor.o"

# 0x00000000..0x00000620 | size: 0x620
.text
.balign 4

# .text:0x0 | 0x0 | size: 0x38
.fn unk_gor_000000cc, local
/* 00000000 000000CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000004 000000D0  7C 08 02 A6 */	mflr r0
/* 00000008 000000D4  3C 60 00 00 */	lis r3, unk_gor_bss00000004_9_bss_4@ha
/* 0000000C 000000D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000010 000000DC  38 63 00 00 */	addi r3, r3, unk_gor_bss00000004_9_bss_4@l
/* 00000014 000000E0  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00000018 000000E4  2C 03 FF FF */	cmpwi r3, -0x1
/* 0000001C 000000E8  41 82 00 08 */	beq .L_00000024
/* 00000020 000000EC  48 00 04 85 */	bl psndSFXOff
.L_00000024:
/* 00000024 000000F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000028 000000F4  38 60 00 02 */	li r3, 0x2
/* 0000002C 000000F8  7C 08 03 A6 */	mtlr r0
/* 00000030 000000FC  38 21 00 10 */	addi r1, r1, 0x10
/* 00000034 00000100  4E 80 00 20 */	blr
.endfn unk_gor_000000cc

# .text:0x38 | 0x38 | size: 0x34
.fn unk_gor_00000104, local
/* 00000038 00000104  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0000003C 00000108  7C 08 02 A6 */	mflr r0
/* 00000040 0000010C  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000044 00000110  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00000048 00000114  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000004C 00000118  48 00 04 59 */	bl evtGetValue
/* 00000050 0000011C  3C 80 00 00 */	lis r4, unk_gor_bss00000004_9_bss_4@ha
/* 00000054 00000120  90 64 00 00 */	stw r3, unk_gor_bss00000004_9_bss_4@l(r4)
/* 00000058 00000124  38 60 00 02 */	li r3, 0x2
/* 0000005C 00000128  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000060 0000012C  7C 08 03 A6 */	mtlr r0
/* 00000064 00000130  38 21 00 10 */	addi r1, r1, 0x10
/* 00000068 00000134  4E 80 00 20 */	blr
.endfn unk_gor_00000104

# .text:0x6C | 0x6C | size: 0xF4
.fn evt_goki_sub_intpl_get_value_9_text_6C, global
/* 0000006C 00000138  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 00000070 0000013C  7C 08 02 A6 */	mflr r0
/* 00000074 00000140  3C A0 43 30 */	lis r5, 0x4330
/* 00000078 00000144  90 01 00 44 */	stw r0, 0x44(r1)
/* 0000007C 00000148  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 00000080 0000014C  7C 7F 1B 78 */	mr r31, r3
/* 00000084 00000150  80 C3 00 C4 */	lwz r6, 0xc4(r3)
/* 00000088 00000154  3C 60 00 00 */	lis r3, double_to_int_gor_00013d10@ha
/* 0000008C 00000158  38 83 00 00 */	addi r4, r3, double_to_int_gor_00013d10@l
/* 00000090 0000015C  80 1F 00 C8 */	lwz r0, 0xc8(r31)
/* 00000094 00000160  6C C3 80 00 */	xoris r3, r6, 0x8000
/* 00000098 00000164  C8 44 00 00 */	lfd f2, 0x0(r4)
/* 0000009C 00000168  90 61 00 0C */	stw r3, 0xc(r1)
/* 000000A0 0000016C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 000000A4 00000170  80 7F 00 C0 */	lwz r3, 0xc0(r31)
/* 000000A8 00000174  90 A1 00 08 */	stw r5, 0x8(r1)
/* 000000AC 00000178  80 9F 00 D4 */	lwz r4, 0xd4(r31)
/* 000000B0 0000017C  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 000000B4 00000180  90 A1 00 10 */	stw r5, 0x10(r1)
/* 000000B8 00000184  EC 20 10 28 */	fsubs f1, f0, f2
/* 000000BC 00000188  80 BF 00 D8 */	lwz r5, 0xd8(r31)
/* 000000C0 0000018C  90 01 00 14 */	stw r0, 0x14(r1)
/* 000000C4 00000190  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 000000C8 00000194  EC 40 10 28 */	fsubs f2, f0, f2
/* 000000CC 00000198  48 00 03 D9 */	bl intplGetValue
/* 000000D0 0000019C  FC 00 08 1E */	fctiwz f0, f1
/* 000000D4 000001A0  3C 00 43 30 */	lis r0, 0x4330
/* 000000D8 000001A4  3C 60 00 00 */	lis r3, double_to_int_gor_00013d10@ha
/* 000000DC 000001A8  90 01 00 20 */	stw r0, 0x20(r1)
/* 000000E0 000001AC  C8 43 00 00 */	lfd f2, double_to_int_gor_00013d10@l(r3)
/* 000000E4 000001B0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 000000E8 000001B4  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 000000EC 000001B8  90 01 00 28 */	stw r0, 0x28(r1)
/* 000000F0 000001BC  90 7F 00 9C */	stw r3, 0x9c(r31)
/* 000000F4 000001C0  80 7F 00 CC */	lwz r3, 0xcc(r31)
/* 000000F8 000001C4  80 1F 00 D0 */	lwz r0, 0xd0(r31)
/* 000000FC 000001C8  6C 64 80 00 */	xoris r4, r3, 0x8000
/* 00000100 000001CC  80 7F 00 C0 */	lwz r3, 0xc0(r31)
/* 00000104 000001D0  90 81 00 24 */	stw r4, 0x24(r1)
/* 00000108 000001D4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 0000010C 000001D8  80 9F 00 D4 */	lwz r4, 0xd4(r31)
/* 00000110 000001DC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 00000114 000001E0  C8 21 00 20 */	lfd f1, 0x20(r1)
/* 00000118 000001E4  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 0000011C 000001E8  EC 21 10 28 */	fsubs f1, f1, f2
/* 00000120 000001EC  80 BF 00 D8 */	lwz r5, 0xd8(r31)
/* 00000124 000001F0  EC 40 10 28 */	fsubs f2, f0, f2
/* 00000128 000001F4  48 00 03 7D */	bl intplGetValue
/* 0000012C 000001F8  FC 00 08 1E */	fctiwz f0, f1
/* 00000130 000001FC  38 60 00 02 */	li r3, 0x2
/* 00000134 00000200  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 00000138 00000204  80 01 00 34 */	lwz r0, 0x34(r1)
/* 0000013C 00000208  90 1F 00 A0 */	stw r0, 0xa0(r31)
/* 00000140 0000020C  80 9F 00 D4 */	lwz r4, 0xd4(r31)
/* 00000144 00000210  38 04 00 01 */	addi r0, r4, 0x1
/* 00000148 00000214  90 1F 00 D4 */	stw r0, 0xd4(r31)
/* 0000014C 00000218  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 00000150 0000021C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 00000154 00000220  7C 08 03 A6 */	mtlr r0
/* 00000158 00000224  38 21 00 40 */	addi r1, r1, 0x40
/* 0000015C 00000228  4E 80 00 20 */	blr
.endfn evt_goki_sub_intpl_get_value_9_text_6C

# .text:0x160 | 0x160 | size: 0xA8
.fn evt_goki_sub_intpl_init_9_text_160, global
/* 00000160 0000022C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00000164 00000230  7C 08 02 A6 */	mflr r0
/* 00000168 00000234  90 01 00 24 */	stw r0, 0x24(r1)
/* 0000016C 00000238  BF 41 00 08 */	stmw r26, 0x8(r1)
/* 00000170 0000023C  7C 7A 1B 78 */	mr r26, r3
/* 00000174 00000240  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00000178 00000244  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 0000017C 00000248  48 00 03 29 */	bl evtGetValue
/* 00000180 0000024C  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00000184 00000250  7C 7B 1B 78 */	mr r27, r3
/* 00000188 00000254  7F 43 D3 78 */	mr r3, r26
/* 0000018C 00000258  48 00 03 19 */	bl evtGetValue
/* 00000190 0000025C  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 00000194 00000260  7C 7C 1B 78 */	mr r28, r3
/* 00000198 00000264  7F 43 D3 78 */	mr r3, r26
/* 0000019C 00000268  48 00 03 09 */	bl evtGetValue
/* 000001A0 0000026C  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 000001A4 00000270  7C 7D 1B 78 */	mr r29, r3
/* 000001A8 00000274  7F 43 D3 78 */	mr r3, r26
/* 000001AC 00000278  48 00 02 F9 */	bl evtGetValue
/* 000001B0 0000027C  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 000001B4 00000280  7C 7E 1B 78 */	mr r30, r3
/* 000001B8 00000284  7F 43 D3 78 */	mr r3, r26
/* 000001BC 00000288  48 00 02 E9 */	bl evtGetValue
/* 000001C0 0000028C  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 000001C4 00000290  7C 7F 1B 78 */	mr r31, r3
/* 000001C8 00000294  7F 43 D3 78 */	mr r3, r26
/* 000001CC 00000298  48 00 02 D9 */	bl evtGetValue
/* 000001D0 0000029C  93 7A 00 C0 */	stw r27, 0xc0(r26)
/* 000001D4 000002A0  38 00 00 00 */	li r0, 0x0
/* 000001D8 000002A4  93 9A 00 C4 */	stw r28, 0xc4(r26)
/* 000001DC 000002A8  93 BA 00 C8 */	stw r29, 0xc8(r26)
/* 000001E0 000002AC  93 DA 00 CC */	stw r30, 0xcc(r26)
/* 000001E4 000002B0  93 FA 00 D0 */	stw r31, 0xd0(r26)
/* 000001E8 000002B4  90 1A 00 D4 */	stw r0, 0xd4(r26)
/* 000001EC 000002B8  90 7A 00 D8 */	stw r3, 0xd8(r26)
/* 000001F0 000002BC  38 60 00 02 */	li r3, 0x2
/* 000001F4 000002C0  BB 41 00 08 */	lmw r26, 0x8(r1)
/* 000001F8 000002C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 000001FC 000002C8  7C 08 03 A6 */	mtlr r0
/* 00000200 000002CC  38 21 00 20 */	addi r1, r1, 0x20
/* 00000204 000002D0  4E 80 00 20 */	blr
.endfn evt_goki_sub_intpl_init_9_text_160

# .text:0x208 | 0x208 | size: 0x148
.fn evt_gor_villager_urouro_check_func_9_text_208, global
/* 00000208 000002D4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 0000020C 000002D8  7C 08 02 A6 */	mflr r0
/* 00000210 000002DC  90 01 00 74 */	stw r0, 0x74(r1)
/* 00000214 000002E0  39 61 00 70 */	addi r11, r1, 0x70
/* 00000218 000002E4  48 00 02 8D */	bl _savefpr_28
/* 0000021C 000002E8  BF 81 00 40 */	stmw r28, 0x40(r1)
/* 00000220 000002EC  7C 7D 1B 78 */	mr r29, r3
/* 00000224 000002F0  83 83 00 18 */	lwz r28, 0x18(r3)
/* 00000228 000002F4  83 FC 00 00 */	lwz r31, 0x0(r28)
/* 0000022C 000002F8  83 DC 00 04 */	lwz r30, 0x4(r28)
/* 00000230 000002FC  80 9C 00 08 */	lwz r4, 0x8(r28)
/* 00000234 00000300  48 00 02 71 */	bl evtGetFloat
/* 00000238 00000304  FF A0 08 90 */	fmr f29, f1
/* 0000023C 00000308  80 9C 00 0C */	lwz r4, 0xc(r28)
/* 00000240 0000030C  7F A3 EB 78 */	mr r3, r29
/* 00000244 00000310  48 00 02 61 */	bl evtGetFloat
/* 00000248 00000314  FF 80 08 90 */	fmr f28, f1
/* 0000024C 00000318  80 9C 00 10 */	lwz r4, 0x10(r28)
/* 00000250 0000031C  7F A3 EB 78 */	mr r3, r29
/* 00000254 00000320  48 00 02 51 */	bl evtGetFloat
/* 00000258 00000324  FF C0 08 90 */	fmr f30, f1
/* 0000025C 00000328  7F A3 EB 78 */	mr r3, r29
/* 00000260 0000032C  7F E4 FB 78 */	mr r4, r31
/* 00000264 00000330  48 00 02 41 */	bl evtGetFloat
/* 00000268 00000334  FF E0 08 90 */	fmr f31, f1
/* 0000026C 00000338  7F A3 EB 78 */	mr r3, r29
/* 00000270 0000033C  7F C4 F3 78 */	mr r4, r30
/* 00000274 00000340  48 00 02 31 */	bl evtGetFloat
/* 00000278 00000344  3C 60 00 00 */	lis r3, vec3_gor_00013b00@ha
/* 0000027C 00000348  3C 80 00 00 */	lis r4, vec3_gor_00013b0c@ha
/* 00000280 0000034C  39 23 00 00 */	addi r9, r3, vec3_gor_00013b00@l
/* 00000284 00000350  38 61 00 20 */	addi r3, r1, 0x20
/* 00000288 00000354  38 C4 00 00 */	addi r6, r4, vec3_gor_00013b0c@l
/* 0000028C 00000358  81 09 00 00 */	lwz r8, 0x0(r9)
/* 00000290 0000035C  80 E9 00 08 */	lwz r7, 0x8(r9)
/* 00000294 00000360  38 81 00 2C */	addi r4, r1, 0x2c
/* 00000298 00000364  80 A6 00 00 */	lwz r5, 0x0(r6)
/* 0000029C 00000368  80 06 00 08 */	lwz r0, 0x8(r6)
/* 000002A0 0000036C  91 01 00 14 */	stw r8, 0x14(r1)
/* 000002A4 00000370  81 29 00 04 */	lwz r9, 0x4(r9)
/* 000002A8 00000374  80 C6 00 04 */	lwz r6, 0x4(r6)
/* 000002AC 00000378  90 E1 00 1C */	stw r7, 0x1c(r1)
/* 000002B0 0000037C  90 A1 00 08 */	stw r5, 0x8(r1)
/* 000002B4 00000380  90 01 00 10 */	stw r0, 0x10(r1)
/* 000002B8 00000384  D3 E1 00 14 */	stfs f31, 0x14(r1)
/* 000002BC 00000388  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 000002C0 0000038C  81 01 00 14 */	lwz r8, 0x14(r1)
/* 000002C4 00000390  D3 A1 00 08 */	stfs f29, 0x8(r1)
/* 000002C8 00000394  80 E1 00 1C */	lwz r7, 0x1c(r1)
/* 000002CC 00000398  D3 81 00 10 */	stfs f28, 0x10(r1)
/* 000002D0 0000039C  80 A1 00 08 */	lwz r5, 0x8(r1)
/* 000002D4 000003A0  80 01 00 10 */	lwz r0, 0x10(r1)
/* 000002D8 000003A4  91 21 00 18 */	stw r9, 0x18(r1)
/* 000002DC 000003A8  91 01 00 2C */	stw r8, 0x2c(r1)
/* 000002E0 000003AC  91 21 00 30 */	stw r9, 0x30(r1)
/* 000002E4 000003B0  90 E1 00 34 */	stw r7, 0x34(r1)
/* 000002E8 000003B4  90 C1 00 0C */	stw r6, 0xc(r1)
/* 000002EC 000003B8  90 A1 00 20 */	stw r5, 0x20(r1)
/* 000002F0 000003BC  90 C1 00 24 */	stw r6, 0x24(r1)
/* 000002F4 000003C0  90 01 00 28 */	stw r0, 0x28(r1)
/* 000002F8 000003C4  48 00 01 AD */	bl PSVECDistance
/* 000002FC 000003C8  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 00000300 000003CC  4C 40 13 82 */	cror eq, lt, eq
/* 00000304 000003D0  40 82 00 0C */	bne .L_00000310
/* 00000308 000003D4  38 60 00 02 */	li r3, 0x2
/* 0000030C 000003D8  48 00 00 28 */	b .L_00000334
.L_00000310:
/* 00000310 000003DC  FC 20 E8 90 */	fmr f1, f29
/* 00000314 000003E0  7F A3 EB 78 */	mr r3, r29
/* 00000318 000003E4  7F E4 FB 78 */	mr r4, r31
/* 0000031C 000003E8  48 00 01 89 */	bl evtSetFloat
/* 00000320 000003EC  FC 20 E0 90 */	fmr f1, f28
/* 00000324 000003F0  7F A3 EB 78 */	mr r3, r29
/* 00000328 000003F4  7F C4 F3 78 */	mr r4, r30
/* 0000032C 000003F8  48 00 01 79 */	bl evtSetFloat
/* 00000330 000003FC  38 60 00 02 */	li r3, 0x2
.L_00000334:
/* 00000334 00000400  39 61 00 70 */	addi r11, r1, 0x70
/* 00000338 00000404  48 00 01 6D */	bl _restfpr_28
/* 0000033C 00000408  BB 81 00 40 */	lmw r28, 0x40(r1)
/* 00000340 0000040C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 00000344 00000410  7C 08 03 A6 */	mtlr r0
/* 00000348 00000414  38 21 00 70 */	addi r1, r1, 0x70
/* 0000034C 00000418  4E 80 00 20 */	blr
.endfn evt_gor_villager_urouro_check_func_9_text_208

# .text:0x350 | 0x350 | size: 0xFC
.fn unk_gor_0000041c, local
/* 00000350 0000041C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00000354 00000420  7C 08 02 A6 */	mflr r0
/* 00000358 00000424  90 01 00 34 */	stw r0, 0x34(r1)
/* 0000035C 00000428  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 00000360 0000042C  7C 7F 1B 78 */	mr r31, r3
/* 00000364 00000430  83 83 00 18 */	lwz r28, 0x18(r3)
/* 00000368 00000434  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 0000036C 00000438  48 00 01 39 */	bl evtGetValue
/* 00000370 0000043C  80 9C 00 04 */	lwz r4, 0x4(r28)
/* 00000374 00000440  7C 7B 1B 78 */	mr r27, r3
/* 00000378 00000444  7F E3 FB 78 */	mr r3, r31
/* 0000037C 00000448  48 00 01 29 */	bl evtGetValue
/* 00000380 0000044C  48 00 01 25 */	bl msgSearch
/* 00000384 00000450  80 9C 00 08 */	lwz r4, 0x8(r28)
/* 00000388 00000454  7C 7A 1B 78 */	mr r26, r3
/* 0000038C 00000458  7F E3 FB 78 */	mr r3, r31
/* 00000390 0000045C  48 00 01 15 */	bl evtGetValue
/* 00000394 00000460  7C 60 1B 78 */	mr r0, r3
/* 00000398 00000464  7F 43 D3 78 */	mr r3, r26
/* 0000039C 00000468  7C 19 03 78 */	mr r25, r0
/* 000003A0 0000046C  48 00 01 05 */	bl strlen
/* 000003A4 00000470  7C 7D 1B 78 */	mr r29, r3
/* 000003A8 00000474  7F 63 DB 78 */	mr r3, r27
/* 000003AC 00000478  48 00 00 F9 */	bl strlen
/* 000003B0 0000047C  7C 7E 1B 78 */	mr r30, r3
/* 000003B4 00000480  7F 23 CB 78 */	mr r3, r25
/* 000003B8 00000484  48 00 00 ED */	bl strlen
/* 000003BC 00000488  7C 9D 1A 14 */	add r4, r29, r3
/* 000003C0 0000048C  3C 60 00 00 */	lis r3, mapalloc_base_ptr@ha
/* 000003C4 00000490  3B A4 00 01 */	addi r29, r4, 0x1
/* 000003C8 00000494  38 63 00 00 */	addi r3, r3, mapalloc_base_ptr@l
/* 000003CC 00000498  7F BE EA 14 */	add r29, r30, r29
/* 000003D0 0000049C  80 63 00 00 */	lwz r3, 0x0(r3)
/* 000003D4 000004A0  7F A4 EB 78 */	mr r4, r29
/* 000003D8 000004A4  48 00 00 CD */	bl _mapAlloc
/* 000003DC 000004A8  3C 80 00 00 */	lis r4, unk_gor_bss00000000_9_bss_0@ha
/* 000003E0 000004AC  7F A5 EB 78 */	mr r5, r29
/* 000003E4 000004B0  38 C4 00 00 */	addi r6, r4, unk_gor_bss00000000_9_bss_0@l
/* 000003E8 000004B4  38 80 00 00 */	li r4, 0x0
/* 000003EC 000004B8  90 66 00 00 */	stw r3, 0x0(r6)
/* 000003F0 000004BC  48 00 00 B5 */	bl memset
/* 000003F4 000004C0  3C 80 00 00 */	lis r4, unk_gor_bss00000000_9_bss_0@ha
/* 000003F8 000004C4  3C 60 00 00 */	lis r3, str_PCTsPCTsPCTs_gor_00013d18@ha
/* 000003FC 000004C8  38 C4 00 00 */	addi r6, r4, unk_gor_bss00000000_9_bss_0@l
/* 00000400 000004CC  7F 65 DB 78 */	mr r5, r27
/* 00000404 000004D0  38 83 00 00 */	addi r4, r3, str_PCTsPCTsPCTs_gor_00013d18@l
/* 00000408 000004D4  80 66 00 00 */	lwz r3, 0x0(r6)
/* 0000040C 000004D8  7F 46 D3 78 */	mr r6, r26
/* 00000410 000004DC  7F 27 CB 78 */	mr r7, r25
/* 00000414 000004E0  4C C6 31 82 */	crclr cr1eq
/* 00000418 000004E4  48 00 00 8D */	bl sprintf
/* 0000041C 000004E8  3C 60 00 00 */	lis r3, unk_gor_bss00000000_9_bss_0@ha
/* 00000420 000004EC  80 9C 00 0C */	lwz r4, 0xc(r28)
/* 00000424 000004F0  38 A3 00 00 */	addi r5, r3, unk_gor_bss00000000_9_bss_0@l
/* 00000428 000004F4  7F E3 FB 78 */	mr r3, r31
/* 0000042C 000004F8  80 A5 00 00 */	lwz r5, 0x0(r5)
/* 00000430 000004FC  48 00 00 75 */	bl evtSetValue
/* 00000434 00000500  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 00000438 00000504  38 60 00 02 */	li r3, 0x2
/* 0000043C 00000508  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00000440 0000050C  7C 08 03 A6 */	mtlr r0
/* 00000444 00000510  38 21 00 30 */	addi r1, r1, 0x30
/* 00000448 00000514  4E 80 00 20 */	blr
.endfn unk_gor_0000041c

# .text:0x44C | 0x44C | size: 0x58
.fn unk_gor_00000518, local
/* 0000044C 00000518  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000450 0000051C  7C 08 02 A6 */	mflr r0
/* 00000454 00000520  3C 60 00 00 */	lis r3, unk_gor_bss00000000_9_bss_0@ha
/* 00000458 00000524  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000045C 00000528  80 83 00 00 */	lwz r4, unk_gor_bss00000000_9_bss_0@l(r3)
/* 00000460 0000052C  28 04 00 00 */	cmplwi r4, 0x0
/* 00000464 00000530  40 82 00 0C */	bne .L_00000470
/* 00000468 00000534  38 60 00 02 */	li r3, 0x2
/* 0000046C 00000538  48 00 00 28 */	b .L_00000494
.L_00000470:
/* 00000470 0000053C  3C 60 00 00 */	lis r3, mapalloc_base_ptr@ha
/* 00000474 00000540  38 63 00 00 */	addi r3, r3, mapalloc_base_ptr@l
/* 00000478 00000544  80 63 00 00 */	lwz r3, 0x0(r3)
/* 0000047C 00000548  48 00 00 29 */	bl _mapFree
/* 00000480 0000054C  3C 60 00 00 */	lis r3, unk_gor_bss00000000_9_bss_0@ha
/* 00000484 00000550  38 00 00 00 */	li r0, 0x0
/* 00000488 00000554  38 83 00 00 */	addi r4, r3, unk_gor_bss00000000_9_bss_0@l
/* 0000048C 00000558  38 60 00 02 */	li r3, 0x2
/* 00000490 0000055C  90 04 00 00 */	stw r0, 0x0(r4)
.L_00000494:
/* 00000494 00000560  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000498 00000564  7C 08 03 A6 */	mtlr r0
/* 0000049C 00000568  38 21 00 10 */	addi r1, r1, 0x10
/* 000004A0 0000056C  4E 80 00 20 */	blr
.endfn unk_gor_00000518

# .text:0x4A4 | 0x4A4 | size: 0x4
.fn _unresolved, global
/* 000004A4 00000570  4E 80 00 20 */	blr
.endfn _unresolved

# .text:0x4A8 | 0x4A8 | size: 0x70
.fn _epilog, global
/* 000004A8 00000574  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000004AC 00000578  7C 08 02 A6 */	mflr r0
/* 000004B0 0000057C  3C 80 00 00 */	lis r4, gp@ha
/* 000004B4 00000580  3C 60 00 00 */	lis r3, str_gor_10_gor_00013d20@ha
/* 000004B8 00000584  90 01 00 14 */	stw r0, 0x14(r1)
/* 000004BC 00000588  93 E1 00 0C */	stw r31, 0xc(r1)
/* 000004C0 0000058C  80 A4 00 00 */	lwz r5, gp@l(r4)
/* 000004C4 00000590  38 83 00 00 */	addi r4, r3, str_gor_10_gor_00013d20@l
/* 000004C8 00000594  38 65 01 2C */	addi r3, r5, 0x12c
/* 000004CC 00000598  4B FF FF D9 */	bl strcmp
/* 000004D0 0000059C  2C 03 00 00 */	cmpwi r3, 0x0
/* 000004D4 000005A0  40 82 00 08 */	bne .L_000004DC
/* 000004D8 000005A4  48 01 0F 71 */	bl tegami_delete_9_text_11448
.L_000004DC:
/* 000004DC 000005A8  3C 60 00 00 */	lis r3, _dtors@ha
/* 000004E0 000005AC  38 03 00 00 */	addi r0, r3, _dtors@l
/* 000004E4 000005B0  7C 1F 03 78 */	mr r31, r0
/* 000004E8 000005B4  48 00 00 10 */	b .L_000004F8
.L_000004EC:
/* 000004EC 000005B8  7D 89 03 A6 */	mtctr r12
/* 000004F0 000005BC  4E 80 04 21 */	bctrl
/* 000004F4 000005C0  3B FF 00 04 */	addi r31, r31, 0x4
.L_000004F8:
/* 000004F8 000005C4  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 000004FC 000005C8  28 0C 00 00 */	cmplwi r12, 0x0
/* 00000500 000005CC  40 82 FF EC */	bne .L_000004EC
/* 00000504 000005D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000508 000005D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 0000050C 000005D8  7C 08 03 A6 */	mtlr r0
/* 00000510 000005DC  38 21 00 10 */	addi r1, r1, 0x10
/* 00000514 000005E0  4E 80 00 20 */	blr
.endfn _epilog

# .text:0x518 | 0x518 | size: 0x108
.fn _prolog, global
/* 00000518 000005E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0000051C 000005E8  7C 08 02 A6 */	mflr r0
/* 00000520 000005EC  3C 60 00 00 */	lis r3, _ctors@ha
/* 00000524 000005F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000528 000005F4  38 03 00 00 */	addi r0, r3, _ctors@l
/* 0000052C 000005F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 00000530 000005FC  7C 1F 03 78 */	mr r31, r0
/* 00000534 00000600  48 00 00 10 */	b .L_00000544
.L_00000538:
/* 00000538 00000604  7D 89 03 A6 */	mtctr r12
/* 0000053C 00000608  4E 80 04 21 */	bctrl
/* 00000540 0000060C  3B FF 00 04 */	addi r31, r31, 0x4
.L_00000544:
/* 00000544 00000610  81 9F 00 00 */	lwz r12, 0x0(r31)
/* 00000548 00000614  28 0C 00 00 */	cmplwi r12, 0x0
/* 0000054C 00000618  40 82 FF EC */	bne .L_00000538
/* 00000550 0000061C  3C 60 00 00 */	lis r3, str_gor_00_gor_00013d28@ha
/* 00000554 00000620  3C 80 00 00 */	lis r4, gor_00_init_evt_9_data_EF7C@ha
/* 00000558 00000624  38 63 00 00 */	addi r3, r3, str_gor_00_gor_00013d28@l
/* 0000055C 00000628  38 84 00 00 */	addi r4, r4, gor_00_init_evt_9_data_EF7C@l
/* 00000560 0000062C  4B FF FF 45 */	bl relSetEvtAddr
/* 00000564 00000630  3C 60 00 00 */	lis r3, str_gor_01_gor_00013d30@ha
/* 00000568 00000634  3C 80 00 00 */	lis r4, gor_01_init_evt_9_data_1C178@ha
/* 0000056C 00000638  38 63 00 00 */	addi r3, r3, str_gor_01_gor_00013d30@l
/* 00000570 0000063C  38 84 00 00 */	addi r4, r4, gor_01_init_evt_9_data_1C178@l
/* 00000574 00000640  4B FF FF 31 */	bl relSetEvtAddr
/* 00000578 00000644  3C 60 00 00 */	lis r3, str_gor_02_gor_00013d38@ha
/* 0000057C 00000648  3C 80 00 00 */	lis r4, gor_02_init_evt_9_data_2D4CC@ha
/* 00000580 0000064C  38 63 00 00 */	addi r3, r3, str_gor_02_gor_00013d38@l
/* 00000584 00000650  38 84 00 00 */	addi r4, r4, gor_02_init_evt_9_data_2D4CC@l
/* 00000588 00000654  4B FF FF 1D */	bl relSetEvtAddr
/* 0000058C 00000658  3C 60 00 00 */	lis r3, str_gor_03_gor_00013d40@ha
/* 00000590 0000065C  3C 80 00 00 */	lis r4, gor_03_init_evt_9_data_3A2F0@ha
/* 00000594 00000660  38 63 00 00 */	addi r3, r3, str_gor_03_gor_00013d40@l
/* 00000598 00000664  38 84 00 00 */	addi r4, r4, gor_03_init_evt_9_data_3A2F0@l
/* 0000059C 00000668  4B FF FF 09 */	bl relSetEvtAddr
/* 000005A0 0000066C  3C 60 00 00 */	lis r3, str_gor_04_gor_00013d48@ha
/* 000005A4 00000670  3C 80 00 00 */	lis r4, gor_04_init_evt_9_data_402D8@ha
/* 000005A8 00000674  38 63 00 00 */	addi r3, r3, str_gor_04_gor_00013d48@l
/* 000005AC 00000678  38 84 00 00 */	addi r4, r4, gor_04_init_evt_9_data_402D8@l
/* 000005B0 0000067C  4B FF FE F5 */	bl relSetEvtAddr
/* 000005B4 00000680  3C 60 00 00 */	lis r3, str_gor_10_gor_00013d20@ha
/* 000005B8 00000684  3C 80 00 00 */	lis r4, gor_10_init_evt_9_data_46C2C@ha
/* 000005BC 00000688  38 63 00 00 */	addi r3, r3, str_gor_10_gor_00013d20@l
/* 000005C0 0000068C  38 84 00 00 */	addi r4, r4, gor_10_init_evt_9_data_46C2C@l
/* 000005C4 00000690  4B FF FE E1 */	bl relSetEvtAddr
/* 000005C8 00000694  3C 60 00 00 */	lis r3, str_gor_11_gor_00013d50@ha
/* 000005CC 00000698  3C 80 00 00 */	lis r4, gor_11_init_evt_9_data_4D738@ha
/* 000005D0 0000069C  38 63 00 00 */	addi r3, r3, str_gor_11_gor_00013d50@l
/* 000005D4 000006A0  38 84 00 00 */	addi r4, r4, gor_11_init_evt_9_data_4D738@l
/* 000005D8 000006A4  4B FF FE CD */	bl relSetEvtAddr
/* 000005DC 000006A8  3C 60 00 00 */	lis r3, str_gor_12_gor_00013d58@ha
/* 000005E0 000006AC  3C 80 00 00 */	lis r4, gor_12_init_evt_9_data_4D564@ha
/* 000005E4 000006B0  38 63 00 00 */	addi r3, r3, str_gor_12_gor_00013d58@l
/* 000005E8 000006B4  38 84 00 00 */	addi r4, r4, gor_12_init_evt_9_data_4D564@l
/* 000005EC 000006B8  4B FF FE B9 */	bl relSetEvtAddr
/* 000005F0 000006BC  3C 60 00 00 */	lis r3, str_gor_gor_00013d60@ha
/* 000005F4 000006C0  3C 80 00 00 */	lis r4, btlsetup_gor_tbl_9_data_40DA8@ha
/* 000005F8 000006C4  3C A0 00 00 */	lis r5, btl_gor_setup_no_tbl_9_data_40F84@ha
/* 000005FC 000006C8  38 63 00 00 */	addi r3, r3, str_gor_gor_00013d60@l
/* 00000600 000006CC  38 84 00 00 */	addi r4, r4, btlsetup_gor_tbl_9_data_40DA8@l
/* 00000604 000006D0  38 A5 00 00 */	addi r5, r5, btl_gor_setup_no_tbl_9_data_40F84@l
/* 00000608 000006D4  4B FF FE 9D */	bl relSetBtlAddr
/* 0000060C 000006D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000610 000006DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 00000614 000006E0  7C 08 03 A6 */	mtlr r0
/* 00000618 000006E4  38 21 00 10 */	addi r1, r1, 0x10
/* 0000061C 000006E8  4E 80 00 20 */	blr
.endfn _prolog

# 0x00000000..0x00000268 | size: 0x268
.rodata
.balign 8

# .rodata:0x0 | 0x0 | size: 0xC
.obj vec3_gor_00013b00, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj vec3_gor_00013b00

# .rodata:0xC | 0xC | size: 0xC
.obj vec3_gor_00013b0c, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj vec3_gor_00013b0c

# .rodata:0x18 | 0x18 | size: 0x3
.obj str_me_gor_00013b18, local
	.string "me"
.endobj str_me_gor_00013b18

# .rodata:0x1B | 0x1B | size: 0x1
.obj gap_03_0000001B_rodata, global
.hidden gap_03_0000001B_rodata
	.byte 0x00
.endobj gap_03_0000001B_rodata

# .rodata:0x1C | 0x1C | size: 0x17
.obj str_SFX_VOICE_MARIO_SLEE_gor_00013b1c, local
	.string "SFX_VOICE_MARIO_SLEEP1"
.endobj str_SFX_VOICE_MARIO_SLEE_gor_00013b1c

# .rodata:0x33 | 0x33 | size: 0x1
.obj gap_03_00000033_rodata, global
.hidden gap_03_00000033_rodata
	.byte 0x00
.endobj gap_03_00000033_rodata

# .rodata:0x34 | 0x34 | size: 0x7
.obj str_M_N_5A_gor_00013b34, local
	.string "M_N_5A"
.endobj str_M_N_5A_gor_00013b34

# .rodata:0x3B | 0x3B | size: 0x1
.obj gap_03_0000003B_rodata, global
.hidden gap_03_0000003B_rodata
	.byte 0x00
.endobj gap_03_0000003B_rodata

# .rodata:0x3C | 0x3C | size: 0x8
.obj str_PKR_N_1_gor_00013b3c, local
	.string "PKR_N_1"
.endobj str_PKR_N_1_gor_00013b3c

# .rodata:0x44 | 0x44 | size: 0x8
.obj str_PNK_N_1_gor_00013b44, local
	.string "PNK_N_1"
.endobj str_PNK_N_1_gor_00013b44

# .rodata:0x4C | 0x4C | size: 0x8
.obj str_PBM_N_1_gor_00013b4c, local
	.string "PBM_N_1"
.endobj str_PBM_N_1_gor_00013b4c

# .rodata:0x54 | 0x54 | size: 0x8
.obj str_PYS_N_1_gor_00013b54, local
	.string "PYS_N_1"
.endobj str_PYS_N_1_gor_00013b54

# .rodata:0x5C | 0x5C | size: 0x8
.obj str_PWD_N_1_gor_00013b5c, local
	.string "PWD_N_1"
.endobj str_PWD_N_1_gor_00013b5c

# .rodata:0x64 | 0x64 | size: 0x8
.obj str_PTR_N_1_gor_00013b64, local
	.string "PTR_N_1"
.endobj str_PTR_N_1_gor_00013b64

# .rodata:0x6C | 0x6C | size: 0x8
.obj str_PCH_N_1_gor_00013b6c, local
	.string "PCH_N_1"
.endobj str_PCH_N_1_gor_00013b6c

# .rodata:0x74 | 0x74 | size: 0x16
.obj str_SFX_VOICE_MARIO_YAWN_gor_00013b74, local
	.string "SFX_VOICE_MARIO_YAWN1"
.endobj str_SFX_VOICE_MARIO_YAWN_gor_00013b74

# .rodata:0x8A | 0x8A | size: 0x2
.obj gap_03_0000008A_rodata, global
.hidden gap_03_0000008A_rodata
	.2byte 0x0000
.endobj gap_03_0000008A_rodata

# .rodata:0x8C | 0x8C | size: 0x6
.obj str_M_I_5_gor_00013b8c, local
	.string "M_I_5"
.endobj str_M_I_5_gor_00013b8c

# .rodata:0x92 | 0x92 | size: 0x2
.obj gap_03_00000092_rodata, global
.hidden gap_03_00000092_rodata
	.2byte 0x0000
.endobj gap_03_00000092_rodata

# .rodata:0x94 | 0x94 | size: 0x6
.obj str_M_S_1_gor_00013b94, local
	.string "M_S_1"
.endobj str_M_S_1_gor_00013b94

# .rodata:0x9A | 0x9A | size: 0x2
.obj gap_03_0000009A_rodata, global
.hidden gap_03_0000009A_rodata
	.2byte 0x0000
.endobj gap_03_0000009A_rodata

# .rodata:0x9C | 0x9C | size: 0x8
.obj str_PKR_S_1_gor_00013b9c, local
	.string "PKR_S_1"
.endobj str_PKR_S_1_gor_00013b9c

# .rodata:0xA4 | 0xA4 | size: 0x8
.obj str_PNK_S_1_gor_00013ba4, local
	.string "PNK_S_1"
.endobj str_PNK_S_1_gor_00013ba4

# .rodata:0xAC | 0xAC | size: 0x8
.obj str_PBM_S_1_gor_00013bac, local
	.string "PBM_S_1"
.endobj str_PBM_S_1_gor_00013bac

# .rodata:0xB4 | 0xB4 | size: 0x8
.obj str_PYS_S_1_gor_00013bb4, local
	.string "PYS_S_1"
.endobj str_PYS_S_1_gor_00013bb4

# .rodata:0xBC | 0xBC | size: 0x8
.obj str_PWD_S_1_gor_00013bbc, local
	.string "PWD_S_1"
.endobj str_PWD_S_1_gor_00013bbc

# .rodata:0xC4 | 0xC4 | size: 0x8
.obj str_PTR_S_1_gor_00013bc4, local
	.string "PTR_S_1"
.endobj str_PTR_S_1_gor_00013bc4

# .rodata:0xCC | 0xCC | size: 0x8
.obj str_PCH_S_1_gor_00013bcc, local
	.string "PCH_S_1"
.endobj str_PCH_S_1_gor_00013bcc

# .rodata:0xD4 | 0xD4 | size: 0x17
.obj str_SFX_VOICE_MARIO_AWAK_gor_00013bd4, local
	.string "SFX_VOICE_MARIO_AWAKE1"
.endobj str_SFX_VOICE_MARIO_AWAK_gor_00013bd4

# .rodata:0xEB | 0xEB | size: 0x1
.obj gap_03_000000EB_rodata, global
.hidden gap_03_000000EB_rodata
	.byte 0x00
.endobj gap_03_000000EB_rodata

# .rodata:0xEC | 0xEC | size: 0x7
.obj str_M_N_5B_gor_00013bec, local
	.string "M_N_5B"
.endobj str_M_N_5B_gor_00013bec

# .rodata:0xF3 | 0xF3 | size: 0x1
.obj gap_03_000000F3_rodata, global
.hidden gap_03_000000F3_rodata
	.byte 0x00
.endobj gap_03_000000F3_rodata

# .rodata:0xF4 | 0xF4 | size: 0xD
.obj str_gor_luigi_00_gor_00013bf4, local
	.string "gor_luigi_00"
.endobj str_gor_luigi_00_gor_00013bf4

# .rodata:0x101 | 0x101 | size: 0x3
.obj gap_03_00000101_rodata, global
.hidden gap_03_00000101_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000101_rodata

# .rodata:0x104 | 0x104 | size: 0x6
.obj str_M_I_2_gor_00013c04, local
	.string "M_I_2"
.endobj str_M_I_2_gor_00013c04

# .rodata:0x10A | 0x10A | size: 0x2
.obj gap_03_0000010A_rodata, global
.hidden gap_03_0000010A_rodata
	.2byte 0x0000
.endobj gap_03_0000010A_rodata

# .rodata:0x10C | 0x10C | size: 0xD
.obj str_gor_luigi_01_gor_00013c0c, local
	.string "gor_luigi_01"
.endobj str_gor_luigi_01_gor_00013c0c

# .rodata:0x119 | 0x119 | size: 0x3
.obj gap_03_00000119_rodata, global
.hidden gap_03_00000119_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000119_rodata

# .rodata:0x11C | 0x11C | size: 0xF
.obj str_gor_luigi_01_1_gor_00013c1c, local
	.string "gor_luigi_01_1"
.endobj str_gor_luigi_01_1_gor_00013c1c

# .rodata:0x12B | 0x12B | size: 0x1
.obj gap_03_0000012B_rodata, global
.hidden gap_03_0000012B_rodata
	.byte 0x00
.endobj gap_03_0000012B_rodata

# .rodata:0x12C | 0x12C | size: 0xD
.obj str_gor_luigi_02_gor_00013c2c, local
	.string "gor_luigi_02"
.endobj str_gor_luigi_02_gor_00013c2c

# .rodata:0x139 | 0x139 | size: 0x3
.obj gap_03_00000139_rodata, global
.hidden gap_03_00000139_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000139_rodata

# .rodata:0x13C | 0x13C | size: 0xD
.obj str_gor_luigi_03_gor_00013c3c, local
	.string "gor_luigi_03"
.endobj str_gor_luigi_03_gor_00013c3c

# .rodata:0x149 | 0x149 | size: 0x3
.obj gap_03_00000149_rodata, global
.hidden gap_03_00000149_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000149_rodata

# .rodata:0x14C | 0x14C | size: 0xD
.obj str_gor_luigi_04_gor_00013c4c, local
	.string "gor_luigi_04"
.endobj str_gor_luigi_04_gor_00013c4c

# .rodata:0x159 | 0x159 | size: 0x3
.obj gap_03_00000159_rodata, global
.hidden gap_03_00000159_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000159_rodata

# .rodata:0x15C | 0x15C | size: 0xD
.obj str_gor_luigi_05_gor_00013c5c, local
	.string "gor_luigi_05"
.endobj str_gor_luigi_05_gor_00013c5c

# .rodata:0x169 | 0x169 | size: 0x3
.obj gap_03_00000169_rodata, global
.hidden gap_03_00000169_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000169_rodata

# .rodata:0x16C | 0x16C | size: 0xD
.obj str_gor_luigi_06_gor_00013c6c, local
	.string "gor_luigi_06"
.endobj str_gor_luigi_06_gor_00013c6c

# .rodata:0x179 | 0x179 | size: 0x3
.obj gap_03_00000179_rodata, global
.hidden gap_03_00000179_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000179_rodata

# .rodata:0x17C | 0x17C | size: 0xD
.obj str_gor_luigi_07_gor_00013c7c, local
	.string "gor_luigi_07"
.endobj str_gor_luigi_07_gor_00013c7c

# .rodata:0x189 | 0x189 | size: 0x3
.obj gap_03_00000189_rodata, global
.hidden gap_03_00000189_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000189_rodata

# .rodata:0x18C | 0x18C | size: 0xD
.obj str_gor_luigi_08_gor_00013c8c, local
	.string "gor_luigi_08"
.endobj str_gor_luigi_08_gor_00013c8c

# .rodata:0x199 | 0x199 | size: 0x3
.obj gap_03_00000199_rodata, global
.hidden gap_03_00000199_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000199_rodata

# .rodata:0x19C | 0x19C | size: 0xD
.obj str_gor_luigi_09_gor_00013c9c, local
	.string "gor_luigi_09"
.endobj str_gor_luigi_09_gor_00013c9c

# .rodata:0x1A9 | 0x1A9 | size: 0x3
.obj gap_03_000001A9_rodata, global
.hidden gap_03_000001A9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000001A9_rodata

# .rodata:0x1AC | 0x1AC | size: 0x10
.obj str_gor_luigi_yesno_gor_00013cac, local
	.string "gor_luigi_yesno"
.endobj str_gor_luigi_yesno_gor_00013cac

# .rodata:0x1BC | 0x1BC | size: 0xD
.obj str_gor_luigi_12_gor_00013cbc, local
	.string "gor_luigi_12"
.endobj str_gor_luigi_12_gor_00013cbc

# .rodata:0x1C9 | 0x1C9 | size: 0x3
.obj gap_03_000001C9_rodata, global
.hidden gap_03_000001C9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000001C9_rodata

# .rodata:0x1CC | 0x1CC | size: 0xD
.obj str_gor_luigi_11_gor_00013ccc, local
	.string "gor_luigi_11"
.endobj str_gor_luigi_11_gor_00013ccc

# .rodata:0x1D9 | 0x1D9 | size: 0x3
.obj gap_03_000001D9_rodata, global
.hidden gap_03_000001D9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000001D9_rodata

# .rodata:0x1DC | 0x1DC | size: 0xF
.obj str_gor_luigi_talk_gor_00013cdc, local
	.string "gor_luigi_talk"
.endobj str_gor_luigi_talk_gor_00013cdc

# .rodata:0x1EB | 0x1EB | size: 0x1
.obj gap_03_000001EB_rodata, global
.hidden gap_03_000001EB_rodata
	.byte 0x00
.endobj gap_03_000001EB_rodata

# .rodata:0x1EC | 0x1EC | size: 0xD
.obj str_gor_luigi_13_gor_00013cec, local
	.string "gor_luigi_13"
.endobj str_gor_luigi_13_gor_00013cec

# .rodata:0x1F9 | 0x1F9 | size: 0x3
.obj gap_03_000001F9_rodata, global
.hidden gap_03_000001F9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000001F9_rodata

# .rodata:0x1FC | 0x1FC | size: 0xF
.obj str_BGM_EVT_RUIJI1_gor_00013cfc, local
	.string "BGM_EVT_RUIJI1"
.endobj str_BGM_EVT_RUIJI1_gor_00013cfc
	.4byte 0x00000000
	.byte 0x00

# .rodata:0x210 | 0x210 | size: 0x8
.obj double_to_int_gor_00013d10, local
	.double 4503601774854144
.endobj double_to_int_gor_00013d10

# .rodata:0x218 | 0x218 | size: 0x7
.obj str_PCTsPCTsPCTs_gor_00013d18, local
	.string "%s%s%s"
.endobj str_PCTsPCTsPCTs_gor_00013d18

# .rodata:0x21F | 0x21F | size: 0x1
.obj gap_03_0000021F_rodata, global
.hidden gap_03_0000021F_rodata
	.byte 0x00
.endobj gap_03_0000021F_rodata

# .rodata:0x220 | 0x220 | size: 0x7
.obj str_gor_10_gor_00013d20, local
	.string "gor_10"
.endobj str_gor_10_gor_00013d20

# .rodata:0x227 | 0x227 | size: 0x1
.obj gap_03_00000227_rodata, global
.hidden gap_03_00000227_rodata
	.byte 0x00
.endobj gap_03_00000227_rodata

# .rodata:0x228 | 0x228 | size: 0x7
.obj str_gor_00_gor_00013d28, local
	.string "gor_00"
.endobj str_gor_00_gor_00013d28

# .rodata:0x22F | 0x22F | size: 0x1
.obj gap_03_0000022F_rodata, global
.hidden gap_03_0000022F_rodata
	.byte 0x00
.endobj gap_03_0000022F_rodata

# .rodata:0x230 | 0x230 | size: 0x7
.obj str_gor_01_gor_00013d30, local
	.string "gor_01"
.endobj str_gor_01_gor_00013d30

# .rodata:0x237 | 0x237 | size: 0x1
.obj gap_03_00000237_rodata, global
.hidden gap_03_00000237_rodata
	.byte 0x00
.endobj gap_03_00000237_rodata

# .rodata:0x238 | 0x238 | size: 0x7
.obj str_gor_02_gor_00013d38, local
	.string "gor_02"
.endobj str_gor_02_gor_00013d38

# .rodata:0x23F | 0x23F | size: 0x1
.obj gap_03_0000023F_rodata, global
.hidden gap_03_0000023F_rodata
	.byte 0x00
.endobj gap_03_0000023F_rodata

# .rodata:0x240 | 0x240 | size: 0x7
.obj str_gor_03_gor_00013d40, local
	.string "gor_03"
.endobj str_gor_03_gor_00013d40

# .rodata:0x247 | 0x247 | size: 0x1
.obj gap_03_00000247_rodata, global
.hidden gap_03_00000247_rodata
	.byte 0x00
.endobj gap_03_00000247_rodata

# .rodata:0x248 | 0x248 | size: 0x7
.obj str_gor_04_gor_00013d48, local
	.string "gor_04"
.endobj str_gor_04_gor_00013d48

# .rodata:0x24F | 0x24F | size: 0x1
.obj gap_03_0000024F_rodata, global
.hidden gap_03_0000024F_rodata
	.byte 0x00
.endobj gap_03_0000024F_rodata

# .rodata:0x250 | 0x250 | size: 0x7
.obj str_gor_11_gor_00013d50, local
	.string "gor_11"
.endobj str_gor_11_gor_00013d50

# .rodata:0x257 | 0x257 | size: 0x1
.obj gap_03_00000257_rodata, global
.hidden gap_03_00000257_rodata
	.byte 0x00
.endobj gap_03_00000257_rodata

# .rodata:0x258 | 0x258 | size: 0x7
.obj str_gor_12_gor_00013d58, local
	.string "gor_12"
.endobj str_gor_12_gor_00013d58

# .rodata:0x25F | 0x25F | size: 0x1
.obj gap_03_0000025F_rodata, global
.hidden gap_03_0000025F_rodata
	.byte 0x00
.endobj gap_03_0000025F_rodata

# .rodata:0x260 | 0x260 | size: 0x4
.obj str_gor_gor_00013d60, local
	.string "gor"
.endobj str_gor_gor_00013d60

# .rodata:0x264 | 0x264 | size: 0x4
.obj gap_03_00000264_rodata, global
.hidden gap_03_00000264_rodata
	.4byte 0x00000000
.endobj gap_03_00000264_rodata

# 0x00000000..0x00000858 | size: 0x858
.data
.balign 8

# .data:0x0 | 0x0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0xC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x10 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x14 | size: 0x4
.obj gap_04_00000014_data, global
.hidden gap_04_00000014_data
	.4byte 0x00000000
.endobj gap_04_00000014_data

# .data:0x18 | 0x18 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x20 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x24 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x28 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x30 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x34 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x38 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x3C | size: 0x4
.obj gap_04_0000003C_data, global
.hidden gap_04_0000003C_data
	.4byte 0x00000000
.endobj gap_04_0000003C_data

# .data:0x40 | 0x40 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x48 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x4C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x50 | size: 0x8
.obj _three$localstatic4$sqrtf, local
	.4byte 0x40080000
	.4byte 0x00000000
.endobj _three$localstatic4$sqrtf

# .data:0x58 | 0x58 | size: 0x8
.obj _half$localstatic3$sqrtf, local
	.4byte 0x3FE00000
	.4byte 0x00000000
.endobj _half$localstatic3$sqrtf

# .data:0x60 | 0x60 | size: 0x4C
.obj gor_villager_urouro_9_data_60, global
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_gor_00013b18
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte urouro_init_func
	.4byte str_me_gor_00013b18
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xF24C0A80
	.4byte 0xF24AF280
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte urouro_main_func
	.4byte str_me_gor_00013b18
	.4byte 0x00000002
	.4byte 0x00000001
.endobj gor_villager_urouro_9_data_60

# .data:0xAC | 0xAC | size: 0x6C
.obj inemuri_snd, local
	.4byte 0x0002005B
	.4byte unk_gor_00000104
	.4byte 0xFFFFFFFF
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_SLEE_gor_00013b1c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0002005B
	.4byte unk_gor_00000104
	.4byte 0xFE363C83
	.4byte 0x00010009
	.4byte 0x0000008C
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj inemuri_snd

# .data:0x118 | 0x118 | size: 0x40C
.obj mario_and_party_sleep, local
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x000004B0
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x00000384
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0x00000258
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0xFFFFFFFF
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_5A_gor_00013b34
	.4byte 0x0002005D
	.4byte inemuri_snd
	.4byte 0xFE363C8F
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PKR_N_1_gor_00013b3c
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PNK_N_1_gor_00013b44
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PBM_N_1_gor_00013b4c
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PYS_N_1_gor_00013b54
	.4byte 0x00010024
	.4byte 0x00000005
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PWD_N_1_gor_00013b5c
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PTR_N_1_gor_00013b64
	.4byte 0x00010024
	.4byte 0x00000007
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PCH_N_1_gor_00013b6c
	.4byte 0x00000031
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0x00000033
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_YAWN_gor_00013b74
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_5_gor_00013b8c
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_gor_00013b94
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020019
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0002001D
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002001D
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002001D
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00020036
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00020019
	.4byte 0xFE363C8F
	.4byte 0xFFFFFFFF
	.4byte 0x0001005F
	.4byte 0xFE363C8F
	.4byte 0x0001005B
	.4byte unk_gor_000000cc
	.4byte 0x00000021
	.4byte 0x0002001C
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PKR_S_1_gor_00013b9c
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PNK_S_1_gor_00013ba4
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PBM_S_1_gor_00013bac
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PYS_S_1_gor_00013bb4
	.4byte 0x00010024
	.4byte 0x00000005
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PWD_S_1_gor_00013bbc
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PTR_S_1_gor_00013bc4
	.4byte 0x00010024
	.4byte 0x00000007
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PCH_S_1_gor_00013bcc
	.4byte 0x00000031
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00020036
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0xFE363C83
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_gor_00013b94
	.4byte 0x00000021
	.4byte 0x0002001C
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_AWAK_gor_00013bd4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_5B_gor_00013bec
	.4byte 0x0001000A
	.4byte 0x00000226
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_gor_00013b94
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mario_and_party_sleep

# .data:0x524 | 0x524 | size: 0x334
.obj luigi_gor_first_talk_9_data_524, global
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF8406017
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_gor_luigi_00_gor_00013bf4
	.4byte 0x00000000
	.4byte str_me_gor_00013b18
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_2_gor_00013c04
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000191
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte str_gor_luigi_01_gor_00013c0c
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte str_gor_luigi_01_1_gor_00013c1c
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte str_me_gor_00013b18
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_5B_gor_00013bec
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xF8406017
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x00000038
	.4byte 0x0000006F
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte str_gor_luigi_02_gor_00013c2c
	.4byte 0x0002002F
	.4byte 0x00000070
	.4byte 0x000000A3
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte str_gor_luigi_03_gor_00013c3c
	.4byte 0x0002002F
	.4byte 0x000000A4
	.4byte 0x000000D6
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte str_gor_luigi_04_gor_00013c4c
	.4byte 0x0002002F
	.4byte 0x000000D7
	.4byte 0x00000104
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte str_gor_luigi_05_gor_00013c5c
	.4byte 0x0002002F
	.4byte 0x00000105
	.4byte 0x00000152
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte str_gor_luigi_06_gor_00013c6c
	.4byte 0x0002002F
	.4byte 0x00000153
	.4byte 0x00000174
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte str_gor_luigi_07_gor_00013c7c
	.4byte 0x0002002F
	.4byte 0x00000175
	.4byte 0x00000190
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte str_gor_luigi_08_gor_00013c8c
	.4byte 0x00010029
	.4byte 0x00000191
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte str_gor_luigi_09_gor_00013c9c
	.4byte 0x00000031
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte str_me_gor_00013b18
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_gor_luigi_yesno_gor_00013cac
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_gor_luigi_12_gor_00013cbc
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_gor_luigi_11_gor_00013ccc
	.4byte 0x0002005B
	.4byte johoya_data_alloc
	.4byte str_gor_luigi_talk_gor_00013cdc
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_win_other_select
	.4byte 0x00000012
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte johoya_data_free
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_gor_luigi_13_gor_00013cec
	.4byte 0x00000000
	.4byte str_me_gor_00013b18
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000400
	.4byte 0x0004005B
	.4byte evt_snd_bgmon_f
	.4byte 0x00000101
	.4byte str_BGM_EVT_RUIJI1_gor_00013cfc
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000400
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte mario_and_party_sleep
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte str_me_gor_00013b18
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0001000B
	.4byte 0xFAA2B580
	.4byte 0x0001005B
	.4byte johoya_luigi_newjoho_setreadflag
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000201
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000120
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000201
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000120
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj luigi_gor_first_talk_9_data_524
