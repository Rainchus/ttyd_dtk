.include "macros.inc"
.file "unit_boss_gonbaba.o"

# 0x00002090..0x00002414 | size: 0x384
.text
.balign 4

# .text:0x0 | 0x2090 | size: 0x1C
.fn weaponGetPower_Gonbaba, local
/* 00002090 00002174  80 84 00 20 */	lwz r4, 0x20(r4)
/* 00002094 00002178  80 03 02 18 */	lwz r0, 0x218(r3)
/* 00002098 0000217C  7C 80 20 51 */	subf. r4, r0, r4
/* 0000209C 00002180  41 81 00 08 */	bgt .L_000020A4
/* 000020A0 00002184  38 80 00 01 */	li r4, 0x1
.L_000020A4:
/* 000020A4 00002188  7C 83 23 78 */	mr r3, r4
/* 000020A8 0000218C  4E 80 00 20 */	blr
.endfn weaponGetPower_Gonbaba

# .text:0x1C | 0x20AC | size: 0xB0
.fn _leg_smoke_effect, local
/* 000020AC 00002190  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 000020B0 00002194  7C 08 02 A6 */	mflr r0
/* 000020B4 00002198  90 01 00 34 */	stw r0, 0x34(r1)
/* 000020B8 0000219C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 000020BC 000021A0  F3 E1 00 28 */	psq_st f31, 0x28(r1), 0, qr0
/* 000020C0 000021A4  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 000020C4 000021A8  F3 C1 00 18 */	psq_st f30, 0x18(r1), 0, qr0
/* 000020C8 000021AC  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 000020CC 000021B0  7C 7E 1B 78 */	mr r30, r3
/* 000020D0 000021B4  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 000020D4 000021B8  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 000020D8 000021BC  4B FF E1 09 */	bl evtGetFloat
/* 000020DC 000021C0  FF E0 08 90 */	fmr f31, f1
/* 000020E0 000021C4  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 000020E4 000021C8  7F C3 F3 78 */	mr r3, r30
/* 000020E8 000021CC  4B FF E0 F9 */	bl evtGetFloat
/* 000020EC 000021D0  FF C0 08 90 */	fmr f30, f1
/* 000020F0 000021D4  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 000020F4 000021D8  7F C3 F3 78 */	mr r3, r30
/* 000020F8 000021DC  4B FF E0 E9 */	bl evtGetFloat
/* 000020FC 000021E0  FC 00 08 90 */	fmr f0, f1
/* 00002100 000021E4  3C 80 00 00 */	lis r4, float_60_gon_00006130@ha
/* 00002104 000021E8  38 A4 00 00 */	addi r5, r4, float_60_gon_00006130@l
/* 00002108 000021EC  3C 60 00 00 */	lis r3, zero_gon_00006134@ha
/* 0000210C 000021F0  38 83 00 00 */	addi r4, r3, zero_gon_00006134@l
/* 00002110 000021F4  C0 85 00 00 */	lfs f4, 0x0(r5)
/* 00002114 000021F8  C0 A4 00 00 */	lfs f5, 0x0(r4)
/* 00002118 000021FC  FC 20 F8 90 */	fmr f1, f31
/* 0000211C 00002200  FC 40 F0 90 */	fmr f2, f30
/* 00002120 00002204  38 60 00 01 */	li r3, 0x1
/* 00002124 00002208  FC 60 00 90 */	fmr f3, f0
/* 00002128 0000220C  38 80 00 12 */	li r4, 0x12
/* 0000212C 00002210  38 A0 00 5A */	li r5, 0x5a
/* 00002130 00002214  4B FF E0 B1 */	bl effKemuri9N64Entry
/* 00002134 00002218  38 60 00 02 */	li r3, 0x2
/* 00002138 0000221C  E3 E1 00 28 */	psq_l f31, 0x28(r1), 0, qr0
/* 0000213C 00002220  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 00002140 00002224  E3 C1 00 18 */	psq_l f30, 0x18(r1), 0, qr0
/* 00002144 00002228  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 00002148 0000222C  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 0000214C 00002230  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00002150 00002234  7C 08 03 A6 */	mtlr r0
/* 00002154 00002238  38 21 00 30 */	addi r1, r1, 0x30
/* 00002158 0000223C  4E 80 00 20 */	blr
.endfn _leg_smoke_effect

# .text:0xCC | 0x215C | size: 0x1B0
.fn _btlgon_get_escape_param, local
/* 0000215C 00002240  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 00002160 00002244  7C 08 02 A6 */	mflr r0
/* 00002164 00002248  90 01 00 54 */	stw r0, 0x54(r1)
/* 00002168 0000224C  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 0000216C 00002250  F3 E1 00 48 */	psq_st f31, 0x48(r1), 0, qr0
/* 00002170 00002254  BF 41 00 28 */	stmw r26, 0x28(r1)
/* 00002174 00002258  7C 7A 1B 78 */	mr r26, r3
/* 00002178 0000225C  83 83 00 18 */	lwz r28, 0x18(r3)
/* 0000217C 00002260  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 00002180 00002264  4B FF E0 61 */	bl evtGetValue
/* 00002184 00002268  80 9C 00 04 */	lwz r4, 0x4(r28)
/* 00002188 0000226C  7C 7B 1B 78 */	mr r27, r3
/* 0000218C 00002270  7F 43 D3 78 */	mr r3, r26
/* 00002190 00002274  4B FF E0 51 */	bl evtGetValue
/* 00002194 00002278  3C 80 43 30 */	lis r4, 0x4330
/* 00002198 0000227C  6F 65 80 00 */	xoris r5, r27, 0x8000
/* 0000219C 00002280  90 A1 00 0C */	stw r5, 0xc(r1)
/* 000021A0 00002284  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 000021A4 00002288  3C 60 00 00 */	lis r3, double_to_int_gon_00006290@ha
/* 000021A8 0000228C  3C A0 00 00 */	lis r5, float_100_gon_00006270@ha
/* 000021AC 00002290  90 81 00 08 */	stw r4, 0x8(r1)
/* 000021B0 00002294  C8 43 00 00 */	lfd f2, double_to_int_gon_00006290@l(r3)
/* 000021B4 00002298  3C 60 00 00 */	lis r3, float_205_gon_00006274@ha
/* 000021B8 0000229C  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 000021BC 000022A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 000021C0 000022A4  EC 60 10 28 */	fsubs f3, f0, f2
/* 000021C4 000022A8  83 FC 00 08 */	lwz r31, 0x8(r28)
/* 000021C8 000022AC  90 81 00 10 */	stw r4, 0x10(r1)
/* 000021CC 000022B0  83 DC 00 0C */	lwz r30, 0xc(r28)
/* 000021D0 000022B4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 000021D4 000022B8  83 BC 00 10 */	lwz r29, 0x10(r28)
/* 000021D8 000022BC  EC 80 10 28 */	fsubs f4, f0, f2
/* 000021DC 000022C0  C0 25 00 00 */	lfs f1, float_100_gon_00006270@l(r5)
/* 000021E0 000022C4  C0 43 00 00 */	lfs f2, float_205_gon_00006274@l(r3)
/* 000021E4 000022C8  4B FF DF FD */	bl angleABf_1
/* 000021E8 000022CC  3C 60 00 00 */	lis r3, float_270_gon_00006278@ha
/* 000021EC 000022D0  FF E0 08 90 */	fmr f31, f1
/* 000021F0 000022D4  C0 43 00 00 */	lfs f2, float_270_gon_00006278@l(r3)
/* 000021F4 000022D8  FC 1F 10 40 */	fcmpo cr0, f31, f2
/* 000021F8 000022DC  40 81 00 18 */	ble .L_00002210
/* 000021FC 000022E0  3C 60 00 00 */	lis r3, float_360_gon_0000627c@ha
/* 00002200 000022E4  C0 03 00 00 */	lfs f0, float_360_gon_0000627c@l(r3)
/* 00002204 000022E8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 00002208 000022EC  40 80 00 08 */	bge .L_00002210
/* 0000220C 000022F0  FF E0 10 90 */	fmr f31, f2
.L_00002210:
/* 00002210 000022F4  3C 60 00 00 */	lis r3, float_90_gon_00006280@ha
/* 00002214 000022F8  C0 03 00 00 */	lfs f0, float_90_gon_00006280@l(r3)
/* 00002218 000022FC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 0000221C 00002300  40 80 00 08 */	bge .L_00002224
/* 00002220 00002304  FF E0 00 90 */	fmr f31, f0
.L_00002224:
/* 00002224 00002308  FC 20 F8 90 */	fmr f1, f31
/* 00002228 0000230C  4B FF DF B9 */	bl sinfd
/* 0000222C 00002310  3C 60 00 00 */	lis r3, float_500_gon_00006284@ha
/* 00002230 00002314  C0 03 00 00 */	lfs f0, float_500_gon_00006284@l(r3)
/* 00002234 00002318  EC 00 00 72 */	fmuls f0, f0, f1
/* 00002238 0000231C  FC 20 F8 90 */	fmr f1, f31
/* 0000223C 00002320  FC 00 00 1E */	fctiwz f0, f0
/* 00002240 00002324  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 00002244 00002328  83 81 00 14 */	lwz r28, 0x14(r1)
/* 00002248 0000232C  4B FF DF 99 */	bl cosfd
/* 0000224C 00002330  3C 60 00 00 */	lis r3, float_500_gon_00006284@ha
/* 00002250 00002334  FC 20 08 50 */	fneg f1, f1
/* 00002254 00002338  C0 03 00 00 */	lfs f0, float_500_gon_00006284@l(r3)
/* 00002258 0000233C  EC 00 00 72 */	fmuls f0, f0, f1
/* 0000225C 00002340  FC 00 00 1E */	fctiwz f0, f0
/* 00002260 00002344  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 00002264 00002348  83 61 00 0C */	lwz r27, 0xc(r1)
/* 00002268 0000234C  4B FF DF 79 */	bl rand
/* 0000226C 00002350  39 20 00 06 */	li r9, 0x6
/* 00002270 00002354  3C 00 43 30 */	lis r0, 0x4330
/* 00002274 00002358  7D 03 4B D6 */	divw r8, r3, r9
/* 00002278 0000235C  90 01 00 18 */	stw r0, 0x18(r1)
/* 0000227C 00002360  3C A0 00 00 */	lis r5, double_to_int_gon_00006290@ha
/* 00002280 00002364  3C 80 00 00 */	lis r4, float_6_gon_00006288@ha
/* 00002284 00002368  38 E5 00 00 */	addi r7, r5, double_to_int_gon_00006290@l
/* 00002288 0000236C  38 C4 00 00 */	addi r6, r4, float_6_gon_00006288@l
/* 0000228C 00002370  7C 08 49 D6 */	mullw r0, r8, r9
/* 00002290 00002374  3C A0 00 00 */	lis r5, float_0p67_gon_0000628c@ha
/* 00002294 00002378  C0 05 00 00 */	lfs f0, float_0p67_gon_0000628c@l(r5)
/* 00002298 0000237C  7F E4 FB 78 */	mr r4, r31
/* 0000229C 00002380  C8 67 00 00 */	lfd f3, 0x0(r7)
/* 000022A0 00002384  7F 85 E3 78 */	mr r5, r28
/* 000022A4 00002388  7C 00 18 50 */	subf r0, r0, r3
/* 000022A8 0000238C  C0 26 00 00 */	lfs f1, 0x0(r6)
/* 000022AC 00002390  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 000022B0 00002394  7F 43 D3 78 */	mr r3, r26
/* 000022B4 00002398  90 01 00 1C */	stw r0, 0x1c(r1)
/* 000022B8 0000239C  C8 41 00 18 */	lfd f2, 0x18(r1)
/* 000022BC 000023A0  EC 42 18 28 */	fsubs f2, f2, f3
/* 000022C0 000023A4  EC 21 10 2A */	fadds f1, f1, f2
/* 000022C4 000023A8  EF E0 00 72 */	fmuls f31, f0, f1
/* 000022C8 000023AC  4B FF DF 19 */	bl evtSetValue
/* 000022CC 000023B0  7F 43 D3 78 */	mr r3, r26
/* 000022D0 000023B4  7F C4 F3 78 */	mr r4, r30
/* 000022D4 000023B8  7F 65 DB 78 */	mr r5, r27
/* 000022D8 000023BC  4B FF DF 09 */	bl evtSetValue
/* 000022DC 000023C0  FC 20 F8 90 */	fmr f1, f31
/* 000022E0 000023C4  7F 43 D3 78 */	mr r3, r26
/* 000022E4 000023C8  7F A4 EB 78 */	mr r4, r29
/* 000022E8 000023CC  4B FF DE F9 */	bl evtSetFloat
/* 000022EC 000023D0  38 60 00 02 */	li r3, 0x2
/* 000022F0 000023D4  E3 E1 00 48 */	psq_l f31, 0x48(r1), 0, qr0
/* 000022F4 000023D8  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 000022F8 000023DC  BB 41 00 28 */	lmw r26, 0x28(r1)
/* 000022FC 000023E0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 00002300 000023E4  7C 08 03 A6 */	mtlr r0
/* 00002304 000023E8  38 21 00 50 */	addi r1, r1, 0x50
/* 00002308 000023EC  4E 80 00 20 */	blr
.endfn _btlgon_get_escape_param

