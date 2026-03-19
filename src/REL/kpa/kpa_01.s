.include "macros.inc"
.file "kpa_01.o"

# 0x00000CF8..0x00000FC4 | size: 0x2CC
.text
.balign 4

# .text:0x0 | 0xCF8 | size: 0x68
.fn make_name, local
/* 00000CF8 00000DBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000CFC 00000DC0  7C 08 02 A6 */	mflr r0
/* 00000D00 00000DC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000D04 00000DC8  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00000D08 00000DCC  7C 7E 1B 78 */	mr r30, r3
/* 00000D0C 00000DD0  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00000D10 00000DD4  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00000D14 00000DD8  4B FF FE A9 */	bl evtGetValue
/* 00000D18 00000DDC  3C 80 00 00 */	lis r4, str_hi_PCTd_kpa_00001d2c@ha
/* 00000D1C 00000DE0  3C C0 00 00 */	lis r6, name$673@ha
/* 00000D20 00000DE4  7C 65 1B 78 */	mr r5, r3
/* 00000D24 00000DE8  38 66 00 00 */	addi r3, r6, name$673@l
/* 00000D28 00000DEC  38 84 00 00 */	addi r4, r4, str_hi_PCTd_kpa_00001d2c@l
/* 00000D2C 00000DF0  4C C6 31 82 */	crclr cr1eq
/* 00000D30 00000DF4  4B FF FE 8D */	bl sprintf
/* 00000D34 00000DF8  3C 60 00 00 */	lis r3, name$673@ha
/* 00000D38 00000DFC  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00000D3C 00000E00  38 A3 00 00 */	addi r5, r3, name$673@l
/* 00000D40 00000E04  7F C3 F3 78 */	mr r3, r30
/* 00000D44 00000E08  4B FF FE 79 */	bl evtSetValue
/* 00000D48 00000E0C  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00000D4C 00000E10  38 60 00 02 */	li r3, 0x2
/* 00000D50 00000E14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000D54 00000E18  7C 08 03 A6 */	mtlr r0
/* 00000D58 00000E1C  38 21 00 10 */	addi r1, r1, 0x10
/* 00000D5C 00000E20  4E 80 00 20 */	blr
.endfn make_name

# .text:0x68 | 0xD60 | size: 0x4C
.fn kpa_stg1_008_cb, local
/* 00000D60 00000E24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000D64 00000E28  7C 08 02 A6 */	mflr r0
/* 00000D68 00000E2C  2C 03 00 03 */	cmpwi r3, 0x3
/* 00000D6C 00000E30  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000D70 00000E34  80 64 00 00 */	lwz r3, 0x0(r4)
/* 00000D74 00000E38  41 82 00 08 */	beq .L_00000D7C
/* 00000D78 00000E3C  48 00 00 24 */	b .L_00000D9C
.L_00000D7C:
/* 00000D7C 00000E40  A0 03 00 08 */	lhz r0, 0x8(r3)
/* 00000D80 00000E44  28 00 00 01 */	cmplwi r0, 0x1
/* 00000D84 00000E48  40 82 00 18 */	bne .L_00000D9C
/* 00000D88 00000E4C  3C 80 F9 72 */	lis r4, 0xf972
/* 00000D8C 00000E50  38 60 00 00 */	li r3, 0x0
/* 00000D90 00000E54  38 84 88 81 */	subi r4, r4, 0x777f
/* 00000D94 00000E58  38 A0 00 01 */	li r5, 0x1
/* 00000D98 00000E5C  4B FF FE 25 */	bl evtSetValue
.L_00000D9C:
/* 00000D9C 00000E60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000DA0 00000E64  7C 08 03 A6 */	mtlr r0
/* 00000DA4 00000E68  38 21 00 10 */	addi r1, r1, 0x10
/* 00000DA8 00000E6C  4E 80 00 20 */	blr
.endfn kpa_stg1_008_cb

# .text:0xB4 | 0xDAC | size: 0x4C
.fn kpa_stg1_014_2_cb, local
/* 00000DAC 00000E70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000DB0 00000E74  7C 08 02 A6 */	mflr r0
/* 00000DB4 00000E78  2C 03 00 03 */	cmpwi r3, 0x3
/* 00000DB8 00000E7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000DBC 00000E80  80 64 00 00 */	lwz r3, 0x0(r4)
/* 00000DC0 00000E84  41 82 00 08 */	beq .L_00000DC8
/* 00000DC4 00000E88  48 00 00 24 */	b .L_00000DE8
.L_00000DC8:
/* 00000DC8 00000E8C  A0 03 00 08 */	lhz r0, 0x8(r3)
/* 00000DCC 00000E90  28 00 00 02 */	cmplwi r0, 0x2
/* 00000DD0 00000E94  40 82 00 18 */	bne .L_00000DE8
/* 00000DD4 00000E98  3C 80 F9 72 */	lis r4, 0xf972
/* 00000DD8 00000E9C  38 60 00 00 */	li r3, 0x0
/* 00000DDC 00000EA0  38 84 88 81 */	subi r4, r4, 0x777f
/* 00000DE0 00000EA4  38 A0 00 01 */	li r5, 0x1
/* 00000DE4 00000EA8  4B FF FD D9 */	bl evtSetValue
.L_00000DE8:
/* 00000DE8 00000EAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000DEC 00000EB0  7C 08 03 A6 */	mtlr r0
/* 00000DF0 00000EB4  38 21 00 10 */	addi r1, r1, 0x10
/* 00000DF4 00000EB8  4E 80 00 20 */	blr
.endfn kpa_stg1_014_2_cb

# .text:0x100 | 0xDF8 | size: 0x4C
.fn kpa_stg1_036_cb, local
/* 00000DF8 00000EBC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000DFC 00000EC0  7C 08 02 A6 */	mflr r0
/* 00000E00 00000EC4  2C 03 00 03 */	cmpwi r3, 0x3
/* 00000E04 00000EC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000E08 00000ECC  80 64 00 00 */	lwz r3, 0x0(r4)
/* 00000E0C 00000ED0  41 82 00 08 */	beq .L_00000E14
/* 00000E10 00000ED4  48 00 00 24 */	b .L_00000E34
.L_00000E14:
/* 00000E14 00000ED8  A0 03 00 08 */	lhz r0, 0x8(r3)
/* 00000E18 00000EDC  28 00 00 02 */	cmplwi r0, 0x2
/* 00000E1C 00000EE0  40 82 00 18 */	bne .L_00000E34
/* 00000E20 00000EE4  3C 80 F9 72 */	lis r4, 0xf972
/* 00000E24 00000EE8  38 60 00 00 */	li r3, 0x0
/* 00000E28 00000EEC  38 84 88 81 */	subi r4, r4, 0x777f
/* 00000E2C 00000EF0  38 A0 00 01 */	li r5, 0x1
/* 00000E30 00000EF4  4B FF FD 8D */	bl evtSetValue
.L_00000E34:
/* 00000E34 00000EF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000E38 00000EFC  7C 08 03 A6 */	mtlr r0
/* 00000E3C 00000F00  38 21 00 10 */	addi r1, r1, 0x10
/* 00000E40 00000F04  4E 80 00 20 */	blr
.endfn kpa_stg1_036_cb

# .text:0x14C | 0xE44 | size: 0x4C
.fn kpa_stg1_034_cb, local
/* 00000E44 00000F08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00000E48 00000F0C  7C 08 02 A6 */	mflr r0
/* 00000E4C 00000F10  2C 03 00 05 */	cmpwi r3, 0x5
/* 00000E50 00000F14  90 01 00 14 */	stw r0, 0x14(r1)
/* 00000E54 00000F18  80 64 00 00 */	lwz r3, 0x0(r4)
/* 00000E58 00000F1C  41 82 00 08 */	beq .L_00000E60
/* 00000E5C 00000F20  48 00 00 24 */	b .L_00000E80
.L_00000E60:
/* 00000E60 00000F24  80 03 00 10 */	lwz r0, 0x10(r3)
/* 00000E64 00000F28  2C 00 00 75 */	cmpwi r0, 0x75
/* 00000E68 00000F2C  40 81 00 18 */	ble .L_00000E80
/* 00000E6C 00000F30  3C 80 F9 72 */	lis r4, 0xf972
/* 00000E70 00000F34  38 60 00 00 */	li r3, 0x0
/* 00000E74 00000F38  38 84 88 81 */	subi r4, r4, 0x777f
/* 00000E78 00000F3C  38 A0 00 01 */	li r5, 0x1
/* 00000E7C 00000F40  4B FF FD 41 */	bl evtSetValue
.L_00000E80:
/* 00000E80 00000F44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00000E84 00000F48  7C 08 03 A6 */	mtlr r0
/* 00000E88 00000F4C  38 21 00 10 */	addi r1, r1, 0x10
/* 00000E8C 00000F50  4E 80 00 20 */	blr
.endfn kpa_stg1_034_cb

# .text:0x198 | 0xE90 | size: 0x134
.fn get_togenoko_pos, local
/* 00000E90 00000F54  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 00000E94 00000F58  7C 08 02 A6 */	mflr r0
/* 00000E98 00000F5C  90 01 00 94 */	stw r0, 0x94(r1)
/* 00000E9C 00000F60  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 00000EA0 00000F64  F3 E1 00 88 */	psq_st f31, 0x88(r1), 0, qr0
/* 00000EA4 00000F68  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 00000EA8 00000F6C  F3 C1 00 78 */	psq_st f30, 0x78(r1), 0, qr0
/* 00000EAC 00000F70  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 00000EB0 00000F74  F3 A1 00 68 */	psq_st f29, 0x68(r1), 0, qr0
/* 00000EB4 00000F78  DB 81 00 50 */	stfd f28, 0x50(r1)
/* 00000EB8 00000F7C  F3 81 00 58 */	psq_st f28, 0x58(r1), 0, qr0
/* 00000EBC 00000F80  BF C1 00 48 */	stmw r30, 0x48(r1)
/* 00000EC0 00000F84  7C 7E 1B 78 */	mr r30, r3
/* 00000EC4 00000F88  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00000EC8 00000F8C  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00000ECC 00000F90  4B FF FC F1 */	bl evtGetFloat
/* 00000ED0 00000F94  FF 80 08 90 */	fmr f28, f1
/* 00000ED4 00000F98  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00000ED8 00000F9C  7F C3 F3 78 */	mr r3, r30
/* 00000EDC 00000FA0  4B FF FC E1 */	bl evtGetFloat
/* 00000EE0 00000FA4  FF A0 08 90 */	fmr f29, f1
/* 00000EE4 00000FA8  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 00000EE8 00000FAC  7F C3 F3 78 */	mr r3, r30
/* 00000EEC 00000FB0  4B FF FC D1 */	bl evtGetFloat
/* 00000EF0 00000FB4  FF C0 08 90 */	fmr f30, f1
/* 00000EF4 00000FB8  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00000EF8 00000FBC  7F C3 F3 78 */	mr r3, r30
/* 00000EFC 00000FC0  4B FF FC C1 */	bl evtGetFloat
/* 00000F00 00000FC4  FF E0 08 90 */	fmr f31, f1
/* 00000F04 00000FC8  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00000F08 00000FCC  7F C3 F3 78 */	mr r3, r30
/* 00000F0C 00000FD0  4B FF FC B1 */	bl evtGetFloat
/* 00000F10 00000FD4  3C 80 00 00 */	lis r4, float_deg2rad_kpa_00001d34@ha
/* 00000F14 00000FD8  38 61 00 14 */	addi r3, r1, 0x14
/* 00000F18 00000FDC  38 A4 00 00 */	addi r5, r4, float_deg2rad_kpa_00001d34@l
/* 00000F1C 00000FE0  38 80 00 59 */	li r4, 0x59
/* 00000F20 00000FE4  C0 05 00 00 */	lfs f0, 0x0(r5)
/* 00000F24 00000FE8  EC 20 00 72 */	fmuls f1, f0, f1
/* 00000F28 00000FEC  4B FF FC 95 */	bl PSMTXRotRad
/* 00000F2C 00000FF0  3C 60 00 00 */	lis r3, zero_kpa_00001d38@ha
/* 00000F30 00000FF4  EC 5E E0 28 */	fsubs f2, f30, f28
/* 00000F34 00000FF8  C0 23 00 00 */	lfs f1, zero_kpa_00001d38@l(r3)
/* 00000F38 00000FFC  EC 1F E8 28 */	fsubs f0, f31, f29
/* 00000F3C 00001000  38 81 00 08 */	addi r4, r1, 0x8
/* 00000F40 00001004  38 61 00 14 */	addi r3, r1, 0x14
/* 00000F44 00001008  D0 41 00 08 */	stfs f2, 0x8(r1)
/* 00000F48 0000100C  7C 85 23 78 */	mr r5, r4
/* 00000F4C 00001010  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 00000F50 00001014  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 00000F54 00001018  4B FF FC 69 */	bl PSMTXMultVec
/* 00000F58 0000101C  C0 21 00 08 */	lfs f1, 0x8(r1)
/* 00000F5C 00001020  7F C3 F3 78 */	mr r3, r30
/* 00000F60 00001024  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 00000F64 00001028  EC 21 E0 2A */	fadds f1, f1, f28
/* 00000F68 0000102C  EC 00 E8 2A */	fadds f0, f0, f29
/* 00000F6C 00001030  D0 21 00 08 */	stfs f1, 0x8(r1)
/* 00000F70 00001034  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 00000F74 00001038  80 9F 00 14 */	lwz r4, 0x14(r31)
/* 00000F78 0000103C  4B FF FC 45 */	bl evtSetFloat
/* 00000F7C 00001040  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 00000F80 00001044  7F C3 F3 78 */	mr r3, r30
/* 00000F84 00001048  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 00000F88 0000104C  4B FF FC 35 */	bl evtSetFloat
/* 00000F8C 00001050  38 60 00 02 */	li r3, 0x2
/* 00000F90 00001054  E3 E1 00 88 */	psq_l f31, 0x88(r1), 0, qr0
/* 00000F94 00001058  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 00000F98 0000105C  E3 C1 00 78 */	psq_l f30, 0x78(r1), 0, qr0
/* 00000F9C 00001060  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 00000FA0 00001064  E3 A1 00 68 */	psq_l f29, 0x68(r1), 0, qr0
/* 00000FA4 00001068  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 00000FA8 0000106C  E3 81 00 58 */	psq_l f28, 0x58(r1), 0, qr0
/* 00000FAC 00001070  CB 81 00 50 */	lfd f28, 0x50(r1)
/* 00000FB0 00001074  BB C1 00 48 */	lmw r30, 0x48(r1)
/* 00000FB4 00001078  80 01 00 94 */	lwz r0, 0x94(r1)
/* 00000FB8 0000107C  7C 08 03 A6 */	mtlr r0
/* 00000FBC 00001080  38 21 00 90 */	addi r1, r1, 0x90
/* 00000FC0 00001084  4E 80 00 20 */	blr
.endfn get_togenoko_pos

