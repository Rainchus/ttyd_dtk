.include "macros.inc"
.file "aji_02.o"

# 0x000000C8..0x000007B4 | size: 0x6EC
.text
.balign 4

# .text:0x0 | 0xC8 | size: 0x1F8
.fn ride_chk, local
/* 000000C8 0000018C  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 000000CC 00000190  7C 08 02 A6 */	mflr r0
/* 000000D0 00000194  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 000000D4 00000198  BF 21 00 94 */	stmw r25, 0x94(r1)
/* 000000D8 0000019C  7C 7F 1B 78 */	mr r31, r3
/* 000000DC 000001A0  7C 99 23 78 */	mr r25, r4
/* 000000E0 000001A4  48 00 61 5D */	bl marioGetPtr
/* 000000E4 000001A8  7C 7C 1B 78 */	mr r28, r3
/* 000000E8 000001AC  38 60 00 00 */	li r3, 0x0
/* 000000EC 000001B0  48 00 61 51 */	bl partyGetPtr
/* 000000F0 000001B4  2C 19 00 00 */	cmpwi r25, 0x0
/* 000000F4 000001B8  7C 7B 1B 78 */	mr r27, r3
/* 000000F8 000001BC  41 82 00 18 */	beq .L_00000110
/* 000000FC 000001C0  3C 60 00 00 */	lis r3, onoff$614@ha
/* 00000100 000001C4  38 80 00 00 */	li r4, 0x0
/* 00000104 000001C8  38 63 00 00 */	addi r3, r3, onoff$614@l
/* 00000108 000001CC  38 A0 00 78 */	li r5, 0x78
/* 0000010C 000001D0  48 00 61 31 */	bl memset
.L_00000110:
/* 00000110 000001D4  28 1B 00 00 */	cmplwi r27, 0x0
/* 00000114 000001D8  41 82 00 30 */	beq .L_00000144
/* 00000118 000001DC  88 1B 00 31 */	lbz r0, 0x31(r27)
/* 0000011C 000001E0  2C 00 00 04 */	cmpwi r0, 0x4
/* 00000120 000001E4  40 82 00 24 */	bne .L_00000144
/* 00000124 000001E8  80 1B 00 00 */	lwz r0, 0x0(r27)
/* 00000128 000001EC  54 00 05 EF */	rlwinm. r0, r0, 0, 23, 23
/* 0000012C 000001F0  41 82 00 18 */	beq .L_00000144
/* 00000130 000001F4  83 3C 01 E8 */	lwz r25, 0x1e8(r28)
/* 00000134 000001F8  28 19 00 00 */	cmplwi r25, 0x0
/* 00000138 000001FC  40 82 00 10 */	bne .L_00000148
/* 0000013C 00000200  83 3C 01 EC */	lwz r25, 0x1ec(r28)
/* 00000140 00000204  48 00 00 08 */	b .L_00000148
.L_00000144:
/* 00000144 00000208  83 3C 01 FC */	lwz r25, 0x1fc(r28)
.L_00000148:
/* 00000148 0000020C  3C 80 00 00 */	lis r4, str_A_hikaru_PCT02d_aji_00011af0@ha
/* 0000014C 00000210  3C 60 00 00 */	lis r3, onoff$614@ha
/* 00000150 00000214  3B 64 00 00 */	addi r27, r4, str_A_hikaru_PCT02d_aji_00011af0@l
/* 00000154 00000218  3B 40 00 00 */	li r26, 0x0
/* 00000158 0000021C  3B A3 00 00 */	addi r29, r3, onoff$614@l
/* 0000015C 00000220  3B C0 00 00 */	li r30, 0x0
/* 00000160 00000224  3B 80 00 1E */	li r28, 0x1e
.L_00000164:
/* 00000164 00000228  28 19 00 00 */	cmplwi r25, 0x0
/* 00000168 0000022C  41 82 00 34 */	beq .L_0000019C
/* 0000016C 00000230  7F 64 DB 78 */	mr r4, r27
/* 00000170 00000234  38 61 00 48 */	addi r3, r1, 0x48
/* 00000174 00000238  38 BA 00 01 */	addi r5, r26, 0x1
/* 00000178 0000023C  4C C6 31 82 */	crclr cr1eq
/* 0000017C 00000240  48 00 60 C1 */	bl sprintf
/* 00000180 00000244  80 79 00 08 */	lwz r3, 0x8(r25)
/* 00000184 00000248  38 81 00 48 */	addi r4, r1, 0x48
/* 00000188 0000024C  80 63 00 00 */	lwz r3, 0x0(r3)
/* 0000018C 00000250  48 00 60 B1 */	bl strcmp
/* 00000190 00000254  2C 03 00 00 */	cmpwi r3, 0x0
/* 00000194 00000258  40 82 00 08 */	bne .L_0000019C
/* 00000198 0000025C  7F 9D F1 2E */	stwx r28, r29, r30
.L_0000019C:
/* 0000019C 00000260  3B 5A 00 01 */	addi r26, r26, 0x1
/* 000001A0 00000264  3B DE 00 04 */	addi r30, r30, 0x4
/* 000001A4 00000268  2C 1A 00 1E */	cmpwi r26, 0x1e
/* 000001A8 0000026C  41 80 FF BC */	blt .L_00000164
/* 000001AC 00000270  3C 60 00 00 */	lis r3, onoff$614@ha
/* 000001B0 00000274  3B 60 00 00 */	li r27, 0x0
/* 000001B4 00000278  3B A3 00 00 */	addi r29, r3, onoff$614@l
/* 000001B8 0000027C  3B C0 00 00 */	li r30, 0x0
.L_000001BC:
/* 000001BC 00000280  7C 7D F0 2E */	lwzx r3, r29, r30
/* 000001C0 00000284  2C 03 00 00 */	cmpwi r3, 0x0
/* 000001C4 00000288  40 81 00 0C */	ble .L_000001D0
/* 000001C8 0000028C  38 03 FF FF */	subi r0, r3, 0x1
/* 000001CC 00000290  7C 1D F1 2E */	stwx r0, r29, r30
.L_000001D0:
/* 000001D0 00000294  7C 1D F0 2E */	lwzx r0, r29, r30
/* 000001D4 00000298  2C 00 00 00 */	cmpwi r0, 0x0
/* 000001D8 0000029C  41 82 00 50 */	beq .L_00000228
/* 000001DC 000002A0  3C 80 00 00 */	lis r4, str_hikaru_PCT02d_aji_00011b00@ha
/* 000001E0 000002A4  38 61 00 08 */	addi r3, r1, 0x8
/* 000001E4 000002A8  38 84 00 00 */	addi r4, r4, str_hikaru_PCT02d_aji_00011b00@l
/* 000001E8 000002AC  38 BB 00 01 */	addi r5, r27, 0x1
/* 000001EC 000002B0  4C C6 31 82 */	crclr cr1eq
/* 000001F0 000002B4  48 00 60 4D */	bl sprintf
/* 000001F4 000002B8  38 61 00 08 */	addi r3, r1, 0x8
/* 000001F8 000002BC  38 80 00 01 */	li r4, 0x1
/* 000001FC 000002C0  48 00 60 41 */	bl mapGrpFlagOff
/* 00000200 000002C4  3C 80 00 00 */	lis r4, str_nashi_PCT02d_aji_00011b0c@ha
/* 00000204 000002C8  38 61 00 08 */	addi r3, r1, 0x8
/* 00000208 000002CC  38 84 00 00 */	addi r4, r4, str_nashi_PCT02d_aji_00011b0c@l
/* 0000020C 000002D0  38 BB 00 01 */	addi r5, r27, 0x1
/* 00000210 000002D4  4C C6 31 82 */	crclr cr1eq
/* 00000214 000002D8  48 00 60 29 */	bl sprintf
/* 00000218 000002DC  38 61 00 08 */	addi r3, r1, 0x8
/* 0000021C 000002E0  38 80 00 01 */	li r4, 0x1
/* 00000220 000002E4  48 00 60 1D */	bl mapGrpFlagOn
/* 00000224 000002E8  48 00 00 4C */	b .L_00000270
.L_00000228:
/* 00000228 000002EC  3C 80 00 00 */	lis r4, str_hikaru_PCT02d_aji_00011b00@ha
/* 0000022C 000002F0  38 61 00 08 */	addi r3, r1, 0x8
/* 00000230 000002F4  38 84 00 00 */	addi r4, r4, str_hikaru_PCT02d_aji_00011b00@l
/* 00000234 000002F8  38 BB 00 01 */	addi r5, r27, 0x1
/* 00000238 000002FC  4C C6 31 82 */	crclr cr1eq
/* 0000023C 00000300  48 00 60 01 */	bl sprintf
/* 00000240 00000304  38 61 00 08 */	addi r3, r1, 0x8
/* 00000244 00000308  38 80 00 01 */	li r4, 0x1
/* 00000248 0000030C  48 00 5F F5 */	bl mapGrpFlagOn
/* 0000024C 00000310  3C 80 00 00 */	lis r4, str_nashi_PCT02d_aji_00011b0c@ha
/* 00000250 00000314  38 61 00 08 */	addi r3, r1, 0x8
/* 00000254 00000318  38 84 00 00 */	addi r4, r4, str_nashi_PCT02d_aji_00011b0c@l
/* 00000258 0000031C  38 BB 00 01 */	addi r5, r27, 0x1
/* 0000025C 00000320  4C C6 31 82 */	crclr cr1eq
/* 00000260 00000324  48 00 5F DD */	bl sprintf
/* 00000264 00000328  38 61 00 08 */	addi r3, r1, 0x8
/* 00000268 0000032C  38 80 00 01 */	li r4, 0x1
/* 0000026C 00000330  48 00 5F D1 */	bl mapGrpFlagOff
.L_00000270:
/* 00000270 00000334  3B 7B 00 01 */	addi r27, r27, 0x1
/* 00000274 00000338  3B DE 00 04 */	addi r30, r30, 0x4
/* 00000278 0000033C  2C 1B 00 1E */	cmpwi r27, 0x1e
/* 0000027C 00000340  41 80 FF 40 */	blt .L_000001BC
/* 00000280 00000344  3C 80 F5 DE */	lis r4, 0xf5de
/* 00000284 00000348  7F E3 FB 78 */	mr r3, r31
/* 00000288 0000034C  38 84 01 80 */	addi r4, r4, 0x180
/* 0000028C 00000350  48 00 5F B1 */	bl evtGetValue
/* 00000290 00000354  38 00 01 6A */	li r0, 0x16a
/* 00000294 00000358  38 63 FE 96 */	subi r3, r3, 0x16a
/* 00000298 0000035C  6C 04 80 00 */	xoris r4, r0, 0x8000
/* 0000029C 00000360  38 00 00 02 */	li r0, 0x2
/* 000002A0 00000364  7C 63 20 14 */	addc r3, r3, r4
/* 000002A4 00000368  7C 63 19 10 */	subfe r3, r3, r3
/* 000002A8 0000036C  7C 03 18 38 */	and r3, r0, r3
/* 000002AC 00000370  BB 21 00 94 */	lmw r25, 0x94(r1)
/* 000002B0 00000374  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 000002B4 00000378  7C 08 03 A6 */	mtlr r0
/* 000002B8 0000037C  38 21 00 B0 */	addi r1, r1, 0xb0
/* 000002BC 00000380  4E 80 00 20 */	blr
.endfn ride_chk

