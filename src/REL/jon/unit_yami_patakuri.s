.include "macros.inc"
.file "unit_yami_patakuri.o"

# 0x00000E1C..0x00000F34 | size: 0x118
.text
.balign 4

# .text:0x0 | 0xE1C | size: 0x118
.fn krb_get_dir, local
/* 00000E1C 00000EE0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 00000E20 00000EE4  7C 08 02 A6 */	mflr r0
/* 00000E24 00000EE8  90 01 00 64 */	stw r0, 0x64(r1)
/* 00000E28 00000EEC  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 00000E2C 00000EF0  F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 00000E30 00000EF4  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 00000E34 00000EF8  F3 C1 00 48 */	psq_st f30, 0x48(r1), 0, qr0
/* 00000E38 00000EFC  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 00000E3C 00000F00  F3 A1 00 38 */	psq_st f29, 0x38(r1), 0, qr0
/* 00000E40 00000F04  DB 81 00 20 */	stfd f28, 0x20(r1)
/* 00000E44 00000F08  F3 81 00 28 */	psq_st f28, 0x28(r1), 0, qr0
/* 00000E48 00000F0C  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 00000E4C 00000F10  7C 7E 1B 78 */	mr r30, r3
/* 00000E50 00000F14  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00000E54 00000F18  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00000E58 00000F1C  4B FF FC 19 */	bl evtGetFloat
/* 00000E5C 00000F20  FF 80 08 90 */	fmr f28, f1
/* 00000E60 00000F24  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00000E64 00000F28  7F C3 F3 78 */	mr r3, r30
/* 00000E68 00000F2C  4B FF FC 09 */	bl evtGetFloat
/* 00000E6C 00000F30  FF A0 08 90 */	fmr f29, f1
/* 00000E70 00000F34  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 00000E74 00000F38  7F C3 F3 78 */	mr r3, r30
/* 00000E78 00000F3C  4B FF FB F9 */	bl evtGetFloat
/* 00000E7C 00000F40  FF C0 08 90 */	fmr f30, f1
/* 00000E80 00000F44  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00000E84 00000F48  7F C3 F3 78 */	mr r3, r30
/* 00000E88 00000F4C  4B FF FB E9 */	bl evtGetFloat
/* 00000E8C 00000F50  FF E0 08 90 */	fmr f31, f1
/* 00000E90 00000F54  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00000E94 00000F58  7F C3 F3 78 */	mr r3, r30
/* 00000E98 00000F5C  4B FF FB D9 */	bl evtGetValue
/* 00000E9C 00000F60  3C 80 00 00 */	lis r4, zero_jon_00008d98@ha
/* 00000EA0 00000F64  EC 3E E0 28 */	fsubs f1, f30, f28
/* 00000EA4 00000F68  C0 04 00 00 */	lfs f0, zero_jon_00008d98@l(r4)
/* 00000EA8 00000F6C  EC 5F E8 28 */	fsubs f2, f31, f29
/* 00000EAC 00000F70  7C 65 1B 78 */	mr r5, r3
/* 00000EB0 00000F74  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 00000EB4 00000F78  40 82 00 20 */	bne .L_00000ED4
/* 00000EB8 00000F7C  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 00000EBC 00000F80  40 82 00 18 */	bne .L_00000ED4
/* 00000EC0 00000F84  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00000EC4 00000F88  7F C3 F3 78 */	mr r3, r30
/* 00000EC8 00000F8C  4B FF FB A9 */	bl evtSetValue
/* 00000ECC 00000F90  38 60 00 02 */	li r3, 0x2
/* 00000ED0 00000F94  48 00 00 30 */	b .L_00000F00
.L_00000ED4:
/* 00000ED4 00000F98  3C 60 00 00 */	lis r3, zero_jon_00008d98@ha
/* 00000ED8 00000F9C  C0 63 00 00 */	lfs f3, zero_jon_00008d98@l(r3)
/* 00000EDC 00000FA0  FC 80 18 90 */	fmr f4, f3
/* 00000EE0 00000FA4  4B FF FB 91 */	bl angleABf_1
/* 00000EE4 00000FA8  FC 00 08 1E */	fctiwz f0, f1
/* 00000EE8 00000FAC  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00000EEC 00000FB0  7F C3 F3 78 */	mr r3, r30
/* 00000EF0 00000FB4  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 00000EF4 00000FB8  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 00000EF8 00000FBC  4B FF FB 79 */	bl evtSetValue
/* 00000EFC 00000FC0  38 60 00 02 */	li r3, 0x2
.L_00000F00:
/* 00000F00 00000FC4  E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 00000F04 00000FC8  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 00000F08 00000FCC  E3 C1 00 48 */	psq_l f30, 0x48(r1), 0, qr0
/* 00000F0C 00000FD0  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 00000F10 00000FD4  E3 A1 00 38 */	psq_l f29, 0x38(r1), 0, qr0
/* 00000F14 00000FD8  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 00000F18 00000FDC  E3 81 00 28 */	psq_l f28, 0x28(r1), 0, qr0
/* 00000F1C 00000FE0  CB 81 00 20 */	lfd f28, 0x20(r1)
/* 00000F20 00000FE4  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 00000F24 00000FE8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 00000F28 00000FEC  7C 08 03 A6 */	mtlr r0
/* 00000F2C 00000FF0  38 21 00 60 */	addi r1, r1, 0x60
/* 00000F30 00000FF4  4E 80 00 20 */	blr
.endfn krb_get_dir

