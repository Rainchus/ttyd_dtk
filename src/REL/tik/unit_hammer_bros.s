.include "macros.inc"
.file "unit_hammer_bros.o"

# 0x00005E44..0x00006058 | size: 0x214
.text
.balign 4

# .text:0x0 | 0x5E44 | size: 0x74
.fn hammer_bros_get_next_target, local
/* 00005E44 00005F08  3C A0 00 00 */	lis r5, _battleWorkPointer@ha
/* 00005E48 00005F0C  38 A5 00 00 */	addi r5, r5, _battleWorkPointer@l
/* 00005E4C 00005F10  80 A5 00 00 */	lwz r5, 0x0(r5)
/* 00005E50 00005F14  38 C5 04 28 */	addi r6, r5, 0x428
/* 00005E54 00005F18  88 A5 0E DF */	lbz r5, 0xedf(r5)
/* 00005E58 00005F1C  38 05 00 01 */	addi r0, r5, 0x1
/* 00005E5C 00005F20  98 06 0A B7 */	stb r0, 0xab7(r6)
/* 00005E60 00005F24  88 A6 0A B7 */	lbz r5, 0xab7(r6)
/* 00005E64 00005F28  88 06 0A 6C */	lbz r0, 0xa6c(r6)
/* 00005E68 00005F2C  7C A5 07 74 */	extsb r5, r5
/* 00005E6C 00005F30  7C 00 07 74 */	extsb r0, r0
/* 00005E70 00005F34  7C 05 00 00 */	cmpw r5, r0
/* 00005E74 00005F38  40 80 00 30 */	bge .L_00005EA4
/* 00005E78 00005F3C  7C A6 2A 14 */	add r5, r6, r5
/* 00005E7C 00005F40  88 05 0A 6D */	lbz r0, 0xa6d(r5)
/* 00005E80 00005F44  7C 00 07 74 */	extsb r0, r0
/* 00005E84 00005F48  1C A0 00 24 */	mulli r5, r0, 0x24
/* 00005E88 00005F4C  38 A5 00 04 */	addi r5, r5, 0x4
/* 00005E8C 00005F50  7C A6 2A 14 */	add r5, r6, r5
/* 00005E90 00005F54  A8 05 00 00 */	lha r0, 0x0(r5)
/* 00005E94 00005F58  90 03 00 00 */	stw r0, 0x0(r3)
/* 00005E98 00005F5C  A8 05 00 02 */	lha r0, 0x2(r5)
/* 00005E9C 00005F60  90 04 00 00 */	stw r0, 0x0(r4)
/* 00005EA0 00005F64  4E 80 00 20 */	blr
.L_00005EA4:
/* 00005EA4 00005F68  38 A0 FF FF */	li r5, -0x1
/* 00005EA8 00005F6C  38 00 00 00 */	li r0, 0x0
/* 00005EAC 00005F70  90 A3 00 00 */	stw r5, 0x0(r3)
/* 00005EB0 00005F74  90 04 00 00 */	stw r0, 0x0(r4)
/* 00005EB4 00005F78  4E 80 00 20 */	blr
.endfn hammer_bros_get_next_target

# .text:0x74 | 0x5EB8 | size: 0x44
.fn hammer_bros_get_target, local
/* 00005EB8 00005F7C  3C A0 00 00 */	lis r5, _battleWorkPointer@ha
/* 00005EBC 00005F80  38 A5 00 00 */	addi r5, r5, _battleWorkPointer@l
/* 00005EC0 00005F84  80 A5 00 00 */	lwz r5, 0x0(r5)
/* 00005EC4 00005F88  38 C5 04 28 */	addi r6, r5, 0x428
/* 00005EC8 00005F8C  88 05 0E DF */	lbz r0, 0xedf(r5)
/* 00005ECC 00005F90  7C 00 07 74 */	extsb r0, r0
/* 00005ED0 00005F94  7C A6 02 14 */	add r5, r6, r0
/* 00005ED4 00005F98  88 05 0A 6D */	lbz r0, 0xa6d(r5)
/* 00005ED8 00005F9C  7C 00 07 74 */	extsb r0, r0
/* 00005EDC 00005FA0  1C A0 00 24 */	mulli r5, r0, 0x24
/* 00005EE0 00005FA4  38 A5 00 04 */	addi r5, r5, 0x4
/* 00005EE4 00005FA8  7C A6 2A 14 */	add r5, r6, r5
/* 00005EE8 00005FAC  A8 05 00 00 */	lha r0, 0x0(r5)
/* 00005EEC 00005FB0  90 03 00 00 */	stw r0, 0x0(r3)
/* 00005EF0 00005FB4  A8 05 00 02 */	lha r0, 0x2(r5)
/* 00005EF4 00005FB8  90 04 00 00 */	stw r0, 0x0(r4)
/* 00005EF8 00005FBC  4E 80 00 20 */	blr
.endfn hammer_bros_get_target

