.include "macros.inc"
.file "muj_04.o"

# 0x00003208..0x000032B8 | size: 0xB0
.text
.balign 4

# .text:0x0 | 0x3208 | size: 0xB0
.fn mario_moveride_check, local
/* 00003208 000032CC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 0000320C 000032D0  7C 08 02 A6 */	mflr r0
/* 00003210 000032D4  90 01 00 34 */	stw r0, 0x34(r1)
/* 00003214 000032D8  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 00003218 000032DC  7C 79 1B 78 */	mr r25, r3
/* 0000321C 000032E0  4B FF D7 8D */	bl marioGetPtr
/* 00003220 000032E4  3C 80 00 00 */	lis r4, hitname@ha
/* 00003224 000032E8  83 43 01 E8 */	lwz r26, 0x1e8(r3)
/* 00003228 000032EC  3B C4 00 00 */	addi r30, r4, hitname@l
/* 0000322C 000032F0  3B 80 00 00 */	li r28, 0x0
/* 00003230 000032F4  3B A0 00 00 */	li r29, 0x0
/* 00003234 000032F8  3B E0 00 00 */	li r31, 0x0
.L_00003238:
/* 00003238 000032FC  28 1A 00 00 */	cmplwi r26, 0x0
/* 0000323C 00003300  41 82 00 30 */	beq .L_0000326C
/* 00003240 00003304  7F 43 D3 78 */	mr r3, r26
/* 00003244 00003308  4B FF D7 65 */	bl hitGetName
/* 00003248 0000330C  7C 9E F8 2E */	lwzx r4, r30, r31
/* 0000324C 00003310  4B FF D7 5D */	bl strcmp
/* 00003250 00003314  2C 03 00 00 */	cmpwi r3, 0x0
/* 00003254 00003318  40 82 00 18 */	bne .L_0000326C
/* 00003258 0000331C  3C 60 00 00 */	lis r3, mapanim@ha
/* 0000325C 00003320  7F 9E F8 2E */	lwzx r28, r30, r31
/* 00003260 00003324  38 63 00 00 */	addi r3, r3, mapanim@l
/* 00003264 00003328  7F 63 F8 2E */	lwzx r27, r3, r31
/* 00003268 0000332C  48 00 00 14 */	b .L_0000327C
.L_0000326C:
/* 0000326C 00003330  3B BD 00 01 */	addi r29, r29, 0x1
/* 00003270 00003334  3B FF 00 04 */	addi r31, r31, 0x4
/* 00003274 00003338  2C 1D 00 11 */	cmpwi r29, 0x11
/* 00003278 0000333C  41 80 FF C0 */	blt .L_00003238
.L_0000327C:
/* 0000327C 00003340  38 00 00 00 */	li r0, 0x0
/* 00003280 00003344  28 1C 00 00 */	cmplwi r28, 0x0
/* 00003284 00003348  90 19 00 9C */	stw r0, 0x9c(r25)
/* 00003288 0000334C  41 82 00 14 */	beq .L_0000329C
/* 0000328C 00003350  80 19 00 A0 */	lwz r0, 0xa0(r25)
/* 00003290 00003354  7C 00 E0 00 */	cmpw r0, r28
/* 00003294 00003358  41 82 00 08 */	beq .L_0000329C
/* 00003298 0000335C  93 79 00 9C */	stw r27, 0x9c(r25)
.L_0000329C:
/* 0000329C 00003360  93 99 00 A0 */	stw r28, 0xa0(r25)
/* 000032A0 00003364  38 60 00 02 */	li r3, 0x2
/* 000032A4 00003368  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 000032A8 0000336C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 000032AC 00003370  7C 08 03 A6 */	mtlr r0
/* 000032B0 00003374  38 21 00 30 */	addi r1, r1, 0x30
/* 000032B4 00003378  4E 80 00 20 */	blr
.endfn mario_moveride_check

# 0x000024D8..0x00002A50 | size: 0x578
.rodata
.balign 8

# .rodata:0x0 | 0x24D8 | size: 0xB
.obj str_サンダース_muj_00010188, local
	.4byte 0x83548393
	.4byte 0x835F815B
	.byte 0x83, 0x58, 0x00
.endobj str_サンダース_muj_00010188

# .rodata:0xB | 0x24E3 | size: 0x1
.obj gap_03_000024E3_rodata, global
.hidden gap_03_000024E3_rodata
	.byte 0x00
.endobj gap_03_000024E3_rodata

# .rodata:0xC | 0x24E4 | size: 0xD
.obj str_オドオド水夫_muj_00010194, local
	.4byte 0x83498368
	.4byte 0x83498368
	.4byte 0x90859576
	.byte 0x00
.endobj str_オドオド水夫_muj_00010194

# .rodata:0x19 | 0x24F1 | size: 0x3
.obj gap_03_000024F1_rodata, global
.hidden gap_03_000024F1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000024F1_rodata

# .rodata:0x1C | 0x24F4 | size: 0xB
.obj str_めがね水夫_muj_000101a4, local
	.4byte 0x82DF82AA
	.4byte 0x82CB9085
	.byte 0x95, 0x76, 0x00
.endobj str_めがね水夫_muj_000101a4

# .rodata:0x27 | 0x24FF | size: 0x1
.obj gap_03_000024FF_rodata, global
.hidden gap_03_000024FF_rodata
	.byte 0x00
.endobj gap_03_000024FF_rodata

# .rodata:0x28 | 0x2500 | size: 0xA
.obj str_エルモスA_muj_000101b0, local
	.4byte 0x8347838B
	.4byte 0x83828358
	.2byte 0x4100
.endobj str_エルモスA_muj_000101b0

# .rodata:0x32 | 0x250A | size: 0x2
.obj gap_03_0000250A_rodata, global
.hidden gap_03_0000250A_rodata
	.2byte 0x0000
.endobj gap_03_0000250A_rodata

# .rodata:0x34 | 0x250C | size: 0xA
.obj str_エルモスB_muj_000101bc, local
	.4byte 0x8347838B
	.4byte 0x83828358
	.2byte 0x4200
.endobj str_エルモスB_muj_000101bc

# .rodata:0x3E | 0x2516 | size: 0x2
.obj gap_03_00002516_rodata, global
.hidden gap_03_00002516_rodata
	.2byte 0x0000
.endobj gap_03_00002516_rodata

# .rodata:0x40 | 0x2518 | size: 0x7
.obj str_w_bero_muj_000101c8, local
	.string "w_bero"
.endobj str_w_bero_muj_000101c8

# .rodata:0x47 | 0x251F | size: 0x1
.obj gap_03_0000251F_rodata, global
.hidden gap_03_0000251F_rodata
	.byte 0x00
.endobj gap_03_0000251F_rodata

# .rodata:0x48 | 0x2520 | size: 0x7
.obj str_muj_03_muj_000101d0, local
	.string "muj_03"
.endobj str_muj_03_muj_000101d0

# .rodata:0x4F | 0x2527 | size: 0x1
.obj gap_03_00002527_rodata, global
.hidden gap_03_00002527_rodata
	.byte 0x00
.endobj gap_03_00002527_rodata

# .rodata:0x50 | 0x2528 | size: 0x7
.obj str_e_bero_muj_000101d8, local
	.string "e_bero"
.endobj str_e_bero_muj_000101d8

# .rodata:0x57 | 0x252F | size: 0x1
.obj gap_03_0000252F_rodata, global
.hidden gap_03_0000252F_rodata
	.byte 0x00
.endobj gap_03_0000252F_rodata

# .rodata:0x58 | 0x2530 | size: 0x7
.obj str_muj_05_muj_000101e0, local
	.string "muj_05"
.endobj str_muj_05_muj_000101e0

# .rodata:0x5F | 0x2537 | size: 0x1
.obj gap_03_00002537_rodata, global
.hidden gap_03_00002537_rodata
	.byte 0x00