# 0x00001B28..0x00001D70 | size: 0x248
.rodata
.balign 8

# .rodata:0x0 | 0x1B28 | size: 0x15
.obj str_btl_un_yami_patakuri_jon_00008b58, local
	.string "btl_un_yami_patakuri"
.endobj str_btl_un_yami_patakuri_jon_00008b58

# .rodata:0x15 | 0x1B3D | size: 0x3
.obj gap_03_00001B3D_rodata, global
.hidden gap_03_00001B3D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001B3D_rodata

# .rodata:0x18 | 0x1B40 | size: 0x1A
.obj str_SFX_ENM_PATAKURI_DAM_jon_00008b70, local
	.string "SFX_ENM_PATAKURI_DAMAGED1"
.endobj str_SFX_ENM_PATAKURI_DAM_jon_00008b70

# .rodata:0x32 | 0x1B5A | size: 0x2
.obj gap_03_00001B5A_rodata, global
.hidden gap_03_00001B5A_rodata
	.2byte 0x0000
.endobj gap_03_00001B5A_rodata

# .rodata:0x34 | 0x1B5C | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_jon_00008b8c, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_jon_00008b8c

# .rodata:0x49 | 0x1B71 | size: 0x3
.obj gap_03_00001B71_rodata, global
.hidden gap_03_00001B71_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001B71_rodata

# .rodata:0x4C | 0x1B74 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_jon_00008ba4, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_jon_00008ba4

# .rodata:0x60 | 0x1B88 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_jon_00008bb8, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_jon_00008bb8

# .rodata:0x79 | 0x1BA1 | size: 0x3
.obj gap_03_00001BA1_rodata, global
.hidden gap_03_00001BA1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001BA1_rodata

# .rodata:0x7C | 0x1BA4 | size: 0xB
.obj str_c_kuribo_y_jon_00008bd4, local
	.string "c_kuribo_y"
.endobj str_c_kuribo_y_jon_00008bd4

# .rodata:0x87 | 0x1BAF | size: 0x1
.obj gap_03_00001BAF_rodata, global
.hidden gap_03_00001BAF_rodata
	.byte 0x00
.endobj gap_03_00001BAF_rodata

# .rodata:0x88 | 0x1BB0 | size: 0x8
.obj str_PTK_N_1_jon_00008be0, local
	.string "PTK_N_1"
.endobj str_PTK_N_1_jon_00008be0

# .rodata:0x90 | 0x1BB8 | size: 0x8
.obj str_PTK_Y_1_jon_00008be8, local
	.string "PTK_Y_1"
.endobj str_PTK_Y_1_jon_00008be8

# .rodata:0x98 | 0x1BC0 | size: 0x8
.obj str_PTK_K_1_jon_00008bf0, local
	.string "PTK_K_1"
.endobj str_PTK_K_1_jon_00008bf0

# .rodata:0xA0 | 0x1BC8 | size: 0x8
.obj str_PTK_I_1_jon_00008bf8, local
	.string "PTK_I_1"
.endobj str_PTK_I_1_jon_00008bf8

# .rodata:0xA8 | 0x1BD0 | size: 0x8
.obj str_PTK_S_1_jon_00008c00, local
	.string "PTK_S_1"
.endobj str_PTK_S_1_jon_00008c00

