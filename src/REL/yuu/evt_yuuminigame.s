.include "macros.inc"
.file "evt_yuuminigame.s"

# 0x0000AEEC..0x0000B4E0 | size: 0x5F4
.text
.balign 4

# .text:0x0 | 0xAEEC | size: 0x18
.fn yuu_atai_init_29_text_AEEC, global
/* 0000AEEC 0000AFB8  3C 60 00 00 */	lis r3, stackp@ha
/* 0000AEF0 0000AFBC  38 00 00 00 */	li r0, 0x0
/* 0000AEF4 0000AFC0  38 83 00 00 */	addi r4, r3, stackp@l
/* 0000AEF8 0000AFC4  38 60 00 02 */	li r3, 0x2
/* 0000AEFC 0000AFC8  90 04 00 00 */	stw r0, 0x0(r4)
/* 0000AF00 0000AFCC  4E 80 00 20 */	blr
.endfn yuu_atai_init_29_text_AEEC

# .text:0x18 | 0xAF04 | size: 0x58
.fn yuu_atai_pop_29_text_AF04, global
/* 0000AF04 0000AFD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0000AF08 0000AFD4  7C 08 02 A6 */	mflr r0
/* 0000AF0C 0000AFD8  3C 80 00 00 */	lis r4, stackp@ha
/* 0000AF10 0000AFDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000AF14 0000AFE0  38 A4 00 00 */	addi r5, r4, stackp@l
/* 0000AF18 0000AFE4  80 85 00 00 */	lwz r4, 0x0(r5)
/* 0000AF1C 0000AFE8  80 C3 00 18 */	lwz r6, 0x18(r3)
/* 0000AF20 0000AFEC  2C 04 00 00 */	cmpwi r4, 0x0
/* 0000AF24 0000AFF0  40 81 00 24 */	ble .L_0000AF48
/* 0000AF28 0000AFF4  38 04 FF FF */	subi r0, r4, 0x1
/* 0000AF2C 0000AFF8  3C 80 00 00 */	lis r4, stackt@ha
/* 0000AF30 0000AFFC  90 05 00 00 */	stw r0, 0x0(r5)
/* 0000AF34 0000B000  54 00 10 3A */	slwi r0, r0, 2
/* 0000AF38 0000B004  38 A4 00 00 */	addi r5, r4, stackt@l
/* 0000AF3C 0000B008  80 86 00 00 */	lwz r4, 0x0(r6)
/* 0000AF40 0000B00C  7C A5 00 2E */	lwzx r5, r5, r0
/* 0000AF44 0000B010  4B FF 87 81 */	bl evtSetValue
.L_0000AF48:
/* 0000AF48 0000B014  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0000AF4C 0000B018  38 60 00 02 */	li r3, 0x2
/* 0000AF50 0000B01C  7C 08 03 A6 */	mtlr r0
/* 0000AF54 0000B020  38 21 00 10 */	addi r1, r1, 0x10
/* 0000AF58 0000B024  4E 80 00 20 */	blr
.endfn yuu_atai_pop_29_text_AF04

# .text:0x70 | 0xAF5C | size: 0x60
.fn yuu_atai_push_29_text_AF5C, global
/* 0000AF5C 0000B028  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0000AF60 0000B02C  7C 08 02 A6 */	mflr r0
/* 0000AF64 0000B030  3C 80 00 00 */	lis r4, stackp@ha
/* 0000AF68 0000B034  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000AF6C 0000B038  80 04 00 00 */	lwz r0, stackp@l(r4)
/* 0000AF70 0000B03C  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 0000AF74 0000B040  2C 00 00 04 */	cmpwi r0, 0x4
/* 0000AF78 0000B044  40 80 00 30 */	bge .L_0000AFA8
/* 0000AF7C 0000B048  80 85 00 00 */	lwz r4, 0x0(r5)
/* 0000AF80 0000B04C  4B FF 87 45 */	bl evtGetValue
/* 0000AF84 0000B050  3C A0 00 00 */	lis r5, stackp@ha
/* 0000AF88 0000B054  3C 80 00 00 */	lis r4, stackt@ha
/* 0000AF8C 0000B058  38 E5 00 00 */	addi r7, r5, stackp@l
/* 0000AF90 0000B05C  80 C7 00 00 */	lwz r6, 0x0(r7)
/* 0000AF94 0000B060  38 84 00 00 */	addi r4, r4, stackt@l
/* 0000AF98 0000B064  54 C5 10 3A */	slwi r5, r6, 2
/* 0000AF9C 0000B068  38 06 00 01 */	addi r0, r6, 0x1
/* 0000AFA0 0000B06C  7C 64 29 2E */	stwx r3, r4, r5
/* 0000AFA4 0000B070  90 07 00 00 */	stw r0, 0x0(r7)
.L_0000AFA8:
/* 0000AFA8 0000B074  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0000AFAC 0000B078  38 60 00 02 */	li r3, 0x2
/* 0000AFB0 0000B07C  7C 08 03 A6 */	mtlr r0
/* 0000AFB4 0000B080  38 21 00 10 */	addi r1, r1, 0x10
/* 0000AFB8 0000B084  4E 80 00 20 */	blr
.endfn yuu_atai_push_29_text_AF5C

