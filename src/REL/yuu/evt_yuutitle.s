.include "macros.inc"
.file "evt_yuutitle.s"

# 0x0000A084..0x0000A3E0 | size: 0x35C
.text
.balign 4

# .text:0x0 | 0xA084 | size: 0x90
.fn evt_yuutitle_free_29_text_A084, global
/* 0000A084 0000A150  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0000A088 0000A154  7C 08 02 A6 */	mflr r0
/* 0000A08C 0000A158  3C 60 00 00 */	lis r3, _wp@ha
/* 0000A090 0000A15C  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000A094 0000A160  38 63 00 00 */	addi r3, r3, _wp@l
/* 0000A098 0000A164  80 63 00 00 */	lwz r3, 0x0(r3)
/* 0000A09C 0000A168  28 03 00 00 */	cmplwi r3, 0x0
/* 0000A0A0 0000A16C  40 82 00 0C */	bne .L_0000A0AC
/* 0000A0A4 0000A170  38 60 00 02 */	li r3, 0x2
/* 0000A0A8 0000A174  48 00 00 5C */	b .L_0000A104
.L_0000A0AC:
/* 0000A0AC 0000A178  2C 04 00 00 */	cmpwi r4, 0x0
/* 0000A0B0 0000A17C  41 82 00 10 */	beq .L_0000A0C0
/* 0000A0B4 0000A180  A0 03 00 04 */	lhz r0, 0x4(r3)
/* 0000A0B8 0000A184  60 00 00 01 */	ori r0, r0, 0x1
/* 0000A0BC 0000A188  B0 03 00 04 */	sth r0, 0x4(r3)
.L_0000A0C0:
/* 0000A0C0 0000A18C  A0 03 00 04 */	lhz r0, 0x4(r3)
/* 0000A0C4 0000A190  54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 0000A0C8 0000A194  40 82 00 0C */	bne .L_0000A0D4
/* 0000A0CC 0000A198  38 60 00 00 */	li r3, 0x0
/* 0000A0D0 0000A19C  48 00 00 34 */	b .L_0000A104
.L_0000A0D4:
/* 0000A0D4 0000A1A0  3C 80 00 00 */	lis r4, mapalloc_base_ptr@ha
/* 0000A0D8 0000A1A4  3C 60 00 00 */	lis r3, _wp@ha
/* 0000A0DC 0000A1A8  38 A4 00 00 */	addi r5, r4, mapalloc_base_ptr@l
/* 0000A0E0 0000A1AC  38 83 00 00 */	addi r4, r3, _wp@l
/* 0000A0E4 0000A1B0  80 65 00 00 */	lwz r3, 0x0(r5)
/* 0000A0E8 0000A1B4  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000A0EC 0000A1B8  4B FF 95 D9 */	bl _mapFree
/* 0000A0F0 0000A1BC  3C 60 00 00 */	lis r3, _wp@ha
/* 0000A0F4 0000A1C0  38 00 00 00 */	li r0, 0x0
/* 0000A0F8 0000A1C4  38 83 00 00 */	addi r4, r3, _wp@l
/* 0000A0FC 0000A1C8  38 60 00 02 */	li r3, 0x2
/* 0000A100 0000A1CC  90 04 00 00 */	stw r0, 0x0(r4)
.L_0000A104:
/* 0000A104 0000A1D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0000A108 0000A1D4  7C 08 03 A6 */	mtlr r0
/* 0000A10C 0000A1D8  38 21 00 10 */	addi r1, r1, 0x10
/* 0000A110 0000A1DC  4E 80 00 20 */	blr
.endfn evt_yuutitle_free_29_text_A084