# .text:0xB8 | 0x5EFC | size: 0x15C
.fn hammer_bros_nagemakuri_set_target, local
/* 00005EFC 00005FC0  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 00005F00 00005FC4  7C 08 02 A6 */	mflr r0
/* 00005F04 00005FC8  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00005F08 00005FCC  38 A0 00 00 */	li r5, 0x0
/* 00005F0C 00005FD0  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 00005F10 00005FD4  39 01 00 58 */	addi r8, r1, 0x58
/* 00005F14 00005FD8  BF 21 00 B4 */	stmw r25, 0xb4(r1)
/* 00005F18 00005FDC  7C 7E 1B 78 */	mr r30, r3
/* 00005F1C 00005FE0  38 64 00 00 */	addi r3, r4, _battleWorkPointer@l
/* 00005F20 00005FE4  38 80 00 00 */	li r4, 0x0
/* 00005F24 00005FE8  83 FE 00 18 */	lwz r31, 0x18(r30)
/* 00005F28 00005FEC  80 C3 00 00 */	lwz r6, 0x0(r3)
/* 00005F2C 00005FF0  98 A6 0E DF */	stb r5, 0xedf(r6)
/* 00005F30 00005FF4  80 C3 00 00 */	lwz r6, 0x0(r3)
/* 00005F34 00005FF8  88 06 0E DF */	lbz r0, 0xedf(r6)
/* 00005F38 00005FFC  39 26 04 28 */	addi r9, r6, 0x428
/* 00005F3C 00006000  7C 00 07 74 */	extsb r0, r0
/* 00005F40 00006004  7C C9 02 14 */	add r6, r9, r0
/* 00005F44 00006008  88 06 0A 6D */	lbz r0, 0xa6d(r6)
/* 00005F48 0000600C  7C 00 07 74 */	extsb r0, r0
/* 00005F4C 00006010  1C C0 00 24 */	mulli r6, r0, 0x24
/* 00005F50 00006014  38 E6 00 04 */	addi r7, r6, 0x4
/* 00005F54 00006018  7C E9 3A 14 */	add r7, r9, r7
/* 00005F58 0000601C  A8 C7 00 00 */	lha r6, 0x0(r7)
/* 00005F5C 00006020  A8 07 00 02 */	lha r0, 0x2(r7)
/* 00005F60 00006024  90 C1 00 58 */	stw r6, 0x58(r1)
/* 00005F64 00006028  90 01 00 08 */	stw r0, 0x8(r1)
.L_00005F68:
/* 00005F68 0000602C  7C 08 28 2E */	lwzx r0, r8, r5
/* 00005F6C 00006030  2C 00 FF FF */	cmpwi r0, -0x1
/* 00005F70 00006034  40 82 00 0C */	bne .L_00005F7C
/* 00005F74 00006038  7C 99 23 78 */	mr r25, r4
/* 00005F78 0000603C  48 00 00 80 */	b .L_00005FF8
.L_00005F7C:
/* 00005F7C 00006040  80 C3 00 00 */	lwz r6, 0x0(r3)
/* 00005F80 00006044  38 84 00 01 */	addi r4, r4, 0x1
/* 00005F84 00006048  38 A5 00 04 */	addi r5, r5, 0x4
/* 00005F88 0000604C  39 46 04 28 */	addi r10, r6, 0x428
/* 00005F8C 00006050  88 C6 0E DF */	lbz r6, 0xedf(r6)
/* 00005F90 00006054  38 06 00 01 */	addi r0, r6, 0x1
/* 00005F94 00006058  98 0A 0A B7 */	stb r0, 0xab7(r10)
/* 00005F98 0000605C  88 CA 0A B7 */	lbz r6, 0xab7(r10)
/* 00005F9C 00006060  88 0A 0A 6C */	lbz r0, 0xa6c(r10)
/* 00005FA0 00006064  7C C6 07 74 */	extsb r6, r6
/* 00005FA4 00006068  7C 00 07 74 */	extsb r0, r0
/* 00005FA8 0000606C  7C 06 00 00 */	cmpw r6, r0
/* 00005FAC 00006070  40 80 00 34 */	bge .L_00005FE0
/* 00005FB0 00006074  38 06 0A 6D */	addi r0, r6, 0xa6d
/* 00005FB4 00006078  38 C1 00 08 */	addi r6, r1, 0x8
/* 00005FB8 0000607C  7C 0A 00 AE */	lbzx r0, r10, r0
/* 00005FBC 00006080  7C 00 07 74 */	extsb r0, r0
/* 00005FC0 00006084  1C E0 00 24 */	mulli r7, r0, 0x24
/* 00005FC4 00006088  39 27 00 04 */	addi r9, r7, 0x4
/* 00005FC8 0000608C  7D 2A 4A 14 */	add r9, r10, r9
/* 00005FCC 00006090  A8 E9 00 00 */	lha r7, 0x0(r9)
/* 00005FD0 00006094  A8 09 00 02 */	lha r0, 0x2(r9)
/* 00005FD4 00006098  7C E8 29 2E */	stwx r7, r8, r5
/* 00005FD8 0000609C  7C 06 29 2E */	stwx r0, r6, r5
/* 00005FDC 000060A0  4B FF FF 8C */	b .L_00005F68
.L_00005FE0:
/* 00005FE0 000060A4  38 E0 FF FF */	li r7, -0x1
/* 00005FE4 000060A8  38 C1 00 08 */	addi r6, r1, 0x8
/* 00005FE8 000060AC  38 00 00 00 */	li r0, 0x0
/* 00005FEC 000060B0  7C E8 29 2E */	stwx r7, r8, r5
/* 00005FF0 000060B4  7C 06 29 2E */	stwx r0, r6, r5
/* 00005FF4 000060B8  4B FF FF 74 */	b .L_00005F68
.L_00005FF8:
/* 00005FF8 000060BC  3B 81 00 58 */	addi r28, r1, 0x58
/* 00005FFC 000060C0  3B A1 00 08 */	addi r29, r1, 0x8
/* 00006000 000060C4  3B 40 00 00 */	li r26, 0x0
.L_00006004:
/* 00006004 000060C8  7F 23 CB 78 */	mr r3, r25
/* 00006008 000060CC  4B FF A1 41 */	bl irand
/* 0000600C 000060D0  54 7B 10 3A */	slwi r27, r3, 2
/* 00006010 000060D4  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00006014 000060D8  7C BC D8 2E */	lwzx r5, r28, r27
/* 00006018 000060DC  7F C3 F3 78 */	mr r3, r30
/* 0000601C 000060E0  4B FF A1 2D */	bl evtSetValue
/* 00006020 000060E4  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00006024 000060E8  7F C3 F3 78 */	mr r3, r30
/* 00006028 000060EC  7C BD D8 2E */	lwzx r5, r29, r27
/* 0000602C 000060F0  3B FF 00 08 */	addi r31, r31, 0x8
/* 00006030 000060F4  4B FF A1 19 */	bl evtSetValue
/* 00006034 000060F8  3B 5A 00 01 */	addi r26, r26, 0x1
/* 00006038 000060FC  2C 1A 00 05 */	cmpwi r26, 0x5
/* 0000603C 00006100  41 80 FF C8 */	blt .L_00006004
/* 00006040 00006104  BB 21 00 B4 */	lmw r25, 0xb4(r1)
/* 00006044 00006108  38 60 00 02 */	li r3, 0x2
/* 00006048 0000610C  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 0000604C 00006110  7C 08 03 A6 */	mtlr r0
/* 00006050 00006114  38 21 00 D0 */	addi r1, r1, 0xd0
/* 00006054 00006118  4E 80 00 20 */	blr
.endfn hammer_bros_nagemakuri_set_target

