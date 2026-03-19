.include "macros.inc"
.file "pik_00.o"

# 0x0000011C..0x0000055C | size: 0x440
.text
.balign 4

# .text:0x0 | 0x11C | size: 0x4C
.fn img_flag, local
/* 0000011C 000001D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000120 000001DC  7C 08 02 A6 */	mflr r0
/* 00000124 000001E0  3C 60 00 00 */	lis r3, gp@ha
/* 00000128 000001E4  3C A0 00 00 */	lis r5, str_img_pik_00001fcc@ha
/* 0000012C 000001E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000130 000001EC  80 83 00 00 */	lwz r4, gp@l(r3)
/* 00000134 000001F0  38 65 00 00 */	addi r3, r5, str_img_pik_00001fcc@l
/* 00000138 000001F4  80 84 00 14 */	lwz r4, 0x14(r4)
/* 0000013C 000001F8  30 04 FF FF */	subic r0, r4, 0x1
/* 00000140 000001FC  7C 80 21 10 */	subfe r4, r0, r4
/* 00000144 00000200  4B FF FE BD */	bl imgNameToPtr
/* 00000148 00000204  80 63 01 04 */	lwz r3, 0x104(r3)
/* 0000014C 00000208  38 80 18 00 */	li r4, 0x1800
/* 00000150 0000020C  4B FF FE B1 */	bl animPoseSetMaterialFlagOn
/* 00000154 00000210  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000158 00000214  38 60 00 02 */	li r3, 0x2
/* 0000015C 00000218  7C 08 03 A6 */	mtlr r0
/* 00000160 0000021C  38 21 00 10 */	addi r1, r1, 0x10
/* 00000164 00000220  4E 80 00 20 */	blr
.endfn img_flag

# .text:0x4C | 0x168 | size: 0xF4
.fn under, local
/* 00000168 00000224  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 0000016C 00000228  7C 08 02 A6 */	mflr r0
/* 00000170 0000022C  90 01 00 24 */	stw r0, 0x24(r1)
/* 00000174 00000230  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 00000178 00000234  7C 7D 1B 78 */	mr r29, r3
/* 0000017C 00000238  7C 9E 23 78 */	mr r30, r4
/* 00000180 0000023C  4B FF FE 81 */	bl marioGetPtr
/* 00000184 00000240  38 60 00 00 */	li r3, 0x0
/* 00000188 00000244  4B FF FE 79 */	bl partyGetPtr
/* 0000018C 00000248  2C 1E 00 00 */	cmpwi r30, 0x0
/* 00000190 0000024C  3B C0 00 00 */	li r30, 0x0
/* 00000194 00000250  41 82 00 0C */	beq .L_000001A0
/* 00000198 00000254  38 00 00 00 */	li r0, 0x0
/* 0000019C 00000258  90 1D 00 78 */	stw r0, 0x78(r29)
.L_000001A0:
/* 000001A0 0000025C  4B FF FE 61 */	bl marioSearchUnder
/* 000001A4 00000260  3C 80 FA A3 */	lis r4, 0xfaa3
/* 000001A8 00000264  7C 7F 1B 78 */	mr r31, r3
/* 000001AC 00000268  7F A3 EB 78 */	mr r3, r29
/* 000001B0 0000026C  38 84 B5 8B */	subi r4, r4, 0x4a75
/* 000001B4 00000270  4B FF FE 4D */	bl evtGetValue
/* 000001B8 00000274  2C 03 00 00 */	cmpwi r3, 0x0
/* 000001BC 00000278  41 82 00 08 */	beq .L_000001C4
/* 000001C0 0000027C  3B C0 00 01 */	li r30, 0x1
.L_000001C4:
/* 000001C4 00000280  28 1F 00 00 */	cmplwi r31, 0x0
/* 000001C8 00000284  41 82 00 20 */	beq .L_000001E8
/* 000001CC 00000288  7F E3 FB 78 */	mr r3, r31
/* 000001D0 0000028C  4B FF FE 31 */	bl hitGetName
/* 000001D4 00000290  3C 80 00 00 */	lis r4, str_a_home_yuka_pik_000020b4@ha
/* 000001D8 00000294  38 84 00 00 */	addi r4, r4, str_a_home_yuka_pik_000020b4@l
/* 000001DC 00000298  4B FF FE 25 */	bl strcmp
/* 000001E0 0000029C  2C 03 00 00 */	cmpwi r3, 0x0
/* 000001E4 000002A0  41 82 00 0C */	beq .L_000001F0
.L_000001E8:
/* 000001E8 000002A4  2C 1E 00 00 */	cmpwi r30, 0x0
/* 000001EC 000002A8  41 82 00 34 */	beq .L_00000220
.L_000001F0:
/* 000001F0 000002AC  80 1D 00 78 */	lwz r0, 0x78(r29)
/* 000001F4 000002B0  2C 00 00 00 */	cmpwi r0, 0x0
/* 000001F8 000002B4  41 82 00 0C */	beq .L_00000204
/* 000001FC 000002B8  2C 1E 00 00 */	cmpwi r30, 0x0
/* 00000200 000002BC  41 82 00 44 */	beq .L_00000244
.L_00000204:
/* 00000204 000002C0  3C 60 00 00 */	lis r3, str_ie_1_pik_00002088@ha
/* 00000208 000002C4  38 80 00 01 */	li r4, 0x1
/* 0000020C 000002C8  38 63 00 00 */	addi r3, r3, str_ie_1_pik_00002088@l
/* 00000210 000002CC  4B FF FD F1 */	bl mapGrpFlagOn
/* 00000214 000002D0  38 00 00 01 */	li r0, 0x1
/* 00000218 000002D4  90 1D 00 78 */	stw r0, 0x78(r29)
/* 0000021C 000002D8  48 00 00 28 */	b .L_00000244
.L_00000220:
/* 00000220 000002DC  80 1D 00 78 */	lwz r0, 0x78(r29)
/* 00000224 000002E0  2C 00 00 00 */	cmpwi r0, 0x0
/* 00000228 000002E4  41 82 00 1C */	beq .L_00000244
/* 0000022C 000002E8  3C 60 00 00 */	lis r3, str_ie_1_pik_00002088@ha
/* 00000230 000002EC  38 80 00 01 */	li r4, 0x1
/* 00000234 000002F0  38 63 00 00 */	addi r3, r3, str_ie_1_pik_00002088@l
/* 00000238 000002F4  4B FF FD C9 */	bl mapGrpFlagOff
/* 0000023C 000002F8  38 00 00 00 */	li r0, 0x0
/* 00000240 000002FC  90 1D 00 78 */	stw r0, 0x78(r29)
.L_00000244:
/* 00000244 00000300  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 00000248 00000304  38 60 00 00 */	li r3, 0x0
/* 0000024C 00000308  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00000250 0000030C  7C 08 03 A6 */	mtlr r0
/* 00000254 00000310  38 21 00 20 */	addi r1, r1, 0x20
/* 00000258 00000314  4E 80 00 20 */	blr
.endfn under

# .text:0x140 | 0x25C | size: 0x44
.fn irai_29_15_cb, local
/* 0000025C 00000318  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000260 0000031C  7C 08 02 A6 */	mflr r0
/* 00000264 00000320  2C 03 00 03 */	cmpwi r3, 0x3
/* 00000268 00000324  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000026C 00000328  80 64 00 00 */	lwz r3, 0x0(r4)
/* 00000270 0000032C  40 82 00 20 */	bne .L_00000290
/* 00000274 00000330  A0 03 00 08 */	lhz r0, 0x8(r3)
/* 00000278 00000334  28 00 00 01 */	cmplwi r0, 0x1
/* 0000027C 00000338  40 82 00 14 */	bne .L_00000290
/* 00000280 0000033C  3C 80 00 00 */	lis r4, str_BGM_EVT_NOKO_SAIKAI1_pik_000020c0@ha
/* 00000284 00000340  38 60 02 00 */	li r3, 0x200
/* 00000288 00000344  38 84 00 00 */	addi r4, r4, str_BGM_EVT_NOKO_SAIKAI1_pik_000020c0@l
/* 0000028C 00000348  4B FF FD 75 */	bl psndBGMOn
.L_00000290:
/* 00000290 0000034C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000294 00000350  7C 08 03 A6 */	mtlr r0
/* 00000298 00000354  38 21 00 10 */	addi r1, r1, 0x10
/* 0000029C 00000358  4E 80 00 20 */	blr
.endfn irai_29_15_cb

# .text:0x184 | 0x2A0 | size: 0x24
.fn unk_pik_0000035c, local
/* 000002A0 0000035C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000002A4 00000360  7C 08 02 A6 */	mflr r0
/* 000002A8 00000364  90 01 00 14 */	stw r0, 0x14(r1)
/* 000002AC 00000368  4B FF FD 55 */	bl statusWinForceOff
/* 000002B0 0000036C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000002B4 00000370  38 60 00 02 */	li r3, 0x2
/* 000002B8 00000374  7C 08 03 A6 */	mtlr r0
/* 000002BC 00000378  38 21 00 10 */	addi r1, r1, 0x10
/* 000002C0 0000037C  4E 80 00 20 */	blr
.endfn unk_pik_0000035c

# .text:0x1A8 | 0x2C4 | size: 0x1C0
.fn zoom, local
/* 000002C4 00000380  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 000002C8 00000384  7C 08 02 A6 */	mflr r0
/* 000002CC 00000388  90 01 00 74 */	stw r0, 0x74(r1)
/* 000002D0 0000038C  BF 61 00 5C */	stmw r27, 0x5c(r1)
/* 000002D4 00000390  7C 7B 1B 78 */	mr r27, r3
/* 000002D8 00000394  3C 60 00 00 */	lis r3, str_ナリキンパパ_pik_00001ac4@ha
/* 000002DC 00000398  38 63 00 00 */	addi r3, r3, str_ナリキンパパ_pik_00001ac4@l
/* 000002E0 0000039C  83 BB 00 18 */	lwz r29, 0x18(r27)
/* 000002E4 000003A0  4B FF FD 1D */	bl npcNameToPtr
/* 000002E8 000003A4  7C 7E 1B 78 */	mr r30, r3
/* 000002EC 000003A8  4B FF FD 15 */	bl marioGetPtr
/* 000002F0 000003AC  7C 60 1B 78 */	mr r0, r3
/* 000002F4 000003B0  38 60 00 04 */	li r3, 0x4
/* 000002F8 000003B4  7C 1C 03 78 */	mr r28, r0
/* 000002FC 000003B8  4B FF FD 05 */	bl camGetPtr
/* 00000300 000003BC  3C 80 00 00 */	lis r4, zero_pik_000020d8@ha
/* 00000304 000003C0  7C 7F 1B 78 */	mr r31, r3
/* 00000308 000003C4  38 A4 00 00 */	addi r5, r4, zero_pik_000020d8@l
/* 0000030C 000003C8  7F 84 E3 78 */	mr r4, r28
/* 00000310 000003CC  C0 05 00 00 */	lfs f0, 0x0(r5)
/* 00000314 000003D0  38 A1 00 08 */	addi r5, r1, 0x8
/* 00000318 000003D4  D0 01 00 08 */	stfs f0, 0x8(r1)
/* 0000031C 000003D8  4B FF FC E5 */	bl camShiftMain
/* 00000320 000003DC  C0 3F 00 88 */	lfs f1, 0x88(r31)
/* 00000324 000003E0  38 61 00 30 */	addi r3, r1, 0x30
/* 00000328 000003E4  C0 5F 00 8C */	lfs f2, 0x8c(r31)
/* 0000032C 000003E8  C0 7F 00 90 */	lfs f3, 0x90(r31)
/* 00000330 000003EC  C0 9F 00 A0 */	lfs f4, 0xa0(r31)
/* 00000334 000003F0  C0 BF 00 A4 */	lfs f5, 0xa4(r31)
/* 00000338 000003F4  C0 DF 00 A8 */	lfs f6, 0xa8(r31)
/* 0000033C 000003F8  C0 E1 00 08 */	lfs f7, 0x8(r1)
/* 00000340 000003FC  4B FF FC C1 */	bl camRoadMain
/* 00000344 00000400  3C 80 00 00 */	lis r4, vec3_pik_00001aac@ha
/* 00000348 00000404  85 64 00 00 */	lwzu r11, vec3_pik_00001aac@l(r4)
/* 0000034C 00000408  3C 60 00 00 */	lis r3, vec3_pik_00001aa0@ha
/* 00000350 0000040C  C0 A1 00 48 */	lfs f5, 0x48(r1)
/* 00000354 00000410  39 03 00 00 */	addi r8, r3, vec3_pik_00001aa0@l
/* 00000358 00000414  81 44 00 04 */	lwz r10, 0x4(r4)
/* 0000035C 00000418  81 24 00 08 */	lwz r9, 0x8(r4)
/* 00000360 0000041C  38 61 00 18 */	addi r3, r1, 0x18
/* 00000364 00000420  80 E8 00 00 */	lwz r7, 0x0(r8)
/* 00000368 00000424  38 81 00 0C */	addi r4, r1, 0xc
/* 0000036C 00000428  80 C8 00 04 */	lwz r6, 0x4(r8)
/* 00000370 0000042C  38 A1 00 24 */	addi r5, r1, 0x24
/* 00000374 00000430  80 08 00 08 */	lwz r0, 0x8(r8)
/* 00000378 00000434  91 61 00 0C */	stw r11, 0xc(r1)
/* 0000037C 00000438  C0 81 00 4C */	lfs f4, 0x4c(r1)
/* 00000380 0000043C  91 41 00 10 */	stw r10, 0x10(r1)
/* 00000384 00000440  C0 61 00 50 */	lfs f3, 0x50(r1)
/* 00000388 00000444  91 21 00 14 */	stw r9, 0x14(r1)
/* 0000038C 00000448  C0 41 00 3C */	lfs f2, 0x3c(r1)
/* 00000390 0000044C  90 E1 00 18 */	stw r7, 0x18(r1)
/* 00000394 00000450  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 00000398 00000454  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 0000039C 00000458  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 000003A0 0000045C  90 01 00 20 */	stw r0, 0x20(r1)
/* 000003A4 00000460  D0 A1 00 0C */	stfs f5, 0xc(r1)
/* 000003A8 00000464  D0 81 00 10 */	stfs f4, 0x10(r1)
/* 000003AC 00000468  D0 61 00 14 */	stfs f3, 0x14(r1)
/* 000003B0 0000046C  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 000003B4 00000470  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 000003B8 00000474  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 000003BC 00000478  4B FF FC 45 */	bl PSVECSubtract
/* 000003C0 0000047C  3C 80 00 00 */	lis r4, float_0p7_pik_000020dc@ha
/* 000003C4 00000480  38 61 00 24 */	addi r3, r1, 0x24
/* 000003C8 00000484  C0 24 00 00 */	lfs f1, float_0p7_pik_000020dc@l(r4)
/* 000003CC 00000488  7C 64 1B 78 */	mr r4, r3
/* 000003D0 0000048C  4B FF FC 31 */	bl PSVECScale
/* 000003D4 00000490  38 81 00 24 */	addi r4, r1, 0x24
/* 000003D8 00000494  38 7F 00 18 */	addi r3, r31, 0x18
/* 000003DC 00000498  7C 85 23 78 */	mr r5, r4
/* 000003E0 0000049C  4B FF FC 21 */	bl PSVECAdd
/* 000003E4 000004A0  C0 5E 00 8C */	lfs f2, 0x8c(r30)
/* 000003E8 000004A4  3C 60 00 00 */	lis r3, float_0p5_pik_000020e0@ha
/* 000003EC 000004A8  C0 3C 00 8C */	lfs f1, 0x8c(r28)
/* 000003F0 000004AC  C0 03 00 00 */	lfs f0, float_0p5_pik_000020e0@l(r3)
/* 000003F4 000004B0  7F 63 DB 78 */	mr r3, r27
/* 000003F8 000004B4  EC 22 08 2A */	fadds f1, f2, f1
/* 000003FC 000004B8  80 9D 00 00 */	lwz r4, 0x0(r29)
/* 00000400 000004BC  EC 21 00 32 */	fmuls f1, f1, f0
/* 00000404 000004C0  4B FF FB FD */	bl evtSetFloat
/* 00000408 000004C4  80 9D 00 04 */	lwz r4, 0x4(r29)
/* 0000040C 000004C8  7F 63 DB 78 */	mr r3, r27
/* 00000410 000004CC  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 00000414 000004D0  4B FF FB ED */	bl evtSetFloat
/* 00000418 000004D4  80 9D 00 08 */	lwz r4, 0x8(r29)
/* 0000041C 000004D8  7F 63 DB 78 */	mr r3, r27
/* 00000420 000004DC  C0 21 00 2C */	lfs f1, 0x2c(r1)
/* 00000424 000004E0  4B FF FB DD */	bl evtSetFloat
/* 00000428 000004E4  C0 5E 00 8C */	lfs f2, 0x8c(r30)
/* 0000042C 000004E8  3C 60 00 00 */	lis r3, float_0p5_pik_000020e0@ha
/* 00000430 000004EC  C0 3C 00 8C */	lfs f1, 0x8c(r28)
/* 00000434 000004F0  C0 03 00 00 */	lfs f0, float_0p5_pik_000020e0@l(r3)
/* 00000438 000004F4  7F 63 DB 78 */	mr r3, r27
/* 0000043C 000004F8  EC 22 08 2A */	fadds f1, f2, f1
/* 00000440 000004FC  80 9D 00 0C */	lwz r4, 0xc(r29)
/* 00000444 00000500  EC 21 00 32 */	fmuls f1, f1, f0
/* 00000448 00000504  4B FF FB B9 */	bl evtSetFloat
/* 0000044C 00000508  80 9D 00 10 */	lwz r4, 0x10(r29)
/* 00000450 0000050C  7F 63 DB 78 */	mr r3, r27
/* 00000454 00000510  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 00000458 00000514  4B FF FB A9 */	bl evtSetFloat
/* 0000045C 00000518  80 9D 00 14 */	lwz r4, 0x14(r29)
/* 00000460 0000051C  7F 63 DB 78 */	mr r3, r27
/* 00000464 00000520  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 00000468 00000524  4B FF FB 99 */	bl evtSetFloat
/* 0000046C 00000528  BB 61 00 5C */	lmw r27, 0x5c(r1)
/* 00000470 0000052C  38 60 00 02 */	li r3, 0x2
/* 00000474 00000530  80 01 00 74 */	lwz r0, 0x74(r1)
/* 00000478 00000534  7C 08 03 A6 */	mtlr r0
/* 0000047C 00000538  38 21 00 70 */	addi r1, r1, 0x70
/* 00000480 0000053C  4E 80 00 20 */	blr
.endfn zoom

# .text:0x368 | 0x484 | size: 0x28
.fn resha_tev, local
/* 00000484 00000540  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000488 00000544  7C 08 02 A6 */	mflr r0
/* 0000048C 00000548  7C 64 1B 78 */	mr r4, r3
/* 00000490 0000054C  38 60 00 07 */	li r3, 0x7
/* 00000494 00000550  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000498 00000554  4B FF FB 69 */	bl envAddTev
/* 0000049C 00000558  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000004A0 0000055C  7C 08 03 A6 */	mtlr r0
/* 000004A4 00000560  38 21 00 10 */	addi r1, r1, 0x10
/* 000004A8 00000564  4E 80 00 20 */	blr
.endfn resha_tev

# .text:0x390 | 0x4AC | size: 0xB0
.fn ramp_r, local
/* 000004AC 00000568  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 000004B0 0000056C  7C 08 02 A6 */	mflr r0
/* 000004B4 00000570  90 01 00 34 */	stw r0, 0x34(r1)
/* 000004B8 00000574  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 000004BC 00000578  F3 E1 00 28 */	psq_st f31, 0x28(r1), 0, qr0
/* 000004C0 0000057C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 000004C4 00000580  3C 80 FD 05 */	lis r4, 0xfd05
/* 000004C8 00000584  7C 7F 1B 78 */	mr r31, r3
/* 000004CC 00000588  38 84 0F 80 */	addi r4, r4, 0xf80
/* 000004D0 0000058C  4B FF FB 31 */	bl evtGetFloat
/* 000004D4 00000590  3C 60 00 00 */	lis r3, gp@ha
/* 000004D8 00000594  3C 00 43 30 */	lis r0, 0x4330
/* 000004DC 00000598  38 83 00 00 */	addi r4, r3, gp@l
/* 000004E0 0000059C  90 01 00 08 */	stw r0, 0x8(r1)
/* 000004E4 000005A0  80 A4 00 00 */	lwz r5, 0x0(r4)
/* 000004E8 000005A4  3C 60 00 00 */	lis r3, double_to_int_mask_pik_000020f0@ha
/* 000004EC 000005A8  38 83 00 00 */	addi r4, r3, double_to_int_mask_pik_000020f0@l
/* 000004F0 000005AC  FF E0 0A 10 */	fabs f31, f1
/* 000004F4 000005B0  80 05 00 1C */	lwz r0, 0x1c(r5)
/* 000004F8 000005B4  3C 60 00 00 */	lis r3, float_15_pik_000020e4@ha
/* 000004FC 000005B8  C8 44 00 00 */	lfd f2, 0x0(r4)
/* 00000500 000005BC  90 01 00 0C */	stw r0, 0xc(r1)
/* 00000504 000005C0  C0 03 00 00 */	lfs f0, float_15_pik_000020e4@l(r3)
/* 00000508 000005C4  C8 21 00 08 */	lfd f1, 0x8(r1)
/* 0000050C 000005C8  EC 21 10 28 */	fsubs f1, f1, f2
/* 00000510 000005CC  EC 21 00 24 */	fdivs f1, f1, f0
/* 00000514 000005D0  4B FF FA ED */	bl sin
/* 00000518 000005D4  3C 60 00 00 */	lis r3, float_1p8_pik_000020e8@ha
/* 0000051C 000005D8  3C 80 FE 36 */	lis r4, 0xfe36
/* 00000520 000005DC  C0 03 00 00 */	lfs f0, float_1p8_pik_000020e8@l(r3)
/* 00000524 000005E0  FC 20 08 18 */	frsp f1, f1
/* 00000528 000005E4  7F E3 FB 78 */	mr r3, r31
/* 0000052C 000005E8  38 84 3C 8A */	addi r4, r4, 0x3c8a
/* 00000530 000005EC  EC 00 07 F2 */	fmuls f0, f0, f31
/* 00000534 000005F0  EC 20 00 72 */	fmuls f1, f0, f1
/* 00000538 000005F4  4B FF FA C9 */	bl evtSetFloat
/* 0000053C 000005F8  38 60 00 02 */	li r3, 0x2
/* 00000540 000005FC  E3 E1 00 28 */	psq_l f31, 0x28(r1), 0, qr0
/* 00000544 00000600  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00000548 00000604  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 0000054C 00000608  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 00000550 0000060C  7C 08 03 A6 */	mtlr r0
/* 00000554 00000610  38 21 00 30 */	addi r1, r1, 0x30
/* 00000558 00000614  4E 80 00 20 */	blr
.endfn ramp_r