# .text:0x1F8 | 0x2C0 | size: 0x100
.fn thunder_main, local
/* 000002C0 00000384  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000002C4 00000388  7C 08 02 A6 */	mflr r0
/* 000002C8 0000038C  90 01 00 14 */	stw r0, 0x14(r1)
/* 000002CC 00000390  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 000002D0 00000394  7C 7E 1B 78 */	mr r30, r3
/* 000002D4 00000398  7C 9F 23 78 */	mr r31, r4
/* 000002D8 0000039C  48 00 5F 65 */	bl marioGetPtr
/* 000002DC 000003A0  2C 1F 00 00 */	cmpwi r31, 0x0
/* 000002E0 000003A4  7C 7F 1B 78 */	mr r31, r3
/* 000002E4 000003A8  41 82 00 0C */	beq .L_000002F0
/* 000002E8 000003AC  38 00 00 00 */	li r0, 0x0
/* 000002EC 000003B0  90 1E 00 78 */	stw r0, 0x78(r30)
.L_000002F0:
/* 000002F0 000003B4  80 1E 00 78 */	lwz r0, 0x78(r30)
/* 000002F4 000003B8  2C 00 00 00 */	cmpwi r0, 0x0
/* 000002F8 000003BC  40 82 00 9C */	bne .L_00000394
/* 000002FC 000003C0  A0 1F 00 2E */	lhz r0, 0x2e(r31)
/* 00000300 000003C4  28 00 00 20 */	cmplwi r0, 0x20
/* 00000304 000003C8  40 82 00 A4 */	bne .L_000003A8
/* 00000308 000003CC  38 00 00 01 */	li r0, 0x1
/* 0000030C 000003D0  3C 60 00 00 */	lis r3, str_SFX_STG7_ELECTRIC_SH_aji_00011b18@ha
/* 00000310 000003D4  90 1E 00 78 */	stw r0, 0x78(r30)
/* 00000314 000003D8  38 63 00 00 */	addi r3, r3, str_SFX_STG7_ELECTRIC_SH_aji_00011b18@l
/* 00000318 000003DC  38 9F 00 8C */	addi r4, r31, 0x8c
/* 0000031C 000003E0  48 00 5F 21 */	bl psndSFXOn_3D
/* 00000320 000003E4  3C 80 00 00 */	lis r4, float_30_aji_00011b34@ha
/* 00000324 000003E8  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 00000328 000003EC  C0 44 00 00 */	lfs f2, float_30_aji_00011b34@l(r4)
/* 0000032C 000003F0  3C 60 00 00 */	lis r3, float_1_aji_00011b38@ha
/* 00000330 000003F4  38 83 00 00 */	addi r4, r3, float_1_aji_00011b38@l
/* 00000334 000003F8  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 00000338 000003FC  EC 42 00 2A */	fadds f2, f2, f0
/* 0000033C 00000400  C0 84 00 00 */	lfs f4, 0x0(r4)
/* 00000340 00000404  C0 7F 00 94 */	lfs f3, 0x94(r31)
/* 00000344 00000408  38 60 00 00 */	li r3, 0x0
/* 00000348 0000040C  38 80 00 64 */	li r4, 0x64
/* 0000034C 00000410  48 00 5E F1 */	bl effAkariChargeN64Entry
/* 00000350 00000414  80 83 00 0C */	lwz r4, 0xc(r3)
/* 00000354 00000418  38 00 00 1E */	li r0, 0x1e
/* 00000358 0000041C  38 C0 00 E7 */	li r6, 0xe7
/* 0000035C 00000420  38 A0 00 DB */	li r5, 0xdb
/* 00000360 00000424  90 04 00 18 */	stw r0, 0x18(r4)
/* 00000364 00000428  38 00 00 00 */	li r0, 0x0
/* 00000368 0000042C  80 83 00 0C */	lwz r4, 0xc(r3)
/* 0000036C 00000430  90 C4 00 1C */	stw r6, 0x1c(r4)
/* 00000370 00000434  80 83 00 0C */	lwz r4, 0xc(r3)
/* 00000374 00000438  90 A4 00 20 */	stw r5, 0x20(r4)
/* 00000378 0000043C  80 83 00 0C */	lwz r4, 0xc(r3)
/* 0000037C 00000440  90 04 00 28 */	stw r0, 0x28(r4)
/* 00000380 00000444  80 83 00 0C */	lwz r4, 0xc(r3)
/* 00000384 00000448  90 04 00 2C */	stw r0, 0x2c(r4)
/* 00000388 0000044C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 0000038C 00000450  90 03 00 30 */	stw r0, 0x30(r3)
/* 00000390 00000454  48 00 00 18 */	b .L_000003A8
.L_00000394:
/* 00000394 00000458  A0 1F 00 2E */	lhz r0, 0x2e(r31)
/* 00000398 0000045C  28 00 00 20 */	cmplwi r0, 0x20
/* 0000039C 00000460  41 82 00 0C */	beq .L_000003A8
/* 000003A0 00000464  38 00 00 00 */	li r0, 0x0
/* 000003A4 00000468  90 1E 00 78 */	stw r0, 0x78(r30)
.L_000003A8:
/* 000003A8 0000046C  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 000003AC 00000470  38 60 00 00 */	li r3, 0x0
/* 000003B0 00000474  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000003B4 00000478  7C 08 03 A6 */	mtlr r0
/* 000003B8 0000047C  38 21 00 10 */	addi r1, r1, 0x10
/* 000003BC 00000480  4E 80 00 20 */	blr
.endfn thunder_main

