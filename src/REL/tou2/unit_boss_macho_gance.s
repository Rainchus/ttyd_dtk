.include "macros.inc"
.file "unit_boss_macho_gance.o"

# 0x00001DA8..0x000026EC | size: 0x944
.text
.balign 4

# .text:0x0 | 0x1DA8 | size: 0x68
.fn x_flag_wait, local
/* 00001DA8 00001E6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00001DAC 00001E70  7C 08 02 A6 */	mflr r0
/* 00001DB0 00001E74  90 01 00 14 */	stw r0, 0x14(r1)
/* 00001DB4 00001E78  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00001DB8 00001E7C  7C 7E 1B 78 */	mr r30, r3
/* 00001DBC 00001E80  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00001DC0 00001E84  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00001DC4 00001E88  48 00 32 51 */	bl evtGetValue
/* 00001DC8 00001E8C  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00001DCC 00001E90  7C 7F 1B 78 */	mr r31, r3
/* 00001DD0 00001E94  7F C3 F3 78 */	mr r3, r30
/* 00001DD4 00001E98  48 00 32 41 */	bl evtGetValue
/* 00001DD8 00001E9C  3C 80 00 00 */	lis r4, x_flag_data@ha
/* 00001DDC 00001EA0  57 E5 10 3A */	slwi r5, r31, 2
/* 00001DE0 00001EA4  38 84 00 00 */	addi r4, r4, x_flag_data@l
/* 00001DE4 00001EA8  38 00 00 02 */	li r0, 0x2
/* 00001DE8 00001EAC  7C 84 28 2E */	lwzx r4, r4, r5
/* 00001DEC 00001EB0  7C 64 18 50 */	subf r3, r4, r3
/* 00001DF0 00001EB4  30 63 FF FF */	subic r3, r3, 0x1
/* 00001DF4 00001EB8  7C 63 19 10 */	subfe r3, r3, r3
/* 00001DF8 00001EBC  7C 03 18 38 */	and r3, r0, r3
/* 00001DFC 00001EC0  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00001E00 00001EC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00001E04 00001EC8  7C 08 03 A6 */	mtlr r0
/* 00001E08 00001ECC  38 21 00 10 */	addi r1, r1, 0x10
/* 00001E0C 00001ED0  4E 80 00 20 */	blr
.endfn x_flag_wait

# .text:0x68 | 0x1E10 | size: 0x54
.fn x_flag_get, local
/* 00001E10 00001ED4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00001E14 00001ED8  7C 08 02 A6 */	mflr r0
/* 00001E18 00001EDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 00001E1C 00001EE0  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00001E20 00001EE4  7C 7E 1B 78 */	mr r30, r3
/* 00001E24 00001EE8  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00001E28 00001EEC  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00001E2C 00001EF0  48 00 31 E9 */	bl evtGetValue
/* 00001E30 00001EF4  3C A0 00 00 */	lis r5, x_flag_data@ha
/* 00001E34 00001EF8  54 60 10 3A */	slwi r0, r3, 2
/* 00001E38 00001EFC  38 A5 00 00 */	addi r5, r5, x_flag_data@l
/* 00001E3C 00001F00  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00001E40 00001F04  7C A5 00 2E */	lwzx r5, r5, r0
/* 00001E44 00001F08  7F C3 F3 78 */	mr r3, r30
/* 00001E48 00001F0C  48 00 31 CD */	bl evtSetValue
/* 00001E4C 00001F10  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00001E50 00001F14  38 60 00 02 */	li r3, 0x2
/* 00001E54 00001F18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00001E58 00001F1C  7C 08 03 A6 */	mtlr r0
/* 00001E5C 00001F20  38 21 00 10 */	addi r1, r1, 0x10
/* 00001E60 00001F24  4E 80 00 20 */	blr
.endfn x_flag_get

# .text:0xBC | 0x1E64 | size: 0x60
.fn x_flag_add, local
/* 00001E64 00001F28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00001E68 00001F2C  7C 08 02 A6 */	mflr r0
/* 00001E6C 00001F30  90 01 00 14 */	stw r0, 0x14(r1)
/* 00001E70 00001F34  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00001E74 00001F38  7C 7E 1B 78 */	mr r30, r3
/* 00001E78 00001F3C  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00001E7C 00001F40  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00001E80 00001F44  48 00 31 95 */	bl evtGetValue
/* 00001E84 00001F48  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00001E88 00001F4C  7C 7F 1B 78 */	mr r31, r3
/* 00001E8C 00001F50  7F C3 F3 78 */	mr r3, r30
/* 00001E90 00001F54  48 00 31 85 */	bl evtGetValue
/* 00001E94 00001F58  3C 80 00 00 */	lis r4, x_flag_data@ha
/* 00001E98 00001F5C  57 E5 10 3A */	slwi r5, r31, 2
/* 00001E9C 00001F60  38 84 00 00 */	addi r4, r4, x_flag_data@l
/* 00001EA0 00001F64  7C 04 28 2E */	lwzx r0, r4, r5
/* 00001EA4 00001F68  7C 00 1A 14 */	add r0, r0, r3
/* 00001EA8 00001F6C  38 60 00 02 */	li r3, 0x2
/* 00001EAC 00001F70  7C 04 29 2E */	stwx r0, r4, r5
/* 00001EB0 00001F74  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00001EB4 00001F78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00001EB8 00001F7C  7C 08 03 A6 */	mtlr r0
/* 00001EBC 00001F80  38 21 00 10 */	addi r1, r1, 0x10
/* 00001EC0 00001F84  4E 80 00 20 */	blr
.endfn x_flag_add

# .text:0x11C | 0x1EC4 | size: 0x58
.fn x_flag_set, local
/* 00001EC4 00001F88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00001EC8 00001F8C  7C 08 02 A6 */	mflr r0
/* 00001ECC 00001F90  90 01 00 14 */	stw r0, 0x14(r1)
/* 00001ED0 00001F94  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00001ED4 00001F98  7C 7E 1B 78 */	mr r30, r3
/* 00001ED8 00001F9C  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00001EDC 00001FA0  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00001EE0 00001FA4  48 00 31 35 */	bl evtGetValue
/* 00001EE4 00001FA8  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00001EE8 00001FAC  7C 7F 1B 78 */	mr r31, r3
/* 00001EEC 00001FB0  7F C3 F3 78 */	mr r3, r30
/* 00001EF0 00001FB4  48 00 31 25 */	bl evtGetValue
/* 00001EF4 00001FB8  3C 80 00 00 */	lis r4, x_flag_data@ha
/* 00001EF8 00001FBC  57 E0 10 3A */	slwi r0, r31, 2
/* 00001EFC 00001FC0  38 84 00 00 */	addi r4, r4, x_flag_data@l
/* 00001F00 00001FC4  7C 64 01 2E */	stwx r3, r4, r0
/* 00001F04 00001FC8  38 60 00 02 */	li r3, 0x2
/* 00001F08 00001FCC  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00001F0C 00001FD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00001F10 00001FD4  7C 08 03 A6 */	mtlr r0
/* 00001F14 00001FD8  38 21 00 10 */	addi r1, r1, 0x10
/* 00001F18 00001FDC  4E 80 00 20 */	blr
.endfn x_flag_set

# .text:0x174 | 0x1F1C | size: 0xCC
.fn wariai_enzan_0f, local
/* 00001F1C 00001FE0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 00001F20 00001FE4  7C 08 02 A6 */	mflr r0
/* 00001F24 00001FE8  90 01 00 44 */	stw r0, 0x44(r1)
/* 00001F28 00001FEC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 00001F2C 00001FF0  F3 E1 00 38 */	psq_st f31, 0x38(r1), 0, qr0
/* 00001F30 00001FF4  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 00001F34 00001FF8  F3 C1 00 28 */	psq_st f30, 0x28(r1), 0, qr0
/* 00001F38 00001FFC  DB A1 00 10 */	stfd f29, 0x10(r1)
/* 00001F3C 00002000  F3 A1 00 18 */	psq_st f29, 0x18(r1), 0, qr0
/* 00001F40 00002004  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00001F44 00002008  7C 7E 1B 78 */	mr r30, r3
/* 00001F48 0000200C  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00001F4C 00002010  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00001F50 00002014  48 00 30 C5 */	bl evtGetFloat
/* 00001F54 00002018  3C 60 00 00 */	lis r3, float_1_tou2_0000b7d4@ha
/* 00001F58 0000201C  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00001F5C 00002020  38 A3 00 00 */	addi r5, r3, float_1_tou2_0000b7d4@l
/* 00001F60 00002024  7F C3 F3 78 */	mr r3, r30
/* 00001F64 00002028  C0 05 00 00 */	lfs f0, 0x0(r5)
/* 00001F68 0000202C  EF C1 00 28 */	fsubs f30, f1, f0
/* 00001F6C 00002030  48 00 30 A9 */	bl evtGetFloat
/* 00001F70 00002034  3C 60 00 00 */	lis r3, float_1_tou2_0000b7d4@ha
/* 00001F74 00002038  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 00001F78 0000203C  38 A3 00 00 */	addi r5, r3, float_1_tou2_0000b7d4@l
/* 00001F7C 00002040  7F C3 F3 78 */	mr r3, r30
/* 00001F80 00002044  C0 05 00 00 */	lfs f0, 0x0(r5)
/* 00001F84 00002048  EF A1 00 28 */	fsubs f29, f1, f0
/* 00001F88 0000204C  48 00 30 8D */	bl evtGetFloat
/* 00001F8C 00002050  FF E0 08 90 */	fmr f31, f1
/* 00001F90 00002054  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00001F94 00002058  7F C3 F3 78 */	mr r3, r30
/* 00001F98 0000205C  48 00 30 7D */	bl evtGetFloat
/* 00001F9C 00002060  EC 1D F0 28 */	fsubs f0, f29, f30
/* 00001FA0 00002064  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00001FA4 00002068  7F C3 F3 78 */	mr r3, r30
/* 00001FA8 0000206C  EC 01 00 32 */	fmuls f0, f1, f0
/* 00001FAC 00002070  EC 1E 07 FA */	fmadds f0, f30, f31, f0
/* 00001FB0 00002074  EC 20 E8 24 */	fdivs f1, f0, f29
/* 00001FB4 00002078  48 00 30 61 */	bl evtSetFloat
/* 00001FB8 0000207C  38 60 00 02 */	li r3, 0x2
/* 00001FBC 00002080  E3 E1 00 38 */	psq_l f31, 0x38(r1), 0, qr0
/* 00001FC0 00002084  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 00001FC4 00002088  E3 C1 00 28 */	psq_l f30, 0x28(r1), 0, qr0
/* 00001FC8 0000208C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 00001FCC 00002090  E3 A1 00 18 */	psq_l f29, 0x18(r1), 0, qr0
/* 00001FD0 00002094  CB A1 00 10 */	lfd f29, 0x10(r1)
/* 00001FD4 00002098  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00001FD8 0000209C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 00001FDC 000020A0  7C 08 03 A6 */	mtlr r0
/* 00001FE0 000020A4  38 21 00 40 */	addi r1, r1, 0x40
/* 00001FE4 000020A8  4E 80 00 20 */	blr
.endfn wariai_enzan_0f

# .text:0x240 | 0x1FE8 | size: 0xD8
.fn wariai_enzan_0, local
/* 00001FE8 000020AC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 00001FEC 000020B0  7C 08 02 A6 */	mflr r0
/* 00001FF0 000020B4  90 01 00 54 */	stw r0, 0x54(r1)
/* 00001FF4 000020B8  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 00001FF8 000020BC  F3 E1 00 48 */	psq_st f31, 0x48(r1), 0, qr0
/* 00001FFC 000020C0  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 00002000 000020C4  F3 C1 00 38 */	psq_st f30, 0x38(r1), 0, qr0
/* 00002004 000020C8  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 00002008 000020CC  F3 A1 00 28 */	psq_st f29, 0x28(r1), 0, qr0
/* 0000200C 000020D0  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 00002010 000020D4  7C 7E 1B 78 */	mr r30, r3
/* 00002014 000020D8  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00002018 000020DC  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 0000201C 000020E0  48 00 2F F9 */	bl evtGetFloat
/* 00002020 000020E4  3C 60 00 00 */	lis r3, float_1_tou2_0000b7d4@ha
/* 00002024 000020E8  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00002028 000020EC  38 A3 00 00 */	addi r5, r3, float_1_tou2_0000b7d4@l
/* 0000202C 000020F0  7F C3 F3 78 */	mr r3, r30
/* 00002030 000020F4  C0 05 00 00 */	lfs f0, 0x0(r5)
/* 00002034 000020F8  EF C1 00 28 */	fsubs f30, f1, f0
/* 00002038 000020FC  48 00 2F DD */	bl evtGetFloat
/* 0000203C 00002100  3C 60 00 00 */	lis r3, float_1_tou2_0000b7d4@ha
/* 00002040 00002104  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 00002044 00002108  38 A3 00 00 */	addi r5, r3, float_1_tou2_0000b7d4@l
/* 00002048 0000210C  7F C3 F3 78 */	mr r3, r30
/* 0000204C 00002110  C0 05 00 00 */	lfs f0, 0x0(r5)
/* 00002050 00002114  EF A1 00 28 */	fsubs f29, f1, f0
/* 00002054 00002118  48 00 2F C1 */	bl evtGetFloat
/* 00002058 0000211C  FF E0 08 90 */	fmr f31, f1
/* 0000205C 00002120  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00002060 00002124  7F C3 F3 78 */	mr r3, r30
/* 00002064 00002128  48 00 2F B1 */	bl evtGetFloat
/* 00002068 0000212C  EC 1D F0 28 */	fsubs f0, f29, f30
/* 0000206C 00002130  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00002070 00002134  7F C3 F3 78 */	mr r3, r30
/* 00002074 00002138  EC 01 00 32 */	fmuls f0, f1, f0
/* 00002078 0000213C  EC 1E 07 FA */	fmadds f0, f30, f31, f0
/* 0000207C 00002140  EC 00 E8 24 */	fdivs f0, f0, f29
/* 00002080 00002144  FC 00 00 1E */	fctiwz f0, f0
/* 00002084 00002148  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 00002088 0000214C  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 0000208C 00002150  48 00 2F 89 */	bl evtSetValue
/* 00002090 00002154  38 60 00 02 */	li r3, 0x2
/* 00002094 00002158  E3 E1 00 48 */	psq_l f31, 0x48(r1), 0, qr0
/* 00002098 0000215C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 0000209C 00002160  E3 C1 00 38 */	psq_l f30, 0x38(r1), 0, qr0
/* 000020A0 00002164  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 000020A4 00002168  E3 A1 00 28 */	psq_l f29, 0x28(r1), 0, qr0
/* 000020A8 0000216C  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 000020AC 00002170  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 000020B0 00002174  80 01 00 54 */	lwz r0, 0x54(r1)
/* 000020B4 00002178  7C 08 03 A6 */	mtlr r0
/* 000020B8 0000217C  38 21 00 50 */	addi r1, r1, 0x50
/* 000020BC 00002180  4E 80 00 20 */	blr
.endfn wariai_enzan_0