# 0x00000030..0x00000C30 | size: 0xC00
.rodata
.balign 8

# .rodata:0x0 | 0x30 | size: 0x6
.obj str_mod_1_pik_000014f8, local
	.string "mod_1"
.endobj str_mod_1_pik_000014f8

# .rodata:0x6 | 0x36 | size: 0x2
.obj gap_03_00000036_rodata, global
.hidden gap_03_00000036_rodata
	.2byte 0x0000
.endobj gap_03_00000036_rodata

# .rodata:0x8 | 0x38 | size: 0x8
.obj str_sha_1_1_pik_00001500, local
	.string "sha_1_1"
.endobj str_sha_1_1_pik_00001500

# .rodata:0x10 | 0x40 | size: 0x8
.obj str_sha_1_2_pik_00001508, local
	.string "sha_1_2"
.endobj str_sha_1_2_pik_00001508

# .rodata:0x18 | 0x48 | size: 0x8
.obj str_sha_1_3_pik_00001510, local
	.string "sha_1_3"
.endobj str_sha_1_3_pik_00001510

# .rodata:0x20 | 0x50 | size: 0x8
.obj str_sha_1_4_pik_00001518, local
	.string "sha_1_4"
.endobj str_sha_1_4_pik_00001518

# .rodata:0x28 | 0x58 | size: 0x8
.obj str_sha_1_5_pik_00001520, local
	.string "sha_1_5"
.endobj str_sha_1_5_pik_00001520

# .rodata:0x30 | 0x60 | size: 0x8
.obj str_sha_2_1_pik_00001528, local
	.string "sha_2_1"
.endobj str_sha_2_1_pik_00001528

# .rodata:0x38 | 0x68 | size: 0x8
.obj str_sha_2_2_pik_00001530, local
	.string "sha_2_2"
.endobj str_sha_2_2_pik_00001530

# .rodata:0x40 | 0x70 | size: 0x8
.obj str_sha_2_3_pik_00001538, local
	.string "sha_2_3"
.endobj str_sha_2_3_pik_00001538

# .rodata:0x48 | 0x78 | size: 0x8
.obj str_sha_3_1_pik_00001540, local
	.string "sha_3_1"
.endobj str_sha_3_1_pik_00001540

# .rodata:0x50 | 0x80 | size: 0x8
.obj str_sha_3_2_pik_00001548, local
	.string "sha_3_2"
.endobj str_sha_3_2_pik_00001548

# .rodata:0x58 | 0x88 | size: 0x8
.obj str_sha_3_3_pik_00001550, local
	.string "sha_3_3"
.endobj str_sha_3_3_pik_00001550

# .rodata:0x60 | 0x90 | size: 0x8
.obj str_sha_4_1_pik_00001558, local
	.string "sha_4_1"
.endobj str_sha_4_1_pik_00001558

# .rodata:0x68 | 0x98 | size: 0x8
.obj str_sha_4_2_pik_00001560, local
	.string "sha_4_2"
.endobj str_sha_4_2_pik_00001560

# .rodata:0x70 | 0xA0 | size: 0x8
.obj str_sha_4_3_pik_00001568, local
	.string "sha_4_3"
.endobj str_sha_4_3_pik_00001568

# .rodata:0x78 | 0xA8 | size: 0x8
.obj str_sha_5_1_pik_00001570, local
	.string "sha_5_1"
.endobj str_sha_5_1_pik_00001570

# .rodata:0x80 | 0xB0 | size: 0x8
.obj str_sha_5_2_pik_00001578, local
	.string "sha_5_2"
.endobj str_sha_5_2_pik_00001578

# .rodata:0x88 | 0xB8 | size: 0x8
.obj str_sha_5_3_pik_00001580, local
	.string "sha_5_3"
.endobj str_sha_5_3_pik_00001580

# .rodata:0x90 | 0xC0 | size: 0x8
.obj str_sha_6_1_pik_00001588, local
	.string "sha_6_1"
.endobj str_sha_6_1_pik_00001588

# .rodata:0x98 | 0xC8 | size: 0x8
.obj str_sha_6_2_pik_00001590, local
	.string "sha_6_2"
.endobj str_sha_6_2_pik_00001590

# .rodata:0xA0 | 0xD0 | size: 0x8
.obj str_sha_6_3_pik_00001598, local
	.string "sha_6_3"
.endobj str_sha_6_3_pik_00001598

# .rodata:0xA8 | 0xD8 | size: 0xA
.obj str_sha_1_1_c_pik_000015a0, local
	.string "sha_1_1_c"
.endobj str_sha_1_1_c_pik_000015a0

# .rodata:0xB2 | 0xE2 | size: 0x2
.obj gap_03_000000E2_rodata, global
.hidden gap_03_000000E2_rodata
	.2byte 0x0000
.endobj gap_03_000000E2_rodata

# .rodata:0xB4 | 0xE4 | size: 0xA
.obj str_sha_1_2_c_pik_000015ac, local
	.string "sha_1_2_c"
.endobj str_sha_1_2_c_pik_000015ac

# .rodata:0xBE | 0xEE | size: 0x2
.obj gap_03_000000EE_rodata, global
.hidden gap_03_000000EE_rodata
	.2byte 0x0000
.endobj gap_03_000000EE_rodata

# .rodata:0xC0 | 0xF0 | size: 0xA
.obj str_sha_1_3_c_pik_000015b8, local
	.string "sha_1_3_c"
.endobj str_sha_1_3_c_pik_000015b8

# .rodata:0xCA | 0xFA | size: 0x2
.obj gap_03_000000FA_rodata, global
.hidden gap_03_000000FA_rodata
	.2byte 0x0000
.endobj gap_03_000000FA_rodata

# .rodata:0xCC | 0xFC | size: 0xA
.obj str_sha_1_4_c_pik_000015c4, local
	.string "sha_1_4_c"
.endobj str_sha_1_4_c_pik_000015c4

# .rodata:0xD6 | 0x106 | size: 0x2
.obj gap_03_00000106_rodata, global
.hidden gap_03_00000106_rodata
	.2byte 0x0000
.endobj gap_03_00000106_rodata

# .rodata:0xD8 | 0x108 | size: 0xA
.obj str_sha_1_5_c_pik_000015d0, local
	.string "sha_1_5_c"
.endobj str_sha_1_5_c_pik_000015d0

# .rodata:0xE2 | 0x112 | size: 0x2
.obj gap_03_00000112_rodata, global
.hidden gap_03_00000112_rodata
	.2byte 0x0000
.endobj gap_03_00000112_rodata

# .rodata:0xE4 | 0x114 | size: 0xA
.obj str_sha_6_1_c_pik_000015dc, local
	.string "sha_6_1_c"
.endobj str_sha_6_1_c_pik_000015dc

# .rodata:0xEE | 0x11E | size: 0x2
.obj gap_03_0000011E_rodata, global
.hidden gap_03_0000011E_rodata
	.2byte 0x0000
.endobj gap_03_0000011E_rodata

# .rodata:0xF0 | 0x120 | size: 0xA
.obj str_sha_6_2_c_pik_000015e8, local
	.string "sha_6_2_c"
.endobj str_sha_6_2_c_pik_000015e8

# .rodata:0xFA | 0x12A | size: 0x2
.obj gap_03_0000012A_rodata, global
.hidden gap_03_0000012A_rodata
	.2byte 0x0000
.endobj gap_03_0000012A_rodata

# .rodata:0xFC | 0x12C | size: 0xA
.obj str_sha_6_3_c_pik_000015f4, local
	.string "sha_6_3_c"
.endobj str_sha_6_3_c_pik_000015f4

# .rodata:0x106 | 0x136 | size: 0x2
.obj gap_03_00000136_rodata, global
.hidden gap_03_00000136_rodata
	.2byte 0x0000
.endobj gap_03_00000136_rodata

# .rodata:0x108 | 0x138 | size: 0x6
.obj str_bou_1_pik_00001600, local
	.string "bou_1"
.endobj str_bou_1_pik_00001600

# .rodata:0x10E | 0x13E | size: 0x2
.obj gap_03_0000013E_rodata, global
.hidden gap_03_0000013E_rodata
	.2byte 0x0000
.endobj gap_03_0000013E_rodata

# .rodata:0x110 | 0x140 | size: 0x6
.obj str_bou_2_pik_00001608, local
	.string "bou_2"
.endobj str_bou_2_pik_00001608

# .rodata:0x116 | 0x146 | size: 0x2
.obj gap_03_00000146_rodata, global
.hidden gap_03_00000146_rodata
	.2byte 0x0000
.endobj gap_03_00000146_rodata

# .rodata:0x118 | 0x148 | size: 0x6
.obj str_bou_3_pik_00001610, local
	.string "bou_3"
.endobj str_bou_3_pik_00001610

# .rodata:0x11E | 0x14E | size: 0x2
.obj gap_03_0000014E_rodata, global
.hidden gap_03_0000014E_rodata
	.2byte 0x0000
.endobj gap_03_0000014E_rodata

# .rodata:0x120 | 0x150 | size: 0x6
.obj str_bou_4_pik_00001618, local
	.string "bou_4"
.endobj str_bou_4_pik_00001618

# .rodata:0x126 | 0x156 | size: 0x2
.obj gap_03_00000156_rodata, global
.hidden gap_03_00000156_rodata
	.2byte 0x0000
.endobj gap_03_00000156_rodata

# .rodata:0x128 | 0x158 | size: 0x8
.obj str_bou_1_c_pik_00001620, local
	.string "bou_1_c"
.endobj str_bou_1_c_pik_00001620

# .rodata:0x130 | 0x160 | size: 0x8
.obj str_bou_2_c_pik_00001628, local
	.string "bou_2_c"
.endobj str_bou_2_c_pik_00001628

# .rodata:0x138 | 0x168 | size: 0x8
.obj str_bou_3_c_pik_00001630, local
	.string "bou_3_c"
.endobj str_bou_3_c_pik_00001630

# .rodata:0x140 | 0x170 | size: 0x8
.obj str_bou_4_c_pik_00001638, local
	.string "bou_4_c"
.endobj str_bou_4_c_pik_00001638

# .rodata:0x148 | 0x178 | size: 0x6
.obj str_jimen_pik_00001640, local
	.string "jimen"
.endobj str_jimen_pik_00001640

# .rodata:0x14E | 0x17E | size: 0x2
.obj gap_03_0000017E_rodata, global
.hidden gap_03_0000017E_rodata
	.2byte 0x0000
.endobj gap_03_0000017E_rodata

# .rodata:0x150 | 0x180 | size: 0x5
.obj str_yama_pik_00001648, local
	.string "yama"
.endobj str_yama_pik_00001648

# .rodata:0x155 | 0x185 | size: 0x3
.obj gap_03_00000185_rodata, global
.hidden gap_03_00000185_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000185_rodata

# .rodata:0x158 | 0x188 | size: 0x8
.obj str_iwayama_pik_00001650, local
	.string "iwayama"
.endobj str_iwayama_pik_00001650

# .rodata:0x160 | 0x190 | size: 0xB
.obj str_hosi_right_pik_00001658, local
	.string "hosi_right"
.endobj str_hosi_right_pik_00001658

# .rodata:0x16B | 0x19B | size: 0x1
.obj gap_03_0000019B_rodata, global
.hidden gap_03_0000019B_rodata
	.byte 0x00
.endobj gap_03_0000019B_rodata

# .rodata:0x16C | 0x19C | size: 0xA
.obj str_hosi_left_pik_00001664, local
	.string "hosi_left"
.endobj str_hosi_left_pik_00001664

# .rodata:0x176 | 0x1A6 | size: 0x2
.obj gap_03_000001A6_rodata, global
.hidden gap_03_000001A6_rodata
	.2byte 0x0000
.endobj gap_03_000001A6_rodata

# .rodata:0x178 | 0x1A8 | size: 0xC
.obj str_hosi_center_pik_00001670, local
	.string "hosi_center"
.endobj str_hosi_center_pik_00001670

# .rodata:0x184 | 0x1B4 | size: 0xD
.obj str_hosi_right_c_pik_0000167c, local
	.string "hosi_right_c"
.endobj str_hosi_right_c_pik_0000167c

# .rodata:0x191 | 0x1C1 | size: 0x3
.obj gap_03_000001C1_rodata, global
.hidden gap_03_000001C1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000001C1_rodata

# .rodata:0x194 | 0x1C4 | size: 0xC
.obj str_hosi_left_c_pik_0000168c, local
	.string "hosi_left_c"
.endobj str_hosi_left_c_pik_0000168c

# .rodata:0x1A0 | 0x1D0 | size: 0xE
.obj str_hosi_center_c_pik_00001698, local
	.string "hosi_center_c"
.endobj str_hosi_center_c_pik_00001698

# .rodata:0x1AE | 0x1DE | size: 0x2
.obj gap_03_000001DE_rodata, global
.hidden gap_03_000001DE_rodata
	.2byte 0x0000
.endobj gap_03_000001DE_rodata

# .rodata:0x1B0 | 0x1E0 | size: 0x6
.obj str_ranpu_pik_000016a8, local
	.string "ranpu"
.endobj str_ranpu_pik_000016a8

# .rodata:0x1B6 | 0x1E6 | size: 0x2
.obj gap_03_000001E6_rodata, global
.hidden gap_03_000001E6_rodata
	.2byte 0x0000
.endobj gap_03_000001E6_rodata

# .rodata:0x1B8 | 0x1E8 | size: 0x15
.obj str_SFX_STG6_TRAIN_BELL1_pik_000016b0, local
	.string "SFX_STG6_TRAIN_BELL1"
.endobj str_SFX_STG6_TRAIN_BELL1_pik_000016b0

# .rodata:0x1CD | 0x1FD | size: 0x3
.obj gap_03_000001FD_rodata, global
.hidden gap_03_000001FD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000001FD_rodata

# .rodata:0x1D0 | 0x200 | size: 0x7
.obj str_gor_04_pik_000016c8, local
	.string "gor_04"
.endobj str_gor_04_pik_000016c8

# .rodata:0x1D7 | 0x207 | size: 0x1
.obj gap_03_00000207_rodata, global
.hidden gap_03_00000207_rodata
	.byte 0x00
.endobj gap_03_00000207_rodata

# .rodata:0x1D8 | 0x208 | size: 0x15
.obj str_SFX_STG6_TRAIN_MOVE1_pik_000016d0, local
	.string "SFX_STG6_TRAIN_MOVE1"
.endobj str_SFX_STG6_TRAIN_MOVE1_pik_000016d0

# .rodata:0x1ED | 0x21D | size: 0x3
.obj gap_03_0000021D_rodata, global
.hidden gap_03_0000021D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000021D_rodata

# .rodata:0x1F0 | 0x220 | size: 0x7
.obj str_hom_00_pik_000016e8, local
	.string "hom_00"
.endobj str_hom_00_pik_000016e8

# .rodata:0x1F7 | 0x227 | size: 0x1
.obj gap_03_00000227_rodata, global
.hidden gap_03_00000227_rodata
	.byte 0x00
.endobj gap_03_00000227_rodata

# .rodata:0x1F8 | 0x228 | size: 0x17
.obj str_SFX_STG6_TRAIN_MOVE1_pik_000016f0, local
	.string "SFX_STG6_TRAIN_MOVE1_2"
.endobj str_SFX_STG6_TRAIN_MOVE1_pik_000016f0

# .rodata:0x20F | 0x23F | size: 0x1
.obj gap_03_0000023F_rodata, global
.hidden gap_03_0000023F_rodata
	.byte 0x00
.endobj gap_03_0000023F_rodata

# .rodata:0x210 | 0x240 | size: 0x19
.obj str_SFX_STG6_TRAIN_MOVE1_pik_00001708, local
	.string "SFX_STG6_TRAIN_MOVE1_2_2"
.endobj str_SFX_STG6_TRAIN_MOVE1_pik_00001708

# .rodata:0x229 | 0x259 | size: 0x3
.obj gap_03_00000259_rodata, global
.hidden gap_03_00000259_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000259_rodata

# .rodata:0x22C | 0x25C | size: 0x7
.obj str_pik_00_pik_00001724, local
	.string "pik_00"
.endobj str_pik_00_pik_00001724

# .rodata:0x233 | 0x263 | size: 0x1
.obj gap_03_00000263_rodata, global
.hidden gap_03_00000263_rodata
	.byte 0x00
.endobj gap_03_00000263_rodata

# .rodata:0x234 | 0x264 | size: 0x17
.obj str_SFX_STG6_TRAIN_MOVE1_pik_0000172c, local
	.string "SFX_STG6_TRAIN_MOVE1_3"
.endobj str_SFX_STG6_TRAIN_MOVE1_pik_0000172c

# .rodata:0x24B | 0x27B | size: 0x1
.obj gap_03_0000027B_rodata, global
.hidden gap_03_0000027B_rodata
	.byte 0x00
.endobj gap_03_0000027B_rodata

# .rodata:0x24C | 0x27C | size: 0x6
.obj str_train_pik_00001744, local
	.string "train"
.endobj str_train_pik_00001744

# .rodata:0x252 | 0x282 | size: 0x2
.obj gap_03_00000282_rodata, global
.hidden gap_03_00000282_rodata
	.2byte 0x0000
.endobj gap_03_00000282_rodata

# .rodata:0x254 | 0x284 | size: 0x19
.obj str_SFX_STG6_TRAIN_MOVE1_pik_0000174c, local
	.string "SFX_STG6_TRAIN_MOVE1_2_3"
.endobj str_SFX_STG6_TRAIN_MOVE1_pik_0000174c

# .rodata:0x26D | 0x29D | size: 0x3
.obj gap_03_0000029D_rodata, global
.hidden gap_03_0000029D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000029D_rodata

# .rodata:0x270 | 0x2A0 | size: 0x15
.obj str_SFX_STG6_TRAIN_MOVE2_pik_00001768, local
	.string "SFX_STG6_TRAIN_MOVE2"
.endobj str_SFX_STG6_TRAIN_MOVE2_pik_00001768

# .rodata:0x285 | 0x2B5 | size: 0x3
.obj gap_03_000002B5_rodata, global
.hidden gap_03_000002B5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000002B5_rodata

# .rodata:0x288 | 0x2B8 | size: 0x17
.obj str_SFX_STG6_TRAIN_MOVE2_pik_00001780, local
	.string "SFX_STG6_TRAIN_MOVE2_2"
.endobj str_SFX_STG6_TRAIN_MOVE2_pik_00001780

# .rodata:0x29F | 0x2CF | size: 0x1
.obj gap_03_000002CF_rodata, global
.hidden gap_03_000002CF_rodata
	.byte 0x00
.endobj gap_03_000002CF_rodata

# .rodata:0x2A0 | 0x2D0 | size: 0x17
.obj str_SFX_STG6_TRAIN_MOVE2_pik_00001798, local
	.string "SFX_STG6_TRAIN_MOVE2_3"
.endobj str_SFX_STG6_TRAIN_MOVE2_pik_00001798

# .rodata:0x2B7 | 0x2E7 | size: 0x1
.obj gap_03_000002E7_rodata, global
.hidden gap_03_000002E7_rodata
	.byte 0x00
.endobj gap_03_000002E7_rodata

# .rodata:0x2B8 | 0x2E8 | size: 0x19
.obj str_SFX_STG6_TRAIN_MOVE2_pik_000017b0, local
	.string "SFX_STG6_TRAIN_MOVE2_2_2"
