.include "macros.inc"
.file "unit_dokugassun.o"

# 0x00000FE4..0x0000130C | size: 0x328
.text
.balign 4

# .text:0x0 | 0xFE4 | size: 0x19C
.fn eff_poison_barrier, local
/* 00000FE4 000010A8  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 00000FE8 000010AC  7C 08 02 A6 */	mflr r0
/* 00000FEC 000010B0  90 01 00 74 */	stw r0, 0x74(r1)
/* 00000FF0 000010B4  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 00000FF4 000010B8  F3 E1 00 68 */	psq_st f31, 0x68(r1), 0, qr0
/* 00000FF8 000010BC  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 00000FFC 000010C0  F3 C1 00 58 */	psq_st f30, 0x58(r1), 0, qr0
/* 00001000 000010C4  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 00001004 000010C8  F3 A1 00 48 */	psq_st f29, 0x48(r1), 0, qr0
/* 00001008 000010CC  BF A1 00 34 */	stmw r29, 0x34(r1)
/* 0000100C 000010D0  7C 7D 1B 78 */	mr r29, r3
/* 00001010 000010D4  80 83 00 18 */	lwz r4, 0x18(r3)
/* 00001014 000010D8  80 84 00 00 */	lwz r4, 0x0(r4)
/* 00001018 000010DC  4B FF FD 71 */	bl evtGetValue
/* 0000101C 000010E0  7C 64 1B 78 */	mr r4, r3
/* 00001020 000010E4  7F A3 EB 78 */	mr r3, r29
/* 00001024 000010E8  4B FF FD 65 */	bl BattleTransID
/* 00001028 000010EC  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 0000102C 000010F0  38 A4 00 00 */	addi r5, r4, _battleWorkPointer@l
/* 00001030 000010F4  7C 64 1B 78 */	mr r4, r3
/* 00001034 000010F8  80 65 00 00 */	lwz r3, 0x0(r5)
/* 00001038 000010FC  4B FF FD 51 */	bl BattleGetUnitPtr
/* 0000103C 00001100  3C C0 00 00 */	lis r6, double_to_int_win_000052e0@ha
/* 00001040 00001104  3C A0 00 00 */	lis r5, float_0p5_win_000052d8@ha
/* 00001044 00001108  3C 80 00 00 */	lis r4, float_32767_win_000052dc@ha
/* 00001048 0000110C  CB A6 00 00 */	lfd f29, double_to_int_win_000052e0@l(r6)
/* 0000104C 00001110  C3 C5 00 00 */	lfs f30, float_0p5_win_000052d8@l(r5)
/* 00001050 00001114  7C 7E 1B 78 */	mr r30, r3
/* 00001054 00001118  C3 E4 00 00 */	lfs f31, float_32767_win_000052dc@l(r4)
/* 00001058 0000111C  3B A0 00 00 */	li r29, 0x0
/* 0000105C 00001120  3F E0 43 30 */	lis r31, 0x4330
.L_00001060:
/* 00001060 00001124  7F C3 F3 78 */	mr r3, r30
/* 00001064 00001128  38 81 00 10 */	addi r4, r1, 0x10
/* 00001068 0000112C  38 A1 00 0C */	addi r5, r1, 0xc
/* 0000106C 00001130  38 C1 00 08 */	addi r6, r1, 0x8
/* 00001070 00001134  4B FF FD 19 */	bl BtlUnit_GetPos
/* 00001074 00001138  38 60 00 14 */	li r3, 0x14
/* 00001078 0000113C  4B FF FD 11 */	bl irand
/* 0000107C 00001140  38 03 FF F6 */	subi r0, r3, 0xa
/* 00001080 00001144  93 E1 00 18 */	stw r31, 0x18(r1)
/* 00001084 00001148  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 00001088 0000114C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 0000108C 00001150  90 01 00 1C */	stw r0, 0x1c(r1)
/* 00001090 00001154  38 60 00 1E */	li r3, 0x1e
/* 00001094 00001158  C8 21 00 18 */	lfd f1, 0x18(r1)
/* 00001098 0000115C  EC 21 E8 28 */	fsubs f1, f1, f29
/* 0000109C 00001160  EC 00 08 2A */	fadds f0, f0, f1
/* 000010A0 00001164  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 000010A4 00001168  4B FF FC E5 */	bl irand
/* 000010A8 0000116C  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 000010AC 00001170  93 E1 00 20 */	stw r31, 0x20(r1)
/* 000010B0 00001174  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 000010B4 00001178  90 01 00 24 */	stw r0, 0x24(r1)
/* 000010B8 0000117C  C8 21 00 20 */	lfd f1, 0x20(r1)
/* 000010BC 00001180  EC 21 E8 28 */	fsubs f1, f1, f29
/* 000010C0 00001184  EC 00 08 2A */	fadds f0, f0, f1
/* 000010C4 00001188  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 000010C8 0000118C  4B FF FC C1 */	bl rand
/* 000010CC 00001190  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 000010D0 00001194  38 1D 00 01 */	addi r0, r29, 0x1
/* 000010D4 00001198  90 61 00 2C */	stw r3, 0x2c(r1)
/* 000010D8 0000119C  1C 80 00 0A */	mulli r4, r0, 0xa
/* 000010DC 000011A0  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 000010E0 000011A4  38 60 00 02 */	li r3, 0x2
/* 000010E4 000011A8  93 E1 00 28 */	stw r31, 0x28(r1)
/* 000010E8 000011AC  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 000010EC 000011B0  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 000010F0 000011B4  C0 61 00 08 */	lfs f3, 0x8(r1)
/* 000010F4 000011B8  EC 00 E8 28 */	fsubs f0, f0, f29
/* 000010F8 000011BC  EC 1E 00 32 */	fmuls f0, f30, f0
/* 000010FC 000011C0  EC 00 F8 24 */	fdivs f0, f0, f31
/* 00001100 000011C4  EC 9E 00 2A */	fadds f4, f30, f0
/* 00001104 000011C8  4B FF FC 85 */	bl effVaporN64Entry
/* 00001108 000011CC  80 C3 00 0C */	lwz r6, 0xc(r3)
/* 0000110C 000011D0  38 A0 00 20 */	li r5, 0x20
/* 00001110 000011D4  3B BD 00 01 */	addi r29, r29, 0x1
/* 00001114 000011D8  38 80 00 73 */	li r4, 0x73
/* 00001118 000011DC  90 A6 00 18 */	stw r5, 0x18(r6)
/* 0000111C 000011E0  38 60 00 64 */	li r3, 0x64
/* 00001120 000011E4  38 00 00 FF */	li r0, 0xff
/* 00001124 000011E8  2C 1D 00 03 */	cmpwi r29, 0x3
/* 00001128 000011EC  90 86 00 1C */	stw r4, 0x1c(r6)
/* 0000112C 000011F0  90 66 00 20 */	stw r3, 0x20(r6)
/* 00001130 000011F4  90 06 00 24 */	stw r0, 0x24(r6)
/* 00001134 000011F8  90 A6 00 28 */	stw r5, 0x28(r6)
/* 00001138 000011FC  90 86 00 2C */	stw r4, 0x2c(r6)
/* 0000113C 00001200  90 66 00 30 */	stw r3, 0x30(r6)
/* 00001140 00001204  90 06 00 34 */	stw r0, 0x34(r6)
/* 00001144 00001208  C0 1E 01 14 */	lfs f0, 0x114(r30)
/* 00001148 0000120C  D0 06 00 40 */	stfs f0, 0x40(r6)
/* 0000114C 00001210  41 80 FF 14 */	blt .L_00001060
/* 00001150 00001214  38 60 00 02 */	li r3, 0x2
/* 00001154 00001218  E3 E1 00 68 */	psq_l f31, 0x68(r1), 0, qr0
/* 00001158 0000121C  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 0000115C 00001220  E3 C1 00 58 */	psq_l f30, 0x58(r1), 0, qr0
/* 00001160 00001224  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 00001164 00001228  E3 A1 00 48 */	psq_l f29, 0x48(r1), 0, qr0
/* 00001168 0000122C  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 0000116C 00001230  BB A1 00 34 */	lmw r29, 0x34(r1)
/* 00001170 00001234  80 01 00 74 */	lwz r0, 0x74(r1)
/* 00001174 00001238  7C 08 03 A6 */	mtlr r0
/* 00001178 0000123C  38 21 00 70 */	addi r1, r1, 0x70
/* 0000117C 00001240  4E 80 00 20 */	blr
.endfn eff_poison_barrier

