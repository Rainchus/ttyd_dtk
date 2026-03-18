.include "macros.inc"
.file "aji_12.o"

# 0x00002F24..0x00003540 | size: 0x61C
.text
.balign 4

# .text:0x0 | 0x2F24 | size: 0x100
.fn thunder_main, local
/* 00002F24 00002FE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00002F28 00002FEC  7C 08 02 A6 */	mflr r0
/* 00002F2C 00002FF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 00002F30 00002FF4  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00002F34 00002FF8  7C 7E 1B 78 */	mr r30, r3
/* 00002F38 00002FFC  7C 9F 23 78 */	mr r31, r4
/* 00002F3C 00003000  48 00 33 01 */	bl marioGetPtr
/* 00002F40 00003004  2C 1F 00 00 */	cmpwi r31, 0x0
/* 00002F44 00003008  7C 7F 1B 78 */	mr r31, r3
/* 00002F48 0000300C  41 82 00 0C */	beq .L_00002F54
/* 00002F4C 00003010  38 00 00 00 */	li r0, 0x0
/* 00002F50 00003014  90 1E 00 78 */	stw r0, 0x78(r30)
.L_00002F54:
/* 00002F54 00003018  80 1E 00 78 */	lwz r0, 0x78(r30)
/* 00002F58 0000301C  2C 00 00 00 */	cmpwi r0, 0x0
/* 00002F5C 00003020  40 82 00 9C */	bne .L_00002FF8
/* 00002F60 00003024  A0 1F 00 2E */	lhz r0, 0x2e(r31)
/* 00002F64 00003028  28 00 00 20 */	cmplwi r0, 0x20
/* 00002F68 0000302C  40 82 00 A4 */	bne .L_0000300C
/* 00002F6C 00003030  38 00 00 01 */	li r0, 0x1
/* 00002F70 00003034  3C 60 00 00 */	lis r3, str_SFX_STG7_ELECTRIC_SH_aji_00014138@ha
/* 00002F74 00003038  90 1E 00 78 */	stw r0, 0x78(r30)
/* 00002F78 0000303C  38 63 00 00 */	addi r3, r3, str_SFX_STG7_ELECTRIC_SH_aji_00014138@l
/* 00002F7C 00003040  38 9F 00 8C */	addi r4, r31, 0x8c
/* 00002F80 00003044  48 00 32 BD */	bl psndSFXOn_3D
/* 00002F84 00003048  3C 80 00 00 */	lis r4, float_30_aji_00014154@ha
/* 00002F88 0000304C  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 00002F8C 00003050  C0 44 00 00 */	lfs f2, float_30_aji_00014154@l(r4)
/* 00002F90 00003054  3C 60 00 00 */	lis r3, float_1_aji_00014158@ha
/* 00002F94 00003058  38 83 00 00 */	addi r4, r3, float_1_aji_00014158@l
/* 00002F98 0000305C  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 00002F9C 00003060  EC 42 00 2A */	fadds f2, f2, f0
/* 00002FA0 00003064  C0 84 00 00 */	lfs f4, 0x0(r4)
/* 00002FA4 00003068  C0 7F 00 94 */	lfs f3, 0x94(r31)
/* 00002FA8 0000306C  38 60 00 00 */	li r3, 0x0
/* 00002FAC 00003070  38 80 00 64 */	li r4, 0x64
/* 00002FB0 00003074  48 00 32 8D */	bl effAkariChargeN64Entry
/* 00002FB4 00003078  80 83 00 0C */	lwz r4, 0xc(r3)
/* 00002FB8 0000307C  38 00 00 1E */	li r0, 0x1e
/* 00002FBC 00003080  38 C0 00 E7 */	li r6, 0xe7
/* 00002FC0 00003084  38 A0 00 DB */	li r5, 0xdb
/* 00002FC4 00003088  90 04 00 18 */	stw r0, 0x18(r4)
/* 00002FC8 0000308C  38 00 00 00 */	li r0, 0x0
/* 00002FCC 00003090  80 83 00 0C */	lwz r4, 0xc(r3)
/* 00002FD0 00003094  90 C4 00 1C */	stw r6, 0x1c(r4)
/* 00002FD4 00003098  80 83 00 0C */	lwz r4, 0xc(r3)
/* 00002FD8 0000309C  90 A4 00 20 */	stw r5, 0x20(r4)
/* 00002FDC 000030A0  80 83 00 0C */	lwz r4, 0xc(r3)
/* 00002FE0 000030A4  90 04 00 28 */	stw r0, 0x28(r4)
/* 00002FE4 000030A8  80 83 00 0C */	lwz r4, 0xc(r3)
/* 00002FE8 000030AC  90 04 00 2C */	stw r0, 0x2c(r4)
/* 00002FEC 000030B0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 00002FF0 000030B4  90 03 00 30 */	stw r0, 0x30(r3)
/* 00002FF4 000030B8  48 00 00 18 */	b .L_0000300C
.L_00002FF8:
/* 00002FF8 000030BC  A0 1F 00 2E */	lhz r0, 0x2e(r31)
/* 00002FFC 000030C0  28 00 00 20 */	cmplwi r0, 0x20
/* 00003000 000030C4  41 82 00 0C */	beq .L_0000300C
/* 00003004 000030C8  38 00 00 00 */	li r0, 0x0
/* 00003008 000030CC  90 1E 00 78 */	stw r0, 0x78(r30)
.L_0000300C:
/* 0000300C 000030D0  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00003010 000030D4  38 60 00 00 */	li r3, 0x0
/* 00003014 000030D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00003018 000030DC  7C 08 03 A6 */	mtlr r0
/* 0000301C 000030E0  38 21 00 10 */	addi r1, r1, 0x10
/* 00003020 000030E4  4E 80 00 20 */	blr
.endfn thunder_main

