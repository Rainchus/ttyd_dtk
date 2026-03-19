.include "macros.inc"
.file "battle_database_muj.o"

# 0x00005E68..0x00006000 | size: 0x198
.text
.balign 4

# .text:0x0 | 0x5E68 | size: 0x198
.fn _wave_offset, local
/* 00005E68 00005F2C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 00005E6C 00005F30  7C 08 02 A6 */	mflr r0
/* 00005E70 00005F34  90 01 00 64 */	stw r0, 0x64(r1)
/* 00005E74 00005F38  BE C1 00 38 */	stmw r22, 0x38(r1)
/* 00005E78 00005F3C  7C 76 1B 78 */	mr r22, r3
/* 00005E7C 00005F40  83 A3 00 18 */	lwz r29, 0x18(r3)
/* 00005E80 00005F44  80 9D 00 00 */	lwz r4, 0x0(r29)
/* 00005E84 00005F48  4B FF AB 25 */	bl evtGetValue
/* 00005E88 00005F4C  83 1D 00 04 */	lwz r24, 0x4(r29)
/* 00005E8C 00005F50  7C 7F 1B 78 */	mr r31, r3
/* 00005E90 00005F54  7E C3 B3 78 */	mr r3, r22
/* 00005E94 00005F58  7F 04 C3 78 */	mr r4, r24
/* 00005E98 00005F5C  4B FF AB 11 */	bl evtGetValue
/* 00005E9C 00005F60  80 9D 00 08 */	lwz r4, 0x8(r29)
/* 00005EA0 00005F64  7C 79 1B 78 */	mr r25, r3
/* 00005EA4 00005F68  7E C3 B3 78 */	mr r3, r22
/* 00005EA8 00005F6C  4B FF AB 01 */	bl evtGetValue
/* 00005EAC 00005F70  80 9D 00 0C */	lwz r4, 0xc(r29)
/* 00005EB0 00005F74  7C 7A 1B 78 */	mr r26, r3
/* 00005EB4 00005F78  7E C3 B3 78 */	mr r3, r22
/* 00005EB8 00005F7C  4B FF AA F1 */	bl evtGetValue
/* 00005EBC 00005F80  82 FD 00 10 */	lwz r23, 0x10(r29)
/* 00005EC0 00005F84  7C 7B 1B 78 */	mr r27, r3
/* 00005EC4 00005F88  7E C3 B3 78 */	mr r3, r22
/* 00005EC8 00005F8C  7E E4 BB 78 */	mr r4, r23
/* 00005ECC 00005F90  4B FF AA DD */	bl evtGetValue
/* 00005ED0 00005F94  80 9D 00 14 */	lwz r4, 0x14(r29)
/* 00005ED4 00005F98  7C 7C 1B 78 */	mr r28, r3
/* 00005ED8 00005F9C  7E C3 B3 78 */	mr r3, r22
/* 00005EDC 00005FA0  4B FF AA CD */	bl evtGetValue
/* 00005EE0 00005FA4  80 9D 00 18 */	lwz r4, 0x18(r29)
/* 00005EE4 00005FA8  7C 7D 1B 78 */	mr r29, r3
/* 00005EE8 00005FAC  7E C3 B3 78 */	mr r3, r22
/* 00005EEC 00005FB0  4B FF AA BD */	bl evtGetValue
/* 00005EF0 00005FB4  7C 7E 1B 78 */	mr r30, r3
/* 00005EF4 00005FB8  7F E3 FB 78 */	mr r3, r31
/* 00005EF8 00005FBC  4B FF AA B1 */	bl BattleSearchObjectPtr
/* 00005EFC 00005FC0  1C B9 01 68 */	mulli r5, r25, 0x168
/* 00005F00 00005FC4  3C 00 43 30 */	lis r0, 0x4330
/* 00005F04 00005FC8  90 01 00 08 */	stw r0, 0x8(r1)
/* 00005F08 00005FCC  3C 80 00 00 */	lis r4, double_to_int_muj_00012420@ha
/* 00005F0C 00005FD0  C8 24 00 00 */	lfd f1, double_to_int_muj_00012420@l(r4)
/* 00005F10 00005FD4  7C 7F 1B 78 */	mr r31, r3
/* 00005F14 00005FD8  7C 05 D3 D6 */	divw r0, r5, r26
/* 00005F18 00005FDC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 00005F1C 00005FE0  90 01 00 0C */	stw r0, 0xc(r1)
/* 00005F20 00005FE4  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 00005F24 00005FE8  EC 20 08 28 */	fsubs f1, f0, f1
/* 00005F28 00005FEC  4B FF AA 81 */	bl sinfd
/* 00005F2C 00005FF0  1C 1C 01 68 */	mulli r0, r28, 0x168
/* 00005F30 00005FF4  3C 80 43 30 */	lis r4, 0x4330
/* 00005F34 00005FF8  6F 65 80 00 */	xoris r5, r27, 0x8000
/* 00005F38 00005FFC  90 81 00 10 */	stw r4, 0x10(r1)
/* 00005F3C 00006000  3C C0 00 00 */	lis r6, double_to_int_muj_00012420@ha
/* 00005F40 00006004  7C 60 EB D6 */	divw r3, r0, r29
/* 00005F44 00006008  90 A1 00 14 */	stw r5, 0x14(r1)
/* 00005F48 0000600C  C8 66 00 00 */	lfd f3, double_to_int_muj_00012420@l(r6)
/* 00005F4C 00006010  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 00005F50 00006014  90 81 00 18 */	stw r4, 0x18(r1)
/* 00005F54 00006018  EC 00 18 28 */	fsubs f0, f0, f3
/* 00005F58 0000601C  38 03 01 0E */	addi r0, r3, 0x10e
/* 00005F5C 00006020  EC 40 00 72 */	fmuls f2, f0, f1
/* 00005F60 00006024  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 00005F64 00006028  90 01 00 1C */	stw r0, 0x1c(r1)
/* 00005F68 0000602C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 00005F6C 00006030  D0 5F 00 10 */	stfs f2, 0x10(r31)
/* 00005F70 00006034  EC 20 18 28 */	fsubs f1, f0, f3
/* 00005F74 00006038  4B FF AA 35 */	bl sinfd
/* 00005F78 0000603C  6F C3 80 00 */	xoris r3, r30, 0x8000
/* 00005F7C 00006040  3C 00 43 30 */	lis r0, 0x4330
/* 00005F80 00006044  90 61 00 24 */	stw r3, 0x24(r1)
/* 00005F84 00006048  3C 80 00 00 */	lis r4, double_to_int_muj_00012420@ha
/* 00005F88 0000604C  38 B9 00 01 */	addi r5, r25, 0x1
/* 00005F8C 00006050  C8 64 00 00 */	lfd f3, double_to_int_muj_00012420@l(r4)
/* 00005F90 00006054  90 01 00 20 */	stw r0, 0x20(r1)
/* 00005F94 00006058  7C 05 D0 00 */	cmpw r5, r26
/* 00005F98 0000605C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 00005F9C 00006060  90 61 00 2C */	stw r3, 0x2c(r1)
/* 00005FA0 00006064  EC 40 18 28 */	fsubs f2, f0, f3
/* 00005FA4 00006068  90 01 00 28 */	stw r0, 0x28(r1)
/* 00005FA8 0000606C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 00005FAC 00006070  EC 00 18 28 */	fsubs f0, f0, f3
/* 00005FB0 00006074  EC 02 00 7A */	fmadds f0, f2, f1, f0
/* 00005FB4 00006078  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 00005FB8 0000607C  41 80 00 08 */	blt .L_00005FC0
/* 00005FBC 00006080  38 A0 00 00 */	li r5, 0x0
.L_00005FC0:
/* 00005FC0 00006084  7E C3 B3 78 */	mr r3, r22
/* 00005FC4 00006088  7F 04 C3 78 */	mr r4, r24
/* 00005FC8 0000608C  4B FF A9 E1 */	bl evtSetValue
/* 00005FCC 00006090  38 BC 00 01 */	addi r5, r28, 0x1
/* 00005FD0 00006094  7C 05 E8 00 */	cmpw r5, r29
/* 00005FD4 00006098  41 80 00 08 */	blt .L_00005FDC
/* 00005FD8 0000609C  38 A0 00 00 */	li r5, 0x0
.L_00005FDC:
/* 00005FDC 000060A0  7E C3 B3 78 */	mr r3, r22
/* 00005FE0 000060A4  7E E4 BB 78 */	mr r4, r23
/* 00005FE4 000060A8  4B FF A9 C5 */	bl evtSetValue
/* 00005FE8 000060AC  BA C1 00 38 */	lmw r22, 0x38(r1)
/* 00005FEC 000060B0  38 60 00 02 */	li r3, 0x2
/* 00005FF0 000060B4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 00005FF4 000060B8  7C 08 03 A6 */	mtlr r0
/* 00005FF8 000060BC  38 21 00 60 */	addi r1, r1, 0x60
/* 00005FFC 000060C0  4E 80 00 20 */	blr
.endfn _wave_offset