# 0x000002C8..0x000008B0 | size: 0x5E8
.rodata
.balign 8

# .rodata:0x0 | 0x2C8 | size: 0xB
.obj str_トゲノコＡ_kpa_00001758, local
	.4byte 0x83678351
	.4byte 0x836D8352
	.byte 0x82, 0x60, 0x00
.endobj str_トゲノコＡ_kpa_00001758

# .rodata:0xB | 0x2D3 | size: 0x1
.obj gap_03_000002D3_rodata, global
.hidden gap_03_000002D3_rodata
	.byte 0x00
.endobj gap_03_000002D3_rodata

# .rodata:0xC | 0x2D4 | size: 0xB
.obj str_トゲノコＢ_kpa_00001764, local
	.4byte 0x83678351
	.4byte 0x836D8352
	.byte 0x82, 0x61, 0x00
.endobj str_トゲノコＢ_kpa_00001764

# .rodata:0x17 | 0x2DF | size: 0x1
.obj gap_03_000002DF_rodata, global
.hidden gap_03_000002DF_rodata
	.byte 0x00
.endobj gap_03_000002DF_rodata

# .rodata:0x18 | 0x2E0 | size: 0x5
.obj str_door_kpa_00001770, local
	.string "door"
.endobj str_door_kpa_00001770

# .rodata:0x1D | 0x2E5 | size: 0x3
.obj gap_03_000002E5_rodata, global
.hidden gap_03_000002E5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000002E5_rodata

# .rodata:0x20 | 0x2E8 | size: 0x16
.obj str_SFX_DOOR_OPEN_CASTLE_kpa_00001778, local
	.string "SFX_DOOR_OPEN_CASTLE1"
.endobj str_SFX_DOOR_OPEN_CASTLE_kpa_00001778

# .rodata:0x36 | 0x2FE | size: 0x2
.obj gap_03_000002FE_rodata, global
.hidden gap_03_000002FE_rodata
	.2byte 0x0000
.endobj gap_03_000002FE_rodata

# .rodata:0x38 | 0x300 | size: 0x7
.obj str_door_1_kpa_00001790, local
	.string "door_1"
.endobj str_door_1_kpa_00001790

# .rodata:0x3F | 0x307 | size: 0x1
.obj gap_03_00000307_rodata, global
.hidden gap_03_00000307_rodata
	.byte 0x00
.endobj gap_03_00000307_rodata

# .rodata:0x40 | 0x308 | size: 0x7
.obj str_door_2_kpa_00001798, local
	.string "door_2"
.endobj str_door_2_kpa_00001798

# .rodata:0x47 | 0x30F | size: 0x1
.obj gap_03_0000030F_rodata, global
.hidden gap_03_0000030F_rodata
	.byte 0x00
.endobj gap_03_0000030F_rodata

# .rodata:0x48 | 0x310 | size: 0x4
.obj str_W_2_kpa_000017a0, local
	.string "W_2"
.endobj str_W_2_kpa_000017a0

# .rodata:0x4C | 0x314 | size: 0x4
.obj str_W_3_kpa_000017a4, local
	.string "W_3"
.endobj str_W_3_kpa_000017a4

# .rodata:0x50 | 0x318 | size: 0x16
.obj str_SFX_DOOR_SHUT_CASTLE_kpa_000017a8, local
	.string "SFX_DOOR_SHUT_CASTLE1"
.endobj str_SFX_DOOR_SHUT_CASTLE_kpa_000017a8

# .rodata:0x66 | 0x32E | size: 0x2
.obj gap_03_0000032E_rodata, global
.hidden gap_03_0000032E_rodata
	.2byte 0x0000
.endobj gap_03_0000032E_rodata

# .rodata:0x68 | 0x330 | size: 0x11
.obj str_BGM_STGK_CASTLE1_kpa_000017c0, local
	.string "BGM_STGK_CASTLE1"
.endobj str_BGM_STGK_CASTLE1_kpa_000017c0

# .rodata:0x79 | 0x341 | size: 0x3
.obj gap_03_00000341_rodata, global
.hidden gap_03_00000341_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000341_rodata

# .rodata:0x7C | 0x344 | size: 0x10
.obj str_SFX_KUPPA_MOVE1_kpa_000017d4, local
	.string "SFX_KUPPA_MOVE1"
.endobj str_SFX_KUPPA_MOVE1_kpa_000017d4

# .rodata:0x8C | 0x354 | size: 0x10
.obj str_SFX_KUPPA_MOVE2_kpa_000017e4, local
	.string "SFX_KUPPA_MOVE2"
.endobj str_SFX_KUPPA_MOVE2_kpa_000017e4

# .rodata:0x9C | 0x364 | size: 0x1
.obj zero_kpa_000017f4, local
	.byte 0x00
.endobj zero_kpa_000017f4

# .rodata:0x9D | 0x365 | size: 0x3
.obj gap_03_00000365_rodata, global
.hidden gap_03_00000365_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000365_rodata

# .rodata:0xA0 | 0x368 | size: 0x19
.obj str_SFX_VOICE_KOOPA_LAUG_kpa_000017f8, local
	.string "SFX_VOICE_KOOPA_LAUGH2_2"
.endobj str_SFX_VOICE_KOOPA_LAUG_kpa_000017f8

# .rodata:0xB9 | 0x381 | size: 0x3
.obj gap_03_00000381_rodata, global
.hidden gap_03_00000381_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000381_rodata

# .rodata:0xBC | 0x384 | size: 0x6
.obj str_mario_kpa_00001814, local
	.string "mario"
.endobj str_mario_kpa_00001814

# .rodata:0xC2 | 0x38A | size: 0x2
.obj gap_03_0000038A_rodata, global
.hidden gap_03_0000038A_rodata
	.2byte 0x0000
.endobj gap_03_0000038A_rodata

# .rodata:0xC4 | 0x38C | size: 0x8
.obj str_KPA_S_1_kpa_0000181c, local
	.string "KPA_S_1"
.endobj str_KPA_S_1_kpa_0000181c

# .rodata:0xCC | 0x394 | size: 0x8
.obj str_KPA_T_1_kpa_00001824, local
	.string "KPA_T_1"
.endobj str_KPA_T_1_kpa_00001824

# .rodata:0xD4 | 0x39C | size: 0xD
.obj str_kpa_stg1_000_kpa_0000182c, local
	.string "kpa_stg1_000"
.endobj str_kpa_stg1_000_kpa_0000182c

# .rodata:0xE1 | 0x3A9 | size: 0x3
.obj gap_03_000003A9_rodata, global
.hidden gap_03_000003A9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000003A9_rodata

# .rodata:0xE4 | 0x3AC | size: 0xD
.obj str_kpa_stg1_001_kpa_0000183c, local
	.string "kpa_stg1_001"
.endobj str_kpa_stg1_001_kpa_0000183c

# .rodata:0xF1 | 0x3B9 | size: 0x3
.obj gap_03_000003B9_rodata, global
.hidden gap_03_000003B9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000003B9_rodata

# .rodata:0xF4 | 0x3BC | size: 0x1D
.obj str_SFX_VOICE_KOOPA_SURP_kpa_0000184c, local
	.string "SFX_VOICE_KOOPA_SURPRISED1_1"
.endobj str_SFX_VOICE_KOOPA_SURP_kpa_0000184c

# .rodata:0x111 | 0x3D9 | size: 0x3
.obj gap_03_000003D9_rodata, global
.hidden gap_03_000003D9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000003D9_rodata

# .rodata:0x114 | 0x3DC | size: 0x5
.obj str_ババ_kpa_0000186c, local
	.4byte 0x836F836F
	.byte 0x00
.endobj str_ババ_kpa_0000186c

# .rodata:0x119 | 0x3E1 | size: 0x3
.obj gap_03_000003E1_rodata, global
.hidden gap_03_000003E1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000003E1_rodata

# .rodata:0x11C | 0x3E4 | size: 0xD
.obj str_kpa_stg1_021_kpa_00001874, local
	.string "kpa_stg1_021"
.endobj str_kpa_stg1_021_kpa_00001874

# .rodata:0x129 | 0x3F1 | size: 0x3
.obj gap_03_000003F1_rodata, global
.hidden gap_03_000003F1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000003F1_rodata

# .rodata:0x12C | 0x3F4 | size: 0xB
.obj str_ハンマーＥ_kpa_00001884, local
	.4byte 0x836E8393
	.4byte 0x837D815B
	.byte 0x82, 0x64, 0x00
.endobj str_ハンマーＥ_kpa_00001884

# .rodata:0x137 | 0x3FF | size: 0x1
.obj gap_03_000003FF_rodata, global
.hidden gap_03_000003FF_rodata
	.byte 0x00
.endobj gap_03_000003FF_rodata

# .rodata:0x138 | 0x400 | size: 0xB
.obj str_ハンマーＤ_kpa_00001890, local
	.4byte 0x836E8393
	.4byte 0x837D815B
	.byte 0x82, 0x63, 0x00
.endobj str_ハンマーＤ_kpa_00001890

# .rodata:0x143 | 0x40B | size: 0x1
.obj gap_03_0000040B_rodata, global
.hidden gap_03_0000040B_rodata
	.byte 0x00
.endobj gap_03_0000040B_rodata

# .rodata:0x144 | 0x40C | size: 0x17
.obj str_カメックババ（息切れ）_kpa_0000189c, local
	.4byte 0x834A8381
	.4byte 0x8362834E
	.4byte 0x836F836F
	.4byte 0x816991A7
	.4byte 0x90D882EA
	.byte 0x81, 0x6A, 0x00
.endobj str_カメックババ（息切れ）_kpa_0000189c

# .rodata:0x15B | 0x423 | size: 0x1
.obj gap_03_00000423_rodata, global
.hidden gap_03_00000423_rodata
	.byte 0x00
.endobj gap_03_00000423_rodata