# .text:0x100 | 0x3024 | size: 0x45C
.fn mario_chk, local
/* 00003024 000030E8  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 00003028 000030EC  7C 08 02 A6 */	mflr r0
/* 0000302C 000030F0  90 01 01 34 */	stw r0, 0x134(r1)
/* 00003030 000030F4  BF 61 01 1C */	stmw r27, 0x11c(r1)
/* 00003034 000030F8  7C 7F 1B 78 */	mr r31, r3
/* 00003038 000030FC  7C 9B 23 78 */	mr r27, r4
/* 0000303C 00003100  48 00 32 01 */	bl marioGetPtr
/* 00003040 00003104  2C 1B 00 00 */	cmpwi r27, 0x0
/* 00003044 00003108  7C 7C 1B 78 */	mr r28, r3
/* 00003048 0000310C  41 82 00 10 */	beq .L_00003058
/* 0000304C 00003110  38 00 00 00 */	li r0, 0x0
/* 00003050 00003114  90 1F 00 78 */	stw r0, 0x78(r31)
/* 00003054 00003118  90 1F 00 7C */	stw r0, 0x7c(r31)
.L_00003058:
/* 00003058 0000311C  3C 80 F8 40 */	lis r4, 0xf840
/* 0000305C 00003120  38 60 00 00 */	li r3, 0x0
/* 00003060 00003124  38 84 6B D7 */	addi r4, r4, 0x6bd7
/* 00003064 00003128  48 00 31 D9 */	bl evtGetValue
/* 00003068 0000312C  2C 03 00 00 */	cmpwi r3, 0x0
/* 0000306C 00003130  41 82 00 0C */	beq .L_00003078
/* 00003070 00003134  38 60 00 02 */	li r3, 0x2
/* 00003074 00003138  48 00 03 F8 */	b .L_0000346C
.L_00003078:
/* 00003078 0000313C  3C 80 00 00 */	lis r4, str_hikaru_PCT02d_aji_0001415c@ha
/* 0000307C 00003140  3C 60 00 00 */	lis r3, str_nashi_PCT02d_aji_00014168@ha
/* 00003080 00003144  3B C4 00 00 */	addi r30, r4, str_hikaru_PCT02d_aji_0001415c@l
/* 00003084 00003148  3B 60 00 01 */	li r27, 0x1
/* 00003088 0000314C  3B A3 00 00 */	addi r29, r3, str_nashi_PCT02d_aji_00014168@l
.L_0000308C:
/* 0000308C 00003150  7F C4 F3 78 */	mr r4, r30
/* 00003090 00003154  7F 65 DB 78 */	mr r5, r27
/* 00003094 00003158  38 61 00 0C */	addi r3, r1, 0xc
/* 00003098 0000315C  4C C6 31 82 */	crclr cr1eq
/* 0000309C 00003160  48 00 31 A1 */	bl sprintf
/* 000030A0 00003164  38 61 00 0C */	addi r3, r1, 0xc
/* 000030A4 00003168  38 80 00 01 */	li r4, 0x1
/* 000030A8 0000316C  48 00 31 95 */	bl mapGrpFlagOn
/* 000030AC 00003170  7F A4 EB 78 */	mr r4, r29
/* 000030B0 00003174  7F 65 DB 78 */	mr r5, r27
/* 000030B4 00003178  38 61 00 0C */	addi r3, r1, 0xc
/* 000030B8 0000317C  4C C6 31 82 */	crclr cr1eq
/* 000030BC 00003180  48 00 31 81 */	bl sprintf
/* 000030C0 00003184  38 61 00 0C */	addi r3, r1, 0xc
/* 000030C4 00003188  38 80 00 01 */	li r4, 0x1
/* 000030C8 0000318C  48 00 31 75 */	bl mapGrpFlagOff
/* 000030CC 00003190  3B 7B 00 01 */	addi r27, r27, 0x1
/* 000030D0 00003194  2C 1B 00 2C */	cmpwi r27, 0x2c
/* 000030D4 00003198  40 81 FF B8 */	ble .L_0000308C
/* 000030D8 0000319C  3B 60 00 00 */	li r27, 0x0
/* 000030DC 000031A0  3C 60 00 00 */	lis r3, hit_list@ha
/* 000030E0 000031A4  7F 7E DB 78 */	mr r30, r27
/* 000030E4 000031A8  3B A3 00 00 */	addi r29, r3, hit_list@l
.L_000030E8:
/* 000030E8 000031AC  7C 7D F0 2E */	lwzx r3, r29, r30
/* 000030EC 000031B0  38 80 08 00 */	li r4, 0x800
/* 000030F0 000031B4  48 00 31 4D */	bl hitGrpAttrOn
/* 000030F4 000031B8  3B 7B 00 01 */	addi r27, r27, 0x1
/* 000030F8 000031BC  3B DE 00 04 */	addi r30, r30, 0x4
/* 000030FC 000031C0  2C 1B 00 32 */	cmpwi r27, 0x32
/* 00003100 000031C4  41 80 FF E8 */	blt .L_000030E8
/* 00003104 000031C8  38 60 00 00 */	li r3, 0x0
/* 00003108 000031CC  48 00 31 35 */	bl partyGetPtr
/* 0000310C 000031D0  28 03 00 00 */	cmplwi r3, 0x0
/* 00003110 000031D4  41 82 00 30 */	beq .L_00003140
/* 00003114 000031D8  88 03 00 31 */	lbz r0, 0x31(r3)
/* 00003118 000031DC  2C 00 00 04 */	cmpwi r0, 0x4
/* 0000311C 000031E0  40 82 00 24 */	bne .L_00003140
/* 00003120 000031E4  80 03 00 00 */	lwz r0, 0x0(r3)
/* 00003124 000031E8  54 00 05 EF */	rlwinm. r0, r0, 0, 23, 23
/* 00003128 000031EC  41 82 00 18 */	beq .L_00003140
/* 0000312C 000031F0  83 7C 01 E8 */	lwz r27, 0x1e8(r28)
/* 00003130 000031F4  28 1B 00 00 */	cmplwi r27, 0x0
/* 00003134 000031F8  40 82 00 10 */	bne .L_00003144
/* 00003138 000031FC  83 7C 01 EC */	lwz r27, 0x1ec(r28)
/* 0000313C 00003200  48 00 00 08 */	b .L_00003144
.L_00003140:
/* 00003140 00003204  83 7C 01 FC */	lwz r27, 0x1fc(r28)
.L_00003144:
/* 00003144 00003208  28 1B 00 00 */	cmplwi r27, 0x0
/* 00003148 0000320C  40 82 00 40 */	bne .L_00003188
/* 0000314C 00003210  3C 60 00 00 */	lis r3, str_hikaru_01_aji_00014174@ha
/* 00003150 00003214  38 80 00 01 */	li r4, 0x1
/* 00003154 00003218  38 63 00 00 */	addi r3, r3, str_hikaru_01_aji_00014174@l
/* 00003158 0000321C  48 00 30 E5 */	bl mapGrpFlagOff
/* 0000315C 00003220  3C 60 00 00 */	lis r3, str_nashi_01_aji_00014180@ha
/* 00003160 00003224  38 80 00 01 */	li r4, 0x1
/* 00003164 00003228  38 63 00 00 */	addi r3, r3, str_nashi_01_aji_00014180@l
/* 00003168 0000322C  48 00 30 D5 */	bl mapGrpFlagOn
/* 0000316C 00003230  3C 60 00 00 */	lis r3, str_A_hikaru_01_aji_00013ecc@ha
/* 00003170 00003234  38 80 08 00 */	li r4, 0x800
/* 00003174 00003238  38 63 00 00 */	addi r3, r3, str_A_hikaru_01_aji_00013ecc@l
/* 00003178 0000323C  48 00 30 C5 */	bl hitGrpAttrOff
/* 0000317C 00003240  38 00 00 00 */	li r0, 0x0
/* 00003180 00003244  90 1F 00 80 */	stw r0, 0x80(r31)
/* 00003184 00003248  48 00 00 AC */	b .L_00003230
.L_00003188:
/* 00003188 0000324C  3C 60 00 00 */	lis r3, str_A_hikaru_aji_0001418c@ha
/* 0000318C 00003250  38 63 00 00 */	addi r3, r3, str_A_hikaru_aji_0001418c@l
/* 00003190 00003254  48 00 30 AD */	bl strlen
/* 00003194 00003258  7C 7E 1B 78 */	mr r30, r3
/* 00003198 0000325C  7F 63 DB 78 */	mr r3, r27
/* 0000319C 00003260  48 00 30 A1 */	bl hitGetName
/* 000031A0 00003264  3C 80 00 00 */	lis r4, str_A_hikaru_aji_0001418c@ha
/* 000031A4 00003268  7F C5 F3 78 */	mr r5, r30
/* 000031A8 0000326C  38 84 00 00 */	addi r4, r4, str_A_hikaru_aji_0001418c@l
/* 000031AC 00003270  48 00 30 91 */	bl strncmp
/* 000031B0 00003274  2C 03 00 00 */	cmpwi r3, 0x0
/* 000031B4 00003278  41 82 00 40 */	beq .L_000031F4
/* 000031B8 0000327C  3C 60 00 00 */	lis r3, str_hikaru_01_aji_00014174@ha
/* 000031BC 00003280  38 80 00 01 */	li r4, 0x1
/* 000031C0 00003284  38 63 00 00 */	addi r3, r3, str_hikaru_01_aji_00014174@l
/* 000031C4 00003288  48 00 30 79 */	bl mapGrpFlagOff
/* 000031C8 0000328C  3C 60 00 00 */	lis r3, str_nashi_01_aji_00014180@ha
/* 000031CC 00003290  38 80 00 01 */	li r4, 0x1
/* 000031D0 00003294  38 63 00 00 */	addi r3, r3, str_nashi_01_aji_00014180@l
/* 000031D4 00003298  48 00 30 69 */	bl mapGrpFlagOn
/* 000031D8 0000329C  3C 60 00 00 */	lis r3, str_A_hikaru_01_aji_00013ecc@ha
/* 000031DC 000032A0  38 80 08 00 */	li r4, 0x800
/* 000031E0 000032A4  38 63 00 00 */	addi r3, r3, str_A_hikaru_01_aji_00013ecc@l
/* 000031E4 000032A8  48 00 30 59 */	bl hitGrpAttrOff
/* 000031E8 000032AC  38 00 00 00 */	li r0, 0x0
/* 000031EC 000032B0  90 1F 00 80 */	stw r0, 0x80(r31)
/* 000031F0 000032B4  48 00 00 40 */	b .L_00003230
.L_000031F4:
/* 000031F4 000032B8  7F 63 DB 78 */	mr r3, r27
/* 000031F8 000032BC  48 00 30 45 */	bl hitGetName
/* 000031FC 000032C0  3C 80 00 00 */	lis r4, str_A_hikaru_01_aji_00013ecc@ha
/* 00003200 000032C4  38 84 00 00 */	addi r4, r4, str_A_hikaru_01_aji_00013ecc@l
/* 00003204 000032C8  48 00 30 39 */	bl strcmp
/* 00003208 000032CC  2C 03 00 00 */	cmpwi r3, 0x0
/* 0000320C 000032D0  40 82 00 24 */	bne .L_00003230
/* 00003210 000032D4  80 1F 00 80 */	lwz r0, 0x80(r31)
/* 00003214 000032D8  2C 00 00 00 */	cmpwi r0, 0x0
/* 00003218 000032DC  40 82 00 18 */	bne .L_00003230
/* 0000321C 000032E0  38 60 00 01 */	li r3, 0x1
/* 00003220 000032E4  38 00 00 00 */	li r0, 0x0
/* 00003224 000032E8  90 7F 00 80 */	stw r3, 0x80(r31)
/* 00003228 000032EC  90 1F 00 78 */	stw r0, 0x78(r31)
/* 0000322C 000032F0  90 1F 00 7C */	stw r0, 0x7c(r31)
.L_00003230:
/* 00003230 000032F4  38 00 00 00 */	li r0, 0x0
/* 00003234 000032F8  90 01 00 08 */	stw r0, 0x8(r1)
/* 00003238 000032FC  83 DF 00 78 */	lwz r30, 0x78(r31)
/* 0000323C 00003300  2C 1E 00 32 */	cmpwi r30, 0x32
/* 00003240 00003304  41 80 00 08 */	blt .L_00003248
/* 00003244 00003308  3B C0 00 31 */	li r30, 0x31
.L_00003248:
/* 00003248 0000330C  3C 80 00 00 */	lis r4, hit_list@ha
/* 0000324C 00003310  3C 60 00 00 */	lis r3, str_A_hikaru_PCT02d_aji_00014198@ha
/* 00003250 00003314  38 C4 00 00 */	addi r6, r4, hit_list@l
/* 00003254 00003318  57 C0 10 3A */	slwi r0, r30, 2
/* 00003258 0000331C  38 83 00 00 */	addi r4, r3, str_A_hikaru_PCT02d_aji_00014198@l
/* 0000325C 00003320  7C 66 00 2E */	lwzx r3, r6, r0
/* 00003260 00003324  38 A1 00 08 */	addi r5, r1, 0x8
/* 00003264 00003328  4C C6 31 82 */	crclr cr1eq
/* 00003268 0000332C  48 00 2F D5 */	bl sscanf
/* 0000326C 00003330  3C 60 00 00 */	lis r3, str_hikaru_PCT02d_aji_0001415c@ha
/* 00003270 00003334  80 A1 00 08 */	lwz r5, 0x8(r1)
/* 00003274 00003338  38 83 00 00 */	addi r4, r3, str_hikaru_PCT02d_aji_0001415c@l
/* 00003278 0000333C  38 61 00 0C */	addi r3, r1, 0xc
/* 0000327C 00003340  4C C6 31 82 */	crclr cr1eq
/* 00003280 00003344  48 00 2F BD */	bl sprintf
/* 00003284 00003348  38 61 00 0C */	addi r3, r1, 0xc
/* 00003288 0000334C  38 80 00 01 */	li r4, 0x1
/* 0000328C 00003350  48 00 2F B1 */	bl mapGrpFlagOff
/* 00003290 00003354  3C 60 00 00 */	lis r3, str_nashi_PCT02d_aji_00014168@ha
/* 00003294 00003358  80 A1 00 08 */	lwz r5, 0x8(r1)
/* 00003298 0000335C  38 83 00 00 */	addi r4, r3, str_nashi_PCT02d_aji_00014168@l
/* 0000329C 00003360  38 61 00 0C */	addi r3, r1, 0xc
/* 000032A0 00003364  4C C6 31 82 */	crclr cr1eq
/* 000032A4 00003368  48 00 2F 99 */	bl sprintf
/* 000032A8 0000336C  38 61 00 0C */	addi r3, r1, 0xc
/* 000032AC 00003370  38 80 00 01 */	li r4, 0x1
/* 000032B0 00003374  48 00 2F 8D */	bl mapGrpFlagOn
/* 000032B4 00003378  3C 60 00 00 */	lis r3, str_A_hikaru_PCT02d_aji_00014198@ha
/* 000032B8 0000337C  80 A1 00 08 */	lwz r5, 0x8(r1)
/* 000032BC 00003380  38 83 00 00 */	addi r4, r3, str_A_hikaru_PCT02d_aji_00014198@l
/* 000032C0 00003384  38 61 00 0C */	addi r3, r1, 0xc
/* 000032C4 00003388  4C C6 31 82 */	crclr cr1eq
/* 000032C8 0000338C  48 00 2F 75 */	bl sprintf
/* 000032CC 00003390  38 61 00 0C */	addi r3, r1, 0xc
/* 000032D0 00003394  38 80 08 00 */	li r4, 0x800
/* 000032D4 00003398  48 00 2F 69 */	bl hitGrpAttrOff
/* 000032D8 0000339C  3B DE 00 01 */	addi r30, r30, 0x1
/* 000032DC 000033A0  2C 1E 00 32 */	cmpwi r30, 0x32
/* 000032E0 000033A4  41 80 00 08 */	blt .L_000032E8
/* 000032E4 000033A8  3B C0 00 31 */	li r30, 0x31
.L_000032E8:
/* 000032E8 000033AC  3C 80 00 00 */	lis r4, hit_list@ha
/* 000032EC 000033B0  3C 60 00 00 */	lis r3, str_A_hikaru_PCT02d_aji_00014198@ha
/* 000032F0 000033B4  38 C4 00 00 */	addi r6, r4, hit_list@l
/* 000032F4 000033B8  57 C0 10 3A */	slwi r0, r30, 2
/* 000032F8 000033BC  38 83 00 00 */	addi r4, r3, str_A_hikaru_PCT02d_aji_00014198@l
/* 000032FC 000033C0  7C 66 00 2E */	lwzx r3, r6, r0
/* 00003300 000033C4  38 A1 00 08 */	addi r5, r1, 0x8
/* 00003304 000033C8  4C C6 31 82 */	crclr cr1eq
/* 00003308 000033CC  48 00 2F 35 */	bl sscanf
/* 0000330C 000033D0  3C 60 00 00 */	lis r3, str_hikaru_PCT02d_aji_0001415c@ha
/* 00003310 000033D4  80 A1 00 08 */	lwz r5, 0x8(r1)
/* 00003314 000033D8  38 83 00 00 */	addi r4, r3, str_hikaru_PCT02d_aji_0001415c@l
/* 00003318 000033DC  38 61 00 0C */	addi r3, r1, 0xc
/* 0000331C 000033E0  4C C6 31 82 */	crclr cr1eq
/* 00003320 000033E4  48 00 2F 1D */	bl sprintf
/* 00003324 000033E8  38 61 00 0C */	addi r3, r1, 0xc
/* 00003328 000033EC  38 80 00 01 */	li r4, 0x1
/* 0000332C 000033F0  48 00 2F 11 */	bl mapGrpFlagOff
/* 00003330 000033F4  3C 60 00 00 */	lis r3, str_nashi_PCT02d_aji_00014168@ha
/* 00003334 000033F8  80 A1 00 08 */	lwz r5, 0x8(r1)
/* 00003338 000033FC  38 83 00 00 */	addi r4, r3, str_nashi_PCT02d_aji_00014168@l
/* 0000333C 00003400  38 61 00 0C */	addi r3, r1, 0xc
/* 00003340 00003404  4C C6 31 82 */	crclr cr1eq
/* 00003344 00003408  48 00 2E F9 */	bl sprintf
/* 00003348 0000340C  38 61 00 0C */	addi r3, r1, 0xc
/* 0000334C 00003410  38 80 00 01 */	li r4, 0x1
/* 00003350 00003414  48 00 2E ED */	bl mapGrpFlagOn
/* 00003354 00003418  3C 60 00 00 */	lis r3, str_A_hikaru_PCT02d_aji_00014198@ha
/* 00003358 0000341C  80 A1 00 08 */	lwz r5, 0x8(r1)
/* 0000335C 00003420  38 83 00 00 */	addi r4, r3, str_A_hikaru_PCT02d_aji_00014198@l
/* 00003360 00003424  38 61 00 0C */	addi r3, r1, 0xc
/* 00003364 00003428  4C C6 31 82 */	crclr cr1eq
/* 00003368 0000342C  48 00 2E D5 */	bl sprintf
/* 0000336C 00003430  38 61 00 0C */	addi r3, r1, 0xc
/* 00003370 00003434  38 80 08 00 */	li r4, 0x800
/* 00003374 00003438  48 00 2E C9 */	bl hitGrpAttrOff
/* 00003378 0000343C  3B DE 00 01 */	addi r30, r30, 0x1
/* 0000337C 00003440  2C 1E 00 32 */	cmpwi r30, 0x32
/* 00003380 00003444  41 80 00 08 */	blt .L_00003388
/* 00003384 00003448  3B C0 00 31 */	li r30, 0x31
.L_00003388:
/* 00003388 0000344C  3C 80 00 00 */	lis r4, hit_list@ha
/* 0000338C 00003450  3C 60 00 00 */	lis r3, str_A_hikaru_PCT02d_aji_00014198@ha
/* 00003390 00003454  38 C4 00 00 */	addi r6, r4, hit_list@l
/* 00003394 00003458  57 C0 10 3A */	slwi r0, r30, 2
/* 00003398 0000345C  38 83 00 00 */	addi r4, r3, str_A_hikaru_PCT02d_aji_00014198@l
/* 0000339C 00003460  7C 66 00 2E */	lwzx r3, r6, r0
/* 000033A0 00003464  38 A1 00 08 */	addi r5, r1, 0x8
/* 000033A4 00003468  4C C6 31 82 */	crclr cr1eq
/* 000033A8 0000346C  48 00 2E 95 */	bl sscanf
/* 000033AC 00003470  3C 60 00 00 */	lis r3, str_hikaru_PCT02d_aji_0001415c@ha
/* 000033B0 00003474  80 A1 00 08 */	lwz r5, 0x8(r1)
/* 000033B4 00003478  38 83 00 00 */	addi r4, r3, str_hikaru_PCT02d_aji_0001415c@l
/* 000033B8 0000347C  38 61 00 0C */	addi r3, r1, 0xc
/* 000033BC 00003480  4C C6 31 82 */	crclr cr1eq
/* 000033C0 00003484  48 00 2E 7D */	bl sprintf
/* 000033C4 00003488  38 61 00 0C */	addi r3, r1, 0xc
/* 000033C8 0000348C  38 80 00 01 */	li r4, 0x1
/* 000033CC 00003490  48 00 2E 71 */	bl mapGrpFlagOff
/* 000033D0 00003494  3C 60 00 00 */	lis r3, str_nashi_PCT02d_aji_00014168@ha
/* 000033D4 00003498  80 A1 00 08 */	lwz r5, 0x8(r1)
/* 000033D8 0000349C  38 83 00 00 */	addi r4, r3, str_nashi_PCT02d_aji_00014168@l
/* 000033DC 000034A0  38 61 00 0C */	addi r3, r1, 0xc
/* 000033E0 000034A4  4C C6 31 82 */	crclr cr1eq
/* 000033E4 000034A8  48 00 2E 59 */	bl sprintf
/* 000033E8 000034AC  38 61 00 0C */	addi r3, r1, 0xc
/* 000033EC 000034B0  38 80 00 01 */	li r4, 0x1
/* 000033F0 000034B4  48 00 2E 4D */	bl mapGrpFlagOn
/* 000033F4 000034B8  3C 60 00 00 */	lis r3, str_A_hikaru_PCT02d_aji_00014198@ha
/* 000033F8 000034BC  80 A1 00 08 */	lwz r5, 0x8(r1)
/* 000033FC 000034C0  38 83 00 00 */	addi r4, r3, str_A_hikaru_PCT02d_aji_00014198@l
/* 00003400 000034C4  38 61 00 0C */	addi r3, r1, 0xc
/* 00003404 000034C8  4C C6 31 82 */	crclr cr1eq
/* 00003408 000034CC  48 00 2E 35 */	bl sprintf
/* 0000340C 000034D0  38 61 00 0C */	addi r3, r1, 0xc
/* 00003410 000034D4  38 80 08 00 */	li r4, 0x800
/* 00003414 000034D8  48 00 2E 29 */	bl hitGrpAttrOff
/* 00003418 000034DC  80 9F 00 7C */	lwz r4, 0x7c(r31)
/* 0000341C 000034E0  38 60 00 3C */	li r3, 0x3c
/* 00003420 000034E4  38 04 00 01 */	addi r0, r4, 0x1
/* 00003424 000034E8  90 1F 00 7C */	stw r0, 0x7c(r31)
/* 00003428 000034EC  80 1F 00 80 */	lwz r0, 0x80(r31)
/* 0000342C 000034F0  80 9F 00 7C */	lwz r4, 0x7c(r31)
/* 00003430 000034F4  2C 00 00 00 */	cmpwi r0, 0x0
/* 00003434 000034F8  40 82 00 08 */	bne .L_0000343C
/* 00003438 000034FC  38 60 00 14 */	li r3, 0x14
.L_0000343C:
/* 0000343C 00003500  7C 04 18 00 */	cmpw r4, r3
/* 00003440 00003504  40 81 00 28 */	ble .L_00003468
/* 00003444 00003508  38 80 00 00 */	li r4, 0x0
/* 00003448 0000350C  90 9F 00 7C */	stw r4, 0x7c(r31)
/* 0000344C 00003510  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 00003450 00003514  38 03 00 01 */	addi r0, r3, 0x1
/* 00003454 00003518  90 1F 00 78 */	stw r0, 0x78(r31)
/* 00003458 0000351C  80 1F 00 78 */	lwz r0, 0x78(r31)
/* 0000345C 00003520  2C 00 00 32 */	cmpwi r0, 0x32
/* 00003460 00003524  40 81 00 08 */	ble .L_00003468
/* 00003464 00003528  90 9F 00 78 */	stw r4, 0x78(r31)
.L_00003468:
/* 00003468 0000352C  38 60 00 00 */	li r3, 0x0
.L_0000346C:
/* 0000346C 00003530  BB 61 01 1C */	lmw r27, 0x11c(r1)
/* 00003470 00003534  80 01 01 34 */	lwz r0, 0x134(r1)
/* 00003474 00003538  7C 08 03 A6 */	mtlr r0
/* 00003478 0000353C  38 21 01 30 */	addi r1, r1, 0x130
/* 0000347C 00003540  4E 80 00 20 */	blr
.endfn mario_chk

