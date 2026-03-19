.include "macros.inc"
.file "las_28.o"

# 0x00005E54..0x0000611C | size: 0x2C8
.text
.balign 4

# .text:0x0 | 0x5E54 | size: 0x68
.fn make_name, local
/* 00005E54 00005F20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00005E58 00005F24  7C 08 02 A6 */	mflr r0
/* 00005E5C 00005F28  90 01 00 14 */	stw r0, 0x14(r1)
/* 00005E60 00005F2C  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00005E64 00005F30  7C 7E 1B 78 */	mr r30, r3
/* 00005E68 00005F34  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00005E6C 00005F38  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00005E70 00005F3C  4B FF A2 CD */	bl evtGetValue
/* 00005E74 00005F40  3C 80 00 00 */	lis r4, str_hiPCTd_las_00015ae0@ha
/* 00005E78 00005F44  3C C0 00 00 */	lis r6, name@ha
/* 00005E7C 00005F48  7C 65 1B 78 */	mr r5, r3
/* 00005E80 00005F4C  38 66 00 00 */	addi r3, r6, name@l
/* 00005E84 00005F50  38 84 00 00 */	addi r4, r4, str_hiPCTd_las_00015ae0@l
/* 00005E88 00005F54  4C C6 31 82 */	crclr cr1eq
/* 00005E8C 00005F58  4B FF A2 B1 */	bl sprintf
/* 00005E90 00005F5C  3C 60 00 00 */	lis r3, name@ha
/* 00005E94 00005F60  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00005E98 00005F64  38 A3 00 00 */	addi r5, r3, name@l
/* 00005E9C 00005F68  7F C3 F3 78 */	mr r3, r30
/* 00005EA0 00005F6C  4B FF A2 9D */	bl evtSetValue
/* 00005EA4 00005F70  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00005EA8 00005F74  38 60 00 02 */	li r3, 0x2
/* 00005EAC 00005F78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00005EB0 00005F7C  7C 08 03 A6 */	mtlr r0
/* 00005EB4 00005F80  38 21 00 10 */	addi r1, r1, 0x10
/* 00005EB8 00005F84  4E 80 00 20 */	blr
.endfn make_name

# .text:0x68 | 0x5EBC | size: 0xE4
.fn eff_guruguru, local
/* 00005EBC 00005F88  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 00005EC0 00005F8C  7C 08 02 A6 */	mflr r0
/* 00005EC4 00005F90  90 01 00 54 */	stw r0, 0x54(r1)
/* 00005EC8 00005F94  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 00005ECC 00005F98  F3 E1 00 48 */	psq_st f31, 0x48(r1), 0, qr0
/* 00005ED0 00005F9C  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 00005ED4 00005FA0  F3 C1 00 38 */	psq_st f30, 0x38(r1), 0, qr0
/* 00005ED8 00005FA4  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 00005EDC 00005FA8  F3 A1 00 28 */	psq_st f29, 0x28(r1), 0, qr0
/* 00005EE0 00005FAC  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 00005EE4 00005FB0  7C 7D 1B 78 */	mr r29, r3
/* 00005EE8 00005FB4  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00005EEC 00005FB8  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00005EF0 00005FBC  4B FF A2 4D */	bl evtGetValue
/* 00005EF4 00005FC0  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00005EF8 00005FC4  7C 7E 1B 78 */	mr r30, r3
/* 00005EFC 00005FC8  7F A3 EB 78 */	mr r3, r29
/* 00005F00 00005FCC  4B FF A2 3D */	bl evtGetFloat
/* 00005F04 00005FD0  FF E0 08 90 */	fmr f31, f1
/* 00005F08 00005FD4  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 00005F0C 00005FD8  7F A3 EB 78 */	mr r3, r29
/* 00005F10 00005FDC  4B FF A2 2D */	bl evtGetFloat
/* 00005F14 00005FE0  FF C0 08 90 */	fmr f30, f1
/* 00005F18 00005FE4  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00005F1C 00005FE8  7F A3 EB 78 */	mr r3, r29
/* 00005F20 00005FEC  4B FF A2 1D */	bl evtGetFloat
/* 00005F24 00005FF0  FF A0 08 90 */	fmr f29, f1
/* 00005F28 00005FF4  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00005F2C 00005FF8  7F A3 EB 78 */	mr r3, r29
/* 00005F30 00005FFC  4B FF A2 0D */	bl evtGetFloat
/* 00005F34 00006000  FC 00 08 90 */	fmr f0, f1
/* 00005F38 00006004  38 60 00 00 */	li r3, 0x0
/* 00005F3C 00006008  FC 20 F8 90 */	fmr f1, f31
/* 00005F40 0000600C  38 80 00 03 */	li r4, 0x3
/* 00005F44 00006010  FC 40 F0 90 */	fmr f2, f30
/* 00005F48 00006014  FC 80 00 90 */	fmr f4, f0
/* 00005F4C 00006018  FC 60 E8 90 */	fmr f3, f29
/* 00005F50 0000601C  4B FF A1 ED */	bl effGuruguruN64Entry
/* 00005F54 00006020  3C 80 00 00 */	lis r4, float_0p8_las_00015ae8@ha
/* 00005F58 00006024  80 A3 00 0C */	lwz r5, 0xc(r3)
/* 00005F5C 00006028  38 C4 00 00 */	addi r6, r4, float_0p8_las_00015ae8@l
/* 00005F60 0000602C  7F C4 F3 78 */	mr r4, r30
/* 00005F64 00006030  C0 06 00 00 */	lfs f0, 0x0(r6)
/* 00005F68 00006034  D0 05 00 2C */	stfs f0, 0x2c(r5)
/* 00005F6C 00006038  4B FF A1 D1 */	bl effSetName
/* 00005F70 0000603C  38 60 00 02 */	li r3, 0x2
/* 00005F74 00006040  E3 E1 00 48 */	psq_l f31, 0x48(r1), 0, qr0
/* 00005F78 00006044  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 00005F7C 00006048  E3 C1 00 38 */	psq_l f30, 0x38(r1), 0, qr0
/* 00005F80 0000604C  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 00005F84 00006050  E3 A1 00 28 */	psq_l f29, 0x28(r1), 0, qr0
/* 00005F88 00006054  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 00005F8C 00006058  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 00005F90 0000605C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 00005F94 00006060  7C 08 03 A6 */	mtlr r0
/* 00005F98 00006064  38 21 00 50 */	addi r1, r1, 0x50
/* 00005F9C 00006068  4E 80 00 20 */	blr
.endfn eff_guruguru

# .text:0x14C | 0x5FA0 | size: 0xF4
.fn syuryo_baria_recalc_pos, local
/* 00005FA0 0000606C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 00005FA4 00006070  7C 08 02 A6 */	mflr r0
/* 00005FA8 00006074  3C 60 00 00 */	lis r3, str_ピーチ姫_las_000152e8@ha
/* 00005FAC 00006078  90 01 00 64 */	stw r0, 0x64(r1)
/* 00005FB0 0000607C  38 63 00 00 */	addi r3, r3, str_ピーチ姫_las_000152e8@l
/* 00005FB4 00006080  BF A1 00 54 */	stmw r29, 0x54(r1)
/* 00005FB8 00006084  4B FF A1 85 */	bl npcNameToPtr
/* 00005FBC 00006088  3C 80 00 00 */	lis r4, vec3_las_00015300@ha
/* 00005FC0 0000608C  7C 7D 1B 78 */	mr r29, r3
/* 00005FC4 00006090  38 C4 00 00 */	addi r6, r4, vec3_las_00015300@l
/* 00005FC8 00006094  38 60 00 04 */	li r3, 0x4
/* 00005FCC 00006098  80 A6 00 00 */	lwz r5, 0x0(r6)
/* 00005FD0 0000609C  80 86 00 04 */	lwz r4, 0x4(r6)
/* 00005FD4 000060A0  80 06 00 08 */	lwz r0, 0x8(r6)
/* 00005FD8 000060A4  90 A1 00 08 */	stw r5, 0x8(r1)
/* 00005FDC 000060A8  90 81 00 0C */	stw r4, 0xc(r1)
/* 00005FE0 000060AC  90 01 00 10 */	stw r0, 0x10(r1)
/* 00005FE4 000060B0  4B FF A1 59 */	bl camGetPtr
/* 00005FE8 000060B4  3C 80 00 00 */	lis r4, str_baria_las_00015978@ha
/* 00005FEC 000060B8  7C 7E 1B 78 */	mr r30, r3
/* 00005FF0 000060BC  38 64 00 00 */	addi r3, r4, str_baria_las_00015978@l
/* 00005FF4 000060C0  4B FF A1 49 */	bl effNameToPtr
/* 00005FF8 000060C4  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 00005FFC 000060C8  7C 7F 1B 78 */	mr r31, r3
/* 00006000 000060CC  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 00006004 000060D0  C0 7D 00 8C */	lfs f3, 0x8c(r29)
/* 00006008 000060D4  C0 9D 00 94 */	lfs f4, 0x94(r29)
/* 0000600C 000060D8  4B FF A1 31 */	bl angleABf_1
/* 00006010 000060DC  3C 60 00 00 */	lis r3, float_deg2rad_las_00015aec@ha
/* 00006014 000060E0  FC 00 08 50 */	fneg f0, f1
/* 00006018 000060E4  38 83 00 00 */	addi r4, r3, float_deg2rad_las_00015aec@l
/* 0000601C 000060E8  38 61 00 14 */	addi r3, r1, 0x14
/* 00006020 000060EC  C0 24 00 00 */	lfs f1, 0x0(r4)
/* 00006024 000060F0  38 80 00 59 */	li r4, 0x59
/* 00006028 000060F4  EC 21 00 32 */	fmuls f1, f1, f0
/* 0000602C 000060F8  4B FF A1 11 */	bl PSMTXRotRad
/* 00006030 000060FC  38 81 00 08 */	addi r4, r1, 0x8
/* 00006034 00006100  38 61 00 14 */	addi r3, r1, 0x14
/* 00006038 00006104  7C 85 23 78 */	mr r5, r4
/* 0000603C 00006108  4B FF A1 01 */	bl PSMTXMultVec
/* 00006040 0000610C  C0 3D 00 8C */	lfs f1, 0x8c(r29)
/* 00006044 00006110  38 60 00 02 */	li r3, 0x2
/* 00006048 00006114  C0 01 00 08 */	lfs f0, 0x8(r1)
/* 0000604C 00006118  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00006050 0000611C  EC 01 00 2A */	fadds f0, f1, f0
/* 00006054 00006120  D0 04 00 04 */	stfs f0, 0x4(r4)
/* 00006058 00006124  C0 3D 00 90 */	lfs f1, 0x90(r29)
/* 0000605C 00006128  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 00006060 0000612C  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00006064 00006130  EC 01 00 2A */	fadds f0, f1, f0
/* 00006068 00006134  D0 04 00 08 */	stfs f0, 0x8(r4)
/* 0000606C 00006138  C0 3D 00 94 */	lfs f1, 0x94(r29)
/* 00006070 0000613C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 00006074 00006140  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00006078 00006144  EC 01 00 2A */	fadds f0, f1, f0
/* 0000607C 00006148  D0 04 00 0C */	stfs f0, 0xc(r4)
/* 00006080 0000614C  BB A1 00 54 */	lmw r29, 0x54(r1)
/* 00006084 00006150  80 01 00 64 */	lwz r0, 0x64(r1)
/* 00006088 00006154  7C 08 03 A6 */	mtlr r0
/* 0000608C 00006158  38 21 00 60 */	addi r1, r1, 0x60
/* 00006090 0000615C  4E 80 00 20 */	blr
.endfn syuryo_baria_recalc_pos

# .text:0x240 | 0x6094 | size: 0x88
.fn syuryo_baria, local
/* 00006094 00006160  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00006098 00006164  7C 08 02 A6 */	mflr r0
/* 0000609C 00006168  3C 60 00 00 */	lis r3, str_ピーチ姫_las_000152e8@ha
/* 000060A0 0000616C  90 01 00 14 */	stw r0, 0x14(r1)
/* 000060A4 00006170  38 63 00 00 */	addi r3, r3, str_ピーチ姫_las_000152e8@l
/* 000060A8 00006174  4B FF A0 95 */	bl npcNameToPtr
/* 000060AC 00006178  3C A0 00 00 */	lis r5, float_8_las_00015af0@ha
/* 000060B0 0000617C  3C 80 00 00 */	lis r4, float_10_las_00015af4@ha
/* 000060B4 00006180  7C 67 1B 78 */	mr r7, r3
/* 000060B8 00006184  38 60 00 01 */	li r3, 0x1
/* 000060BC 00006188  38 C5 00 00 */	addi r6, r5, float_8_las_00015af0@l
/* 000060C0 0000618C  38 A4 00 00 */	addi r5, r4, float_10_las_00015af4@l
/* 000060C4 00006190  C0 47 00 90 */	lfs f2, 0x90(r7)
/* 000060C8 00006194  38 80 03 E8 */	li r4, 0x3e8
/* 000060CC 00006198  C0 26 00 00 */	lfs f1, 0x0(r6)
/* 000060D0 0000619C  C0 65 00 00 */	lfs f3, 0x0(r5)
/* 000060D4 000061A0  C0 07 00 94 */	lfs f0, 0x94(r7)
/* 000060D8 000061A4  EC 42 08 28 */	fsubs f2, f2, f1
/* 000060DC 000061A8  C0 27 00 8C */	lfs f1, 0x8c(r7)
/* 000060E0 000061AC  EC 63 00 2A */	fadds f3, f3, f0
/* 000060E4 000061B0  4B FF A0 59 */	bl effSyuryouEntry
/* 000060E8 000061B4  3C A0 00 00 */	lis r5, float_2_las_00015af8@ha
/* 000060EC 000061B8  3C 80 00 00 */	lis r4, str_baria_las_00015978@ha
/* 000060F0 000061BC  38 C5 00 00 */	addi r6, r5, float_2_las_00015af8@l
/* 000060F4 000061C0  80 A3 00 0C */	lwz r5, 0xc(r3)
/* 000060F8 000061C4  C0 06 00 00 */	lfs f0, 0x0(r6)
/* 000060FC 000061C8  38 84 00 00 */	addi r4, r4, str_baria_las_00015978@l
/* 00006100 000061CC  D0 05 00 10 */	stfs f0, 0x10(r5)
/* 00006104 000061D0  4B FF A0 39 */	bl effSetName
/* 00006108 000061D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0000610C 000061D8  38 60 00 02 */	li r3, 0x2
/* 00006110 000061DC  7C 08 03 A6 */	mtlr r0
/* 00006114 000061E0  38 21 00 10 */	addi r1, r1, 0x10
/* 00006118 000061E4  4E 80 00 20 */	blr
.endfn syuryo_baria

