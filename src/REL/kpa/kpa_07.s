.include "macros.inc"
.file "kpa_07.o"

# 0x00001008..0x000013C4 | size: 0x3BC
.text
.balign 4

# .text:0x0 | 0x1008 | size: 0xAC
.fn kpa_stg6_014_cb, local
/* 00001008 000010CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0000100C 000010D0  7C 08 02 A6 */	mflr r0
/* 00001010 000010D4  2C 03 00 03 */	cmpwi r3, 0x3
/* 00001014 000010D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 00001018 000010DC  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 0000101C 000010E0  83 C4 00 00 */	lwz r30, 0x0(r4)
/* 00001020 000010E4  41 82 00 08 */	beq .L_00001028
/* 00001024 000010E8  48 00 00 7C */	b .L_000010A0
.L_00001028:
/* 00001028 000010EC  A0 1E 00 08 */	lhz r0, 0x8(r30)
/* 0000102C 000010F0  28 00 00 01 */	cmplwi r0, 0x1
/* 00001030 000010F4  40 82 00 34 */	bne .L_00001064
/* 00001034 000010F8  3C 60 00 00 */	lis r3, str_ブレッドハート_kpa_00001dd0@ha
/* 00001038 000010FC  38 63 00 00 */	addi r3, r3, str_ブレッドハート_kpa_00001dd0@l
/* 0000103C 00001100  4B FF FB 81 */	bl npcNameToPtr
/* 00001040 00001104  3C 80 00 00 */	lis r4, str_S_5_kpa_00002140@ha
/* 00001044 00001108  7C 7F 1B 78 */	mr r31, r3
/* 00001048 0000110C  38 84 00 00 */	addi r4, r4, str_S_5_kpa_00002140@l
/* 0000104C 00001110  38 7F 00 4C */	addi r3, r31, 0x4c
/* 00001050 00001114  4B FF FB 6D */	bl strcpy
/* 00001054 00001118  3C 80 00 00 */	lis r4, str_T_5_kpa_00002144@ha
/* 00001058 0000111C  38 7F 00 6C */	addi r3, r31, 0x6c
/* 0000105C 00001120  38 84 00 00 */	addi r4, r4, str_T_5_kpa_00002144@l
/* 00001060 00001124  4B FF FB 5D */	bl strcpy
.L_00001064:
/* 00001064 00001128  A0 1E 00 08 */	lhz r0, 0x8(r30)
/* 00001068 0000112C  28 00 00 02 */	cmplwi r0, 0x2
/* 0000106C 00001130  40 82 00 34 */	bne .L_000010A0
/* 00001070 00001134  3C 60 00 00 */	lis r3, str_ブレッドハート_kpa_00001dd0@ha
/* 00001074 00001138  38 63 00 00 */	addi r3, r3, str_ブレッドハート_kpa_00001dd0@l
/* 00001078 0000113C  4B FF FB 45 */	bl npcNameToPtr
/* 0000107C 00001140  3C 80 00 00 */	lis r4, str_S_1_kpa_00001e40@ha
/* 00001080 00001144  7C 7F 1B 78 */	mr r31, r3
/* 00001084 00001148  38 84 00 00 */	addi r4, r4, str_S_1_kpa_00001e40@l
/* 00001088 0000114C  38 7F 00 4C */	addi r3, r31, 0x4c
/* 0000108C 00001150  4B FF FB 31 */	bl strcpy
/* 00001090 00001154  3C 80 00 00 */	lis r4, str_T_1_kpa_00001e84@ha
/* 00001094 00001158  38 7F 00 6C */	addi r3, r31, 0x6c
/* 00001098 0000115C  38 84 00 00 */	addi r4, r4, str_T_1_kpa_00001e84@l
/* 0000109C 00001160  4B FF FB 21 */	bl strcpy
.L_000010A0:
/* 000010A0 00001164  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 000010A4 00001168  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000010A8 0000116C  7C 08 03 A6 */	mtlr r0
/* 000010AC 00001170  38 21 00 10 */	addi r1, r1, 0x10
/* 000010B0 00001174  4E 80 00 20 */	blr
.endfn kpa_stg6_014_cb

# .text:0xAC | 0x10B4 | size: 0x88
.fn kpa_stg6_012_1_cb, local
/* 000010B4 00001178  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000010B8 0000117C  7C 08 02 A6 */	mflr r0
/* 000010BC 00001180  2C 03 00 05 */	cmpwi r3, 0x5
/* 000010C0 00001184  90 01 00 14 */	stw r0, 0x14(r1)
/* 000010C4 00001188  80 84 00 00 */	lwz r4, 0x0(r4)
/* 000010C8 0000118C  41 82 00 38 */	beq .L_00001100
/* 000010CC 00001190  40 80 00 60 */	bge .L_0000112C
/* 000010D0 00001194  2C 03 00 00 */	cmpwi r3, 0x0
/* 000010D4 00001198  41 82 00 08 */	beq .L_000010DC
/* 000010D8 0000119C  48 00 00 54 */	b .L_0000112C
.L_000010DC:
/* 000010DC 000011A0  3C 60 00 00 */	lis r3, str_ババ_kpa_00001dc8@ha
/* 000010E0 000011A4  38 63 00 00 */	addi r3, r3, str_ババ_kpa_00001dc8@l
/* 000010E4 000011A8  4B FF FA D9 */	bl npcNameToPtr
/* 000010E8 000011AC  3C 80 00 00 */	lis r4, str_A_2B_kpa_00002148@ha
/* 000010EC 000011B0  80 63 01 04 */	lwz r3, 0x104(r3)
/* 000010F0 000011B4  38 84 00 00 */	addi r4, r4, str_A_2B_kpa_00002148@l
/* 000010F4 000011B8  38 A0 00 01 */	li r5, 0x1
/* 000010F8 000011BC  4B FF FA C5 */	bl animPoseSetAnim
/* 000010FC 000011C0  48 00 00 30 */	b .L_0000112C
.L_00001100:
/* 00001100 000011C4  80 04 00 10 */	lwz r0, 0x10(r4)
/* 00001104 000011C8  2C 00 00 08 */	cmpwi r0, 0x8
/* 00001108 000011CC  40 82 00 24 */	bne .L_0000112C
/* 0000110C 000011D0  3C 60 00 00 */	lis r3, str_ババ_kpa_00001dc8@ha
/* 00001110 000011D4  38 63 00 00 */	addi r3, r3, str_ババ_kpa_00001dc8@l
/* 00001114 000011D8  4B FF FA A9 */	bl npcNameToPtr
/* 00001118 000011DC  3C 80 00 00 */	lis r4, str_T_1_kpa_00001e84@ha
/* 0000111C 000011E0  80 63 01 04 */	lwz r3, 0x104(r3)
/* 00001120 000011E4  38 84 00 00 */	addi r4, r4, str_T_1_kpa_00001e84@l
/* 00001124 000011E8  38 A0 00 01 */	li r5, 0x1
/* 00001128 000011EC  4B FF FA 95 */	bl animPoseSetAnim
.L_0000112C:
/* 0000112C 000011F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00001130 000011F4  7C 08 03 A6 */	mtlr r0
/* 00001134 000011F8  38 21 00 10 */	addi r1, r1, 0x10
/* 00001138 000011FC  4E 80 00 20 */	blr
.endfn kpa_stg6_012_1_cb