# .text:0x19C | 0x1180 | size: 0x18C
.fn eff_poison_breath, local
/* 00001180 00001244  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 00001184 00001248  7C 08 02 A6 */	mflr r0
/* 00001188 0000124C  90 01 00 64 */	stw r0, 0x64(r1)
/* 0000118C 00001250  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 00001190 00001254  F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 00001194 00001258  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 00001198 0000125C  F3 C1 00 48 */	psq_st f30, 0x48(r1), 0, qr0
/* 0000119C 00001260  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 000011A0 00001264  F3 A1 00 38 */	psq_st f29, 0x38(r1), 0, qr0
/* 000011A4 00001268  80 83 00 18 */	lwz r4, 0x18(r3)
/* 000011A8 0000126C  80 84 00 00 */	lwz r4, 0x0(r4)
/* 000011AC 00001270  4B FF FB DD */	bl evtGetValue
/* 000011B0 00001274  2C 03 00 00 */	cmpwi r3, 0x0
/* 000011B4 00001278  40 82 00 10 */	bne .L_000011C4
/* 000011B8 0000127C  3C 60 00 00 */	lis r3, float_neg125_win_000052e8@ha
/* 000011BC 00001280  C3 E3 00 00 */	lfs f31, float_neg125_win_000052e8@l(r3)
/* 000011C0 00001284  48 00 00 0C */	b .L_000011CC
.L_000011C4:
/* 000011C4 00001288  3C 60 00 00 */	lis r3, float_125_win_000052ec@ha
/* 000011C8 0000128C  C3 E3 00 00 */	lfs f31, float_125_win_000052ec@l(r3)
.L_000011CC:
/* 000011CC 00001290  38 60 00 96 */	li r3, 0x96
/* 000011D0 00001294  4B FF FB B9 */	bl irand
/* 000011D4 00001298  38 63 FF B5 */	subi r3, r3, 0x4b
/* 000011D8 0000129C  3C 00 43 30 */	lis r0, 0x4330
/* 000011DC 000012A0  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 000011E0 000012A4  3C 80 00 00 */	lis r4, double_to_int_win_000052e0@ha
/* 000011E4 000012A8  90 61 00 0C */	stw r3, 0xc(r1)
/* 000011E8 000012AC  38 60 00 46 */	li r3, 0x46
/* 000011EC 000012B0  C8 24 00 00 */	lfd f1, double_to_int_win_000052e0@l(r4)
/* 000011F0 000012B4  90 01 00 08 */	stw r0, 0x8(r1)
/* 000011F4 000012B8  C8 01 00 08 */	lfd f0, 0x8(r1)
/* 000011F8 000012BC  EC 00 08 28 */	fsubs f0, f0, f1
/* 000011FC 000012C0  EF FF 00 2A */	fadds f31, f31, f0
/* 00001200 000012C4  4B FF FB 89 */	bl irand
/* 00001204 000012C8  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 00001208 000012CC  3C 00 43 30 */	lis r0, 0x4330
/* 0000120C 000012D0  90 61 00 14 */	stw r3, 0x14(r1)
/* 00001210 000012D4  3C 80 00 00 */	lis r4, double_to_int_win_000052e0@ha
/* 00001214 000012D8  C8 24 00 00 */	lfd f1, double_to_int_win_000052e0@l(r4)
/* 00001218 000012DC  38 60 00 50 */	li r3, 0x50
/* 0000121C 000012E0  90 01 00 10 */	stw r0, 0x10(r1)
/* 00001220 000012E4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 00001224 000012E8  EF C0 08 28 */	fsubs f30, f0, f1
/* 00001228 000012EC  4B FF FB 61 */	bl irand
/* 0000122C 000012F0  38 63 FF D8 */	subi r3, r3, 0x28
/* 00001230 000012F4  3C 00 43 30 */	lis r0, 0x4330
/* 00001234 000012F8  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 00001238 000012FC  3C 80 00 00 */	lis r4, double_to_int_win_000052e0@ha
/* 0000123C 00001300  90 61 00 1C */	stw r3, 0x1c(r1)
/* 00001240 00001304  C8 24 00 00 */	lfd f1, double_to_int_win_000052e0@l(r4)
/* 00001244 00001308  90 01 00 18 */	stw r0, 0x18(r1)
/* 00001248 0000130C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 0000124C 00001310  EF A0 08 28 */	fsubs f29, f0, f1
/* 00001250 00001314  4B FF FB 39 */	bl rand
/* 00001254 00001318  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 00001258 0000131C  3C 00 43 30 */	lis r0, 0x4330
/* 0000125C 00001320  3C 80 00 00 */	lis r4, double_to_int_win_000052e0@ha
/* 00001260 00001324  90 61 00 24 */	stw r3, 0x24(r1)
/* 00001264 00001328  38 A4 00 00 */	addi r5, r4, double_to_int_win_000052e0@l
/* 00001268 0000132C  3C 60 00 00 */	lis r3, float_32767_win_000052dc@ha
/* 0000126C 00001330  90 01 00 20 */	stw r0, 0x20(r1)
/* 00001270 00001334  38 83 00 00 */	addi r4, r3, float_32767_win_000052dc@l
/* 00001274 00001338  C8 45 00 00 */	lfd f2, 0x0(r5)
/* 00001278 0000133C  3C 60 00 00 */	lis r3, float_2p5_win_000052f0@ha
/* 0000127C 00001340  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 00001280 00001344  FC 20 F8 90 */	fmr f1, f31
/* 00001284 00001348  C0 84 00 00 */	lfs f4, 0x0(r4)
/* 00001288 0000134C  FC 60 E8 90 */	fmr f3, f29
/* 0000128C 00001350  EC A0 10 28 */	fsubs f5, f0, f2
/* 00001290 00001354  C0 03 00 00 */	lfs f0, float_2p5_win_000052f0@l(r3)
/* 00001294 00001358  FC 40 F0 90 */	fmr f2, f30
/* 00001298 0000135C  38 60 00 00 */	li r3, 0x0
/* 0000129C 00001360  38 80 00 0F */	li r4, 0xf
/* 000012A0 00001364  EC 85 20 24 */	fdivs f4, f5, f4
/* 000012A4 00001368  EC 80 20 2A */	fadds f4, f0, f4
/* 000012A8 0000136C  4B FF FA E1 */	bl effVaporN64Entry
/* 000012AC 00001370  80 E3 00 0C */	lwz r7, 0xc(r3)
/* 000012B0 00001374  38 C0 00 20 */	li r6, 0x20
/* 000012B4 00001378  38 A0 00 73 */	li r5, 0x73
/* 000012B8 0000137C  38 80 00 64 */	li r4, 0x64
/* 000012BC 00001380  90 C7 00 18 */	stw r6, 0x18(r7)
/* 000012C0 00001384  38 00 00 FF */	li r0, 0xff
/* 000012C4 00001388  38 60 00 02 */	li r3, 0x2
/* 000012C8 0000138C  90 A7 00 1C */	stw r5, 0x1c(r7)
/* 000012CC 00001390  90 87 00 20 */	stw r4, 0x20(r7)
/* 000012D0 00001394  90 07 00 24 */	stw r0, 0x24(r7)
/* 000012D4 00001398  90 C7 00 28 */	stw r6, 0x28(r7)
/* 000012D8 0000139C  90 A7 00 2C */	stw r5, 0x2c(r7)
/* 000012DC 000013A0  90 87 00 30 */	stw r4, 0x30(r7)
/* 000012E0 000013A4  90 07 00 34 */	stw r0, 0x34(r7)
/* 000012E4 000013A8  E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 000012E8 000013AC  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 000012EC 000013B0  E3 C1 00 48 */	psq_l f30, 0x48(r1), 0, qr0
/* 000012F0 000013B4  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 000012F4 000013B8  E3 A1 00 38 */	psq_l f29, 0x38(r1), 0, qr0
/* 000012F8 000013BC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 000012FC 000013C0  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 00001300 000013C4  7C 08 03 A6 */	mtlr r0
/* 00001304 000013C8  38 21 00 60 */	addi r1, r1, 0x60
/* 00001308 000013CC  4E 80 00 20 */	blr
.endfn eff_poison_breath