# .rodata:0x15C | 0x424 | size: 0xF
.obj str_kpa_stg1_021_1_kpa_000018b4, local
	.string "kpa_stg1_021_1"
.endobj str_kpa_stg1_021_1_kpa_000018b4

# .rodata:0x16B | 0x433 | size: 0x1
.obj gap_03_00000433_rodata, global
.hidden gap_03_00000433_rodata
	.byte 0x00
.endobj gap_03_00000433_rodata

# .rodata:0x16C | 0x434 | size: 0x15
.obj str_カメックババ（地上）_kpa_000018c4, local
	.4byte 0x834A8381
	.4byte 0x8362834E
	.4byte 0x836F836F
	.4byte 0x8169926E
	.4byte 0x8FE3816A
	.byte 0x00
.endobj str_カメックババ（地上）_kpa_000018c4

# .rodata:0x181 | 0x449 | size: 0x3
.obj gap_03_00000449_rodata, global
.hidden gap_03_00000449_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000449_rodata

# .rodata:0x184 | 0x44C | size: 0xD
.obj str_kpa_stg1_022_kpa_000018dc, local
	.string "kpa_stg1_022"
.endobj str_kpa_stg1_022_kpa_000018dc

# .rodata:0x191 | 0x459 | size: 0x3
.obj gap_03_00000459_rodata, global
.hidden gap_03_00000459_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000459_rodata

# .rodata:0x194 | 0x45C | size: 0xD
.obj str_kpa_stg1_023_kpa_000018ec, local
	.string "kpa_stg1_023"
.endobj str_kpa_stg1_023_kpa_000018ec

# .rodata:0x1A1 | 0x469 | size: 0x3
.obj gap_03_00000469_rodata, global
.hidden gap_03_00000469_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000469_rodata

# .rodata:0x1A4 | 0x46C | size: 0xD
.obj str_kpa_stg1_025_kpa_000018fc, local
	.string "kpa_stg1_025"
.endobj str_kpa_stg1_025_kpa_000018fc

# .rodata:0x1B1 | 0x479 | size: 0x3
.obj gap_03_00000479_rodata, global
.hidden gap_03_00000479_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000479_rodata

# .rodata:0x1B4 | 0x47C | size: 0x8
.obj str_KPA_S_4_kpa_0000190c, local
	.string "KPA_S_4"
.endobj str_KPA_S_4_kpa_0000190c

# .rodata:0x1BC | 0x484 | size: 0x8
.obj str_KPA_T_3_kpa_00001914, local
	.string "KPA_T_3"
.endobj str_KPA_T_3_kpa_00001914

# .rodata:0x1C4 | 0x48C | size: 0xD
.obj str_kpa_stg1_026_kpa_0000191c, local
	.string "kpa_stg1_026"
.endobj str_kpa_stg1_026_kpa_0000191c

# .rodata:0x1D1 | 0x499 | size: 0x3
.obj gap_03_00000499_rodata, global
.hidden gap_03_00000499_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000499_rodata

# .rodata:0x1D4 | 0x49C | size: 0xD
.obj str_kpa_stg1_027_kpa_0000192c, local
	.string "kpa_stg1_027"
.endobj str_kpa_stg1_027_kpa_0000192c

# .rodata:0x1E1 | 0x4A9 | size: 0x3
.obj gap_03_000004A9_rodata, global
.hidden gap_03_000004A9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000004A9_rodata

# .rodata:0x1E4 | 0x4AC | size: 0xD
.obj str_kpa_stg1_028_kpa_0000193c, local
	.string "kpa_stg1_028"
.endobj str_kpa_stg1_028_kpa_0000193c

# .rodata:0x1F1 | 0x4B9 | size: 0x3
.obj gap_03_000004B9_rodata, global
.hidden gap_03_000004B9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000004B9_rodata

# .rodata:0x1F4 | 0x4BC | size: 0xD
.obj str_kpa_stg1_029_kpa_0000194c, local
	.string "kpa_stg1_029"
.endobj str_kpa_stg1_029_kpa_0000194c

# .rodata:0x201 | 0x4C9 | size: 0x3
.obj gap_03_000004C9_rodata, global
.hidden gap_03_000004C9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000004C9_rodata

# .rodata:0x204 | 0x4CC | size: 0xD
.obj str_kpa_stg1_030_kpa_0000195c, local
	.string "kpa_stg1_030"
.endobj str_kpa_stg1_030_kpa_0000195c

# .rodata:0x211 | 0x4D9 | size: 0x3
.obj gap_03_000004D9_rodata, global
.hidden gap_03_000004D9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000004D9_rodata

# .rodata:0x214 | 0x4DC | size: 0xD
.obj str_kpa_stg1_031_kpa_0000196c, local
	.string "kpa_stg1_031"
.endobj str_kpa_stg1_031_kpa_0000196c

# .rodata:0x221 | 0x4E9 | size: 0x3
.obj gap_03_000004E9_rodata, global
.hidden gap_03_000004E9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000004E9_rodata

# .rodata:0x224 | 0x4EC | size: 0xD
.obj str_kpa_stg1_032_kpa_0000197c, local
	.string "kpa_stg1_032"
.endobj str_kpa_stg1_032_kpa_0000197c

# .rodata:0x231 | 0x4F9 | size: 0x3
.obj gap_03_000004F9_rodata, global
.hidden gap_03_000004F9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000004F9_rodata

# .rodata:0x234 | 0x4FC | size: 0xD
.obj str_kpa_stg1_033_kpa_0000198c, local
	.string "kpa_stg1_033"
.endobj str_kpa_stg1_033_kpa_0000198c

# .rodata:0x241 | 0x509 | size: 0x3
.obj gap_03_00000509_rodata, global
.hidden gap_03_00000509_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000509_rodata

# .rodata:0x244 | 0x50C | size: 0xF
.obj str_kpa_stg1_033_1_kpa_0000199c, local
	.string "kpa_stg1_033_1"
.endobj str_kpa_stg1_033_1_kpa_0000199c

# .rodata:0x253 | 0x51B | size: 0x1
.obj gap_03_0000051B_rodata, global
.hidden gap_03_0000051B_rodata
	.byte 0x00
.endobj gap_03_0000051B_rodata

# .rodata:0x254 | 0x51C | size: 0x5
.obj str_A_2A_kpa_000019ac, local
	.string "A_2A"
.endobj str_A_2A_kpa_000019ac

# .rodata:0x259 | 0x521 | size: 0x3
.obj gap_03_00000521_rodata, global
.hidden gap_03_00000521_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000521_rodata

# .rodata:0x25C | 0x524 | size: 0x4
.obj str_U_1_kpa_000019b4, local
	.string "U_1"
.endobj str_U_1_kpa_000019b4

# .rodata:0x260 | 0x528 | size: 0x4
.obj str_T_5_kpa_000019b8, local
	.string "T_5"
.endobj str_T_5_kpa_000019b8

# .rodata:0x264 | 0x52C | size: 0xD
.obj str_kpa_stg1_034_kpa_000019bc, local
	.string "kpa_stg1_034"
.endobj str_kpa_stg1_034_kpa_000019bc

# .rodata:0x271 | 0x539 | size: 0x3
.obj gap_03_00000539_rodata, global
.hidden gap_03_00000539_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000539_rodata

# .rodata:0x274 | 0x53C | size: 0x4
.obj str_S_1_kpa_000019cc, local
	.string "S_1"
.endobj str_S_1_kpa_000019cc

# .rodata:0x278 | 0x540 | size: 0x4
.obj str_T_1_kpa_000019d0, local
	.string "T_1"
.endobj str_T_1_kpa_000019d0

# .rodata:0x27C | 0x544 | size: 0x4
.obj str_D_1_kpa_000019d4, local
	.string "D_1"
.endobj str_D_1_kpa_000019d4

# .rodata:0x280 | 0x548 | size: 0xB
.obj str_トゲノコＣ_kpa_000019d8, local
	.4byte 0x83678351
	.4byte 0x836D8352
	.byte 0x82, 0x62, 0x00
.endobj str_トゲノコＣ_kpa_000019d8

# .rodata:0x28B | 0x553 | size: 0x1
.obj gap_03_00000553_rodata, global
.hidden gap_03_00000553_rodata
	.byte 0x00
.endobj gap_03_00000553_rodata

# .rodata:0x28C | 0x554 | size: 0x4
.obj str_O_1_kpa_000019e4, local
	.string "O_1"
.endobj str_O_1_kpa_000019e4

# .rodata:0x290 | 0x558 | size: 0xB
.obj str_トゲノコＤ_kpa_000019e8, local
	.4byte 0x83678351
	.4byte 0x836D8352
	.byte 0x82, 0x63, 0x00
.endobj str_トゲノコＤ_kpa_000019e8

# .rodata:0x29B | 0x563 | size: 0x1
.obj gap_03_00000563_rodata, global
.hidden gap_03_00000563_rodata
	.byte 0x00
.endobj gap_03_00000563_rodata

# .rodata:0x29C | 0x564 | size: 0x19
.obj str_SFX_VOICE_KOOPA_ANGR_kpa_000019f4, local
	.string "SFX_VOICE_KOOPA_ANGRY2_1"
.endobj str_SFX_VOICE_KOOPA_ANGR_kpa_000019f4

# .rodata:0x2B5 | 0x57D | size: 0x3
.obj gap_03_0000057D_rodata, global
.hidden gap_03_0000057D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000057D_rodata

# .rodata:0x2B8 | 0x580 | size: 0xD
.obj str_kpa_stg1_035_kpa_00001a10, local
	.string "kpa_stg1_035"
.endobj str_kpa_stg1_035_kpa_00001a10

# .rodata:0x2C5 | 0x58D | size: 0x3
.obj gap_03_0000058D_rodata, global
.hidden gap_03_0000058D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000058D_rodata

# .rodata:0x2C8 | 0x590 | size: 0xD
.obj str_kpa_stg1_036_kpa_00001a20, local
	.string "kpa_stg1_036"
.endobj str_kpa_stg1_036_kpa_00001a20

# .rodata:0x2D5 | 0x59D | size: 0x3
.obj gap_03_0000059D_rodata, global
.hidden gap_03_0000059D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000059D_rodata

# .rodata:0x2D8 | 0x5A0 | size: 0x1D
.obj str_SFX_VOICE_KOOPA_VEXA_kpa_00001a30, local
	.string "SFX_VOICE_KOOPA_VEXATIOUS2_2"
.endobj str_SFX_VOICE_KOOPA_VEXA_kpa_00001a30

# .rodata:0x2F5 | 0x5BD | size: 0x3
.obj gap_03_000005BD_rodata, global
.hidden gap_03_000005BD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000005BD_rodata

# .rodata:0x2F8 | 0x5C0 | size: 0x8
.obj str_KPA_I_2_kpa_00001a50, local
	.string "KPA_I_2"
.endobj str_KPA_I_2_kpa_00001a50

# .rodata:0x300 | 0x5C8 | size: 0x11
.obj str_SFX_KUPPA_ANGRY1_kpa_00001a58, local
	.string "SFX_KUPPA_ANGRY1"
.endobj str_SFX_KUPPA_ANGRY1_kpa_00001a58

# .rodata:0x311 | 0x5D9 | size: 0x3
.obj gap_03_000005D9_rodata, global
.hidden gap_03_000005D9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000005D9_rodata

# .rodata:0x314 | 0x5DC | size: 0x11
.obj str_SFX_KUPPA_ANGRY2_kpa_00001a6c, local
	.string "SFX_KUPPA_ANGRY2"
.endobj str_SFX_KUPPA_ANGRY2_kpa_00001a6c

# .rodata:0x325 | 0x5ED | size: 0x3
.obj gap_03_000005ED_rodata, global
.hidden gap_03_000005ED_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000005ED_rodata

# .rodata:0x328 | 0x5F0 | size: 0x4
.obj str_P_1_kpa_00001a80, local
	.string "P_1"
.endobj str_P_1_kpa_00001a80

# .rodata:0x32C | 0x5F4 | size: 0x4
.obj str_T_6_kpa_00001a84, local
	.string "T_6"
.endobj str_T_6_kpa_00001a84

# .rodata:0x330 | 0x5F8 | size: 0xD
.obj str_kpa_stg1_037_kpa_00001a88, local
	.string "kpa_stg1_037"
.endobj str_kpa_stg1_037_kpa_00001a88

# .rodata:0x33D | 0x605 | size: 0x3
.obj gap_03_00000605_rodata, global
.hidden gap_03_00000605_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000605_rodata