.endobj gap_03_00002537_rodata

# .rodata:0x60 | 0x2538 | size: 0x8
.obj str_dokan_1_muj_000101e8, local
	.string "dokan_1"
.endobj str_dokan_1_muj_000101e8

# .rodata:0x68 | 0x2540 | size: 0x8
.obj str_A_dokan_muj_000101f0, local
	.string "A_dokan"
.endobj str_A_dokan_muj_000101f0

# .rodata:0x70 | 0x2548 | size: 0x9
.obj str_A_hasi01_muj_000101f8, local
	.string "A_hasi01"
.endobj str_A_hasi01_muj_000101f8

# .rodata:0x79 | 0x2551 | size: 0x3
.obj gap_03_00002551_rodata, global
.hidden gap_03_00002551_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002551_rodata

# .rodata:0x7C | 0x2554 | size: 0x9
.obj str_A_hasi02_muj_00010204, local
	.string "A_hasi02"
.endobj str_A_hasi02_muj_00010204

# .rodata:0x85 | 0x255D | size: 0x3
.obj gap_03_0000255D_rodata, global
.hidden gap_03_0000255D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000255D_rodata

# .rodata:0x88 | 0x2560 | size: 0x9
.obj str_A_hasi03_muj_00010210, local
	.string "A_hasi03"
.endobj str_A_hasi03_muj_00010210

# .rodata:0x91 | 0x2569 | size: 0x3
.obj gap_03_00002569_rodata, global
.hidden gap_03_00002569_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002569_rodata

# .rodata:0x94 | 0x256C | size: 0x9
.obj str_A_hasi04_muj_0001021c, local
	.string "A_hasi04"
.endobj str_A_hasi04_muj_0001021c

# .rodata:0x9D | 0x2575 | size: 0x3
.obj gap_03_00002575_rodata, global
.hidden gap_03_00002575_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002575_rodata

# .rodata:0xA0 | 0x2578 | size: 0x9
.obj str_A_hasi05_muj_00010228, local
	.string "A_hasi05"
.endobj str_A_hasi05_muj_00010228

# .rodata:0xA9 | 0x2581 | size: 0x3
.obj gap_03_00002581_rodata, global
.hidden gap_03_00002581_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002581_rodata

# .rodata:0xAC | 0x2584 | size: 0x9
.obj str_A_hasi06_muj_00010234, local
	.string "A_hasi06"
.endobj str_A_hasi06_muj_00010234

# .rodata:0xB5 | 0x258D | size: 0x3
.obj gap_03_0000258D_rodata, global
.hidden gap_03_0000258D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000258D_rodata

# .rodata:0xB8 | 0x2590 | size: 0x9
.obj str_A_hasi07_muj_00010240, local
	.string "A_hasi07"
.endobj str_A_hasi07_muj_00010240

# .rodata:0xC1 | 0x2599 | size: 0x3
.obj gap_03_00002599_rodata, global
.hidden gap_03_00002599_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002599_rodata

# .rodata:0xC4 | 0x259C | size: 0x9
.obj str_A_hasi08_muj_0001024c, local
	.string "A_hasi08"
.endobj str_A_hasi08_muj_0001024c

# .rodata:0xCD | 0x25A5 | size: 0x3
.obj gap_03_000025A5_rodata, global
.hidden gap_03_000025A5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000025A5_rodata

# .rodata:0xD0 | 0x25A8 | size: 0x9
.obj str_A_hasi09_muj_00010258, local
	.string "A_hasi09"
.endobj str_A_hasi09_muj_00010258

# .rodata:0xD9 | 0x25B1 | size: 0x3
.obj gap_03_000025B1_rodata, global
.hidden gap_03_000025B1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000025B1_rodata

# .rodata:0xDC | 0x25B4 | size: 0xA
.obj str_A_hasi010_muj_00010264, local
	.string "A_hasi010"
.endobj str_A_hasi010_muj_00010264

# .rodata:0xE6 | 0x25BE | size: 0x2
.obj gap_03_000025BE_rodata, global
.hidden gap_03_000025BE_rodata
	.2byte 0x0000
.endobj gap_03_000025BE_rodata

# .rodata:0xE8 | 0x25C0 | size: 0xA
.obj str_A_hasi011_muj_00010270, local
	.string "A_hasi011"
.endobj str_A_hasi011_muj_00010270

# .rodata:0xF2 | 0x25CA | size: 0x2
.obj gap_03_000025CA_rodata, global
.hidden gap_03_000025CA_rodata
	.2byte 0x0000
.endobj gap_03_000025CA_rodata

# .rodata:0xF4 | 0x25CC | size: 0xA
.obj str_A_hasi012_muj_0001027c, local
	.string "A_hasi012"
.endobj str_A_hasi012_muj_0001027c

# .rodata:0xFE | 0x25D6 | size: 0x2
.obj gap_03_000025D6_rodata, global
.hidden gap_03_000025D6_rodata
	.2byte 0x0000
.endobj gap_03_000025D6_rodata

# .rodata:0x100 | 0x25D8 | size: 0xA
.obj str_A_hasi013_muj_00010288, local
	.string "A_hasi013"
.endobj str_A_hasi013_muj_00010288

# .rodata:0x10A | 0x25E2 | size: 0x2
.obj gap_03_000025E2_rodata, global
.hidden gap_03_000025E2_rodata
	.2byte 0x0000
.endobj gap_03_000025E2_rodata

# .rodata:0x10C | 0x25E4 | size: 0xA
.obj str_A_hasi014_muj_00010294, local
	.string "A_hasi014"
.endobj str_A_hasi014_muj_00010294

# .rodata:0x116 | 0x25EE | size: 0x2
.obj gap_03_000025EE_rodata, global
.hidden gap_03_000025EE_rodata
	.2byte 0x0000
.endobj gap_03_000025EE_rodata

# .rodata:0x118 | 0x25F0 | size: 0xA
.obj str_A_hasi015_muj_000102a0, local
	.string "A_hasi015"
.endobj str_A_hasi015_muj_000102a0

# .rodata:0x122 | 0x25FA | size: 0x2
.obj gap_03_000025FA_rodata, global
.hidden gap_03_000025FA_rodata
	.2byte 0x0000
.endobj gap_03_000025FA_rodata

# .rodata:0x124 | 0x25FC | size: 0xA
.obj str_A_hasi016_muj_000102ac, local
	.string "A_hasi016"
.endobj str_A_hasi016_muj_000102ac

# .rodata:0x12E | 0x2606 | size: 0x2
.obj gap_03_00002606_rodata, global
.hidden gap_03_00002606_rodata
	.2byte 0x0000
.endobj gap_03_00002606_rodata

# .rodata:0x130 | 0x2608 | size: 0xA
.obj str_A_hasi017_muj_000102b8, local
	.string "A_hasi017"
.endobj str_A_hasi017_muj_000102b8

# .rodata:0x13A | 0x2612 | size: 0x2
.obj gap_03_00002612_rodata, global
.hidden gap_03_00002612_rodata
	.2byte 0x0000
.endobj gap_03_00002612_rodata

# .rodata:0x13C | 0x2614 | size: 0x9
.obj str_S_hasi01_muj_000102c4, local
	.string "S_hasi01"
.endobj str_S_hasi01_muj_000102c4

# .rodata:0x145 | 0x261D | size: 0x3
.obj gap_03_0000261D_rodata, global
.hidden gap_03_0000261D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000261D_rodata

# .rodata:0x148 | 0x2620 | size: 0x9
.obj str_S_hasi02_muj_000102d0, local
	.string "S_hasi02"
.endobj str_S_hasi02_muj_000102d0

# .rodata:0x151 | 0x2629 | size: 0x3
.obj gap_03_00002629_rodata, global
.hidden gap_03_00002629_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002629_rodata