# .text:0xD0 | 0xAFBC | size: 0x90
.fn eff_call_minigame_29_text_AFBC, global
/* 0000AFBC 0000B088  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 0000AFC0 0000B08C  7C 08 02 A6 */	mflr r0
/* 0000AFC4 0000B090  90 01 00 34 */	stw r0, 0x34(r1)
/* 0000AFC8 0000B094  DB E1 00 28 */	stfd f31, 0x28(r1)
/* 0000AFCC 0000B098  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 0000AFD0 0000B09C  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 0000AFD4 0000B0A0  7C 7D 1B 78 */	mr r29, r3
/* 0000AFD8 0000B0A4  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 0000AFDC 0000B0A8  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 0000AFE0 0000B0AC  4B FF 86 E5 */	bl evtGetValue
/* 0000AFE4 0000B0B0  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 0000AFE8 0000B0B4  7C 7E 1B 78 */	mr r30, r3
/* 0000AFEC 0000B0B8  7F A3 EB 78 */	mr r3, r29
/* 0000AFF0 0000B0BC  4B FF 86 D5 */	bl evtGetFloat
/* 0000AFF4 0000B0C0  FF E0 08 90 */	fmr f31, f1
/* 0000AFF8 0000B0C4  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 0000AFFC 0000B0C8  7F A3 EB 78 */	mr r3, r29
/* 0000B000 0000B0CC  4B FF 86 C5 */	bl evtGetFloat
/* 0000B004 0000B0D0  FF C0 08 90 */	fmr f30, f1
/* 0000B008 0000B0D4  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 0000B00C 0000B0D8  7F A3 EB 78 */	mr r3, r29
/* 0000B010 0000B0DC  4B FF 86 B5 */	bl evtGetFloat
/* 0000B014 0000B0E0  FC 00 08 90 */	fmr f0, f1
/* 0000B018 0000B0E4  7F C3 F3 78 */	mr r3, r30
/* 0000B01C 0000B0E8  FC 20 F8 90 */	fmr f1, f31
/* 0000B020 0000B0EC  FC 40 F0 90 */	fmr f2, f30
/* 0000B024 0000B0F0  FC 60 00 90 */	fmr f3, f0
/* 0000B028 0000B0F4  4B FF 86 9D */	bl effMiniGameEntry
/* 0000B02C 0000B0F8  CB E1 00 28 */	lfd f31, 0x28(r1)
/* 0000B030 0000B0FC  38 60 00 02 */	li r3, 0x2
/* 0000B034 0000B100  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 0000B038 0000B104  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 0000B03C 0000B108  80 01 00 34 */	lwz r0, 0x34(r1)
/* 0000B040 0000B10C  7C 08 03 A6 */	mtlr r0
/* 0000B044 0000B110  38 21 00 30 */	addi r1, r1, 0x30
/* 0000B048 0000B114  4E 80 00 20 */	blr
.endfn eff_call_minigame_29_text_AFBC

# .text:0x160 | 0xB04C | size: 0x60
.fn yuuminigame_set_dataadr_29_text_B04C, global
/* 0000B04C 0000B118  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 0000B050 0000B11C  7C 08 02 A6 */	mflr r0
/* 0000B054 0000B120  90 01 00 24 */	stw r0, 0x24(r1)
/* 0000B058 0000B124  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 0000B05C 0000B128  7C 7D 1B 78 */	mr r29, r3
/* 0000B060 0000B12C  83 C3 00 18 */	lwz r30, 0x18(r3)
/* 0000B064 0000B130  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 0000B068 0000B134  4B FF 86 5D */	bl evtGetValue
/* 0000B06C 0000B138  7C 7F 1B 78 */	mr r31, r3
/* 0000B070 0000B13C  2C 1F 00 20 */	cmpwi r31, 0x20
/* 0000B074 0000B140  40 80 00 20 */	bge .L_0000B094
/* 0000B078 0000B144  80 9E 00 04 */	lwz r4, 0x4(r30)
/* 0000B07C 0000B148  7F A3 EB 78 */	mr r3, r29
/* 0000B080 0000B14C  4B FF 86 45 */	bl evtGetValue
/* 0000B084 0000B150  3C 80 00 00 */	lis r4, dataadr@ha
/* 0000B088 0000B154  57 E0 10 3A */	slwi r0, r31, 2
/* 0000B08C 0000B158  38 84 00 00 */	addi r4, r4, dataadr@l
/* 0000B090 0000B15C  7C 64 01 2E */	stwx r3, r4, r0
.L_0000B094:
/* 0000B094 0000B160  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 0000B098 0000B164  38 60 00 02 */	li r3, 0x2
/* 0000B09C 0000B168  80 01 00 24 */	lwz r0, 0x24(r1)
/* 0000B0A0 0000B16C  7C 08 03 A6 */	mtlr r0
/* 0000B0A4 0000B170  38 21 00 20 */	addi r1, r1, 0x20
/* 0000B0A8 0000B174  4E 80 00 20 */	blr
.endfn yuuminigame_set_dataadr_29_text_B04C