# .text:0x134 | 0x113C | size: 0xD0
.fn starstone_entry, local
/* 0000113C 00001200  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 00001140 00001204  7C 08 02 A6 */	mflr r0
/* 00001144 00001208  90 01 00 34 */	stw r0, 0x34(r1)
/* 00001148 0000120C  39 61 00 30 */	addi r11, r1, 0x30
/* 0000114C 00001210  4B FF FA 71 */	bl _savefpr_29
/* 00001150 00001214  BF 81 00 08 */	stmw r28, 0x8(r1)
/* 00001154 00001218  7C 7C 1B 78 */	mr r28, r3
/* 00001158 0000121C  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 0000115C 00001220  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00001160 00001224  4B FF FA 5D */	bl evtGetValue
/* 00001164 00001228  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00001168 0000122C  7C 7E 1B 78 */	mr r30, r3
/* 0000116C 00001230  7F 83 E3 78 */	mr r3, r28
/* 00001170 00001234  4B FF FA 4D */	bl evtGetValue
/* 00001174 00001238  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 00001178 0000123C  7C 7D 1B 78 */	mr r29, r3
/* 0000117C 00001240  7F 83 E3 78 */	mr r3, r28
/* 00001180 00001244  4B FF FA 3D */	bl evtGetFloat
/* 00001184 00001248  FF E0 08 90 */	fmr f31, f1
/* 00001188 0000124C  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 0000118C 00001250  7F 83 E3 78 */	mr r3, r28
/* 00001190 00001254  4B FF FA 2D */	bl evtGetFloat
/* 00001194 00001258  FF C0 08 90 */	fmr f30, f1
/* 00001198 0000125C  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 0000119C 00001260  7F 83 E3 78 */	mr r3, r28
/* 000011A0 00001264  4B FF FA 1D */	bl evtGetFloat
/* 000011A4 00001268  FF A0 08 90 */	fmr f29, f1
/* 000011A8 0000126C  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 000011AC 00001270  7F 83 E3 78 */	mr r3, r28
/* 000011B0 00001274  4B FF FA 0D */	bl evtGetFloat
/* 000011B4 00001278  FC 00 08 90 */	fmr f0, f1
/* 000011B8 0000127C  7F A3 EB 78 */	mr r3, r29
/* 000011BC 00001280  FC 20 F8 90 */	fmr f1, f31
/* 000011C0 00001284  FC 40 F0 90 */	fmr f2, f30
/* 000011C4 00001288  FC 80 00 90 */	fmr f4, f0
/* 000011C8 0000128C  FC 60 E8 90 */	fmr f3, f29
/* 000011CC 00001290  4B FF F9 F1 */	bl effStarStoneEntry
/* 000011D0 00001294  7C 7F 1B 78 */	mr r31, r3
/* 000011D4 00001298  7F C4 F3 78 */	mr r4, r30
/* 000011D8 0000129C  4B FF F9 E5 */	bl effSetName
/* 000011DC 000012A0  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 000011E0 000012A4  38 60 00 02 */	li r3, 0x2
/* 000011E4 000012A8  39 61 00 30 */	addi r11, r1, 0x30
/* 000011E8 000012AC  A0 04 00 04 */	lhz r0, 0x4(r4)
/* 000011EC 000012B0  60 00 00 10 */	ori r0, r0, 0x10
/* 000011F0 000012B4  B0 04 00 04 */	sth r0, 0x4(r4)
/* 000011F4 000012B8  4B FF F9 C9 */	bl _restfpr_29
/* 000011F8 000012BC  BB 81 00 08 */	lmw r28, 0x8(r1)
/* 000011FC 000012C0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00001200 000012C4  7C 08 03 A6 */	mtlr r0
/* 00001204 000012C8  38 21 00 30 */	addi r1, r1, 0x30
/* 00001208 000012CC  4E 80 00 20 */	blr
.endfn starstone_entry

# .text:0x204 | 0x120C | size: 0x7C
.fn get_starstone_pos, local
/* 0000120C 000012D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00001210 000012D4  7C 08 02 A6 */	mflr r0
/* 00001214 000012D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 00001218 000012DC  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 0000121C 000012E0  7C 7D 1B 78 */	mr r29, r3
/* 00001220 000012E4  83 C3 00 18 */	lwz r30, 0x18(r3)
/* 00001224 000012E8  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 00001228 000012EC  4B FF F9 95 */	bl evtGetValue
/* 0000122C 000012F0  4B FF F9 91 */	bl effNameToPtr
/* 00001230 000012F4  7C 7F 1B 78 */	mr r31, r3
/* 00001234 000012F8  80 9E 00 04 */	lwz r4, 0x4(r30)
/* 00001238 000012FC  80 A3 00 0C */	lwz r5, 0xc(r3)
/* 0000123C 00001300  7F A3 EB 78 */	mr r3, r29
/* 00001240 00001304  C0 25 00 08 */	lfs f1, 0x8(r5)
/* 00001244 00001308  4B FF F9 79 */	bl evtSetFloat
/* 00001248 0000130C  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 0000124C 00001310  7F A3 EB 78 */	mr r3, r29
/* 00001250 00001314  80 9E 00 08 */	lwz r4, 0x8(r30)
/* 00001254 00001318  C0 25 00 0C */	lfs f1, 0xc(r5)
/* 00001258 0000131C  4B FF F9 65 */	bl evtSetFloat
/* 0000125C 00001320  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 00001260 00001324  7F A3 EB 78 */	mr r3, r29
/* 00001264 00001328  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 00001268 0000132C  C0 25 00 10 */	lfs f1, 0x10(r5)
/* 0000126C 00001330  4B FF F9 51 */	bl evtSetFloat
/* 00001270 00001334  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 00001274 00001338  38 60 00 02 */	li r3, 0x2
/* 00001278 0000133C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 0000127C 00001340  7C 08 03 A6 */	mtlr r0
/* 00001280 00001344  38 21 00 20 */	addi r1, r1, 0x20
/* 00001284 00001348  4E 80 00 20 */	blr
.endfn get_starstone_pos

# .text:0x280 | 0x1288 | size: 0x9C
.fn set_starstone_pos, local
/* 00001288 0000134C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 0000128C 00001350  7C 08 02 A6 */	mflr r0
/* 00001290 00001354  90 01 00 34 */	stw r0, 0x34(r1)
/* 00001294 00001358  39 61 00 30 */	addi r11, r1, 0x30
/* 00001298 0000135C  4B FF F9 25 */	bl _savefpr_29
/* 0000129C 00001360  BF A1 00 0C */	stmw r29, 0xc(r1)
/* 000012A0 00001364  7C 7D 1B 78 */	mr r29, r3
/* 000012A4 00001368  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 000012A8 0000136C  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 000012AC 00001370  4B FF F9 11 */	bl evtGetValue
/* 000012B0 00001374  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 000012B4 00001378  7C 7E 1B 78 */	mr r30, r3
/* 000012B8 0000137C  7F A3 EB 78 */	mr r3, r29
/* 000012BC 00001380  4B FF F9 01 */	bl evtGetFloat
/* 000012C0 00001384  FF A0 08 90 */	fmr f29, f1
/* 000012C4 00001388  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 000012C8 0000138C  7F A3 EB 78 */	mr r3, r29
/* 000012CC 00001390  4B FF F8 F1 */	bl evtGetFloat
/* 000012D0 00001394  FF C0 08 90 */	fmr f30, f1
/* 000012D4 00001398  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 000012D8 0000139C  7F A3 EB 78 */	mr r3, r29
/* 000012DC 000013A0  4B FF F8 E1 */	bl evtGetFloat
/* 000012E0 000013A4  FF E0 08 90 */	fmr f31, f1
/* 000012E4 000013A8  7F C3 F3 78 */	mr r3, r30
/* 000012E8 000013AC  4B FF F8 D5 */	bl effNameToPtr
/* 000012EC 000013B0  80 83 00 0C */	lwz r4, 0xc(r3)
/* 000012F0 000013B4  D3 A4 00 08 */	stfs f29, 0x8(r4)
/* 000012F4 000013B8  80 83 00 0C */	lwz r4, 0xc(r3)
/* 000012F8 000013BC  D3 C4 00 0C */	stfs f30, 0xc(r4)
/* 000012FC 000013C0  80 83 00 0C */	lwz r4, 0xc(r3)
/* 00001300 000013C4  38 60 00 02 */	li r3, 0x2
/* 00001304 000013C8  D3 E4 00 10 */	stfs f31, 0x10(r4)
/* 00001308 000013CC  39 61 00 30 */	addi r11, r1, 0x30
/* 0000130C 000013D0  4B FF F8 B1 */	bl _restfpr_29
/* 00001310 000013D4  BB A1 00 0C */	lmw r29, 0xc(r1)
/* 00001314 000013D8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 00001318 000013DC  7C 08 03 A6 */	mtlr r0
/* 0000131C 000013E0  38 21 00 30 */	addi r1, r1, 0x30
/* 00001320 000013E4  4E 80 00 20 */	blr
.endfn set_starstone_pos