# 0x00004D88..0x00004EB8 | size: 0x130
.rodata
.balign 8

# .rodata:0x0 | 0x4D88 | size: 0x13
.obj str_btl_un_hammer_bros_tik_0000cbf0, local
	.string "btl_un_hammer_bros"
.endobj str_btl_un_hammer_bros_tik_0000cbf0

# .rodata:0x13 | 0x4D9B | size: 0x1
.obj gap_03_00004D9B_rodata, global
.hidden gap_03_00004D9B_rodata
	.byte 0x00
.endobj gap_03_00004D9B_rodata

# .rodata:0x14 | 0x4D9C | size: 0x18
.obj str_SFX_ENM_HUMMER_DAMAG_tik_0000cc04, local
	.string "SFX_ENM_HUMMER_DAMAGED1"
.endobj str_SFX_ENM_HUMMER_DAMAG_tik_0000cc04

# .rodata:0x2C | 0x4DB4 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_tik_0000cc1c, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_tik_0000cc1c

# .rodata:0x41 | 0x4DC9 | size: 0x3
.obj gap_03_00004DC9_rodata, global
.hidden gap_03_00004DC9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004DC9_rodata

# .rodata:0x44 | 0x4DCC | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_tik_0000cc34, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_tik_0000cc34

# .rodata:0x58 | 0x4DE0 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_tik_0000cc48, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_tik_0000cc48