.endobj str_SFX_STG6_TRAIN_MOVE2_pik_000017b0

# .rodata:0x2D1 | 0x301 | size: 0x3
.obj gap_03_00000301_rodata, global
.hidden gap_03_00000301_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000301_rodata

# .rodata:0x2D4 | 0x304 | size: 0x8
.obj str_ranpu_c_pik_000017cc, local
	.string "ranpu_c"
.endobj str_ranpu_c_pik_000017cc

# .rodata:0x2DC | 0x30C | size: 0x9
.obj str_pika_1_1_pik_000017d4, local
	.string "pika_1_1"
.endobj str_pika_1_1_pik_000017d4

# .rodata:0x2E5 | 0x315 | size: 0x3
.obj gap_03_00000315_rodata, global
.hidden gap_03_00000315_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000315_rodata

# .rodata:0x2E8 | 0x318 | size: 0x9
.obj str_pika_1_2_pik_000017e0, local
	.string "pika_1_2"
.endobj str_pika_1_2_pik_000017e0

# .rodata:0x2F1 | 0x321 | size: 0x3
.obj gap_03_00000321_rodata, global
.hidden gap_03_00000321_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000321_rodata

# .rodata:0x2F4 | 0x324 | size: 0x9
.obj str_pika_1_3_pik_000017ec, local
	.string "pika_1_3"
.endobj str_pika_1_3_pik_000017ec

# .rodata:0x2FD | 0x32D | size: 0x3
.obj gap_03_0000032D_rodata, global
.hidden gap_03_0000032D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000032D_rodata

# .rodata:0x300 | 0x330 | size: 0x9
.obj str_pika_1_4_pik_000017f8, local
	.string "pika_1_4"
.endobj str_pika_1_4_pik_000017f8

# .rodata:0x309 | 0x339 | size: 0x3
.obj gap_03_00000339_rodata, global
.hidden gap_03_00000339_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000339_rodata

# .rodata:0x30C | 0x33C | size: 0x7
.obj str_pika_2_pik_00001804, local
	.string "pika_2"
.endobj str_pika_2_pik_00001804

# .rodata:0x313 | 0x343 | size: 0x1
.obj gap_03_00000343_rodata, global
.hidden gap_03_00000343_rodata
	.byte 0x00
.endobj gap_03_00000343_rodata

# .rodata:0x314 | 0x344 | size: 0x7
.obj str_pika_3_pik_0000180c, local
	.string "pika_3"
.endobj str_pika_3_pik_0000180c

# .rodata:0x31B | 0x34B | size: 0x1
.obj gap_03_0000034B_rodata, global
.hidden gap_03_0000034B_rodata
	.byte 0x00
.endobj gap_03_0000034B_rodata

# .rodata:0x31C | 0x34C | size: 0x7
.obj str_pika_4_pik_00001814, local
	.string "pika_4"
.endobj str_pika_4_pik_00001814

# .rodata:0x323 | 0x353 | size: 0x1
.obj gap_03_00000353_rodata, global
.hidden gap_03_00000353_rodata
	.byte 0x00
.endobj gap_03_00000353_rodata

# .rodata:0x324 | 0x354 | size: 0x7
.obj str_pika_5_pik_0000181c, local
	.string "pika_5"
.endobj str_pika_5_pik_0000181c

# .rodata:0x32B | 0x35B | size: 0x1
.obj gap_03_0000035B_rodata, global
.hidden gap_03_0000035B_rodata
	.byte 0x00
.endobj gap_03_0000035B_rodata

# .rodata:0x32C | 0x35C | size: 0x7
.obj str_pika_6_pik_00001824, local
	.string "pika_6"
.endobj str_pika_6_pik_00001824

# .rodata:0x333 | 0x363 | size: 0x1
.obj gap_03_00000363_rodata, global
.hidden gap_03_00000363_rodata
	.byte 0x00
.endobj gap_03_00000363_rodata

# .rodata:0x334 | 0x364 | size: 0xB
.obj str_pika_1_1_c_pik_0000182c, local
	.string "pika_1_1_c"
.endobj str_pika_1_1_c_pik_0000182c

# .rodata:0x33F | 0x36F | size: 0x1
.obj gap_03_0000036F_rodata, global
.hidden gap_03_0000036F_rodata
	.byte 0x00
.endobj gap_03_0000036F_rodata

# .rodata:0x340 | 0x370 | size: 0xB
.obj str_pika_1_2_c_pik_00001838, local
	.string "pika_1_2_c"
.endobj str_pika_1_2_c_pik_00001838

# .rodata:0x34B | 0x37B | size: 0x1
.obj gap_03_0000037B_rodata, global
.hidden gap_03_0000037B_rodata
	.byte 0x00
.endobj gap_03_0000037B_rodata

# .rodata:0x34C | 0x37C | size: 0xB
.obj str_pika_1_3_c_pik_00001844, local
	.string "pika_1_3_c"
.endobj str_pika_1_3_c_pik_00001844

# .rodata:0x357 | 0x387 | size: 0x1
.obj gap_03_00000387_rodata, global
.hidden gap_03_00000387_rodata
	.byte 0x00
.endobj gap_03_00000387_rodata

# .rodata:0x358 | 0x388 | size: 0xB
.obj str_pika_1_4_c_pik_00001850, local
	.string "pika_1_4_c"
.endobj str_pika_1_4_c_pik_00001850

# .rodata:0x363 | 0x393 | size: 0x1
.obj gap_03_00000393_rodata, global
.hidden gap_03_00000393_rodata
	.byte 0x00
.endobj gap_03_00000393_rodata

# .rodata:0x364 | 0x394 | size: 0x9
.obj str_pika_6_c_pik_0000185c, local
	.string "pika_6_c"
.endobj str_pika_6_c_pik_0000185c

# .rodata:0x36D | 0x39D | size: 0x3
.obj gap_03_0000039D_rodata, global
.hidden gap_03_0000039D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000039D_rodata

# .rodata:0x370 | 0x3A0 | size: 0x7
.obj str_hom_10_pik_00001868, local
	.string "hom_10"
.endobj str_hom_10_pik_00001868

# .rodata:0x377 | 0x3A7 | size: 0x1
.obj gap_03_000003A7_rodata, global
.hidden gap_03_000003A7_rodata
	.byte 0x00
.endobj gap_03_000003A7_rodata

# .rodata:0x378 | 0x3A8 | size: 0x7
.obj str_hom_11_pik_00001870, local
	.string "hom_11"
.endobj str_hom_11_pik_00001870

# .rodata:0x37F | 0x3AF | size: 0x1
.obj gap_03_000003AF_rodata, global
.hidden gap_03_000003AF_rodata
	.byte 0x00
.endobj gap_03_000003AF_rodata

# .rodata:0x380 | 0x3B0 | size: 0x7
.obj str_hom_12_pik_00001878, local
	.string "hom_12"
.endobj str_hom_12_pik_00001878

# .rodata:0x387 | 0x3B7 | size: 0x1
.obj gap_03_000003B7_rodata, global
.hidden gap_03_000003B7_rodata
	.byte 0x00
.endobj gap_03_000003B7_rodata

# .rodata:0x388 | 0x3B8 | size: 0x9
.obj str_rsh_06_a_pik_00001880, local
	.string "rsh_06_a"
.endobj str_rsh_06_a_pik_00001880

# .rodata:0x391 | 0x3C1 | size: 0x3
.obj gap_03_000003C1_rodata, global
.hidden gap_03_000003C1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000003C1_rodata

# .rodata:0x394 | 0x3C4 | size: 0x8
.obj str_train_7_pik_0000188c, local
	.string "train_7"
.endobj str_train_7_pik_0000188c

# .rodata:0x39C | 0x3CC | size: 0x8
.obj str_train_8_pik_00001894, local
	.string "train_8"
.endobj str_train_8_pik_00001894

# .rodata:0x3A4 | 0x3D4 | size: 0xA
.obj str_renketu_6_pik_0000189c, local
	.string "renketu_6"
.endobj str_renketu_6_pik_0000189c

# .rodata:0x3AE | 0x3DE | size: 0x2
.obj gap_03_000003DE_rodata, global
.hidden gap_03_000003DE_rodata
	.2byte 0x0000
.endobj gap_03_000003DE_rodata

# .rodata:0x3B0 | 0x3E0 | size: 0xA
.obj str_renketu_7_pik_000018a8, local
	.string "renketu_7"
.endobj str_renketu_7_pik_000018a8

# .rodata:0x3BA | 0x3EA | size: 0x2
.obj gap_03_000003EA_rodata, global
.hidden gap_03_000003EA_rodata
	.2byte 0x0000
.endobj gap_03_000003EA_rodata

# .rodata:0x3BC | 0x3EC | size: 0x8
.obj str_train_1_pik_000018b4, local
	.string "train_1"
.endobj str_train_1_pik_000018b4

# .rodata:0x3C4 | 0x3F4 | size: 0x8
.obj str_train_6_pik_000018bc, local
	.string "train_6"
.endobj str_train_6_pik_000018bc

# .rodata:0x3CC | 0x3FC | size: 0xA
.obj str_renketu_1_pik_000018c4, local
	.string "renketu_1"
.endobj str_renketu_1_pik_000018c4

# .rodata:0x3D6 | 0x406 | size: 0x2
.obj gap_03_00000406_rodata, global
.hidden gap_03_00000406_rodata
	.2byte 0x0000
.endobj gap_03_00000406_rodata

# .rodata:0x3D8 | 0x408 | size: 0xA
.obj str_renketu_5_pik_000018d0, local
	.string "renketu_5"
.endobj str_renketu_5_pik_000018d0

# .rodata:0x3E2 | 0x412 | size: 0x2
.obj gap_03_00000412_rodata, global
.hidden gap_03_00000412_rodata
	.2byte 0x0000
.endobj gap_03_00000412_rodata

# .rodata:0x3E4 | 0x414 | size: 0xE
.obj str_ENV_STG6_RSH2_pik_000018dc, local
	.string "ENV_STG6_RSH2"
.endobj str_ENV_STG6_RSH2_pik_000018dc

# .rodata:0x3F2 | 0x422 | size: 0x2
.obj gap_03_00000422_rodata, global
.hidden gap_03_00000422_rodata
	.2byte 0x0000
.endobj gap_03_00000422_rodata

# .rodata:0x3F4 | 0x424 | size: 0x8
.obj str_renketu_pik_000018ec, local
	.string "renketu"
.endobj str_renketu_pik_000018ec

# .rodata:0x3FC | 0x42C | size: 0xA
.obj str_renketu_2_pik_000018f4, local
	.string "renketu_2"
.endobj str_renketu_2_pik_000018f4

# .rodata:0x406 | 0x436 | size: 0x2
.obj gap_03_00000436_rodata, global
.hidden gap_03_00000436_rodata
	.2byte 0x0000
.endobj gap_03_00000436_rodata

# .rodata:0x408 | 0x438 | size: 0xA
.obj str_renketu_3_pik_00001900, local
	.string "renketu_3"
.endobj str_renketu_3_pik_00001900

# .rodata:0x412 | 0x442 | size: 0x2
.obj gap_03_00000442_rodata, global
.hidden gap_03_00000442_rodata
	.2byte 0x0000
.endobj gap_03_00000442_rodata

# .rodata:0x414 | 0x444 | size: 0xA
.obj str_renketu_4_pik_0000190c, local
	.string "renketu_4"
.endobj str_renketu_4_pik_0000190c

# .rodata:0x41E | 0x44E | size: 0x2
.obj gap_03_0000044E_rodata, global
.hidden gap_03_0000044E_rodata
	.2byte 0x0000
.endobj gap_03_0000044E_rodata

# .rodata:0x420 | 0x450 | size: 0x9
.obj str_rsh_02_a_pik_00001918, local
	.string "rsh_02_a"
.endobj str_rsh_02_a_pik_00001918

# .rodata:0x429 | 0x459 | size: 0x3
.obj gap_03_00000459_rodata, global
.hidden gap_03_00000459_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000459_rodata

# .rodata:0x42C | 0x45C | size: 0x7
.obj str_nidome_pik_00001924, local
	.string "nidome"
.endobj str_nidome_pik_00001924

# .rodata:0x433 | 0x463 | size: 0x1
.obj gap_03_00000463_rodata, global
.hidden gap_03_00000463_rodata
	.byte 0x00
.endobj gap_03_00000463_rodata

# .rodata:0x434 | 0x464 | size: 0x8
.obj str_se_bero_pik_0000192c, local
	.string "se_bero"
.endobj str_se_bero_pik_0000192c

# .rodata:0x43C | 0x46C | size: 0x7
.obj str_pik_04_pik_00001934, local
	.string "pik_04"
.endobj str_pik_04_pik_00001934

# .rodata:0x443 | 0x473 | size: 0x1
.obj gap_03_00000473_rodata, global
.hidden gap_03_00000473_rodata
	.byte 0x00
.endobj gap_03_00000473_rodata

# .rodata:0x444 | 0x474 | size: 0x8
.obj str_nw_bero_pik_0000193c, local
	.string "nw_bero"
.endobj str_nw_bero_pik_0000193c

# .rodata:0x44C | 0x47C | size: 0x7
.obj str_n_bero_pik_00001944, local
	.string "n_bero"
.endobj str_n_bero_pik_00001944

# .rodata:0x453 | 0x483 | size: 0x1
.obj gap_03_00000483_rodata, global
.hidden gap_03_00000483_rodata
	.byte 0x00
.endobj gap_03_00000483_rodata

# .rodata:0x454 | 0x484 | size: 0x9
.obj str_rsh_01_a_pik_0000194c, local
	.string "rsh_01_a"
.endobj str_rsh_01_a_pik_0000194c

# .rodata:0x45D | 0x48D | size: 0x3
.obj gap_03_0000048D_rodata, global
.hidden gap_03_0000048D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000048D_rodata

# .rodata:0x460 | 0x490 | size: 0x7
.obj str_s_bero_pik_00001958, local
	.string "s_bero"
.endobj str_s_bero_pik_00001958

# .rodata:0x467 | 0x497 | size: 0x1
.obj gap_03_00000497_rodata, global
.hidden gap_03_00000497_rodata
	.byte 0x00
.endobj gap_03_00000497_rodata

# .rodata:0x468 | 0x498 | size: 0xF
.obj str_n_1_door_close_pik_00001960, local
	.string "n_1_door_close"
.endobj str_n_1_door_close_pik_00001960

# .rodata:0x477 | 0x4A7 | size: 0x1
.obj gap_03_000004A7_rodata, global
.hidden gap_03_000004A7_rodata
	.byte 0x00
.endobj gap_03_000004A7_rodata

# .rodata:0x478 | 0x4A8 | size: 0xE
.obj str_n_1_door_open_pik_00001970, local
	.string "n_1_door_open"
.endobj str_n_1_door_open_pik_00001970

# .rodata:0x486 | 0x4B6 | size: 0x2
.obj gap_03_000004B6_rodata, global
.hidden gap_03_000004B6_rodata
	.2byte 0x0000
.endobj gap_03_000004B6_rodata

# .rodata:0x488 | 0x4B8 | size: 0xB
.obj str_yajirusi_1_pik_00001980, local
	.string "yajirusi_1"
.endobj str_yajirusi_1_pik_00001980

# .rodata:0x493 | 0x4C3 | size: 0x1
.obj gap_03_000004C3_rodata, global
.hidden gap_03_000004C3_rodata
	.byte 0x00
.endobj gap_03_000004C3_rodata

# .rodata:0x494 | 0x4C4 | size: 0xB
.obj str_yajirusi_2_pik_0000198c, local
	.string "yajirusi_2"
.endobj str_yajirusi_2_pik_0000198c

# .rodata:0x49F | 0x4CF | size: 0x1
.obj gap_03_000004CF_rodata, global
.hidden gap_03_000004CF_rodata
	.byte 0x00
.endobj gap_03_000004CF_rodata

# .rodata:0x4A0 | 0x4D0 | size: 0xB
.obj str_yajirusi_3_pik_00001998, local
	.string "yajirusi_3"
.endobj str_yajirusi_3_pik_00001998

# .rodata:0x4AB | 0x4DB | size: 0x1
.obj gap_03_000004DB_rodata, global
.hidden gap_03_000004DB_rodata
	.byte 0x00
.endobj gap_03_000004DB_rodata

# .rodata:0x4AC | 0x4DC | size: 0xB
.obj str_yajirusi_4_pik_000019a4, local
	.string "yajirusi_4"
.endobj str_yajirusi_4_pik_000019a4

# .rodata:0x4B7 | 0x4E7 | size: 0x1
.obj gap_03_000004E7_rodata, global
.hidden gap_03_000004E7_rodata
	.byte 0x00
.endobj gap_03_000004E7_rodata

# .rodata:0x4B8 | 0x4E8 | size: 0xB
.obj str_yajirusi_5_pik_000019b0, local
	.string "yajirusi_5"
.endobj str_yajirusi_5_pik_000019b0

# .rodata:0x4C3 | 0x4F3 | size: 0x1
.obj gap_03_000004F3_rodata, global
.hidden gap_03_000004F3_rodata
	.byte 0x00
.endobj gap_03_000004F3_rodata

# .rodata:0x4C4 | 0x4F4 | size: 0xB
.obj str_yajirusi_6_pik_000019bc, local
	.string "yajirusi_6"
.endobj str_yajirusi_6_pik_000019bc

# .rodata:0x4CF | 0x4FF | size: 0x1
.obj gap_03_000004FF_rodata, global
.hidden gap_03_000004FF_rodata
	.byte 0x00
.endobj gap_03_000004FF_rodata

# .rodata:0x4D0 | 0x500 | size: 0x17
.obj str_SFX_DOOR_OPEN_SLIDE1_pik_000019c8, local
	.string "SFX_DOOR_OPEN_SLIDE1_3"
.endobj str_SFX_DOOR_OPEN_SLIDE1_pik_000019c8

# .rodata:0x4E7 | 0x517 | size: 0x1
.obj gap_03_00000517_rodata, global
.hidden gap_03_00000517_rodata
	.byte 0x00
.endobj gap_03_00000517_rodata

# .rodata:0x4E8 | 0x518 | size: 0x7
.obj str_tobira_pik_000019e0, local
	.string "tobira"
.endobj str_tobira_pik_000019e0

# .rodata:0x4EF | 0x51F | size: 0x1
.obj gap_03_0000051F_rodata, global
.hidden gap_03_0000051F_rodata
	.byte 0x00
.endobj gap_03_0000051F_rodata

# .rodata:0x4F0 | 0x520 | size: 0x17
.obj str_SFX_DOOR_SHUT_SLIDE1_pik_000019e8, local
	.string "SFX_DOOR_SHUT_SLIDE1_3"
.endobj str_SFX_DOOR_SHUT_SLIDE1_pik_000019e8

# .rodata:0x507 | 0x537 | size: 0x1
.obj gap_03_00000537_rodata, global
.hidden gap_03_00000537_rodata
	.byte 0x00
.endobj gap_03_00000537_rodata

# .rodata:0x508 | 0x538 | size: 0x5
.obj str_駅員_pik_00001a00, local
	.4byte 0x897788F5
	.byte 0x00
.endobj str_駅員_pik_00001a00

# .rodata:0x50D | 0x53D | size: 0x3
.obj gap_03_0000053D_rodata, global
.hidden gap_03_0000053D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000053D_rodata

# .rodata:0x510 | 0x540 | size: 0x9
.obj str_train_07_pik_00001a08, local
	.string "train_07"
.endobj str_train_07_pik_00001a08

# .rodata:0x519 | 0x549 | size: 0x3
.obj gap_03_00000549_rodata, global
.hidden gap_03_00000549_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000549_rodata

# .rodata:0x51C | 0x54C | size: 0xD
.obj str_nidome_start_pik_00001a14, local
	.string "nidome_start"
.endobj str_nidome_start_pik_00001a14

# .rodata:0x529 | 0x559 | size: 0x3
.obj gap_03_00000559_rodata, global
.hidden gap_03_00000559_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000559_rodata

# .rodata:0x52C | 0x55C | size: 0x3
.obj str_me_pik_00001a24, local
	.string "me"
.endobj str_me_pik_00001a24

# .rodata:0x52F | 0x55F | size: 0x1
.obj gap_03_0000055F_rodata, global
.hidden gap_03_0000055F_rodata
	.byte 0x00
.endobj gap_03_0000055F_rodata

# .rodata:0x530 | 0x560 | size: 0xC
.obj str_stg6_pik_00_pik_00001a28, local
	.string "stg6_pik_00"
.endobj str_stg6_pik_00_pik_00001a28

# .rodata:0x53C | 0x56C | size: 0x9
.obj str_train_06_pik_00001a34, local
	.string "train_06"
.endobj str_train_06_pik_00001a34

# .rodata:0x545 | 0x575 | size: 0x3
.obj gap_03_00000575_rodata, global
.hidden gap_03_00000575_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000575_rodata

# .rodata:0x548 | 0x578 | size: 0x9
.obj str_train_00_pik_00001a40, local
	.string "train_00"
.endobj str_train_00_pik_00001a40

# .rodata:0x551 | 0x581 | size: 0x3
.obj gap_03_00000581_rodata, global
.hidden gap_03_00000581_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000581_rodata