# .text:0x31C | 0x1324 | size: 0x64
.fn set_starstone_ry, local
/* 00001324 000013E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00001328 000013EC  7C 08 02 A6 */	mflr r0
/* 0000132C 000013F0  90 01 00 24 */	stw r0, 0x24(r1)
/* 00001330 000013F4  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 00001334 000013F8  BF C1 00 10 */	stmw r30, 0x10(r1)
/* 00001338 000013FC  7C 7E 1B 78 */	mr r30, r3
/* 0000133C 00001400  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00001340 00001404  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00001344 00001408  4B FF F8 79 */	bl evtGetValue
/* 00001348 0000140C  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 0000134C 00001410  7C 7F 1B 78 */	mr r31, r3
/* 00001350 00001414  7F C3 F3 78 */	mr r3, r30
/* 00001354 00001418  4B FF F8 69 */	bl evtGetFloat
/* 00001358 0000141C  FF E0 08 90 */	fmr f31, f1
/* 0000135C 00001420  7F E3 FB 78 */	mr r3, r31
/* 00001360 00001424  4B FF F8 5D */	bl effNameToPtr
/* 00001364 00001428  80 83 00 0C */	lwz r4, 0xc(r3)
/* 00001368 0000142C  38 60 00 02 */	li r3, 0x2
/* 0000136C 00001430  D3 E4 00 1C */	stfs f31, 0x1c(r4)
/* 00001370 00001434  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 00001374 00001438  BB C1 00 10 */	lmw r30, 0x10(r1)
/* 00001378 0000143C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 0000137C 00001440  7C 08 03 A6 */	mtlr r0
/* 00001380 00001444  38 21 00 20 */	addi r1, r1, 0x20
/* 00001384 00001448  4E 80 00 20 */	blr
.endfn set_starstone_ry

# .text:0x380 | 0x1388 | size: 0x3C
.fn starstone_fall, local
/* 00001388 0000144C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 0000138C 00001450  7C 08 02 A6 */	mflr r0
/* 00001390 00001454  90 01 00 14 */	stw r0, 0x14(r1)
/* 00001394 00001458  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00001398 0000145C  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000139C 00001460  4B FF F8 21 */	bl evtGetValue
/* 000013A0 00001464  4B FF F8 1D */	bl effNameToPtr
/* 000013A4 00001468  80 83 00 0C */	lwz r4, 0xc(r3)
/* 000013A8 0000146C  38 00 00 01 */	li r0, 0x1
/* 000013AC 00001470  38 60 00 02 */	li r3, 0x2
/* 000013B0 00001474  90 04 00 3C */	stw r0, 0x3c(r4)
/* 000013B4 00001478  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000013B8 0000147C  7C 08 03 A6 */	mtlr r0
/* 000013BC 00001480  38 21 00 10 */	addi r1, r1, 0x10
/* 000013C0 00001484  4E 80 00 20 */	blr
.endfn starstone_fall

# 0x00000938..0x00000CBD | size: 0x385
.rodata
.balign 8

# .rodata:0x0 | 0x938 | size: 0x5
.obj str_ババ_kpa_00001dc8, local
	.4byte 0x836F836F
	.byte 0x00
.endobj str_ババ_kpa_00001dc8

# .rodata:0x5 | 0x93D | size: 0x3
.obj gap_03_0000093D_rodata, global
.hidden gap_03_0000093D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000093D_rodata

# .rodata:0x8 | 0x940 | size: 0xF
.obj str_ブレッドハート_kpa_00001dd0, local
	.4byte 0x8375838C
	.4byte 0x83628368
	.4byte 0x836E815B
	.byte 0x83, 0x67, 0x00
.endobj str_ブレッドハート_kpa_00001dd0

# .rodata:0x17 | 0x94F | size: 0x1
.obj gap_03_0000094F_rodata, global
.hidden gap_03_0000094F_rodata
	.byte 0x00
.endobj gap_03_0000094F_rodata

# .rodata:0x18 | 0x950 | size: 0x4
.obj str_hit_kpa_00001de0, local
	.string "hit"
.endobj str_hit_kpa_00001de0

# .rodata:0x1C | 0x954 | size: 0xC
.obj str_kemuri_test_kpa_00001de4, local
	.string "kemuri_test"
.endobj str_kemuri_test_kpa_00001de4

# .rodata:0x28 | 0x960 | size: 0x5
.obj str_nise_kpa_00001df0, local
	.string "nise"
.endobj str_nise_kpa_00001df0

# .rodata:0x2D | 0x965 | size: 0x3
.obj gap_03_00000965_rodata, global
.hidden gap_03_00000965_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000965_rodata

# .rodata:0x30 | 0x968 | size: 0x17
.obj str_カメックババ（息切れ）_kpa_00001df8, local
	.4byte 0x834A8381
	.4byte 0x8362834E
	.4byte 0x836F836F
	.4byte 0x816991A7
	.4byte 0x90D882EA
	.byte 0x81, 0x6A, 0x00
.endobj str_カメックババ（息切れ）_kpa_00001df8

# .rodata:0x47 | 0x97F | size: 0x1
.obj gap_03_0000097F_rodata, global
.hidden gap_03_0000097F_rodata
	.byte 0x00
.endobj gap_03_0000097F_rodata

# .rodata:0x48 | 0x980 | size: 0x15
.obj str_カメックババ（地上）_kpa_00001e10, local
	.4byte 0x834A8381
	.4byte 0x8362834E
	.4byte 0x836F836F
	.4byte 0x8169926E
	.4byte 0x8FE3816A
	.byte 0x00
.endobj str_カメックババ（地上）_kpa_00001e10

# .rodata:0x5D | 0x995 | size: 0x3
.obj gap_03_00000995_rodata, global
.hidden gap_03_00000995_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000995_rodata

# .rodata:0x60 | 0x998 | size: 0x4
.obj str_K_1_kpa_00001e28, local
	.string "K_1"
.endobj str_K_1_kpa_00001e28

# .rodata:0x64 | 0x99C | size: 0x4
.obj str_T_7_kpa_00001e2c, local
	.string "T_7"
.endobj str_T_7_kpa_00001e2c

# .rodata:0x68 | 0x9A0 | size: 0xD
.obj str_kpa_stg6_009_kpa_00001e30, local
	.string "kpa_stg6_009"
.endobj str_kpa_stg6_009_kpa_00001e30

# .rodata:0x75 | 0x9AD | size: 0x3
.obj gap_03_000009AD_rodata, global
.hidden gap_03_000009AD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000009AD_rodata

# .rodata:0x78 | 0x9B0 | size: 0x4
.obj str_S_1_kpa_00001e40, local
	.string "S_1"
.endobj str_S_1_kpa_00001e40

# .rodata:0x7C | 0x9B4 | size: 0x6
.obj str_mario_kpa_00001e44, local
	.string "mario"
.endobj str_mario_kpa_00001e44

# .rodata:0x82 | 0x9BA | size: 0x2
.obj gap_03_000009BA_rodata, global
.hidden gap_03_000009BA_rodata
	.2byte 0x0000
.endobj gap_03_000009BA_rodata

# .rodata:0x84 | 0x9BC | size: 0x8
.obj str_KPA_S_1_kpa_00001e4c, local
	.string "KPA_S_1"