# .text:0x318 | 0x20C0 | size: 0x2E0
.fn wariai_enzan_1f_intpl_w, local
/* 000020C0 00002184  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 000020C4 00002188  7C 08 02 A6 */	mflr r0
/* 000020C8 0000218C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 000020CC 00002190  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 000020D0 00002194  F3 E1 00 98 */	psq_st f31, 0x98(r1), 0, qr0
/* 000020D4 00002198  DB C1 00 80 */	stfd f30, 0x80(r1)
/* 000020D8 0000219C  F3 C1 00 88 */	psq_st f30, 0x88(r1), 0, qr0
/* 000020DC 000021A0  DB A1 00 70 */	stfd f29, 0x70(r1)
/* 000020E0 000021A4  F3 A1 00 78 */	psq_st f29, 0x78(r1), 0, qr0
/* 000020E4 000021A8  DB 81 00 60 */	stfd f28, 0x60(r1)
/* 000020E8 000021AC  F3 81 00 68 */	psq_st f28, 0x68(r1), 0, qr0
/* 000020EC 000021B0  DB 61 00 50 */	stfd f27, 0x50(r1)
/* 000020F0 000021B4  F3 61 00 58 */	psq_st f27, 0x58(r1), 0, qr0
/* 000020F4 000021B8  DB 41 00 40 */	stfd f26, 0x40(r1)
/* 000020F8 000021BC  F3 41 00 48 */	psq_st f26, 0x48(r1), 0, qr0
/* 000020FC 000021C0  DB 21 00 30 */	stfd f25, 0x30(r1)
/* 00002100 000021C4  F3 21 00 38 */	psq_st f25, 0x38(r1), 0, qr0
/* 00002104 000021C8  BF A1 00 24 */	stmw r29, 0x24(r1)
/* 00002108 000021CC  7C 7E 1B 78 */	mr r30, r3
/* 0000210C 000021D0  83 A3 00 18 */	lwz r29, 0x18(r3)
/* 00002110 000021D4  80 9D 00 00 */	lwz r4, 0x0(r29)
/* 00002114 000021D8  48 00 2F 01 */	bl evtGetFloat
/* 00002118 000021DC  3C 60 00 00 */	lis r3, float_1_tou2_0000b7d4@ha
/* 0000211C 000021E0  80 9D 00 04 */	lwz r4, 0x4(r29)
/* 00002120 000021E4  38 A3 00 00 */	addi r5, r3, float_1_tou2_0000b7d4@l
/* 00002124 000021E8  7F C3 F3 78 */	mr r3, r30
/* 00002128 000021EC  C0 05 00 00 */	lfs f0, 0x0(r5)
/* 0000212C 000021F0  EF 81 00 28 */	fsubs f28, f1, f0
/* 00002130 000021F4  48 00 2E E5 */	bl evtGetFloat
/* 00002134 000021F8  FF A0 08 90 */	fmr f29, f1
/* 00002138 000021FC  80 9D 00 08 */	lwz r4, 0x8(r29)
/* 0000213C 00002200  7F C3 F3 78 */	mr r3, r30
/* 00002140 00002204  48 00 2E D5 */	bl evtGetFloat
/* 00002144 00002208  FF 60 08 90 */	fmr f27, f1
/* 00002148 0000220C  80 9D 00 0C */	lwz r4, 0xc(r29)
/* 0000214C 00002210  7F C3 F3 78 */	mr r3, r30
/* 00002150 00002214  48 00 2E C5 */	bl evtGetFloat
/* 00002154 00002218  FF C0 08 90 */	fmr f30, f1
/* 00002158 0000221C  83 FD 00 10 */	lwz r31, 0x10(r29)
/* 0000215C 00002220  80 9D 00 14 */	lwz r4, 0x14(r29)
/* 00002160 00002224  7F C3 F3 78 */	mr r3, r30
/* 00002164 00002228  48 00 2E B1 */	bl evtGetFloat
/* 00002168 0000222C  FF 40 08 90 */	fmr f26, f1
/* 0000216C 00002230  80 9D 00 18 */	lwz r4, 0x18(r29)
/* 00002170 00002234  7F C3 F3 78 */	mr r3, r30
/* 00002174 00002238  48 00 2E A1 */	bl evtGetFloat
/* 00002178 0000223C  3C 60 00 00 */	lis r3, float_14_tou2_0000b7d8@ha
/* 0000217C 00002240  FF E0 08 90 */	fmr f31, f1
/* 00002180 00002244  C0 03 00 00 */	lfs f0, float_14_tou2_0000b7d8@l(r3)
/* 00002184 00002248  FC 1A 00 40 */	fcmpo cr0, f26, f0
/* 00002188 0000224C  4C 41 13 82 */	cror eq, gt, eq
/* 0000218C 00002250  40 82 00 80 */	bne .L_0000220C
/* 00002190 00002254  EF 5A 00 28 */	fsubs f26, f26, f0
/* 00002194 00002258  FC 1A 00 40 */	fcmpo cr0, f26, f0
/* 00002198 0000225C  4C 41 13 82 */	cror eq, gt, eq
/* 0000219C 00002260  40 82 00 1C */	bne .L_000021B8
/* 000021A0 00002264  FC 20 D8 90 */	fmr f1, f27
/* 000021A4 00002268  7F C3 F3 78 */	mr r3, r30
/* 000021A8 0000226C  7F E4 FB 78 */	mr r4, r31
/* 000021AC 00002270  48 00 2E 69 */	bl evtSetFloat
/* 000021B0 00002274  38 60 00 02 */	li r3, 0x2
/* 000021B4 00002278  48 00 01 A0 */	b .L_00002354
.L_000021B8:
/* 000021B8 0000227C  EC 3D E0 28 */	fsubs f1, f29, f28
/* 000021BC 00002280  3C 80 00 00 */	lis r4, float_1_tou2_0000b7d4@ha
/* 000021C0 00002284  FC 60 D0 1E */	fctiwz f3, f26
/* 000021C4 00002288  3C 60 00 00 */	lis r3, zero_tou2_0000b7dc@ha
/* 000021C8 0000228C  FC 00 E8 1E */	fctiwz f0, f29
/* 000021CC 00002290  38 A4 00 00 */	addi r5, r4, float_1_tou2_0000b7d4@l
/* 000021D0 00002294  FC 40 08 1E */	fctiwz f2, f1
/* 000021D4 00002298  D8 61 00 08 */	stfd f3, 0x8(r1)
/* 000021D8 0000229C  38 83 00 00 */	addi r4, r3, zero_tou2_0000b7dc@l
/* 000021DC 000022A0  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 000021E0 000022A4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 000021E4 000022A8  80 61 00 0C */	lwz r3, 0xc(r1)
/* 000021E8 000022AC  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 000021EC 000022B0  C0 44 00 00 */	lfs f2, 0x0(r4)
/* 000021F0 000022B4  80 81 00 14 */	lwz r4, 0x14(r1)
/* 000021F4 000022B8  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 000021F8 000022BC  48 00 2E 1D */	bl intplGetValue
/* 000021FC 000022C0  3C 60 00 00 */	lis r3, float_1_tou2_0000b7d4@ha
/* 00002200 000022C4  C0 03 00 00 */	lfs f0, float_1_tou2_0000b7d4@l(r3)
/* 00002204 000022C8  EF 20 08 28 */	fsubs f25, f0, f1
/* 00002208 000022CC  48 00 00 4C */	b .L_00002254
.L_0000220C:
/* 0000220C 000022D0  EC 3D E0 28 */	fsubs f1, f29, f28
/* 00002210 000022D4  3C 80 00 00 */	lis r4, zero_tou2_0000b7dc@ha
/* 00002214 000022D8  FC 60 D0 1E */	fctiwz f3, f26
/* 00002218 000022DC  3C 60 00 00 */	lis r3, float_1_tou2_0000b7d4@ha
/* 0000221C 000022E0  FC 00 E8 1E */	fctiwz f0, f29
/* 00002220 000022E4  38 A4 00 00 */	addi r5, r4, zero_tou2_0000b7dc@l
/* 00002224 000022E8  FC 40 08 1E */	fctiwz f2, f1
/* 00002228 000022EC  D8 61 00 18 */	stfd f3, 0x18(r1)
/* 0000222C 000022F0  38 83 00 00 */	addi r4, r3, float_1_tou2_0000b7d4@l
/* 00002230 000022F4  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 00002234 000022F8  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 00002238 000022FC  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 0000223C 00002300  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 00002240 00002304  C0 44 00 00 */	lfs f2, 0x0(r4)
/* 00002244 00002308  80 81 00 14 */	lwz r4, 0x14(r1)
/* 00002248 0000230C  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 0000224C 00002310  48 00 2D C9 */	bl intplGetValue
/* 00002250 00002314  FF 20 08 90 */	fmr f25, f1
.L_00002254:
/* 00002254 00002318  3C 60 00 00 */	lis r3, float_14_tou2_0000b7d8@ha
/* 00002258 0000231C  C0 03 00 00 */	lfs f0, float_14_tou2_0000b7d8@l(r3)
/* 0000225C 00002320  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 00002260 00002324  4C 41 13 82 */	cror eq, gt, eq
/* 00002264 00002328  40 82 00 80 */	bne .L_000022E4
/* 00002268 0000232C  EC 5A 00 28 */	fsubs f2, f26, f0
/* 0000226C 00002330  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 00002270 00002334  4C 41 13 82 */	cror eq, gt, eq
/* 00002274 00002338  40 82 00 1C */	bne .L_00002290
/* 00002278 0000233C  FC 20 D8 90 */	fmr f1, f27
/* 0000227C 00002340  7F C3 F3 78 */	mr r3, r30
/* 00002280 00002344  7F E4 FB 78 */	mr r4, r31
/* 00002284 00002348  48 00 2D 91 */	bl evtSetFloat
/* 00002288 0000234C  38 60 00 02 */	li r3, 0x2
/* 0000228C 00002350  48 00 00 C8 */	b .L_00002354
.L_00002290:
/* 00002290 00002354  EC 3D E0 28 */	fsubs f1, f29, f28
/* 00002294 00002358  3C 80 00 00 */	lis r4, float_1_tou2_0000b7d4@ha
/* 00002298 0000235C  FC 60 10 1E */	fctiwz f3, f2
/* 0000229C 00002360  3C 60 00 00 */	lis r3, zero_tou2_0000b7dc@ha
/* 000022A0 00002364  FC 00 E8 1E */	fctiwz f0, f29
/* 000022A4 00002368  38 A4 00 00 */	addi r5, r4, float_1_tou2_0000b7d4@l
/* 000022A8 0000236C  FC 40 08 1E */	fctiwz f2, f1
/* 000022AC 00002370  D8 61 00 18 */	stfd f3, 0x18(r1)
/* 000022B0 00002374  38 83 00 00 */	addi r4, r3, zero_tou2_0000b7dc@l
/* 000022B4 00002378  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 000022B8 0000237C  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 000022BC 00002380  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 000022C0 00002384  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 000022C4 00002388  C0 44 00 00 */	lfs f2, 0x0(r4)
/* 000022C8 0000238C  80 81 00 14 */	lwz r4, 0x14(r1)
/* 000022CC 00002390  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 000022D0 00002394  48 00 2D 45 */	bl intplGetValue
/* 000022D4 00002398  3C 60 00 00 */	lis r3, float_1_tou2_0000b7d4@ha
/* 000022D8 0000239C  C0 03 00 00 */	lfs f0, float_1_tou2_0000b7d4@l(r3)
/* 000022DC 000023A0  EC 20 08 28 */	fsubs f1, f0, f1
/* 000022E0 000023A4  48 00 00 48 */	b .L_00002328
.L_000022E4:
/* 000022E4 000023A8  EC 3D E0 28 */	fsubs f1, f29, f28
/* 000022E8 000023AC  3C 80 00 00 */	lis r4, zero_tou2_0000b7dc@ha
/* 000022EC 000023B0  FC 60 F8 1E */	fctiwz f3, f31
/* 000022F0 000023B4  3C 60 00 00 */	lis r3, float_1_tou2_0000b7d4@ha
/* 000022F4 000023B8  FC 00 E8 1E */	fctiwz f0, f29
/* 000022F8 000023BC  38 A4 00 00 */	addi r5, r4, zero_tou2_0000b7dc@l
/* 000022FC 000023C0  FC 40 08 1E */	fctiwz f2, f1
/* 00002300 000023C4  D8 61 00 18 */	stfd f3, 0x18(r1)
/* 00002304 000023C8  38 83 00 00 */	addi r4, r3, float_1_tou2_0000b7d4@l
/* 00002308 000023CC  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 0000230C 000023D0  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 00002310 000023D4  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 00002314 000023D8  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 00002318 000023DC  C0 44 00 00 */	lfs f2, 0x0(r4)
/* 0000231C 000023E0  80 81 00 14 */	lwz r4, 0x14(r1)
/* 00002320 000023E4  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 00002324 000023E8  48 00 2C F1 */	bl intplGetValue
.L_00002328:
/* 00002328 000023EC  3C 60 00 00 */	lis r3, float_1_tou2_0000b7d4@ha
/* 0000232C 000023F0  EC 59 00 72 */	fmuls f2, f25, f1
/* 00002330 000023F4  38 83 00 00 */	addi r4, r3, float_1_tou2_0000b7d4@l
/* 00002334 000023F8  7F C3 F3 78 */	mr r3, r30
/* 00002338 000023FC  C0 24 00 00 */	lfs f1, 0x0(r4)
/* 0000233C 00002400  7F E4 FB 78 */	mr r4, r31
/* 00002340 00002404  EC 1E 00 B2 */	fmuls f0, f30, f2
/* 00002344 00002408  EC 21 10 28 */	fsubs f1, f1, f2
/* 00002348 0000240C  EC 3B 00 7A */	fmadds f1, f27, f1, f0
/* 0000234C 00002410  48 00 2C C9 */	bl evtSetFloat
/* 00002350 00002414  38 60 00 02 */	li r3, 0x2
.L_00002354:
/* 00002354 00002418  E3 E1 00 98 */	psq_l f31, 0x98(r1), 0, qr0
/* 00002358 0000241C  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 0000235C 00002420  E3 C1 00 88 */	psq_l f30, 0x88(r1), 0, qr0
/* 00002360 00002424  CB C1 00 80 */	lfd f30, 0x80(r1)
/* 00002364 00002428  E3 A1 00 78 */	psq_l f29, 0x78(r1), 0, qr0
/* 00002368 0000242C  CB A1 00 70 */	lfd f29, 0x70(r1)
/* 0000236C 00002430  E3 81 00 68 */	psq_l f28, 0x68(r1), 0, qr0
/* 00002370 00002434  CB 81 00 60 */	lfd f28, 0x60(r1)
/* 00002374 00002438  E3 61 00 58 */	psq_l f27, 0x58(r1), 0, qr0
/* 00002378 0000243C  CB 61 00 50 */	lfd f27, 0x50(r1)
/* 0000237C 00002440  E3 41 00 48 */	psq_l f26, 0x48(r1), 0, qr0
/* 00002380 00002444  CB 41 00 40 */	lfd f26, 0x40(r1)
/* 00002384 00002448  E3 21 00 38 */	psq_l f25, 0x38(r1), 0, qr0
/* 00002388 0000244C  CB 21 00 30 */	lfd f25, 0x30(r1)
/* 0000238C 00002450  BB A1 00 24 */	lmw r29, 0x24(r1)
/* 00002390 00002454  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 00002394 00002458  7C 08 03 A6 */	mtlr r0
/* 00002398 0000245C  38 21 00 A0 */	addi r1, r1, 0xa0
/* 0000239C 00002460  4E 80 00 20 */	blr
.endfn wariai_enzan_1f_intpl_w