# .rodata:0x340 | 0x608 | size: 0x9
.obj str_カメック_kpa_00001a98, local
	.4byte 0x834A8381
	.4byte 0x8362834E
	.byte 0x00
.endobj str_カメック_kpa_00001a98

# .rodata:0x349 | 0x611 | size: 0x3
.obj gap_03_00000611_rodata, global
.hidden gap_03_00000611_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000611_rodata

# .rodata:0x34C | 0x614 | size: 0xD
.obj str_kpa_stg1_038_kpa_00001aa4, local
	.string "kpa_stg1_038"
.endobj str_kpa_stg1_038_kpa_00001aa4

# .rodata:0x359 | 0x621 | size: 0x3
.obj gap_03_00000621_rodata, global
.hidden gap_03_00000621_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000621_rodata

# .rodata:0x35C | 0x624 | size: 0xD
.obj str_kpa_stg1_039_kpa_00001ab4, local
	.string "kpa_stg1_039"
.endobj str_kpa_stg1_039_kpa_00001ab4

# .rodata:0x369 | 0x631 | size: 0x3
.obj gap_03_00000631_rodata, global
.hidden gap_03_00000631_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000631_rodata

# .rodata:0x36C | 0x634 | size: 0xD
.obj str_kpa_stg1_040_kpa_00001ac4, local
	.string "kpa_stg1_040"
.endobj str_kpa_stg1_040_kpa_00001ac4

# .rodata:0x379 | 0x641 | size: 0x3
.obj gap_03_00000641_rodata, global
.hidden gap_03_00000641_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000641_rodata

# .rodata:0x37C | 0x644 | size: 0xD
.obj str_kpa_stg1_041_kpa_00001ad4, local
	.string "kpa_stg1_041"
.endobj str_kpa_stg1_041_kpa_00001ad4

# .rodata:0x389 | 0x651 | size: 0x3
.obj gap_03_00000651_rodata, global
.hidden gap_03_00000651_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000651_rodata

# .rodata:0x38C | 0x654 | size: 0xD
.obj str_kpa_stg1_042_kpa_00001ae4, local
	.string "kpa_stg1_042"
.endobj str_kpa_stg1_042_kpa_00001ae4

# .rodata:0x399 | 0x661 | size: 0x3
.obj gap_03_00000661_rodata, global
.hidden gap_03_00000661_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000661_rodata

# .rodata:0x39C | 0x664 | size: 0xD
.obj str_kpa_stg1_043_kpa_00001af4, local
	.string "kpa_stg1_043"
.endobj str_kpa_stg1_043_kpa_00001af4

# .rodata:0x3A9 | 0x671 | size: 0x3
.obj gap_03_00000671_rodata, global
.hidden gap_03_00000671_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000671_rodata

# .rodata:0x3AC | 0x674 | size: 0xD
.obj str_kpa_stg1_044_kpa_00001b04, local
	.string "kpa_stg1_044"
.endobj str_kpa_stg1_044_kpa_00001b04

# .rodata:0x3B9 | 0x681 | size: 0x3
.obj gap_03_00000681_rodata, global
.hidden gap_03_00000681_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000681_rodata

# .rodata:0x3BC | 0x684 | size: 0x9
.obj str_飛クッパ_kpa_00001b14, local
	.4byte 0x94F2834E
	.4byte 0x83628370
	.byte 0x00
.endobj str_飛クッパ_kpa_00001b14

# .rodata:0x3C5 | 0x68D | size: 0x3
.obj gap_03_0000068D_rodata, global
.hidden gap_03_0000068D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000068D_rodata

# .rodata:0x3C8 | 0x690 | size: 0x18
.obj str_SFX_KUPPA_AIRSHIP_MO_kpa_00001b20, local
	.string "SFX_KUPPA_AIRSHIP_MOVE1"
.endobj str_SFX_KUPPA_AIRSHIP_MO_kpa_00001b20

# .rodata:0x3E0 | 0x6A8 | size: 0x12
.obj str_OFF_d_yabu_hantai_kpa_00001b38, local
	.string "OFF_d_yabu_hantai"
.endobj str_OFF_d_yabu_hantai_kpa_00001b38

# .rodata:0x3F2 | 0x6BA | size: 0x2
.obj gap_03_000006BA_rodata, global
.hidden gap_03_000006BA_rodata
	.2byte 0x0000
.endobj gap_03_000006BA_rodata

# .rodata:0x3F4 | 0x6BC | size: 0x4
.obj str_img_kpa_00001b4c, local
	.string "img"
.endobj str_img_kpa_00001b4c

# .rodata:0x3F8 | 0x6C0 | size: 0x4
.obj str_ofs_kpa_00001b50, local
	.string "ofs"
.endobj str_ofs_kpa_00001b50

# .rodata:0x3FC | 0x6C4 | size: 0x2
.obj str_S_kpa_00001b54, local
	.string "S"
.endobj str_S_kpa_00001b54

# .rodata:0x3FE | 0x6C6 | size: 0x2
.obj gap_03_000006C6_rodata, global
.hidden gap_03_000006C6_rodata
	.2byte 0x0000
.endobj gap_03_000006C6_rodata

# .rodata:0x400 | 0x6C8 | size: 0x4
.obj str_A_1_kpa_00001b58, local
	.string "A_1"
.endobj str_A_1_kpa_00001b58

# .rodata:0x404 | 0x6CC | size: 0x1A
.obj str_SFX_OFF_KUPPA_WALL_B_kpa_00001b5c, local
	.string "SFX_OFF_KUPPA_WALL_BREAK1"
.endobj str_SFX_OFF_KUPPA_WALL_B_kpa_00001b5c

# .rodata:0x41E | 0x6E6 | size: 0x2
.obj gap_03_000006E6_rodata, global
.hidden gap_03_000006E6_rodata
	.2byte 0x0000
.endobj gap_03_000006E6_rodata

# .rodata:0x420 | 0x6E8 | size: 0xD
.obj str_カメックババ_kpa_00001b78, local
	.4byte 0x834A8381
	.4byte 0x8362834E
	.4byte 0x836F836F
	.byte 0x00
.endobj str_カメックババ_kpa_00001b78

# .rodata:0x42D | 0x6F5 | size: 0x3
.obj gap_03_000006F5_rodata, global
.hidden gap_03_000006F5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000006F5_rodata

# .rodata:0x430 | 0x6F8 | size: 0x18
.obj str_SFX_KUPPA_KAMEBABA_F_kpa_00001b88, local
	.string "SFX_KUPPA_KAMEBABA_FLY1"
.endobj str_SFX_KUPPA_KAMEBABA_F_kpa_00001b88

# .rodata:0x448 | 0x710 | size: 0xD
.obj str_kpa_stg1_045_kpa_00001ba0, local
	.string "kpa_stg1_045"
.endobj str_kpa_stg1_045_kpa_00001ba0

# .rodata:0x455 | 0x71D | size: 0x3
.obj gap_03_0000071D_rodata, global
.hidden gap_03_0000071D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000071D_rodata

# .rodata:0x458 | 0x720 | size: 0x7
.obj str_kpa_00_kpa_00001bb0, local
	.string "kpa_00"
.endobj str_kpa_00_kpa_00001bb0

# .rodata:0x45F | 0x727 | size: 0x1
.obj gap_03_00000727_rodata, global
.hidden gap_03_00000727_rodata
	.byte 0x00
.endobj gap_03_00000727_rodata

# .rodata:0x460 | 0x728 | size: 0xD
.obj str_kpa_stg1_014_kpa_00001bb8, local
	.string "kpa_stg1_014"
.endobj str_kpa_stg1_014_kpa_00001bb8

# .rodata:0x46D | 0x735 | size: 0x3
.obj gap_03_00000735_rodata, global
.hidden gap_03_00000735_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000735_rodata

# .rodata:0x470 | 0x738 | size: 0xF
.obj str_kpa_stg1_014_1_kpa_00001bc8, local
	.string "kpa_stg1_014_1"
.endobj str_kpa_stg1_014_1_kpa_00001bc8

# .rodata:0x47F | 0x747 | size: 0x1
.obj gap_03_00000747_rodata, global
.hidden gap_03_00000747_rodata
	.byte 0x00
.endobj gap_03_00000747_rodata

# .rodata:0x480 | 0x748 | size: 0x11
.obj str_BGM_FF_GET_ITEM1_kpa_00001bd8, local
	.string "BGM_FF_GET_ITEM1"
.endobj str_BGM_FF_GET_ITEM1_kpa_00001bd8

# .rodata:0x491 | 0x759 | size: 0x3
.obj gap_03_00000759_rodata, global
.hidden gap_03_00000759_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000759_rodata

# .rodata:0x494 | 0x75C | size: 0xF
.obj str_kpa_stg1_014_2_kpa_00001bec, local
	.string "kpa_stg1_014_2"
.endobj str_kpa_stg1_014_2_kpa_00001bec

# .rodata:0x4A3 | 0x76B | size: 0x1
.obj gap_03_0000076B_rodata, global
.hidden gap_03_0000076B_rodata
	.byte 0x00
.endobj gap_03_0000076B_rodata

# .rodata:0x4A4 | 0x76C | size: 0xD
.obj str_kpa_stg1_002_kpa_00001bfc, local
	.string "kpa_stg1_002"
.endobj str_kpa_stg1_002_kpa_00001bfc

# .rodata:0x4B1 | 0x779 | size: 0x3
.obj gap_03_00000779_rodata, global
.hidden gap_03_00000779_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000779_rodata

# .rodata:0x4B4 | 0x77C | size: 0x3
.obj str_me_kpa_00001c0c, local
	.string "me"
.endobj str_me_kpa_00001c0c

# .rodata:0x4B7 | 0x77F | size: 0x1
.obj gap_03_0000077F_rodata, global
.hidden gap_03_0000077F_rodata
	.byte 0x00
.endobj gap_03_0000077F_rodata

# .rodata:0x4B8 | 0x780 | size: 0xD
.obj str_kpa_stg1_004_kpa_00001c10, local
	.string "kpa_stg1_004"
.endobj str_kpa_stg1_004_kpa_00001c10

# .rodata:0x4C5 | 0x78D | size: 0x3
.obj gap_03_0000078D_rodata, global
.hidden gap_03_0000078D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000078D_rodata

# .rodata:0x4C8 | 0x790 | size: 0xD
.obj str_kpa_stg1_006_kpa_00001c20, local
	.string "kpa_stg1_006"
.endobj str_kpa_stg1_006_kpa_00001c20

# .rodata:0x4D5 | 0x79D | size: 0x3
.obj gap_03_0000079D_rodata, global
.hidden gap_03_0000079D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000079D_rodata

# .rodata:0x4D8 | 0x7A0 | size: 0xB
.obj str_ハンマーＡ_kpa_00001c30, local
	.4byte 0x836E8393
	.4byte 0x837D815B
	.byte 0x82, 0x60, 0x00
.endobj str_ハンマーＡ_kpa_00001c30

# .rodata:0x4E3 | 0x7AB | size: 0x1
.obj gap_03_000007AB_rodata, global
.hidden gap_03_000007AB_rodata
	.byte 0x00
.endobj gap_03_000007AB_rodata

# .rodata:0x4E4 | 0x7AC | size: 0xD
.obj str_kpa_stg1_007_kpa_00001c3c, local
	.string "kpa_stg1_007"
.endobj str_kpa_stg1_007_kpa_00001c3c

# .rodata:0x4F1 | 0x7B9 | size: 0x3
.obj gap_03_000007B9_rodata, global
.hidden gap_03_000007B9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000007B9_rodata

# .rodata:0x4F4 | 0x7BC | size: 0xB
.obj str_ハンマーＢ_kpa_00001c4c, local
	.4byte 0x836E8393
	.4byte 0x837D815B
	.byte 0x82, 0x61, 0x00
.endobj str_ハンマーＢ_kpa_00001c4c

# .rodata:0x4FF | 0x7C7 | size: 0x1
.obj gap_03_000007C7_rodata, global
.hidden gap_03_000007C7_rodata
	.byte 0x00
.endobj gap_03_000007C7_rodata

# .rodata:0x500 | 0x7C8 | size: 0x8
.obj str_BRO_O_1_kpa_00001c58, local
	.string "BRO_O_1"
.endobj str_BRO_O_1_kpa_00001c58