# 0x00001A00..0x00001BB0 | size: 0x1B0
.rodata
.balign 8

# .rodata:0x0 | 0x1A00 | size: 0x12
.obj str_btl_un_dokugassun_win_00005148, local
	.string "btl_un_dokugassun"
.endobj str_btl_un_dokugassun_win_00005148

# .rodata:0x12 | 0x1A12 | size: 0x2
.obj gap_03_00001A12_rodata, global
.hidden gap_03_00001A12_rodata
	.2byte 0x0000
.endobj gap_03_00001A12_rodata

# .rodata:0x14 | 0x1A14 | size: 0x16
.obj str_SFX_ENM_KUMO_DAMAGED_win_0000515c, local
	.string "SFX_ENM_KUMO_DAMAGED1"
.endobj str_SFX_ENM_KUMO_DAMAGED_win_0000515c

# .rodata:0x2A | 0x1A2A | size: 0x2
.obj gap_03_00001A2A_rodata, global
.hidden gap_03_00001A2A_rodata
	.2byte 0x0000
.endobj gap_03_00001A2A_rodata

# .rodata:0x2C | 0x1A2C | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_win_00005174, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_win_00005174

# .rodata:0x41 | 0x1A41 | size: 0x3
.obj gap_03_00001A41_rodata, global
.hidden gap_03_00001A41_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001A41_rodata

