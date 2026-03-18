.include "macros.inc"
.file "aji_05.o"

# 0x00000E84..0x000013D0 | size: 0x54C
.text
.balign 4

# .text:0x0 | 0xE84 | size: 0x1EC
.fn ride_chk, local
/* 00000E84 00000F48  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 00000E88 00000F4C  7C 08 02 A6 */	mflr r0
/* 00000E8C 00000F50  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 00000E90 00000F54  BF 21 00 94 */	stmw r25, 0x94(r1)
/* 00000E94 00000F58  7C 7F 1B 78 */	mr r31, r3
/* 00000E98 00000F5C  7C 99 23 78 */	mr r25, r4
/* 00000E9C 00000F60  48 00 53 A1 */	bl marioGetPtr
/* 00000EA0 00000F64  7C 7C 1B 78 */	mr r28, r3
/* 00000EA4 00000F68  38 60 00 00 */	li r3, 0x0
/* 00000EA8 00000F6C  48 00 53 95 */	bl partyGetPtr
/* 00000EAC 00000F70  2C 19 00 00 */	cmpwi r25, 0x0
/* 00000EB0 00000F74  7C 7B 1B 78 */	mr r27, r3
/* 00000EB4 00000F78  41 82 00 18 */	beq .L_00000ECC
/* 00000EB8 00000F7C  3C 60 00 00 */	lis r3, onoff$588@ha
/* 00000EBC 00000F80  38 80 00 00 */	li r4, 0x0
/* 00000EC0 00000F84  38 63 00 00 */	addi r3, r3, onoff$588@l
/* 00000EC4 00000F88  38 A0 00 60 */	li r5, 0x60
/* 00000EC8 00000F8C  48 00 53 75 */	bl memset
.L_00000ECC:
/* 00000ECC 00000F90  28 1B 00 00 */	cmplwi r27, 0x0
/* 00000ED0 00000F94  41 82 00 30 */	beq .L_00000F00
/* 00000ED4 00000F98  88 1B 00 31 */	lbz r0, 0x31(r27)
/* 00000ED8 00000F9C  2C 00 00 04 */	cmpwi r0, 0x4
/* 00000EDC 00000FA0  40 82 00 24 */	bne .L_00000F00
/* 00000EE0 00000FA4  80 1B 00 00 */	lwz r0, 0x0(r27)
/* 00000EE4 00000FA8  54 00 05 EF */	rlwinm. r0, r0, 0, 23, 23
/* 00000EE8 00000FAC  41 82 00 18 */	beq .L_00000F00
/* 00000EEC 00000FB0  83 5C 01 E8 */	lwz r26, 0x1e8(r28)
/* 00000EF0 00000FB4  28 1A 00 00 */	cmplwi r26, 0x0
/* 00000EF4 00000FB8  40 82 00 10 */	bne .L_00000F04
/* 00000EF8 00000FBC  83 5C 01 EC */	lwz r26, 0x1ec(r28)
/* 00000EFC 00000FC0  48 00 00 08 */	b .L_00000F04
.L_00000F00:
/* 00000F00 00000FC4  83 5C 01 FC */	lwz r26, 0x1fc(r28)
.L_00000F04:
/* 00000F04 00000FC8  3C 80 00 00 */	lis r4, str_A_hikaru_PCT02d_aji_00012430@ha
/* 00000F08 00000FCC  3C 60 00 00 */	lis r3, onoff$588@ha
/* 00000F0C 00000FD0  3B 64 00 00 */	addi r27, r4, str_A_hikaru_PCT02d_aji_00012430@l
/* 00000F10 00000FD4  3B 20 00 00 */	li r25, 0x0
/* 00000F14 00000FD8  3B A3 00 00 */	addi r29, r3, onoff$588@l
/* 00000F18 00000FDC  3B C0 00 00 */	li r30, 0x0
/* 00000F1C 00000FE0  3B 80 00 1E */	li r28, 0x1e
.L_00000F20:
/* 00000F20 00000FE4  28 1A 00 00 */	cmplwi r26, 0x0
/* 00000F24 00000FE8  41 82 00 34 */	beq .L_00000F58
/* 00000F28 00000FEC  7F 64 DB 78 */	mr r4, r27
/* 00000F2C 00000FF0  38 61 00 48 */	addi r3, r1, 0x48
/* 00000F30 00000FF4  38 B9 00 01 */	addi r5, r25, 0x1
/* 00000F34 00000FF8  4C C6 31 82 */	crclr cr1eq
/* 00000F38 00000FFC  48 00 53 05 */	bl sprintf
/* 00000F3C 00001000  80 7A 00 08 */	lwz r3, 0x8(r26)
/* 00000F40 00001004  38 81 00 48 */	addi r4, r1, 0x48
/* 00000F44 00001008  80 63 00 00 */	lwz r3, 0x0(r3)
/* 00000F48 0000100C  48 00 52 F5 */	bl strcmp
/* 00000F4C 00001010  2C 03 00 00 */	cmpwi r3, 0x0
/* 00000F50 00001014  40 82 00 08 */	bne .L_00000F58
/* 00000F54 00001018  7F 9D F1 2E */	stwx r28, r29, r30
.L_00000F58:
/* 00000F58 0000101C  3B 39 00 01 */	addi r25, r25, 0x1
/* 00000F5C 00001020  3B DE 00 04 */	addi r30, r30, 0x4
/* 00000F60 00001024  2C 19 00 18 */	cmpwi r25, 0x18
/* 00000F64 00001028  41 80 FF BC */	blt .L_00000F20
/* 00000F68 0000102C  3C 60 00 00 */	lis r3, onoff$588@ha
/* 00000F6C 00001030  3B 60 00 00 */	li r27, 0x0
/* 00000F70 00001034  3B A3 00 00 */	addi r29, r3, onoff$588@l
/* 00000F74 00001038  3B C0 00 00 */	li r30, 0x0
.L_00000F78:
/* 00000F78 0000103C  7C 7D F0 2E */	lwzx r3, r29, r30
/* 00000F7C 00001040  2C 03 00 00 */	cmpwi r3, 0x0
/* 00000F80 00001044  40 81 00 0C */	ble .L_00000F8C
/* 00000F84 00001048  38 03 FF FF */	subi r0, r3, 0x1
/* 00000F88 0000104C  7C 1D F1 2E */	stwx r0, r29, r30
.L_00000F8C:
/* 00000F8C 00001050  7C 1D F0 2E */	lwzx r0, r29, r30
/* 00000F90 00001054  2C 00 00 00 */	cmpwi r0, 0x0
/* 00000F94 00001058  41 82 00 50 */	beq .L_00000FE4
/* 00000F98 0000105C  3C 80 00 00 */	lis r4, str_hikaru_PCT02d_aji_00012440@ha
/* 00000F9C 00001060  38 61 00 08 */	addi r3, r1, 0x8
/* 00000FA0 00001064  38 84 00 00 */	addi r4, r4, str_hikaru_PCT02d_aji_00012440@l
/* 00000FA4 00001068  38 BB 00 01 */	addi r5, r27, 0x1
/* 00000FA8 0000106C  4C C6 31 82 */	crclr cr1eq
/* 00000FAC 00001070  48 00 52 91 */	bl sprintf
/* 00000FB0 00001074  38 61 00 08 */	addi r3, r1, 0x8
/* 00000FB4 00001078  38 80 00 01 */	li r4, 0x1
/* 00000FB8 0000107C  48 00 52 85 */	bl mapGrpFlagOff
/* 00000FBC 00001080  3C 80 00 00 */	lis r4, str_nashi_PCT02d_aji_0001244c@ha
/* 00000FC0 00001084  38 61 00 08 */	addi r3, r1, 0x8
/* 00000FC4 00001088  38 84 00 00 */	addi r4, r4, str_nashi_PCT02d_aji_0001244c@l
/* 00000FC8 0000108C  38 BB 00 01 */	addi r5, r27, 0x1
/* 00000FCC 00001090  4C C6 31 82 */	crclr cr1eq
/* 00000FD0 00001094  48 00 52 6D */	bl sprintf
/* 00000FD4 00001098  38 61 00 08 */	addi r3, r1, 0x8
/* 00000FD8 0000109C  38 80 00 01 */	li r4, 0x1
/* 00000FDC 000010A0  48 00 52 61 */	bl mapGrpFlagOn
/* 00000FE0 000010A4  48 00 00 4C */	b .L_0000102C
.L_00000FE4:
/* 00000FE4 000010A8  3C 80 00 00 */	lis r4, str_hikaru_PCT02d_aji_00012440@ha
/* 00000FE8 000010AC  38 61 00 08 */	addi r3, r1, 0x8
/* 00000FEC 000010B0  38 84 00 00 */	addi r4, r4, str_hikaru_PCT02d_aji_00012440@l
/* 00000FF0 000010B4  38 BB 00 01 */	addi r5, r27, 0x1
/* 00000FF4 000010B8  4C C6 31 82 */	crclr cr1eq
/* 00000FF8 000010BC  48 00 52 45 */	bl sprintf
/* 00000FFC 000010C0  38 61 00 08 */	addi r3, r1, 0x8
/* 00001000 000010C4  38 80 00 01 */	li r4, 0x1
/* 00001004 000010C8  48 00 52 39 */	bl mapGrpFlagOn
/* 00001008 000010CC  3C 80 00 00 */	lis r4, str_nashi_PCT02d_aji_0001244c@ha
/* 0000100C 000010D0  38 61 00 08 */	addi r3, r1, 0x8
/* 00001010 000010D4  38 84 00 00 */	addi r4, r4, str_nashi_PCT02d_aji_0001244c@l
/* 00001014 000010D8  38 BB 00 01 */	addi r5, r27, 0x1
/* 00001018 000010DC  4C C6 31 82 */	crclr cr1eq
/* 0000101C 000010E0  48 00 52 21 */	bl sprintf
/* 00001020 000010E4  38 61 00 08 */	addi r3, r1, 0x8
/* 00001024 000010E8  38 80 00 01 */	li r4, 0x1
/* 00001028 000010EC  48 00 52 15 */	bl mapGrpFlagOff
.L_0000102C:
/* 0000102C 000010F0  3B 7B 00 01 */	addi r27, r27, 0x1
/* 00001030 000010F4  3B DE 00 04 */	addi r30, r30, 0x4
/* 00001034 000010F8  2C 1B 00 18 */	cmpwi r27, 0x18
/* 00001038 000010FC  41 80 FF 40 */	blt .L_00000F78
/* 0000103C 00001100  3C 80 F8 40 */	lis r4, 0xf840
/* 00001040 00001104  7F E3 FB 78 */	mr r3, r31
/* 00001044 00001108  38 84 6B D6 */	addi r4, r4, 0x6bd6
/* 00001048 0000110C  48 00 51 F5 */	bl evtGetValue
/* 0000104C 00001110  20 63 00 00 */	subfic r3, r3, 0x0
/* 00001050 00001114  38 00 00 02 */	li r0, 0x2
/* 00001054 00001118  7C 63 19 10 */	subfe r3, r3, r3
/* 00001058 0000111C  7C 03 18 38 */	and r3, r0, r3
/* 0000105C 00001120  BB 21 00 94 */	lmw r25, 0x94(r1)
/* 00001060 00001124  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 00001064 00001128  7C 08 03 A6 */	mtlr r0
/* 00001068 0000112C  38 21 00 B0 */	addi r1, r1, 0xb0
/* 0000106C 00001130  4E 80 00 20 */	blr
.endfn ride_chk