# 0x00003808..0x00004098 | size: 0x890
.rodata
.balign 8

# .rodata:0x0 | 0x3808 | size: 0xA
.obj str_S_door2_1_las_00015270, local
	.string "S_door2_1"
.endobj str_S_door2_1_las_00015270

# .rodata:0xA | 0x3812 | size: 0x2
.obj gap_03_00003812_rodata, global
.hidden gap_03_00003812_rodata
	.2byte 0x0000
.endobj gap_03_00003812_rodata

# .rodata:0xC | 0x3814 | size: 0xA
.obj str_S_door2_2_las_0001527c, local
	.string "S_door2_2"
.endobj str_S_door2_2_las_0001527c

# .rodata:0x16 | 0x381E | size: 0x2
.obj gap_03_0000381E_rodata, global
.hidden gap_03_0000381E_rodata
	.2byte 0x0000
.endobj gap_03_0000381E_rodata

# .rodata:0x18 | 0x3820 | size: 0x7
.obj str_w_bero_las_00015288, local
	.string "w_bero"
.endobj str_w_bero_las_00015288

# .rodata:0x1F | 0x3827 | size: 0x1
.obj gap_03_00003827_rodata, global
.hidden gap_03_00003827_rodata
	.byte 0x00
.endobj gap_03_00003827_rodata

# .rodata:0x20 | 0x3828 | size: 0x7
.obj str_las_27_las_00015290, local
	.string "las_27"
.endobj str_las_27_las_00015290

# .rodata:0x27 | 0x382F | size: 0x1
.obj gap_03_0000382F_rodata, global
.hidden gap_03_0000382F_rodata
	.byte 0x00
.endobj gap_03_0000382F_rodata

# .rodata:0x28 | 0x3830 | size: 0x7
.obj str_e_bero_las_00015298, local
	.string "e_bero"
.endobj str_e_bero_las_00015298

# .rodata:0x2F | 0x3837 | size: 0x1
.obj gap_03_00003837_rodata, global
.hidden gap_03_00003837_rodata
	.byte 0x00
.endobj gap_03_00003837_rodata

# .rodata:0x30 | 0x3838 | size: 0x7
.obj str_las_30_las_000152a0, local
	.string "las_30"
.endobj str_las_30_las_000152a0

# .rodata:0x37 | 0x383F | size: 0x1
.obj gap_03_0000383F_rodata, global
.hidden gap_03_0000383F_rodata
	.byte 0x00
.endobj gap_03_0000383F_rodata

# .rodata:0x38 | 0x3840 | size: 0x3
.obj str_me_las_000152a8, local
	.string "me"
.endobj str_me_las_000152a8

# .rodata:0x3B | 0x3843 | size: 0x1
.obj gap_03_00003843_rodata, global
.hidden gap_03_00003843_rodata
	.byte 0x00
.endobj gap_03_00003843_rodata

# .rodata:0x3C | 0x3844 | size: 0xD
.obj str_stg8_las_107_las_000152ac, local
	.string "stg8_las_107"
.endobj str_stg8_las_107_las_000152ac

# .rodata:0x49 | 0x3851 | size: 0x3
.obj gap_03_00003851_rodata, global
.hidden gap_03_00003851_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003851_rodata

# .rodata:0x4C | 0x3854 | size: 0x10
.obj str_stg8_las_107_01_las_000152bc, local
	.string "stg8_las_107_01"
.endobj str_stg8_las_107_01_las_000152bc

# .rodata:0x5C | 0x3864 | size: 0xB
.obj str_シュリョー_las_000152cc, local
	.4byte 0x83568385
	.4byte 0x838A8387
	.byte 0x81, 0x5B, 0x00
.endobj str_シュリョー_las_000152cc

# .rodata:0x67 | 0x386F | size: 0x1
.obj gap_03_0000386F_rodata, global
.hidden gap_03_0000386F_rodata
	.byte 0x00
.endobj gap_03_0000386F_rodata

# .rodata:0x68 | 0x3870 | size: 0x7
.obj str_クッパ_las_000152d8, local
	.4byte 0x834E8362
	.byte 0x83, 0x70, 0x00
.endobj str_クッパ_las_000152d8

# .rodata:0x6F | 0x3877 | size: 0x1
.obj gap_03_00003877_rodata, global
.hidden gap_03_00003877_rodata
	.byte 0x00
.endobj gap_03_00003877_rodata

# .rodata:0x70 | 0x3878 | size: 0x5
.obj str_ババ_las_000152e0, local
	.4byte 0x836F836F
	.byte 0x00
.endobj str_ババ_las_000152e0

# .rodata:0x75 | 0x387D | size: 0x3
.obj gap_03_0000387D_rodata, global
.hidden gap_03_0000387D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000387D_rodata

# .rodata:0x78 | 0x3880 | size: 0x9
.obj str_ピーチ姫_las_000152e8, local
	.4byte 0x8373815B
	.4byte 0x83609550
	.byte 0x00
.endobj str_ピーチ姫_las_000152e8

# .rodata:0x81 | 0x3889 | size: 0x3
.obj gap_03_00003889_rodata, global
.hidden gap_03_00003889_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003889_rodata

# .rodata:0x84 | 0x388C | size: 0xC
.obj str_stg8_las_50_las_000152f4, local
	.string "stg8_las_50"
.endobj str_stg8_las_50_las_000152f4

# .rodata:0x90 | 0x3898 | size: 0xC
.obj vec3_las_00015300, local
	.4byte 0x00000000
	.4byte 0xC1000000
	.4byte 0x41200000
.endobj vec3_las_00015300

# .rodata:0x9C | 0x38A4 | size: 0x4
.obj str_hit_las_0001530c, local
	.string "hit"
.endobj str_hit_las_0001530c

# .rodata:0xA0 | 0x38A8 | size: 0xC
.obj str_thunder_n64_las_00015310, local
	.string "thunder_n64"
.endobj str_thunder_n64_las_00015310

# .rodata:0xAC | 0x38B4 | size: 0x19
.obj str_SFX_STG8_SHURYO_THUN_las_0001531c, local
	.string "SFX_STG8_SHURYO_THUNDER1"
.endobj str_SFX_STG8_SHURYO_THUN_las_0001531c

# .rodata:0xC5 | 0x38CD | size: 0x3
.obj gap_03_000038CD_rodata, global
.hidden gap_03_000038CD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000038CD_rodata

# .rodata:0xC8 | 0x38D0 | size: 0x8
.obj str_PNK_D_5_las_00015338, local
	.string "PNK_D_5"
.endobj str_PNK_D_5_las_00015338

# .rodata:0xD0 | 0x38D8 | size: 0x8
.obj str_PKR_D_5_las_00015340, local
	.string "PKR_D_5"
.endobj str_PKR_D_5_las_00015340

# .rodata:0xD8 | 0x38E0 | size: 0x8
.obj str_PYS_D_5_las_00015348, local
	.string "PYS_D_5"
.endobj str_PYS_D_5_las_00015348

# .rodata:0xE0 | 0x38E8 | size: 0x8
.obj str_PTR_D_4_las_00015350, local
	.string "PTR_D_4"
.endobj str_PTR_D_4_las_00015350

# .rodata:0xE8 | 0x38F0 | size: 0x4
.obj str_D_4_las_00015358, local
	.string "D_4"
.endobj str_D_4_las_00015358

# .rodata:0xEC | 0x38F4 | size: 0x8
.obj str_PWD_D_5_las_0001535c, local
	.string "PWD_D_5"
.endobj str_PWD_D_5_las_0001535c

# .rodata:0xF4 | 0x38FC | size: 0x8
.obj str_PCH_D_4_las_00015364, local
	.string "PCH_D_4"
.endobj str_PCH_D_4_las_00015364

# .rodata:0xFC | 0x3904 | size: 0x8
.obj str_PNK_D_3_las_0001536c, local
	.string "PNK_D_3"
.endobj str_PNK_D_3_las_0001536c

# .rodata:0x104 | 0x390C | size: 0x8
.obj str_PKR_D_3_las_00015374, local
	.string "PKR_D_3"
.endobj str_PKR_D_3_las_00015374

# .rodata:0x10C | 0x3914 | size: 0x8
.obj str_PYS_D_3_las_0001537c, local
	.string "PYS_D_3"
.endobj str_PYS_D_3_las_0001537c

# .rodata:0x114 | 0x391C | size: 0x8
.obj str_PTR_D_3_las_00015384, local
	.string "PTR_D_3"
.endobj str_PTR_D_3_las_00015384

# .rodata:0x11C | 0x3924 | size: 0x4
.obj str_D_3_las_0001538c, local
	.string "D_3"
.endobj str_D_3_las_0001538c

# .rodata:0x120 | 0x3928 | size: 0x8
.obj str_PWD_D_3_las_00015390, local
	.string "PWD_D_3"
.endobj str_PWD_D_3_las_00015390

# .rodata:0x128 | 0x3930 | size: 0x8
.obj str_PCH_D_3_las_00015398, local
	.string "PCH_D_3"
.endobj str_PCH_D_3_las_00015398

# .rodata:0x130 | 0x3938 | size: 0x7
.obj str_kemuri_las_000153a0, local
	.string "kemuri"
.endobj str_kemuri_las_000153a0

# .rodata:0x137 | 0x393F | size: 0x1
.obj gap_03_0000393F_rodata, global
.hidden gap_03_0000393F_rodata
	.byte 0x00
.endobj gap_03_0000393F_rodata

# .rodata:0x138 | 0x3940 | size: 0xD
.obj str_kemuri12_n64_las_000153a8, local
	.string "kemuri12_n64"
.endobj str_kemuri12_n64_las_000153a8

# .rodata:0x145 | 0x394D | size: 0x3
.obj gap_03_0000394D_rodata, global
.hidden gap_03_0000394D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000394D_rodata

# .rodata:0x148 | 0x3950 | size: 0x6
.obj str_M_D_1_las_000153b8, local
	.string "M_D_1"
.endobj str_M_D_1_las_000153b8

# .rodata:0x14E | 0x3956 | size: 0x2
.obj gap_03_00003956_rodata, global
.hidden gap_03_00003956_rodata
	.2byte 0x0000
.endobj gap_03_00003956_rodata

# .rodata:0x150 | 0x3958 | size: 0x16
.obj str_SFX_MARIO_FALL_CRUSH_las_000153c0, local
	.string "SFX_MARIO_FALL_CRUSH1"
.endobj str_SFX_MARIO_FALL_CRUSH_las_000153c0

# .rodata:0x166 | 0x396E | size: 0x2
.obj gap_03_0000396E_rodata, global
.hidden gap_03_0000396E_rodata
	.2byte 0x0000
.endobj gap_03_0000396E_rodata

# .rodata:0x168 | 0x3970 | size: 0x6
.obj str_M_D_2_las_000153d8, local
	.string "M_D_2"
.endobj str_M_D_2_las_000153d8

# .rodata:0x16E | 0x3976 | size: 0x2
.obj gap_03_00003976_rodata, global
.hidden gap_03_00003976_rodata
	.2byte 0x0000
.endobj gap_03_00003976_rodata

# .rodata:0x170 | 0x3978 | size: 0x19
.obj str_SFX_STG8_SHURYO_THUN_las_000153e0, local
	.string "SFX_STG8_SHURYO_THUNDER2"
.endobj str_SFX_STG8_SHURYO_THUN_las_000153e0

# .rodata:0x189 | 0x3991 | size: 0x3
.obj gap_03_00003991_rodata, global
.hidden gap_03_00003991_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003991_rodata

# .rodata:0x18C | 0x3994 | size: 0xC
.obj str_stg8_las_51_las_000153fc, local
	.string "stg8_las_51"
.endobj str_stg8_las_51_las_000153fc

# .rodata:0x198 | 0x39A0 | size: 0x16
.obj str_BGM_EVT_STG8_3RDHEAD_las_00015408, local
	.string "BGM_EVT_STG8_3RDHEAD1"
.endobj str_BGM_EVT_STG8_3RDHEAD_las_00015408

# .rodata:0x1AE | 0x39B6 | size: 0x2
.obj gap_03_000039B6_rodata, global
.hidden gap_03_000039B6_rodata
	.2byte 0x0000
.endobj gap_03_000039B6_rodata

# .rodata:0x1B0 | 0x39B8 | size: 0xC
.obj str_stg8_las_52_las_00015420, local
	.string "stg8_las_52"
.endobj str_stg8_las_52_las_00015420

# .rodata:0x1BC | 0x39C4 | size: 0xC
.obj str_stg8_las_53_las_0001542c, local
	.string "stg8_las_53"
.endobj str_stg8_las_53_las_0001542c

# .rodata:0x1C8 | 0x39D0 | size: 0x6
.obj str_M_I_Y_las_00015438, local
	.string "M_I_Y"
.endobj str_M_I_Y_las_00015438

# .rodata:0x1CE | 0x39D6 | size: 0x2
.obj gap_03_000039D6_rodata, global
.hidden gap_03_000039D6_rodata
	.2byte 0x0000
.endobj gap_03_000039D6_rodata

# .rodata:0x1D0 | 0x39D8 | size: 0xC
.obj str_stg8_las_54_las_00015440, local
	.string "stg8_las_54"
.endobj str_stg8_las_54_las_00015440

# .rodata:0x1DC | 0x39E4 | size: 0xC
.obj str_stg8_las_55_las_0001544c, local
	.string "stg8_las_55"
.endobj str_stg8_las_55_las_0001544c

# .rodata:0x1E8 | 0x39F0 | size: 0xC
.obj str_stg8_las_56_las_00015458, local
	.string "stg8_las_56"
.endobj str_stg8_las_56_las_00015458

# .rodata:0x1F4 | 0x39FC | size: 0xC
.obj str_stg8_las_57_las_00015464, local
	.string "stg8_las_57"
.endobj str_stg8_las_57_las_00015464

# .rodata:0x200 | 0x3A08 | size: 0xC
.obj str_stg8_las_58_las_00015470, local
	.string "stg8_las_58"
.endobj str_stg8_las_58_las_00015470

# .rodata:0x20C | 0x3A14 | size: 0xC
.obj str_stg8_las_60_las_0001547c, local
	.string "stg8_las_60"
.endobj str_stg8_las_60_las_0001547c

# .rodata:0x218 | 0x3A20 | size: 0xC
.obj str_stg8_las_61_las_00015488, local
	.string "stg8_las_61"
.endobj str_stg8_las_61_las_00015488