# 0x000043E8..0x00004778 | size: 0x390
.rodata
.balign 8

# .rodata:0x0 | 0x43E8 | size: 0x3
.obj str_A1_muj_00012098, local
	.string "A1"
.endobj str_A1_muj_00012098

# .rodata:0x3 | 0x43EB | size: 0x1
.obj gap_03_000043EB_rodata, global
.hidden gap_03_000043EB_rodata
	.byte 0x00
.endobj gap_03_000043EB_rodata

# .rodata:0x4 | 0x43EC | size: 0x5
.obj str_hata_muj_0001209c, local
	.string "hata"
.endobj str_hata_muj_0001209c

# .rodata:0x9 | 0x43F1 | size: 0x3
.obj gap_03_000043F1_rodata, global
.hidden gap_03_000043F1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000043F1_rodata

# .rodata:0xC | 0x43F4 | size: 0x4
.obj str_iwa_muj_000120a4, local
	.string "iwa"
.endobj str_iwa_muj_000120a4

# .rodata:0x10 | 0x43F8 | size: 0x4
.obj str_zai_muj_000120a8, local
	.string "zai"
.endobj str_zai_muj_000120a8

# .rodata:0x14 | 0x43FC | size: 0x2
.obj str_B_muj_000120ac, local
	.string "B"
.endobj str_B_muj_000120ac

# .rodata:0x16 | 0x43FE | size: 0x2
.obj gap_03_000043FE_rodata, global
.hidden gap_03_000043FE_rodata
	.2byte 0x0000
.endobj gap_03_000043FE_rodata

# .rodata:0x18 | 0x4400 | size: 0x2
.obj str_C_muj_000120b0, local
	.string "C"
.endobj str_C_muj_000120b0

# .rodata:0x1A | 0x4402 | size: 0x2
.obj gap_03_00004402_rodata, global
.hidden gap_03_00004402_rodata
	.2byte 0x0000
.endobj gap_03_00004402_rodata

# .rodata:0x1C | 0x4404 | size: 0x9
.obj str_kusa_mae_muj_000120b4, local
	.string "kusa_mae"
.endobj str_kusa_mae_muj_000120b4

# .rodata:0x25 | 0x440D | size: 0x3
.obj gap_03_0000440D_rodata, global
.hidden gap_03_0000440D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000440D_rodata

# .rodata:0x28 | 0x4410 | size: 0xB
.obj str_kusa_usiro_muj_000120c0, local
	.string "kusa_usiro"
.endobj str_kusa_usiro_muj_000120c0

# .rodata:0x33 | 0x441B | size: 0x1
.obj gap_03_0000441B_rodata, global
.hidden gap_03_0000441B_rodata
	.byte 0x00
.endobj gap_03_0000441B_rodata

# .rodata:0x34 | 0x441C | size: 0x8
.obj str_kusa_01_muj_000120cc, local
	.string "kusa_01"
.endobj str_kusa_01_muj_000120cc

# .rodata:0x3C | 0x4424 | size: 0x8
.obj str_kusa_02_muj_000120d4, local
	.string "kusa_02"
.endobj str_kusa_02_muj_000120d4

# .rodata:0x44 | 0x442C | size: 0x6
.obj str_necco_muj_000120dc, local
	.string "necco"
.endobj str_necco_muj_000120dc

# .rodata:0x4A | 0x4432 | size: 0x2
.obj gap_03_00004432_rodata, global
.hidden gap_03_00004432_rodata
	.2byte 0x0000
.endobj gap_03_00004432_rodata

# .rodata:0x4C | 0x4434 | size: 0xA
.obj str_takara_01_muj_000120e4, local
	.string "takara_01"
.endobj str_takara_01_muj_000120e4

# .rodata:0x56 | 0x443E | size: 0x2
.obj gap_03_0000443E_rodata, global
.hidden gap_03_0000443E_rodata
	.2byte 0x0000
.endobj gap_03_0000443E_rodata

# .rodata:0x58 | 0x4440 | size: 0xA
.obj str_takara_02_muj_000120f0, local
	.string "takara_02"
.endobj str_takara_02_muj_000120f0

# .rodata:0x62 | 0x444A | size: 0x2
.obj gap_03_0000444A_rodata, global
.hidden gap_03_0000444A_rodata
	.2byte 0x0000
.endobj gap_03_0000444A_rodata

# .rodata:0x64 | 0x444C | size: 0xA
.obj str_takara_03_muj_000120fc, local
	.string "takara_03"
.endobj str_takara_03_muj_000120fc

# .rodata:0x6E | 0x4456 | size: 0x2
.obj gap_03_00004456_rodata, global
.hidden gap_03_00004456_rodata
	.2byte 0x0000
.endobj gap_03_00004456_rodata

# .rodata:0x70 | 0x4458 | size: 0xA
.obj str_takara_04_muj_00012108, local
	.string "takara_04"
.endobj str_takara_04_muj_00012108

# .rodata:0x7A | 0x4462 | size: 0x2
.obj gap_03_00004462_rodata, global
.hidden gap_03_00004462_rodata
	.2byte 0x0000
.endobj gap_03_00004462_rodata

# .rodata:0x7C | 0x4464 | size: 0x7
.obj str_C_kabe_muj_00012114, local
	.string "C_kabe"
.endobj str_C_kabe_muj_00012114

# .rodata:0x83 | 0x446B | size: 0x1
.obj gap_03_0000446B_rodata, global
.hidden gap_03_0000446B_rodata
	.byte 0x00
.endobj gap_03_0000446B_rodata

# .rodata:0x84 | 0x446C | size: 0x8
.obj str_nami_00_muj_0001211c, local
	.string "nami_00"
.endobj str_nami_00_muj_0001211c

# .rodata:0x8C | 0x4474 | size: 0x8
.obj str_nami_01_muj_00012124, local
	.string "nami_01"
.endobj str_nami_01_muj_00012124

# .rodata:0x94 | 0x447C | size: 0x8
.obj str_S_mae_l_muj_0001212c, local
	.string "S_mae_l"
.endobj str_S_mae_l_muj_0001212c

# .rodata:0x9C | 0x4484 | size: 0x8
.obj str_S_mae_r_muj_00012134, local
	.string "S_mae_r"
.endobj str_S_mae_r_muj_00012134

# .rodata:0xA4 | 0x448C | size: 0x8
.obj str_S_oku_l_muj_0001213c, local
	.string "S_oku_l"
.endobj str_S_oku_l_muj_0001213c

# .rodata:0xAC | 0x4494 | size: 0x8
.obj str_S_oku_r_muj_00012144, local
	.string "S_oku_r"
.endobj str_S_oku_r_muj_00012144

# .rodata:0xB4 | 0x449C | size: 0x8
.obj str_if_wire_muj_0001214c, local
	.string "if_wire"
.endobj str_if_wire_muj_0001214c

# .rodata:0xBC | 0x44A4 | size: 0x8
.obj str_if_body_muj_00012154, local
	.string "if_body"
.endobj str_if_body_muj_00012154

# .rodata:0xC4 | 0x44AC | size: 0x7
.obj str_bti_01_muj_0001215c, local
	.string "bti_01"
.endobj str_bti_01_muj_0001215c

# .rodata:0xCB | 0x44B3 | size: 0x1
.obj gap_03_000044B3_rodata, global
.hidden gap_03_000044B3_rodata
	.byte 0x00
.endobj gap_03_000044B3_rodata

# .rodata:0xCC | 0x44B4 | size: 0x9
.obj str_stg_05_1_muj_00012164, local
	.string "stg_05_1"
.endobj str_stg_05_1_muj_00012164

# .rodata:0xD5 | 0x44BD | size: 0x3
.obj gap_03_000044BD_rodata, global
.hidden gap_03_000044BD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000044BD_rodata

# .rodata:0xD8 | 0x44C0 | size: 0x9
.obj str_stg_05_2_muj_00012170, local
	.string "stg_05_2"
.endobj str_stg_05_2_muj_00012170

# .rodata:0xE1 | 0x44C9 | size: 0x3
.obj gap_03_000044C9_rodata, global
.hidden gap_03_000044C9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000044C9_rodata

# .rodata:0xE4 | 0x44CC | size: 0x9
.obj str_stg_05_5_muj_0001217c, local
	.string "stg_05_5"
.endobj str_stg_05_5_muj_0001217c

# .rodata:0xED | 0x44D5 | size: 0x3
.obj gap_03_000044D5_rodata, global
.hidden gap_03_000044D5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000044D5_rodata

