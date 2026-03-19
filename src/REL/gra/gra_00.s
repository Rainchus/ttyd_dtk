.include "macros.inc"
.file "gra_00.o"

# 0x00000000..0x00000434 | size: 0x434
.text
.balign 4

# .text:0x0 | 0x0 | size: 0xE8
.fn cam_r, local
/* 00000000 000000C4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00000004 000000C8  7C 08 02 A6 */	mflr r0
/* 00000008 000000CC  90 01 00 34 */	stw r0, 0x34(r1)
/* 0000000C 000000D0  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 00000010 000000D4  F3 E1 00 28 */	psq_st f31, 0x28(r1), 0, qr0
/* 00000014 000000D8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 00000018 000000DC  80 83 00 18 */	lwz r4, 0x18(r3)
/* 0000001C 000000E0  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00000020 000000E4  48 00 04 F1 */	bl evtGetFloat
/* 00000024 000000E8  FF E0 08 90 */	fmr f31, f1
/* 00000028 000000EC  38 60 00 04 */	li r3, 0x4
/* 0000002C 000000F0  48 00 04 E5 */	bl camGetPtr
/* 00000030 000000F4  3C 80 00 00 */	lis r4, zero_gra_000017e4@ha
/* 00000034 000000F8  7C 7F 1B 78 */	mr r31, r3
/* 00000038 000000FC  C0 04 00 00 */	lfs f0, zero_gra_000017e4@l(r4)
/* 0000003C 00000100  FC 1F 00 00 */	fcmpu cr0, f31, f0
/* 00000040 00000104  40 82 00 10 */	bne .L_00000050
/* 00000044 00000108  D0 1F 01 4C */	stfs f0, 0x14c(r31)
/* 00000048 0000010C  D0 1F 01 58 */	stfs f0, 0x158(r31)
/* 0000004C 00000110  48 00 00 7C */	b .L_000000C8
.L_00000050:
/* 00000050 00000114  D3 FF 01 4C */	stfs f31, 0x14c(r31)
/* 00000054 00000118  3C 60 00 00 */	lis r3, gp@ha
/* 00000058 0000011C  3C 00 43 30 */	lis r0, 0x4330
/* 0000005C 00000120  80 A3 00 00 */	lwz r5, gp@l(r3)
/* 00000060 00000124  3C 60 00 00 */	lis r3, double_to_int_mask_gra_000017f8@ha
/* 00000064 00000128  38 83 00 00 */	addi r4, r3, double_to_int_mask_gra_000017f8@l
/* 00000068 0000012C  90 01 00 08 */	stw r0, 0x8(r1)
/* 0000006C 00000130  80 A5 00 1C */	lwz r5, 0x1c(r5)
/* 00000070 00000134  3C 60 00 00 */	lis r3, float_10_gra_000017e8@ha
/* 00000074 00000138  C8 44 00 00 */	lfd f2, 0x0(r4)
/* 00000078 0000013C  90 A1 00 0C */	stw r5, 0xc(r1)
/* 0000007C 00000140  C0 03 00 00 */	lfs f0, float_10_gra_000017e8@l(r3)
/* 00000080 00000144  C8 21 00 08 */	lfd f1, 0x8(r1)
/* 00000084 00000148  EC 21 10 28 */	fsubs f1, f1, f2
/* 00000088 0000014C  EC 21 00 24 */	fdivs f1, f1, f0
/* 0000008C 00000150  48 00 04 85 */	bl sin
/* 00000090 00000154  3C 80 00 00 */	lis r4, float_15_gra_000017ec@ha
/* 00000094 00000158  FC 40 08 18 */	frsp f2, f1
/* 00000098 0000015C  C0 04 00 00 */	lfs f0, float_15_gra_000017ec@l(r4)
/* 0000009C 00000160  3C 60 00 00 */	lis r3, float_97_gra_000017f0@ha
/* 000000A0 00000164  38 83 00 00 */	addi r4, r3, float_97_gra_000017f0@l
/* 000000A4 00000168  EC 40 00 B2 */	fmuls f2, f0, f2
/* 000000A8 0000016C  3C 60 00 00 */	lis r3, float_45_gra_000017f4@ha
/* 000000AC 00000170  C0 24 00 00 */	lfs f1, 0x0(r4)
/* 000000B0 00000174  C0 03 00 00 */	lfs f0, float_45_gra_000017f4@l(r3)
/* 000000B4 00000178  FC 40 12 10 */	fabs f2, f2
/* 000000B8 0000017C  FC 40 10 50 */	fneg f2, f2
/* 000000BC 00000180  D0 5F 01 58 */	stfs f2, 0x158(r31)
/* 000000C0 00000184  D0 3F 00 10 */	stfs f1, 0x10(r31)
/* 000000C4 00000188  D0 1F 00 1C */	stfs f0, 0x1c(r31)
.L_000000C8:
/* 000000C8 0000018C  38 60 00 02 */	li r3, 0x2
/* 000000CC 00000190  E3 E1 00 28 */	psq_l f31, 0x28(r1), 0, qr0
/* 000000D0 00000194  80 01 00 34 */	lwz r0, 0x34(r1)
/* 000000D4 00000198  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 000000D8 0000019C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 000000DC 000001A0  7C 08 03 A6 */	mtlr r0
/* 000000E0 000001A4  38 21 00 30 */	addi r1, r1, 0x30
/* 000000E4 000001A8  4E 80 00 20 */	blr
.endfn cam_r

# .text:0xE8 | 0xE8 | size: 0xE0
.fn msg_callback, local
/* 000000E8 000001AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000000EC 000001B0  7C 08 02 A6 */	mflr r0
/* 000000F0 000001B4  2C 03 00 03 */	cmpwi r3, 0x3
/* 000000F4 000001B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 000000F8 000001BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 000000FC 000001C0  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00000100 000001C4  3C 84 00 01 */	addis r4, r4, 0x1
/* 00000104 000001C8  83 E4 F2 00 */	lwz r31, -0xe00(r4)
/* 00000108 000001CC  41 82 00 98 */	beq .L_000001A0
/* 0000010C 000001D0  40 80 00 1C */	bge .L_00000128
/* 00000110 000001D4  2C 03 00 01 */	cmpwi r3, 0x1
/* 00000114 000001D8  41 82 00 74 */	beq .L_00000188
/* 00000118 000001DC  40 80 00 9C */	bge .L_000001B4
/* 0000011C 000001E0  2C 03 00 00 */	cmpwi r3, 0x0
/* 00000120 000001E4  40 80 00 14 */	bge .L_00000134
/* 00000124 000001E8  48 00 00 90 */	b .L_000001B4
.L_00000128:
/* 00000128 000001EC  2C 03 00 05 */	cmpwi r3, 0x5
/* 0000012C 000001F0  41 82 00 3C */	beq .L_00000168
/* 00000130 000001F4  48 00 00 84 */	b .L_000001B4
.L_00000134:
/* 00000134 000001F8  3C 80 FD 05 */	lis r4, 0xfd05
/* 00000138 000001FC  7F E3 FB 78 */	mr r3, r31
/* 0000013C 00000200  38 84 0F 80 */	addi r4, r4, 0xf80
/* 00000140 00000204  38 A0 00 00 */	li r5, 0x0
/* 00000144 00000208  48 00 03 CD */	bl evtSetValue
/* 00000148 0000020C  3C 80 FD 05 */	lis r4, 0xfd05
/* 0000014C 00000210  7F E3 FB 78 */	mr r3, r31
/* 00000150 00000214  38 84 0F 81 */	addi r4, r4, 0xf81
/* 00000154 00000218  38 A0 00 00 */	li r5, 0x0
/* 00000158 0000021C  48 00 03 B9 */	bl evtSetValue
/* 0000015C 00000220  38 00 00 00 */	li r0, 0x0
/* 00000160 00000224  90 1F 00 D8 */	stw r0, 0xd8(r31)
/* 00000164 00000228  48 00 00 50 */	b .L_000001B4
.L_00000168:
/* 00000168 0000022C  80 1F 00 D8 */	lwz r0, 0xd8(r31)
/* 0000016C 00000230  2C 00 00 03 */	cmpwi r0, 0x3
/* 00000170 00000234  40 82 00 08 */	bne .L_00000178
/* 00000174 00000238  48 00 03 9D */	bl marioKeyOff
.L_00000178:
/* 00000178 0000023C  80 7F 00 D8 */	lwz r3, 0xd8(r31)
/* 0000017C 00000240  38 03 00 01 */	addi r0, r3, 0x1
/* 00000180 00000244  90 1F 00 D8 */	stw r0, 0xd8(r31)
/* 00000184 00000248  48 00 00 30 */	b .L_000001B4
.L_00000188:
/* 00000188 0000024C  3C 80 FD 05 */	lis r4, 0xfd05
/* 0000018C 00000250  7F E3 FB 78 */	mr r3, r31
/* 00000190 00000254  38 84 0F 81 */	addi r4, r4, 0xf81
/* 00000194 00000258  38 A0 00 01 */	li r5, 0x1
/* 00000198 0000025C  48 00 03 79 */	bl evtSetValue
/* 0000019C 00000260  48 00 00 18 */	b .L_000001B4
.L_000001A0:
/* 000001A0 00000264  3C 80 FD 05 */	lis r4, 0xfd05
/* 000001A4 00000268  7F E3 FB 78 */	mr r3, r31
/* 000001A8 0000026C  38 84 0F 80 */	addi r4, r4, 0xf80
/* 000001AC 00000270  38 A0 00 01 */	li r5, 0x1
/* 000001B0 00000274  48 00 03 61 */	bl evtSetValue
.L_000001B4:
/* 000001B4 00000278  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000001B8 0000027C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 000001BC 00000280  7C 08 03 A6 */	mtlr r0
/* 000001C0 00000284  38 21 00 10 */	addi r1, r1, 0x10
/* 000001C4 00000288  4E 80 00 20 */	blr
.endfn msg_callback