# .text:0x1EC | 0x1070 | size: 0x100
.fn thunder_main, local
/* 00001070 00001134  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00001074 00001138  7C 08 02 A6 */	mflr r0
/* 00001078 0000113C  90 01 00 14 */	stw r0, 0x14(r1)
/* 0000107C 00001140  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00001080 00001144  7C 7E 1B 78 */	mr r30, r3
/* 00001084 00001148  7C 9F 23 78 */	mr r31, r4
/* 00001088 0000114C  48 00 51 B5 */	bl marioGetPtr
/* 0000108C 00001150  2C 1F 00 00 */	cmpwi r31, 0x0
/* 00001090 00001154  7C 7F 1B 78 */	mr r31, r3
/* 00001094 00001158  41 82 00 0C */	beq .L_000010A0
/* 00001098 0000115C  38 00 00 00 */	li r0, 0x0
/* 0000109C 00001160  90 1E 00 78 */	stw r0, 0x78(r30)
.L_000010A0:
/* 000010A0 00001164  80 1E 00 78 */	lwz r0, 0x78(r30)
/* 000010A4 00001168  2C 00 00 00 */	cmpwi r0, 0x0
/* 000010A8 0000116C  40 82 00 9C */	bne .L_00001144
/* 000010AC 00001170  A0 1F 00 2E */	lhz r0, 0x2e(r31)
/* 000010B0 00001174  28 00 00 20 */	cmplwi r0, 0x20
/* 000010B4 00001178  40 82 00 A4 */	bne .L_00001158
/* 000010B8 0000117C  38 00 00 01 */	li r0, 0x1
/* 000010BC 00001180  3C 60 00 00 */	lis r3, str_SFX_STG7_ELECTRIC_SH_aji_00012458@ha
/* 000010C0 00001184  90 1E 00 78 */	stw r0, 0x78(r30)
/* 000010C4 00001188  38 63 00 00 */	addi r3, r3, str_SFX_STG7_ELECTRIC_SH_aji_00012458@l
/* 000010C8 0000118C  38 9F 00 8C */	addi r4, r31, 0x8c
/* 000010CC 00001190  48 00 51 71 */	bl psndSFXOn_3D
/* 000010D0 00001194  3C 80 00 00 */	lis r4, float_30_aji_00012474@ha
/* 000010D4 00001198  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 000010D8 0000119C  C0 44 00 00 */	lfs f2, float_30_aji_00012474@l(r4)
/* 000010DC 000011A0  3C 60 00 00 */	lis r3, float_1_aji_00012478@ha
/* 000010E0 000011A4  38 83 00 00 */	addi r4, r3, float_1_aji_00012478@l
/* 000010E4 000011A8  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 000010E8 000011AC  EC 42 00 2A */	fadds f2, f2, f0
/* 000010EC 000011B0  C0 84 00 00 */	lfs f4, 0x0(r4)
/* 000010F0 000011B4  C0 7F 00 94 */	lfs f3, 0x94(r31)
/* 000010F4 000011B8  38 60 00 00 */	li r3, 0x0
/* 000010F8 000011BC  38 80 00 64 */	li r4, 0x64
/* 000010FC 000011C0  48 00 51 41 */	bl effAkariChargeN64Entry
/* 00001100 000011C4  80 83 00 0C */	lwz r4, 0xc(r3)
/* 00001104 000011C8  38 00 00 1E */	li r0, 0x1e
/* 00001108 000011CC  38 C0 00 E7 */	li r6, 0xe7
/* 0000110C 000011D0  38 A0 00 DB */	li r5, 0xdb
/* 00001110 000011D4  90 04 00 18 */	stw r0, 0x18(r4)
/* 00001114 000011D8  38 00 00 00 */	li r0, 0x0
/* 00001118 000011DC  80 83 00 0C */	lwz r4, 0xc(r3)
/* 0000111C 000011E0  90 C4 00 1C */	stw r6, 0x1c(r4)
/* 00001120 000011E4  80 83 00 0C */	lwz r4, 0xc(r3)
/* 00001124 000011E8  90 A4 00 20 */	stw r5, 0x20(r4)
/* 00001128 000011EC  80 83 00 0C */	lwz r4, 0xc(r3)
/* 0000112C 000011F0  90 04 00 28 */	stw r0, 0x28(r4)
/* 00001130 000011F4  80 83 00 0C */	lwz r4, 0xc(r3)
/* 00001134 000011F8  90 04 00 2C */	stw r0, 0x2c(r4)
/* 00001138 000011FC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 0000113C 00001200  90 03 00 30 */	stw r0, 0x30(r3)
/* 00001140 00001204  48 00 00 18 */	b .L_00001158
.L_00001144:
/* 00001144 00001208  A0 1F 00 2E */	lhz r0, 0x2e(r31)
/* 00001148 0000120C  28 00 00 20 */	cmplwi r0, 0x20
/* 0000114C 00001210  41 82 00 0C */	beq .L_00001158
/* 00001150 00001214  38 00 00 00 */	li r0, 0x0
/* 00001154 00001218  90 1E 00 78 */	stw r0, 0x78(r30)
.L_00001158:
/* 00001158 0000121C  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 0000115C 00001220  38 60 00 00 */	li r3, 0x0
/* 00001160 00001224  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00001164 00001228  7C 08 03 A6 */	mtlr r0
/* 00001168 0000122C  38 21 00 10 */	addi r1, r1, 0x10
/* 0000116C 00001230  4E 80 00 20 */	blr
.endfn thunder_main