# .text:0x27C | 0x230C | size: 0x7C
.fn _set_gonbaba_light, local
/* 0000230C 000023F0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 00002310 000023F4  7C 08 02 A6 */	mflr r0
/* 00002314 000023F8  90 01 00 44 */	stw r0, 0x44(r1)
/* 00002318 000023FC  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 0000231C 00002400  4B FF DE C5 */	bl lightGetPaperCraft
/* 00002320 00002404  3C 80 00 00 */	lis r4, vec3_gon_00006548@ha
/* 00002324 00002408  7C 7F 1B 78 */	mr r31, r3
/* 00002328 0000240C  38 C4 00 00 */	addi r6, r4, vec3_gon_00006548@l
/* 0000232C 00002410  3C 60 00 00 */	lis r3, float_3_gon_00006554@ha
/* 00002330 00002414  80 A6 00 00 */	lwz r5, 0x0(r6)
/* 00002334 00002418  38 83 00 00 */	addi r4, r3, float_3_gon_00006554@l
/* 00002338 0000241C  80 06 00 04 */	lwz r0, 0x4(r6)
/* 0000233C 00002420  38 61 00 08 */	addi r3, r1, 0x8
/* 00002340 00002424  C0 24 00 00 */	lfs f1, 0x0(r4)
/* 00002344 00002428  90 BF 00 24 */	stw r5, 0x24(r31)
/* 00002348 0000242C  FC 40 08 90 */	fmr f2, f1
/* 0000234C 00002430  90 1F 00 28 */	stw r0, 0x28(r31)
/* 00002350 00002434  FC 60 08 90 */	fmr f3, f1
/* 00002354 00002438  80 06 00 08 */	lwz r0, 0x8(r6)
/* 00002358 0000243C  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 0000235C 00002440  4B FF DE 85 */	bl PSMTXScale
/* 00002360 00002444  38 9F 00 24 */	addi r4, r31, 0x24
/* 00002364 00002448  38 61 00 08 */	addi r3, r1, 0x8
/* 00002368 0000244C  7C 85 23 78 */	mr r5, r4
/* 0000236C 00002450  4B FF DE 75 */	bl PSMTXMultVec
/* 00002370 00002454  80 01 00 44 */	lwz r0, 0x44(r1)
/* 00002374 00002458  38 60 00 02 */	li r3, 0x2
/* 00002378 0000245C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 0000237C 00002460  7C 08 03 A6 */	mtlr r0
/* 00002380 00002464  38 21 00 40 */	addi r1, r1, 0x40
/* 00002384 00002468  4E 80 00 20 */	blr
.endfn _set_gonbaba_light

# .text:0x2F8 | 0x2388 | size: 0x8C
.fn _wait_damage_event_end, local
/* 00002388 0000246C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0000238C 00002470  7C 08 02 A6 */	mflr r0
/* 00002390 00002474  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00002394 00002478  90 01 00 14 */	stw r0, 0x14(r1)
/* 00002398 0000247C  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 0000239C 00002480  7C 7E 1B 78 */	mr r30, r3
/* 000023A0 00002484  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 000023A4 00002488  83 E4 00 00 */	lwz r31, _battleWorkPointer@l(r4)
/* 000023A8 0000248C  80 85 00 00 */	lwz r4, 0x0(r5)
/* 000023AC 00002490  4B FF DE 35 */	bl evtGetValue
/* 000023B0 00002494  7C 60 1B 78 */	mr r0, r3
/* 000023B4 00002498  7F C3 F3 78 */	mr r3, r30
/* 000023B8 0000249C  7C 04 03 78 */	mr r4, r0
/* 000023BC 000024A0  4B FF DE 25 */	bl BattleTransID
/* 000023C0 000024A4  7C 64 1B 78 */	mr r4, r3
/* 000023C4 000024A8  7F E3 FB 78 */	mr r3, r31
/* 000023C8 000024AC  4B FF DE 19 */	bl BattleGetUnitPtr
/* 000023CC 000024B0  28 03 00 00 */	cmplwi r3, 0x0
/* 000023D0 000024B4  40 82 00 0C */	bne .L_000023DC
/* 000023D4 000024B8  38 60 00 02 */	li r3, 0x2
/* 000023D8 000024BC  48 00 00 28 */	b .L_00002400
.L_000023DC:
/* 000023DC 000024C0  80 63 02 B4 */	lwz r3, 0x2b4(r3)
/* 000023E0 000024C4  2C 03 00 00 */	cmpwi r3, 0x0
/* 000023E4 000024C8  41 82 00 18 */	beq .L_000023FC
/* 000023E8 000024CC  4B FF DD F9 */	bl evtCheckID
/* 000023EC 000024D0  2C 03 00 00 */	cmpwi r3, 0x0
/* 000023F0 000024D4  41 82 00 0C */	beq .L_000023FC
/* 000023F4 000024D8  38 60 00 00 */	li r3, 0x0
/* 000023F8 000024DC  48 00 00 08 */	b .L_00002400
.L_000023FC:
/* 000023FC 000024E0  38 60 00 02 */	li r3, 0x2
.L_00002400:
/* 00002400 000024E4  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00002404 000024E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00002408 000024EC  7C 08 03 A6 */	mtlr r0
/* 0000240C 000024F0  38 21 00 10 */	addi r1, r1, 0x10
/* 00002410 000024F4  4E 80 00 20 */	blr
.endfn _wait_damage_event_end

# 0x00002360..0x00002918 | size: 0x5B8
.rodata
.balign 8

# .rodata:0x0 | 0x2360 | size: 0x4
.obj float_60_gon_00006130, local
	.float 60
.endobj float_60_gon_00006130

# .rodata:0x4 | 0x2364 | size: 0x4
.obj zero_gon_00006134, local
	.float 0
.endobj zero_gon_00006134

# .rodata:0x8 | 0x2368 | size: 0xF
.obj str_btl_un_gonbaba_gon_00006138, local
	.string "btl_un_gonbaba"
.endobj str_btl_un_gonbaba_gon_00006138

# .rodata:0x17 | 0x2377 | size: 0x1
.obj gap_03_00002377_rodata, global
.hidden gap_03_00002377_rodata
	.byte 0x00
.endobj gap_03_00002377_rodata

# .rodata:0x18 | 0x2378 | size: 0x16
.obj str_SFX_BOSS_GNB_DAMAGED_gon_00006148, local
	.string "SFX_BOSS_GNB_DAMAGED1"
.endobj str_SFX_BOSS_GNB_DAMAGED_gon_00006148

# .rodata:0x2E | 0x238E | size: 0x2
.obj gap_03_0000238E_rodata, global
.hidden gap_03_0000238E_rodata
	.2byte 0x0000
.endobj gap_03_0000238E_rodata

# .rodata:0x30 | 0x2390 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_gon_00006160, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_gon_00006160

# .rodata:0x45 | 0x23A5 | size: 0x3
.obj gap_03_000023A5_rodata, global
.hidden gap_03_000023A5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000023A5_rodata

# .rodata:0x48 | 0x23A8 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_gon_00006178, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_gon_00006178

# .rodata:0x5C | 0x23BC | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_gon_0000618c, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_gon_0000618c

# .rodata:0x75 | 0x23D5 | size: 0x3
.obj gap_03_000023D5_rodata, global
.hidden gap_03_000023D5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000023D5_rodata

# .rodata:0x78 | 0x23D8 | size: 0x8
.obj str_GNB_N_1_gon_000061a8, local
	.string "GNB_N_1"
.endobj str_GNB_N_1_gon_000061a8

# .rodata:0x80 | 0x23E0 | size: 0x8
.obj str_GNB_X_1_gon_000061b0, local
	.string "GNB_X_1"
.endobj str_GNB_X_1_gon_000061b0

# .rodata:0x88 | 0x23E8 | size: 0x8
.obj str_GNB_Z_1_gon_000061b8, local
	.string "GNB_Z_1"
.endobj str_GNB_Z_1_gon_000061b8

# .rodata:0x90 | 0x23F0 | size: 0x8
.obj str_GNB_S_3_gon_000061c0, local
	.string "GNB_S_3"
.endobj str_GNB_S_3_gon_000061c0

# .rodata:0x98 | 0x23F8 | size: 0x8
.obj str_GNB_T_3_gon_000061c8, local
	.string "GNB_T_3"
.endobj str_GNB_T_3_gon_000061c8

# .rodata:0xA0 | 0x2400 | size: 0x8
.obj str_GNB_D_1_gon_000061d0, local
	.string "GNB_D_1"
.endobj str_GNB_D_1_gon_000061d0

# .rodata:0xA8 | 0x2408 | size: 0x8
.obj str_GNB_S_4_gon_000061d8, local
	.string "GNB_S_4"
.endobj str_GNB_S_4_gon_000061d8

# .rodata:0xB0 | 0x2410 | size: 0x8
.obj str_GNB_T_4_gon_000061e0, local
	.string "GNB_T_4"
.endobj str_GNB_T_4_gon_000061e0

# .rodata:0xB8 | 0x2418 | size: 0x8
.obj str_GNB_V_1_gon_000061e8, local
	.string "GNB_V_1"
.endobj str_GNB_V_1_gon_000061e8

# .rodata:0xC0 | 0x2420 | size: 0xA
.obj str_c_gonbaba_gon_000061f0, local
	.string "c_gonbaba"
.endobj str_c_gonbaba_gon_000061f0

# .rodata:0xCA | 0x242A | size: 0x2
.obj gap_03_0000242A_rodata, global
.hidden gap_03_0000242A_rodata
	.2byte 0x0000
.endobj gap_03_0000242A_rodata

# .rodata:0xCC | 0x242C | size: 0xB
.obj str_c_gonbaba4_gon_000061fc, local
	.string "c_gonbaba4"
.endobj str_c_gonbaba4_gon_000061fc

# .rodata:0xD7 | 0x2437 | size: 0x1
.obj gap_03_00002437_rodata, global
.hidden gap_03_00002437_rodata
	.byte 0x00
.endobj gap_03_00002437_rodata

# .rodata:0xD8 | 0x2438 | size: 0x7
.obj str_dontyo_gon_00006208, local
	.string "dontyo"
.endobj str_dontyo_gon_00006208

# .rodata:0xDF | 0x243F | size: 0x1
.obj gap_03_0000243F_rodata, global
.hidden gap_03_0000243F_rodata
	.byte 0x00
.endobj gap_03_0000243F_rodata

# .rodata:0xE0 | 0x2440 | size: 0x6
.obj str_M_I_Y_gon_00006210, local
	.string "M_I_Y"
.endobj str_M_I_Y_gon_00006210

# .rodata:0xE6 | 0x2446 | size: 0x2
.obj gap_03_00002446_rodata, global
.hidden gap_03_00002446_rodata
	.2byte 0x0000
.endobj gap_03_00002446_rodata

# .rodata:0xE8 | 0x2448 | size: 0x8
.obj str_GNB_F_3_gon_00006218, local
	.string "GNB_F_3"
.endobj str_GNB_F_3_gon_00006218

# .rodata:0xF0 | 0x2450 | size: 0x6
.obj str_M_I_O_gon_00006220, local
	.string "M_I_O"
.endobj str_M_I_O_gon_00006220

# .rodata:0xF6 | 0x2456 | size: 0x2
.obj gap_03_00002456_rodata, global
.hidden gap_03_00002456_rodata
	.2byte 0x0000
.endobj gap_03_00002456_rodata

# .rodata:0xF8 | 0x2458 | size: 0x1D
.obj str_SFX_VOICE_MARIO_SURP_gon_00006228, local
	.string "SFX_VOICE_MARIO_SURPRISED2_2"
.endobj str_SFX_VOICE_MARIO_SURP_gon_00006228

# .rodata:0x115 | 0x2475 | size: 0x3
.obj gap_03_00002475_rodata, global
.hidden gap_03_00002475_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002475_rodata

# .rodata:0x118 | 0x2478 | size: 0x15
.obj str_SFX_BOSS_GNB_APPEAR1_gon_00006248, local
	.string "SFX_BOSS_GNB_APPEAR1"
.endobj str_SFX_BOSS_GNB_APPEAR1_gon_00006248

# .rodata:0x12D | 0x248D | size: 0x3
.obj gap_03_0000248D_rodata, global
.hidden gap_03_0000248D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000248D_rodata

# .rodata:0x130 | 0x2490 | size: 0xE
.obj str_stg1_gon_20_3_gon_00006260, local
	.string "stg1_gon_20_3"