# .rodata:0x71 | 0x4DF9 | size: 0x3
.obj gap_03_00004DF9_rodata, global
.hidden gap_03_00004DF9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004DF9_rodata

# .rodata:0x74 | 0x4DFC | size: 0x8
.obj str_BRO_N_1_tik_0000cc64, local
	.string "BRO_N_1"
.endobj str_BRO_N_1_tik_0000cc64

# .rodata:0x7C | 0x4E04 | size: 0x8
.obj str_BRO_Y_1_tik_0000cc6c, local
	.string "BRO_Y_1"
.endobj str_BRO_Y_1_tik_0000cc6c

# .rodata:0x84 | 0x4E0C | size: 0x8
.obj str_BRO_K_1_tik_0000cc74, local
	.string "BRO_K_1"
.endobj str_BRO_K_1_tik_0000cc74

# .rodata:0x8C | 0x4E14 | size: 0x8
.obj str_BRO_X_1_tik_0000cc7c, local
	.string "BRO_X_1"
.endobj str_BRO_X_1_tik_0000cc7c

# .rodata:0x94 | 0x4E1C | size: 0x8
.obj str_BRO_D_1_tik_0000cc84, local
	.string "BRO_D_1"
.endobj str_BRO_D_1_tik_0000cc84

# .rodata:0x9C | 0x4E24 | size: 0x8
.obj str_BRO_S_1_tik_0000cc8c, local
	.string "BRO_S_1"
.endobj str_BRO_S_1_tik_0000cc8c

# .rodata:0xA4 | 0x4E2C | size: 0x8
.obj str_BRO_Q_1_tik_0000cc94, local
	.string "BRO_Q_1"
.endobj str_BRO_Q_1_tik_0000cc94

# .rodata:0xAC | 0x4E34 | size: 0x8
.obj str_BRO_R_1_tik_0000cc9c, local
	.string "BRO_R_1"
.endobj str_BRO_R_1_tik_0000cc9c

# .rodata:0xB4 | 0x4E3C | size: 0x8
.obj str_BRO_W_1_tik_0000cca4, local
	.string "BRO_W_1"
.endobj str_BRO_W_1_tik_0000cca4

# .rodata:0xBC | 0x4E44 | size: 0x8
.obj str_BRO_T_1_tik_0000ccac, local
	.string "BRO_T_1"
.endobj str_BRO_T_1_tik_0000ccac

# .rodata:0xC4 | 0x4E4C | size: 0xB
.obj str_c_burosu_h_tik_0000ccb4, local
	.string "c_burosu_h"
.endobj str_c_burosu_h_tik_0000ccb4

# .rodata:0xCF | 0x4E57 | size: 0x1
.obj gap_03_00004E57_rodata, global
.hidden gap_03_00004E57_rodata
	.byte 0x00
.endobj gap_03_00004E57_rodata

# .rodata:0xD0 | 0x4E58 | size: 0x17
.obj str_SFX_ENM_HUMMER_ATTAC_tik_0000ccc0, local
	.string "SFX_ENM_HUMMER_ATTACK1"
.endobj str_SFX_ENM_HUMMER_ATTAC_tik_0000ccc0

# .rodata:0xE7 | 0x4E6F | size: 0x1
.obj gap_03_00004E6F_rodata, global
.hidden gap_03_00004E6F_rodata
	.byte 0x00
.endobj gap_03_00004E6F_rodata

# .rodata:0xE8 | 0x4E70 | size: 0x9
.obj str_BRO_A_1B_tik_0000ccd8, local
	.string "BRO_A_1B"
.endobj str_BRO_A_1B_tik_0000ccd8

# .rodata:0xF1 | 0x4E79 | size: 0x3
.obj gap_03_00004E79_rodata, global
.hidden gap_03_00004E79_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004E79_rodata

# .rodata:0xF4 | 0x4E7C | size: 0x17
.obj str_SFX_ENM_HUMMER_ATTAC_tik_0000cce4, local
	.string "SFX_ENM_HUMMER_ATTACK2"
.endobj str_SFX_ENM_HUMMER_ATTAC_tik_0000cce4

# .rodata:0x10B | 0x4E93 | size: 0x1
.obj gap_03_00004E93_rodata, global
.hidden gap_03_00004E93_rodata
	.byte 0x00