# .text:0x55C | 0x3480 | size: 0xC0
.fn hikaru_off, local
/* 00003480 00003544  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 00003484 00003548  7C 08 02 A6 */	mflr r0
/* 00003488 0000354C  3C A0 00 00 */	lis r5, str_hikaru_PCT02d_aji_0001415c@ha
/* 0000348C 00003550  3C 80 00 00 */	lis r4, str_nashi_PCT02d_aji_00014168@ha
/* 00003490 00003554  90 01 01 24 */	stw r0, 0x124(r1)
/* 00003494 00003558  3C 60 00 00 */	lis r3, str_A_hikaru_PCT02d_aji_00014198@ha
/* 00003498 0000355C  BF 81 01 10 */	stmw r28, 0x110(r1)
/* 0000349C 00003560  3B 80 00 01 */	li r28, 0x1
/* 000034A0 00003564  3B A5 00 00 */	addi r29, r5, str_hikaru_PCT02d_aji_0001415c@l
/* 000034A4 00003568  3B C4 00 00 */	addi r30, r4, str_nashi_PCT02d_aji_00014168@l
/* 000034A8 0000356C  3B E3 00 00 */	addi r31, r3, str_A_hikaru_PCT02d_aji_00014198@l
.L_000034AC:
/* 000034AC 00003570  7F A4 EB 78 */	mr r4, r29
/* 000034B0 00003574  7F 85 E3 78 */	mr r5, r28
/* 000034B4 00003578  38 61 00 08 */	addi r3, r1, 0x8
/* 000034B8 0000357C  4C C6 31 82 */	crclr cr1eq
/* 000034BC 00003580  48 00 2D 81 */	bl sprintf
/* 000034C0 00003584  38 61 00 08 */	addi r3, r1, 0x8
/* 000034C4 00003588  38 80 00 01 */	li r4, 0x1
/* 000034C8 0000358C  48 00 2D 75 */	bl mapGrpFlagOn
/* 000034CC 00003590  7F C4 F3 78 */	mr r4, r30
/* 000034D0 00003594  7F 85 E3 78 */	mr r5, r28
/* 000034D4 00003598  38 61 00 08 */	addi r3, r1, 0x8
/* 000034D8 0000359C  4C C6 31 82 */	crclr cr1eq
/* 000034DC 000035A0  48 00 2D 61 */	bl sprintf
/* 000034E0 000035A4  38 61 00 08 */	addi r3, r1, 0x8
/* 000034E4 000035A8  38 80 00 01 */	li r4, 0x1
/* 000034E8 000035AC  48 00 2D 55 */	bl mapGrpFlagOn
/* 000034EC 000035B0  7F E4 FB 78 */	mr r4, r31
/* 000034F0 000035B4  7F 85 E3 78 */	mr r5, r28
/* 000034F4 000035B8  38 61 00 08 */	addi r3, r1, 0x8
/* 000034F8 000035BC  4C C6 31 82 */	crclr cr1eq
/* 000034FC 000035C0  48 00 2D 41 */	bl sprintf
/* 00003500 000035C4  38 61 00 08 */	addi r3, r1, 0x8
/* 00003504 000035C8  38 80 08 00 */	li r4, 0x800
/* 00003508 000035CC  48 00 2D 35 */	bl hitGrpAttrOff
/* 0000350C 000035D0  3B 9C 00 01 */	addi r28, r28, 0x1
/* 00003510 000035D4  2C 1C 00 2C */	cmpwi r28, 0x2c
/* 00003514 000035D8  40 81 FF 98 */	ble .L_000034AC
/* 00003518 000035DC  3C 60 00 00 */	lis r3, str_A_no1_aji_000141a8@ha
/* 0000351C 000035E0  38 80 08 00 */	li r4, 0x800
/* 00003520 000035E4  38 63 00 00 */	addi r3, r3, str_A_no1_aji_000141a8@l
/* 00003524 000035E8  48 00 2D 19 */	bl hitGrpAttrOff
/* 00003528 000035EC  BB 81 01 10 */	lmw r28, 0x110(r1)
/* 0000352C 000035F0  38 60 00 02 */	li r3, 0x2
/* 00003530 000035F4  80 01 01 24 */	lwz r0, 0x124(r1)
/* 00003534 000035F8  7C 08 03 A6 */	mtlr r0
/* 00003538 000035FC  38 21 01 20 */	addi r1, r1, 0x120
/* 0000353C 00003600  4E 80 00 20 */	blr
.endfn hikaru_off