# .text:0x1C0 | 0xB0AC | size: 0x70
.fn yuuminigame_get_dataadr_29_text_B0AC, global
/* 0000B0AC 0000B178  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0000B0B0 0000B17C  7C 08 02 A6 */	mflr r0
/* 0000B0B4 0000B180  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000B0B8 0000B184  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 0000B0BC 0000B188  7C 7E 1B 78 */	mr r30, r3
/* 0000B0C0 0000B18C  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 0000B0C4 0000B190  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 0000B0C8 0000B194  4B FF 85 FD */	bl evtGetValue
/* 0000B0CC 0000B198  2C 03 00 20 */	cmpwi r3, 0x20
/* 0000B0D0 0000B19C  41 80 00 18 */	blt .L_0000B0E8
/* 0000B0D4 0000B1A0  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 0000B0D8 0000B1A4  7F C3 F3 78 */	mr r3, r30
/* 0000B0DC 0000B1A8  38 A0 00 00 */	li r5, 0x0
/* 0000B0E0 0000B1AC  4B FF 85 E5 */	bl evtSetValue
/* 0000B0E4 0000B1B0  48 00 00 20 */	b .L_0000B104
.L_0000B0E8:
/* 0000B0E8 0000B1B4  3C 80 00 00 */	lis r4, dataadr@ha
/* 0000B0EC 0000B1B8  54 60 10 3A */	slwi r0, r3, 2
/* 0000B0F0 0000B1BC  38 64 00 00 */	addi r3, r4, dataadr@l
/* 0000B0F4 0000B1C0  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 0000B0F8 0000B1C4  7C A3 00 2E */	lwzx r5, r3, r0
/* 0000B0FC 0000B1C8  7F C3 F3 78 */	mr r3, r30
/* 0000B100 0000B1CC  4B FF 85 C5 */	bl evtSetValue
.L_0000B104:
/* 0000B104 0000B1D0  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 0000B108 0000B1D4  38 60 00 02 */	li r3, 0x2
/* 0000B10C 0000B1D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0000B110 0000B1DC  7C 08 03 A6 */	mtlr r0
/* 0000B114 0000B1E0  38 21 00 10 */	addi r1, r1, 0x10
/* 0000B118 0000B1E4  4E 80 00 20 */	blr
.endfn yuuminigame_get_dataadr_29_text_B0AC