# .text:0x1C8 | 0x1C8 | size: 0xD0
.fn zoom, local
/* 000001C8 0000028C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 000001CC 00000290  7C 08 02 A6 */	mflr r0
/* 000001D0 00000294  90 01 00 34 */	stw r0, 0x34(r1)
/* 000001D4 00000298  BF A1 00 24 */	stmw r29, 0x24(r1)
/* 000001D8 0000029C  7C 7D 1B 78 */	mr r29, r3
/* 000001DC 000002A0  38 60 00 04 */	li r3, 0x4
/* 000001E0 000002A4  83 DD 00 18 */	lwz r30, 0x18(r29)
/* 000001E4 000002A8  48 00 03 2D */	bl camGetPtr
/* 000001E8 000002AC  7C 7F 1B 78 */	mr r31, r3
/* 000001EC 000002B0  38 A1 00 08 */	addi r5, r1, 0x8
/* 000001F0 000002B4  38 7F 00 0C */	addi r3, r31, 0xc
/* 000001F4 000002B8  38 9F 00 18 */	addi r4, r31, 0x18
/* 000001F8 000002BC  48 00 03 19 */	bl PSVECSubtract
/* 000001FC 000002C0  3C 80 00 00 */	lis r4, float_0p6_gra_00001800@ha
/* 00000200 000002C4  38 61 00 08 */	addi r3, r1, 0x8
/* 00000204 000002C8  C0 24 00 00 */	lfs f1, float_0p6_gra_00001800@l(r4)
/* 00000208 000002CC  7C 64 1B 78 */	mr r4, r3
/* 0000020C 000002D0  48 00 03 05 */	bl PSVECScale
/* 00000210 000002D4  38 81 00 08 */	addi r4, r1, 0x8
/* 00000214 000002D8  38 7F 00 18 */	addi r3, r31, 0x18
/* 00000218 000002DC  7C 85 23 78 */	mr r5, r4
/* 0000021C 000002E0  48 00 02 F5 */	bl PSVECAdd
/* 00000220 000002E4  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 00000224 000002E8  7F A3 EB 78 */	mr r3, r29
/* 00000228 000002EC  C0 21 00 08 */	lfs f1, 0x8(r1)
/* 0000022C 000002F0  48 00 02 E5 */	bl evtSetFloat
/* 00000230 000002F4  80 9E 00 04 */	lwz r4, 0x4(r30)
/* 00000234 000002F8  7F A3 EB 78 */	mr r3, r29
/* 00000238 000002FC  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 0000023C 00000300  48 00 02 D5 */	bl evtSetFloat
/* 00000240 00000304  80 9E 00 08 */	lwz r4, 0x8(r30)
/* 00000244 00000308  7F A3 EB 78 */	mr r3, r29
/* 00000248 0000030C  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 0000024C 00000310  48 00 02 C5 */	bl evtSetFloat
/* 00000250 00000314  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 00000254 00000318  7F A3 EB 78 */	mr r3, r29
/* 00000258 0000031C  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 0000025C 00000320  48 00 02 B5 */	bl evtSetFloat
/* 00000260 00000324  80 9E 00 10 */	lwz r4, 0x10(r30)
/* 00000264 00000328  7F A3 EB 78 */	mr r3, r29
/* 00000268 0000032C  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 0000026C 00000330  48 00 02 A5 */	bl evtSetFloat
/* 00000270 00000334  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 00000274 00000338  7F A3 EB 78 */	mr r3, r29
/* 00000278 0000033C  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 0000027C 00000340  48 00 02 95 */	bl evtSetFloat
/* 00000280 00000344  BB A1 00 24 */	lmw r29, 0x24(r1)
/* 00000284 00000348  38 60 00 02 */	li r3, 0x2
/* 00000288 0000034C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 0000028C 00000350  7C 08 03 A6 */	mtlr r0
/* 00000290 00000354  38 21 00 30 */	addi r1, r1, 0x30
/* 00000294 00000358  4E 80 00 20 */	blr
.endfn zoom