# .rodata:0xB0 | 0x1BD8 | size: 0x8
.obj str_PTK_Q_1_jon_00008c08, local
	.string "PTK_Q_1"
.endobj str_PTK_Q_1_jon_00008c08

# .rodata:0xB8 | 0x1BE0 | size: 0x8
.obj str_PTK_D_1_jon_00008c10, local
	.string "PTK_D_1"
.endobj str_PTK_D_1_jon_00008c10

# .rodata:0xC0 | 0x1BE8 | size: 0x8
.obj str_PTK_A_1_jon_00008c18, local
	.string "PTK_A_1"
.endobj str_PTK_A_1_jon_00008c18

# .rodata:0xC8 | 0x1BF0 | size: 0x8
.obj str_PTK_R_1_jon_00008c20, local
	.string "PTK_R_1"
.endobj str_PTK_R_1_jon_00008c20

# .rodata:0xD0 | 0x1BF8 | size: 0x8
.obj str_PTK_R_2_jon_00008c28, local
	.string "PTK_R_2"
.endobj str_PTK_R_2_jon_00008c28

# .rodata:0xD8 | 0x1C00 | size: 0x8
.obj str_PTK_W_1_jon_00008c30, local
	.string "PTK_W_1"
.endobj str_PTK_W_1_jon_00008c30

# .rodata:0xE0 | 0x1C08 | size: 0x8
.obj str_PTK_T_1_jon_00008c38, local
	.string "PTK_T_1"
.endobj str_PTK_T_1_jon_00008c38

# .rodata:0xE8 | 0x1C10 | size: 0x17
.obj str_SFX_ENM_PATAKURI_WAI_jon_00008c40, local
	.string "SFX_ENM_PATAKURI_WAIT1"
.endobj str_SFX_ENM_PATAKURI_WAI_jon_00008c40

# .rodata:0xFF | 0x1C27 | size: 0x1
.obj gap_03_00001C27_rodata, global
.hidden gap_03_00001C27_rodata
	.byte 0x00
.endobj gap_03_00001C27_rodata

# .rodata:0x100 | 0x1C28 | size: 0x17
.obj str_SFX_ENM_PATAKURI_MOV_jon_00008c58, local
	.string "SFX_ENM_PATAKURI_MOVE1"
.endobj str_SFX_ENM_PATAKURI_MOV_jon_00008c58

# .rodata:0x117 | 0x1C3F | size: 0x1
.obj gap_03_00001C3F_rodata, global
.hidden gap_03_00001C3F_rodata
	.byte 0x00
.endobj gap_03_00001C3F_rodata

# .rodata:0x118 | 0x1C40 | size: 0xE
.obj str_SFX_ENM_FALL1_jon_00008c70, local
	.string "SFX_ENM_FALL1"
.endobj str_SFX_ENM_FALL1_jon_00008c70

# .rodata:0x126 | 0x1C4E | size: 0x2
.obj gap_03_00001C4E_rodata, global
.hidden gap_03_00001C4E_rodata
	.2byte 0x0000
.endobj gap_03_00001C4E_rodata

# .rodata:0x128 | 0x1C50 | size: 0x13
.obj str_SFX_ENM_KURI_MOVE1_jon_00008c80, local
	.string "SFX_ENM_KURI_MOVE1"
.endobj str_SFX_ENM_KURI_MOVE1_jon_00008c80

# .rodata:0x13B | 0x1C63 | size: 0x1
.obj gap_03_00001C63_rodata, global
.hidden gap_03_00001C63_rodata
	.byte 0x00
.endobj gap_03_00001C63_rodata

# .rodata:0x13C | 0x1C64 | size: 0x17
.obj str_SFX_ENM_PATAKURI_MOV_jon_00008c94, local
	.string "SFX_ENM_PATAKURI_MOVE2"
.endobj str_SFX_ENM_PATAKURI_MOV_jon_00008c94

# .rodata:0x153 | 0x1C7B | size: 0x1
.obj gap_03_00001C7B_rodata, global
.hidden gap_03_00001C7B_rodata
	.byte 0x00
.endobj gap_03_00001C7B_rodata

# .rodata:0x154 | 0x1C7C | size: 0x17
.obj str_SFX_ENM_PATAKURI_MOV_jon_00008cac, local
	.string "SFX_ENM_PATAKURI_MOVE3"
.endobj str_SFX_ENM_PATAKURI_MOV_jon_00008cac