# .text:0x230 | 0xB11C | size: 0xD0
.fn evt_yuuminigame_free, local
/* 0000B11C 0000B1E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 0000B120 0000B1EC  7C 08 02 A6 */	mflr r0
/* 0000B124 0000B1F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 0000B128 0000B1F4  BF 81 00 10 */	stmw r28, 0x10(r1)
/* 0000B12C 0000B1F8  7C 9D 23 78 */	mr r29, r4
/* 0000B130 0000B1FC  7C 7C 1B 78 */	mr r28, r3
/* 0000B134 0000B200  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 0000B138 0000B204  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 0000B13C 0000B208  4B FF 85 89 */	bl evtGetValue
/* 0000B140 0000B20C  7C 7E 1B 79 */	mr. r30, r3
/* 0000B144 0000B210  40 82 00 0C */	bne .L_0000B150
/* 0000B148 0000B214  38 60 00 02 */	li r3, 0x2
/* 0000B14C 0000B218  48 00 00 8C */	b .L_0000B1D8
.L_0000B150:
/* 0000B150 0000B21C  2C 1D 00 00 */	cmpwi r29, 0x0
/* 0000B154 0000B220  41 82 00 10 */	beq .L_0000B164
/* 0000B158 0000B224  A0 1E 00 08 */	lhz r0, 0x8(r30)
/* 0000B15C 0000B228  60 00 00 01 */	ori r0, r0, 0x1
/* 0000B160 0000B22C  B0 1E 00 08 */	sth r0, 0x8(r30)
.L_0000B164:
/* 0000B164 0000B230  A0 1E 00 08 */	lhz r0, 0x8(r30)
/* 0000B168 0000B234  54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 0000B16C 0000B238  40 82 00 0C */	bne .L_0000B178
/* 0000B170 0000B23C  38 60 00 00 */	li r3, 0x0
/* 0000B174 0000B240  48 00 00 64 */	b .L_0000B1D8
.L_0000B178:
/* 0000B178 0000B244  80 1E 00 0C */	lwz r0, 0xc(r30)
/* 0000B17C 0000B248  2C 00 00 03 */	cmpwi r0, 0x3
/* 0000B180 0000B24C  41 82 00 08 */	beq .L_0000B188
/* 0000B184 0000B250  48 00 00 10 */	b .L_0000B194
.L_0000B188:
/* 0000B188 0000B254  3C 60 00 00 */	lis r3, yuunpc_yuuminigame4_ptr_29_bss_E0@ha
/* 0000B18C 0000B258  38 00 00 00 */	li r0, 0x0
/* 0000B190 0000B25C  90 03 00 00 */	stw r0, yuunpc_yuuminigame4_ptr_29_bss_E0@l(r3)
.L_0000B194:
/* 0000B194 0000B260  80 9E 00 1C */	lwz r4, 0x1c(r30)
/* 0000B198 0000B264  28 04 00 00 */	cmplwi r4, 0x0
/* 0000B19C 0000B268  41 82 00 14 */	beq .L_0000B1B0
/* 0000B1A0 0000B26C  3C 60 00 00 */	lis r3, mapalloc_base_ptr@ha
/* 0000B1A4 0000B270  38 63 00 00 */	addi r3, r3, mapalloc_base_ptr@l
/* 0000B1A8 0000B274  80 63 00 00 */	lwz r3, 0x0(r3)
/* 0000B1AC 0000B278  4B FF 85 19 */	bl _mapFree
.L_0000B1B0:
/* 0000B1B0 0000B27C  3C 60 00 00 */	lis r3, mapalloc_base_ptr@ha
/* 0000B1B4 0000B280  7F C4 F3 78 */	mr r4, r30
/* 0000B1B8 0000B284  38 63 00 00 */	addi r3, r3, mapalloc_base_ptr@l
/* 0000B1BC 0000B288  80 63 00 00 */	lwz r3, 0x0(r3)
/* 0000B1C0 0000B28C  4B FF 85 05 */	bl _mapFree
/* 0000B1C4 0000B290  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 0000B1C8 0000B294  7F 83 E3 78 */	mr r3, r28
/* 0000B1CC 0000B298  38 A0 00 00 */	li r5, 0x0
/* 0000B1D0 0000B29C  4B FF 84 F5 */	bl evtSetValue
/* 0000B1D4 0000B2A0  38 60 00 02 */	li r3, 0x2
.L_0000B1D8:
/* 0000B1D8 0000B2A4  BB 81 00 10 */	lmw r28, 0x10(r1)
/* 0000B1DC 0000B2A8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 0000B1E0 0000B2AC  7C 08 03 A6 */	mtlr r0
/* 0000B1E4 0000B2B0  38 21 00 20 */	addi r1, r1, 0x20
/* 0000B1E8 0000B2B4  4E 80 00 20 */	blr
.endfn evt_yuuminigame_free