# .rodata:0x44 | 0x1A44 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_win_0000518c, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_win_0000518c

# .rodata:0x58 | 0x1A58 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_win_000051a0, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_win_000051a0

# .rodata:0x71 | 0x1A71 | size: 0x3
.obj gap_03_00001A71_rodata, global
.hidden gap_03_00001A71_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001A71_rodata

# .rodata:0x74 | 0x1A74 | size: 0xA
.obj str_c_kmoon_g_win_000051bc, local
	.string "c_kmoon_g"
.endobj str_c_kmoon_g_win_000051bc

# .rodata:0x7E | 0x1A7E | size: 0x2
.obj gap_03_00001A7E_rodata, global
.hidden gap_03_00001A7E_rodata
	.2byte 0x0000
.endobj gap_03_00001A7E_rodata

# .rodata:0x80 | 0x1A80 | size: 0x4
.obj str_R_1_win_000051c8, local
	.string "R_1"
.endobj str_R_1_win_000051c8

# .rodata:0x84 | 0x1A84 | size: 0x13
.obj str_SFX_ENM_KUMO_MOVE3_win_000051cc, local
	.string "SFX_ENM_KUMO_MOVE3"
.endobj str_SFX_ENM_KUMO_MOVE3_win_000051cc

# .rodata:0x97 | 0x1A97 | size: 0x1
.obj gap_03_00001A97_rodata, global
.hidden gap_03_00001A97_rodata
	.byte 0x00