# .rodata:0x224 | 0x3A2C | size: 0xC
.obj str_stg8_las_62_las_00015494, local
	.string "stg8_las_62"
.endobj str_stg8_las_62_las_00015494

# .rodata:0x230 | 0x3A38 | size: 0xC
.obj str_stg8_las_63_las_000154a0, local
	.string "stg8_las_63"
.endobj str_stg8_las_63_las_000154a0

# .rodata:0x23C | 0x3A44 | size: 0xC
.obj str_stg8_las_64_las_000154ac, local
	.string "stg8_las_64"
.endobj str_stg8_las_64_las_000154ac

# .rodata:0x248 | 0x3A50 | size: 0x6
.obj str_M_R_1_las_000154b8, local
	.string "M_R_1"
.endobj str_M_R_1_las_000154b8

# .rodata:0x24E | 0x3A56 | size: 0x2
.obj gap_03_00003A56_rodata, global
.hidden gap_03_00003A56_rodata
	.2byte 0x0000
.endobj gap_03_00003A56_rodata

# .rodata:0x250 | 0x3A58 | size: 0x4
.obj str_S_3_las_000154c0, local
	.string "S_3"
.endobj str_S_3_las_000154c0

# .rodata:0x254 | 0x3A5C | size: 0x4
.obj str_T_4_las_000154c4, local
	.string "T_4"
.endobj str_T_4_las_000154c4

# .rodata:0x258 | 0x3A60 | size: 0xC
.obj str_stg8_las_70_las_000154c8, local
	.string "stg8_las_70"
.endobj str_stg8_las_70_las_000154c8

# .rodata:0x264 | 0x3A6C | size: 0xC
.obj str_stg8_las_71_las_000154d4, local
	.string "stg8_las_71"
.endobj str_stg8_las_71_las_000154d4

# .rodata:0x270 | 0x3A78 | size: 0xC
.obj str_stg8_las_72_las_000154e0, local
	.string "stg8_las_72"
.endobj str_stg8_las_72_las_000154e0

# .rodata:0x27C | 0x3A84 | size: 0xB
.obj str_OFF_hei_07_las_000154ec, local
	.string "OFF_hei_07"
.endobj str_OFF_hei_07_las_000154ec

# .rodata:0x287 | 0x3A8F | size: 0x1
.obj gap_03_00003A8F_rodata, global
.hidden gap_03_00003A8F_rodata
	.byte 0x00
.endobj gap_03_00003A8F_rodata

# .rodata:0x288 | 0x3A90 | size: 0x4
.obj str_img_las_000154f8, local
	.string "img"
.endobj str_img_las_000154f8

# .rodata:0x28C | 0x3A94 | size: 0x17
.obj str_SFX_STG8_PEACH_APPEA_las_000154fc, local
	.string "SFX_STG8_PEACH_APPEAR1"
.endobj str_SFX_STG8_PEACH_APPEA_las_000154fc

# .rodata:0x2A3 | 0x3AAB | size: 0x1
.obj gap_03_00003AAB_rodata, global
.hidden gap_03_00003AAB_rodata
	.byte 0x00
.endobj gap_03_00003AAB_rodata

# .rodata:0x2A4 | 0x3AAC | size: 0x7
.obj str_P_S_6F_las_00015514, local
	.string "P_S_6F"
.endobj str_P_S_6F_las_00015514

# .rodata:0x2AB | 0x3AB3 | size: 0x1
.obj gap_03_00003AB3_rodata, global
.hidden gap_03_00003AB3_rodata
	.byte 0x00
.endobj gap_03_00003AB3_rodata

# .rodata:0x2AC | 0x3AB4 | size: 0x1B
.obj str_SFX_BOSS_SRYO_LIGHT__las_0001551c, local
	.string "SFX_BOSS_SRYO_LIGHT_ROUND1"
.endobj str_SFX_BOSS_SRYO_LIGHT__las_0001551c

# .rodata:0x2C7 | 0x3ACF | size: 0x1
.obj gap_03_00003ACF_rodata, global
.hidden gap_03_00003ACF_rodata
	.byte 0x00
.endobj gap_03_00003ACF_rodata

# .rodata:0x2C8 | 0x3AD0 | size: 0x4
.obj str_A_1_las_00015538, local
	.string "A_1"
.endobj str_A_1_las_00015538

# .rodata:0x2CC | 0x3AD4 | size: 0x7
.obj str_P_A_4F_las_0001553c, local
	.string "P_A_4F"
.endobj str_P_A_4F_las_0001553c

# .rodata:0x2D3 | 0x3ADB | size: 0x1
.obj gap_03_00003ADB_rodata, global
.hidden gap_03_00003ADB_rodata
	.byte 0x00
.endobj gap_03_00003ADB_rodata

# .rodata:0x2D4 | 0x3ADC | size: 0x7
.obj str_P_S_3F_las_00015544, local
	.string "P_S_3F"
.endobj str_P_S_3F_las_00015544

# .rodata:0x2DB | 0x3AE3 | size: 0x1
.obj gap_03_00003AE3_rodata, global
.hidden gap_03_00003AE3_rodata
	.byte 0x00
.endobj gap_03_00003AE3_rodata

# .rodata:0x2DC | 0x3AE4 | size: 0x7
.obj str_P_T_3F_las_0001554c, local
	.string "P_T_3F"
.endobj str_P_T_3F_las_0001554c

# .rodata:0x2E3 | 0x3AEB | size: 0x1
.obj gap_03_00003AEB_rodata, global
.hidden gap_03_00003AEB_rodata
	.byte 0x00
.endobj gap_03_00003AEB_rodata

# .rodata:0x2E4 | 0x3AEC | size: 0xC
.obj str_stg8_las_73_las_00015554, local
	.string "stg8_las_73"
.endobj str_stg8_las_73_las_00015554

# .rodata:0x2F0 | 0x3AF8 | size: 0x1D
.obj str_SFX_VOICE_PEACH_SURP_las_00015560, local
	.string "SFX_VOICE_PEACH_SURPRISED1_2"
.endobj str_SFX_VOICE_PEACH_SURP_las_00015560

# .rodata:0x30D | 0x3B15 | size: 0x3
.obj gap_03_00003B15_rodata, global
.hidden gap_03_00003B15_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003B15_rodata

# .rodata:0x310 | 0x3B18 | size: 0x7
.obj str_P_B_1F_las_00015580, local
	.string "P_B_1F"
.endobj str_P_B_1F_las_00015580

# .rodata:0x317 | 0x3B1F | size: 0x1
.obj gap_03_00003B1F_rodata, global
.hidden gap_03_00003B1F_rodata
	.byte 0x00
.endobj gap_03_00003B1F_rodata

# .rodata:0x318 | 0x3B20 | size: 0x7
.obj str_P_S_4F_las_00015588, local
	.string "P_S_4F"
.endobj str_P_S_4F_las_00015588

# .rodata:0x31F | 0x3B27 | size: 0x1
.obj gap_03_00003B27_rodata, global
.hidden gap_03_00003B27_rodata
	.byte 0x00
.endobj gap_03_00003B27_rodata

# .rodata:0x320 | 0x3B28 | size: 0x7
.obj str_P_T_4F_las_00015590, local
	.string "P_T_4F"
.endobj str_P_T_4F_las_00015590

# .rodata:0x327 | 0x3B2F | size: 0x1
.obj gap_03_00003B2F_rodata, global
.hidden gap_03_00003B2F_rodata
	.byte 0x00
.endobj gap_03_00003B2F_rodata

# .rodata:0x328 | 0x3B30 | size: 0xC
.obj str_stg8_las_74_las_00015598, local
	.string "stg8_las_74"
.endobj str_stg8_las_74_las_00015598

# .rodata:0x334 | 0x3B3C | size: 0x1B
.obj str_SFX_VOICE_MARIO_SURP_las_000155a4, local
	.string "SFX_VOICE_MARIO_SURPRISED2"
.endobj str_SFX_VOICE_MARIO_SURP_las_000155a4

# .rodata:0x34F | 0x3B57 | size: 0x1
.obj gap_03_00003B57_rodata, global
.hidden gap_03_00003B57_rodata
	.byte 0x00
.endobj gap_03_00003B57_rodata

# .rodata:0x350 | 0x3B58 | size: 0x7
.obj str_M_N_5B_las_000155c0, local
	.string "M_N_5B"
.endobj str_M_N_5B_las_000155c0

# .rodata:0x357 | 0x3B5F | size: 0x1
.obj gap_03_00003B5F_rodata, global
.hidden gap_03_00003B5F_rodata
	.byte 0x00
.endobj gap_03_00003B5F_rodata

# .rodata:0x358 | 0x3B60 | size: 0xC
.obj str_stg8_las_75_las_000155c8, local
	.string "stg8_las_75"
.endobj str_stg8_las_75_las_000155c8

# .rodata:0x364 | 0x3B6C | size: 0x7
.obj str_P_S_5F_las_000155d4, local
	.string "P_S_5F"
.endobj str_P_S_5F_las_000155d4

# .rodata:0x36B | 0x3B73 | size: 0x1
.obj gap_03_00003B73_rodata, global
.hidden gap_03_00003B73_rodata
	.byte 0x00
.endobj gap_03_00003B73_rodata

# .rodata:0x36C | 0x3B74 | size: 0x6
.obj str_M_S_1_las_000155dc, local
	.string "M_S_1"
.endobj str_M_S_1_las_000155dc

# .rodata:0x372 | 0x3B7A | size: 0x2
.obj gap_03_00003B7A_rodata, global
.hidden gap_03_00003B7A_rodata
	.2byte 0x0000
.endobj gap_03_00003B7A_rodata

# .rodata:0x374 | 0x3B7C | size: 0xC
.obj str_stg8_las_76_las_000155e4, local
	.string "stg8_las_76"
.endobj str_stg8_las_76_las_000155e4

# .rodata:0x380 | 0x3B88 | size: 0xC
.obj str_stg8_las_77_las_000155f0, local
	.string "stg8_las_77"
.endobj str_stg8_las_77_las_000155f0

# .rodata:0x38C | 0x3B94 | size: 0xC
.obj str_stg8_las_78_las_000155fc, local
	.string "stg8_las_78"
.endobj str_stg8_las_78_las_000155fc

# .rodata:0x398 | 0x3BA0 | size: 0x5
.obj str_A_3A_las_00015608, local
	.string "A_3A"
.endobj str_A_3A_las_00015608

# .rodata:0x39D | 0x3BA5 | size: 0x3
.obj gap_03_00003BA5_rodata, global
.hidden gap_03_00003BA5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003BA5_rodata

# .rodata:0x3A0 | 0x3BA8 | size: 0x5
.obj str_A_3B_las_00015610, local
	.string "A_3B"
.endobj str_A_3B_las_00015610

# .rodata:0x3A5 | 0x3BAD | size: 0x3
.obj gap_03_00003BAD_rodata, global
.hidden gap_03_00003BAD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003BAD_rodata

# .rodata:0x3A8 | 0x3BB0 | size: 0x5
.obj str_A_3C_las_00015618, local
	.string "A_3C"
.endobj str_A_3C_las_00015618

# .rodata:0x3AD | 0x3BB5 | size: 0x3
.obj gap_03_00003BB5_rodata, global
.hidden gap_03_00003BB5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003BB5_rodata

# .rodata:0x3B0 | 0x3BB8 | size: 0x1D
.obj str_SFX_VOICE_MARIO_LAND_las_00015620, local
	.string "SFX_VOICE_MARIO_LAND_DAMAGE2"
.endobj str_SFX_VOICE_MARIO_LAND_las_00015620

# .rodata:0x3CD | 0x3BD5 | size: 0x3
.obj gap_03_00003BD5_rodata, global
.hidden gap_03_00003BD5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003BD5_rodata

# .rodata:0x3D0 | 0x3BD8 | size: 0xC
.obj str_stg8_las_79_las_00015640, local
	.string "stg8_las_79"
.endobj str_stg8_las_79_las_00015640

# .rodata:0x3DC | 0x3BE4 | size: 0xC
.obj str_stg8_las_80_las_0001564c, local
	.string "stg8_las_80"
.endobj str_stg8_las_80_las_0001564c

# .rodata:0x3E8 | 0x3BF0 | size: 0x8
.obj str_PKR_S_1_las_00015658, local
	.string "PKR_S_1"
.endobj str_PKR_S_1_las_00015658

# .rodata:0x3F0 | 0x3BF8 | size: 0x8
.obj str_PNK_S_1_las_00015660, local
	.string "PNK_S_1"
.endobj str_PNK_S_1_las_00015660

# .rodata:0x3F8 | 0x3C00 | size: 0x8
.obj str_PYS_S_1_las_00015668, local
	.string "PYS_S_1"
.endobj str_PYS_S_1_las_00015668

# .rodata:0x400 | 0x3C08 | size: 0x8
.obj str_PWD_S_1_las_00015670, local
	.string "PWD_S_1"
.endobj str_PWD_S_1_las_00015670

# .rodata:0x408 | 0x3C10 | size: 0x4
.obj str_S_1_las_00015678, local
	.string "S_1"
.endobj str_S_1_las_00015678

# .rodata:0x40C | 0x3C14 | size: 0x8
.obj str_PTR_S_1_las_0001567c, local
	.string "PTR_S_1"
.endobj str_PTR_S_1_las_0001567c

# .rodata:0x414 | 0x3C1C | size: 0x8
.obj str_PCH_S_1_las_00015684, local
	.string "PCH_S_1"
.endobj str_PCH_S_1_las_00015684

# .rodata:0x41C | 0x3C24 | size: 0x6
.obj str_M_U_3_las_0001568c, local
	.string "M_U_3"
.endobj str_M_U_3_las_0001568c

# .rodata:0x422 | 0x3C2A | size: 0x2
.obj gap_03_00003C2A_rodata, global
.hidden gap_03_00003C2A_rodata
	.2byte 0x0000
.endobj gap_03_00003C2A_rodata

# .rodata:0x424 | 0x3C2C | size: 0x1B
.obj str_SFX_VOICE_MARIO_SURP_las_00015694, local
	.string "SFX_VOICE_MARIO_SURPRISED1"
.endobj str_SFX_VOICE_MARIO_SURP_las_00015694

# .rodata:0x43F | 0x3C47 | size: 0x1
.obj gap_03_00003C47_rodata, global
.hidden gap_03_00003C47_rodata
	.byte 0x00
.endobj gap_03_00003C47_rodata

# .rodata:0x440 | 0x3C48 | size: 0xC
.obj str_stg8_las_81_las_000156b0, local
	.string "stg8_las_81"
.endobj str_stg8_las_81_las_000156b0