.endobj gap_03_00004E93_rodata

# .rodata:0x10C | 0x4E94 | size: 0x17
.obj str_SFX_ENM_HUMMER_ATTAC_tik_0000ccfc, local
	.string "SFX_ENM_HUMMER_ATTACK3"
.endobj str_SFX_ENM_HUMMER_ATTAC_tik_0000ccfc

# .rodata:0x123 | 0x4EAB | size: 0x1
.obj gap_03_00004EAB_rodata, global
.hidden gap_03_00004EAB_rodata
	.byte 0x00
.endobj gap_03_00004EAB_rodata

# .rodata:0x124 | 0x4EAC | size: 0x9
.obj str_BRO_A_1A_tik_0000cd14, local
	.string "BRO_A_1A"
.endobj str_BRO_A_1A_tik_0000cd14

# .rodata:0x12D | 0x4EB5 | size: 0x3
.obj gap_03_00004EB5_rodata, global
.hidden gap_03_00004EB5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00004EB5_rodata

# 0x00024250..0x00025CD0 | size: 0x1A80
.data
.balign 8

# .data:0x0 | 0x24250 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x24258 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x2425C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x24260 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x24264 | size: 0x4
.obj gap_04_00024264_data, global
.hidden gap_04_00024264_data
	.4byte 0x00000000
.endobj gap_04_00024264_data

# .data:0x18 | 0x24268 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x24270 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x24274 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x24278 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x24280 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x24284 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x24288 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x2428C | size: 0x4
.obj gap_04_0002428C_data, global
.hidden gap_04_0002428C_data
	.4byte 0x00000000
.endobj gap_04_0002428C_data

# .data:0x40 | 0x24290 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x24298 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x2429C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x242A0 | size: 0xC4
.obj unit_hammer_bros_24_data_242A0, global
	.4byte 0x00000038
	.4byte str_btl_un_hammer_bros_tik_0000cbf0
	.4byte 0x00070000
	.4byte 0x01011A00
	.4byte 0x02460232
	.4byte 0x270F0024
	.4byte 0x002C0003
	.4byte 0x002C0000
	.4byte 0x00000000
	.4byte 0x41B00000
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x41700000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41200000
	.4byte 0x41E00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41B00000
	.4byte 0x00000000
	.4byte 0x42100000
	.4byte 0x42300000
	.4byte 0x00000002
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_ENM_HUMMER_DAMAG_tik_0000cc04
	.4byte str_SFX_BTL_DAMAGE_FIRE1_tik_0000cc1c
	.4byte str_SFX_BTL_DAMAGE_ICE1_tik_0000cc34
	.4byte str_SFX_BTL_DAMAGE_BIRIB_tik_0000cc48
	.4byte 0x00000000
	.4byte regist
	.4byte 0x06000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_hammer_bros_24_data_242A0

# .data:0x114 | 0x24364 | size: 0x5
.obj defence, local
	.4byte 0x01010101
	.byte 0x01
.endobj defence

# .data:0x119 | 0x24369 | size: 0x3
.obj gap_04_00024369_data, global
.hidden gap_04_00024369_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00024369_data

# .data:0x11C | 0x2436C | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x24371 | size: 0x3
.obj gap_04_00024371_data, global
.hidden gap_04_00024371_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00024371_data

# .data:0x124 | 0x24374 | size: 0x16
.obj regist, local
	.ascii "PPFdPddFdPdPd_PF<dPdd_"
.endobj regist

# .data:0x13A | 0x2438A | size: 0x2
.obj gap_04_0002438A_data, global
.hidden gap_04_0002438A_data
	.2byte 0x0000
.endobj gap_04_0002438A_data

# .data:0x13C | 0x2438C | size: 0x90
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_BRO_N_1_tik_0000cc64
	.4byte 0x00000002
	.4byte str_BRO_Y_1_tik_0000cc6c
	.4byte 0x00000009
	.4byte str_BRO_Y_1_tik_0000cc6c
	.4byte 0x00000005
	.4byte str_BRO_K_1_tik_0000cc74
	.4byte 0x00000004
	.4byte str_BRO_X_1_tik_0000cc7c
	.4byte 0x00000003
	.4byte str_BRO_X_1_tik_0000cc7c
	.4byte 0x0000001B
	.4byte str_BRO_D_1_tik_0000cc84
	.4byte 0x0000001C
	.4byte str_BRO_S_1_tik_0000cc8c
	.4byte 0x0000001D
	.4byte str_BRO_Q_1_tik_0000cc94
	.4byte 0x0000001E
	.4byte str_BRO_Q_1_tik_0000cc94
	.4byte 0x0000001F
	.4byte str_BRO_S_1_tik_0000cc8c
	.4byte 0x00000027
	.4byte str_BRO_D_1_tik_0000cc84
	.4byte 0x0000002A
	.4byte str_BRO_R_1_tik_0000cc9c
	.4byte 0x00000028
	.4byte str_BRO_W_1_tik_0000cca4
	.4byte 0x00000038
	.4byte str_BRO_X_1_tik_0000cc7c
	.4byte 0x00000039
	.4byte str_BRO_X_1_tik_0000cc7c
	.4byte 0x00000041
	.4byte str_BRO_T_1_tik_0000ccac
	.4byte 0x00000045
	.4byte str_BRO_S_1_tik_0000cc8c