# .rodata:0x554 | 0x584 | size: 0x9
.obj str_train_01_pik_00001a4c, local
	.string "train_01"
.endobj str_train_01_pik_00001a4c

# .rodata:0x55D | 0x58D | size: 0x3
.obj gap_03_0000058D_rodata, global
.hidden gap_03_0000058D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000058D_rodata

# .rodata:0x560 | 0x590 | size: 0x9
.obj str_train_03_pik_00001a58, local
	.string "train_03"
.endobj str_train_03_pik_00001a58

# .rodata:0x569 | 0x599 | size: 0x3
.obj gap_03_00000599_rodata, global
.hidden gap_03_00000599_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000599_rodata

# .rodata:0x56C | 0x59C | size: 0x9
.obj str_train_05_pik_00001a64, local
	.string "train_05"
.endobj str_train_05_pik_00001a64

# .rodata:0x575 | 0x5A5 | size: 0x3
.obj gap_03_000005A5_rodata, global
.hidden gap_03_000005A5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000005A5_rodata

# .rodata:0x578 | 0x5A8 | size: 0x6
.obj str_M_C_3_pik_00001a70, local
	.string "M_C_3"
.endobj str_M_C_3_pik_00001a70

# .rodata:0x57E | 0x5AE | size: 0x2
.obj gap_03_000005AE_rodata, global
.hidden gap_03_000005AE_rodata
	.2byte 0x0000
.endobj gap_03_000005AE_rodata

# .rodata:0x580 | 0x5B0 | size: 0x7
.obj str_ticket_pik_00001a78, local
	.string "ticket"
.endobj str_ticket_pik_00001a78

# .rodata:0x587 | 0x5B7 | size: 0x1
.obj gap_03_000005B7_rodata, global
.hidden gap_03_000005B7_rodata
	.byte 0x00
.endobj gap_03_000005B7_rodata

# .rodata:0x588 | 0x5B8 | size: 0x6
.obj str_M_S_1_pik_00001a80, local
	.string "M_S_1"
.endobj str_M_S_1_pik_00001a80

# .rodata:0x58E | 0x5BE | size: 0x2
.obj gap_03_000005BE_rodata, global
.hidden gap_03_000005BE_rodata
	.2byte 0x0000
.endobj gap_03_000005BE_rodata

# .rodata:0x590 | 0x5C0 | size: 0x9
.obj str_train_04_pik_00001a88, local
	.string "train_04"
.endobj str_train_04_pik_00001a88

# .rodata:0x599 | 0x5C9 | size: 0x3
.obj gap_03_000005C9_rodata, global
.hidden gap_03_000005C9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000005C9_rodata

# .rodata:0x59C | 0x5CC | size: 0x9
.obj str_train_02_pik_00001a94, local
	.string "train_02"
.endobj str_train_02_pik_00001a94

# .rodata:0x5A5 | 0x5D5 | size: 0x3
.obj gap_03_000005D5_rodata, global
.hidden gap_03_000005D5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000005D5_rodata

# .rodata:0x5A8 | 0x5D8 | size: 0xC
.obj vec3_pik_00001aa0, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj vec3_pik_00001aa0

# .rodata:0x5B4 | 0x5E4 | size: 0xC
.obj vec3_pik_00001aac, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj vec3_pik_00001aac

# .rodata:0x5C0 | 0x5F0 | size: 0xC
.obj str_stg7_pik_01_pik_00001ab8, local
	.string "stg7_pik_01"
.endobj str_stg7_pik_01_pik_00001ab8

# .rodata:0x5CC | 0x5FC | size: 0xD
.obj str_ナリキンパパ_pik_00001ac4, local
	.4byte 0x8369838A
	.4byte 0x834C8393
	.4byte 0x83708370
	.byte 0x00
.endobj str_ナリキンパパ_pik_00001ac4

# .rodata:0x5D9 | 0x609 | size: 0x3
.obj gap_03_00000609_rodata, global
.hidden gap_03_00000609_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000609_rodata

# .rodata:0x5DC | 0x60C | size: 0x6
.obj str_M_I_2_pik_00001ad4, local
	.string "M_I_2"
.endobj str_M_I_2_pik_00001ad4

# .rodata:0x5E2 | 0x612 | size: 0x2
.obj gap_03_00000612_rodata, global
.hidden gap_03_00000612_rodata
	.2byte 0x0000
.endobj gap_03_00000612_rodata

# .rodata:0x5E4 | 0x614 | size: 0xC
.obj str_stg7_pik_02_pik_00001adc, local
	.string "stg7_pik_02"
.endobj str_stg7_pik_02_pik_00001adc

# .rodata:0x5F0 | 0x620 | size: 0x17
.obj str_SFX_VOICE_MARIO_NOD1_pik_00001ae8, local
	.string "SFX_VOICE_MARIO_NOD1_6"
.endobj str_SFX_VOICE_MARIO_NOD1_pik_00001ae8

# .rodata:0x607 | 0x637 | size: 0x1
.obj gap_03_00000637_rodata, global
.hidden gap_03_00000637_rodata
	.byte 0x00
.endobj gap_03_00000637_rodata

# .rodata:0x608 | 0x638 | size: 0x6
.obj str_M_N_2_pik_00001b00, local
	.string "M_N_2"
.endobj str_M_N_2_pik_00001b00

# .rodata:0x60E | 0x63E | size: 0x2
.obj gap_03_0000063E_rodata, global
.hidden gap_03_0000063E_rodata
	.2byte 0x0000
.endobj gap_03_0000063E_rodata

# .rodata:0x610 | 0x640 | size: 0xC
.obj str_stg7_pik_03_pik_00001b08, local
	.string "stg7_pik_03"
.endobj str_stg7_pik_03_pik_00001b08

# .rodata:0x61C | 0x64C | size: 0xC
.obj str_stg7_pik_04_pik_00001b14, local
	.string "stg7_pik_04"
.endobj str_stg7_pik_04_pik_00001b14

# .rodata:0x628 | 0x658 | size: 0xC
.obj str_stg7_pik_05_pik_00001b20, local
	.string "stg7_pik_05"
.endobj str_stg7_pik_05_pik_00001b20

# .rodata:0x634 | 0x664 | size: 0xF
.obj str_stg7_pik_04_yn_pik_00001b2c, local
	.string "stg7_pik_04_yn"
.endobj str_stg7_pik_04_yn_pik_00001b2c

# .rodata:0x643 | 0x673 | size: 0x1
.obj gap_03_00000673_rodata, global
.hidden gap_03_00000673_rodata
	.byte 0x00
.endobj gap_03_00000673_rodata

# .rodata:0x644 | 0x674 | size: 0xC
.obj str_stg7_pik_06_pik_00001b3c, local
	.string "stg7_pik_06"
.endobj str_stg7_pik_06_pik_00001b3c

# .rodata:0x650 | 0x680 | size: 0xC
.obj str_stg7_pik_08_pik_00001b48, local
	.string "stg7_pik_08"
.endobj str_stg7_pik_08_pik_00001b48

# .rodata:0x65C | 0x68C | size: 0xC
.obj str_stg7_pik_07_pik_00001b54, local
	.string "stg7_pik_07"
.endobj str_stg7_pik_07_pik_00001b54

# .rodata:0x668 | 0x698 | size: 0xC
.obj str_stg7_pik_09_pik_00001b60, local
	.string "stg7_pik_09"
.endobj str_stg7_pik_09_pik_00001b60

# .rodata:0x674 | 0x6A4 | size: 0xC
.obj str_stg7_pik_10_pik_00001b6c, local
	.string "stg7_pik_10"
.endobj str_stg7_pik_10_pik_00001b6c

# .rodata:0x680 | 0x6B0 | size: 0xC
.obj str_stg7_pik_11_pik_00001b78, local
	.string "stg7_pik_11"
.endobj str_stg7_pik_11_pik_00001b78

# .rodata:0x68C | 0x6BC | size: 0xF
.obj str_stg7_pik_11_yn_pik_00001b84, local
	.string "stg7_pik_11_yn"
.endobj str_stg7_pik_11_yn_pik_00001b84

# .rodata:0x69B | 0x6CB | size: 0x1
.obj gap_03_000006CB_rodata, global
.hidden gap_03_000006CB_rodata
	.byte 0x00
.endobj gap_03_000006CB_rodata

# .rodata:0x69C | 0x6CC | size: 0xC
.obj str_stg7_pik_12_pik_00001b94, local
	.string "stg7_pik_12"
.endobj str_stg7_pik_12_pik_00001b94

# .rodata:0x6A8 | 0x6D8 | size: 0xC
.obj str_stg7_pik_13_pik_00001ba0, local
	.string "stg7_pik_13"
.endobj str_stg7_pik_13_pik_00001ba0

# .rodata:0x6B4 | 0x6E4 | size: 0xC
.obj str_stg7_pik_14_pik_00001bac, local
	.string "stg7_pik_14"
.endobj str_stg7_pik_14_pik_00001bac

# .rodata:0x6C0 | 0x6F0 | size: 0xC
.obj str_stg7_pik_15_pik_00001bb8, local
	.string "stg7_pik_15"
.endobj str_stg7_pik_15_pik_00001bb8

# .rodata:0x6CC | 0x6FC | size: 0xC
.obj str_stg7_pik_16_pik_00001bc4, local
	.string "stg7_pik_16"
.endobj str_stg7_pik_16_pik_00001bc4

# .rodata:0x6D8 | 0x708 | size: 0xC
.obj str_stg7_pik_17_pik_00001bd0, local
	.string "stg7_pik_17"
.endobj str_stg7_pik_17_pik_00001bd0

# .rodata:0x6E4 | 0x714 | size: 0x2
.obj str_a_pik_00001bdc, local
	.string "a"
.endobj str_a_pik_00001bdc

# .rodata:0x6E6 | 0x716 | size: 0x2
.obj gap_03_00000716_rodata, global
.hidden gap_03_00000716_rodata
	.2byte 0x0000
.endobj gap_03_00000716_rodata

# .rodata:0x6E8 | 0x718 | size: 0xC
.obj str_stg7_pik_18_pik_00001be0, local
	.string "stg7_pik_18"
.endobj str_stg7_pik_18_pik_00001be0

# .rodata:0x6F4 | 0x724 | size: 0xC
.obj str_stg7_pik_19_pik_00001bec, local
	.string "stg7_pik_19"
.endobj str_stg7_pik_19_pik_00001bec

# .rodata:0x700 | 0x730 | size: 0xB
.obj str_irai_25_00_pik_00001bf8, local
	.string "irai_25_00"
.endobj str_irai_25_00_pik_00001bf8

# .rodata:0x70B | 0x73B | size: 0x1
.obj gap_03_0000073B_rodata, global
.hidden gap_03_0000073B_rodata
	.byte 0x00
.endobj gap_03_0000073B_rodata

# .rodata:0x70C | 0x73C | size: 0x5
.obj str_butu_pik_00001c04, local
	.string "butu"
.endobj str_butu_pik_00001c04

# .rodata:0x711 | 0x741 | size: 0x3
.obj gap_03_00000741_rodata, global
.hidden gap_03_00000741_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000741_rodata

# .rodata:0x714 | 0x744 | size: 0xB
.obj str_irai_25_01_pik_00001c0c, local
	.string "irai_25_01"
.endobj str_irai_25_01_pik_00001c0c

# .rodata:0x71F | 0x74F | size: 0x1
.obj gap_03_0000074F_rodata, global
.hidden gap_03_0000074F_rodata
	.byte 0x00
.endobj gap_03_0000074F_rodata

# .rodata:0x720 | 0x750 | size: 0xB
.obj str_irai_25_02_pik_00001c18, local
	.string "irai_25_02"
.endobj str_irai_25_02_pik_00001c18

# .rodata:0x72B | 0x75B | size: 0x1
.obj gap_03_0000075B_rodata, global
.hidden gap_03_0000075B_rodata
	.byte 0x00
.endobj gap_03_0000075B_rodata

# .rodata:0x72C | 0x75C | size: 0xB
.obj str_irai_25_03_pik_00001c24, local
	.string "irai_25_03"
.endobj str_irai_25_03_pik_00001c24

# .rodata:0x737 | 0x767 | size: 0x1
.obj gap_03_00000767_rodata, global
.hidden gap_03_00000767_rodata
	.byte 0x00
.endobj gap_03_00000767_rodata

# .rodata:0x738 | 0x768 | size: 0xB
.obj str_irai_25_04_pik_00001c30, local
	.string "irai_25_04"
.endobj str_irai_25_04_pik_00001c30

# .rodata:0x743 | 0x773 | size: 0x1
.obj gap_03_00000773_rodata, global
.hidden gap_03_00000773_rodata
	.byte 0x00
.endobj gap_03_00000773_rodata

# .rodata:0x744 | 0x774 | size: 0x13
.obj str_sys_request_finish_pik_00001c3c, local
	.string "sys_request_finish"
.endobj str_sys_request_finish_pik_00001c3c

# .rodata:0x757 | 0x787 | size: 0x1
.obj gap_03_00000787_rodata, global
.hidden gap_03_00000787_rodata
	.byte 0x00
.endobj gap_03_00000787_rodata

# .rodata:0x758 | 0x788 | size: 0xD
.obj str_irai_29_18_1_pik_00001c50, local
	.string "irai_29_18_1"
.endobj str_irai_29_18_1_pik_00001c50

# .rodata:0x765 | 0x795 | size: 0x3
.obj gap_03_00000795_rodata, global
.hidden gap_03_00000795_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000795_rodata

# .rodata:0x768 | 0x798 | size: 0xC
.obj str_stg6_pik_01_pik_00001c60, local
	.string "stg6_pik_01"
.endobj str_stg6_pik_01_pik_00001c60

# .rodata:0x774 | 0x7A4 | size: 0x11
.obj str_stg7_pik_19_01_1_pik_00001c6c, local
	.string "stg7_pik_19_01_1"
.endobj str_stg7_pik_19_01_1_pik_00001c6c

# .rodata:0x785 | 0x7B5 | size: 0x3
.obj gap_03_000007B5_rodata, global
.hidden gap_03_000007B5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000007B5_rodata

# .rodata:0x788 | 0x7B8 | size: 0xF
.obj str_stg7_pik_19_01_pik_00001c80, local
	.string "stg7_pik_19_01"
.endobj str_stg7_pik_19_01_pik_00001c80

# .rodata:0x797 | 0x7C7 | size: 0x1
.obj gap_03_000007C7_rodata, global
.hidden gap_03_000007C7_rodata
	.byte 0x00
.endobj gap_03_000007C7_rodata

# .rodata:0x798 | 0x7C8 | size: 0x11
.obj str_stg7_pik_19_01_2_pik_00001c90, local
	.string "stg7_pik_19_01_2"
.endobj str_stg7_pik_19_01_2_pik_00001c90

# .rodata:0x7A9 | 0x7D9 | size: 0x3
.obj gap_03_000007D9_rodata, global
.hidden gap_03_000007D9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000007D9_rodata

# .rodata:0x7AC | 0x7DC | size: 0xB
.obj str_irai_29_14_pik_00001ca4, local
	.string "irai_29_14"
.endobj str_irai_29_14_pik_00001ca4

# .rodata:0x7B7 | 0x7E7 | size: 0x1
.obj gap_03_000007E7_rodata, global
.hidden gap_03_000007E7_rodata
	.byte 0x00
.endobj gap_03_000007E7_rodata

# .rodata:0x7B8 | 0x7E8 | size: 0xB
.obj str_irai_29_15_pik_00001cb0, local
	.string "irai_29_15"
.endobj str_irai_29_15_pik_00001cb0

# .rodata:0x7C3 | 0x7F3 | size: 0x1
.obj gap_03_000007F3_rodata, global
.hidden gap_03_000007F3_rodata
	.byte 0x00
.endobj gap_03_000007F3_rodata

# .rodata:0x7C4 | 0x7F4 | size: 0xD
.obj str_ナリキンママ_pik_00001cbc, local
	.4byte 0x8369838A
	.4byte 0x834C8393
	.4byte 0x837D837D
	.byte 0x00
.endobj str_ナリキンママ_pik_00001cbc

# .rodata:0x7D1 | 0x801 | size: 0x3
.obj gap_03_00000801_rodata, global
.hidden gap_03_00000801_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000801_rodata

# .rodata:0x7D4 | 0x804 | size: 0xB
.obj str_irai_29_16_pik_00001ccc, local
	.string "irai_29_16"
.endobj str_irai_29_16_pik_00001ccc

# .rodata:0x7DF | 0x80F | size: 0x1
.obj gap_03_0000080F_rodata, global
.hidden gap_03_0000080F_rodata
	.byte 0x00
.endobj gap_03_0000080F_rodata

# .rodata:0x7E0 | 0x810 | size: 0x6
.obj str_mario_pik_00001cd8, local
	.string "mario"
.endobj str_mario_pik_00001cd8

# .rodata:0x7E6 | 0x816 | size: 0x2
.obj gap_03_00000816_rodata, global
.hidden gap_03_00000816_rodata
	.2byte 0x0000
.endobj gap_03_00000816_rodata

# .rodata:0x7E8 | 0x818 | size: 0xB
.obj str_irai_29_17_pik_00001ce0, local
	.string "irai_29_17"
.endobj str_irai_29_17_pik_00001ce0

# .rodata:0x7F3 | 0x823 | size: 0x1
.obj gap_03_00000823_rodata, global
.hidden gap_03_00000823_rodata
	.byte 0x00
.endobj gap_03_00000823_rodata

# .rodata:0x7F4 | 0x824 | size: 0xE
.obj str_BGM_STG6_PIK1_pik_00001cec, local
	.string "BGM_STG6_PIK1"
.endobj str_BGM_STG6_PIK1_pik_00001cec

# .rodata:0x802 | 0x832 | size: 0x2
.obj gap_03_00000832_rodata, global
.hidden gap_03_00000832_rodata
	.2byte 0x0000
.endobj gap_03_00000832_rodata

# .rodata:0x804 | 0x834 | size: 0xD
.obj str_irai_29_18_2_pik_00001cfc, local
	.string "irai_29_18_2"
.endobj str_irai_29_18_2_pik_00001cfc

# .rodata:0x811 | 0x841 | size: 0x3
.obj gap_03_00000841_rodata, global
.hidden gap_03_00000841_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000841_rodata

# .rodata:0x814 | 0x844 | size: 0xB
.obj str_irai_29_18_pik_00001d0c, local
	.string "irai_29_18"
.endobj str_irai_29_18_pik_00001d0c

# .rodata:0x81F | 0x84F | size: 0x1
.obj gap_03_0000084F_rodata, global
.hidden gap_03_0000084F_rodata
	.byte 0x00
.endobj gap_03_0000084F_rodata

# .rodata:0x820 | 0x850 | size: 0xC
.obj str_stg6_pik_02_pik_00001d18, local
	.string "stg6_pik_02"
.endobj str_stg6_pik_02_pik_00001d18

# .rodata:0x82C | 0x85C | size: 0xE
.obj str_stg7_pik_21_1_pik_00001d24, local
	.string "stg7_pik_21_1"
.endobj str_stg7_pik_21_1_pik_00001d24

# .rodata:0x83A | 0x86A | size: 0x2
.obj gap_03_0000086A_rodata, global
.hidden gap_03_0000086A_rodata
	.2byte 0x0000
.endobj gap_03_0000086A_rodata

# .rodata:0x83C | 0x86C | size: 0xC
.obj str_stg7_pik_20_pik_00001d34, local
	.string "stg7_pik_20"
.endobj str_stg7_pik_20_pik_00001d34

# .rodata:0x848 | 0x878 | size: 0xC
.obj str_stg7_pik_21_pik_00001d40, local
	.string "stg7_pik_21"
.endobj str_stg7_pik_21_pik_00001d40

# .rodata:0x854 | 0x884 | size: 0xE
.obj str_stg7_pik_21_2_pik_00001d4c, local
	.string "stg7_pik_21_2"
.endobj str_stg7_pik_21_2_pik_00001d4c

# .rodata:0x862 | 0x892 | size: 0x2
.obj gap_03_00000892_rodata, global
.hidden gap_03_00000892_rodata
	.2byte 0x0000
.endobj gap_03_00000892_rodata

# .rodata:0x864 | 0x894 | size: 0xC
.obj str_stg6_pik_03_pik_00001d5c, local
	.string "stg6_pik_03"
.endobj str_stg6_pik_03_pik_00001d5c

# .rodata:0x870 | 0x8A0 | size: 0xE
.obj str_stg7_pik_23_1_pik_00001d68, local
	.string "stg7_pik_23_1"
.endobj str_stg7_pik_23_1_pik_00001d68

# .rodata:0x87E | 0x8AE | size: 0x2
.obj gap_03_000008AE_rodata, global
.hidden gap_03_000008AE_rodata
	.2byte 0x0000
.endobj gap_03_000008AE_rodata

# .rodata:0x880 | 0x8B0 | size: 0xC
.obj str_stg7_pik_22_pik_00001d78, local
	.string "stg7_pik_22"
.endobj str_stg7_pik_22_pik_00001d78

# .rodata:0x88C | 0x8BC | size: 0xC
.obj str_stg7_pik_23_pik_00001d84, local
	.string "stg7_pik_23"
.endobj str_stg7_pik_23_pik_00001d84