# .rodata:0x44C | 0x3C54 | size: 0x6
.obj str_M_S_3_las_000156bc, local
	.string "M_S_3"
.endobj str_M_S_3_las_000156bc

# .rodata:0x452 | 0x3C5A | size: 0x2
.obj gap_03_00003C5A_rodata, global
.hidden gap_03_00003C5A_rodata
	.2byte 0x0000
.endobj gap_03_00003C5A_rodata

# .rodata:0x454 | 0x3C5C | size: 0xC
.obj str_stg8_las_82_las_000156c4, local
	.string "stg8_las_82"
.endobj str_stg8_las_82_las_000156c4

# .rodata:0x460 | 0x3C68 | size: 0x12
.obj str_stg8_las_82_yesno_las_000156d0, local
	.string "stg8_las_82_yesno"
.endobj str_stg8_las_82_yesno_las_000156d0

# .rodata:0x472 | 0x3C7A | size: 0x2
.obj gap_03_00003C7A_rodata, global
.hidden gap_03_00003C7A_rodata
	.2byte 0x0000
.endobj gap_03_00003C7A_rodata

# .rodata:0x474 | 0x3C7C | size: 0xC
.obj str_stg8_las_83_las_000156e4, local
	.string "stg8_las_83"
.endobj str_stg8_las_83_las_000156e4

# .rodata:0x480 | 0x3C88 | size: 0xC
.obj str_stg8_las_84_las_000156f0, local
	.string "stg8_las_84"
.endobj str_stg8_las_84_las_000156f0

# .rodata:0x48C | 0x3C94 | size: 0x16
.obj str_SFX_STG8_KOOPA_QUAKE_las_000156fc, local
	.string "SFX_STG8_KOOPA_QUAKE1"
.endobj str_SFX_STG8_KOOPA_QUAKE_las_000156fc

# .rodata:0x4A2 | 0x3CAA | size: 0x2
.obj gap_03_00003CAA_rodata, global
.hidden gap_03_00003CAA_rodata
	.2byte 0x0000
.endobj gap_03_00003CAA_rodata

# .rodata:0x4A4 | 0x3CAC | size: 0x18
.obj str_SFX_STG8_CEILING_BRE_las_00015714, local
	.string "SFX_STG8_CEILING_BREAK1"
.endobj str_SFX_STG8_CEILING_BRE_las_00015714

# .rodata:0x4BC | 0x3CC4 | size: 0xB
.obj str_hokori_n64_las_0001572c, local
	.string "hokori_n64"
.endobj str_hokori_n64_las_0001572c

# .rodata:0x4C7 | 0x3CCF | size: 0x1
.obj gap_03_00003CCF_rodata, global
.hidden gap_03_00003CCF_rodata
	.byte 0x00
.endobj gap_03_00003CCF_rodata

# .rodata:0x4C8 | 0x3CD0 | size: 0xC
.obj str_stg8_las_85_las_00015738, local
	.string "stg8_las_85"
.endobj str_stg8_las_85_las_00015738

# .rodata:0x4D4 | 0x3CDC | size: 0xC
.obj str_stg8_las_86_las_00015744, local
	.string "stg8_las_86"
.endobj str_stg8_las_86_las_00015744

# .rodata:0x4E0 | 0x3CE8 | size: 0x8
.obj str_KPA_D_1_las_00015750, local
	.string "KPA_D_1"
.endobj str_KPA_D_1_las_00015750

# .rodata:0x4E8 | 0x3CF0 | size: 0x18
.obj str_SFX_STG8_CEILING_BRE_las_00015758, local
	.string "SFX_STG8_CEILING_BREAK2"
.endobj str_SFX_STG8_CEILING_BRE_las_00015758

# .rodata:0x500 | 0x3D08 | size: 0xA
.obj str_S_gareki1_las_00015770, local
	.string "S_gareki1"
.endobj str_S_gareki1_las_00015770

# .rodata:0x50A | 0x3D12 | size: 0x2
.obj gap_03_00003D12_rodata, global
.hidden gap_03_00003D12_rodata
	.2byte 0x0000
.endobj gap_03_00003D12_rodata

# .rodata:0x50C | 0x3D14 | size: 0xA
.obj str_S_gareki8_las_0001577c, local
	.string "S_gareki8"
.endobj str_S_gareki8_las_0001577c

# .rodata:0x516 | 0x3D1E | size: 0x2
.obj gap_03_00003D1E_rodata, global
.hidden gap_03_00003D1E_rodata
	.2byte 0x0000
.endobj gap_03_00003D1E_rodata

# .rodata:0x518 | 0x3D20 | size: 0xA
.obj str_S_gareki4_las_00015788, local
	.string "S_gareki4"
.endobj str_S_gareki4_las_00015788

# .rodata:0x522 | 0x3D2A | size: 0x2
.obj gap_03_00003D2A_rodata, global
.hidden gap_03_00003D2A_rodata
	.2byte 0x0000
.endobj gap_03_00003D2A_rodata

# .rodata:0x524 | 0x3D2C | size: 0xA
.obj str_S_gareki9_las_00015794, local
	.string "S_gareki9"
.endobj str_S_gareki9_las_00015794

# .rodata:0x52E | 0x3D36 | size: 0x2
.obj gap_03_00003D36_rodata, global
.hidden gap_03_00003D36_rodata
	.2byte 0x0000
.endobj gap_03_00003D36_rodata

# .rodata:0x530 | 0x3D38 | size: 0xA
.obj str_S_gareki5_las_000157a0, local
	.string "S_gareki5"
.endobj str_S_gareki5_las_000157a0

# .rodata:0x53A | 0x3D42 | size: 0x2
.obj gap_03_00003D42_rodata, global
.hidden gap_03_00003D42_rodata
	.2byte 0x0000
.endobj gap_03_00003D42_rodata

# .rodata:0x53C | 0x3D44 | size: 0xA
.obj str_S_gareki7_las_000157ac, local
	.string "S_gareki7"
.endobj str_S_gareki7_las_000157ac

# .rodata:0x546 | 0x3D4E | size: 0x2
.obj gap_03_00003D4E_rodata, global
.hidden gap_03_00003D4E_rodata
	.2byte 0x0000
.endobj gap_03_00003D4E_rodata

# .rodata:0x548 | 0x3D50 | size: 0xB
.obj str_S_gareki10_las_000157b8, local
	.string "S_gareki10"
.endobj str_S_gareki10_las_000157b8

# .rodata:0x553 | 0x3D5B | size: 0x1
.obj gap_03_00003D5B_rodata, global
.hidden gap_03_00003D5B_rodata
	.byte 0x00
.endobj gap_03_00003D5B_rodata

# .rodata:0x554 | 0x3D5C | size: 0xA
.obj str_S_gareki6_las_000157c4, local
	.string "S_gareki6"
.endobj str_S_gareki6_las_000157c4

# .rodata:0x55E | 0x3D66 | size: 0x2
.obj gap_03_00003D66_rodata, global
.hidden gap_03_00003D66_rodata
	.2byte 0x0000
.endobj gap_03_00003D66_rodata

# .rodata:0x560 | 0x3D68 | size: 0xA
.obj str_S_gareki3_las_000157d0, local
	.string "S_gareki3"
.endobj str_S_gareki3_las_000157d0

# .rodata:0x56A | 0x3D72 | size: 0x2
.obj gap_03_00003D72_rodata, global
.hidden gap_03_00003D72_rodata
	.2byte 0x0000
.endobj gap_03_00003D72_rodata

# .rodata:0x56C | 0x3D74 | size: 0xA
.obj str_S_gareki2_las_000157dc, local
	.string "S_gareki2"
.endobj str_S_gareki2_las_000157dc

# .rodata:0x576 | 0x3D7E | size: 0x2
.obj gap_03_00003D7E_rodata, global
.hidden gap_03_00003D7E_rodata
	.2byte 0x0000
.endobj gap_03_00003D7E_rodata

# .rodata:0x578 | 0x3D80 | size: 0x17
.obj str_SFX_STG8_KOOPA_STRIK_las_000157e8, local
	.string "SFX_STG8_KOOPA_STRIKE1"
.endobj str_SFX_STG8_KOOPA_STRIK_las_000157e8

# .rodata:0x58F | 0x3D97 | size: 0x1
.obj gap_03_00003D97_rodata, global
.hidden gap_03_00003D97_rodata
	.byte 0x00
.endobj gap_03_00003D97_rodata

# .rodata:0x590 | 0x3D98 | size: 0x17
.obj str_SFX_STG8_KOOPA_STRIK_las_00015800, local
	.string "SFX_STG8_KOOPA_STRIKE2"
.endobj str_SFX_STG8_KOOPA_STRIK_las_00015800

# .rodata:0x5A7 | 0x3DAF | size: 0x1
.obj gap_03_00003DAF_rodata, global
.hidden gap_03_00003DAF_rodata
	.byte 0x00
.endobj gap_03_00003DAF_rodata

# .rodata:0x5A8 | 0x3DB0 | size: 0x1C
.obj str_SFX_VOICE_KOOPA_SATI_las_00015818, local
	.string "SFX_VOICE_KOOPA_SATIATED2_1"
.endobj str_SFX_VOICE_KOOPA_SATI_las_00015818

# .rodata:0x5C4 | 0x3DCC | size: 0xF
.obj str_BGM_EVT_KUPPA1_las_00015834, local
	.string "BGM_EVT_KUPPA1"
.endobj str_BGM_EVT_KUPPA1_las_00015834

# .rodata:0x5D3 | 0x3DDB | size: 0x1
.obj gap_03_00003DDB_rodata, global
.hidden gap_03_00003DDB_rodata
	.byte 0x00
.endobj gap_03_00003DDB_rodata

# .rodata:0x5D4 | 0x3DDC | size: 0xC
.obj str_kemuri1_n64_las_00015844, local
	.string "kemuri1_n64"
.endobj str_kemuri1_n64_las_00015844

# .rodata:0x5E0 | 0x3DE8 | size: 0x8
.obj str_KPA_D_2_las_00015850, local
	.string "KPA_D_2"
.endobj str_KPA_D_2_las_00015850

# .rodata:0x5E8 | 0x3DF0 | size: 0xB
.obj str_koopa_piyo_las_00015858, local
	.string "koopa_piyo"
.endobj str_koopa_piyo_las_00015858

# .rodata:0x5F3 | 0x3DFB | size: 0x1
.obj gap_03_00003DFB_rodata, global
.hidden gap_03_00003DFB_rodata
	.byte 0x00
.endobj gap_03_00003DFB_rodata

# .rodata:0x5F4 | 0x3DFC | size: 0x15
.obj str_SFX_STG8_KOOPA_PIYO1_las_00015864, local
	.string "SFX_STG8_KOOPA_PIYO1"
.endobj str_SFX_STG8_KOOPA_PIYO1_las_00015864

# .rodata:0x609 | 0x3E11 | size: 0x3
.obj gap_03_00003E11_rodata, global
.hidden gap_03_00003E11_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003E11_rodata

# .rodata:0x60C | 0x3E14 | size: 0x7
.obj str_S_gare_las_0001587c, local
	.string "S_gare"
.endobj str_S_gare_las_0001587c

# .rodata:0x613 | 0x3E1B | size: 0x1
.obj gap_03_00003E1B_rodata, global
.hidden gap_03_00003E1B_rodata
	.byte 0x00
.endobj gap_03_00003E1B_rodata

# .rodata:0x614 | 0x3E1C | size: 0x8
.obj str_KPA_Z_3_las_00015884, local
	.string "KPA_Z_3"
.endobj str_KPA_Z_3_las_00015884

# .rodata:0x61C | 0x3E24 | size: 0x8
.obj str_KPA_T_8_las_0001588c, local
	.string "KPA_T_8"
.endobj str_KPA_T_8_las_0001588c

# .rodata:0x624 | 0x3E2C | size: 0xC
.obj str_stg8_las_87_las_00015894, local
	.string "stg8_las_87"
.endobj str_stg8_las_87_las_00015894

# .rodata:0x630 | 0x3E38 | size: 0xC
.obj str_stg8_las_88_las_000158a0, local
	.string "stg8_las_88"
.endobj str_stg8_las_88_las_000158a0

# .rodata:0x63C | 0x3E44 | size: 0xC
.obj str_stg8_las_89_las_000158ac, local
	.string "stg8_las_89"
.endobj str_stg8_las_89_las_000158ac

# .rodata:0x648 | 0x3E50 | size: 0xC
.obj str_stg8_las_90_las_000158b8, local
	.string "stg8_las_90"
.endobj str_stg8_las_90_las_000158b8

# .rodata:0x654 | 0x3E5C | size: 0x18
.obj str_SFX_KUPPA_KAMEBABA_F_las_000158c4, local
	.string "SFX_KUPPA_KAMEBABA_FLY1"
.endobj str_SFX_KUPPA_KAMEBABA_F_las_000158c4

# .rodata:0x66C | 0x3E74 | size: 0x1D
.obj str_SFX_VOICE_KOOPA_SURP_las_000158dc, local
	.string "SFX_VOICE_KOOPA_SURPRISED1_1"
.endobj str_SFX_VOICE_KOOPA_SURP_las_000158dc

# .rodata:0x689 | 0x3E91 | size: 0x3
.obj gap_03_00003E91_rodata, global
.hidden gap_03_00003E91_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003E91_rodata

# .rodata:0x68C | 0x3E94 | size: 0x8
.obj str_KPA_S_1_las_000158fc, local
	.string "KPA_S_1"
.endobj str_KPA_S_1_las_000158fc

# .rodata:0x694 | 0x3E9C | size: 0x8
.obj str_KPA_T_1_las_00015904, local
	.string "KPA_T_1"
.endobj str_KPA_T_1_las_00015904

# .rodata:0x69C | 0x3EA4 | size: 0x8
.obj str_KPA_U_1_las_0001590c, local
	.string "KPA_U_1"
.endobj str_KPA_U_1_las_0001590c

# .rodata:0x6A4 | 0x3EAC | size: 0x1D
.obj str_SFX_VOICE_MARIO_SURP_las_00015914, local
	.string "SFX_VOICE_MARIO_SURPRISED2_2"
.endobj str_SFX_VOICE_MARIO_SURP_las_00015914

# .rodata:0x6C1 | 0x3EC9 | size: 0x3
.obj gap_03_00003EC9_rodata, global
.hidden gap_03_00003EC9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003EC9_rodata

# .rodata:0x6C4 | 0x3ECC | size: 0x6
.obj str_M_I_N_las_00015934, local
	.string "M_I_N"
.endobj str_M_I_N_las_00015934