# .rodata:0xF0 | 0x44D8 | size: 0x9
.obj str_stg_05_0_muj_00012188, local
	.string "stg_05_0"
.endobj str_stg_05_0_muj_00012188

# .rodata:0xF9 | 0x44E1 | size: 0x3
.obj gap_03_000044E1_rodata, global
.hidden gap_03_000044E1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000044E1_rodata

# .rodata:0xFC | 0x44E4 | size: 0xF
.obj str_マップstg_05_0_muj_00012194, local
	.4byte 0x837D8362
	.4byte 0x83767374
	.4byte 0x675F3035
	.byte 0x5F, 0x30, 0x00
.endobj str_マップstg_05_0_muj_00012194

# .rodata:0x10B | 0x44F3 | size: 0x1
.obj gap_03_000044F3_rodata, global
.hidden gap_03_000044F3_rodata
	.byte 0x00
.endobj gap_03_000044F3_rodata

# .rodata:0x10C | 0x44F4 | size: 0x11
.obj str_BGM_ZAKO_BATTLE1_muj_000121a4, local
	.string "BGM_ZAKO_BATTLE1"
.endobj str_BGM_ZAKO_BATTLE1_muj_000121a4

# .rodata:0x11D | 0x4505 | size: 0x3
.obj gap_03_00004505_rodata, global
.hidden gap_03_00004505_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004505_rodata

# .rodata:0x120 | 0x4508 | size: 0xF
.obj str_マップstg_05_1_muj_000121b8, local
	.4byte 0x837D8362
	.4byte 0x83767374
	.4byte 0x675F3035
	.byte 0x5F, 0x31, 0x00
.endobj str_マップstg_05_1_muj_000121b8

# .rodata:0x12F | 0x4517 | size: 0x1
.obj gap_03_00004517_rodata, global
.hidden gap_03_00004517_rodata
	.byte 0x00
.endobj gap_03_00004517_rodata

# .rodata:0x130 | 0x4518 | size: 0xF
.obj str_マップstg_05_2_muj_000121c8, local
	.4byte 0x837D8362
	.4byte 0x83767374
	.4byte 0x675F3035
	.byte 0x5F, 0x32, 0x00
.endobj str_マップstg_05_2_muj_000121c8

# .rodata:0x13F | 0x4527 | size: 0x1
.obj gap_03_00004527_rodata, global
.hidden gap_03_00004527_rodata
	.byte 0x00
.endobj gap_03_00004527_rodata

# .rodata:0x140 | 0x4528 | size: 0xF
.obj str_マップstg_05_5_muj_000121d8, local
	.4byte 0x837D8362
	.4byte 0x83767374
	.4byte 0x675F3035
	.byte 0x5F, 0x35, 0x00
.endobj str_マップstg_05_5_muj_000121d8

# .rodata:0x14F | 0x4537 | size: 0x1
.obj gap_03_00004537_rodata, global
.hidden gap_03_00004537_rodata
	.byte 0x00
.endobj gap_03_00004537_rodata

# .rodata:0x150 | 0x4538 | size: 0x9
.obj str_コルテス_muj_000121e8, local
	.4byte 0x8352838B
	.4byte 0x83658358
	.byte 0x00
.endobj str_コルテス_muj_000121e8

# .rodata:0x159 | 0x4541 | size: 0x3
.obj gap_03_00004541_rodata, global
.hidden gap_03_00004541_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004541_rodata

# .rodata:0x15C | 0x4544 | size: 0x7
.obj str_muj_12_muj_000121f4, local
	.string "muj_12"
.endobj str_muj_12_muj_000121f4

# .rodata:0x163 | 0x454B | size: 0x1
.obj gap_03_0000454B_rodata, global
.hidden gap_03_0000454B_rodata
	.byte 0x00
.endobj gap_03_0000454B_rodata

# .rodata:0x164 | 0x454C | size: 0x17
.obj str_BGM_BOSS_STG5_KORTES_muj_000121fc, local
	.string "BGM_BOSS_STG5_KORTESS1"
.endobj str_BGM_BOSS_STG5_KORTES_muj_000121fc

# .rodata:0x17B | 0x4563 | size: 0x1
.obj gap_03_00004563_rodata, global
.hidden gap_03_00004563_rodata
	.byte 0x00
.endobj gap_03_00004563_rodata

# .rodata:0x17C | 0x4564 | size: 0xB
.obj str_幹部その３_muj_00012214, local
	.4byte 0x8AB29594
	.4byte 0x82BB82CC
	.byte 0x82, 0x52, 0x00
.endobj str_幹部その３_muj_00012214

# .rodata:0x187 | 0x456F | size: 0x1
.obj gap_03_0000456F_rodata, global
.hidden gap_03_0000456F_rodata
	.byte 0x00
.endobj gap_03_0000456F_rodata

# .rodata:0x188 | 0x4570 | size: 0x7
.obj str_muj_00_muj_00012220, local
	.string "muj_00"
.endobj str_muj_00_muj_00012220

# .rodata:0x18F | 0x4577 | size: 0x1
.obj gap_03_00004577_rodata, global
.hidden gap_03_00004577_rodata
	.byte 0x00
.endobj gap_03_00004577_rodata

# .rodata:0x190 | 0x4578 | size: 0x19
.obj str_BGM_BOSS_STG3_3RDLEA_muj_00012228, local
	.string "BGM_BOSS_STG3_3RDLEADER1"
.endobj str_BGM_BOSS_STG3_3RDLEA_muj_00012228

# .rodata:0x1A9 | 0x4591 | size: 0x3
.obj gap_03_00004591_rodata, global
.hidden gap_03_00004591_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004591_rodata

# .rodata:0x1AC | 0x4594 | size: 0x12
.obj str_MUJ01おんりょう１_muj_00012244, local
	.4byte 0x4D554A30
	.4byte 0x3182A882
	.4byte 0xF182E882
	.4byte 0xE582A482
	.2byte 0x5000
.endobj str_MUJ01おんりょう１_muj_00012244

# .rodata:0x1BE | 0x45A6 | size: 0x2
.obj gap_03_000045A6_rodata, global
.hidden gap_03_000045A6_rodata
	.2byte 0x0000
.endobj gap_03_000045A6_rodata

# .rodata:0x1C0 | 0x45A8 | size: 0x14
.obj str_BGM_CHUBOSS_BATTLE1_muj_00012258, local
	.string "BGM_CHUBOSS_BATTLE1"
.endobj str_BGM_CHUBOSS_BATTLE1_muj_00012258

# .rodata:0x1D4 | 0x45BC | size: 0x12
.obj str_MUJ01おんりょう２_muj_0001226c, local
	.4byte 0x4D554A30
	.4byte 0x3182A882
	.4byte 0xF182E882
	.4byte 0xE582A482
	.2byte 0x5100
.endobj str_MUJ01おんりょう２_muj_0001226c

# .rodata:0x1E6 | 0x45CE | size: 0x2
.obj gap_03_000045CE_rodata, global
.hidden gap_03_000045CE_rodata
	.2byte 0x0000
.endobj gap_03_000045CE_rodata

# .rodata:0x1E8 | 0x45D0 | size: 0x12
.obj str_MUJ01おんりょう３_muj_00012280, local
	.4byte 0x4D554A30
	.4byte 0x3182A882
	.4byte 0xF182E882
	.4byte 0xE582A482
	.2byte 0x5200
.endobj str_MUJ01おんりょう３_muj_00012280

# .rodata:0x1FA | 0x45E2 | size: 0x2
.obj gap_03_000045E2_rodata, global
.hidden gap_03_000045E2_rodata
	.2byte 0x0000
.endobj gap_03_000045E2_rodata

# .rodata:0x1FC | 0x45E4 | size: 0x18
.obj str_MUJ02グリーンチョロボン_muj_00012294, local
	.4byte 0x4D554A30
	.4byte 0x32834F83
	.4byte 0x8A815B83
	.4byte 0x93836083
	.4byte 0x87838D83
	.4byte 0x7B839300
.endobj str_MUJ02グリーンチョロボン_muj_00012294

# .rodata:0x214 | 0x45FC | size: 0x18
.obj str_MUJ02フラワーチョロボン_muj_000122ac, local
	.4byte 0x4D554A30
	.4byte 0x32837483
	.4byte 0x89838F81
	.4byte 0x5B836083
	.4byte 0x87838D83
	.4byte 0x7B839300
.endobj str_MUJ02フラワーチョロボン_muj_000122ac

# .rodata:0x22C | 0x4614 | size: 0x16
.obj str_MUJ03ポイズンパックン_muj_000122c4, local
	.4byte 0x4D554A30
	.4byte 0x33837C83
	.4byte 0x43835983
	.4byte 0x93837083
	.4byte 0x62834E83
	.2byte 0x9300