# .text:0x2EC | 0x1170 | size: 0x88
.fn _hikaru_off, local
/* 00001170 00001234  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 00001174 00001238  7C 08 02 A6 */	mflr r0
/* 00001178 0000123C  3C 80 00 00 */	lis r4, str_hikaru_PCT02d_aji_00012440@ha
/* 0000117C 00001240  3C 60 00 00 */	lis r3, str_nashi_PCT02d_aji_0001244c@ha
/* 00001180 00001244  90 01 00 64 */	stw r0, 0x64(r1)
/* 00001184 00001248  BF A1 00 54 */	stmw r29, 0x54(r1)
/* 00001188 0000124C  3B C4 00 00 */	addi r30, r4, str_hikaru_PCT02d_aji_00012440@l
/* 0000118C 00001250  3B A0 00 01 */	li r29, 0x1
/* 00001190 00001254  3B E3 00 00 */	addi r31, r3, str_nashi_PCT02d_aji_0001244c@l
.L_00001194:
/* 00001194 00001258  7F C4 F3 78 */	mr r4, r30
/* 00001198 0000125C  7F A5 EB 78 */	mr r5, r29
/* 0000119C 00001260  38 61 00 08 */	addi r3, r1, 0x8
/* 000011A0 00001264  4C C6 31 82 */	crclr cr1eq
/* 000011A4 00001268  48 00 50 99 */	bl sprintf
/* 000011A8 0000126C  38 61 00 08 */	addi r3, r1, 0x8
/* 000011AC 00001270  38 80 00 01 */	li r4, 0x1
/* 000011B0 00001274  48 00 50 8D */	bl mapGrpFlagOn
/* 000011B4 00001278  7F E4 FB 78 */	mr r4, r31
/* 000011B8 0000127C  7F A5 EB 78 */	mr r5, r29
/* 000011BC 00001280  38 61 00 08 */	addi r3, r1, 0x8
/* 000011C0 00001284  4C C6 31 82 */	crclr cr1eq
/* 000011C4 00001288  48 00 50 79 */	bl sprintf
/* 000011C8 0000128C  38 61 00 08 */	addi r3, r1, 0x8
/* 000011CC 00001290  38 80 00 01 */	li r4, 0x1
/* 000011D0 00001294  48 00 50 6D */	bl mapGrpFlagOn
/* 000011D4 00001298  3B BD 00 01 */	addi r29, r29, 0x1
/* 000011D8 0000129C  2C 1D 00 19 */	cmpwi r29, 0x19
/* 000011DC 000012A0  41 80 FF B8 */	blt .L_00001194
/* 000011E0 000012A4  BB A1 00 54 */	lmw r29, 0x54(r1)
/* 000011E4 000012A8  38 60 00 02 */	li r3, 0x2
/* 000011E8 000012AC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 000011EC 000012B0  7C 08 03 A6 */	mtlr r0
/* 000011F0 000012B4  38 21 00 60 */	addi r1, r1, 0x60
/* 000011F4 000012B8  4E 80 00 20 */	blr
.endfn _hikaru_off