# .rodata:0x154 | 0x262C | size: 0x9
.obj str_S_hasi03_muj_000102dc, local
	.string "S_hasi03"
.endobj str_S_hasi03_muj_000102dc

# .rodata:0x15D | 0x2635 | size: 0x3
.obj gap_03_00002635_rodata, global
.hidden gap_03_00002635_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002635_rodata

# .rodata:0x160 | 0x2638 | size: 0x9
.obj str_S_hasi04_muj_000102e8, local
	.string "S_hasi04"
.endobj str_S_hasi04_muj_000102e8

# .rodata:0x169 | 0x2641 | size: 0x3
.obj gap_03_00002641_rodata, global
.hidden gap_03_00002641_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002641_rodata

# .rodata:0x16C | 0x2644 | size: 0x9
.obj str_S_hasi05_muj_000102f4, local
	.string "S_hasi05"
.endobj str_S_hasi05_muj_000102f4

# .rodata:0x175 | 0x264D | size: 0x3
.obj gap_03_0000264D_rodata, global
.hidden gap_03_0000264D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000264D_rodata

# .rodata:0x178 | 0x2650 | size: 0x9
.obj str_S_hasi06_muj_00010300, local
	.string "S_hasi06"
.endobj str_S_hasi06_muj_00010300

# .rodata:0x181 | 0x2659 | size: 0x3
.obj gap_03_00002659_rodata, global
.hidden gap_03_00002659_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002659_rodata

# .rodata:0x184 | 0x265C | size: 0x9
.obj str_S_hasi07_muj_0001030c, local
	.string "S_hasi07"
.endobj str_S_hasi07_muj_0001030c

# .rodata:0x18D | 0x2665 | size: 0x3
.obj gap_03_00002665_rodata, global
.hidden gap_03_00002665_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002665_rodata

# .rodata:0x190 | 0x2668 | size: 0x9
.obj str_S_hasi08_muj_00010318, local
	.string "S_hasi08"
.endobj str_S_hasi08_muj_00010318

# .rodata:0x199 | 0x2671 | size: 0x3
.obj gap_03_00002671_rodata, global
.hidden gap_03_00002671_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002671_rodata

# .rodata:0x19C | 0x2674 | size: 0x9
.obj str_S_hasi09_muj_00010324, local
	.string "S_hasi09"
.endobj str_S_hasi09_muj_00010324

# .rodata:0x1A5 | 0x267D | size: 0x3
.obj gap_03_0000267D_rodata, global
.hidden gap_03_0000267D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000267D_rodata

# .rodata:0x1A8 | 0x2680 | size: 0x9
.obj str_S_hasi10_muj_00010330, local
	.string "S_hasi10"
.endobj str_S_hasi10_muj_00010330

# .rodata:0x1B1 | 0x2689 | size: 0x3
.obj gap_03_00002689_rodata, global
.hidden gap_03_00002689_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002689_rodata

# .rodata:0x1B4 | 0x268C | size: 0x9
.obj str_S_hasi11_muj_0001033c, local
	.string "S_hasi11"
.endobj str_S_hasi11_muj_0001033c

# .rodata:0x1BD | 0x2695 | size: 0x3
.obj gap_03_00002695_rodata, global
.hidden gap_03_00002695_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002695_rodata

# .rodata:0x1C0 | 0x2698 | size: 0x9
.obj str_S_hasi12_muj_00010348, local
	.string "S_hasi12"
.endobj str_S_hasi12_muj_00010348

# .rodata:0x1C9 | 0x26A1 | size: 0x3
.obj gap_03_000026A1_rodata, global
.hidden gap_03_000026A1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000026A1_rodata

# .rodata:0x1CC | 0x26A4 | size: 0x9
.obj str_S_hasi13_muj_00010354, local
	.string "S_hasi13"
.endobj str_S_hasi13_muj_00010354

# .rodata:0x1D5 | 0x26AD | size: 0x3
.obj gap_03_000026AD_rodata, global
.hidden gap_03_000026AD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000026AD_rodata

# .rodata:0x1D8 | 0x26B0 | size: 0x9
.obj str_S_hasi14_muj_00010360, local
	.string "S_hasi14"
.endobj str_S_hasi14_muj_00010360

# .rodata:0x1E1 | 0x26B9 | size: 0x3
.obj gap_03_000026B9_rodata, global
.hidden gap_03_000026B9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000026B9_rodata

# .rodata:0x1E4 | 0x26BC | size: 0x9
.obj str_S_hasi15_muj_0001036c, local
	.string "S_hasi15"
.endobj str_S_hasi15_muj_0001036c

# .rodata:0x1ED | 0x26C5 | size: 0x3
.obj gap_03_000026C5_rodata, global
.hidden gap_03_000026C5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000026C5_rodata

# .rodata:0x1F0 | 0x26C8 | size: 0x9
.obj str_S_hasi16_muj_00010378, local
	.string "S_hasi16"
.endobj str_S_hasi16_muj_00010378

# .rodata:0x1F9 | 0x26D1 | size: 0x3
.obj gap_03_000026D1_rodata, global
.hidden gap_03_000026D1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000026D1_rodata

# .rodata:0x1FC | 0x26D4 | size: 0x9
.obj str_S_hasi17_muj_00010384, local
	.string "S_hasi17"
.endobj str_S_hasi17_muj_00010384

# .rodata:0x205 | 0x26DD | size: 0x3
.obj gap_03_000026DD_rodata, global
.hidden gap_03_000026DD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000026DD_rodata

# .rodata:0x208 | 0x26E0 | size: 0x17
.obj str_SFX_STG5_BRIDGE_CREA_muj_00010390, local
	.string "SFX_STG5_BRIDGE_CREAK1"
.endobj str_SFX_STG5_BRIDGE_CREA_muj_00010390

# .rodata:0x21F | 0x26F7 | size: 0x1
.obj gap_03_000026F7_rodata, global
.hidden gap_03_000026F7_rodata
	.byte 0x00
.endobj gap_03_000026F7_rodata

# .rodata:0x220 | 0x26F8 | size: 0x17
.obj str_SFX_STG5_ELMOS_MOVE1_muj_000103a8, local
	.string "SFX_STG5_ELMOS_MOVE1_2"
.endobj str_SFX_STG5_ELMOS_MOVE1_muj_000103a8

# .rodata:0x237 | 0x270F | size: 0x1
.obj gap_03_0000270F_rodata, global
.hidden gap_03_0000270F_rodata
	.byte 0x00
.endobj gap_03_0000270F_rodata

# .rodata:0x238 | 0x2710 | size: 0x1B
.obj str_SFX_STG5_THUNDERS_DA_muj_000103c0, local
	.string "SFX_STG5_THUNDERS_DAMAGED1"
.endobj str_SFX_STG5_THUNDERS_DA_muj_000103c0

# .rodata:0x253 | 0x272B | size: 0x1
.obj gap_03_0000272B_rodata, global
.hidden gap_03_0000272B_rodata
	.byte 0x00
.endobj gap_03_0000272B_rodata

# .rodata:0x254 | 0x272C | size: 0x1
.obj zero_muj_000103dc, local
	.byte 0x00
.endobj zero_muj_000103dc

# .rodata:0x255 | 0x272D | size: 0x3
.obj gap_03_0000272D_rodata, global
.hidden gap_03_0000272D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000272D_rodata

# .rodata:0x258 | 0x2730 | size: 0x4
.obj str_hit_muj_000103e0, local
	.string "hit"
.endobj str_hit_muj_000103e0

# .rodata:0x25C | 0x2734 | size: 0x1E
.obj str_SFX_STG5_KANBU_GLASS_muj_000103e4, local
	.string "SFX_STG5_KANBU_GLASSES_MOVE1L"
.endobj str_SFX_STG5_KANBU_GLASS_muj_000103e4