# .rodata:0x16B | 0x1C93 | size: 0x1
.obj gap_03_00001C93_rodata, global
.hidden gap_03_00001C93_rodata
	.byte 0x00
.endobj gap_03_00001C93_rodata

# .rodata:0x16C | 0x1C94 | size: 0x8
.obj str_KUR_N_1_jon_00008cc4, local
	.string "KUR_N_1"
.endobj str_KUR_N_1_jon_00008cc4

# .rodata:0x174 | 0x1C9C | size: 0x8
.obj str_KUR_Y_1_jon_00008ccc, local
	.string "KUR_Y_1"
.endobj str_KUR_Y_1_jon_00008ccc

# .rodata:0x17C | 0x1CA4 | size: 0x8
.obj str_KUR_K_1_jon_00008cd4, local
	.string "KUR_K_1"
.endobj str_KUR_K_1_jon_00008cd4

# .rodata:0x184 | 0x1CAC | size: 0x8
.obj str_KUR_I_1_jon_00008cdc, local
	.string "KUR_I_1"
.endobj str_KUR_I_1_jon_00008cdc

# .rodata:0x18C | 0x1CB4 | size: 0x8
.obj str_KUR_S_1_jon_00008ce4, local
	.string "KUR_S_1"
.endobj str_KUR_S_1_jon_00008ce4

# .rodata:0x194 | 0x1CBC | size: 0x8
.obj str_KUR_Q_1_jon_00008cec, local
	.string "KUR_Q_1"
.endobj str_KUR_Q_1_jon_00008cec

# .rodata:0x19C | 0x1CC4 | size: 0x8
.obj str_KUR_D_1_jon_00008cf4, local
	.string "KUR_D_1"
.endobj str_KUR_D_1_jon_00008cf4

# .rodata:0x1A4 | 0x1CCC | size: 0x8
.obj str_KUR_A_1_jon_00008cfc, local
	.string "KUR_A_1"
.endobj str_KUR_A_1_jon_00008cfc

# .rodata:0x1AC | 0x1CD4 | size: 0x8
.obj str_KUR_A_2_jon_00008d04, local
	.string "KUR_A_2"
.endobj str_KUR_A_2_jon_00008d04

# .rodata:0x1B4 | 0x1CDC | size: 0x8
.obj str_KUR_R_1_jon_00008d0c, local
	.string "KUR_R_1"
.endobj str_KUR_R_1_jon_00008d0c

# .rodata:0x1BC | 0x1CE4 | size: 0x8
.obj str_KUR_R_2_jon_00008d14, local
	.string "KUR_R_2"
.endobj str_KUR_R_2_jon_00008d14

# .rodata:0x1C4 | 0x1CEC | size: 0x8
.obj str_KUR_W_1_jon_00008d1c, local
	.string "KUR_W_1"
.endobj str_KUR_W_1_jon_00008d1c

# .rodata:0x1CC | 0x1CF4 | size: 0x8
.obj str_KUR_T_1_jon_00008d24, local
	.string "KUR_T_1"
.endobj str_KUR_T_1_jon_00008d24

# .rodata:0x1D4 | 0x1CFC | size: 0x14
.obj str_btl_un_yami_kuriboo_jon_00008d2c, local
	.string "btl_un_yami_kuriboo"
.endobj str_btl_un_yami_kuriboo_jon_00008d2c

# .rodata:0x1E8 | 0x1D10 | size: 0x13
.obj str_SFX_ENM_KURI_MOVE2_jon_00008d40, local
	.string "SFX_ENM_KURI_MOVE2"
.endobj str_SFX_ENM_KURI_MOVE2_jon_00008d40

# .rodata:0x1FB | 0x1D23 | size: 0x1
.obj gap_03_00001D23_rodata, global
.hidden gap_03_00001D23_rodata
	.byte 0x00
.endobj gap_03_00001D23_rodata

# .rodata:0x1FC | 0x1D24 | size: 0x13
.obj str_SFX_ENM_KURI_JUMP1_jon_00008d54, local
	.string "SFX_ENM_KURI_JUMP1"
.endobj str_SFX_ENM_KURI_JUMP1_jon_00008d54

# .rodata:0x20F | 0x1D37 | size: 0x1
.obj gap_03_00001D37_rodata, global
.hidden gap_03_00001D37_rodata
	.byte 0x00
.endobj gap_03_00001D37_rodata

# .rodata:0x210 | 0x1D38 | size: 0x16
.obj str_SFX_ENM_KURI_LANDING_jon_00008d68, local
	.string "SFX_ENM_KURI_LANDING1"