# .rodata:0x6CA | 0x3ED2 | size: 0x2
.obj gap_03_00003ED2_rodata, global
.hidden gap_03_00003ED2_rodata
	.2byte 0x0000
.endobj gap_03_00003ED2_rodata

# .rodata:0x6CC | 0x3ED4 | size: 0xC
.obj str_stg8_las_91_las_0001593c, local
	.string "stg8_las_91"
.endobj str_stg8_las_91_las_0001593c

# .rodata:0x6D8 | 0x3EE0 | size: 0xC
.obj str_stg8_las_92_las_00015948, local
	.string "stg8_las_92"
.endobj str_stg8_las_92_las_00015948

# .rodata:0x6E4 | 0x3EEC | size: 0xC
.obj str_stg8_las_93_las_00015954, local
	.string "stg8_las_93"
.endobj str_stg8_las_93_las_00015954

# .rodata:0x6F0 | 0x3EF8 | size: 0xC
.obj str_stg8_las_94_las_00015960, local
	.string "stg8_las_94"
.endobj str_stg8_las_94_las_00015960

# .rodata:0x6FC | 0x3F04 | size: 0xC
.obj str_stg8_las_95_las_0001596c, local
	.string "stg8_las_95"
.endobj str_stg8_las_95_las_0001596c

# .rodata:0x708 | 0x3F10 | size: 0x6
.obj str_baria_las_00015978, local
	.string "baria"
.endobj str_baria_las_00015978

# .rodata:0x70E | 0x3F16 | size: 0x2
.obj gap_03_00003F16_rodata, global
.hidden gap_03_00003F16_rodata
	.2byte 0x0000
.endobj gap_03_00003F16_rodata

# .rodata:0x710 | 0x3F18 | size: 0x15
.obj str_カメックババ（地上）_las_00015980, local
	.4byte 0x834A8381
	.4byte 0x8362834E
	.4byte 0x836F836F
	.4byte 0x8169926E
	.4byte 0x8FE3816A
	.byte 0x00
.endobj str_カメックババ（地上）_las_00015980

# .rodata:0x725 | 0x3F2D | size: 0x3
.obj gap_03_00003F2D_rodata, global
.hidden gap_03_00003F2D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003F2D_rodata

# .rodata:0x728 | 0x3F30 | size: 0x4
.obj str_D_2_las_00015998, local
	.string "D_2"
.endobj str_D_2_las_00015998

# .rodata:0x72C | 0x3F34 | size: 0xA
.obj str_baba_piyo_las_0001599c, local
	.string "baba_piyo"
.endobj str_baba_piyo_las_0001599c

# .rodata:0x736 | 0x3F3E | size: 0x2
.obj gap_03_00003F3E_rodata, global
.hidden gap_03_00003F3E_rodata
	.2byte 0x0000
.endobj gap_03_00003F3E_rodata

# .rodata:0x738 | 0x3F40 | size: 0xD
.obj str_stg8_las_101_las_000159a8, local
	.string "stg8_las_101"
.endobj str_stg8_las_101_las_000159a8

# .rodata:0x745 | 0x3F4D | size: 0x3
.obj gap_03_00003F4D_rodata, global
.hidden gap_03_00003F4D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003F4D_rodata

# .rodata:0x748 | 0x3F50 | size: 0xD
.obj str_stg8_las_102_las_000159b8, local
	.string "stg8_las_102"
.endobj str_stg8_las_102_las_000159b8

# .rodata:0x755 | 0x3F5D | size: 0x3
.obj gap_03_00003F5D_rodata, global
.hidden gap_03_00003F5D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003F5D_rodata

# .rodata:0x758 | 0x3F60 | size: 0x17
.obj str_SFX_VOICE_MARIO_NOD1_las_000159c8, local
	.string "SFX_VOICE_MARIO_NOD1_3"
.endobj str_SFX_VOICE_MARIO_NOD1_las_000159c8

# .rodata:0x76F | 0x3F77 | size: 0x1
.obj gap_03_00003F77_rodata, global
.hidden gap_03_00003F77_rodata
	.byte 0x00
.endobj gap_03_00003F77_rodata

# .rodata:0x770 | 0x3F78 | size: 0x6
.obj str_M_N_2_las_000159e0, local
	.string "M_N_2"
.endobj str_M_N_2_las_000159e0

# .rodata:0x776 | 0x3F7E | size: 0x2
.obj gap_03_00003F7E_rodata, global
.hidden gap_03_00003F7E_rodata
	.2byte 0x0000
.endobj gap_03_00003F7E_rodata

# .rodata:0x778 | 0x3F80 | size: 0xD
.obj str_stg8_las_103_las_000159e8, local
	.string "stg8_las_103"
.endobj str_stg8_las_103_las_000159e8

# .rodata:0x785 | 0x3F8D | size: 0x3
.obj gap_03_00003F8D_rodata, global
.hidden gap_03_00003F8D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003F8D_rodata

# .rodata:0x788 | 0x3F90 | size: 0x10
.obj str_BGM_EVT_DANGER2_las_000159f8, local
	.string "BGM_EVT_DANGER2"
.endobj str_BGM_EVT_DANGER2_las_000159f8

# .rodata:0x798 | 0x3FA0 | size: 0x1D
.obj str_SFX_VOICE_MARIO_SURP_las_00015a08, local
	.string "SFX_VOICE_MARIO_SURPRISED2_3"
.endobj str_SFX_VOICE_MARIO_SURP_las_00015a08

# .rodata:0x7B5 | 0x3FBD | size: 0x3
.obj gap_03_00003FBD_rodata, global
.hidden gap_03_00003FBD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003FBD_rodata

# .rodata:0x7B8 | 0x3FC0 | size: 0xD
.obj str_stg8_las_104_las_00015a28, local
	.string "stg8_las_104"
.endobj str_stg8_las_104_las_00015a28

# .rodata:0x7C5 | 0x3FCD | size: 0x3
.obj gap_03_00003FCD_rodata, global
.hidden gap_03_00003FCD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003FCD_rodata

# .rodata:0x7C8 | 0x3FD0 | size: 0xD
.obj str_stg8_las_105_las_00015a38, local
	.string "stg8_las_105"
.endobj str_stg8_las_105_las_00015a38

# .rodata:0x7D5 | 0x3FDD | size: 0x3
.obj gap_03_00003FDD_rodata, global
.hidden gap_03_00003FDD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003FDD_rodata

# .rodata:0x7D8 | 0x3FE0 | size: 0x8
.obj str_S_gyoku_las_00015a48, local
	.string "S_gyoku"
.endobj str_S_gyoku_las_00015a48

# .rodata:0x7E0 | 0x3FE8 | size: 0x8
.obj str_A_gyoku_las_00015a50, local
	.string "A_gyoku"
.endobj str_A_gyoku_las_00015a50

# .rodata:0x7E8 | 0x3FF0 | size: 0x6
.obj str_S_isu_las_00015a58, local
	.string "S_isu"
.endobj str_S_isu_las_00015a58

# .rodata:0x7EE | 0x3FF6 | size: 0x2
.obj gap_03_00003FF6_rodata, global
.hidden gap_03_00003FF6_rodata
	.2byte 0x0000
.endobj gap_03_00003FF6_rodata

# .rodata:0x7F0 | 0x3FF8 | size: 0x11
.obj str_A_i02_f2_isu_04C_las_00015a60, local
	.string "A_i02_f2_isu_04C"
.endobj str_A_i02_f2_isu_04C_las_00015a60

# .rodata:0x801 | 0x4009 | size: 0x3
.obj gap_03_00004009_rodata, global
.hidden gap_03_00004009_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004009_rodata

# .rodata:0x804 | 0x400C | size: 0xA
.obj str_S_isu_tao_las_00015a74, local
	.string "S_isu_tao"
.endobj str_S_isu_tao_las_00015a74

# .rodata:0x80E | 0x4016 | size: 0x2
.obj gap_03_00004016_rodata, global
.hidden gap_03_00004016_rodata
	.2byte 0x0000
.endobj gap_03_00004016_rodata

# .rodata:0x810 | 0x4018 | size: 0x12
.obj str_A_i02_f2_isu_04C1_las_00015a80, local
	.string "A_i02_f2_isu_04C1"
.endobj str_A_i02_f2_isu_04C1_las_00015a80

# .rodata:0x822 | 0x402A | size: 0x2
.obj gap_03_0000402A_rodata, global
.hidden gap_03_0000402A_rodata
	.2byte 0x0000
.endobj gap_03_0000402A_rodata

# .rodata:0x824 | 0x402C | size: 0x15
.obj str_第三勢力総統（ヒビ）_las_00015a94, local
	.4byte 0x91E68E4F
	.4byte 0x90A897CD
	.4byte 0x918D939D
	.4byte 0x81698371
	.4byte 0x8372816A
	.byte 0x00
.endobj str_第三勢力総統（ヒビ）_las_00015a94

# .rodata:0x839 | 0x4041 | size: 0x3
.obj gap_03_00004041_rodata, global
.hidden gap_03_00004041_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004041_rodata

# .rodata:0x83C | 0x4044 | size: 0x5
.obj str_fire_las_00015aac, local
	.string "fire"
.endobj str_fire_las_00015aac

# .rodata:0x841 | 0x4049 | size: 0x3
.obj gap_03_00004049_rodata, global
.hidden gap_03_00004049_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004049_rodata

# .rodata:0x844 | 0x404C | size: 0xE
.obj str_ENV_STG8_LAS9_las_00015ab4, local
	.string "ENV_STG8_LAS9"
.endobj str_ENV_STG8_LAS9_las_00015ab4

# .rodata:0x852 | 0x405A | size: 0x2
.obj gap_03_0000405A_rodata, global
.hidden gap_03_0000405A_rodata
	.2byte 0x0000
.endobj gap_03_0000405A_rodata

# .rodata:0x854 | 0x405C | size: 0x7
.obj str_A_gare_las_00015ac4, local
	.string "A_gare"
.endobj str_A_gare_las_00015ac4

# .rodata:0x85B | 0x4063 | size: 0x1
.obj gap_03_00004063_rodata, global
.hidden gap_03_00004063_rodata
	.byte 0x00
.endobj gap_03_00004063_rodata

# .rodata:0x85C | 0x4064 | size: 0xA
.obj str_koopa_evt_las_00015acc, local
	.string "koopa_evt"
.endobj str_koopa_evt_las_00015acc

# .rodata:0x866 | 0x406E | size: 0x2
.obj gap_03_0000406E_rodata, global
.hidden gap_03_0000406E_rodata
	.2byte 0x0000
.endobj gap_03_0000406E_rodata

# .rodata:0x868 | 0x4070 | size: 0x7
.obj str_from26_las_00015ad8, local
	.string "from26"
.endobj str_from26_las_00015ad8

# .rodata:0x86F | 0x4077 | size: 0x1
.obj gap_03_00004077_rodata, global
.hidden gap_03_00004077_rodata
	.byte 0x00
.endobj gap_03_00004077_rodata

# .rodata:0x870 | 0x4078 | size: 0x5
.obj str_hiPCTd_las_00015ae0, local
	.string "hi%d"
.endobj str_hiPCTd_las_00015ae0
	.byte 0x00, 0x00, 0x00

# .rodata:0x878 | 0x4080 | size: 0x4
.obj float_0p8_las_00015ae8, local
	.float 0.8
.endobj float_0p8_las_00015ae8

# .rodata:0x87C | 0x4084 | size: 0x4
.obj float_deg2rad_las_00015aec, local
	.float 0.017453292
.endobj float_deg2rad_las_00015aec

# .rodata:0x880 | 0x4088 | size: 0x4
.obj float_8_las_00015af0, local
	.float 8
.endobj float_8_las_00015af0

# .rodata:0x884 | 0x408C | size: 0x4
.obj float_10_las_00015af4, local
	.float 10
.endobj float_10_las_00015af4

# .rodata:0x888 | 0x4090 | size: 0x4
.obj float_2_las_00015af8, local
	.float 2
.endobj float_2_las_00015af8

# .rodata:0x88C | 0x4094 | size: 0x4
.obj gap_03_00004094_rodata, global
.hidden gap_03_00004094_rodata
	.4byte 0x00000000
.endobj gap_03_00004094_rodata

# 0x00013AD8..0x00017BA0 | size: 0x40C8
.data
.balign 8

# .data:0x0 | 0x13AD8 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x13AE0 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x13AE4 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x13AE8 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x13AEC | size: 0x4
.obj gap_04_00013AEC_data, global
.hidden gap_04_00013AEC_data
	.4byte 0x00000000
.endobj gap_04_00013AEC_data

# .data:0x18 | 0x13AF0 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x13AF8 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x13AFC | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x13B00 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x13B08 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x13B0C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x13B10 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x13B14 | size: 0x4
.obj gap_04_00013B14_data, global
.hidden gap_04_00013B14_data
	.4byte 0x00000000
.endobj gap_04_00013B14_data

# .data:0x40 | 0x13B18 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x13B20 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x13B24 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x13B28 | size: 0x58
.obj w_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A78F2
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door2_1_las_00015270
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door2_2_las_0001527c
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w_door_close

# .data:0xA8 | 0x13B80 | size: 0x58
.obj w_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7C0E
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door2_1_las_00015270
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_door2_2_las_0001527c
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj w_door_open

# .data:0x100 | 0x13BD8 | size: 0xB4
.obj bero_entry_data, local
	.4byte str_w_bero_las_00015288
	.4byte 0x00010006
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_las_27_las_00015290
	.4byte str_e_bero_las_00015298
	.4byte 0x00050005
	.4byte w_door_close
	.4byte w_door_open
	.4byte str_e_bero_las_00015298
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_las_30_las_000152a0
	.4byte str_w_bero_las_00015288
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

# .data:0x1B4 | 0x13C8C | size: 0x78
.obj syuryo_init, local
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_me_las_000152a8
	.4byte 0x00000002
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x0000018E
	.4byte 0x0002001C
	.4byte 0xF5DE0180
	.4byte 0x0000018F
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_las_000152a8
	.4byte 0x0000019A
	.4byte 0x00000019
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_las_000152a8
	.4byte 0x0000010E
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_me_las_000152a8
	.4byte 0x00020010
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj syuryo_init

# .data:0x22C | 0x13D04 | size: 0x1C
.obj koopa_init, local
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_me_las_000152a8
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000001
.endobj koopa_init

# .data:0x248 | 0x13D20 | size: 0x20
.obj koopa_talk, local
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_107_las_000152ac
	.4byte 0x00000000
	.4byte str_me_las_000152a8
	.4byte 0x00000002
	.4byte 0x00000001
.endobj koopa_talk