# 0x00003030..0x00003348 | size: 0x318
.rodata
.balign 8

# .rodata:0x0 | 0x3030 | size: 0xA
.obj str_S_door1_1_aji_00013e98, local
	.string "S_door1_1"
.endobj str_S_door1_1_aji_00013e98

# .rodata:0xA | 0x303A | size: 0x2
.obj gap_03_0000303A_rodata, global
.hidden gap_03_0000303A_rodata
	.2byte 0x0000
.endobj gap_03_0000303A_rodata

# .rodata:0xC | 0x303C | size: 0xA
.obj str_S_door1_2_aji_00013ea4, local
	.string "S_door1_2"
.endobj str_S_door1_2_aji_00013ea4

# .rodata:0x16 | 0x3046 | size: 0x2
.obj gap_03_00003046_rodata, global
.hidden gap_03_00003046_rodata
	.2byte 0x0000
.endobj gap_03_00003046_rodata

# .rodata:0x18 | 0x3048 | size: 0x7
.obj str_e_bero_aji_00013eb0, local
	.string "e_bero"
.endobj str_e_bero_aji_00013eb0

# .rodata:0x1F | 0x304F | size: 0x1
.obj gap_03_0000304F_rodata, global
.hidden gap_03_0000304F_rodata
	.byte 0x00