# .rodata:0x27A | 0x2752 | size: 0x2
.obj gap_03_00002752_rodata, global
.hidden gap_03_00002752_rodata
	.2byte 0x0000
.endobj gap_03_00002752_rodata

# .rodata:0x27C | 0x2754 | size: 0x1E
.obj str_SFX_STG5_KANBU_GLASS_muj_00010404, local
	.string "SFX_STG5_KANBU_GLASSES_MOVE1R"
.endobj str_SFX_STG5_KANBU_GLASS_muj_00010404

# .rodata:0x29A | 0x2772 | size: 0x2
.obj gap_03_00002772_rodata, global
.hidden gap_03_00002772_rodata
	.2byte 0x0000
.endobj gap_03_00002772_rodata

# .rodata:0x29C | 0x2774 | size: 0xC
.obj str_stg5_muj_23_muj_00010424, local
	.string "stg5_muj_23"
.endobj str_stg5_muj_23_muj_00010424

# .rodata:0x2A8 | 0x2780 | size: 0x16
.obj str_SFX_VOICE_MARIO_FIND_muj_00010430, local
	.string "SFX_VOICE_MARIO_FIND1"
.endobj str_SFX_VOICE_MARIO_FIND_muj_00010430

# .rodata:0x2BE | 0x2796 | size: 0x2
.obj gap_03_00002796_rodata, global
.hidden gap_03_00002796_rodata
	.2byte 0x0000
.endobj gap_03_00002796_rodata

# .rodata:0x2C0 | 0x2798 | size: 0x10
.obj str_BGM_EVT_DANGER4_muj_00010448, local
	.string "BGM_EVT_DANGER4"
.endobj str_BGM_EVT_DANGER4_muj_00010448

# .rodata:0x2D0 | 0x27A8 | size: 0x6
.obj str_mario_muj_00010458, local
	.string "mario"
.endobj str_mario_muj_00010458

# .rodata:0x2D6 | 0x27AE | size: 0x2
.obj gap_03_000027AE_rodata, global
.hidden gap_03_000027AE_rodata
	.2byte 0x0000
.endobj gap_03_000027AE_rodata

# .rodata:0x2D8 | 0x27B0 | size: 0xC
.obj str_stg5_muj_24_muj_00010460, local
	.string "stg5_muj_24"
.endobj str_stg5_muj_24_muj_00010460

# .rodata:0x2E4 | 0x27BC | size: 0x7
.obj str_M_N_5B_muj_0001046c, local
	.string "M_N_5B"
.endobj str_M_N_5B_muj_0001046c

# .rodata:0x2EB | 0x27C3 | size: 0x1
.obj gap_03_000027C3_rodata, global
.hidden gap_03_000027C3_rodata
	.byte 0x00
.endobj gap_03_000027C3_rodata

# .rodata:0x2EC | 0x27C4 | size: 0x6
.obj str_M_S_1_muj_00010474, local
	.string "M_S_1"
.endobj str_M_S_1_muj_00010474

# .rodata:0x2F2 | 0x27CA | size: 0x2
.obj gap_03_000027CA_rodata, global
.hidden gap_03_000027CA_rodata
	.2byte 0x0000
.endobj gap_03_000027CA_rodata

# .rodata:0x2F4 | 0x27CC | size: 0xC
.obj str_stg5_muj_25_muj_0001047c, local
	.string "stg5_muj_25"
.endobj str_stg5_muj_25_muj_0001047c

# .rodata:0x300 | 0x27D8 | size: 0xC
.obj str_stg5_muj_26_muj_00010488, local
	.string "stg5_muj_26"
.endobj str_stg5_muj_26_muj_00010488

# .rodata:0x30C | 0x27E4 | size: 0x19
.obj str_SFX_STG5_THUNDERS_TH_muj_00010494, local
	.string "SFX_STG5_THUNDERS_THROW1"
.endobj str_SFX_STG5_THUNDERS_TH_muj_00010494

# .rodata:0x325 | 0x27FD | size: 0x3
.obj gap_03_000027FD_rodata, global
.hidden gap_03_000027FD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000027FD_rodata

# .rodata:0x328 | 0x2800 | size: 0x4
.obj str_F_1_muj_000104b0, local
	.string "F_1"
.endobj str_F_1_muj_000104b0

# .rodata:0x32C | 0x2804 | size: 0xC
.obj str_stg5_muj_27_muj_000104b4, local
	.string "stg5_muj_27"
.endobj str_stg5_muj_27_muj_000104b4

# .rodata:0x338 | 0x2810 | size: 0x1D
.obj str_SFX_VOICE_MARIO_LAND_muj_000104c0, local
	.string "SFX_VOICE_MARIO_LAND_DAMAGE2"
.endobj str_SFX_VOICE_MARIO_LAND_muj_000104c0

# .rodata:0x355 | 0x282D | size: 0x3
.obj gap_03_0000282D_rodata, global
.hidden gap_03_0000282D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000282D_rodata

# .rodata:0x358 | 0x2830 | size: 0x6
.obj str_M_D_8_muj_000104e0, local
	.string "M_D_8"
.endobj str_M_D_8_muj_000104e0

# .rodata:0x35E | 0x2836 | size: 0x2
.obj gap_03_00002836_rodata, global
.hidden gap_03_00002836_rodata
	.2byte 0x0000
.endobj gap_03_00002836_rodata

# .rodata:0x360 | 0x2838 | size: 0x4
.obj str_S_1_muj_000104e8, local
	.string "S_1"
.endobj str_S_1_muj_000104e8

# .rodata:0x364 | 0x283C | size: 0xC
.obj str_stg5_muj_28_muj_000104ec, local
	.string "stg5_muj_28"
.endobj str_stg5_muj_28_muj_000104ec

# .rodata:0x370 | 0x2848 | size: 0x4
.obj str_U_1_muj_000104f8, local
	.string "U_1"
.endobj str_U_1_muj_000104f8

# .rodata:0x374 | 0x284C | size: 0x6
.obj str_M_I_6_muj_000104fc, local
	.string "M_I_6"
.endobj str_M_I_6_muj_000104fc

# .rodata:0x37A | 0x2852 | size: 0x2
.obj gap_03_00002852_rodata, global
.hidden gap_03_00002852_rodata
	.2byte 0x0000
.endobj gap_03_00002852_rodata

# .rodata:0x37C | 0x2854 | size: 0x4
.obj str_R_4_muj_00010504, local
	.string "R_4"
.endobj str_R_4_muj_00010504

# .rodata:0x380 | 0x2858 | size: 0xA
.obj str_S_yasi_ki_muj_00010508, local
	.string "S_yasi_ki"
.endobj str_S_yasi_ki_muj_00010508

# .rodata:0x38A | 0x2862 | size: 0x2
.obj gap_03_00002862_rodata, global
.hidden gap_03_00002862_rodata
	.2byte 0x0000
.endobj gap_03_00002862_rodata

# .rodata:0x38C | 0x2864 | size: 0x19
.obj str_SFX_STG5_OBJ_TREE_SH_muj_00010514, local
	.string "SFX_STG5_OBJ_TREE_SHAKE1"
.endobj str_SFX_STG5_OBJ_TREE_SH_muj_00010514

# .rodata:0x3A5 | 0x287D | size: 0x3
.obj gap_03_0000287D_rodata, global
.hidden gap_03_0000287D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000287D_rodata

# .rodata:0x3A8 | 0x2880 | size: 0x19
.obj str_SFX_STG5_OBJ_LEAF_SH_muj_00010530, local
	.string "SFX_STG5_OBJ_LEAF_SHAKE1"
.endobj str_SFX_STG5_OBJ_LEAF_SH_muj_00010530

# .rodata:0x3C1 | 0x2899 | size: 0x3
.obj gap_03_00002899_rodata, global
.hidden gap_03_00002899_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002899_rodata

# .rodata:0x3C4 | 0x289C | size: 0xC
.obj str_S_yasi_mi02_muj_0001054c, local
	.string "S_yasi_mi02"