# .text:0x374 | 0x11F8 | size: 0x88
.fn _hikaru_on, local
/* 000011F8 000012BC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 000011FC 000012C0  7C 08 02 A6 */	mflr r0
/* 00001200 000012C4  3C 80 00 00 */	lis r4, str_hikaru_PCT02d_aji_00012440@ha
/* 00001204 000012C8  3C 60 00 00 */	lis r3, str_nashi_PCT02d_aji_0001244c@ha
/* 00001208 000012CC  90 01 00 64 */	stw r0, 0x64(r1)
/* 0000120C 000012D0  BF A1 00 54 */	stmw r29, 0x54(r1)
/* 00001210 000012D4  3B C4 00 00 */	addi r30, r4, str_hikaru_PCT02d_aji_00012440@l
/* 00001214 000012D8  3B A0 00 01 */	li r29, 0x1
/* 00001218 000012DC  3B E3 00 00 */	addi r31, r3, str_nashi_PCT02d_aji_0001244c@l
.L_0000121C:
/* 0000121C 000012E0  7F C4 F3 78 */	mr r4, r30
/* 00001220 000012E4  7F A5 EB 78 */	mr r5, r29
/* 00001224 000012E8  38 61 00 08 */	addi r3, r1, 0x8
/* 00001228 000012EC  4C C6 31 82 */	crclr cr1eq
/* 0000122C 000012F0  48 00 50 11 */	bl sprintf
/* 00001230 000012F4  38 61 00 08 */	addi r3, r1, 0x8
/* 00001234 000012F8  38 80 00 01 */	li r4, 0x1
/* 00001238 000012FC  48 00 50 05 */	bl mapGrpFlagOn
/* 0000123C 00001300  7F E4 FB 78 */	mr r4, r31
/* 00001240 00001304  7F A5 EB 78 */	mr r5, r29
/* 00001244 00001308  38 61 00 08 */	addi r3, r1, 0x8
/* 00001248 0000130C  4C C6 31 82 */	crclr cr1eq
/* 0000124C 00001310  48 00 4F F1 */	bl sprintf
/* 00001250 00001314  38 61 00 08 */	addi r3, r1, 0x8
/* 00001254 00001318  38 80 00 01 */	li r4, 0x1
/* 00001258 0000131C  48 00 4F E5 */	bl mapGrpFlagOff
/* 0000125C 00001320  3B BD 00 01 */	addi r29, r29, 0x1
/* 00001260 00001324  2C 1D 00 19 */	cmpwi r29, 0x19
/* 00001264 00001328  41 80 FF B8 */	blt .L_0000121C
/* 00001268 0000132C  BB A1 00 54 */	lmw r29, 0x54(r1)
/* 0000126C 00001330  38 60 00 02 */	li r3, 0x2
/* 00001270 00001334  80 01 00 64 */	lwz r0, 0x64(r1)
/* 00001274 00001338  7C 08 03 A6 */	mtlr r0
/* 00001278 0000133C  38 21 00 60 */	addi r1, r1, 0x60
/* 0000127C 00001340  4E 80 00 20 */	blr
.endfn _hikaru_on