# .text:0x5F8 | 0x23A0 | size: 0x1C0
.fn wariai_enzan_1f_intpl, local
/* 000023A0 00002464  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 000023A4 00002468  7C 08 02 A6 */	mflr r0
/* 000023A8 0000246C  90 01 00 74 */	stw r0, 0x74(r1)
/* 000023AC 00002470  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 000023B0 00002474  F3 E1 00 68 */	psq_st f31, 0x68(r1), 0, qr0
/* 000023B4 00002478  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 000023B8 0000247C  F3 C1 00 58 */	psq_st f30, 0x58(r1), 0, qr0
/* 000023BC 00002480  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 000023C0 00002484  F3 A1 00 48 */	psq_st f29, 0x48(r1), 0, qr0
/* 000023C4 00002488  DB 81 00 30 */	stfd f28, 0x30(r1)
/* 000023C8 0000248C  F3 81 00 38 */	psq_st f28, 0x38(r1), 0, qr0
/* 000023CC 00002490  BF A1 00 24 */	stmw r29, 0x24(r1)
/* 000023D0 00002494  7C 7F 1B 78 */	mr r31, r3
/* 000023D4 00002498  83 C3 00 18 */	lwz r30, 0x18(r3)
/* 000023D8 0000249C  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 000023DC 000024A0  48 00 2C 39 */	bl evtGetFloat
/* 000023E0 000024A4  3C 60 00 00 */	lis r3, float_1_tou2_0000b7d4@ha
/* 000023E4 000024A8  80 9E 00 04 */	lwz r4, 0x4(r30)
/* 000023E8 000024AC  38 A3 00 00 */	addi r5, r3, float_1_tou2_0000b7d4@l
/* 000023EC 000024B0  7F E3 FB 78 */	mr r3, r31
/* 000023F0 000024B4  C0 05 00 00 */	lfs f0, 0x0(r5)
/* 000023F4 000024B8  EF 81 00 28 */	fsubs f28, f1, f0
/* 000023F8 000024BC  48 00 2C 1D */	bl evtGetFloat
/* 000023FC 000024C0  FF A0 08 90 */	fmr f29, f1
/* 00002400 000024C4  80 9E 00 08 */	lwz r4, 0x8(r30)
/* 00002404 000024C8  7F E3 FB 78 */	mr r3, r31
/* 00002408 000024CC  48 00 2C 0D */	bl evtGetFloat
/* 0000240C 000024D0  FF E0 08 90 */	fmr f31, f1
/* 00002410 000024D4  80 9E 00 0C */	lwz r4, 0xc(r30)
/* 00002414 000024D8  7F E3 FB 78 */	mr r3, r31
/* 00002418 000024DC  48 00 2B FD */	bl evtGetFloat
/* 0000241C 000024E0  FF C0 08 90 */	fmr f30, f1
/* 00002420 000024E4  83 BE 00 10 */	lwz r29, 0x10(r30)
/* 00002424 000024E8  80 9E 00 14 */	lwz r4, 0x14(r30)
/* 00002428 000024EC  7F E3 FB 78 */	mr r3, r31
/* 0000242C 000024F0  48 00 2B E9 */	bl evtGetFloat
/* 00002430 000024F4  3C 60 00 00 */	lis r3, float_14_tou2_0000b7d8@ha
/* 00002434 000024F8  C0 03 00 00 */	lfs f0, float_14_tou2_0000b7d8@l(r3)
/* 00002438 000024FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 0000243C 00002500  4C 41 13 82 */	cror eq, gt, eq
/* 00002440 00002504  40 82 00 80 */	bne .L_000024C0
/* 00002444 00002508  EC 41 00 28 */	fsubs f2, f1, f0
/* 00002448 0000250C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 0000244C 00002510  4C 41 13 82 */	cror eq, gt, eq
/* 00002450 00002514  40 82 00 1C */	bne .L_0000246C
/* 00002454 00002518  FC 20 F8 90 */	fmr f1, f31
/* 00002458 0000251C  7F E3 FB 78 */	mr r3, r31
/* 0000245C 00002520  7F A4 EB 78 */	mr r4, r29
/* 00002460 00002524  48 00 2B B5 */	bl evtSetFloat
/* 00002464 00002528  38 60 00 02 */	li r3, 0x2
/* 00002468 0000252C  48 00 00 C4 */	b .L_0000252C
.L_0000246C:
/* 0000246C 00002530  EC 3D E0 28 */	fsubs f1, f29, f28
/* 00002470 00002534  3C 80 00 00 */	lis r4, float_1_tou2_0000b7d4@ha
/* 00002474 00002538  FC 60 10 1E */	fctiwz f3, f2
/* 00002478 0000253C  3C 60 00 00 */	lis r3, zero_tou2_0000b7dc@ha
/* 0000247C 00002540  FC 00 E8 1E */	fctiwz f0, f29
/* 00002480 00002544  38 A4 00 00 */	addi r5, r4, float_1_tou2_0000b7d4@l
/* 00002484 00002548  FC 40 08 1E */	fctiwz f2, f1
/* 00002488 0000254C  D8 61 00 08 */	stfd f3, 0x8(r1)
/* 0000248C 00002550  38 83 00 00 */	addi r4, r3, zero_tou2_0000b7dc@l
/* 00002490 00002554  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 00002494 00002558  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 00002498 0000255C  80 61 00 0C */	lwz r3, 0xc(r1)
/* 0000249C 00002560  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 000024A0 00002564  C0 44 00 00 */	lfs f2, 0x0(r4)
/* 000024A4 00002568  80 81 00 14 */	lwz r4, 0x14(r1)
/* 000024A8 0000256C  80 A1 00 1C */	lwz r5, 0x1c(r1)
/* 000024AC 00002570  48 00 2B 69 */	bl intplGetValue
/* 000024B0 00002574  3C 60 00 00 */	lis r3, float_1_tou2_0000b7d4@ha
/* 000024B4 00002578  C0 03 00 00 */	lfs f0, float_1_tou2_0000b7d4@l(r3)
/* 000024B8 0000257C  EC 20 08 28 */	fsubs f1, f0, f1
/* 000024BC 00002580  48 00 00 48 */	b .L_00002504
.L_000024C0:
/* 000024C0 00002584  EC 5D E0 28 */	fsubs f2, f29, f28
/* 000024C4 00002588  3C 80 00 00 */	lis r4, zero_tou2_0000b7dc@ha
/* 000024C8 0000258C  FC 20 08 1E */	fctiwz f1, f1
/* 000024CC 00002590  3C 60 00 00 */	lis r3, float_1_tou2_0000b7d4@ha
/* 000024D0 00002594  FC 00 E8 1E */	fctiwz f0, f29
/* 000024D4 00002598  38 A4 00 00 */	addi r5, r4, zero_tou2_0000b7dc@l
/* 000024D8 0000259C  FC 40 10 1E */	fctiwz f2, f2
/* 000024DC 000025A0  D8 21 00 18 */	stfd f1, 0x18(r1)
/* 000024E0 000025A4  38 83 00 00 */	addi r4, r3, float_1_tou2_0000b7d4@l
/* 000024E4 000025A8  C0 25 00 00 */	lfs f1, 0x0(r5)
/* 000024E8 000025AC  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 000024EC 000025B0  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 000024F0 000025B4  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 000024F4 000025B8  C0 44 00 00 */	lfs f2, 0x0(r4)
/* 000024F8 000025BC  80 81 00 14 */	lwz r4, 0x14(r1)
/* 000024FC 000025C0  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 00002500 000025C4  48 00 2B 15 */	bl intplGetValue
.L_00002504:
/* 00002504 000025C8  3C 60 00 00 */	lis r3, float_1_tou2_0000b7d4@ha
/* 00002508 000025CC  EC 01 07 B2 */	fmuls f0, f1, f30
/* 0000250C 000025D0  38 83 00 00 */	addi r4, r3, float_1_tou2_0000b7d4@l
/* 00002510 000025D4  7F E3 FB 78 */	mr r3, r31
/* 00002514 000025D8  C0 44 00 00 */	lfs f2, 0x0(r4)
/* 00002518 000025DC  7F A4 EB 78 */	mr r4, r29
/* 0000251C 000025E0  EC 22 08 28 */	fsubs f1, f2, f1
/* 00002520 000025E4  EC 21 07 FA */	fmadds f1, f1, f31, f0
/* 00002524 000025E8  48 00 2A F1 */	bl evtSetFloat
/* 00002528 000025EC  38 60 00 02 */	li r3, 0x2
.L_0000252C:
/* 0000252C 000025F0  E3 E1 00 68 */	psq_l f31, 0x68(r1), 0, qr0
/* 00002530 000025F4  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 00002534 000025F8  E3 C1 00 58 */	psq_l f30, 0x58(r1), 0, qr0
/* 00002538 000025FC  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 0000253C 00002600  E3 A1 00 48 */	psq_l f29, 0x48(r1), 0, qr0
/* 00002540 00002604  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 00002544 00002608  E3 81 00 38 */	psq_l f28, 0x38(r1), 0, qr0
/* 00002548 0000260C  CB 81 00 30 */	lfd f28, 0x30(r1)
/* 0000254C 00002610  BB A1 00 24 */	lmw r29, 0x24(r1)
/* 00002550 00002614  80 01 00 74 */	lwz r0, 0x74(r1)
/* 00002554 00002618  7C 08 03 A6 */	mtlr r0
/* 00002558 0000261C  38 21 00 70 */	addi r1, r1, 0x70
/* 0000255C 00002620  4E 80 00 20 */	blr
.endfn wariai_enzan_1f_intpl