# .text:0x298 | 0x298 | size: 0x19C
.fn camera_yure, local
/* 00000298 0000035C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 0000029C 00000360  7C 08 02 A6 */	mflr r0
/* 000002A0 00000364  90 01 00 64 */	stw r0, 0x64(r1)
/* 000002A4 00000368  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 000002A8 0000036C  F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 000002AC 00000370  BF A1 00 44 */	stmw r29, 0x44(r1)
/* 000002B0 00000374  7C 7E 1B 78 */	mr r30, r3
/* 000002B4 00000378  7C 9F 23 78 */	mr r31, r4
/* 000002B8 0000037C  80 83 00 18 */	lwz r4, 0x18(r3)
/* 000002BC 00000380  80 84 00 00 */	lwz r4, 0x0(r4)
/* 000002C0 00000384  48 00 02 51 */	bl evtGetValue
/* 000002C4 00000388  7C 7D 1B 78 */	mr r29, r3
/* 000002C8 0000038C  38 60 00 04 */	li r3, 0x4
/* 000002CC 00000390  48 00 02 45 */	bl camGetPtr
/* 000002D0 00000394  2C 1F 00 00 */	cmpwi r31, 0x0
/* 000002D4 00000398  7C 7F 1B 78 */	mr r31, r3
/* 000002D8 0000039C  41 82 00 10 */	beq .L_000002E8
/* 000002DC 000003A0  38 00 00 00 */	li r0, 0x0
/* 000002E0 000003A4  90 1E 00 78 */	stw r0, 0x78(r30)
/* 000002E4 000003A8  93 BE 00 7C */	stw r29, 0x7c(r30)
.L_000002E8:
/* 000002E8 000003AC  80 9E 00 78 */	lwz r4, 0x78(r30)
/* 000002EC 000003B0  3C 60 43 30 */	lis r3, 0x4330
/* 000002F0 000003B4  80 1E 00 7C */	lwz r0, 0x7c(r30)
/* 000002F4 000003B8  3C A0 00 00 */	lis r5, double_to_int_gra_00001810@ha
/* 000002F8 000003BC  6C 84 80 00 */	xoris r4, r4, 0x8000
/* 000002FC 000003C0  3C C0 00 00 */	lis r6, float_18p85_gra_00001804@ha
/* 00000300 000003C4  90 81 00 1C */	stw r4, 0x1c(r1)
/* 00000304 000003C8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 00000308 000003CC  C8 45 00 00 */	lfd f2, double_to_int_gra_00001810@l(r5)
/* 0000030C 000003D0  90 61 00 18 */	stw r3, 0x18(r1)
/* 00000310 000003D4  C0 66 00 00 */	lfs f3, float_18p85_gra_00001804@l(r6)
/* 00000314 000003D8  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 00000318 000003DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 0000031C 000003E0  EC 20 10 28 */	fsubs f1, f0, f2
/* 00000320 000003E4  90 61 00 20 */	stw r3, 0x20(r1)
/* 00000324 000003E8  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 00000328 000003EC  EC 23 00 72 */	fmuls f1, f3, f1
/* 0000032C 000003F0  EC 00 10 28 */	fsubs f0, f0, f2
/* 00000330 000003F4  EC 21 00 24 */	fdivs f1, f1, f0
/* 00000334 000003F8  48 00 01 DD */	bl sin
/* 00000338 000003FC  80 FE 00 7C */	lwz r7, 0x7c(r30)
/* 0000033C 00000400  3C C0 43 30 */	lis r6, 0x4330
/* 00000340 00000404  80 BE 00 78 */	lwz r5, 0x78(r30)
/* 00000344 00000408  3C 80 00 00 */	lis r4, double_to_int_gra_00001810@ha
/* 00000348 0000040C  3C 60 00 00 */	lis r3, float_0p1_gra_00001808@ha
/* 0000034C 00000410  6C E0 80 00 */	xoris r0, r7, 0x8000
/* 00000350 00000414  7C A5 38 50 */	subf r5, r5, r7
/* 00000354 00000418  38 E4 00 00 */	addi r7, r4, double_to_int_gra_00001810@l
/* 00000358 0000041C  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 0000035C 00000420  90 C1 00 28 */	stw r6, 0x28(r1)
/* 00000360 00000424  38 83 00 00 */	addi r4, r3, float_0p1_gra_00001808@l
/* 00000364 00000428  FC 20 08 18 */	frsp f1, f1
/* 00000368 0000042C  90 A1 00 2C */	stw r5, 0x2c(r1)
/* 0000036C 00000430  38 7F 00 18 */	addi r3, r31, 0x18
/* 00000370 00000434  C0 04 00 00 */	lfs f0, 0x0(r4)
/* 00000374 00000438  38 9F 00 0C */	addi r4, r31, 0xc
/* 00000378 0000043C  C8 67 00 00 */	lfd f3, 0x0(r7)
/* 0000037C 00000440  C8 41 00 28 */	lfd f2, 0x28(r1)
/* 00000380 00000444  EC 20 00 72 */	fmuls f1, f0, f1
/* 00000384 00000448  90 01 00 34 */	stw r0, 0x34(r1)
/* 00000388 0000044C  38 A1 00 08 */	addi r5, r1, 0x8
/* 0000038C 00000450  EC 42 18 28 */	fsubs f2, f2, f3
/* 00000390 00000454  90 C1 00 30 */	stw r6, 0x30(r1)
/* 00000394 00000458  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 00000398 0000045C  EC 22 00 72 */	fmuls f1, f2, f1
/* 0000039C 00000460  EC 00 18 28 */	fsubs f0, f0, f3
/* 000003A0 00000464  EF E1 00 24 */	fdivs f31, f1, f0
/* 000003A4 00000468  48 00 01 6D */	bl PSVECSubtract
/* 000003A8 0000046C  FC 20 F8 90 */	fmr f1, f31
/* 000003AC 00000470  38 61 00 08 */	addi r3, r1, 0x8
/* 000003B0 00000474  7C 64 1B 78 */	mr r4, r3
/* 000003B4 00000478  48 00 01 5D */	bl PSVECScale
/* 000003B8 0000047C  C0 01 00 08 */	lfs f0, 0x8(r1)
/* 000003BC 00000480  38 60 00 06 */	li r3, 0x6
/* 000003C0 00000484  D0 1F 01 50 */	stfs f0, 0x150(r31)
/* 000003C4 00000488  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 000003C8 0000048C  D0 1F 01 54 */	stfs f0, 0x154(r31)
/* 000003CC 00000490  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 000003D0 00000494  D0 1F 01 58 */	stfs f0, 0x158(r31)
/* 000003D4 00000498  48 00 01 3D */	bl camGetPtr
/* 000003D8 0000049C  C0 01 00 08 */	lfs f0, 0x8(r1)
/* 000003DC 000004A0  D0 03 01 50 */	stfs f0, 0x150(r3)
/* 000003E0 000004A4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 000003E4 000004A8  D0 03 01 54 */	stfs f0, 0x154(r3)
/* 000003E8 000004AC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 000003EC 000004B0  D0 03 01 58 */	stfs f0, 0x158(r3)
/* 000003F0 000004B4  80 7E 00 78 */	lwz r3, 0x78(r30)
/* 000003F4 000004B8  38 03 00 01 */	addi r0, r3, 0x1
/* 000003F8 000004BC  90 1E 00 78 */	stw r0, 0x78(r30)
/* 000003FC 000004C0  80 7E 00 78 */	lwz r3, 0x78(r30)
/* 00000400 000004C4  80 1E 00 7C */	lwz r0, 0x7c(r30)
/* 00000404 000004C8  7C 03 00 00 */	cmpw r3, r0
/* 00000408 000004CC  40 81 00 0C */	ble .L_00000414
/* 0000040C 000004D0  38 60 00 02 */	li r3, 0x2
/* 00000410 000004D4  48 00 00 08 */	b .L_00000418
.L_00000414:
/* 00000414 000004D8  38 60 00 00 */	li r3, 0x0
.L_00000418:
/* 00000418 000004DC  E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 0000041C 000004E0  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 00000420 000004E4  BB A1 00 44 */	lmw r29, 0x44(r1)
/* 00000424 000004E8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 00000428 000004EC  7C 08 03 A6 */	mtlr r0
/* 0000042C 000004F0  38 21 00 60 */	addi r1, r1, 0x60
/* 00000430 000004F4  4E 80 00 20 */	blr
.endfn camera_yure

# 0x00000000..0x00000358 | size: 0x358
.rodata
.balign 8

# .rodata:0x0 | 0x0 | size: 0x11
.obj str_OFF_d_yabu_small_gra_000014c0, local
	.string "OFF_d_yabu_small"
.endobj str_OFF_d_yabu_small_gra_000014c0

# .rodata:0x11 | 0x11 | size: 0x3
.obj gap_03_00000011_rodata, global
.hidden gap_03_00000011_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000011_rodata

# .rodata:0x14 | 0x14 | size: 0x18
.obj str_SFX_OFF4_LANPEL_APPE_gra_000014d4, local
	.string "SFX_OFF4_LANPEL_APPEAR1"
.endobj str_SFX_OFF4_LANPEL_APPE_gra_000014d4

# .rodata:0x2C | 0x2C | size: 0x4
.obj str_img_gra_000014ec, local
	.string "img"
.endobj str_img_gra_000014ec

# .rodata:0x30 | 0x30 | size: 0x4
.obj str_A_1_gra_000014f0, local
	.string "A_1"
.endobj str_A_1_gra_000014f0

# .rodata:0x34 | 0x34 | size: 0xB
.obj str_OFF_d_roll_gra_000014f4, local
	.string "OFF_d_roll"
.endobj str_OFF_d_roll_gra_000014f4

# .rodata:0x3F | 0x3F | size: 0x1
.obj gap_03_0000003F_rodata, global
.hidden gap_03_0000003F_rodata
	.byte 0x00
.endobj gap_03_0000003F_rodata

# .rodata:0x40 | 0x40 | size: 0x4
.obj str_Z_1_gra_00001500, local
	.string "Z_1"
.endobj str_Z_1_gra_00001500

# .rodata:0x44 | 0x44 | size: 0x15
.obj str_SFX_OFF4_NAME_ENTRY1_gra_00001504, local
	.string "SFX_OFF4_NAME_ENTRY1"
.endobj str_SFX_OFF4_NAME_ENTRY1_gra_00001504

# .rodata:0x59 | 0x59 | size: 0x3
.obj gap_03_00000059_rodata, global
.hidden gap_03_00000059_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000059_rodata

# .rodata:0x5C | 0x5C | size: 0x4
.obj str_A_2_gra_0000151c, local
	.string "A_2"
.endobj str_A_2_gra_0000151c

# .rodata:0x60 | 0x60 | size: 0x15
.obj str_SFX_OFF4_NAME_ENTRY2_gra_00001520, local
	.string "SFX_OFF4_NAME_ENTRY2"
.endobj str_SFX_OFF4_NAME_ENTRY2_gra_00001520

# .rodata:0x75 | 0x75 | size: 0x3
.obj gap_03_00000075_rodata, global
.hidden gap_03_00000075_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000075_rodata