.endobj gap_03_0000304F_rodata

# .rodata:0x20 | 0x3050 | size: 0x7
.obj str_aji_01_aji_00013eb8, local
	.string "aji_01"
.endobj str_aji_01_aji_00013eb8

# .rodata:0x27 | 0x3057 | size: 0x1
.obj gap_03_00003057_rodata, global
.hidden gap_03_00003057_rodata
	.byte 0x00
.endobj gap_03_00003057_rodata

# .rodata:0x28 | 0x3058 | size: 0x9
.obj str_w_bero_4_aji_00013ec0, local
	.string "w_bero_4"
.endobj str_w_bero_4_aji_00013ec0

# .rodata:0x31 | 0x3061 | size: 0x3
.obj gap_03_00003061_rodata, global
.hidden gap_03_00003061_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003061_rodata

# .rodata:0x34 | 0x3064 | size: 0xC
.obj str_A_hikaru_01_aji_00013ecc, local
	.string "A_hikaru_01"
.endobj str_A_hikaru_01_aji_00013ecc

# .rodata:0x40 | 0x3070 | size: 0xC
.obj str_A_hikaru_02_aji_00013ed8, local
	.string "A_hikaru_02"
.endobj str_A_hikaru_02_aji_00013ed8

# .rodata:0x4C | 0x307C | size: 0xC
.obj str_A_hikaru_03_aji_00013ee4, local
	.string "A_hikaru_03"