.endobj str_MUJ03ポイズンパックン_muj_000122c4

# .rodata:0x242 | 0x462A | size: 0x2
.obj gap_03_0000462A_rodata, global
.hidden gap_03_0000462A_rodata
	.2byte 0x0000
.endobj gap_03_0000462A_rodata

# .rodata:0x244 | 0x462C | size: 0x18
.obj str_MUJ03フラワーチョロボン_muj_000122dc, local
	.4byte 0x4D554A30
	.4byte 0x33837483
	.4byte 0x89838F81
	.4byte 0x5B836083
	.4byte 0x87838D83
	.4byte 0x7B839300
.endobj str_MUJ03フラワーチョロボン_muj_000122dc

# .rodata:0x25C | 0x4644 | size: 0x10
.obj str_BTLNO_MUJ_TEST1_muj_000122f4, local
	.string "BTLNO_MUJ_TEST1"
.endobj str_BTLNO_MUJ_TEST1_muj_000122f4

# .rodata:0x26C | 0x4654 | size: 0x10
.obj str_BTLNO_MUJ_TEST2_muj_00012304, local
	.string "BTLNO_MUJ_TEST2"
.endobj str_BTLNO_MUJ_TEST2_muj_00012304

# .rodata:0x27C | 0x4664 | size: 0x10
.obj str_BTLNO_MUJ_TEST3_muj_00012314, local
	.string "BTLNO_MUJ_TEST3"
.endobj str_BTLNO_MUJ_TEST3_muj_00012314

# .rodata:0x28C | 0x4674 | size: 0x10
.obj str_BTLNO_MUJ_TEST4_muj_00012324, local
	.string "BTLNO_MUJ_TEST4"
.endobj str_BTLNO_MUJ_TEST4_muj_00012324

# .rodata:0x29C | 0x4684 | size: 0x11
.obj str_BTLNO_MUJ_CORTEZ_muj_00012334, local
	.string "BTLNO_MUJ_CORTEZ"
.endobj str_BTLNO_MUJ_CORTEZ_muj_00012334

# .rodata:0x2AD | 0x4695 | size: 0x3
.obj gap_03_00004695_rodata, global
.hidden gap_03_00004695_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004695_rodata

# .rodata:0x2B0 | 0x4698 | size: 0x10
.obj str_BTLNO_MUJ_KANBU_muj_00012348, local
	.string "BTLNO_MUJ_KANBU"
.endobj str_BTLNO_MUJ_KANBU_muj_00012348

# .rodata:0x2C0 | 0x46A8 | size: 0x10
.obj str_BTLNO_MUJ_01_01_muj_00012358, local
	.string "BTLNO_MUJ_01_01"
.endobj str_BTLNO_MUJ_01_01_muj_00012358

# .rodata:0x2D0 | 0x46B8 | size: 0x10
.obj str_BTLNO_MUJ_05_01_muj_00012368, local
	.string "BTLNO_MUJ_05_01"
.endobj str_BTLNO_MUJ_05_01_muj_00012368

# .rodata:0x2E0 | 0x46C8 | size: 0x10
.obj str_BTLNO_MUJ_05_02_muj_00012378, local
	.string "BTLNO_MUJ_05_02"
.endobj str_BTLNO_MUJ_05_02_muj_00012378

# .rodata:0x2F0 | 0x46D8 | size: 0x10
.obj str_BTLNO_MUJ_02_01_muj_00012388, local
	.string "BTLNO_MUJ_02_01"
.endobj str_BTLNO_MUJ_02_01_muj_00012388

# .rodata:0x300 | 0x46E8 | size: 0x10
.obj str_BTLNO_MUJ_02_02_muj_00012398, local
	.string "BTLNO_MUJ_02_02"
.endobj str_BTLNO_MUJ_02_02_muj_00012398

# .rodata:0x310 | 0x46F8 | size: 0x10
.obj str_BTLNO_MUJ_02_07_muj_000123a8, local
	.string "BTLNO_MUJ_02_07"
.endobj str_BTLNO_MUJ_02_07_muj_000123a8

# .rodata:0x320 | 0x4708 | size: 0x10
.obj str_BTLNO_MUJ_03_01_muj_000123b8, local
	.string "BTLNO_MUJ_03_01"
.endobj str_BTLNO_MUJ_03_01_muj_000123b8

# .rodata:0x330 | 0x4718 | size: 0x10
.obj str_BTLNO_MUJ_03_02_muj_000123c8, local
	.string "BTLNO_MUJ_03_02"
.endobj str_BTLNO_MUJ_03_02_muj_000123c8

# .rodata:0x340 | 0x4728 | size: 0x10
.obj str_BTLNO_MUJ_03_04_muj_000123d8, local
	.string "BTLNO_MUJ_03_04"
.endobj str_BTLNO_MUJ_03_04_muj_000123d8

# .rodata:0x350 | 0x4738 | size: 0x7
.obj str_nami_1_muj_000123e8, local
	.string "nami_1"
.endobj str_nami_1_muj_000123e8

# .rodata:0x357 | 0x473F | size: 0x1
.obj gap_03_0000473F_rodata, global
.hidden gap_03_0000473F_rodata
	.byte 0x00
.endobj gap_03_0000473F_rodata

# .rodata:0x358 | 0x4740 | size: 0x7
.obj str_nami_2_muj_000123f0, local
	.string "nami_2"
.endobj str_nami_2_muj_000123f0

# .rodata:0x35F | 0x4747 | size: 0x1
.obj gap_03_00004747_rodata, global
.hidden gap_03_00004747_rodata
	.byte 0x00
.endobj gap_03_00004747_rodata

# .rodata:0x360 | 0x4748 | size: 0x7
.obj str_nami_3_muj_000123f8, local
	.string "nami_3"
.endobj str_nami_3_muj_000123f8

# .rodata:0x367 | 0x474F | size: 0x1
.obj gap_03_0000474F_rodata, global
.hidden gap_03_0000474F_rodata
	.byte 0x00
.endobj gap_03_0000474F_rodata

# .rodata:0x368 | 0x4750 | size: 0xC
.obj str_sunlight_bt_muj_00012400, local
	.string "sunlight_bt"
.endobj str_sunlight_bt_muj_00012400

# .rodata:0x374 | 0x475C | size: 0xD
.obj str_sunlight_n64_muj_0001240c, local
	.string "sunlight_n64"
.endobj str_sunlight_n64_muj_0001240c
	.4byte 0x00000000
	.byte 0x00, 0x00, 0x00

# .rodata:0x388 | 0x4770 | size: 0x8
.obj double_to_int_muj_00012420, local
	.double 4503601774854144
.endobj double_to_int_muj_00012420

# 0x0001FEF0..0x00022008 | size: 0x2118
.data
.balign 8

# .data:0x0 | 0x1FEF0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x1FEF8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x1FEFC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x1FF00 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x1FF04 | size: 0x4
.obj gap_04_0001FF04_data, global
.hidden gap_04_0001FF04_data
	.4byte 0x00000000
.endobj gap_04_0001FF04_data

# .data:0x18 | 0x1FF08 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x1FF10 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x1FF14 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x1FF18 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x1FF20 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x1FF24 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x1FF28 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x1FF2C | size: 0x4
.obj gap_04_0001FF2C_data, global
.hidden gap_04_0001FF2C_data
	.4byte 0x00000000
.endobj gap_04_0001FF2C_data