# .text:0x3FC | 0x1280 | size: 0x150
.fn loop_onoff, local
/* 00001280 00001344  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 00001284 00001348  7C 08 02 A6 */	mflr r0
/* 00001288 0000134C  2C 04 00 00 */	cmpwi r4, 0x0
/* 0000128C 00001350  90 01 00 54 */	stw r0, 0x54(r1)
/* 00001290 00001354  BF C1 00 48 */	stmw r30, 0x48(r1)
/* 00001294 00001358  7C 7F 1B 78 */	mr r31, r3
/* 00001298 0000135C  41 82 00 14 */	beq .L_000012AC
/* 0000129C 00001360  38 00 00 00 */	li r0, 0x0
/* 000012A0 00001364  90 1F 00 78 */	stw r0, 0x78(r31)
/* 000012A4 00001368  90 1F 00 7C */	stw r0, 0x7c(r31)
/* 000012A8 0000136C  90 1F 00 80 */	stw r0, 0x80(r31)
.L_000012AC:
/* 000012AC 00001370  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 000012B0 00001374  38 03 00 01 */	addi r0, r3, 0x1
/* 000012B4 00001378  90 1F 00 78 */	stw r0, 0x78(r31)
/* 000012B8 0000137C  80 1F 00 78 */	lwz r0, 0x78(r31)
/* 000012BC 00001380  2C 00 00 02 */	cmpwi r0, 0x2
/* 000012C0 00001384  40 81 00 48 */	ble .L_00001308
/* 000012C4 00001388  38 80 00 00 */	li r4, 0x0
/* 000012C8 0000138C  90 9F 00 78 */	stw r4, 0x78(r31)
/* 000012CC 00001390  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 000012D0 00001394  38 03 00 01 */	addi r0, r3, 0x1
/* 000012D4 00001398  90 1F 00 7C */	stw r0, 0x7c(r31)
/* 000012D8 0000139C  80 1F 00 7C */	lwz r0, 0x7c(r31)
/* 000012DC 000013A0  2C 00 00 19 */	cmpwi r0, 0x19
/* 000012E0 000013A4  41 80 00 28 */	blt .L_00001308
/* 000012E4 000013A8  90 9F 00 7C */	stw r4, 0x7c(r31)
/* 000012E8 000013AC  80 7F 00 80 */	lwz r3, 0x80(r31)
/* 000012EC 000013B0  38 03 00 01 */	addi r0, r3, 0x1
/* 000012F0 000013B4  90 1F 00 80 */	stw r0, 0x80(r31)
/* 000012F4 000013B8  80 1F 00 80 */	lwz r0, 0x80(r31)
/* 000012F8 000013BC  2C 00 00 01 */	cmpwi r0, 0x1
/* 000012FC 000013C0  40 81 00 0C */	ble .L_00001308
/* 00001300 000013C4  38 60 00 02 */	li r3, 0x2
/* 00001304 000013C8  48 00 00 B8 */	b .L_000013BC
.L_00001308:
/* 00001308 000013CC  3B C0 00 01 */	li r30, 0x1
.L_0000130C:
/* 0000130C 000013D0  80 1F 00 7C */	lwz r0, 0x7c(r31)
/* 00001310 000013D4  7C 1E 00 00 */	cmpw r30, r0
/* 00001314 000013D8  40 82 00 50 */	bne .L_00001364
/* 00001318 000013DC  3C 60 00 00 */	lis r3, str_hikaru_PCT02d_aji_00012440@ha
/* 0000131C 000013E0  7F C5 F3 78 */	mr r5, r30
/* 00001320 000013E4  38 83 00 00 */	addi r4, r3, str_hikaru_PCT02d_aji_00012440@l
/* 00001324 000013E8  38 61 00 08 */	addi r3, r1, 0x8
/* 00001328 000013EC  4C C6 31 82 */	crclr cr1eq
/* 0000132C 000013F0  48 00 4F 11 */	bl sprintf
/* 00001330 000013F4  38 61 00 08 */	addi r3, r1, 0x8
/* 00001334 000013F8  38 80 00 01 */	li r4, 0x1
/* 00001338 000013FC  48 00 4F 05 */	bl mapGrpFlagOff
/* 0000133C 00001400  3C 60 00 00 */	lis r3, str_nashi_PCT02d_aji_0001244c@ha
/* 00001340 00001404  7F C5 F3 78 */	mr r5, r30
/* 00001344 00001408  38 83 00 00 */	addi r4, r3, str_nashi_PCT02d_aji_0001244c@l
/* 00001348 0000140C  38 61 00 08 */	addi r3, r1, 0x8
/* 0000134C 00001410  4C C6 31 82 */	crclr cr1eq
/* 00001350 00001414  48 00 4E ED */	bl sprintf
/* 00001354 00001418  38 61 00 08 */	addi r3, r1, 0x8
/* 00001358 0000141C  38 80 00 01 */	li r4, 0x1
/* 0000135C 00001420  48 00 4E E1 */	bl mapGrpFlagOn
/* 00001360 00001424  48 00 00 4C */	b .L_000013AC
.L_00001364:
/* 00001364 00001428  3C 60 00 00 */	lis r3, str_hikaru_PCT02d_aji_00012440@ha
/* 00001368 0000142C  7F C5 F3 78 */	mr r5, r30
/* 0000136C 00001430  38 83 00 00 */	addi r4, r3, str_hikaru_PCT02d_aji_00012440@l
/* 00001370 00001434  38 61 00 08 */	addi r3, r1, 0x8
/* 00001374 00001438  4C C6 31 82 */	crclr cr1eq
/* 00001378 0000143C  48 00 4E C5 */	bl sprintf
/* 0000137C 00001440  38 61 00 08 */	addi r3, r1, 0x8
/* 00001380 00001444  38 80 00 01 */	li r4, 0x1
/* 00001384 00001448  48 00 4E B9 */	bl mapGrpFlagOn
/* 00001388 0000144C  3C 60 00 00 */	lis r3, str_nashi_PCT02d_aji_0001244c@ha
/* 0000138C 00001450  7F C5 F3 78 */	mr r5, r30
/* 00001390 00001454  38 83 00 00 */	addi r4, r3, str_nashi_PCT02d_aji_0001244c@l
/* 00001394 00001458  38 61 00 08 */	addi r3, r1, 0x8
/* 00001398 0000145C  4C C6 31 82 */	crclr cr1eq
/* 0000139C 00001460  48 00 4E A1 */	bl sprintf
/* 000013A0 00001464  38 61 00 08 */	addi r3, r1, 0x8
/* 000013A4 00001468  38 80 00 01 */	li r4, 0x1
/* 000013A8 0000146C  48 00 4E 95 */	bl mapGrpFlagOff
.L_000013AC:
/* 000013AC 00001470  3B DE 00 01 */	addi r30, r30, 0x1
/* 000013B0 00001474  2C 1E 00 19 */	cmpwi r30, 0x19
/* 000013B4 00001478  41 80 FF 58 */	blt .L_0000130C
/* 000013B8 0000147C  38 60 00 00 */	li r3, 0x0
.L_000013BC:
/* 000013BC 00001480  BB C1 00 48 */	lmw r30, 0x48(r1)
/* 000013C0 00001484  80 01 00 54 */	lwz r0, 0x54(r1)
/* 000013C4 00001488  7C 08 03 A6 */	mtlr r0
/* 000013C8 0000148C  38 21 00 50 */	addi r1, r1, 0x50
/* 000013CC 00001490  4E 80 00 20 */	blr
.endfn loop_onoff