.endobj str_SFX_ENM_KURI_LANDING_jon_00008d68

# .rodata:0x226 | 0x1D4E | size: 0x2
.obj gap_03_00001D4E_rodata, global
.hidden gap_03_00001D4E_rodata
	.2byte 0x0000
.endobj gap_03_00001D4E_rodata

# .rodata:0x228 | 0x1D50 | size: 0x15
.obj str_SFX_ENM_KURI_ATTACK1_jon_00008d80, local
	.string "SFX_ENM_KURI_ATTACK1"
.endobj str_SFX_ENM_KURI_ATTACK1_jon_00008d80
	.byte 0x00, 0x00, 0x00

# .rodata:0x240 | 0x1D68 | size: 0x4
.obj zero_jon_00008d98, local
	.float 0
.endobj zero_jon_00008d98

# .rodata:0x244 | 0x1D6C | size: 0x4
.obj gap_03_00001D6C_rodata, global
.hidden gap_03_00001D6C_rodata
	.4byte 0x00000000
.endobj gap_03_00001D6C_rodata

# 0x00017B48..0x00019200 | size: 0x16B8
.data
.balign 8

# .data:0x0 | 0x17B48 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x17B50 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x17B54 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x17B58 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x17B5C | size: 0x4
.obj gap_04_00017B5C_data, global
.hidden gap_04_00017B5C_data
	.4byte 0x00000000
.endobj gap_04_00017B5C_data

# .data:0x18 | 0x17B60 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x17B68 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x17B6C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x17B70 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x17B78 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x17B7C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x17B80 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x17B84 | size: 0x4
.obj gap_04_00017B84_data, global
.hidden gap_04_00017B84_data
	.4byte 0x00000000
.endobj gap_04_00017B84_data

# .data:0x40 | 0x17B88 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x17B90 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x17B94 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x17B98 | size: 0xC4
.obj unit_yami_patakuri_14_data_17B98, global
	.4byte 0x0000009A
	.4byte str_btl_un_yami_patakuri_jon_00008b58
	.4byte 0x00070000
	.4byte 0x01010C00
	.4byte 0x02460032
	.4byte 0x270F0017
	.4byte 0x00190005
	.4byte 0x00190000
	.4byte 0x00000000
	.4byte 0x41400000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41400000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41380000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41380000
	.4byte 0x41820000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41400000
	.4byte 0x00000000
	.4byte 0x41B80000
	.4byte 0x41C80000
	.4byte 0x00000002
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_ENM_PATAKURI_DAM_jon_00008b70
	.4byte str_SFX_BTL_DAMAGE_FIRE1_jon_00008b8c
	.4byte str_SFX_BTL_DAMAGE_ICE1_jon_00008ba4
	.4byte str_SFX_BTL_DAMAGE_BIRIB_jon_00008bb8
	.4byte 0x00040004
	.4byte regist_patakuri
	.4byte 0x01000000
	.4byte parts_patakuri
	.4byte init_event_patakuri
	.4byte data_table_patakuri
.endobj unit_yami_patakuri_14_data_17B98

# .data:0x114 | 0x17C5C | size: 0x5
.obj defence_patakuri, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_patakuri

# .data:0x119 | 0x17C61 | size: 0x3
.obj gap_04_00017C61_data, global
.hidden gap_04_00017C61_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00017C61_data

# .data:0x11C | 0x17C64 | size: 0x5
.obj defence_patakuri_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_patakuri_attr

# .data:0x121 | 0x17C69 | size: 0x3
.obj gap_04_00017C69_data, global
.hidden gap_04_00017C69_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00017C69_data

# .data:0x124 | 0x17C6C | size: 0x16
.obj regist_patakuri, local
	.ascii "PZidPddPdZdZdZPZ_dPddP"
.endobj regist_patakuri

# .data:0x13A | 0x17C82 | size: 0x2
.obj gap_04_00017C82_data, global
.hidden gap_04_00017C82_data
	.2byte 0x0000
.endobj gap_04_00017C82_data

# .data:0x13C | 0x17C84 | size: 0xC0
.obj weapon_patakuri_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
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
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x01101260
	.4byte 0x20000000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00005087
	.4byte 0x00000000
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
.endobj weapon_patakuri_attack