# .data:0x268 | 0x13D40 | size: 0x1C
.obj baba_init, local
	.4byte 0x0004005B
	.4byte evt_npc_status_onoff
	.4byte 0x00000001
	.4byte str_me_las_000152a8
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000001
.endobj baba_init

# .data:0x284 | 0x13D5C | size: 0x20
.obj baba_talk, local
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_107_01_las_000152bc
	.4byte 0x00000000
	.4byte str_me_las_000152a8
	.4byte 0x00000002
	.4byte 0x00000001
.endobj baba_talk

# .data:0x2A4 | 0x13D7C | size: 0x1CC
.obj npcEnt, local
	.4byte str_シュリョー_las_000152cc
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte syuryo_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_クッパ_las_000152d8
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte koopa_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ババ_las_000152e0
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte baba_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_ピーチ姫_las_000152e8
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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

# .data:0x470 | 0x13F48 | size: 0x2A8
.obj first_evt, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000013A
	.4byte 0x0000025E
	.4byte 0x00000439
	.4byte 0xFFFFFE9F
	.4byte 0x000000F0
	.4byte 0xFFFFFF6C
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFD94
	.4byte 0xFFFFFF84
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFD80
	.4byte 0xFFFFFF84
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000014C
	.4byte 0x000000C8
	.4byte 0x0000045B
	.4byte 0xFFFFFEA0
	.4byte 0x00000000
	.4byte 0xFFFFFF6C
	.4byte 0x00000C80
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000708
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte bero_open_door_play_se
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0xFFFFFF4C
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF247AA80
	.4byte 0x0001005E
	.4byte w_door_open
	.4byte 0x00000007
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte w_door_open
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_party_set_homing_dist
	.4byte 0x00000000
	.4byte 0xF24ACA80
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFE0C
	.4byte 0x00000000
	.4byte 0xF24CD280
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_set_homing_dist
	.4byte 0x00000000
	.4byte 0xF24B4280
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte bero_close_door_play_se
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x000000B4
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x0001005E
	.4byte w_door_close
	.4byte 0x00000007
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte w_door_close
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFDF3
	.4byte 0x00000012
	.4byte 0x000001AC
	.4byte 0xFFFFFDF3
	.4byte 0xFFFFFFB5
	.4byte 0xFFFFFFEE
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg8_las_50_las_000152f4
	.4byte 0x0001005C
	.4byte syuryo_evt
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x0000018F
	.4byte 0x0001005E
	.4byte bero_case_entry
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001005B
	.4byte N_evt_bero_set_mario_bottomless_respawn_pos_to_current_mario_pos
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj first_evt

# .data:0x718 | 0x141F0 | size: 0x68C
.obj syuryo_thunder, local
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_hit_las_0001530c
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A7E80
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_hit_las_0001530c
	.4byte 0x00000002
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0xF24A7E80
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFE363C83
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0xFE363C84
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0xFE363C85
	.4byte 0x00020038
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020038
	.4byte 0xFE363C81
	.4byte 0x00000002
	.4byte 0x00020038
	.4byte 0xFE363C82
	.4byte 0x00000002
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte 0x00000000
	.4byte str_thunder_n64_las_00015310
	.4byte 0x00000005
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24ACA80
	.4byte 0xF24B0E80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG8_SHURYO_THUN_las_0001531c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A80
	.4byte 0xF24A7ABD
	.4byte 0x000001F4
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PNK_D_5_las_00015338
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PKR_D_5_las_00015340
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PYS_D_5_las_00015348
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PTR_D_4_las_00015350
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_D_4_las_00015358
	.4byte 0x00010024
	.4byte 0x00000005
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PWD_D_5_las_0001535c
	.4byte 0x00010024
	.4byte 0x00000007
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PCH_D_4_las_00015364
	.4byte 0x00000031
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0003005B
	.4byte evt_party_get_dispdir
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010005
	.4byte 0x0000005A
	.4byte 0x0003005B
	.4byte evt_party_set_dispdir
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000000C
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000168
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000168
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PNK_D_3_las_0001536c
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PKR_D_3_las_00015374
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PYS_D_3_las_0001537c
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PTR_D_3_las_00015384
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_D_3_las_0001538c
	.4byte 0x00010024
	.4byte 0x00000005
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PWD_D_3_las_00015390
	.4byte 0x00010024
	.4byte 0x00000007
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PCH_D_3_las_00015398
	.4byte 0x00000031
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_kemuri_las_000153a0
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x00010005
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000014
	.4byte 0xFE363C83
	.4byte 0x00020036
	.4byte 0xFE363C83
	.4byte 0x0000000A
	.4byte 0x00020035
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte 0x00000000
	.4byte str_kemuri12_n64_las_000153a8
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A7E80
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
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_D_1_las_000153b8
	.4byte 0x0002005B
	.4byte evt_mario_get_dispdir
	.4byte 0xFE363C80
	.4byte 0x00010005
	.4byte 0x0000005A
	.4byte 0x0002005B
	.4byte evt_mario_set_dispdir
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000000C
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000168
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000168
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001005B
	.4byte evt_mario_adjust_dir
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_MARIO_FALL_CRUSH_las_000153c0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_D_2_las_000153d8
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_kemuri_las_000153a0
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0000006B
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000014
	.4byte 0x00010005
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000014
	.4byte 0xFE363C83
	.4byte 0x00020036
	.4byte 0xFE363C83
	.4byte 0x0000000A
	.4byte 0x00020035
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte 0x00000000
	.4byte str_kemuri12_n64_las_000153a8
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A7E80
	.4byte 0x00000012
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG8_SHURYO_THUN_las_000153e0
	.4byte 0xFE363C83
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00000002
	.4byte 0x00000001
.endobj syuryo_thunder

# .data:0xDA4 | 0x1487C | size: 0x1398
.obj syuryo_evt, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002005B
	.4byte evt_mario_check_landon
	.4byte 0xFE363C83
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0xFFFFFF60
	.4byte 0x0002001D
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0003005B
	.4byte evt_snd_envoff_f
	.4byte 0x00000200
	.4byte 0x000007D0
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000019
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x0002001D
	.4byte 0xFE363C84
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_move_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000258
	.4byte 0x00000020
	.4byte 0x0008005B
	.4byte evt_party_jump_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000258
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_51_las_000153fc
	.4byte 0x00000000
	.4byte str_シュリョー_las_000152cc
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFCF7
	.4byte 0x00000025
	.4byte 0x000000C8
	.4byte 0x00000190
	.4byte 0x0000007D
	.4byte 0xFFFFFFF0
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_STG8_3RDHEAD_las_00015408
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_52_las_00015420
	.4byte 0x00000000
	.4byte str_シュリョー_las_000152cc
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000008
	.4byte 0x00000050
	.4byte 0x0000003E
	.4byte 0x00000191
	.4byte 0x00000050
	.4byte 0xFFFFFFF6
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_53_las_0001542c
	.4byte 0x00000000
	.4byte str_シュリョー_las_000152cc
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFF6A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFF4C
	.4byte 0x00000000
	.4byte 0x00000019
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF60
	.4byte 0x00000054
	.4byte 0x00000149
	.4byte 0xFFFFFF60
	.4byte 0x00000023
	.4byte 0xFFFFFFEE
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_Y_las_00015438
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg8_las_54_las_00015440
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000000C
	.4byte 0x0000008C
	.4byte 0x00000037
	.4byte 0x00000190
	.4byte 0x00000050
	.4byte 0xFFFFFFF0
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_55_las_0001544c
	.4byte 0x00000000
	.4byte str_シュリョー_las_000152cc
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFED6
	.4byte 0x00000073
	.4byte 0x00000037
	.4byte 0x0000005A
	.4byte 0x00000037
	.4byte 0xFFFFFFF0
	.4byte 0x00001388
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_シュリョー_las_000152cc
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xF24B6A80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_56_las_00015458
	.4byte 0x00000000
	.4byte str_シュリョー_las_000152cc
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF60
	.4byte 0x0000004D
	.4byte 0x00000117
	.4byte 0xFFFFFF60
	.4byte 0x00000023
	.4byte 0xFFFFFFEE
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg8_las_57_las_00015464
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_シュリョー_las_000152cc
	.4byte 0x00008000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000005A
	.4byte 0x00000055
	.4byte 0x00000131
	.4byte 0x0000005A
	.4byte 0x00000032
	.4byte 0xFFFFFFEE
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_58_las_00015470
	.4byte 0x00000000
	.4byte str_シュリョー_las_000152cc
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x00000430
	.4byte 0x00000000
	.4byte 0x00000078
	.4byte 0xFFFFFFEE
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_60_las_0001547c
	.4byte 0x00000000
	.4byte str_シュリョー_las_000152cc
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF60
	.4byte 0x00000043
	.4byte 0x000000E6
	.4byte 0xFFFFFF60
	.4byte 0x00000020
	.4byte 0xFFFFFFEE
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_シュリョー_las_000152cc
	.4byte 0x00008000
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg8_las_61_las_00015488
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000005A
	.4byte 0x00000055
	.4byte 0x00000131
	.4byte 0x0000005A
	.4byte 0x00000032
	.4byte 0xFFFFFFEE
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_62_las_00015494
	.4byte 0x00000000
	.4byte str_シュリョー_las_000152cc
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF60
	.4byte 0x00000043
	.4byte 0x000000E6
	.4byte 0xFFFFFF60
	.4byte 0x00000020
	.4byte 0xFFFFFFEE
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg8_las_63_las_000154a0
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000050
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xF24C5A80
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000050
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xF24C5A80
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000005F
	.4byte 0x0000004B
	.4byte 0x000000E6
	.4byte 0x0000005F
	.4byte 0x00000032
	.4byte 0xFFFFFFEE
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFF9C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFF6A
	.4byte 0x00000019
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_64_las_000154ac
	.4byte 0x00000000
	.4byte str_シュリョー_las_000152cc
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x00000430
	.4byte 0x00000000
	.4byte 0x00000078
	.4byte 0xFFFFFFEE
	.4byte 0x000004E2
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFFD8
	.4byte 0x00000019
	.4byte 0xF24C5A80
	.4byte 0x0003005B
	.4byte evt_party_set_breed_pose
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00020032
	.4byte 0xFAA2B580
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_R_1_las_000154b8
	.4byte 0x0001000B
	.4byte 0xFAA2B580
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0003005B
	.4byte evt_npc_set_battle_info
	.4byte str_シュリョー_las_000152cc
	.4byte 0x0000000F
	.4byte 0x0002005B
	.4byte evt_npc_battle_start
	.4byte str_シュリョー_las_000152cc
	.4byte 0x0001005B
	.4byte evt_npc_wait_battle_end
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0004005B
	.4byte evt_shuryolight_run_evt_16_text_10954
	.4byte shuryolight_pow_tenmetu_16_data_53D88
	.4byte shuryolight_head_off_16_data_53ECC
	.4byte shuryolight_tue_normal_16_data_53F04
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFFB5
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFF9C
	.4byte 0x00000000
	.4byte 0x00000019
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_シュリョー_las_000152cc
	.4byte 0x00000050
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_シュリョー_las_000152cc
	.4byte str_S_3_las_000154c0
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_Y_las_00015438
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x00000089
	.4byte 0x00000212
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0xFFFFFFEE
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_シュリョー_las_000152cc
	.4byte str_S_3_las_000154c0
	.4byte str_T_4_las_000154c4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_70_las_000154c8
	.4byte 0x00000000
	.4byte str_シュリョー_las_000152cc
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFB0
	.4byte 0x00000049
	.4byte 0x000000FE
	.4byte 0xFFFFFFB0
	.4byte 0x00000023
	.4byte 0xFFFFFFEE
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg8_las_71_las_000154d4
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_72_las_000154e0
	.4byte 0x00000000
	.4byte str_シュリョー_las_000152cc
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000019F
	.4byte 0x00000069
	.4byte 0x0000017B
	.4byte 0x0000019F
	.4byte 0x0000003E
	.4byte 0xFFFFFFEE
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_STG8_3RDHEAD_las_00015408
	.4byte 0x0002005B
	.4byte evt_paper_entry
	.4byte str_OFF_hei_07_las_000154ec
	.4byte 0x0002005B
	.4byte evt_img_entry
	.4byte str_img_las_000154f8
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_img_las_000154f8
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_img_set_paper
	.4byte str_img_las_000154f8
	.4byte str_OFF_hei_07_las_000154ec
	.4byte 0x0009005B
	.4byte evt_img_alloc_capture
	.4byte str_img_las_000154f8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000098
	.4byte 0x00000058
	.4byte 0x00000130
	.4byte 0x00000130
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG8_PEACH_APPEA_las_000154fc
	.4byte 0x000001A4
	.4byte 0x00000019
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_img_clear_virtual_point
	.4byte str_img_las_000154f8
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_img_las_000154f8
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ピーチ姫_las_000152e8
	.4byte 0x000001A4
	.4byte 0x00000019
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ピーチ姫_las_000152e8
	.4byte str_P_S_6F_las_00015514
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0001005B
	.4byte syuryo_baria
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ピーチ姫_las_000152e8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_BOSS_SRYO_LIGHT__las_0001551c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_img_set_paper_anim
	.4byte str_img_las_000154f8
	.4byte str_A_1_las_00015538
	.4byte 0x0002005B
	.4byte evt_img_wait_animend
	.4byte str_img_las_000154f8
	.4byte 0x0003005B
	.4byte evt_img_free_capture
	.4byte str_img_las_000154f8
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_img_las_000154f8
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_img_release
	.4byte str_img_las_000154f8
	.4byte 0x0002005B
	.4byte evt_paper_delete
	.4byte str_OFF_hei_07_las_000154ec
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ピーチ姫_las_000152e8
	.4byte str_P_A_4F_las_0001553c
	.4byte 0x0003005B
	.4byte evt_npc_wait_anim
	.4byte str_ピーチ姫_las_000152e8
	.4byte 0xF24A7E80
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ピーチ姫_las_000152e8
	.4byte str_P_S_3F_las_00015544
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_ピーチ姫_las_000152e8
	.4byte str_P_S_3F_las_00015544
	.4byte str_P_T_3F_las_0001554c
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_73_las_00015554
	.4byte 0x00000000
	.4byte str_ピーチ姫_las_000152e8
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000002
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000000C
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x000000B4
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x000000B4
	.4byte 0x0005005B
	.4byte evt_npc_set_rotate
	.4byte str_ピーチ姫_las_000152e8
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_npc_set_rotate
	.4byte str_ピーチ姫_las_000152e8
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x00000096
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x0000000C
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_rotate
	.4byte str_ピーチ姫_las_000152e8
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_npc_set_rotate
	.4byte str_ピーチ姫_las_000152e8
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x00000096
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ピーチ姫_las_000152e8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_PEACH_SURP_las_00015560
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ピーチ姫_las_000152e8
	.4byte str_P_B_1F_las_00015580
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000030
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_ピーチ姫_las_000152e8
	.4byte str_P_S_4F_las_00015588
	.4byte str_P_T_4F_las_00015590
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_74_las_00015598
	.4byte 0x00000000
	.4byte str_ピーチ姫_las_000152e8
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFB0
	.4byte 0x00000049
	.4byte 0x000000FE
	.4byte 0xFFFFFFB0
	.4byte 0x00000023
	.4byte 0xFFFFFFEE
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_SURP_las_000155a4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_5B_las_000155c0
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg8_las_75_las_000155c8
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ピーチ姫_las_000152e8
	.4byte str_P_S_5F_las_000155d4
	.4byte 0x0003005B
	.4byte evt_npc_pera_onoff
	.4byte str_シュリョー_las_000152cc
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_シュリョー_las_000152cc
	.4byte 0x00000037
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFDA8
	.4byte 0x00000032
	.4byte 0x0000015E
	.4byte 0x0000000F
	.4byte 0x00000050
	.4byte 0x00000010
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_1_las_000155dc
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_dispdir
	.4byte 0x000000B4
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ピーチ姫_las_000152e8
	.4byte 0x00008000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte syuryo_baria_recalc_pos
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_76_las_000155e4
	.4byte 0x00000000
	.4byte str_シュリョー_las_000152cc
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFB5
	.4byte 0x0000005F
	.4byte 0x00000148
	.4byte 0xFFFFFFB5
	.4byte 0x0000002D
	.4byte 0xFFFFFFEE
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_pera_onoff
	.4byte str_シュリョー_las_000152cc
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_シュリョー_las_000152cc
	.4byte 0x0000010E
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_Y_las_00015438
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg8_las_77_las_000155f0
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000003C
	.4byte 0x0000005F
	.4byte 0x00000148
	.4byte 0x0000003C
	.4byte 0x0000002D
	.4byte 0xFFFFFFEE
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_78_las_000155fc
	.4byte 0x00000000
	.4byte str_シュリョー_las_000152cc
	.4byte 0x0002005B
	.4byte evt_shuryolight_run_head_evt_16_text_10844
	.4byte shuryolight_head_tenmetu_16_data_53E7C
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_シュリョー_las_000152cc
	.4byte str_A_3A_las_00015608
	.4byte 0x0001000A
	.4byte 0x000000AA
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_シュリョー_las_000152cc
	.4byte str_A_3B_las_00015610
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_シュリョー_las_000152cc
	.4byte str_A_3C_las_00015618
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFF1
	.4byte 0x000000B9
	.4byte 0x000002A3
	.4byte 0xFFFFFFF1
	.4byte 0x00000055
	.4byte 0xFFFFFFEE
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0003005B
	.4byte evt_env_blur_on
	.4byte 0x00000000
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_シュリョー_las_000152cc
	.4byte str_S_3_las_000154c0
	.4byte 0x0002005B
	.4byte evt_shuryolight_run_head_evt_16_text_10844
	.4byte shuryolight_head_off_16_data_53ECC
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_LAND_las_00015620
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001005E
	.4byte syuryo_thunder
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000019A
	.4byte 0x00000064
	.4byte 0x000000E6
	.4byte 0x0000019A
	.4byte 0x00000041
	.4byte 0xFFFFFFEE
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte syuryo_baria_recalc_pos
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_79_las_00015640
	.4byte 0x00000000
	.4byte str_ピーチ姫_las_000152e8
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ピーチ姫_las_000152e8
	.4byte 0x00008000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000004B
	.4byte 0x00000056
	.4byte 0x000000E6
	.4byte 0x0000004B
	.4byte 0x00000032
	.4byte 0xFFFFFFEE
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_80_las_0001564c
	.4byte 0x00000000
	.4byte str_シュリョー_las_000152cc
	.4byte 0x0002005B
	.4byte evt_shuryolight_run_head_evt_16_text_10844
	.4byte shuryolight_head_tenmetu_16_data_53E7C
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_シュリョー_las_000152cc
	.4byte str_A_3A_las_00015608
	.4byte 0x0001000A
	.4byte 0x000000AA
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_シュリョー_las_000152cc
	.4byte str_A_3B_las_00015610
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0002005B
	.4byte evt_mario_get_party
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PKR_S_1_las_00015658
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PNK_S_1_las_00015660
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PYS_S_1_las_00015668
	.4byte 0x00010024
	.4byte 0x00000005
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PWD_S_1_las_00015670
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_S_1_las_00015678
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PTR_S_1_las_0001567c
	.4byte 0x00010024
	.4byte 0x00000007
	.4byte 0x0003005B
	.4byte evt_party_set_pose
	.4byte 0x00000000
	.4byte str_PCH_S_1_las_00015684
	.4byte 0x00000031
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFB0
	.4byte 0x00000066
	.4byte 0x0000017A
	.4byte 0xFFFFFFB0
	.4byte 0x0000002D
	.4byte 0xFFFFFFEE
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_U_3_las_0001568c
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_SURP_las_00015694
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001005E
	.4byte syuryo_thunder
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ピーチ姫_las_000152e8
	.4byte str_P_S_4F_las_00015588
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000019A
	.4byte 0x00000064
	.4byte 0x000000E6
	.4byte 0x0000019A
	.4byte 0x00000041
	.4byte 0xFFFFFFEE
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte syuryo_baria_recalc_pos
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_81_las_000156b0
	.4byte 0x00000000
	.4byte str_ピーチ姫_las_000152e8
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_3_las_000156bc
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFAB
	.4byte 0x00000041
	.4byte 0x000000E6
	.4byte 0xFFFFFFAB
	.4byte 0x0000001E
	.4byte 0xFFFFFFEE
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg8_las_82_las_000156c4
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg8_las_82_yesno_las_000156d0
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_シュリョー_las_000152cc
	.4byte str_S_3_las_000154c0
	.4byte 0x0002005B
	.4byte evt_shuryolight_run_head_evt_16_text_10844
	.4byte shuryolight_head_off_16_data_53ECC
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000046
	.4byte 0x00000056
	.4byte 0x000000E6
	.4byte 0x00000046
	.4byte 0x00000032
	.4byte 0xFFFFFFEE
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_83_las_000156e4
	.4byte 0x00000000
	.4byte str_シュリョー_las_000152cc
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_84_las_000156f0
	.4byte 0x00000000
	.4byte str_シュリョー_las_000152cc
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_シュリョー_las_000152cc
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_shuryolight_run_head_evt_16_text_10844
	.4byte shuryolight_head_tenmetu_16_data_53E7C
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_シュリョー_las_000152cc
	.4byte str_A_3A_las_00015608
	.4byte 0x0001000A
	.4byte 0x000000AA
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_シュリョー_las_000152cc
	.4byte str_A_3B_las_00015610
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte koopa_evt
	.4byte 0x00000002
	.4byte 0x00000001