.endobj str_A_hikaru_03_aji_00013ee4

# .rodata:0x58 | 0x3088 | size: 0xC
.obj str_A_hikaru_04_aji_00013ef0, local
	.string "A_hikaru_04"
.endobj str_A_hikaru_04_aji_00013ef0

# .rodata:0x64 | 0x3094 | size: 0xC
.obj str_A_hikaru_05_aji_00013efc, local
	.string "A_hikaru_05"
.endobj str_A_hikaru_05_aji_00013efc

# .rodata:0x70 | 0x30A0 | size: 0xC
.obj str_A_hikaru_06_aji_00013f08, local
	.string "A_hikaru_06"
.endobj str_A_hikaru_06_aji_00013f08

# .rodata:0x7C | 0x30AC | size: 0xC
.obj str_A_hikaru_07_aji_00013f14, local
	.string "A_hikaru_07"
.endobj str_A_hikaru_07_aji_00013f14

# .rodata:0x88 | 0x30B8 | size: 0xC
.obj str_A_hikaru_08_aji_00013f20, local
	.string "A_hikaru_08"
.endobj str_A_hikaru_08_aji_00013f20

# .rodata:0x94 | 0x30C4 | size: 0xC
.obj str_A_hikaru_09_aji_00013f2c, local
	.string "A_hikaru_09"
.endobj str_A_hikaru_09_aji_00013f2c

# .rodata:0xA0 | 0x30D0 | size: 0xC
.obj str_A_hikaru_10_aji_00013f38, local
	.string "A_hikaru_10"
.endobj str_A_hikaru_10_aji_00013f38

# .rodata:0xAC | 0x30DC | size: 0xC
.obj str_A_hikaru_11_aji_00013f44, local
	.string "A_hikaru_11"
.endobj str_A_hikaru_11_aji_00013f44

# .rodata:0xB8 | 0x30E8 | size: 0xC
.obj str_A_hikaru_12_aji_00013f50, local
	.string "A_hikaru_12"
.endobj str_A_hikaru_12_aji_00013f50

# .rodata:0xC4 | 0x30F4 | size: 0xC
.obj str_A_hikaru_13_aji_00013f5c, local
	.string "A_hikaru_13"
.endobj str_A_hikaru_13_aji_00013f5c

# .rodata:0xD0 | 0x3100 | size: 0xC
.obj str_A_hikaru_14_aji_00013f68, local
	.string "A_hikaru_14"
.endobj str_A_hikaru_14_aji_00013f68

# .rodata:0xDC | 0x310C | size: 0xC
.obj str_A_hikaru_15_aji_00013f74, local
	.string "A_hikaru_15"
.endobj str_A_hikaru_15_aji_00013f74

# .rodata:0xE8 | 0x3118 | size: 0xC
.obj str_A_hikaru_16_aji_00013f80, local
	.string "A_hikaru_16"
.endobj str_A_hikaru_16_aji_00013f80

# .rodata:0xF4 | 0x3124 | size: 0xC
.obj str_A_hikaru_17_aji_00013f8c, local
	.string "A_hikaru_17"
.endobj str_A_hikaru_17_aji_00013f8c

# .rodata:0x100 | 0x3130 | size: 0xC
.obj str_A_hikaru_18_aji_00013f98, local
	.string "A_hikaru_18"
.endobj str_A_hikaru_18_aji_00013f98

# .rodata:0x10C | 0x313C | size: 0xC
.obj str_A_hikaru_19_aji_00013fa4, local
	.string "A_hikaru_19"
.endobj str_A_hikaru_19_aji_00013fa4

# .rodata:0x118 | 0x3148 | size: 0xC
.obj str_A_hikaru_20_aji_00013fb0, local
	.string "A_hikaru_20"
.endobj str_A_hikaru_20_aji_00013fb0

# .rodata:0x124 | 0x3154 | size: 0xC
.obj str_A_hikaru_21_aji_00013fbc, local
	.string "A_hikaru_21"
.endobj str_A_hikaru_21_aji_00013fbc

# .rodata:0x130 | 0x3160 | size: 0xC
.obj str_A_hikaru_22_aji_00013fc8, local
	.string "A_hikaru_22"
.endobj str_A_hikaru_22_aji_00013fc8

# .rodata:0x13C | 0x316C | size: 0xC
.obj str_A_hikaru_23_aji_00013fd4, local
	.string "A_hikaru_23"
.endobj str_A_hikaru_23_aji_00013fd4

# .rodata:0x148 | 0x3178 | size: 0xC
.obj str_A_hikaru_24_aji_00013fe0, local
	.string "A_hikaru_24"
.endobj str_A_hikaru_24_aji_00013fe0

# .rodata:0x154 | 0x3184 | size: 0xC
.obj str_A_hikaru_25_aji_00013fec, local
	.string "A_hikaru_25"
.endobj str_A_hikaru_25_aji_00013fec

# .rodata:0x160 | 0x3190 | size: 0xC
.obj str_A_hikaru_26_aji_00013ff8, local
	.string "A_hikaru_26"
.endobj str_A_hikaru_26_aji_00013ff8

# .rodata:0x16C | 0x319C | size: 0xC
.obj str_A_hikaru_27_aji_00014004, local
	.string "A_hikaru_27"
.endobj str_A_hikaru_27_aji_00014004

# .rodata:0x178 | 0x31A8 | size: 0xC
.obj str_A_hikaru_28_aji_00014010, local
	.string "A_hikaru_28"
.endobj str_A_hikaru_28_aji_00014010

# .rodata:0x184 | 0x31B4 | size: 0xC
.obj str_A_hikaru_29_aji_0001401c, local
	.string "A_hikaru_29"
.endobj str_A_hikaru_29_aji_0001401c

# .rodata:0x190 | 0x31C0 | size: 0xC
.obj str_A_hikaru_30_aji_00014028, local
	.string "A_hikaru_30"
.endobj str_A_hikaru_30_aji_00014028

# .rodata:0x19C | 0x31CC | size: 0xC
.obj str_A_hikaru_31_aji_00014034, local
	.string "A_hikaru_31"
.endobj str_A_hikaru_31_aji_00014034

# .rodata:0x1A8 | 0x31D8 | size: 0xC
.obj str_A_hikaru_32_aji_00014040, local
	.string "A_hikaru_32"
.endobj str_A_hikaru_32_aji_00014040

# .rodata:0x1B4 | 0x31E4 | size: 0xC
.obj str_A_hikaru_33_aji_0001404c, local
	.string "A_hikaru_33"
.endobj str_A_hikaru_33_aji_0001404c

# .rodata:0x1C0 | 0x31F0 | size: 0xC
.obj str_A_hikaru_34_aji_00014058, local
	.string "A_hikaru_34"
.endobj str_A_hikaru_34_aji_00014058

# .rodata:0x1CC | 0x31FC | size: 0xC
.obj str_A_hikaru_35_aji_00014064, local
	.string "A_hikaru_35"
.endobj str_A_hikaru_35_aji_00014064

# .rodata:0x1D8 | 0x3208 | size: 0xC
.obj str_A_hikaru_36_aji_00014070, local
	.string "A_hikaru_36"
.endobj str_A_hikaru_36_aji_00014070

# .rodata:0x1E4 | 0x3214 | size: 0xC
.obj str_A_hikaru_37_aji_0001407c, local
	.string "A_hikaru_37"
.endobj str_A_hikaru_37_aji_0001407c