# .text:0x2F8 | 0x3C0 | size: 0x150
.fn loop_onoff, local
/* 000003C0 00000484  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 000003C4 00000488  7C 08 02 A6 */	mflr r0
/* 000003C8 0000048C  2C 04 00 00 */	cmpwi r4, 0x0
/* 000003CC 00000490  90 01 00 54 */	stw r0, 0x54(r1)
/* 000003D0 00000494  BF C1 00 48 */	stmw r30, 0x48(r1)
/* 000003D4 00000498  7C 7F 1B 78 */	mr r31, r3
/* 000003D8 0000049C  41 82 00 14 */	beq .L_000003EC
/* 000003DC 000004A0  38 00 00 00 */	li r0, 0x0
/* 000003E0 000004A4  90 1F 00 78 */	stw r0, 0x78(r31)
/* 000003E4 000004A8  90 1F 00 7C */	stw r0, 0x7c(r31)
/* 000003E8 000004AC  90 1F 00 80 */	stw r0, 0x80(r31)
.L_000003EC:
/* 000003EC 000004B0  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 000003F0 000004B4  38 03 00 01 */	addi r0, r3, 0x1
/* 000003F4 000004B8  90 1F 00 78 */	stw r0, 0x78(r31)
/* 000003F8 000004BC  80 1F 00 78 */	lwz r0, 0x78(r31)
/* 000003FC 000004C0  2C 00 00 02 */	cmpwi r0, 0x2
/* 00000400 000004C4  40 81 00 48 */	ble .L_00000448
/* 00000404 000004C8  38 80 00 00 */	li r4, 0x0
/* 00000408 000004CC  90 9F 00 78 */	stw r4, 0x78(r31)
/* 0000040C 000004D0  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 00000410 000004D4  38 03 00 01 */	addi r0, r3, 0x1
/* 00000414 000004D8  90 1F 00 7C */	stw r0, 0x7c(r31)
/* 00000418 000004DC  80 1F 00 7C */	lwz r0, 0x7c(r31)
/* 0000041C 000004E0  2C 00 00 1E */	cmpwi r0, 0x1e
/* 00000420 000004E4  40 81 00 28 */	ble .L_00000448
/* 00000424 000004E8  90 9F 00 7C */	stw r4, 0x7c(r31)
/* 00000428 000004EC  80 7F 00 80 */	lwz r3, 0x80(r31)
/* 0000042C 000004F0  38 03 00 01 */	addi r0, r3, 0x1
/* 00000430 000004F4  90 1F 00 80 */	stw r0, 0x80(r31)
/* 00000434 000004F8  80 1F 00 80 */	lwz r0, 0x80(r31)
/* 00000438 000004FC  2C 00 00 01 */	cmpwi r0, 0x1
/* 0000043C 00000500  40 81 00 0C */	ble .L_00000448
/* 00000440 00000504  38 60 00 02 */	li r3, 0x2
/* 00000444 00000508  48 00 00 B8 */	b .L_000004FC
.L_00000448:
/* 00000448 0000050C  3B C0 00 01 */	li r30, 0x1
.L_0000044C:
/* 0000044C 00000510  80 1F 00 7C */	lwz r0, 0x7c(r31)
/* 00000450 00000514  7C 1E 00 00 */	cmpw r30, r0
/* 00000454 00000518  40 82 00 50 */	bne .L_000004A4
/* 00000458 0000051C  3C 60 00 00 */	lis r3, str_hikaru_PCT02d_aji_00011b00@ha
/* 0000045C 00000520  7F C5 F3 78 */	mr r5, r30
/* 00000460 00000524  38 83 00 00 */	addi r4, r3, str_hikaru_PCT02d_aji_00011b00@l
/* 00000464 00000528  38 61 00 08 */	addi r3, r1, 0x8
/* 00000468 0000052C  4C C6 31 82 */	crclr cr1eq
/* 0000046C 00000530  48 00 5D D1 */	bl sprintf
/* 00000470 00000534  38 61 00 08 */	addi r3, r1, 0x8
/* 00000474 00000538  38 80 00 01 */	li r4, 0x1
/* 00000478 0000053C  48 00 5D C5 */	bl mapGrpFlagOff
/* 0000047C 00000540  3C 60 00 00 */	lis r3, str_nashi_PCT02d_aji_00011b0c@ha
/* 00000480 00000544  7F C5 F3 78 */	mr r5, r30
/* 00000484 00000548  38 83 00 00 */	addi r4, r3, str_nashi_PCT02d_aji_00011b0c@l
/* 00000488 0000054C  38 61 00 08 */	addi r3, r1, 0x8
/* 0000048C 00000550  4C C6 31 82 */	crclr cr1eq
/* 00000490 00000554  48 00 5D AD */	bl sprintf
/* 00000494 00000558  38 61 00 08 */	addi r3, r1, 0x8
/* 00000498 0000055C  38 80 00 01 */	li r4, 0x1
/* 0000049C 00000560  48 00 5D A1 */	bl mapGrpFlagOn
/* 000004A0 00000564  48 00 00 4C */	b .L_000004EC
.L_000004A4:
/* 000004A4 00000568  3C 60 00 00 */	lis r3, str_hikaru_PCT02d_aji_00011b00@ha
/* 000004A8 0000056C  7F C5 F3 78 */	mr r5, r30
/* 000004AC 00000570  38 83 00 00 */	addi r4, r3, str_hikaru_PCT02d_aji_00011b00@l
/* 000004B0 00000574  38 61 00 08 */	addi r3, r1, 0x8
/* 000004B4 00000578  4C C6 31 82 */	crclr cr1eq
/* 000004B8 0000057C  48 00 5D 85 */	bl sprintf
/* 000004BC 00000580  38 61 00 08 */	addi r3, r1, 0x8
/* 000004C0 00000584  38 80 00 01 */	li r4, 0x1
/* 000004C4 00000588  48 00 5D 79 */	bl mapGrpFlagOn
/* 000004C8 0000058C  3C 60 00 00 */	lis r3, str_nashi_PCT02d_aji_00011b0c@ha
/* 000004CC 00000590  7F C5 F3 78 */	mr r5, r30
/* 000004D0 00000594  38 83 00 00 */	addi r4, r3, str_nashi_PCT02d_aji_00011b0c@l
/* 000004D4 00000598  38 61 00 08 */	addi r3, r1, 0x8
/* 000004D8 0000059C  4C C6 31 82 */	crclr cr1eq
/* 000004DC 000005A0  48 00 5D 61 */	bl sprintf
/* 000004E0 000005A4  38 61 00 08 */	addi r3, r1, 0x8
/* 000004E4 000005A8  38 80 00 01 */	li r4, 0x1
/* 000004E8 000005AC  48 00 5D 55 */	bl mapGrpFlagOff
.L_000004EC:
/* 000004EC 000005B0  3B DE 00 01 */	addi r30, r30, 0x1
/* 000004F0 000005B4  2C 1E 00 1E */	cmpwi r30, 0x1e
/* 000004F4 000005B8  40 81 FF 58 */	ble .L_0000044C
/* 000004F8 000005BC  38 60 00 00 */	li r3, 0x0
.L_000004FC:
/* 000004FC 000005C0  BB C1 00 48 */	lmw r30, 0x48(r1)
/* 00000500 000005C4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 00000504 000005C8  7C 08 03 A6 */	mtlr r0
/* 00000508 000005CC  38 21 00 50 */	addi r1, r1, 0x50
/* 0000050C 000005D0  4E 80 00 20 */	blr
.endfn loop_onoff