.endobj str_KPA_S_1_kpa_00001e4c

# .rodata:0x8C | 0x9C4 | size: 0x8
.obj str_KPA_T_1_kpa_00001e54, local
	.string "KPA_T_1"
.endobj str_KPA_T_1_kpa_00001e54

# .rodata:0x94 | 0x9CC | size: 0xD
.obj str_kpa_stg6_010_kpa_00001e5c, local
	.string "kpa_stg6_010"
.endobj str_kpa_stg6_010_kpa_00001e5c

# .rodata:0xA1 | 0x9D9 | size: 0x3
.obj gap_03_000009D9_rodata, global
.hidden gap_03_000009D9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000009D9_rodata

# .rodata:0xA4 | 0x9DC | size: 0x4
.obj str_P_1_kpa_00001e6c, local
	.string "P_1"
.endobj str_P_1_kpa_00001e6c

# .rodata:0xA8 | 0x9E0 | size: 0x4
.obj str_T_6_kpa_00001e70, local
	.string "T_6"
.endobj str_T_6_kpa_00001e70

# .rodata:0xAC | 0x9E4 | size: 0xD
.obj str_kpa_stg6_011_kpa_00001e74, local
	.string "kpa_stg6_011"
.endobj str_kpa_stg6_011_kpa_00001e74

# .rodata:0xB9 | 0x9F1 | size: 0x3
.obj gap_03_000009F1_rodata, global
.hidden gap_03_000009F1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000009F1_rodata

# .rodata:0xBC | 0x9F4 | size: 0x4
.obj str_T_1_kpa_00001e84, local
	.string "T_1"
.endobj str_T_1_kpa_00001e84

# .rodata:0xC0 | 0x9F8 | size: 0x5
.obj str_A_1A_kpa_00001e88, local
	.string "A_1A"
.endobj str_A_1A_kpa_00001e88

# .rodata:0xC5 | 0x9FD | size: 0x3
.obj gap_03_000009FD_rodata, global
.hidden gap_03_000009FD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000009FD_rodata

# .rodata:0xC8 | 0xA00 | size: 0x1C
.obj str_SFX_MOBJ_BLOCK_POWER_kpa_00001e90, local
	.string "SFX_MOBJ_BLOCK_POWER_SHINE1"
.endobj str_SFX_MOBJ_BLOCK_POWER_kpa_00001e90

# .rodata:0xE4 | 0xA1C | size: 0xD
.obj str_kpa_stg6_012_kpa_00001eac, local
	.string "kpa_stg6_012"
.endobj str_kpa_stg6_012_kpa_00001eac

# .rodata:0xF1 | 0xA29 | size: 0x3
.obj gap_03_00000A29_rodata, global
.hidden gap_03_00000A29_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000A29_rodata

# .rodata:0xF4 | 0xA2C | size: 0xF
.obj str_kpa_stg6_012_1_kpa_00001ebc, local
	.string "kpa_stg6_012_1"
.endobj str_kpa_stg6_012_1_kpa_00001ebc

# .rodata:0x103 | 0xA3B | size: 0x1
.obj gap_03_00000A3B_rodata, global
.hidden gap_03_00000A3B_rodata
	.byte 0x00
.endobj gap_03_00000A3B_rodata

# .rodata:0x104 | 0xA3C | size: 0xD
.obj str_kpa_stg6_013_kpa_00001ecc, local
	.string "kpa_stg6_013"
.endobj str_kpa_stg6_013_kpa_00001ecc

# .rodata:0x111 | 0xA49 | size: 0x3
.obj gap_03_00000A49_rodata, global
.hidden gap_03_00000A49_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000A49_rodata

# .rodata:0x114 | 0xA4C | size: 0x1D
.obj str_SFX_VOICE_KOOPA_SURP_kpa_00001edc, local
	.string "SFX_VOICE_KOOPA_SURPRISED1_1"
.endobj str_SFX_VOICE_KOOPA_SURP_kpa_00001edc

# .rodata:0x131 | 0xA69 | size: 0x3
.obj gap_03_00000A69_rodata, global
.hidden gap_03_00000A69_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000A69_rodata

# .rodata:0x134 | 0xA6C | size: 0x1
.obj zero_kpa_00001efc, local
	.byte 0x00
.endobj zero_kpa_00001efc

# .rodata:0x135 | 0xA6D | size: 0x3
.obj gap_03_00000A6D_rodata, global
.hidden gap_03_00000A6D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000A6D_rodata

# .rodata:0x138 | 0xA70 | size: 0xF
.obj str_kpa_stg6_013_1_kpa_00001f00, local
	.string "kpa_stg6_013_1"
.endobj str_kpa_stg6_013_1_kpa_00001f00

# .rodata:0x147 | 0xA7F | size: 0x1
.obj gap_03_00000A7F_rodata, global
.hidden gap_03_00000A7F_rodata
	.byte 0x00
.endobj gap_03_00000A7F_rodata

# .rodata:0x148 | 0xA80 | size: 0xD
.obj str_kpa_stg6_014_kpa_00001f10, local
	.string "kpa_stg6_014"
.endobj str_kpa_stg6_014_kpa_00001f10

# .rodata:0x155 | 0xA8D | size: 0x3
.obj gap_03_00000A8D_rodata, global
.hidden gap_03_00000A8D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000A8D_rodata

# .rodata:0x158 | 0xA90 | size: 0x8
.obj str_KPA_S_3_kpa_00001f20, local
	.string "KPA_S_3"
.endobj str_KPA_S_3_kpa_00001f20

# .rodata:0x160 | 0xA98 | size: 0x8
.obj str_KPA_T_2_kpa_00001f28, local
	.string "KPA_T_2"
.endobj str_KPA_T_2_kpa_00001f28

# .rodata:0x168 | 0xAA0 | size: 0xD
.obj str_kpa_stg6_015_kpa_00001f30, local
	.string "kpa_stg6_015"
.endobj str_kpa_stg6_015_kpa_00001f30

# .rodata:0x175 | 0xAAD | size: 0x3
.obj gap_03_00000AAD_rodata, global
.hidden gap_03_00000AAD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000AAD_rodata

# .rodata:0x178 | 0xAB0 | size: 0xD
.obj str_kpa_stg6_016_kpa_00001f40, local
	.string "kpa_stg6_016"
.endobj str_kpa_stg6_016_kpa_00001f40

# .rodata:0x185 | 0xABD | size: 0x3
.obj gap_03_00000ABD_rodata, global
.hidden gap_03_00000ABD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000ABD_rodata

# .rodata:0x188 | 0xAC0 | size: 0x17
.obj str_SFX_KUPPA_BRED_TACKL_kpa_00001f50, local
	.string "SFX_KUPPA_BRED_TACKLE1"
.endobj str_SFX_KUPPA_BRED_TACKL_kpa_00001f50

# .rodata:0x19F | 0xAD7 | size: 0x1
.obj gap_03_00000AD7_rodata, global
.hidden gap_03_00000AD7_rodata
	.byte 0x00
.endobj gap_03_00000AD7_rodata

# .rodata:0x1A0 | 0xAD8 | size: 0x5
.obj str_A_2A_kpa_00001f68, local
	.string "A_2A"
.endobj str_A_2A_kpa_00001f68

# .rodata:0x1A5 | 0xADD | size: 0x3
.obj gap_03_00000ADD_rodata, global
.hidden gap_03_00000ADD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000ADD_rodata

# .rodata:0x1A8 | 0xAE0 | size: 0x4
.obj str_S_7_kpa_00001f70, local
	.string "S_7"
.endobj str_S_7_kpa_00001f70

# .rodata:0x1AC | 0xAE4 | size: 0x1B
.obj str_SFX_KUPPA_BRED_TACKL_kpa_00001f74, local
	.string "SFX_KUPPA_BRED_TACKLE_HIT1"
.endobj str_SFX_KUPPA_BRED_TACKL_kpa_00001f74