# .rodata:0x508 | 0x7D0 | size: 0x8
.obj str_BRO_S_1_kpa_00001c60, local
	.string "BRO_S_1"
.endobj str_BRO_S_1_kpa_00001c60

# .rodata:0x510 | 0x7D8 | size: 0xD
.obj str_kpa_stg1_008_kpa_00001c68, local
	.string "kpa_stg1_008"
.endobj str_kpa_stg1_008_kpa_00001c68

# .rodata:0x51D | 0x7E5 | size: 0x3
.obj gap_03_000007E5_rodata, global
.hidden gap_03_000007E5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000007E5_rodata

# .rodata:0x520 | 0x7E8 | size: 0xD
.obj str_kpa_stg1_009_kpa_00001c78, local
	.string "kpa_stg1_009"
.endobj str_kpa_stg1_009_kpa_00001c78

# .rodata:0x52D | 0x7F5 | size: 0x3
.obj gap_03_000007F5_rodata, global
.hidden gap_03_000007F5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000007F5_rodata

# .rodata:0x530 | 0x7F8 | size: 0xD
.obj str_kpa_stg1_010_kpa_00001c88, local
	.string "kpa_stg1_010"
.endobj str_kpa_stg1_010_kpa_00001c88

# .rodata:0x53D | 0x805 | size: 0x3
.obj gap_03_00000805_rodata, global
.hidden gap_03_00000805_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000805_rodata

# .rodata:0x540 | 0x808 | size: 0xD
.obj str_kpa_stg1_011_kpa_00001c98, local
	.string "kpa_stg1_011"
.endobj str_kpa_stg1_011_kpa_00001c98

# .rodata:0x54D | 0x815 | size: 0x3
.obj gap_03_00000815_rodata, global
.hidden gap_03_00000815_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000815_rodata

# .rodata:0x550 | 0x818 | size: 0xD
.obj str_kpa_stg1_012_kpa_00001ca8, local
	.string "kpa_stg1_012"
.endobj str_kpa_stg1_012_kpa_00001ca8

# .rodata:0x55D | 0x825 | size: 0x3
.obj gap_03_00000825_rodata, global
.hidden gap_03_00000825_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000825_rodata

# .rodata:0x560 | 0x828 | size: 0x8
.obj str_KPA_S_7_kpa_00001cb8, local
	.string "KPA_S_7"
.endobj str_KPA_S_7_kpa_00001cb8

# .rodata:0x568 | 0x830 | size: 0x8
.obj str_KPA_T_7_kpa_00001cc0, local
	.string "KPA_T_7"
.endobj str_KPA_T_7_kpa_00001cc0

# .rodata:0x570 | 0x838 | size: 0xD
.obj str_kpa_stg1_013_kpa_00001cc8, local
	.string "kpa_stg1_013"
.endobj str_kpa_stg1_013_kpa_00001cc8

# .rodata:0x57D | 0x845 | size: 0x3
.obj gap_03_00000845_rodata, global
.hidden gap_03_00000845_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000845_rodata

# .rodata:0x580 | 0x848 | size: 0xD
.obj str_kpa_stg1_015_kpa_00001cd8, local
	.string "kpa_stg1_015"
.endobj str_kpa_stg1_015_kpa_00001cd8

# .rodata:0x58D | 0x855 | size: 0x3
.obj gap_03_00000855_rodata, global
.hidden gap_03_00000855_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000855_rodata

# .rodata:0x590 | 0x858 | size: 0xD
.obj str_kpa_stg1_016_kpa_00001ce8, local
	.string "kpa_stg1_016"
.endobj str_kpa_stg1_016_kpa_00001ce8

# .rodata:0x59D | 0x865 | size: 0x3
.obj gap_03_00000865_rodata, global
.hidden gap_03_00000865_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000865_rodata

# .rodata:0x5A0 | 0x868 | size: 0xB
.obj str_ハンマーＣ_kpa_00001cf8, local
	.4byte 0x836E8393
	.4byte 0x837D815B
	.byte 0x82, 0x62, 0x00
.endobj str_ハンマーＣ_kpa_00001cf8

# .rodata:0x5AB | 0x873 | size: 0x1
.obj gap_03_00000873_rodata, global
.hidden gap_03_00000873_rodata
	.byte 0x00
.endobj gap_03_00000873_rodata

# .rodata:0x5AC | 0x874 | size: 0x5
.obj str_fire_kpa_00001d04, local
	.string "fire"
.endobj str_fire_kpa_00001d04

# .rodata:0x5B1 | 0x879 | size: 0x3
.obj gap_03_00000879_rodata, global
.hidden gap_03_00000879_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00000879_rodata

# .rodata:0x5B4 | 0x87C | size: 0x8
.obj str_a_zou_1_kpa_00001d0c, local
	.string "a_zou_1"
.endobj str_a_zou_1_kpa_00001d0c

# .rodata:0x5BC | 0x884 | size: 0x8
.obj str_a_zou_2_kpa_00001d14, local
	.string "a_zou_2"
.endobj str_a_zou_2_kpa_00001d14

# .rodata:0x5C4 | 0x88C | size: 0x8
.obj str_a_zou_3_kpa_00001d1c, local
	.string "a_zou_3"
.endobj str_a_zou_3_kpa_00001d1c

# .rodata:0x5CC | 0x894 | size: 0x7
.obj str_player_kpa_00001d24, local
	.string "player"
.endobj str_player_kpa_00001d24

# .rodata:0x5D3 | 0x89B | size: 0x1
.obj gap_03_0000089B_rodata, global
.hidden gap_03_0000089B_rodata
	.byte 0x00
.endobj gap_03_0000089B_rodata

# .rodata:0x5D4 | 0x89C | size: 0x6
.obj str_hi_PCTd_kpa_00001d2c, local
	.string "hi_%d"
.endobj str_hi_PCTd_kpa_00001d2c
	.2byte 0x0000

# .rodata:0x5DC | 0x8A4 | size: 0x4
.obj float_deg2rad_kpa_00001d34, local
	.float 0.017453292
.endobj float_deg2rad_kpa_00001d34

# .rodata:0x5E0 | 0x8A8 | size: 0x4
.obj zero_kpa_00001d38, local
	.float 0
.endobj zero_kpa_00001d38

# .rodata:0x5E4 | 0x8AC | size: 0x4
.obj gap_03_000008AC_rodata, global
.hidden gap_03_000008AC_rodata
	.4byte 0x00000000
.endobj gap_03_000008AC_rodata

# 0x00001F38..0x00005108 | size: 0x31D0
.data
.balign 8

# .data:0x0 | 0x1F38 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x1F40 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x1F44 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x1F48 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x1F4C | size: 0x4
.obj gap_04_00001F4C_data, global
.hidden gap_04_00001F4C_data
	.4byte 0x00000000
.endobj gap_04_00001F4C_data

# .data:0x18 | 0x1F50 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x1F58 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x1F5C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x1F60 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x1F68 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x1F6C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x1F70 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x1F74 | size: 0x4
.obj gap_04_00001F74_data, global
.hidden gap_04_00001F74_data
	.4byte 0x00000000
.endobj gap_04_00001F74_data

# .data:0x40 | 0x1F78 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x1F80 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x1F84 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x1F88 | size: 0x36C
.obj kpa_01_door_open, local
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_トゲノコＡ_kpa_00001758
	.4byte 0x0000010E
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_トゲノコＡ_kpa_00001758
	.4byte 0xFFFFFD27
	.4byte 0xFFFFFFFB
	.4byte 0x000003E8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_トゲノコＢ_kpa_00001764
	.4byte 0x0000010E
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_トゲノコＢ_kpa_00001764
	.4byte 0xFFFFFD27
	.4byte 0x00000005
	.4byte 0x000003E8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFD050F81
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_door_kpa_00001770
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_DOOR_OPEN_CASTLE_kpa_00001778
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x000007D0
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7CB8
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFD050F81
	.4byte 0xFE363C81
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFD050F81
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00020034
	.4byte 0xFE363C82
	.4byte 0xFD050F80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_door_1_kpa_00001790
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C82
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_door_2_kpa_00001798
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_トゲノコＡ_kpa_00001758
	.4byte str_W_2_kpa_000017a0
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFD050F81
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00020034
	.4byte 0xFE363C82
	.4byte 0xFD050F80
	.4byte 0x0002003A
	.4byte 0xFE363C82
	.4byte 0xF24ADE80
	.4byte 0x0008005B
	.4byte get_togenoko_pos
	.4byte 0xF23EC280
	.4byte 0xF249B280
	.4byte 0xF23EC280
	.4byte 0xF24A5C80
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_トゲノコＡ_kpa_00001758
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0xFE363C84
	.4byte 0x0002001D
	.4byte 0xFE363C82
	.4byte 0x0000005A
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_トゲノコＡ_kpa_00001758
	.4byte 0x0000005A
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_npc_set_stop_anim
	.4byte str_トゲノコＡ_kpa_00001758
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_トゲノコＢ_kpa_00001764
	.4byte str_W_2_kpa_000017a0
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFD050F81
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00020034
	.4byte 0xFE363C85
	.4byte 0xFD050F80
	.4byte 0x0002003A
	.4byte 0xFE363C85
	.4byte 0xF24ADE80
	.4byte 0x0002003C
	.4byte 0xFE363C85
	.4byte 0xF24A7680
	.4byte 0x0008005B
	.4byte get_togenoko_pos
	.4byte 0xF23EC280
	.4byte 0xF24B4280
	.4byte 0xF23EC280
	.4byte 0xF24A9880
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_トゲノコＢ_kpa_00001764
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0xFE363C87
	.4byte 0x0002001C
	.4byte 0xFE363C85
	.4byte 0xFFFFFFA6
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_トゲノコＢ_kpa_00001764
	.4byte 0x0000005A
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_npc_set_stop_anim
	.4byte str_トゲノコＢ_kpa_00001764
	.4byte 0x0000006D
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFD050F81
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kpa_01_door_open

# .data:0x3BC | 0x22F4 | size: 0x3B4
.obj kpa_01_door_close, local
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFD050F81
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000002
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0x000007D0
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7CB8
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFD050F81
	.4byte 0xFE363C81
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFD050F81
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00020034
	.4byte 0xFE363C82
	.4byte 0xFD050F80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_door_1_kpa_00001790
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C82
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_door_2_kpa_00001798
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_door_1_kpa_00001790
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_door_2_kpa_00001798
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_トゲノコＡ_kpa_00001758
	.4byte str_W_3_kpa_000017a4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFD050F81
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00020034
	.4byte 0xFE363C82
	.4byte 0xFD050F80
	.4byte 0x0002003A
	.4byte 0xFE363C82
	.4byte 0xF24ADE80
	.4byte 0x0008005B
	.4byte get_togenoko_pos
	.4byte 0xF23EC280
	.4byte 0xF249B280
	.4byte 0xF23EC280
	.4byte 0xF24A5C80
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_トゲノコＡ_kpa_00001758
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0xFE363C84
	.4byte 0x0002001C
	.4byte 0xFE363C82
	.4byte 0x0000005A
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_トゲノコＡ_kpa_00001758
	.4byte 0x0000010E
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_npc_set_stop_anim
	.4byte str_トゲノコＡ_kpa_00001758
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_トゲノコＢ_kpa_00001764
	.4byte str_W_3_kpa_000017a4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFD050F81
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00020034
	.4byte 0xFE363C85
	.4byte 0xFD050F80
	.4byte 0x0002003A
	.4byte 0xFE363C85
	.4byte 0xF24ADE80
	.4byte 0x0002003C
	.4byte 0xFE363C85
	.4byte 0xF24A7680
	.4byte 0x0008005B
	.4byte get_togenoko_pos
	.4byte 0xF23EC280
	.4byte 0xF24B4280
	.4byte 0xF23EC280
	.4byte 0xF24A9880
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_トゲノコＢ_kpa_00001764
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0xFE363C87
	.4byte 0x0002001D
	.4byte 0xFE363C85
	.4byte 0xFFFFFFA6
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_トゲノコＢ_kpa_00001764
	.4byte 0x0000010E
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_npc_set_walk_anim
	.4byte str_トゲノコＢ_kpa_00001764
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_door_kpa_00001770
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_DOOR_SHUT_CASTLE_kpa_000017a8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xFD050F81
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_トゲノコＡ_kpa_00001758
	.4byte 0x0000005A
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_トゲノコＡ_kpa_00001758
	.4byte 0xFFFFFD26
	.4byte 0xFFFFFFC4
	.4byte 0x000003E8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_トゲノコＢ_kpa_00001764
	.4byte 0x0000005A
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_トゲノコＢ_kpa_00001764
	.4byte 0xFFFFFD26
	.4byte 0x0000003C
	.4byte 0x000003E8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kpa_01_door_close