# .rodata:0x78 | 0x78 | size: 0xB
.obj str_にせマリオ_gra_00001538, local
	.4byte 0x82C982B9
	.4byte 0x837D838A
	.byte 0x83, 0x49, 0x00
.endobj str_にせマリオ_gra_00001538

# .rodata:0x83 | 0x83 | size: 0x1
.obj gap_03_00000083_rodata, global
.hidden gap_03_00000083_rodata
	.byte 0x00
.endobj gap_03_00000083_rodata

# .rodata:0x84 | 0x84 | size: 0x1A
.obj str_SFX_VOICE_NM_SURPRIS_gra_00001544, local
	.string "SFX_VOICE_NM_SURPRISED2_3"
.endobj str_SFX_VOICE_NM_SURPRIS_gra_00001544

# .rodata:0x9E | 0x9E | size: 0x2
.obj gap_03_0000009E_rodata, global
.hidden gap_03_0000009E_rodata
	.2byte 0x0000
.endobj gap_03_0000009E_rodata

# .rodata:0xA0 | 0xA0 | size: 0x7
.obj str_EM_O_2_gra_00001560, local
	.string "EM_O_2"
.endobj str_EM_O_2_gra_00001560

# .rodata:0xA7 | 0xA7 | size: 0x1
.obj gap_03_000000A7_rodata, global
.hidden gap_03_000000A7_rodata
	.byte 0x00
.endobj gap_03_000000A7_rodata

# .rodata:0xA8 | 0xA8 | size: 0x7
.obj str_EM_Z_3_gra_00001568, local
	.string "EM_Z_3"
.endobj str_EM_Z_3_gra_00001568

# .rodata:0xAF | 0xAF | size: 0x1
.obj gap_03_000000AF_rodata, global
.hidden gap_03_000000AF_rodata
	.byte 0x00
.endobj gap_03_000000AF_rodata

# .rodata:0xB0 | 0xB0 | size: 0x7
.obj str_EM_T_4_gra_00001570, local
	.string "EM_T_4"
.endobj str_EM_T_4_gra_00001570

# .rodata:0xB7 | 0xB7 | size: 0x1
.obj gap_03_000000B7_rodata, global
.hidden gap_03_000000B7_rodata
	.byte 0x00
.endobj gap_03_000000B7_rodata

# .rodata:0xB8 | 0xB8 | size: 0xC
.obj str_stg4_gra_12_gra_00001578, local
	.string "stg4_gra_12"
.endobj str_stg4_gra_12_gra_00001578

# .rodata:0xC4 | 0xC4 | size: 0xC
.obj str_stg4_gra_13_gra_00001584, local
	.string "stg4_gra_13"
.endobj str_stg4_gra_13_gra_00001584

# .rodata:0xD0 | 0xD0 | size: 0xC
.obj str_stg4_gra_14_gra_00001590, local
	.string "stg4_gra_14"
.endobj str_stg4_gra_14_gra_00001590

# .rodata:0xDC | 0xDC | size: 0x6
.obj str_M_S_1_gra_0000159c, local
	.string "M_S_1"
.endobj str_M_S_1_gra_0000159c

# .rodata:0xE2 | 0xE2 | size: 0x2
.obj gap_03_000000E2_rodata, global
.hidden gap_03_000000E2_rodata
	.2byte 0x0000
.endobj gap_03_000000E2_rodata

# .rodata:0xE4 | 0xE4 | size: 0xC
.obj str_stg4_gra_15_gra_000015a4, local
	.string "stg4_gra_15"
.endobj str_stg4_gra_15_gra_000015a4

# .rodata:0xF0 | 0xF0 | size: 0x17
.obj str_SFX_STG4_LANPEL_SHOC_gra_000015b0, local
	.string "SFX_STG4_LANPEL_SHOCK1"
.endobj str_SFX_STG4_LANPEL_SHOC_gra_000015b0

# .rodata:0x107 | 0x107 | size: 0x1
.obj gap_03_00000107_rodata, global
.hidden gap_03_00000107_rodata
	.byte 0x00
.endobj gap_03_00000107_rodata

# .rodata:0x108 | 0x108 | size: 0x7
.obj str_EM_J_2_gra_000015c8, local
	.string "EM_J_2"
.endobj str_EM_J_2_gra_000015c8

# .rodata:0x10F | 0x10F | size: 0x1
.obj gap_03_0000010F_rodata, global
.hidden gap_03_0000010F_rodata
	.byte 0x00
.endobj gap_03_0000010F_rodata

# .rodata:0x110 | 0x110 | size: 0x16
.obj str_SFX_STG4_MARIO_ROUND_gra_000015d0, local
	.string "SFX_STG4_MARIO_ROUND1"
.endobj str_SFX_STG4_MARIO_ROUND_gra_000015d0

# .rodata:0x126 | 0x126 | size: 0x2
.obj gap_03_00000126_rodata, global
.hidden gap_03_00000126_rodata
	.2byte 0x0000
.endobj gap_03_00000126_rodata

# .rodata:0x128 | 0x128 | size: 0x6
.obj str_M_D_1_gra_000015e8, local
	.string "M_D_1"
.endobj str_M_D_1_gra_000015e8

# .rodata:0x12E | 0x12E | size: 0x2
.obj gap_03_0000012E_rodata, global
.hidden gap_03_0000012E_rodata
	.2byte 0x0000
.endobj gap_03_0000012E_rodata

# .rodata:0x130 | 0x130 | size: 0x8
.obj str_PTR_S_4_gra_000015f0, local
	.string "PTR_S_4"
.endobj str_PTR_S_4_gra_000015f0

# .rodata:0x138 | 0x138 | size: 0x8
.obj str_PTR_T_5_gra_000015f8, local
	.string "PTR_T_5"
.endobj str_PTR_T_5_gra_000015f8

# .rodata:0x140 | 0x140 | size: 0x8
.obj str_PTR_D_1_gra_00001600, local
	.string "PTR_D_1"
.endobj str_PTR_D_1_gra_00001600

# .rodata:0x148 | 0x148 | size: 0x8
.obj str_PTR_S_1_gra_00001608, local
	.string "PTR_S_1"
.endobj str_PTR_S_1_gra_00001608

# .rodata:0x150 | 0x150 | size: 0x7
.obj str_EM_R_3_gra_00001610, local
	.string "EM_R_3"
.endobj str_EM_R_3_gra_00001610

# .rodata:0x157 | 0x157 | size: 0x1
.obj gap_03_00000157_rodata, global
.hidden gap_03_00000157_rodata
	.byte 0x00
.endobj gap_03_00000157_rodata

# .rodata:0x158 | 0x158 | size: 0x18
.obj str_SFX_VOICE_NM_SURPRIS_gra_00001618, local
	.string "SFX_VOICE_NM_SURPRISED1"
.endobj str_SFX_VOICE_NM_SURPRIS_gra_00001618

# .rodata:0x170 | 0x170 | size: 0x1A
.obj str_SFX_VOICE_NM_SURPRIS_gra_00001630, local
	.string "SFX_VOICE_NM_SURPRISED1_2"
.endobj str_SFX_VOICE_NM_SURPRIS_gra_00001630

# .rodata:0x18A | 0x18A | size: 0x2
.obj gap_03_0000018A_rodata, global
.hidden gap_03_0000018A_rodata
	.2byte 0x0000
.endobj gap_03_0000018A_rodata

# .rodata:0x18C | 0x18C | size: 0x8
.obj str_PTR_T_1_gra_0000164c, local
	.string "PTR_T_1"
.endobj str_PTR_T_1_gra_0000164c

# .rodata:0x194 | 0x194 | size: 0xC
.obj str_stg4_gra_16_gra_00001654, local
	.string "stg4_gra_16"
.endobj str_stg4_gra_16_gra_00001654

# .rodata:0x1A0 | 0x1A0 | size: 0x6
.obj str_M_N_3_gra_00001660, local
	.string "M_N_3"
.endobj str_M_N_3_gra_00001660

# .rodata:0x1A6 | 0x1A6 | size: 0x2
.obj gap_03_000001A6_rodata, global
.hidden gap_03_000001A6_rodata
	.2byte 0x0000
.endobj gap_03_000001A6_rodata

# .rodata:0x1A8 | 0x1A8 | size: 0xC
.obj str_stg4_gra_05_gra_00001668, local
	.string "stg4_gra_05"
.endobj str_stg4_gra_05_gra_00001668