.endobj gap_03_00001A97_rodata

# .rodata:0x98 | 0x1A98 | size: 0x1A
.obj str_SFX_ENM_DOKU_KUMO_CH_win_000051e0, local
	.string "SFX_ENM_DOKU_KUMO_CHARGE1"
.endobj str_SFX_ENM_DOKU_KUMO_CH_win_000051e0

# .rodata:0xB2 | 0x1AB2 | size: 0x2
.obj gap_03_00001AB2_rodata, global
.hidden gap_03_00001AB2_rodata
	.2byte 0x0000
.endobj gap_03_00001AB2_rodata

# .rodata:0xB4 | 0x1AB4 | size: 0x5
.obj str_A_2B_win_000051fc, local
	.string "A_2B"
.endobj str_A_2B_win_000051fc

# .rodata:0xB9 | 0x1AB9 | size: 0x3
.obj gap_03_00001AB9_rodata, global
.hidden gap_03_00001AB9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001AB9_rodata

# .rodata:0xBC | 0x1ABC | size: 0x21
.obj str_SFX_ENM_DOKU_KUMO_CH_win_00005204, local
	.string "SFX_ENM_DOKU_KUMO_CHARGE_ATTACK1"
.endobj str_SFX_ENM_DOKU_KUMO_CH_win_00005204

# .rodata:0xDD | 0x1ADD | size: 0x3
.obj gap_03_00001ADD_rodata, global
.hidden gap_03_00001ADD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001ADD_rodata

# .rodata:0xE0 | 0x1AE0 | size: 0x5
.obj str_A_3A_win_00005228, local
	.string "A_3A"
.endobj str_A_3A_win_00005228

# .rodata:0xE5 | 0x1AE5 | size: 0x3
.obj gap_03_00001AE5_rodata, global
.hidden gap_03_00001AE5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001AE5_rodata

# .rodata:0xE8 | 0x1AE8 | size: 0x5
.obj str_A_3B_win_00005230, local
	.string "A_3B"
.endobj str_A_3B_win_00005230

# .rodata:0xED | 0x1AED | size: 0x3
.obj gap_03_00001AED_rodata, global
.hidden gap_03_00001AED_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001AED_rodata

# .rodata:0xF0 | 0x1AF0 | size: 0x4
.obj str_S_1_win_00005238, local
	.string "S_1"
.endobj str_S_1_win_00005238

# .rodata:0xF4 | 0x1AF4 | size: 0x4
.obj str_N_1_win_0000523c, local
	.string "N_1"
.endobj str_N_1_win_0000523c

# .rodata:0xF8 | 0x1AF8 | size: 0x4
.obj str_Y_1_win_00005240, local
	.string "Y_1"
.endobj str_Y_1_win_00005240

# .rodata:0xFC | 0x1AFC | size: 0x4
.obj str_K_1_win_00005244, local
	.string "K_1"
.endobj str_K_1_win_00005244

# .rodata:0x100 | 0x1B00 | size: 0x4
.obj str_X_1_win_00005248, local
	.string "X_1"
.endobj str_X_1_win_00005248

# .rodata:0x104 | 0x1B04 | size: 0x4
.obj str_Q_1_win_0000524c, local
	.string "Q_1"
.endobj str_Q_1_win_0000524c

# .rodata:0x108 | 0x1B08 | size: 0x4
.obj str_A_1_win_00005250, local
	.string "A_1"
.endobj str_A_1_win_00005250

# .rodata:0x10C | 0x1B0C | size: 0x4
.obj str_D_1_win_00005254, local
	.string "D_1"
.endobj str_D_1_win_00005254

# .rodata:0x110 | 0x1B10 | size: 0x4
.obj str_W_1_win_00005258, local
	.string "W_1"
.endobj str_W_1_win_00005258

# .rodata:0x114 | 0x1B14 | size: 0x4
.obj str_T_1_win_0000525c, local
	.string "T_1"
.endobj str_T_1_win_0000525c

# .rodata:0x118 | 0x1B18 | size: 0x13
.obj str_SFX_ENM_KUMO_MOVE4_win_00005260, local
	.string "SFX_ENM_KUMO_MOVE4"
.endobj str_SFX_ENM_KUMO_MOVE4_win_00005260

# .rodata:0x12B | 0x1B2B | size: 0x1
.obj gap_03_00001B2B_rodata, global
.hidden gap_03_00001B2B_rodata
	.byte 0x00
.endobj gap_03_00001B2B_rodata

# .rodata:0x12C | 0x1B2C | size: 0x13
.obj str_SFX_ENM_KUMO_MOVE5_win_00005274, local
	.string "SFX_ENM_KUMO_MOVE5"