# .text:0x448 | 0x510 | size: 0xB0
.fn all_flag_off, local
/* 00000510 000005D4  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 00000514 000005D8  7C 08 02 A6 */	mflr r0
/* 00000518 000005DC  3C A0 00 00 */	lis r5, str_hikaru_PCT02d_aji_00011b00@ha
/* 0000051C 000005E0  3C 80 00 00 */	lis r4, str_nashi_PCT02d_aji_00011b0c@ha
/* 00000520 000005E4  90 01 00 64 */	stw r0, 0x64(r1)
/* 00000524 000005E8  3C 60 00 00 */	lis r3, str_A_hikaru_PCT02d_aji_00011af0@ha
/* 00000528 000005EC  BF 81 00 50 */	stmw r28, 0x50(r1)
/* 0000052C 000005F0  3B 80 00 01 */	li r28, 0x1
/* 00000530 000005F4  3B A5 00 00 */	addi r29, r5, str_hikaru_PCT02d_aji_00011b00@l
/* 00000534 000005F8  3B C4 00 00 */	addi r30, r4, str_nashi_PCT02d_aji_00011b0c@l
/* 00000538 000005FC  3B E3 00 00 */	addi r31, r3, str_A_hikaru_PCT02d_aji_00011af0@l
.L_0000053C:
/* 0000053C 00000600  7F A4 EB 78 */	mr r4, r29
/* 00000540 00000604  7F 85 E3 78 */	mr r5, r28
/* 00000544 00000608  38 61 00 08 */	addi r3, r1, 0x8
/* 00000548 0000060C  4C C6 31 82 */	crclr cr1eq
/* 0000054C 00000610  48 00 5C F1 */	bl sprintf
/* 00000550 00000614  38 61 00 08 */	addi r3, r1, 0x8
/* 00000554 00000618  38 80 00 01 */	li r4, 0x1
/* 00000558 0000061C  48 00 5C E5 */	bl mapGrpFlagOn
/* 0000055C 00000620  7F C4 F3 78 */	mr r4, r30
/* 00000560 00000624  7F 85 E3 78 */	mr r5, r28
/* 00000564 00000628  38 61 00 08 */	addi r3, r1, 0x8
/* 00000568 0000062C  4C C6 31 82 */	crclr cr1eq
/* 0000056C 00000630  48 00 5C D1 */	bl sprintf
/* 00000570 00000634  38 61 00 08 */	addi r3, r1, 0x8
/* 00000574 00000638  38 80 00 01 */	li r4, 0x1
/* 00000578 0000063C  48 00 5C C5 */	bl mapGrpFlagOn
/* 0000057C 00000640  7F E4 FB 78 */	mr r4, r31
/* 00000580 00000644  7F 85 E3 78 */	mr r5, r28
/* 00000584 00000648  38 61 00 08 */	addi r3, r1, 0x8
/* 00000588 0000064C  4C C6 31 82 */	crclr cr1eq
/* 0000058C 00000650  48 00 5C B1 */	bl sprintf
/* 00000590 00000654  38 61 00 08 */	addi r3, r1, 0x8
/* 00000594 00000658  38 80 08 00 */	li r4, 0x800
/* 00000598 0000065C  48 00 5C A5 */	bl hitGrpAttrOff
/* 0000059C 00000660  3B 9C 00 01 */	addi r28, r28, 0x1
/* 000005A0 00000664  2C 1C 00 1E */	cmpwi r28, 0x1e
/* 000005A4 00000668  40 81 FF 98 */	ble .L_0000053C
/* 000005A8 0000066C  BB 81 00 50 */	lmw r28, 0x50(r1)
/* 000005AC 00000670  38 60 00 02 */	li r3, 0x2
/* 000005B0 00000674  80 01 00 64 */	lwz r0, 0x64(r1)
/* 000005B4 00000678  7C 08 03 A6 */	mtlr r0
/* 000005B8 0000067C  38 21 00 60 */	addi r1, r1, 0x60
/* 000005BC 00000680  4E 80 00 20 */	blr
.endfn all_flag_off