# .data:0x770 | 0x26A8 | size: 0x364
.obj kpa_01_touzyo_evt, local
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STGK_CASTLE1_kpa_000017c0
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000200
	.4byte 0x0002005B
	.4byte evt_snd_set_rev_mode
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_kill_party
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFCD6
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_dispdir
	.4byte 0x000000B4
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000026E
	.4byte 0x000000AC
	.4byte 0x00000222
	.4byte 0x0000026E
	.4byte 0x0000004D
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFD8A
	.4byte 0x000000AC
	.4byte 0x00000222
	.4byte 0xFFFFFD8A
	.4byte 0x0000004D
	.4byte 0x00000005
	.4byte 0x00002328
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00002328
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFFFFF9C0
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_KUPPA_MOVE1_kpa_000017d4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_KUPPA_MOVE2_kpa_000017e4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_KUPPA_MOVE1_kpa_000017d4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_KUPPA_MOVE2_kpa_000017e4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte zero_kpa_000017f4
	.4byte str_トゲノコＡ_kpa_00001758
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
	.4byte zero_kpa_000017f4
	.4byte str_トゲノコＢ_kpa_00001764
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
	.4byte 0x0001005E
	.4byte kpa_01_door_open
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFE2A
	.4byte 0x0000003C
	.4byte 0x0000010D
	.4byte 0xFFFFFD55
	.4byte 0x00000041
	.4byte 0x00000018
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFE52
	.4byte 0x0000003C
	.4byte 0x000000EA
	.4byte 0xFFFFFD7C
	.4byte 0x00000041
	.4byte 0xFFFFFFF5
	.4byte 0x00000AF0
	.4byte 0x0000000B
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos
	.4byte 0xFFFFFD76
	.4byte 0x00000000
	.4byte 0x00000AF0
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_KOOPA_LAUG_kpa_000017f8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_kpa_00001814
	.4byte str_KPA_S_1_kpa_0000181c
	.4byte str_KPA_T_1_kpa_00001824
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg1_000_kpa_0000182c
	.4byte 0x00000000
	.4byte str_mario_kpa_00001814
	.4byte 0x0001005E
	.4byte kpa_01_door_close
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg1_001_kpa_0000183c
	.4byte 0x00000000
	.4byte str_トゲノコＡ_kpa_00001758
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000003C
	.4byte 0x0001005B
	.4byte N_evt_bero_set_mario_bottomless_respawn_pos_to_current_mario_pos
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_snd_bgm_scope
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kpa_01_touzyo_evt