# .text:0x7B8 | 0x2560 | size: 0xC0
.fn wariai_enzan_1f, local
/* 00002560 00002624  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 00002564 00002628  7C 08 02 A6 */	mflr r0
/* 00002568 0000262C  90 01 00 44 */	stw r0, 0x44(r1)
/* 0000256C 00002630  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 00002570 00002634  F3 E1 00 38 */	psq_st f31, 0x38(r1), 0, qr0
/* 00002574 00002638  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 00002578 0000263C  F3 C1 00 28 */	psq_st f30, 0x28(r1), 0, qr0
/* 0000257C 00002640  DB A1 00 10 */	stfd f29, 0x10(r1)
/* 00002580 00002644  F3 A1 00 18 */	psq_st f29, 0x18(r1), 0, qr0
/* 00002584 00002648  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 00002588 0000264C  7C 7E 1B 78 */	mr r30, r3
/* 0000258C 00002650  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00002590 00002654  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00002594 00002658  48 00 2A 81 */	bl evtGetFloat
/* 00002598 0000265C  3C 60 00 00 */	lis r3, float_1_tou2_0000b7d4@ha
/* 0000259C 00002660  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 000025A0 00002664  38 A3 00 00 */	addi r5, r3, float_1_tou2_0000b7d4@l
/* 000025A4 00002668  7F C3 F3 78 */	mr r3, r30
/* 000025A8 0000266C  C0 05 00 00 */	lfs f0, 0x0(r5)
/* 000025AC 00002670  EF A1 00 28 */	fsubs f29, f1, f0
/* 000025B0 00002674  48 00 2A 65 */	bl evtGetFloat
/* 000025B4 00002678  FF C0 08 90 */	fmr f30, f1
/* 000025B8 0000267C  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 000025BC 00002680  7F C3 F3 78 */	mr r3, r30
/* 000025C0 00002684  48 00 2A 55 */	bl evtGetFloat
/* 000025C4 00002688  FF E0 08 90 */	fmr f31, f1
/* 000025C8 0000268C  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 000025CC 00002690  7F C3 F3 78 */	mr r3, r30
/* 000025D0 00002694  48 00 2A 45 */	bl evtGetFloat
/* 000025D4 00002698  EC 1E E8 28 */	fsubs f0, f30, f29
/* 000025D8 0000269C  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 000025DC 000026A0  7F C3 F3 78 */	mr r3, r30
/* 000025E0 000026A4  EC 01 00 32 */	fmuls f0, f1, f0
/* 000025E4 000026A8  EC 1D 07 FA */	fmadds f0, f29, f31, f0
/* 000025E8 000026AC  EC 20 F0 24 */	fdivs f1, f0, f30
/* 000025EC 000026B0  48 00 2A 29 */	bl evtSetFloat
/* 000025F0 000026B4  38 60 00 02 */	li r3, 0x2
/* 000025F4 000026B8  E3 E1 00 38 */	psq_l f31, 0x38(r1), 0, qr0
/* 000025F8 000026BC  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 000025FC 000026C0  E3 C1 00 28 */	psq_l f30, 0x28(r1), 0, qr0
/* 00002600 000026C4  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 00002604 000026C8  E3 A1 00 18 */	psq_l f29, 0x18(r1), 0, qr0
/* 00002608 000026CC  CB A1 00 10 */	lfd f29, 0x10(r1)
/* 0000260C 000026D0  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 00002610 000026D4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 00002614 000026D8  7C 08 03 A6 */	mtlr r0
/* 00002618 000026DC  38 21 00 40 */	addi r1, r1, 0x40
/* 0000261C 000026E0  4E 80 00 20 */	blr
.endfn wariai_enzan_1f

# .text:0x878 | 0x2620 | size: 0xCC
.fn wariai_enzan_1, local
/* 00002620 000026E4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 00002624 000026E8  7C 08 02 A6 */	mflr r0
/* 00002628 000026EC  90 01 00 54 */	stw r0, 0x54(r1)
/* 0000262C 000026F0  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 00002630 000026F4  F3 E1 00 48 */	psq_st f31, 0x48(r1), 0, qr0
/* 00002634 000026F8  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 00002638 000026FC  F3 C1 00 38 */	psq_st f30, 0x38(r1), 0, qr0
/* 0000263C 00002700  DB A1 00 20 */	stfd f29, 0x20(r1)
/* 00002640 00002704  F3 A1 00 28 */	psq_st f29, 0x28(r1), 0, qr0
/* 00002644 00002708  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 00002648 0000270C  7C 7E 1B 78 */	mr r30, r3
/* 0000264C 00002710  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00002650 00002714  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00002654 00002718  48 00 29 C1 */	bl evtGetFloat
/* 00002658 0000271C  3C 60 00 00 */	lis r3, float_1_tou2_0000b7d4@ha
/* 0000265C 00002720  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00002660 00002724  38 A3 00 00 */	addi r5, r3, float_1_tou2_0000b7d4@l
/* 00002664 00002728  7F C3 F3 78 */	mr r3, r30
/* 00002668 0000272C  C0 05 00 00 */	lfs f0, 0x0(r5)
/* 0000266C 00002730  EF A1 00 28 */	fsubs f29, f1, f0
/* 00002670 00002734  48 00 29 A5 */	bl evtGetFloat
/* 00002674 00002738  FF C0 08 90 */	fmr f30, f1
/* 00002678 0000273C  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 0000267C 00002740  7F C3 F3 78 */	mr r3, r30
/* 00002680 00002744  48 00 29 95 */	bl evtGetFloat
/* 00002684 00002748  FF E0 08 90 */	fmr f31, f1
/* 00002688 0000274C  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 0000268C 00002750  7F C3 F3 78 */	mr r3, r30
/* 00002690 00002754  48 00 29 85 */	bl evtGetFloat
/* 00002694 00002758  EC 1E E8 28 */	fsubs f0, f30, f29
/* 00002698 0000275C  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 0000269C 00002760  7F C3 F3 78 */	mr r3, r30
/* 000026A0 00002764  EC 01 00 32 */	fmuls f0, f1, f0
/* 000026A4 00002768  EC 1D 07 FA */	fmadds f0, f29, f31, f0
/* 000026A8 0000276C  EC 00 F0 24 */	fdivs f0, f0, f30
/* 000026AC 00002770  FC 00 00 1E */	fctiwz f0, f0
/* 000026B0 00002774  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 000026B4 00002778  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 000026B8 0000277C  48 00 29 5D */	bl evtSetValue
/* 000026BC 00002780  38 60 00 02 */	li r3, 0x2
/* 000026C0 00002784  E3 E1 00 48 */	psq_l f31, 0x48(r1), 0, qr0
/* 000026C4 00002788  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 000026C8 0000278C  E3 C1 00 38 */	psq_l f30, 0x38(r1), 0, qr0
/* 000026CC 00002790  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 000026D0 00002794  E3 A1 00 28 */	psq_l f29, 0x28(r1), 0, qr0
/* 000026D4 00002798  CB A1 00 20 */	lfd f29, 0x20(r1)
/* 000026D8 0000279C  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 000026DC 000027A0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 000026E0 000027A4  7C 08 03 A6 */	mtlr r0
/* 000026E4 000027A8  38 21 00 50 */	addi r1, r1, 0x50
/* 000026E8 000027AC  4E 80 00 20 */	blr
.endfn wariai_enzan_1

# 0x00001D20..0x000020A0 | size: 0x380
.rodata
.balign 8

# .rodata:0x0 | 0x1D20 | size: 0x13
.obj str_btl_un_macho_gance_tou2_0000b460, local
	.string "btl_un_macho_gance"
.endobj str_btl_un_macho_gance_tou2_0000b460

# .rodata:0x13 | 0x1D33 | size: 0x1
.obj gap_03_00001D33_rodata, global
.hidden gap_03_00001D33_rodata
	.byte 0x00
.endobj gap_03_00001D33_rodata

# .rodata:0x14 | 0x1D34 | size: 0x18
.obj str_SFX_BOSS_GANSU_DAMAG_tou2_0000b474, local
	.string "SFX_BOSS_GANSU_DAMAGED1"
.endobj str_SFX_BOSS_GANSU_DAMAG_tou2_0000b474

# .rodata:0x2C | 0x1D4C | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_tou2_0000b48c, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_tou2_0000b48c

# .rodata:0x41 | 0x1D61 | size: 0x3
.obj gap_03_00001D61_rodata, global
.hidden gap_03_00001D61_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001D61_rodata

# .rodata:0x44 | 0x1D64 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_tou2_0000b4a4, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_tou2_0000b4a4

# .rodata:0x58 | 0x1D78 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_tou2_0000b4b8, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_tou2_0000b4b8

# .rodata:0x71 | 0x1D91 | size: 0x3
.obj gap_03_00001D91_rodata, global
.hidden gap_03_00001D91_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001D91_rodata

# .rodata:0x74 | 0x1D94 | size: 0x4
.obj str_N_1_tou2_0000b4d4, local
	.string "N_1"
.endobj str_N_1_tou2_0000b4d4

# .rodata:0x78 | 0x1D98 | size: 0x4
.obj str_Y_1_tou2_0000b4d8, local
	.string "Y_1"
.endobj str_Y_1_tou2_0000b4d8

# .rodata:0x7C | 0x1D9C | size: 0x4
.obj str_K_1_tou2_0000b4dc, local
	.string "K_1"
.endobj str_K_1_tou2_0000b4dc

# .rodata:0x80 | 0x1DA0 | size: 0x4
.obj str_X_1_tou2_0000b4e0, local
	.string "X_1"
.endobj str_X_1_tou2_0000b4e0

# .rodata:0x84 | 0x1DA4 | size: 0x4
.obj str_S_1_tou2_0000b4e4, local
	.string "S_1"
.endobj str_S_1_tou2_0000b4e4

# .rodata:0x88 | 0x1DA8 | size: 0x4
.obj str_Q_1_tou2_0000b4e8, local
	.string "Q_1"
.endobj str_Q_1_tou2_0000b4e8

# .rodata:0x8C | 0x1DAC | size: 0x4
.obj str_D_1_tou2_0000b4ec, local
	.string "D_1"
.endobj str_D_1_tou2_0000b4ec

# .rodata:0x90 | 0x1DB0 | size: 0x5
.obj str_E_1A_tou2_0000b4f0, local
	.string "E_1A"
.endobj str_E_1A_tou2_0000b4f0

# .rodata:0x95 | 0x1DB5 | size: 0x3
.obj gap_03_00001DB5_rodata, global
.hidden gap_03_00001DB5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001DB5_rodata

# .rodata:0x98 | 0x1DB8 | size: 0x4
.obj str_R_1_tou2_0000b4f8, local
	.string "R_1"
.endobj str_R_1_tou2_0000b4f8

# .rodata:0x9C | 0x1DBC | size: 0x4
.obj str_W_1_tou2_0000b4fc, local
	.string "W_1"
.endobj str_W_1_tou2_0000b4fc

# .rodata:0xA0 | 0x1DC0 | size: 0x4
.obj str_T_1_tou2_0000b500, local
	.string "T_1"
.endobj str_T_1_tou2_0000b500

# .rodata:0xA4 | 0x1DC4 | size: 0xA
.obj str_c_m_gansu_tou2_0000b504, local
	.string "c_m_gansu"
.endobj str_c_m_gansu_tou2_0000b504

# .rodata:0xAE | 0x1DCE | size: 0x2
.obj gap_03_00001DCE_rodata, global
.hidden gap_03_00001DCE_rodata
	.2byte 0x0000
.endobj gap_03_00001DCE_rodata

# .rodata:0xB0 | 0x1DD0 | size: 0x16
.obj str_SFX_BOSS_GANSU_MOVE1_tou2_0000b510, local
	.string "SFX_BOSS_GANSU_MOVE1L"
.endobj str_SFX_BOSS_GANSU_MOVE1_tou2_0000b510

# .rodata:0xC6 | 0x1DE6 | size: 0x2
.obj gap_03_00001DE6_rodata, global
.hidden gap_03_00001DE6_rodata
	.2byte 0x0000
.endobj gap_03_00001DE6_rodata

# .rodata:0xC8 | 0x1DE8 | size: 0x16
.obj str_SFX_BOSS_GANSU_MOVE1_tou2_0000b528, local
	.string "SFX_BOSS_GANSU_MOVE1R"
.endobj str_SFX_BOSS_GANSU_MOVE1_tou2_0000b528

# .rodata:0xDE | 0x1DFE | size: 0x2
.obj gap_03_00001DFE_rodata, global
.hidden gap_03_00001DFE_rodata
	.2byte 0x0000
.endobj gap_03_00001DFE_rodata

# .rodata:0xE0 | 0x1E00 | size: 0x18
.obj str_SFX_BOSS_GANSU_PAUSI_tou2_0000b540, local
	.string "SFX_BOSS_GANSU_PAUSING1"
.endobj str_SFX_BOSS_GANSU_PAUSI_tou2_0000b540

# .rodata:0xF8 | 0x1E18 | size: 0xD
.obj str_stg3_tou_469_tou2_0000b558, local
	.string "stg3_tou_469"
.endobj str_stg3_tou_469_tou2_0000b558

# .rodata:0x105 | 0x1E25 | size: 0x3
.obj gap_03_00001E25_rodata, global
.hidden gap_03_00001E25_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001E25_rodata

# .rodata:0x108 | 0x1E28 | size: 0xD
.obj str_stg3_tou_470_tou2_0000b568, local
	.string "stg3_tou_470"
.endobj str_stg3_tou_470_tou2_0000b568

# .rodata:0x115 | 0x1E35 | size: 0x3
.obj gap_03_00001E35_rodata, global
.hidden gap_03_00001E35_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001E35_rodata

# .rodata:0x118 | 0x1E38 | size: 0x10
.obj str_stg3_tou_471_17_tou2_0000b578, local
	.string "stg3_tou_471_17"
.endobj str_stg3_tou_471_17_tou2_0000b578

# .rodata:0x128 | 0x1E48 | size: 0x10
.obj str_stg3_tou_471_18_tou2_0000b588, local
	.string "stg3_tou_471_18"
.endobj str_stg3_tou_471_18_tou2_0000b588

# .rodata:0x138 | 0x1E58 | size: 0x14
.obj str_SFX_BOSS_GANSU_BIG3_tou2_0000b598, local
	.string "SFX_BOSS_GANSU_BIG3"
.endobj str_SFX_BOSS_GANSU_BIG3_tou2_0000b598

# .rodata:0x14C | 0x1E6C | size: 0x4
.obj str_M_1_tou2_0000b5ac, local
	.string "M_1"
.endobj str_M_1_tou2_0000b5ac

# .rodata:0x150 | 0x1E70 | size: 0x14
.obj str_SFX_BOSS_GANSU_BIG1_tou2_0000b5b0, local
	.string "SFX_BOSS_GANSU_BIG1"
.endobj str_SFX_BOSS_GANSU_BIG1_tou2_0000b5b0