# .data:0x40 | 0x1FF30 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x1FF38 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x1FF3C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x1FF40 | size: 0x2E8
.obj muj_btlobject_data, local
	.4byte str_A1_muj_00012098
	.4byte 0x00020000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xC2480000
	.4byte 0x003C0000
	.4byte str_hata_muj_0001209c
	.4byte 0x00020001
	.4byte 0x43320000
	.4byte 0x00000000
	.4byte 0xC2440000
	.4byte 0x003C0000
	.4byte str_iwa_muj_000120a4
	.4byte 0x00020001
	.4byte 0xC3370000
	.4byte 0x00000000
	.4byte 0xC1E00000
	.4byte 0x0A320000
	.4byte str_zai_muj_000120a8
	.4byte 0x00020001
	.4byte 0x42FC0000
	.4byte 0x00000000
	.4byte 0xC1D00000
	.4byte 0x14280000
	.4byte str_B_muj_000120ac
	.4byte 0x00020002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_C_muj_000120b0
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
.L_0001FFD0:
	.4byte str_A1_muj_00012098
	.4byte 0x00020000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xC2600000
	.4byte 0x003C0000
	.4byte str_kusa_mae_muj_000120b4
	.4byte 0x00020001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x428C0000
	.4byte 0x003C0000
	.4byte str_kusa_usiro_muj_000120c0
	.4byte 0x00020001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xC2300000
	.4byte 0x0A320000
	.4byte str_kusa_01_muj_000120cc
	.4byte 0x00020001
	.4byte 0xC29E0000
	.4byte 0x00000000
	.4byte 0xC1E00000
	.4byte 0x14280000
	.4byte str_kusa_02_muj_000120d4
	.4byte 0x00020001
	.4byte 0x43000000
	.4byte 0x00000000
	.4byte 0xC2040000
	.4byte 0x1E1E0000
	.4byte str_necco_muj_000120dc
	.4byte 0x00020001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xC2080000
	.4byte 0x003C0000
	.4byte str_B_muj_000120ac
	.4byte 0x00020002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_C_muj_000120b0
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
.L_00020090:
	.4byte str_takara_01_muj_000120e4
	.4byte 0x00020001
	.4byte 0x42DE0000
	.4byte 0x00000000
	.4byte 0xC28A0000
	.4byte 0x003C0000
	.4byte str_takara_02_muj_000120f0
	.4byte 0x00020001
	.4byte 0xC2AE0000
	.4byte 0x00000000
	.4byte 0xC2900000
	.4byte 0x0A320000
	.4byte str_takara_03_muj_000120fc
	.4byte 0x00020001
	.4byte 0x43080000
	.4byte 0x00000000
	.4byte 0x42640000
	.4byte 0x14280000
	.4byte str_takara_04_muj_00012108
	.4byte 0x00020001
	.4byte 0xC3360000
	.4byte 0x00000000
	.4byte 0x42640000
	.4byte 0x1E1E0000
	.4byte str_B_muj_000120ac
	.4byte 0x00020002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_C_kabe_muj_00012114
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_nami_00_muj_0001211c
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_nami_01_muj_00012124
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
.L_00020150:
	.4byte str_A1_muj_00012098
	.4byte 0x00020000
	.4byte 0x42D60000
	.4byte 0x00000000
	.4byte 0xC2540000
	.4byte 0x003C0000
	.4byte str_S_mae_l_muj_0001212c
	.4byte 0x00020001
	.4byte 0xC2B40000
	.4byte 0x00000000
	.4byte 0x42400000
	.4byte 0x003C0000
	.4byte str_S_mae_r_muj_00012134
	.4byte 0x00020001
	.4byte 0x42A80000
	.4byte 0x00000000
	.4byte 0x42400000
	.4byte 0x003C0000
	.4byte str_S_oku_l_muj_0001213c
	.4byte 0x00020001
	.4byte 0xC20C0000
	.4byte 0x00000000
	.4byte 0xC2280000
	.4byte 0x003C0000
	.4byte str_S_oku_r_muj_00012144
	.4byte 0x00020001
	.4byte 0x420C0000
	.4byte 0x00000000
	.4byte 0xC2280000
	.4byte 0x003C0000
	.4byte str_B_muj_000120ac
	.4byte 0x00020002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_C_muj_000120b0
	.4byte 0x00020003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x003C0000
	.4byte str_if_wire_muj_0001214c
	.4byte 0x00050006
	.4byte 0x00000000
	.4byte 0x43020000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_if_body_muj_00012154
	.4byte 0x00050006
	.4byte 0x00000000
	.4byte 0x43020000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj muj_btlobject_data

# .data:0x338 | 0x20228 | size: 0x6D0
.obj muj_btlstage_data, local
	.4byte str_bti_01_muj_0001215c
	.4byte str_stg_05_1_muj_00012164
	.4byte 0x00000006
	.4byte muj_btlobject_data
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte weaponGetPowerDefault
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x02100060
	.4byte 0x20000000
	.4byte 0x001A0302
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte weaponGetPowerDefault
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x02100060
	.4byte 0x20000000
	.4byte 0x001A0302
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte bgset_muj_sun_event
	.4byte 0x00000000
.L_000203DC:
	.4byte str_bti_01_muj_0001215c
	.4byte str_stg_05_2_muj_00012170
	.4byte 0x00000008
	.rel muj_btlobject_data, .L_0001FFD0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte weaponGetPowerDefault
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x02100060
	.4byte 0x20000000
	.4byte 0x001A0302
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte weaponGetPowerDefault
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x02100060
	.4byte 0x20000000
	.4byte 0x001A0302
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte bgset_muj_sun_event
	.4byte 0x00000000
.L_00020590:
	.4byte str_bti_01_muj_0001215c
	.4byte str_stg_05_5_muj_0001217c
	.4byte 0x00000008
	.rel muj_btlobject_data, .L_00020090
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x02100060
	.4byte 0x20000000
	.4byte 0x001A0302
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte weaponGetPowerDefault
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x02100060
	.4byte 0x20000000
	.4byte 0x001A0302
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.L_00020744:
	.4byte str_bti_01_muj_0001215c
	.4byte str_stg_05_0_muj_00012188
	.4byte 0x00000009
	.rel muj_btlobject_data, .L_00020150
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte weaponGetPowerDefault
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0210006F
	.4byte 0x20000000
	.4byte 0x001A0302
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte weaponGetPowerDefault
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x02100060
	.4byte 0x20000000
	.4byte 0x001A0302
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte bgset_muj_sun_event
	.4byte 0x00000000
.endobj muj_btlstage_data

# .data:0xA08 | 0x208F8 | size: 0x30
.obj btlparty_muj_muj_cortez, local
	.4byte unit_boss_cortez_19_data_22058
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x43120000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_cortez
.endobj btlparty_muj_muj_cortez

# .data:0xA38 | 0x20928 | size: 0x20
.obj btlgrp_muj_muj_cortez, local
	.4byte 0x00000001
	.4byte btlparty_muj_muj_cortez
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_muj_muj_cortez

# .data:0xA58 | 0x20948 | size: 0x60
.obj btlparty_muj_muj_kanbu, local
	.4byte unit_boss_gundan_zako_group1_19_data_2F5A8
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42A00000
	.4byte 0x00000000
	.4byte 0xC1A00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_gundan_zako
	.4byte unit_boss_kanbu3_19_data_2D2B0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x43200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_kanbu1
.endobj btlparty_muj_muj_kanbu

# .data:0xAB8 | 0x209A8 | size: 0x20
.obj btlgrp_muj_muj_kanbu, local
	.4byte 0x00000002
	.4byte btlparty_muj_muj_kanbu
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_muj_muj_kanbu

# .data:0xAD8 | 0x209C8 | size: 0x90
.obj btlparty_muj_muj_01_01, local
	.4byte unit_hermos_19_data_39B40
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42480000
	.4byte 0x42200000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte unit_hermos_19_data_39B40
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x42200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte unit_hermos_19_data_39B40
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x43020000
	.4byte 0x42200000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlparty_muj_muj_01_01

# .data:0xB68 | 0x20A58 | size: 0x20
.obj btlgrp_muj_muj_01_01, local
	.4byte 0x00000003
	.4byte btlparty_muj_muj_01_01
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default2
	.4byte 0x00000005
.endobj btlgrp_muj_muj_01_01

# .data:0xB88 | 0x20A78 | size: 0x90
.obj btlparty_muj_muj_05_01, local
	.4byte unit_hermos_19_data_39B40
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42480000
	.4byte 0x42200000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte unit_hermos_19_data_39B40
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x42200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte unit_hermos_19_data_39B40
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x43020000
	.4byte 0x42200000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlparty_muj_muj_05_01

# .data:0xC18 | 0x20B08 | size: 0x20
.obj btlgrp_muj_muj_05_01, local
	.4byte 0x00000003
	.4byte btlparty_muj_muj_05_01
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default2
	.4byte 0x00000005
.endobj btlgrp_muj_muj_05_01

# .data:0xC38 | 0x20B28 | size: 0x90
.obj btlparty_muj_muj_05_02, local
	.4byte unit_hermos_19_data_39B40
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42480000
	.4byte 0x42200000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte unit_hermos_19_data_39B40
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x42200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte unit_hermos_19_data_39B40
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x43020000
	.4byte 0x42200000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlparty_muj_muj_05_02

# .data:0xCC8 | 0x20BB8 | size: 0x20
.obj btlgrp_muj_muj_05_02, local
	.4byte 0x00000003
	.4byte btlparty_muj_muj_05_02
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default2
	.4byte 0x00000005
.endobj btlgrp_muj_muj_05_02

# .data:0xCE8 | 0x20BD8 | size: 0x90
.obj btlparty_muj_muj_00_01, local
	.4byte unit_kuriboo_19_data_2C718
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42480000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte unit_kuriboo_19_data_2C718
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte unit_kuriboo_19_data_2C718
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x43020000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlparty_muj_muj_00_01