# .rodata:0x898 | 0x8C8 | size: 0xE
.obj str_stg7_pik_23_2_pik_00001d90, local
	.string "stg7_pik_23_2"
.endobj str_stg7_pik_23_2_pik_00001d90

# .rodata:0x8A6 | 0x8D6 | size: 0x2
.obj gap_03_000008D6_rodata, global
.hidden gap_03_000008D6_rodata
	.2byte 0x0000
.endobj gap_03_000008D6_rodata

# .rodata:0x8A8 | 0x8D8 | size: 0xF
.obj str_stg6_pik_04_06_pik_00001da0, local
	.string "stg6_pik_04_06"
.endobj str_stg6_pik_04_06_pik_00001da0

# .rodata:0x8B7 | 0x8E7 | size: 0x1
.obj gap_03_000008E7_rodata, global
.hidden gap_03_000008E7_rodata
	.byte 0x00
.endobj gap_03_000008E7_rodata

# .rodata:0x8B8 | 0x8E8 | size: 0x7
.obj str_マダム_pik_00001db0, local
	.4byte 0x837D835F
	.byte 0x83, 0x80, 0x00
.endobj str_マダム_pik_00001db0

# .rodata:0x8BF | 0x8EF | size: 0x1
.obj gap_03_000008EF_rodata, global
.hidden gap_03_000008EF_rodata
	.byte 0x00
.endobj gap_03_000008EF_rodata

# .rodata:0x8C0 | 0x8F0 | size: 0xF
.obj str_stg6_pik_04_07_pik_00001db8, local
	.string "stg6_pik_04_07"
.endobj str_stg6_pik_04_07_pik_00001db8

# .rodata:0x8CF | 0x8FF | size: 0x1
.obj gap_03_000008FF_rodata, global
.hidden gap_03_000008FF_rodata
	.byte 0x00
.endobj gap_03_000008FF_rodata

# .rodata:0x8D0 | 0x900 | size: 0xF
.obj str_stg6_pik_04_08_pik_00001dc8, local
	.string "stg6_pik_04_08"
.endobj str_stg6_pik_04_08_pik_00001dc8

# .rodata:0x8DF | 0x90F | size: 0x1
.obj gap_03_0000090F_rodata, global
.hidden gap_03_0000090F_rodata
	.byte 0x00
.endobj gap_03_0000090F_rodata

# .rodata:0x8E0 | 0x910 | size: 0xF
.obj str_stg6_pik_04_10_pik_00001dd8, local
	.string "stg6_pik_04_10"
.endobj str_stg6_pik_04_10_pik_00001dd8

# .rodata:0x8EF | 0x91F | size: 0x1
.obj gap_03_0000091F_rodata, global
.hidden gap_03_0000091F_rodata
	.byte 0x00
.endobj gap_03_0000091F_rodata

# .rodata:0x8F0 | 0x920 | size: 0xB
.obj str_irai_23_01_pik_00001de8, local
	.string "irai_23_01"
.endobj str_irai_23_01_pik_00001de8

# .rodata:0x8FB | 0x92B | size: 0x1
.obj gap_03_0000092B_rodata, global
.hidden gap_03_0000092B_rodata
	.byte 0x00
.endobj gap_03_0000092B_rodata

# .rodata:0x8FC | 0x92C | size: 0xB
.obj str_irai_23_02_pik_00001df4, local
	.string "irai_23_02"
.endobj str_irai_23_02_pik_00001df4

# .rodata:0x907 | 0x937 | size: 0x1
.obj gap_03_00000937_rodata, global
.hidden gap_03_00000937_rodata
	.byte 0x00
.endobj gap_03_00000937_rodata

# .rodata:0x908 | 0x938 | size: 0x4
.obj str_mg2_pik_00001e00, local
	.string "mg2"
.endobj str_mg2_pik_00001e00

# .rodata:0x90C | 0x93C | size: 0xB
.obj str_irai_23_03_pik_00001e04, local
	.string "irai_23_03"
.endobj str_irai_23_03_pik_00001e04

# .rodata:0x917 | 0x947 | size: 0x1
.obj gap_03_00000947_rodata, global
.hidden gap_03_00000947_rodata
	.byte 0x00
.endobj gap_03_00000947_rodata

# .rodata:0x918 | 0x948 | size: 0xB
.obj str_irai_23_00_pik_00001e10, local
	.string "irai_23_00"
.endobj str_irai_23_00_pik_00001e10

# .rodata:0x923 | 0x953 | size: 0x1
.obj gap_03_00000953_rodata, global
.hidden gap_03_00000953_rodata
	.byte 0x00
.endobj gap_03_00000953_rodata

# .rodata:0x924 | 0x954 | size: 0xF
.obj str_stg6_pik_04_01_pik_00001e1c, local
	.string "stg6_pik_04_01"
.endobj str_stg6_pik_04_01_pik_00001e1c

# .rodata:0x933 | 0x963 | size: 0x1
.obj gap_03_00000963_rodata, global
.hidden gap_03_00000963_rodata
	.byte 0x00
.endobj gap_03_00000963_rodata

# .rodata:0x934 | 0x964 | size: 0xF
.obj str_stg6_pik_04_04_pik_00001e2c, local
	.string "stg6_pik_04_04"
.endobj str_stg6_pik_04_04_pik_00001e2c

# .rodata:0x943 | 0x973 | size: 0x1
.obj gap_03_00000973_rodata, global
.hidden gap_03_00000973_rodata
	.byte 0x00
.endobj gap_03_00000973_rodata

# .rodata:0x944 | 0x974 | size: 0xF
.obj str_stg6_pik_04_05_pik_00001e3c, local
	.string "stg6_pik_04_05"
.endobj str_stg6_pik_04_05_pik_00001e3c

# .rodata:0x953 | 0x983 | size: 0x1
.obj gap_03_00000983_rodata, global
.hidden gap_03_00000983_rodata
	.byte 0x00
.endobj gap_03_00000983_rodata

# .rodata:0x954 | 0x984 | size: 0xF
.obj str_stg6_pik_04_02_pik_00001e4c, local
	.string "stg6_pik_04_02"
.endobj str_stg6_pik_04_02_pik_00001e4c

# .rodata:0x963 | 0x993 | size: 0x1
.obj gap_03_00000993_rodata, global
.hidden gap_03_00000993_rodata
	.byte 0x00
.endobj gap_03_00000993_rodata

# .rodata:0x964 | 0x994 | size: 0xF
.obj str_stg6_pik_04_03_pik_00001e5c, local
	.string "stg6_pik_04_03"
.endobj str_stg6_pik_04_03_pik_00001e5c

# .rodata:0x973 | 0x9A3 | size: 0x1
.obj gap_03_000009A3_rodata, global
.hidden gap_03_000009A3_rodata
	.byte 0x00
.endobj gap_03_000009A3_rodata

# .rodata:0x974 | 0x9A4 | size: 0xC
.obj str_stg6_pik_04_pik_00001e6c, local
	.string "stg6_pik_04"
.endobj str_stg6_pik_04_pik_00001e6c

# .rodata:0x980 | 0x9B0 | size: 0x12
.obj str_stg7_pik_clear_01_pik_00001e78, local
	.string "stg7_pik_clear_01"
.endobj str_stg7_pik_clear_01_pik_00001e78

# .rodata:0x992 | 0x9C2 | size: 0x2
.obj gap_03_000009C2_rodata, global
.hidden gap_03_000009C2_rodata
	.2byte 0x0000
.endobj gap_03_000009C2_rodata

# .rodata:0x994 | 0x9C4 | size: 0x14
.obj str_stg7_pik_clear_01_1_pik_00001e8c, local
	.string "stg7_pik_clear_01_1"
.endobj str_stg7_pik_clear_01_1_pik_00001e8c

# .rodata:0x9A8 | 0x9D8 | size: 0xC
.obj str_stg6_pik_05_pik_00001ea0, local
	.string "stg6_pik_05"
.endobj str_stg6_pik_05_pik_00001ea0

# .rodata:0x9B4 | 0x9E4 | size: 0xB
.obj str_コナリキン_pik_00001eac, local
	.4byte 0x83528369
	.4byte 0x838A834C
	.byte 0x83, 0x93, 0x00
.endobj str_コナリキン_pik_00001eac

# .rodata:0x9BF | 0x9EF | size: 0x1
.obj gap_03_000009EF_rodata, global
.hidden gap_03_000009EF_rodata
	.byte 0x00
.endobj gap_03_000009EF_rodata

# .rodata:0x9C0 | 0x9F0 | size: 0xD
.obj str_サラリーマン_pik_00001eb8, local
	.4byte 0x83548389
	.4byte 0x838A815B
	.4byte 0x837D8393
	.byte 0x00
.endobj str_サラリーマン_pik_00001eb8

# .rodata:0x9CD | 0x9FD | size: 0x3
.obj gap_03_000009FD_rodata, global
.hidden gap_03_000009FD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000009FD_rodata

# .rodata:0x9D0 | 0xA00 | size: 0x7
.obj str_door_1_pik_00001ec8, local
	.string "door_1"
.endobj str_door_1_pik_00001ec8

# .rodata:0x9D7 | 0xA07 | size: 0x1
.obj gap_03_00000A07_rodata, global
.hidden gap_03_00000A07_rodata
	.byte 0x00
.endobj gap_03_00000A07_rodata

# .rodata:0x9D8 | 0xA08 | size: 0x7
.obj str_ie_1_N_pik_00001ed0, local
	.string "ie_1_N"
.endobj str_ie_1_N_pik_00001ed0

# .rodata:0x9DF | 0xA0F | size: 0x1
.obj gap_03_00000A0F_rodata, global
.hidden gap_03_00000A0F_rodata
	.byte 0x00
.endobj gap_03_00000A0F_rodata

# .rodata:0x9E0 | 0xA10 | size: 0x7
.obj str_ie_1_H_pik_00001ed8, local
	.string "ie_1_H"
.endobj str_ie_1_H_pik_00001ed8

# .rodata:0x9E7 | 0xA17 | size: 0x1
.obj gap_03_00000A17_rodata, global
.hidden gap_03_00000A17_rodata
	.byte 0x00
.endobj gap_03_00000A17_rodata

# .rodata:0x9E8 | 0xA18 | size: 0xF
.obj str_mobj_badge_gat_pik_00001ee0, local
	.string "mobj_badge_gat"
.endobj str_mobj_badge_gat_pik_00001ee0

# .rodata:0x9F7 | 0xA27 | size: 0x1
.obj gap_03_00000A27_rodata, global
.hidden gap_03_00000A27_rodata
	.byte 0x00
.endobj gap_03_00000A27_rodata

# .rodata:0x9F8 | 0xA28 | size: 0xB
.obj str_a_door_1_N_pik_00001ef0, local
	.string "a_door_1_N"
.endobj str_a_door_1_N_pik_00001ef0

# .rodata:0xA03 | 0xA33 | size: 0x1
.obj gap_03_00000A33_rodata, global
.hidden gap_03_00000A33_rodata
	.byte 0x00
.endobj gap_03_00000A33_rodata

# .rodata:0xA04 | 0xA34 | size: 0x9
.obj str_a_door_1_pik_00001efc, local
	.string "a_door_1"
.endobj str_a_door_1_pik_00001efc

# .rodata:0xA0D | 0xA3D | size: 0x3
.obj gap_03_00000A3D_rodata, global
.hidden gap_03_00000A3D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000A3D_rodata

# .rodata:0xA10 | 0xA40 | size: 0x7
.obj str_soto_1_pik_00001f08, local
	.string "soto_1"
.endobj str_soto_1_pik_00001f08

# .rodata:0xA17 | 0xA47 | size: 0x1
.obj gap_03_00000A47_rodata, global
.hidden gap_03_00000A47_rodata
	.byte 0x00
.endobj gap_03_00000A47_rodata

# .rodata:0xA18 | 0xA48 | size: 0x5
.obj str_naka_pik_00001f10, local
	.string "naka"
.endobj str_naka_pik_00001f10

# .rodata:0xA1D | 0xA4D | size: 0x3
.obj gap_03_00000A4D_rodata, global
.hidden gap_03_00000A4D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000A4D_rodata

# .rodata:0xA20 | 0xA50 | size: 0xC
.obj str_a_ie_1_naka_pik_00001f18, local
	.string "a_ie_1_naka"
.endobj str_a_ie_1_naka_pik_00001f18

# .rodata:0xA2C | 0xA5C | size: 0x7
.obj str_door_2_pik_00001f24, local
	.string "door_2"
.endobj str_door_2_pik_00001f24

# .rodata:0xA33 | 0xA63 | size: 0x1
.obj gap_03_00000A63_rodata, global
.hidden gap_03_00000A63_rodata
	.byte 0x00
.endobj gap_03_00000A63_rodata

# .rodata:0xA34 | 0xA64 | size: 0x7
.obj str_ie_2_N_pik_00001f2c, local
	.string "ie_2_N"
.endobj str_ie_2_N_pik_00001f2c

# .rodata:0xA3B | 0xA6B | size: 0x1
.obj gap_03_00000A6B_rodata, global
.hidden gap_03_00000A6B_rodata
	.byte 0x00
.endobj gap_03_00000A6B_rodata

# .rodata:0xA3C | 0xA6C | size: 0x7
.obj str_ie_2_H_pik_00001f34, local
	.string "ie_2_H"
.endobj str_ie_2_H_pik_00001f34

# .rodata:0xA43 | 0xA73 | size: 0x1
.obj gap_03_00000A73_rodata, global
.hidden gap_03_00000A73_rodata
	.byte 0x00
.endobj gap_03_00000A73_rodata

# .rodata:0xA44 | 0xA74 | size: 0x7
.obj str_ie_2_U_pik_00001f3c, local
	.string "ie_2_U"
.endobj str_ie_2_U_pik_00001f3c

# .rodata:0xA4B | 0xA7B | size: 0x1
.obj gap_03_00000A7B_rodata, global
.hidden gap_03_00000A7B_rodata
	.byte 0x00
.endobj gap_03_00000A7B_rodata

# .rodata:0xA4C | 0xA7C | size: 0xB
.obj str_a_door_2_N_pik_00001f44, local
	.string "a_door_2_N"
.endobj str_a_door_2_N_pik_00001f44

# .rodata:0xA57 | 0xA87 | size: 0x1
.obj gap_03_00000A87_rodata, global
.hidden gap_03_00000A87_rodata
	.byte 0x00
.endobj gap_03_00000A87_rodata

# .rodata:0xA58 | 0xA88 | size: 0x9
.obj str_a_door_2_pik_00001f50, local
	.string "a_door_2"
.endobj str_a_door_2_pik_00001f50

# .rodata:0xA61 | 0xA91 | size: 0x3
.obj gap_03_00000A91_rodata, global
.hidden gap_03_00000A91_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000A91_rodata

# .rodata:0xA64 | 0xA94 | size: 0x7
.obj str_soto_2_pik_00001f5c, local
	.string "soto_2"
.endobj str_soto_2_pik_00001f5c

# .rodata:0xA6B | 0xA9B | size: 0x1
.obj gap_03_00000A9B_rodata, global
.hidden gap_03_00000A9B_rodata
	.byte 0x00
.endobj gap_03_00000A9B_rodata

# .rodata:0xA6C | 0xA9C | size: 0x6
.obj str_naka_pik_00001f64, local
	.string "naka_"
.endobj str_naka_pik_00001f64

# .rodata:0xA72 | 0xAA2 | size: 0x2
.obj gap_03_00000AA2_rodata, global
.hidden gap_03_00000AA2_rodata
	.2byte 0x0000
.endobj gap_03_00000AA2_rodata

# .rodata:0xA74 | 0xAA4 | size: 0xB
.obj str_a_ie_2_nak_pik_00001f6c, local
	.string "a_ie_2_nak"
.endobj str_a_ie_2_nak_pik_00001f6c

# .rodata:0xA7F | 0xAAF | size: 0x1
.obj gap_03_00000AAF_rodata, global
.hidden gap_03_00000AAF_rodata
	.byte 0x00
.endobj gap_03_00000AAF_rodata

# .rodata:0xA80 | 0xAB0 | size: 0x9
.obj str_a_door_3_pik_00001f78, local
	.string "a_door_3"
.endobj str_a_door_3_pik_00001f78

# .rodata:0xA89 | 0xAB9 | size: 0x3
.obj gap_03_00000AB9_rodata, global
.hidden gap_03_00000AB9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000AB9_rodata

# .rodata:0xA8C | 0xABC | size: 0x7
.obj str_door_3_pik_00001f84, local
	.string "door_3"
.endobj str_door_3_pik_00001f84

# .rodata:0xA93 | 0xAC3 | size: 0x1
.obj gap_03_00000AC3_rodata, global
.hidden gap_03_00000AC3_rodata
	.byte 0x00
.endobj gap_03_00000AC3_rodata

# .rodata:0xA94 | 0xAC4 | size: 0x14
.obj str_SFX_DOOR_OPEN_TURN1_pik_00001f8c, local
	.string "SFX_DOOR_OPEN_TURN1"
.endobj str_SFX_DOOR_OPEN_TURN1_pik_00001f8c

# .rodata:0xAA8 | 0xAD8 | size: 0x7
.obj str_w_bero_pik_00001fa0, local
	.string "w_bero"
.endobj str_w_bero_pik_00001fa0

# .rodata:0xAAF | 0xADF | size: 0x1
.obj gap_03_00000ADF_rodata, global
.hidden gap_03_00000ADF_rodata
	.byte 0x00
.endobj gap_03_00000ADF_rodata

# .rodata:0xAB0 | 0xAE0 | size: 0xD
.obj str_pik_touchaku_pik_00001fa8, local
	.string "pik_touchaku"
.endobj str_pik_touchaku_pik_00001fa8

# .rodata:0xABD | 0xAED | size: 0x3
.obj gap_03_00000AED_rodata, global
.hidden gap_03_00000AED_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000AED_rodata

# .rodata:0xAC0 | 0xAF0 | size: 0x12
.obj str_OFF_d_two_meku_up_pik_00001fb8, local
	.string "OFF_d_two_meku_up"
.endobj str_OFF_d_two_meku_up_pik_00001fb8

# .rodata:0xAD2 | 0xB02 | size: 0x2
.obj gap_03_00000B02_rodata, global
.hidden gap_03_00000B02_rodata
	.2byte 0x0000
.endobj gap_03_00000B02_rodata

# .rodata:0xAD4 | 0xB04 | size: 0x4
.obj str_img_pik_00001fcc, local
	.string "img"
.endobj str_img_pik_00001fcc

# .rodata:0xAD8 | 0xB08 | size: 0x4
.obj str_ofs_pik_00001fd0, local
	.string "ofs"
.endobj str_ofs_pik_00001fd0

# .rodata:0xADC | 0xB0C | size: 0x15
.obj str_SFX_STG6_MAP_CHANGE1_pik_00001fd4, local
	.string "SFX_STG6_MAP_CHANGE1"
.endobj str_SFX_STG6_MAP_CHANGE1_pik_00001fd4

# .rodata:0xAF1 | 0xB21 | size: 0x3
.obj gap_03_00000B21_rodata, global
.hidden gap_03_00000B21_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000B21_rodata

# .rodata:0xAF4 | 0xB24 | size: 0x4
.obj str_A_1_pik_00001fec, local
	.string "A_1"
.endobj str_A_1_pik_00001fec

# .rodata:0xAF8 | 0xB28 | size: 0x7
.obj str_naka_1_pik_00001ff0, local
	.string "naka_1"
.endobj str_naka_1_pik_00001ff0

# .rodata:0xAFF | 0xB2F | size: 0x1
.obj gap_03_00000B2F_rodata, global
.hidden gap_03_00000B2F_rodata
	.byte 0x00
.endobj gap_03_00000B2F_rodata

# .rodata:0xB00 | 0xB30 | size: 0xC
.obj str_ie_1_1_yuka_pik_00001ff8, local
	.string "ie_1_1_yuka"
.endobj str_ie_1_1_yuka_pik_00001ff8

# .rodata:0xB0C | 0xB3C | size: 0x15
.obj str_SFX_STG6_MAP_CHANGE2_pik_00002004, local
	.string "SFX_STG6_MAP_CHANGE2"
.endobj str_SFX_STG6_MAP_CHANGE2_pik_00002004

# .rodata:0xB21 | 0xB51 | size: 0x3
.obj gap_03_00000B51_rodata, global
.hidden gap_03_00000B51_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000B51_rodata

# .rodata:0xB24 | 0xB54 | size: 0x4
.obj str_A_2_pik_0000201c, local
	.string "A_2"
.endobj str_A_2_pik_0000201c

# .rodata:0xB28 | 0xB58 | size: 0x7
.obj str_item00_pik_00002020, local
	.string "item00"
.endobj str_item00_pik_00002020

# .rodata:0xB2F | 0xB5F | size: 0x1
.obj gap_03_00000B5F_rodata, global
.hidden gap_03_00000B5F_rodata
	.byte 0x00
.endobj gap_03_00000B5F_rodata

# .rodata:0xB30 | 0xB60 | size: 0x8
.obj str_train_5_pik_00002028, local
	.string "train_5"
.endobj str_train_5_pik_00002028

# .rodata:0xB38 | 0xB68 | size: 0x6
.obj str_resha_pik_00002030, local
	.string "resha"