# .text:0x4F8 | 0x5C0 | size: 0x16C
.fn hikaru_on_func, local
/* 000005C0 00000684  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 000005C4 00000688  7C 08 02 A6 */	mflr r0
/* 000005C8 0000068C  3C 80 FD 05 */	lis r4, 0xfd05
/* 000005CC 00000690  90 01 00 64 */	stw r0, 0x64(r1)
/* 000005D0 00000694  38 84 0F 8A */	addi r4, r4, 0xf8a
/* 000005D4 00000698  BF 81 00 50 */	stmw r28, 0x50(r1)
/* 000005D8 0000069C  48 00 5C 65 */	bl evtGetValue
/* 000005DC 000006A0  3C 80 00 00 */	lis r4, root_data@ha
/* 000005E0 000006A4  54 60 18 38 */	slwi r0, r3, 3
/* 000005E4 000006A8  38 84 00 00 */	addi r4, r4, root_data@l
/* 000005E8 000006AC  3B E0 00 01 */	li r31, 0x1
/* 000005EC 000006B0  7C 64 02 14 */	add r3, r4, r0
/* 000005F0 000006B4  7F C4 00 2E */	lwzx r30, r4, r0
/* 000005F4 000006B8  83 A3 00 04 */	lwz r29, 0x4(r3)
.L_000005F8:
/* 000005F8 000006BC  7F C3 F3 78 */	mr r3, r30
/* 000005FC 000006C0  3B 80 00 00 */	li r28, 0x0
/* 00000600 000006C4  7F A9 03 A6 */	mtctr r29
/* 00000604 000006C8  2C 1D 00 00 */	cmpwi r29, 0x0
/* 00000608 000006CC  40 81 00 8C */	ble .L_00000694
.L_0000060C:
/* 0000060C 000006D0  88 03 00 00 */	lbz r0, 0x0(r3)
/* 00000610 000006D4  7C 1F 00 00 */	cmpw r31, r0
/* 00000614 000006D8  40 82 00 74 */	bne .L_00000688
/* 00000618 000006DC  3C 60 00 00 */	lis r3, str_hikaru_PCT02d_aji_00011b00@ha
/* 0000061C 000006E0  7F E5 FB 78 */	mr r5, r31
/* 00000620 000006E4  38 83 00 00 */	addi r4, r3, str_hikaru_PCT02d_aji_00011b00@l
/* 00000624 000006E8  38 61 00 08 */	addi r3, r1, 0x8
/* 00000628 000006EC  4C C6 31 82 */	crclr cr1eq
/* 0000062C 000006F0  48 00 5C 11 */	bl sprintf
/* 00000630 000006F4  38 61 00 08 */	addi r3, r1, 0x8
/* 00000634 000006F8  38 80 00 01 */	li r4, 0x1
/* 00000638 000006FC  48 00 5C 05 */	bl mapGrpFlagOff
/* 0000063C 00000700  3C 60 00 00 */	lis r3, str_nashi_PCT02d_aji_00011b0c@ha
/* 00000640 00000704  7F E5 FB 78 */	mr r5, r31
/* 00000644 00000708  38 83 00 00 */	addi r4, r3, str_nashi_PCT02d_aji_00011b0c@l
/* 00000648 0000070C  38 61 00 08 */	addi r3, r1, 0x8
/* 0000064C 00000710  4C C6 31 82 */	crclr cr1eq
/* 00000650 00000714  48 00 5B ED */	bl sprintf
/* 00000654 00000718  38 61 00 08 */	addi r3, r1, 0x8
/* 00000658 0000071C  38 80 00 01 */	li r4, 0x1
/* 0000065C 00000720  48 00 5B E1 */	bl mapGrpFlagOn
/* 00000660 00000724  3C 60 00 00 */	lis r3, str_A_hikaru_PCT02d_aji_00011af0@ha
/* 00000664 00000728  7F E5 FB 78 */	mr r5, r31
/* 00000668 0000072C  38 83 00 00 */	addi r4, r3, str_A_hikaru_PCT02d_aji_00011af0@l
/* 0000066C 00000730  38 61 00 08 */	addi r3, r1, 0x8
/* 00000670 00000734  4C C6 31 82 */	crclr cr1eq
/* 00000674 00000738  48 00 5B C9 */	bl sprintf
/* 00000678 0000073C  38 61 00 08 */	addi r3, r1, 0x8
/* 0000067C 00000740  38 80 08 00 */	li r4, 0x800
/* 00000680 00000744  48 00 5B BD */	bl hitGrpAttrOff
/* 00000684 00000748  48 00 00 10 */	b .L_00000694
.L_00000688:
/* 00000688 0000074C  3B 9C 00 01 */	addi r28, r28, 0x1
/* 0000068C 00000750  38 63 00 01 */	addi r3, r3, 0x1
/* 00000690 00000754  42 00 FF 7C */	bdnz .L_0000060C
.L_00000694:
/* 00000694 00000758  7C 1C E8 00 */	cmpw r28, r29
/* 00000698 0000075C  41 80 00 70 */	blt .L_00000708
/* 0000069C 00000760  3C 60 00 00 */	lis r3, str_hikaru_PCT02d_aji_00011b00@ha
/* 000006A0 00000764  7F E5 FB 78 */	mr r5, r31
/* 000006A4 00000768  38 83 00 00 */	addi r4, r3, str_hikaru_PCT02d_aji_00011b00@l
/* 000006A8 0000076C  38 61 00 08 */	addi r3, r1, 0x8
/* 000006AC 00000770  4C C6 31 82 */	crclr cr1eq
/* 000006B0 00000774  48 00 5B 8D */	bl sprintf
/* 000006B4 00000778  38 61 00 08 */	addi r3, r1, 0x8
/* 000006B8 0000077C  38 80 00 01 */	li r4, 0x1
/* 000006BC 00000780  48 00 5B 81 */	bl mapGrpFlagOn
/* 000006C0 00000784  3C 60 00 00 */	lis r3, str_nashi_PCT02d_aji_00011b0c@ha
/* 000006C4 00000788  7F E5 FB 78 */	mr r5, r31
/* 000006C8 0000078C  38 83 00 00 */	addi r4, r3, str_nashi_PCT02d_aji_00011b0c@l
/* 000006CC 00000790  38 61 00 08 */	addi r3, r1, 0x8
/* 000006D0 00000794  4C C6 31 82 */	crclr cr1eq
/* 000006D4 00000798  48 00 5B 69 */	bl sprintf
/* 000006D8 0000079C  38 61 00 08 */	addi r3, r1, 0x8
/* 000006DC 000007A0  38 80 00 01 */	li r4, 0x1
/* 000006E0 000007A4  48 00 5B 5D */	bl mapGrpFlagOff
/* 000006E4 000007A8  3C 60 00 00 */	lis r3, str_A_hikaru_PCT02d_aji_00011af0@ha
/* 000006E8 000007AC  7F E5 FB 78 */	mr r5, r31
/* 000006EC 000007B0  38 83 00 00 */	addi r4, r3, str_A_hikaru_PCT02d_aji_00011af0@l
/* 000006F0 000007B4  38 61 00 08 */	addi r3, r1, 0x8
/* 000006F4 000007B8  4C C6 31 82 */	crclr cr1eq
/* 000006F8 000007BC  48 00 5B 45 */	bl sprintf
/* 000006FC 000007C0  38 61 00 08 */	addi r3, r1, 0x8
/* 00000700 000007C4  38 80 08 00 */	li r4, 0x800
/* 00000704 000007C8  48 00 5B 39 */	bl hitGrpAttrOn
.L_00000708:
/* 00000708 000007CC  3B FF 00 01 */	addi r31, r31, 0x1
/* 0000070C 000007D0  2C 1F 00 1E */	cmpwi r31, 0x1e
/* 00000710 000007D4  40 81 FE E8 */	ble .L_000005F8
/* 00000714 000007D8  BB 81 00 50 */	lmw r28, 0x50(r1)
/* 00000718 000007DC  38 60 00 02 */	li r3, 0x2
/* 0000071C 000007E0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 00000720 000007E4  7C 08 03 A6 */	mtlr r0
/* 00000724 000007E8  38 21 00 60 */	addi r1, r1, 0x60
/* 00000728 000007EC  4E 80 00 20 */	blr
.endfn hikaru_on_func