.endobj str_SFX_ENM_KUMO_MOVE5_win_00005274

# .rodata:0x13F | 0x1B3F | size: 0x1
.obj gap_03_00001B3F_rodata, global
.hidden gap_03_00001B3F_rodata
	.byte 0x00
.endobj gap_03_00001B3F_rodata

# .rodata:0x140 | 0x1B40 | size: 0x13
.obj str_SFX_ENM_KUMO_MOVE1_win_00005288, local
	.string "SFX_ENM_KUMO_MOVE1"
.endobj str_SFX_ENM_KUMO_MOVE1_win_00005288

# .rodata:0x153 | 0x1B53 | size: 0x1
.obj gap_03_00001B53_rodata, global
.hidden gap_03_00001B53_rodata
	.byte 0x00
.endobj gap_03_00001B53_rodata

# .rodata:0x154 | 0x1B54 | size: 0x15
.obj str_SFX_ENM_KUMO_ATTACK1_win_0000529c, local
	.string "SFX_ENM_KUMO_ATTACK1"
.endobj str_SFX_ENM_KUMO_ATTACK1_win_0000529c

# .rodata:0x169 | 0x1B69 | size: 0x3
.obj gap_03_00001B69_rodata, global
.hidden gap_03_00001B69_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001B69_rodata

# .rodata:0x16C | 0x1B6C | size: 0x5
.obj str_A_2A_win_000052b4, local
	.string "A_2A"
.endobj str_A_2A_win_000052b4

# .rodata:0x171 | 0x1B71 | size: 0x3
.obj gap_03_00001B71_rodata, global
.hidden gap_03_00001B71_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001B71_rodata

# .rodata:0x174 | 0x1B74 | size: 0x13
.obj str_SFX_ENM_KUMO_MOVE2_win_000052bc, local
	.string "SFX_ENM_KUMO_MOVE2"
.endobj str_SFX_ENM_KUMO_MOVE2_win_000052bc

# .rodata:0x187 | 0x1B87 | size: 0x1
.obj gap_03_00001B87_rodata, global
.hidden gap_03_00001B87_rodata
	.byte 0x00
.endobj gap_03_00001B87_rodata

# .rodata:0x188 | 0x1B88 | size: 0x5
.obj str_A_1A_win_000052d0, local
	.string "A_1A"
.endobj str_A_1A_win_000052d0
	.byte 0x00, 0x00, 0x00

# .rodata:0x190 | 0x1B90 | size: 0x4
.obj float_0p5_win_000052d8, local
	.float 0.5
.endobj float_0p5_win_000052d8

# .rodata:0x194 | 0x1B94 | size: 0x4
.obj float_32767_win_000052dc, local
	.float 32767
.endobj float_32767_win_000052dc

# .rodata:0x198 | 0x1B98 | size: 0x8
.obj double_to_int_win_000052e0, local
	.double 4503601774854144
.endobj double_to_int_win_000052e0

# .rodata:0x1A0 | 0x1BA0 | size: 0x4
.obj float_neg125_win_000052e8, local
	.float -125
.endobj float_neg125_win_000052e8

# .rodata:0x1A4 | 0x1BA4 | size: 0x4
.obj float_125_win_000052ec, local
	.float 125
.endobj float_125_win_000052ec

# .rodata:0x1A8 | 0x1BA8 | size: 0x4
.obj float_2p5_win_000052f0, local
	.float 2.5
.endobj float_2p5_win_000052f0

# .rodata:0x1AC | 0x1BAC | size: 0x4
.obj gap_03_00001BAC_rodata, global
.hidden gap_03_00001BAC_rodata
	.4byte 0x00000000
.endobj gap_03_00001BAC_rodata

# 0x0000DC00..0x0000F060 | size: 0x1460
.data
.balign 8

# .data:0x0 | 0xDC00 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0xDC08 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0xDC0C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0xDC10 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0xDC14 | size: 0x4
.obj gap_04_0000DC14_data, global
.hidden gap_04_0000DC14_data
	.4byte 0x00000000
.endobj gap_04_0000DC14_data

# .data:0x18 | 0xDC18 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0xDC20 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0xDC24 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0xDC28 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0xDC30 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0xDC34 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0xDC38 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0xDC3C | size: 0x4
.obj gap_04_0000DC3C_data, global
.hidden gap_04_0000DC3C_data
	.4byte 0x00000000
.endobj gap_04_0000DC3C_data