# .data:0xAD4 | 0x2A0C | size: 0x1B04
.obj kpa_01_syuppatu_evt, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_door_kpa_00001770
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_DOOR_OPEN_CASTLE_kpa_00001778
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_door_1_kpa_00001790
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_door_2_kpa_00001798
	.4byte 0x00000000
	.4byte 0xFFFFFF9C
	.4byte 0x00000000
	.4byte 0x0008005B
	.4byte get_togenoko_pos
	.4byte 0xF23EC280
	.4byte 0xF249B280
	.4byte 0xF23EC280
	.4byte 0xF24A5C80
	.4byte 0x0000007D
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_トゲノコＡ_kpa_00001758
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C81
	.4byte 0x0008005B
	.4byte get_togenoko_pos
	.4byte 0xF23EC280
	.4byte 0xF24B4280
	.4byte 0xF23EC280
	.4byte 0xF24A9880
	.4byte 0xFFFFFF83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_トゲノコＢ_kpa_00001764
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C81
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_KOOPA_SURP_kpa_0000184c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000000
	.4byte zero_kpa_000017f4
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
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ババ_kpa_0000186c
	.4byte 0xFFFFFD08
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ババ_kpa_0000186c
	.4byte 0x0000005A
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFD8A
	.4byte 0x00000086
	.4byte 0x000001AC
	.4byte 0xFFFFFD8A
	.4byte 0x00000039
	.4byte 0xFFFFFFF3
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ババ_kpa_0000186c
	.4byte 0xFFFFFD76
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24B6A80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg1_021_kpa_00001874
	.4byte 0x00000000
	.4byte str_ババ_kpa_0000186c
	.4byte 0x0001005C
	.4byte kpa_01_door_close
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ババ_kpa_0000186c
	.4byte 0xFFFFFE20
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24BE280
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000271
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ハンマーＥ_kpa_00001884
	.4byte 0x0000005A
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ハンマーＤ_kpa_00001890
	.4byte 0x0000005A
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000022B
	.4byte 0x000000B4
	.4byte 0x00000205
	.4byte 0x0000022B
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_ババ_kpa_0000186c
	.4byte str_カメックババ（息切れ）_kpa_0000189c
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ババ_kpa_0000186c
	.4byte 0x0000015E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ババ_kpa_0000186c
	.4byte 0x000001CC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24AF280
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg1_021_1_kpa_000018b4
	.4byte 0x00000000
	.4byte str_ババ_kpa_0000186c
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_ババ_kpa_0000186c
	.4byte str_カメックババ（地上）_kpa_000018c4
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_npc_set_stay_anim
	.4byte str_ババ_kpa_0000186c
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000001D6
	.4byte 0x00000055
	.4byte 0x00000137
	.4byte 0x000001D6
	.4byte 0x0000002C
	.4byte 0xFFFFFFF2
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg1_022_kpa_000018dc
	.4byte 0x00000000
	.4byte str_ババ_kpa_0000186c
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000258
	.4byte 0x0000009E
	.4byte 0x00000152
	.4byte 0x00000258
	.4byte 0x00000063
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_kpa_00001814
	.4byte str_KPA_S_1_kpa_0000181c
	.4byte str_KPA_T_1_kpa_00001824
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg1_023_kpa_000018ec
	.4byte 0x00000000
	.4byte str_mario_kpa_00001814
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000022B
	.4byte 0x000000B4
	.4byte 0x00000205
	.4byte 0x0000022B
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg1_025_kpa_000018fc
	.4byte 0x00000000
	.4byte str_ババ_kpa_0000186c
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_kpa_00001814
	.4byte str_KPA_S_4_kpa_0000190c
	.4byte str_KPA_T_3_kpa_00001914
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg1_026_kpa_0000191c
	.4byte 0x00000000
	.4byte str_mario_kpa_00001814
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000001D6
	.4byte 0x00000055
	.4byte 0x00000137
	.4byte 0x000001D6
	.4byte 0x0000002C
	.4byte 0xFFFFFFF2
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg1_027_kpa_0000192c
	.4byte 0x00000000
	.4byte str_ババ_kpa_0000186c
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000258
	.4byte 0x0000009E
	.4byte 0x00000152
	.4byte 0x00000258
	.4byte 0x00000063
	.4byte 0x00000014
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_kpa_00001814
	.4byte str_KPA_S_1_kpa_0000181c
	.4byte str_KPA_T_1_kpa_00001824
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg1_028_kpa_0000193c
	.4byte 0x00000000
	.4byte str_mario_kpa_00001814
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000022B
	.4byte 0x000000B4
	.4byte 0x00000205
	.4byte 0x0000022B
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg1_029_kpa_0000194c
	.4byte 0x00000000
	.4byte str_ババ_kpa_0000186c
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_kpa_00001814
	.4byte str_KPA_S_1_kpa_0000181c
	.4byte str_KPA_T_1_kpa_00001824
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg1_030_kpa_0000195c
	.4byte 0x00000000
	.4byte str_mario_kpa_00001814
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg1_031_kpa_0000196c
	.4byte 0x00000000
	.4byte str_ババ_kpa_0000186c
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_kpa_stg1_032_kpa_0000197c
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_kpa_00001814
	.4byte str_KPA_S_1_kpa_0000181c
	.4byte str_KPA_T_1_kpa_00001824
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg1_033_kpa_0000198c
	.4byte 0x00000000
	.4byte str_mario_kpa_00001814
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_kpa_00001814
	.4byte str_KPA_S_1_kpa_0000181c
	.4byte str_KPA_T_1_kpa_00001824
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg1_033_1_kpa_0000199c
	.4byte 0x00000000
	.4byte str_mario_kpa_00001814
	.4byte 0x00000031
	.4byte 0x00020032
	.4byte 0xF9718881
	.4byte 0x00000000
	.4byte 0x0001006C
	.4byte 0xFE363C80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xF9718881
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ババ_kpa_0000186c
	.4byte str_A_2A_kpa_000019ac
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_ババ_kpa_0000186c
	.4byte str_U_1_kpa_000019b4
	.4byte str_T_5_kpa_000019b8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg1_034_kpa_000019bc
	.4byte kpa_stg1_034_cb
	.4byte str_ババ_kpa_0000186c
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_ババ_kpa_0000186c
	.4byte str_S_1_kpa_000019cc
	.4byte str_T_1_kpa_000019d0
	.4byte 0x0001005F
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xF9718881
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A85
	.4byte 0xF24A7A85
	.4byte 0x00000320
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001C2
	.4byte 0x0000006E
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ババ_kpa_0000186c
	.4byte str_D_1_kpa_000019d4
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ババ_kpa_0000186c
	.4byte str_S_1_kpa_000019cc
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_トゲノコＣ_kpa_000019d8
	.4byte str_O_1_kpa_000019e4
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_トゲノコＣ_kpa_000019d8
	.4byte str_S_1_kpa_000019cc
	.4byte 0x00000070
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_トゲノコＤ_kpa_000019e8
	.4byte str_O_1_kpa_000019e4
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_トゲノコＤ_kpa_000019e8
	.4byte str_S_1_kpa_000019cc
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_KOOPA_ANGR_kpa_000019f4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_kpa_00001814
	.4byte str_KPA_S_4_kpa_0000190c
	.4byte str_KPA_T_3_kpa_00001914
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg1_035_kpa_00001a10
	.4byte 0x00000000
	.4byte str_mario_kpa_00001814
	.4byte 0x00020032
	.4byte 0xF9718881
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xF9718881
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x00000096
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A80
	.4byte 0xF24A7A85
	.4byte 0x000003E8
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg1_036_kpa_00001a20
	.4byte kpa_stg1_036_cb
	.4byte str_mario_kpa_00001814
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_KOOPA_VEXA_kpa_00001a30
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte kpa_chg_pose
	.4byte str_KPA_I_2_kpa_00001a50
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0002005D
	.4byte evt_sub_stopwatch
	.4byte 0xFE363C80
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_get_stopwatch
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0002001D
	.4byte 0xFE363C81
	.4byte 0x00007530
	.4byte 0x00000007
	.4byte 0x00000021
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
	.4byte str_SFX_KUPPA_ANGRY1_kpa_00001a58
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_KUPPA_ANGRY2_kpa_00001a6c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_ババ_kpa_0000186c
	.4byte str_P_1_kpa_00001a80
	.4byte str_T_6_kpa_00001a84
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ババ_kpa_0000186c
	.4byte str_P_1_kpa_00001a80
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000001D6
	.4byte 0x00000055
	.4byte 0x00000137
	.4byte 0x000001D6
	.4byte 0x0000002C
	.4byte 0xFFFFFFF2
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg1_037_kpa_00001a88
	.4byte 0x00000000
	.4byte str_ババ_kpa_0000186c
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_ババ_kpa_0000186c
	.4byte str_S_1_kpa_000019cc
	.4byte str_T_1_kpa_000019d0
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_カメック_kpa_00001a98
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0xFFFFFFFB
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_カメック_kpa_00001a98
	.4byte 0x000001A9
	.4byte 0xFFFFFFFB
	.4byte 0x00000000
	.4byte 0xF24BE280
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg1_038_kpa_00001aa4
	.4byte 0x00000000
	.4byte str_ババ_kpa_0000186c
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ババ_kpa_0000186c
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg1_039_kpa_00001ab4
	.4byte 0x00000000
	.4byte str_カメック_kpa_00001a98
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg1_040_kpa_00001ac4
	.4byte 0x00000000
	.4byte str_ババ_kpa_0000186c
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000022B
	.4byte 0x000000B4
	.4byte 0x000001F5
	.4byte 0x0000022B
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0000006B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_カメック_kpa_00001a98
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24BE280
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_カメック_kpa_00001a98
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ババ_kpa_0000186c
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg1_041_kpa_00001ad4
	.4byte 0x00000000
	.4byte str_ババ_kpa_0000186c
	.4byte 0x0002005B
	.4byte kpa_chg_pose
	.4byte str_KPA_S_1_kpa_0000181c
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000258
	.4byte 0x0000009E
	.4byte 0x00000152
	.4byte 0x00000258
	.4byte 0x00000063
	.4byte 0x00000014
	.4byte 0x00000258
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_kpa_00001814
	.4byte str_KPA_S_4_kpa_0000190c
	.4byte str_KPA_T_3_kpa_00001914
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg1_042_kpa_00001ae4
	.4byte 0x00000000
	.4byte str_mario_kpa_00001814
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000022B
	.4byte 0x000000B4
	.4byte 0x00000205
	.4byte 0x0000022B
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg1_043_kpa_00001af4
	.4byte 0x00000000
	.4byte str_ババ_kpa_0000186c
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_kpa_00001814
	.4byte str_KPA_S_4_kpa_0000190c
	.4byte str_KPA_T_3_kpa_00001914
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg1_044_kpa_00001b04
	.4byte 0x00000000
	.4byte str_mario_kpa_00001814
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000001AE
	.4byte 0x000000B4
	.4byte 0x00000205
	.4byte 0x000001AE
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x000005DC
	.4byte 0x0000000B
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ババ_kpa_0000186c
	.4byte 0x00000020
	.4byte 0x0001000A
	.4byte 0x00000384
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ババ_kpa_0000186c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_ババ_kpa_0000186c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000C8
	.4byte 0x00000014
	.4byte 0x0001000A
	.4byte 0x0000044C
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_ババ_kpa_0000186c
	.4byte 0x00000020
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_ババ_kpa_0000186c
	.4byte 0x00000145
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ババ_kpa_0000186c
	.4byte str_P_1_kpa_00001a80
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ババ_kpa_0000186c
	.4byte 0x0000005A
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x00000226
	.4byte 0x00000000
	.4byte 0x00000078
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x00000203
	.4byte 0x00000000
	.4byte 0x00000078
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x000001CC
	.4byte 0x00000000
	.4byte 0x00000078
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x00000082
	.4byte 0x00000000
	.4byte 0x00000078
	.4byte 0x0001005B
	.4byte evt_mario_wait_move_end
	.4byte 0x00010003
	.4byte 0x00000064
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_飛クッパ_kpa_00001b14
	.4byte 0x000000C8
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_飛クッパ_kpa_00001b14
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000229
	.4byte 0x000000B1
	.4byte 0x000001F5
	.4byte 0x00000229
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x000005DC
	.4byte 0x0000000B
	.4byte 0x0000006D
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xF24A7A80
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000168
	.4byte 0x000007D0
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0004005B
	.4byte evt_sub_get_sincos
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_KUPPA_AIRSHIP_MO_kpa_00001b20
	.4byte 0x000000C8
	.4byte 0x00000032
	.4byte 0x00000000
	.4byte 0xFE363C89
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x000000C8
	.4byte 0x00000271
	.4byte 0x000007D0
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x00020034
	.4byte 0xFE363C82
	.4byte 0xFD050F80
	.4byte 0x0002003C
	.4byte 0xFE363C82
	.4byte 0xF24ACA80
	.4byte 0x0002003A
	.4byte 0xFE363C82
	.4byte 0xF24B4280
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_飛クッパ_kpa_00001b14
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_snd_sfx_pos
	.4byte 0xFE363C89
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C89
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_飛クッパ_kpa_00001b14
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x00020032
	.4byte 0xFD050F80
	.4byte 0x00000032
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_飛クッパ_kpa_00001b14
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_KUPPA_AIRSHIP_MO_kpa_00001b20
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x000003E8
	.4byte 0x000005DC
	.4byte 0x00010003
	.4byte 0x00000002
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF25A1A80
	.4byte 0x00020034
	.4byte 0xFE363C85
	.4byte 0xF2531A80
	.4byte 0x0002003B
	.4byte 0xFE363C85
	.4byte 0xFE363C82
	.4byte 0x0002003C
	.4byte 0xFE363C85
	.4byte 0xFE363C80
	.4byte 0x0002003A
	.4byte 0xFE363C85
	.4byte 0xFE363C82
	.4byte 0x00020034
	.4byte 0xFE363C86
	.4byte 0xF24C4680
	.4byte 0x0002003B
	.4byte 0xFE363C86
	.4byte 0xFE363C83
	.4byte 0x0002003C
	.4byte 0xFE363C86
	.4byte 0xFE363C80
	.4byte 0x0002003A
	.4byte 0xFE363C86
	.4byte 0xFE363C83
	.4byte 0x00020034
	.4byte 0xFE363C87
	.4byte 0xF2500680
	.4byte 0x0002003B
	.4byte 0xFE363C87
	.4byte 0xFE363C84
	.4byte 0x0002003C
	.4byte 0xFE363C87
	.4byte 0xFE363C80
	.4byte 0x0002003A
	.4byte 0xFE363C87
	.4byte 0xFE363C84
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_飛クッパ_kpa_00001b14
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x0005005B
	.4byte evt_snd_sfx_pos
	.4byte 0xFE363C89
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C89
	.4byte 0x0002005B
	.4byte evt_paper_entry
	.4byte str_OFF_d_yabu_hantai_kpa_00001b38
	.4byte 0x0002005B
	.4byte evt_img_entry
	.4byte str_img_kpa_00001b4c
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_img_kpa_00001b4c
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_img_set_paper
	.4byte str_img_kpa_00001b4c
	.4byte str_OFF_d_yabu_hantai_kpa_00001b38
	.4byte 0x0002005B
	.4byte evt_offscreen_entry
	.4byte str_ofs_kpa_00001b50
	.4byte 0x0004005B
	.4byte evt_mapobj_set_offscreen
	.4byte 0x00000001
	.4byte str_S_kpa_00001b54
	.4byte str_ofs_kpa_00001b50
	.4byte 0x0009005B
	.4byte evt_img_alloc_capture
	.4byte str_img_kpa_00001b4c
	.4byte 0x00000000
	.4byte str_ofs_kpa_00001b50
	.4byte 0x00000001
	.4byte 0x0000007A
	.4byte 0x00000024
	.4byte 0x0000016C
	.4byte 0x00000120
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_img_set_position
	.4byte str_img_kpa_00001b4c
	.4byte 0x00000000
	.4byte 0xFFFFFF04
	.4byte 0x0005005B
	.4byte evt_img_set_virtual_point
	.4byte str_img_kpa_00001b4c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFBA
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000006A4
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_img_kpa_00001b4c
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_img_set_paper_anim
	.4byte str_img_kpa_00001b4c
	.4byte str_A_1_kpa_00001b58
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_OFF_KUPPA_WALL_B_kpa_00001b5c
	.4byte 0x00000000
	.4byte 0x0000006E
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A80
	.4byte 0xF24A7AB3
	.4byte 0x000001F4
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000006
	.4byte 0xF24A7A80
	.4byte 0xF24A7AB3
	.4byte 0x000001F4
	.4byte 0x00000070
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0000006E
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_トゲノコＣ_kpa_000019d8
	.4byte str_O_1_kpa_000019e4
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_トゲノコＣ_kpa_000019d8
	.4byte str_S_1_kpa_000019cc
	.4byte 0x00000070
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_トゲノコＤ_kpa_000019e8
	.4byte str_O_1_kpa_000019e4
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_トゲノコＤ_kpa_000019e8
	.4byte str_S_1_kpa_000019cc
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0000006D
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xF24A7A80
	.4byte 0x00020034
	.4byte 0xFD050F81
	.4byte 0xF24A7A80
	.4byte 0x00020034
	.4byte 0xFD050F82
	.4byte 0xF24A7A80
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_飛クッパ_kpa_00001b14
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000514
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0x000003E8
	.4byte 0x00000064
	.4byte 0x000003E8
	.4byte 0x00010003
	.4byte 0x00000003
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF25A1A80
	.4byte 0x00020034
	.4byte 0xFE363C82
	.4byte 0xF24B1080
	.4byte 0x00020034
	.4byte 0xFE363C83
	.4byte 0xF24A7E80
	.4byte 0x0002003B
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00020034
	.4byte 0xFD050F81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_npc_set_scale
	.4byte str_飛クッパ_kpa_00001b14
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000003
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x000000B4
	.4byte 0x000001AE
	.4byte 0x00000CE4
	.4byte 0x00010003
	.4byte 0x00000004
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0004005B
	.4byte evt_sub_get_sincos
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000004
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x000003E8
	.4byte 0x000007D0
	.4byte 0x00010003
	.4byte 0x00000005
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF25A1A80
	.4byte 0x00020034
	.4byte 0xFD050F82
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000005
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_飛クッパ_kpa_00001b14
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_KUPPA_AIRSHIP_MO_kpa_00001b20
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8F
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xFD050F82
	.4byte 0x00020034
	.4byte 0xFE363C85
	.4byte 0xF2531280
	.4byte 0x0002003B
	.4byte 0xFE363C85
	.4byte 0xFE363C82
	.4byte 0x0002003C
	.4byte 0xFE363C85
	.4byte 0xFE363C80
	.4byte 0x0002003A
	.4byte 0xFE363C85
	.4byte 0xFE363C82
	.4byte 0x00020034
	.4byte 0xFE363C86
	.4byte 0xF2491280
	.4byte 0x0002003B
	.4byte 0xFE363C86
	.4byte 0xFE363C84
	.4byte 0x0002003C
	.4byte 0xFE363C86
	.4byte 0xFE363C80
	.4byte 0x0002003A
	.4byte 0xFE363C86
	.4byte 0xFE363C84
	.4byte 0x00020034
	.4byte 0xFE363C83
	.4byte 0xFD050F80
	.4byte 0x0002003C
	.4byte 0xFE363C83
	.4byte 0xF24BE280
	.4byte 0x0002003A
	.4byte 0xFE363C83
	.4byte 0xF24C4680
	.4byte 0x0002003A
	.4byte 0xFE363C83
	.4byte 0xFD050F81
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_飛クッパ_kpa_00001b14
	.4byte 0xFE363C85
	.4byte 0xFE363C83
	.4byte 0xFE363C86
	.4byte 0x0005005B
	.4byte evt_snd_sfx_pos
	.4byte 0xFE363C8F
	.4byte 0xFE363C85
	.4byte 0xFE363C83
	.4byte 0xFE363C86
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_飛クッパ_kpa_00001b14
	.4byte 0x00000080
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_ババ_kpa_0000186c
	.4byte str_カメックババ_kpa_00001b78
	.4byte 0x0004005B
	.4byte evt_sub_get_sincos
	.4byte 0x00000084
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0002003C
	.4byte 0xFE363C83
	.4byte 0xF24B6A80
	.4byte 0x0002003A
	.4byte 0xFE363C83
	.4byte 0xF24BE280
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ババ_kpa_0000186c
	.4byte 0x0000012C
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ババ_kpa_0000186c
	.4byte 0x0000005A
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xF24A7A80
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0x000000B4
	.4byte 0x0000021C
	.4byte 0x000009C4
	.4byte 0x00010003
	.4byte 0x00000006
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0004005B
	.4byte evt_sub_get_sincos
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000006
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_npc_kamek_kemuri2
	.4byte str_ババ_kpa_0000186c
	.4byte 0x000009C4
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ババ_kpa_0000186c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_KUPPA_KAMEBABA_F_kpa_00001b88
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x0000012C
	.4byte 0x000001F4
	.4byte 0x000009C4
	.4byte 0x00010003
	.4byte 0x00000007
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x00020034
	.4byte 0xFE363C82
	.4byte 0xFD050F80
	.4byte 0x0002003C
	.4byte 0xFE363C82
	.4byte 0xF24ACA80
	.4byte 0x0002003A
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ババ_kpa_0000186c
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg1_045_kpa_00001ba0
	.4byte 0x00000000
	.4byte str_ババ_kpa_0000186c
	.4byte 0x0004005B
	.4byte evt_sub_get_sincos
	.4byte 0x00000084
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xFE363C81
	.4byte 0x00020034
	.4byte 0xFD050F81
	.4byte 0xF24A7A80
	.4byte 0x00020034
	.4byte 0xFD050F82
	.4byte 0xF24A7A80
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x000003E8
	.4byte 0x0000012C
	.4byte 0x00000320
	.4byte 0x00010003
	.4byte 0x00000008
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF25A1A80
	.4byte 0x00020034
	.4byte 0xFE363C82
	.4byte 0xF24ACA80
	.4byte 0x00020034
	.4byte 0xFE363C83
	.4byte 0xF24A7E80
	.4byte 0x0002003B
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00020034
	.4byte 0xFD050F82
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_npc_set_scale
	.4byte str_ババ_kpa_0000186c
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000008
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000084
	.4byte 0x00000168
	.4byte 0x000007D0
	.4byte 0x00010003
	.4byte 0x00000009
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0004005B
	.4byte evt_sub_get_sincos
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xFE363C83
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000009
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0xFFFFFFA6
	.4byte 0x000006A4
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x00020034
	.4byte 0xFD050F81
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_npc_kamek_kemuri2
	.4byte str_ババ_kpa_0000186c
	.4byte 0x000005DC
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ババ_kpa_0000186c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_KUPPA_KAMEBABA_F_kpa_00001b88
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000004
	.4byte 0x000001F4
	.4byte 0x00000230
	.4byte 0x000007D0
	.4byte 0x00010003
	.4byte 0x0000000B
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x00020034
	.4byte 0xFE363C82
	.4byte 0xFD050F80
	.4byte 0x0002003C
	.4byte 0xFE363C82
	.4byte 0xF24B6A80
	.4byte 0x0002003A
	.4byte 0xFE363C82
	.4byte 0xF24BE280
	.4byte 0x0002003A
	.4byte 0xFE363C82
	.4byte 0xFD050F82
	.4byte 0x00020034
	.4byte 0xFE363C83
	.4byte 0xFD050F81
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ババ_kpa_0000186c
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000000B
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ババ_kpa_0000186c
	.4byte 0x00000080
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_bero_mapchange
	.4byte str_kpa_00_kpa_00001bb0
	.4byte zero_kpa_000017f4
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kpa_01_syuppatu_evt