# .text:0x664 | 0x72C | size: 0x88
.fn hikaru_off_func, local
/* 0000072C 000007F0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 00000730 000007F4  7C 08 02 A6 */	mflr r0
/* 00000734 000007F8  3C 80 00 00 */	lis r4, str_hikaru_PCT02d_aji_00011b00@ha
/* 00000738 000007FC  3C 60 00 00 */	lis r3, str_nashi_PCT02d_aji_00011b0c@ha
/* 0000073C 00000800  90 01 00 64 */	stw r0, 0x64(r1)
/* 00000740 00000804  BF A1 00 54 */	stmw r29, 0x54(r1)
/* 00000744 00000808  3B C4 00 00 */	addi r30, r4, str_hikaru_PCT02d_aji_00011b00@l
/* 00000748 0000080C  3B A0 00 01 */	li r29, 0x1
/* 0000074C 00000810  3B E3 00 00 */	addi r31, r3, str_nashi_PCT02d_aji_00011b0c@l
.L_00000750:
/* 00000750 00000814  7F C4 F3 78 */	mr r4, r30
/* 00000754 00000818  7F A5 EB 78 */	mr r5, r29
/* 00000758 0000081C  38 61 00 08 */	addi r3, r1, 0x8
/* 0000075C 00000820  4C C6 31 82 */	crclr cr1eq
/* 00000760 00000824  48 00 5A DD */	bl sprintf
/* 00000764 00000828  38 61 00 08 */	addi r3, r1, 0x8
/* 00000768 0000082C  38 80 00 01 */	li r4, 0x1
/* 0000076C 00000830  48 00 5A D1 */	bl mapGrpFlagOn
/* 00000770 00000834  7F E4 FB 78 */	mr r4, r31
/* 00000774 00000838  7F A5 EB 78 */	mr r5, r29
/* 00000778 0000083C  38 61 00 08 */	addi r3, r1, 0x8
/* 0000077C 00000840  4C C6 31 82 */	crclr cr1eq
/* 00000780 00000844  48 00 5A BD */	bl sprintf
/* 00000784 00000848  38 61 00 08 */	addi r3, r1, 0x8
/* 00000788 0000084C  38 80 00 01 */	li r4, 0x1
/* 0000078C 00000850  48 00 5A B1 */	bl mapGrpFlagOn
/* 00000790 00000854  3B BD 00 01 */	addi r29, r29, 0x1
/* 00000794 00000858  2C 1D 00 1E */	cmpwi r29, 0x1e
/* 00000798 0000085C  40 81 FF B8 */	ble .L_00000750
/* 0000079C 00000860  BB A1 00 54 */	lmw r29, 0x54(r1)
/* 000007A0 00000864  38 60 00 02 */	li r3, 0x2
/* 000007A4 00000868  80 01 00 64 */	lwz r0, 0x64(r1)
/* 000007A8 0000086C  7C 08 03 A6 */	mtlr r0
/* 000007AC 00000870  38 21 00 60 */	addi r1, r1, 0x60
/* 000007B0 00000874  4E 80 00 20 */	blr
.endfn hikaru_off_func

# 0x00000BC8..0x00000CD8 | size: 0x110
.rodata
.balign 8

# .rodata:0x0 | 0xBC8 | size: 0xA
.obj str_S_door1_1_aji_00011a30, local
	.string "S_door1_1"
.endobj str_S_door1_1_aji_00011a30

# .rodata:0xA | 0xBD2 | size: 0x2
.obj gap_03_00000BD2_rodata, global
.hidden gap_03_00000BD2_rodata
	.2byte 0x0000
.endobj gap_03_00000BD2_rodata

# .rodata:0xC | 0xBD4 | size: 0xA
.obj str_S_door1_2_aji_00011a3c, local
	.string "S_door1_2"
.endobj str_S_door1_2_aji_00011a3c

# .rodata:0x16 | 0xBDE | size: 0x2
.obj gap_03_00000BDE_rodata, global
.hidden gap_03_00000BDE_rodata
	.2byte 0x0000
.endobj gap_03_00000BDE_rodata

# .rodata:0x18 | 0xBE0 | size: 0x7
.obj str_w_bero_aji_00011a48, local
	.string "w_bero"
.endobj str_w_bero_aji_00011a48

# .rodata:0x1F | 0xBE7 | size: 0x1
.obj gap_03_00000BE7_rodata, global
.hidden gap_03_00000BE7_rodata
	.byte 0x00
.endobj gap_03_00000BE7_rodata

# .rodata:0x20 | 0xBE8 | size: 0x7
.obj str_aji_01_aji_00011a50, local
	.string "aji_01"
.endobj str_aji_01_aji_00011a50

# .rodata:0x27 | 0xBEF | size: 0x1
.obj gap_03_00000BEF_rodata, global
.hidden gap_03_00000BEF_rodata
	.byte 0x00
.endobj gap_03_00000BEF_rodata

# .rodata:0x28 | 0xBF0 | size: 0x9
.obj str_e_bero_1_aji_00011a58, local
	.string "e_bero_1"
.endobj str_e_bero_1_aji_00011a58

# .rodata:0x31 | 0xBF9 | size: 0x3
.obj gap_03_00000BF9_rodata, global
.hidden gap_03_00000BF9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000BF9_rodata

# .rodata:0x34 | 0xBFC | size: 0x4
.obj str_box_aji_00011a64, local
	.string "box"
.endobj str_box_aji_00011a64

# .rodata:0x38 | 0xC00 | size: 0x6
.obj str_dummy_aji_00011a68, local
	.string "dummy"
.endobj str_dummy_aji_00011a68

# .rodata:0x3E | 0xC06 | size: 0x2
.obj gap_03_00000C06_rodata, global
.hidden gap_03_00000C06_rodata
	.2byte 0x0000
.endobj gap_03_00000C06_rodata

# .rodata:0x40 | 0xC08 | size: 0x7
.obj str_A_no01_aji_00011a70, local
	.string "A_no01"
.endobj str_A_no01_aji_00011a70

# .rodata:0x47 | 0xC0F | size: 0x1
.obj gap_03_00000C0F_rodata, global
.hidden gap_03_00000C0F_rodata
	.byte 0x00
.endobj gap_03_00000C0F_rodata

# .rodata:0x48 | 0xC10 | size: 0x8
.obj str_yukayu1_aji_00011a78, local
	.string "yukayu1"
.endobj str_yukayu1_aji_00011a78

# .rodata:0x50 | 0xC18 | size: 0x8
.obj str_yukayu2_aji_00011a80, local
	.string "yukayu2"