# .rodata:0x1B4 | 0x1B4 | size: 0xC
.obj str_stg4_gra_00_gra_00001674, local
	.string "stg4_gra_00"
.endobj str_stg4_gra_00_gra_00001674

# .rodata:0x1C0 | 0x1C0 | size: 0x17
.obj str_BGM_FF_ENV_RPL_APPEA_gra_00001680, local
	.string "BGM_FF_ENV_RPL_APPEAR1"
.endobj str_BGM_FF_ENV_RPL_APPEA_gra_00001680

# .rodata:0x1D7 | 0x1D7 | size: 0x1
.obj gap_03_000001D7_rodata, global
.hidden gap_03_000001D7_rodata
	.byte 0x00
.endobj gap_03_000001D7_rodata

# .rodata:0x1D8 | 0x1D8 | size: 0x18
.obj str_SFX_STG4_LANPEL_M_FA_gra_00001698, local
	.string "SFX_STG4_LANPEL_M_FALL1"
.endobj str_SFX_STG4_LANPEL_M_FA_gra_00001698

# .rodata:0x1F0 | 0x1F0 | size: 0x6
.obj str_mario_gra_000016b0, local
	.string "mario"
.endobj str_mario_gra_000016b0

# .rodata:0x1F6 | 0x1F6 | size: 0x2
.obj gap_03_000001F6_rodata, global
.hidden gap_03_000001F6_rodata
	.2byte 0x0000
.endobj gap_03_000001F6_rodata

# .rodata:0x1F8 | 0x1F8 | size: 0x14
.obj str_SFX_VOICE_NM_HAPPY1_gra_000016b8, local
	.string "SFX_VOICE_NM_HAPPY1"
.endobj str_SFX_VOICE_NM_HAPPY1_gra_000016b8

# .rodata:0x20C | 0x20C | size: 0xC
.obj str_stg4_gra_01_gra_000016cc, local
	.string "stg4_gra_01"
.endobj str_stg4_gra_01_gra_000016cc

# .rodata:0x218 | 0x218 | size: 0xC
.obj str_stg4_gra_02_gra_000016d8, local
	.string "stg4_gra_02"
.endobj str_stg4_gra_02_gra_000016d8

# .rodata:0x224 | 0x224 | size: 0x6
.obj str_M_I_Y_gra_000016e4, local
	.string "M_I_Y"
.endobj str_M_I_Y_gra_000016e4

# .rodata:0x22A | 0x22A | size: 0x2
.obj gap_03_0000022A_rodata, global
.hidden gap_03_0000022A_rodata
	.2byte 0x0000
.endobj gap_03_0000022A_rodata

# .rodata:0x22C | 0x22C | size: 0xC
.obj str_stg4_gra_03_gra_000016ec, local
	.string "stg4_gra_03"
.endobj str_stg4_gra_03_gra_000016ec

# .rodata:0x238 | 0x238 | size: 0xC
.obj str_stg4_gra_09_gra_000016f8, local
	.string "stg4_gra_09"
.endobj str_stg4_gra_09_gra_000016f8

# .rodata:0x244 | 0x244 | size: 0xC
.obj str_stg4_gra_06_gra_00001704, local
	.string "stg4_gra_06"
.endobj str_stg4_gra_06_gra_00001704

# .rodata:0x250 | 0x250 | size: 0xC
.obj str_stg4_gra_07_gra_00001710, local
	.string "stg4_gra_07"
.endobj str_stg4_gra_07_gra_00001710

# .rodata:0x25C | 0x25C | size: 0x9
.obj str_ランペル_gra_0000171c, local
	.4byte 0x83898393
	.4byte 0x8379838B
	.byte 0x00
.endobj str_ランペル_gra_0000171c

# .rodata:0x265 | 0x265 | size: 0x3
.obj gap_03_00000265_rodata, global
.hidden gap_03_00000265_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000265_rodata

# .rodata:0x268 | 0x268 | size: 0x9
.obj str_Doopliss_gra_00001728, local
	.string "Doopliss"
.endobj str_Doopliss_gra_00001728

# .rodata:0x271 | 0x271 | size: 0x3
.obj gap_03_00000271_rodata, global
.hidden gap_03_00000271_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000271_rodata

# .rodata:0x274 | 0x274 | size: 0x7
.obj str_Rampel_gra_00001734, local
	.string "Rampel"
.endobj str_Rampel_gra_00001734

# .rodata:0x27B | 0x27B | size: 0x1
.obj gap_03_0000027B_rodata, global
.hidden gap_03_0000027B_rodata
	.byte 0x00
.endobj gap_03_0000027B_rodata

# .rodata:0x27C | 0x27C | size: 0x7
.obj str_Rumpel_gra_0000173c, local
	.string "Rumpel"
.endobj str_Rumpel_gra_0000173c

# .rodata:0x283 | 0x283 | size: 0x1
.obj gap_03_00000283_rodata, global
.hidden gap_03_00000283_rodata
	.byte 0x00
.endobj gap_03_00000283_rodata

# .rodata:0x284 | 0x284 | size: 0xE
.obj str_BGM_STG4_GRA1_gra_00001744, local
	.string "BGM_STG4_GRA1"
.endobj str_BGM_STG4_GRA1_gra_00001744

# .rodata:0x292 | 0x292 | size: 0x2
.obj gap_03_00000292_rodata, global
.hidden gap_03_00000292_rodata
	.2byte 0x0000
.endobj gap_03_00000292_rodata

# .rodata:0x294 | 0x294 | size: 0x8
.obj str_PTR_W_1_gra_00001754, local
	.string "PTR_W_1"
.endobj str_PTR_W_1_gra_00001754

# .rodata:0x29C | 0x29C | size: 0x8
.obj str_PTR_R_1_gra_0000175c, local
	.string "PTR_R_1"
.endobj str_PTR_R_1_gra_0000175c

# .rodata:0x2A4 | 0x2A4 | size: 0xC
.obj str_stg4_gra_04_gra_00001764, local
	.string "stg4_gra_04"
.endobj str_stg4_gra_04_gra_00001764

# .rodata:0x2B0 | 0x2B0 | size: 0xC
.obj str_stg4_gra_11_gra_00001770, local
	.string "stg4_gra_11"
.endobj str_stg4_gra_11_gra_00001770

# .rodata:0x2BC | 0x2BC | size: 0x7
.obj str_usu_01_gra_0000177c, local
	.string "usu_01"
.endobj str_usu_01_gra_0000177c

# .rodata:0x2C3 | 0x2C3 | size: 0x1
.obj gap_03_000002C3_rodata, global
.hidden gap_03_000002C3_rodata
	.byte 0x00
.endobj gap_03_000002C3_rodata

# .rodata:0x2C4 | 0x2C4 | size: 0x7
.obj str_e_bero_gra_00001784, local
	.string "e_bero"
.endobj str_e_bero_gra_00001784

# .rodata:0x2CB | 0x2CB | size: 0x1
.obj gap_03_000002CB_rodata, global
.hidden gap_03_000002CB_rodata
	.byte 0x00
.endobj gap_03_000002CB_rodata

# .rodata:0x2CC | 0x2CC | size: 0x7
.obj str_gra_01_gra_0000178c, local
	.string "gra_01"
.endobj str_gra_01_gra_0000178c

# .rodata:0x2D3 | 0x2D3 | size: 0x1
.obj gap_03_000002D3_rodata, global
.hidden gap_03_000002D3_rodata
	.byte 0x00
.endobj gap_03_000002D3_rodata

# .rodata:0x2D4 | 0x2D4 | size: 0x8
.obj str_w_bero1_gra_00001794, local
	.string "w_bero1"
.endobj str_w_bero1_gra_00001794

# .rodata:0x2DC | 0x2DC | size: 0x7
.obj str_w_bero_gra_0000179c, local
	.string "w_bero"
.endobj str_w_bero_gra_0000179c

# .rodata:0x2E3 | 0x2E3 | size: 0x1
.obj gap_03_000002E3_rodata, global
.hidden gap_03_000002E3_rodata
	.byte 0x00
.endobj gap_03_000002E3_rodata

# .rodata:0x2E4 | 0x2E4 | size: 0x7
.obj str_A_ki_1_gra_000017a4, local
	.string "A_ki_1"
.endobj str_A_ki_1_gra_000017a4

# .rodata:0x2EB | 0x2EB | size: 0x1
.obj gap_03_000002EB_rodata, global
.hidden gap_03_000002EB_rodata
	.byte 0x00