# .data:0x40 | 0xDC40 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0xDC48 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0xDC4C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0xDC50 | size: 0xC4
.obj unit_dokugassun, local
	.4byte 0x000000A6
	.4byte str_btl_un_dokugassun_win_00005148
	.4byte 0x000F0000
	.4byte 0x01012202
	.4byte 0x02460232
	.4byte 0x270F0023
	.4byte 0x001E0004
	.4byte 0x001E0000
	.4byte 0x00000000
	.4byte 0x41700000
	.4byte 0x00000000
	.4byte 0x0000FFFD
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41900000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x418C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x418C0000
	.4byte 0x419C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41700000
	.4byte 0x00000000
	.4byte 0x420C0000
	.4byte 0x41F00000
	.4byte 0x00000002
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_ENM_KUMO_DAMAGED_win_0000515c
	.4byte str_SFX_BTL_DAMAGE_FIRE1_win_00005174
	.4byte str_SFX_BTL_DAMAGE_ICE1_win_0000518c
	.4byte str_SFX_BTL_DAMAGE_BIRIB_win_000051a0
	.4byte 0x00000004
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_dokugassun

# .data:0x114 | 0xDD14 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0xDD19 | size: 0x3
.obj gap_04_0000DD19_data, global
.hidden gap_04_0000DD19_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0000DD19_data

# .data:0x11C | 0xDD1C | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0xDD21 | size: 0x3
.obj gap_04_0000DD21_data, global
.hidden gap_04_0000DD21_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0000DD21_data

# .data:0x124 | 0xDD24 | size: 0x16
.obj regist, local
	.4byte 0x41415A00
	.4byte 0x3C646464
	.4byte 0x64506450
	.4byte 0x6450323C
	.4byte 0x55643C64
	.2byte 0x6414
.endobj regist

# .data:0x13A | 0xDD3A | size: 0x2
.obj gap_04_0000DD3A_data, global
.hidden gap_04_0000DD3A_data
	.2byte 0x0000
.endobj gap_04_0000DD3A_data

# .data:0x13C | 0xDD3C | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_dokugassun_win_00005148
	.4byte str_c_kmoon_g_win_000051bc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41C80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x001E001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x00600009
	.4byte 0x00000000
	.4byte pose_table
.endobj parts

# .data:0x188 | 0xDD88 | size: 0xC0
.obj weapon_dokugassun_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x20001000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00005087
	.4byte 0x00000040
	.4byte 0x80002004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
.endobj weapon_dokugassun_attack

# .data:0x248 | 0xDE48 | size: 0xC0
.obj weapon_dokugassun_poisongas_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x00000047
	.4byte 0x000007FF
	.4byte 0x80000004
	.4byte 0x00000000
	.4byte 0x0000460A
	.4byte 0x01000000
	.4byte 0x00000000
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
.endobj weapon_dokugassun_poisongas_attack

# .data:0x308 | 0xDF08 | size: 0x114
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
	.4byte 0x0005005B
	.4byte btlevtcmd_CheckPartsCounterAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000200
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_dokugassun_poisongas_attack
	.4byte 0x0001005E
	.4byte poisongas_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000041
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000023
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000041
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_dokugassun_attack
	.4byte 0x0001005E
	.4byte normal_attack_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte charge_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x41C | 0xE01C | size: 0x4BC
.obj poisongas_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte 0xFE363C89
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckToken
	.4byte 0xFFFFFFFE
	.4byte 0x00000010
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte subsetevt_confuse_flustered
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte 0xFE363C89
	.4byte 0x0002005B
	.4byte btlevtcmd_AttackDeclareAll
	.4byte 0xFFFFFFFE
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitGuardMove
	.4byte 0x0003005B
	.4byte btlevtcmd_PayWeaponCost
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C89
	.4byte 0x0003005B
	.4byte btlevtcmd_GetSelectEnemy
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_R_1_win_000051c8
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KUMO_MOVE3_win_000051cc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFD8
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000010
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_DOKU_KUMO_CH_win_000051e0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2B_win_000051fc
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_DOKU_KUMO_CH_win_00005204
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_3A_win_00005228
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_3B_win_00005230
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsCounterAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000200
	.4byte 0x0000006E
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFE363C83
	.4byte 0xFE363C8A
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000014
	.4byte 0x0002005B
	.4byte eff_poison_breath
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x00000003
	.4byte 0x00000006
	.4byte 0x00000020
	.4byte 0x00010005
	.4byte 0x00000014
	.4byte 0x0002005B
	.4byte eff_poison_breath
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000003
	.4byte 0x00000006
	.4byte 0x00000021
	.4byte 0x00000070
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
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
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C89
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
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
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_R_1_win_000051c8
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KUMO_MOVE3_win_000051cc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_win_00005238
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj poisongas_event