.endobj str_resha_pik_00002030

# .rodata:0xB3E | 0xB6E | size: 0x2
.obj gap_03_00000B6E_rodata, global
.hidden gap_03_00000B6E_rodata
	.2byte 0x0000
.endobj gap_03_00000B6E_rodata

# .rodata:0xB40 | 0xB70 | size: 0xE
.obj str_ENV_STG6_PIK1_pik_00002038, local
	.string "ENV_STG6_PIK1"
.endobj str_ENV_STG6_PIK1_pik_00002038

# .rodata:0xB4E | 0xB7E | size: 0x2
.obj gap_03_00000B7E_rodata, global
.hidden gap_03_00000B7E_rodata
	.2byte 0x0000
.endobj gap_03_00000B7E_rodata

# .rodata:0xB50 | 0xB80 | size: 0xA
.obj str_mobj_save_pik_00002048, local
	.string "mobj_save"
.endobj str_mobj_save_pik_00002048

# .rodata:0xB5A | 0xB8A | size: 0x2
.obj gap_03_00000B8A_rodata, global
.hidden gap_03_00000B8A_rodata
	.2byte 0x0000
.endobj gap_03_00000B8A_rodata

# .rodata:0xB5C | 0xB8C | size: 0x9
.obj str_kururin1_pik_00002054, local
	.string "kururin1"
.endobj str_kururin1_pik_00002054

# .rodata:0xB65 | 0xB95 | size: 0x3
.obj gap_03_00000B95_rodata, global
.hidden gap_03_00000B95_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000B95_rodata

# .rodata:0xB68 | 0xB98 | size: 0x7
.obj str_jimenn_pik_00002060, local
	.string "jimenn"
.endobj str_jimenn_pik_00002060

# .rodata:0xB6F | 0xB9F | size: 0x1
.obj gap_03_00000B9F_rodata, global
.hidden gap_03_00000B9F_rodata
	.byte 0x00
.endobj gap_03_00000B9F_rodata

# .rodata:0xB70 | 0xBA0 | size: 0x8
.obj str_item_00_pik_00002068, local
	.string "item_00"
.endobj str_item_00_pik_00002068

# .rodata:0xB78 | 0xBA8 | size: 0x8
.obj str_item_01_pik_00002070, local
	.string "item_01"
.endobj str_item_01_pik_00002070

# .rodata:0xB80 | 0xBB0 | size: 0x5
.obj str_puro_pik_00002078, local
	.string "puro"
.endobj str_puro_pik_00002078

# .rodata:0xB85 | 0xBB5 | size: 0x3
.obj gap_03_00000BB5_rodata, global
.hidden gap_03_00000BB5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000BB5_rodata

# .rodata:0xB88 | 0xBB8 | size: 0x6
.obj str_bero_pik_00002080, local
	.string "bero_"
.endobj str_bero_pik_00002080

# .rodata:0xB8E | 0xBBE | size: 0x2
.obj gap_03_00000BBE_rodata, global
.hidden gap_03_00000BBE_rodata
	.2byte 0x0000
.endobj gap_03_00000BBE_rodata

# .rodata:0xB90 | 0xBC0 | size: 0x5
.obj str_ie_1_pik_00002088, local
	.string "ie_1"
.endobj str_ie_1_pik_00002088

# .rodata:0xB95 | 0xBC5 | size: 0x3
.obj gap_03_00000BC5_rodata, global
.hidden gap_03_00000BC5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000BC5_rodata

# .rodata:0xB98 | 0xBC8 | size: 0xE
.obj str_a_ie_1_2_yuka_pik_00002090, local
	.string "a_ie_1_2_yuka"
.endobj str_a_ie_1_2_yuka_pik_00002090

# .rodata:0xBA6 | 0xBD6 | size: 0x2
.obj gap_03_00000BD6_rodata, global
.hidden gap_03_00000BD6_rodata
	.2byte 0x0000
.endobj gap_03_00000BD6_rodata

# .rodata:0xBA8 | 0xBD8 | size: 0x8
.obj str_train_2_pik_000020a0, local
	.string "train_2"
.endobj str_train_2_pik_000020a0

# .rodata:0xBB0 | 0xBE0 | size: 0xA
.obj str_group1878_pik_000020a8, local
	.string "group1878"
.endobj str_group1878_pik_000020a8

# .rodata:0xBBA | 0xBEA | size: 0x2
.obj gap_03_00000BEA_rodata, global
.hidden gap_03_00000BEA_rodata
	.2byte 0x0000
.endobj gap_03_00000BEA_rodata

# .rodata:0xBBC | 0xBEC | size: 0xC
.obj str_a_home_yuka_pik_000020b4, local
	.string "a_home_yuka"
.endobj str_a_home_yuka_pik_000020b4

# .rodata:0xBC8 | 0xBF8 | size: 0x15
.obj str_BGM_EVT_NOKO_SAIKAI1_pik_000020c0, local
	.string "BGM_EVT_NOKO_SAIKAI1"
.endobj str_BGM_EVT_NOKO_SAIKAI1_pik_000020c0
	.byte 0x00, 0x00, 0x00

# .rodata:0xBE0 | 0xC10 | size: 0x4
.obj zero_pik_000020d8, local
	.float 0
.endobj zero_pik_000020d8

# .rodata:0xBE4 | 0xC14 | size: 0x4
.obj float_0p7_pik_000020dc, local
	.float 0.7
.endobj float_0p7_pik_000020dc

# .rodata:0xBE8 | 0xC18 | size: 0x4
.obj float_0p5_pik_000020e0, local
	.float 0.5
.endobj float_0p5_pik_000020e0

# .rodata:0xBEC | 0xC1C | size: 0x4
.obj float_15_pik_000020e4, local
	.float 15
.endobj float_15_pik_000020e4

# .rodata:0xBF0 | 0xC20 | size: 0x4
.obj float_1p8_pik_000020e8, local
	.float 1.8
.endobj float_1p8_pik_000020e8
	.4byte 0x00000000

# .rodata:0xBF8 | 0xC28 | size: 0x8
.obj double_to_int_mask_pik_000020f0, local
	.double 4503599627370496
.endobj double_to_int_mask_pik_000020f0

# 0x00000060..0x00004800 | size: 0x47A0
.data
.balign 8

# .data:0x0 | 0x60 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x68 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x6C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x70 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x74 | size: 0x4
.obj gap_04_00000074_data, global
.hidden gap_04_00000074_data
	.4byte 0x00000000
.endobj gap_04_00000074_data

# .data:0x18 | 0x78 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x80 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x84 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x88 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x90 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x94 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x98 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x9C | size: 0x4
.obj gap_04_0000009C_data, global
.hidden gap_04_0000009C_data
	.4byte 0x00000000
.endobj gap_04_0000009C_data

# .data:0x40 | 0xA0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0xA8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0xAC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0xB0 | size: 0x20
.obj dmgReturnPt, local
	.4byte str_mod_1_pik_000014f8
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj dmgReturnPt

# .data:0x70 | 0xD0 | size: 0x1D0
.obj sharinDt, local
	.4byte str_sha_1_1_pik_00001500
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_1_2_pik_00001508
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_1_3_pik_00001510
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_1_4_pik_00001518
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xF24A7E80
	.4byte str_sha_1_5_pik_00001520
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xF24A7E80
	.4byte str_sha_2_1_pik_00001528
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_2_2_pik_00001530
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_2_3_pik_00001538
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_3_1_pik_00001540
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_3_2_pik_00001548
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_3_3_pik_00001550
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_4_1_pik_00001558
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_4_2_pik_00001560
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_4_3_pik_00001568
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_5_1_pik_00001570
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_5_2_pik_00001578
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_5_3_pik_00001580
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_6_1_pik_00001588
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_6_2_pik_00001590
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_6_3_pik_00001598
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_1_1_c_pik_000015a0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7680
	.4byte str_sha_1_2_c_pik_000015ac
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7680
	.4byte str_sha_1_3_c_pik_000015b8
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0xF24A7680
	.4byte str_sha_1_4_c_pik_000015c4
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xF24A7680
	.4byte str_sha_1_5_c_pik_000015d0
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xF24A7680
	.4byte str_sha_6_1_c_pik_000015dc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_6_2_c_pik_000015e8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte str_sha_6_3_c_pik_000015f4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24A7E80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj sharinDt

# .data:0x240 | 0x2A0 | size: 0x15C
.obj evt_sharin_main, local
	.4byte 0x00020034
	.4byte 0xFE363C8A
	.4byte 0xF24A7A80
	.4byte 0x00010022
	.4byte 0xFE363C81
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFE363C8B
	.4byte 0xF24ADA0F
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020034
	.4byte 0xFE363C8B
	.4byte 0xF24AF70F
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020034
	.4byte 0xFE363C8B
	.4byte 0xF24B5694
	.4byte 0x00000031
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00010022
	.4byte 0xFE363C82
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFE363C89
	.4byte 0xFD050F80
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020034
	.4byte 0xFE363C89
	.4byte 0xFD050F81
	.4byte 0x00000031
	.4byte 0x0002003D
	.4byte 0xFE363C89
	.4byte 0xFE363C8B
	.4byte 0x0002003C
	.4byte 0xFE363C89
	.4byte 0xF24B5FAE
	.4byte 0x0002003A
	.4byte 0xFE363C8A
	.4byte 0xFE363C89
	.4byte 0x0002001B
	.4byte 0xFE363C8A
	.4byte 0xF2501A80
	.4byte 0x0002003B
	.4byte 0xFE363C8A
	.4byte 0xF2501A80
	.4byte 0x00000021
	.4byte 0x0002001A
	.4byte 0xFE363C8A
	.4byte 0xF24A7A80
	.4byte 0x0002003A
	.4byte 0xFE363C8A
	.4byte 0xF2501A80
	.4byte 0x00000021
	.4byte 0x00020034
	.4byte 0xFE363C8C
	.4byte 0xFE363C8A
	.4byte 0x0002003C
	.4byte 0xFE363C8C
	.4byte 0xFE363C83
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C8C
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF840697F
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_sharin_main

# .data:0x39C | 0x3FC | size: 0x4C
.obj evt_sharin, local
	.4byte 0x0001003E
	.4byte sharinDt
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00040042
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0001005C
	.4byte evt_sharin_main
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_sharin

# .data:0x3E8 | 0x448 | size: 0xB4
.obj clankDt, local
	.4byte str_bou_1_pik_00001600
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24ACA80
	.4byte 0xF24A7E80
	.4byte str_bou_2_pik_00001608
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xF24ABC80
	.4byte 0xF24A7E80
	.4byte str_bou_3_pik_00001610
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24ACA80
	.4byte 0xF24A7E80
	.4byte str_bou_4_pik_00001618
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xF24ABC80
	.4byte 0xF24A7E80
	.4byte str_bou_1_c_pik_00001620
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24ACA80
	.4byte 0xF24A7680
	.4byte str_bou_2_c_pik_00001628
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xF24ABC80
	.4byte 0xF24A7680
	.4byte str_bou_3_c_pik_00001630
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24ACA80
	.4byte 0xF24A7680
	.4byte str_bou_4_c_pik_00001638
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xF24ABC80
	.4byte 0xF24A7680
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj clankDt

# .data:0x49C | 0x4FC | size: 0x1A0
.obj evt_clank_main, local
	.4byte 0x00020034
	.4byte 0xFE363C8A
	.4byte 0xF24A7A80
	.4byte 0x00010022
	.4byte 0xFE363C81
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFE363C8B
	.4byte 0xF24ADA0F
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020034
	.4byte 0xFE363C8B
	.4byte 0xF24AF70F
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020034
	.4byte 0xFE363C8B
	.4byte 0xF24B5694
	.4byte 0x00000031
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00010022
	.4byte 0xFE363C82
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFE363C89
	.4byte 0xFD050F80
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020034
	.4byte 0xFE363C89
	.4byte 0xFD050F81
	.4byte 0x00000031
	.4byte 0x0002003D
	.4byte 0xFE363C89
	.4byte 0xFE363C8B
	.4byte 0x0002003C
	.4byte 0xFE363C89
	.4byte 0xF24B5FAE
	.4byte 0x0002003A
	.4byte 0xFE363C8A
	.4byte 0xFE363C89
	.4byte 0x0002001B
	.4byte 0xFE363C8A
	.4byte 0xF2501A80
	.4byte 0x0002003B
	.4byte 0xFE363C8A
	.4byte 0xF2501A80
	.4byte 0x00000021
	.4byte 0x0002001A
	.4byte 0xFE363C8A
	.4byte 0xF24A7A80
	.4byte 0x0002003A
	.4byte 0xFE363C8A
	.4byte 0xF2501A80
	.4byte 0x00000021
	.4byte 0x00020034
	.4byte 0xFE363C8C
	.4byte 0xFE363C8A
	.4byte 0x0002003C
	.4byte 0xFE363C8C
	.4byte 0xFE363C84
	.4byte 0x0004005B
	.4byte evt_sub_get_sincos
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0xFE363C8E
	.4byte 0x0002003C
	.4byte 0xFE363C8D
	.4byte 0xFE363C83
	.4byte 0x0002003C
	.4byte 0xFE363C8E
	.4byte 0xFE363C83
	.4byte 0x0002003B
	.4byte 0xFE363C8E
	.4byte 0xFE363C83
	.4byte 0x0002003C
	.4byte 0xFE363C8E
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C8E
	.4byte 0xFE363C8D
	.4byte 0xF24A7A80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF840697F
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_clank_main

# .data:0x63C | 0x69C | size: 0x54
.obj evt_clank, local
	.4byte 0x0001003E
	.4byte clankDt
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00040042
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0001003F
	.4byte 0xFE363C84
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0001005C
	.4byte evt_clank_main
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_clank

# .data:0x690 | 0x6F0 | size: 0x144
.obj evt_bg, local
	.4byte 0x00020034
	.4byte 0xFE363C8A
	.4byte 0xF24A7A80
	.4byte 0x00020034
	.4byte 0xFE363C8B
	.4byte 0xF24A7A80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xFD050F80
	.4byte 0x0002003A
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0002001B
	.4byte 0xFE363C8A
	.4byte 0xF256FA80
	.4byte 0x0002003B
	.4byte 0xFE363C8A
	.4byte 0xF2637A80
	.4byte 0x00000021
	.4byte 0x0002001A
	.4byte 0xFE363C8A
	.4byte 0xF23DFA80
	.4byte 0x0002003A
	.4byte 0xFE363C8A
	.4byte 0xF2637A80
	.4byte 0x00000021
	.4byte 0x0002003A
	.4byte 0xFE363C8B
	.4byte 0xFE363C80
	.4byte 0x0002001B
	.4byte 0xFE363C8B
	.4byte 0xF26FFA80
	.4byte 0x0002003B
	.4byte 0xFE363C8B
	.4byte 0xF2957A80
	.4byte 0x00000021
	.4byte 0x0002001A
	.4byte 0xFE363C8B
	.4byte 0xF224FA80
	.4byte 0x0002003A
	.4byte 0xFE363C8B
	.4byte 0xF2957A80
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_jimen_pik_00001640
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_yama_pik_00001648
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_iwayama_pik_00001650
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF840697F
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_bg

# .data:0x7D4 | 0x834 | size: 0x160
.obj evt_hoshi, local
	.4byte 0x00020034
	.4byte 0xFE363C8A
	.4byte 0xF24A7A80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFE363C89
	.4byte 0xFD050F80
	.4byte 0x0002003D
	.4byte 0xFE363C89
	.4byte 0xF24AF280
	.4byte 0x0002003C
	.4byte 0xFE363C89
	.4byte 0xF24B5FAE
	.4byte 0x0002003A
	.4byte 0xFE363C8A
	.4byte 0xFE363C89
	.4byte 0x0002001B
	.4byte 0xFE363C8A
	.4byte 0xF2501A80
	.4byte 0x0002003B
	.4byte 0xFE363C8A
	.4byte 0xF2501A80
	.4byte 0x00000021
	.4byte 0x0002001A
	.4byte 0xFE363C8A
	.4byte 0xF24A7A80
	.4byte 0x0002003A
	.4byte 0xFE363C8A
	.4byte 0xF2501A80
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_hosi_right_pik_00001658
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_hosi_left_pik_00001664
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_hosi_center_pik_00001670
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_hosi_right_c_pik_0000167c
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_hosi_left_c_pik_0000168c
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_hosi_center_c_pik_00001698
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF840697F
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_hoshi

# .data:0x934 | 0x994 | size: 0x3D0
.obj hom_10_evt_resha_start, local
	.4byte 0x00020032
	.4byte 0xF840697F
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF840697B
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF840697C
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF840697D
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_ranpu_pik_000016a8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG6_TRAIN_BELL1_pik_000016b0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG6_TRAIN_BELL1_pik_000016b0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_sub_get_mapname
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_gor_04_pik_000016c8
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG6_TRAIN_MOVE1_pik_000016d0
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_hom_00_pik_000016e8
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000153
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG6_TRAIN_MOVE1_pik_000016f0
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG6_TRAIN_MOVE1_pik_00001708
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_pik_00_pik_00001724
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG6_TRAIN_MOVE1_pik_0000172c
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_sub_get_mapname
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_hom_00_pik_000016e8
	.4byte 0x0000006B
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xFD050F80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_train_pik_00001744
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_gor_04_pik_000016c8
	.4byte 0x0000006B
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xFD050F80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_train_pik_00001744
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x0000006B
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xF24A7A80
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0xFFFFFA24
	.4byte 0x00004E20
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xF24A3E80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0002005D
	.4byte evt_sub_stopwatch
	.4byte 0xFE363C80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFD050F81
	.4byte 0xFD050F80
	.4byte 0x0003005B
	.4byte evt_sub_get_stopwatch
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0002001B
	.4byte 0xFE363C81
	.4byte 0x000005DC
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x000003E8
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x00020034
	.4byte 0xFD050F81
	.4byte 0xFD050F80
	.4byte 0x0002003A
	.4byte 0xFD050F81
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x000003E8
	.4byte 0x00010003
	.4byte 0x00000002
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x00020034
	.4byte 0xFD050F81
	.4byte 0xFD050F80
	.4byte 0x0002003A
	.4byte 0xFD050F81
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFD050F81
	.4byte 0xFD050F80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hom_10_evt_resha_start

# .data:0xD04 | 0xD64 | size: 0x40C
.obj hom_10_evt_resha_start2, local
	.4byte 0x00020032
	.4byte 0xF840697F
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF840697B
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF840697C
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF840697D
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_ranpu_pik_000016a8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG6_TRAIN_BELL1_pik_000016b0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG6_TRAIN_BELL1_pik_000016b0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_sub_get_mapname
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_gor_04_pik_000016c8
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG6_TRAIN_MOVE1_pik_000016d0
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_hom_00_pik_000016e8
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG6_TRAIN_MOVE1_pik_0000174c
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_pik_00_pik_00001724
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG6_TRAIN_MOVE1_pik_0000172c
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_sub_get_mapname
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_hom_00_pik_000016e8
	.4byte 0x0000006B
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xFD050F80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_train_pik_00001744
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_gor_04_pik_000016c8
	.4byte 0x0000006B
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xFD050F80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_train_pik_00001744
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_pik_00_pik_00001724
	.4byte 0x0000006B
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xFD050F80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_train_pik_00001744
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x0000006B
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xF24A7A80
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x000005DC
	.4byte 0x00004E20
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xF24AB680
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0002005D
	.4byte evt_sub_stopwatch
	.4byte 0xFE363C80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFD050F81
	.4byte 0xFD050F80
	.4byte 0x0003005B
	.4byte evt_sub_get_stopwatch
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0002001B
	.4byte 0xFE363C81
	.4byte 0x000005DC
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x000003E8
	.4byte 0x000003E8
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x00020034
	.4byte 0xFD050F81
	.4byte 0xFD050F80
	.4byte 0x0002003A
	.4byte 0xFD050F81
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x000003E8
	.4byte 0x00000000
	.4byte 0x000003E8
	.4byte 0x00010003
	.4byte 0x00000002
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x00020034
	.4byte 0xFD050F81
	.4byte 0xFD050F80
	.4byte 0x0002003A
	.4byte 0xFD050F81
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFD050F81
	.4byte 0xFD050F80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hom_10_evt_resha_start2

# .data:0x1110 | 0x1170 | size: 0x2C
.obj hom_10_evt_resha_start3, local
	.4byte 0x00020032
	.4byte 0xF840697F
	.4byte 0x00000001
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xF24A3E80
	.4byte 0x00020034
	.4byte 0xFD050F81
	.4byte 0xF24A3E80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hom_10_evt_resha_start3

# .data:0x113C | 0x119C | size: 0x2C
.obj hom_10_evt_resha_start4, local
	.4byte 0x00020032
	.4byte 0xF840697F
	.4byte 0x00000001
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xF24AB680
	.4byte 0x00020034
	.4byte 0xFD050F81
	.4byte 0xF24AB680
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hom_10_evt_resha_start4