# .text:0x90 | 0xA114 | size: 0xE4
.fn evt_yuutitle_alloc_29_text_A114, global
/* 0000A114 0000A1E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 0000A118 0000A1E4  7C 08 02 A6 */	mflr r0
/* 0000A11C 0000A1E8  3C 80 00 00 */	lis r4, mapalloc_base_ptr@ha
/* 0000A120 0000A1EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 0000A124 0000A1F0  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 0000A128 0000A1F4  7C 7D 1B 78 */	mr r29, r3
/* 0000A12C 0000A1F8  38 64 00 00 */	addi r3, r4, mapalloc_base_ptr@l
/* 0000A130 0000A1FC  38 80 00 28 */	li r4, 0x28
/* 0000A134 0000A200  83 DD 00 18 */	lwz r30, 0x18(r29)
/* 0000A138 0000A204  80 63 00 00 */	lwz r3, 0x0(r3)
/* 0000A13C 0000A208  4B FF 95 89 */	bl _mapAlloc
/* 0000A140 0000A20C  7C 7F 1B 78 */	mr r31, r3
/* 0000A144 0000A210  38 80 00 00 */	li r4, 0x0
/* 0000A148 0000A214  38 A0 00 28 */	li r5, 0x28
/* 0000A14C 0000A218  4B FF 95 79 */	bl memset
/* 0000A150 0000A21C  3C 80 00 00 */	lis r4, _wp@ha
/* 0000A154 0000A220  7F A3 EB 78 */	mr r3, r29
/* 0000A158 0000A224  93 E4 00 00 */	stw r31, _wp@l(r4)
/* 0000A15C 0000A228  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 0000A160 0000A22C  4B FF 95 65 */	bl evtGetFloat
/* 0000A164 0000A230  D0 3F 00 18 */	stfs f1, 0x18(r31)
/* 0000A168 0000A234  7F A3 EB 78 */	mr r3, r29
/* 0000A16C 0000A238  80 9E 00 04 */	lwz r4, 0x4(r30)
/* 0000A170 0000A23C  4B FF 95 55 */	bl evtGetFloat
/* 0000A174 0000A240  D0 3F 00 1C */	stfs f1, 0x1c(r31)
/* 0000A178 0000A244  7F A3 EB 78 */	mr r3, r29
/* 0000A17C 0000A248  80 9E 00 08 */	lwz r4, 0x8(r30)
/* 0000A180 0000A24C  4B FF 95 45 */	bl evtGetValue
/* 0000A184 0000A250  4B FF 95 41 */	bl msgSearch
/* 0000A188 0000A254  90 7F 00 24 */	stw r3, 0x24(r31)
/* 0000A18C 0000A258  3C 60 00 00 */	lis r3, float_200_yuu_00016454@ha
/* 0000A190 0000A25C  38 83 00 00 */	addi r4, r3, float_200_yuu_00016454@l
/* 0000A194 0000A260  38 00 00 00 */	li r0, 0x0
/* 0000A198 0000A264  C0 24 00 00 */	lfs f1, 0x0(r4)
/* 0000A19C 0000A268  3C 60 00 00 */	lis r3, main_evt@ha
/* 0000A1A0 0000A26C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 0000A1A4 0000A270  38 63 00 00 */	addi r3, r3, main_evt@l
/* 0000A1A8 0000A274  38 80 00 00 */	li r4, 0x0
/* 0000A1AC 0000A278  38 A0 00 00 */	li r5, 0x0
/* 0000A1B0 0000A27C  EC 01 00 2A */	fadds f0, f1, f0
/* 0000A1B4 0000A280  D0 1F 00 08 */	stfs f0, 0x8(r31)
/* 0000A1B8 0000A284  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 0000A1BC 0000A288  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 0000A1C0 0000A28C  EC 01 00 2A */	fadds f0, f1, f0
/* 0000A1C4 0000A290  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 0000A1C8 0000A294  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 0000A1CC 0000A298  90 1F 00 20 */	stw r0, 0x20(r31)
/* 0000A1D0 0000A29C  4B FF 94 F5 */	bl evtEntry
/* 0000A1D4 0000A2A0  90 7F 00 00 */	stw r3, 0x0(r31)
/* 0000A1D8 0000A2A4  38 60 00 02 */	li r3, 0x2
/* 0000A1DC 0000A2A8  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 0000A1E0 0000A2AC  93 E4 00 9C */	stw r31, 0x9c(r4)
/* 0000A1E4 0000A2B0  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 0000A1E8 0000A2B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 0000A1EC 0000A2B8  7C 08 03 A6 */	mtlr r0
/* 0000A1F0 0000A2BC  38 21 00 20 */	addi r1, r1, 0x20
/* 0000A1F4 0000A2C0  4E 80 00 20 */	blr
.endfn evt_yuutitle_alloc_29_text_A114