.endobj str_stg1_gon_20_3_gon_00006260
	.2byte 0x0000

# .rodata:0x140 | 0x24A0 | size: 0x4
.obj float_100_gon_00006270, local
	.float 100
.endobj float_100_gon_00006270

# .rodata:0x144 | 0x24A4 | size: 0x4
.obj float_205_gon_00006274, local
	.float 205
.endobj float_205_gon_00006274

# .rodata:0x148 | 0x24A8 | size: 0x4
.obj float_270_gon_00006278, local
	.float 270
.endobj float_270_gon_00006278

# .rodata:0x14C | 0x24AC | size: 0x4
.obj float_360_gon_0000627c, local
	.float 360
.endobj float_360_gon_0000627c

# .rodata:0x150 | 0x24B0 | size: 0x4
.obj float_90_gon_00006280, local
	.float 90
.endobj float_90_gon_00006280

# .rodata:0x154 | 0x24B4 | size: 0x4
.obj float_500_gon_00006284, local
	.float 500
.endobj float_500_gon_00006284

# .rodata:0x158 | 0x24B8 | size: 0x4
.obj float_6_gon_00006288, local
	.float 6
.endobj float_6_gon_00006288

# .rodata:0x15C | 0x24BC | size: 0x4
.obj float_0p67_gon_0000628c, local
	.float 0.67
.endobj float_0p67_gon_0000628c

# .rodata:0x160 | 0x24C0 | size: 0x8
.obj double_to_int_gon_00006290, local
	.double 4503601774854144
.endobj double_to_int_gon_00006290

# .rodata:0x168 | 0x24C8 | size: 0xC
.obj str_stg1_gon_23_gon_00006298, local
	.string "stg1_gon_23"
.endobj str_stg1_gon_23_gon_00006298

# .rodata:0x174 | 0x24D4 | size: 0xC
.obj str_stg1_gon_24_gon_000062a4, local
	.string "stg1_gon_24"
.endobj str_stg1_gon_24_gon_000062a4

# .rodata:0x180 | 0x24E0 | size: 0x13
.obj str_stg1_gon_24_yesno1_gon_000062b0, local
	.string "stg1_gon_24_yesno1"
.endobj str_stg1_gon_24_yesno1_gon_000062b0

# .rodata:0x193 | 0x24F3 | size: 0x1
.obj gap_03_000024F3_rodata, global
.hidden gap_03_000024F3_rodata
	.byte 0x00
.endobj gap_03_000024F3_rodata

# .rodata:0x194 | 0x24F4 | size: 0xC
.obj str_stg1_gon_25_gon_000062c4, local
	.string "stg1_gon_25"
.endobj str_stg1_gon_25_gon_000062c4

# .rodata:0x1A0 | 0x2500 | size: 0x14
.obj str_SFX_VOICE_MARIO_NO1_gon_000062d0, local
	.string "SFX_VOICE_MARIO_NO1"
.endobj str_SFX_VOICE_MARIO_NO1_gon_000062d0

# .rodata:0x1B4 | 0x2514 | size: 0x6
.obj str_M_N_C_gon_000062e4, local
	.string "M_N_C"
.endobj str_M_N_C_gon_000062e4

# .rodata:0x1BA | 0x251A | size: 0x2
.obj gap_03_0000251A_rodata, global
.hidden gap_03_0000251A_rodata
	.2byte 0x0000
.endobj gap_03_0000251A_rodata

# .rodata:0x1BC | 0x251C | size: 0xC
.obj str_stg1_gon_26_gon_000062ec, local
	.string "stg1_gon_26"
.endobj str_stg1_gon_26_gon_000062ec

# .rodata:0x1C8 | 0x2528 | size: 0x13
.obj str_stg1_gon_26_yesno1_gon_000062f8, local
	.string "stg1_gon_26_yesno1"
.endobj str_stg1_gon_26_yesno1_gon_000062f8

# .rodata:0x1DB | 0x253B | size: 0x1
.obj gap_03_0000253B_rodata, global
.hidden gap_03_0000253B_rodata
	.byte 0x00
.endobj gap_03_0000253B_rodata

# .rodata:0x1DC | 0x253C | size: 0xC
.obj str_stg1_gon_27_gon_0000630c, local
	.string "stg1_gon_27"
.endobj str_stg1_gon_27_gon_0000630c

# .rodata:0x1E8 | 0x2548 | size: 0xC
.obj str_stg1_gon_28_gon_00006318, local
	.string "stg1_gon_28"
.endobj str_stg1_gon_28_gon_00006318

# .rodata:0x1F4 | 0x2554 | size: 0x13
.obj str_stg1_gon_28_yesno1_gon_00006324, local
	.string "stg1_gon_28_yesno1"
.endobj str_stg1_gon_28_yesno1_gon_00006324

# .rodata:0x207 | 0x2567 | size: 0x1
.obj gap_03_00002567_rodata, global
.hidden gap_03_00002567_rodata
	.byte 0x00
.endobj gap_03_00002567_rodata

# .rodata:0x208 | 0x2568 | size: 0xC
.obj str_stg1_gon_29_gon_00006338, local
	.string "stg1_gon_29"
.endobj str_stg1_gon_29_gon_00006338

# .rodata:0x214 | 0x2574 | size: 0x14
.obj str_SFX_VOICE_MARIO_NO2_gon_00006344, local
	.string "SFX_VOICE_MARIO_NO2"
.endobj str_SFX_VOICE_MARIO_NO2_gon_00006344

# .rodata:0x228 | 0x2588 | size: 0xC
.obj str_stg1_gon_31_gon_00006358, local
	.string "stg1_gon_31"
.endobj str_stg1_gon_31_gon_00006358

# .rodata:0x234 | 0x2594 | size: 0x6
.obj str_M_C_4_gon_00006364, local
	.string "M_C_4"
.endobj str_M_C_4_gon_00006364

# .rodata:0x23A | 0x259A | size: 0x2
.obj gap_03_0000259A_rodata, global
.hidden gap_03_0000259A_rodata
	.2byte 0x0000
.endobj gap_03_0000259A_rodata

# .rodata:0x23C | 0x259C | size: 0x13
.obj str_SFX_BOSS_GNB_BITE1_gon_0000636c, local
	.string "SFX_BOSS_GNB_BITE1"
.endobj str_SFX_BOSS_GNB_BITE1_gon_0000636c

# .rodata:0x24F | 0x25AF | size: 0x1
.obj gap_03_000025AF_rodata, global
.hidden gap_03_000025AF_rodata
	.byte 0x00
.endobj gap_03_000025AF_rodata

# .rodata:0x250 | 0x25B0 | size: 0x13
.obj str_SFX_BOSS_GNB_BITE2_gon_00006380, local
	.string "SFX_BOSS_GNB_BITE2"
.endobj str_SFX_BOSS_GNB_BITE2_gon_00006380

# .rodata:0x263 | 0x25C3 | size: 0x1
.obj gap_03_000025C3_rodata, global
.hidden gap_03_000025C3_rodata
	.byte 0x00
.endobj gap_03_000025C3_rodata

# .rodata:0x264 | 0x25C4 | size: 0x8
.obj str_GNB_A_2_gon_00006394, local
	.string "GNB_A_2"
.endobj str_GNB_A_2_gon_00006394

# .rodata:0x26C | 0x25CC | size: 0xC
.obj str_stg1_gon_30_gon_0000639c, local
	.string "stg1_gon_30"
.endobj str_stg1_gon_30_gon_0000639c

# .rodata:0x278 | 0x25D8 | size: 0xF
.obj str_stg1_gon_30_01_gon_000063a8, local
	.string "stg1_gon_30_01"
.endobj str_stg1_gon_30_01_gon_000063a8

# .rodata:0x287 | 0x25E7 | size: 0x1
.obj gap_03_000025E7_rodata, global
.hidden gap_03_000025E7_rodata
	.byte 0x00
.endobj gap_03_000025E7_rodata

# .rodata:0x288 | 0x25E8 | size: 0xF
.obj str_stg1_gon_30_02_gon_000063b8, local
	.string "stg1_gon_30_02"
.endobj str_stg1_gon_30_02_gon_000063b8

# .rodata:0x297 | 0x25F7 | size: 0x1
.obj gap_03_000025F7_rodata, global
.hidden gap_03_000025F7_rodata
	.byte 0x00
.endobj gap_03_000025F7_rodata

# .rodata:0x298 | 0x25F8 | size: 0xF
.obj str_stg1_gon_30_03_gon_000063c8, local
	.string "stg1_gon_30_03"
.endobj str_stg1_gon_30_03_gon_000063c8

# .rodata:0x2A7 | 0x2607 | size: 0x1
.obj gap_03_00002607_rodata, global
.hidden gap_03_00002607_rodata
	.byte 0x00
.endobj gap_03_00002607_rodata

# .rodata:0x2A8 | 0x2608 | size: 0xF
.obj str_stg1_gon_30_04_gon_000063d8, local
	.string "stg1_gon_30_04"
.endobj str_stg1_gon_30_04_gon_000063d8

# .rodata:0x2B7 | 0x2617 | size: 0x1
.obj gap_03_00002617_rodata, global
.hidden gap_03_00002617_rodata
	.byte 0x00
.endobj gap_03_00002617_rodata

# .rodata:0x2B8 | 0x2618 | size: 0x8
.obj str_GNB_W_4_gon_000063e8, local
	.string "GNB_W_4"
.endobj str_GNB_W_4_gon_000063e8

# .rodata:0x2C0 | 0x2620 | size: 0x13
.obj str_SFX_BOSS_GNB_MOVE1_gon_000063f0, local
	.string "SFX_BOSS_GNB_MOVE1"
.endobj str_SFX_BOSS_GNB_MOVE1_gon_000063f0

# .rodata:0x2D3 | 0x2633 | size: 0x1
.obj gap_03_00002633_rodata, global
.hidden gap_03_00002633_rodata
	.byte 0x00
.endobj gap_03_00002633_rodata

# .rodata:0x2D4 | 0x2634 | size: 0x6
.obj str_M_N_7_gon_00006404, local
	.string "M_N_7"
.endobj str_M_N_7_gon_00006404

# .rodata:0x2DA | 0x263A | size: 0x2
.obj gap_03_0000263A_rodata, global
.hidden gap_03_0000263A_rodata
	.2byte 0x0000
.endobj gap_03_0000263A_rodata

# .rodata:0x2DC | 0x263C | size: 0x9
.obj str_recovery_gon_0000640c, local
	.string "recovery"
.endobj str_recovery_gon_0000640c

# .rodata:0x2E5 | 0x2645 | size: 0x3
.obj gap_03_00002645_rodata, global
.hidden gap_03_00002645_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002645_rodata

# .rodata:0x2E8 | 0x2648 | size: 0x8
.obj str_GNB_E_1_gon_00006418, local
	.string "GNB_E_1"
.endobj str_GNB_E_1_gon_00006418

# .rodata:0x2F0 | 0x2650 | size: 0x19
.obj str_SFX_BOSS_GNB_EAT_APP_gon_00006420, local
	.string "SFX_BOSS_GNB_EAT_APPEAR1"
.endobj str_SFX_BOSS_GNB_EAT_APP_gon_00006420

# .rodata:0x309 | 0x2669 | size: 0x3
.obj gap_03_00002669_rodata, global
.hidden gap_03_00002669_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002669_rodata

# .rodata:0x30C | 0x266C | size: 0x8
.obj str_GNB_P_1_gon_0000643c, local
	.string "GNB_P_1"
.endobj str_GNB_P_1_gon_0000643c

# .rodata:0x314 | 0x2674 | size: 0x18
.obj str_SFX_AUDIENCE_GNB_PAN_gon_00006444, local
	.string "SFX_AUDIENCE_GNB_PANIC1"
.endobj str_SFX_AUDIENCE_GNB_PAN_gon_00006444

# .rodata:0x32C | 0x268C | size: 0x18
.obj str_SFX_AUDIENCE_PANIC_R_gon_0000645c, local
	.string "SFX_AUDIENCE_PANIC_RUN1"
.endobj str_SFX_AUDIENCE_PANIC_R_gon_0000645c

# .rodata:0x344 | 0x26A4 | size: 0x18
.obj str_SFX_AUDIENCE_PANIC_R_gon_00006474, local
	.string "SFX_AUDIENCE_PANIC_RUN2"
.endobj str_SFX_AUDIENCE_PANIC_R_gon_00006474

# .rodata:0x35C | 0x26BC | size: 0x12
.obj str_SFX_BOSS_GNB_EAT1_gon_0000648c, local
	.string "SFX_BOSS_GNB_EAT1"
.endobj str_SFX_BOSS_GNB_EAT1_gon_0000648c

# .rodata:0x36E | 0x26CE | size: 0x2
.obj gap_03_000026CE_rodata, global
.hidden gap_03_000026CE_rodata
	.2byte 0x0000