# .rodata:0x1C7 | 0xAFF | size: 0x1
.obj gap_03_00000AFF_rodata, global
.hidden gap_03_00000AFF_rodata
	.byte 0x00
.endobj gap_03_00000AFF_rodata

# .rodata:0x1C8 | 0xB00 | size: 0x19
.obj str_SFX_VOICE_KOOPA_ANGR_kpa_00001f90, local
	.string "SFX_VOICE_KOOPA_ANGRY1_1"
.endobj str_SFX_VOICE_KOOPA_ANGR_kpa_00001f90

# .rodata:0x1E1 | 0xB19 | size: 0x3
.obj gap_03_00000B19_rodata, global
.hidden gap_03_00000B19_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000B19_rodata

# .rodata:0x1E4 | 0xB1C | size: 0x4
.obj str_D_1_kpa_00001fac, local
	.string "D_1"
.endobj str_D_1_kpa_00001fac

# .rodata:0x1E8 | 0xB20 | size: 0x4
.obj str_D_2_kpa_00001fb0, local
	.string "D_2"
.endobj str_D_2_kpa_00001fb0

# .rodata:0x1EC | 0xB24 | size: 0xD
.obj str_kpa_stg6_017_kpa_00001fb4, local
	.string "kpa_stg6_017"
.endobj str_kpa_stg6_017_kpa_00001fb4

# .rodata:0x1F9 | 0xB31 | size: 0x3
.obj gap_03_00000B31_rodata, global
.hidden gap_03_00000B31_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000B31_rodata

# .rodata:0x1FC | 0xB34 | size: 0x4
.obj str_T_2_kpa_00001fc4, local
	.string "T_2"
.endobj str_T_2_kpa_00001fc4

# .rodata:0x200 | 0xB38 | size: 0xD
.obj str_kpa_stg6_019_kpa_00001fc8, local
	.string "kpa_stg6_019"
.endobj str_kpa_stg6_019_kpa_00001fc8

# .rodata:0x20D | 0xB45 | size: 0x3
.obj gap_03_00000B45_rodata, global
.hidden gap_03_00000B45_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000B45_rodata

# .rodata:0x210 | 0xB48 | size: 0xD
.obj str_kpa_stg6_018_kpa_00001fd8, local
	.string "kpa_stg6_018"
.endobj str_kpa_stg6_018_kpa_00001fd8

# .rodata:0x21D | 0xB55 | size: 0x3
.obj gap_03_00000B55_rodata, global
.hidden gap_03_00000B55_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000B55_rodata

# .rodata:0x220 | 0xB58 | size: 0x16
.obj str_SFX_KUPPA_STONE_FALL_kpa_00001fe8, local
	.string "SFX_KUPPA_STONE_FALL1"
.endobj str_SFX_KUPPA_STONE_FALL_kpa_00001fe8

# .rodata:0x236 | 0xB6E | size: 0x2
.obj gap_03_00000B6E_rodata, global
.hidden gap_03_00000B6E_rodata
	.2byte 0x0000
.endobj gap_03_00000B6E_rodata

# .rodata:0x238 | 0xB70 | size: 0x15
.obj str_SFX_KUPPA_STONE_HIT1_kpa_00002000, local
	.string "SFX_KUPPA_STONE_HIT1"
.endobj str_SFX_KUPPA_STONE_HIT1_kpa_00002000

# .rodata:0x24D | 0xB85 | size: 0x3
.obj gap_03_00000B85_rodata, global
.hidden gap_03_00000B85_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000B85_rodata

# .rodata:0x250 | 0xB88 | size: 0x17
.obj str_SFX_KUPPA_STONE_BREA_kpa_00002018, local
	.string "SFX_KUPPA_STONE_BREAK1"
.endobj str_SFX_KUPPA_STONE_BREA_kpa_00002018

# .rodata:0x267 | 0xB9F | size: 0x1
.obj gap_03_00000B9F_rodata, global
.hidden gap_03_00000B9F_rodata
	.byte 0x00
.endobj gap_03_00000B9F_rodata

# .rodata:0x268 | 0xBA0 | size: 0x1D
.obj str_SFX_VOICE_KOOPA_SURP_kpa_00002030, local
	.string "SFX_VOICE_KOOPA_SURPRISED2_1"
.endobj str_SFX_VOICE_KOOPA_SURP_kpa_00002030

# .rodata:0x285 | 0xBBD | size: 0x3
.obj gap_03_00000BBD_rodata, global
.hidden gap_03_00000BBD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000BBD_rodata

# .rodata:0x288 | 0xBC0 | size: 0x8
.obj str_KPA_S_5_kpa_00002050, local
	.string "KPA_S_5"
.endobj str_KPA_S_5_kpa_00002050

# .rodata:0x290 | 0xBC8 | size: 0x8
.obj str_KPA_T_5_kpa_00002058, local
	.string "KPA_T_5"
.endobj str_KPA_T_5_kpa_00002058

# .rodata:0x298 | 0xBD0 | size: 0xF
.obj str_kpa_stg6_020_1_kpa_00002060, local
	.string "kpa_stg6_020_1"
.endobj str_kpa_stg6_020_1_kpa_00002060

# .rodata:0x2A7 | 0xBDF | size: 0x1
.obj gap_03_00000BDF_rodata, global
.hidden gap_03_00000BDF_rodata
	.byte 0x00
.endobj gap_03_00000BDF_rodata

# .rodata:0x2A8 | 0xBE0 | size: 0xF
.obj str_kpa_stg6_020_2_kpa_00002070, local
	.string "kpa_stg6_020_2"
.endobj str_kpa_stg6_020_2_kpa_00002070

# .rodata:0x2B7 | 0xBEF | size: 0x1
.obj gap_03_00000BEF_rodata, global
.hidden gap_03_00000BEF_rodata
	.byte 0x00
.endobj gap_03_00000BEF_rodata

# .rodata:0x2B8 | 0xBF0 | size: 0xF
.obj str_kpa_stg6_020_3_kpa_00002080, local
	.string "kpa_stg6_020_3"
.endobj str_kpa_stg6_020_3_kpa_00002080

# .rodata:0x2C7 | 0xBFF | size: 0x1
.obj gap_03_00000BFF_rodata, global
.hidden gap_03_00000BFF_rodata
	.byte 0x00
.endobj gap_03_00000BFF_rodata

# .rodata:0x2C8 | 0xC00 | size: 0x8
.obj str_KPA_S_4_kpa_00002090, local
	.string "KPA_S_4"
.endobj str_KPA_S_4_kpa_00002090

# .rodata:0x2D0 | 0xC08 | size: 0x8
.obj str_KPA_T_3_kpa_00002098, local
	.string "KPA_T_3"
.endobj str_KPA_T_3_kpa_00002098

# .rodata:0x2D8 | 0xC10 | size: 0xD
.obj str_kpa_stg6_021_kpa_000020a0, local
	.string "kpa_stg6_021"
.endobj str_kpa_stg6_021_kpa_000020a0

# .rodata:0x2E5 | 0xC1D | size: 0x3
.obj gap_03_00000C1D_rodata, global
.hidden gap_03_00000C1D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000C1D_rodata

# .rodata:0x2E8 | 0xC20 | size: 0xD
.obj str_kpa_stg6_022_kpa_000020b0, local
	.string "kpa_stg6_022"
.endobj str_kpa_stg6_022_kpa_000020b0

# .rodata:0x2F5 | 0xC2D | size: 0x3
.obj gap_03_00000C2D_rodata, global
.hidden gap_03_00000C2D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000C2D_rodata

# .rodata:0x2F8 | 0xC30 | size: 0xD
.obj str_kpa_stg6_023_kpa_000020c0, local
	.string "kpa_stg6_023"
.endobj str_kpa_stg6_023_kpa_000020c0