.endobj str_S_yasi_mi02_muj_0001054c

# .rodata:0x3D0 | 0x28A8 | size: 0xC
.obj str_S_yasi_mi01_muj_00010558, local
	.string "S_yasi_mi01"
.endobj str_S_yasi_mi01_muj_00010558

# .rodata:0x3DC | 0x28B4 | size: 0x18
.obj str_SFX_STG5_COCONUTS_FA_muj_00010564, local
	.string "SFX_STG5_COCONUTS_FALL1"
.endobj str_SFX_STG5_COCONUTS_FA_muj_00010564

# .rodata:0x3F4 | 0x28CC | size: 0x8
.obj str_yashi00_muj_0001057c, local
	.string "yashi00"
.endobj str_yashi00_muj_0001057c

# .rodata:0x3FC | 0x28D4 | size: 0x8
.obj str_yashi01_muj_00010584, local
	.string "yashi01"
.endobj str_yashi01_muj_00010584

# .rodata:0x404 | 0x28DC | size: 0xB
.obj str_S_l_dai_03_muj_0001058c, local
	.string "S_l_dai_03"
.endobj str_S_l_dai_03_muj_0001058c

# .rodata:0x40F | 0x28E7 | size: 0x1
.obj gap_03_000028E7_rodata, global
.hidden gap_03_000028E7_rodata
	.byte 0x00
.endobj gap_03_000028E7_rodata

# .rodata:0x410 | 0x28E8 | size: 0x8
.obj str_A_r_dai_muj_00010598, local
	.string "A_r_dai"
.endobj str_A_r_dai_muj_00010598

# .rodata:0x418 | 0x28F0 | size: 0xB
.obj str_A_treeA_02_muj_000105a0, local
	.string "A_treeA_02"
.endobj str_A_treeA_02_muj_000105a0

# .rodata:0x423 | 0x28FB | size: 0x1
.obj gap_03_000028FB_rodata, global
.hidden gap_03_000028FB_rodata
	.byte 0x00
.endobj gap_03_000028FB_rodata

# .rodata:0x424 | 0x28FC | size: 0xB
.obj str_treeA_02_m_muj_000105ac, local
	.string "treeA_02_m"
.endobj str_treeA_02_m_muj_000105ac

# .rodata:0x42F | 0x2907 | size: 0x1
.obj gap_03_00002907_rodata, global
.hidden gap_03_00002907_rodata
	.byte 0x00
.endobj gap_03_00002907_rodata

# .rodata:0x430 | 0x2908 | size: 0xC
.obj str_treeA_02_ha_muj_000105b8, local
	.string "treeA_02_ha"
.endobj str_treeA_02_ha_muj_000105b8

# .rodata:0x43C | 0x2914 | size: 0xB
.obj str_A_treeA_04_muj_000105c4, local
	.string "A_treeA_04"
.endobj str_A_treeA_04_muj_000105c4

# .rodata:0x447 | 0x291F | size: 0x1
.obj gap_03_0000291F_rodata, global
.hidden gap_03_0000291F_rodata
	.byte 0x00
.endobj gap_03_0000291F_rodata

# .rodata:0x448 | 0x2920 | size: 0xB
.obj str_treeA_04_m_muj_000105d0, local
	.string "treeA_04_m"
.endobj str_treeA_04_m_muj_000105d0

# .rodata:0x453 | 0x292B | size: 0x1
.obj gap_03_0000292B_rodata, global
.hidden gap_03_0000292B_rodata
	.byte 0x00
.endobj gap_03_0000292B_rodata

# .rodata:0x454 | 0x292C | size: 0xC
.obj str_treeA_04_ha_muj_000105dc, local
	.string "treeA_04_ha"
.endobj str_treeA_04_ha_muj_000105dc

# .rodata:0x460 | 0x2938 | size: 0xF
.obj str_A_kuwa_move_01_muj_000105e8, local
	.string "A_kuwa_move_01"
.endobj str_A_kuwa_move_01_muj_000105e8

# .rodata:0x46F | 0x2947 | size: 0x1
.obj gap_03_00002947_rodata, global
.hidden gap_03_00002947_rodata
	.byte 0x00
.endobj gap_03_00002947_rodata

# .rodata:0x470 | 0x2948 | size: 0xF
.obj str_S_kuwa_move_01_muj_000105f8, local
	.string "S_kuwa_move_01"
.endobj str_S_kuwa_move_01_muj_000105f8

# .rodata:0x47F | 0x2957 | size: 0x1
.obj gap_03_00002957_rodata, global
.hidden gap_03_00002957_rodata
	.byte 0x00
.endobj gap_03_00002957_rodata

# .rodata:0x480 | 0x2958 | size: 0xF
.obj str_A_kuwa_move_02_muj_00010608, local
	.string "A_kuwa_move_02"
.endobj str_A_kuwa_move_02_muj_00010608

# .rodata:0x48F | 0x2967 | size: 0x1
.obj gap_03_00002967_rodata, global
.hidden gap_03_00002967_rodata
	.byte 0x00
.endobj gap_03_00002967_rodata

# .rodata:0x490 | 0x2968 | size: 0xF
.obj str_S_kuwa_move_02_muj_00010618, local
	.string "S_kuwa_move_02"
.endobj str_S_kuwa_move_02_muj_00010618

# .rodata:0x49F | 0x2977 | size: 0x1
.obj gap_03_00002977_rodata, global
.hidden gap_03_00002977_rodata
	.byte 0x00
.endobj gap_03_00002977_rodata

# .rodata:0x4A0 | 0x2978 | size: 0xF
.obj str_A_kuwa_move_03_muj_00010628, local
	.string "A_kuwa_move_03"
.endobj str_A_kuwa_move_03_muj_00010628

# .rodata:0x4AF | 0x2987 | size: 0x1
.obj gap_03_00002987_rodata, global
.hidden gap_03_00002987_rodata
	.byte 0x00
.endobj gap_03_00002987_rodata

# .rodata:0x4B0 | 0x2988 | size: 0xF
.obj str_S_kuwa_move_03_muj_00010638, local
	.string "S_kuwa_move_03"
.endobj str_S_kuwa_move_03_muj_00010638

# .rodata:0x4BF | 0x2997 | size: 0x1
.obj gap_03_00002997_rodata, global
.hidden gap_03_00002997_rodata
	.byte 0x00
.endobj gap_03_00002997_rodata

# .rodata:0x4C0 | 0x2998 | size: 0xF
.obj str_A_kuwa_move_04_muj_00010648, local
	.string "A_kuwa_move_04"
.endobj str_A_kuwa_move_04_muj_00010648

# .rodata:0x4CF | 0x29A7 | size: 0x1
.obj gap_03_000029A7_rodata, global
.hidden gap_03_000029A7_rodata
	.byte 0x00
.endobj gap_03_000029A7_rodata

# .rodata:0x4D0 | 0x29A8 | size: 0xF
.obj str_S_kuwa_move_04_muj_00010658, local
	.string "S_kuwa_move_04"
.endobj str_S_kuwa_move_04_muj_00010658

# .rodata:0x4DF | 0x29B7 | size: 0x1
.obj gap_03_000029B7_rodata, global
.hidden gap_03_000029B7_rodata
	.byte 0x00
.endobj gap_03_000029B7_rodata

# .rodata:0x4E0 | 0x29B8 | size: 0xE
.obj str_BGM_STG5_MUJ1_muj_00010668, local
	.string "BGM_STG5_MUJ1"
.endobj str_BGM_STG5_MUJ1_muj_00010668

# .rodata:0x4EE | 0x29C6 | size: 0x2
.obj gap_03_000029C6_rodata, global
.hidden gap_03_000029C6_rodata
	.2byte 0x0000
.endobj gap_03_000029C6_rodata