# .text:0x174 | 0xA1F8 | size: 0x5C
.fn evt_yuutitle_main_func, local
/* 0000A1F8 0000A2C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0000A1FC 0000A2C8  7C 08 02 A6 */	mflr r0
/* 0000A200 0000A2CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000A204 0000A2D0  80 C3 00 9C */	lwz r6, 0x9c(r3)
/* 0000A208 0000A2D4  A0 66 00 04 */	lhz r3, 0x4(r6)
/* 0000A20C 0000A2D8  54 60 07 FF */	clrlwi. r0, r3, 31
/* 0000A210 0000A2DC  41 82 00 14 */	beq .L_0000A224
/* 0000A214 0000A2E0  60 60 00 02 */	ori r0, r3, 0x2
/* 0000A218 0000A2E4  38 60 00 02 */	li r3, 0x2
/* 0000A21C 0000A2E8  B0 06 00 04 */	sth r0, 0x4(r6)
/* 0000A220 0000A2EC  48 00 00 24 */	b .L_0000A244
.L_0000A224:
/* 0000A224 0000A2F0  3C 80 00 00 */	lis r4, float_1000_yuu_00016458@ha
/* 0000A228 0000A2F4  3C 60 00 00 */	lis r3, evt_yuutitle_disp_func@ha
/* 0000A22C 0000A2F8  C0 24 00 00 */	lfs f1, float_1000_yuu_00016458@l(r4)
/* 0000A230 0000A2FC  38 A3 00 00 */	addi r5, r3, evt_yuutitle_disp_func@l
/* 0000A234 0000A300  38 60 00 08 */	li r3, 0x8
/* 0000A238 0000A304  38 80 00 00 */	li r4, 0x0
/* 0000A23C 0000A308  4B FF 94 89 */	bl dispEntry
/* 0000A240 0000A30C  38 60 00 00 */	li r3, 0x0
.L_0000A244:
/* 0000A244 0000A310  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0000A248 0000A314  7C 08 03 A6 */	mtlr r0
/* 0000A24C 0000A318  38 21 00 10 */	addi r1, r1, 0x10
/* 0000A250 0000A31C  4E 80 00 20 */	blr
.endfn evt_yuutitle_main_func