# .data:0xD78 | 0x20C68 | size: 0x20
.obj btlgrp_muj_muj_00_01, local
	.4byte 0x00000003
	.4byte btlparty_muj_muj_00_01
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_muj_muj_00_01

# .data:0xD98 | 0x20C88 | size: 0x30
.obj btlparty_muj_muj_02_01_off_01, local
	.4byte unit_green_chorobon_19_data_366B0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_green_chorobon
.endobj btlparty_muj_muj_02_01_off_01

# .data:0xDC8 | 0x20CB8 | size: 0x20
.obj btlgrp_muj_muj_02_01_off_01, local
	.4byte 0x00000001
	.4byte btlparty_muj_muj_02_01_off_01
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_muj_muj_02_01_off_01

# .data:0xDE8 | 0x20CD8 | size: 0x60
.obj btlparty_muj_muj_02_01_off_02, local
	.4byte unit_green_chorobon_19_data_366B0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_green_chorobon
	.4byte unit_green_chorobon_19_data_366B0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_green_chorobon
.endobj btlparty_muj_muj_02_01_off_02

# .data:0xE48 | 0x20D38 | size: 0x20
.obj btlgrp_muj_muj_02_01_off_02, local
	.4byte 0x00000002
	.4byte btlparty_muj_muj_02_01_off_02
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_muj_muj_02_01_off_02

# .data:0xE68 | 0x20D58 | size: 0x90
.obj btlparty_muj_muj_02_01_off_03, local
	.4byte unit_green_chorobon_19_data_366B0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42480000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_green_chorobon
	.4byte unit_green_chorobon_19_data_366B0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_green_chorobon
	.4byte unit_green_chorobon_19_data_366B0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x43020000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_green_chorobon
.endobj btlparty_muj_muj_02_01_off_03

# .data:0xEF8 | 0x20DE8 | size: 0x20
.obj btlgrp_muj_muj_02_01_off_03, local
	.4byte 0x00000003
	.4byte btlparty_muj_muj_02_01_off_03
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_muj_muj_02_01_off_03

# .data:0xF18 | 0x20E08 | size: 0xC0
.obj btlparty_muj_muj_02_01_off_04, local
	.4byte unit_green_chorobon_19_data_366B0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_green_chorobon
	.4byte unit_green_chorobon_19_data_366B0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_green_chorobon
	.4byte unit_green_chorobon_19_data_366B0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_green_chorobon
	.4byte unit_green_chorobon_19_data_366B0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x43160000
	.4byte 0x00000000
	.4byte 0x41A00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_green_chorobon
.endobj btlparty_muj_muj_02_01_off_04

# .data:0xFD8 | 0x20EC8 | size: 0x20
.obj btlgrp_muj_muj_02_01_off_04, local
	.4byte 0x00000004
	.4byte btlparty_muj_muj_02_01_off_04
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_muj_muj_02_01_off_04

# .data:0xFF8 | 0x20EE8 | size: 0x30
.obj btlparty_muj_muj_02_04_off_01, local
	.4byte unit_flower_chorobon_19_data_34990
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_flower_chorobon
.endobj btlparty_muj_muj_02_04_off_01

# .data:0x1028 | 0x20F18 | size: 0x20
.obj btlgrp_muj_muj_02_04_off_01, local
	.4byte 0x00000001
	.4byte btlparty_muj_muj_02_04_off_01
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_muj_muj_02_04_off_01

# .data:0x1048 | 0x20F38 | size: 0x60
.obj btlparty_muj_muj_02_04_off_02, local
	.4byte unit_flower_chorobon_19_data_34990
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_flower_chorobon
	.4byte unit_flower_chorobon_19_data_34990
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_flower_chorobon
.endobj btlparty_muj_muj_02_04_off_02

# .data:0x10A8 | 0x20F98 | size: 0x20
.obj btlgrp_muj_muj_02_04_off_02, local
	.4byte 0x00000002
	.4byte btlparty_muj_muj_02_04_off_02
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_muj_muj_02_04_off_02

# .data:0x10C8 | 0x20FB8 | size: 0x90
.obj btlparty_muj_muj_02_04_off_03, local
	.4byte unit_flower_chorobon_19_data_34990
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42480000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_flower_chorobon
	.4byte unit_flower_chorobon_19_data_34990
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_flower_chorobon
	.4byte unit_flower_chorobon_19_data_34990
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x43020000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_flower_chorobon
.endobj btlparty_muj_muj_02_04_off_03

# .data:0x1158 | 0x21048 | size: 0x20
.obj btlgrp_muj_muj_02_04_off_03, local
	.4byte 0x00000003
	.4byte btlparty_muj_muj_02_04_off_03
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_muj_muj_02_04_off_03

# .data:0x1178 | 0x21068 | size: 0x60
.obj btlparty_muj_muj_02_07_off_01, local
	.4byte unit_green_chorobon_19_data_366B0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_green_chorobon
	.4byte unit_flower_chorobon_19_data_34990
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_flower_chorobon
.endobj btlparty_muj_muj_02_07_off_01

# .data:0x11D8 | 0x210C8 | size: 0x20
.obj btlgrp_muj_muj_02_07_off_01, local
	.4byte 0x00000002
	.4byte btlparty_muj_muj_02_07_off_01
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_muj_muj_02_07_off_01

# .data:0x11F8 | 0x210E8 | size: 0x90
.obj btlparty_muj_muj_02_07_off_02, local
	.4byte unit_green_chorobon_19_data_366B0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42480000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_green_chorobon
	.4byte unit_flower_chorobon_19_data_34990
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_flower_chorobon
	.4byte unit_green_chorobon_19_data_366B0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x43020000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_green_chorobon
.endobj btlparty_muj_muj_02_07_off_02

# .data:0x1288 | 0x21178 | size: 0x20
.obj btlgrp_muj_muj_02_07_off_02, local
	.4byte 0x00000003
	.4byte btlparty_muj_muj_02_07_off_02
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_muj_muj_02_07_off_02

# .data:0x12A8 | 0x21198 | size: 0xC0
.obj btlparty_muj_muj_02_07_off_03, local
	.4byte unit_green_chorobon_19_data_366B0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_green_chorobon
	.4byte unit_flower_chorobon_19_data_34990
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_flower_chorobon
	.4byte unit_green_chorobon_19_data_366B0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_green_chorobon
	.4byte unit_flower_chorobon_19_data_34990
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x43160000
	.4byte 0x00000000
	.4byte 0x41A00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_flower_chorobon
.endobj btlparty_muj_muj_02_07_off_03

# .data:0x1368 | 0x21258 | size: 0x20
.obj btlgrp_muj_muj_02_07_off_03, local
	.4byte 0x00000004
	.4byte btlparty_muj_muj_02_07_off_03
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_muj_muj_02_07_off_03

# .data:0x1388 | 0x21278 | size: 0x60
.obj btlparty_muj_muj_03_01_off_01, local
	.4byte unit_poison_pakkun_19_data_38268
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_poison_pakkun
	.4byte unit_poison_pakkun_19_data_38268
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_poison_pakkun
.endobj btlparty_muj_muj_03_01_off_01

# .data:0x13E8 | 0x212D8 | size: 0x20
.obj btlgrp_muj_muj_03_01_off_01, local
	.4byte 0x00000002
	.4byte btlparty_muj_muj_03_01_off_01
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default3
	.4byte 0x00000005
.endobj btlgrp_muj_muj_03_01_off_01

# .data:0x1408 | 0x212F8 | size: 0x90
.obj btlparty_muj_muj_03_01_off_02, local
	.4byte unit_poison_pakkun_19_data_38268
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42480000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_poison_pakkun
	.4byte unit_poison_pakkun_19_data_38268
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_poison_pakkun
	.4byte unit_green_chorobon_19_data_366B0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x43020000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_green_chorobon
.endobj btlparty_muj_muj_03_01_off_02

# .data:0x1498 | 0x21388 | size: 0x20
.obj btlgrp_muj_muj_03_01_off_02, local
	.4byte 0x00000003
	.4byte btlparty_muj_muj_03_01_off_02
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default3
	.4byte 0x00000005
.endobj btlgrp_muj_muj_03_01_off_02

# .data:0x14B8 | 0x213A8 | size: 0x90
.obj btlparty_muj_muj_03_01_off_03, local
	.4byte unit_poison_pakkun_19_data_38268
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42480000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_poison_pakkun
	.4byte unit_poison_pakkun_19_data_38268
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_poison_pakkun
	.4byte unit_poison_pakkun_19_data_38268
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x43020000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_poison_pakkun
.endobj btlparty_muj_muj_03_01_off_03

# .data:0x1548 | 0x21438 | size: 0x20
.obj btlgrp_muj_muj_03_01_off_03, local
	.4byte 0x00000003
	.4byte btlparty_muj_muj_03_01_off_03
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default3
	.4byte 0x00000005