# .data:0x1FC | 0x17D44 | size: 0x4C
.obj parts_patakuri, local
	.4byte 0x00000001
	.4byte str_btl_un_yami_patakuri_jon_00008b58
	.4byte str_c_kuribo_y_jon_00008bd4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41B00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence_patakuri
	.4byte defence_patakuri_attr
	.4byte 0x00600809
	.4byte 0x00000000
	.4byte pose_table_patakuri
.endobj parts_patakuri

# .data:0x248 | 0x17D90 | size: 0x98
.obj pose_table_patakuri, local
	.4byte 0x00000001
	.4byte str_PTK_N_1_jon_00008be0
	.4byte 0x00000002
	.4byte str_PTK_Y_1_jon_00008be8
	.4byte 0x00000009
	.4byte str_PTK_Y_1_jon_00008be8
	.4byte 0x00000005
	.4byte str_PTK_K_1_jon_00008bf0
	.4byte 0x00000004
	.4byte str_PTK_I_1_jon_00008bf8
	.4byte 0x00000003
	.4byte str_PTK_I_1_jon_00008bf8
	.4byte 0x0000001C
	.4byte str_PTK_S_1_jon_00008c00
	.4byte 0x0000001D
	.4byte str_PTK_Q_1_jon_00008c08
	.4byte 0x0000001E
	.4byte str_PTK_Q_1_jon_00008c08
	.4byte 0x0000001F
	.4byte str_PTK_S_1_jon_00008c00
	.4byte 0x00000027
	.4byte str_PTK_D_1_jon_00008c10
	.4byte 0x00000032
	.4byte str_PTK_A_1_jon_00008c18
	.4byte 0x0000002A
	.4byte str_PTK_R_1_jon_00008c20
	.4byte 0x00000029
	.4byte str_PTK_R_2_jon_00008c28
	.4byte 0x00000028
	.4byte str_PTK_W_1_jon_00008c30
	.4byte 0x00000038
	.4byte str_PTK_I_1_jon_00008bf8
	.4byte 0x00000039
	.4byte str_PTK_I_1_jon_00008bf8
	.4byte 0x00000041
	.4byte str_PTK_T_1_jon_00008c38
	.4byte 0x00000045
	.4byte str_PTK_S_1_jon_00008c00
.endobj pose_table_patakuri

# .data:0x2E0 | 0x17E28 | size: 0x18
.obj data_table_patakuri, local
	.4byte 0x0000000E
	.4byte dmg_fall_event
	.4byte 0x00000030
	.4byte patakuri_dmg_first_attack_pos
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table_patakuri

# .data:0x2F8 | 0x17E40 | size: 0x8C
.obj pose_sound_timing_table, local
	.4byte str_PTK_S_1_jon_00008c00
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_ENM_PATAKURI_WAI_jon_00008c40
	.4byte 0x00000001
	.4byte str_PTK_W_1_jon_00008c30
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_ENM_PATAKURI_MOV_jon_00008c58
	.4byte 0x00000001
	.4byte str_PTK_R_1_jon_00008c20
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_ENM_PATAKURI_MOV_jon_00008c58
	.4byte 0x00000001
	.4byte str_PTK_K_1_jon_00008bf0
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_ENM_PATAKURI_WAI_jon_00008c40
	.4byte 0x00000001
	.4byte str_PTK_N_1_jon_00008be0
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_ENM_PATAKURI_WAI_jon_00008c40
	.4byte 0x00000001
	.4byte str_PTK_I_1_jon_00008bf8
	.4byte 0x3C23D70A
	.4byte 0x00000000
	.4byte str_SFX_ENM_PATAKURI_WAI_jon_00008c40
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
.endobj pose_sound_timing_table

# .data:0x384 | 0x17ECC | size: 0x68
.obj init_event_patakuri, local
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventWait
	.4byte 0xFFFFFFFE
	.4byte wait_event_patakuri
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventAttack
	.4byte 0xFFFFFFFE
	.4byte attack_event_patakuri
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventDamage
	.4byte 0xFFFFFFFE
	.4byte damage_event
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventConfusion
	.4byte 0xFFFFFFFE
	.4byte attack_event_patakuri
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseSoundTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_sound_timing_table
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event_patakuri