.endobj gap_03_000026CE_rodata

# .rodata:0x370 | 0x26D0 | size: 0x8
.obj str_GNB_S_5_gon_000064a0, local
	.string "GNB_S_5"
.endobj str_GNB_S_5_gon_000064a0

# .rodata:0x378 | 0x26D8 | size: 0x13
.obj str_stg1_gon_31_00_kur_gon_000064a8, local
	.string "stg1_gon_31_00_kur"
.endobj str_stg1_gon_31_00_kur_gon_000064a8

# .rodata:0x38B | 0x26EB | size: 0x1
.obj gap_03_000026EB_rodata, global
.hidden gap_03_000026EB_rodata
	.byte 0x00
.endobj gap_03_000026EB_rodata

# .rodata:0x38C | 0x26EC | size: 0x13
.obj str_stg1_gon_31_00_nok_gon_000064bc, local
	.string "stg1_gon_31_00_nok"
.endobj str_stg1_gon_31_00_nok_gon_000064bc

# .rodata:0x39F | 0x26FF | size: 0x1
.obj gap_03_000026FF_rodata, global
.hidden gap_03_000026FF_rodata
	.byte 0x00
.endobj gap_03_000026FF_rodata

# .rodata:0x3A0 | 0x2700 | size: 0x8
.obj str_GNB_T_5_gon_000064d0, local
	.string "GNB_T_5"
.endobj str_GNB_T_5_gon_000064d0

# .rodata:0x3A8 | 0x2708 | size: 0xF
.obj str_stg1_gon_31_01_gon_000064d8, local
	.string "stg1_gon_31_01"
.endobj str_stg1_gon_31_01_gon_000064d8

# .rodata:0x3B7 | 0x2717 | size: 0x1
.obj gap_03_00002717_rodata, global
.hidden gap_03_00002717_rodata
	.byte 0x00
.endobj gap_03_00002717_rodata

# .rodata:0x3B8 | 0x2718 | size: 0xF
.obj str_stg1_gon_31_02_gon_000064e8, local
	.string "stg1_gon_31_02"
.endobj str_stg1_gon_31_02_gon_000064e8

# .rodata:0x3C7 | 0x2727 | size: 0x1
.obj gap_03_00002727_rodata, global
.hidden gap_03_00002727_rodata
	.byte 0x00
.endobj gap_03_00002727_rodata

# .rodata:0x3C8 | 0x2728 | size: 0xF
.obj str_stg1_gon_31_03_gon_000064f8, local
	.string "stg1_gon_31_03"
.endobj str_stg1_gon_31_03_gon_000064f8

# .rodata:0x3D7 | 0x2737 | size: 0x1
.obj gap_03_00002737_rodata, global
.hidden gap_03_00002737_rodata
	.byte 0x00
.endobj gap_03_00002737_rodata

# .rodata:0x3D8 | 0x2738 | size: 0x7
.obj str_M_J_1B_gon_00006508, local
	.string "M_J_1B"
.endobj str_M_J_1B_gon_00006508

# .rodata:0x3DF | 0x273F | size: 0x1
.obj gap_03_0000273F_rodata, global
.hidden gap_03_0000273F_rodata
	.byte 0x00
.endobj gap_03_0000273F_rodata

# .rodata:0x3E0 | 0x2740 | size: 0x1D
.obj str_SFX_VOICE_MARIO_BATT_gon_00006510, local
	.string "SFX_VOICE_MARIO_BATTLE_JUMP1"
.endobj str_SFX_VOICE_MARIO_BATT_gon_00006510

# .rodata:0x3FD | 0x275D | size: 0x3
.obj gap_03_0000275D_rodata, global
.hidden gap_03_0000275D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000275D_rodata

# .rodata:0x400 | 0x2760 | size: 0x18
.obj str_SFX_MARIO_JUMP_LANDI_gon_00006530, local
	.string "SFX_MARIO_JUMP_LANDING1"
.endobj str_SFX_MARIO_JUMP_LANDI_gon_00006530

# .rodata:0x418 | 0x2778 | size: 0xC
.obj vec3_gon_00006548, local
	.4byte 0xC3480000
	.4byte 0x42480000
	.4byte 0x43FA0000
.endobj vec3_gon_00006548

# .rodata:0x424 | 0x2784 | size: 0x4
.obj float_3_gon_00006554, local
	.float 3
.endobj float_3_gon_00006554

# .rodata:0x428 | 0x2788 | size: 0x1B
.obj str_SFX_AUDIENCE_PANIC_S_gon_00006558, local
	.string "SFX_AUDIENCE_PANIC_SCREAM2"
.endobj str_SFX_AUDIENCE_PANIC_S_gon_00006558

# .rodata:0x443 | 0x27A3 | size: 0x1
.obj gap_03_000027A3_rodata, global
.hidden gap_03_000027A3_rodata
	.byte 0x00
.endobj gap_03_000027A3_rodata

# .rodata:0x444 | 0x27A4 | size: 0x1B
.obj str_SFX_AUDIENCE_PANIC_S_gon_00006574, local
	.string "SFX_AUDIENCE_PANIC_SCREAM3"
.endobj str_SFX_AUDIENCE_PANIC_S_gon_00006574

# .rodata:0x45F | 0x27BF | size: 0x1
.obj gap_03_000027BF_rodata, global
.hidden gap_03_000027BF_rodata
	.byte 0x00
.endobj gap_03_000027BF_rodata

# .rodata:0x460 | 0x27C0 | size: 0x8
.obj str_GNB_D_2_gon_00006590, local
	.string "GNB_D_2"
.endobj str_GNB_D_2_gon_00006590

# .rodata:0x468 | 0x27C8 | size: 0x12
.obj str_SFX_AUDIENCE_RUN1_gon_00006598, local
	.string "SFX_AUDIENCE_RUN1"
.endobj str_SFX_AUDIENCE_RUN1_gon_00006598

# .rodata:0x47A | 0x27DA | size: 0x2
.obj gap_03_000027DA_rodata, global
.hidden gap_03_000027DA_rodata
	.2byte 0x0000
.endobj gap_03_000027DA_rodata

# .rodata:0x47C | 0x27DC | size: 0xC
.obj str_stg1_gon_21_gon_000065ac, local
	.string "stg1_gon_21"
.endobj str_stg1_gon_21_gon_000065ac

# .rodata:0x488 | 0x27E8 | size: 0xC
.obj str_stg1_gon_22_gon_000065b8, local
	.string "stg1_gon_22"
.endobj str_stg1_gon_22_gon_000065b8

# .rodata:0x494 | 0x27F4 | size: 0xF
.obj str_stg1_gon_31_04_gon_000065c4, local
	.string "stg1_gon_31_04"
.endobj str_stg1_gon_31_04_gon_000065c4

# .rodata:0x4A3 | 0x2803 | size: 0x1
.obj gap_03_00002803_rodata, global
.hidden gap_03_00002803_rodata
	.byte 0x00
.endobj gap_03_00002803_rodata

# .rodata:0x4A4 | 0x2804 | size: 0x15
.obj str_SFX_BTL_ATTACK_MISS2_gon_000065d4, local
	.string "SFX_BTL_ATTACK_MISS2"
.endobj str_SFX_BTL_ATTACK_MISS2_gon_000065d4

# .rodata:0x4B9 | 0x2819 | size: 0x3
.obj gap_03_00002819_rodata, global
.hidden gap_03_00002819_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002819_rodata

# .rodata:0x4BC | 0x281C | size: 0x13
.obj str_SFX_BOSS_GNB_DOWN1_gon_000065ec, local
	.string "SFX_BOSS_GNB_DOWN1"
.endobj str_SFX_BOSS_GNB_DOWN1_gon_000065ec

# .rodata:0x4CF | 0x282F | size: 0x1
.obj gap_03_0000282F_rodata, global
.hidden gap_03_0000282F_rodata
	.byte 0x00
.endobj gap_03_0000282F_rodata

# .rodata:0x4D0 | 0x2830 | size: 0xC
.obj str_stg1_gon_32_gon_00006600, local
	.string "stg1_gon_32"
.endobj str_stg1_gon_32_gon_00006600

# .rodata:0x4DC | 0x283C | size: 0x13
.obj str_SFX_BOSS_GNB_DOWN2_gon_0000660c, local
	.string "SFX_BOSS_GNB_DOWN2"
.endobj str_SFX_BOSS_GNB_DOWN2_gon_0000660c

# .rodata:0x4EF | 0x284F | size: 0x1
.obj gap_03_0000284F_rodata, global
.hidden gap_03_0000284F_rodata
	.byte 0x00
.endobj gap_03_0000284F_rodata

# .rodata:0x4F0 | 0x2850 | size: 0x8
.obj str_GNB_D_3_gon_00006620, local
	.string "GNB_D_3"
.endobj str_GNB_D_3_gon_00006620

# .rodata:0x4F8 | 0x2858 | size: 0x8
.obj str_GNB_H_1_gon_00006628, local
	.string "GNB_H_1"
.endobj str_GNB_H_1_gon_00006628

# .rodata:0x500 | 0x2860 | size: 0x13
.obj str_SFX_BOSS_GNB_DOWN3_gon_00006630, local
	.string "SFX_BOSS_GNB_DOWN3"
.endobj str_SFX_BOSS_GNB_DOWN3_gon_00006630

# .rodata:0x513 | 0x2873 | size: 0x1
.obj gap_03_00002873_rodata, global
.hidden gap_03_00002873_rodata
	.byte 0x00
.endobj gap_03_00002873_rodata

# .rodata:0x514 | 0x2874 | size: 0x8
.obj str_GNB_H_2_gon_00006644, local
	.string "GNB_H_2"
.endobj str_GNB_H_2_gon_00006644

# .rodata:0x51C | 0x287C | size: 0x8
.obj str_GNB_H_3_gon_0000664c, local
	.string "GNB_H_3"
.endobj str_GNB_H_3_gon_0000664c

# .rodata:0x524 | 0x2884 | size: 0x8
.obj str_GNB_W_2_gon_00006654, local
	.string "GNB_W_2"
.endobj str_GNB_W_2_gon_00006654

# .rodata:0x52C | 0x288C | size: 0x8
.obj str_GNB_A_3_gon_0000665c, local
	.string "GNB_A_3"
.endobj str_GNB_A_3_gon_0000665c

# .rodata:0x534 | 0x2894 | size: 0x15
.obj str_SFX_BOSS_GNB_ARM_UP1_gon_00006664, local
	.string "SFX_BOSS_GNB_ARM_UP1"
.endobj str_SFX_BOSS_GNB_ARM_UP1_gon_00006664

# .rodata:0x549 | 0x28A9 | size: 0x3
.obj gap_03_000028A9_rodata, global
.hidden gap_03_000028A9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000028A9_rodata

# .rodata:0x54C | 0x28AC | size: 0x17
.obj str_SFX_BOSS_GNB_ARM_DOW_gon_0000667c, local
	.string "SFX_BOSS_GNB_ARM_DOWN1"
.endobj str_SFX_BOSS_GNB_ARM_DOW_gon_0000667c

# .rodata:0x563 | 0x28C3 | size: 0x1
.obj gap_03_000028C3_rodata, global
.hidden gap_03_000028C3_rodata
	.byte 0x00
.endobj gap_03_000028C3_rodata

# .rodata:0x564 | 0x28C4 | size: 0x8
.obj str_GNB_W_3_gon_00006694, local
	.string "GNB_W_3"
.endobj str_GNB_W_3_gon_00006694

# .rodata:0x56C | 0x28CC | size: 0x8
.obj str_GNB_A_1_gon_0000669c, local
	.string "GNB_A_1"
.endobj str_GNB_A_1_gon_0000669c

# .rodata:0x574 | 0x28D4 | size: 0x16
.obj str_SFX_BOSS_GNB_NECK_UP_gon_000066a4, local
	.string "SFX_BOSS_GNB_NECK_UP1"
.endobj str_SFX_BOSS_GNB_NECK_UP_gon_000066a4

# .rodata:0x58A | 0x28EA | size: 0x2
.obj gap_03_000028EA_rodata, global
.hidden gap_03_000028EA_rodata
	.2byte 0x0000
.endobj gap_03_000028EA_rodata

# .rodata:0x58C | 0x28EC | size: 0x1A
.obj str_SFX_BOSS_GNB_BREATH__gon_000066bc, local
	.string "SFX_BOSS_GNB_BREATH_FIRE1"
.endobj str_SFX_BOSS_GNB_BREATH__gon_000066bc

# .rodata:0x5A6 | 0x2906 | size: 0x2
.obj gap_03_00002906_rodata, global
.hidden gap_03_00002906_rodata
	.2byte 0x0000
.endobj gap_03_00002906_rodata

# .rodata:0x5A8 | 0x2908 | size: 0xF
.obj str_gonbaba_breath_gon_000066d8, local
	.string "gonbaba_breath"