# .text:0x300 | 0xB1EC | size: 0x224
.fn evt_yuuminigame_alloc_29_text_B1EC, global
/* 0000B1EC 0000B2B8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 0000B1F0 0000B2BC  7C 08 02 A6 */	mflr r0
/* 0000B1F4 0000B2C0  3C A0 00 00 */	lis r5, mapalloc_base_ptr@ha
/* 0000B1F8 0000B2C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 0000B1FC 0000B2C8  BF 81 00 10 */	stmw r28, 0x10(r1)
/* 0000B200 0000B2CC  7C 7D 1B 78 */	mr r29, r3
/* 0000B204 0000B2D0  38 65 00 00 */	addi r3, r5, mapalloc_base_ptr@l
/* 0000B208 0000B2D4  7C 9E 23 78 */	mr r30, r4
/* 0000B20C 0000B2D8  38 80 00 20 */	li r4, 0x20
/* 0000B210 0000B2DC  83 9D 00 18 */	lwz r28, 0x18(r29)
/* 0000B214 0000B2E0  80 63 00 00 */	lwz r3, 0x0(r3)
/* 0000B218 0000B2E4  4B FF 84 AD */	bl _mapAlloc
/* 0000B21C 0000B2E8  38 80 00 00 */	li r4, 0x0
/* 0000B220 0000B2EC  7C 7F 1B 78 */	mr r31, r3
/* 0000B224 0000B2F0  38 A0 00 20 */	li r5, 0x20
/* 0000B228 0000B2F4  4B FF 84 9D */	bl memset
/* 0000B22C 0000B2F8  80 9C 00 00 */	lwz r4, 0x0(r28)
/* 0000B230 0000B2FC  7F A3 EB 78 */	mr r3, r29
/* 0000B234 0000B300  7F E5 FB 78 */	mr r5, r31
/* 0000B238 0000B304  4B FF 84 8D */	bl evtSetValue
/* 0000B23C 0000B308  80 9C 00 04 */	lwz r4, 0x4(r28)
/* 0000B240 0000B30C  7F A3 EB 78 */	mr r3, r29
/* 0000B244 0000B310  4B FF 84 81 */	bl evtGetValue
/* 0000B248 0000B314  3C 80 00 00 */	lis r4, main_evt@ha
/* 0000B24C 0000B318  90 7F 00 0C */	stw r3, 0xc(r31)
/* 0000B250 0000B31C  38 64 00 00 */	addi r3, r4, main_evt@l
/* 0000B254 0000B320  38 A0 00 00 */	li r5, 0x0
/* 0000B258 0000B324  38 80 00 00 */	li r4, 0x0
/* 0000B25C 0000B328  4B FF 84 69 */	bl evtEntry
/* 0000B260 0000B32C  90 7F 00 00 */	stw r3, 0x0(r31)
/* 0000B264 0000B330  38 00 00 00 */	li r0, 0x0
/* 0000B268 0000B334  80 7F 00 00 */	lwz r3, 0x0(r31)
/* 0000B26C 0000B338  93 E3 00 9C */	stw r31, 0x9c(r3)
/* 0000B270 0000B33C  90 1F 00 04 */	stw r0, 0x4(r31)
/* 0000B274 0000B340  80 1F 00 0C */	lwz r0, 0xc(r31)
/* 0000B278 0000B344  2C 00 00 02 */	cmpwi r0, 0x2
/* 0000B27C 0000B348  41 82 00 C4 */	beq .L_0000B340
/* 0000B280 0000B34C  40 80 00 14 */	bge .L_0000B294
/* 0000B284 0000B350  2C 00 00 00 */	cmpwi r0, 0x0
/* 0000B288 0000B354  41 82 00 18 */	beq .L_0000B2A0
/* 0000B28C 0000B358  40 80 00 64 */	bge .L_0000B2F0
/* 0000B290 0000B35C  48 00 01 54 */	b .L_0000B3E4
.L_0000B294:
/* 0000B294 0000B360  2C 00 00 04 */	cmpwi r0, 0x4
/* 0000B298 0000B364  40 80 01 4C */	bge .L_0000B3E4
/* 0000B29C 0000B368  48 00 00 F4 */	b .L_0000B390
.L_0000B2A0:
/* 0000B2A0 0000B36C  3C 80 00 00 */	lis r4, yuuminigame_init_1hikoki_29_text_3B20@ha
/* 0000B2A4 0000B370  3C 60 00 00 */	lis r3, yuuminigame_main_1hikoki_29_text_3A0C@ha
/* 0000B2A8 0000B374  38 04 00 00 */	addi r0, r4, yuuminigame_init_1hikoki_29_text_3B20@l
/* 0000B2AC 0000B378  3C 80 00 00 */	lis r4, yuuminigame_disp_1hikoki_29_text_39EC@ha
/* 0000B2B0 0000B37C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 0000B2B4 0000B380  38 A3 00 00 */	addi r5, r3, yuuminigame_main_1hikoki_29_text_3A0C@l
/* 0000B2B8 0000B384  3C 60 00 00 */	lis r3, mapalloc_base_ptr@ha
/* 0000B2BC 0000B388  38 04 00 00 */	addi r0, r4, yuuminigame_disp_1hikoki_29_text_39EC@l
/* 0000B2C0 0000B38C  90 BF 00 14 */	stw r5, 0x14(r31)
/* 0000B2C4 0000B390  38 63 00 00 */	addi r3, r3, mapalloc_base_ptr@l
/* 0000B2C8 0000B394  38 80 00 18 */	li r4, 0x18
/* 0000B2CC 0000B398  90 1F 00 18 */	stw r0, 0x18(r31)
/* 0000B2D0 0000B39C  80 63 00 00 */	lwz r3, 0x0(r3)
/* 0000B2D4 0000B3A0  4B FF 83 F1 */	bl _mapAlloc
/* 0000B2D8 0000B3A4  90 7F 00 1C */	stw r3, 0x1c(r31)
/* 0000B2DC 0000B3A8  38 80 00 00 */	li r4, 0x0
/* 0000B2E0 0000B3AC  38 A0 00 18 */	li r5, 0x18
/* 0000B2E4 0000B3B0  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 0000B2E8 0000B3B4  4B FF 83 DD */	bl memset
/* 0000B2EC 0000B3B8  48 00 00 F8 */	b .L_0000B3E4
.L_0000B2F0:
/* 0000B2F0 0000B3BC  3C 80 00 00 */	lis r4, yuuminigame_init_2fune_29_text_4BC8@ha
/* 0000B2F4 0000B3C0  3C 60 00 00 */	lis r3, yuuminigame_main_2fune_29_text_4A84@ha
/* 0000B2F8 0000B3C4  38 04 00 00 */	addi r0, r4, yuuminigame_init_2fune_29_text_4BC8@l
/* 0000B2FC 0000B3C8  3C 80 00 00 */	lis r4, yuuminigame_disp_2fune_29_text_4A64@ha
/* 0000B300 0000B3CC  90 1F 00 10 */	stw r0, 0x10(r31)
/* 0000B304 0000B3D0  38 A3 00 00 */	addi r5, r3, yuuminigame_main_2fune_29_text_4A84@l
/* 0000B308 0000B3D4  3C 60 00 00 */	lis r3, mapalloc_base_ptr@ha
/* 0000B30C 0000B3D8  38 04 00 00 */	addi r0, r4, yuuminigame_disp_2fune_29_text_4A64@l
/* 0000B310 0000B3DC  90 BF 00 14 */	stw r5, 0x14(r31)
/* 0000B314 0000B3E0  38 63 00 00 */	addi r3, r3, mapalloc_base_ptr@l
/* 0000B318 0000B3E4  38 80 00 3C */	li r4, 0x3c
/* 0000B31C 0000B3E8  90 1F 00 18 */	stw r0, 0x18(r31)
/* 0000B320 0000B3EC  80 63 00 00 */	lwz r3, 0x0(r3)
/* 0000B324 0000B3F0  4B FF 83 A1 */	bl _mapAlloc
/* 0000B328 0000B3F4  90 7F 00 1C */	stw r3, 0x1c(r31)
/* 0000B32C 0000B3F8  38 80 00 00 */	li r4, 0x0
/* 0000B330 0000B3FC  38 A0 00 3C */	li r5, 0x3c
/* 0000B334 0000B400  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 0000B338 0000B404  4B FF 83 8D */	bl memset
/* 0000B33C 0000B408  48 00 00 A8 */	b .L_0000B3E4
.L_0000B340:
/* 0000B340 0000B40C  3C 80 00 00 */	lis r4, yuuminigame_init_3roll_29_text_544@ha
/* 0000B344 0000B410  3C 60 00 00 */	lis r3, yuuminigame_main_3roll_29_text_3E4@ha
/* 0000B348 0000B414  38 04 00 00 */	addi r0, r4, yuuminigame_init_3roll_29_text_544@l
/* 0000B34C 0000B418  3C 80 00 00 */	lis r4, yuuminigame_disp_3roll_29_text_3C4@ha
/* 0000B350 0000B41C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 0000B354 0000B420  38 A3 00 00 */	addi r5, r3, yuuminigame_main_3roll_29_text_3E4@l
/* 0000B358 0000B424  3C 60 00 00 */	lis r3, mapalloc_base_ptr@ha
/* 0000B35C 0000B428  38 04 00 00 */	addi r0, r4, yuuminigame_disp_3roll_29_text_3C4@l
/* 0000B360 0000B42C  90 BF 00 14 */	stw r5, 0x14(r31)
/* 0000B364 0000B430  38 63 00 00 */	addi r3, r3, mapalloc_base_ptr@l
/* 0000B368 0000B434  38 80 00 2C */	li r4, 0x2c
/* 0000B36C 0000B438  90 1F 00 18 */	stw r0, 0x18(r31)
/* 0000B370 0000B43C  80 63 00 00 */	lwz r3, 0x0(r3)
/* 0000B374 0000B440  4B FF 83 51 */	bl _mapAlloc
/* 0000B378 0000B444  90 7F 00 1C */	stw r3, 0x1c(r31)
/* 0000B37C 0000B448  38 80 00 00 */	li r4, 0x0
/* 0000B380 0000B44C  38 A0 00 2C */	li r5, 0x2c
/* 0000B384 0000B450  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 0000B388 0000B454  4B FF 83 3D */	bl memset
/* 0000B38C 0000B458  48 00 00 58 */	b .L_0000B3E4
.L_0000B390:
/* 0000B390 0000B45C  3C 80 00 00 */	lis r4, yuuminigame_init_4slit_29_text_1E2C@ha
/* 0000B394 0000B460  3C 60 00 00 */	lis r3, yuuminigame_main_4slit_29_text_194C@ha
/* 0000B398 0000B464  38 04 00 00 */	addi r0, r4, yuuminigame_init_4slit_29_text_1E2C@l
/* 0000B39C 0000B468  3C 80 00 00 */	lis r4, yuuminigame_disp_4slit_29_text_192C@ha
/* 0000B3A0 0000B46C  90 1F 00 10 */	stw r0, 0x10(r31)
/* 0000B3A4 0000B470  38 A3 00 00 */	addi r5, r3, yuuminigame_main_4slit_29_text_194C@l
/* 0000B3A8 0000B474  3C 60 00 00 */	lis r3, mapalloc_base_ptr@ha
/* 0000B3AC 0000B478  38 04 00 00 */	addi r0, r4, yuuminigame_disp_4slit_29_text_192C@l
/* 0000B3B0 0000B47C  90 BF 00 14 */	stw r5, 0x14(r31)
/* 0000B3B4 0000B480  38 63 00 00 */	addi r3, r3, mapalloc_base_ptr@l
/* 0000B3B8 0000B484  38 80 00 28 */	li r4, 0x28
/* 0000B3BC 0000B488  90 1F 00 18 */	stw r0, 0x18(r31)
/* 0000B3C0 0000B48C  80 63 00 00 */	lwz r3, 0x0(r3)
/* 0000B3C4 0000B490  4B FF 83 01 */	bl _mapAlloc
/* 0000B3C8 0000B494  90 7F 00 1C */	stw r3, 0x1c(r31)
/* 0000B3CC 0000B498  38 80 00 00 */	li r4, 0x0
/* 0000B3D0 0000B49C  38 A0 00 28 */	li r5, 0x28
/* 0000B3D4 0000B4A0  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 0000B3D8 0000B4A4  4B FF 82 ED */	bl memset
/* 0000B3DC 0000B4A8  3C 60 00 00 */	lis r3, yuunpc_yuuminigame4_ptr_29_bss_E0@ha
/* 0000B3E0 0000B4AC  93 E3 00 00 */	stw r31, yuunpc_yuuminigame4_ptr_29_bss_E0@l(r3)
.L_0000B3E4:
/* 0000B3E4 0000B4B0  81 9F 00 10 */	lwz r12, 0x10(r31)
/* 0000B3E8 0000B4B4  7F A3 EB 78 */	mr r3, r29
/* 0000B3EC 0000B4B8  7F C4 F3 78 */	mr r4, r30
/* 0000B3F0 0000B4BC  7D 89 03 A6 */	mtctr r12
/* 0000B3F4 0000B4C0  4E 80 04 21 */	bctrl
/* 0000B3F8 0000B4C4  BB 81 00 10 */	lmw r28, 0x10(r1)
/* 0000B3FC 0000B4C8  38 60 00 02 */	li r3, 0x2
/* 0000B400 0000B4CC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 0000B404 0000B4D0  7C 08 03 A6 */	mtlr r0
/* 0000B408 0000B4D4  38 21 00 20 */	addi r1, r1, 0x20
/* 0000B40C 0000B4D8  4E 80 00 20 */	blr
.endfn evt_yuuminigame_alloc_29_text_B1EC