# .data:0x8D8 | 0xE4D8 | size: 0x88
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_N_1_win_0000523c
	.4byte 0x00000002
	.4byte str_Y_1_win_00005240
	.4byte 0x00000009
	.4byte str_Y_1_win_00005240
	.4byte 0x00000005
	.4byte str_K_1_win_00005244
	.4byte 0x00000004
	.4byte str_X_1_win_00005248
	.4byte 0x00000003
	.4byte str_X_1_win_00005248
	.4byte 0x0000001C
	.4byte str_S_1_win_00005238
	.4byte 0x0000001D
	.4byte str_Q_1_win_0000524c
	.4byte 0x0000001E
	.4byte str_Q_1_win_0000524c
	.4byte 0x0000001F
	.4byte str_A_1_win_00005250
	.4byte 0x00000027
	.4byte str_D_1_win_00005254
	.4byte 0x00000028
	.4byte str_W_1_win_00005258
	.4byte 0x0000002A
	.4byte str_R_1_win_000051c8
	.4byte 0x00000038
	.4byte str_X_1_win_00005248
	.4byte 0x00000039
	.4byte str_X_1_win_00005248
	.4byte 0x00000041
	.4byte str_T_1_win_0000525c
	.4byte 0x00000045
	.4byte str_S_1_win_00005238
.endobj pose_table

# .data:0x960 | 0xE560 | size: 0x18
.obj data_table, local
	.4byte 0x0000002B
	.4byte counter_event
	.4byte 0x00000030
	.4byte dmg_first_attack_pos
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x978 | 0xE578 | size: 0x94
.obj init_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventWait
	.4byte 0xFFFFFFFE
	.4byte wait_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventUnisonPhase
	.4byte 0xFFFFFFFE
	.4byte unison_phase_event
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
	.4byte attack_event
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
	.4byte 0x0001005C
	.4byte barrier_event
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0xA0C | 0xE60C | size: 0x84
.obj barrier_event, local
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000001F
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitId
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte btlevtcmd_CheckPartsCounterAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000200
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte eff_poison_barrier
	.4byte 0xFFFFFFFE
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj barrier_event

# .data:0xA90 | 0xE690 | size: 0x4C
.obj dmg_first_attack_pos, local
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte btlevtcmd_SetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitAttackEnd
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dmg_first_attack_pos

# .data:0xADC | 0xE6DC | size: 0x28
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

# .data:0xB04 | 0xE704 | size: 0x8
.obj counter_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj counter_event

# .data:0xB0C | 0xE70C | size: 0x230
.obj unison_phase_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_CheckPhase
	.4byte 0xFE363C80
	.4byte 0x04000001
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_CheckActStatus
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte btlevtcmd_CheckPartsCounterAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000200
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000063
	.4byte 0xFE363C80
	.4byte 0x0002001A
	.4byte 0xFE363C80
	.4byte 0x00000019
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KUMO_MOVE4_win_00005260
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000028
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000003C
	.4byte 0x0000000A
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00600000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KUMO_MOVE5_win_00005274
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000003C
	.4byte 0xFFFFFFF6
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00600000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj unison_phase_event

# .data:0xD3C | 0xE93C | size: 0x608
.obj normal_attack_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_check_battleflag
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetFirstAttackTarget
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte 0xFE363C89
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckToken
	.4byte 0xFFFFFFFE
	.4byte 0x00000010
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte subsetevt_confuse_flustered
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte 0xFE363C89
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
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000010
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000008
	.4byte 0x0004005B
	.4byte evt_btl_camera_set_homing_unit
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x000000FA
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KUMO_MOVE1_win_00005288
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte btlevtcmd_SetDispOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte btlevtcmd_SetDispOffset
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000002
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte btlevtcmd_SetDispOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000028
	.4byte 0x0005005B
	.4byte btlevtcmd_AddScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7A76
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KUMO_ATTACK1_win_0000529c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2A_win_000052b4
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
	.4byte 0xFFFFFFD8
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x0000003C
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0005005B
	.4byte btlevtcmd_SetScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KUMO_MOVE2_win_000052bc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1A_win_000052d0
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x00000028
	.4byte 0xFFFFFFD8
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000000
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
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x0000002E
	.4byte 0x00000031
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x0006005B
	.4byte evt_btl_camera_shake_h
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000008
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_btl_camera_add_zoom
	.4byte 0x00000000
	.4byte 0xFFFFFFCE
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C89
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000028
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8A
	.4byte 0x00000028
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8A
	.4byte 0xFE363C81
	.4byte 0xFE363C8C
	.4byte 0x00000028
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KUMO_MOVE3_win_000051cc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000028
	.4byte 0x00000028
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_win_00005238
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0005005B
	.4byte btlevtcmd_SetScale
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj normal_attack_event

# .data:0x1344 | 0xEF44 | size: 0xE8
.obj charge_event, local
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x0004005B
	.4byte evt_btl_camera_set_homing_unit
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x0000012C
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_DOKU_KUMO_CH_win_000051e0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsCounterAttribute
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000200
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2A_win_000052b4
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2B_win_000051fc
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_S_1_win_00005238
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj charge_event

# .data:0x142C | 0xF02C | size: 0x34
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte btlevtcmd_SetScale
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0x00000000
.endobj wait_event