.endobj str_gonbaba_breath_gon_000066d8

# .rodata:0x5B7 | 0x2917 | size: 0x1
.obj gap_03_00002917_rodata, global
.hidden gap_03_00002917_rodata
	.byte 0x00
.endobj gap_03_00002917_rodata

# 0x000102E0..0x00014AE8 | size: 0x4808
.data
.balign 8

# .data:0x0 | 0x102E0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x102E8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x102EC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x102F0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x102F4 | size: 0x4
.obj gap_04_000102F4_data, global
.hidden gap_04_000102F4_data
	.4byte 0x00000000
.endobj gap_04_000102F4_data

# .data:0x18 | 0x102F8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x10300 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x10304 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x10308 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x10310 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x10314 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x10318 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x1031C | size: 0x4
.obj gap_04_0001031C_data, global
.hidden gap_04_0001031C_data
	.4byte 0x00000000
.endobj gap_04_0001031C_data

# .data:0x40 | 0x10320 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x10328 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x1032C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x10330 | size: 0xC0
.obj weapon_gonbaba_fumituke_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPower_Gonbaba
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x01101260
	.4byte 0x21002000
	.4byte 0x000B0302
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x000007FF
	.4byte 0x00002004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x0A000000
.endobj weapon_gonbaba_fumituke_attack

# .data:0x110 | 0x103F0 | size: 0xC0
.obj weapon_gonbaba_firebreath_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPower_Gonbaba
	.4byte 0x00000004
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x02101260
	.4byte 0x20000000
	.4byte 0x01000302
	.4byte 0x00000000
	.4byte 0x00000047
	.4byte 0x000007FF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_gonbaba_firebreath_attack

# .data:0x1D0 | 0x104B0 | size: 0xC0
.obj weapon_gonbaba_kamituki_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000000
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x02101260
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00020008
	.4byte 0x000007FF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_gonbaba_kamituki_attack

# .data:0x290 | 0x10570 | size: 0xC4
.obj unit_boss_gonbaba_8_data_10570, global
	.4byte 0x00000017
	.4byte str_btl_un_gonbaba_gon_00006138
	.4byte 0x00140000
	.4byte 0x01014100
	.4byte 0x00640032
	.4byte 0x000900E6
	.4byte 0x00AAFF2E
	.4byte 0x002D0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFF060000
	.4byte 0x438C0000
	.4byte 0x42200000
	.4byte 0x00000000
	.4byte 0x42E60000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x42E60000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41A00000
	.4byte 0x00000000
	.4byte 0x437A0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42E60000
	.4byte 0x42DD0000
	.4byte 0x00000000
	.4byte 0xC3910000
	.4byte 0x42AA0000
	.4byte 0x00000000
	.4byte 0x43660000
	.4byte 0x432A0000
	.4byte 0x0000FF00
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_BOSS_GNB_DAMAGED_gon_00006148
	.4byte str_SFX_BTL_DAMAGE_FIRE1_gon_00006160
	.4byte str_SFX_BTL_DAMAGE_ICE1_gon_00006178
	.4byte str_SFX_BTL_DAMAGE_BIRIB_gon_0000618c
	.4byte 0x00200000
	.4byte regist
	.4byte 0x03000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_boss_gonbaba_8_data_10570

# .data:0x354 | 0x10634 | size: 0x5
.obj defence, local
	.4byte 0x01010101
	.byte 0x01
.endobj defence

# .data:0x359 | 0x10639 | size: 0x3
.obj gap_04_00010639_data, global
.hidden gap_04_00010639_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00010639_data

# .data:0x35C | 0x1063C | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x361 | 0x10641 | size: 0x3
.obj gap_04_00010641_data, global
.hidden gap_04_00010641_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00010641_data

# .data:0x364 | 0x10644 | size: 0x16
.obj regist, local
	.4byte 0x14003200
	.4byte 0x320A6400
	.4byte 0x00003200
	.4byte 0x64006400
	.4byte 0x00640000
	.2byte 0x0000
.endobj regist

# .data:0x37A | 0x1065A | size: 0x2
.obj gap_04_0001065A_data, global
.hidden gap_04_0001065A_data
	.2byte 0x0000
.endobj gap_04_0001065A_data

# .data:0x37C | 0x1065C | size: 0x48
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_GNB_N_1_gon_000061a8
	.4byte 0x00000005
	.4byte str_GNB_X_1_gon_000061b0
	.4byte 0x00000002
	.4byte str_GNB_Z_1_gon_000061b8
	.4byte 0x00000003
	.4byte str_GNB_X_1_gon_000061b0
	.4byte 0x0000001C
	.4byte str_GNB_S_3_gon_000061c0
	.4byte 0x00000041
	.4byte str_GNB_T_3_gon_000061c8
	.4byte 0x0000001F
	.4byte str_GNB_S_3_gon_000061c0
	.4byte 0x00000027
	.4byte str_GNB_D_1_gon_000061d0
	.4byte 0x00000045
	.4byte str_GNB_S_3_gon_000061c0
.endobj pose_table

# .data:0x3C4 | 0x106A4 | size: 0x48
.obj pose_table_weak, local
	.4byte 0x00000001
	.4byte str_GNB_N_1_gon_000061a8
	.4byte 0x00000005
	.4byte str_GNB_X_1_gon_000061b0
	.4byte 0x00000002
	.4byte str_GNB_N_1_gon_000061a8
	.4byte 0x00000003
	.4byte str_GNB_X_1_gon_000061b0
	.4byte 0x0000001C
	.4byte str_GNB_S_4_gon_000061d8
	.4byte 0x00000041
	.4byte str_GNB_T_4_gon_000061e0
	.4byte 0x0000001F
	.4byte str_GNB_S_4_gon_000061d8
	.4byte 0x00000027
	.4byte str_GNB_V_1_gon_000061e8
	.4byte 0x00000045
	.4byte str_GNB_S_4_gon_000061d8
.endobj pose_table_weak

# .data:0x40C | 0x106EC | size: 0x18
.obj data_table, local
	.4byte 0x00000009
	.4byte gonbaba_damage_sub_event
	.4byte 0x00000031
	.4byte dead_event
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x424 | 0x10704 | size: 0xE4
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_gonbaba_gon_00006138
	.4byte str_c_gonbaba_gon_000061f0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x43660000
	.4byte 0x42100000
	.4byte 0x42700000
	.4byte 0x43660000
	.4byte 0x42100000
	.4byte 0x42700000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x00000082
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000002
	.4byte str_btl_un_gonbaba_gon_00006138
	.4byte str_c_gonbaba_gon_000061f0
	.4byte 0x42C80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x437A0000
	.4byte 0x42DC0000
	.4byte 0x41C80000
	.4byte 0x437A0000
	.4byte 0x42DC0000
	.4byte 0x41C80000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x01600089
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000003
	.4byte str_btl_un_gonbaba_gon_00006138
	.4byte str_c_gonbaba4_gon_000061fc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x01010000
	.4byte 0x00000000
	.4byte pose_table
.endobj parts

# .data:0x508 | 0x107E8 | size: 0x5DC
.obj battle_entry_event, local
	.4byte 0x0002005B
	.4byte evt_btl_camera_set_prilimit
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_map_replayanim
	.4byte 0x00000000
	.4byte str_dontyo_gon_00006208
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0000006E
	.4byte 0x00000438
	.4byte 0x00000000
	.4byte 0x0000005D
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetStageSize
	.4byte 0xFE363C86
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0x00020037
	.4byte 0xFE363C86
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFD
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFD
	.4byte 0xFE363C86
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C86
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0004005B
	.4byte btlevtcmd_GetStageSize
	.4byte 0xF1194D80
	.4byte 0xFE363C83
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0xFE363C83
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFD
	.4byte 0x00000001
	.4byte 0x0000002A
	.4byte 0x0003005B
	.4byte btlevtcmd_GetBodyId
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C80
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFD
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0xFE363C80
	.4byte 0x00020036
	.4byte 0xFE363C88
	.4byte 0xFE363C83
	.4byte 0x0002001A
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0x00020037
	.4byte 0xFE363C88
	.4byte 0xFFFFFFFF
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_GetStageSize
	.4byte 0xFE363C86
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0xFE363C86
	.4byte 0x00020035
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0x00020037
	.4byte 0xFE363C86
	.4byte 0xFFFFFFFF
	.4byte 0x00020037
	.4byte 0xFE363C87
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFD
	.4byte 0xFE363C86
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C87
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0000006E
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFC
	.4byte 0xF24A9280
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetBodyId
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C80
	.4byte 0x0000002B
	.4byte 0x00000070
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFD
	.4byte 0xF24A9280
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFD
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFD
	.4byte 0x00000001
	.4byte str_M_I_Y_gon_00006210
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_GNB_F_3_gon_00006218
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x0000000A
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x00000005
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFD
	.4byte 0x00000001
	.4byte str_M_I_O_gon_00006220
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFD
	.4byte 0xF24A7BB3
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFD
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFD
	.4byte str_SFX_VOICE_MARIO_SURP_gon_00006228
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFD
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000019
	.4byte 0xFFFFFFFF
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x00000005
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFC
	.4byte 0xF24A7BB3
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000019
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte btlevtcmd_GetBodyId
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C80
	.4byte 0x00000005
	.4byte 0x0000006D
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GNB_APPEAR1_gon_00006248
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000001
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte 0x00000014
	.4byte 0x0000000D
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFD
	.4byte 0x00000001
	.4byte str_M_I_Y_gon_00006210
	.4byte 0x0003005B
	.4byte btlevtcmd_GetBodyId
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C80
	.4byte 0x0000002B
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000001
	.4byte 0xFFFFFF17
	.4byte 0x0000002D
	.4byte 0x000001C4
	.4byte 0x00000038
	.4byte 0x0000007D
	.4byte 0x00000025
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_SetTalkPose
	.4byte 0xFFFFFFFE
	.4byte str_GNB_T_3_gon_000061c8
	.4byte 0x0003005B
	.4byte btlevtcmd_SetStayPose
	.4byte 0xFFFFFFFE
	.4byte str_GNB_S_3_gon_000061c0
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg1_gon_20_3_gon_00006260
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFD
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFC
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte evt_btl_camera_set_prilimit
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0x00000001
.endobj battle_entry_event