.endobj gap_03_000002EB_rodata

# .rodata:0x2EC | 0x2EC | size: 0xB
.obj str_S_gra00_ki_gra_000017ac, local
	.string "S_gra00_ki"
.endobj str_S_gra00_ki_gra_000017ac

# .rodata:0x2F7 | 0x2F7 | size: 0x1
.obj gap_03_000002F7_rodata, global
.hidden gap_03_000002F7_rodata
	.byte 0x00
.endobj gap_03_000002F7_rodata

# .rodata:0x2F8 | 0x2F8 | size: 0xE
.obj str_ENV_STG4_USU1_gra_000017b8, local
	.string "ENV_STG4_USU1"
.endobj str_ENV_STG4_USU1_gra_000017b8

# .rodata:0x306 | 0x306 | size: 0x2
.obj gap_03_00000306_rodata, global
.hidden gap_03_00000306_rodata
	.2byte 0x0000
.endobj gap_03_00000306_rodata

# .rodata:0x308 | 0x308 | size: 0x6
.obj str_blk01_gra_000017c8, local
	.string "blk01"
.endobj str_blk01_gra_000017c8

# .rodata:0x30E | 0x30E | size: 0x2
.obj gap_03_0000030E_rodata, global
.hidden gap_03_0000030E_rodata
	.2byte 0x0000
.endobj gap_03_0000030E_rodata

# .rodata:0x310 | 0x310 | size: 0x6
.obj str_blk02_gra_000017d0, local
	.string "blk02"
.endobj str_blk02_gra_000017d0

# .rodata:0x316 | 0x316 | size: 0x2
.obj gap_03_00000316_rodata, global
.hidden gap_03_00000316_rodata
	.2byte 0x0000
.endobj gap_03_00000316_rodata

# .rodata:0x318 | 0x318 | size: 0xA
.obj str_majin_key_gra_000017d8, local
	.string "majin_key"
.endobj str_majin_key_gra_000017d8
	.2byte 0x0000

# .rodata:0x324 | 0x324 | size: 0x4
.obj zero_gra_000017e4, local
	.float 0
.endobj zero_gra_000017e4

# .rodata:0x328 | 0x328 | size: 0x4
.obj float_10_gra_000017e8, local
	.float 10
.endobj float_10_gra_000017e8

# .rodata:0x32C | 0x32C | size: 0x4
.obj float_15_gra_000017ec, local
	.float 15
.endobj float_15_gra_000017ec

# .rodata:0x330 | 0x330 | size: 0x4
.obj float_97_gra_000017f0, local
	.float 97
.endobj float_97_gra_000017f0

# .rodata:0x334 | 0x334 | size: 0x4
.obj float_45_gra_000017f4, local
	.float 45
.endobj float_45_gra_000017f4

# .rodata:0x338 | 0x338 | size: 0x8
.obj double_to_int_mask_gra_000017f8, local
	.double 4503599627370496
.endobj double_to_int_mask_gra_000017f8

# .rodata:0x340 | 0x340 | size: 0x4
.obj float_0p6_gra_00001800, local
	.float 0.6
.endobj float_0p6_gra_00001800

# .rodata:0x344 | 0x344 | size: 0x4
.obj float_18p85_gra_00001804, local
	.float 18.849556
.endobj float_18p85_gra_00001804

# .rodata:0x348 | 0x348 | size: 0x4
.obj float_0p1_gra_00001808, local
	.float 0.1
.endobj float_0p1_gra_00001808
	.4byte 0x00000000

# .rodata:0x350 | 0x350 | size: 0x8
.obj double_to_int_gra_00001810, local
	.double 4503601774854144
.endobj double_to_int_gra_00001810

# 0x00000000..0x00001B60 | size: 0x1B60
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

# .data:0x60 | 0x60 | size: 0xE0
.obj evt_yabure_on, local
	.4byte 0x0002005B
	.4byte evt_paper_entry
	.4byte str_OFF_d_yabu_small_gra_000014c0
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_OFF4_LANPEL_APPE_gra_000014d4
	.4byte 0xFFFFFF6F
	.4byte 0x0000010E
	.4byte 0xFFFFFFE7
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte camera_yure
	.4byte 0x00000014
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_img_entry
	.4byte str_img_gra_000014ec
	.4byte 0x0003005B
	.4byte evt_img_set_paper
	.4byte str_img_gra_000014ec
	.4byte str_OFF_d_yabu_small_gra_000014c0
	.4byte 0x0009005B
	.4byte evt_img_alloc_capture
	.4byte str_img_gra_000014ec
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000064
	.4byte 0x00000064
	.4byte 0x000000CA
	.4byte 0x000000A0
	.4byte 0x0002005B
	.4byte evt_img_clear_virtual_point
	.4byte str_img_gra_000014ec
	.4byte 0x0004005B
	.4byte evt_img_set_position
	.4byte str_img_gra_000014ec
	.4byte 0xFFFFFE34
	.4byte 0xFFFFFEFB
	.4byte 0x0005005B
	.4byte evt_img_set_virtual_point
	.4byte str_img_gra_000014ec
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFB2
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_img_gra_000014ec
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_img_set_paper_anim
	.4byte str_img_gra_000014ec
	.4byte str_A_1_gra_000014f0
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_yabure_on

# .data:0x140 | 0x140 | size: 0x14
.obj evt_yabure_off, local
	.4byte 0x0002005B
	.4byte evt_img_release
	.4byte str_img_gra_000014ec
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_yabure_off

# .data:0x154 | 0x154 | size: 0x1B4
.obj evt_nameent, local
	.4byte 0x0002005B
	.4byte evt_paper_entry
	.4byte str_OFF_d_roll_gra_000014f4
	.4byte 0x0002005B
	.4byte evt_img_entry
	.4byte str_img_gra_000014ec
	.4byte 0x0003005B
	.4byte evt_img_set_paper
	.4byte str_img_gra_000014ec
	.4byte str_OFF_d_roll_gra_000014f4
	.4byte 0x0003005B
	.4byte evt_img_set_paper_anim
	.4byte str_img_gra_000014ec
	.4byte str_Z_1_gra_00001500
	.4byte 0x0009005B
	.4byte evt_img_alloc_capture
	.4byte str_img_gra_000014ec
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000260
	.4byte 0x000001E0
	.4byte 0x0002005B
	.4byte evt_img_clear_virtual_point
	.4byte str_img_gra_000014ec
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_img_gra_000014ec
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
	.4byte str_SFX_OFF4_NAME_ENTRY1_gra_00001504
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_img_set_paper_anim
	.4byte str_img_gra_000014ec
	.4byte str_A_2_gra_0000151c
	.4byte 0x0002005B
	.4byte evt_img_wait_animend
	.4byte str_img_gra_000014ec
	.4byte 0x0001005B
	.4byte evt_win_nameent_wait
	.4byte 0x0002005B
	.4byte evt_win_nameent_name
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
	.4byte str_SFX_OFF4_NAME_ENTRY2_gra_00001520
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_img_set_paper_anim
	.4byte str_img_gra_000014ec
	.4byte str_A_1_gra_000014f0
	.4byte 0x0002005B
	.4byte evt_img_wait_animend
	.4byte str_img_gra_000014ec
	.4byte 0x0001005B
	.4byte evt_win_nameent_off
	.4byte 0x0002005B
	.4byte evt_img_release
	.4byte str_img_gra_000014ec
	.4byte 0x0002005B
	.4byte evt_paper_delete
	.4byte str_OFF_d_roll_gra_000014f4
	.4byte 0x0002005B
	.4byte evt_cam_letter_box_disable
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_nameent