# .text:0x1D0 | 0xA254 | size: 0x18C
.fn evt_yuutitle_disp_func, local
/* 0000A254 0000A320  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 0000A258 0000A324  7C 08 02 A6 */	mflr r0
/* 0000A25C 0000A328  90 01 00 44 */	stw r0, 0x44(r1)
/* 0000A260 0000A32C  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 0000A264 0000A330  F3 E1 00 38 */	psq_st f31, 0x38(r1), 0, qr0
/* 0000A268 0000A334  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 0000A26C 0000A338  F3 C1 00 28 */	psq_st f30, 0x28(r1), 0, qr0
/* 0000A270 0000A33C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 0000A274 0000A340  7C 9F 23 78 */	mr r31, r4
/* 0000A278 0000A344  3C 80 00 00 */	lis r4, float_2_yuu_0001645c@ha
/* 0000A27C 0000A348  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 0000A280 0000A34C  C3 E4 00 00 */	lfs f31, float_2_yuu_0001645c@l(r4)
/* 0000A284 0000A350  2C 03 00 FF */	cmpwi r3, 0xff
/* 0000A288 0000A354  40 80 00 A8 */	bge .L_0000A330
/* 0000A28C 0000A358  38 03 00 06 */	addi r0, r3, 0x6
/* 0000A290 0000A35C  90 1F 00 20 */	stw r0, 0x20(r31)
/* 0000A294 0000A360  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 0000A298 0000A364  2C 00 00 FF */	cmpwi r0, 0xff
/* 0000A29C 0000A368  40 81 00 0C */	ble .L_0000A2A8
/* 0000A2A0 0000A36C  38 00 00 FF */	li r0, 0xff
/* 0000A2A4 0000A370  90 1F 00 20 */	stw r0, 0x20(r31)
.L_0000A2A8:
/* 0000A2A8 0000A374  80 7F 00 20 */	lwz r3, 0x20(r31)
/* 0000A2AC 0000A378  3C 00 43 30 */	lis r0, 0x4330
/* 0000A2B0 0000A37C  3C C0 00 00 */	lis r6, double_to_int_yuu_00016478@ha
/* 0000A2B4 0000A380  90 01 00 10 */	stw r0, 0x10(r1)
/* 0000A2B8 0000A384  6C 65 80 00 */	xoris r5, r3, 0x8000
/* 0000A2BC 0000A388  3C 80 00 00 */	lis r4, float_255_yuu_00016460@ha
/* 0000A2C0 0000A38C  90 A1 00 14 */	stw r5, 0x14(r1)
/* 0000A2C4 0000A390  38 E6 00 00 */	addi r7, r6, double_to_int_yuu_00016478@l
/* 0000A2C8 0000A394  38 C4 00 00 */	addi r6, r4, float_255_yuu_00016460@l
/* 0000A2CC 0000A398  3C 60 00 00 */	lis r3, float_1_yuu_00016464@ha
/* 0000A2D0 0000A39C  C8 47 00 00 */	lfd f2, 0x0(r7)
/* 0000A2D4 0000A3A0  38 A3 00 00 */	addi r5, r3, float_1_yuu_00016464@l
/* 0000A2D8 0000A3A4  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 0000A2DC 0000A3A8  3C 80 00 00 */	lis r4, float_0p8_yuu_0001646c@ha
/* 0000A2E0 0000A3AC  C0 06 00 00 */	lfs f0, 0x0(r6)
/* 0000A2E4 0000A3B0  3C 60 00 00 */	lis r3, float_0p2_yuu_00016468@ha
/* 0000A2E8 0000A3B4  EC 21 10 28 */	fsubs f1, f1, f2
/* 0000A2EC 0000A3B8  C0 45 00 00 */	lfs f2, 0x0(r5)
/* 0000A2F0 0000A3BC  C0 7F 00 10 */	lfs f3, 0x10(r31)
/* 0000A2F4 0000A3C0  C0 9F 00 18 */	lfs f4, 0x18(r31)
/* 0000A2F8 0000A3C4  EC A1 00 24 */	fdivs f5, f1, f0
/* 0000A2FC 0000A3C8  C0 24 00 00 */	lfs f1, float_0p8_yuu_0001646c@l(r4)
/* 0000A300 0000A3CC  C0 03 00 00 */	lfs f0, float_0p2_yuu_00016468@l(r3)
/* 0000A304 0000A3D0  EC 42 28 28 */	fsubs f2, f2, f5
/* 0000A308 0000A3D4  EC 21 01 7A */	fmadds f1, f1, f5, f0
/* 0000A30C 0000A3D8  EC 03 00 B2 */	fmuls f0, f3, f2
/* 0000A310 0000A3DC  EF FF 00 72 */	fmuls f31, f31, f1
/* 0000A314 0000A3E0  EC 04 01 7A */	fmadds f0, f4, f5, f0
/* 0000A318 0000A3E4  D0 1F 00 08 */	stfs f0, 0x8(r31)
/* 0000A31C 0000A3E8  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 0000A320 0000A3EC  C0 3F 00 1C */	lfs f1, 0x1c(r31)
/* 0000A324 0000A3F0  EC 00 00 B2 */	fmuls f0, f0, f2
/* 0000A328 0000A3F4  EC 01 01 7A */	fmadds f0, f1, f5, f0
/* 0000A32C 0000A3F8  D0 1F 00 0C */	stfs f0, 0xc(r31)
.L_0000A330:
/* 0000A330 0000A3FC  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 0000A334 0000A400  4B FF 93 91 */	bl FontGetMessageWidth
/* 0000A338 0000A404  54 64 04 3E */	clrlwi r4, r3, 16
/* 0000A33C 0000A408  3C 00 43 30 */	lis r0, 0x4330
/* 0000A340 0000A40C  3C 60 00 00 */	lis r3, double_to_int_mask_yuu_00016480@ha
/* 0000A344 0000A410  90 81 00 14 */	stw r4, 0x14(r1)
/* 0000A348 0000A414  38 83 00 00 */	addi r4, r3, double_to_int_mask_yuu_00016480@l
/* 0000A34C 0000A418  90 01 00 10 */	stw r0, 0x10(r1)
/* 0000A350 0000A41C  3C 60 00 00 */	lis r3, dat_yuu_00016470@ha
/* 0000A354 0000A420  C8 44 00 00 */	lfd f2, 0x0(r4)
/* 0000A358 0000A424  C8 21 00 10 */	lfd f1, 0x10(r1)
/* 0000A35C 0000A428  C0 03 00 00 */	lfs f0, dat_yuu_00016470@l(r3)
/* 0000A360 0000A42C  EC 21 10 28 */	fsubs f1, f1, f2
/* 0000A364 0000A430  EC 3F 00 72 */	fmuls f1, f31, f1
/* 0000A368 0000A434  EF C1 00 32 */	fmuls f30, f1, f0
/* 0000A36C 0000A438  4B FF 93 59 */	bl FontDrawStart
/* 0000A370 0000A43C  FC 20 F8 90 */	fmr f1, f31
/* 0000A374 0000A440  4B FF 93 51 */	bl FontDrawScale
/* 0000A378 0000A444  4B FF 93 4D */	bl FontDrawEdge
/* 0000A37C 0000A448  3C 60 00 00 */	lis r3, dat_yuu_00016450@ha
/* 0000A380 0000A44C  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 0000A384 0000A450  38 83 00 00 */	addi r4, r3, dat_yuu_00016450@l
/* 0000A388 0000A454  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000A38C 0000A458  38 61 00 0C */	addi r3, r1, 0xc
/* 0000A390 0000A45C  90 81 00 08 */	stw r4, 0x8(r1)
/* 0000A394 0000A460  98 01 00 0B */	stb r0, 0xb(r1)
/* 0000A398 0000A464  80 01 00 08 */	lwz r0, 0x8(r1)
/* 0000A39C 0000A468  90 01 00 0C */	stw r0, 0xc(r1)
/* 0000A3A0 0000A46C  4B FF 93 25 */	bl FontDrawColor
/* 0000A3A4 0000A470  C0 1F 00 08 */	lfs f0, 0x8(r31)
/* 0000A3A8 0000A474  C0 5F 00 0C */	lfs f2, 0xc(r31)
/* 0000A3AC 0000A478  EC 20 F0 28 */	fsubs f1, f0, f30
/* 0000A3B0 0000A47C  80 7F 00 24 */	lwz r3, 0x24(r31)
/* 0000A3B4 0000A480  4B FF 93 11 */	bl FontDrawString
/* 0000A3B8 0000A484  4B FF 93 0D */	bl FontDrawEdgeOff
/* 0000A3BC 0000A488  E3 E1 00 38 */	psq_l f31, 0x38(r1), 0, qr0
/* 0000A3C0 0000A48C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 0000A3C4 0000A490  E3 C1 00 28 */	psq_l f30, 0x28(r1), 0, qr0
/* 0000A3C8 0000A494  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 0000A3CC 0000A498  80 01 00 44 */	lwz r0, 0x44(r1)
/* 0000A3D0 0000A49C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 0000A3D4 0000A4A0  7C 08 03 A6 */	mtlr r0
/* 0000A3D8 0000A4A4  38 21 00 40 */	addi r1, r1, 0x40
/* 0000A3DC 0000A4A8  4E 80 00 20 */	blr
.endfn evt_yuutitle_disp_func