# .data:0xAE4 | 0x10DC4 | size: 0x1BE8
.obj negotiation_event, local
	.4byte 0x0002005B
	.4byte evt_btl_camera_set_prilimit
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_btl_camera_wait_move_end
	.4byte 0x0002005B
	.4byte btlevtcmd_ClearAllStatus
	.4byte 0xFFFFFFFE
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000001
	.4byte 0x0000005D
	.4byte 0x000000A0
	.4byte 0x00000218
	.4byte 0x0000005D
	.4byte 0x0000007B
	.4byte 0x00000019
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0001005B
	.4byte btlevtcmd_reset_move_color_lv_all
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_SetTalkPose
	.4byte 0xFFFFFFFE
	.4byte str_GNB_T_4_gon_000061e0
	.4byte 0x0003005B
	.4byte btlevtcmd_SetStayPose
	.4byte 0xFFFFFFFE
	.4byte str_GNB_S_4_gon_000061d8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg1_gon_23_gon_00006298
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFD
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFD
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000001
	.4byte 0xFFFFFE51
	.4byte 0x0000000A
	.4byte 0x000002DF
	.4byte 0x00000038
	.4byte 0x0000007D
	.4byte 0x00000025
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000005
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg1_gon_24_gon_000062a4
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg1_gon_24_yesno1_gon_000062b0
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg1_gon_25_gon_000062c4
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x00010004
	.4byte 0x00000028
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFD
	.4byte str_SFX_VOICE_MARIO_NO1_gon_000062d0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFD
	.4byte 0x00000001
	.4byte str_M_N_C_gon_000062e4
	.4byte 0x0005005B
	.4byte btlevtcmd_AnimeFlagOnOff
	.4byte 0xFFFFFFFD
	.4byte 0x00000001
	.4byte 0x00000200
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x0000029B
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000001
	.4byte 0x0000005D
	.4byte 0x000000A0
	.4byte 0x00000218
	.4byte 0x0000005D
	.4byte 0x0000007B
	.4byte 0x00000019
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000005
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg1_gon_26_gon_000062ec
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg1_gon_26_yesno1_gon_000062f8
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg1_gon_27_gon_0000630c
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x00010004
	.4byte 0x00000028
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFD
	.4byte str_SFX_VOICE_MARIO_NO1_gon_000062d0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFD
	.4byte 0x00000001
	.4byte str_M_N_C_gon_000062e4
	.4byte 0x0005005B
	.4byte btlevtcmd_AnimeFlagOnOff
	.4byte 0xFFFFFFFD
	.4byte 0x00000001
	.4byte 0x00000200
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x0000029B
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000001
	.4byte 0x0000005D
	.4byte 0x000000A0
	.4byte 0x00000218
	.4byte 0x0000005D
	.4byte 0x0000007B
	.4byte 0x00000019
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000005
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg1_gon_28_gon_00006318
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg1_gon_28_yesno1_gon_00006324
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg1_gon_29_gon_00006338
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x00010004
	.4byte 0x00000028
	.4byte 0x00000021
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFD
	.4byte str_SFX_VOICE_MARIO_NO2_gon_00006344
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFD
	.4byte 0x00000001
	.4byte str_M_N_C_gon_000062e4
	.4byte 0x0005005B
	.4byte btlevtcmd_AnimeFlagOnOff
	.4byte 0xFFFFFFFD
	.4byte 0x00000001
	.4byte 0x00000200
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000001
	.4byte 0x0000005D
	.4byte 0x000000A0
	.4byte 0x00000218
	.4byte 0x0000005D
	.4byte 0x0000007B
	.4byte 0x00000019
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000000F
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg1_gon_31_gon_00006358
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x00010004
	.4byte 0x00000032
	.4byte 0x00010003
	.4byte 0x00000028
	.4byte 0x0003005B
	.4byte btlevtcmd_GetGuardKouraId
	.4byte 0xFFFFFFFD
	.4byte 0xFE363C83
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte btlevtcmd_RunDataEventChild
	.4byte 0xFE363C83
	.4byte 0x0000003B
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFE363C83
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFD
	.4byte 0x00000001
	.4byte 0x0000002A
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFD
	.4byte 0xF24A8680
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000190
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFD
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFD
	.4byte 0x00000001
	.4byte str_M_C_4_gon_00006364
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFD
	.4byte 0x00000001
	.4byte 0x0000002B
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x0000006B
	.4byte 0x0009005B
	.4byte btlevtcmd_snd_se_offset
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GNB_BITE1_gon_0000636c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFFFFFF24
	.4byte 0x00000050
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x0000000F
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0009005B
	.4byte btlevtcmd_snd_se_offset
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GNB_BITE2_gon_00006380
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFFFFFEFC
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_GNB_A_2_gon_00006394
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x00000014
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte btlevtcmd_GetBodyId
	.4byte 0xFFFFFFFD
	.4byte 0xFE363C84
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFFFFFFFD
	.4byte weapon_gonbaba_kamituki_attack
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFD
	.4byte 0xFE363C84
	.4byte weapon_gonbaba_kamituki_attack
	.4byte 0x00100100
	.4byte 0xFE363C85
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFFFFFFFD
	.4byte 0xFE363C80
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckDamageCode
	.4byte 0xFFFFFFFD
	.4byte 0x00000800
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_btl_camera_set_prilimit
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0002005B
	.4byte _wait_damage_event_end
	.4byte 0xFFFFFFFD
	.4byte 0x00000020
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFD
	.4byte 0xFE363C80
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFD
	.4byte 0xFE363C81
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0x00010003
	.4byte 0x00000029
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000029
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_GetGuardKouraId
	.4byte 0xFFFFFFFD
	.4byte 0xFE363C83
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFE363C83
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000001
	.4byte 0xFFFFFF17
	.4byte 0x0000002D
	.4byte 0x000001C4
	.4byte 0x00000038
	.4byte 0x0000007D
	.4byte 0x00000025
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000005
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg1_gon_30_gon_0000639c
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000001
	.4byte 0xFFFFFF8D
	.4byte 0x00000032
	.4byte 0x00000109
	.4byte 0xFFFFFF8D
	.4byte 0x00000031
	.4byte 0x000000AA
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000005
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitKind
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x000000E0
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg1_gon_30_01_gon_000063a8
	.4byte 0x00000000
	.4byte 0xFFFFFFFC
	.4byte 0x00010024
	.4byte 0x000000E1
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg1_gon_30_02_gon_000063b8
	.4byte 0x00000000
	.4byte 0xFFFFFFFC
	.4byte 0x00000031
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000001
	.4byte 0xFFFFFE51
	.4byte 0x0000000A
	.4byte 0x000002DF
	.4byte 0x00000038
	.4byte 0x0000007D
	.4byte 0x00000025
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000005
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg1_gon_30_03_gon_000063c8
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000001
	.4byte 0xFFFFFF17
	.4byte 0x0000002D
	.4byte 0x000001C4
	.4byte 0x00000038
	.4byte 0x0000007D
	.4byte 0x00000025
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg1_gon_30_04_gon_000063d8
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x00000032
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_GNB_W_4_gon_000063e8
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x00000023
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0009005B
	.4byte btlevtcmd_snd_se_offset
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GNB_MOVE1_gon_000063f0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFFFFFFB5
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x0000000D
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x00000017
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0009005B
	.4byte btlevtcmd_snd_se_offset
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GNB_MOVE1_gon_000063f0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFFFFFFF4
	.4byte 0x00000000
	.4byte 0xFFFFFFE2
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x0000000D
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x00000022
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0009005B
	.4byte btlevtcmd_snd_se_offset
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GNB_MOVE1_gon_000063f0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFFFFFFE1
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x0000000D
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x00000017
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0009005B
	.4byte btlevtcmd_snd_se_offset
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GNB_MOVE1_gon_000063f0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0x0000007D
	.4byte 0x00000000
	.4byte 0xFFFFFFE2
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x0000000D
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x00000022
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0009005B
	.4byte btlevtcmd_snd_se_offset
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GNB_MOVE1_gon_000063f0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0x00000089
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x0000000D
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x00000011
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000078
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_GetStageAudienceAreaSize
	.4byte 0xF1194D80
	.4byte 0xFE363C83
	.4byte 0xF1194D80
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0xFE363C83
	.4byte 0x0004005B
	.4byte btlevtcmd_GetStageSize
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0xFE363C83
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000050
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000104
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0001005B
	.4byte _set_gonbaba_light
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x00001770
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0002005B
	.4byte evt_btl_camera_noshake
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0000000C
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_batstage_set_aud_dark
	.4byte 0x00000000
	.4byte 0x00000018
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_batstage_set_aud_dark_base
	.4byte 0x00000000
	.4byte 0x00000018
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFD
	.4byte 0x00000001
	.4byte str_M_N_7_gon_00006404
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFD
	.4byte 0xF24A7D4C
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFD
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFD
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0xFFFFFFFF
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFD
	.4byte 0x00000001
	.4byte str_M_I_Y_gon_00006210
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x00010009
	.4byte 0x00000028
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFC
	.4byte 0xF24A7D4C
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0xFFFFFFFF
	.4byte 0x0000006D
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x0000000D
	.4byte 0x0001005C
	.4byte gon_extra_eaten_event
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x0000000E
	.4byte 0x0001005C
	.4byte gon_extra_eaten_event
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000020
	.4byte 0x0001005C
	.4byte gon_extra_eaten_event
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000021
	.4byte 0x0001005C
	.4byte gon_extra_eaten_event
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000022
	.4byte 0x0001005C
	.4byte gon_extra_eaten_event
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000023
	.4byte 0x0001005C
	.4byte gon_extra_eaten_event
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000035
	.4byte 0x0001005C
	.4byte gon_extra_eaten_event
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000036
	.4byte 0x0001005C
	.4byte gon_extra_eaten_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetHp
	.4byte 0xFFFFFFFE
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x000000B4
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000046
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_recovery_gon_0000640c
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_GNB_E_1_gon_00006418
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GNB_EAT_APP_gon_00006420
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte str_GNB_P_1_gon_0000643c
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x0000000E
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0x01000000
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x00000038
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x00000020
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_AUDIENCE_GNB_PAN_gon_00006444
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000064
	.4byte 0x0004005B
	.4byte evt_audience_flag_check
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0xFE363C84
	.4byte 0x00020018
	.4byte 0xFE363C84
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x0000003C
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_audience_flag_check
	.4byte 0xFE363C80
	.4byte 0x00000010
	.4byte 0xFE363C84
	.4byte 0x00020019
	.4byte 0xFE363C84
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x0000003C
	.4byte 0x00000021
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_audience_flag_on
	.4byte 0xFE363C80
	.4byte 0x00000012
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x0004005B
	.4byte evt_audience_set_animpose
	.4byte 0xFE363C80
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_audience_set_animpose
	.4byte 0xFE363C80
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_audience_get_position
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000005
	.4byte 0xFE363C85
	.4byte 0x00020035
	.4byte 0xFE363C85
	.4byte 0x00000011
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0xFE363C85
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000008
	.4byte 0xFE363C86
	.4byte 0x00020035
	.4byte 0xFE363C86
	.4byte 0x00000004
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0xFE363C80
	.4byte 0x00020039
	.4byte 0xFE363C8B
	.4byte 0x0000000A
	.4byte 0x00020019
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFFF
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000002
	.4byte 0xFE363C8B
	.4byte 0x00010022
	.4byte 0xFE363C8B
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFFF
	.4byte 0x0000002A
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFFF
	.4byte 0x00000031
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte evt_audience_jump_position_firstsp
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C86
	.4byte 0xF24A7C80
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000000B
	.4byte 0xFE363C87
	.4byte 0x00010009
	.4byte 0xFE363C87
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0xFE363C85
	.4byte 0x0007005B
	.4byte evt_audience_jump_position_firstsp
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C86
	.4byte 0xF24A7A80
	.4byte 0x0004005B
	.4byte evt_audience_set_animpose
	.4byte 0xFE363C80
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000012C
	.4byte 0xFE363C86
	.4byte 0x00020035
	.4byte 0xFE363C86
	.4byte 0x00000190
	.4byte 0x0001000A
	.4byte 0xFE363C86
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x0000002B
	.4byte 0x0004005B
	.4byte evt_audience_set_animpose
	.4byte 0xFE363C80
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_audience_set_rotate
	.4byte 0xFE363C80
	.4byte 0xFFFFFFA6
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_audience_get_position
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_audience_set_position
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00020019
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8B
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_audience_get_position
	.4byte 0xFE363C80
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0xFE363C8A
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte 0xFE363C80
	.4byte 0x00020039
	.4byte 0xFE363C8C
	.4byte 0x0000000A
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFFF
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000001
	.4byte 0xFE363C8C
	.4byte 0x00020018
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_AUDIENCE_PANIC_R_gon_0000645c
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0xFE363C8A
	.4byte 0xFE363C8C
	.4byte 0x00000020
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_AUDIENCE_PANIC_R_gon_00006474
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0xFE363C8A
	.4byte 0xFE363C8C
	.4byte 0x00000021
	.4byte 0x0001006F
	.4byte 0xFE363C8D
	.4byte 0x00010005
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_audience_get_position
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0005005B
	.4byte evt_snd_sfx_pos
	.4byte 0xFE363C8C
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00020019
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte evt_snd_sfx_pos
	.4byte 0xFE363C8B
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_audience_set_animpose
	.4byte 0xFE363C80
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte _btlgon_get_escape_param
	.4byte 0xFE363C81
	.4byte 0xFE363C83
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x0005005B
	.4byte evt_audience_get_position
	.4byte 0xFE363C80
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C85
	.4byte 0xFE363C88
	.4byte 0x00020035
	.4byte 0xFE363C86
	.4byte 0xFE363C8A
	.4byte 0x0006005B
	.4byte evt_audience_move_position_speed
	.4byte 0xFE363C80
	.4byte 0xFE363C85
	.4byte 0xFE363C82
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x00020019
	.4byte 0xFE363C8B
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8B
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFFF
	.4byte 0x0001005F
	.4byte 0xFE363C8D
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8C
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_audience_delete
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte evt_audience_num_updown_in_event
	.4byte 0xF24A7680
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x00010003
	.4byte 0x0000003C
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010005
	.4byte 0x00000064
	.4byte 0x0002005B
	.4byte evt_audience_delete
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte evt_audience_num_updown_in_event
	.4byte 0xF24A7680
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x00000026
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0000006E
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x00000004
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GNB_EAT1_gon_0000648c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x0000002D
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GNB_EAT1_gon_0000648c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x0000002E
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GNB_EAT1_gon_0000648c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x0000002E
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GNB_EAT1_gon_0000648c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x0000002E
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GNB_EAT1_gon_0000648c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x0000002C
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GNB_EAT1_gon_0000648c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x0000002E
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GNB_EAT1_gon_0000648c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000070
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0000008C
	.4byte 0x00000384
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x0000011C
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000001
	.4byte 0xFFFFFF8D
	.4byte 0x00000032
	.4byte 0x000000C8
	.4byte 0xFFFFFF8D
	.4byte 0xFFFFFFE2
	.4byte 0xFFFFFD62
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000019
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_GNB_S_5_gon_000064a0
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0x01000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitKind
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x000000E0
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg1_gon_31_00_kur_gon_000064a8
	.4byte 0x00000000
	.4byte 0xFFFFFFFC
	.4byte 0x00010024
	.4byte 0x000000E1
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg1_gon_31_00_nok_gon_000064bc
	.4byte 0x00000000
	.4byte 0xFFFFFFFC
	.4byte 0x00000031
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000001
	.4byte 0x00000028
	.4byte 0x00000062
	.4byte 0x000002AE
	.4byte 0x00000039
	.4byte 0x0000007D
	.4byte 0x000000B6
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte btlevtcmd_SetTogeOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000136
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_SetTalkPose
	.4byte 0xFFFFFFFE
	.4byte str_GNB_T_5_gon_000064d0
	.4byte 0x0003005B
	.4byte btlevtcmd_SetStayPose
	.4byte 0xFFFFFFFE
	.4byte str_GNB_S_5_gon_000064a0
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg1_gon_31_01_gon_000064d8
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0005005B
	.4byte btlevtcmd_SetTogeOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000001
	.4byte 0xFFFFFF8D
	.4byte 0x00000028
	.4byte 0x000000C8
	.4byte 0xFFFFFF8D
	.4byte 0x00000027
	.4byte 0x000000AA
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_GNB_S_3_gon_000061c0
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000104
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFD
	.4byte 0x00000001
	.4byte str_M_I_Y_gon_00006210
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitKind
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x000000E0
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg1_gon_31_02_gon_000064e8
	.4byte 0x00000000
	.4byte 0xFFFFFFFC
	.4byte 0x00010024
	.4byte 0x000000E1
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg1_gon_31_03_gon_000064f8
	.4byte 0x00000000
	.4byte 0xFFFFFFFC
	.4byte 0x00000031
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0000006E
	.4byte 0x0000035C
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x000000AA
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0003005B
	.4byte btlevtcmd_GetBodyId
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C86
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C86
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFD
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0004005B
	.4byte btlevtcmd_GetStageAudienceAreaSize
	.4byte 0xF1194D80
	.4byte 0xFE363C86
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_GetStageSize
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0xFE363C87
	.4byte 0x0000006B
	.4byte 0x00020035
	.4byte 0xFE363C84
	.4byte 0xFE363C86
	.4byte 0x00020035
	.4byte 0xFE363C85
	.4byte 0xFE363C87
	.4byte 0x00020035
	.4byte 0xFE363C85
	.4byte 0x00000050
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFC
	.4byte 0xF24A7D4C
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0000001B
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0000006D
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0xFE363C86
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0xFE363C87
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000050
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFD
	.4byte 0xF24A7D4C
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFD
	.4byte 0x00000001
	.4byte str_M_J_1B_gon_00006508
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFD
	.4byte str_SFX_VOICE_MARIO_BATT_gon_00006510
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFD
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001B
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFFFFFFFD
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFD
	.4byte str_SFX_MARIO_JUMP_LANDI_gon_00006530
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_GetBodyId
	.4byte 0xFFFFFFFD
	.4byte 0xFE363C83
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFD
	.4byte 0xFE363C83
	.4byte str_M_I_Y_gon_00006210
	.4byte 0x0003005B
	.4byte btlevtcmd_GetBodyId
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C84
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C84
	.4byte 0x00000045
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0001005B
	.4byte btlevtcmd_reset_turn
	.4byte 0x0002005B
	.4byte evt_btl_camera_set_prilimit
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_onoff_battleflag
	.4byte 0x00000001
	.4byte 0x00000100
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFD
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFC
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj negotiation_event