# .rodata:0x4F0 | 0x29C8 | size: 0xE
.obj str_ENV_STG5_MUJ6_muj_00010678, local
	.string "ENV_STG5_MUJ6"
.endobj str_ENV_STG5_MUJ6_muj_00010678

# .rodata:0x4FE | 0x29D6 | size: 0x2
.obj gap_03_000029D6_rodata, global
.hidden gap_03_000029D6_rodata
	.2byte 0x0000
.endobj gap_03_000029D6_rodata

# .rodata:0x500 | 0x29D8 | size: 0x8
.obj str_item_00_muj_00010688, local
	.string "item_00"
.endobj str_item_00_muj_00010688

# .rodata:0x508 | 0x29E0 | size: 0x8
.obj str_item_01_muj_00010690, local
	.string "item_01"
.endobj str_item_01_muj_00010690

# .rodata:0x510 | 0x29E8 | size: 0x7
.obj str_pblk00_muj_00010698, local
	.string "pblk00"
.endobj str_pblk00_muj_00010698

# .rodata:0x517 | 0x29EF | size: 0x1
.obj gap_03_000029EF_rodata, global
.hidden gap_03_000029EF_rodata
	.byte 0x00
.endobj gap_03_000029EF_rodata

# .rodata:0x518 | 0x29F0 | size: 0x7
.obj str_S_mizu_muj_000106a0, local
	.string "S_mizu"
.endobj str_S_mizu_muj_000106a0

# .rodata:0x51F | 0x29F7 | size: 0x1
.obj gap_03_000029F7_rodata, global
.hidden gap_03_000029F7_rodata
	.byte 0x00
.endobj gap_03_000029F7_rodata

# .rodata:0x520 | 0x29F8 | size: 0xA
.obj str_S_mizu_02_muj_000106a8, local
	.string "S_mizu_02"
.endobj str_S_mizu_02_muj_000106a8

# .rodata:0x52A | 0x2A02 | size: 0x2
.obj gap_03_00002A02_rodata, global
.hidden gap_03_00002A02_rodata
	.2byte 0x0000
.endobj gap_03_00002A02_rodata

# .rodata:0x52C | 0x2A04 | size: 0xB
.obj str_A_hai_yasi_muj_000106b4, local
	.string "A_hai_yasi"
.endobj str_A_hai_yasi_muj_000106b4

# .rodata:0x537 | 0x2A0F | size: 0x1
.obj gap_03_00002A0F_rodata, global
.hidden gap_03_00002A0F_rodata
	.byte 0x00
.endobj gap_03_00002A0F_rodata

# .rodata:0x538 | 0x2A10 | size: 0x9
.obj str_A_hasi18_muj_000106c0, local
	.string "A_hasi18"
.endobj str_A_hasi18_muj_000106c0

# .rodata:0x541 | 0x2A19 | size: 0x3
.obj gap_03_00002A19_rodata, global
.hidden gap_03_00002A19_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002A19_rodata

# .rodata:0x544 | 0x2A1C | size: 0x6
.obj str_A_srt_muj_000106cc, local
	.string "A_srt"
.endobj str_A_srt_muj_000106cc

# .rodata:0x54A | 0x2A22 | size: 0x2
.obj gap_03_00002A22_rodata, global
.hidden gap_03_00002A22_rodata
	.2byte 0x0000
.endobj gap_03_00002A22_rodata

# .rodata:0x54C | 0x2A24 | size: 0xC
.obj str_mobj_jump00_muj_000106d4, local
	.string "mobj_jump00"
.endobj str_mobj_jump00_muj_000106d4

# .rodata:0x558 | 0x2A30 | size: 0x9
.obj str_sunlight_muj_000106e0, local
	.string "sunlight"
.endobj str_sunlight_muj_000106e0

# .rodata:0x561 | 0x2A39 | size: 0x3
.obj gap_03_00002A39_rodata, global
.hidden gap_03_00002A39_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002A39_rodata

# .rodata:0x564 | 0x2A3C | size: 0xD
.obj str_sunlight_n64_muj_000106ec, local
	.string "sunlight_n64"
.endobj str_sunlight_n64_muj_000106ec

# .rodata:0x571 | 0x2A49 | size: 0x7
.obj gap_03_00002A49_rodata, global
.hidden gap_03_00002A49_rodata
	.4byte 0x00000000
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002A49_rodata

# 0x00011BA8..0x00013258 | size: 0x16B0
.data
.balign 8

# .data:0x0 | 0x11BA8 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x11BB0 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x11BB4 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x11BB8 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x11BBC | size: 0x4
.obj gap_04_00011BBC_data, global
.hidden gap_04_00011BBC_data
	.4byte 0x00000000
.endobj gap_04_00011BBC_data

# .data:0x18 | 0x11BC0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x11BC8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x11BCC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x11BD0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x11BD8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x11BDC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x11BE0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x11BE4 | size: 0x4
.obj gap_04_00011BE4_data, global
.hidden gap_04_00011BE4_data
	.4byte 0x00000000
.endobj gap_04_00011BE4_data

# .data:0x40 | 0x11BE8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x11BF0 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x11BF4 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x11BF8 | size: 0x228
.obj npcEnt, local
	.4byte str_サンダース_muj_00010188
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
	.4byte str_オドオド水夫_muj_00010194
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte npc_init_evt
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_めがね水夫_muj_000101a4
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte npc_init_evt
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_エルモスA_muj_000101b0
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte npc_init_evt
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_エルモスB_muj_000101bc
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte npc_init_evt
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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

# .data:0x278 | 0x11E20 | size: 0x40
.obj evt_haikei_in, local
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0001005B
	.4byte evt_mario_cam_keep_off
	.4byte 0x0001005B
	.4byte evt_mario_cam_y_on
	.4byte 0x0000006D
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_haikei_in

# .data:0x2B8 | 0x11E60 | size: 0x12C
.obj bero_entry_data, local
	.4byte str_w_bero_muj_000101c8
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_muj_03_muj_000101d0
	.4byte str_e_bero_muj_000101d8
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_e_bero_muj_000101d8
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_muj_05_muj_000101e0
	.4byte str_w_bero_muj_000101c8
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan_1_muj_000101e8
	.4byte 0x00020000
	.4byte 0x00000009
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_A_dokan_muj_000101f0
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_A_dokan_muj_000101f0
	.4byte 0x10020000
	.4byte 0x00000009
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte evt_haikei_in
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_dokan_1_muj_000101e8
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

# .data:0x3E4 | 0x11F8C | size: 0x44
.obj hitname, local
	.4byte str_A_hasi01_muj_000101f8
	.4byte str_A_hasi02_muj_00010204
	.4byte str_A_hasi03_muj_00010210
	.4byte str_A_hasi04_muj_0001021c
	.4byte str_A_hasi05_muj_00010228
	.4byte str_A_hasi06_muj_00010234
	.4byte str_A_hasi07_muj_00010240
	.4byte str_A_hasi08_muj_0001024c
	.4byte str_A_hasi09_muj_00010258
	.4byte str_A_hasi010_muj_00010264
	.4byte str_A_hasi011_muj_00010270
	.4byte str_A_hasi012_muj_0001027c
	.4byte str_A_hasi013_muj_00010288
	.4byte str_A_hasi014_muj_00010294
	.4byte str_A_hasi015_muj_000102a0
	.4byte str_A_hasi016_muj_000102ac
	.4byte str_A_hasi017_muj_000102b8
.endobj hitname