# .rodata:0x305 | 0xC3D | size: 0x3
.obj gap_03_00000C3D_rodata, global
.hidden gap_03_00000C3D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000C3D_rodata

# .rodata:0x308 | 0xC40 | size: 0x8
.obj str_KPA_I_2_kpa_000020d0, local
	.string "KPA_I_2"
.endobj str_KPA_I_2_kpa_000020d0

# .rodata:0x310 | 0xC48 | size: 0x11
.obj str_SFX_KUPPA_ANGRY1_kpa_000020d8, local
	.string "SFX_KUPPA_ANGRY1"
.endobj str_SFX_KUPPA_ANGRY1_kpa_000020d8

# .rodata:0x321 | 0xC59 | size: 0x3
.obj gap_03_00000C59_rodata, global
.hidden gap_03_00000C59_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000C59_rodata

# .rodata:0x324 | 0xC5C | size: 0x11
.obj str_SFX_KUPPA_ANGRY2_kpa_000020ec, local
	.string "SFX_KUPPA_ANGRY2"
.endobj str_SFX_KUPPA_ANGRY2_kpa_000020ec

# .rodata:0x335 | 0xC6D | size: 0x3
.obj gap_03_00000C6D_rodata, global
.hidden gap_03_00000C6D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000C6D_rodata

# .rodata:0x338 | 0xC70 | size: 0x7
.obj str_gor_04_kpa_00002100, local
	.string "gor_04"
.endobj str_gor_04_kpa_00002100

# .rodata:0x33F | 0xC77 | size: 0x1
.obj gap_03_00000C77_rodata, global
.hidden gap_03_00000C77_rodata
	.byte 0x00
.endobj gap_03_00000C77_rodata

# .rodata:0x340 | 0xC78 | size: 0xD
.obj str_resha_return_kpa_00002108, local
	.string "resha_return"
.endobj str_resha_return_kpa_00002108

# .rodata:0x34D | 0xC85 | size: 0x3
.obj gap_03_00000C85_rodata, global
.hidden gap_03_00000C85_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000C85_rodata

# .rodata:0x350 | 0xC88 | size: 0xF
.obj str_BGM_EVT_KUPPA1_kpa_00002118, local
	.string "BGM_EVT_KUPPA1"
.endobj str_BGM_EVT_KUPPA1_kpa_00002118

# .rodata:0x35F | 0xC97 | size: 0x1
.obj gap_03_00000C97_rodata, global
.hidden gap_03_00000C97_rodata
	.byte 0x00
.endobj gap_03_00000C97_rodata

# .rodata:0x360 | 0xC98 | size: 0x5
.obj str_belt_kpa_00002128, local
	.string "belt"
.endobj str_belt_kpa_00002128

# .rodata:0x365 | 0xC9D | size: 0x3
.obj gap_03_00000C9D_rodata, global
.hidden gap_03_00000C9D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000C9D_rodata

# .rodata:0x368 | 0xCA0 | size: 0x9
.obj str_c_bred_h_kpa_00002130, local
	.string "c_bred_h"
.endobj str_c_bred_h_kpa_00002130

# .rodata:0x371 | 0xCA9 | size: 0x3
.obj gap_03_00000CA9_rodata, global
.hidden gap_03_00000CA9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000CA9_rodata

# .rodata:0x374 | 0xCAC | size: 0x4
.obj str_C_1_kpa_0000213c, local
	.string "C_1"
.endobj str_C_1_kpa_0000213c

# .rodata:0x378 | 0xCB0 | size: 0x4
.obj str_S_5_kpa_00002140, local
	.string "S_5"
.endobj str_S_5_kpa_00002140

# .rodata:0x37C | 0xCB4 | size: 0x4
.obj str_T_5_kpa_00002144, local
	.string "T_5"
.endobj str_T_5_kpa_00002144

# .rodata:0x380 | 0xCB8 | size: 0x5
.obj str_A_2B_kpa_00002148, local
	.string "A_2B"
.endobj str_A_2B_kpa_00002148

# 0x00006760..0x00007F08 | size: 0x17A8
.data
.balign 8

# .data:0x0 | 0x6760 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x6768 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x676C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x6770 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x6774 | size: 0x4
.obj gap_04_00006774_data, global
.hidden gap_04_00006774_data
	.4byte 0x00000000
.endobj gap_04_00006774_data

# .data:0x18 | 0x6778 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x6780 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x6784 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x6788 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x6790 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x6794 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x6798 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x679C | size: 0x4
.obj gap_04_0000679C_data, global
.hidden gap_04_0000679C_data
	.4byte 0x00000000
.endobj gap_04_0000679C_data

# .data:0x40 | 0x67A0 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x67A8 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x67AC | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x67B0 | size: 0x114
.obj npcEnt, local
	.4byte str_ババ_kpa_00001dc8
	.4byte 0x00000020
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
	.4byte str_ブレッドハート_kpa_00001dd0
	.4byte 0x00000020
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

# .data:0x164 | 0x68C4 | size: 0x254
.obj kpa_07_hipattack_eff, local
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ブレッドハート_kpa_00001dd0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000032
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0xFE363C81
	.4byte 0x00020035
	.4byte 0xFE363C83
	.4byte 0x00000014
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_hit_kpa_00001de0
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0xFE363C81
	.4byte 0x00020036
	.4byte 0xFE363C83
	.4byte 0x0000001E
	.4byte 0x00020035
	.4byte 0xFE363C84
	.4byte 0x00000014
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_kemuri_test_kpa_00001de4
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0xFE363C81
	.4byte 0x00020036
	.4byte 0xFE363C83
	.4byte 0x0000000A
	.4byte 0x00020035
	.4byte 0xFE363C84
	.4byte 0x00000005
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_kemuri_test_kpa_00001de4
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0xFE363C81
	.4byte 0x00020035
	.4byte 0xFE363C83
	.4byte 0x00000005
	.4byte 0x00020035
	.4byte 0xFE363C84
	.4byte 0x00000019
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_kemuri_test_kpa_00001de4
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0xFE363C81
	.4byte 0x00020035
	.4byte 0xFE363C83
	.4byte 0x00000023
	.4byte 0x00020035
	.4byte 0xFE363C84
	.4byte 0x0000000F
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_kemuri_test_kpa_00001de4
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kpa_07_hipattack_eff