# .data:0x26CC | 0x129AC | size: 0x614
.obj gon_extra_eaten_event, local
	.4byte 0x00010009
	.4byte 0x0000000E
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_audience_flag_on
	.4byte 0xFE363C80
	.4byte 0x00000012
	.4byte 0x0003005B
	.4byte evt_audience_flag_off
	.4byte 0xFE363C80
	.4byte 0x00000004
	.4byte 0x0004005B
	.4byte evt_audience_set_animpose
	.4byte 0xFE363C80
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_audience_get_position
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000028
	.4byte 0x0005005B
	.4byte evt_audience_set_position
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000050
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0x00000050
	.4byte 0x0006005B
	.4byte evt_audience_move_position_speed
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xF24AA280
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_audience_flag_on
	.4byte 0xFE363C80
	.4byte 0x00000004
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_audience_set_rotate_offset
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000012
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x0000002D
	.4byte 0x00020035
	.4byte 0xFE363C84
	.4byte 0x00000002
	.4byte 0x00020035
	.4byte 0xFE363C85
	.4byte 0x0000000F
	.4byte 0x0005005B
	.4byte evt_audience_set_rotate
	.4byte 0xFE363C80
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_audience_get_position
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0004005B
	.4byte btlevtcmd_GetStageAudienceAreaSize
	.4byte 0xF1194D80
	.4byte 0xFE363C82
	.4byte 0xF1194D80
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0x00000028
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_audience_jump_position_firstsp
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0000003C
	.4byte 0xF24A7E80
	.4byte 0x0005005B
	.4byte evt_audience_set_rotate_offset
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_audience_set_rotate
	.4byte 0xFE363C80
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_audience_set_rotate_offset
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x0000005A
	.4byte 0x00010005
	.4byte 0x0000005A
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_audience_set_rotate
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_audience_set_rotate
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_audience_set_animpose
	.4byte 0xFE363C80
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte evt_audience_get_position
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_AUDIENCE_PANIC_S_gon_00006558
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_AUDIENCE_PANIC_R_gon_0000645c
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C85
	.4byte 0x0001006F
	.4byte 0xFE363C86
	.4byte 0x00010005
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_audience_get_position
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0005005B
	.4byte evt_snd_sfx_pos
	.4byte 0xFE363C85
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte evt_audience_move_position_speed
	.4byte 0xFE363C80
	.4byte 0xFFFFFED4
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xF24A8C80
	.4byte 0x0001005F
	.4byte 0xFE363C86
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C85
	.4byte 0x0002005B
	.4byte evt_audience_delete
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000035
	.4byte 0x0003005B
	.4byte evt_audience_flag_on
	.4byte 0xFE363C80
	.4byte 0x00000004
	.4byte 0x0000006B
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x0000002D
	.4byte 0x00020035
	.4byte 0xFE363C84
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_audience_set_rotate
	.4byte 0xFE363C80
	.4byte 0xFE363C84
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_audience_get_position
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0004005B
	.4byte btlevtcmd_GetStageAudienceAreaSize
	.4byte 0xF1194D80
	.4byte 0xFE363C82
	.4byte 0xF1194D80
	.4byte 0x00020035
	.4byte 0xFE363C83
	.4byte 0x00000028
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_audience_jump_position_firstsp
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0000003C
	.4byte 0xF24A7E80
	.4byte 0x0005005B
	.4byte evt_audience_set_rotate
	.4byte 0xFE363C80
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_audience_set_rotate
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_audience_set_rotate_offset
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x0000005A
	.4byte 0x00010005
	.4byte 0x0000005A
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_audience_set_rotate
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_audience_set_rotate
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_audience_set_animpose
	.4byte 0xFE363C80
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte evt_audience_get_position
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_AUDIENCE_PANIC_S_gon_00006574
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_AUDIENCE_PANIC_R_gon_00006474
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C85
	.4byte 0x0001006F
	.4byte 0xFE363C86
	.4byte 0x00010005
	.4byte 0x000003E8
	.4byte 0x0005005B
	.4byte evt_audience_get_position
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0005005B
	.4byte evt_snd_sfx_pos
	.4byte 0xFE363C85
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte evt_audience_move_position_speed
	.4byte 0xFE363C80
	.4byte 0xFFFFFED4
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xF24A8C80
	.4byte 0x0001005F
	.4byte 0xFE363C86
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C85
	.4byte 0x0002005B
	.4byte evt_audience_delete
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte evt_audience_num_updown_in_event
	.4byte 0xF24A7680
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_audience_delete
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte evt_audience_num_updown_in_event
	.4byte 0xF24A7680
	.4byte 0x00000002
	.4byte 0x00000001
.endobj gon_extra_eaten_event

# .data:0x2CE0 | 0x12FC0 | size: 0x28
.obj damage_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte btldefaultevt_Damage
	.4byte 0x00000002
	.4byte 0x00000001
.endobj damage_event

# .data:0x2D08 | 0x12FE8 | size: 0x8F8
.obj gonbaba_damage_sub_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckDamageCode
	.4byte 0xFFFFFFFE
	.4byte 0x01000000
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFE
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_weak
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_GetDamage
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckDamageCode
	.4byte 0xFFFFFFFE
	.4byte 0x01000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_GetDamagePartsId
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8B
	.4byte 0x00020018
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte str_GNB_D_2_gon_00006590
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte str_GNB_D_1_gon_000061d0
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte 0xFE363C80
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0xFE363C80
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x0000015E
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x0003005B
	.4byte evt_audience_entry
	.4byte 0xFE363C89
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_audience_set_position
	.4byte 0xFE363C89
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte evt_audience_flag_on
	.4byte 0xFE363C89
	.4byte 0x00000016
	.4byte 0x0004005B
	.4byte evt_audience_set_animpose
	.4byte 0xFE363C89
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetStageAudienceAreaSize
	.4byte 0xF1194D80
	.4byte 0xFE363C81
	.4byte 0xF1194D80
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x0007005B
	.4byte evt_audience_jump_position_firstsp
	.4byte 0xFE363C89
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000003C
	.4byte 0xF24A7E80
	.4byte 0x0004005B
	.4byte evt_audience_set_animpose
	.4byte 0xFE363C89
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_audience_get_position
	.4byte 0xFE363C89
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_AUDIENCE_RUN1_gon_00006598
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C87
	.4byte 0x0006005B
	.4byte evt_audience_move_position_speed
	.4byte 0xFE363C89
	.4byte 0xFFFFFED4
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A8C80
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C87
	.4byte 0x0002005B
	.4byte evt_audience_delete
	.4byte 0xFE363C89
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte 0xFE363C80
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0xFE363C80
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000140
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte evt_audience_entry
	.4byte 0xFE363C89
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_audience_set_position
	.4byte 0xFE363C89
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte evt_audience_flag_on
	.4byte 0xFE363C89
	.4byte 0x00000016
	.4byte 0x0004005B
	.4byte evt_audience_set_animpose
	.4byte 0xFE363C89
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetStageAudienceAreaSize
	.4byte 0xF1194D80
	.4byte 0xFE363C81
	.4byte 0xF1194D80
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x0007005B
	.4byte evt_audience_jump_position_firstsp
	.4byte 0xFE363C89
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000036
	.4byte 0xF24A7E80
	.4byte 0x0004005B
	.4byte evt_audience_set_animpose
	.4byte 0xFE363C89
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_audience_get_position
	.4byte 0xFE363C89
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_AUDIENCE_RUN1_gon_00006598
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C87
	.4byte 0x0006005B
	.4byte evt_audience_move_position_speed
	.4byte 0xFE363C89
	.4byte 0xFFFFFED4
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A8C80
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C87
	.4byte 0x0002005B
	.4byte evt_audience_delete
	.4byte 0xFE363C89
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckDamageCode
	.4byte 0xFFFFFFFE
	.4byte 0x00000100
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckDamageCode
	.4byte 0xFFFFFFFE
	.4byte 0x01000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000032
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitAttackEnd
	.4byte 0x0003005B
	.4byte btlevtcmd_SetTalkPose
	.4byte 0xFFFFFFFE
	.4byte str_GNB_T_4_gon_000061e0
	.4byte 0x0003005B
	.4byte btlevtcmd_SetStayPose
	.4byte 0xFFFFFFFE
	.4byte str_GNB_S_4_gon_000061d8
	.4byte 0x0002005B
	.4byte evt_btl_camera_set_prilimit
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_btl_camera_wait_move_end
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000001
	.4byte 0x0000005D
	.4byte 0x000000A0
	.4byte 0x00000218
	.4byte 0x0000005D
	.4byte 0x0000007B
	.4byte 0x00000019
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg1_gon_21_gon_000065ac
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000001
	.4byte 0x0000005D
	.4byte 0x000000A0
	.4byte 0x00000218
	.4byte 0x0000005D
	.4byte 0x0000007B
	.4byte 0x00000019
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg1_gon_22_gon_000065b8
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x00000031
	.4byte 0x0002005B
	.4byte evt_btl_camera_set_prilimit
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00010003
	.4byte 0x00000032
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitAttackEnd
	.4byte 0x0003005B
	.4byte btlevtcmd_SetTalkPose
	.4byte 0xFFFFFFFE
	.4byte str_GNB_T_4_gon_000061e0
	.4byte 0x0003005B
	.4byte btlevtcmd_SetStayPose
	.4byte 0xFFFFFFFE
	.4byte str_GNB_S_4_gon_000061d8
	.4byte 0x0002005B
	.4byte evt_btl_camera_set_prilimit
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_btl_camera_wait_move_end
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x000000A0
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x00000218
	.4byte 0x0004005B
	.4byte btlevtcmd_GetStageAudienceAreaSize
	.4byte 0xF1194D80
	.4byte 0xFE363C85
	.4byte 0xF1194D80
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0xFE363C85
	.4byte 0x0004005B
	.4byte btlevtcmd_GetStageSize
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0xFE363C85
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0xFE363C85
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000050
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0xFE363C81
	.4byte 0x00020036
	.4byte 0xFE363C85
	.4byte 0x00000025
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C86
	.4byte 0x000001FF
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000001
	.4byte 0x0000005D
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000005D
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg1_gon_31_04_gon_000065c4
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte evt_btl_camera_set_prilimit
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x0003005B
	.4byte btlevtcmd_GetDamagePartsId
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_BTL_ATTACK_MISS2_gon_000065d4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj gonbaba_damage_sub_event