# .data:0x3EC | 0x17F34 | size: 0x1AC
.obj dmg_fall_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_OffAttribute
	.4byte 0xFE363C8A
	.4byte 0x00000004
	.4byte 0x0004005B
	.4byte btlevtcmd_OffPartsAttribute
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x00000800
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8E
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeSetPoseTable
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte pose_table
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeDataTable
	.4byte 0xFE363C8A
	.4byte data_table
	.4byte 0x0005005B
	.4byte btlevtcmd_ReplaceParts
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte parts
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_OnUnitFlag
	.4byte 0xFE363C8A
	.4byte 0x00000004
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x00000027
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_FALL1_jon_00008c70
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFE363C8A
	.4byte 0xF24A7E80
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_SetHomePos
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KURI_MOVE1_jon_00008c80
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeKind
	.4byte 0xFE363C8A
	.4byte 0x00000099
	.4byte 0x0001005E
	.4byte init_event
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x00000027
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dmg_fall_event

# .data:0x598 | 0x180E0 | size: 0x4C
.obj patakuri_dmg_first_attack_pos, local
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
.endobj patakuri_dmg_first_attack_pos

# .data:0x5E4 | 0x1812C | size: 0x61C
.obj attack_event_patakuri, local
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
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte weapon_patakuri_attack
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte weapon_patakuri_attack
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
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte weapon_patakuri_attack
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
	.4byte weapon_patakuri_attack
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000028
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000028
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8A80
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFF0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0001000A
	.4byte 0x00000064
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
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte evt_btl_camera_nomove_y_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000032
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8E80
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PATAKURI_MOV_jon_00008c94
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_patakuri_attack
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
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PATAKURI_MOV_jon_00008cac
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8E80
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00000032
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFEC
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000045
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PATAKURI_MOV_jon_00008cac
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8E80
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFF0
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte weapon_patakuri_attack
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_patakuri_attack
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte btlevtcmd_SetMoveSoundDataWork
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_PATAKURI_MOV_jon_00008c58
	.4byte str_SFX_ENM_PATAKURI_MOV_jon_00008c58
	.4byte 0x00000000
	.4byte 0x0000000F
	.4byte 0x0000000F
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002A
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A9680
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
	.4byte 0x00000000
	.4byte 0xFFFFFFF6
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event_patakuri

# .data:0xC00 | 0x18748 | size: 0x30
.obj wait_event_patakuri, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event_patakuri

# .data:0xC30 | 0x18778 | size: 0xA0
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_KUR_N_1_jon_00008cc4
	.4byte 0x00000002
	.4byte str_KUR_Y_1_jon_00008ccc
	.4byte 0x00000009
	.4byte str_KUR_Y_1_jon_00008ccc
	.4byte 0x00000005
	.4byte str_KUR_K_1_jon_00008cd4
	.4byte 0x00000004
	.4byte str_KUR_I_1_jon_00008cdc
	.4byte 0x00000003
	.4byte str_KUR_I_1_jon_00008cdc
	.4byte 0x0000001C
	.4byte str_KUR_S_1_jon_00008ce4
	.4byte 0x0000001D
	.4byte str_KUR_Q_1_jon_00008cec
	.4byte 0x0000001E
	.4byte str_KUR_Q_1_jon_00008cec
	.4byte 0x0000001F
	.4byte str_KUR_S_1_jon_00008ce4
	.4byte 0x00000027
	.4byte str_KUR_D_1_jon_00008cf4
	.4byte 0x00000032
	.4byte str_KUR_A_1_jon_00008cfc
	.4byte 0x00000033
	.4byte str_KUR_A_2_jon_00008d04
	.4byte 0x0000002A
	.4byte str_KUR_R_1_jon_00008d0c
	.4byte 0x00000029
	.4byte str_KUR_R_2_jon_00008d14
	.4byte 0x00000028
	.4byte str_KUR_W_1_jon_00008d1c
	.4byte 0x00000038
	.4byte str_KUR_I_1_jon_00008cdc
	.4byte 0x00000039
	.4byte str_KUR_I_1_jon_00008cdc
	.4byte 0x00000041
	.4byte str_KUR_T_1_jon_00008d24
	.4byte 0x00000045
	.4byte str_KUR_S_1_jon_00008ce4
.endobj pose_table

# .data:0xCD0 | 0x18818 | size: 0x10
.obj data_table, local
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0xCE0 | 0x18828 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0xCE5 | 0x1882D | size: 0x3
.obj gap_04_0001882D_data, global
.hidden gap_04_0001882D_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_0001882D_data

# .data:0xCE8 | 0x18830 | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0xCED | 0x18835 | size: 0x3
.obj gap_04_00018835_data, global
.hidden gap_04_00018835_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00018835_data