.endobj str_yukayu2_aji_00011a80

# .rodata:0x58 | 0xC20 | size: 0x4
.obj str_ato_aji_00011a88, local
	.string "ato"
.endobj str_ato_aji_00011a88

# .rodata:0x5C | 0xC24 | size: 0x7
.obj str_mod_01_aji_00011a8c, local
	.string "mod_01"
.endobj str_mod_01_aji_00011a8c

# .rodata:0x63 | 0xC2B | size: 0x1
.obj gap_03_00000C2B_rodata, global
.hidden gap_03_00000C2B_rodata
	.byte 0x00
.endobj gap_03_00000C2B_rodata

# .rodata:0x64 | 0xC2C | size: 0x8
.obj str_denyuka_aji_00011a94, local
	.string "denyuka"
.endobj str_denyuka_aji_00011a94

# .rodata:0x6C | 0xC34 | size: 0x4
.obj str_no1_aji_00011a9c, local
	.string "no1"
.endobj str_no1_aji_00011a9c

# .rodata:0x70 | 0xC38 | size: 0x7
.obj str_aji_16_aji_00011aa0, local
	.string "aji_16"
.endobj str_aji_16_aji_00011aa0

# .rodata:0x77 | 0xC3F | size: 0x1
.obj gap_03_00000C3F_rodata, global
.hidden gap_03_00000C3F_rodata
	.byte 0x00
.endobj gap_03_00000C3F_rodata

# .rodata:0x78 | 0xC40 | size: 0xF
.obj str_peach_evt_stg1_aji_00011aa8, local
	.string "peach_evt_stg1"
.endobj str_peach_evt_stg1_aji_00011aa8

# .rodata:0x87 | 0xC4F | size: 0x1
.obj gap_03_00000C4F_rodata, global
.hidden gap_03_00000C4F_rodata
	.byte 0x00
.endobj gap_03_00000C4F_rodata

# .rodata:0x88 | 0xC50 | size: 0xE
.obj str_BGM_STG7_DUN1_aji_00011ab8, local
	.string "BGM_STG7_DUN1"
.endobj str_BGM_STG7_DUN1_aji_00011ab8

# .rodata:0x96 | 0xC5E | size: 0x2
.obj gap_03_00000C5E_rodata, global
.hidden gap_03_00000C5E_rodata
	.2byte 0x0000
.endobj gap_03_00000C5E_rodata

# .rodata:0x98 | 0xC60 | size: 0xE
.obj str_ENV_STG7_AJI1_aji_00011ac8, local
	.string "ENV_STG7_AJI1"
.endobj str_ENV_STG7_AJI1_aji_00011ac8

# .rodata:0xA6 | 0xC6E | size: 0x2
.obj gap_03_00000C6E_rodata, global
.hidden gap_03_00000C6E_rodata
	.2byte 0x0000
.endobj gap_03_00000C6E_rodata

# .rodata:0xA8 | 0xC70 | size: 0xE
.obj str_BGM_STG7_DUN2_aji_00011ad8, local
	.string "BGM_STG7_DUN2"
.endobj str_BGM_STG7_DUN2_aji_00011ad8

# .rodata:0xB6 | 0xC7E | size: 0x2
.obj gap_03_00000C7E_rodata, global
.hidden gap_03_00000C7E_rodata
	.2byte 0x0000
.endobj gap_03_00000C7E_rodata

# .rodata:0xB8 | 0xC80 | size: 0x7
.obj str_mobj00_aji_00011ae8, local
	.string "mobj00"
.endobj str_mobj00_aji_00011ae8

# .rodata:0xBF | 0xC87 | size: 0x1
.obj gap_03_00000C87_rodata, global
.hidden gap_03_00000C87_rodata
	.byte 0x00
.endobj gap_03_00000C87_rodata

# .rodata:0xC0 | 0xC88 | size: 0xE
.obj str_A_hikaru_PCT02d_aji_00011af0, local
	.string "A_hikaru_%02d"
.endobj str_A_hikaru_PCT02d_aji_00011af0

# .rodata:0xCE | 0xC96 | size: 0x2
.obj gap_03_00000C96_rodata, global
.hidden gap_03_00000C96_rodata
	.2byte 0x0000
.endobj gap_03_00000C96_rodata

# .rodata:0xD0 | 0xC98 | size: 0xC
.obj str_hikaru_PCT02d_aji_00011b00, local
	.string "hikaru_%02d"
.endobj str_hikaru_PCT02d_aji_00011b00

# .rodata:0xDC | 0xCA4 | size: 0xB
.obj str_nashi_PCT02d_aji_00011b0c, local
	.string "nashi_%02d"
.endobj str_nashi_PCT02d_aji_00011b0c

# .rodata:0xE7 | 0xCAF | size: 0x1
.obj gap_03_00000CAF_rodata, global
.hidden gap_03_00000CAF_rodata
	.byte 0x00
.endobj gap_03_00000CAF_rodata

# .rodata:0xE8 | 0xCB0 | size: 0x19
.obj str_SFX_STG7_ELECTRIC_SH_aji_00011b18, local
	.string "SFX_STG7_ELECTRIC_SHOCK1"
.endobj str_SFX_STG7_ELECTRIC_SH_aji_00011b18
	.byte 0x00, 0x00, 0x00

# .rodata:0x104 | 0xCCC | size: 0x4
.obj float_30_aji_00011b34, local
	.float 30
.endobj float_30_aji_00011b34

# .rodata:0x108 | 0xCD0 | size: 0x4
.obj float_1_aji_00011b38, local
	.float 1
.endobj float_1_aji_00011b38

# .rodata:0x10C | 0xCD4 | size: 0x4
.obj gap_03_00000CD4_rodata, global
.hidden gap_03_00000CD4_rodata
	.4byte 0x00000000
.endobj gap_03_00000CD4_rodata

# 0x000065F0..0x00006DF8 | size: 0x808
.data
.balign 8

# .data:0x0 | 0x65F0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x65F8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x65FC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x6600 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x6604 | size: 0x4
.obj gap_04_00006604_data, global
.hidden gap_04_00006604_data
	.4byte 0x00000000
.endobj gap_04_00006604_data

# .data:0x18 | 0x6608 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x6610 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x6614 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x6618 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x6620 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x6624 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x6628 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x662C | size: 0x4
.obj gap_04_0000662C_data, global
.hidden gap_04_0000662C_data
	.4byte 0x00000000
.endobj gap_04_0000662C_data

# .data:0x40 | 0x6630 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x6638 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x663C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x6640 | size: 0x58
.obj w_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7B80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_S_door1_1_aji_00011a30
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_S_door1_2_aji_00011a3c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w_door_close

# .data:0xA8 | 0x6698 | size: 0x58
.obj w_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7B80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_S_door1_1_aji_00011a30
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_S_door1_2_aji_00011a3c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w_door_open

# .data:0x100 | 0x66F0 | size: 0x78
.obj bero_entry_data, local
	.4byte str_w_bero_aji_00011a48
	.4byte 0x0001000A
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_aji_01_aji_00011a50
	.4byte str_e_bero_1_aji_00011a58
	.4byte 0x00050005
	.4byte w_door_close
	.4byte w_door_open
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj bero_entry_data