# .data:0x428 | 0x11FD0 | size: 0x44
.obj mapanim, local
	.4byte str_S_hasi01_muj_000102c4
	.4byte str_S_hasi02_muj_000102d0
	.4byte str_S_hasi03_muj_000102dc
	.4byte str_S_hasi04_muj_000102e8
	.4byte str_S_hasi05_muj_000102f4
	.4byte str_S_hasi06_muj_00010300
	.4byte str_S_hasi07_muj_0001030c
	.4byte str_S_hasi08_muj_00010318
	.4byte str_S_hasi09_muj_00010324
	.4byte str_S_hasi10_muj_00010330
	.4byte str_S_hasi11_muj_0001033c
	.4byte str_S_hasi12_muj_00010348
	.4byte str_S_hasi13_muj_00010354
	.4byte str_S_hasi14_muj_00010360
	.4byte str_S_hasi15_muj_0001036c
	.4byte str_S_hasi16_muj_00010378
	.4byte str_S_hasi17_muj_00010384
.endobj mapanim

# .data:0x46C | 0x12014 | size: 0x88
.obj mario_hashi_anime, local
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte mario_moveride_check
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_BRIDGE_CREA_muj_00010390
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mario_hashi_anime

# .data:0x4F4 | 0x1209C | size: 0xC8
.obj erumos00_attack, local
	.4byte 0x0007005B
	.4byte evt_npc_sound_data_set
	.4byte str_エルモスA_muj_000101b0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_エルモスA_muj_000101b0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_ELMOS_MOVE1_muj_000103a8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x000A005B
	.4byte evt_npc_glide_position
	.4byte str_エルモスA_muj_000101b0
	.4byte 0xFFFFFFE7
	.4byte 0x0000007D
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24C4680
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x000A005B
	.4byte evt_npc_glide_position
	.4byte str_エルモスA_muj_000101b0
	.4byte 0xFFFFFFDD
	.4byte 0x0000007D
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24C6280
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj erumos00_attack

# .data:0x5BC | 0x12164 | size: 0xC8
.obj erumos01_attack, local
	.4byte 0x0007005B
	.4byte evt_npc_sound_data_set
	.4byte str_エルモスB_muj_000101bc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_エルモスB_muj_000101bc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_ELMOS_MOVE1_muj_000103a8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x000A005B
	.4byte evt_npc_glide_position
	.4byte str_エルモスB_muj_000101bc
	.4byte 0x00000019
	.4byte 0x0000007D
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24C3280
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x000A005B
	.4byte evt_npc_glide_position
	.4byte str_エルモスB_muj_000101bc
	.4byte 0x00000023
	.4byte 0x0000007D
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24C5E80
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj erumos01_attack

# .data:0x684 | 0x1222C | size: 0x160
.obj sanders_attack, local
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_サンダース_muj_00010188
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_THUNDERS_DA_muj_000103c0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000001E
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFF1
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000001E
	.4byte 0xFE363C8B
	.4byte 0x00020035
	.4byte 0xFE363C8B
	.4byte 0xFE363C81
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_muj_000103dc
	.4byte str_hit_muj_000103e0
	.4byte 0x00000003
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C82
	.4byte 0xF24A7C80
	.4byte 0x00000012
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x00000168
	.4byte 0x000000C8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0005005B
	.4byte evt_npc_set_rotate
	.4byte str_サンダース_muj_00010188
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
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj sanders_attack

# .data:0x7E4 | 0x1238C | size: 0x60
.obj mario_katsugi, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_めがね水夫_muj_000101a4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000028
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mario_katsugi

# .data:0x844 | 0x123EC | size: 0x774
.obj sanders_funto, local
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_サンダース_muj_00010188
	.4byte 0x00000000
	.4byte 0x00000070
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_サンダース_muj_00010188
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_オドオド水夫_muj_00010194
	.4byte 0xFFFFFFE7
	.4byte 0x00000070
	.4byte 0xFFFFFFEC
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_オドオド水夫_muj_00010194
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_めがね水夫_muj_000101a4
	.4byte 0x00000019
	.4byte 0x00000070
	.4byte 0xFFFFFFEC
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_めがね水夫_muj_000101a4
	.4byte 0x0000005A
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_オドオド水夫_muj_00010194
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_めがね水夫_muj_000101a4
	.4byte 0x00000020
	.4byte 0x0007005B
	.4byte evt_npc_sound_data_set
	.4byte str_めがね水夫_muj_000101a4
	.4byte str_SFX_STG5_KANBU_GLASS_muj_000103e4
	.4byte str_SFX_STG5_KANBU_GLASS_muj_00010404
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_エルモスA_muj_000101b0
	.4byte 0x0000005A
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_エルモスB_muj_000101bc
	.4byte 0x0000010E
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_エルモスA_muj_000101b0
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_エルモスB_muj_000101bc
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_エルモスA_muj_000101b0
	.4byte 0xFFFFFFC4
	.4byte 0x0000007D
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_エルモスB_muj_000101bc
	.4byte 0x0000003C
	.4byte 0x0000007D
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_23_muj_00010424
	.4byte 0x00000000
	.4byte str_サンダース_muj_00010188
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_FIND_muj_00010430
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000000
	.4byte zero_muj_000103dc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000003
	.4byte zero_muj_000103dc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x00000104
	.4byte 0x00000214
	.4byte 0x00000000
	.4byte 0x000000A5
	.4byte 0xFFFFFFF6
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_DANGER4_muj_00010448
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFF6A
	.4byte 0x00000000
	.4byte 0xF24CD280
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFF4C
	.4byte 0x00000000
	.4byte 0xF24CD280
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte zero_muj_000103dc
	.4byte str_サンダース_muj_00010188
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_サンダース_muj_00010188
	.4byte str_mario_muj_00010458
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFC4
	.4byte 0x00000104
	.4byte 0x00000214
	.4byte 0xFFFFFFC4
	.4byte 0x000000A5
	.4byte 0xFFFFFFF6
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_24_muj_00010460
	.4byte 0x00000000
	.4byte str_サンダース_muj_00010188
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_5B_muj_0001046c
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_オドオド水夫_muj_00010194
	.4byte str_サンダース_muj_00010188
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_muj_00010474
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_25_muj_0001047c
	.4byte 0x00000000
	.4byte str_オドオド水夫_muj_00010194
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_26_muj_00010488
	.4byte 0x00000000
	.4byte str_サンダース_muj_00010188
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x00000168
	.4byte 0x000000C8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0005005B
	.4byte evt_npc_set_rotate
	.4byte str_サンダース_muj_00010188
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
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_めがね水夫_muj_000101a4
	.4byte 0x00000600
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_めがね水夫_muj_000101a4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_THUNDERS_TH_muj_00010494
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_めがね水夫_muj_000101a4
	.4byte 0x0000010E
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_めがね水夫_muj_000101a4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000001F4
	.4byte 0x00000046
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_めがね水夫_muj_000101a4
	.4byte 0x00020010
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_オドオド水夫_muj_00010194
	.4byte 0x00000600
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_オドオド水夫_muj_00010194
	.4byte 0x0000010E
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_オドオド水夫_muj_00010194
	.4byte 0xFFFFFF97
	.4byte 0x00000074
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00000046
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_オドオド水夫_muj_00010194
	.4byte str_F_1_muj_000104b0
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_オドオド水夫_muj_00010194
	.4byte 0x00020010
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_27_muj_000104b4
	.4byte 0x00000000
	.4byte str_オドオド水夫_muj_00010194
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x0000015E
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_LAND_muj_000104c0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_D_8_muj_000104e0
	.4byte 0x0000006D
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF92
	.4byte 0x00000104
	.4byte 0x00000214
	.4byte 0xFFFFFF92
	.4byte 0x000000A5
	.4byte 0xFFFFFFF6
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0001005C
	.4byte erumos00_attack
	.4byte 0x0001005C
	.4byte erumos01_attack
	.4byte 0x0001005C
	.4byte sanders_attack
	.4byte 0x0001000B
	.4byte 0xFAA2B580
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_オドオド水夫_muj_00010194
	.4byte str_S_1_muj_000104e8
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_めがね水夫_muj_000101a4
	.4byte 0x00000200
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_オドオド水夫_muj_00010194
	.4byte 0x00000600
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_28_muj_000104ec
	.4byte 0x00000000
	.4byte str_めがね水夫_muj_000101a4
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0001005B
	.4byte evt_mario_cam_keep_off
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_めがね水夫_muj_000101a4
	.4byte str_U_1_muj_000104f8
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_6_muj_000104fc
	.4byte 0x0001005C
	.4byte mario_katsugi
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_めがね水夫_muj_000101a4
	.4byte str_R_4_muj_00010504
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_めがね水夫_muj_000101a4
	.4byte 0xFFFFFED4
	.4byte 0xFFFFFFEC
	.4byte 0x00000000
	.4byte 0xF24D4A80
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_オドオド水夫_muj_00010194
	.4byte 0xFFFFFED4
	.4byte 0xFFFFFFEC
	.4byte 0x00000000
	.4byte 0xF24D4A80
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFED4
	.4byte 0xFFFFFFEC
	.4byte 0xF24D4A80
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x000000EA
	.4byte 0x0006005B
	.4byte evt_fade_set_mapchange_type
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x000001F4
	.4byte 0x00000001
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_muj_03_muj_000101d0
	.4byte str_e_bero_muj_000101d8
	.4byte 0x00000002
	.4byte 0x00000001