# 0x00001530..0x00001618 | size: 0xE8
.rodata
.balign 8

# .rodata:0x0 | 0x1530 | size: 0xA
.obj str_S_door1_1_aji_00012398, local
	.string "S_door1_1"
.endobj str_S_door1_1_aji_00012398

# .rodata:0xA | 0x153A | size: 0x2
.obj gap_03_0000153A_rodata, global
.hidden gap_03_0000153A_rodata
	.2byte 0x0000
.endobj gap_03_0000153A_rodata

# .rodata:0xC | 0x153C | size: 0xA
.obj str_S_door1_2_aji_000123a4, local
	.string "S_door1_2"
.endobj str_S_door1_2_aji_000123a4

# .rodata:0x16 | 0x1546 | size: 0x2
.obj gap_03_00001546_rodata, global
.hidden gap_03_00001546_rodata
	.2byte 0x0000
.endobj gap_03_00001546_rodata

# .rodata:0x18 | 0x1548 | size: 0x7
.obj str_e_bero_aji_000123b0, local
	.string "e_bero"
.endobj str_e_bero_aji_000123b0

# .rodata:0x1F | 0x154F | size: 0x1
.obj gap_03_0000154F_rodata, global
.hidden gap_03_0000154F_rodata
	.byte 0x00
.endobj gap_03_0000154F_rodata

# .rodata:0x20 | 0x1550 | size: 0x7
.obj str_aji_01_aji_000123b8, local
	.string "aji_01"
.endobj str_aji_01_aji_000123b8

# .rodata:0x27 | 0x1557 | size: 0x1
.obj gap_03_00001557_rodata, global
.hidden gap_03_00001557_rodata
	.byte 0x00
.endobj gap_03_00001557_rodata

# .rodata:0x28 | 0x1558 | size: 0x9
.obj str_w_bero_3_aji_000123c0, local
	.string "w_bero_3"
.endobj str_w_bero_3_aji_000123c0