# .rodata:0x164 | 0x1E84 | size: 0x14
.obj str_SFX_BOSS_GANSU_BIG2_tou2_0000b5c4, local
	.string "SFX_BOSS_GANSU_BIG2"
.endobj str_SFX_BOSS_GANSU_BIG2_tou2_0000b5c4

# .rodata:0x178 | 0x1E98 | size: 0x5
.obj str_J_1A_tou2_0000b5d8, local
	.string "J_1A"
.endobj str_J_1A_tou2_0000b5d8

# .rodata:0x17D | 0x1E9D | size: 0x3
.obj gap_03_00001E9D_rodata, global
.hidden gap_03_00001E9D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001E9D_rodata

# .rodata:0x180 | 0x1EA0 | size: 0x5
.obj str_J_1B_tou2_0000b5e0, local
	.string "J_1B"
.endobj str_J_1B_tou2_0000b5e0

# .rodata:0x185 | 0x1EA5 | size: 0x3
.obj gap_03_00001EA5_rodata, global
.hidden gap_03_00001EA5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001EA5_rodata

# .rodata:0x188 | 0x1EA8 | size: 0x15
.obj str_SFX_BOSS_GANSU_JUMP1_tou2_0000b5e8, local
	.string "SFX_BOSS_GANSU_JUMP1"
.endobj str_SFX_BOSS_GANSU_JUMP1_tou2_0000b5e8

# .rodata:0x19D | 0x1EBD | size: 0x3
.obj gap_03_00001EBD_rodata, global
.hidden gap_03_00001EBD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001EBD_rodata

# .rodata:0x1A0 | 0x1EC0 | size: 0x18
.obj str_SFX_BOSS_GANSU_HIPDR_tou2_0000b600, local
	.string "SFX_BOSS_GANSU_HIPDROP1"
.endobj str_SFX_BOSS_GANSU_HIPDR_tou2_0000b600

# .rodata:0x1B8 | 0x1ED8 | size: 0x10
.obj str_stg3_tou_471_19_tou2_0000b618, local
	.string "stg3_tou_471_19"
.endobj str_stg3_tou_471_19_tou2_0000b618

# .rodata:0x1C8 | 0x1EE8 | size: 0x4
.obj str_D_2_tou2_0000b628, local
	.string "D_2"
.endobj str_D_2_tou2_0000b628

# .rodata:0x1CC | 0x1EEC | size: 0x15
.obj str_SFX_BOSS_GANSU_DOWN1_tou2_0000b62c, local
	.string "SFX_BOSS_GANSU_DOWN1"
.endobj str_SFX_BOSS_GANSU_DOWN1_tou2_0000b62c

# .rodata:0x1E1 | 0x1F01 | size: 0x3
.obj gap_03_00001F01_rodata, global
.hidden gap_03_00001F01_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001F01_rodata

# .rodata:0x1E4 | 0x1F04 | size: 0x4
.obj str_T_2_tou2_0000b644, local
	.string "T_2"
.endobj str_T_2_tou2_0000b644

# .rodata:0x1E8 | 0x1F08 | size: 0x4
.obj str_S_2_tou2_0000b648, local
	.string "S_2"
.endobj str_S_2_tou2_0000b648

# .rodata:0x1EC | 0x1F0C | size: 0x10
.obj str_stg3_tou_471_20_tou2_0000b64c, local
	.string "stg3_tou_471_20"
.endobj str_stg3_tou_471_20_tou2_0000b64c

# .rodata:0x1FC | 0x1F1C | size: 0x19
.obj str_SFX_VOICE_MARIO_DAMA_tou2_0000b65c, local
	.string "SFX_VOICE_MARIO_DAMAGED1"
.endobj str_SFX_VOICE_MARIO_DAMA_tou2_0000b65c

# .rodata:0x215 | 0x1F35 | size: 0x3
.obj gap_03_00001F35_rodata, global
.hidden gap_03_00001F35_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001F35_rodata

# .rodata:0x218 | 0x1F38 | size: 0x15
.obj str_SFX_BTL_ATTACK_MISS3_tou2_0000b678, local
	.string "SFX_BTL_ATTACK_MISS3"
.endobj str_SFX_BTL_ATTACK_MISS3_tou2_0000b678

# .rodata:0x22D | 0x1F4D | size: 0x3
.obj gap_03_00001F4D_rodata, global
.hidden gap_03_00001F4D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001F4D_rodata

# .rodata:0x230 | 0x1F50 | size: 0x7
.obj str_hikari_tou2_0000b690, local
	.string "hikari"
.endobj str_hikari_tou2_0000b690

# .rodata:0x237 | 0x1F57 | size: 0x1
.obj gap_03_00001F57_rodata, global
.hidden gap_03_00001F57_rodata
	.byte 0x00
.endobj gap_03_00001F57_rodata

# .rodata:0x238 | 0x1F58 | size: 0xE
.obj str_radiation_n64_tou2_0000b698, local
	.string "radiation_n64"
.endobj str_radiation_n64_tou2_0000b698

# .rodata:0x246 | 0x1F66 | size: 0x2
.obj gap_03_00001F66_rodata, global
.hidden gap_03_00001F66_rodata
	.2byte 0x0000
.endobj gap_03_00001F66_rodata

# .rodata:0x248 | 0x1F68 | size: 0x18
.obj str_SFX_BOSS_GANSU_PAUSI_tou2_0000b6a8, local
	.string "SFX_BOSS_GANSU_PAUSING2"
.endobj str_SFX_BOSS_GANSU_PAUSI_tou2_0000b6a8

# .rodata:0x260 | 0x1F80 | size: 0x4
.obj str_M_3_tou2_0000b6c0, local
	.string "M_3"
.endobj str_M_3_tou2_0000b6c0

# .rodata:0x264 | 0x1F84 | size: 0x18
.obj str_SFX_BOSS_GANSU_PAUSI_tou2_0000b6c4, local
	.string "SFX_BOSS_GANSU_PAUSING3"
.endobj str_SFX_BOSS_GANSU_PAUSI_tou2_0000b6c4

# .rodata:0x27C | 0x1F9C | size: 0x4
.obj str_M_5_tou2_0000b6dc, local
	.string "M_5"
.endobj str_M_5_tou2_0000b6dc

# .rodata:0x280 | 0x1FA0 | size: 0x18
.obj str_SFX_BOSS_GANSU_PAUSI_tou2_0000b6e0, local
	.string "SFX_BOSS_GANSU_PAUSING4"
.endobj str_SFX_BOSS_GANSU_PAUSI_tou2_0000b6e0

# .rodata:0x298 | 0x1FB8 | size: 0x4
.obj str_M_4_tou2_0000b6f8, local
	.string "M_4"
.endobj str_M_4_tou2_0000b6f8

# .rodata:0x29C | 0x1FBC | size: 0x4
.obj str_M_7_tou2_0000b6fc, local
	.string "M_7"
.endobj str_M_7_tou2_0000b6fc

# .rodata:0x2A0 | 0x1FC0 | size: 0x18
.obj str_SFX_BOSS_GANSU_PAUSI_tou2_0000b700, local
	.string "SFX_BOSS_GANSU_PAUSING5"
.endobj str_SFX_BOSS_GANSU_PAUSI_tou2_0000b700

# .rodata:0x2B8 | 0x1FD8 | size: 0x4
.obj str_M_6_tou2_0000b718, local
	.string "M_6"
.endobj str_M_6_tou2_0000b718

# .rodata:0x2BC | 0x1FDC | size: 0x18
.obj str_SFX_BOSS_GANSU_PAUSI_tou2_0000b71c, local
	.string "SFX_BOSS_GANSU_PAUSING7"
.endobj str_SFX_BOSS_GANSU_PAUSI_tou2_0000b71c

# .rodata:0x2D4 | 0x1FF4 | size: 0x5
.obj str_E_1B_tou2_0000b734, local
	.string "E_1B"
.endobj str_E_1B_tou2_0000b734

# .rodata:0x2D9 | 0x1FF9 | size: 0x3
.obj gap_03_00001FF9_rodata, global
.hidden gap_03_00001FF9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001FF9_rodata

# .rodata:0x2DC | 0x1FFC | size: 0x15
.obj str_SFX_BOSS_GANSU_FIST1_tou2_0000b73c, local
	.string "SFX_BOSS_GANSU_FIST1"
.endobj str_SFX_BOSS_GANSU_FIST1_tou2_0000b73c

# .rodata:0x2F1 | 0x2011 | size: 0x3
.obj gap_03_00002011_rodata, global
.hidden gap_03_00002011_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002011_rodata

# .rodata:0x2F4 | 0x2014 | size: 0x4
.obj str_M_8_tou2_0000b754, local
	.string "M_8"
.endobj str_M_8_tou2_0000b754

# .rodata:0x2F8 | 0x2018 | size: 0x18
.obj str_SFX_BOSS_GANSU_PAUSI_tou2_0000b758, local
	.string "SFX_BOSS_GANSU_PAUSING8"
.endobj str_SFX_BOSS_GANSU_PAUSI_tou2_0000b758

# .rodata:0x310 | 0x2030 | size: 0x4
.obj str_M_2_tou2_0000b770, local
	.string "M_2"
.endobj str_M_2_tou2_0000b770

# .rodata:0x314 | 0x2034 | size: 0x5
.obj str_A_2A_tou2_0000b774, local
	.string "A_2A"
.endobj str_A_2A_tou2_0000b774

# .rodata:0x319 | 0x2039 | size: 0x3
.obj gap_03_00002039_rodata, global
.hidden gap_03_00002039_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002039_rodata

# .rodata:0x31C | 0x203C | size: 0x5
.obj str_A_2B_tou2_0000b77c, local
	.string "A_2B"
.endobj str_A_2B_tou2_0000b77c

# .rodata:0x321 | 0x2041 | size: 0x3
.obj gap_03_00002041_rodata, global
.hidden gap_03_00002041_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002041_rodata

# .rodata:0x324 | 0x2044 | size: 0x18
.obj str_SFX_BOSS_GANSU_PAUSI_tou2_0000b784, local
	.string "SFX_BOSS_GANSU_PAUSING9"
.endobj str_SFX_BOSS_GANSU_PAUSI_tou2_0000b784

# .rodata:0x33C | 0x205C | size: 0x17
.obj str_SFX_BOSS_GANSU_ATTAC_tou2_0000b79c, local
	.string "SFX_BOSS_GANSU_ATTACK1"
.endobj str_SFX_BOSS_GANSU_ATTAC_tou2_0000b79c

# .rodata:0x353 | 0x2073 | size: 0x1
.obj gap_03_00002073_rodata, global
.hidden gap_03_00002073_rodata
	.byte 0x00
.endobj gap_03_00002073_rodata

# .rodata:0x354 | 0x2074 | size: 0x5
.obj str_A_1A_tou2_0000b7b4, local
	.string "A_1A"
.endobj str_A_1A_tou2_0000b7b4

# .rodata:0x359 | 0x2079 | size: 0x3
.obj gap_03_00002079_rodata, global
.hidden gap_03_00002079_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002079_rodata

# .rodata:0x35C | 0x207C | size: 0x5
.obj str_A_1B_tou2_0000b7bc, local
	.string "A_1B"
.endobj str_A_1B_tou2_0000b7bc

# .rodata:0x361 | 0x2081 | size: 0x3
.obj gap_03_00002081_rodata, global
.hidden gap_03_00002081_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002081_rodata

# .rodata:0x364 | 0x2084 | size: 0x5
.obj str_A_1C_tou2_0000b7c4, local
	.string "A_1C"
.endobj str_A_1C_tou2_0000b7c4

# .rodata:0x369 | 0x2089 | size: 0x3
.obj gap_03_00002089_rodata, global
.hidden gap_03_00002089_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002089_rodata

# .rodata:0x36C | 0x208C | size: 0x5
.obj str_A_1D_tou2_0000b7cc, local
	.string "A_1D"
.endobj str_A_1D_tou2_0000b7cc
	.byte 0x00, 0x00, 0x00

# .rodata:0x374 | 0x2094 | size: 0x4
.obj float_1_tou2_0000b7d4, local
	.float 1
.endobj float_1_tou2_0000b7d4

# .rodata:0x378 | 0x2098 | size: 0x4
.obj float_14_tou2_0000b7d8, local
	.float 14
.endobj float_14_tou2_0000b7d8

# .rodata:0x37C | 0x209C | size: 0x4
.obj zero_tou2_0000b7dc, local
	.float 0
.endobj zero_tou2_0000b7dc

# 0x0000E748..0x000127B0 | size: 0x4068
.data
.balign 8

# .data:0x0 | 0xE748 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0xE750 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0xE754 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0xE758 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0xE75C | size: 0x4
.obj gap_04_0000E75C_data, global
.hidden gap_04_0000E75C_data
	.4byte 0x00000000
.endobj gap_04_0000E75C_data

# .data:0x18 | 0xE760 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0xE768 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0xE76C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0xE770 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0xE778 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0xE77C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0xE780 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0xE784 | size: 0x4
.obj gap_04_0000E784_data, global
.hidden gap_04_0000E784_data
	.4byte 0x00000000
.endobj gap_04_0000E784_data

# .data:0x40 | 0xE788 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0xE790 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0xE794 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0xE798 | size: 0xC4
.obj unit_boss_macho_gance_26_data_E798, global
	.4byte 0x00000041
	.4byte str_btl_un_macho_gance_tou2_0000b460
	.4byte 0x003C0000
	.4byte 0x01014700
	.4byte 0x00640032
	.4byte 0x00060074
	.4byte 0x007C001E
	.4byte 0x00640000
	.4byte 0x00000000
	.4byte 0x42780000
	.4byte 0x00000000
	.4byte 0x0000FFFD
	.4byte 0x42200000
	.4byte 0x42A00000
	.4byte 0x00000000
	.4byte 0x42680000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42680000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42280000
	.4byte 0x42A00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42780000
	.4byte 0x00000000
	.4byte 0x42E80000
	.4byte 0x42F80000
	.4byte 0x00000002
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_BOSS_GANSU_DAMAG_tou2_0000b474
	.4byte str_SFX_BTL_DAMAGE_FIRE1_tou2_0000b48c
	.4byte str_SFX_BTL_DAMAGE_ICE1_tou2_0000b4a4
	.4byte str_SFX_BTL_DAMAGE_BIRIB_tou2_0000b4b8
	.4byte 0x00000000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_boss_macho_gance_26_data_E798