.endobj syuryo_evt

# .data:0x213C | 0x15C14 | size: 0xB4
.obj gareki_fall, local
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFE363C83
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFE363C87
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000002
	.4byte 0x0000015E
	.4byte 0x00000000
	.4byte 0xFE363C8A
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C80
	.4byte 0xFE363C89
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj gareki_fall

# .data:0x21F0 | 0x15CC8 | size: 0x1A1C
.obj koopa_evt, local
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG8_KOOPA_QUAKE_las_000156fc
	.4byte 0x0000004B
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A80
	.4byte 0xF24A7A94
	.4byte 0x000005DC
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_シュリョー_las_000152cc
	.4byte str_S_3_las_000154c0
	.4byte 0x0002005B
	.4byte evt_shuryolight_run_head_evt_16_text_10844
	.4byte shuryolight_head_off_16_data_53ECC
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG8_CEILING_BRE_las_00015714
	.4byte 0x0000004B
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte 0x00000000
	.4byte str_hokori_n64_las_0001572c
	.4byte 0x00000000
	.4byte 0x0000004B
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C80
	.4byte 0x0000006D
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000004B
	.4byte 0x000000BB
	.4byte 0x000002A3
	.4byte 0x0000004B
	.4byte 0x0000005A
	.4byte 0xFFFFFFEE
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_シュリョー_las_000152cc
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_シュリョー_las_000152cc
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_シュリョー_las_000152cc
	.4byte str_S_3_las_000154c0
	.4byte str_T_4_las_000154c4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_85_las_00015738
	.4byte 0x00000000
	.4byte str_シュリョー_las_000152cc
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG8_KOOPA_QUAKE_las_000156fc
	.4byte 0x0000004B
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A80
	.4byte 0xF24A7A9E
	.4byte 0x000005DC
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG8_CEILING_BRE_las_00015714
	.4byte 0x0000004B
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte 0x00000000
	.4byte str_hokori_n64_las_0001572c
	.4byte 0x00000000
	.4byte 0x0000004B
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x00000048
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000004B0
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C80
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_シュリョー_las_000152cc
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020035
	.4byte 0xFE363C83
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_クッパ_las_000152d8
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_クッパ_las_000152d8
	.4byte 0x0000010E
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_クッパ_las_000152d8
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_86_las_00015744
	.4byte 0x00000000
	.4byte str_クッパ_las_000152d8
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_クッパ_las_000152d8
	.4byte str_KPA_D_1_las_00015750
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG8_CEILING_BRE_las_00015758
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_S_gareki1_las_00015770
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000032
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0xFFFFFFB0
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0x00000370
	.4byte 0x0001005C
	.4byte gareki_fall
	.4byte 0x0001000A
	.4byte 0x00000032
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_S_gareki8_las_0001577c
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000046
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0xFFFFFF74
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0x00000370
	.4byte 0x0001005C
	.4byte gareki_fall
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_S_gareki4_las_00015788
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0xFFFFFFB0
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0xFFFFFFF6
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0x000002A8
	.4byte 0x0001005C
	.4byte gareki_fall
	.4byte 0x0001000A
	.4byte 0x00000032
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_S_gareki9_las_00015794
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x00000032
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0x00000370
	.4byte 0x0001005C
	.4byte gareki_fall
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_S_gareki5_las_000157a0
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0xFFFFFF6A
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0xFFFFFFB0
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0x000002A8
	.4byte 0x0001005C
	.4byte gareki_fall
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_S_gareki7_las_000157ac
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0xFFFFFF74
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0x00000320
	.4byte 0x0001005C
	.4byte gareki_fall
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_S_gareki10_las_000157b8
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0xFFFFFFD8
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x0000003C
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0x00000320
	.4byte 0x0001005C
	.4byte gareki_fall
	.4byte 0x0001000A
	.4byte 0x00000032
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_S_gareki6_las_000157c4
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0xFFFFFFB0
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0xFFFFFF6A
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0x00000320
	.4byte 0x0001005C
	.4byte gareki_fall
	.4byte 0x0001000A
	.4byte 0x00000032
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_S_gareki3_las_000157d0
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0xFFFFFFF6
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0x00000320
	.4byte 0x0001005C
	.4byte gareki_fall
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_S_gareki2_las_000157dc
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000050
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0x000002A8
	.4byte 0x0001005C
	.4byte gareki_fall
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000002
	.4byte 0xFE363C83
	.4byte 0x00000028
	.4byte 0x00000320
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_クッパ_las_000152d8
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0xFE363C84
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A9E
	.4byte 0xF24A7A80
	.4byte 0x000003E8
	.4byte 0x0000006D
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_hit_las_0001530c
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0xFE363C84
	.4byte 0xF24A7E80
	.4byte 0x00000006
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG8_KOOPA_STRIK_las_000157e8
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0xFE363C84
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG8_KOOPA_STRIK_las_00015800
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0xFE363C84
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_シュリョー_las_000152cc
	.4byte str_D_4_las_00015358
	.4byte 0x00020032
	.4byte 0xFD050F80
	.4byte 0xFE363C80
	.4byte 0x0000006B
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0xFE363C80
	.4byte 0x00020035
	.4byte 0xFE363C85
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C85
	.4byte 0x000000C8
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x00020032
	.4byte 0xFD050F80
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
	.4byte 0x00000001
	.4byte 0xFE363C85
	.4byte 0x00000000
	.4byte 0x0000012C
	.4byte 0x00010003
	.4byte 0x00000002
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x00020032
	.4byte 0xFD050F80
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0xFE363C84
	.4byte 0x00020035
	.4byte 0xFE363C85
	.4byte 0x00000019
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000004
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0x00000258
	.4byte 0x00010003
	.4byte 0x00000003
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_クッパ_las_000152d8
	.4byte 0xFE363C82
	.4byte 0xFD050F80
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000003
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_クッパ_las_000152d8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_KOOPA_SATI_las_00015818
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_KUPPA1_las_00015834
	.4byte 0x0003005B
	.4byte evt_snd_bgm_scope
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A94
	.4byte 0xF24A7A80
	.4byte 0x000003E8
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_クッパ_las_000152d8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte 0x00000000
	.4byte str_kemuri1_n64_las_00015844
	.4byte 0x00000004
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_クッパ_las_000152d8
	.4byte str_KPA_D_2_las_00015850
	.4byte 0x0003005B
	.4byte evt_npc_pera_onoff
	.4byte str_クッパ_las_000152d8
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_クッパ_las_000152d8
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_クッパ_las_000152d8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000003C
	.4byte 0x0006005B
	.4byte eff_guruguru
	.4byte str_koopa_piyo_las_00015858
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG8_KOOPA_PIYO1_las_00015864
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte evt_npc_pera_onoff
	.4byte str_シュリョー_las_000152cc
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_シュリョー_las_000152cc
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x00010005
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_gare_las_0001587c
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_gare_las_0001587c
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_gare_las_0001587c
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000041
	.4byte 0x0000005F
	.4byte 0x00000149
	.4byte 0x00000041
	.4byte 0x0000002D
	.4byte 0xFFFFFFEE
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_クッパ_las_000152d8
	.4byte str_KPA_Z_3_las_00015884
	.4byte str_KPA_T_8_las_0001588c
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_87_las_00015894
	.4byte 0x00000000
	.4byte str_クッパ_las_000152d8
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF2E
	.4byte 0x0000012C
	.4byte 0x0000026B
	.4byte 0x000000DF
	.4byte 0x00000041
	.4byte 0xFFFFFFF4
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte syuryo_baria_recalc_pos
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_88_las_000158a0
	.4byte 0x00000000
	.4byte str_ピーチ姫_las_000152e8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000004B
	.4byte 0x0000006E
	.4byte 0x00000193
	.4byte 0x0000004B
	.4byte 0x00000032
	.4byte 0xFFFFFFEE
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_pera_onoff
	.4byte str_シュリョー_las_000152cc
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_シュリョー_las_000152cc
	.4byte 0x0000010E
	.4byte 0x0003005B
	.4byte evt_npc_pera_onoff
	.4byte str_クッパ_las_000152d8
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_クッパ_las_000152d8
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_89_las_000158ac
	.4byte 0x00000000
	.4byte str_クッパ_las_000152d8
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_クッパ_las_000152d8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x000000C8
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000032
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ババ_las_000152e0
	.4byte 0x00000078
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ババ_las_000152e0
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_90_las_000158b8
	.4byte 0x00000000
	.4byte str_ババ_las_000152e0
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_npc_kamek_kemuri2
	.4byte str_ババ_las_000152e0
	.4byte 0x00000BB8
	.4byte 0x00000000
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
	.4byte str_ババ_las_000152e0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_KUPPA_KAMEBABA_F_las_000158c4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ババ_las_000152e0
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFE363C83
	.4byte 0x00000019
	.4byte 0x00000BB8
	.4byte 0x00010003
	.4byte 0x00000004
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ババ_las_000152e0
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0xFE363C84
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
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_eff_softdelete
	.4byte str_koopa_piyo_las_00015858
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_クッパ_las_000152d8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_KOOPA_SURP_las_000158dc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_クッパ_las_000152d8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_クッパ_las_000152d8
	.4byte 0x00000200
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_クッパ_las_000152d8
	.4byte str_KPA_S_1_las_000158fc
	.4byte str_KPA_T_1_las_00015904
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_クッパ_las_000152d8
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000014
	.4byte 0x000000C8
	.4byte 0x00010003
	.4byte 0x00000005
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_クッパ_las_000152d8
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0xFE363C84
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000005
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x00010003
	.4byte 0x00000006
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_クッパ_las_000152d8
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0xFE363C84
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000006
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_クッパ_las_000152d8
	.4byte str_KPA_U_1_las_0001590c
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFAB
	.4byte 0x00000054
	.4byte 0x0000014A
	.4byte 0xFFFFFFAB
	.4byte 0x00000023
	.4byte 0xFFFFFFEE
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_SURP_las_00015914
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_5B_las_000155c0
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_N_las_00015934
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000004B
	.4byte 0x00000078
	.4byte 0x00000193
	.4byte 0x0000004B
	.4byte 0x0000003C
	.4byte 0xFFFFFFEE
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_91_las_0001593c
	.4byte 0x00000000
	.4byte str_クッパ_las_000152d8
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ババ_las_000152e0
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_ババ_las_000152e0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ババ_las_000152e0
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0xFE363C83
	.4byte 0x00020035
	.4byte 0xFE363C85
	.4byte 0x00000005
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000001
	.4byte 0xFE363C83
	.4byte 0xFE363C85
	.4byte 0x00000064
	.4byte 0x00010003
	.4byte 0x00000007
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ババ_las_000152e0
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0xFE363C84
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000001
	.4byte 0xFE363C85
	.4byte 0xFE363C83
	.4byte 0x00000064
	.4byte 0x00010003
	.4byte 0x00000008
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ババ_las_000152e0
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0xFE363C84
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000008
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_92_las_00015948
	.4byte 0x00000000
	.4byte str_ババ_las_000152e0
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ババ_las_000152e0
	.4byte 0x0000010E
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000041
	.4byte 0x0000006B
	.4byte 0x00000117
	.4byte 0x00000041
	.4byte 0x00000041
	.4byte 0xFFFFFFEE
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_93_las_00015954
	.4byte 0x00000000
	.4byte str_クッパ_las_000152d8
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_クッパ_las_000152d8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_クッパ_las_000152d8
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xF24B6A80
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFB0
	.4byte 0x0000004D
	.4byte 0x00000117
	.4byte 0xFFFFFFB0
	.4byte 0x00000023
	.4byte 0xFFFFFFEE
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_Y_las_00015438
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg8_las_94_las_00015960
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000041
	.4byte 0x0000006B
	.4byte 0x00000117
	.4byte 0x00000041
	.4byte 0x00000041
	.4byte 0xFFFFFFEE
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_95_las_0001596c
	.4byte 0x00000000
	.4byte str_クッパ_las_000152d8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x00000430
	.4byte 0x00000000
	.4byte 0x00000078
	.4byte 0xFFFFFFEE
	.4byte 0x00000190
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xF24C5A80
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xF24C5A80
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_クッパ_las_000152d8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_クッパ_las_000152d8
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_ババ_las_000152e0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x0008005B
	.4byte evt_npc_kamek_move_position
	.4byte str_ババ_las_000152e0
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0003005B
	.4byte evt_npc_set_battle_info
	.4byte str_クッパ_las_000152d8
	.4byte 0x0000000D
	.4byte 0x0002005B
	.4byte evt_npc_battle_start
	.4byte str_クッパ_las_000152d8
	.4byte 0x0001005B
	.4byte evt_npc_wait_battle_end
	.4byte 0x0002005B
	.4byte evt_eff_delete
	.4byte str_baria_las_00015978
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFFE2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFFBA
	.4byte 0x00000000
	.4byte 0x00000014
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_クッパ_las_000152d8
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0xFFFFFFF6
	.4byte 0x0003005B
	.4byte evt_npc_set_width
	.4byte str_クッパ_las_000152d8
	.4byte 0x00000069
	.4byte 0x0003005B
	.4byte evt_npc_set_height
	.4byte str_クッパ_las_000152d8
	.4byte 0x00000037
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_ババ_las_000152e0
	.4byte str_カメックババ（地上）_las_00015980
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ババ_las_000152e0
	.4byte 0x00000046
	.4byte 0x00000000
	.4byte 0x00000014
	.4byte 0x0003005B
	.4byte evt_npc_set_width
	.4byte str_ババ_las_000152e0
	.4byte 0x0000002D
	.4byte 0x0003005B
	.4byte evt_npc_set_height
	.4byte str_ババ_las_000152e0
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_クッパ_las_000152d8
	.4byte str_KPA_Z_3_las_00015884
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_ババ_las_000152e0
	.4byte str_D_2_las_00015998
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_クッパ_las_000152d8
	.4byte str_KPA_Z_3_las_00015884
	.4byte str_KPA_T_8_las_0001588c
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ピーチ姫_las_000152e8
	.4byte 0x0000028A
	.4byte 0x00000019
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_シュリョー_las_000152cc
	.4byte 0x0000028A
	.4byte 0x00000019
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ピーチ姫_las_000152e8
	.4byte 0x00000080
	.4byte 0x0006005B
	.4byte eff_guruguru
	.4byte str_koopa_piyo_las_00015858
	.4byte 0xFFFFFFF6
	.4byte 0x0000003C
	.4byte 0xFFFFFFF6
	.4byte 0x00000014
	.4byte 0x0006005B
	.4byte eff_guruguru
	.4byte str_baba_piyo_las_0001599c
	.4byte 0x00000046
	.4byte 0x0000001E
	.4byte 0x00000014
	.4byte 0x00000014
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG8_KOOPA_PIYO1_las_00015864
	.4byte 0xFFFFFFF6
	.4byte 0x0000003C
	.4byte 0xFFFFFFF6
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000000
	.4byte 0x00000084
	.4byte 0x00000212
	.4byte 0x00000000
	.4byte 0x00000037
	.4byte 0xFFFFFFEE
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_101_las_000159a8
	.4byte 0x00000000
	.4byte str_クッパ_las_000152d8
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg8_las_102_las_000159b8
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_NOD1_las_000159c8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_2_las_000159e0
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000003
	.4byte 0x00000000
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
	.4byte 0xFFFFFFCE
	.4byte 0x00000054
	.4byte 0x0000014A
	.4byte 0xFFFFFFCE
	.4byte 0x00000023
	.4byte 0xFFFFFFEE
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg8_las_103_las_000159e8
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_N_las_00015934
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000064
	.4byte 0x00000054
	.4byte 0x0000014A
	.4byte 0x00000064
	.4byte 0x00000023
	.4byte 0xFFFFFFEE
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFD8
	.4byte 0x00000041
	.4byte 0x000000E6
	.4byte 0xFFFFFFD8
	.4byte 0x0000001E
	.4byte 0xFFFFFFEE
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000002EE
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_DANGER2_las_000159f8
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_SURP_las_00015a08
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_5B_las_000155c0
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000024
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg8_las_104_las_00015a28
	.4byte 0x00000000
	.4byte str_ピーチ姫_las_000152e8
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg8_las_105_las_00015a38
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_gyoku_las_00015a48
	.4byte 0xFFFFFF9C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_A_gyoku_las_00015a50
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_isu_las_00015a58
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_i02_f2_isu_04C_las_00015a60
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_isu_tao_las_00015a74
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_i02_f2_isu_04C1_las_00015a80
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_pera_onoff
	.4byte str_クッパ_las_000152d8
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_pera_onoff
	.4byte str_ババ_las_000152e0
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_クッパ_las_000152d8
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ババ_las_000152e0
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_シュリョー_las_000152cc
	.4byte 0x00000258
	.4byte 0x00000019
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_シュリョー_las_000152cc
	.4byte 0x0000005A
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_シュリョー_las_000152cc
	.4byte 0x40002000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_シュリョー_las_000152cc
	.4byte 0x00020010
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_シュリョー_las_000152cc
	.4byte str_第三勢力総統（ヒビ）_las_00015a94
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_シュリョー_las_000152cc
	.4byte 0x000002BC
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000096
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_シュリョー_las_000152cc
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000001E
	.4byte 0x00000050
	.4byte 0x000000AD
	.4byte 0x000001F4
	.4byte 0x0000003C
	.4byte 0x00000005
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0003005B
	.4byte evt_npc_pera_onoff
	.4byte str_クッパ_las_000152d8
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_pera_onoff
	.4byte str_ババ_las_000152e0
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_クッパ_las_000152d8
	.4byte 0x0000010E
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ババ_las_000152e0
	.4byte 0x0000010E
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_クッパ_las_000152d8
	.4byte 0x00000620
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_ババ_las_000152e0
	.4byte 0x00000600
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_クッパ_las_000152d8
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_ババ_las_000152e0
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_クッパ_las_000152d8
	.4byte 0x00000006
	.4byte koopa_talk
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_ババ_las_000152e0
	.4byte 0x00000006
	.4byte baba_talk
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x00000190
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj koopa_evt