# .data:0x1168 | 0x11C8 | size: 0x168
.obj stop_1, local
	.4byte 0x00020032
	.4byte 0xF840697F
	.4byte 0x00000001
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xF24A7A80
	.4byte 0x00020034
	.4byte 0xFD050F81
	.4byte 0xF24A7A80
	.4byte 0x00020034
	.4byte 0xFE363C82
	.4byte 0xF2795A80
	.4byte 0x0002005B
	.4byte evt_sub_get_mapname
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_gor_04_pik_000016c8
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG6_TRAIN_MOVE2_pik_00001768
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_hom_00_pik_000016e8
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG6_TRAIN_MOVE2_pik_00001780
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_pik_00_pik_00001724
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG6_TRAIN_MOVE2_pik_00001798
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000BB8
	.4byte 0x00000000
	.4byte 0x00002710
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7E80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_train_pik_00001744
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002003B
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xFE363C82
	.4byte 0x00020034
	.4byte 0xFD050F81
	.4byte 0xFE363C82
	.4byte 0x0002003C
	.4byte 0xFD050F80
	.4byte 0xF24A7680
	.4byte 0x0002003C
	.4byte 0xFD050F81
	.4byte 0xF24A7680
	.4byte 0x00020034
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xF840697F
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj stop_1

# .data:0x12D0 | 0x1330 | size: 0x168
.obj stop_2, local
	.4byte 0x00020032
	.4byte 0xF840697F
	.4byte 0x00000001
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xF24A7A80
	.4byte 0x00020034
	.4byte 0xFD050F81
	.4byte 0xF24A7A80
	.4byte 0x00020034
	.4byte 0xFE363C82
	.4byte 0xF21B9A80
	.4byte 0x0002005B
	.4byte evt_sub_get_mapname
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_gor_04_pik_000016c8
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG6_TRAIN_MOVE2_pik_00001768
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_hom_00_pik_000016e8
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG6_TRAIN_MOVE2_pik_000017b0
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_pik_00_pik_00001724
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG6_TRAIN_MOVE2_pik_00001798
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFFFFF448
	.4byte 0x00000000
	.4byte 0x00002710
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7E80
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_train_pik_00001744
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002003B
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xFE363C82
	.4byte 0x00020034
	.4byte 0xFD050F81
	.4byte 0xFE363C82
	.4byte 0x0002003C
	.4byte 0xFD050F80
	.4byte 0xF24A7680
	.4byte 0x0002003C
	.4byte 0xFD050F81
	.4byte 0xF24A7680
	.4byte 0x00020034
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xF840697F
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj stop_2

# .data:0x1438 | 0x1498 | size: 0x90
.obj hom_10_evt_resha_stop, local
	.4byte 0x0002005B
	.4byte evt_sub_get_mapname
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_pik_00_pik_00001724
	.4byte 0x0001005C
	.4byte stop_1
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_sub_get_mapname
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_gor_04_pik_000016c8
	.4byte 0x0001005C
	.4byte stop_2
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_sub_get_mapname
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_hom_00_pik_000016e8
	.4byte 0x00020018
	.4byte 0xF840697A
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte stop_1
	.4byte 0x00000020
	.4byte 0x0001005C
	.4byte stop_2
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hom_10_evt_resha_stop

# .data:0x14C8 | 0x1528 | size: 0x84
.obj evt_ramp, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte ramp_r
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_ranpu_pik_000016a8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_ranpu_c_pik_000017cc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF840697F
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_ramp

# .data:0x154C | 0x15AC | size: 0x3C
.obj pika_tbl, local
	.4byte str_pika_1_1_pik_000017d4
	.4byte str_pika_1_2_pik_000017e0
	.4byte str_pika_1_3_pik_000017ec
	.4byte str_pika_1_4_pik_000017f8
	.4byte str_pika_2_pik_00001804
	.4byte str_pika_3_pik_0000180c
	.4byte str_pika_4_pik_00001814
	.4byte str_pika_5_pik_0000181c
	.4byte str_pika_6_pik_00001824
	.4byte str_pika_1_1_c_pik_0000182c
	.4byte str_pika_1_2_c_pik_00001838
	.4byte str_pika_1_3_c_pik_00001844
	.4byte str_pika_1_4_c_pik_00001850
	.4byte str_pika_6_c_pik_0000185c
	.4byte 0x00000000
.endobj pika_tbl

# .data:0x1588 | 0x15E8 | size: 0x28
.obj pika_tbl_rsh_06, local
	.4byte str_pika_1_1_pik_000017d4
	.4byte str_pika_1_2_pik_000017e0
	.4byte str_pika_1_3_pik_000017ec
	.4byte str_pika_1_4_pik_000017f8
	.4byte str_pika_2_pik_00001804
	.4byte str_pika_3_pik_0000180c
	.4byte str_pika_4_pik_00001814
	.4byte str_pika_5_pik_0000181c
	.4byte str_pika_6_pik_00001824
	.4byte 0x00000000
.endobj pika_tbl_rsh_06

# .data:0x15B0 | 0x1610 | size: 0x198
.obj hom_10_evt_resha_sub, local
	.4byte 0x00020032
	.4byte 0xF840697F
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xF24A7A80
	.4byte 0x00020034
	.4byte 0xFD050F81
	.4byte 0xF24A7A80
	.4byte 0x0001005C
	.4byte evt_sharin
	.4byte 0x0001005C
	.4byte evt_clank
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_sub_get_mapname
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_hom_10_pik_00001868
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_hom_11_pik_00001870
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_hom_12_pik_00001878
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_rsh_06_a_pik_00001880
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x0001005C
	.4byte evt_bg
	.4byte 0x00000021
	.4byte 0x0001005C
	.4byte evt_hoshi
	.4byte 0x0001005C
	.4byte evt_ramp
	.4byte 0x0003005B
	.4byte evt_map_set_tevcallback
	.4byte 0x00000001
	.4byte resha_tev
	.4byte 0x0001003E
	.4byte pika_tbl
	.4byte 0x0002005B
	.4byte evt_sub_get_mapname
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_rsh_06_a_pik_00001880
	.4byte 0x0001003E
	.4byte pika_tbl_rsh_06
	.4byte 0x00000021
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001003F
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x01000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000100
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x10000000
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hom_10_evt_resha_sub

# .data:0x1748 | 0x17A8 | size: 0x8C
.obj hom_10_evt_resha_right, local
	.4byte 0x0001005E
	.4byte hom_10_evt_resha_sub
	.4byte 0x0002005B
	.4byte evt_sub_get_mapname
	.4byte 0xFE363C80
	.4byte 0x0002000D
	.4byte 0xFE363C80
	.4byte str_rsh_06_a_pik_00001880
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_train_7_pik_0000188c
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_train_8_pik_00001894
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_renketu_6_pik_0000189c
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_renketu_7_pik_000018a8
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hom_10_evt_resha_right

# .data:0x17D4 | 0x1834 | size: 0x70
.obj hom_10_evt_resha_left, local
	.4byte 0x0001005E
	.4byte hom_10_evt_resha_sub
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_train_1_pik_000018b4
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_train_6_pik_000018bc
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_renketu_1_pik_000018c4
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_renketu_5_pik_000018d0
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hom_10_evt_resha_left

# .data:0x1844 | 0x18A4 | size: 0x230
.obj hom_10_init_evt, local
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG6_RSH2_pik_000018dc
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000001
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
	.4byte evt_party_set_pos
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF840697A
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte hom_10_evt_resha_right
	.4byte 0x0001005E
	.4byte hom_10_evt_resha_start3
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0xFFFFFE0C
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_renketu_pik_000018ec
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_renketu_1_pik_000018c4
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_renketu_2_pik_000018f4
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_renketu_3_pik_00001900
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_renketu_4_pik_0000190c
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_renketu_5_pik_000018d0
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte hom_10_evt_resha_left
	.4byte 0x0001005E
	.4byte hom_10_evt_resha_start4
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x000003E8
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_train_pik_00001744
	.4byte 0xFFFFFA24
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_cam_letter_box_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFE363C80
	.4byte 0x0000012C
	.4byte 0x00000578
	.4byte 0xFE363C80
	.4byte 0x0000007D
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFE363C81
	.4byte 0x0000012C
	.4byte 0x00000578
	.4byte 0xFE363C81
	.4byte 0x0000007D
	.4byte 0x00000000
	.4byte 0x00001F40
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000FA0
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_rsh_02_a_pik_00001918
	.4byte str_nidome_pik_00001924
	.4byte 0x0000006D
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hom_10_init_evt

# .data:0x1A74 | 0x1AD4 | size: 0x20
.obj resha_noru, local
	.4byte 0x00020032
	.4byte 0xFAA2B58B
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj resha_noru

# .data:0x1A94 | 0x1AF4 | size: 0xB4
.obj bero_data, local
	.4byte str_se_bero_pik_0000192c
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_pik_04_pik_00001934
	.4byte str_nw_bero_pik_0000193c
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_n_bero_pik_00001944
	.4byte 0x00010008
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte resha_noru
	.4byte str_rsh_01_a_pik_0000194c
	.4byte str_s_bero_pik_00001958
	.4byte 0x00010001
	.4byte str_n_1_door_close_pik_00001960
	.4byte str_n_1_door_open_pik_00001970
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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

# .data:0x1B48 | 0x1BA8 | size: 0x18
.obj name_tbl, local
	.4byte str_yajirusi_1_pik_00001980
	.4byte str_yajirusi_2_pik_0000198c
	.4byte str_yajirusi_3_pik_00001998
	.4byte str_yajirusi_4_pik_000019a4
	.4byte str_yajirusi_5_pik_000019b0
	.4byte str_yajirusi_6_pik_000019bc
.endobj name_tbl

# .data:0x1B60 | 0x1BC0 | size: 0x11C
.obj evt_pik_yajirushi_21_data_1BC0, global
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000014
	.4byte 0xFFFFFFEC
	.4byte 0x000003E8
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte 0xFE363C89
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000064
	.4byte 0xFE363C80
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFFFFFFEC
	.4byte 0x00000014
	.4byte 0x000003E8
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFFFFFFEC
	.4byte 0x0000017C
	.4byte 0x000003E8
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000014
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte 0xFE363C89
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000014
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_pik_yajirushi_21_data_1BC0

# .data:0x1C7C | 0x1CDC | size: 0x49C
.obj evt_train, local
	.4byte 0x00020032
	.4byte 0xFAA2B58B
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_n_bero_pik_00001944
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_DOOR_OPEN_SLIDE1_pik_000019c8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0xFFFFFFD8
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_tobira_pik_000019e0
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_cam_ctrl_onoff
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFF29
	.4byte 0xFFFFFE98
	.4byte 0xF24BBA80
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFF1A
	.4byte 0xFFFFFE57
	.4byte 0xF24BBA80
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFF29
	.4byte 0xFFFFFE98
	.4byte 0xF24BBA80
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFF38
	.4byte 0xFFFFFE57
	.4byte 0xF24BBA80
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000001
	.4byte 0xFFFFFF29
	.4byte 0xFFFFFE5C
	.4byte 0xF24BBA80
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000001
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFF38
	.4byte 0xFE363C81
	.4byte 0xFFFFFE57
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000001
	.4byte 0xFFFFFF29
	.4byte 0xFE363C81
	.4byte 0xFFFFFE5C
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000001
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_DOOR_SHUT_SLIDE1_pik_000019e8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFFFFFFD8
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_tobira_pik_000019e0
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_駅員_pik_00001a00
	.4byte 0xFFFFFF29
	.4byte 0xFFFFFEB1
	.4byte 0x00000000
	.4byte 0xF24B6A80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_駅員_pik_00001a00
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_駅員_pik_00001a00
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_駅員_pik_00001a00
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_駅員_pik_00001a00
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_train_07_pik_00001a08
	.4byte 0x00000000
	.4byte str_駅員_pik_00001a00
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_cam_ctrl_onoff
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000001
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
	.4byte evt_party_set_pos
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00001388
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_駅員_pik_00001a00
	.4byte 0x0000010E
	.4byte 0x0000006D
	.4byte 0x0001005C
	.4byte hom_10_evt_resha_start2
	.4byte 0x0001000A
	.4byte 0x00002710
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x00000159
	.4byte 0x00020032
	.4byte 0xF8406900
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xF840697A
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF840697C
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF840697D
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF840697E
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF5DE04E6
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_rsh_02_a_pik_00001918
	.4byte str_nidome_start_pik_00001a14
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_train

# .data:0x2118 | 0x2178 | size: 0x20
.obj init_ekiin, local
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_pik_00001a24
	.4byte 0xFFFFFF06
	.4byte 0x0000003C
	.4byte 0xFFFFFEA2
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_ekiin

# .data:0x2138 | 0x2198 | size: 0x248
.obj talk_ekiin, local
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000153
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_pik_00_pik_00001a28
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xF840697A
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_train_06_pik_00001a34
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_train_00_pik_00001a40
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_train_01_pik_00001a4c
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_train_03_pik_00001a58
	.4byte 0x0003005B
	.4byte evt_pouch_check_item
	.4byte 0x00000035
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_train_05_pik_00001a64
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_C_3_pik_00001a70
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002005B
	.4byte evt_mario_get_dispdir
	.4byte 0xFE363C83
	.4byte 0x0002001A
	.4byte 0xFE363C83
	.4byte 0x000000B4
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFFEC
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000000F
	.4byte 0x00000020
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000000F
	.4byte 0x00000021
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_ticket_pik_00001a78
	.4byte 0x00000035
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000011
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_item_delete
	.4byte str_ticket_pik_00001a78
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_pik_00001a80
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_train_04_pik_00001a88
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_me_pik_00001a24
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_me_pik_00001a24
	.4byte 0x00000002
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_pik_00001a24
	.4byte 0xFFFFFEFC
	.4byte 0xFFFFFEB1
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_pik_00001a24
	.4byte 0x0000005A
	.4byte 0x00020032
	.4byte 0xF8406904
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF8406905
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte evt_train
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_train_02_pik_00001a94
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj talk_ekiin

# .data:0x2380 | 0x23E0 | size: 0x20
.obj init_papa, local
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_pik_00001a24
	.4byte 0xFFFFFF3D
	.4byte 0x00000000
	.4byte 0x0000015E
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_papa

# .data:0x23A0 | 0x2400 | size: 0x654
.obj talk_papa_taihou_kyoka, local
	.4byte 0x00020018
	.4byte 0xF8406AA9
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF8406AA9
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_pik_01_pik_00001ab8
	.4byte 0x00000000
	.4byte str_ナリキンパパ_pik_00001ac4
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_2_pik_00001ad4
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_pik_02_pik_00001adc
	.4byte 0x00000000
	.4byte str_ナリキンパパ_pik_00001ac4
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_NOD1_pik_00001ae8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_2_pik_00001b00
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_pik_03_pik_00001b08
	.4byte 0x00000000
	.4byte str_ナリキンパパ_pik_00001ac4
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
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_pik_04_pik_00001b14
	.4byte 0x00000000
	.4byte str_ナリキンパパ_pik_00001ac4
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
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_pik_05_pik_00001b20
	.4byte 0x00000000
	.4byte str_ナリキンパパ_pik_00001ac4
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg7_pik_04_yn_pik_00001b2c
	.4byte 0x00010073
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg7_pik_06_pik_00001b3c
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg7_pik_08_pik_00001b48
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_pouch_get_coin
	.4byte 0xFE363C80
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg7_pik_07_pik_00001b54
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg7_pik_09_pik_00001b60
	.4byte 0x00000021
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_pouch_get_coin
	.4byte 0xFE363C80
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0x00000040
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg7_pik_07_pik_00001b54
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg7_pik_10_pik_00001b6c
	.4byte 0x00000021
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0002005B
	.4byte evt_pouch_get_coin
	.4byte 0xFE363C80
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg7_pik_07_pik_00001b54
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg7_pik_11_pik_00001b78
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg7_pik_11_yn_pik_00001b84
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg7_pik_06_pik_00001b3c
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg7_pik_12_pik_00001b94
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg7_pik_11_yn_pik_00001b84
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg7_pik_06_pik_00001b3c
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg7_pik_13_pik_00001ba0
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg7_pik_11_yn_pik_00001b84
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg7_pik_06_pik_00001b3c
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg7_pik_14_pik_00001bac
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg7_pik_11_yn_pik_00001b84
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg7_pik_06_pik_00001b3c
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg7_pik_15_pik_00001bb8
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg7_pik_11_yn_pik_00001b84
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg7_pik_06_pik_00001b3c
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg7_pik_16_pik_00001bc4
	.4byte 0x0002005B
	.4byte evt_pouch_get_coin
	.4byte 0xFE363C8A
	.4byte 0x00020037
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte evt_pouch_add_coin
	.4byte 0xFE363C8A
	.4byte 0x0001005B
	.4byte evt_sub_status_gauge_force_open
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_sub_status_gauge_check_update
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0001005B
	.4byte evt_sub_status_gauge_force_close
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_pik_17_pik_00001bd0
	.4byte 0x00000000
	.4byte str_ナリキンパパ_pik_00001ac4
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_a_pik_00001bdc
	.4byte 0x00000052
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_a_pik_00001bdc
	.4byte 0x0002005B
	.4byte evt_item_get_item_end_wait
	.4byte str_a_pik_00001bdc
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_pik_18_pik_00001be0
	.4byte 0x00000000
	.4byte str_ナリキンパパ_pik_00001ac4
	.4byte 0x00020037
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte evt_pouch_add_coin
	.4byte 0xFE363C8A
	.4byte 0x0001005B
	.4byte evt_sub_status_gauge_force_open
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_sub_status_gauge_check_update
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0001005B
	.4byte evt_sub_status_gauge_force_close
	.4byte 0x0001005B
	.4byte unk_pik_0000035c
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_pik_19_pik_00001bec
	.4byte 0x00000000
	.4byte str_ナリキンパパ_pik_00001ac4
	.4byte 0x00020032
	.4byte 0xF8406AA2
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF8406AA2
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406AA4
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000163
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x00000002
	.4byte 0x00000001
.endobj talk_papa_taihou_kyoka

# .data:0x29F4 | 0x2A54 | size: 0x234
.obj talk_papa, local
	.4byte 0x00020018
	.4byte 0xF5DE070C
	.4byte 0x00000019
	.4byte 0x00020018
	.4byte 0xF840709D
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_25_00_pik_00001bf8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_butu_pik_00001c04
	.4byte 0x0000006D
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000011
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_butu_pik_00001c04
	.4byte 0x0002005B
	.4byte evt_item_get_item_end_wait
	.4byte str_butu_pik_00001c04
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_25_01_pik_00001c0c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF840709D
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF84070A0
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_25_02_pik_00001c18
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF84070A3
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_25_03_pik_00001c24
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF84070A1
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_25_04_pik_00001c30
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_sub_get_coin
	.4byte 0x00000040
	.4byte 0x00020032
	.4byte 0xF5DE070C
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF8407097
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_sys_request_finish_pik_00001c3c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE070C
	.4byte 0x0000001D
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_29_18_1_pik_00001c50
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x00000153
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_pik_01_pik_00001c60
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010026
	.4byte 0x00000162
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_pik_19_01_1_pik_00001c6c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010028
	.4byte 0x00000192
	.4byte 0x00020018
	.4byte 0xF8406AA2
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte talk_papa_taihou_kyoka
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_pik_19_01_pik_00001c80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_pik_19_01_2_pik_00001c90
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj talk_papa

# .data:0x2C28 | 0x2C88 | size: 0x20
.obj init_mama, local
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_pik_00001a24
	.4byte 0xFFFFFF7B
	.4byte 0x00000000
	.4byte 0x0000014A
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_mama

# .data:0x2C48 | 0x2CA8 | size: 0x8
.obj iri_29_item_tbl, local
	.4byte 0x00000064
	.4byte 0xFFFFFFFF
.endobj iri_29_item_tbl

# .data:0x2C50 | 0x2CB0 | size: 0x4F8
.obj talk_mama, local
	.4byte 0x00020018
	.4byte 0xF5DE070C
	.4byte 0x0000001D
	.4byte 0x00020018
	.4byte 0xF840709E
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_pouch_check_item
	.4byte 0x00000064
	.4byte 0xFE363C80
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_29_14_pik_00001ca4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_win_item_select
	.4byte 0x00000000
	.4byte iri_29_item_tbl
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte evt_pouch_remove_item
	.4byte 0x00000064
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_29_15_pik_00001cb0
	.4byte irai_29_15_cb
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ナリキンママ_pik_00001cbc
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0xFE363C85
	.4byte 0x00020036
	.4byte 0xFE363C86
	.4byte 0x0000000F
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0xFE363C85
	.4byte 0x00020035
	.4byte 0xFE363C87
	.4byte 0x0000000F
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0x0002001D
	.4byte 0xFE363C82
	.4byte 0xFE363C86
	.4byte 0x0002001C
	.4byte 0xFE363C82
	.4byte 0xFE363C87
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x0002001C
	.4byte 0xFE363C82
	.4byte 0xFE363C85
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x000000B4
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0xFE363C85
	.4byte 0x0005005B
	.4byte evt_npc_add_dirdist
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C86
	.4byte 0x0000000F
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_party_move_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C88
	.4byte 0x00000096
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000100
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0x00000096
	.4byte 0x0001005B
	.4byte evt_mario_adjust_dir
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000100
	.4byte 0x00000021
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_mario_set_dir_npc
	.4byte str_ナリキンママ_pik_00001cbc
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_party_set_dir_npc
	.4byte 0x00000000
	.4byte str_ナリキンママ_pik_00001cbc
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_me_pik_00001a24
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_me_pik_00001a24
	.4byte 0x00000002
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_pik_00001a24
	.4byte 0x00000073
	.4byte 0x0000014A
	.4byte 0x00000000
	.4byte 0x00000096
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_29_16_pik_00001ccc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000FA0
	.4byte 0x0002005B
	.4byte evt_mario_set_dir_npc
	.4byte str_ナリキンママ_pik_00001cbc
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000FA0
	.4byte 0x0003005B
	.4byte evt_party_set_dir_npc
	.4byte 0x00000000
	.4byte str_ナリキンママ_pik_00001cbc
	.4byte 0x0000006D
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_me_pik_00001a24
	.4byte 0xFFFFFF7B
	.4byte 0x0000014A
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000000
	.4byte str_me_pik_00001a24
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_me_pik_00001a24
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_me_pik_00001a24
	.4byte str_mario_pik_00001cd8
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_29_17_pik_00001ce0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG6_PIK1_pik_00001cec
	.4byte 0x00020032
	.4byte 0xF840709E
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_29_18_2_pik_00001cfc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_29_18_pik_00001d0c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x00000153
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_pik_02_pik_00001d18
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010026
	.4byte 0x00000162
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_pik_21_1_pik_00001d24
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010028
	.4byte 0x00000192
	.4byte 0x00020018
	.4byte 0xF8406AA2
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF8406AA9
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_pik_21_1_pik_00001d24
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_pik_20_pik_00001d34
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_pik_21_pik_00001d40
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_pik_21_2_pik_00001d4c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj talk_mama