# .data:0x3600 | 0x138E0 | size: 0x46C
.obj dead_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte negotiation_event
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_GNB_X_1_gon_000061b0
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GNB_DOWN1_gon_000065ec
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitAttackEnd
	.4byte 0x0002005B
	.4byte evt_btl_camera_set_prilimit
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_btl_camera_wait_move_end
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x000000A0
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x00000218
	.4byte 0x0004005B
	.4byte btlevtcmd_GetStageAudienceAreaSize
	.4byte 0xF1194D80
	.4byte 0xFE363C85
	.4byte 0xF1194D80
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0xFE363C85
	.4byte 0x0004005B
	.4byte btlevtcmd_GetStageSize
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0xFE363C85
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0xFE363C85
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000050
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0xFE363C81
	.4byte 0x00020036
	.4byte 0xFE363C85
	.4byte 0x00000025
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C86
	.4byte 0x000001FF
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000001
	.4byte 0x0000005D
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000005D
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0003005B
	.4byte btlevtcmd_SetTalkPose
	.4byte 0xFFFFFFFE
	.4byte str_GNB_X_1_gon_000061b0
	.4byte 0x0003005B
	.4byte btlevtcmd_SetStayPose
	.4byte 0xFFFFFFFE
	.4byte str_GNB_X_1_gon_000061b0
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000136
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000003C
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg1_gon_32_gon_00006600
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000001
	.4byte 0xFFFFFFDA
	.4byte 0x00000021
	.4byte 0x000003ED
	.4byte 0xFFFFFFDA
	.4byte 0x0000005C
	.4byte 0x0000000D
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GNB_DOWN2_gon_0000660c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_GNB_D_3_gon_00006620
	.4byte 0x00010009
	.4byte 0x0000002A
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_GNB_H_1_gon_00006628
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000019
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_GNB_H_1_gon_00006628
	.4byte 0x0000006B
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x00000064
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0x00000078
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotateOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000028
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C84
	.4byte 0x00020036
	.4byte 0xFE363C84
	.4byte 0x00000003
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7B4C
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0000012C
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000005A
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_BOSS_GNB_DOWN3_gon_00006630
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_GNB_H_2_gon_00006644
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000001
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0000000D
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_GNB_H_3_gon_0000664c
	.4byte 0x0003005B
	.4byte btlevtcmd_GetExp
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte btlevtcmd_StoreExp
	.4byte 0xFE363C80
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0xFE363C80
	.4byte 0x00000006
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0003005B
	.4byte btlevtcmd_KillUnit
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_btl_camera_set_prilimit
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dead_event

# .data:0x3A6C | 0x13D4C | size: 0x280
.obj init_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_OnUnitFlag
	.4byte 0xFFFFFFFE
	.4byte 0x01000000
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventWait
	.4byte 0xFFFFFFFE
	.4byte wait_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventAttack
	.4byte 0xFFFFFFFE
	.4byte attack_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventDamage
	.4byte 0xFFFFFFFE
	.4byte damage_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventConfusion
	.4byte 0xFFFFFFFE
	.4byte btldefaultevt_Confuse
	.4byte 0x0003005B
	.4byte btlevtcmd_SetTalkBodyId
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_audience_delete
	.4byte 0x0000000D
	.4byte 0x0003005B
	.4byte evt_audience_entry
	.4byte 0x0000000D
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_audience_delete
	.4byte 0x0000000E
	.4byte 0x0003005B
	.4byte evt_audience_entry
	.4byte 0x0000000E
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_audience_delete
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_audience_entry
	.4byte 0x00000020
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_audience_delete
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_audience_entry
	.4byte 0x00000021
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_audience_delete
	.4byte 0x00000022
	.4byte 0x0003005B
	.4byte evt_audience_entry
	.4byte 0x00000022
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_audience_delete
	.4byte 0x00000023
	.4byte 0x0003005B
	.4byte evt_audience_entry
	.4byte 0x00000023
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_audience_delete
	.4byte 0x00000035
	.4byte 0x0003005B
	.4byte evt_audience_entry
	.4byte 0x00000035
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_audience_delete
	.4byte 0x00000036
	.4byte 0x0003005B
	.4byte evt_audience_entry
	.4byte 0x00000036
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_audience_flag_on
	.4byte 0x0000000D
	.4byte 0x00000200
	.4byte 0x0003005B
	.4byte evt_audience_flag_on
	.4byte 0x0000000E
	.4byte 0x00000200
	.4byte 0x0003005B
	.4byte evt_audience_flag_on
	.4byte 0x00000020
	.4byte 0x00000200
	.4byte 0x0003005B
	.4byte evt_audience_flag_on
	.4byte 0x00000021
	.4byte 0x00000200
	.4byte 0x0003005B
	.4byte evt_audience_flag_on
	.4byte 0x00000022
	.4byte 0x00000200
	.4byte 0x0003005B
	.4byte evt_audience_flag_on
	.4byte 0x00000023
	.4byte 0x00000200
	.4byte 0x0003005B
	.4byte evt_audience_flag_on
	.4byte 0x00000035
	.4byte 0x00000200
	.4byte 0x0003005B
	.4byte evt_audience_flag_on
	.4byte 0x00000036
	.4byte 0x00000200
	.4byte 0x0002005B
	.4byte evt_audience_base_flag_on
	.4byte 0x00004000
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventEntry
	.4byte 0xFFFFFFFE
	.4byte battle_entry_event
	.4byte 0x0005005B
	.4byte btlevtcmd_SetBaseScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7FB3
	.4byte 0xF24A7FB3
	.4byte 0xF24A7C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x3CEC | 0x13FCC | size: 0x8
.obj phase_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0x3CF4 | 0x13FD4 | size: 0xE0
.obj attack_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_EnemyItemUseCheck
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte firebreath_attack_event
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0x00000002
	.4byte 0x0001005E
	.4byte fumituke_attack_event
	.4byte 0x0000002A
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000063
	.4byte 0xFE363C80
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x0001005E
	.4byte fumituke_attack_event
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte firebreath_attack_event
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x3DD4 | 0x140B4 | size: 0x608
.obj fumituke_attack_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte weapon_gonbaba_fumituke_attack
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte weapon_gonbaba_fumituke_attack
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_AttackDeclare
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitGuardMove
	.4byte 0x0003005B
	.4byte btlevtcmd_PayWeaponCost
	.4byte 0xFFFFFFFE
	.4byte weapon_gonbaba_fumituke_attack
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_GNB_W_2_gon_00006654
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x00000038
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0000006E
	.4byte 0x0009005B
	.4byte btlevtcmd_snd_se_offset
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GNB_MOVE1_gon_000063f0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFFFFFED4
	.4byte 0x00000000
	.4byte 0xFFFFFFE2
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFED4
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0xFFFFFFE2
	.4byte 0x0004005B
	.4byte _leg_smoke_effect
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x0000000D
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x0000002E
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0000006E
	.4byte 0x0009005B
	.4byte btlevtcmd_snd_se_offset
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GNB_MOVE1_gon_000063f0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFFFFFED4
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFED4
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte _leg_smoke_effect
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x0000000D
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_GNB_A_3_gon_0000665c
	.4byte 0x0000006B
	.4byte 0x0009005B
	.4byte btlevtcmd_snd_se_offset
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GNB_ARM_UP1_gon_00006664
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFFFFFEC0
	.4byte 0x0000001E
	.4byte 0x0000001E
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x0000002A
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0009005B
	.4byte btlevtcmd_snd_se_offset
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GNB_ARM_DOW_gon_0000667c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFFFFFE98
	.4byte 0x00000032
	.4byte 0x0000001E
	.4byte 0xF1194D80
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x0000002F
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_gonbaba_fumituke_attack
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00010022
	.4byte 0xFE363C85
	.4byte 0x0001002B
	.4byte 0x00000004
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x0000002E
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000026
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000027
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000028
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000005B
	.4byte 0x0000002A
	.4byte 0x00010004
	.4byte 0x00000061
	.4byte 0x00000031
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x00010004
	.4byte 0x00000061
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte weapon_gonbaba_fumituke_attack
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_gonbaba_fumituke_attack
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00010004
	.4byte 0x00000061
	.4byte 0x00010003
	.4byte 0x00000061
	.4byte 0x0000006E
	.4byte 0x0009005B
	.4byte btlevtcmd_snd_se_offset
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GNB_MOVE1_gon_000063f0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFFFFFE70
	.4byte 0x00000000
	.4byte 0xFFFFFFFB
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFE70
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0xFFFFFFFB
	.4byte 0x0004005B
	.4byte _leg_smoke_effect
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000070
	.4byte 0x00010009
	.4byte 0x00000003
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x0000000D
	.4byte 0x00010009
	.4byte 0x00000007
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte weapon_gonbaba_fumituke_attack
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000000
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0000000D
	.4byte 0x00010009
	.4byte 0x00000023
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_GNB_W_3_gon_00006694
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x00000033
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0000006E
	.4byte 0x0009005B
	.4byte btlevtcmd_snd_se_offset
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GNB_MOVE1_gon_000063f0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFFFFFF4C
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFF4C
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x0004005B
	.4byte _leg_smoke_effect
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x0000000D
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x0000002E
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0000006E
	.4byte 0x0009005B
	.4byte btlevtcmd_snd_se_offset
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GNB_MOVE1_gon_000063f0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFFFFFF9C
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFF9C
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0xFFFFFFE2
	.4byte 0x0004005B
	.4byte _leg_smoke_effect
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x0000000D
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeWaitPlayComplete
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj fumituke_attack_event

# .data:0x43DC | 0x146BC | size: 0x414
.obj firebreath_attack_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte weapon_gonbaba_firebreath_attack
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte weapon_gonbaba_firebreath_attack
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte weapon_gonbaba_firebreath_attack
	.4byte 0x0002005B
	.4byte btlevtcmd_AttackDeclareAll
	.4byte 0xFFFFFFFE
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitGuardMove
	.4byte 0x0003005B
	.4byte btlevtcmd_PayWeaponCost
	.4byte 0xFFFFFFFE
	.4byte weapon_gonbaba_firebreath_attack
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_GNB_A_1_gon_0000669c
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000078
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C86
	.4byte 0x00000168
	.4byte 0x00020035
	.4byte 0xFE363C87
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C89
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C89
	.4byte 0x00000168
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C89
	.4byte 0xFE363C8A
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x0000001E
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GNB_NECK_UP_gon_000066a4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte btlevtcmd_ftomsec
	.4byte 0x00000069
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GNB_BREATH__gon_000066bc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00020035
	.4byte 0xFE363C8B
	.4byte 0x0000002D
	.4byte 0x00020036
	.4byte 0xFE363C88
	.4byte 0x0000000A
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_gonbaba_breath_gon_000066d8
	.4byte 0x00000000
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xF24A8680
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8C
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0x00020036
	.4byte 0xFE363C8C
	.4byte 0xFE363C86
	.4byte 0x0002001A
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00020037
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFFF
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C8C
	.4byte 0x00000014
	.4byte 0x00020037
	.4byte 0xFE363C8C
	.4byte 0xFE363C8B
	.4byte 0x00020038
	.4byte 0xFE363C8C
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C8C
	.4byte 0x00000069
	.4byte 0x00010009
	.4byte 0xFE363C8C
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_gonbaba_firebreath_attack
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00010022
	.4byte 0xFE363C85
	.4byte 0x0001002B
	.4byte 0x00000004
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x0000002E
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000026
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x0000002E
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000027
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000028
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000005B
	.4byte 0x0000002E
	.4byte 0x0000002A
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x0000002E
	.4byte 0x00000031
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x00010004
	.4byte 0x00000061
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte weapon_gonbaba_firebreath_attack
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_gonbaba_firebreath_attack
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00010004
	.4byte 0x00000061
	.4byte 0x00010003
	.4byte 0x00000061
	.4byte 0x0003005B
	.4byte btlevtcmd_GetSelectNextEnemy
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020019
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000054
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj firebreath_attack_event

# .data:0x47F0 | 0x14AD0 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event