.endobj pose_table

# .data:0x1CC | 0x2441C | size: 0x8
.obj data_table, local
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x1D4 | 0x24424 | size: 0x1C8
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_hammer_bros_tik_0000cbf0
	.4byte str_c_burosu_h_tik_0000ccb4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x420C0000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x42340000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000002
	.4byte str_btl_un_hammer_bros_tik_0000cbf0
	.4byte str_c_burosu_h_tik_0000ccb4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41700000
	.4byte 0x41C80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x13010000
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000003
	.4byte str_btl_un_hammer_bros_tik_0000cbf0
	.4byte str_c_burosu_h_tik_0000ccb4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41700000
	.4byte 0x41C80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x13010000
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000004
	.4byte str_btl_un_hammer_bros_tik_0000cbf0
	.4byte str_c_burosu_h_tik_0000ccb4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41700000
	.4byte 0x41C80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x13010000
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000005
	.4byte str_btl_un_hammer_bros_tik_0000cbf0
	.4byte str_c_burosu_h_tik_0000ccb4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41700000
	.4byte 0x41C80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x13010000
	.4byte 0x00000000
	.4byte pose_table
	.4byte 0x00000006
	.4byte str_btl_un_hammer_bros_tik_0000cbf0
	.4byte str_c_burosu_h_tik_0000ccb4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41700000
	.4byte 0x41C80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x13010000
	.4byte 0x00000000
	.4byte pose_table
.endobj parts

# .data:0x39C | 0x245EC | size: 0xC0
.obj weapon_hammer_bros_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
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
	.4byte 0x00000087
	.4byte 0x000007FF
	.4byte 0x80002000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
.endobj weapon_hammer_bros_attack

# .data:0x45C | 0x246AC | size: 0xC0
.obj weapon_hammer_bros_renzoku_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x00000087
	.4byte 0x000007FF
	.4byte 0x80002000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
.endobj weapon_hammer_bros_renzoku_attack

# .data:0x51C | 0x2476C | size: 0xC0
.obj weapon_hammer_bros_nagemakuri_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000002
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x20001000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00000087
	.4byte 0x000007FF
	.4byte 0x80000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
.endobj weapon_hammer_bros_nagemakuri_attack

# .data:0x5DC | 0x2482C | size: 0x54
.obj init_event, local
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
	.4byte attack_event
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x630 | 0x24880 | size: 0x28
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

# .data:0x658 | 0x248A8 | size: 0x180
.obj attack_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000C
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000D
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000E
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_check_battleflag
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte normal_attack_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
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
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0002001A
	.4byte 0xFE363C81
	.4byte 0x00000032
	.4byte 0x0001005E
	.4byte renzoku_attack_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte nagemakuri_attack_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000020
	.4byte 0x0001005E
	.4byte normal_attack_event
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x7D8 | 0x24A28 | size: 0x68
.obj start_avoid, local
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000026
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000027
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C85
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte btlevtcmd_StartAvoid
	.4byte 0xFE363C83
	.4byte 0x00000028
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj start_avoid

# .data:0x840 | 0x24A90 | size: 0x3F8
.obj hammer_bros_attack_common_event1, local
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HUMMER_ATTAC_tik_0000ccc0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte str_BRO_A_1B_tik_0000ccd8
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0x0003005B
	.4byte btlevtcmd_GetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020037
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x00020035
	.4byte 0xFE363C86
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFF79
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotateOffset
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x02000000
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HUMMER_ATTAC_tik_0000cce4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte btlevtcmd_AddPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_GetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0xFE363C86
	.4byte 0x0001005E
	.4byte start_avoid
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x0006005B
	.4byte btlevtcmd_GetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0xFE363C86
	.4byte 0x0001005E
	.4byte start_avoid
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0xF24A7B4C
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0x0000003C
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte btlevtcmd_JumpPartsContinue
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HUMMER_ATTAC_tik_0000ccfc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFE363C83
	.4byte 0xFE363C86
	.4byte 0x00000064
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0xF24A8A80
	.4byte 0xF24A7CE6
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HUMMER_ATTAC_tik_0000ccfc
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFE363C83
	.4byte 0xFE363C86
	.4byte 0x00000096
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0xF24A8A80
	.4byte 0xF24A7C19
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x02000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hammer_bros_attack_common_event1