# 0x000011B0..0x000011E8 | size: 0x38
.rodata
.balign 8

# .rodata:0x0 | 0x11B0 | size: 0x4
.obj dat_yuu_00016450, local
	.4byte 0xFFFFFF00
.endobj dat_yuu_00016450

# .rodata:0x4 | 0x11B4 | size: 0x4
.obj float_200_yuu_00016454, local
	.float 200
.endobj float_200_yuu_00016454

# .rodata:0x8 | 0x11B8 | size: 0x4
.obj float_1000_yuu_00016458, local
	.float 1000
.endobj float_1000_yuu_00016458

# .rodata:0xC | 0x11BC | size: 0x4
.obj float_2_yuu_0001645c, local
	.float 2
.endobj float_2_yuu_0001645c

# .rodata:0x10 | 0x11C0 | size: 0x4
.obj float_255_yuu_00016460, local
	.float 255
.endobj float_255_yuu_00016460

# .rodata:0x14 | 0x11C4 | size: 0x4
.obj float_1_yuu_00016464, local
	.float 1
.endobj float_1_yuu_00016464

# .rodata:0x18 | 0x11C8 | size: 0x4
.obj float_0p2_yuu_00016468, local
	.float 0.2
.endobj float_0p2_yuu_00016468

# .rodata:0x1C | 0x11CC | size: 0x4
.obj float_0p8_yuu_0001646c, local
	.float 0.8