# .rodata:0x31 | 0x1561 | size: 0x3
.obj gap_03_00001561_rodata, global
.hidden gap_03_00001561_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001561_rodata

# .rodata:0x34 | 0x1564 | size: 0x4
.obj str_box_aji_000123cc, local
	.string "box"
.endobj str_box_aji_000123cc

# .rodata:0x38 | 0x1568 | size: 0x6
.obj str_dummy_aji_000123d0, local
	.string "dummy"
.endobj str_dummy_aji_000123d0

# .rodata:0x3E | 0x156E | size: 0x2
.obj gap_03_0000156E_rodata, global
.hidden gap_03_0000156E_rodata
	.2byte 0x0000
.endobj gap_03_0000156E_rodata

# .rodata:0x40 | 0x1570 | size: 0x6
.obj str_A_no1_aji_000123d8, local
	.string "A_no1"
.endobj str_A_no1_aji_000123d8

# .rodata:0x46 | 0x1576 | size: 0x2
.obj gap_03_00001576_rodata, global
.hidden gap_03_00001576_rodata
	.2byte 0x0000
.endobj gap_03_00001576_rodata

# .rodata:0x48 | 0x1578 | size: 0x8
.obj str_yukayu1_aji_000123e0, local
	.string "yukayu1"
.endobj str_yukayu1_aji_000123e0

# .rodata:0x50 | 0x1580 | size: 0x8
.obj str_yukayu2_aji_000123e8, local
	.string "yukayu2"
.endobj str_yukayu2_aji_000123e8

# .rodata:0x58 | 0x1588 | size: 0x4
.obj str_ato_aji_000123f0, local
	.string "ato"
.endobj str_ato_aji_000123f0

# .rodata:0x5C | 0x158C | size: 0x7
.obj str_mod_01_aji_000123f4, local
	.string "mod_01"
.endobj str_mod_01_aji_000123f4

# .rodata:0x63 | 0x1593 | size: 0x1
.obj gap_03_00001593_rodata, global
.hidden gap_03_00001593_rodata
	.byte 0x00
.endobj gap_03_00001593_rodata

# .rodata:0x64 | 0x1594 | size: 0x8
.obj str_denyuka_aji_000123fc, local
	.string "denyuka"
.endobj str_denyuka_aji_000123fc

# .rodata:0x6C | 0x159C | size: 0xE
.obj str_BGM_STG7_DUN2_aji_00012404, local
	.string "BGM_STG7_DUN2"
.endobj str_BGM_STG7_DUN2_aji_00012404

# .rodata:0x7A | 0x15AA | size: 0x2
.obj gap_03_000015AA_rodata, global
.hidden gap_03_000015AA_rodata
	.2byte 0x0000
.endobj gap_03_000015AA_rodata

# .rodata:0x7C | 0x15AC | size: 0xE
.obj str_ENV_STG7_AJI1_aji_00012414, local
	.string "ENV_STG7_AJI1"
.endobj str_ENV_STG7_AJI1_aji_00012414

# .rodata:0x8A | 0x15BA | size: 0x2
.obj gap_03_000015BA_rodata, global
.hidden gap_03_000015BA_rodata
	.2byte 0x0000
.endobj gap_03_000015BA_rodata

# .rodata:0x8C | 0x15BC | size: 0x4
.obj str_no1_aji_00012424, local
	.string "no1"
.endobj str_no1_aji_00012424

# .rodata:0x90 | 0x15C0 | size: 0x7
.obj str_mobj00_aji_00012428, local
	.string "mobj00"
.endobj str_mobj00_aji_00012428

# .rodata:0x97 | 0x15C7 | size: 0x1
.obj gap_03_000015C7_rodata, global
.hidden gap_03_000015C7_rodata
	.byte 0x00
.endobj gap_03_000015C7_rodata

# .rodata:0x98 | 0x15C8 | size: 0xE
.obj str_A_hikaru_PCT02d_aji_00012430, local
	.string "A_hikaru_%02d"
.endobj str_A_hikaru_PCT02d_aji_00012430

# .rodata:0xA6 | 0x15D6 | size: 0x2
.obj gap_03_000015D6_rodata, global
.hidden gap_03_000015D6_rodata
	.2byte 0x0000
.endobj gap_03_000015D6_rodata

# .rodata:0xA8 | 0x15D8 | size: 0xC
.obj str_hikaru_PCT02d_aji_00012440, local
	.string "hikaru_%02d"
.endobj str_hikaru_PCT02d_aji_00012440

# .rodata:0xB4 | 0x15E4 | size: 0xB
.obj str_nashi_PCT02d_aji_0001244c, local
	.string "nashi_%02d"
.endobj str_nashi_PCT02d_aji_0001244c

# .rodata:0xBF | 0x15EF | size: 0x1
.obj gap_03_000015EF_rodata, global
.hidden gap_03_000015EF_rodata
	.byte 0x00
.endobj gap_03_000015EF_rodata

# .rodata:0xC0 | 0x15F0 | size: 0x19
.obj str_SFX_STG7_ELECTRIC_SH_aji_00012458, local
	.string "SFX_STG7_ELECTRIC_SHOCK1"
.endobj str_SFX_STG7_ELECTRIC_SH_aji_00012458
	.byte 0x00, 0x00, 0x00

# .rodata:0xDC | 0x160C | size: 0x4
.obj float_30_aji_00012474, local
	.float 30
.endobj float_30_aji_00012474