# .data:0x308 | 0x308 | size: 0xAA8
.obj name_seikai, local
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_にせマリオ_gra_00001538
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_NM_SURPRIS_gra_00001544
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_にせマリオ_gra_00001538
	.4byte str_EM_O_2_gra_00001560
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_にせマリオ_gra_00001538
	.4byte str_EM_Z_3_gra_00001568
	.4byte str_EM_T_4_gra_00001570
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_にせマリオ_gra_00001538
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0xFE363C8C
	.4byte 0x00020038
	.4byte 0xFE363C82
	.4byte 0x00000002
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000021E
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0xFE363C8C
	.4byte 0x00020036
	.4byte 0xFE363C8E
	.4byte 0xFE363C8F
	.4byte 0x0002003C
	.4byte 0xFE363C8E
	.4byte 0xF24A7CE6
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C8D
	.4byte 0xFE363C8E
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFE363C8A
	.4byte 0x00000049
	.4byte 0xFE363C8D
	.4byte 0xFE363C8A
	.4byte 0x0000001E
	.4byte 0xFE363C8C
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_gra_12_gra_00001578
	.4byte 0x00000000
	.4byte str_にせマリオ_gra_00001538
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0xFE363C8C
	.4byte 0x00020036
	.4byte 0xFE363C8E
	.4byte 0xFE363C8F
	.4byte 0x0002003C
	.4byte 0xFE363C8E
	.4byte 0xF24A7DA8
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C8D
	.4byte 0xFE363C8E
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFE363C8A
	.4byte 0x00000035
	.4byte 0xFE363C8D
	.4byte 0xFE363C8A
	.4byte 0x0000001E
	.4byte 0xFE363C8C
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_gra_13_gra_00001584
	.4byte 0x00000000
	.4byte str_にせマリオ_gra_00001538
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0xFE363C8C
	.4byte 0x00020036
	.4byte 0xFE363C8E
	.4byte 0xFE363C8F
	.4byte 0x0002003C
	.4byte 0xFE363C8E
	.4byte 0xF24A7E05
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C8D
	.4byte 0xFE363C8E
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFE363C8A
	.4byte 0x0000002B
	.4byte 0xFE363C8D
	.4byte 0xFE363C8A
	.4byte 0x0000001E
	.4byte 0xFE363C8C
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_gra_14_gra_00001590
	.4byte 0x00000000
	.4byte str_にせマリオ_gra_00001538
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_gra_0000159c
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_gra_15_gra_000015a4
	.4byte 0x00000000
	.4byte str_にせマリオ_gra_00001538
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_にせマリオ_gra_00001538
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG4_LANPEL_SHOC_gra_000015b0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C8A
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000008
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x00020037
	.4byte 0xFE363C86
	.4byte 0xFFFFFFFF
	.4byte 0x00000021
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x0002001A
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C85
	.4byte 0x00000168
	.4byte 0x00000021
	.4byte 0x0002001B
	.4byte 0xFE363C85
	.4byte 0x00000168
	.4byte 0x00020036
	.4byte 0xFE363C85
	.4byte 0x00000168
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte cam_r
	.4byte 0xFE363C85
	.4byte 0x00020018
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte cam_r
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8A
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_にせマリオ_gra_00001538
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0x00020038
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0xFE363C85
	.4byte 0x00020038
	.4byte 0xFE363C82
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C83
	.4byte 0x0000021E
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFE363C80
	.4byte 0x00000052
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_にせマリオ_gra_00001538
	.4byte str_EM_J_2_gra_000015c8
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_にせマリオ_gra_00001538
	.4byte str_EM_J_2_gra_000015c8
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_にせマリオ_gra_00001538
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0006005B
	.4byte evt_sub_get_dist
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C85
	.4byte 0xFE363C8A
	.4byte 0x0002001A
	.4byte 0xFE363C8A
	.4byte 0x00000014
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG4_MARIO_ROUND_gra_000015d0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_D_1_gra_000015e8
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x00000E10
	.4byte 0x000007D0
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002005B
	.4byte evt_mario_set_dispdir
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
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_gra_0000159c
	.4byte 0x00020018
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFAA2B581
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_にせマリオ_gra_00001538
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0006005B
	.4byte evt_sub_get_dist
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C85
	.4byte 0xFE363C8A
	.4byte 0x0002001A
	.4byte 0xFE363C8A
	.4byte 0x00000014
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_gra_vivian_pose_set_10_text_6C0
	.4byte 0x00000001
	.4byte str_PTR_S_4_gra_000015f0
	.4byte 0x0003005B
	.4byte evt_gra_vivian_pose_set_10_text_6C0
	.4byte 0x00000007
	.4byte str_PTR_T_5_gra_000015f8
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PTR_D_1_gra_00001600
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x00000E10
	.4byte 0x000007D0
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0003005B
	.4byte evt_party_set_dispdir
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PTR_S_1_gra_00001608
	.4byte 0x00020018
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFAA2B582
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFAA2B581
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFAA2B582
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_にせマリオ_gra_00001538
	.4byte 0x40000020
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_にせマリオ_gra_00001538
	.4byte 0x00000400
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_にせマリオ_gra_00001538
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_にせマリオ_gra_00001538
	.4byte str_EM_R_3_gra_00001610
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_にせマリオ_gra_00001538
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_NM_SURPRIS_gra_00001618
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_NM_SURPRIS_gra_00001630
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_にせマリオ_gra_00001538
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_にせマリオ_gra_00001538
	.4byte 0xFFFFFED4
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xF24F2A80
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_にせマリオ_gra_00001538
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_NM_SURPRIS_gra_00001630
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_NM_SURPRIS_gra_00001618
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_にせマリオ_gra_00001538
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_にせマリオ_gra_00001538
	.4byte 0x000000C8
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xF24F2A80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_にせマリオ_gra_00001538
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte zoom
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C8D
	.4byte 0xFE363C8E
	.4byte 0xFE363C8F
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0xFE363C8D
	.4byte 0x00020038
	.4byte 0xFE363C8A
	.4byte 0x00000002
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFE363C8A
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C8A
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFAA2B581
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFAA2B582
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
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
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_gra_vivian_pose_set_10_text_6C0
	.4byte 0x00000001
	.4byte str_PTR_S_1_gra_00001608
	.4byte 0x0003005B
	.4byte evt_gra_vivian_pose_set_10_text_6C0
	.4byte 0x00000007
	.4byte str_PTR_T_1_gra_0000164c
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg4_gra_16_gra_00001654
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_cam_shift_reset
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x00000002
	.4byte 0x00000001
.endobj name_seikai