# .data:0x25D8 | 0x4510 | size: 0x5C
.obj kpa_01_pos_check, local
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000271
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001005E
	.4byte kpa_01_syuppatu_evt
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kpa_01_pos_check

# .data:0x2634 | 0x456C | size: 0x4C
.obj douzou_1_touch_evt, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_kpa_00001814
	.4byte str_KPA_S_1_kpa_0000181c
	.4byte str_KPA_T_1_kpa_00001824
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg1_014_kpa_00001bb8
	.4byte 0x00000000
	.4byte str_mario_kpa_00001814
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj douzou_1_touch_evt

# .data:0x2680 | 0x45B8 | size: 0x4C
.obj douzou_2_touch_evt, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_kpa_00001814
	.4byte str_KPA_S_1_kpa_0000181c
	.4byte str_KPA_T_1_kpa_00001824
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg1_014_1_kpa_00001bc8
	.4byte 0x00000000
	.4byte str_mario_kpa_00001814
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj douzou_2_touch_evt

# .data:0x26CC | 0x4604 | size: 0xAC
.obj douzou_3_touch_evt, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF9718881
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xF9718881
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000201
	.4byte str_BGM_FF_GET_ITEM1_kpa_00001bd8
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_kpa_00001814
	.4byte str_KPA_S_1_kpa_0000181c
	.4byte str_KPA_T_1_kpa_00001824
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg1_014_2_kpa_00001bec
	.4byte kpa_stg1_014_2_cb
	.4byte str_mario_kpa_00001814
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000201
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj douzou_3_touch_evt

# .data:0x2778 | 0x46B0 | size: 0x20
.obj togenoko_A_talk_evt, local
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg1_002_kpa_00001bfc
	.4byte 0x00000000
	.4byte str_me_kpa_00001c0c
	.4byte 0x00000002
	.4byte 0x00000001
.endobj togenoko_A_talk_evt

# .data:0x2798 | 0x46D0 | size: 0x20
.obj togenoko_B_talk_evt, local
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg1_004_kpa_00001c10
	.4byte 0x00000000
	.4byte str_me_kpa_00001c0c
	.4byte 0x00000002
	.4byte 0x00000001
.endobj togenoko_B_talk_evt

# .data:0x27B8 | 0x46F0 | size: 0x38
.obj togenoko_C_init_evt, local
	.4byte 0x0001005E
	.4byte npc_init_evt
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_me_kpa_00001c0c
	.4byte 0x00020010
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_me_kpa_00001c0c
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000001
.endobj togenoko_C_init_evt

# .data:0x27F0 | 0x4728 | size: 0x34
.obj hammer_AB_init_evt, local
	.4byte 0x0001005E
	.4byte npc_init_evt
	.4byte 0x00020018
	.4byte 0xF8406E27
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_me_kpa_00001c0c
	.4byte 0x01000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hammer_AB_init_evt

# .data:0x2824 | 0x475C | size: 0x1BC
.obj hammer_AB_talk_evt, local
	.4byte 0x00020018
	.4byte 0xF8406E27
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg1_006_kpa_00001c20
	.4byte 0x00000000
	.4byte str_ハンマーＡ_kpa_00001c30
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg1_007_kpa_00001c3c
	.4byte 0x00000000
	.4byte str_ハンマーＢ_kpa_00001c4c
	.4byte 0x00020032
	.4byte 0xF9718881
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020019
	.4byte 0xF9718881
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_ハンマーＡ_kpa_00001c30
	.4byte str_mario_kpa_00001814
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_npc_wait_pera
	.4byte str_ハンマーＡ_kpa_00001c30
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ハンマーＡ_kpa_00001c30
	.4byte str_BRO_O_1_kpa_00001c58
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ハンマーＡ_kpa_00001c30
	.4byte str_BRO_S_1_kpa_00001c60
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg1_008_kpa_00001c68
	.4byte kpa_stg1_008_cb
	.4byte str_ハンマーＡ_kpa_00001c30
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_kpa_00001814
	.4byte str_KPA_S_1_kpa_0000181c
	.4byte str_KPA_T_1_kpa_00001824
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg1_009_kpa_00001c78
	.4byte 0x00000000
	.4byte str_mario_kpa_00001814
	.4byte 0x00020032
	.4byte 0xF8406E27
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_ハンマーＡ_kpa_00001c30
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_ハンマーＢ_kpa_00001c4c
	.4byte 0x01000000
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_ハンマーＡ_kpa_00001c30
	.4byte str_mario_kpa_00001814
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte str_ハンマーＢ_kpa_00001c4c
	.4byte str_mario_kpa_00001814
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_npc_wait_pera
	.4byte str_ハンマーＡ_kpa_00001c30
	.4byte 0x0002005B
	.4byte evt_npc_wait_pera
	.4byte str_ハンマーＢ_kpa_00001c4c
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg1_010_kpa_00001c88
	.4byte 0x00000000
	.4byte str_ハンマーＡ_kpa_00001c30
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg1_011_kpa_00001c98
	.4byte 0x00000000
	.4byte str_ハンマーＢ_kpa_00001c4c
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hammer_AB_talk_evt

# .data:0x29E0 | 0x4918 | size: 0x4C
.obj hammer_C_talk_evt, local
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg1_012_kpa_00001ca8
	.4byte 0x00000000
	.4byte str_me_kpa_00001c0c
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_kpa_00001814
	.4byte str_KPA_S_7_kpa_00001cb8
	.4byte str_KPA_T_7_kpa_00001cc0
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg1_013_kpa_00001cc8
	.4byte 0x00000000
	.4byte str_mario_kpa_00001814
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hammer_C_talk_evt

# .data:0x2A2C | 0x4964 | size: 0x20
.obj hammer_D_talk_evt, local
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg1_015_kpa_00001cd8
	.4byte 0x00000000
	.4byte str_me_kpa_00001c0c
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hammer_D_talk_evt

# .data:0x2A4C | 0x4984 | size: 0x24
.obj hammer_E_init_evt, local
	.4byte 0x0001005E
	.4byte npc_init_evt
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_me_kpa_00001c0c
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hammer_E_init_evt

# .data:0x2A70 | 0x49A8 | size: 0x20
.obj hammer_E_talk_evt, local
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_kpa_stg1_016_kpa_00001ce8
	.4byte 0x00000000
	.4byte str_me_kpa_00001c0c
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hammer_E_talk_evt

# .data:0x2A90 | 0x49C8 | size: 0x34
.obj baba_init_evt, local
	.4byte 0x0001005E
	.4byte npc_init_evt
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_me_kpa_00001c0c
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_me_kpa_00001c0c
	.4byte str_カメックババ（地上）_kpa_000018c4
	.4byte 0x00000002
	.4byte 0x00000001
.endobj baba_init_evt

# .data:0x2AC4 | 0x49FC | size: 0x24
.obj kamek_init_evt, local
	.4byte 0x0001005E
	.4byte npc_init_evt
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_me_kpa_00001c0c
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000001
.endobj kamek_init_evt

# .data:0x2AE8 | 0x4A20 | size: 0x24
.obj hkoopa_init_evt, local
	.4byte 0x0001005E
	.4byte npc_init_evt
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_me_kpa_00001c0c
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hkoopa_init_evt

# .data:0x2B0C | 0x4A44 | size: 0x4AC
.obj npcEnt, local
	.4byte str_トゲノコＡ_kpa_00001758
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte npc_init_evt
	.4byte 0x00000000
	.4byte togenoko_A_talk_evt
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_トゲノコＢ_kpa_00001764
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte npc_init_evt
	.4byte 0x00000000
	.4byte togenoko_B_talk_evt
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_トゲノコＣ_kpa_000019d8
	.4byte 0x00000000
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
	.4byte str_トゲノコＤ_kpa_000019e8
	.4byte 0x00000000
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
	.4byte str_ハンマーＡ_kpa_00001c30
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte hammer_AB_init_evt
	.4byte 0x00000000
	.4byte hammer_AB_talk_evt
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ハンマーＢ_kpa_00001c4c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte hammer_AB_init_evt
	.4byte 0x00000000
	.4byte hammer_AB_talk_evt
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ハンマーＣ_kpa_00001cf8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte npc_init_evt
	.4byte 0x00000000
	.4byte hammer_C_talk_evt
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ハンマーＤ_kpa_00001890
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte npc_init_evt
	.4byte 0x00000000
	.4byte hammer_D_talk_evt
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ハンマーＥ_kpa_00001884
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte hammer_E_init_evt
	.4byte 0x00000000
	.4byte hammer_E_talk_evt
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ババ_kpa_0000186c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte baba_init_evt
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_カメック_kpa_00001a98
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte kamek_init_evt
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_飛クッパ_kpa_00001b14
	.4byte 0x00000020
	.4byte 0x00000000
	.4byte hkoopa_init_evt
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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

# .data:0x2FB8 | 0x4EF0 | size: 0xB8
.obj shan_init, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x0000000C
	.4byte 0x0003005B
	.4byte make_name
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0002003B
	.4byte 0xFE363C83
	.4byte 0xF24A8480
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_kpa_000017f4
	.4byte str_fire_kpa_00001d04
	.4byte 0x00000006
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xF24A7BB3
	.4byte 0x000003E8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj shan_init

# .data:0x3070 | 0x4FA8 | size: 0x160
.obj kpa_01_init_evt_15_data_4FA8, global
	.4byte 0x0002005B
	.4byte evt_mario_set_mode
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_npc_setup
	.4byte npcEnt
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_a_zou_1_kpa_00001d0c
	.4byte 0x00000000
	.4byte douzou_1_touch_evt
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_a_zou_2_kpa_00001d14
	.4byte 0x00000000
	.4byte douzou_2_touch_evt
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_a_zou_3_kpa_00001d1c
	.4byte 0x00000000
	.4byte douzou_3_touch_evt
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte shan_init
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010024
	.4byte 0x0000003B
	.4byte 0x0001005C
	.4byte kpa_01_touzyo_evt
	.4byte 0x0001005C
	.4byte kpa_01_pos_check
	.4byte 0x00010024
	.4byte 0x0000003C
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00007800
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_player_kpa_00001d24
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFD44
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte kpa_01_pos_check
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x00000271
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0001005C
	.4byte kpa_01_syuppatu_evt
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0x00000000
.endobj kpa_01_init_evt_15_data_4FA8

# 0x00000040..0x00000048 | size: 0x8
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x40 | size: 0x8
.obj name$673, local
	.skip 0x8
.endobj name$673