# .data:0xC38 | 0x24E88 | size: 0x1C0
.obj hammer_bros_attack_common_event2, local
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HUMMER_ATTAC_tik_0000ccc0
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte str_BRO_A_1B_tik_0000ccd8
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0x0003005B
	.4byte btlevtcmd_GetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020037
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x00020035
	.4byte 0xFE363C86
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFF79
	.4byte 0x0006005B
	.4byte btlevtcmd_SetPartsRotateOffset
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x02000000
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_HUMMER_ATTAC_tik_0000cce4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte btlevtcmd_AddPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0xF24A7B4C
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0x0000003C
	.4byte 0xFFFFFFFF
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hammer_bros_attack_common_event2

# .data:0xDF8 | 0x25048 | size: 0xEC
.obj hammer_bros_attack_common_event3, local
	.4byte 0x0000006E
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte btlevtcmd_AddPartsRotate
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x00000006
	.4byte 0x00000070
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte str_BRO_A_1B_tik_0000ccd8
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C86
	.4byte 0x00000032
	.4byte 0x0006005B
	.4byte btlevtcmd_JumpPartsSetting
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x00000000
	.4byte 0xF24A8280
	.4byte 0xF24A7C80
	.4byte 0x0008005B
	.4byte btlevtcmd_JumpPartsPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x01000000
	.4byte 0x0004005B
	.4byte btlevtcmd_OnPartsAttribute
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x02000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hammer_bros_attack_common_event3

# .data:0xEE4 | 0x25134 | size: 0x224
.obj damage_check_event_sub, local
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
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x0000002E
	.4byte 0x00010024
	.4byte 0x00000006
	.4byte 0x00010004
	.4byte 0x0000005A
	.4byte 0x00010024
	.4byte 0x00000002
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
	.4byte 0x0001005E
	.4byte hammer_bros_attack_common_event1
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x00020018
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C89
	.4byte weapon_hammer_bros_renzoku_attack
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000A
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x00000005
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8D
	.4byte 0xFE363C85
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8E
	.4byte 0xFE363C86
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFE363C85
	.4byte 0x00020018
	.4byte 0xFE363C84
	.4byte 0xFE363C86
	.4byte 0x00020035
	.4byte 0xFE363C8D
	.4byte 0x0000000A
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte hammer_bros_attack_common_event2
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C89
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00000020
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C89
	.4byte 0x00000000
	.4byte 0xFE363C85
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte hammer_bros_attack_common_event3
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj damage_check_event_sub

# .data:0x1108 | 0x25358 | size: 0x1C0
.obj normal_attack_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_check_battleflag
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000002EE
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
	.4byte weapon_hammer_bros_attack
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte weapon_hammer_bros_attack
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
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte weapon_hammer_bros_attack
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
	.4byte weapon_hammer_bros_attack
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
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_BRO_A_1A_tik_0000cd14
	.4byte 0x00010009
	.4byte 0x0000001B
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000002
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_hammer_bros_attack
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte damage_check_event_sub
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002B
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj normal_attack_event

# .data:0x12C8 | 0x25518 | size: 0x1BC
.obj renzoku_attack_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte weapon_hammer_bros_renzoku_attack
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte weapon_hammer_bros_renzoku_attack
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
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte weapon_hammer_bros_renzoku_attack
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
	.4byte weapon_hammer_bros_renzoku_attack
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
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000002
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002001D
	.4byte 0xFE363C8E
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_BRO_A_1A_tik_0000cd14
	.4byte 0x00010009
	.4byte 0x0000001B
	.4byte 0x00020018
	.4byte 0xFE363C8E
	.4byte 0x00000003
	.4byte 0x0001005C
	.4byte renzoku_attack_event_sub_last
	.4byte 0x00000020
	.4byte 0x0001005C
	.4byte renzoku_attack_event_sub_no_last
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x00020035
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj renzoku_attack_event

# .data:0x1484 | 0x256D4 | size: 0x34
.obj renzoku_attack_event_sub_no_last, local
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_hammer_bros_renzoku_attack
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte damage_check_event_sub
	.4byte 0x00000002
	.4byte 0x00000001