# .text:0x524 | 0xB410 | size: 0xA8
.fn evt_yuuminigame_main_func, local
/* 0000B410 0000B4DC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 0000B414 0000B4E0  7C 08 02 A6 */	mflr r0
/* 0000B418 0000B4E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 0000B41C 0000B4E8  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 0000B420 0000B4EC  7C 7D 1B 78 */	mr r29, r3
/* 0000B424 0000B4F0  7C 9E 23 78 */	mr r30, r4
/* 0000B428 0000B4F4  83 E3 00 9C */	lwz r31, 0x9c(r3)
/* 0000B42C 0000B4F8  A0 7F 00 08 */	lhz r3, 0x8(r31)
/* 0000B430 0000B4FC  54 60 07 FF */	clrlwi. r0, r3, 31
/* 0000B434 0000B500  41 82 00 14 */	beq .L_0000B448
/* 0000B438 0000B504  60 60 00 02 */	ori r0, r3, 0x2
/* 0000B43C 0000B508  38 60 00 02 */	li r3, 0x2
/* 0000B440 0000B50C  B0 1F 00 08 */	sth r0, 0x8(r31)
/* 0000B444 0000B510  48 00 00 60 */	b .L_0000B4A4
.L_0000B448:
/* 0000B448 0000B514  80 7F 00 04 */	lwz r3, 0x4(r31)
/* 0000B44C 0000B518  28 03 00 00 */	cmplwi r3, 0x0
/* 0000B450 0000B51C  41 82 00 1C */	beq .L_0000B46C
/* 0000B454 0000B520  80 63 01 5C */	lwz r3, 0x15c(r3)
/* 0000B458 0000B524  4B FF 82 6D */	bl evtCheckID
/* 0000B45C 0000B528  2C 03 00 00 */	cmpwi r3, 0x0
/* 0000B460 0000B52C  40 82 00 20 */	bne .L_0000B480
/* 0000B464 0000B530  38 00 00 00 */	li r0, 0x0
/* 0000B468 0000B534  90 1F 00 04 */	stw r0, 0x4(r31)
.L_0000B46C:
/* 0000B46C 0000B538  81 9F 00 14 */	lwz r12, 0x14(r31)
/* 0000B470 0000B53C  7F A3 EB 78 */	mr r3, r29
/* 0000B474 0000B540  7F C4 F3 78 */	mr r4, r30
/* 0000B478 0000B544  7D 89 03 A6 */	mtctr r12
/* 0000B47C 0000B548  4E 80 04 21 */	bctrl
.L_0000B480:
/* 0000B480 0000B54C  3C 80 00 00 */	lis r4, float_1000_yuu_000164d8@ha
/* 0000B484 0000B550  3C 60 00 00 */	lis r3, evt_yuuminigame_disp_func@ha
/* 0000B488 0000B554  C0 24 00 00 */	lfs f1, float_1000_yuu_000164d8@l(r4)
/* 0000B48C 0000B558  38 A3 00 00 */	addi r5, r3, evt_yuuminigame_disp_func@l
/* 0000B490 0000B55C  7F E6 FB 78 */	mr r6, r31
/* 0000B494 0000B560  38 60 00 08 */	li r3, 0x8
/* 0000B498 0000B564  38 80 00 00 */	li r4, 0x0
/* 0000B49C 0000B568  4B FF 82 29 */	bl dispEntry
/* 0000B4A0 0000B56C  38 60 00 00 */	li r3, 0x0
.L_0000B4A4:
/* 0000B4A4 0000B570  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 0000B4A8 0000B574  80 01 00 24 */	lwz r0, 0x24(r1)
/* 0000B4AC 0000B578  7C 08 03 A6 */	mtlr r0
/* 0000B4B0 0000B57C  38 21 00 20 */	addi r1, r1, 0x20
/* 0000B4B4 0000B580  4E 80 00 20 */	blr
.endfn evt_yuuminigame_main_func