# .data:0x114 | 0xE85C | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0xE861 | size: 0x3
.obj gap_04_0000E861_data, global
.hidden gap_04_0000E861_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0000E861_data

# .data:0x11C | 0xE864 | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0xE869 | size: 0x3
.obj gap_04_0000E869_data, global
.hidden gap_04_0000E869_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0000E869_data

# .data:0x124 | 0xE86C | size: 0x16
.obj regist, local
	.4byte 0x32283264
	.4byte 0x3264641E
	.4byte 0x004B644B
	.4byte 0x645A3C00
	.4byte 0x00643C64
	.2byte 0x6400
.endobj regist

# .data:0x13A | 0xE882 | size: 0x2
.obj gap_04_0000E882_data, global
.hidden gap_04_0000E882_data
	.2byte 0x0000
.endobj gap_04_0000E882_data

# .data:0x13C | 0xE884 | size: 0x90
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_N_1_tou2_0000b4d4
	.4byte 0x00000002
	.4byte str_Y_1_tou2_0000b4d8
	.4byte 0x00000009
	.4byte str_Y_1_tou2_0000b4d8
	.4byte 0x00000005
	.4byte str_K_1_tou2_0000b4dc
	.4byte 0x00000004
	.4byte str_X_1_tou2_0000b4e0
	.4byte 0x00000003
	.4byte str_K_1_tou2_0000b4dc
	.4byte 0x0000001C
	.4byte str_S_1_tou2_0000b4e4
	.4byte 0x0000001D
	.4byte str_Q_1_tou2_0000b4e8
	.4byte 0x0000001E
	.4byte str_Q_1_tou2_0000b4e8
	.4byte 0x0000001F
	.4byte str_D_1_tou2_0000b4ec
	.4byte 0x00000027
	.4byte str_D_1_tou2_0000b4ec
	.4byte 0x00000032
	.4byte str_E_1A_tou2_0000b4f0
	.4byte 0x0000002A
	.4byte str_R_1_tou2_0000b4f8
	.4byte 0x00000028
	.4byte str_W_1_tou2_0000b4fc
	.4byte 0x00000038
	.4byte str_X_1_tou2_0000b4e0
	.4byte 0x00000039
	.4byte str_X_1_tou2_0000b4e0
	.4byte 0x00000041
	.4byte str_T_1_tou2_0000b500
	.4byte 0x00000045
	.4byte str_S_1_tou2_0000b4e4
.endobj pose_table

# .data:0x1CC | 0xE914 | size: 0x90
.obj pose_table_furafura, local
	.4byte 0x00000001
	.4byte str_N_1_tou2_0000b4d4
	.4byte 0x00000002
	.4byte str_Y_1_tou2_0000b4d8
	.4byte 0x00000009
	.4byte str_Y_1_tou2_0000b4d8
	.4byte 0x00000005
	.4byte str_K_1_tou2_0000b4dc
	.4byte 0x00000004
	.4byte str_X_1_tou2_0000b4e0
	.4byte 0x00000003
	.4byte str_K_1_tou2_0000b4dc
	.4byte 0x0000001C
	.4byte str_X_1_tou2_0000b4e0
	.4byte 0x0000001D
	.4byte str_Q_1_tou2_0000b4e8
	.4byte 0x0000001E
	.4byte str_Q_1_tou2_0000b4e8
	.4byte 0x0000001F
	.4byte str_D_1_tou2_0000b4ec
	.4byte 0x00000027
	.4byte str_D_1_tou2_0000b4ec
	.4byte 0x00000032
	.4byte str_E_1A_tou2_0000b4f0
	.4byte 0x0000002A
	.4byte str_R_1_tou2_0000b4f8
	.4byte 0x00000028
	.4byte str_W_1_tou2_0000b4fc
	.4byte 0x00000038
	.4byte str_X_1_tou2_0000b4e0
	.4byte 0x00000039
	.4byte str_X_1_tou2_0000b4e0
	.4byte 0x00000041
	.4byte str_T_1_tou2_0000b500
	.4byte 0x00000045
	.4byte str_X_1_tou2_0000b4e0
.endobj pose_table_furafura

# .data:0x25C | 0xE9A4 | size: 0x78
.obj data_table, local
	.4byte 0x00000031
	.4byte dead_event
	.4byte 0x00000024
	.4byte unk_evt_tou2_00021dd8
	.4byte 0x00000018
	.4byte unk_evt_tou2_00021dd8
	.4byte 0x00000019
	.4byte unk_evt_tou2_00021dd8
	.4byte 0x0000001A
	.4byte unk_evt_tou2_00021dd8
	.4byte 0x0000001B
	.4byte unk_evt_tou2_00021dd8
	.4byte 0x0000001C
	.4byte unk_evt_tou2_00021dd8
	.4byte 0x0000001D
	.4byte unk_evt_tou2_00021dd8
	.4byte 0x0000001E
	.4byte unk_evt_tou2_00021dd8
	.4byte 0x0000001F
	.4byte unk_evt_tou2_00021dd8
	.4byte 0x00000020
	.4byte unk_evt_tou2_00021dd8
	.4byte 0x00000021
	.4byte unk_evt_tou2_00021dd8
	.4byte 0x00000022
	.4byte unk_evt_tou2_00021dd8
	.4byte 0x00000023
	.4byte unk_evt_tou2_00021dd8
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x2D4 | 0xEA1C | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_macho_gance_tou2_0000b460
	.4byte str_c_m_gansu_tou2_0000b504
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41D00000
	.4byte 0x429A0000
	.4byte 0x00000000
	.4byte 0x41C80000
	.4byte 0x42A20000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte pose_table
.endobj parts

# .data:0x320 | 0xEA68 | size: 0xC0
.obj weapon_gance_macho_speed, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000000
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x01004020
	.4byte 0x10000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000087
	.4byte 0x00000000
	.4byte 0x80002004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64040000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_gance_macho_speed

# .data:0x3E0 | 0xEB28 | size: 0xC0
.obj weapon_gance_build_up, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000000
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x01004020
	.4byte 0x10000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000087
	.4byte 0x00000000
	.4byte 0x80002004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00006401
	.4byte 0x03000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_gance_build_up

# .data:0x4A0 | 0xEBE8 | size: 0xC0
.obj weapon_gance_body, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000000
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x01004020
	.4byte 0x10000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000087
	.4byte 0x00000000
	.4byte 0x80002004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00640203
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_gance_body

# .data:0x560 | 0xECA8 | size: 0xC0
.obj weapon_gance_footwork, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000000
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x01004020
	.4byte 0x10000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000087
	.4byte 0x00000000
	.4byte 0x80002004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00640200
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
.endobj weapon_gance_footwork

# .data:0x620 | 0xED68 | size: 0xC0
.obj weapon_gance_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x00001087
	.4byte 0x00000000
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
.endobj weapon_gance_attack

# .data:0x6E0 | 0xEE28 | size: 0xC0
.obj weapon_gance_posing, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000000
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x01004020
	.4byte 0x10000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000088
	.4byte 0x00000000
	.4byte 0x80002004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_gance_posing

# .data:0x7A0 | 0xEEE8 | size: 0xC0
.obj weapon_gance_rariat_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x00001087
	.4byte 0x00000000
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
.endobj weapon_gance_rariat_attack

# .data:0x860 | 0xEFA8 | size: 0xC0
.obj weapon_gance_body_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x000A0302
	.4byte 0x00000000
	.4byte 0x00001087
	.4byte 0x00000000
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
	.4byte 0x00191964
	.4byte 0x00000000
	.4byte 0x00000000
.endobj weapon_gance_body_attack

# .data:0x920 | 0xF068 | size: 0x104
.obj macho_gance_zoom, local
	.4byte 0x0003005B
	.4byte btlevtcmd_GetStatusMg
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C82
	.4byte 0x0002003C
	.4byte 0xFE363C82
	.4byte 0xF24AA280
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWorkFloat
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xFE363C81
	.4byte 0x0002003C
	.4byte 0xFE363C82
	.4byte 0xFE363C81
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002001C
	.4byte 0xFE363C82
	.4byte 0xF24AA280
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0x00000053
	.4byte 0x0000007C
	.4byte 0x00000200
	.4byte 0x00000053
	.4byte 0x00000059
	.4byte 0x00000000
	.4byte 0xFE363C81
	.4byte 0x0000000B
	.4byte 0x00000020
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0x00000047
	.4byte 0x0000009F
	.4byte 0x00000261
	.4byte 0x00000047
	.4byte 0x00000076
	.4byte 0x00000000
	.4byte 0xFE363C81
	.4byte 0x0000000B
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj macho_gance_zoom

# .data:0xA24 | 0xF16C | size: 0xB8
.obj macho_gance_blur_zoom, local
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000030
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x00000320
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x00000010
	.4byte 0x00000021
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0x00000053
	.4byte 0x00000089
	.4byte 0x000002BD
	.4byte 0x00000053
	.4byte 0x00000059
	.4byte 0x00000000
	.4byte 0xFE363C81
	.4byte 0x0000000B
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_env_blur_on
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0000006D
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x00000384
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj macho_gance_blur_zoom

# .data:0xADC | 0xF224 | size: 0x88
.obj mario_party_zoom, local
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000000
	.4byte 0xFFFFFF91
	.4byte 0x00000043
	.4byte 0x00000113
	.4byte 0xFFFFFF91
	.4byte 0x00000031
	.4byte 0x00000000
	.4byte 0xFE363C81
	.4byte 0x0000000B
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj mario_party_zoom

# .data:0xB64 | 0xF2AC | size: 0x13C
.obj init_event, local
	.4byte 0x0007005B
	.4byte btlevtcmd_SetRunSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GANSU_MOVE1_tou2_0000b510
	.4byte str_SFX_BOSS_GANSU_MOVE1_tou2_0000b528
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x0000000A
	.4byte 0x0007005B
	.4byte btlevtcmd_SetWalkSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GANSU_MOVE1_tou2_0000b510
	.4byte str_SFX_BOSS_GANSU_MOVE1_tou2_0000b528
	.4byte 0x00000000
	.4byte 0x00000014
	.4byte 0x00000014
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventWait
	.4byte 0xFFFFFFFE
	.4byte wait_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventPhase
	.4byte 0xFFFFFFFE
	.4byte phase_event
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
	.4byte btlevtcmd_SetEventEntry
	.4byte 0xFFFFFFFE
	.4byte entry_event
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
	.4byte btlevtcmd_SetUnitWorkFloat
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xF24A7E80
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitCursorOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0xCA0 | 0xF3E8 | size: 0xF8
.obj entry_event, local
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0001005E
	.4byte macho_gance_zoom
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GANSU_PAUSI_tou2_0000b540
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_E_1A_tou2_0000b4f0
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg3_tou_469_tou2_0000b558
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0001005E
	.4byte mario_party_zoom
	.4byte 0x0002005B
	.4byte evt_msg_print_battle_party
	.4byte str_stg3_tou_470_tou2_0000b568
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte btlevtcmd_GetBodyId
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFC
	.4byte 0xFE363C80
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj entry_event

# .data:0xD98 | 0xF4E0 | size: 0x184
.obj damage_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte btldefaultevt_Damage
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x00010024
	.4byte 0x00000004
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x00000031
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj damage_event

# .data:0xF1C | 0xF664 | size: 0x18C
.obj base_size_change, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWorkFloat
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xFE363C81
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWorkFloat
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xFE363C80
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020034
	.4byte 0xFE363C85
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C85
	.4byte 0xF24AE280
	.4byte 0x0002003B
	.4byte 0xFE363C85
	.4byte 0xF24AE280
	.4byte 0x00020034
	.4byte 0xFE363C86
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C86
	.4byte 0xF24BAE80
	.4byte 0x0002003B
	.4byte 0xFE363C86
	.4byte 0xF24BAE80
	.4byte 0x00020034
	.4byte 0xFE363C87
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C87
	.4byte 0xF24A7A80
	.4byte 0x0002003B
	.4byte 0xFE363C87
	.4byte 0xF24A7A80
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x00020034
	.4byte 0xFE363C85
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C85
	.4byte 0xF24ADE80
	.4byte 0x0002003B
	.4byte 0xFE363C85
	.4byte 0xF24ADE80
	.4byte 0x00020034
	.4byte 0xFE363C86
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C86
	.4byte 0xF24BBE80
	.4byte 0x0002003B
	.4byte 0xFE363C86
	.4byte 0xF24BBE80
	.4byte 0x00020034
	.4byte 0xFE363C87
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C87
	.4byte 0xF24A7A80
	.4byte 0x0002003B
	.4byte 0xFE363C87
	.4byte 0xF24A7A80
	.4byte 0x0006005B
	.4byte btlevtcmd_SetHitCursorOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x0004005B
	.4byte btlevtcmd_GetHpGaugeOffset
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x0002003C
	.4byte 0xFE363C85
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C86
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetHpGaugeOffset
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x00000002
	.4byte 0x00000001
.endobj base_size_change