.endobj renzoku_attack_event_sub_no_last

# .data:0x14B8 | 0x25708 | size: 0x9C
.obj renzoku_attack_event_sub_last, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x0000000A
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte hammer_bros_attack_common_event2
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte weapon_hammer_bros_renzoku_attack
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_hammer_bros_renzoku_attack
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x0001005E
	.4byte hammer_bros_attack_common_event3
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_hammer_bros_renzoku_attack
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte damage_check_event_sub
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj renzoku_attack_event_sub_last

# .data:0x1554 | 0x257A4 | size: 0x2E8
.obj nagemakuri_attack_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte weapon_hammer_bros_nagemakuri_attack
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte weapon_hammer_bros_nagemakuri_attack
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
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte weapon_hammer_bros_nagemakuri_attack
	.4byte 0x0002005B
	.4byte btlevtcmd_AttackDeclareAll
	.4byte 0xFFFFFFFE
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitGuardMove
	.4byte 0x0003005B
	.4byte btlevtcmd_PayWeaponCost
	.4byte 0xFFFFFFFE
	.4byte weapon_hammer_bros_nagemakuri_attack
	.4byte 0x000B005B
	.4byte hammer_bros_nagemakuri_set_target
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0xFE363C88
	.4byte 0xFE363C89
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C84
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000003
	.4byte 0xFE363C86
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000004
	.4byte 0xFE363C88
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000005
	.4byte 0xFE363C81
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000006
	.4byte 0xFE363C83
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000007
	.4byte 0xFE363C85
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000008
	.4byte 0xFE363C87
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000009
	.4byte 0xFE363C89
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x00000005
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000002
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002001D
	.4byte 0xFE363C8C
	.4byte 0x00000004
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8D
	.4byte 0xFE363C83
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8E
	.4byte 0xFE363C84
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000010
	.4byte 0xFE363C8A
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8A
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_BRO_A_1A_tik_0000cd14
	.4byte 0x00010009
	.4byte 0x0000001B
	.4byte 0x0001005C
	.4byte nagemakuri_attack_event_sub
	.4byte 0x0001000A
	.4byte 0x000000FA
	.4byte 0x00020035
	.4byte 0xFE363C8C
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C8F
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nagemakuri_attack_event

# .data:0x183C | 0x25A8C | size: 0xC4
.obj nagemakuri_attack_event_sub, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8D
	.4byte 0xFE363C83
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8E
	.4byte 0xFE363C84
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002001D
	.4byte 0xFE363C8D
	.4byte 0x00000003
	.4byte 0x0001005E
	.4byte nagemakuri_attack_event_sub_last
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8D
	.4byte 0xFE363C85
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8E
	.4byte 0xFE363C86
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFE363C85
	.4byte 0x00020018
	.4byte 0xFE363C84
	.4byte 0xFE363C86
	.4byte 0x0001005E
	.4byte nagemakuri_attack_event_sub_no_last
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nagemakuri_attack_event_sub

# .data:0x1900 | 0x25B50 | size: 0x34
.obj nagemakuri_attack_event_sub_no_last, local
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_hammer_bros_nagemakuri_attack
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte damage_check_event_sub
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nagemakuri_attack_event_sub_no_last

# .data:0x1934 | 0x25B84 | size: 0x130
.obj nagemakuri_attack_event_sub_last, local
	.4byte 0x00020032
	.4byte 0xFE363C8D
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8E
	.4byte 0x00000005
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8D
	.4byte 0xFE363C85
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8E
	.4byte 0xFE363C86
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFE363C85
	.4byte 0x00020018
	.4byte 0xFE363C84
	.4byte 0xFE363C86
	.4byte 0x00020035
	.4byte 0xFE363C8D
	.4byte 0x0000000A
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8D
	.4byte 0xFE363C80
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020035
	.4byte 0xFE363C8D
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFE363C8E
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte hammer_bros_attack_common_event2
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte weapon_hammer_bros_nagemakuri_attack
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_hammer_bros_nagemakuri_attack
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x0001005E
	.4byte hammer_bros_attack_common_event3
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte weapon_hammer_bros_nagemakuri_attack
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte damage_check_event_sub
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj nagemakuri_attack_event_sub_last

# .data:0x1A64 | 0x25CB4 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x1A7C | 0x25CCC | size: 0x4
.obj gap_04_00025CCC_data, global
.hidden gap_04_00025CCC_data
	.4byte 0x00000000
.endobj gap_04_00025CCC_data