.endobj btlgrp_muj_muj_03_01_off_03

# .data:0x1568 | 0x21458 | size: 0x60
.obj btlparty_muj_muj_03_02_off_01, local
	.4byte unit_poison_pakkun_19_data_38268
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_poison_pakkun
	.4byte unit_poison_pakkun_19_data_38268
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_poison_pakkun
.endobj btlparty_muj_muj_03_02_off_01

# .data:0x15C8 | 0x214B8 | size: 0x20
.obj btlgrp_muj_muj_03_02_off_01, local
	.4byte 0x00000002
	.4byte btlparty_muj_muj_03_02_off_01
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default3
	.4byte 0x00000005
.endobj btlgrp_muj_muj_03_02_off_01

# .data:0x15E8 | 0x214D8 | size: 0x90
.obj btlparty_muj_muj_03_02_off_02, local
	.4byte unit_poison_pakkun_19_data_38268
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42480000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_poison_pakkun
	.4byte unit_poison_pakkun_19_data_38268
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_poison_pakkun
	.4byte unit_flower_chorobon_19_data_34990
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x43020000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_flower_chorobon
.endobj btlparty_muj_muj_03_02_off_02

# .data:0x1678 | 0x21568 | size: 0x20
.obj btlgrp_muj_muj_03_02_off_02, local
	.4byte 0x00000003
	.4byte btlparty_muj_muj_03_02_off_02
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default3
	.4byte 0x00000005
.endobj btlgrp_muj_muj_03_02_off_02

# .data:0x1698 | 0x21588 | size: 0x90
.obj btlparty_muj_muj_03_02_off_03, local
	.4byte unit_poison_pakkun_19_data_38268
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42480000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_poison_pakkun
	.4byte unit_poison_pakkun_19_data_38268
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_poison_pakkun
	.4byte unit_poison_pakkun_19_data_38268
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x43020000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_poison_pakkun
.endobj btlparty_muj_muj_03_02_off_03

# .data:0x1728 | 0x21618 | size: 0x20
.obj btlgrp_muj_muj_03_02_off_03, local
	.4byte 0x00000003
	.4byte btlparty_muj_muj_03_02_off_03
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default3
	.4byte 0x00000005
.endobj btlgrp_muj_muj_03_02_off_03

# .data:0x1748 | 0x21638 | size: 0x60
.obj btlparty_muj_muj_03_04_off_01, local
	.4byte unit_flower_chorobon_19_data_34990
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x428C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_flower_chorobon
	.4byte unit_poison_pakkun_19_data_38268
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42DC0000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_poison_pakkun
.endobj btlparty_muj_muj_03_04_off_01

# .data:0x17A8 | 0x21698 | size: 0x20
.obj btlgrp_muj_muj_03_04_off_01, local
	.4byte 0x00000002
	.4byte btlparty_muj_muj_03_04_off_01
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_muj_muj_03_04_off_01

# .data:0x17C8 | 0x216B8 | size: 0x90
.obj btlparty_muj_muj_03_04_off_02, local
	.4byte unit_flower_chorobon_19_data_34990
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42480000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_flower_chorobon
	.4byte unit_poison_pakkun_19_data_38268
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_poison_pakkun
	.4byte unit_green_chorobon_19_data_366B0
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x43020000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_green_chorobon
.endobj btlparty_muj_muj_03_04_off_02

# .data:0x1858 | 0x21748 | size: 0x20
.obj btlgrp_muj_muj_03_04_off_02, local
	.4byte 0x00000003
	.4byte btlparty_muj_muj_03_04_off_02
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_muj_muj_03_04_off_02

# .data:0x1878 | 0x21768 | size: 0x90
.obj btlparty_muj_muj_03_04_off_03, local
	.4byte unit_flower_chorobon_19_data_34990
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42480000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_flower_chorobon
	.4byte unit_poison_pakkun_19_data_38268
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42B40000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_poison_pakkun
	.4byte unit_flower_chorobon_19_data_34990
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x43020000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte battle_item_flower_chorobon
.endobj btlparty_muj_muj_03_04_off_03

# .data:0x1908 | 0x217F8 | size: 0x20
.obj btlgrp_muj_muj_03_04_off_03, local
	.4byte 0x00000003
	.4byte btlparty_muj_muj_03_04_off_03
	.4byte 0x00000019
	.4byte 0x00000019
	.4byte 0x00000032
	.4byte battle_heart_drop_param_default
	.4byte battle_flower_drop_param_default
	.4byte 0x00000005
.endobj btlgrp_muj_muj_03_04_off_03

# .data:0x1928 | 0x21818 | size: 0x18
.obj btlgrpsel_muj_btlno_muj_test1_off, local
	.4byte 0x00000032
	.4byte btlgrp_muj_muj_01_01
	.rel muj_btlstage_data, .L_00020744
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_muj_btlno_muj_test1_off

# .data:0x1940 | 0x21830 | size: 0x18
.obj btlgrpsel_muj_btlno_muj_test2_off, local
	.4byte 0x00000032
	.4byte btlgrp_muj_muj_01_01
	.4byte muj_btlstage_data
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_muj_btlno_muj_test2_off

# .data:0x1958 | 0x21848 | size: 0x18
.obj btlgrpsel_muj_btlno_muj_test3_off, local
	.4byte 0x00000032
	.4byte btlgrp_muj_muj_01_01
	.rel muj_btlstage_data, .L_000203DC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_muj_btlno_muj_test3_off

# .data:0x1970 | 0x21860 | size: 0x18
.obj btlgrpsel_muj_btlno_muj_test4_off, local
	.4byte 0x00000032
	.4byte btlgrp_muj_muj_01_01
	.rel muj_btlstage_data, .L_00020590
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_muj_btlno_muj_test4_off

# .data:0x1988 | 0x21878 | size: 0x18
.obj btlgrpsel_muj_btlno_muj_cortez_off, local
	.4byte 0x00000032
	.4byte btlgrp_muj_muj_cortez
	.rel muj_btlstage_data, .L_00020590
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_muj_btlno_muj_cortez_off

# .data:0x19A0 | 0x21890 | size: 0x18
.obj btlgrpsel_muj_btlno_muj_kanbu_off, local
	.4byte 0x00000032
	.4byte btlgrp_muj_muj_kanbu
	.rel muj_btlstage_data, .L_00020744
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_muj_btlno_muj_kanbu_off

# .data:0x19B8 | 0x218A8 | size: 0x18
.obj btlgrpsel_muj_btlno_muj_01_01_off, local
	.4byte 0x00000032
	.4byte btlgrp_muj_muj_01_01
	.4byte muj_btlstage_data
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_muj_btlno_muj_01_01_off

# .data:0x19D0 | 0x218C0 | size: 0x18
.obj btlgrpsel_muj_btlno_muj_05_01_off, local
	.4byte 0x00000032
	.4byte btlgrp_muj_muj_05_01
	.rel muj_btlstage_data, .L_000203DC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_muj_btlno_muj_05_01_off

# .data:0x19E8 | 0x218D8 | size: 0x18
.obj btlgrpsel_muj_btlno_muj_05_02_off, local
	.4byte 0x00000032
	.4byte btlgrp_muj_muj_05_02
	.rel muj_btlstage_data, .L_000203DC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_muj_btlno_muj_05_02_off

# .data:0x1A00 | 0x218F0 | size: 0x30
.obj btlgrpsel_muj_btlno_muj_02_01_off, local
	.4byte 0x0000000A
	.4byte btlgrp_muj_muj_02_01_off_01
	.rel muj_btlstage_data, .L_000203DC
	.4byte 0x00000014
	.4byte btlgrp_muj_muj_02_01_off_02
	.rel muj_btlstage_data, .L_000203DC
	.4byte 0x0000000A
	.4byte btlgrp_muj_muj_02_01_off_03
	.rel muj_btlstage_data, .L_000203DC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_muj_btlno_muj_02_01_off

# .data:0x1A30 | 0x21920 | size: 0x30
.obj btlgrpsel_muj_btlno_muj_02_02_off, local
	.4byte 0x0000000A
	.4byte btlgrp_muj_muj_02_04_off_01
	.rel muj_btlstage_data, .L_000203DC
	.4byte 0x00000014
	.4byte btlgrp_muj_muj_02_04_off_02
	.rel muj_btlstage_data, .L_000203DC
	.4byte 0x0000000A
	.4byte btlgrp_muj_muj_02_04_off_03
	.rel muj_btlstage_data, .L_000203DC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_muj_btlno_muj_02_02_off