# .data:0x10A8 | 0xF7F0 | size: 0x788
.obj phase_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_CheckPhase
	.4byte 0xFE363C80
	.4byte 0x04000003
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_CheckActStatus
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetMaxHp
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020037
	.4byte 0xFE363C80
	.4byte 0x0000004B
	.4byte 0x00020038
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C81
	.4byte 0x0002001C
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte btlevtcmd_StopWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte macho_gance_zoom
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GANSU_PAUSI_tou2_0000b540
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_E_1A_tou2_0000b4f0
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0xFFFFFC7C
	.4byte 0x0002001B
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0xFE363C80
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg3_tou_471_17_tou2_0000b578
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00000021
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_GetMaxHp
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020037
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x00020038
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C81
	.4byte 0x0002001C
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte btlevtcmd_StopWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte macho_gance_zoom
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg3_tou_471_18_tou2_0000b588
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte macho_gance_blur_zoom
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GANSU_BIG3_tou2_0000b598
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_M_1_tou2_0000b5ac
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GANSU_BIG1_tou2_0000b5b0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetRotate
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x00000024
	.4byte 0x00010005
	.4byte 0xFE363C85
	.4byte 0x0006005B
	.4byte wariai_enzan_1f
	.4byte 0xFE363C85
	.4byte 0x00000024
	.4byte 0xF24A7A80
	.4byte 0xF24D4A80
	.4byte 0xFE363C86
	.4byte 0x0006005B
	.4byte wariai_enzan_1f
	.4byte 0xFE363C85
	.4byte 0x00000024
	.4byte 0xF24A7E80
	.4byte 0xF24A7F19
	.4byte 0xFE363C87
	.4byte 0x0005005B
	.4byte btlevtcmd_SetBaseScale
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0xFE363C87
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C86
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GANSU_BIG2_tou2_0000b5c4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetRotate
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x00000024
	.4byte 0x00010005
	.4byte 0xFE363C85
	.4byte 0x0006005B
	.4byte wariai_enzan_1f
	.4byte 0xFE363C85
	.4byte 0x00000024
	.4byte 0xF24A7A80
	.4byte 0xF247AA80
	.4byte 0xFE363C86
	.4byte 0x0006005B
	.4byte wariai_enzan_1f
	.4byte 0xFE363C85
	.4byte 0x00000024
	.4byte 0xF24A7F19
	.4byte 0xF24A7FB3
	.4byte 0xFE363C87
	.4byte 0x0005005B
	.4byte btlevtcmd_SetBaseScale
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0xFE363C87
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C86
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFE363C80
	.4byte 0xF24A7FB3
	.4byte 0x0001005E
	.4byte base_size_change
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000014
	.4byte 0xF24A7A80
	.4byte 0xF24A7CE6
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0x00000002
	.4byte 0x00010005
	.4byte 0xFE363C88
	.4byte 0x0000006E
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_J_1A_tou2_0000b5d8
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPosFloat
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPosFloat
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C89
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x0002003B
	.4byte 0xFE363C86
	.4byte 0xFE363C8A
	.4byte 0x0002001B
	.4byte 0xFE363C86
	.4byte 0xF24A7A80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_J_1B_tou2_0000b5e0
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00020034
	.4byte 0xFE363C86
	.4byte 0xFE363C8A
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GANSU_JUMP1_tou2_0000b5e8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000024
	.4byte 0xFFFFFFFF
	.4byte 0x0000006E
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GANSU_HIPDR_tou2_0000b600
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A80
	.4byte 0xF24A7A94
	.4byte 0x00000320
	.4byte 0x00000070
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000045
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00000021
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte btlevtcmd_GetMaxHp
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020037
	.4byte 0xFE363C80
	.4byte 0x00000019
	.4byte 0x00020038
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C81
	.4byte 0x0002001C
	.4byte 0xFE363C81
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x0002005B
	.4byte btlevtcmd_StopWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_table_furafura
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte macho_gance_zoom
	.4byte 0x0003005B
	.4byte btlevtcmd_SetTalkPoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000041
	.4byte 0x0003005B
	.4byte btlevtcmd_SetStayPoseType
	.4byte 0xFFFFFFFE
	.4byte 0x0000002B
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg3_tou_471_19_tou2_0000b618
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0x1830 | 0xFF78 | size: 0x100
.obj dead_event, local
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitAttackEnd
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte macho_gance_zoom
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_D_2_tou2_0000b628
	.4byte 0x0001000A
	.4byte 0x000000AA
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GANSU_DOWN1_tou2_0000b62c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A94
	.4byte 0xF24A7A80
	.4byte 0x000001F4
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0003005B
	.4byte btlevtcmd_SetTalkPose
	.4byte 0xFFFFFFFE
	.4byte str_T_2_tou2_0000b644
	.4byte 0x0003005B
	.4byte btlevtcmd_SetStayPose
	.4byte 0xFFFFFFFE
	.4byte str_S_2_tou2_0000b648
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg3_tou_471_20_tou2_0000b64c
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x0001005E
	.4byte subsetevt_dead_core_nospin_norotate
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dead_event

# .data:0x1930 | 0x10078 | size: 0x3B8
.obj unk_evt_tou2_00021dd8, local
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFE363C8A
	.4byte 0x0003005B
	.4byte btlevtcmd_OnUnitFlag
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x0000006E
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x0001002B
	.4byte 0x0000002B
	.4byte 0x0001002B
	.4byte 0x0000002C
	.4byte 0x0001002B
	.4byte 0x0000002D
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitKind
	.4byte 0xFE363C8A
	.4byte 0xFE363C82
	.4byte 0x00020018
	.4byte 0xFE363C82
	.4byte 0x000000DE
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C8A
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_DAMA_tou2_0000b65c
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0000002E
	.4byte 0x00000031
	.4byte 0x00000070
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x0000002B
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_BTL_ATTACK_MISS3_tou2_0000b678
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x00000024
	.4byte 0x00010024
	.4byte 0x0000002E
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitKind
	.4byte 0xFE363C8A
	.4byte 0xFE363C82
	.4byte 0x00020018
	.4byte 0xFE363C82
	.4byte 0x000000DE
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFE363C8A
	.4byte str_SFX_VOICE_MARIO_DAMA_tou2_0000b65c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x0000001D
	.4byte 0x0001002B
	.4byte 0x00000031
	.4byte 0x0001002B
	.4byte 0x00000032
	.4byte 0x0001002B
	.4byte 0x00000036
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x0000001D
	.4byte 0x0000002E
	.4byte 0x0000002A
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x00000027
	.4byte 0x00000031
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8E
	.4byte 0x0000006E
	.4byte 0x0003005B
	.4byte btlevtcmd_RunDataEventChild
	.4byte 0xFE363C8A
	.4byte 0x0000000A
	.4byte 0x00000070
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFE363C8A
	.4byte 0xF24A7E80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C8A
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFE363C8A
	.4byte 0xFE363C82
	.4byte 0x00000019
	.4byte 0x00020035
	.4byte 0xFE363C83
	.4byte 0x00000019
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFE363C8A
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFE363C8A
	.4byte 0xF24A7E80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C8A
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFE363C8A
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x00020037
	.4byte 0xFE363C82
	.4byte 0x00000003
	.4byte 0x00020037
	.4byte 0xFE363C85
	.4byte 0x00000004
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0xFE363C85
	.4byte 0x00020038
	.4byte 0xFE363C82
	.4byte 0x00000007
	.4byte 0x0004005B
	.4byte btlevtcmd_TransStageFloorPosition
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFE363C8A
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000028
	.4byte 0xFFFFFFFF
	.4byte 0x0000006E
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A80
	.4byte 0xF24A7A94
	.4byte 0x000000FA
	.4byte 0x00000070
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFE363C8A
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x00020037
	.4byte 0xFE363C85
	.4byte 0x00000002
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0xFE363C85
	.4byte 0x00020038
	.4byte 0xFE363C82
	.4byte 0x00000003
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFE363C8A
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000014
	.4byte 0xFFFFFFFF
	.4byte 0x0000006E
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A80
	.4byte 0xF24A7A94
	.4byte 0x000000A6
	.4byte 0x00000070
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFE363C8A
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFE363C8A
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0000000A
	.4byte 0xFFFFFFFF
	.4byte 0x0000006E
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A80
	.4byte 0xF24A7A94
	.4byte 0x00000074
	.4byte 0x00000070
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj unk_evt_tou2_00021dd8

# .data:0x1CE8 | 0x10430 | size: 0x25C
.obj attack_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C81
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C81
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckStatus
	.4byte 0xFFFFFFFE
	.4byte 0x00000013
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_gance_macho_speed
	.4byte 0x0001005E
	.4byte gance_macho_speed_attack_event
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C82
	.4byte 0x0002001A
	.4byte 0xFE363C82
	.4byte 0x00000002
	.4byte 0x0002001C
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte btlevtcmd_DrawLots
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x0000001E
	.4byte 0x00000014
	.4byte 0x0000000A
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_gance_build_up
	.4byte 0x0001005E
	.4byte gance_build_up_attack_event
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_gance_body
	.4byte 0x0001005E
	.4byte gance_body_attack_event
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_gance_footwork
	.4byte 0x0001005E
	.4byte gance_footwork_attack_event
	.4byte 0x00000031
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_gance_attack
	.4byte 0x0001005E
	.4byte gance_attack_attack_event
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0002001C
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte btlevtcmd_DrawLots
	.4byte 0xFE363C80
	.4byte 0x00000004
	.4byte 0x00000019
	.4byte 0x00000014
	.4byte 0x0000000A
	.4byte 0x0000000A
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_gance_build_up
	.4byte 0x0001005E
	.4byte gance_build_up_attack_event
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_gance_body
	.4byte 0x0001005E
	.4byte gance_body_attack_event
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_gance_footwork
	.4byte 0x0001005E
	.4byte gance_footwork_attack_event
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_gance_posing
	.4byte 0x0001005E
	.4byte gance_posing_attack_event
	.4byte 0x00000031
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte btlevtcmd_DrawLots
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0000000A
	.4byte 0x0000000A
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_gance_rariat_attack
	.4byte 0x0001005E
	.4byte gance_rariat_attack_attack_event
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_gance_body_attack
	.4byte 0x0001005E
	.4byte gance_body_attack_attack_event
	.4byte 0x00000031
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x1F44 | 0x1068C | size: 0x1DC
.obj gance_macho_speed_attack_event, local
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
	.4byte str_SFX_BOSS_GANSU_PAUSI_tou2_0000b540
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_E_1A_tou2_0000b4f0
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPosFloat
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte btlevtcmd_GetStatusMg
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWorkFloat
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xFE363C86
	.4byte 0x0002003C
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x00020034
	.4byte 0xFE363C86
	.4byte 0xF24B6A80
	.4byte 0x0002003C
	.4byte 0xFE363C86
	.4byte 0xFE363C85
	.4byte 0x0002003A
	.4byte 0xFE363C81
	.4byte 0xFE363C86
	.4byte 0x0002003B
	.4byte 0xFE363C82
	.4byte 0xF24B1A80
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte str_hikari_tou2_0000b690
	.4byte str_radiation_n64_tou2_0000b698
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A7E80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GANSU_PAUSI_tou2_0000b6a8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_M_3_tou2_0000b6c0
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x0002005B
	.4byte evt_eff_delete
	.4byte str_hikari_tou2_0000b690
	.4byte 0x0003005B
	.4byte btlevtcmd_PayWeaponCost
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C89
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00000002
	.4byte 0x00000001
.endobj gance_macho_speed_attack_event

# .data:0x2120 | 0x10868 | size: 0x1DC
.obj gance_build_up_attack_event, local
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
	.4byte str_SFX_BOSS_GANSU_PAUSI_tou2_0000b540
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_E_1A_tou2_0000b4f0
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPosFloat
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte btlevtcmd_GetStatusMg
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWorkFloat
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xFE363C86
	.4byte 0x0002003C
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x00020034
	.4byte 0xFE363C86
	.4byte 0xF24B4280
	.4byte 0x0002003C
	.4byte 0xFE363C86
	.4byte 0xFE363C85
	.4byte 0x0002003A
	.4byte 0xFE363C81
	.4byte 0xFE363C86
	.4byte 0x0002003B
	.4byte 0xFE363C82
	.4byte 0xF24B1A80
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte str_hikari_tou2_0000b690
	.4byte str_radiation_n64_tou2_0000b698
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A7E80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GANSU_PAUSI_tou2_0000b6c4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_M_5_tou2_0000b6dc
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x0002005B
	.4byte evt_eff_delete
	.4byte str_hikari_tou2_0000b690
	.4byte 0x0003005B
	.4byte btlevtcmd_PayWeaponCost
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C89
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00000002
	.4byte 0x00000001
.endobj gance_build_up_attack_event

# .data:0x22FC | 0x10A44 | size: 0x1F8
.obj gance_body_attack_event, local
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
	.4byte str_SFX_BOSS_GANSU_PAUSI_tou2_0000b540
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_E_1A_tou2_0000b4f0
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPosFloat
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte btlevtcmd_GetStatusMg
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWorkFloat
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xFE363C86
	.4byte 0x0002003C
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x00020034
	.4byte 0xFE363C86
	.4byte 0xF24B4280
	.4byte 0x0002003C
	.4byte 0xFE363C86
	.4byte 0xFE363C85
	.4byte 0x0002003A
	.4byte 0xFE363C81
	.4byte 0xFE363C86
	.4byte 0x0002003B
	.4byte 0xFE363C82
	.4byte 0xF24B1A80
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte str_hikari_tou2_0000b690
	.4byte str_radiation_n64_tou2_0000b698
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A7E80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GANSU_PAUSI_tou2_0000b6e0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_M_4_tou2_0000b6f8
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_M_7_tou2_0000b6fc
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x0002005B
	.4byte evt_eff_delete
	.4byte str_hikari_tou2_0000b690
	.4byte 0x0003005B
	.4byte btlevtcmd_PayWeaponCost
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000003
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C89
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00000002
	.4byte 0x00000001
.endobj gance_body_attack_event