# .data:0x3C0C | 0x176E4 | size: 0x48
.obj shuryolight_init, local
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x0000018E
	.4byte 0x0002001A
	.4byte 0xF5DE0180
	.4byte 0x00000190
	.4byte 0x0002005B
	.4byte evt_shuryolight_init_16_text_10C8C
	.4byte str_シュリョー_las_000152cc
	.4byte 0x0004005B
	.4byte evt_shuryolight_run_evt_16_text_10954
	.4byte shuryolight_pow_normal_16_data_53CD8
	.4byte shuryolight_head_normal_16_data_53E04
	.4byte shuryolight_tue_normal_16_data_53F04
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj shuryolight_init

# .data:0x3C54 | 0x1772C | size: 0xB8
.obj shan_init, local
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00010005
	.4byte 0x00000014
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
	.4byte 0xF24A9E80
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_fire_las_00015aac
	.4byte 0x00000003
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xF24A7D4C
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

# .data:0x3D0C | 0x177E4 | size: 0x3B8
.obj las_28_init_evt_16_data_177E4, global
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x00000190
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_DANGER2_las_000159f8
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000200
	.4byte 0x00000020
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG8_LAS9_las_00015ab4
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_snd_set_rev_mode
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x00020019
	.4byte 0xF5DE0180
	.4byte 0x0000018E
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_npc_setup
	.4byte npcEnt
	.4byte 0x0001005E
	.4byte shuryolight_init
	.4byte 0x0003005B
	.4byte evt_hit_bind_mapobj
	.4byte str_A_gyoku_las_00015a50
	.4byte str_S_gyoku_las_00015a48
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x00000190
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_S_gyoku_las_00015a48
	.4byte 0xFFFFFF9C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_hit_bind_update
	.4byte str_A_gyoku_las_00015a50
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_isu_las_00015a58
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_i02_f2_isu_04C_las_00015a60
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_isu_tao_las_00015a74
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_i02_f2_isu_04C1_las_00015a80
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_gare_las_0001587c
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_gare_las_00015ac4
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte shan_init
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x0000018E
	.4byte 0x0001005C
	.4byte first_evt
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF5DE0180
	.4byte 0x0000018F
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_koopa_evt_las_00015acc
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0xFFFFFFB5
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0xFFFFFF9C
	.4byte 0x00000000
	.4byte 0x00000019
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_シュリョー_las_000152cc
	.4byte 0x00000050
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_シュリョー_las_000152cc
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_ピーチ姫_las_000152e8
	.4byte 0x000001A4
	.4byte 0x00000019
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_ピーチ姫_las_000152e8
	.4byte 0x0000010E
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000046
	.4byte 0x00000056
	.4byte 0x000000E6
	.4byte 0x00000046
	.4byte 0x00000032
	.4byte 0xFFFFFFEE
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0004005B
	.4byte evt_shuryolight_run_evt_16_text_10954
	.4byte shuryolight_pow_tenmetu_16_data_53D88
	.4byte shuryolight_head_off_16_data_53ECC
	.4byte shuryolight_tue_normal_16_data_53F04
	.4byte 0x0001005B
	.4byte syuryo_baria
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_S_3_las_000156bc
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_シュリョー_las_000152cc
	.4byte str_A_3B_las_00015610
	.4byte 0x0001005C
	.4byte koopa_evt
	.4byte 0x0000006D
	.4byte 0x00000020
	.4byte 0x0001005C
	.4byte syuryo_evt
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_bero_get_entername
	.4byte 0xFE363C80
	.4byte 0x0002000C
	.4byte 0xFE363C80
	.4byte str_from26_las_00015ad8
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_pos
	.4byte 0x000000C8
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_party_set_pos
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x0000012C
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_cam_road_reset
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_seq_wait
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000000B4
	.4byte 0x0003005B
	.4byte evt_party_cont_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_mario_wait_landon
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj las_28_init_evt_16_data_177E4

# .data:0x40C4 | 0x17B9C | size: 0x4
.obj gap_04_00017B9C_data, global
.hidden gap_04_00017B9C_data
	.4byte 0x00000000
.endobj gap_04_00017B9C_data

# 0x00000068..0x00000070 | size: 0x8
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x68 | size: 0x8
.obj name, local
	.skip 0x8
.endobj name