# .data:0x1A60 | 0x21950 | size: 0x30
.obj btlgrpsel_muj_btlno_muj_02_07_off, local
	.4byte 0x0000000A
	.4byte btlgrp_muj_muj_02_07_off_01
	.rel muj_btlstage_data, .L_000203DC
	.4byte 0x00000014
	.4byte btlgrp_muj_muj_02_07_off_02
	.rel muj_btlstage_data, .L_000203DC
	.4byte 0x0000000A
	.4byte btlgrp_muj_muj_02_07_off_03
	.rel muj_btlstage_data, .L_000203DC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_muj_btlno_muj_02_07_off

# .data:0x1A90 | 0x21980 | size: 0x30
.obj btlgrpsel_muj_btlno_muj_03_01_off, local
	.4byte 0x0000000A
	.4byte btlgrp_muj_muj_03_01_off_01
	.rel muj_btlstage_data, .L_000203DC
	.4byte 0x00000014
	.4byte btlgrp_muj_muj_03_01_off_02
	.rel muj_btlstage_data, .L_000203DC
	.4byte 0x0000000A
	.4byte btlgrp_muj_muj_03_01_off_03
	.rel muj_btlstage_data, .L_000203DC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_muj_btlno_muj_03_01_off

# .data:0x1AC0 | 0x219B0 | size: 0x30
.obj btlgrpsel_muj_btlno_muj_03_02_off, local
	.4byte 0x0000000A
	.4byte btlgrp_muj_muj_03_02_off_01
	.rel muj_btlstage_data, .L_000203DC
	.4byte 0x00000014
	.4byte btlgrp_muj_muj_03_02_off_02
	.rel muj_btlstage_data, .L_000203DC
	.4byte 0x0000000A
	.4byte btlgrp_muj_muj_03_02_off_03
	.rel muj_btlstage_data, .L_000203DC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_muj_btlno_muj_03_02_off

# .data:0x1AF0 | 0x219E0 | size: 0x30
.obj btlgrpsel_muj_btlno_muj_03_04_off, local
	.4byte 0x0000000A
	.4byte btlgrp_muj_muj_03_04_off_01
	.rel muj_btlstage_data, .L_000203DC
	.4byte 0x0000000A
	.4byte btlgrp_muj_muj_03_04_off_02
	.rel muj_btlstage_data, .L_000203DC
	.4byte 0x0000000A
	.4byte btlgrp_muj_muj_03_04_off_03
	.rel muj_btlstage_data, .L_000203DC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlgrpsel_muj_btlno_muj_03_04_off

# .data:0x1B20 | 0x21A10 | size: 0x440
.obj btlsetup_muj_tbl_19_data_21A10, global
	.4byte str_マップstg_05_0_muj_00012194
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_muj_btlno_muj_test1_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_muj_000121a4
	.4byte str_マップstg_05_1_muj_000121b8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_muj_btlno_muj_test2_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_muj_000121a4
	.4byte str_マップstg_05_2_muj_000121c8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_muj_btlno_muj_test3_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_muj_000121a4
	.4byte str_マップstg_05_5_muj_000121d8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_muj_btlno_muj_test4_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_muj_000121a4
	.4byte str_コルテス_muj_000121e8
	.4byte str_muj_12_muj_000121f4
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_muj_btlno_muj_cortez_off
	.4byte 0x20000010
	.4byte 0x00000006
	.4byte 0x03030303
	.4byte 0x03030000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_BOSS_STG5_KORTES_muj_000121fc
	.4byte str_幹部その３_muj_00012214
	.4byte str_muj_00_muj_00012220
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_muj_btlno_muj_kanbu_off
	.4byte 0x20000010
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_BOSS_STG3_3RDLEA_muj_00012228
	.4byte str_MUJ01おんりょう１_muj_00012244
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_muj_btlno_muj_01_01_off
	.4byte 0x20000010
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030000
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_CHUBOSS_BATTLE1_muj_00012258
	.4byte str_MUJ01おんりょう２_muj_0001226c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_muj_btlno_muj_05_01_off
	.4byte 0x20000010
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030000
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_CHUBOSS_BATTLE1_muj_00012258
	.4byte str_MUJ01おんりょう３_muj_00012280
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_muj_btlno_muj_05_02_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030000
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_CHUBOSS_BATTLE1_muj_00012258
	.4byte str_MUJ02グリーンチョロボン_muj_00012294
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_muj_btlno_muj_02_01_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030000
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_muj_000121a4
	.4byte str_MUJ02フラワーチョロボン_muj_000122ac
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_muj_btlno_muj_02_02_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030000
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_muj_000121a4
	.4byte str_MUJ02グリーンチョロボン_muj_00012294
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_muj_btlno_muj_02_07_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030000
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_muj_000121a4
	.4byte str_MUJ03ポイズンパックン_muj_000122c4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_muj_btlno_muj_03_01_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030000
	.4byte 0x03030A0A
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_muj_000121a4
	.4byte str_MUJ03ポイズンパックン_muj_000122c4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_muj_btlno_muj_03_02_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030000
	.4byte 0x03030A0A
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_muj_000121a4
	.4byte str_MUJ03フラワーチョロボン_muj_000122dc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte btlgrpsel_muj_btlno_muj_03_04_off
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x03030303
	.4byte 0x03030000
	.4byte 0x03030303
	.4byte 0x03030303
	.4byte 0x03030000
	.4byte 0x03030303
	.4byte 0x01010101
	.4byte 0x01010101
	.4byte str_BGM_ZAKO_BATTLE1_muj_000121a4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btlsetup_muj_tbl_19_data_21A10

# .data:0x1F60 | 0x21E50 | size: 0x80
.obj btl_muj_setup_no_tbl_19_data_21E50, global
	.4byte str_BTLNO_MUJ_TEST1_muj_000122f4
	.4byte 0x00000000
	.4byte str_BTLNO_MUJ_TEST2_muj_00012304
	.4byte 0x00000001
	.4byte str_BTLNO_MUJ_TEST3_muj_00012314
	.4byte 0x00000002
	.4byte str_BTLNO_MUJ_TEST4_muj_00012324
	.4byte 0x00000003
	.4byte str_BTLNO_MUJ_CORTEZ_muj_00012334
	.4byte 0x00000004
	.4byte str_BTLNO_MUJ_KANBU_muj_00012348
	.4byte 0x00000005
	.4byte str_BTLNO_MUJ_01_01_muj_00012358
	.4byte 0x00000006
	.4byte str_BTLNO_MUJ_05_01_muj_00012368
	.4byte 0x00000007
	.4byte str_BTLNO_MUJ_05_02_muj_00012378
	.4byte 0x00000008
	.4byte str_BTLNO_MUJ_02_01_muj_00012388
	.4byte 0x00000009
	.4byte str_BTLNO_MUJ_02_02_muj_00012398
	.4byte 0x0000000A
	.4byte str_BTLNO_MUJ_02_07_muj_000123a8
	.4byte 0x0000000B
	.4byte str_BTLNO_MUJ_03_01_muj_000123b8
	.4byte 0x0000000C
	.4byte str_BTLNO_MUJ_03_02_muj_000123c8
	.4byte 0x0000000D
	.4byte str_BTLNO_MUJ_03_04_muj_000123d8
	.4byte 0x0000000E
	.4byte 0x00000000
	.4byte 0x00000000
.endobj btl_muj_setup_no_tbl_19_data_21E50

# .data:0x1FE0 | 0x21ED0 | size: 0xEC
.obj bgset_muj_wave_event, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C84
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0008005B
	.4byte _wave_offset
	.4byte str_nami_1_muj_000123e8
	.4byte 0xFE363C82
	.4byte 0x00000258
	.4byte 0x00000014
	.4byte 0xFE363C83
	.4byte 0x000000FA
	.4byte 0x00000006
	.4byte 0x0008005B
	.4byte _wave_offset
	.4byte str_nami_2_muj_000123f0
	.4byte 0xFE363C84
	.4byte 0x0000044C
	.4byte 0x00000028
	.4byte 0xFE363C85
	.4byte 0x00000168
	.4byte 0x00000007
	.4byte 0x0008005B
	.4byte _wave_offset
	.4byte str_nami_3_muj_000123f8
	.4byte 0xFE363C86
	.4byte 0x000004E2
	.4byte 0x00000032
	.4byte 0xFE363C87
	.4byte 0x000001C2
	.4byte 0x00000008
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bgset_muj_wave_event

# .data:0x20CC | 0x21FBC | size: 0x48
.obj bgset_muj_sun_event, local
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte str_sunlight_bt_muj_00012400
	.4byte str_sunlight_n64_muj_0001240c
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
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bgset_muj_sun_event

# .data:0x2114 | 0x22004 | size: 0x4
.obj gap_04_00022004_data, global
.hidden gap_04_00022004_data
	.4byte 0x00000000
.endobj gap_04_00022004_data