# .data:0xDB0 | 0xDB0 | size: 0xAD8
.obj evt_machibuse, local
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0xFFFFFF82
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_snd_bgmoff_f
	.4byte 0x00000200
	.4byte 0x00000078
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFFFFFFD0
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_3_gra_00001660
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_にせマリオ_gra_00001538
	.4byte 0xFFFFFF83
	.4byte 0x000000F0
	.4byte 0xFFFFFFE7
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x000000CE
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_gra_05_gra_00001668
	.4byte 0x00000000
	.4byte str_にせマリオ_gra_00001538
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_gra_00_gra_00001674
	.4byte 0x00000000
	.4byte str_にせマリオ_gra_00001538
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_にせマリオ_gra_00001538
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFA8
	.4byte 0x00000160
	.4byte 0x00000205
	.4byte 0xFFFFFFA8
	.4byte 0x00000101
	.4byte 0xFFFFFFE7
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_gra_0000159c
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_FF_ENV_RPL_APPEA_gra_00001680
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000400
	.4byte 0x0001005E
	.4byte evt_yabure_on
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0xFFFFFFD0
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFF9C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFFD8
	.4byte 0x00000020
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000004B
	.4byte 0x00000020
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFFB5
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_にせマリオ_gra_00001538
	.4byte 0xFFFFFF6F
	.4byte 0x0000010E
	.4byte 0xFFFFFFE7
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG4_LANPEL_M_FA_gra_00001698
	.4byte 0xFFFFFF6F
	.4byte 0x0000010E
	.4byte 0xFFFFFFE7
	.4byte 0xFE363C8A
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_にせマリオ_gra_00001538
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000002BC
	.4byte 0xF24C8280
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8A
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_にせマリオ_gra_00001538
	.4byte str_mario_gra_000016b0
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_NM_HAPPY1_gra_000016b8
	.4byte 0xFFFFFF6F
	.4byte 0x0000010E
	.4byte 0xFFFFFFE7
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte evt_yabure_off
	.4byte 0x0003005B
	.4byte evt_gra_vivian_pose_set_10_text_6C0
	.4byte 0x00000001
	.4byte str_PTR_S_4_gra_000015f0
	.4byte 0x0003005B
	.4byte evt_gra_vivian_pose_set_10_text_6C0
	.4byte 0x00000002
	.4byte str_PTR_S_4_gra_000015f0
	.4byte 0x0003005B
	.4byte evt_gra_vivian_pose_set_10_text_6C0
	.4byte 0x00000003
	.4byte str_PTR_S_4_gra_000015f0
	.4byte 0x0003005B
	.4byte evt_gra_vivian_pose_set_10_text_6C0
	.4byte 0x00000007
	.4byte str_PTR_T_5_gra_000015f8
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_にせマリオ_gra_00001538
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0x00020038
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0xFE363C85
	.4byte 0x00020038
	.4byte 0xFE363C82
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C83
	.4byte 0x0000021E
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFE363C80
	.4byte 0x00000089
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x000000CB
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_gra_01_gra_000016cc
	.4byte 0x00000000
	.4byte str_にせマリオ_gra_00001538
	.4byte 0x0007005B
	.4byte zoom
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00000384
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000384
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_gra_02_gra_000016d8
	.4byte 0x00000000
	.4byte str_にせマリオ_gra_00001538
	.4byte 0x00000020
	.4byte 0x0007005B
	.4byte zoom
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x000004B0
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_Y_gra_000016e4
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x000000CB
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_gra_03_gra_000016ec
	.4byte 0x00000000
	.4byte str_にせマリオ_gra_00001538
	.4byte 0x00010026
	.4byte 0x000000CE
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_gra_09_gra_000016f8
	.4byte 0x00000000
	.4byte str_にせマリオ_gra_00001538
	.4byte 0x00010026
	.4byte 0x000000CF
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x0000000F
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xF24B9280
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg4_gra_06_gra_00001704
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_gra_07_gra_00001710
	.4byte 0x00000000
	.4byte str_にせマリオ_gra_00001538
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_gra_09_gra_000016f8
	.4byte 0x00000000
	.4byte str_にせマリオ_gra_00001538
	.4byte 0x00000031
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x000000D1
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0001005E
	.4byte evt_nameent
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0000002A
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x0001005E
	.4byte evt_nameent
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_sub_get_language
	.4byte 0xFE363C81
	.4byte 0x00010022
	.4byte 0xFE363C81
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte str_ランペル_gra_0000171c
	.4byte 0x0001002B
	.4byte 0x00000001
	.4byte 0x0001002B
	.4byte 0x00000006
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte str_Doopliss_gra_00001728
	.4byte 0x0000002E
	.4byte 0x00010024
	.4byte 0x00000005
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte str_Rampel_gra_00001734
	.4byte 0x0000002A
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte str_Rumpel_gra_0000173c
	.4byte 0x00000031
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x0001005E
	.4byte name_seikai
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x000000D2
	.4byte 0x0003005B
	.4byte evt_pouch_remove_item
	.4byte 0x00000044
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG4_GRA1_gra_00001744
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000201
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000120
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_gra_vivian_pose_set_10_text_6C0
	.4byte 0x00000001
	.4byte str_PTR_S_1_gra_00001608
	.4byte 0x0003005B
	.4byte evt_gra_vivian_pose_set_10_text_6C0
	.4byte 0x00000002
	.4byte str_PTR_W_1_gra_00001754
	.4byte 0x0003005B
	.4byte evt_gra_vivian_pose_set_10_text_6C0
	.4byte 0x00000003
	.4byte str_PTR_R_1_gra_0000175c
	.4byte 0x0003005B
	.4byte evt_gra_vivian_pose_set_10_text_6C0
	.4byte 0x00000007
	.4byte str_PTR_T_1_gra_0000164c
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_gra_04_gra_00001764
	.4byte 0x00000000
	.4byte str_にせマリオ_gra_00001538
	.4byte 0x0003005B
	.4byte evt_npc_set_battle_info
	.4byte str_にせマリオ_gra_00001538
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_npc_battle_start
	.4byte str_にせマリオ_gra_00001538
	.4byte 0x0001005B
	.4byte evt_npc_wait_battle_end
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x000000CB
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x000000CB
	.4byte 0x00010026
	.4byte 0x000000CE
	.4byte 0x00010026
	.4byte 0x000000CF
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x000000CF
	.4byte 0x00000031
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_gra_vivian_pose_set_10_text_6C0
	.4byte 0x00000001
	.4byte str_PTR_S_4_gra_000015f0
	.4byte 0x0003005B
	.4byte evt_gra_vivian_pose_set_10_text_6C0
	.4byte 0x00000007
	.4byte str_PTR_T_5_gra_000015f8
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_にせマリオ_gra_00001538
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFE363C8A
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_にせマリオ_gra_00001538
	.4byte 0xFE363C80
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_にせマリオ_gra_00001538
	.4byte str_mario_gra_000016b0
	.4byte 0x0002001A
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF1F
	.4byte 0x00000086
	.4byte 0x00000216
	.4byte 0xFFFFFF1F
	.4byte 0x00000027
	.4byte 0xFFFFFFF8
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_にせマリオ_gra_00001538
	.4byte 0x00000020
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFE7F
	.4byte 0x00000000
	.4byte 0xF24D9A80
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x0000044C
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFA8
	.4byte 0x00000089
	.4byte 0x00000205
	.4byte 0xFFFFFFA8
	.4byte 0x0000002A
	.4byte 0xFFFFFFE7
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_gra_11_gra_00001770
	.4byte 0x00000000
	.4byte str_にせマリオ_gra_00001538
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_usu_01_gra_0000177c
	.4byte str_e_bero_gra_00001784
	.4byte 0x00000020
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000000BA
	.4byte 0x00000095
	.4byte 0x00000216
	.4byte 0x000000BA
	.4byte 0x00000036
	.4byte 0xFFFFFFF8
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_にせマリオ_gra_00001538
	.4byte 0x00000020
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x00000181
	.4byte 0x00000000
	.4byte 0xF24D9A80
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000004E2
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFEC
	.4byte 0x00000089
	.4byte 0x00000205
	.4byte 0xFFFFFFEC
	.4byte 0x0000002A
	.4byte 0xFFFFFFE7
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000352
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg4_gra_11_gra_00001770
	.4byte 0x00000000
	.4byte str_にせマリオ_gra_00001538
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_gra_01_gra_0000178c
	.4byte str_w_bero1_gra_00001794
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_machibuse

# .data:0x1888 | 0x1888 | size: 0xB4
.obj bero_entry_data, local
	.4byte str_e_bero_gra_00001784
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_gra_01_gra_0000178c
	.4byte str_w_bero1_gra_00001794
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_w_bero_gra_0000179c
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_usu_01_gra_0000177c
	.4byte str_e_bero_gra_00001784
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
.endobj bero_entry_data

# .data:0x193C | 0x193C | size: 0xB8
.obj npcEnt, local
	.4byte str_にせマリオ_gra_00001538
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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

# .data:0x19F4 | 0x19F4 | size: 0x30
.obj tree_tbl, local
	.4byte 0x00000002
	.4byte str_A_ki_1_gra_000017a4
	.4byte str_S_gra00_ki_gra_000017ac
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj tree_tbl

# .data:0x1A24 | 0x1A24 | size: 0x14
.obj evt_majin_key, local
	.4byte 0x00020032
	.4byte 0xF84063AB
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_majin_key

# .data:0x1A38 | 0x1A38 | size: 0x128
.obj gra_00_init_evt_10_data_1A38, global
	.4byte 0x00020032
	.4byte 0xF8405C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG4_GRA1_gra_00001744
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG4_USU1_gra_000017b8
	.4byte 0x0001005B
	.4byte evt_kagemario_init_10_text_820
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0001005E
	.4byte evt_usu_kagemario_party_kill_10_data_5028
	.4byte 0x0002005B
	.4byte evt_npc_setup
	.4byte npcEnt
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte tree_tbl
	.4byte 0x0001005E
	.4byte evt_sub_tree_access_entry
	.4byte 0x0009005B
	.4byte evt_mobj_brick
	.4byte str_blk01_gra_000017c8
	.4byte 0x000000FA
	.4byte 0x0000000F
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF9718881
	.4byte 0x0009005B
	.4byte evt_mobj_brick
	.4byte str_blk02_gra_000017d0
	.4byte 0xFFFFFEF7
	.4byte 0x0000003C
	.4byte 0xFFFFFFAB
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0xF84063A9
	.4byte 0x00020018
	.4byte 0xF84063AB
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_majin_key_gra_000017d8
	.4byte 0x00000023
	.4byte 0xFFFFFEFE
	.4byte 0x00000000
	.4byte 0xFFFFFFAB
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte evt_majin_key
	.4byte 0x00000021
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x000000CA
	.4byte 0x000000D1
	.4byte 0x0001005C
	.4byte evt_machibuse
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj gra_00_init_evt_10_data_1A38