# .data:0x178 | 0x6768 | size: 0xA
.obj root_0, local
	.4byte 0x0A090807
	.4byte 0x06050403
	.2byte 0x0201
.endobj root_0

# .data:0x182 | 0x6772 | size: 0x2
.obj gap_04_00006772_data, global
.hidden gap_04_00006772_data
	.2byte 0x0000
.endobj gap_04_00006772_data

# .data:0x184 | 0x6774 | size: 0xE
.obj root_1, local
	.4byte 0x15080706
	.4byte 0x14131211
	.4byte 0x100F0E0D
	.2byte 0x0C0B
.endobj root_1

# .data:0x192 | 0x6782 | size: 0x2
.obj gap_04_00006782_data, global
.hidden gap_04_00006782_data
	.2byte 0x0000
.endobj gap_04_00006782_data

# .data:0x194 | 0x6784 | size: 0xF
.obj root_2, local
	.4byte 0x1E1D1C1B
	.4byte 0x1A111213
	.4byte 0x14060519
	.byte 0x18, 0x17, 0x16
.endobj root_2

# .data:0x1A3 | 0x6793 | size: 0x1
.obj gap_04_00006793_data, global
.hidden gap_04_00006793_data
	.byte 0x00
.endobj gap_04_00006793_data

# .data:0x1A4 | 0x6794 | size: 0x18
.obj root_data, local
	.4byte root_0
	.4byte 0x0000000A
	.4byte root_1
	.4byte 0x0000000E
	.4byte root_2
	.4byte 0x0000000F
.endobj root_data

# .data:0x1BC | 0x67AC | size: 0x10
.obj hikaru_on, local
	.4byte 0x0001005B
	.4byte hikaru_on_func
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hikaru_on

# .data:0x1CC | 0x67BC | size: 0x10
.obj hikaru_off, local
	.4byte 0x0001005B
	.4byte hikaru_off_func
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hikaru_off

# .data:0x1DC | 0x67CC | size: 0x70
.obj hikaru_yuka, local
	.4byte 0x0001005E
	.4byte hikaru_on
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000050
	.4byte 0x000000AC
	.4byte 0x00000232
	.4byte 0x00000050
	.4byte 0x00000032
	.4byte 0xFFFFFFF6
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0001005E
	.4byte hikaru_off
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hikaru_yuka

# .data:0x24C | 0x683C | size: 0x17C
.obj evt_box, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte str_box_aji_00011a64
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_dummy_aji_00011a68
	.4byte 0x0000001B
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000011
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mobj_wait_animation_end
	.4byte str_box_aji_00011a64
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_dummy_aji_00011a68
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000016A
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_hitobj_attr_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_A_no01_aji_00011a70
	.4byte 0x00000800
	.4byte 0x0001005B
	.4byte all_flag_off
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x00010005
	.4byte 0x00000005
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_yukayu1_aji_00011a78
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_yukayu2_aji_00011a80
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_ato_aji_00011a88
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x00000096
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_yukayu1_aji_00011a78
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_yukayu2_aji_00011a80
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_ato_aji_00011a88
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x00000096
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_box

# .data:0x3C8 | 0x69B8 | size: 0x20
.obj dmgReturnPt, local
	.4byte str_mod_01_aji_00011a8c
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj dmgReturnPt

# .data:0x3E8 | 0x69D8 | size: 0x14C
.obj hikaru_yuka_init, local
	.4byte 0x0001005E
	.4byte hikaru_off
	.4byte 0x0005005B
	.4byte evt_hitobj_attr_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_A_no01_aji_00011a70
	.4byte 0x00000800
	.4byte 0x0009005B
	.4byte evt_mobj_itembox
	.4byte str_box_aji_00011a64
	.4byte 0x000000A0
	.4byte 0x0000000A
	.4byte 0xFFFFFFF6
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte evt_box
	.4byte 0xF8406BD0
	.4byte 0x0002005B
	.4byte evt_hit_damage_return_set
	.4byte dmgReturnPt
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_yukayu1_aji_00011a78
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_yukayu2_aji_00011a80
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_denyuka_aji_00011a94
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000012C
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010026
	.4byte 0x00000064
	.4byte 0x00020032
	.4byte 0xFD050F8A
	.4byte 0x00000000
	.4byte 0x00010026
	.4byte 0x000000C8
	.4byte 0x00020032
	.4byte 0xFD050F8A
	.4byte 0x00000001
	.4byte 0x0000002A
	.4byte 0x00020032
	.4byte 0xFD050F8A
	.4byte 0x00000002
	.4byte 0x00000031
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x0001005E
	.4byte hikaru_yuka
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0001005B
	.4byte ride_chk
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001005B
	.4byte thunder_main
	.4byte 0x0000006D
	.4byte 0x00000001
	.4byte 0x00000002
.endobj hikaru_yuka_init

# .data:0x534 | 0x6B24 | size: 0xE0
.obj peach_evt_stg1, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFF74
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_no1_aji_00011a9c
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte hikaru_off
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_yukayu1_aji_00011a78
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_yukayu2_aji_00011a80
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_ato_aji_00011a88
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0006005B
	.4byte evt_fade_set_mapchange_type
	.4byte 0x00000000
	.4byte 0x0000000C
	.4byte 0x00000064
	.4byte 0x0000000B
	.4byte 0x00000064
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_aji_16_aji_00011aa0
	.4byte str_peach_evt_stg1_aji_00011aa8
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peach_evt_stg1

# .data:0x614 | 0x6C04 | size: 0x1F4
.obj aji_02_init_evt_2_data_6C04, global
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte evt_snd_set_rev_mode
	.4byte 0x00000001
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000160
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG7_DUN1_aji_00011ab8
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG7_AJI1_aji_00011ac8
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG7_DUN2_aji_00011ad8
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG7_AJI1_aji_00011ac8
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_peach_evt_stg1_aji_00011aa8
	.4byte 0x0002005B
	.4byte evt_mario_kill_party
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_mode
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFF74
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_cam_road_reset
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFB2
	.4byte 0x000000AC
	.4byte 0x00000230
	.4byte 0xFFFFFFB2
	.4byte 0x00000032
	.4byte 0xFFFFFFF7
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte peach_evt_stg1
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0001005B
	.4byte evt_cam_road_reset
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_no1_aji_00011a9c
	.4byte 0x00000001
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x0000016A
	.4byte 0x0001005C
	.4byte hikaru_yuka_init
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_ato_aji_00011a88
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte hikaru_off
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_yukayu1_aji_00011a78
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_yukayu2_aji_00011a80
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_ato_aji_00011a88
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0009005B
	.4byte evt_mobj_badgeblk
	.4byte str_mobj00_aji_00011ae8
	.4byte 0xFFFFFF83
	.4byte 0x0000003C
	.4byte 0xFFFFFF83
	.4byte 0x00000095
	.4byte 0x00000000
	.4byte 0xF8406BF3
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte evt_emergency_2_data_1E408
	.4byte 0x00000002
	.4byte 0x00000001
.endobj aji_02_init_evt_2_data_6C04

# 0x00000000..0x00000078 | size: 0x78
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x0 | size: 0x78
.obj onoff$614, local
	.skip 0x78
.endobj onoff$614