# .data:0x24F4 | 0x10C3C | size: 0x1DC
.obj gance_footwork_attack_event, local
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
	.4byte str_SFX_BOSS_GANSU_PAUSI_tou2_0000b540
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_E_1A_tou2_0000b4f0
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPosFloat
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte btlevtcmd_GetStatusMg
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWorkFloat
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xFE363C86
	.4byte 0x0002003C
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x00020034
	.4byte 0xFE363C86
	.4byte 0xF24B4280
	.4byte 0x0002003C
	.4byte 0xFE363C86
	.4byte 0xFE363C85
	.4byte 0x0002003A
	.4byte 0xFE363C81
	.4byte 0xFE363C86
	.4byte 0x0002003B
	.4byte 0xFE363C82
	.4byte 0xF24B1A80
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte str_hikari_tou2_0000b690
	.4byte str_radiation_n64_tou2_0000b698
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A7E80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GANSU_PAUSI_tou2_0000b700
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_M_6_tou2_0000b718
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x0002005B
	.4byte evt_eff_delete
	.4byte str_hikari_tou2_0000b690
	.4byte 0x0003005B
	.4byte btlevtcmd_PayWeaponCost
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000004
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C89
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00000002
	.4byte 0x00000001
.endobj gance_footwork_attack_event

# .data:0x26D0 | 0x10E18 | size: 0x874
.obj gance_attack_attack_event, local
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GANSU_PAUSI_tou2_0000b540
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_E_1A_tou2_0000b4f0
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPosFloat
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte btlevtcmd_GetStatusMg
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWorkFloat
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xFE363C86
	.4byte 0x0002003C
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x00020034
	.4byte 0xFE363C86
	.4byte 0xF24B4280
	.4byte 0x0002003C
	.4byte 0xFE363C86
	.4byte 0xFE363C85
	.4byte 0x0002003A
	.4byte 0xFE363C81
	.4byte 0xFE363C86
	.4byte 0x0002003B
	.4byte 0xFE363C82
	.4byte 0xF24B1A80
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte str_hikari_tou2_0000b690
	.4byte str_radiation_n64_tou2_0000b698
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A7E80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GANSU_PAUSI_tou2_0000b71c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_E_1B_tou2_0000b734
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x0002005B
	.4byte evt_eff_delete
	.4byte str_hikari_tou2_0000b690
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000014
	.4byte 0xF24A7A80
	.4byte 0xF24A7CE6
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
	.4byte 0x00000021
	.4byte 0x00000002
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
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_PartsFaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x000000FA
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000028
	.4byte 0x0003005B
	.4byte x_flag_set
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0000006E
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A84
	.4byte 0xF24A7A80
	.4byte 0x0000048E
	.4byte 0x0003005B
	.4byte x_flag_set
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000070
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000046
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte x_flag_wait
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002A
	.4byte 0x0000006E
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A84
	.4byte 0xF24A7A80
	.4byte 0x000001F4
	.4byte 0x00000070
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0000006E
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_J_1A_tou2_0000b5d8
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPosFloat
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPosFloat
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C89
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x0002003B
	.4byte 0xFE363C86
	.4byte 0xFE363C8A
	.4byte 0x0002001B
	.4byte 0xFE363C86
	.4byte 0xF24A7A80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_J_1B_tou2_0000b5e0
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00020034
	.4byte 0xFE363C86
	.4byte 0xFE363C8A
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GANSU_JUMP1_tou2_0000b5e8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000024
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte x_flag_set
	.4byte 0x00000000
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
	.4byte 0x0002005B
	.4byte btlevtcmd_JumpContinue
	.4byte 0xFFFFFFFE
	.4byte 0x0003005B
	.4byte x_flag_set
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0000006E
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GANSU_HIPDR_tou2_0000b600
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A80
	.4byte 0xF24A7A94
	.4byte 0x00000320
	.4byte 0x0003005B
	.4byte x_flag_set
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000070
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_MoveDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000012
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_MoveDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000012
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000009
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000045
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C89
	.4byte 0x0003005B
	.4byte x_flag_set
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0000006E
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GANSU_HIPDR_tou2_0000b600
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A80
	.4byte 0xF24A7A94
	.4byte 0x00000320
	.4byte 0x0003005B
	.4byte x_flag_set
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000070
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000030
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000018
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000000C
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0000000C
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000006
	.4byte 0xFFFFFFFF
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0003005B
	.4byte x_flag_wait
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8A80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000045
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002A
	.4byte 0x0003005B
	.4byte x_flag_set
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0000006E
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A84
	.4byte 0xF24A7A80
	.4byte 0x0000029A
	.4byte 0x0003005B
	.4byte x_flag_set
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000070
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000028
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x0003005B
	.4byte x_flag_wait
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj gance_attack_attack_event

# .data:0x2F44 | 0x1168C | size: 0x204
.obj gance_posing_attack_event, local
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
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x0000012C
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GANSU_PAUSI_tou2_0000b540
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_E_1A_tou2_0000b4f0
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPosFloat
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte btlevtcmd_GetStatusMg
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWorkFloat
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xFE363C86
	.4byte 0x0002003C
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x00020034
	.4byte 0xFE363C86
	.4byte 0xF24B4280
	.4byte 0x0002003C
	.4byte 0xFE363C86
	.4byte 0xFE363C85
	.4byte 0x0002003A
	.4byte 0xFE363C81
	.4byte 0xFE363C86
	.4byte 0x0002003B
	.4byte 0xFE363C82
	.4byte 0xF24B1A80
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte str_hikari_tou2_0000b690
	.4byte str_radiation_n64_tou2_0000b698
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A7E80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000006E
	.4byte 0x0001000A
	.4byte 0x00000032
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GANSU_FIST1_tou2_0000b73c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0001000A
	.4byte 0x000000B4
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GANSU_FIST1_tou2_0000b73c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_M_8_tou2_0000b754
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_eff_delete
	.4byte str_hikari_tou2_0000b690
	.4byte 0x0003005B
	.4byte btlevtcmd_PayWeaponCost
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000006
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C89
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00000002
	.4byte 0x00000001
.endobj gance_posing_attack_event

# .data:0x3148 | 0x11890 | size: 0x6F8
.obj gance_rariat_attack_attack_event, local
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GANSU_PAUSI_tou2_0000b540
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_E_1A_tou2_0000b4f0
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPosFloat
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte btlevtcmd_GetStatusMg
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWorkFloat
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xFE363C86
	.4byte 0x0002003C
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x00020034
	.4byte 0xFE363C86
	.4byte 0xF24BE280
	.4byte 0x0002003C
	.4byte 0xFE363C86
	.4byte 0xFE363C85
	.4byte 0x0002003A
	.4byte 0xFE363C81
	.4byte 0xFE363C86
	.4byte 0x00020034
	.4byte 0xFE363C86
	.4byte 0xF24ACA80
	.4byte 0x0002003C
	.4byte 0xFE363C86
	.4byte 0xFE363C85
	.4byte 0x0002003A
	.4byte 0xFE363C80
	.4byte 0xFE363C86
	.4byte 0x0002003B
	.4byte 0xFE363C82
	.4byte 0xF24B1A80
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte str_hikari_tou2_0000b690
	.4byte str_radiation_n64_tou2_0000b698
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A7E80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GANSU_PAUSI_tou2_0000b758
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_M_2_tou2_0000b770
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_eff_delete
	.4byte str_hikari_tou2_0000b690
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000014
	.4byte 0xF24A7A80
	.4byte 0xF24A7CE6
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C89
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
	.4byte 0x00000021
	.4byte 0x00000002
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
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2A_tou2_0000b774
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A9A80
	.4byte 0x0000006E
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A84
	.4byte 0xF24A7A80
	.4byte 0x000000C8
	.4byte 0x00000070
	.4byte 0x0003005B
	.4byte btlevtcmd_GetSelectEnemy
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte x_flag_set
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte x_flag_set
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte btlevtcmd_GetStatusMg
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C87
	.4byte 0x0002003C
	.4byte 0xFE363C87
	.4byte 0x00000023
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWorkFloat
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xFE363C86
	.4byte 0x0002003C
	.4byte 0xFE363C87
	.4byte 0xFE363C86
	.4byte 0x0002003A
	.4byte 0xFE363C87
	.4byte 0x0000000F
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFE363C87
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000006
	.4byte 0x00020018
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_2B_tou2_0000b77c
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8A80
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte x_flag_set
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0000006E
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte x_flag_set
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000070
	.4byte 0x00000021
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
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x0000005A
	.4byte 0x0000002E
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000026
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x0000005A
	.4byte 0x0000002E
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000027
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x0000005A
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000028
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x0000005A
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x0000005B
	.4byte 0x0000002E
	.4byte 0x0000002A
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000061
	.4byte 0x0000002E
	.4byte 0x00000031
	.4byte 0x00010004
	.4byte 0xFE363C86
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x00010004
	.4byte 0x00000061
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x00020018
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C89
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte x_flag_set
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0000006E
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A94
	.4byte 0xF24A7A80
	.4byte 0x00000320
	.4byte 0x0003005B
	.4byte x_flag_set
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000070
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00010003
	.4byte 0x00000061
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_GetSelectNextEnemy
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte x_flag_wait
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0xFE363C87
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000006
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte x_flag_wait
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8A80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000045
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002A
	.4byte 0x0003005B
	.4byte x_flag_set
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0000006E
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A84
	.4byte 0xF24A7A80
	.4byte 0x0000029A
	.4byte 0x0003005B
	.4byte x_flag_set
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000070
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000028
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x0003005B
	.4byte x_flag_wait
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj gance_rariat_attack_attack_event

# .data:0x3840 | 0x11F88 | size: 0x80C
.obj gance_body_attack_attack_event, local
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GANSU_PAUSI_tou2_0000b540
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xFE363C8F
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_E_1A_tou2_0000b4f0
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8F
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPosFloat
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte btlevtcmd_GetStatusMg
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWorkFloat
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xFE363C86
	.4byte 0x0002003C
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0x00020034
	.4byte 0xFE363C86
	.4byte 0xF24B4280
	.4byte 0x0002003C
	.4byte 0xFE363C86
	.4byte 0xFE363C85
	.4byte 0x0002003A
	.4byte 0xFE363C81
	.4byte 0xFE363C86
	.4byte 0x0002003B
	.4byte 0xFE363C82
	.4byte 0xF24B1A80
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte str_hikari_tou2_0000b690
	.4byte str_radiation_n64_tou2_0000b698
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A7E80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GANSU_PAUSI_tou2_0000b784
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_M_1_tou2_0000b5ac
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_eff_delete
	.4byte str_hikari_tou2_0000b690
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000045
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GANSU_ATTAC_tou2_0000b79c
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetRotate
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0x0000000C
	.4byte 0x00010005
	.4byte 0xFE363C85
	.4byte 0x0006005B
	.4byte wariai_enzan_1f
	.4byte 0xFE363C85
	.4byte 0x0000000C
	.4byte 0xF24A7A80
	.4byte 0xF24D4A80
	.4byte 0xFE363C86
	.4byte 0x00020035
	.4byte 0xFE363C86
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000014
	.4byte 0xF24A7A80
	.4byte 0xF24A7CE6
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
	.4byte 0x00000021
	.4byte 0x00000002
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
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1A_tou2_0000b7b4
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0000006E
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1B_tou2_0000b7bc
	.4byte 0x0003005B
	.4byte btlevtcmd_GetStatusMg
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24B9280
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWorkFloat
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xFE363C81
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotateOffset
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7A80
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x00020032
	.4byte 0xFE363C85
	.4byte 0xF24AEDB3
	.4byte 0x00010005
	.4byte 0xFE363C85
	.4byte 0x0007005B
	.4byte wariai_enzan_1f_intpl
	.4byte 0xFE363C85
	.4byte 0xF24AEDB3
	.4byte 0xF24A7A80
	.4byte 0xF24F7A80
	.4byte 0xFE363C86
	.4byte 0x00000005
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C86
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1C_tou2_0000b7c4
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotateOffset
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7A80
	.4byte 0xF24A7A80
	.4byte 0xF24A7A80
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GANSU_JUMP1_tou2_0000b5e8
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000024
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte x_flag_set
	.4byte 0x00000000
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
	.4byte 0x0002005B
	.4byte btlevtcmd_JumpContinue
	.4byte 0xFFFFFFFE
	.4byte 0x0003005B
	.4byte x_flag_set
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0000006E
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GANSU_HIPDR_tou2_0000b600
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A80
	.4byte 0xF24A7A94
	.4byte 0x00000320
	.4byte 0x0003005B
	.4byte x_flag_set
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1D_tou2_0000b7cc
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C89
	.4byte 0x0003005B
	.4byte x_flag_set
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0000006E
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_GANSU_HIPDR_tou2_0000b600
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A80
	.4byte 0xF24A7A94
	.4byte 0x00000320
	.4byte 0x0003005B
	.4byte x_flag_set
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000070
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_A_1D_tou2_0000b7cc
	.4byte 0x0002005B
	.4byte btlevtcmd_JumpContinue
	.4byte 0xFFFFFFFE
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_MoveDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000012
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_MoveDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000012
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000009
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte x_flag_wait
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8A80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000045
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002A
	.4byte 0x0003005B
	.4byte x_flag_set
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0000006E
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A84
	.4byte 0xF24A7A80
	.4byte 0x0000029A
	.4byte 0x0003005B
	.4byte x_flag_set
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000070
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000028
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x0003005B
	.4byte x_flag_wait
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj gance_body_attack_attack_event

# .data:0x404C | 0x12794 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x4064 | 0x127AC | size: 0x4
.obj gap_04_000127AC_data, global
.hidden gap_04_000127AC_data
	.4byte 0x00000000
.endobj gap_04_000127AC_data

# 0x00000010..0x00000018 | size: 0x8
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x10 | size: 0x8
.obj x_flag_data, local
	.skip 0x8
.endobj x_flag_data