# .data:0x3B8 | 0x6B18 | size: 0x1320
.obj kpa_07_evt, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFF07
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ババ_kpa_00001dc8
	.4byte 0xFFFFFEA3
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ババ_kpa_00001dc8
	.4byte 0x0000005A
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ババ_kpa_00001dc8
	.4byte 0x00000080
	.4byte 0x0007005B
	.4byte starstone_entry
	.4byte str_nise_kpa_00001df0
	.4byte 0x00000009
	.4byte 0x000000B4
	.4byte 0x00000037
	.4byte 0x00000000
	.4byte 0xF24A7D80
	.4byte 0x0003005B
	.4byte set_starstone_ry
	.4byte str_nise_kpa_00001df0
	.4byte 0x0000010E
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000009E
	.4byte 0x000000BE
	.4byte 0x000001B9
	.4byte 0xFFFFFF93
	.4byte 0x0000005A
	.4byte 0xFFFFFFC3
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_ババ_kpa_00001dc8
	.4byte str_カメックババ（息切れ）_kpa_00001df8
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000009E
	.4byte 0x000000A0
	.4byte 0x000001B9
	.4byte 0xFFFFFF93
	.4byte 0x0000003C
	.4byte 0xFFFFFFC3
	.4byte 0x000005DC
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_ババ_kpa_00001dc8
	.4byte 0x00000080
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ババ_kpa_00001dc8
	.4byte 0xFFFFFF58
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24B6A80
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFFBC
	.4byte 0x00000000
	.4byte 0xF24B6A80
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_ババ_kpa_00001dc8
	.4byte str_カメックババ（地上）_kpa_00001e10
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_ババ_kpa_00001dc8
	.4byte str_K_1_kpa_00001e28
	.4byte str_T_7_kpa_00001e2c
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg6_009_kpa_00001e30
	.4byte 0x00000000
	.4byte str_ババ_kpa_00001dc8
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ババ_kpa_00001dc8
	.4byte str_S_1_kpa_00001e40
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_kpa_00001e44
	.4byte str_KPA_S_1_kpa_00001e4c
	.4byte str_KPA_T_1_kpa_00001e54
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg6_010_kpa_00001e5c
	.4byte 0x00000000
	.4byte str_mario_kpa_00001e44
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ババ_kpa_00001dc8
	.4byte 0xFFFFFF79
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0xF24BE280
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ババ_kpa_00001dc8
	.4byte 0xFFFFFFB5
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0xF24BE280
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_ババ_kpa_00001dc8
	.4byte str_P_1_kpa_00001e6c
	.4byte str_T_6_kpa_00001e70
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg6_011_kpa_00001e74
	.4byte 0x00000000
	.4byte str_ババ_kpa_00001dc8
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_ババ_kpa_00001dc8
	.4byte str_S_1_kpa_00001e40
	.4byte str_T_1_kpa_00001e84
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ババ_kpa_00001dc8
	.4byte str_A_1A_kpa_00001e88
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF8B
	.4byte 0x0000007F
	.4byte 0x0000012E
	.4byte 0x000000C4
	.4byte 0x0000003B
	.4byte 0xFFFFFFF2
	.4byte 0x000005DC
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0002005B
	.4byte evt_npc_set_stay_anim
	.4byte str_ババ_kpa_00001dc8
	.4byte 0x0005005B
	.4byte evt_cam3d_evt_zoom_in
	.4byte 0x0000003C
	.4byte 0x00000258
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_MOBJ_BLOCK_POWER_kpa_00001e90
	.4byte 0x000000C4
	.4byte 0x0000003B
	.4byte 0xFFFFFFF2
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg6_012_kpa_00001eac
	.4byte 0x00000000
	.4byte str_mario_kpa_00001e44
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ババ_kpa_00001dc8
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x00000028
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000005F
	.4byte 0x0000007C
	.4byte 0x000001AC
	.4byte 0x0000005F
	.4byte 0x00000037
	.4byte 0xFFFFFFEF
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg6_012_1_kpa_00001ebc
	.4byte kpa_stg6_012_1_cb
	.4byte str_ババ_kpa_00001dc8
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ババ_kpa_00001dc8
	.4byte 0x0000008C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24B6A80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ブレッドハート_kpa_00001dd0
	.4byte 0xFFFFFF6A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg6_013_kpa_00001ecc
	.4byte 0x00000000
	.4byte str_ブレッドハート_kpa_00001dd0
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_KOOPA_SURP_kpa_00001edc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000000
	.4byte zero_kpa_00001efc
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
	.4byte 0x00000001
	.4byte zero_kpa_00001efc
	.4byte str_ババ_kpa_00001dc8
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
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ババ_kpa_00001dc8
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg6_013_1_kpa_00001f00
	.4byte 0x00000000
	.4byte str_mario_kpa_00001e44
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF70
	.4byte 0x00000052
	.4byte 0x000000F0
	.4byte 0xFFFFFF70
	.4byte 0x0000002A
	.4byte 0xFFFFFFEF
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg6_014_kpa_00001f10
	.4byte kpa_stg6_014_cb
	.4byte str_ブレッドハート_kpa_00001dd0
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFC4
	.4byte 0x0000009D
	.4byte 0x00000227
	.4byte 0xFFFFFFC4
	.4byte 0x00000046
	.4byte 0xFFFFFFEF
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ババ_kpa_00001dc8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x0000005A
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ババ_kpa_00001dc8
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x000003E8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000046
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x000003E8
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_kpa_00001e44
	.4byte str_KPA_S_3_kpa_00001f20
	.4byte str_KPA_T_2_kpa_00001f28
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg6_015_kpa_00001f30
	.4byte 0x00000000
	.4byte str_mario_kpa_00001e44
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg6_016_kpa_00001f40
	.4byte 0x00000000
	.4byte str_ブレッドハート_kpa_00001dd0
	.4byte 0x0002005B
	.4byte kpa_chg_pose
	.4byte str_KPA_S_1_kpa_00001e4c
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000000C
	.4byte 0x00000087
	.4byte 0x00000188
	.4byte 0x0000000C
	.4byte 0x00000048
	.4byte 0xFFFFFFEF
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFAA2B581
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ブレッドハート_kpa_00001dd0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_KUPPA_BRED_TACKL_kpa_00001f50
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFD050F80
	.4byte 0xFE363C81
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ブレッドハート_kpa_00001dd0
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C85
	.4byte 0x0000001E
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ブレッドハート_kpa_00001dd0
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ブレッドハート_kpa_00001dd0
	.4byte str_A_2A_kpa_00001f68
	.4byte 0x00020035
	.4byte 0xFD050F80
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0xFE363C85
	.4byte 0x0000000A
	.4byte 0x00000320
	.4byte 0x00010003
	.4byte 0x00000002
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ブレッドハート_kpa_00001dd0
	.4byte 0xFE363C80
	.4byte 0xFD050F80
	.4byte 0xFE363C84
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000384
	.4byte 0x00020032
	.4byte 0xFD050F80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ブレッドハート_kpa_00001dd0
	.4byte str_S_7_kpa_00001f70
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ブレッドハート_kpa_00001dd0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_KUPPA_BRED_TACKL_kpa_00001f74
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000005
	.4byte 0x000003E8
	.4byte 0x0000014D
	.4byte 0x000000C8
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF25A1A80
	.4byte 0x0005005B
	.4byte evt_npc_set_scale
	.4byte str_ブレッドハート_kpa_00001dd0
	.4byte 0xF24A7E80
	.4byte 0xFE363C80
	.4byte 0xF24A7E80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_npc_get_height
	.4byte str_ブレッドハート_kpa_00001dd0
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7BD4
	.4byte 0x0003005B
	.4byte evt_npc_set_height
	.4byte str_ブレッドハート_kpa_00001dd0
	.4byte 0xFE363C80
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0001005C
	.4byte kpa_07_hipattack_eff
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_KOOPA_ANGR_kpa_00001f90
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_koopa_hip_attack
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000003C
	.4byte 0x0000012C
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000002D
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0x00000032
	.4byte 0x0007005B
	.4byte evt_mario_jump_pos
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000012C
	.4byte 0x00000001
	.4byte 0x00000014
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ババ_kpa_00001dc8
	.4byte str_D_1_kpa_00001fac
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ババ_kpa_00001dc8
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C85
	.4byte 0x00000005
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0xFE363C83
	.4byte 0x00020035
	.4byte 0xFE363C86
	.4byte 0x00000014
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0xFE363C84
	.4byte 0x00020035
	.4byte 0xFE363C87
	.4byte 0x0000000A
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_hit_kpa_00001de0
	.4byte 0x00000000
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x00000001
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000004
	.4byte 0xFE363C82
	.4byte 0x000000A0
	.4byte 0x00000190
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ババ_kpa_00001dc8
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ババ_kpa_00001dc8
	.4byte str_D_2_kpa_00001fb0
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte get_starstone_pos
	.4byte str_nise_kpa_00001df0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C83
	.4byte 0x00000002
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFAA2B581
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x00020035
	.4byte 0xFE363C83
	.4byte 0x00000004
	.4byte 0x0005005B
	.4byte set_starstone_pos
	.4byte str_nise_kpa_00001df0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C83
	.4byte 0x0001000A
	.4byte 0x00000032
	.4byte 0x00020036
	.4byte 0xFE363C83
	.4byte 0x00000004
	.4byte 0x0005005B
	.4byte set_starstone_pos
	.4byte str_nise_kpa_00001df0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C83
	.4byte 0x0001000A
	.4byte 0x00000032
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x00000067
	.4byte 0x0000012E
	.4byte 0x00000000
	.4byte 0x00000028
	.4byte 0xFFFFFFEF
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_ブレッドハート_kpa_00001dd0
	.4byte str_S_7_kpa_00001f70
	.4byte str_T_7_kpa_00001e2c
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg6_017_kpa_00001fb4
	.4byte 0x00000000
	.4byte str_ブレッドハート_kpa_00001dd0
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000069
	.4byte 0x00000073
	.4byte 0x0000017A
	.4byte 0x00000069
	.4byte 0x00000037
	.4byte 0xFFFFFFEF
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_ババ_kpa_00001dc8
	.4byte str_D_2_kpa_00001fb0
	.4byte str_T_2_kpa_00001fc4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg6_019_kpa_00001fc8
	.4byte 0x00000000
	.4byte str_ババ_kpa_00001dc8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000055
	.4byte 0x00000088
	.4byte 0x000001DD
	.4byte 0x00000055
	.4byte 0x0000003C
	.4byte 0xFFFFFFEF
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg6_018_kpa_00001fd8
	.4byte 0x00000000
	.4byte str_mario_kpa_00001e44
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xFAA2B581
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte get_starstone_pos
	.4byte str_nise_kpa_00001df0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020034
	.4byte 0xFE363C83
	.4byte 0xF24A754D
	.4byte 0x00020034
	.4byte 0xFE363C84
	.4byte 0xF24A7A80
	.4byte 0x00020034
	.4byte 0xFE363C85
	.4byte 0xF24A7EE6
	.4byte 0x00020034
	.4byte 0xFE363C86
	.4byte 0xF24A7A80
	.4byte 0x00020034
	.4byte 0xFE363C87
	.4byte 0xF24A78E7
	.4byte 0x00020034
	.4byte 0xFE363C88
	.4byte 0xF24A7A80
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_KUPPA_STONE_FALL_kpa_00001fe8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C8F
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0x0002003A
	.4byte 0xFE363C81
	.4byte 0xFE363C84
	.4byte 0x0002003A
	.4byte 0xFE363C82
	.4byte 0xFE363C85
	.4byte 0x0005005B
	.4byte set_starstone_pos
	.4byte str_nise_kpa_00001df0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0002001C
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x0002003C
	.4byte 0xFE363C84
	.4byte 0xF24A7880
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_KUPPA_STONE_HIT1_kpa_00002000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0002001C
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002003A
	.4byte 0xFE363C83
	.4byte 0xFE363C86
	.4byte 0x0002003A
	.4byte 0xFE363C84
	.4byte 0xFE363C87
	.4byte 0x0002003A
	.4byte 0xFE363C85
	.4byte 0xFE363C88
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x0005005B
	.4byte set_starstone_pos
	.4byte str_nise_kpa_00001df0
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0xFE363C82
	.4byte 0x0002005B
	.4byte starstone_fall
	.4byte str_nise_kpa_00001df0
	.4byte 0x0005005B
	.4byte get_starstone_pos
	.4byte str_nise_kpa_00001df0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_KUPPA_STONE_BREA_kpa_00002018
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x0000012C
	.4byte 0x00000000
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
	.4byte str_SFX_VOICE_KOOPA_SURP_kpa_00002030
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_kpa_00001e44
	.4byte str_KPA_S_5_kpa_00002050
	.4byte str_KPA_T_5_kpa_00002058
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg6_020_1_kpa_00002060
	.4byte 0x00000000
	.4byte str_mario_kpa_00001e44
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000082
	.4byte 0x00000050
	.4byte 0x00000130
	.4byte 0x00000082
	.4byte 0x0000001E
	.4byte 0xFFFFFFEF
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ババ_kpa_00001dc8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_ババ_kpa_00001dc8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000012C
	.4byte 0x00000028
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_ババ_kpa_00001dc8
	.4byte str_P_1_kpa_00001e6c
	.4byte str_T_6_kpa_00001e70
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg6_020_2_kpa_00002070
	.4byte 0x00000000
	.4byte str_ババ_kpa_00001dc8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000055
	.4byte 0x00000088
	.4byte 0x000001DD
	.4byte 0x00000055
	.4byte 0x0000003C
	.4byte 0xFFFFFFEF
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ババ_kpa_00001dc8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ババ_kpa_00001dc8
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_ババ_kpa_00001dc8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x0001000A
	.4byte 0x000004B0
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ババ_kpa_00001dc8
	.4byte str_S_1_kpa_00001e40
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_ババ_kpa_00001dc8
	.4byte str_S_1_kpa_00001e40
	.4byte str_T_1_kpa_00001e84
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg6_020_3_kpa_00002080
	.4byte 0x00000000
	.4byte str_ババ_kpa_00001dc8
	.4byte 0x0002005B
	.4byte kpa_chg_pose
	.4byte str_KPA_S_1_kpa_00001e4c
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_kpa_00001e44
	.4byte str_KPA_S_4_kpa_00002090
	.4byte str_KPA_T_3_kpa_00002098
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg6_021_kpa_000020a0
	.4byte 0x00000000
	.4byte str_mario_kpa_00001e44
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x00000067
	.4byte 0x0000012E
	.4byte 0x00000000
	.4byte 0x00000028
	.4byte 0xFFFFFFEF
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg6_022_kpa_000020b0
	.4byte 0x00000000
	.4byte str_ブレッドハート_kpa_00001dd0
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000055
	.4byte 0x00000088
	.4byte 0x000001DD
	.4byte 0x00000055
	.4byte 0x0000003C
	.4byte 0xFFFFFFEF
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg6_023_kpa_000020c0
	.4byte 0x00000000
	.4byte str_mario_kpa_00001e44
	.4byte 0x0002005B
	.4byte kpa_chg_pose
	.4byte str_KPA_I_2_kpa_000020d0
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A80
	.4byte 0xF24A7A8A
	.4byte 0x00000096
	.4byte 0x0001000A
	.4byte 0x00000096
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_KUPPA_ANGRY1_kpa_000020d8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_KUPPA_ANGRY2_kpa_000020ec
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000158
	.4byte 0x0003005B
	.4byte evt_snd_bgmoff_f
	.4byte 0x00000200
	.4byte 0x000003E8
	.4byte 0x0006005B
	.4byte evt_fade_entry
	.4byte 0x00000006
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_fade_end_wait
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x00020032
	.4byte 0xFBD3E28A
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000012
	.4byte 0x0001005E
	.4byte unk_evt_803bac3c
	.4byte 0x0002005B
	.4byte evt_mario_set_mode
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_fade_set_mapchange_type
	.4byte 0x00000001
	.4byte 0x0000003B
	.4byte 0x00000000
	.4byte 0x0000003A
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_gor_04_kpa_00002100
	.4byte str_resha_return_kpa_00002108
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kpa_07_evt

# .data:0x16D8 | 0x7E38 | size: 0xD0
.obj kpa_07_init_evt_15_data_7E38, global
	.4byte 0x0002005B
	.4byte evt_mario_set_mode
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_KUPPA1_kpa_00002118
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000200
	.4byte 0x0002005B
	.4byte evt_npc_setup
	.4byte npcEnt
	.4byte 0x0003005B
	.4byte evt_npc_entry
	.4byte str_belt_kpa_00002128
	.4byte str_c_bred_h_kpa_00002130
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_belt_kpa_00002128
	.4byte str_ブレッドハート_kpa_00001dd0
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_belt_kpa_00002128
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_npc_pera_onoff
	.4byte str_belt_kpa_00002128
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_belt_kpa_00002128
	.4byte str_C_1_kpa_0000213c
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_belt_kpa_00002128
	.4byte 0x00000050
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_belt_kpa_00002128
	.4byte 0x000000BE
	.4byte 0x00000034
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000157
	.4byte 0x0001005C
	.4byte kpa_07_evt
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kpa_07_init_evt_15_data_7E38