# .data:0xCF0 | 0x18838 | size: 0x16
.obj regist, local
	.ascii "PZPdPddPdZdZdZPZPdPddP"
.endobj regist

# .data:0xD06 | 0x1884E | size: 0x2
.obj gap_04_0001884E_data, global
.hidden gap_04_0001884E_data
	.2byte 0x0000
.endobj gap_04_0001884E_data

# .data:0xD08 | 0x18850 | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_yami_kuriboo_jon_00008d2c
	.4byte str_c_kuribo_y_jon_00008bd4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41B00000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte pose_table
.endobj parts

# .data:0xD54 | 0x1889C | size: 0xC0
.obj weapon_kuriboo_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
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
.endobj weapon_kuriboo_attack

# .data:0xE14 | 0x1895C | size: 0xA8
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
	.4byte 0x0007005B
	.4byte btlevtcmd_SetRunSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KURI_MOVE1_jon_00008c80
	.4byte str_SFX_ENM_KURI_MOVE2_jon_00008d40
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0007005B
	.4byte btlevtcmd_SetWalkSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KURI_MOVE1_jon_00008c80
	.4byte str_SFX_ENM_KURI_MOVE2_jon_00008d40
	.4byte 0x00000000
	.4byte 0x00000006
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_SetJumpSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KURI_JUMP1_jon_00008d54
	.4byte str_SFX_ENM_KURI_LANDING_jon_00008d68
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0xEBC | 0x18A04 | size: 0x28
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

# .data:0xEE4 | 0x18A2C | size: 0x8
.obj phase_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0xEEC | 0x18A34 | size: 0x7B0
.obj attack_event, local
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
	.4byte weapon_kuriboo_attack
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte weapon_kuriboo_attack
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
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000014
	.4byte 0xF24A7A80
	.4byte 0xF24A7CE6
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
	.4byte 0x0002005B
	.4byte btlevtcmd_WeaponAftereffect
	.4byte weapon_kuriboo_attack
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
	.4byte weapon_kuriboo_attack
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00000064
	.4byte 0x0007005B
	.4byte btlevtcmd_CalculateFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFFFFFFFF
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0x00000001
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8F
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8A80
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002B
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
	.4byte 0x0001000A
	.4byte 0x000000AA
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte evt_btl_camera_nomove_y_onoff
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPosFloat
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0x00010005
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPosFloat
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C89
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0x0006005B
	.4byte krb_get_dir
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C89
	.4byte 0xFE363C8A
	.4byte 0xFE363C88
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C88
	.4byte 0x00020034
	.4byte 0xFE363C85
	.4byte 0xFE363C89
	.4byte 0x00020034
	.4byte 0xFE363C86
	.4byte 0xFE363C8A
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x00010005
	.4byte 0x0000000C
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000032
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C8F
	.4byte 0x0000006D
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000020
	.4byte 0xFFFFFFFF
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_kuriboo_attack
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
	.4byte 0x0000005B
	.4byte 0x0000002E
	.4byte 0x00000031
	.4byte 0x00010003
	.4byte 0x0000005A
	.4byte 0x0002005B
	.4byte btlevtcmd_JumpContinue
	.4byte 0xFFFFFFFE
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000045
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C8F
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
	.4byte 0x00000014
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_MoveDirectionAdd
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0xFFFFFFFF
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00010004
	.4byte 0x0000005F
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
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KURI_ATTACK1_jon_00008d80
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte weapon_kuriboo_attack
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_kuriboo_attack
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C8F
	.4byte 0x00000045
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C8F
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
	.4byte 0x00000028
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
	.4byte 0x00000014
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
	.4byte 0x0000000A
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000006
	.4byte 0xFFFFFFFF
	.4byte 0x00010004
	.4byte 0x0000005F
	.4byte 0x00010003
	.4byte 0x0000005F
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte btlevtcmd_SetMoveSoundDataWork
	.4byte 0xFFFFFFFE
	.4byte str_SFX_ENM_KURI_MOVE1_jon_00008c80
	.4byte str_SFX_ENM_KURI_MOVE2_jon_00008d40
	.4byte 0x00000000
	.4byte 0x00000003
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000029
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8E80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_ResetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x169C | 0x191E4 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x16B4 | 0x191FC | size: 0x4
.obj gap_04_000191FC_data, global
.hidden gap_04_000191FC_data
	.4byte 0x00000000
.endobj gap_04_000191FC_data