# .rodata:0x1F0 | 0x3220 | size: 0xC
.obj str_A_hikaru_38_aji_00014088, local
	.string "A_hikaru_38"
.endobj str_A_hikaru_38_aji_00014088

# .rodata:0x1FC | 0x322C | size: 0xC
.obj str_A_hikaru_39_aji_00014094, local
	.string "A_hikaru_39"
.endobj str_A_hikaru_39_aji_00014094

# .rodata:0x208 | 0x3238 | size: 0xC
.obj str_A_hikaru_40_aji_000140a0, local
	.string "A_hikaru_40"
.endobj str_A_hikaru_40_aji_000140a0

# .rodata:0x214 | 0x3244 | size: 0xC
.obj str_A_hikaru_41_aji_000140ac, local
	.string "A_hikaru_41"
.endobj str_A_hikaru_41_aji_000140ac

# .rodata:0x220 | 0x3250 | size: 0xC
.obj str_A_hikaru_42_aji_000140b8, local
	.string "A_hikaru_42"
.endobj str_A_hikaru_42_aji_000140b8

# .rodata:0x22C | 0x325C | size: 0xC
.obj str_A_hikaru_43_aji_000140c4, local
	.string "A_hikaru_43"
.endobj str_A_hikaru_43_aji_000140c4

# .rodata:0x238 | 0x3268 | size: 0xC
.obj str_A_hikaru_44_aji_000140d0, local
	.string "A_hikaru_44"
.endobj str_A_hikaru_44_aji_000140d0

# .rodata:0x244 | 0x3274 | size: 0x4
.obj str_box_aji_000140dc, local
	.string "box"
.endobj str_box_aji_000140dc

# .rodata:0x248 | 0x3278 | size: 0x6
.obj str_dummy_aji_000140e0, local
	.string "dummy"
.endobj str_dummy_aji_000140e0

# .rodata:0x24E | 0x327E | size: 0x2
.obj gap_03_0000327E_rodata, global
.hidden gap_03_0000327E_rodata
	.2byte 0x0000
.endobj gap_03_0000327E_rodata

# .rodata:0x250 | 0x3280 | size: 0x8
.obj str_yukayu1_aji_000140e8, local
	.string "yukayu1"
.endobj str_yukayu1_aji_000140e8

# .rodata:0x258 | 0x3288 | size: 0x8
.obj str_yukayu2_aji_000140f0, local
	.string "yukayu2"
.endobj str_yukayu2_aji_000140f0

# .rodata:0x260 | 0x3290 | size: 0x4
.obj str_ato_aji_000140f8, local
	.string "ato"
.endobj str_ato_aji_000140f8

# .rodata:0x264 | 0x3294 | size: 0x7
.obj str_mod_01_aji_000140fc, local
	.string "mod_01"
.endobj str_mod_01_aji_000140fc

# .rodata:0x26B | 0x329B | size: 0x1
.obj gap_03_0000329B_rodata, global
.hidden gap_03_0000329B_rodata
	.byte 0x00
.endobj gap_03_0000329B_rodata

# .rodata:0x26C | 0x329C | size: 0x8
.obj str_denyuka_aji_00014104, local
	.string "denyuka"
.endobj str_denyuka_aji_00014104

# .rodata:0x274 | 0x32A4 | size: 0xE
.obj str_BGM_STG7_DUN2_aji_0001410c, local
	.string "BGM_STG7_DUN2"
.endobj str_BGM_STG7_DUN2_aji_0001410c

# .rodata:0x282 | 0x32B2 | size: 0x2
.obj gap_03_000032B2_rodata, global
.hidden gap_03_000032B2_rodata
	.2byte 0x0000
.endobj gap_03_000032B2_rodata

# .rodata:0x284 | 0x32B4 | size: 0xE
.obj str_ENV_STG7_AJI1_aji_0001411c, local
	.string "ENV_STG7_AJI1"
.endobj str_ENV_STG7_AJI1_aji_0001411c

# .rodata:0x292 | 0x32C2 | size: 0x2
.obj gap_03_000032C2_rodata, global
.hidden gap_03_000032C2_rodata
	.2byte 0x0000
.endobj gap_03_000032C2_rodata

# .rodata:0x294 | 0x32C4 | size: 0x4
.obj str_no1_aji_0001412c, local
	.string "no1"
.endobj str_no1_aji_0001412c

# .rodata:0x298 | 0x32C8 | size: 0x7
.obj str_mobj00_aji_00014130, local
	.string "mobj00"
.endobj str_mobj00_aji_00014130

# .rodata:0x29F | 0x32CF | size: 0x1
.obj gap_03_000032CF_rodata, global
.hidden gap_03_000032CF_rodata
	.byte 0x00
.endobj gap_03_000032CF_rodata

# .rodata:0x2A0 | 0x32D0 | size: 0x19
.obj str_SFX_STG7_ELECTRIC_SH_aji_00014138, local
	.string "SFX_STG7_ELECTRIC_SHOCK1"
.endobj str_SFX_STG7_ELECTRIC_SH_aji_00014138
	.byte 0x00, 0x00, 0x00

# .rodata:0x2BC | 0x32EC | size: 0x4
.obj float_30_aji_00014154, local
	.float 30
.endobj float_30_aji_00014154

# .rodata:0x2C0 | 0x32F0 | size: 0x4
.obj float_1_aji_00014158, local
	.float 1
.endobj float_1_aji_00014158

# .rodata:0x2C4 | 0x32F4 | size: 0xC
.obj str_hikaru_PCT02d_aji_0001415c, local
	.string "hikaru_%02d"
.endobj str_hikaru_PCT02d_aji_0001415c

# .rodata:0x2D0 | 0x3300 | size: 0xB
.obj str_nashi_PCT02d_aji_00014168, local
	.string "nashi_%02d"
.endobj str_nashi_PCT02d_aji_00014168

# .rodata:0x2DB | 0x330B | size: 0x1
.obj gap_03_0000330B_rodata, global
.hidden gap_03_0000330B_rodata
	.byte 0x00
.endobj gap_03_0000330B_rodata

# .rodata:0x2DC | 0x330C | size: 0xA
.obj str_hikaru_01_aji_00014174, local
	.string "hikaru_01"
.endobj str_hikaru_01_aji_00014174

# .rodata:0x2E6 | 0x3316 | size: 0x2
.obj gap_03_00003316_rodata, global
.hidden gap_03_00003316_rodata
	.2byte 0x0000
.endobj gap_03_00003316_rodata

# .rodata:0x2E8 | 0x3318 | size: 0x9
.obj str_nashi_01_aji_00014180, local
	.string "nashi_01"
.endobj str_nashi_01_aji_00014180

# .rodata:0x2F1 | 0x3321 | size: 0x3
.obj gap_03_00003321_rodata, global
.hidden gap_03_00003321_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003321_rodata

# .rodata:0x2F4 | 0x3324 | size: 0xA
.obj str_A_hikaru_aji_0001418c, local
	.string "A_hikaru_"
.endobj str_A_hikaru_aji_0001418c

# .rodata:0x2FE | 0x332E | size: 0x2
.obj gap_03_0000332E_rodata, global
.hidden gap_03_0000332E_rodata
	.2byte 0x0000
.endobj gap_03_0000332E_rodata

# .rodata:0x300 | 0x3330 | size: 0xE
.obj str_A_hikaru_PCT02d_aji_00014198, local
	.string "A_hikaru_%02d"
.endobj str_A_hikaru_PCT02d_aji_00014198

# .rodata:0x30E | 0x333E | size: 0x2
.obj gap_03_0000333E_rodata, global
.hidden gap_03_0000333E_rodata
	.2byte 0x0000
.endobj gap_03_0000333E_rodata