# .rodata:0xE0 | 0x1610 | size: 0x4
.obj float_1_aji_00012478, local
	.float 1
.endobj float_1_aji_00012478

# .rodata:0xE4 | 0x1614 | size: 0x4
.obj gap_03_00001614_rodata, global
.hidden gap_03_00001614_rodata
	.4byte 0x00000000
.endobj gap_03_00001614_rodata

# 0x0000BA88..0x0000BFB0 | size: 0x528
.data
.balign 8

# .data:0x0 | 0xBA88 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0xBA90 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0xBA94 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0xBA98 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0xBA9C | size: 0x4
.obj gap_04_0000BA9C_data, global
.hidden gap_04_0000BA9C_data
	.4byte 0x00000000
.endobj gap_04_0000BA9C_data

# .data:0x18 | 0xBAA0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0xBAA8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0xBAAC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0xBAB0 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0xBAB8 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0xBABC | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0xBAC0 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0xBAC4 | size: 0x4
.obj gap_04_0000BAC4_data, global
.hidden gap_04_0000BAC4_data
	.4byte 0x00000000
.endobj gap_04_0000BAC4_data

# .data:0x40 | 0xBAC8 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0xBAD0 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0xBAD4 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0xBAD8 | size: 0x58
.obj e_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7980
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_S_door1_1_aji_00012398
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_S_door1_2_aji_000123a4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e_door_close

# .data:0xA8 | 0xBB30 | size: 0x58
.obj e_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7980
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_S_door1_1_aji_00012398
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_S_door1_2_aji_000123a4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e_door_open

# .data:0x100 | 0xBB88 | size: 0x78
.obj bero_entry_data, local
	.4byte str_e_bero_aji_000123b0
	.4byte 0x0001000A
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_aji_01_aji_000123b8
	.4byte str_w_bero_3_aji_000123c0
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

# .data:0x178 | 0xBC00 | size: 0x17C
.obj evt_box, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mobj_get_position
	.4byte str_box_aji_000123cc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_dummy_aji_000123d0
	.4byte 0x0000001D
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000011
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mobj_wait_animation_end
	.4byte str_box_aji_000123cc
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_dummy_aji_000123d0
	.4byte 0x0005005B
	.4byte evt_hitobj_attr_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_A_no1_aji_000123d8
	.4byte 0x00000800
	.4byte 0x00020032
	.4byte 0xF8406BD6
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001005E
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
	.4byte str_yukayu1_aji_000123e0
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_yukayu2_aji_000123e8
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_ato_aji_000123f0
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x00000096
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_yukayu1_aji_000123e0
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_yukayu2_aji_000123e8
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_ato_aji_000123f0
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

# .data:0x2F4 | 0xBD7C | size: 0x10
.obj hikaru_on, local
	.4byte 0x0001005B
	.4byte _hikaru_on
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hikaru_on

# .data:0x304 | 0xBD8C | size: 0x10
.obj hikaru_off, local
	.4byte 0x0001005B
	.4byte _hikaru_off
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hikaru_off

# .data:0x314 | 0xBD9C | size: 0x20
.obj dmgReturnPt, local
	.4byte str_mod_01_aji_000123f4
	.4byte 0x00000000
	.4byte 0xC47A0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj dmgReturnPt

# .data:0x334 | 0xBDBC | size: 0xC0
.obj hikaru_yuka_init, local
	.4byte 0x0001005E
	.4byte hikaru_off
	.4byte 0x0005005B
	.4byte evt_hitobj_attr_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_A_no1_aji_000123d8
	.4byte 0x00000800
	.4byte 0x0009005B
	.4byte evt_mobj_itembox
	.4byte str_box_aji_000123cc
	.4byte 0xFFFFFF01
	.4byte 0x0000000A
	.4byte 0xFFFFFFF6
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte evt_box
	.4byte 0xF8406BD2
	.4byte 0x0002005B
	.4byte evt_hit_damage_return_set
	.4byte dmgReturnPt
	.4byte 0x0000006B
	.4byte 0x0001005B
	.4byte ride_chk
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001005B
	.4byte thunder_main
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_yukayu1_aji_000123e0
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_yukayu2_aji_000123e8
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_denyuka_aji_000123fc
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000002
.endobj hikaru_yuka_init

# .data:0x3F4 | 0xBE7C | size: 0x134
.obj aji_05_init_evt_2_data_BE7C, global
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG7_DUN2_aji_00012404
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG7_AJI1_aji_00012414
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
	.4byte str_no1_aji_00012424
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF8406BD6
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte hikaru_yuka_init
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_ato_aji_000123f0
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte hikaru_off
	.4byte 0x0005005B
	.4byte evt_hitobj_attr_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_A_no1_aji_000123d8
	.4byte 0x00000800
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_yukayu1_aji_000123e0
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_yukayu2_aji_000123e8
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_ato_aji_000123f0
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0009005B
	.4byte evt_mobj_badgeblk
	.4byte str_mobj00_aji_00012428
	.4byte 0xFFFFFFB5
	.4byte 0x0000003C
	.4byte 0xFFFFFF83
	.4byte 0x0000008A
	.4byte 0x00000000
	.4byte 0xF8406BF4
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte evt_emergency_2_data_1E408
	.4byte 0x00000002
	.4byte 0x00000001
.endobj aji_05_init_evt_2_data_BE7C

# 0x000000B8..0x00000118 | size: 0x60
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0xB8 | size: 0x60
.obj onoff$588, local
	.skip 0x60
.endobj onoff$588