.endobj float_0p8_yuu_0001646c

# .rodata:0x20 | 0x11D0 | size: 0x4
.obj dat_yuu_00016470, local
	.float 0.5
.endobj dat_yuu_00016470
	.4byte 0x00000000

# .rodata:0x28 | 0x11D8 | size: 0x8
.obj double_to_int_yuu_00016478, local
	.double 4503601774854144
.endobj double_to_int_yuu_00016478

# .rodata:0x30 | 0x11E0 | size: 0x8
.obj double_to_int_mask_yuu_00016480, local
	.double 4503599627370496
.endobj double_to_int_mask_yuu_00016480

# 0x000064C8..0x00006528 | size: 0x60
.data
.balign 8

# .data:0x0 | 0x64C8 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x64D0 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x64D4 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x64D8 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x64DC | size: 0x4
.obj gap_04_000064DC_data, global
.hidden gap_04_000064DC_data
	.4byte 0x00000000
.endobj gap_04_000064DC_data

# .data:0x18 | 0x64E0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x64E8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x64EC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x64F0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x64F8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x64FC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x6500 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x6504 | size: 0x4
.obj gap_04_00006504_data, global
.hidden gap_04_00006504_data
	.4byte 0x00000000
.endobj gap_04_00006504_data

# .data:0x40 | 0x6508 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x6510 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x6514 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x6518 | size: 0x10
.obj main_evt, local
	.4byte 0x0001005B
	.4byte evt_yuutitle_main_func
	.4byte 0x00000002
	.4byte 0x00000001
.endobj main_evt

# 0x00000038..0x00000040 | size: 0x8
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x38 | size: 0x4
.obj _wp, local
	.skip 0x4
.endobj _wp

# .bss:0x4 | 0x3C | size: 0x4
.obj gap_05_0000003C_bss, global
.hidden gap_05_0000003C_bss
	.skip 0x4
.endobj gap_05_0000003C_bss