# .text:0x5CC | 0xB4B8 | size: 0x28
.fn evt_yuuminigame_disp_func, local
/* 0000B4B8 0000B584  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0000B4BC 0000B588  7C 08 02 A6 */	mflr r0
/* 0000B4C0 0000B58C  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000B4C4 0000B590  81 84 00 18 */	lwz r12, 0x18(r4)
/* 0000B4C8 0000B594  7D 89 03 A6 */	mtctr r12
/* 0000B4CC 0000B598  4E 80 04 21 */	bctrl
/* 0000B4D0 0000B59C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0000B4D4 0000B5A0  7C 08 03 A6 */	mtlr r0
/* 0000B4D8 0000B5A4  38 21 00 10 */	addi r1, r1, 0x10
/* 0000B4DC 0000B5A8  4E 80 00 20 */	blr
.endfn evt_yuuminigame_disp_func

# 0x00001238..0x00001240 | size: 0x8
.rodata
.balign 8

# .rodata:0x0 | 0x1238 | size: 0x4
.obj float_1000_yuu_000164d8, local
	.float 1000
.endobj float_1000_yuu_000164d8

# .rodata:0x4 | 0x123C | size: 0x4
.obj gap_03_0000123C_rodata, global
.hidden gap_03_0000123C_rodata
	.4byte 0x00000000