# .rodata:0x310 | 0x3340 | size: 0x6
.obj str_A_no1_aji_000141a8, local
	.string "A_no1"
.endobj str_A_no1_aji_000141a8

# .rodata:0x316 | 0x3346 | size: 0x2
.obj gap_03_00003346_rodata, global
.hidden gap_03_00003346_rodata
	.2byte 0x0000
.endobj gap_03_00003346_rodata

# 0x00018A68..0x00018FE8 | size: 0x580
.data
.balign 8

# .data:0x0 | 0x18A68 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x18A70 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x18A74 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x18A78 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x18A7C | size: 0x4
.obj gap_04_00018A7C_data, global
.hidden gap_04_00018A7C_data
	.4byte 0x00000000
.endobj gap_04_00018A7C_data

# .data:0x18 | 0x18A80 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x18A88 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x18A8C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x18A90 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x18A98 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x18A9C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x18AA0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x18AA4 | size: 0x4
.obj gap_04_00018AA4_data, global
.hidden gap_04_00018AA4_data
	.4byte 0x00000000
.endobj gap_04_00018AA4_data

# .data:0x40 | 0x18AA8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x18AB0 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x18AB4 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x18AB8 | size: 0x58
.obj e_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7980
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_S_door1_1_aji_00013e98
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_S_door1_2_aji_00013ea4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e_door_close

# .data:0xA8 | 0x18B10 | size: 0x58
.obj e_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7980
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_S_door1_1_aji_00013e98
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_S_door1_2_aji_00013ea4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e_door_open

# .data:0x100 | 0x18B68 | size: 0x78
.obj bero_entry_data, local
	.4byte str_e_bero_aji_00013eb0
	.4byte 0x0001000A
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_aji_01_aji_00013eb8
	.4byte str_w_bero_4_aji_00013ec0
	.4byte 0x00050005
	.4byte e_door_close
	.4byte e_door_open
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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

# .data:0x178 | 0x18BE0 | size: 0xC8
.obj hit_list, local
	.4byte str_A_hikaru_01_aji_00013ecc
	.4byte str_A_hikaru_02_aji_00013ed8
	.4byte str_A_hikaru_03_aji_00013ee4
	.4byte str_A_hikaru_04_aji_00013ef0
	.4byte str_A_hikaru_05_aji_00013efc
	.4byte str_A_hikaru_06_aji_00013f08
	.4byte str_A_hikaru_07_aji_00013f14
	.4byte str_A_hikaru_08_aji_00013f20
	.4byte str_A_hikaru_09_aji_00013f2c
	.4byte str_A_hikaru_10_aji_00013f38
	.4byte str_A_hikaru_11_aji_00013f44
	.4byte str_A_hikaru_12_aji_00013f50
	.4byte str_A_hikaru_13_aji_00013f5c
	.4byte str_A_hikaru_14_aji_00013f68
	.4byte str_A_hikaru_15_aji_00013f74
	.4byte str_A_hikaru_16_aji_00013f80
	.4byte str_A_hikaru_17_aji_00013f8c
	.4byte str_A_hikaru_18_aji_00013f98
	.4byte str_A_hikaru_19_aji_00013fa4
	.4byte str_A_hikaru_20_aji_00013fb0
	.4byte str_A_hikaru_21_aji_00013fbc
	.4byte str_A_hikaru_22_aji_00013fc8
	.4byte str_A_hikaru_23_aji_00013fd4
	.4byte str_A_hikaru_24_aji_00013fe0
	.4byte str_A_hikaru_25_aji_00013fec
	.4byte str_A_hikaru_26_aji_00013ff8
	.4byte str_A_hikaru_27_aji_00014004
	.4byte str_A_hikaru_08_aji_00013f20
	.4byte str_A_hikaru_28_aji_00014010
	.4byte str_A_hikaru_29_aji_0001401c
	.4byte str_A_hikaru_30_aji_00014028
	.4byte str_A_hikaru_31_aji_00014034
	.4byte str_A_hikaru_32_aji_00014040
	.4byte str_A_hikaru_12_aji_00013f50
	.4byte str_A_hikaru_13_aji_00013f5c
	.4byte str_A_hikaru_33_aji_0001404c
	.4byte str_A_hikaru_15_aji_00013f74
	.4byte str_A_hikaru_34_aji_00014058
	.4byte str_A_hikaru_35_aji_00014064
	.4byte str_A_hikaru_36_aji_00014070
	.4byte str_A_hikaru_37_aji_0001407c
	.4byte str_A_hikaru_38_aji_00014088
	.4byte str_A_hikaru_39_aji_00014094
	.4byte str_A_hikaru_40_aji_000140a0
	.4byte str_A_hikaru_41_aji_000140ac
	.4byte str_A_hikaru_42_aji_000140b8
	.4byte str_A_hikaru_41_aji_000140ac
	.4byte str_A_hikaru_40_aji_000140a0
	.4byte str_A_hikaru_43_aji_000140c4
	.4byte str_A_hikaru_44_aji_000140d0
.endobj hit_list

# .data:0x240 | 0x18CA8 | size: 0x164
.obj evt_box, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte str_box_aji_000140dc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_dummy_aji_000140e0
	.4byte 0x0000001E
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000011
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mobj_wait_animation_end
	.4byte str_box_aji_000140dc
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_dummy_aji_000140e0
	.4byte 0x00020032
	.4byte 0xF8406BD7
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x0001005B
	.4byte hikaru_off
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x00010005
	.4byte 0x00000005
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_yukayu1_aji_000140e8
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_yukayu2_aji_000140f0
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_ato_aji_000140f8
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x00000096
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_yukayu1_aji_000140e8
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_yukayu2_aji_000140f0
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_ato_aji_000140f8
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

# .data:0x3A4 | 0x18E0C | size: 0x20
.obj dmgReturnPt, local
	.4byte str_mod_01_aji_000140fc
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj dmgReturnPt

# .data:0x3C4 | 0x18E2C | size: 0xA0
.obj hikaru_yuka_init, local
	.4byte 0x0009005B
	.4byte evt_mobj_itembox
	.4byte str_box_aji_000140dc
	.4byte 0xFFFFFEA2
	.4byte 0x0000000A
	.4byte 0xFFFFFFF6
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte evt_box
	.4byte 0xF8406BD3
	.4byte 0x0002005B
	.4byte evt_hit_damage_return_set
	.4byte dmgReturnPt
	.4byte 0x0000006B
	.4byte 0x0001005B
	.4byte thunder_main
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001005B
	.4byte mario_chk
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_yukayu1_aji_000140e8
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_yukayu2_aji_000140f0
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_denyuka_aji_00014104
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hikaru_yuka_init

# .data:0x464 | 0x18ECC | size: 0x11C
.obj aji_12_init_evt_2_data_18ECC, global
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG7_DUN2_aji_0001410c
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG7_AJI1_aji_0001411c
	.4byte 0x0002005B
	.4byte evt_snd_set_rev_mode
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_no1_aji_0001412c
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF8406BD7
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte hikaru_yuka_init
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_ato_aji_000140f8
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0001005B
	.4byte hikaru_off
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_yukayu1_aji_000140e8
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_yukayu2_aji_000140f0
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_ato_aji_000140f8
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0009005B
	.4byte evt_mobj_badgeblk
	.4byte str_mobj00_aji_00014130
	.4byte 0x000000AA
	.4byte 0x0000003C
	.4byte 0x00000078
	.4byte 0x00000090
	.4byte 0x00000000
	.4byte 0xF8406BF6
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte evt_emergency_2_data_1E408
	.4byte 0x00000002
	.4byte 0x00000001
.endobj aji_12_init_evt_2_data_18ECC