.endobj sanders_funto

# .data:0xFB8 | 0x12B60 | size: 0x14
.obj yashi_yure_init, local
	.4byte 0x00020032
	.4byte 0xFD050F8A
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj yashi_yure_init

# .data:0xFCC | 0x12B74 | size: 0x3FC
.obj yashi_yure, local
	.4byte 0x00020035
	.4byte 0xFD050F8A
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFD050F8A
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_yasi_ki_muj_00010508
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_OBJ_TREE_SH_muj_00010514
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_OBJ_LEAF_SH_muj_00010530
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFFFFFFD8
	.4byte 0x0000000F
	.4byte 0x00010005
	.4byte 0x00000010
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_yasi_mi02_muj_0001054c
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_yasi_mi01_muj_00010558
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_COCONUTS_FA_muj_00010564
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0008005B
	.4byte evt_sub_area_check
	.4byte 0x00000000
	.4byte 0x00000028
	.4byte 0xFFFFFE17
	.4byte 0x00000014
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xFE363C8A
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_yasi_mi02_muj_0001054c
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_yashi00_muj_0001057c
	.4byte 0x000000A6
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_item_flag_on
	.4byte str_yashi00_muj_0001057c
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_yashi00_muj_0001057c
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFD050F8A
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_yasi_ki_muj_00010508
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_OBJ_TREE_SH_muj_00010514
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_OBJ_LEAF_SH_muj_00010530
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0001000A
	.4byte 0x00000032
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFFFFFFD8
	.4byte 0x0000000F
	.4byte 0x00010005
	.4byte 0x00000010
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_yasi_mi01_muj_00010558
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_yasi_mi01_muj_00010558
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_COCONUTS_FA_muj_00010564
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0008005B
	.4byte evt_sub_area_check
	.4byte 0x00000000
	.4byte 0x00000032
	.4byte 0xFFFFFE17
	.4byte 0x00000014
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xFE363C8A
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_yasi_mi01_muj_00010558
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_yashi01_muj_00010584
	.4byte 0x000000A6
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_item_flag_on
	.4byte str_yashi01_muj_00010584
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_yashi01_muj_00010584
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj yashi_yure

# .data:0x13C8 | 0x12F70 | size: 0x40
.obj hitDmgRetPoints, local
	.4byte str_S_l_dai_03_muj_0001058c
	.4byte 0xC3D80000
	.4byte 0x43160000
	.4byte 0x00000000
	.4byte str_A_r_dai_muj_00010598
	.4byte 0x43CD8000
	.4byte 0x43160000
	.4byte 0x00000000
	.4byte str_dokan_1_muj_000101e8
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj hitDmgRetPoints

# .data:0x1408 | 0x12FB0 | size: 0x48
.obj tree_tbl, local
	.4byte 0x00000005
	.4byte str_A_treeA_02_muj_000105a0
	.4byte str_treeA_02_m_muj_000105ac
	.4byte str_treeA_02_ha_muj_000105b8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte str_A_treeA_04_muj_000105c4
	.4byte str_treeA_04_m_muj_000105d0
	.4byte str_treeA_04_ha_muj_000105dc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj tree_tbl

# .data:0x1450 | 0x12FF8 | size: 0x50
.obj kusa_tbl, local
	.4byte 0x00000001
	.4byte str_A_kuwa_move_01_muj_000105e8
	.4byte str_S_kuwa_move_01_muj_000105f8
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_A_kuwa_move_02_muj_00010608
	.4byte str_S_kuwa_move_02_muj_00010618
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_A_kuwa_move_03_muj_00010628
	.4byte str_S_kuwa_move_03_muj_00010638
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_A_kuwa_move_04_muj_00010648
	.4byte str_S_kuwa_move_04_muj_00010658
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj kusa_tbl

# .data:0x14A0 | 0x13048 | size: 0x20C
.obj muj_04_init_evt_19_data_13048, global
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG5_MUJ1_muj_00010668
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG5_MUJ6_muj_00010678
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_00_muj_00010688
	.4byte 0x0000011B
	.4byte 0x00000122
	.4byte 0x0000003C
	.4byte 0x0000000A
	.4byte 0x00000010
	.4byte 0xF84067CC
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_01_muj_00010690
	.4byte 0x000000A4
	.4byte 0xFFFFFE91
	.4byte 0x00000096
	.4byte 0xFFFFFFB7
	.4byte 0x00000010
	.4byte 0xF84067D6
	.4byte 0x00000000
	.4byte 0x0008005B
	.4byte evt_mobj_powerupblk
	.4byte str_pblk00_muj_00010698
	.4byte 0x000001C2
	.4byte 0x000000D2
	.4byte 0xFFFFFFA6
	.4byte 0x00000000
	.4byte 0xF8407131
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_npc_setup
	.4byte npcEnt
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_S_mizu_muj_000106a0
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_S_mizu_02_muj_000106a8
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte mario_hashi_anime
	.4byte 0x0001005C
	.4byte yashi_yure_init
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte str_A_hai_yasi_muj_000106b4
	.4byte 0x00000000
	.4byte yashi_yure
	.4byte 0x00000000
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010024
	.4byte 0x000000E9
	.4byte 0x0001005C
	.4byte sanders_funto
	.4byte 0x00000031
	.4byte 0x0002005B
	.4byte evt_hit_damage_return_set
	.4byte hitDmgRetPoints
	.4byte 0x0001005E
	.4byte evt_gazigazi_entry
	.4byte 0x0005005B
	.4byte evt_hitobj_attr_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_A_hasi18_muj_000106c0
	.4byte 0x00200000
	.4byte 0x0005005B
	.4byte evt_hitobj_attr_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_A_srt_muj_000106cc
	.4byte 0x00200000
	.4byte 0x0009005B
	.4byte evt_mobj_jumpstand_blue
	.4byte 0x00000000
	.4byte str_mobj_jump00_muj_000106d4
	.4byte 0x00000096
	.4byte 0x000001A9
	.4byte 0x0000000A
	.4byte 0x00000082
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte str_sunlight_muj_000106e0
	.4byte str_sunlight_n64_muj_000106ec
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte tree_tbl
	.4byte 0x0001005E
	.4byte evt_sub_tree_access_entry
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte kusa_tbl
	.4byte 0x0001005E
	.4byte evt_sub_kusa_access_entry
	.4byte 0x00000002
	.4byte 0x00000001
.endobj muj_04_init_evt_19_data_13048

# .data:0x16AC | 0x13254 | size: 0x4
.obj gap_04_00013254_data, global
.hidden gap_04_00013254_data
	.4byte 0x00000000
.endobj gap_04_00013254_data