# .data:0x3148 | 0x31A8 | size: 0x34
.obj init_konari, local
	.4byte 0x00020018
	.4byte 0xF5DE070C
	.4byte 0x0000001D
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_pik_00001a24
	.4byte 0xFFFFFF6A
	.4byte 0x00000000
	.4byte 0x00000190
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_konari

# .data:0x317C | 0x31DC | size: 0xE8
.obj talk_konari, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x00000153
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_pik_03_pik_00001d5c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010026
	.4byte 0x00000162
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_pik_23_1_pik_00001d68
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010028
	.4byte 0x00000192
	.4byte 0x00020018
	.4byte 0xF8406AA2
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF8406AA9
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_pik_23_1_pik_00001d68
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_pik_22_pik_00001d78
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_pik_23_pik_00001d84
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_pik_23_2_pik_00001d90
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj talk_konari

# .data:0x3264 | 0x32C4 | size: 0x20
.obj init_madam, local
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_pik_00001a24
	.4byte 0x00000160
	.4byte 0x0000000C
	.4byte 0xFFFFFFAA
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_madam

# .data:0x3284 | 0x32E4 | size: 0x8
.obj item_tbl_madam, local
	.4byte 0x0000004B
	.4byte 0xFFFFFFFF
.endobj item_tbl_madam

# .data:0x328C | 0x32EC | size: 0xD8
.obj talk_madam_ring_return, local
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00004800
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_pik_04_06_pik_00001da0
	.4byte 0x00000000
	.4byte str_マダム_pik_00001db0
	.4byte 0x0005005B
	.4byte evt_win_item_select
	.4byte 0x00000000
	.4byte item_tbl_madam
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_pik_04_07_pik_00001db8
	.4byte 0x00000000
	.4byte str_マダム_pik_00001db0
	.4byte 0x0002005B
	.4byte evt_sub_get_coin
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_pik_04_08_pik_00001dc8
	.4byte 0x00000000
	.4byte str_マダム_pik_00001db0
	.4byte 0x0003005B
	.4byte evt_pouch_remove_item
	.4byte 0x0000004B
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xF840684B
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_pik_04_10_pik_00001dd8
	.4byte 0x00000000
	.4byte str_マダム_pik_00001db0
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x000000A0
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj talk_madam_ring_return

# .data:0x3364 | 0x33C4 | size: 0x8
.obj iri_23_item_tbl, local
	.4byte 0x00000063
	.4byte 0xFFFFFFFF
.endobj iri_23_item_tbl

# .data:0x336C | 0x33CC | size: 0x2E4
.obj talk_madam, local
	.4byte 0x00020018
	.4byte 0xF5DE070C
	.4byte 0x00000017
	.4byte 0x0003005B
	.4byte evt_pouch_check_item
	.4byte 0x00000063
	.4byte 0xFE363C80
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_23_01_pik_00001de8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_win_item_select
	.4byte 0x00000000
	.4byte iri_23_item_tbl
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte evt_pouch_remove_item
	.4byte 0x00000063
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_23_02_pik_00001df4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_mg2_pik_00001e00
	.4byte 0x0000005C
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000011
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_mg2_pik_00001e00
	.4byte 0x0002005B
	.4byte evt_item_get_item_end_wait
	.4byte str_mg2_pik_00001e00
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_23_03_pik_00001e04
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF5DE070C
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF8407095
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_sys_request_finish_pik_00001c3c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_irai_23_00_pik_00001e10
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF84068E6
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00004800
	.4byte 0x00020018
	.4byte 0xF84068E5
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF84068E5
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_pik_04_01_pik_00001e1c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_pik_04_04_pik_00001e2c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg6_pik_04_05_pik_00001e3c
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg6_pik_04_02_pik_00001e4c
	.4byte 0x00020032
	.4byte 0xF84068E6
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg6_pik_04_03_pik_00001e5c
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x000000A0
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_pouch_check_item
	.4byte 0x0000004B
	.4byte 0xFE363C80
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte talk_madam_ring_return
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x0000015B
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_pik_04_pik_00001e6c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000002A
	.4byte 0x00020018
	.4byte 0xF840684B
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_pik_04_pik_00001e6c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0002001C
	.4byte 0xF5DE0180
	.4byte 0x00000192
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_pik_clear_01_pik_00001e78
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg7_pik_clear_01_1_pik_00001e8c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj talk_madam

# .data:0x3650 | 0x36B0 | size: 0x30
.obj init_sarary, local
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000159
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_pik_00001a24
	.4byte 0x00000055
	.4byte 0xFFFFFFFB
	.4byte 0x00000023
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_sarary

# .data:0x3680 | 0x36E0 | size: 0x20
.obj talk_sarary, local
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg6_pik_05_pik_00001ea0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj talk_sarary

# .data:0x36A0 | 0x3700 | size: 0x284
.obj npc_data, local
	.4byte str_駅員_pik_00001a00
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte init_ekiin
	.4byte 0x00000000
	.4byte talk_ekiin
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ナリキンママ_pik_00001cbc
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte init_mama
	.4byte 0x00000000
	.4byte talk_mama
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ナリキンパパ_pik_00001ac4
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte init_papa
	.4byte 0x00000000
	.4byte talk_papa
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_コナリキン_pik_00001eac
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte init_konari
	.4byte 0x00000000
	.4byte talk_konari
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_マダム_pik_00001db0
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte init_madam
	.4byte 0x00000000
	.4byte talk_madam
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_サラリーマン_pik_00001eb8
	.4byte 0x40000600
	.4byte 0x00000000
	.4byte init_sarary
	.4byte 0x00000000
	.4byte talk_sarary
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj npc_data

# .data:0x3924 | 0x3984 | size: 0x3C
.obj evt_door, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7CB8
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_1_pik_00001ec8
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_door

# .data:0x3960 | 0x39C0 | size: 0x30
.obj evt_door2, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_1_pik_00001ec8
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_door2

# .data:0x3990 | 0x39F0 | size: 0x58
.obj evt_wall, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7D80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_ie_1_N_pik_00001ed0
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_ie_1_H_pik_00001ed8
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_wall

# .data:0x39E8 | 0x3A48 | size: 0x8
.obj ie1_mobj, local
	.4byte str_mobj_badge_gat_pik_00001ee0
	.4byte 0x00000000
.endobj ie1_mobj

# .data:0x39F0 | 0x3A50 | size: 0x30
.obj door_1_open, local
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00004800
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00004800
	.4byte 0x0003005B
	.4byte evt_snd_env_lpf
	.4byte 0x00000000
	.4byte 0x00000320
	.4byte 0x00000002
	.4byte 0x00000001
.endobj door_1_open

# .data:0x3A20 | 0x3A80 | size: 0x38
.obj door_1_close, local
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x000000A0
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x000000A0
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_env_lpf
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj door_1_close

# .data:0x3A58 | 0x3AB8 | size: 0x48
.obj door_1, local
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte str_door_1_pik_00001ec8
	.4byte str_a_door_1_N_pik_00001ef0
	.4byte str_a_door_1_pik_00001efc
	.4byte str_soto_1_pik_00001f08
	.4byte 0x00000000
	.4byte str_naka_pik_00001f10
	.4byte str_a_ie_1_naka_pik_00001f18
	.4byte evt_door
	.4byte evt_door2
	.4byte evt_wall
	.4byte 0x00000000
	.4byte ie1_mobj
	.4byte 0x00000000
	.4byte door_1_open
	.4byte door_1_close
.endobj door_1

# .data:0x3AA0 | 0x3B00 | size: 0x30
.obj evt_door_2, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7880
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_2_pik_00001f24
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_door_2

# .data:0x3AD0 | 0x3B30 | size: 0x30
.obj evt_door2_2, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_2_pik_00001f24
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_door2_2

# .data:0x3B00 | 0x3B60 | size: 0x74
.obj evt_wall_2, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7D80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_ie_2_N_pik_00001f2c
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_ie_2_H_pik_00001f34
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_ie_2_U_pik_00001f3c
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_wall_2

# .data:0x3B74 | 0x3BD4 | size: 0x8
.obj door_2_npc, local
	.4byte str_マダム_pik_00001db0
	.4byte 0x00000000
.endobj door_2_npc

# .data:0x3B7C | 0x3BDC | size: 0x30
.obj door_2_open, local
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00004800
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00004800
	.4byte 0x0003005B
	.4byte evt_snd_env_lpf
	.4byte 0x00000000
	.4byte 0x00000320
	.4byte 0x00000002
	.4byte 0x00000001
.endobj door_2_open

# .data:0x3BAC | 0x3C0C | size: 0x38
.obj door_2_close, local
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x000000A0
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x000000A0
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_env_lpf
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj door_2_close

# .data:0x3BE4 | 0x3C44 | size: 0x48
.obj door_2, local
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte str_door_2_pik_00001f24
	.4byte str_a_door_2_N_pik_00001f44
	.4byte str_a_door_2_pik_00001f50
	.4byte str_soto_2_pik_00001f5c
	.4byte 0x00000000
	.4byte str_naka_pik_00001f64
	.4byte str_a_ie_2_nak_pik_00001f6c
	.4byte evt_door_2
	.4byte evt_door2_2
	.4byte evt_wall_2
	.4byte door_2_npc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte door_2_open
	.4byte door_2_close
.endobj door_2

# .data:0x3C2C | 0x3C8C | size: 0xFC
.obj evt_rot_door_sub, local
	.4byte 0x00020034
	.4byte 0xFD050F8A
	.4byte 0xF24A7A80
	.4byte 0x00020034
	.4byte 0xFD050F8B
	.4byte 0xF24A7A80
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_a_door_3_pik_00001f78
	.4byte str_door_3_pik_00001f84
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFD050F8A
	.4byte 0xF24A7E57
	.4byte 0x0002003A
	.4byte 0xFD050F8B
	.4byte 0xFD050F8A
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_door_3_pik_00001f84
	.4byte 0x00000000
	.4byte 0xFD050F8B
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_a_door_3_pik_00001f78
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020015
	.4byte 0xFD050F8A
	.4byte 0xF24A7BB3
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_DOOR_OPEN_TURN1_pik_00001f8c
	.4byte 0xFE363C8A
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8A
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_rot_door_sub

# .data:0x3D28 | 0x3D88 | size: 0x24
.obj evt_rot_door, local
	.4byte 0x0002001A
	.4byte 0xFD050F8A
	.4byte 0x0000000A
	.4byte 0x0002003A
	.4byte 0xFD050F8A
	.4byte 0xF24A7C80
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_rot_door

# .data:0x3D4C | 0x3DAC | size: 0x158
.obj evt_pik_00_arrival, local
	.4byte 0x0003005B
	.4byte evt_snd_bgm_scope
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
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
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000001FB
	.4byte 0x00000135
	.4byte 0x0000045E
	.4byte 0x00000003
	.4byte 0x00000051
	.4byte 0xFFFFFFB8
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0002005B
	.4byte evt_telop_entry
	.4byte 0x0000000C
	.4byte 0x0000006D
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000015B
	.4byte 0x000000EC
	.4byte 0x000002E4
	.4byte 0x00000003
	.4byte 0x00000051
	.4byte 0xFFFFFFB8
	.4byte 0x00002710
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00002710
	.4byte 0x00020032
	.4byte 0xF840697C
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_snd_bgm_scope
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x0000014E
	.4byte 0x00020032
	.4byte 0xF84068F4
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_rsh_02_a_pik_00001918
	.4byte 0x00000000
	.4byte 0x00010026
	.4byte 0x00000153
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_rsh_01_a_pik_0000194c
	.4byte str_w_bero_pik_00001fa0
	.4byte 0x0000002A
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_rsh_02_a_pik_00001918
	.4byte str_pik_touchaku_pik_00001fa8
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_pik_00_arrival

# .data:0x3EA4 | 0x3F04 | size: 0x20C
.obj evt_seacret, local
	.4byte 0x0002005B
	.4byte evt_paper_entry
	.4byte str_OFF_d_two_meku_up_pik_00001fb8
	.4byte 0x0002005B
	.4byte evt_img_entry
	.4byte str_img_pik_00001fcc
	.4byte 0x0002005B
	.4byte evt_offscreen_entry
	.4byte str_ofs_pik_00001fd0
	.4byte 0x0003005B
	.4byte evt_img_set_paper
	.4byte str_img_pik_00001fcc
	.4byte str_OFF_d_two_meku_up_pik_00001fb8
	.4byte 0x0003005B
	.4byte evt_img_free_capture
	.4byte str_img_pik_00001fcc
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_img_alloc_capture
	.4byte str_img_pik_00001fcc
	.4byte 0x00000000
	.4byte str_ofs_pik_00001fd0
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_img_alloc_capture
	.4byte str_img_pik_00001fcc
	.4byte 0x00000002
	.4byte str_ofs_pik_00001fd0
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_img_clear_virtual_point
	.4byte str_img_pik_00001fcc
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG6_MAP_CHANGE1_pik_00001fd4
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_img_set_paper_anim
	.4byte str_img_pik_00001fcc
	.4byte str_A_1_pik_00001fec
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_img_pik_00001fcc
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte img_flag
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_naka_1_pik_00001ff0
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_mapobj_set_offscreen
	.4byte 0x00000001
	.4byte str_naka_1_pik_00001ff0
	.4byte str_ofs_pik_00001fd0
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_img_wait_animend
	.4byte str_img_pik_00001fcc
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_img_pik_00001fcc
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_mapobj_clear_offscreen
	.4byte 0x00000001
	.4byte str_naka_1_pik_00001ff0
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_get_name_hitobj_under
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_ie_1_1_yuka_pik_00001ff8
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_STG6_MAP_CHANGE2_pik_00002004
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_img_set_paper_anim
	.4byte str_img_pik_00001fcc
	.4byte str_A_2_pik_0000201c
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_img_pik_00001fcc
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_img_wait_animend
	.4byte str_img_pik_00001fcc
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_naka_1_pik_00001ff0
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_mapobj_clear_offscreen
	.4byte 0x00000001
	.4byte str_naka_1_pik_00001ff0
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_img_pik_00001fcc
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_img_release
	.4byte str_img_pik_00001fcc
	.4byte 0x0002005B
	.4byte evt_offscreen_delete
	.4byte str_ofs_pik_00001fd0
	.4byte 0x0002005B
	.4byte evt_paper_delete
	.4byte str_OFF_d_two_meku_up_pik_00001fb8
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_seacret

# .data:0x40B0 | 0x4110 | size: 0x88
.obj mobj_box00, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte str_mobj_badge_gat_pik_00001ee0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item00_pik_00002020
	.4byte 0x00000128
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_item_flag_on
	.4byte str_item00_pik_00002020
	.4byte 0x00000102
	.4byte 0x0002005B
	.4byte evt_mobj_wait_animation_end
	.4byte str_mobj_badge_gat_pik_00001ee0
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_item00_pik_00002020
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mobj_box00

# .data:0x4138 | 0x4198 | size: 0x668
.obj pik_00_init_evt_21_data_4198, global
	.4byte 0x00020032
	.4byte 0xFAA2B58B
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF840697C
	.4byte 0x00000001
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000153
	.4byte 0x00020032
	.4byte 0xF840697A
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte hom_10_evt_resha_right
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_train_5_pik_00002028
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_train_6_pik_000018bc
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_resha_pik_00002030
	.4byte 0x00020032
	.4byte 0xF840697A
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte hom_10_evt_resha_right
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_train_5_pik_00002028
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_train_6_pik_000018bc
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_n_bero_pik_00001944
	.4byte 0x00020018
	.4byte 0xF840697A
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte hom_10_evt_resha_right
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_train_5_pik_00002028
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_train_6_pik_000018bc
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte hom_10_evt_resha_left
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_train_5_pik_00002028
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_train_6_pik_000018bc
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_train_7_pik_0000188c
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_se_bero_pik_0000192c
	.4byte 0x00020032
	.4byte 0xF840697A
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte hom_10_evt_resha_left
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_train_5_pik_00002028
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_train_6_pik_000018bc
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_train_7_pik_0000188c
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_sub_get_system_flag
	.4byte 0xFE363C80
	.4byte 0x0002001E
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF840697A
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte hom_10_evt_resha_right
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_train_5_pik_00002028
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_train_6_pik_000018bc
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte hom_10_evt_resha_left
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_train_5_pik_00002028
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_train_6_pik_000018bc
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_train_7_pik_0000188c
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_sub_get_system_flag
	.4byte 0xFE363C80
	.4byte 0x0002001E
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xF840697A
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte hom_10_evt_resha_left
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_train_5_pik_00002028
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_train_6_pik_000018bc
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_train_7_pik_0000188c
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0001003E
	.4byte name_tbl
	.4byte 0x00010005
	.4byte 0x00000006
	.4byte 0x0001003F
	.4byte 0xFE363C89
	.4byte 0x0001005C
	.4byte evt_pik_yajirushi_21_data_1BC0
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG6_PIK1_pik_00001cec
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG6_PIK1_pik_00002038
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x000000A0
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_npc_setup
	.4byte npc_data
	.4byte 0x0007005B
	.4byte evt_mobj_save_blk
	.4byte str_mobj_save_pik_00002048
	.4byte 0xFFFFFF9C
	.4byte 0x0000003C
	.4byte 0x00000019
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0008005B
	.4byte evt_mobj_kururing_floor
	.4byte str_kururin1_pik_00002054
	.4byte 0x00000008
	.4byte 0xFFFFFFFB
	.4byte 0x00000082
	.4byte str_jimenn_pik_00002060
	.4byte 0x0000007D
	.4byte 0xF8407197
	.4byte 0x0009005B
	.4byte evt_mobj_itembox
	.4byte str_mobj_badge_gat_pik_00001ee0
	.4byte 0xFFFFFF1F
	.4byte 0x0000000F
	.4byte 0xFFFFFFF1
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte mobj_box00
	.4byte 0xF840684C
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_00_pik_00002068
	.4byte 0x0000007D
	.4byte 0x000001E8
	.4byte 0x00000000
	.4byte 0x0000000F
	.4byte 0x00000010
	.4byte 0xF8407196
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_01_pik_00002070
	.4byte 0x0000007D
	.4byte 0xFFFFFE34
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000010
	.4byte 0xF8407198
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte door_1
	.4byte 0x0001005E
	.4byte evt_door_entry
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte door_2
	.4byte 0x0001005E
	.4byte evt_door_entry
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_resha_pik_00002030
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_サラリーマン_pik_00001eb8
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte evt_pik_00_arrival
	.4byte 0x0001005E
	.4byte hom_10_evt_resha_stop
	.4byte 0x00000002
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF840697A
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_n_bero_pik_00001944
	.4byte 0x0001005E
	.4byte bero_case_switch_off
	.4byte 0x00000021
	.4byte 0x0000006B
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000001
	.4byte str_puro_pik_00002078
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_bero_pik_00002080
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_ie_1_N_pik_00001ed0
	.4byte 0x00000002
	.4byte 0x0000006B
	.4byte 0x0001005B
	.4byte under
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_n_bero_pik_00001944
	.4byte 0x00020032
	.4byte 0xFAA2B58B
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_ie_1_pik_00002088
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00020032
	.4byte 0xFAA2B58B
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_a_ie_1_2_yuka_pik_00002090
	.4byte 0x00000000
	.4byte evt_seacret
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_hitobj_attr_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_se_bero_pik_0000192c
	.4byte 0x00000004
	.4byte 0x0002005B
	.4byte evt_hit_damage_return_set
	.4byte dmgReturnPt
	.4byte 0x0001005E
	.4byte evt_gazigazi_entry
	.4byte 0x0001005C
	.4byte evt_sub_mail_event
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_train_2_pik_000020a0
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_group1878_pik_000020a8
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000001
.endobj pik_00_init_evt_21_data_4198