.endobj gap_03_0000123C_rodata

# 0x000065A8..0x00006608 | size: 0x60
.data
.balign 8

# .data:0x0 | 0x65A8 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x65B0 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x65B4 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x65B8 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x65BC | size: 0x4
.obj gap_04_000065BC_data, global
.hidden gap_04_000065BC_data
	.4byte 0x00000000
.endobj gap_04_000065BC_data

# .data:0x18 | 0x65C0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x65C8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x65CC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x65D0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x65D8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x65DC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x65E0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x65E4 | size: 0x4
.obj gap_04_000065E4_data, global
.hidden gap_04_000065E4_data
	.4byte 0x00000000
.endobj gap_04_000065E4_data

# .data:0x40 | 0x65E8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x65F0 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x65F4 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x65F8 | size: 0x10
.obj main_evt, local
	.4byte 0x0001005B
	.4byte evt_yuuminigame_main_func
	.4byte 0x00000002
	.4byte 0x00000001
.endobj main_evt

# 0x00000048..0x000000E0 | size: 0x98
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x48 | size: 0x4
.obj stackp, local
	.skip 0x4
.endobj stackp

# .bss:0x4 | 0x4C | size: 0x10
.obj stackt, local
	.skip 0x10
.endobj stackt

# .bss:0x14 | 0x5C | size: 0x80
.obj dataadr, local
	.skip 0x80
.endobj dataadr

# .bss:0x94 | 0xDC | size: 0x4
.obj gap_05_000000DC_bss, global
.hidden gap_05_000000DC_bss
	.skip 0x4
.endobj gap_05_000000DC_bss
