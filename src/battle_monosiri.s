.include "macros.inc"
.file "battle_monosiri.o"

# 0x8012ED2C..0x8012EF34 | size: 0x208
.text
.balign 4

# .text:0x0 | 0x8012ED2C | size: 0x110
.fn battleSetUnitMonosiriFlag, global
/* 8012ED2C 0012BD2C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8012ED30 0012BD30  7C 08 02 A6 */	mflr r0
/* 8012ED34 0012BD34  3C 80 80 37 */	lis r4, battle_monosiri_same_tbl@ha
/* 8012ED38 0012BD38  90 01 00 24 */	stw r0, 0x24(r1)
/* 8012ED3C 0012BD3C  38 A4 E7 58 */	addi r5, r4, battle_monosiri_same_tbl@l
/* 8012ED40 0012BD40  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 8012ED44 0012BD44  7C 7B 1B 78 */	mr r27, r3
/* 8012ED48 0012BD48  38 60 00 00 */	li r3, 0x0
/* 8012ED4C 0012BD4C  83 ED 1C 70 */	lwz r31, _battleWorkPointer@sda21(r0)
.L_8012ED50:
/* 8012ED50 0012BD50  7F C5 18 2E */	lwzx r30, r5, r3
/* 8012ED54 0012BD54  28 1E 00 00 */	cmplwi r30, 0x0
/* 8012ED58 0012BD58  41 82 00 8C */	beq .L_8012EDE4
/* 8012ED5C 0012BD5C  38 80 00 00 */	li r4, 0x0
/* 8012ED60 0012BD60  48 00 00 70 */	b .L_8012EDD0
.L_8012ED64:
/* 8012ED64 0012BD64  7C 1B 00 00 */	cmpw r27, r0
/* 8012ED68 0012BD68  40 82 00 64 */	bne .L_8012EDCC
/* 8012ED6C 0012BD6C  3B A0 00 00 */	li r29, 0x0
/* 8012ED70 0012BD70  3B 80 00 01 */	li r28, 0x1
/* 8012ED74 0012BD74  48 00 00 48 */	b .L_8012EDBC
.L_8012ED78:
/* 8012ED78 0012BD78  38 7B 11 7A */	addi r3, r27, 0x117a
/* 8012ED7C 0012BD7C  4B F5 6B 81 */	bl swSet
/* 8012ED80 0012BD80  7F 63 2E 70 */	srawi r3, r27, 5
/* 8012ED84 0012BD84  57 60 D8 08 */	slwi r0, r27, 27
/* 8012ED88 0012BD88  7C 83 01 94 */	addze r4, r3
/* 8012ED8C 0012BD8C  3B BD 00 04 */	addi r29, r29, 0x4
/* 8012ED90 0012BD90  57 63 0F FE */	srwi r3, r27, 31
/* 8012ED94 0012BD94  54 84 10 3A */	slwi r4, r4, 2
/* 8012ED98 0012BD98  3C A4 00 01 */	addis r5, r4, 0x1
/* 8012ED9C 0012BD9C  7C 03 00 50 */	subf r0, r3, r0
/* 8012EDA0 0012BDA0  54 00 28 3E */	rotlwi r0, r0, 5
/* 8012EDA4 0012BDA4  38 A5 63 D4 */	addi r5, r5, 0x63d4
/* 8012EDA8 0012BDA8  7C 00 1A 14 */	add r0, r0, r3
/* 8012EDAC 0012BDAC  7C 9F 28 2E */	lwzx r4, r31, r5
/* 8012EDB0 0012BDB0  7F 80 00 30 */	slw r0, r28, r0
/* 8012EDB4 0012BDB4  7C 80 03 78 */	or r0, r4, r0
/* 8012EDB8 0012BDB8  7C 1F 29 2E */	stwx r0, r31, r5
.L_8012EDBC:
/* 8012EDBC 0012BDBC  7F 7E E8 2E */	lwzx r27, r30, r29
/* 8012EDC0 0012BDC0  2C 1B 00 00 */	cmpwi r27, 0x0
/* 8012EDC4 0012BDC4  40 82 FF B4 */	bne .L_8012ED78
/* 8012EDC8 0012BDC8  48 00 00 60 */	b .L_8012EE28
.L_8012EDCC:
/* 8012EDCC 0012BDCC  38 84 00 04 */	addi r4, r4, 0x4
.L_8012EDD0:
/* 8012EDD0 0012BDD0  7C 1E 20 2E */	lwzx r0, r30, r4
/* 8012EDD4 0012BDD4  2C 00 00 00 */	cmpwi r0, 0x0
/* 8012EDD8 0012BDD8  40 82 FF 8C */	bne .L_8012ED64
/* 8012EDDC 0012BDDC  38 63 00 04 */	addi r3, r3, 0x4
/* 8012EDE0 0012BDE0  4B FF FF 70 */	b .L_8012ED50
.L_8012EDE4:
/* 8012EDE4 0012BDE4  38 7B 11 7A */	addi r3, r27, 0x117a
/* 8012EDE8 0012BDE8  4B F5 6B 15 */	bl swSet
/* 8012EDEC 0012BDEC  7F 63 2E 70 */	srawi r3, r27, 5
/* 8012EDF0 0012BDF0  57 60 D8 08 */	slwi r0, r27, 27
/* 8012EDF4 0012BDF4  7C 83 01 94 */	addze r4, r3
/* 8012EDF8 0012BDF8  57 63 0F FE */	srwi r3, r27, 31
/* 8012EDFC 0012BDFC  7C 03 00 50 */	subf r0, r3, r0
/* 8012EE00 0012BE00  3C DF 00 01 */	addis r6, r31, 0x1
/* 8012EE04 0012BE04  54 85 10 3A */	slwi r5, r4, 2
/* 8012EE08 0012BE08  38 80 00 01 */	li r4, 0x1
/* 8012EE0C 0012BE0C  7C A6 2A 14 */	add r5, r6, r5
/* 8012EE10 0012BE10  54 00 28 3E */	rotlwi r0, r0, 5
/* 8012EE14 0012BE14  7C 00 1A 14 */	add r0, r0, r3
/* 8012EE18 0012BE18  80 65 63 D4 */	lwz r3, 0x63d4(r5)
/* 8012EE1C 0012BE1C  7C 80 00 30 */	slw r0, r4, r0
/* 8012EE20 0012BE20  7C 60 03 78 */	or r0, r3, r0
/* 8012EE24 0012BE24  90 05 63 D4 */	stw r0, 0x63d4(r5)
.L_8012EE28:
/* 8012EE28 0012BE28  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 8012EE2C 0012BE2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8012EE30 0012BE30  7C 08 03 A6 */	mtlr r0
/* 8012EE34 0012BE34  38 21 00 20 */	addi r1, r1, 0x20
/* 8012EE38 0012BE38  4E 80 00 20 */	blr
.endfn battleSetUnitMonosiriFlag

# .text:0x110 | 0x8012EE3C | size: 0xE4
.fn battleCheckUnitMonosiriFlag, global
/* 8012EE3C 0012BE3C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8012EE40 0012BE40  7C 08 02 A6 */	mflr r0
/* 8012EE44 0012BE44  90 01 00 24 */	stw r0, 0x24(r1)
/* 8012EE48 0012BE48  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 8012EE4C 0012BE4C  7C 7F 1B 78 */	mr r31, r3
/* 8012EE50 0012BE50  83 CD 1C 70 */	lwz r30, _battleWorkPointer@sda21(r0)
/* 8012EE54 0012BE54  83 A3 00 08 */	lwz r29, 0x8(r3)
/* 8012EE58 0012BE58  3C 7E 00 01 */	addis r3, r30, 0x1
/* 8012EE5C 0012BE5C  80 03 63 F4 */	lwz r0, 0x63f4(r3)
/* 8012EE60 0012BE60  54 00 07 BD */	rlwinm. r0, r0, 0, 30, 30
/* 8012EE64 0012BE64  41 82 00 0C */	beq .L_8012EE70
/* 8012EE68 0012BE68  38 60 00 01 */	li r3, 0x1
/* 8012EE6C 0012BE6C  48 00 00 A0 */	b .L_8012EF0C
.L_8012EE70:
/* 8012EE70 0012BE70  38 7D 11 7A */	addi r3, r29, 0x117a
/* 8012EE74 0012BE74  4B F5 6A 41 */	bl swGet
/* 8012EE78 0012BE78  80 1F 00 1C */	lwz r0, 0x1c(r31)
/* 8012EE7C 0012BE7C  7F A4 2E 70 */	srawi r4, r29, 5
/* 8012EE80 0012BE80  7C C4 01 94 */	addze r6, r4
/* 8012EE84 0012BE84  57 A5 0F FE */	srwi r5, r29, 31
/* 8012EE88 0012BE88  57 A4 D8 08 */	slwi r4, r29, 27
/* 8012EE8C 0012BE8C  54 00 07 7B */	rlwinm. r0, r0, 0, 29, 29
/* 8012EE90 0012BE90  54 C7 10 3A */	slwi r7, r6, 2
/* 8012EE94 0012BE94  3D 1E 00 01 */	addis r8, r30, 0x1
/* 8012EE98 0012BE98  7C 85 20 50 */	subf r4, r5, r4
/* 8012EE9C 0012BE9C  38 C0 00 01 */	li r6, 0x1
/* 8012EEA0 0012BEA0  54 80 28 3E */	rotlwi r0, r4, 5
/* 8012EEA4 0012BEA4  7C E8 3A 14 */	add r7, r8, r7
/* 8012EEA8 0012BEA8  7C 00 2A 14 */	add r0, r0, r5
/* 8012EEAC 0012BEAC  80 87 63 D4 */	lwz r4, 0x63d4(r7)
/* 8012EEB0 0012BEB0  7C C0 00 30 */	slw r0, r6, r0
/* 8012EEB4 0012BEB4  7C 80 00 38 */	and r0, r4, r0
/* 8012EEB8 0012BEB8  7C 67 03 78 */	or r7, r3, r0
/* 8012EEBC 0012BEBC  41 82 00 3C */	beq .L_8012EEF8
/* 8012EEC0 0012BEC0  80 BF 00 04 */	lwz r5, 0x4(r31)
/* 8012EEC4 0012BEC4  7C A3 2E 70 */	srawi r3, r5, 5
/* 8012EEC8 0012BEC8  54 A0 D8 08 */	slwi r0, r5, 27
/* 8012EECC 0012BECC  7C 83 01 94 */	addze r4, r3
/* 8012EED0 0012BED0  54 A3 0F FE */	srwi r3, r5, 31
/* 8012EED4 0012BED4  54 84 10 3A */	slwi r4, r4, 2
/* 8012EED8 0012BED8  7C 03 00 50 */	subf r0, r3, r0
/* 8012EEDC 0012BEDC  7C 88 22 14 */	add r4, r8, r4
/* 8012EEE0 0012BEE0  54 00 28 3E */	rotlwi r0, r0, 5
/* 8012EEE4 0012BEE4  80 84 63 D4 */	lwz r4, 0x63d4(r4)
/* 8012EEE8 0012BEE8  7C 00 1A 14 */	add r0, r0, r3
/* 8012EEEC 0012BEEC  7C C0 00 30 */	slw r0, r6, r0
/* 8012EEF0 0012BEF0  7C 80 00 38 */	and r0, r4, r0
/* 8012EEF4 0012BEF4  7C E7 03 78 */	or r7, r7, r0
.L_8012EEF8:
/* 8012EEF8 0012BEF8  2C 07 00 00 */	cmpwi r7, 0x0
/* 8012EEFC 0012BEFC  41 82 00 0C */	beq .L_8012EF08
/* 8012EF00 0012BF00  38 60 00 01 */	li r3, 0x1
/* 8012EF04 0012BF04  48 00 00 08 */	b .L_8012EF0C
.L_8012EF08:
/* 8012EF08 0012BF08  38 60 00 00 */	li r3, 0x0
.L_8012EF0C:
/* 8012EF0C 0012BF0C  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 8012EF10 0012BF10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8012EF14 0012BF14  7C 08 03 A6 */	mtlr r0
/* 8012EF18 0012BF18  38 21 00 20 */	addi r1, r1, 0x20
/* 8012EF1C 0012BF1C  4E 80 00 20 */	blr
.endfn battleCheckUnitMonosiriFlag

# .text:0x1F4 | 0x8012EF20 | size: 0x14
.fn battleGetUnitMonosiriPtr, global
/* 8012EF20 0012BF20  1C 83 00 18 */	mulli r4, r3, 0x18
/* 8012EF24 0012BF24  3C 60 80 37 */	lis r3, monosiriMessageTable@ha
/* 8012EF28 0012BF28  38 03 CF 40 */	addi r0, r3, monosiriMessageTable@l
/* 8012EF2C 0012BF2C  7C 60 22 14 */	add r3, r0, r4
/* 8012EF30 0012BF30  4E 80 00 20 */	blr
.endfn battleGetUnitMonosiriPtr

# 0x802F0758..0x802F35D0 | size: 0x2E78
.rodata
.balign 8

# .rodata:0x0 | 0x802F0758 | size: 0xF
.obj str_btl_un_kuriboo_802f0758, global
	.string "btl_un_kuriboo"
.endobj str_btl_un_kuriboo_802f0758
	.byte 0x00

# .rodata:0x10 | 0x802F0768 | size: 0x10
.obj str_btl_hlp_kuriboo_802f0768, global
	.string "btl_hlp_kuriboo"
.endobj str_btl_hlp_kuriboo_802f0768

# .rodata:0x20 | 0x802F0778 | size: 0xF
.obj str_menu_enemy_001_802f0778, global
	.string "menu_enemy_001"
.endobj str_menu_enemy_001_802f0778
	.byte 0x00

# .rodata:0x30 | 0x802F0788 | size: 0x9
.obj str_c_kuribo_802f0788, global
	.string "c_kuribo"
.endobj str_c_kuribo_802f0788
	.byte 0x00, 0x00, 0x00

# .rodata:0x3C | 0x802F0794 | size: 0x8
.obj str_KUR_Z_2_802f0794, global
	.string "KUR_Z_2"
.endobj str_KUR_Z_2_802f0794

# .rodata:0x44 | 0x802F079C | size: 0x13
.obj str_menu_monosiri_nara_802f079c, global
	.string "menu_monosiri_nara"
.endobj str_menu_monosiri_nara_802f079c
	.byte 0x00

# .rodata:0x58 | 0x802F07B0 | size: 0x10
.obj str_btl_un_patakuri_802f07b0, global
	.string "btl_un_patakuri"
.endobj str_btl_un_patakuri_802f07b0

# .rodata:0x68 | 0x802F07C0 | size: 0x11
.obj str_btl_hlp_patakuri_802f07c0, global
	.string "btl_hlp_patakuri"
.endobj str_btl_hlp_patakuri_802f07c0
	.byte 0x00, 0x00, 0x00

# .rodata:0x7C | 0x802F07D4 | size: 0xF
.obj str_menu_enemy_003_802f07d4, global
	.string "menu_enemy_003"
.endobj str_menu_enemy_003_802f07d4
	.byte 0x00

# .rodata:0x8C | 0x802F07E4 | size: 0x8
.obj str_PTK_Z_2_802f07e4, global
	.string "PTK_Z_2"
.endobj str_PTK_Z_2_802f07e4

# .rodata:0x94 | 0x802F07EC | size: 0x10
.obj str_btl_un_togekuri_802f07ec, global
	.string "btl_un_togekuri"
.endobj str_btl_un_togekuri_802f07ec

# .rodata:0xA4 | 0x802F07FC | size: 0x11
.obj str_btl_hlp_togekuri_802f07fc, global
	.string "btl_hlp_togekuri"
.endobj str_btl_hlp_togekuri_802f07fc
	.byte 0x00, 0x00, 0x00

# .rodata:0xB8 | 0x802F0810 | size: 0xF
.obj str_menu_enemy_002_802f0810, global
	.string "menu_enemy_002"
.endobj str_menu_enemy_002_802f0810
	.byte 0x00

# .rodata:0xC8 | 0x802F0820 | size: 0x8
.obj str_TGK_Z_2_802f0820, global
	.string "TGK_Z_2"
.endobj str_TGK_Z_2_802f0820

# .rodata:0xD0 | 0x802F0828 | size: 0xE
.obj str_btl_un_hinnya_802f0828, global
	.string "btl_un_hinnya"
.endobj str_btl_un_hinnya_802f0828
	.2byte 0x0000

# .rodata:0xE0 | 0x802F0838 | size: 0xF
.obj str_btl_hlp_hinnya_802f0838, global
	.string "btl_hlp_hinnya"
.endobj str_btl_hlp_hinnya_802f0838
	.byte 0x00

# .rodata:0xF0 | 0x802F0848 | size: 0xF
.obj str_menu_enemy_020_802f0848, global
	.string "menu_enemy_020"
.endobj str_menu_enemy_020_802f0848
	.byte 0x00

# .rodata:0x100 | 0x802F0858 | size: 0xB
.obj str_c_hannya_n_802f0858, global
	.string "c_hannya_n"
.endobj str_c_hannya_n_802f0858
	.byte 0x00

# .rodata:0x10C | 0x802F0864 | size: 0x12
.obj str_menu_monosiri_tik_802f0864, global
	.string "menu_monosiri_tik"
.endobj str_menu_monosiri_tik_802f0864
	.2byte 0x0000

# .rodata:0x120 | 0x802F0878 | size: 0xE
.obj str_btl_un_hannya_802f0878, global
	.string "btl_un_hannya"
.endobj str_btl_un_hannya_802f0878
	.2byte 0x0000

# .rodata:0x130 | 0x802F0888 | size: 0xF
.obj str_btl_hlp_hannya_802f0888, global
	.string "btl_hlp_hannya"
.endobj str_btl_hlp_hannya_802f0888
	.byte 0x00

# .rodata:0x140 | 0x802F0898 | size: 0xF
.obj str_menu_enemy_021_802f0898, global
	.string "menu_enemy_021"
.endobj str_menu_enemy_021_802f0898
	.byte 0x00

# .rodata:0x150 | 0x802F08A8 | size: 0x9
.obj str_c_hannya_802f08a8, global
	.string "c_hannya"
.endobj str_c_hannya_802f08a8
	.byte 0x00, 0x00, 0x00

# .rodata:0x15C | 0x802F08B4 | size: 0xE
.obj str_btl_un_kanbu1_802f08b4, global
	.string "btl_un_kanbu1"
.endobj str_btl_un_kanbu1_802f08b4
	.2byte 0x0000

# .rodata:0x16C | 0x802F08C4 | size: 0xF
.obj str_btl_hlp_kanbu1_802f08c4, global
	.string "btl_hlp_kanbu1"
.endobj str_btl_hlp_kanbu1_802f08c4
	.byte 0x00

# .rodata:0x17C | 0x802F08D4 | size: 0x8
.obj str_c_kanbu_802f08d4, global
	.string "c_kanbu"
.endobj str_c_kanbu_802f08d4

# .rodata:0x184 | 0x802F08DC | size: 0xE
.obj str_btl_un_monban_802f08dc, global
	.string "btl_un_monban"
.endobj str_btl_un_monban_802f08dc
	.2byte 0x0000

# .rodata:0x194 | 0x802F08EC | size: 0xF
.obj str_btl_hlp_monban_802f08ec, global
	.string "btl_hlp_monban"
.endobj str_btl_hlp_monban_802f08ec
	.byte 0x00

# .rodata:0x1A4 | 0x802F08FC | size: 0xF
.obj str_menu_enemy_103_802f08fc, global
	.string "menu_enemy_103"
.endobj str_menu_enemy_103_802f08fc
	.byte 0x00

# .rodata:0x1B4 | 0x802F090C | size: 0x9
.obj str_c_monban_802f090c, global
	.string "c_monban"
.endobj str_c_monban_802f090c
	.byte 0x00, 0x00, 0x00

# .rodata:0x1C0 | 0x802F0918 | size: 0x12
.obj str_menu_monosiri_gor_802f0918, global
	.string "menu_monosiri_gor"
.endobj str_menu_monosiri_gor_802f0918
	.2byte 0x0000

# .rodata:0x1D4 | 0x802F092C | size: 0xD
.obj str_btl_un_gesso_802f092c, global
	.string "btl_un_gesso"
.endobj str_btl_un_gesso_802f092c
	.byte 0x00, 0x00, 0x00

# .rodata:0x1E4 | 0x802F093C | size: 0xE
.obj str_btl_hlp_gesso_802f093c, global
	.string "btl_hlp_gesso"
.endobj str_btl_hlp_gesso_802f093c
	.2byte 0x0000

# .rodata:0x1F4 | 0x802F094C | size: 0xF
.obj str_menu_enemy_114_802f094c, global
	.string "menu_enemy_114"
.endobj str_menu_enemy_114_802f094c
	.byte 0x00

# .rodata:0x204 | 0x802F095C | size: 0x8
.obj str_c_gesso_802f095c, global
	.string "c_gesso"
.endobj str_c_gesso_802f095c

# .rodata:0x20C | 0x802F0964 | size: 0x9
.obj str_GSO_Z2_1_802f0964, global
	.string "GSO_Z2_1"
.endobj str_GSO_Z2_1_802f0964
	.byte 0x00, 0x00, 0x00

# .rodata:0x218 | 0x802F0970 | size: 0x16
.obj str_btl_un_gesso_left_ar_802f0970, global
	.string "btl_un_gesso_left_arm"
.endobj str_btl_un_gesso_left_ar_802f0970
	.2byte 0x0000

# .rodata:0x230 | 0x802F0988 | size: 0x9
.obj str_c_gesso3_802f0988, global
	.string "c_gesso3"
.endobj str_c_gesso3_802f0988
	.byte 0x00, 0x00, 0x00

# .rodata:0x23C | 0x802F0994 | size: 0x9
.obj str_GSO_Z1_1_802f0994, global
	.string "GSO_Z1_1"
.endobj str_GSO_Z1_1_802f0994
	.byte 0x00, 0x00, 0x00

# .rodata:0x248 | 0x802F09A0 | size: 0x17
.obj str_btl_un_gesso_right_a_802f09a0, global
	.string "btl_un_gesso_right_arm"
.endobj str_btl_un_gesso_right_a_802f09a0
	.byte 0x00

# .rodata:0x260 | 0x802F09B8 | size: 0x9
.obj str_c_gesso2_802f09b8, global
	.string "c_gesso2"
.endobj str_c_gesso2_802f09b8
	.byte 0x00, 0x00, 0x00

# .rodata:0x26C | 0x802F09C4 | size: 0x10
.obj str_btl_un_togenoko_802f09c4, global
	.string "btl_un_togenoko"
.endobj str_btl_un_togenoko_802f09c4

# .rodata:0x27C | 0x802F09D4 | size: 0x11
.obj str_btl_hlp_togenoko_802f09d4, global
	.string "btl_hlp_togenoko"
.endobj str_btl_hlp_togenoko_802f09d4
	.byte 0x00, 0x00, 0x00

# .rodata:0x290 | 0x802F09E8 | size: 0xF
.obj str_menu_enemy_033_802f09e8, global
	.string "menu_enemy_033"
.endobj str_menu_enemy_033_802f09e8
	.byte 0x00

# .rodata:0x2A0 | 0x802F09F8 | size: 0xB
.obj str_c_togenoko_802f09f8, global
	.string "c_togenoko"
.endobj str_c_togenoko_802f09f8
	.byte 0x00

# .rodata:0x2AC | 0x802F0A04 | size: 0xD
.obj str_btl_un_kamec_802f0a04, global
	.string "btl_un_kamec"
.endobj str_btl_un_kamec_802f0a04
	.byte 0x00, 0x00, 0x00

# .rodata:0x2BC | 0x802F0A14 | size: 0xE
.obj str_btl_hlp_kamec_802f0a14, global
	.string "btl_hlp_kamec"
.endobj str_btl_hlp_kamec_802f0a14
	.2byte 0x0000

# .rodata:0x2CC | 0x802F0A24 | size: 0xF
.obj str_menu_enemy_086_802f0a24, global
	.string "menu_enemy_086"
.endobj str_menu_enemy_086_802f0a24
	.byte 0x00

# .rodata:0x2DC | 0x802F0A34 | size: 0x8
.obj str_c_kamek_802f0a34, global
	.string "c_kamek"
.endobj str_c_kamek_802f0a34

# .rodata:0x2E4 | 0x802F0A3C | size: 0x8
.obj str_KMK_Z_1_802f0a3c, global
	.string "KMK_Z_1"
.endobj str_KMK_Z_1_802f0a3c

# .rodata:0x2EC | 0x802F0A44 | size: 0x14
.obj str_btl_un_kamec_bunsin_802f0a44, global
	.string "btl_un_kamec_bunsin"
.endobj str_btl_un_kamec_bunsin_802f0a44

# .rodata:0x300 | 0x802F0A58 | size: 0x16
.obj str_btl_hlp_kamec_bunshi_802f0a58, global
	.string "btl_hlp_kamec_bunshin"
.endobj str_btl_hlp_kamec_bunshi_802f0a58
	.2byte 0x0000

# .rodata:0x318 | 0x802F0A70 | size: 0x10
.obj str_btl_un_nokonoko_802f0a70, global
	.string "btl_un_nokonoko"
.endobj str_btl_un_nokonoko_802f0a70

# .rodata:0x328 | 0x802F0A80 | size: 0x11
.obj str_btl_hlp_nokonoko_802f0a80, global
	.string "btl_hlp_nokonoko"
.endobj str_btl_hlp_nokonoko_802f0a80
	.byte 0x00, 0x00, 0x00

# .rodata:0x33C | 0x802F0A94 | size: 0xF
.obj str_menu_enemy_004_802f0a94, global
	.string "menu_enemy_004"
.endobj str_menu_enemy_004_802f0a94
	.byte 0x00

# .rodata:0x34C | 0x802F0AA4 | size: 0xB
.obj str_c_nokoteki_802f0aa4, global
	.string "c_nokoteki"
.endobj str_c_nokoteki_802f0aa4
	.byte 0x00

# .rodata:0x358 | 0x802F0AB0 | size: 0x8
.obj str_NKT_Z_1_802f0ab0, global
	.string "NKT_Z_1"
.endobj str_NKT_Z_1_802f0ab0

# .rodata:0x360 | 0x802F0AB8 | size: 0x12
.obj str_menu_monosiri_hei_802f0ab8, global
	.string "menu_monosiri_hei"
.endobj str_menu_monosiri_hei_802f0ab8
	.2byte 0x0000

# .rodata:0x374 | 0x802F0ACC | size: 0x10
.obj str_btl_un_patapata_802f0acc, global
	.string "btl_un_patapata"
.endobj str_btl_un_patapata_802f0acc

# .rodata:0x384 | 0x802F0ADC | size: 0x11
.obj str_btl_hlp_patapata_802f0adc, global
	.string "btl_hlp_patapata"
.endobj str_btl_hlp_patapata_802f0adc
	.byte 0x00, 0x00, 0x00

# .rodata:0x398 | 0x802F0AF0 | size: 0xF
.obj str_menu_enemy_005_802f0af0, global
	.string "menu_enemy_005"
.endobj str_menu_enemy_005_802f0af0
	.byte 0x00

# .rodata:0x3A8 | 0x802F0B00 | size: 0x8
.obj str_PTP_Z_1_802f0b00, global
	.string "PTP_Z_1"
.endobj str_PTP_Z_1_802f0b00

# .rodata:0x3B0 | 0x802F0B08 | size: 0x12
.obj str_menu_monosiri_gon_802f0b08, global
	.string "menu_monosiri_gon"
.endobj str_menu_monosiri_gon_802f0b08
	.2byte 0x0000

# .rodata:0x3C4 | 0x802F0B1C | size: 0x10
.obj str_btl_un_chorobon_802f0b1c, global
	.string "btl_un_chorobon"
.endobj str_btl_un_chorobon_802f0b1c

# .rodata:0x3D4 | 0x802F0B2C | size: 0x11
.obj str_btl_hlp_chorobon_802f0b2c, global
	.string "btl_hlp_chorobon"
.endobj str_btl_hlp_chorobon_802f0b2c
	.byte 0x00, 0x00, 0x00

# .rodata:0x3E8 | 0x802F0B40 | size: 0xF
.obj str_menu_enemy_006_802f0b40, global
	.string "menu_enemy_006"
.endobj str_menu_enemy_006_802f0b40
	.byte 0x00

# .rodata:0x3F8 | 0x802F0B50 | size: 0xB
.obj str_c_chorobon_802f0b50, global
	.string "c_chorobon"
.endobj str_c_chorobon_802f0b50
	.byte 0x00

# .rodata:0x404 | 0x802F0B5C | size: 0x8
.obj str_CBN_Z_1_802f0b5c, global
	.string "CBN_Z_1"
.endobj str_CBN_Z_1_802f0b5c

# .rodata:0x40C | 0x802F0B64 | size: 0x12
.obj str_menu_monosiri_stn_802f0b64, global
	.string "menu_monosiri_stn"
.endobj str_menu_monosiri_stn_802f0b64
	.2byte 0x0000

# .rodata:0x420 | 0x802F0B78 | size: 0x10
.obj str_btl_un_honenoko_802f0b78, global
	.string "btl_un_honenoko"
.endobj str_btl_un_honenoko_802f0b78

# .rodata:0x430 | 0x802F0B88 | size: 0x11
.obj str_btl_hlp_honenoko_802f0b88, global
	.string "btl_hlp_honenoko"
.endobj str_btl_hlp_honenoko_802f0b88
	.byte 0x00, 0x00, 0x00

# .rodata:0x444 | 0x802F0B9C | size: 0xF
.obj str_menu_enemy_007_802f0b9c, global
	.string "menu_enemy_007"
.endobj str_menu_enemy_007_802f0b9c
	.byte 0x00

# .rodata:0x454 | 0x802F0BAC | size: 0xC
.obj str_c_karon_g_h_802f0bac, global
	.string "c_karon_g_h"
.endobj str_c_karon_g_h_802f0bac

# .rodata:0x460 | 0x802F0BB8 | size: 0x8
.obj str_KRN_Z_1_802f0bb8, global
	.string "KRN_Z_1"
.endobj str_KRN_Z_1_802f0bb8

# .rodata:0x468 | 0x802F0BC0 | size: 0x11
.obj str_btl_un_sinnosuke_802f0bc0, global
	.string "btl_un_sinnosuke"
.endobj str_btl_un_sinnosuke_802f0bc0
	.byte 0x00, 0x00, 0x00

# .rodata:0x47C | 0x802F0BD4 | size: 0x12
.obj str_btl_hlp_sinnosuke_802f0bd4, global
	.string "btl_hlp_sinnosuke"
.endobj str_btl_hlp_sinnosuke_802f0bd4
	.2byte 0x0000

# .rodata:0x490 | 0x802F0BE8 | size: 0xF
.obj str_menu_enemy_008_802f0be8, global
	.string "menu_enemy_008"
.endobj str_menu_enemy_008_802f0be8
	.byte 0x00

# .rodata:0x4A0 | 0x802F0BF8 | size: 0xC
.obj str_c_sinnosuke_802f0bf8, global
	.string "c_sinnosuke"
.endobj str_c_sinnosuke_802f0bf8

# .rodata:0x4AC | 0x802F0C04 | size: 0x8
.obj str_SIS_Z_1_802f0c04, global
	.string "SIS_Z_1"
.endobj str_SIS_Z_1_802f0c04

# .rodata:0x4B4 | 0x802F0C0C | size: 0x12
.obj str_btl_un_togedaruma_802f0c0c, global
	.string "btl_un_togedaruma"
.endobj str_btl_un_togedaruma_802f0c0c
	.2byte 0x0000

# .rodata:0x4C8 | 0x802F0C20 | size: 0x13
.obj str_btl_hlp_togedaruma_802f0c20, global
	.string "btl_hlp_togedaruma"
.endobj str_btl_hlp_togedaruma_802f0c20
	.byte 0x00

# .rodata:0x4DC | 0x802F0C34 | size: 0xF
.obj str_menu_enemy_009_802f0c34, global
	.string "menu_enemy_009"
.endobj str_menu_enemy_009_802f0c34
	.byte 0x00

# .rodata:0x4EC | 0x802F0C44 | size: 0xD
.obj str_c_togedaruma_802f0c44, global
	.string "c_togedaruma"
.endobj str_c_togedaruma_802f0c44
	.byte 0x00, 0x00, 0x00

# .rodata:0x4FC | 0x802F0C54 | size: 0x8
.obj str_TGD_Z_1_802f0c54, global
	.string "TGD_Z_1"
.endobj str_TGD_Z_1_802f0c54

# .rodata:0x504 | 0x802F0C5C | size: 0x15
.obj str_btl_un_gold_chorobon_802f0c5c, global
	.string "btl_un_gold_chorobon"
.endobj str_btl_un_gold_chorobon_802f0c5c
	.byte 0x00, 0x00, 0x00

# .rodata:0x51C | 0x802F0C74 | size: 0x16
.obj str_btl_hlp_gold_chorobo_802f0c74, global
	.string "btl_hlp_gold_chorobon"
.endobj str_btl_hlp_gold_chorobo_802f0c74
	.2byte 0x0000

# .rodata:0x534 | 0x802F0C8C | size: 0xF
.obj str_menu_enemy_010_802f0c8c, global
	.string "menu_enemy_010"
.endobj str_menu_enemy_010_802f0c8c
	.byte 0x00

# .rodata:0x544 | 0x802F0C9C | size: 0xD
.obj str_c_chorobon_k_802f0c9c, global
	.string "c_chorobon_k"
.endobj str_c_chorobon_k_802f0c9c
	.byte 0x00, 0x00, 0x00

# .rodata:0x554 | 0x802F0CAC | size: 0x17
.obj str_btl_un_chorobon_gund_802f0cac, global
	.string "btl_un_chorobon_gundan"
.endobj str_btl_un_chorobon_gund_802f0cac
	.byte 0x00

# .rodata:0x56C | 0x802F0CC4 | size: 0x18
.obj str_btl_hlp_chorobon_gun_802f0cc4, global
	.string "btl_hlp_chorobon_gundan"
.endobj str_btl_hlp_chorobon_gun_802f0cc4

# .rodata:0x584 | 0x802F0CDC | size: 0x14
.obj str_btl_un_red_honenoko_802f0cdc, global
	.string "btl_un_red_honenoko"
.endobj str_btl_un_red_honenoko_802f0cdc

# .rodata:0x598 | 0x802F0CF0 | size: 0x15
.obj str_btl_hlp_red_honenoko_802f0cf0, global
	.string "btl_hlp_red_honenoko"
.endobj str_btl_hlp_red_honenoko_802f0cf0
	.byte 0x00, 0x00, 0x00

# .rodata:0x5B0 | 0x802F0D08 | size: 0xF
.obj str_menu_enemy_012_802f0d08, global
	.string "menu_enemy_012"
.endobj str_menu_enemy_012_802f0d08
	.byte 0x00

# .rodata:0x5C0 | 0x802F0D18 | size: 0xC
.obj str_c_karon_r_h_802f0d18, global
	.string "c_karon_r_h"
.endobj str_c_karon_r_h_802f0d18

# .rodata:0x5CC | 0x802F0D24 | size: 0xF
.obj str_btl_un_gonbaba_802f0d24, global
	.string "btl_un_gonbaba"
.endobj str_btl_un_gonbaba_802f0d24
	.byte 0x00

# .rodata:0x5DC | 0x802F0D34 | size: 0x10
.obj str_btl_hlp_gonbaba_802f0d34, global
	.string "btl_hlp_gonbaba"
.endobj str_btl_hlp_gonbaba_802f0d34

# .rodata:0x5EC | 0x802F0D44 | size: 0xF
.obj str_menu_enemy_117_802f0d44, global
	.string "menu_enemy_117"
.endobj str_menu_enemy_117_802f0d44
	.byte 0x00

# .rodata:0x5FC | 0x802F0D54 | size: 0xA
.obj str_c_gonbaba_802f0d54, global
	.string "c_gonbaba"
.endobj str_c_gonbaba_802f0d54
	.2byte 0x0000

# .rodata:0x608 | 0x802F0D60 | size: 0x8
.obj str_GNB_Z_1_802f0d60, global
	.string "GNB_Z_1"
.endobj str_GNB_Z_1_802f0d60

# .rodata:0x610 | 0x802F0D68 | size: 0x1D
.obj str_btl_un_monochrome_ku_802f0d68, global
	.string "btl_un_monochrome_kurokumorn"
.endobj str_btl_un_monochrome_ku_802f0d68
	.byte 0x00, 0x00, 0x00

# .rodata:0x630 | 0x802F0D88 | size: 0x1E
.obj str_btl_hlp_monochrome_k_802f0d88, global
	.string "btl_hlp_monochrome_kurokumorn"
.endobj str_btl_hlp_monochrome_k_802f0d88
	.2byte 0x0000

# .rodata:0x650 | 0x802F0DA8 | size: 0xF
.obj str_menu_enemy_172_802f0da8, global
	.string "menu_enemy_172"
.endobj str_menu_enemy_172_802f0da8
	.byte 0x00

# .rodata:0x660 | 0x802F0DB8 | size: 0xB
.obj str_c_kmoon_wb_802f0db8, global
	.string "c_kmoon_wb"
.endobj str_c_kmoon_wb_802f0db8
	.byte 0x00

# .rodata:0x66C | 0x802F0DC4 | size: 0x12
.obj str_menu_monosiri_win_802f0dc4, global
	.string "menu_monosiri_win"
.endobj str_menu_monosiri_win_802f0dc4
	.2byte 0x0000

# .rodata:0x680 | 0x802F0DD8 | size: 0x19
.obj str_btl_un_monochrome_pa_802f0dd8, global
	.string "btl_un_monochrome_pakkun"
.endobj str_btl_un_monochrome_pa_802f0dd8
	.byte 0x00, 0x00, 0x00

# .rodata:0x69C | 0x802F0DF4 | size: 0x1A
.obj str_btl_hlp_monochrome_p_802f0df4, global
	.string "btl_hlp_monochrome_pakkun"
.endobj str_btl_hlp_monochrome_p_802f0df4
	.2byte 0x0000

# .rodata:0x6B8 | 0x802F0E10 | size: 0xF
.obj str_menu_enemy_181_802f0e10, global
	.string "menu_enemy_181"
.endobj str_menu_enemy_181_802f0e10
	.byte 0x00

# .rodata:0x6C8 | 0x802F0E20 | size: 0xC
.obj str_c_pakflwr_t_802f0e20, global
	.string "c_pakflwr_t"
.endobj str_c_pakflwr_t_802f0e20

# .rodata:0x6D4 | 0x802F0E2C | size: 0x8
.obj str_PKF_Z_1_802f0e2c, global
	.string "PKF_Z_1"
.endobj str_PKF_Z_1_802f0e2c

# .rodata:0x6DC | 0x802F0E34 | size: 0x1A
.obj str_btl_un_monochrome_si_802f0e34, global
	.string "btl_un_monochrome_sinemon"
.endobj str_btl_un_monochrome_si_802f0e34
	.2byte 0x0000

# .rodata:0x6F8 | 0x802F0E50 | size: 0x1B
.obj str_btl_hlp_monochrome_s_802f0e50, global
	.string "btl_hlp_monochrome_sinemon"
.endobj str_btl_hlp_monochrome_s_802f0e50
	.byte 0x00

# .rodata:0x714 | 0x802F0E6C | size: 0xF
.obj str_menu_enemy_035_802f0e6c, global
	.string "menu_enemy_035"
.endobj str_menu_enemy_035_802f0e6c
	.byte 0x00

# .rodata:0x724 | 0x802F0E7C | size: 0xC
.obj str_c_sinemon_w_802f0e7c, global
	.string "c_sinemon_w"
.endobj str_c_sinemon_w_802f0e7c

# .rodata:0x730 | 0x802F0E88 | size: 0x8
.obj str_SIN_Z_1_802f0e88, global
	.string "SIN_Z_1"
.endobj str_SIN_Z_1_802f0e88

# .rodata:0x738 | 0x802F0E90 | size: 0xE
.obj str_btl_un_piders_802f0e90, global
	.string "btl_un_piders"
.endobj str_btl_un_piders_802f0e90
	.2byte 0x0000

# .rodata:0x748 | 0x802F0EA0 | size: 0xF
.obj str_btl_hlp_piders_802f0ea0, global
	.string "btl_hlp_piders"
.endobj str_btl_hlp_piders_802f0ea0
	.byte 0x00

# .rodata:0x758 | 0x802F0EB0 | size: 0xF
.obj str_menu_enemy_015_802f0eb0, global
	.string "menu_enemy_015"
.endobj str_menu_enemy_015_802f0eb0
	.byte 0x00

# .rodata:0x768 | 0x802F0EC0 | size: 0x7
.obj str_c_paid_802f0ec0, global
	.string "c_paid"
.endobj str_c_paid_802f0ec0
	.byte 0x00

# .rodata:0x770 | 0x802F0EC8 | size: 0x8
.obj str_PAI_Z_1_802f0ec8, global
	.string "PAI_Z_1"
.endobj str_PAI_Z_1_802f0ec8

# .rodata:0x778 | 0x802F0ED0 | size: 0x12
.obj str_menu_monosiri_mri_802f0ed0, global
	.string "menu_monosiri_mri"
.endobj str_menu_monosiri_mri_802f0ed0
	.2byte 0x0000

# .rodata:0x78C | 0x802F0EE4 | size: 0x13
.obj str_btl_un_gundan_zako_802f0ee4, global
	.string "btl_un_gundan_zako"
.endobj str_btl_un_gundan_zako_802f0ee4
	.byte 0x00

# .rodata:0x7A0 | 0x802F0EF8 | size: 0x14
.obj str_btl_hlp_gundan_zako_802f0ef8, global
	.string "btl_hlp_gundan_zako"
.endobj str_btl_hlp_gundan_zako_802f0ef8

# .rodata:0x7B4 | 0x802F0F0C | size: 0xF
.obj str_menu_enemy_018_802f0f0c, global
	.string "menu_enemy_018"
.endobj str_menu_enemy_018_802f0f0c
	.byte 0x00

# .rodata:0x7C4 | 0x802F0F1C | size: 0x9
.obj str_c_zako_n_802f0f1c, global
	.string "c_zako_n"
.endobj str_c_zako_n_802f0f1c
	.byte 0x00, 0x00, 0x00

# .rodata:0x7D0 | 0x802F0F28 | size: 0x10
.obj str_btl_un_barriern_802f0f28, global
	.string "btl_un_barriern"
.endobj str_btl_un_barriern_802f0f28

# .rodata:0x7E0 | 0x802F0F38 | size: 0x11
.obj str_btl_hlp_barriern_802f0f38, global
	.string "btl_hlp_barriern"
.endobj str_btl_hlp_barriern_802f0f38
	.byte 0x00, 0x00, 0x00

# .rodata:0x7F4 | 0x802F0F4C | size: 0xF
.obj str_menu_enemy_016_802f0f4c, global
	.string "menu_enemy_016"
.endobj str_menu_enemy_016_802f0f4c
	.byte 0x00

# .rodata:0x804 | 0x802F0F5C | size: 0x8
.obj str_c_baria_802f0f5c, global
	.string "c_baria"
.endobj str_c_baria_802f0f5c

# .rodata:0x80C | 0x802F0F64 | size: 0x1A
.obj str_btl_un_barriern_sate_802f0f64, global
	.string "btl_un_barriern_satellite"
.endobj str_btl_un_barriern_sate_802f0f64
	.2byte 0x0000

# .rodata:0x828 | 0x802F0F80 | size: 0x17
.obj str_btl_hlp_barriern_pet_802f0f80, global
	.string "btl_hlp_barriern_petit"
.endobj str_btl_hlp_barriern_pet_802f0f80
	.byte 0x00

# .rodata:0x840 | 0x802F0F98 | size: 0xF
.obj str_menu_enemy_017_802f0f98, global
	.string "menu_enemy_017"
.endobj str_menu_enemy_017_802f0f98
	.byte 0x00

# .rodata:0x850 | 0x802F0FA8 | size: 0x11
.obj str_btl_un_majolyne1_802f0fa8, global
	.string "btl_un_majolyne1"
.endobj str_btl_un_majolyne1_802f0fa8
	.byte 0x00, 0x00, 0x00

# .rodata:0x864 | 0x802F0FBC | size: 0x11
.obj str_btl_hlp_majyorin_802f0fbc, global
	.string "btl_hlp_majyorin"
.endobj str_btl_hlp_majyorin_802f0fbc
	.byte 0x00, 0x00, 0x00

# .rodata:0x878 | 0x802F0FD0 | size: 0xF
.obj str_menu_enemy_104_802f0fd0, global
	.string "menu_enemy_104"
.endobj str_menu_enemy_104_802f0fd0
	.byte 0x00

# .rodata:0x888 | 0x802F0FE0 | size: 0xB
.obj str_c_majyorin_802f0fe0, global
	.string "c_majyorin"
.endobj str_c_majyorin_802f0fe0
	.byte 0x00

# .rodata:0x894 | 0x802F0FEC | size: 0x8
.obj str_MJR_M_1_802f0fec, global
	.string "MJR_M_1"
.endobj str_MJR_M_1_802f0fec

# .rodata:0x89C | 0x802F0FF4 | size: 0x10
.obj str_btl_un_marilyn1_802f0ff4, global
	.string "btl_un_marilyn1"
.endobj str_btl_un_marilyn1_802f0ff4

# .rodata:0x8AC | 0x802F1004 | size: 0x10
.obj str_btl_hlp_maririn_802f1004, global
	.string "btl_hlp_maririn"
.endobj str_btl_hlp_maririn_802f1004

# .rodata:0x8BC | 0x802F1014 | size: 0xF
.obj str_menu_enemy_108_802f1014, global
	.string "menu_enemy_108"
.endobj str_menu_enemy_108_802f1014
	.byte 0x00

# .rodata:0x8CC | 0x802F1024 | size: 0xA
.obj str_c_maririn_802f1024, global
	.string "c_maririn"
.endobj str_c_maririn_802f1024
	.2byte 0x0000

# .rodata:0x8D8 | 0x802F1030 | size: 0x8
.obj str_MRR_M_1_802f1030, global
	.string "MRR_M_1"
.endobj str_MRR_M_1_802f1030

# .rodata:0x8E0 | 0x802F1038 | size: 0xF
.obj str_btl_un_vivian1_802f1038, global
	.string "btl_un_vivian1"
.endobj str_btl_un_vivian1_802f1038
	.byte 0x00

# .rodata:0x8F0 | 0x802F1048 | size: 0xF
.obj str_btl_hlp_vivian_802f1048, global
	.string "btl_hlp_vivian"
.endobj str_btl_hlp_vivian_802f1048
	.byte 0x00

# .rodata:0x900 | 0x802F1058 | size: 0xF
.obj str_menu_enemy_112_802f1058, global
	.string "menu_enemy_112"
.endobj str_menu_enemy_112_802f1058
	.byte 0x00

# .rodata:0x910 | 0x802F1068 | size: 0x9
.obj str_c_vivian_802f1068, global
	.string "c_vivian"
.endobj str_c_vivian_802f1068
	.byte 0x00, 0x00, 0x00

# .rodata:0x91C | 0x802F1074 | size: 0x8
.obj str_PTR_M_1_802f1074, global
	.string "PTR_M_1"
.endobj str_PTR_M_1_802f1074

# .rodata:0x924 | 0x802F107C | size: 0x18
.obj str_btl_un_magnum_batten_802f107c, global
	.string "btl_un_magnum_battender"
.endobj str_btl_un_magnum_batten_802f107c

# .rodata:0x93C | 0x802F1094 | size: 0x19
.obj str_btl_hlp_magnum_batte_802f1094, global
	.string "btl_hlp_magnum_battender"
.endobj str_btl_hlp_magnum_batte_802f1094
	.byte 0x00, 0x00, 0x00

# .rodata:0x958 | 0x802F10B0 | size: 0xF
.obj str_menu_enemy_139_802f10b0, global
	.string "menu_enemy_139"
.endobj str_menu_enemy_139_802f10b0
	.byte 0x00

# .rodata:0x968 | 0x802F10C0 | size: 0xD
.obj str_c_mb_robo_1b_802f10c0, global
	.string "c_mb_robo_1b"
.endobj str_c_mb_robo_1b_802f10c0
	.byte 0x00, 0x00, 0x00

# .rodata:0x978 | 0x802F10D0 | size: 0x8
.obj str_MGN_Z_1_802f10d0, global
	.string "MGN_Z_1"
.endobj str_MGN_Z_1_802f10d0

# .rodata:0x980 | 0x802F10D8 | size: 0x14
.obj str_btl_un_rocket_punch_802f10d8, global
	.string "btl_un_rocket_punch"
.endobj str_btl_un_rocket_punch_802f10d8

# .rodata:0x994 | 0x802F10EC | size: 0x9
.obj str_MGN_A1_4_802f10ec, global
	.string "MGN_A1_4"
.endobj str_MGN_A1_4_802f10ec
	.byte 0x00, 0x00, 0x00

# .rodata:0x9A0 | 0x802F10F8 | size: 0x18
.obj str_btl_un_nokonoko_figh_802f10f8, global
	.string "btl_un_nokonoko_fighter"
.endobj str_btl_un_nokonoko_figh_802f10f8

# .rodata:0x9B8 | 0x802F1110 | size: 0x19
.obj str_btl_hlp_nokonoko_fig_802f1110, global
	.string "btl_hlp_nokonoko_fighter"
.endobj str_btl_hlp_nokonoko_fig_802f1110
	.byte 0x00, 0x00, 0x00

# .rodata:0x9D4 | 0x802F112C | size: 0xF
.obj str_menu_enemy_188_802f112c, global
	.string "menu_enemy_188"
.endobj str_menu_enemy_188_802f112c
	.byte 0x00

# .rodata:0x9E4 | 0x802F113C | size: 0xC
.obj str_c_touginoko_802f113c, global
	.string "c_touginoko"
.endobj str_c_touginoko_802f113c

# .rodata:0x9F0 | 0x802F1148 | size: 0x12
.obj str_menu_monosiri_tou_802f1148, global
	.string "menu_monosiri_tou"
.endobj str_menu_monosiri_tou_802f1148
	.2byte 0x0000

# .rodata:0xA04 | 0x802F115C | size: 0x18
.obj str_btl_un_patapata_figh_802f115c, global
	.string "btl_un_patapata_fighter"
.endobj str_btl_un_patapata_figh_802f115c

# .rodata:0xA1C | 0x802F1174 | size: 0x19
.obj str_btl_hlp_patapata_fig_802f1174, global
	.string "btl_hlp_patapata_fighter"
.endobj str_btl_hlp_patapata_fig_802f1174
	.byte 0x00, 0x00, 0x00

# .rodata:0xA38 | 0x802F1190 | size: 0xF
.obj str_menu_enemy_189_802f1190, global
	.string "menu_enemy_189"
.endobj str_menu_enemy_189_802f1190
	.byte 0x00

# .rodata:0xA48 | 0x802F11A0 | size: 0xD
.obj str_btl_un_sambo_802f11a0, global
	.string "btl_un_sambo"
.endobj str_btl_un_sambo_802f11a0
	.byte 0x00, 0x00, 0x00

# .rodata:0xA58 | 0x802F11B0 | size: 0xE
.obj str_btl_hlp_sambo_802f11b0, global
	.string "btl_hlp_sambo"
.endobj str_btl_hlp_sambo_802f11b0
	.2byte 0x0000

# .rodata:0xA68 | 0x802F11C0 | size: 0xF
.obj str_menu_enemy_055_802f11c0, global
	.string "menu_enemy_055"
.endobj str_menu_enemy_055_802f11c0
	.byte 0x00

# .rodata:0xA78 | 0x802F11D0 | size: 0x8
.obj str_c_sanbo_802f11d0, global
	.string "c_sanbo"
.endobj str_c_sanbo_802f11d0

# .rodata:0xA80 | 0x802F11D8 | size: 0x8
.obj str_SNB_Z_1_802f11d8, global
	.string "SNB_Z_1"
.endobj str_SNB_Z_1_802f11d8

# .rodata:0xA88 | 0x802F11E0 | size: 0xE
.obj str_btl_un_jyugem_802f11e0, global
	.string "btl_un_jyugem"
.endobj str_btl_un_jyugem_802f11e0
	.2byte 0x0000

# .rodata:0xA98 | 0x802F11F0 | size: 0xF
.obj str_btl_hlp_jyugem_802f11f0, global
	.string "btl_hlp_jyugem"
.endobj str_btl_hlp_jyugem_802f11f0
	.byte 0x00

# .rodata:0xAA8 | 0x802F1200 | size: 0xF
.obj str_menu_enemy_084_802f1200, global
	.string "menu_enemy_084"
.endobj str_menu_enemy_084_802f1200
	.byte 0x00

# .rodata:0xAB8 | 0x802F1210 | size: 0x9
.obj str_c_jugemu_802f1210, global
	.string "c_jugemu"
.endobj str_c_jugemu_802f1210
	.byte 0x00, 0x00, 0x00

# .rodata:0xAC4 | 0x802F121C | size: 0x8
.obj str_JGM_Z_1_802f121c, global
	.string "JGM_Z_1"
.endobj str_JGM_Z_1_802f121c

# .rodata:0xACC | 0x802F1224 | size: 0xE
.obj str_btl_un_togezo_802f1224, global
	.string "btl_un_togezo"
.endobj str_btl_un_togezo_802f1224
	.2byte 0x0000

# .rodata:0xADC | 0x802F1234 | size: 0xF
.obj str_btl_hlp_togezo_802f1234, global
	.string "btl_hlp_togezo"
.endobj str_btl_hlp_togezo_802f1234
	.byte 0x00

# .rodata:0xAEC | 0x802F1244 | size: 0xF
.obj str_menu_enemy_085_802f1244, global
	.string "menu_enemy_085"
.endobj str_menu_enemy_085_802f1244
	.byte 0x00

# .rodata:0xAFC | 0x802F1254 | size: 0x9
.obj str_c_togezo_802f1254, global
	.string "c_togezo"
.endobj str_c_togezo_802f1254
	.byte 0x00, 0x00, 0x00

# .rodata:0xB08 | 0x802F1260 | size: 0x8
.obj str_TGZ_Z_1_802f1260, global
	.string "TGZ_Z_1"
.endobj str_TGZ_Z_1_802f1260

# .rodata:0xB10 | 0x802F1268 | size: 0x17
.obj str_btl_un_hyper_sinnosu_802f1268, global
	.string "btl_un_hyper_sinnosuke"
.endobj str_btl_un_hyper_sinnosu_802f1268
	.byte 0x00

# .rodata:0xB28 | 0x802F1280 | size: 0x18
.obj str_btl_hlp_hyper_sinnos_802f1280, global
	.string "btl_hlp_hyper_sinnosuke"
.endobj str_btl_hlp_hyper_sinnos_802f1280

# .rodata:0xB40 | 0x802F1298 | size: 0xF
.obj str_menu_enemy_036_802f1298, global
	.string "menu_enemy_036"
.endobj str_menu_enemy_036_802f1298
	.byte 0x00

# .rodata:0xB50 | 0x802F12A8 | size: 0xE
.obj str_c_sinnosuke_h_802f12a8, global
	.string "c_sinnosuke_h"
.endobj str_c_sinnosuke_h_802f12a8
	.2byte 0x0000

# .rodata:0xB60 | 0x802F12B8 | size: 0xE
.obj str_btl_un_bomhei_802f12b8, global
	.string "btl_un_bomhei"
.endobj str_btl_un_bomhei_802f12b8
	.2byte 0x0000

# .rodata:0xB70 | 0x802F12C8 | size: 0xF
.obj str_btl_hlp_bomhei_802f12c8, global
	.string "btl_hlp_bomhei"
.endobj str_btl_hlp_bomhei_802f12c8
	.byte 0x00

# .rodata:0xB80 | 0x802F12D8 | size: 0xF
.obj str_menu_enemy_061_802f12d8, global
	.string "menu_enemy_061"
.endobj str_menu_enemy_061_802f12d8
	.byte 0x00

# .rodata:0xB90 | 0x802F12E8 | size: 0x9
.obj str_c_bomhey_802f12e8, global
	.string "c_bomhey"
.endobj str_c_bomhey_802f12e8
	.byte 0x00, 0x00, 0x00

# .rodata:0xB9C | 0x802F12F4 | size: 0x8
.obj str_BOM_Z_1_802f12f4, global
	.string "BOM_Z_1"
.endobj str_BOM_Z_1_802f12f4

# .rodata:0xBA4 | 0x802F12FC | size: 0xE
.obj str_btl_un_borodo_802f12fc, global
	.string "btl_un_borodo"
.endobj str_btl_un_borodo_802f12fc
	.2byte 0x0000

# .rodata:0xBB4 | 0x802F130C | size: 0xF
.obj str_btl_hlp_borodo_802f130c, global
	.string "btl_hlp_borodo"
.endobj str_btl_hlp_borodo_802f130c
	.byte 0x00

# .rodata:0xBC4 | 0x802F131C | size: 0xF
.obj str_menu_enemy_077_802f131c, global
	.string "menu_enemy_077"
.endobj str_menu_enemy_077_802f131c
	.byte 0x00

# .rodata:0xBD4 | 0x802F132C | size: 0x9
.obj str_c_borodo_802f132c, global
	.string "c_borodo"
.endobj str_c_borodo_802f132c
	.byte 0x00, 0x00, 0x00

# .rodata:0xBE0 | 0x802F1338 | size: 0x13
.obj str_btl_un_borodo_king_802f1338, global
	.string "btl_un_borodo_king"
.endobj str_btl_un_borodo_king_802f1338
	.byte 0x00

# .rodata:0xBF4 | 0x802F134C | size: 0x14
.obj str_btl_hlp_borodo_king_802f134c, global
	.string "btl_hlp_borodo_king"
.endobj str_btl_hlp_borodo_king_802f134c

# .rodata:0xC08 | 0x802F1360 | size: 0xF
.obj str_menu_enemy_190_802f1360, global
	.string "menu_enemy_190"
.endobj str_menu_enemy_190_802f1360
	.byte 0x00

# .rodata:0xC18 | 0x802F1370 | size: 0xB
.obj str_c_borodo_g_802f1370, global
	.string "c_borodo_g"
.endobj str_c_borodo_g_802f1370
	.byte 0x00

# .rodata:0xC24 | 0x802F137C | size: 0x17
.obj str_btl_un_crimson_togem_802f137c, global
	.string "btl_un_crimson_togemet"
.endobj str_btl_un_crimson_togem_802f137c
	.byte 0x00

# .rodata:0xC3C | 0x802F1394 | size: 0x18
.obj str_btl_hlp_crimson_toge_802f1394, global
	.string "btl_hlp_crimson_togemet"
.endobj str_btl_hlp_crimson_toge_802f1394

# .rodata:0xC54 | 0x802F13AC | size: 0xF
.obj str_menu_enemy_191_802f13ac, global
	.string "menu_enemy_191"
.endobj str_menu_enemy_191_802f13ac
	.byte 0x00

# .rodata:0xC64 | 0x802F13BC | size: 0x8
.obj str_c_met_h_802f13bc, global
	.string "c_met_h"
.endobj str_c_met_h_802f13bc

# .rodata:0xC6C | 0x802F13C4 | size: 0x8
.obj str_TMT_Z_1_802f13c4, global
	.string "TMT_Z_1"
.endobj str_TMT_Z_1_802f13c4

# .rodata:0xC74 | 0x802F13CC | size: 0x10
.obj str_btl_un_ura_noko_802f13cc, global
	.string "btl_un_ura_noko"
.endobj str_btl_un_ura_noko_802f13cc

# .rodata:0xC84 | 0x802F13DC | size: 0x11
.obj str_btl_hlp_ura_noko_802f13dc, global
	.string "btl_hlp_ura_noko"
.endobj str_btl_hlp_ura_noko_802f13dc
	.byte 0x00, 0x00, 0x00

# .rodata:0xC98 | 0x802F13F0 | size: 0xF
.obj str_menu_enemy_031_802f13f0, global
	.string "menu_enemy_031"
.endobj str_menu_enemy_031_802f13f0
	.byte 0x00

# .rodata:0xCA8 | 0x802F1400 | size: 0xA
.obj str_c_uranoko_802f1400, global
	.string "c_uranoko"
.endobj str_c_uranoko_802f1400
	.2byte 0x0000

# .rodata:0xCB4 | 0x802F140C | size: 0x10
.obj str_btl_un_ura_pata_802f140c, global
	.string "btl_un_ura_pata"
.endobj str_btl_un_ura_pata_802f140c

# .rodata:0xCC4 | 0x802F141C | size: 0x11
.obj str_btl_hlp_ura_pata_802f141c, global
	.string "btl_hlp_ura_pata"
.endobj str_btl_hlp_ura_pata_802f141c
	.byte 0x00, 0x00, 0x00

# .rodata:0xCD8 | 0x802F1430 | size: 0xF
.obj str_menu_enemy_032_802f1430, global
	.string "menu_enemy_032"
.endobj str_menu_enemy_032_802f1430
	.byte 0x00

# .rodata:0xCE8 | 0x802F1440 | size: 0x11
.obj str_btl_un_kamec_red_802f1440, global
	.string "btl_un_kamec_red"
.endobj str_btl_un_kamec_red_802f1440
	.byte 0x00, 0x00, 0x00

# .rodata:0xCFC | 0x802F1454 | size: 0x12
.obj str_btl_hlp_kamec_red_802f1454, global
	.string "btl_hlp_kamec_red"
.endobj str_btl_hlp_kamec_red_802f1454
	.2byte 0x0000

# .rodata:0xD10 | 0x802F1468 | size: 0xF
.obj str_menu_enemy_169_802f1468, global
	.string "menu_enemy_169"
.endobj str_menu_enemy_169_802f1468
	.byte 0x00

# .rodata:0xD20 | 0x802F1478 | size: 0xA
.obj str_c_kamek_r_802f1478, global
	.string "c_kamek_r"
.endobj str_c_kamek_r_802f1478
	.2byte 0x0000

# .rodata:0xD2C | 0x802F1484 | size: 0x8
.obj str_KMR_Z_1_802f1484, global
	.string "KMR_Z_1"
.endobj str_KMR_Z_1_802f1484

# .rodata:0xD34 | 0x802F148C | size: 0x18
.obj str_btl_un_kamec_red_bun_802f148c, global
	.string "btl_un_kamec_red_bunsin"
.endobj str_btl_un_kamec_red_bun_802f148c

# .rodata:0xD4C | 0x802F14A4 | size: 0x1A
.obj str_btl_hlp_kamec_red_bu_802f14a4, global
	.string "btl_hlp_kamec_red_bunshin"
.endobj str_btl_hlp_kamec_red_bu_802f14a4
	.2byte 0x0000

# .rodata:0xD68 | 0x802F14C0 | size: 0x13
.obj str_btl_un_kamec_white_802f14c0, global
	.string "btl_un_kamec_white"
.endobj str_btl_un_kamec_white_802f14c0
	.byte 0x00

# .rodata:0xD7C | 0x802F14D4 | size: 0x14
.obj str_btl_hlp_kamec_white_802f14d4, global
	.string "btl_hlp_kamec_white"
.endobj str_btl_hlp_kamec_white_802f14d4

# .rodata:0xD90 | 0x802F14E8 | size: 0xF
.obj str_menu_enemy_170_802f14e8, global
	.string "menu_enemy_170"
.endobj str_menu_enemy_170_802f14e8
	.byte 0x00

# .rodata:0xDA0 | 0x802F14F8 | size: 0xA
.obj str_c_kamek_w_802f14f8, global
	.string "c_kamek_w"
.endobj str_c_kamek_w_802f14f8
	.2byte 0x0000

# .rodata:0xDAC | 0x802F1504 | size: 0x8
.obj str_KMW_Z_1_802f1504, global
	.string "KMW_Z_1"
.endobj str_KMW_Z_1_802f1504

# .rodata:0xDB4 | 0x802F150C | size: 0x1A
.obj str_btl_un_kamec_white_b_802f150c, global
	.string "btl_un_kamec_white_bunsin"
.endobj str_btl_un_kamec_white_b_802f150c
	.2byte 0x0000

# .rodata:0xDD0 | 0x802F1528 | size: 0x1C
.obj str_btl_hlp_kamec_white__802f1528, global
	.string "btl_hlp_kamec_white_bunshin"
.endobj str_btl_hlp_kamec_white__802f1528

# .rodata:0xDEC | 0x802F1544 | size: 0x13
.obj str_btl_un_kamec_green_802f1544, global
	.string "btl_un_kamec_green"
.endobj str_btl_un_kamec_green_802f1544
	.byte 0x00

# .rodata:0xE00 | 0x802F1558 | size: 0x14
.obj str_btl_hlp_kamec_green_802f1558, global
	.string "btl_hlp_kamec_green"
.endobj str_btl_hlp_kamec_green_802f1558

# .rodata:0xE14 | 0x802F156C | size: 0xF
.obj str_menu_enemy_171_802f156c, global
	.string "menu_enemy_171"
.endobj str_menu_enemy_171_802f156c
	.byte 0x00

# .rodata:0xE24 | 0x802F157C | size: 0xA
.obj str_c_kamek_g_802f157c, global
	.string "c_kamek_g"
.endobj str_c_kamek_g_802f157c
	.2byte 0x0000

# .rodata:0xE30 | 0x802F1588 | size: 0x8
.obj str_KMG_Z_1_802f1588, global
	.string "KMG_Z_1"
.endobj str_KMG_Z_1_802f1588

# .rodata:0xE38 | 0x802F1590 | size: 0x1A
.obj str_btl_un_kamec_green_b_802f1590, global
	.string "btl_un_kamec_green_bunsin"
.endobj str_btl_un_kamec_green_b_802f1590
	.2byte 0x0000

# .rodata:0xE54 | 0x802F15AC | size: 0x1C
.obj str_btl_hlp_kamec_green__802f15ac, global
	.string "btl_hlp_kamec_green_bunshin"
.endobj str_btl_hlp_kamec_green__802f15ac

# .rodata:0xE70 | 0x802F15C8 | size: 0x13
.obj str_btl_un_dark_keeper_802f15c8, global
	.string "btl_un_dark_keeper"
.endobj str_btl_un_dark_keeper_802f15c8
	.byte 0x00

# .rodata:0xE84 | 0x802F15DC | size: 0x14
.obj str_btl_hlp_dark_keeper_802f15dc, global
	.string "btl_hlp_dark_keeper"
.endobj str_btl_hlp_dark_keeper_802f15dc

# .rodata:0xE98 | 0x802F15F0 | size: 0xF
.obj str_menu_enemy_184_802f15f0, global
	.string "menu_enemy_184"
.endobj str_menu_enemy_184_802f15f0
	.byte 0x00

# .rodata:0xEA8 | 0x802F1600 | size: 0xB
.obj str_c_monban_t_802f1600, global
	.string "c_monban_t"
.endobj str_c_monban_t_802f1600
	.byte 0x00

# .rodata:0xEB4 | 0x802F160C | size: 0x13
.obj str_btl_un_hammer_bros_802f160c, global
	.string "btl_un_hammer_bros"
.endobj str_btl_un_hammer_bros_802f160c
	.byte 0x00

# .rodata:0xEC8 | 0x802F1620 | size: 0x14
.obj str_btl_hlp_hammer_bros_802f1620, global
	.string "btl_hlp_hammer_bros"
.endobj str_btl_hlp_hammer_bros_802f1620

# .rodata:0xEDC | 0x802F1634 | size: 0xF
.obj str_menu_enemy_067_802f1634, global
	.string "menu_enemy_067"
.endobj str_menu_enemy_067_802f1634
	.byte 0x00

# .rodata:0xEEC | 0x802F1644 | size: 0xB
.obj str_c_burosu_h_802f1644, global
	.string "c_burosu_h"
.endobj str_c_burosu_h_802f1644
	.byte 0x00

# .rodata:0xEF8 | 0x802F1650 | size: 0x8
.obj str_BRO_Z_1_802f1650, global
	.string "BRO_Z_1"
.endobj str_BRO_Z_1_802f1650

# .rodata:0xF00 | 0x802F1658 | size: 0x16
.obj str_btl_un_boomerang_bro_802f1658, global
	.string "btl_un_boomerang_bros"
.endobj str_btl_un_boomerang_bro_802f1658
	.2byte 0x0000

# .rodata:0xF18 | 0x802F1670 | size: 0x17
.obj str_btl_hlp_boomerang_br_802f1670, global
	.string "btl_hlp_boomerang_bros"
.endobj str_btl_hlp_boomerang_br_802f1670
	.byte 0x00

# .rodata:0xF30 | 0x802F1688 | size: 0xF
.obj str_menu_enemy_068_802f1688, global
	.string "menu_enemy_068"
.endobj str_menu_enemy_068_802f1688
	.byte 0x00

# .rodata:0xF40 | 0x802F1698 | size: 0xB
.obj str_c_burosu_b_802f1698, global
	.string "c_burosu_b"
.endobj str_c_burosu_b_802f1698
	.byte 0x00

# .rodata:0xF4C | 0x802F16A4 | size: 0x11
.obj str_btl_un_fire_bros_802f16a4, global
	.string "btl_un_fire_bros"
.endobj str_btl_un_fire_bros_802f16a4
	.byte 0x00, 0x00, 0x00

# .rodata:0xF60 | 0x802F16B8 | size: 0x12
.obj str_btl_hlp_fire_bros_802f16b8, global
	.string "btl_hlp_fire_bros"
.endobj str_btl_hlp_fire_bros_802f16b8
	.2byte 0x0000

# .rodata:0xF74 | 0x802F16CC | size: 0xF
.obj str_menu_enemy_069_802f16cc, global
	.string "menu_enemy_069"
.endobj str_menu_enemy_069_802f16cc
	.byte 0x00

# .rodata:0xF84 | 0x802F16DC | size: 0xB
.obj str_c_burosu_f_802f16dc, global
	.string "c_burosu_f"
.endobj str_c_burosu_f_802f16dc
	.byte 0x00

# .rodata:0xF90 | 0x802F16E8 | size: 0x14
.obj str_btl_un_burst_wanwan_802f16e8, global
	.string "btl_un_burst_wanwan"
.endobj str_btl_un_burst_wanwan_802f16e8

# .rodata:0xFA4 | 0x802F16FC | size: 0x15
.obj str_btl_hlp_burst_wanwan_802f16fc, global
	.string "btl_hlp_burst_wanwan"
.endobj str_btl_hlp_burst_wanwan_802f16fc
	.byte 0x00, 0x00, 0x00

# .rodata:0xFBC | 0x802F1714 | size: 0xF
.obj str_menu_enemy_185_802f1714, global
	.string "menu_enemy_185"
.endobj str_menu_enemy_185_802f1714
	.byte 0x00

# .rodata:0xFCC | 0x802F1724 | size: 0xB
.obj str_c_wanwan_a_802f1724, global
	.string "c_wanwan_a"
.endobj str_c_wanwan_a_802f1724
	.byte 0x00

# .rodata:0xFD8 | 0x802F1730 | size: 0x8
.obj str_WAN_Z_1_802f1730, global
	.string "WAN_Z_1"
.endobj str_WAN_Z_1_802f1730

# .rodata:0xFE0 | 0x802F1738 | size: 0x14
.obj str_btl_un_togenoko_ace_802f1738, global
	.string "btl_un_togenoko_ace"
.endobj str_btl_un_togenoko_ace_802f1738

# .rodata:0xFF4 | 0x802F174C | size: 0x15
.obj str_btl_hlp_togenoko_ace_802f174c, global
	.string "btl_hlp_togenoko_ace"
.endobj str_btl_hlp_togenoko_ace_802f174c
	.byte 0x00, 0x00, 0x00

# .rodata:0x100C | 0x802F1764 | size: 0xF
.obj str_menu_enemy_175_802f1764, global
	.string "menu_enemy_175"
.endobj str_menu_enemy_175_802f1764
	.byte 0x00

# .rodata:0x101C | 0x802F1774 | size: 0xD
.obj str_c_togenoko_b_802f1774, global
	.string "c_togenoko_b"
.endobj str_c_togenoko_b_802f1774
	.byte 0x00, 0x00, 0x00

# .rodata:0x102C | 0x802F1784 | size: 0x14
.obj str_btl_un_iron_sinemon_802f1784, global
	.string "btl_un_iron_sinemon"
.endobj str_btl_un_iron_sinemon_802f1784

# .rodata:0x1040 | 0x802F1798 | size: 0x15
.obj str_btl_hlp_iron_sinemon_802f1798, global
	.string "btl_hlp_iron_sinemon"
.endobj str_btl_hlp_iron_sinemon_802f1798
	.byte 0x00, 0x00, 0x00

# .rodata:0x1058 | 0x802F17B0 | size: 0xF
.obj str_menu_enemy_038_802f17b0, global
	.string "menu_enemy_038"
.endobj str_menu_enemy_038_802f17b0
	.byte 0x00

# .rodata:0x1068 | 0x802F17C0 | size: 0xC
.obj str_c_sinemon_a_802f17c0, global
	.string "c_sinemon_a"
.endobj str_c_sinemon_a_802f17c0

# .rodata:0x1074 | 0x802F17CC | size: 0x15
.obj str_btl_un_iron_sinemon2_802f17cc, global
	.string "btl_un_iron_sinemon2"
.endobj str_btl_un_iron_sinemon2_802f17cc
	.byte 0x00, 0x00, 0x00

# .rodata:0x108C | 0x802F17E4 | size: 0x16
.obj str_btl_hlp_iron_sinemon_802f17e4, global
	.string "btl_hlp_iron_sinemon2"
.endobj str_btl_hlp_iron_sinemon_802f17e4
	.2byte 0x0000

# .rodata:0x10A4 | 0x802F17FC | size: 0xF
.obj str_menu_enemy_039_802f17fc, global
	.string "menu_enemy_039"
.endobj str_menu_enemy_039_802f17fc
	.byte 0x00

# .rodata:0x10B4 | 0x802F180C | size: 0xC
.obj str_c_sinemon_m_802f180c, global
	.string "c_sinemon_m"
.endobj str_c_sinemon_m_802f180c

# .rodata:0x10C0 | 0x802F1818 | size: 0xD
.obj str_btl_un_koopa_802f1818, global
	.string "btl_un_koopa"
.endobj str_btl_un_koopa_802f1818
	.byte 0x00, 0x00, 0x00

# .rodata:0x10D0 | 0x802F1828 | size: 0x12
.obj str_btl_hlp_koopa_tou_802f1828, global
	.string "btl_hlp_koopa_tou"
.endobj str_btl_hlp_koopa_tou_802f1828
	.2byte 0x0000

# .rodata:0x10E4 | 0x802F183C | size: 0xF
.obj str_menu_enemy_187_802f183c, global
	.string "menu_enemy_187"
.endobj str_menu_enemy_187_802f183c
	.byte 0x00

# .rodata:0x10F4 | 0x802F184C | size: 0x8
.obj str_c_koopa_802f184c, global
	.string "c_koopa"
.endobj str_c_koopa_802f184c

# .rodata:0x10FC | 0x802F1854 | size: 0x8
.obj str_KPA_Z_1_802f1854, global
	.string "KPA_Z_1"
.endobj str_KPA_Z_1_802f1854

# .rodata:0x1104 | 0x802F185C | size: 0x10
.obj str_btl_un_champion_802f185c, global
	.string "btl_un_champion"
.endobj str_btl_un_champion_802f185c

# .rodata:0x1114 | 0x802F186C | size: 0x11
.obj str_btl_hlp_champion_802f186c, global
	.string "btl_hlp_champion"
.endobj str_btl_hlp_champion_802f186c
	.byte 0x00, 0x00, 0x00

# .rodata:0x1128 | 0x802F1880 | size: 0xF
.obj str_menu_enemy_142_802f1880, global
	.string "menu_enemy_142"
.endobj str_menu_enemy_142_802f1880
	.byte 0x00

# .rodata:0x1138 | 0x802F1890 | size: 0x9
.obj str_c_bred_h_802f1890, global
	.string "c_bred_h"
.endobj str_c_bred_h_802f1890
	.byte 0x00, 0x00, 0x00

# .rodata:0x1144 | 0x802F189C | size: 0x13
.obj str_btl_un_macho_gance_802f189c, global
	.string "btl_un_macho_gance"
.endobj str_btl_un_macho_gance_802f189c
	.byte 0x00

# .rodata:0x1158 | 0x802F18B0 | size: 0x14
.obj str_btl_hlp_macho_gansu_802f18b0, global
	.string "btl_hlp_macho_gansu"
.endobj str_btl_hlp_macho_gansu_802f18b0

# .rodata:0x116C | 0x802F18C4 | size: 0xF
.obj str_menu_enemy_141_802f18c4, global
	.string "menu_enemy_141"
.endobj str_menu_enemy_141_802f18c4
	.byte 0x00

# .rodata:0x117C | 0x802F18D4 | size: 0xA
.obj str_c_m_gansu_802f18d4, global
	.string "c_m_gansu"
.endobj str_c_m_gansu_802f18d4
	.2byte 0x0000

# .rodata:0x1188 | 0x802F18E0 | size: 0x15
.obj str_btl_un_hyper_kuriboo_802f18e0, global
	.string "btl_un_hyper_kuriboo"
.endobj str_btl_un_hyper_kuriboo_802f18e0
	.byte 0x00, 0x00, 0x00

# .rodata:0x11A0 | 0x802F18F8 | size: 0x16
.obj str_btl_hlp_hyper_kuribo_802f18f8, global
	.string "btl_hlp_hyper_kuriboo"
.endobj str_btl_hlp_hyper_kuribo_802f18f8
	.2byte 0x0000

# .rodata:0x11B8 | 0x802F1910 | size: 0xF
.obj str_menu_enemy_023_802f1910, global
	.string "menu_enemy_023"
.endobj str_menu_enemy_023_802f1910
	.byte 0x00

# .rodata:0x11C8 | 0x802F1920 | size: 0xB
.obj str_c_kuribo_h_802f1920, global
	.string "c_kuribo_h"
.endobj str_c_kuribo_h_802f1920
	.byte 0x00

# .rodata:0x11D4 | 0x802F192C | size: 0x12
.obj str_menu_monosiri_gra_802f192c, global
	.string "menu_monosiri_gra"
.endobj str_menu_monosiri_gra_802f192c
	.2byte 0x0000

# .rodata:0x11E8 | 0x802F1940 | size: 0x16
.obj str_btl_un_hyper_patakur_802f1940, global
	.string "btl_un_hyper_patakuri"
.endobj str_btl_un_hyper_patakur_802f1940
	.2byte 0x0000

# .rodata:0x1200 | 0x802F1958 | size: 0x17
.obj str_btl_hlp_hyper_pataku_802f1958, global
	.string "btl_hlp_hyper_patakuri"
.endobj str_btl_hlp_hyper_pataku_802f1958
	.byte 0x00

# .rodata:0x1218 | 0x802F1970 | size: 0xF
.obj str_menu_enemy_025_802f1970, global
	.string "menu_enemy_025"
.endobj str_menu_enemy_025_802f1970
	.byte 0x00

# .rodata:0x1228 | 0x802F1980 | size: 0x16
.obj str_btl_un_hyper_togekur_802f1980, global
	.string "btl_un_hyper_togekuri"
.endobj str_btl_un_hyper_togekur_802f1980
	.2byte 0x0000

# .rodata:0x1240 | 0x802F1998 | size: 0x17
.obj str_btl_hlp_hyper_togeku_802f1998, global
	.string "btl_hlp_hyper_togekuri"
.endobj str_btl_hlp_hyper_togeku_802f1998
	.byte 0x00

# .rodata:0x1258 | 0x802F19B0 | size: 0xF
.obj str_menu_enemy_024_802f19b0, global
	.string "menu_enemy_024"
.endobj str_menu_enemy_024_802f19b0
	.byte 0x00

# .rodata:0x1268 | 0x802F19C0 | size: 0xD
.obj str_btl_un_pansy_802f19c0, global
	.string "btl_un_pansy"
.endobj str_btl_un_pansy_802f19c0
	.byte 0x00, 0x00, 0x00

# .rodata:0x1278 | 0x802F19D0 | size: 0xE
.obj str_btl_hlp_pansy_802f19d0, global
	.string "btl_hlp_pansy"
.endobj str_btl_hlp_pansy_802f19d0
	.2byte 0x0000

# .rodata:0x1288 | 0x802F19E0 | size: 0xF
.obj str_menu_enemy_082_802f19e0, global
	.string "menu_enemy_082"
.endobj str_menu_enemy_082_802f19e0
	.byte 0x00

# .rodata:0x1298 | 0x802F19F0 | size: 0x8
.obj str_c_pansy_802f19f0, global
	.string "c_pansy"
.endobj str_c_pansy_802f19f0

# .rodata:0x12A0 | 0x802F19F8 | size: 0x8
.obj str_PAN_Z_1_802f19f8, global
	.string "PAN_Z_1"
.endobj str_PAN_Z_1_802f19f8

# .rodata:0x12A8 | 0x802F1A00 | size: 0x17
.obj str_btl_un_twinkling_pan_802f1a00, global
	.string "btl_un_twinkling_pansy"
.endobj str_btl_un_twinkling_pan_802f1a00
	.byte 0x00

# .rodata:0x12C0 | 0x802F1A18 | size: 0x18
.obj str_btl_hlp_twinkling_pa_802f1a18, global
	.string "btl_hlp_twinkling_pansy"
.endobj str_btl_hlp_twinkling_pa_802f1a18

# .rodata:0x12D8 | 0x802F1A30 | size: 0xF
.obj str_menu_enemy_083_802f1a30, global
	.string "menu_enemy_083"
.endobj str_menu_enemy_083_802f1a30
	.byte 0x00

# .rodata:0x12E8 | 0x802F1A40 | size: 0x9
.obj str_c_kpansy_802f1a40, global
	.string "c_kpansy"
.endobj str_c_kpansy_802f1a40
	.byte 0x00, 0x00, 0x00

# .rodata:0x12F4 | 0x802F1A4C | size: 0x15
.obj str_btl_un_hyper_sinemon_802f1a4c, global
	.string "btl_un_hyper_sinemon"
.endobj str_btl_un_hyper_sinemon_802f1a4c
	.byte 0x00, 0x00, 0x00

# .rodata:0x130C | 0x802F1A64 | size: 0x16
.obj str_btl_hlp_hyper_sinemo_802f1a64, global
	.string "btl_hlp_hyper_sinemon"
.endobj str_btl_hlp_hyper_sinemo_802f1a64
	.2byte 0x0000

# .rodata:0x1324 | 0x802F1A7C | size: 0xF
.obj str_menu_enemy_037_802f1a7c, global
	.string "menu_enemy_037"
.endobj str_menu_enemy_037_802f1a7c
	.byte 0x00

# .rodata:0x1334 | 0x802F1A8C | size: 0xC
.obj str_c_sinemon_h_802f1a8c, global
	.string "c_sinemon_h"
.endobj str_c_sinemon_h_802f1a8c

# .rodata:0x1340 | 0x802F1A98 | size: 0xB
.obj str_btl_un_met_802f1a98, global
	.string "btl_un_met"
.endobj str_btl_un_met_802f1a98
	.byte 0x00

# .rodata:0x134C | 0x802F1AA4 | size: 0xC
.obj str_btl_hlp_met_802f1aa4, global
	.string "btl_hlp_met"
.endobj str_btl_hlp_met_802f1aa4

# .rodata:0x1358 | 0x802F1AB0 | size: 0xF
.obj str_menu_enemy_048_802f1ab0, global
	.string "menu_enemy_048"
.endobj str_menu_enemy_048_802f1ab0
	.byte 0x00

# .rodata:0x1368 | 0x802F1AC0 | size: 0x8
.obj str_MET_Z_1_802f1ac0, global
	.string "MET_Z_1"
.endobj str_MET_Z_1_802f1ac0

# .rodata:0x1370 | 0x802F1AC8 | size: 0x12
.obj str_menu_monosiri_jin_802f1ac8, global
	.string "menu_monosiri_jin"
.endobj str_menu_monosiri_jin_802f1ac8
	.2byte 0x0000

# .rodata:0x1384 | 0x802F1ADC | size: 0xF
.obj str_btl_un_togemet_802f1adc, global
	.string "btl_un_togemet"
.endobj str_btl_un_togemet_802f1adc
	.byte 0x00

# .rodata:0x1394 | 0x802F1AEC | size: 0x10
.obj str_btl_hlp_togemet_802f1aec, global
	.string "btl_hlp_togemet"
.endobj str_btl_hlp_togemet_802f1aec

# .rodata:0x13A4 | 0x802F1AFC | size: 0xF
.obj str_menu_enemy_049_802f1afc, global
	.string "menu_enemy_049"
.endobj str_menu_enemy_049_802f1afc
	.byte 0x00

# .rodata:0x13B4 | 0x802F1B0C | size: 0x10
.obj str_btl_un_basabasa_802f1b0c, global
	.string "btl_un_basabasa"
.endobj str_btl_un_basabasa_802f1b0c

# .rodata:0x13C4 | 0x802F1B1C | size: 0x11
.obj str_btl_hlp_basabasa_802f1b1c, global
	.string "btl_hlp_basabasa"
.endobj str_btl_hlp_basabasa_802f1b1c
	.byte 0x00, 0x00, 0x00

# .rodata:0x13D8 | 0x802F1B30 | size: 0xF
.obj str_menu_enemy_040_802f1b30, global
	.string "menu_enemy_040"
.endobj str_menu_enemy_040_802f1b30
	.byte 0x00

# .rodata:0x13E8 | 0x802F1B40 | size: 0xB
.obj str_c_basabasa_802f1b40, global
	.string "c_basabasa"
.endobj str_c_basabasa_802f1b40
	.byte 0x00

# .rodata:0x13F4 | 0x802F1B4C | size: 0x8
.obj str_BSA_Z_1_802f1b4c, global
	.string "BSA_Z_1"
.endobj str_BSA_Z_1_802f1b4c

# .rodata:0x13FC | 0x802F1B54 | size: 0xE
.obj str_btl_un_teresa_802f1b54, global
	.string "btl_un_teresa"
.endobj str_btl_un_teresa_802f1b54
	.2byte 0x0000

# .rodata:0x140C | 0x802F1B64 | size: 0xF
.obj str_btl_hlp_teresa_802f1b64, global
	.string "btl_hlp_teresa"
.endobj str_btl_hlp_teresa_802f1b64
	.byte 0x00

# .rodata:0x141C | 0x802F1B74 | size: 0xF
.obj str_menu_enemy_052_802f1b74, global
	.string "menu_enemy_052"
.endobj str_menu_enemy_052_802f1b74
	.byte 0x00

# .rodata:0x142C | 0x802F1B84 | size: 0x9
.obj str_c_teresa_802f1b84, global
	.string "c_teresa"
.endobj str_c_teresa_802f1b84
	.byte 0x00, 0x00, 0x00

# .rodata:0x1438 | 0x802F1B90 | size: 0x14
.obj str_btl_un_atmic_teresa_802f1b90, global
	.string "btl_un_atmic_teresa"
.endobj str_btl_un_atmic_teresa_802f1b90

# .rodata:0x144C | 0x802F1BA4 | size: 0x16
.obj str_btl_hlp_atomic_teres_802f1ba4, global
	.string "btl_hlp_atomic_teresa"
.endobj str_btl_hlp_atomic_teres_802f1ba4
	.2byte 0x0000

# .rodata:0x1464 | 0x802F1BBC | size: 0xF
.obj str_menu_enemy_054_802f1bbc, global
	.string "menu_enemy_054"
.endobj str_menu_enemy_054_802f1bbc
	.byte 0x00

# .rodata:0x1474 | 0x802F1BCC | size: 0xC
.obj str_c_atmic_trs_802f1bcc, global
	.string "c_atmic_trs"
.endobj str_c_atmic_trs_802f1bcc

# .rodata:0x1480 | 0x802F1BD8 | size: 0xE
.obj str_btl_un_hatena_802f1bd8, global
	.string "btl_un_hatena"
.endobj str_btl_un_hatena_802f1bd8
	.2byte 0x0000

# .rodata:0x1490 | 0x802F1BE8 | size: 0xF
.obj str_btl_hlp_hatena_802f1be8, global
	.string "btl_hlp_hatena"
.endobj str_btl_hlp_hatena_802f1be8
	.byte 0x00

# .rodata:0x14A0 | 0x802F1BF8 | size: 0xF
.obj str_menu_enemy_124_802f1bf8, global
	.string "menu_enemy_124"
.endobj str_menu_enemy_124_802f1bf8
	.byte 0x00

# .rodata:0x14B0 | 0x802F1C08 | size: 0x9
.obj str_c_ranpel_802f1c08, global
	.string "c_ranpel"
.endobj str_c_ranpel_802f1c08
	.byte 0x00, 0x00, 0x00

# .rodata:0x14BC | 0x802F1C14 | size: 0xF
.obj str_btl_un_rampell_802f1c14, global
	.string "btl_un_rampell"
.endobj str_btl_un_rampell_802f1c14
	.byte 0x00

# .rodata:0x14CC | 0x802F1C24 | size: 0x1A
.obj str_btl_un_gullible_chri_802f1c24, global
	.string "btl_un_gullible_christine"
.endobj str_btl_un_gullible_chri_802f1c24
	.2byte 0x0000

# .rodata:0x14E8 | 0x802F1C40 | size: 0x8
.obj str_PRK_Z_1_802f1c40, global
	.string "PRK_Z_1"
.endobj str_PRK_Z_1_802f1c40

# .rodata:0x14F0 | 0x802F1C48 | size: 0x1A
.obj str_btl_un_gullible_noko_802f1c48, global
	.string "btl_un_gullible_nokotarou"
.endobj str_btl_un_gullible_noko_802f1c48
	.2byte 0x0000

# .rodata:0x150C | 0x802F1C64 | size: 0x8
.obj str_PNK_Z_1_802f1c64, global
	.string "PNK_Z_1"
.endobj str_PNK_Z_1_802f1c64

# .rodata:0x1514 | 0x802F1C6C | size: 0x16
.obj str_btl_un_gullible_yosh_802f1c6c, global
	.string "btl_un_gullible_yoshi"
.endobj str_btl_un_gullible_yosh_802f1c6c
	.2byte 0x0000

# .rodata:0x152C | 0x802F1C84 | size: 0xC
.obj str_c_babyyoshi_802f1c84, global
	.string "c_babyyoshi"
.endobj str_c_babyyoshi_802f1c84

# .rodata:0x1538 | 0x802F1C90 | size: 0x8
.obj str_PYS_Z_1_802f1c90, global
	.string "PYS_Z_1"
.endobj str_PYS_Z_1_802f1c90

# .rodata:0x1540 | 0x802F1C98 | size: 0x17
.obj str_btl_un_gullible_clau_802f1c98, global
	.string "btl_un_gullible_clauda"
.endobj str_btl_un_gullible_clau_802f1c98
	.byte 0x00

# .rodata:0x1558 | 0x802F1CB0 | size: 0x8
.obj str_c_windy_802f1cb0, global
	.string "c_windy"
.endobj str_c_windy_802f1cb0

# .rodata:0x1560 | 0x802F1CB8 | size: 0x8
.obj str_PWD_Z_1_802f1cb8, global
	.string "PWD_Z_1"
.endobj str_PWD_Z_1_802f1cb8

# .rodata:0x1568 | 0x802F1CC0 | size: 0xE
.obj str_btl_un_hermos_802f1cc0, global
	.string "btl_un_hermos"
.endobj str_btl_un_hermos_802f1cc0
	.2byte 0x0000

# .rodata:0x1578 | 0x802F1CD0 | size: 0xF
.obj str_btl_hlp_hermos_802f1cd0, global
	.string "btl_hlp_hermos"
.endobj str_btl_hlp_hermos_802f1cd0
	.byte 0x00

# .rodata:0x1588 | 0x802F1CE0 | size: 0xF
.obj str_menu_enemy_081_802f1ce0, global
	.string "menu_enemy_081"
.endobj str_menu_enemy_081_802f1ce0
	.byte 0x00

# .rodata:0x1598 | 0x802F1CF0 | size: 0x8
.obj str_c_elmos_802f1cf0, global
	.string "c_elmos"
.endobj str_c_elmos_802f1cf0

# .rodata:0x15A0 | 0x802F1CF8 | size: 0x12
.obj str_menu_monosiri_muj_802f1cf8, global
	.string "menu_monosiri_muj"
.endobj str_menu_monosiri_muj_802f1cf8
	.2byte 0x0000

# .rodata:0x15B4 | 0x802F1D0C | size: 0xE
.obj str_btl_un_bubble_802f1d0c, global
	.string "btl_un_bubble"
.endobj str_btl_un_bubble_802f1d0c
	.2byte 0x0000

# .rodata:0x15C4 | 0x802F1D1C | size: 0xF
.obj str_btl_hlp_bubble_802f1d1c, global
	.string "btl_hlp_bubble"
.endobj str_btl_hlp_bubble_802f1d1c
	.byte 0x00

# .rodata:0x15D4 | 0x802F1D2C | size: 0xF
.obj str_menu_enemy_080_802f1d2c, global
	.string "menu_enemy_080"
.endobj str_menu_enemy_080_802f1d2c
	.byte 0x00

# .rodata:0x15E4 | 0x802F1D3C | size: 0x9
.obj str_c_bubble_802f1d3c, global
	.string "c_bubble"
.endobj str_c_bubble_802f1d3c
	.byte 0x00, 0x00, 0x00

# .rodata:0x15F0 | 0x802F1D48 | size: 0x12
.obj str_menu_monosiri_dou_802f1d48, global
	.string "menu_monosiri_dou"
.endobj str_menu_monosiri_dou_802f1d48
	.2byte 0x0000

# .rodata:0x1604 | 0x802F1D5C | size: 0x16
.obj str_btl_un_green_chorobo_802f1d5c, global
	.string "btl_un_green_chorobon"
.endobj str_btl_un_green_chorobo_802f1d5c
	.2byte 0x0000

# .rodata:0x161C | 0x802F1D74 | size: 0x17
.obj str_btl_hlp_green_chorob_802f1d74, global
	.string "btl_hlp_green_chorobon"
.endobj str_btl_hlp_green_chorob_802f1d74
	.byte 0x00

# .rodata:0x1634 | 0x802F1D8C | size: 0xF
.obj str_menu_enemy_042_802f1d8c, global
	.string "menu_enemy_042"
.endobj str_menu_enemy_042_802f1d8c
	.byte 0x00

# .rodata:0x1644 | 0x802F1D9C | size: 0xD
.obj str_c_chorobon_g_802f1d9c, global
	.string "c_chorobon_g"
.endobj str_c_chorobon_g_802f1d9c
	.byte 0x00, 0x00, 0x00

# .rodata:0x1654 | 0x802F1DAC | size: 0x17
.obj str_btl_un_flower_chorob_802f1dac, global
	.string "btl_un_flower_chorobon"
.endobj str_btl_un_flower_chorob_802f1dac
	.byte 0x00

# .rodata:0x166C | 0x802F1DC4 | size: 0x18
.obj str_btl_hlp_flower_choro_802f1dc4, global
	.string "btl_hlp_flower_chorobon"
.endobj str_btl_hlp_flower_choro_802f1dc4

# .rodata:0x1684 | 0x802F1DDC | size: 0xF
.obj str_menu_enemy_043_802f1ddc, global
	.string "menu_enemy_043"
.endobj str_menu_enemy_043_802f1ddc
	.byte 0x00

# .rodata:0x1694 | 0x802F1DEC | size: 0xD
.obj str_c_chorobon_f_802f1dec, global
	.string "c_chorobon_f"
.endobj str_c_chorobon_f_802f1dec
	.byte 0x00, 0x00, 0x00

# .rodata:0x16A4 | 0x802F1DFC | size: 0x15
.obj str_btl_un_poison_pakkun_802f1dfc, global
	.string "btl_un_poison_pakkun"
.endobj str_btl_un_poison_pakkun_802f1dfc
	.byte 0x00, 0x00, 0x00

# .rodata:0x16BC | 0x802F1E14 | size: 0x16
.obj str_btl_hlp_poison_pakku_802f1e14, global
	.string "btl_hlp_poison_pakkun"
.endobj str_btl_hlp_poison_pakku_802f1e14
	.2byte 0x0000

# .rodata:0x16D4 | 0x802F1E2C | size: 0xF
.obj str_menu_enemy_046_802f1e2c, global
	.string "menu_enemy_046"
.endobj str_menu_enemy_046_802f1e2c
	.byte 0x00

# .rodata:0x16E4 | 0x802F1E3C | size: 0xC
.obj str_c_pakflwr_p_802f1e3c, global
	.string "c_pakflwr_p"
.endobj str_c_pakflwr_p_802f1e3c

# .rodata:0x16F0 | 0x802F1E48 | size: 0xF
.obj str_btl_un_patamet_802f1e48, global
	.string "btl_un_patamet"
.endobj str_btl_un_patamet_802f1e48
	.byte 0x00

# .rodata:0x1700 | 0x802F1E58 | size: 0x10
.obj str_btl_hlp_patamet_802f1e58, global
	.string "btl_hlp_patamet"
.endobj str_btl_hlp_patamet_802f1e58

# .rodata:0x1710 | 0x802F1E68 | size: 0xF
.obj str_menu_enemy_050_802f1e68, global
	.string "menu_enemy_050"
.endobj str_menu_enemy_050_802f1e68
	.byte 0x00

# .rodata:0x1720 | 0x802F1E78 | size: 0x8
.obj str_PMT_Z_1_802f1e78, global
	.string "PMT_Z_1"
.endobj str_PMT_Z_1_802f1e78

# .rodata:0x1728 | 0x802F1E80 | size: 0x15
.obj str_btl_un_killer_cannon_802f1e80, global
	.string "btl_un_killer_cannon"
.endobj str_btl_un_killer_cannon_802f1e80
	.byte 0x00, 0x00, 0x00

# .rodata:0x1740 | 0x802F1E98 | size: 0x16
.obj str_btl_hlp_killer_canno_802f1e98, global
	.string "btl_hlp_killer_cannon"
.endobj str_btl_hlp_killer_canno_802f1e98
	.2byte 0x0000

# .rodata:0x1758 | 0x802F1EB0 | size: 0xF
.obj str_menu_enemy_059_802f1eb0, global
	.string "menu_enemy_059"
.endobj str_menu_enemy_059_802f1eb0
	.byte 0x00

# .rodata:0x1768 | 0x802F1EC0 | size: 0xA
.obj str_c_killtai_802f1ec0, global
	.string "c_killtai"
.endobj str_c_killtai_802f1ec0
	.2byte 0x0000

# .rodata:0x1774 | 0x802F1ECC | size: 0x8
.obj str_KTA_Z_1_802f1ecc, global
	.string "KTA_Z_1"
.endobj str_KTA_Z_1_802f1ecc

# .rodata:0x177C | 0x802F1ED4 | size: 0xE
.obj str_btl_un_killer_802f1ed4, global
	.string "btl_un_killer"
.endobj str_btl_un_killer_802f1ed4
	.2byte 0x0000

# .rodata:0x178C | 0x802F1EE4 | size: 0xF
.obj str_btl_hlp_killer_802f1ee4, global
	.string "btl_hlp_killer"
.endobj str_btl_hlp_killer_802f1ee4
	.byte 0x00

# .rodata:0x179C | 0x802F1EF4 | size: 0xF
.obj str_menu_enemy_057_802f1ef4, global
	.string "menu_enemy_057"
.endobj str_menu_enemy_057_802f1ef4
	.byte 0x00

# .rodata:0x17AC | 0x802F1F04 | size: 0x7
.obj str_c_kilr_802f1f04, global
	.string "c_kilr"
.endobj str_c_kilr_802f1f04
	.byte 0x00

# .rodata:0x17B4 | 0x802F1F0C | size: 0x8
.obj str_KIL_Z_1_802f1f0c, global
	.string "KIL_Z_1"
.endobj str_KIL_Z_1_802f1f0c

# .rodata:0x17BC | 0x802F1F14 | size: 0x11
.obj str_btl_un_heavy_bom_802f1f14, global
	.string "btl_un_heavy_bom"
.endobj str_btl_un_heavy_bom_802f1f14
	.byte 0x00, 0x00, 0x00

# .rodata:0x17D0 | 0x802F1F28 | size: 0x12
.obj str_btl_hlp_heavy_bom_802f1f28, global
	.string "btl_hlp_heavy_bom"
.endobj str_btl_hlp_heavy_bom_802f1f28
	.2byte 0x0000

# .rodata:0x17E4 | 0x802F1F3C | size: 0xF
.obj str_menu_enemy_064_802f1f3c, global
	.string "menu_enemy_064"
.endobj str_menu_enemy_064_802f1f3c
	.byte 0x00

# .rodata:0x17F4 | 0x802F1F4C | size: 0x8
.obj str_c_heavy_802f1f4c, global
	.string "c_heavy"
.endobj str_c_heavy_802f1f4c

# .rodata:0x17FC | 0x802F1F54 | size: 0xE
.obj str_btl_un_cortez_802f1f54, global
	.string "btl_un_cortez"
.endobj str_btl_un_cortez_802f1f54
	.2byte 0x0000

# .rodata:0x180C | 0x802F1F64 | size: 0xF
.obj str_btl_hlp_cortez_802f1f64, global
	.string "btl_hlp_cortez"
.endobj str_btl_hlp_cortez_802f1f64
	.byte 0x00

# .rodata:0x181C | 0x802F1F74 | size: 0xF
.obj str_menu_enemy_132_802f1f74, global
	.string "menu_enemy_132"
.endobj str_menu_enemy_132_802f1f74
	.byte 0x00

# .rodata:0x182C | 0x802F1F84 | size: 0xC
.obj str_c_korutesu1_802f1f84, global
	.string "c_korutesu1"
.endobj str_c_korutesu1_802f1f84

# .rodata:0x1838 | 0x802F1F90 | size: 0x8
.obj str_KRT_Z_1_802f1f90, global
	.string "KRT_Z_1"
.endobj str_KRT_Z_1_802f1f90

# .rodata:0x1840 | 0x802F1F98 | size: 0x10
.obj str_btl_un_honeduka_802f1f98, global
	.string "btl_un_honeduka"
.endobj str_btl_un_honeduka_802f1f98

# .rodata:0x1850 | 0x802F1FA8 | size: 0xB
.obj str_c_honezuka_802f1fa8, global
	.string "c_honezuka"
.endobj str_c_honezuka_802f1fa8
	.byte 0x00

# .rodata:0x185C | 0x802F1FB4 | size: 0x13
.obj str_btl_un_cortez_claw_802f1fb4, global
	.string "btl_un_cortez_claw"
.endobj str_btl_un_cortez_claw_802f1fb4
	.byte 0x00

# .rodata:0x1870 | 0x802F1FC8 | size: 0x8
.obj str_c_buki4_802f1fc8, global
	.string "c_buki4"
.endobj str_c_buki4_802f1fc8

# .rodata:0x1878 | 0x802F1FD0 | size: 0x15
.obj str_btl_un_cortez_rapier_802f1fd0, global
	.string "btl_un_cortez_rapier"
.endobj str_btl_un_cortez_rapier_802f1fd0
	.byte 0x00, 0x00, 0x00

# .rodata:0x1890 | 0x802F1FE8 | size: 0x8
.obj str_c_buki3_802f1fe8, global
	.string "c_buki3"
.endobj str_c_buki3_802f1fe8

# .rodata:0x1898 | 0x802F1FF0 | size: 0x14
.obj str_btl_un_cortez_sword_802f1ff0, global
	.string "btl_un_cortez_sword"
.endobj str_btl_un_cortez_sword_802f1ff0

# .rodata:0x18AC | 0x802F2004 | size: 0x8
.obj str_c_buki2_802f2004, global
	.string "c_buki2"
.endobj str_c_buki2_802f2004

# .rodata:0x18B4 | 0x802F200C | size: 0x14
.obj str_btl_un_cortez_saber_802f200c, global
	.string "btl_un_cortez_saber"
.endobj str_btl_un_cortez_saber_802f200c

# .rodata:0x18C8 | 0x802F2020 | size: 0x8
.obj str_c_buki1_802f2020, global
	.string "c_buki1"
.endobj str_c_buki1_802f2020

# .rodata:0x18D0 | 0x802F2028 | size: 0xE
.obj str_btl_un_kanbu3_802f2028, global
	.string "btl_un_kanbu3"
.endobj str_btl_un_kanbu3_802f2028
	.2byte 0x0000

# .rodata:0x18E0 | 0x802F2038 | size: 0xF
.obj str_btl_hlp_kanbu3_802f2038, global
	.string "btl_hlp_kanbu3"
.endobj str_btl_hlp_kanbu3_802f2038
	.byte 0x00

# .rodata:0x18F0 | 0x802F2048 | size: 0xF
.obj str_menu_enemy_144_802f2048, global
	.string "menu_enemy_144"
.endobj str_menu_enemy_144_802f2048
	.byte 0x00

# .rodata:0x1900 | 0x802F2058 | size: 0x1A
.obj str_btl_un_gundan_zako_g_802f2058, global
	.string "btl_un_gundan_zako_group1"
.endobj str_btl_un_gundan_zako_g_802f2058
	.2byte 0x0000

# .rodata:0x191C | 0x802F2074 | size: 0x1B
.obj str_btl_hlp_gundan_zako__802f2074, global
	.string "btl_hlp_gundan_zako_group1"
.endobj str_btl_hlp_gundan_zako__802f2074
	.byte 0x00

# .rodata:0x1938 | 0x802F2090 | size: 0x1A
.obj str_btl_un_gundan_zako_g_802f2090, global
	.string "btl_un_gundan_zako_group2"
.endobj str_btl_un_gundan_zako_g_802f2090
	.2byte 0x0000

# .rodata:0x1954 | 0x802F20AC | size: 0x1A
.obj str_btl_un_gundan_zako_g_802f20ac, global
	.string "btl_un_gundan_zako_group3"
.endobj str_btl_un_gundan_zako_g_802f20ac
	.2byte 0x0000

# .rodata:0x1970 | 0x802F20C8 | size: 0x12
.obj str_btl_un_kurokumorn_802f20c8, global
	.string "btl_un_kurokumorn"
.endobj str_btl_un_kurokumorn_802f20c8
	.2byte 0x0000

# .rodata:0x1984 | 0x802F20DC | size: 0x13
.obj str_btl_hlp_kurokumorn_802f20dc, global
	.string "btl_hlp_kurokumorn"
.endobj str_btl_hlp_kurokumorn_802f20dc
	.byte 0x00

# .rodata:0x1998 | 0x802F20F0 | size: 0xF
.obj str_menu_enemy_065_802f20f0, global
	.string "menu_enemy_065"
.endobj str_menu_enemy_065_802f20f0
	.byte 0x00

# .rodata:0x19A8 | 0x802F2100 | size: 0x8
.obj str_c_kmoon_802f2100, global
	.string "c_kmoon"
.endobj str_c_kmoon_802f2100

# .rodata:0x19B0 | 0x802F2108 | size: 0x12
.obj str_menu_monosiri_eki_802f2108, global
	.string "menu_monosiri_eki"
.endobj str_menu_monosiri_eki_802f2108
	.2byte 0x0000

# .rodata:0x19C4 | 0x802F211C | size: 0x13
.obj str_btl_un_sambo_mummy_802f211c, global
	.string "btl_un_sambo_mummy"
.endobj str_btl_un_sambo_mummy_802f211c
	.byte 0x00

# .rodata:0x19D8 | 0x802F2130 | size: 0x14
.obj str_btl_hlp_sambo_mummy_802f2130, global
	.string "btl_hlp_sambo_mummy"
.endobj str_btl_hlp_sambo_mummy_802f2130

# .rodata:0x19EC | 0x802F2144 | size: 0xF
.obj str_menu_enemy_056_802f2144, global
	.string "menu_enemy_056"
.endobj str_menu_enemy_056_802f2144
	.byte 0x00

# .rodata:0x19FC | 0x802F2154 | size: 0xA
.obj str_c_sanbo_m_802f2154, global
	.string "c_sanbo_m"
.endobj str_c_sanbo_m_802f2154
	.2byte 0x0000

# .rodata:0x1A08 | 0x802F2160 | size: 0x13
.obj str_btl_un_patatogemet_802f2160, global
	.string "btl_un_patatogemet"
.endobj str_btl_un_patatogemet_802f2160
	.byte 0x00

# .rodata:0x1A1C | 0x802F2174 | size: 0x14
.obj str_btl_hlp_patatogemet_802f2174, global
	.string "btl_hlp_patatogemet"
.endobj str_btl_hlp_patatogemet_802f2174

# .rodata:0x1A30 | 0x802F2188 | size: 0xF
.obj str_menu_enemy_051_802f2188, global
	.string "menu_enemy_051"
.endobj str_menu_enemy_051_802f2188
	.byte 0x00

# .rodata:0x1A40 | 0x802F2198 | size: 0x8
.obj str_PTM_Z_1_802f2198, global
	.string "PTM_Z_1"
.endobj str_PTM_Z_1_802f2198

# .rodata:0x1A48 | 0x802F21A0 | size: 0x15
.obj str_btl_un_purple_teresa_802f21a0, global
	.string "btl_un_purple_teresa"
.endobj str_btl_un_purple_teresa_802f21a0
	.byte 0x00, 0x00, 0x00

# .rodata:0x1A60 | 0x802F21B8 | size: 0x16
.obj str_btl_hlp_purple_teres_802f21b8, global
	.string "btl_hlp_purple_teresa"
.endobj str_btl_hlp_purple_teres_802f21b8
	.2byte 0x0000

# .rodata:0x1A78 | 0x802F21D0 | size: 0xF
.obj str_menu_enemy_053_802f21d0, global
	.string "menu_enemy_053"
.endobj str_menu_enemy_053_802f21d0
	.byte 0x00

# .rodata:0x1A88 | 0x802F21E0 | size: 0xB
.obj str_c_teresa_p_802f21e0, global
	.string "c_teresa_p"
.endobj str_c_teresa_p_802f21e0
	.byte 0x00

# .rodata:0x1A94 | 0x802F21EC | size: 0x12
.obj str_menu_monosiri_sin_802f21ec, global
	.string "menu_monosiri_sin"
.endobj str_menu_monosiri_sin_802f21ec
	.2byte 0x0000

# .rodata:0x1AA8 | 0x802F2200 | size: 0xE
.obj str_btl_un_moamoa_802f2200, global
	.string "btl_un_moamoa"
.endobj str_btl_un_moamoa_802f2200
	.2byte 0x0000

# .rodata:0x1AB8 | 0x802F2210 | size: 0xF
.obj str_btl_hlp_moamoa_802f2210, global
	.string "btl_hlp_moamoa"
.endobj str_btl_hlp_moamoa_802f2210
	.byte 0x00

# .rodata:0x1AC8 | 0x802F2220 | size: 0xF
.obj str_menu_enemy_118_802f2220, global
	.string "menu_enemy_118"
.endobj str_menu_enemy_118_802f2220
	.byte 0x00

# .rodata:0x1AD8 | 0x802F2230 | size: 0xB
.obj str_c_g_moamoa_802f2230, global
	.string "c_g_moamoa"
.endobj str_c_g_moamoa_802f2230
	.byte 0x00

# .rodata:0x1AE4 | 0x802F223C | size: 0x12
.obj str_menu_monosiri_rsh_802f223c, global
	.string "menu_monosiri_rsh"
.endobj str_menu_monosiri_rsh_802f223c
	.2byte 0x0000

# .rodata:0x1AF8 | 0x802F2250 | size: 0x19
.obj str_btl_un_moamoa_tentac_802f2250, global
	.string "btl_un_moamoa_tentacle_a"
.endobj str_btl_un_moamoa_tentac_802f2250
	.byte 0x00, 0x00, 0x00

# .rodata:0x1B14 | 0x802F226C | size: 0x18
.obj str_btl_un_moamoa_tentac_802f226c, global
	.string "btl_un_moamoa_tentacl_b"
.endobj str_btl_un_moamoa_tentac_802f226c

# .rodata:0x1B2C | 0x802F2284 | size: 0x19
.obj str_btl_un_moamoa_tentac_802f2284, global
	.string "btl_un_moamoa_tentacle_c"
.endobj str_btl_un_moamoa_tentac_802f2284
	.byte 0x00, 0x00, 0x00

# .rodata:0x1B48 | 0x802F22A0 | size: 0x14
.obj str_btl_un_moamoa_mouth_802f22a0, global
	.string "btl_un_moamoa_mouth"
.endobj str_btl_un_moamoa_mouth_802f22a0

# .rodata:0x1B5C | 0x802F22B4 | size: 0x10
.obj str_btl_un_bllizard_802f22b4, global
	.string "btl_un_bllizard"
.endobj str_btl_un_bllizard_802f22b4

# .rodata:0x1B6C | 0x802F22C4 | size: 0x11
.obj str_btl_hlp_bllizard_802f22c4, global
	.string "btl_hlp_bllizard"
.endobj str_btl_hlp_bllizard_802f22c4
	.byte 0x00, 0x00, 0x00

# .rodata:0x1B80 | 0x802F22D8 | size: 0xF
.obj str_menu_enemy_066_802f22d8, global
	.string "menu_enemy_066"
.endobj str_menu_enemy_066_802f22d8
	.byte 0x00

# .rodata:0x1B90 | 0x802F22E8 | size: 0xA
.obj str_c_kmoon_b_802f22e8, global
	.string "c_kmoon_b"
.endobj str_c_kmoon_b_802f22e8
	.2byte 0x0000

# .rodata:0x1B9C | 0x802F22F4 | size: 0x12
.obj str_menu_monosiri_bom_802f22f4, global
	.string "menu_monosiri_bom"
.endobj str_menu_monosiri_bom_802f22f4
	.2byte 0x0000

# .rodata:0x1BB0 | 0x802F2308 | size: 0x12
.obj str_btl_un_ice_pakkun_802f2308, global
	.string "btl_un_ice_pakkun"
.endobj str_btl_un_ice_pakkun_802f2308
	.2byte 0x0000

# .rodata:0x1BC4 | 0x802F231C | size: 0x13
.obj str_btl_hlp_ice_pakkun_802f231c, global
	.string "btl_hlp_ice_pakkun"
.endobj str_btl_hlp_ice_pakkun_802f231c
	.byte 0x00

# .rodata:0x1BD8 | 0x802F2330 | size: 0xF
.obj str_menu_enemy_047_802f2330, global
	.string "menu_enemy_047"
.endobj str_menu_enemy_047_802f2330
	.byte 0x00

# .rodata:0x1BE8 | 0x802F2340 | size: 0xC
.obj str_c_pakflwr_a_802f2340, global
	.string "c_pakflwr_a"
.endobj str_c_pakflwr_a_802f2340

# .rodata:0x1BF4 | 0x802F234C | size: 0xF
.obj str_btl_un_sinemon_802f234c, global
	.string "btl_un_sinemon"
.endobj str_btl_un_sinemon_802f234c
	.byte 0x00

# .rodata:0x1C04 | 0x802F235C | size: 0x10
.obj str_btl_hlp_sinemon_802f235c, global
	.string "btl_hlp_sinemon"
.endobj str_btl_hlp_sinemon_802f235c

# .rodata:0x1C14 | 0x802F236C | size: 0xF
.obj str_menu_enemy_034_802f236c, global
	.string "menu_enemy_034"
.endobj str_menu_enemy_034_802f236c
	.byte 0x00

# .rodata:0x1C24 | 0x802F237C | size: 0xA
.obj str_c_sinemon_802f237c, global
	.string "c_sinemon"
.endobj str_c_sinemon_802f237c
	.2byte 0x0000

# .rodata:0x1C30 | 0x802F2388 | size: 0x12
.obj str_menu_monosiri_moo_802f2388, global
	.string "menu_monosiri_moo"
.endobj str_menu_monosiri_moo_802f2388
	.2byte 0x0000

# .rodata:0x1C44 | 0x802F239C | size: 0x12
.obj str_btl_un_barriern_z_802f239c, global
	.string "btl_un_barriern_z"
.endobj str_btl_un_barriern_z_802f239c
	.2byte 0x0000

# .rodata:0x1C58 | 0x802F23B0 | size: 0x13
.obj str_btl_hlp_barriern_z_802f23b0, global
	.string "btl_hlp_barriern_z"
.endobj str_btl_hlp_barriern_z_802f23b0
	.byte 0x00

# .rodata:0x1C6C | 0x802F23C4 | size: 0xF
.obj str_menu_enemy_073_802f23c4, global
	.string "menu_enemy_073"
.endobj str_menu_enemy_073_802f23c4
	.byte 0x00

# .rodata:0x1C7C | 0x802F23D4 | size: 0xA
.obj str_c_baria_z_802f23d4, global
	.string "c_baria_z"
.endobj str_c_baria_z_802f23d4
	.2byte 0x0000

# .rodata:0x1C88 | 0x802F23E0 | size: 0x1C
.obj str_btl_un_barriern_sate_802f23e0, global
	.string "btl_un_barriern_satellite_z"
.endobj str_btl_un_barriern_sate_802f23e0

# .rodata:0x1CA4 | 0x802F23FC | size: 0x19
.obj str_btl_hlp_barriern_z_p_802f23fc, global
	.string "btl_hlp_barriern_z_petit"
.endobj str_btl_hlp_barriern_z_p_802f23fc
	.byte 0x00, 0x00, 0x00

# .rodata:0x1CC0 | 0x802F2418 | size: 0xF
.obj str_menu_enemy_074_802f2418, global
	.string "menu_enemy_074"
.endobj str_menu_enemy_074_802f2418
	.byte 0x00

# .rodata:0x1CD0 | 0x802F2428 | size: 0x17
.obj str_btl_un_barriern_cust_802f2428, global
	.string "btl_un_barriern_custom"
.endobj str_btl_un_barriern_cust_802f2428
	.byte 0x00

# .rodata:0x1CE8 | 0x802F2440 | size: 0x18
.obj str_btl_hlp_barriern_cus_802f2440, global
	.string "btl_hlp_barriern_custom"
.endobj str_btl_hlp_barriern_cus_802f2440

# .rodata:0x1D00 | 0x802F2458 | size: 0xF
.obj str_menu_enemy_179_802f2458, global
	.string "menu_enemy_179"
.endobj str_menu_enemy_179_802f2458
	.byte 0x00

# .rodata:0x1D10 | 0x802F2468 | size: 0xA
.obj str_c_baria_c_802f2468, global
	.string "c_baria_c"
.endobj str_c_baria_c_802f2468
	.2byte 0x0000

# .rodata:0x1D1C | 0x802F2474 | size: 0x12
.obj str_menu_monosiri_aji_802f2474, global
	.string "menu_monosiri_aji"
.endobj str_menu_monosiri_aji_802f2474
	.2byte 0x0000

# .rodata:0x1D30 | 0x802F2488 | size: 0x21
.obj str_btl_un_barriern_cust_802f2488, global
	.string "btl_un_barriern_custom_satellite"
.endobj str_btl_un_barriern_cust_802f2488
	.byte 0x00, 0x00, 0x00

# .rodata:0x1D54 | 0x802F24AC | size: 0x22
.obj str_btl_hlp_barriern_cus_802f24ac, global
	.string "btl_hlp_barriern_custom_satellite"
.endobj str_btl_hlp_barriern_cus_802f24ac
	.2byte 0x0000

# .rodata:0x1D78 | 0x802F24D0 | size: 0xF
.obj str_menu_enemy_180_802f24d0, global
	.string "menu_enemy_180"
.endobj str_menu_enemy_180_802f24d0
	.byte 0x00

# .rodata:0x1D88 | 0x802F24E0 | size: 0x1C
.obj str_btl_un_gundan_zako_m_802f24e0, global
	.string "btl_un_gundan_zako_magician"
.endobj str_btl_un_gundan_zako_m_802f24e0

# .rodata:0x1DA4 | 0x802F24FC | size: 0x1D
.obj str_btl_hlp_gundan_zako__802f24fc, global
	.string "btl_hlp_gundan_zako_magician"
.endobj str_btl_hlp_gundan_zako__802f24fc
	.byte 0x00, 0x00, 0x00

# .rodata:0x1DC4 | 0x802F251C | size: 0xF
.obj str_menu_enemy_075_802f251c, global
	.string "menu_enemy_075"
.endobj str_menu_enemy_075_802f251c
	.byte 0x00

# .rodata:0x1DD4 | 0x802F252C | size: 0x9
.obj str_c_zako_m_802f252c, global
	.string "c_zako_m"
.endobj str_c_zako_m_802f252c
	.byte 0x00, 0x00, 0x00

# .rodata:0x1DE0 | 0x802F2538 | size: 0x19
.obj str_btl_un_gundan_zako_e_802f2538, global
	.string "btl_un_gundan_zako_elite"
.endobj str_btl_un_gundan_zako_e_802f2538
	.byte 0x00, 0x00, 0x00

# .rodata:0x1DFC | 0x802F2554 | size: 0x1A
.obj str_btl_hlp_gundan_zako__802f2554, global
	.string "btl_hlp_gundan_zako_elite"
.endobj str_btl_hlp_gundan_zako__802f2554
	.2byte 0x0000

# .rodata:0x1E18 | 0x802F2570 | size: 0xF
.obj str_menu_enemy_076_802f2570, global
	.string "menu_enemy_076"
.endobj str_menu_enemy_076_802f2570
	.byte 0x00

# .rodata:0x1E28 | 0x802F2580 | size: 0x9
.obj str_c_zako_e_802f2580, global
	.string "c_zako_e"
.endobj str_c_zako_e_802f2580
	.byte 0x00, 0x00, 0x00

# .rodata:0x1E34 | 0x802F258C | size: 0x1D
.obj str_btl_un_magnum_batten_802f258c, global
	.string "btl_un_magnum_battender_mkii"
.endobj str_btl_un_magnum_batten_802f258c
	.byte 0x00, 0x00, 0x00

# .rodata:0x1E54 | 0x802F25AC | size: 0x1E
.obj str_btl_hlp_magnum_batte_802f25ac, global
	.string "btl_hlp_magnum_battender_mkII"
.endobj str_btl_hlp_magnum_batte_802f25ac
	.2byte 0x0000

# .rodata:0x1E74 | 0x802F25CC | size: 0xF
.obj str_menu_enemy_140_802f25cc, global
	.string "menu_enemy_140"
.endobj str_menu_enemy_140_802f25cc
	.byte 0x00

# .rodata:0x1E84 | 0x802F25DC | size: 0xD
.obj str_c_mb_robo_2b_802f25dc, global
	.string "c_mb_robo_2b"
.endobj str_c_mb_robo_2b_802f25dc
	.byte 0x00, 0x00, 0x00

# .rodata:0x1E94 | 0x802F25EC | size: 0x19
.obj str_btl_un_rocket_punch__802f25ec, global
	.string "btl_un_rocket_punch_mkii"
.endobj str_btl_un_rocket_punch__802f25ec
	.byte 0x00, 0x00, 0x00

# .rodata:0x1EB0 | 0x802F2608 | size: 0x18
.obj str_btl_un_basabasa_chur_802f2608, global
	.string "btl_un_basabasa_chururu"
.endobj str_btl_un_basabasa_chur_802f2608

# .rodata:0x1EC8 | 0x802F2620 | size: 0x19
.obj str_btl_hlp_basabasa_chu_802f2620, global
	.string "btl_hlp_basabasa_chururu"
.endobj str_btl_hlp_basabasa_chu_802f2620
	.byte 0x00, 0x00, 0x00

# .rodata:0x1EE4 | 0x802F263C | size: 0xF
.obj str_menu_enemy_041_802f263c, global
	.string "menu_enemy_041"
.endobj str_menu_enemy_041_802f263c
	.byte 0x00

# .rodata:0x1EF4 | 0x802F264C | size: 0x8
.obj str_c_cyuru_802f264c, global
	.string "c_cyuru"
.endobj str_c_cyuru_802f264c

# .rodata:0x1EFC | 0x802F2654 | size: 0x12
.obj str_menu_monosiri_las_802f2654, global
	.string "menu_monosiri_las"
.endobj str_menu_monosiri_las_802f2654
	.2byte 0x0000

# .rodata:0x1F10 | 0x802F2668 | size: 0xF
.obj str_btl_un_phantom_802f2668, global
	.string "btl_un_phantom"
.endobj str_btl_un_phantom_802f2668
	.byte 0x00

# .rodata:0x1F20 | 0x802F2678 | size: 0x10
.obj str_btl_hlp_phantom_802f2678, global
	.string "btl_hlp_phantom"
.endobj str_btl_hlp_phantom_802f2678

# .rodata:0x1F30 | 0x802F2688 | size: 0xF
.obj str_menu_enemy_178_802f2688, global
	.string "menu_enemy_178"
.endobj str_menu_enemy_178_802f2688
	.byte 0x00

# .rodata:0x1F40 | 0x802F2698 | size: 0xA
.obj str_c_phantom_802f2698, global
	.string "c_phantom"
.endobj str_c_phantom_802f2698
	.2byte 0x0000

# .rodata:0x1F4C | 0x802F26A4 | size: 0x1B
.obj str_btl_un_super_killer__802f26a4, global
	.string "btl_un_super_killer_cannon"
.endobj str_btl_un_super_killer__802f26a4
	.byte 0x00

# .rodata:0x1F68 | 0x802F26C0 | size: 0x1C
.obj str_btl_hlp_super_killer_802f26c0, global
	.string "btl_hlp_super_killer_cannon"
.endobj str_btl_hlp_super_killer_802f26c0

# .rodata:0x1F84 | 0x802F26DC | size: 0xF
.obj str_menu_enemy_060_802f26dc, global
	.string "menu_enemy_060"
.endobj str_menu_enemy_060_802f26dc
	.byte 0x00

# .rodata:0x1F94 | 0x802F26EC | size: 0xC
.obj str_c_killtai_g_802f26ec, global
	.string "c_killtai_g"
.endobj str_c_killtai_g_802f26ec

# .rodata:0x1FA0 | 0x802F26F8 | size: 0x14
.obj str_btl_un_super_killer_802f26f8, global
	.string "btl_un_super_killer"
.endobj str_btl_un_super_killer_802f26f8

# .rodata:0x1FB4 | 0x802F270C | size: 0x15
.obj str_btl_hlp_super_killer_802f270c, global
	.string "btl_hlp_super_killer"
.endobj str_btl_hlp_super_killer_802f270c
	.byte 0x00, 0x00, 0x00

# .rodata:0x1FCC | 0x802F2724 | size: 0xF
.obj str_menu_enemy_058_802f2724, global
	.string "menu_enemy_058"
.endobj str_menu_enemy_058_802f2724
	.byte 0x00

# .rodata:0x1FDC | 0x802F2734 | size: 0x9
.obj str_c_kilr_g_802f2734, global
	.string "c_kilr_g"
.endobj str_c_kilr_g_802f2734
	.byte 0x00, 0x00, 0x00

# .rodata:0x1FE8 | 0x802F2740 | size: 0xE
.obj str_btl_un_wanwan_802f2740, global
	.string "btl_un_wanwan"
.endobj str_btl_un_wanwan_802f2740
	.2byte 0x0000

# .rodata:0x1FF8 | 0x802F2750 | size: 0xF
.obj str_btl_hlp_wanwan_802f2750, global
	.string "btl_hlp_wanwan"
.endobj str_btl_hlp_wanwan_802f2750
	.byte 0x00

# .rodata:0x2008 | 0x802F2760 | size: 0xF
.obj str_menu_enemy_079_802f2760, global
	.string "menu_enemy_079"
.endobj str_menu_enemy_079_802f2760
	.byte 0x00

# .rodata:0x2018 | 0x802F2770 | size: 0x9
.obj str_c_wanwan_802f2770, global
	.string "c_wanwan"
.endobj str_c_wanwan_802f2770
	.byte 0x00, 0x00, 0x00

# .rodata:0x2024 | 0x802F277C | size: 0x14
.obj str_btl_un_super_mahorn_802f277c, global
	.string "btl_un_super_mahorn"
.endobj str_btl_un_super_mahorn_802f277c

# .rodata:0x2038 | 0x802F2790 | size: 0x15
.obj str_btl_hlp_super_mahorn_802f2790, global
	.string "btl_hlp_super_mahorn"
.endobj str_btl_hlp_super_mahorn_802f2790
	.byte 0x00, 0x00, 0x00

# .rodata:0x2050 | 0x802F27A8 | size: 0xF
.obj str_menu_enemy_071_802f27a8, global
	.string "menu_enemy_071"
.endobj str_menu_enemy_071_802f27a8
	.byte 0x00

# .rodata:0x2060 | 0x802F27B8 | size: 0x9
.obj str_c_maho_b_802f27b8, global
	.string "c_maho_b"
.endobj str_c_maho_b_802f27b8
	.byte 0x00, 0x00, 0x00

# .rodata:0x206C | 0x802F27C4 | size: 0x8
.obj str_MAH_Z_M_802f27c4, global
	.string "MAH_Z_M"
.endobj str_MAH_Z_M_802f27c4

# .rodata:0x2074 | 0x802F27CC | size: 0x1B
.obj str_btl_un_super_mahorn__802f27cc, global
	.string "btl_un_super_mahorn_bunsin"
.endobj str_btl_un_super_mahorn__802f27cc
	.byte 0x00

# .rodata:0x2090 | 0x802F27E8 | size: 0x1C
.obj str_btl_hlp_super_mahorn_802f27e8, global
	.string "btl_hlp_super_mahorn_bunsin"
.endobj str_btl_hlp_super_mahorn_802f27e8

# .rodata:0x20AC | 0x802F2804 | size: 0xD
.obj str_btl_un_karon_802f2804, global
	.string "btl_un_karon"
.endobj str_btl_un_karon_802f2804
	.byte 0x00, 0x00, 0x00

# .rodata:0x20BC | 0x802F2814 | size: 0xE
.obj str_btl_hlp_karon_802f2814, global
	.string "btl_hlp_karon"
.endobj str_btl_hlp_karon_802f2814
	.2byte 0x0000

# .rodata:0x20CC | 0x802F2824 | size: 0xF
.obj str_menu_enemy_044_802f2824, global
	.string "menu_enemy_044"
.endobj str_menu_enemy_044_802f2824
	.byte 0x00

# .rodata:0x20DC | 0x802F2834 | size: 0xA
.obj str_c_karon_h_802f2834, global
	.string "c_karon_h"
.endobj str_c_karon_h_802f2834
	.2byte 0x0000

# .rodata:0x20E8 | 0x802F2840 | size: 0x13
.obj str_btl_un_black_karon_802f2840, global
	.string "btl_un_black_karon"
.endobj str_btl_un_black_karon_802f2840
	.byte 0x00

# .rodata:0x20FC | 0x802F2854 | size: 0x14
.obj str_btl_hlp_black_karon_802f2854, global
	.string "btl_hlp_black_karon"
.endobj str_btl_hlp_black_karon_802f2854

# .rodata:0x2110 | 0x802F2868 | size: 0xF
.obj str_menu_enemy_045_802f2868, global
	.string "menu_enemy_045"
.endobj str_menu_enemy_045_802f2868
	.byte 0x00

# .rodata:0x2120 | 0x802F2878 | size: 0xC
.obj str_c_karon_b_h_802f2878, global
	.string "c_karon_b_h"
.endobj str_c_karon_b_h_802f2878

# .rodata:0x212C | 0x802F2884 | size: 0xF
.obj str_btl_un_bunbaba_802f2884, global
	.string "btl_un_bunbaba"
.endobj str_btl_un_bunbaba_802f2884
	.byte 0x00

# .rodata:0x213C | 0x802F2894 | size: 0x10
.obj str_btl_hlp_bunbaba_802f2894, global
	.string "btl_hlp_bunbaba"
.endobj str_btl_hlp_bunbaba_802f2894

# .rodata:0x214C | 0x802F28A4 | size: 0xF
.obj str_menu_enemy_196_802f28a4, global
	.string "menu_enemy_196"
.endobj str_menu_enemy_196_802f28a4
	.byte 0x00

# .rodata:0x215C | 0x802F28B4 | size: 0xC
.obj str_c_gonbaba_b_802f28b4, global
	.string "c_gonbaba_b"
.endobj str_c_gonbaba_b_802f28b4

# .rodata:0x2168 | 0x802F28C0 | size: 0x11
.obj str_btl_un_majolyne4_802f28c0, global
	.string "btl_un_majolyne4"
.endobj str_btl_un_majolyne4_802f28c0
	.byte 0x00, 0x00, 0x00

# .rodata:0x217C | 0x802F28D4 | size: 0x12
.obj str_btl_hlp_majyorin2_802f28d4, global
	.string "btl_hlp_majyorin2"
.endobj str_btl_hlp_majyorin2_802f28d4
	.2byte 0x0000

# .rodata:0x2190 | 0x802F28E8 | size: 0xF
.obj str_menu_enemy_107_802f28e8, global
	.string "menu_enemy_107"
.endobj str_menu_enemy_107_802f28e8
	.byte 0x00

# .rodata:0x21A0 | 0x802F28F8 | size: 0x10
.obj str_btl_un_marilyn4_802f28f8, global
	.string "btl_un_marilyn4"
.endobj str_btl_un_marilyn4_802f28f8

# .rodata:0x21B0 | 0x802F2908 | size: 0x11
.obj str_btl_hlp_maririn2_802f2908, global
	.string "btl_hlp_maririn2"
.endobj str_btl_hlp_maririn2_802f2908
	.byte 0x00, 0x00, 0x00

# .rodata:0x21C4 | 0x802F291C | size: 0xF
.obj str_menu_enemy_111_802f291c, global
	.string "menu_enemy_111"
.endobj str_menu_enemy_111_802f291c
	.byte 0x00

# .rodata:0x21D4 | 0x802F292C | size: 0x14
.obj str_btl_hlp_ranperu_las_802f292c, global
	.string "btl_hlp_ranperu_las"
.endobj str_btl_hlp_ranperu_las_802f292c

# .rodata:0x21E8 | 0x802F2940 | size: 0xF
.obj str_menu_enemy_125_802f2940, global
	.string "menu_enemy_125"
.endobj str_menu_enemy_125_802f2940
	.byte 0x00

# .rodata:0x21F8 | 0x802F2950 | size: 0xE
.obj str_btl_hlp_koopa_802f2950, global
	.string "btl_hlp_koopa"
.endobj str_btl_hlp_koopa_802f2950
	.2byte 0x0000

# .rodata:0x2208 | 0x802F2960 | size: 0xF
.obj str_menu_enemy_149_802f2960, global
	.string "menu_enemy_149"
.endobj str_menu_enemy_149_802f2960
	.byte 0x00

# .rodata:0x2218 | 0x802F2970 | size: 0x13
.obj str_btl_un_kamec_obaba_802f2970, global
	.string "btl_un_kamec_obaba"
.endobj str_btl_un_kamec_obaba_802f2970
	.byte 0x00

# .rodata:0x222C | 0x802F2984 | size: 0x14
.obj str_btl_hlp_kamec_obaba_802f2984, global
	.string "btl_hlp_kamec_obaba"
.endobj str_btl_hlp_kamec_obaba_802f2984

# .rodata:0x2240 | 0x802F2998 | size: 0xF
.obj str_menu_enemy_150_802f2998, global
	.string "menu_enemy_150"
.endobj str_menu_enemy_150_802f2998
	.byte 0x00

# .rodata:0x2250 | 0x802F29A8 | size: 0xB
.obj str_c_kamek_bb_802f29a8, global
	.string "c_kamek_bb"
.endobj str_c_kamek_bb_802f29a8
	.byte 0x00

# .rodata:0x225C | 0x802F29B4 | size: 0x15
.obj str_btl_un_batten_leader_802f29b4, global
	.string "btl_un_batten_leader"
.endobj str_btl_un_batten_leader_802f29b4
	.byte 0x00, 0x00, 0x00

# .rodata:0x2274 | 0x802F29CC | size: 0x12
.obj str_btl_hlp_batsugalf_802f29cc, global
	.string "btl_hlp_batsugalf"
.endobj str_btl_hlp_batsugalf_802f29cc
	.2byte 0x0000

# .rodata:0x2288 | 0x802F29E0 | size: 0xF
.obj str_menu_enemy_151_802f29e0, global
	.string "menu_enemy_151"
.endobj str_menu_enemy_151_802f29e0
	.byte 0x00

# .rodata:0x2298 | 0x802F29F0 | size: 0x9
.obj str_c_shuryo_802f29f0, global
	.string "c_shuryo"
.endobj str_c_shuryo_802f29f0
	.byte 0x00, 0x00, 0x00

# .rodata:0x22A4 | 0x802F29FC | size: 0x18
.obj str_btl_un_batten_satell_802f29fc, global
	.string "btl_un_batten_satellite"
.endobj str_btl_un_batten_satell_802f29fc

# .rodata:0x22BC | 0x802F2A14 | size: 0x18
.obj str_btl_hlp_batsu_satell_802f2a14, global
	.string "btl_hlp_batsu_satellite"
.endobj str_btl_hlp_batsu_satell_802f2a14

# .rodata:0x22D4 | 0x802F2A2C | size: 0xF
.obj str_menu_enemy_152_802f2a2c, global
	.string "menu_enemy_152"
.endobj str_menu_enemy_152_802f2a2c
	.byte 0x00

# .rodata:0x22E4 | 0x802F2A3C | size: 0xB
.obj str_c_shuryo_p_802f2a3c, global
	.string "c_shuryo_p"
.endobj str_c_shuryo_p_802f2a3c
	.byte 0x00

# .rodata:0x22F0 | 0x802F2A48 | size: 0x13
.obj str_btl_un_black_peach_802f2a48, global
	.string "btl_un_black_peach"
.endobj str_btl_un_black_peach_802f2a48
	.byte 0x00

# .rodata:0x2304 | 0x802F2A5C | size: 0x15
.obj str_btl_hlp_shadowqueen1_802f2a5c, global
	.string "btl_hlp_shadowqueen1"
.endobj str_btl_hlp_shadowqueen1_802f2a5c
	.byte 0x00, 0x00, 0x00

# .rodata:0x231C | 0x802F2A74 | size: 0xC
.obj str_c_b_peach_b_802f2a74, global
	.string "c_b_peach_b"
.endobj str_c_b_peach_b_802f2a74

# .rodata:0x2328 | 0x802F2A80 | size: 0x14
.obj str_btl_un_shadow_queen_802f2a80, global
	.string "btl_un_shadow_queen"
.endobj str_btl_un_shadow_queen_802f2a80

# .rodata:0x233C | 0x802F2A94 | size: 0xB
.obj str_c_q_kage_m_802f2a94, global
	.string "c_q_kage_m"
.endobj str_c_q_kage_m_802f2a94
	.byte 0x00

# .rodata:0x2348 | 0x802F2AA0 | size: 0x15
.obj str_btl_hlp_shadowqueen2_802f2aa0, global
	.string "btl_hlp_shadowqueen2"
.endobj str_btl_hlp_shadowqueen2_802f2aa0
	.byte 0x00, 0x00, 0x00

# .rodata:0x2360 | 0x802F2AB8 | size: 0xF
.obj str_menu_enemy_154_802f2ab8, global
	.string "menu_enemy_154"
.endobj str_menu_enemy_154_802f2ab8
	.byte 0x00

# .rodata:0x2370 | 0x802F2AC8 | size: 0x9
.obj str_c_b_hand_802f2ac8, global
	.string "c_b_hand"
.endobj str_c_b_hand_802f2ac8
	.byte 0x00, 0x00, 0x00

# .rodata:0x237C | 0x802F2AD4 | size: 0x9
.obj str_c_s_hand_802f2ad4, global
	.string "c_s_hand"
.endobj str_c_s_hand_802f2ad4
	.byte 0x00, 0x00, 0x00

# .rodata:0x2388 | 0x802F2AE0 | size: 0x14
.obj str_btl_un_yami_kuriboo_802f2ae0, global
	.string "btl_un_yami_kuriboo"
.endobj str_btl_un_yami_kuriboo_802f2ae0

# .rodata:0x239C | 0x802F2AF4 | size: 0x15
.obj str_btl_hlp_yami_kuriboo_802f2af4, global
	.string "btl_hlp_yami_kuriboo"
.endobj str_btl_hlp_yami_kuriboo_802f2af4
	.byte 0x00, 0x00, 0x00

# .rodata:0x23B4 | 0x802F2B0C | size: 0xF
.obj str_menu_enemy_026_802f2b0c, global
	.string "menu_enemy_026"
.endobj str_menu_enemy_026_802f2b0c
	.byte 0x00

# .rodata:0x23C4 | 0x802F2B1C | size: 0xB
.obj str_c_kuribo_y_802f2b1c, global
	.string "c_kuribo_y"
.endobj str_c_kuribo_y_802f2b1c
	.byte 0x00

# .rodata:0x23D0 | 0x802F2B28 | size: 0x14
.obj str_menu_monosiri_shiga_802f2b28, global
	.string "menu_monosiri_shiga"
.endobj str_menu_monosiri_shiga_802f2b28

# .rodata:0x23E4 | 0x802F2B3C | size: 0x15
.obj str_btl_un_yami_patakuri_802f2b3c, global
	.string "btl_un_yami_patakuri"
.endobj str_btl_un_yami_patakuri_802f2b3c
	.byte 0x00, 0x00, 0x00

# .rodata:0x23FC | 0x802F2B54 | size: 0x16
.obj str_btl_hlp_yami_patakur_802f2b54, global
	.string "btl_hlp_yami_patakuri"
.endobj str_btl_hlp_yami_patakur_802f2b54
	.2byte 0x0000

# .rodata:0x2414 | 0x802F2B6C | size: 0xF
.obj str_menu_enemy_028_802f2b6c, global
	.string "menu_enemy_028"
.endobj str_menu_enemy_028_802f2b6c
	.byte 0x00

# .rodata:0x2424 | 0x802F2B7C | size: 0x15
.obj str_btl_un_yami_togekuri_802f2b7c, global
	.string "btl_un_yami_togekuri"
.endobj str_btl_un_yami_togekuri_802f2b7c
	.byte 0x00, 0x00, 0x00

# .rodata:0x243C | 0x802F2B94 | size: 0x16
.obj str_btl_hlp_yami_togekur_802f2b94, global
	.string "btl_hlp_yami_togekuri"
.endobj str_btl_hlp_yami_togekur_802f2b94
	.2byte 0x0000

# .rodata:0x2454 | 0x802F2BAC | size: 0xF
.obj str_menu_enemy_027_802f2bac, global
	.string "menu_enemy_027"
.endobj str_menu_enemy_027_802f2bac
	.byte 0x00

# .rodata:0x2464 | 0x802F2BBC | size: 0x11
.obj str_btl_un_yami_noko_802f2bbc, global
	.string "btl_un_yami_noko"
.endobj str_btl_un_yami_noko_802f2bbc
	.byte 0x00, 0x00, 0x00

# .rodata:0x2478 | 0x802F2BD0 | size: 0x12
.obj str_btl_hlp_yami_noko_802f2bd0, global
	.string "btl_hlp_yami_noko"
.endobj str_btl_hlp_yami_noko_802f2bd0
	.2byte 0x0000

# .rodata:0x248C | 0x802F2BE4 | size: 0xF
.obj str_menu_enemy_029_802f2be4, global
	.string "menu_enemy_029"
.endobj str_menu_enemy_029_802f2be4
	.byte 0x00

# .rodata:0x249C | 0x802F2BF4 | size: 0xB
.obj str_c_yaminoko_802f2bf4, global
	.string "c_yaminoko"
.endobj str_c_yaminoko_802f2bf4
	.byte 0x00

# .rodata:0x24A8 | 0x802F2C00 | size: 0x11
.obj str_btl_un_yami_pata_802f2c00, global
	.string "btl_un_yami_pata"
.endobj str_btl_un_yami_pata_802f2c00
	.byte 0x00, 0x00, 0x00

# .rodata:0x24BC | 0x802F2C14 | size: 0x12
.obj str_btl_hlp_yami_pata_802f2c14, global
	.string "btl_hlp_yami_pata"
.endobj str_btl_hlp_yami_pata_802f2c14
	.2byte 0x0000

# .rodata:0x24D0 | 0x802F2C28 | size: 0xF
.obj str_menu_enemy_030_802f2c28, global
	.string "menu_enemy_030"
.endobj str_menu_enemy_030_802f2c28
	.byte 0x00

# .rodata:0x24E0 | 0x802F2C38 | size: 0x14
.obj str_btl_un_badge_borodo_802f2c38, global
	.string "btl_un_badge_borodo"
.endobj str_btl_un_badge_borodo_802f2c38

# .rodata:0x24F4 | 0x802F2C4C | size: 0x15
.obj str_btl_hlp_badge_borodo_802f2c4c, global
	.string "btl_hlp_badge_borodo"
.endobj str_btl_hlp_badge_borodo_802f2c4c
	.byte 0x00, 0x00, 0x00

# .rodata:0x250C | 0x802F2C64 | size: 0xF
.obj str_menu_enemy_078_802f2c64, global
	.string "menu_enemy_078"
.endobj str_menu_enemy_078_802f2c64
	.byte 0x00

# .rodata:0x251C | 0x802F2C74 | size: 0xB
.obj str_c_borodo_t_802f2c74, global
	.string "c_borodo_t"
.endobj str_c_borodo_t_802f2c74
	.byte 0x00

# .rodata:0x2528 | 0x802F2C80 | size: 0x14
.obj str_btl_un_hyper_jyugem_802f2c80, global
	.string "btl_un_hyper_jyugem"
.endobj str_btl_un_hyper_jyugem_802f2c80

# .rodata:0x253C | 0x802F2C94 | size: 0x15
.obj str_btl_hlp_hyper_jyugem_802f2c94, global
	.string "btl_hlp_hyper_jyugem"
.endobj str_btl_hlp_hyper_jyugem_802f2c94
	.byte 0x00, 0x00, 0x00

# .rodata:0x2554 | 0x802F2CAC | size: 0xF
.obj str_menu_enemy_186_802f2cac, global
	.string "menu_enemy_186"
.endobj str_menu_enemy_186_802f2cac
	.byte 0x00

# .rodata:0x2564 | 0x802F2CBC | size: 0xB
.obj str_c_jugemu_b_802f2cbc, global
	.string "c_jugemu_b"
.endobj str_c_jugemu_b_802f2cbc
	.byte 0x00

# .rodata:0x2570 | 0x802F2CC8 | size: 0x14
.obj str_btl_un_hyper_togezo_802f2cc8, global
	.string "btl_un_hyper_togezo"
.endobj str_btl_un_hyper_togezo_802f2cc8

# .rodata:0x2584 | 0x802F2CDC | size: 0x15
.obj str_btl_hlp_hyper_togezo_802f2cdc, global
	.string "btl_hlp_hyper_togezo"
.endobj str_btl_hlp_hyper_togezo_802f2cdc
	.byte 0x00, 0x00, 0x00

# .rodata:0x259C | 0x802F2CF4 | size: 0xF
.obj str_menu_enemy_173_802f2cf4, global
	.string "menu_enemy_173"
.endobj str_menu_enemy_173_802f2cf4
	.byte 0x00

# .rodata:0x25AC | 0x802F2D04 | size: 0xB
.obj str_c_togezo_b_802f2d04, global
	.string "c_togezo_b"
.endobj str_c_togezo_b_802f2d04
	.byte 0x00

# .rodata:0x25B8 | 0x802F2D10 | size: 0xE
.obj str_btl_un_mahorn_802f2d10, global
	.string "btl_un_mahorn"
.endobj str_btl_un_mahorn_802f2d10
	.2byte 0x0000

# .rodata:0x25C8 | 0x802F2D20 | size: 0xF
.obj str_btl_hlp_mahorn_802f2d20, global
	.string "btl_hlp_mahorn"
.endobj str_btl_hlp_mahorn_802f2d20
	.byte 0x00

# .rodata:0x25D8 | 0x802F2D30 | size: 0xF
.obj str_menu_enemy_070_802f2d30, global
	.string "menu_enemy_070"
.endobj str_menu_enemy_070_802f2d30
	.byte 0x00

# .rodata:0x25E8 | 0x802F2D40 | size: 0x7
.obj str_c_maho_802f2d40, global
	.string "c_maho"
.endobj str_c_maho_802f2d40
	.byte 0x00

# .rodata:0x25F0 | 0x802F2D48 | size: 0x15
.obj str_btl_un_pakkun_flower_802f2d48, global
	.string "btl_un_pakkun_flower"
.endobj str_btl_un_pakkun_flower_802f2d48
	.byte 0x00, 0x00, 0x00

# .rodata:0x2608 | 0x802F2D60 | size: 0x16
.obj str_btl_hlp_pakkun_flowe_802f2d60, global
	.string "btl_hlp_pakkun_flower"
.endobj str_btl_hlp_pakkun_flowe_802f2d60
	.2byte 0x0000

# .rodata:0x2620 | 0x802F2D78 | size: 0xF
.obj str_menu_enemy_014_802f2d78, global
	.string "menu_enemy_014"
.endobj str_menu_enemy_014_802f2d78
	.byte 0x00

# .rodata:0x2630 | 0x802F2D88 | size: 0xA
.obj str_c_pakflwr_802f2d88, global
	.string "c_pakflwr"
.endobj str_c_pakflwr_802f2d88
	.2byte 0x0000

# .rodata:0x263C | 0x802F2D94 | size: 0xE
.obj str_btl_un_hennya_802f2d94, global
	.string "btl_un_hennya"
.endobj str_btl_un_hennya_802f2d94
	.2byte 0x0000

# .rodata:0x264C | 0x802F2DA4 | size: 0xF
.obj str_btl_hlp_hennya_802f2da4, global
	.string "btl_hlp_hennya"
.endobj str_btl_hlp_hennya_802f2da4
	.byte 0x00

# .rodata:0x265C | 0x802F2DB4 | size: 0xF
.obj str_menu_enemy_022_802f2db4, global
	.string "menu_enemy_022"
.endobj str_menu_enemy_022_802f2db4
	.byte 0x00

# .rodata:0x266C | 0x802F2DC4 | size: 0xB
.obj str_c_hannya_t_802f2dc4, global
	.string "c_hannya_t"
.endobj str_c_hannya_t_802f2dc4
	.byte 0x00

# .rodata:0x2678 | 0x802F2DD0 | size: 0x13
.obj str_btl_un_churantalar_802f2dd0, global
	.string "btl_un_churantalar"
.endobj str_btl_un_churantalar_802f2dd0
	.byte 0x00

# .rodata:0x268C | 0x802F2DE4 | size: 0x14
.obj str_btl_hlp_churantalar_802f2de4, global
	.string "btl_hlp_churantalar"
.endobj str_btl_hlp_churantalar_802f2de4

# .rodata:0x26A0 | 0x802F2DF8 | size: 0xF
.obj str_menu_enemy_176_802f2df8, global
	.string "menu_enemy_176"
.endobj str_menu_enemy_176_802f2df8
	.byte 0x00

# .rodata:0x26B0 | 0x802F2E08 | size: 0x9
.obj str_c_paid_b_802f2e08, global
	.string "c_paid_b"
.endobj str_c_paid_b_802f2e08
	.byte 0x00, 0x00, 0x00

# .rodata:0x26BC | 0x802F2E14 | size: 0x16
.obj str_btl_un_yamitogedarum_802f2e14, global
	.string "btl_un_yamitogedaruma"
.endobj str_btl_un_yamitogedarum_802f2e14
	.2byte 0x0000

# .rodata:0x26D4 | 0x802F2E2C | size: 0x17
.obj str_btl_hlp_yamitogedaru_802f2e2c, global
	.string "btl_hlp_yamitogedaruma"
.endobj str_btl_hlp_yamitogedaru_802f2e2c
	.byte 0x00

# .rodata:0x26EC | 0x802F2E44 | size: 0xF
.obj str_menu_enemy_174_802f2e44, global
	.string "menu_enemy_174"
.endobj str_menu_enemy_174_802f2e44
	.byte 0x00

# .rodata:0x26FC | 0x802F2E54 | size: 0xF
.obj str_c_togedaruma_b_802f2e54, global
	.string "c_togedaruma_b"
.endobj str_c_togedaruma_b_802f2e54
	.byte 0x00

# .rodata:0x270C | 0x802F2E64 | size: 0x12
.obj str_btl_un_dokugassun_802f2e64, global
	.string "btl_un_dokugassun"
.endobj str_btl_un_dokugassun_802f2e64
	.2byte 0x0000

# .rodata:0x2720 | 0x802F2E78 | size: 0x13
.obj str_btl_hlp_dokugassun_802f2e78, global
	.string "btl_hlp_dokugassun"
.endobj str_btl_hlp_dokugassun_802f2e78
	.byte 0x00

# .rodata:0x2734 | 0x802F2E8C | size: 0xF
.obj str_menu_enemy_013_802f2e8c, global
	.string "menu_enemy_013"
.endobj str_menu_enemy_013_802f2e8c
	.byte 0x00

# .rodata:0x2744 | 0x802F2E9C | size: 0xA
.obj str_c_kmoon_g_802f2e9c, global
	.string "c_kmoon_g"
.endobj str_c_kmoon_g_802f2e9c
	.2byte 0x0000

# .rodata:0x2750 | 0x802F2EA8 | size: 0x16
.obj str_btl_un_basabasa_gree_802f2ea8, global
	.string "btl_un_basabasa_green"
.endobj str_btl_un_basabasa_gree_802f2ea8
	.2byte 0x0000

# .rodata:0x2768 | 0x802F2EC0 | size: 0x17
.obj str_btl_hlp_basabasa_gre_802f2ec0, global
	.string "btl_hlp_basabasa_green"
.endobj str_btl_hlp_basabasa_gre_802f2ec0
	.byte 0x00

# .rodata:0x2780 | 0x802F2ED8 | size: 0xF
.obj str_menu_enemy_177_802f2ed8, global
	.string "menu_enemy_177"
.endobj str_menu_enemy_177_802f2ed8
	.byte 0x00

# .rodata:0x2790 | 0x802F2EE8 | size: 0xD
.obj str_c_basabasa_g_802f2ee8, global
	.string "c_basabasa_g"
.endobj str_c_basabasa_g_802f2ee8
	.byte 0x00, 0x00, 0x00

# .rodata:0x27A0 | 0x802F2EF8 | size: 0x12
.obj str_btl_un_giant_bomb_802f2ef8, global
	.string "btl_un_giant_bomb"
.endobj str_btl_un_giant_bomb_802f2ef8
	.2byte 0x0000

# .rodata:0x27B4 | 0x802F2F0C | size: 0x13
.obj str_btl_hlp_giant_bomb_802f2f0c, global
	.string "btl_hlp_giant_bomb"
.endobj str_btl_hlp_giant_bomb_802f2f0c
	.byte 0x00

# .rodata:0x27C8 | 0x802F2F20 | size: 0xF
.obj str_menu_enemy_182_802f2f20, global
	.string "menu_enemy_182"
.endobj str_menu_enemy_182_802f2f20
	.byte 0x00

# .rodata:0x27D8 | 0x802F2F30 | size: 0x8
.obj str_c_giant_802f2f30, global
	.string "c_giant"
.endobj str_c_giant_802f2f30

# .rodata:0x27E0 | 0x802F2F38 | size: 0x15
.obj str_btl_un_mahorn_custom_802f2f38, global
	.string "btl_un_mahorn_custom"
.endobj str_btl_un_mahorn_custom_802f2f38
	.byte 0x00, 0x00, 0x00

# .rodata:0x27F8 | 0x802F2F50 | size: 0x16
.obj str_btl_hlp_mahorn_custo_802f2f50, global
	.string "btl_hlp_mahorn_custom"
.endobj str_btl_hlp_mahorn_custo_802f2f50
	.2byte 0x0000

# .rodata:0x2810 | 0x802F2F68 | size: 0xF
.obj str_menu_enemy_183_802f2f68, global
	.string "menu_enemy_183"
.endobj str_menu_enemy_183_802f2f68
	.byte 0x00

# .rodata:0x2820 | 0x802F2F78 | size: 0x9
.obj str_c_maho_w_802f2f78, global
	.string "c_maho_w"
.endobj str_c_maho_w_802f2f78
	.byte 0x00, 0x00, 0x00

# .rodata:0x282C | 0x802F2F84 | size: 0x1C
.obj str_btl_un_mahorn_custom_802f2f84, global
	.string "btl_un_mahorn_custom_bunsin"
.endobj str_btl_un_mahorn_custom_802f2f84

# .rodata:0x2848 | 0x802F2FA0 | size: 0x1E
.obj str_btl_hlp_mahorn_custo_802f2fa0, global
	.string "btl_hlp_mahorn_custom_bunshin"
.endobj str_btl_hlp_mahorn_custo_802f2fa0
	.2byte 0x0000

# .rodata:0x2868 | 0x802F2FC0 | size: 0xF
.obj str_btl_un_zonbaba_802f2fc0, global
	.string "btl_un_zonbaba"
.endobj str_btl_un_zonbaba_802f2fc0
	.byte 0x00

# .rodata:0x2878 | 0x802F2FD0 | size: 0x10
.obj str_btl_hlp_zonbaba_802f2fd0, global
	.string "btl_hlp_zonbaba"
.endobj str_btl_hlp_zonbaba_802f2fd0

# .rodata:0x2888 | 0x802F2FE0 | size: 0xF
.obj str_menu_enemy_195_802f2fe0, global
	.string "menu_enemy_195"
.endobj str_menu_enemy_195_802f2fe0
	.byte 0x00

# .rodata:0x2898 | 0x802F2FF0 | size: 0xC
.obj str_c_gonbaba_z_802f2ff0, global
	.string "c_gonbaba_z"
.endobj str_c_gonbaba_z_802f2ff0

# .rodata:0x28A4 | 0x802F2FFC | size: 0x13
.obj str_btl_un_crimson_met_802f2ffc, global
	.string "btl_un_crimson_met"
.endobj str_btl_un_crimson_met_802f2ffc
	.byte 0x00

# .rodata:0x28B8 | 0x802F3010 | size: 0x14
.obj str_btl_hlp_crimson_met_802f3010, global
	.string "btl_hlp_crimson_met"
.endobj str_btl_hlp_crimson_met_802f3010

# .rodata:0x28CC | 0x802F3024 | size: 0x17
.obj str_btl_un_crimson_patam_802f3024, global
	.string "btl_un_crimson_patamet"
.endobj str_btl_un_crimson_patam_802f3024
	.byte 0x00

# .rodata:0x28E4 | 0x802F303C | size: 0x18
.obj str_btl_hlp_crimson_pata_802f303c, global
	.string "btl_hlp_crimson_patamet"
.endobj str_btl_hlp_crimson_pata_802f303c

# .rodata:0x28FC | 0x802F3054 | size: 0x1B
.obj str_btl_un_crimson_patat_802f3054, global
	.string "btl_un_crimson_patatogemet"
.endobj str_btl_un_crimson_patat_802f3054
	.byte 0x00

# .rodata:0x2918 | 0x802F3070 | size: 0x1C
.obj str_btl_hlp_crimson_pata_802f3070, global
	.string "btl_hlp_crimson_patatogemet"
.endobj str_btl_hlp_crimson_pata_802f3070

# .rodata:0x2934 | 0x802F308C | size: 0x14
.obj str_btl_un_hyper_bomhei_802f308c, global
	.string "btl_un_hyper_bomhei"
.endobj str_btl_un_hyper_bomhei_802f308c

# .rodata:0x2948 | 0x802F30A0 | size: 0x15
.obj str_btl_hlp_hyper_bomhei_802f30a0, global
	.string "btl_hlp_hyper_bomhei"
.endobj str_btl_hlp_hyper_bomhei_802f30a0
	.byte 0x00, 0x00, 0x00

# .rodata:0x2960 | 0x802F30B8 | size: 0xB
.obj str_c_bomhey_h_802f30b8, global
	.string "c_bomhey_h"
.endobj str_c_bomhey_h_802f30b8
	.byte 0x00

# .rodata:0x296C | 0x802F30C4 | size: 0x12
.obj str_menu_monosiri_jon_802f30c4, global
	.string "menu_monosiri_jon"
.endobj str_menu_monosiri_jon_802f30c4
	.2byte 0x0000

# .rodata:0x2980 | 0x802F30D8 | size: 0x14
.obj str_btl_un_ultra_bomhei_802f30d8, global
	.string "btl_un_ultra_bomhei"
.endobj str_btl_un_ultra_bomhei_802f30d8

# .rodata:0x2994 | 0x802F30EC | size: 0x15
.obj str_btl_hlp_ultra_bomhei_802f30ec, global
	.string "btl_hlp_ultra_bomhei"
.endobj str_btl_hlp_ultra_bomhei_802f30ec
	.byte 0x00, 0x00, 0x00

# .rodata:0x29AC | 0x802F3104 | size: 0xB
.obj str_c_bomhey_m_802f3104, global
	.string "c_bomhey_m"
.endobj str_c_bomhey_m_802f3104
	.byte 0x00

# .rodata:0x29B8 | 0x802F3110 | size: 0x11
.obj str_btl_un_christine_802f3110, global
	.string "btl_un_christine"
.endobj str_btl_un_christine_802f3110
	.byte 0x00, 0x00, 0x00

# .rodata:0x29CC | 0x802F3124 | size: 0xF
.obj str_btl_un_frankli_802f3124, global
	.string "btl_un_frankli"
.endobj str_btl_un_frankli_802f3124
	.byte 0x00

# .rodata:0x29DC | 0x802F3134 | size: 0x11
.obj str_btl_un_act_mario_802f3134, global
	.string "btl_un_act_mario"
.endobj str_btl_un_act_mario_802f3134
	.byte 0x00, 0x00, 0x00

# .rodata:0x29F0 | 0x802F3148 | size: 0x12
.obj str_btl_un_act_clauda_802f3148, global
	.string "btl_un_act_clauda"
.endobj str_btl_un_act_clauda_802f3148
	.2byte 0x0000

# .rodata:0x2A04 | 0x802F315C | size: 0x12
.obj str_btl_un_act_teresa_802f315c, global
	.string "btl_un_act_teresa"
.endobj str_btl_un_act_teresa_802f315c
	.2byte 0x0000

# .rodata:0x2A18 | 0x802F3170 | size: 0x18
.obj str_btl_un_act_atmic_ter_802f3170, global
	.string "btl_un_act_atmic_teresa"
.endobj str_btl_un_act_atmic_ter_802f3170

# .rodata:0x2A30 | 0x802F3188 | size: 0x13
.obj str_btl_un_act_kinopio_802f3188, global
	.string "btl_un_act_kinopio"
.endobj str_btl_un_act_kinopio_802f3188
	.byte 0x00

# .rodata:0x2A44 | 0x802F319C | size: 0x14
.obj str_btl_un_act_kinopiko_802f319c, global
	.string "btl_un_act_kinopiko"
.endobj str_btl_un_act_kinopiko_802f319c

# .rodata:0x2A58 | 0x802F31B0 | size: 0xC
.obj str_btl_un_test_802f31b0, global
	.string "btl_un_test"
.endobj str_btl_un_test_802f31b0

# .rodata:0x2A64 | 0x802F31BC | size: 0xE
.obj str_btl_un_kanbu2_802f31bc, global
	.string "btl_un_kanbu2"
.endobj str_btl_un_kanbu2_802f31bc
	.2byte 0x0000

# .rodata:0x2A74 | 0x802F31CC | size: 0xF
.obj str_btl_hlp_kanbu2_802f31cc, global
	.string "btl_hlp_kanbu2"
.endobj str_btl_hlp_kanbu2_802f31cc
	.byte 0x00

# .rodata:0x2A84 | 0x802F31DC | size: 0x11
.obj str_btl_un_majolyne2_802f31dc, global
	.string "btl_un_majolyne2"
.endobj str_btl_un_majolyne2_802f31dc
	.byte 0x00, 0x00, 0x00

# .rodata:0x2A98 | 0x802F31F0 | size: 0x8
.obj str_MJR_Z_1_802f31f0, global
	.string "MJR_Z_1"
.endobj str_MJR_Z_1_802f31f0

# .rodata:0x2AA0 | 0x802F31F8 | size: 0x10
.obj str_btl_un_marilyn2_802f31f8, global
	.string "btl_un_marilyn2"
.endobj str_btl_un_marilyn2_802f31f8

# .rodata:0x2AB0 | 0x802F3208 | size: 0x8
.obj str_MRR_Z_1_802f3208, global
	.string "MRR_Z_1"
.endobj str_MRR_Z_1_802f3208

# .rodata:0x2AB8 | 0x802F3210 | size: 0xF
.obj str_btl_un_vivian2_802f3210, global
	.string "btl_un_vivian2"
.endobj str_btl_un_vivian2_802f3210
	.byte 0x00

# .rodata:0x2AC8 | 0x802F3220 | size: 0x8
.obj str_PTR_Z_1_802f3220, global
	.string "PTR_Z_1"
.endobj str_PTR_Z_1_802f3220

# .rodata:0x2AD0 | 0x802F3228 | size: 0x11
.obj str_btl_un_majolyne3_802f3228, global
	.string "btl_un_majolyne3"
.endobj str_btl_un_majolyne3_802f3228
	.byte 0x00, 0x00, 0x00

# .rodata:0x2AE4 | 0x802F323C | size: 0x10
.obj str_btl_un_marilyn3_802f323c, global
	.string "btl_un_marilyn3"
.endobj str_btl_un_marilyn3_802f323c

# .rodata:0x2AF4 | 0x802F324C | size: 0x12
.obj str_btl_un_mecha_kuri_802f324c, global
	.string "btl_un_mecha_kuri"
.endobj str_btl_un_mecha_kuri_802f324c
	.2byte 0x0000

# .rodata:0x2B08 | 0x802F3260 | size: 0x12
.obj str_btl_un_mecha_kame_802f3260, global
	.string "btl_un_mecha_kame"
.endobj str_btl_un_mecha_kame_802f3260
	.2byte 0x0000

# .rodata:0x2B1C | 0x802F3274 | size: 0xD
.obj str_btl_un_okorl_802f3274, global
	.string "btl_un_okorl"
.endobj str_btl_un_okorl_802f3274
	.byte 0x00, 0x00, 0x00

# .rodata:0x2B2C | 0x802F3284 | size: 0xE
.obj str_btl_un_yowarl_802f3284, global
	.string "btl_un_yowarl"
.endobj str_btl_un_yowarl_802f3284
	.2byte 0x0000

# .rodata:0x2B3C | 0x802F3294 | size: 0x10
.obj str_btl_un_tuyonarl_802f3294, global
	.string "btl_un_tuyonarl"
.endobj str_btl_un_tuyonarl_802f3294

# .rodata:0x2B4C | 0x802F32A4 | size: 0x10
.obj str_btl_un_wanawana_802f32a4, global
	.string "btl_un_wanawana"
.endobj str_btl_un_wanawana_802f32a4

# .rodata:0x2B5C | 0x802F32B4 | size: 0x15
.obj str_btl_un_minarai_kamec_802f32b4, global
	.string "btl_un_minarai_kamec"
.endobj str_btl_un_minarai_kamec_802f32b4
	.byte 0x00, 0x00, 0x00

# .rodata:0x2B74 | 0x802F32CC | size: 0xD
.obj str_btl_un_heiho_802f32cc, global
	.string "btl_un_heiho"
.endobj str_btl_un_heiho_802f32cc
	.byte 0x00, 0x00, 0x00

# .rodata:0x2B84 | 0x802F32DC | size: 0x15
.obj str_btl_un_dancing_heiho_802f32dc, global
	.string "btl_un_dancing_heiho"
.endobj str_btl_un_dancing_heiho_802f32dc
	.byte 0x00, 0x00, 0x00

# .rodata:0x2B9C | 0x802F32F4 | size: 0x12
.obj str_btl_un_fire_heiho_802f32f4, global
	.string "btl_un_fire_heiho"
.endobj str_btl_un_fire_heiho_802f32f4
	.2byte 0x0000

# .rodata:0x2BB0 | 0x802F3308 | size: 0x15
.obj str_btl_un_command_heiho_802f3308, global
	.string "btl_un_command_heiho"
.endobj str_btl_un_command_heiho_802f3308
	.byte 0x00, 0x00, 0x00

# .rodata:0x2BC8 | 0x802F3320 | size: 0x13
.obj str_btl_un_black_heiho_802f3320, global
	.string "btl_un_black_heiho"
.endobj str_btl_un_black_heiho_802f3320
	.byte 0x00

# .rodata:0x2BDC | 0x802F3334 | size: 0xD
.obj str_btl_un_hatty_802f3334, global
	.string "btl_un_hatty"
.endobj str_btl_un_hatty_802f3334
	.byte 0x00, 0x00, 0x00

# .rodata:0x2BEC | 0x802F3344 | size: 0xF
.obj str_btl_un_kohatty_802f3344, global
	.string "btl_un_kohatty"
.endobj str_btl_un_kohatty_802f3344
	.byte 0x00

# .rodata:0x2BFC | 0x802F3354 | size: 0xB
.obj str_btl_un_ufo_802f3354, global
	.string "btl_un_ufo"
.endobj str_btl_un_ufo_802f3354
	.byte 0x00

# .rodata:0x2C08 | 0x802F3360 | size: 0xD
.obj str_btl_un_powan_802f3360, global
	.string "btl_un_powan"
.endobj str_btl_un_powan_802f3360
	.byte 0x00, 0x00, 0x00

# .rodata:0x2C18 | 0x802F3370 | size: 0x8
.obj str_c_powan_802f3370, global
	.string "c_powan"
.endobj str_c_powan_802f3370

# .rodata:0x2C20 | 0x802F3378 | size: 0xF
.obj str_btl_un_fighter_802f3378, global
	.string "btl_un_fighter"
.endobj str_btl_un_fighter_802f3378
	.byte 0x00

# .rodata:0x2C30 | 0x802F3388 | size: 0xD
.obj str_btl_un_nancy_802f3388, global
	.string "btl_un_nancy"
.endobj str_btl_un_nancy_802f3388
	.byte 0x00, 0x00, 0x00

# .rodata:0x2C40 | 0x802F3398 | size: 0xE
.obj str_btl_un_master_802f3398, global
	.string "btl_un_master"
.endobj str_btl_un_master_802f3398
	.2byte 0x0000

# .rodata:0x2C50 | 0x802F33A8 | size: 0x10
.obj str_btl_un_reporter_802f33a8, global
	.string "btl_un_reporter"
.endobj str_btl_un_reporter_802f33a8

# .rodata:0x2C60 | 0x802F33B8 | size: 0x15
.obj str_btl_un_hotdog_master_802f33b8, global
	.string "btl_un_hotdog_master"
.endobj str_btl_un_hotdog_master_802f33b8
	.byte 0x00, 0x00, 0x00

# .rodata:0x2C78 | 0x802F33D0 | size: 0xD
.obj str_btl_un_marco_802f33d0, global
	.string "btl_un_marco"
.endobj str_btl_un_marco_802f33d0
	.byte 0x00, 0x00, 0x00

# .rodata:0x2C88 | 0x802F33E0 | size: 0xC
.obj str_btl_un_tree_802f33e0, global
	.string "btl_un_tree"
.endobj str_btl_un_tree_802f33e0

# .rodata:0x2C94 | 0x802F33EC | size: 0xF
.obj str_menu_enemy_155_802f33ec, global
	.string "menu_enemy_155"
.endobj str_menu_enemy_155_802f33ec
	.byte 0x00

# .rodata:0x2CA4 | 0x802F33FC | size: 0xE
.obj str_btl_un_switch_802f33fc, global
	.string "btl_un_switch"
.endobj str_btl_un_switch_802f33fc
	.2byte 0x0000

# .rodata:0x2CB4 | 0x802F340C | size: 0xF
.obj str_menu_enemy_156_802f340c, global
	.string "menu_enemy_156"
.endobj str_menu_enemy_156_802f340c
	.byte 0x00

# .rodata:0x2CC4 | 0x802F341C | size: 0xF
.obj str_btl_un_testnpc_802f341c, global
	.string "btl_un_testnpc"
.endobj str_btl_un_testnpc_802f341c
	.byte 0x00

# .rodata:0x2CD4 | 0x802F342C | size: 0xF
.obj str_menu_enemy_157_802f342c, global
	.string "menu_enemy_157"
.endobj str_menu_enemy_157_802f342c
	.byte 0x00

# .rodata:0x2CE4 | 0x802F343C | size: 0xE
.obj str_btl_un_bomzou_802f343c, global
	.string "btl_un_bomzou"
.endobj str_btl_un_bomzou_802f343c
	.2byte 0x0000

# .rodata:0x2CF4 | 0x802F344C | size: 0xF
.obj str_btl_hlp_bomzou_802f344c, global
	.string "btl_hlp_bomzou"
.endobj str_btl_hlp_bomzou_802f344c
	.byte 0x00

# .rodata:0x2D04 | 0x802F345C | size: 0xF
.obj str_menu_enemy_158_802f345c, global
	.string "menu_enemy_158"
.endobj str_menu_enemy_158_802f345c
	.byte 0x00

# .rodata:0x2D14 | 0x802F346C | size: 0xE
.obj str_btl_un_system_802f346c, global
	.string "btl_un_system"
.endobj str_btl_un_system_802f346c
	.2byte 0x0000

# .rodata:0x2D24 | 0x802F347C | size: 0xF
.obj str_menu_enemy_159_802f347c, global
	.string "menu_enemy_159"
.endobj str_menu_enemy_159_802f347c
	.byte 0x00

# .rodata:0x2D34 | 0x802F348C | size: 0xF
.obj str_menu_enemy_162_802f348c, global
	.string "menu_enemy_162"
.endobj str_menu_enemy_162_802f348c
	.byte 0x00

# .rodata:0x2D44 | 0x802F349C | size: 0xD
.obj str_btl_un_mario_802f349c, global
	.string "btl_un_mario"
.endobj str_btl_un_mario_802f349c
	.byte 0x00, 0x00, 0x00

# .rodata:0x2D54 | 0x802F34AC | size: 0xE
.obj str_btl_hlp_mario_802f34ac, global
	.string "btl_hlp_mario"
.endobj str_btl_hlp_mario_802f34ac
	.2byte 0x0000

# .rodata:0x2D64 | 0x802F34BC | size: 0xF
.obj str_menu_enemy_160_802f34bc, global
	.string "menu_enemy_160"
.endobj str_menu_enemy_160_802f34bc
	.byte 0x00

# .rodata:0x2D74 | 0x802F34CC | size: 0xD
.obj str_btl_un_koura_802f34cc, global
	.string "btl_un_koura"
.endobj str_btl_un_koura_802f34cc
	.byte 0x00, 0x00, 0x00

# .rodata:0x2D84 | 0x802F34DC | size: 0xF
.obj str_menu_enemy_161_802f34dc, global
	.string "menu_enemy_161"
.endobj str_menu_enemy_161_802f34dc
	.byte 0x00

# .rodata:0x2D94 | 0x802F34EC | size: 0x11
.obj str_btl_un_nokotarou_802f34ec, global
	.string "btl_un_nokotarou"
.endobj str_btl_un_nokotarou_802f34ec
	.byte 0x00, 0x00, 0x00

# .rodata:0x2DA8 | 0x802F3500 | size: 0xF
.obj str_menu_enemy_163_802f3500, global
	.string "menu_enemy_163"
.endobj str_menu_enemy_163_802f3500
	.byte 0x00

# .rodata:0x2DB8 | 0x802F3510 | size: 0xD
.obj str_btl_un_yoshi_802f3510, global
	.string "btl_un_yoshi"
.endobj str_btl_un_yoshi_802f3510
	.byte 0x00, 0x00, 0x00

# .rodata:0x2DC8 | 0x802F3520 | size: 0xF
.obj str_menu_enemy_164_802f3520, global
	.string "menu_enemy_164"
.endobj str_menu_enemy_164_802f3520
	.byte 0x00

# .rodata:0x2DD8 | 0x802F3530 | size: 0xE
.obj str_btl_un_clauda_802f3530, global
	.string "btl_un_clauda"
.endobj str_btl_un_clauda_802f3530
	.2byte 0x0000

# .rodata:0x2DE8 | 0x802F3540 | size: 0xF
.obj str_menu_enemy_165_802f3540, global
	.string "menu_enemy_165"
.endobj str_menu_enemy_165_802f3540
	.byte 0x00

# .rodata:0x2DF8 | 0x802F3550 | size: 0xE
.obj str_btl_un_vivian_802f3550, global
	.string "btl_un_vivian"
.endobj str_btl_un_vivian_802f3550
	.2byte 0x0000

# .rodata:0x2E08 | 0x802F3560 | size: 0x15
.obj str_btl_hlp_vivian_party_802f3560, global
	.string "btl_hlp_vivian_party"
.endobj str_btl_hlp_vivian_party_802f3560
	.byte 0x00, 0x00, 0x00

# .rodata:0x2E20 | 0x802F3578 | size: 0xF
.obj str_menu_enemy_166_802f3578, global
	.string "menu_enemy_166"
.endobj str_menu_enemy_166_802f3578
	.byte 0x00

# .rodata:0x2E30 | 0x802F3588 | size: 0xF
.obj str_btl_un_sanders_802f3588, global
	.string "btl_un_sanders"
.endobj str_btl_un_sanders_802f3588
	.byte 0x00

# .rodata:0x2E40 | 0x802F3598 | size: 0xF
.obj str_menu_enemy_167_802f3598, global
	.string "menu_enemy_167"
.endobj str_menu_enemy_167_802f3598
	.byte 0x00

# .rodata:0x2E50 | 0x802F35A8 | size: 0x12
.obj str_btl_un_chuchurina_802f35a8, global
	.string "btl_un_chuchurina"
.endobj str_btl_un_chuchurina_802f35a8
	.2byte 0x0000

# .rodata:0x2E64 | 0x802F35BC | size: 0xF
.obj str_menu_enemy_168_802f35bc, global
	.string "menu_enemy_168"
.endobj str_menu_enemy_168_802f35bc
	.byte 0x00

# .rodata:0x2E74 | 0x802F35CC | size: 0x4
.obj gap_04_802F35CC_rodata, global
.hidden gap_04_802F35CC_rodata
	.4byte 0x00000000
.endobj gap_04_802F35CC_rodata

# 0x8036CF40..0x8036E828 | size: 0x18E8
.data
.balign 8

# .data:0x0 | 0x8036CF40 | size: 0x15A8
.obj monosiriMessageTable, global
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_btl_un_kuriboo_802f0758
	.4byte str_btl_hlp_kuriboo_802f0768
	.4byte str_menu_enemy_001_802f0778
	.4byte str_c_kuribo_802f0788
	.4byte str_KUR_Z_2_802f0794
	.4byte str_menu_monosiri_nara_802f079c
	.4byte str_btl_un_patakuri_802f07b0
	.4byte str_btl_hlp_patakuri_802f07c0
	.4byte str_menu_enemy_003_802f07d4
	.4byte str_c_kuribo_802f0788
	.4byte str_PTK_Z_2_802f07e4
	.4byte str_menu_monosiri_nara_802f079c
	.4byte str_btl_un_togekuri_802f07ec
	.4byte str_btl_hlp_togekuri_802f07fc
	.4byte str_menu_enemy_002_802f0810
	.4byte str_c_kuribo_802f0788
	.4byte str_TGK_Z_2_802f0820
	.4byte str_menu_monosiri_nara_802f079c
	.4byte str_btl_un_hinnya_802f0828
	.4byte str_btl_hlp_hinnya_802f0838
	.4byte str_menu_enemy_020_802f0848
	.4byte str_c_hannya_n_802f0858
	.4byte str_Z_1_80422828
	.4byte str_menu_monosiri_tik_802f0864
	.4byte str_btl_un_hannya_802f0878
	.4byte str_btl_hlp_hannya_802f0888
	.4byte str_menu_enemy_021_802f0898
	.4byte str_c_hannya_802f08a8
	.4byte str_Z_1_80422828
	.4byte str_menu_monosiri_tik_802f0864
	.4byte str_btl_un_kanbu1_802f08b4
	.4byte str_btl_hlp_kanbu1_802f08c4
	.4byte 0x00000000
	.4byte str_c_kanbu_802f08d4
	.4byte str_Z_1_80422828
	.4byte str_menu_monosiri_nara_802f079c
	.4byte str_btl_un_monban_802f08dc
	.4byte str_btl_hlp_monban_802f08ec
	.4byte str_menu_enemy_103_802f08fc
	.4byte str_c_monban_802f090c
	.4byte str_Z_1_80422828
	.4byte str_menu_monosiri_gor_802f0918
	.4byte str_btl_un_gesso_802f092c
	.4byte str_btl_hlp_gesso_802f093c
	.4byte str_menu_enemy_114_802f094c
	.4byte str_c_gesso_802f095c
	.4byte str_GSO_Z2_1_802f0964
	.4byte str_menu_monosiri_tik_802f0864
	.4byte str_btl_un_gesso_left_ar_802f0970
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_c_gesso3_802f0988
	.4byte str_GSO_Z1_1_802f0994
	.4byte str_menu_monosiri_tik_802f0864
	.4byte str_btl_un_gesso_right_a_802f09a0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_c_gesso2_802f09b8
	.4byte str_GSO_Z1_1_802f0994
	.4byte str_menu_monosiri_tik_802f0864
	.4byte str_btl_un_togenoko_802f09c4
	.4byte str_btl_hlp_togenoko_802f09d4
	.4byte str_menu_enemy_033_802f09e8
	.4byte str_c_togenoko_802f09f8
	.4byte str_Z_1_80422828
	.4byte str_menu_monosiri_tik_802f0864
	.4byte str_btl_un_kamec_802f0a04
	.4byte str_btl_hlp_kamec_802f0a14
	.4byte str_menu_enemy_086_802f0a24
	.4byte str_c_kamek_802f0a34
	.4byte str_KMK_Z_1_802f0a3c
	.4byte str_menu_monosiri_tik_802f0864
	.4byte str_btl_un_kamec_bunsin_802f0a44
	.4byte str_btl_hlp_kamec_bunshi_802f0a58
	.4byte 0x00000000
	.4byte str_c_kamek_802f0a34
	.4byte str_KMK_Z_1_802f0a3c
	.4byte str_menu_monosiri_tik_802f0864
	.4byte str_btl_un_nokonoko_802f0a70
	.4byte str_btl_hlp_nokonoko_802f0a80
	.4byte str_menu_enemy_004_802f0a94
	.4byte str_c_nokoteki_802f0aa4
	.4byte str_NKT_Z_1_802f0ab0
	.4byte str_menu_monosiri_hei_802f0ab8
	.4byte str_btl_un_patapata_802f0acc
	.4byte str_btl_hlp_patapata_802f0adc
	.4byte str_menu_enemy_005_802f0af0
	.4byte str_c_nokoteki_802f0aa4
	.4byte str_PTP_Z_1_802f0b00
	.4byte str_menu_monosiri_gon_802f0b08
	.4byte str_btl_un_chorobon_802f0b1c
	.4byte str_btl_hlp_chorobon_802f0b2c
	.4byte str_menu_enemy_006_802f0b40
	.4byte str_c_chorobon_802f0b50
	.4byte str_CBN_Z_1_802f0b5c
	.4byte str_menu_monosiri_stn_802f0b64
	.4byte str_btl_un_honenoko_802f0b78
	.4byte str_btl_hlp_honenoko_802f0b88
	.4byte str_menu_enemy_007_802f0b9c
	.4byte str_c_karon_g_h_802f0bac
	.4byte str_KRN_Z_1_802f0bb8
	.4byte str_menu_monosiri_gon_802f0b08
	.4byte str_btl_un_sinnosuke_802f0bc0
	.4byte str_btl_hlp_sinnosuke_802f0bd4
	.4byte str_menu_enemy_008_802f0be8
	.4byte str_c_sinnosuke_802f0bf8
	.4byte str_SIS_Z_1_802f0c04
	.4byte str_menu_monosiri_hei_802f0ab8
	.4byte str_btl_un_togedaruma_802f0c0c
	.4byte str_btl_hlp_togedaruma_802f0c20
	.4byte str_menu_enemy_009_802f0c34
	.4byte str_c_togedaruma_802f0c44
	.4byte str_TGD_Z_1_802f0c54
	.4byte str_menu_monosiri_hei_802f0ab8
	.4byte str_btl_un_gold_chorobon_802f0c5c
	.4byte str_btl_hlp_gold_chorobo_802f0c74
	.4byte str_menu_enemy_010_802f0c8c
	.4byte str_c_chorobon_k_802f0c9c
	.4byte str_CBN_Z_1_802f0b5c
	.4byte str_menu_monosiri_stn_802f0b64
	.4byte str_btl_un_chorobon_gund_802f0cac
	.4byte str_btl_hlp_chorobon_gun_802f0cc4
	.4byte 0x00000000
	.4byte str_c_chorobon_802f0b50
	.4byte str_CBN_Z_1_802f0b5c
	.4byte str_menu_monosiri_stn_802f0b64
	.4byte str_btl_un_red_honenoko_802f0cdc
	.4byte str_btl_hlp_red_honenoko_802f0cf0
	.4byte str_menu_enemy_012_802f0d08
	.4byte str_c_karon_r_h_802f0d18
	.4byte str_KRN_Z_1_802f0bb8
	.4byte str_menu_monosiri_gon_802f0b08
	.4byte str_btl_un_gonbaba_802f0d24
	.4byte str_btl_hlp_gonbaba_802f0d34
	.4byte str_menu_enemy_117_802f0d44
	.4byte str_c_gonbaba_802f0d54
	.4byte str_GNB_Z_1_802f0d60
	.4byte str_menu_monosiri_gon_802f0b08
	.4byte str_btl_un_monochrome_ku_802f0d68
	.4byte str_btl_hlp_monochrome_k_802f0d88
	.4byte str_menu_enemy_172_802f0da8
	.4byte str_c_kmoon_wb_802f0db8
	.4byte str_Z_1_80422828
	.4byte str_menu_monosiri_win_802f0dc4
	.4byte str_btl_un_monochrome_pa_802f0dd8
	.4byte str_btl_hlp_monochrome_p_802f0df4
	.4byte str_menu_enemy_181_802f0e10
	.4byte str_c_pakflwr_t_802f0e20
	.4byte str_PKF_Z_1_802f0e2c
	.4byte str_menu_monosiri_win_802f0dc4
	.4byte str_btl_un_monochrome_si_802f0e34
	.4byte str_btl_hlp_monochrome_s_802f0e50
	.4byte str_menu_enemy_035_802f0e6c
	.4byte str_c_sinemon_w_802f0e7c
	.4byte str_SIN_Z_1_802f0e88
	.4byte str_menu_monosiri_win_802f0dc4
	.4byte str_btl_un_piders_802f0e90
	.4byte str_btl_hlp_piders_802f0ea0
	.4byte str_menu_enemy_015_802f0eb0
	.4byte str_c_paid_802f0ec0
	.4byte str_PAI_Z_1_802f0ec8
	.4byte str_menu_monosiri_mri_802f0ed0
	.4byte str_btl_un_gundan_zako_802f0ee4
	.4byte str_btl_hlp_gundan_zako_802f0ef8
	.4byte str_menu_enemy_018_802f0f0c
	.4byte str_c_zako_n_802f0f1c
	.4byte str_Z_1_80422828
	.4byte str_menu_monosiri_nara_802f079c
	.4byte str_btl_un_barriern_802f0f28
	.4byte str_btl_hlp_barriern_802f0f38
	.4byte str_menu_enemy_016_802f0f4c
	.4byte str_c_baria_802f0f5c
	.4byte str_Z_1_80422828
	.4byte str_menu_monosiri_mri_802f0ed0
	.4byte str_btl_un_barriern_sate_802f0f64
	.4byte str_btl_hlp_barriern_pet_802f0f80
	.4byte str_menu_enemy_017_802f0f98
	.4byte str_c_baria_802f0f5c
	.4byte str_Z_2_8042282c
	.4byte str_menu_monosiri_mri_802f0ed0
	.4byte str_btl_un_majolyne1_802f0fa8
	.4byte str_btl_hlp_majyorin_802f0fbc
	.4byte str_menu_enemy_104_802f0fd0
	.4byte str_c_majyorin_802f0fe0
	.4byte str_MJR_M_1_802f0fec
	.4byte str_menu_monosiri_win_802f0dc4
	.4byte str_btl_un_marilyn1_802f0ff4
	.4byte str_btl_hlp_maririn_802f1004
	.4byte str_menu_enemy_108_802f1014
	.4byte str_c_maririn_802f1024
	.4byte str_MRR_M_1_802f1030
	.4byte str_menu_monosiri_win_802f0dc4
	.4byte str_btl_un_vivian1_802f1038
	.4byte str_btl_hlp_vivian_802f1048
	.4byte str_menu_enemy_112_802f1058
	.4byte str_c_vivian_802f1068
	.4byte str_PTR_M_1_802f1074
	.4byte str_menu_monosiri_win_802f0dc4
	.4byte str_btl_un_magnum_batten_802f107c
	.4byte str_btl_hlp_magnum_batte_802f1094
	.4byte str_menu_enemy_139_802f10b0
	.4byte str_c_mb_robo_1b_802f10c0
	.4byte str_MGN_Z_1_802f10d0
	.4byte str_menu_monosiri_mri_802f0ed0
	.4byte str_btl_un_rocket_punch_802f10d8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_MGN_A1_4_802f10ec
	.4byte str_menu_monosiri_mri_802f0ed0
	.4byte str_btl_un_kuriboo_802f0758
	.4byte str_btl_hlp_kuriboo_802f0768
	.4byte 0x00000000
	.4byte str_c_kuribo_802f0788
	.4byte str_KUR_Z_2_802f0794
	.4byte str_menu_monosiri_nara_802f079c
	.4byte str_btl_un_nokonoko_figh_802f10f8
	.4byte str_btl_hlp_nokonoko_fig_802f1110
	.4byte str_menu_enemy_188_802f112c
	.4byte str_c_touginoko_802f113c
	.4byte str_NKT_Z_1_802f0ab0
	.4byte str_menu_monosiri_tou_802f1148
	.4byte str_btl_un_patapata_figh_802f115c
	.4byte str_btl_hlp_patapata_fig_802f1174
	.4byte str_menu_enemy_189_802f1190
	.4byte str_c_touginoko_802f113c
	.4byte str_PTP_Z_1_802f0b00
	.4byte str_menu_monosiri_tou_802f1148
	.4byte str_btl_un_sambo_802f11a0
	.4byte str_btl_hlp_sambo_802f11b0
	.4byte str_menu_enemy_055_802f11c0
	.4byte str_c_sanbo_802f11d0
	.4byte str_SNB_Z_1_802f11d8
	.4byte str_menu_monosiri_tou_802f1148
	.4byte str_btl_un_jyugem_802f11e0
	.4byte str_btl_hlp_jyugem_802f11f0
	.4byte str_menu_enemy_084_802f1200
	.4byte str_c_jugemu_802f1210
	.4byte str_JGM_Z_1_802f121c
	.4byte str_menu_monosiri_tou_802f1148
	.4byte str_btl_un_togezo_802f1224
	.4byte str_btl_hlp_togezo_802f1234
	.4byte str_menu_enemy_085_802f1244
	.4byte str_c_togezo_802f1254
	.4byte str_TGZ_Z_1_802f1260
	.4byte str_menu_monosiri_tou_802f1148
	.4byte str_btl_un_hyper_sinnosu_802f1268
	.4byte str_btl_hlp_hyper_sinnos_802f1280
	.4byte str_menu_enemy_036_802f1298
	.4byte str_c_sinnosuke_h_802f12a8
	.4byte str_SIS_Z_1_802f0c04
	.4byte str_menu_monosiri_tou_802f1148
	.4byte str_btl_un_bomhei_802f12b8
	.4byte str_btl_hlp_bomhei_802f12c8
	.4byte str_menu_enemy_061_802f12d8
	.4byte str_c_bomhey_802f12e8
	.4byte str_BOM_Z_1_802f12f4
	.4byte str_menu_monosiri_tou_802f1148
	.4byte str_btl_un_borodo_802f12fc
	.4byte str_btl_hlp_borodo_802f130c
	.4byte str_menu_enemy_077_802f131c
	.4byte str_c_borodo_802f132c
	.4byte str_Z_1_80422828
	.4byte str_menu_monosiri_tou_802f1148
	.4byte str_btl_un_borodo_king_802f1338
	.4byte str_btl_hlp_borodo_king_802f134c
	.4byte str_menu_enemy_190_802f1360
	.4byte str_c_borodo_g_802f1370
	.4byte str_Z_1_80422828
	.4byte str_menu_monosiri_tou_802f1148
	.4byte str_btl_un_crimson_togem_802f137c
	.4byte str_btl_hlp_crimson_toge_802f1394
	.4byte str_menu_enemy_191_802f13ac
	.4byte str_c_met_h_802f13bc
	.4byte str_TMT_Z_1_802f13c4
	.4byte str_menu_monosiri_tou_802f1148
	.4byte str_btl_un_ura_noko_802f13cc
	.4byte str_btl_hlp_ura_noko_802f13dc
	.4byte str_menu_enemy_031_802f13f0
	.4byte str_c_uranoko_802f1400
	.4byte str_NKT_Z_1_802f0ab0
	.4byte str_menu_monosiri_tou_802f1148
	.4byte str_btl_un_ura_pata_802f140c
	.4byte str_btl_hlp_ura_pata_802f141c
	.4byte str_menu_enemy_032_802f1430
	.4byte str_c_uranoko_802f1400
	.4byte str_PTP_Z_1_802f0b00
	.4byte str_menu_monosiri_tou_802f1148
	.4byte str_btl_un_kamec_red_802f1440
	.4byte str_btl_hlp_kamec_red_802f1454
	.4byte str_menu_enemy_169_802f1468
	.4byte str_c_kamek_r_802f1478
	.4byte str_KMR_Z_1_802f1484
	.4byte str_menu_monosiri_tou_802f1148
	.4byte str_btl_un_kamec_red_bun_802f148c
	.4byte str_btl_hlp_kamec_red_bu_802f14a4
	.4byte 0x00000000
	.4byte str_c_kamek_r_802f1478
	.4byte str_KMR_Z_1_802f1484
	.4byte str_menu_monosiri_tou_802f1148
	.4byte str_btl_un_kamec_white_802f14c0
	.4byte str_btl_hlp_kamec_white_802f14d4
	.4byte str_menu_enemy_170_802f14e8
	.4byte str_c_kamek_w_802f14f8
	.4byte str_KMW_Z_1_802f1504
	.4byte str_menu_monosiri_tou_802f1148
	.4byte str_btl_un_kamec_white_b_802f150c
	.4byte str_btl_hlp_kamec_white__802f1528
	.4byte 0x00000000
	.4byte str_c_kamek_w_802f14f8
	.4byte str_KMW_Z_1_802f1504
	.4byte str_menu_monosiri_tou_802f1148
	.4byte str_btl_un_kamec_green_802f1544
	.4byte str_btl_hlp_kamec_green_802f1558
	.4byte str_menu_enemy_171_802f156c
	.4byte str_c_kamek_g_802f157c
	.4byte str_KMG_Z_1_802f1588
	.4byte str_menu_monosiri_tou_802f1148
	.4byte str_btl_un_kamec_green_b_802f1590
	.4byte str_btl_hlp_kamec_green__802f15ac
	.4byte 0x00000000
	.4byte str_c_kamek_g_802f157c
	.4byte str_KMG_Z_1_802f1588
	.4byte str_menu_monosiri_tou_802f1148
	.4byte str_btl_un_dark_keeper_802f15c8
	.4byte str_btl_hlp_dark_keeper_802f15dc
	.4byte str_menu_enemy_184_802f15f0
	.4byte str_c_monban_t_802f1600
	.4byte str_Z_1_80422828
	.4byte str_menu_monosiri_tou_802f1148
	.4byte str_btl_un_hammer_bros_802f160c
	.4byte str_btl_hlp_hammer_bros_802f1620
	.4byte str_menu_enemy_067_802f1634
	.4byte str_c_burosu_h_802f1644
	.4byte str_BRO_Z_1_802f1650
	.4byte str_menu_monosiri_tou_802f1148
	.4byte str_btl_un_boomerang_bro_802f1658
	.4byte str_btl_hlp_boomerang_br_802f1670
	.4byte str_menu_enemy_068_802f1688
	.4byte str_c_burosu_b_802f1698
	.4byte str_BRO_Z_1_802f1650
	.4byte str_menu_monosiri_tou_802f1148
	.4byte str_btl_un_fire_bros_802f16a4
	.4byte str_btl_hlp_fire_bros_802f16b8
	.4byte str_menu_enemy_069_802f16cc
	.4byte str_c_burosu_f_802f16dc
	.4byte str_BRO_Z_1_802f1650
	.4byte str_menu_monosiri_tou_802f1148
	.4byte str_btl_un_burst_wanwan_802f16e8
	.4byte str_btl_hlp_burst_wanwan_802f16fc
	.4byte str_menu_enemy_185_802f1714
	.4byte str_c_wanwan_a_802f1724
	.4byte str_WAN_Z_1_802f1730
	.4byte str_menu_monosiri_tou_802f1148
	.4byte str_btl_un_togenoko_ace_802f1738
	.4byte str_btl_hlp_togenoko_ace_802f174c
	.4byte str_menu_enemy_175_802f1764
	.4byte str_c_togenoko_b_802f1774
	.4byte str_Z_1_80422828
	.4byte str_menu_monosiri_tou_802f1148
	.4byte str_btl_un_iron_sinemon_802f1784
	.4byte str_btl_hlp_iron_sinemon_802f1798
	.4byte str_menu_enemy_038_802f17b0
	.4byte str_c_sinemon_a_802f17c0
	.4byte str_SIN_Z_1_802f0e88
	.4byte str_menu_monosiri_tou_802f1148
	.4byte str_btl_un_iron_sinemon2_802f17cc
	.4byte str_btl_hlp_iron_sinemon_802f17e4
	.4byte str_menu_enemy_039_802f17fc
	.4byte str_c_sinemon_m_802f180c
	.4byte str_SIN_Z_1_802f0e88
	.4byte str_menu_monosiri_tou_802f1148
	.4byte str_btl_un_koopa_802f1818
	.4byte str_btl_hlp_koopa_tou_802f1828
	.4byte str_menu_enemy_187_802f183c
	.4byte str_c_koopa_802f184c
	.4byte str_KPA_Z_1_802f1854
	.4byte str_menu_monosiri_nara_802f079c
	.4byte str_btl_un_champion_802f185c
	.4byte str_btl_hlp_champion_802f186c
	.4byte str_menu_enemy_142_802f1880
	.4byte str_c_bred_h_802f1890
	.4byte str_Z_1_80422828
	.4byte str_menu_monosiri_tou_802f1148
	.4byte str_btl_un_macho_gance_802f189c
	.4byte str_btl_hlp_macho_gansu_802f18b0
	.4byte str_menu_enemy_141_802f18c4
	.4byte str_c_m_gansu_802f18d4
	.4byte str_Z_1_80422828
	.4byte str_menu_monosiri_tou_802f1148
	.4byte str_btl_un_hyper_kuriboo_802f18e0
	.4byte str_btl_hlp_hyper_kuribo_802f18f8
	.4byte str_menu_enemy_023_802f1910
	.4byte str_c_kuribo_h_802f1920
	.4byte str_KUR_Z_2_802f0794
	.4byte str_menu_monosiri_gra_802f192c
	.4byte str_btl_un_hyper_patakur_802f1940
	.4byte str_btl_hlp_hyper_pataku_802f1958
	.4byte str_menu_enemy_025_802f1970
	.4byte str_c_kuribo_h_802f1920
	.4byte str_PTK_Z_2_802f07e4
	.4byte str_menu_monosiri_gra_802f192c
	.4byte str_btl_un_hyper_togekur_802f1980
	.4byte str_btl_hlp_hyper_togeku_802f1998
	.4byte str_menu_enemy_024_802f19b0
	.4byte str_c_kuribo_h_802f1920
	.4byte str_TGK_Z_2_802f0820
	.4byte str_menu_monosiri_gra_802f192c
	.4byte str_btl_un_pansy_802f19c0
	.4byte str_btl_hlp_pansy_802f19d0
	.4byte str_menu_enemy_082_802f19e0
	.4byte str_c_pansy_802f19f0
	.4byte str_PAN_Z_1_802f19f8
	.4byte str_menu_monosiri_gra_802f192c
	.4byte str_btl_un_twinkling_pan_802f1a00
	.4byte str_btl_hlp_twinkling_pa_802f1a18
	.4byte str_menu_enemy_083_802f1a30
	.4byte str_c_kpansy_802f1a40
	.4byte str_PAN_Z_1_802f19f8
	.4byte str_menu_monosiri_gra_802f192c
	.4byte str_btl_un_hyper_sinemon_802f1a4c
	.4byte str_btl_hlp_hyper_sinemo_802f1a64
	.4byte str_menu_enemy_037_802f1a7c
	.4byte str_c_sinemon_h_802f1a8c
	.4byte str_SIN_Z_1_802f0e88
	.4byte str_menu_monosiri_gra_802f192c
	.4byte str_btl_un_met_802f1a98
	.4byte str_btl_hlp_met_802f1aa4
	.4byte str_menu_enemy_048_802f1ab0
	.4byte str_c_met_80422830
	.4byte str_MET_Z_1_802f1ac0
	.4byte str_menu_monosiri_jin_802f1ac8
	.4byte str_btl_un_togemet_802f1adc
	.4byte str_btl_hlp_togemet_802f1aec
	.4byte str_menu_enemy_049_802f1afc
	.4byte str_c_met_80422830
	.4byte str_TMT_Z_1_802f13c4
	.4byte str_menu_monosiri_jin_802f1ac8
	.4byte str_btl_un_basabasa_802f1b0c
	.4byte str_btl_hlp_basabasa_802f1b1c
	.4byte str_menu_enemy_040_802f1b30
	.4byte str_c_basabasa_802f1b40
	.4byte str_BSA_Z_1_802f1b4c
	.4byte str_menu_monosiri_jin_802f1ac8
	.4byte str_btl_un_teresa_802f1b54
	.4byte str_btl_hlp_teresa_802f1b64
	.4byte str_menu_enemy_052_802f1b74
	.4byte str_c_teresa_802f1b84
	.4byte str_Z_1_80422828
	.4byte str_menu_monosiri_jin_802f1ac8
	.4byte str_btl_un_atmic_teresa_802f1b90
	.4byte str_btl_hlp_atomic_teres_802f1ba4
	.4byte str_menu_enemy_054_802f1bbc
	.4byte str_c_atmic_trs_802f1bcc
	.4byte str_Z_1_80422828
	.4byte str_menu_monosiri_jin_802f1ac8
	.4byte str_btl_un_hatena_802f1bd8
	.4byte str_btl_hlp_hatena_802f1be8
	.4byte str_menu_enemy_124_802f1bf8
	.4byte str_c_ranpel_802f1c08
	.4byte str_Z_1_80422828
	.4byte str_menu_monosiri_jin_802f1ac8
	.4byte str_btl_un_hatena_802f1bd8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_c_ranpel_802f1c08
	.4byte str_Z_1_80422828
	.4byte str_menu_monosiri_gra_802f192c
	.4byte str_btl_un_rampell_802f1c14
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_c_ranpel_802f1c08
	.4byte str_Z_1_80422828
	.4byte str_menu_monosiri_jin_802f1ac8
	.4byte str_btl_un_gullible_chri_802f1c24
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_c_pkr_80422838
	.4byte str_PRK_Z_1_802f1c40
	.4byte str_menu_monosiri_jin_802f1ac8
	.4byte str_btl_un_gullible_noko_802f1c48
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_c_pnk_80422840
	.4byte str_PNK_Z_1_802f1c64
	.4byte str_menu_monosiri_jin_802f1ac8
	.4byte str_btl_un_gullible_yosh_802f1c6c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_c_babyyoshi_802f1c84
	.4byte str_PYS_Z_1_802f1c90
	.4byte str_menu_monosiri_jin_802f1ac8
	.4byte str_btl_un_gullible_clau_802f1c98
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_c_windy_802f1cb0
	.4byte str_PWD_Z_1_802f1cb8
	.4byte str_menu_monosiri_jin_802f1ac8
	.4byte str_btl_un_hermos_802f1cc0
	.4byte str_btl_hlp_hermos_802f1cd0
	.4byte str_menu_enemy_081_802f1ce0
	.4byte str_c_elmos_802f1cf0
	.4byte str_Z_1_80422828
	.4byte str_menu_monosiri_muj_802f1cf8
	.4byte str_btl_un_bubble_802f1d0c
	.4byte str_btl_hlp_bubble_802f1d1c
	.4byte str_menu_enemy_080_802f1d2c
	.4byte str_c_bubble_802f1d3c
	.4byte str_Z_1_80422828
	.4byte str_menu_monosiri_dou_802f1d48
	.4byte str_btl_un_green_chorobo_802f1d5c
	.4byte str_btl_hlp_green_chorob_802f1d74
	.4byte str_menu_enemy_042_802f1d8c
	.4byte str_c_chorobon_g_802f1d9c
	.4byte str_CBN_Z_1_802f0b5c
	.4byte str_menu_monosiri_muj_802f1cf8
	.4byte str_btl_un_flower_chorob_802f1dac
	.4byte str_btl_hlp_flower_choro_802f1dc4
	.4byte str_menu_enemy_043_802f1ddc
	.4byte str_c_chorobon_f_802f1dec
	.4byte str_CBN_Z_1_802f0b5c
	.4byte str_menu_monosiri_muj_802f1cf8
	.4byte str_btl_un_poison_pakkun_802f1dfc
	.4byte str_btl_hlp_poison_pakku_802f1e14
	.4byte str_menu_enemy_046_802f1e2c
	.4byte str_c_pakflwr_p_802f1e3c
	.4byte str_PKF_Z_1_802f0e2c
	.4byte str_menu_monosiri_muj_802f1cf8
	.4byte str_btl_un_patamet_802f1e48
	.4byte str_btl_hlp_patamet_802f1e58
	.4byte str_menu_enemy_050_802f1e68
	.4byte str_c_met_80422830
	.4byte str_PMT_Z_1_802f1e78
	.4byte str_menu_monosiri_dou_802f1d48
	.4byte str_btl_un_killer_cannon_802f1e80
	.4byte str_btl_hlp_killer_canno_802f1e98
	.4byte str_menu_enemy_059_802f1eb0
	.4byte str_c_killtai_802f1ec0
	.4byte str_KTA_Z_1_802f1ecc
	.4byte str_menu_monosiri_dou_802f1d48
	.4byte str_btl_un_killer_802f1ed4
	.4byte str_btl_hlp_killer_802f1ee4
	.4byte str_menu_enemy_057_802f1ef4
	.4byte str_c_kilr_802f1f04
	.4byte str_KIL_Z_1_802f1f0c
	.4byte str_menu_monosiri_dou_802f1d48
	.4byte str_btl_un_heavy_bom_802f1f14
	.4byte str_btl_hlp_heavy_bom_802f1f28
	.4byte str_menu_enemy_064_802f1f3c
	.4byte str_c_heavy_802f1f4c
	.4byte str_Z_1_80422828
	.4byte str_menu_monosiri_dou_802f1d48
	.4byte str_btl_un_cortez_802f1f54
	.4byte str_btl_hlp_cortez_802f1f64
	.4byte str_menu_enemy_132_802f1f74
	.4byte str_c_korutesu1_802f1f84
	.4byte str_KRT_Z_1_802f1f90
	.4byte str_menu_monosiri_dou_802f1d48
	.4byte str_btl_un_honeduka_802f1f98
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_c_honezuka_802f1fa8
	.4byte str_KRT_Z_1_802f1f90
	.4byte str_menu_monosiri_dou_802f1d48
	.4byte str_btl_un_cortez_claw_802f1fb4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_c_buki4_802f1fc8
	.4byte str_KRT_Z_1_802f1f90
	.4byte str_menu_monosiri_dou_802f1d48
	.4byte str_btl_un_cortez_rapier_802f1fd0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_c_buki3_802f1fe8
	.4byte str_KRT_Z_1_802f1f90
	.4byte str_menu_monosiri_dou_802f1d48
	.4byte str_btl_un_cortez_sword_802f1ff0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_c_buki2_802f2004
	.4byte str_KRT_Z_1_802f1f90
	.4byte str_menu_monosiri_dou_802f1d48
	.4byte str_btl_un_cortez_saber_802f200c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_c_buki1_802f2020
	.4byte str_KRT_Z_1_802f1f90
	.4byte str_menu_monosiri_dou_802f1d48
	.4byte str_btl_un_kanbu3_802f2028
	.4byte str_btl_hlp_kanbu3_802f2038
	.4byte str_menu_enemy_144_802f2048
	.4byte str_c_kanbu_802f08d4
	.4byte str_Z_1_80422828
	.4byte str_menu_monosiri_nara_802f079c
	.4byte str_btl_un_gundan_zako_g_802f2058
	.4byte str_btl_hlp_gundan_zako__802f2074
	.4byte 0x00000000
	.4byte str_c_zako_n_802f0f1c
	.4byte str_Z_1_80422828
	.4byte str_menu_monosiri_nara_802f079c
	.4byte str_btl_un_gundan_zako_g_802f2090
	.4byte str_btl_hlp_gundan_zako__802f2074
	.4byte 0x00000000
	.4byte str_c_zako_n_802f0f1c
	.4byte str_Z_1_80422828
	.4byte str_menu_monosiri_nara_802f079c
	.4byte str_btl_un_gundan_zako_g_802f20ac
	.4byte str_btl_hlp_gundan_zako__802f2074
	.4byte 0x00000000
	.4byte str_c_zako_n_802f0f1c
	.4byte str_Z_1_80422828
	.4byte str_menu_monosiri_nara_802f079c
	.4byte str_btl_un_kurokumorn_802f20c8
	.4byte str_btl_hlp_kurokumorn_802f20dc
	.4byte str_menu_enemy_065_802f20f0
	.4byte str_c_kmoon_802f2100
	.4byte str_Z_1_80422828
	.4byte str_menu_monosiri_eki_802f2108
	.4byte str_btl_un_sambo_mummy_802f211c
	.4byte str_btl_hlp_sambo_mummy_802f2130
	.4byte str_menu_enemy_056_802f2144
	.4byte str_c_sanbo_m_802f2154
	.4byte str_SNB_Z_1_802f11d8
	.4byte str_menu_monosiri_eki_802f2108
	.4byte str_btl_un_patatogemet_802f2160
	.4byte str_btl_hlp_patatogemet_802f2174
	.4byte str_menu_enemy_051_802f2188
	.4byte str_c_met_80422830
	.4byte str_PTM_Z_1_802f2198
	.4byte str_menu_monosiri_eki_802f2108
	.4byte str_btl_un_purple_teresa_802f21a0
	.4byte str_btl_hlp_purple_teres_802f21b8
	.4byte str_menu_enemy_053_802f21d0
	.4byte str_c_teresa_p_802f21e0
	.4byte str_Z_1_80422828
	.4byte str_menu_monosiri_sin_802f21ec
	.4byte str_btl_un_moamoa_802f2200
	.4byte str_btl_hlp_moamoa_802f2210
	.4byte str_menu_enemy_118_802f2220
	.4byte str_c_g_moamoa_802f2230
	.4byte str_S_3_80422848
	.4byte str_menu_monosiri_rsh_802f223c
	.4byte str_btl_un_moamoa_tentac_802f2250
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_c_kuribo_802f0788
	.4byte str_KUR_Z_2_802f0794
	.4byte str_menu_monosiri_rsh_802f223c
	.4byte str_btl_un_moamoa_tentac_802f226c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_c_kuribo_802f0788
	.4byte str_KUR_Z_2_802f0794
	.4byte str_menu_monosiri_rsh_802f223c
	.4byte str_btl_un_moamoa_tentac_802f2284
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_c_kuribo_802f0788
	.4byte str_KUR_Z_2_802f0794
	.4byte str_menu_monosiri_rsh_802f223c
	.4byte str_btl_un_moamoa_mouth_802f22a0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_c_kuribo_802f0788
	.4byte str_KUR_Z_2_802f0794
	.4byte str_menu_monosiri_rsh_802f223c
	.4byte str_btl_un_bllizard_802f22b4
	.4byte str_btl_hlp_bllizard_802f22c4
	.4byte str_menu_enemy_066_802f22d8
	.4byte str_c_kmoon_b_802f22e8
	.4byte str_Z_1_80422828
	.4byte str_menu_monosiri_bom_802f22f4
	.4byte str_btl_un_ice_pakkun_802f2308
	.4byte str_btl_hlp_ice_pakkun_802f231c
	.4byte str_menu_enemy_047_802f2330
	.4byte str_c_pakflwr_a_802f2340
	.4byte str_PKF_Z_1_802f0e2c
	.4byte str_menu_monosiri_bom_802f22f4
	.4byte str_btl_un_sinemon_802f234c
	.4byte str_btl_hlp_sinemon_802f235c
	.4byte str_menu_enemy_034_802f236c
	.4byte str_c_sinemon_802f237c
	.4byte str_SIN_Z_1_802f0e88
	.4byte str_menu_monosiri_moo_802f2388
	.4byte str_btl_un_barriern_z_802f239c
	.4byte str_btl_hlp_barriern_z_802f23b0
	.4byte str_menu_enemy_073_802f23c4
	.4byte str_c_baria_z_802f23d4
	.4byte str_Z_1_80422828
	.4byte str_menu_monosiri_moo_802f2388
	.4byte str_btl_un_barriern_sate_802f23e0
	.4byte str_btl_hlp_barriern_z_p_802f23fc
	.4byte str_menu_enemy_074_802f2418
	.4byte str_c_baria_z_802f23d4
	.4byte str_Z_2_8042282c
	.4byte str_menu_monosiri_moo_802f2388
	.4byte str_btl_un_barriern_cust_802f2428
	.4byte str_btl_hlp_barriern_cus_802f2440
	.4byte str_menu_enemy_179_802f2458
	.4byte str_c_baria_c_802f2468
	.4byte str_Z_1_80422828
	.4byte str_menu_monosiri_aji_802f2474
	.4byte str_btl_un_barriern_cust_802f2488
	.4byte str_btl_hlp_barriern_cus_802f24ac
	.4byte str_menu_enemy_180_802f24d0
	.4byte str_c_baria_c_802f2468
	.4byte str_Z_2_8042282c
	.4byte str_menu_monosiri_aji_802f2474
	.4byte str_btl_un_gundan_zako_m_802f24e0
	.4byte str_btl_hlp_gundan_zako__802f24fc
	.4byte str_menu_enemy_075_802f251c
	.4byte str_c_zako_m_802f252c
	.4byte str_Z_1_80422828
	.4byte str_menu_monosiri_aji_802f2474
	.4byte str_btl_un_gundan_zako_e_802f2538
	.4byte str_btl_hlp_gundan_zako__802f2554
	.4byte str_menu_enemy_076_802f2570
	.4byte str_c_zako_e_802f2580
	.4byte str_Z_1_80422828
	.4byte str_menu_monosiri_aji_802f2474
	.4byte str_btl_un_magnum_batten_802f258c
	.4byte str_btl_hlp_magnum_batte_802f25ac
	.4byte str_menu_enemy_140_802f25cc
	.4byte str_c_mb_robo_2b_802f25dc
	.4byte str_MGN_Z_1_802f10d0
	.4byte str_menu_monosiri_aji_802f2474
	.4byte str_btl_un_rocket_punch__802f25ec
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_c_mb_robo_1b_802f10c0
	.4byte str_MGN_A1_4_802f10ec
	.4byte str_menu_monosiri_aji_802f2474
	.4byte str_btl_un_basabasa_chur_802f2608
	.4byte str_btl_hlp_basabasa_chu_802f2620
	.4byte str_menu_enemy_041_802f263c
	.4byte str_c_cyuru_802f264c
	.4byte str_BSA_Z_1_802f1b4c
	.4byte str_menu_monosiri_las_802f2654
	.4byte str_btl_un_phantom_802f2668
	.4byte str_btl_hlp_phantom_802f2678
	.4byte str_menu_enemy_178_802f2688
	.4byte str_c_phantom_802f2698
	.4byte str_Z_1_80422828
	.4byte str_menu_monosiri_las_802f2654
	.4byte str_btl_un_super_killer__802f26a4
	.4byte str_btl_hlp_super_killer_802f26c0
	.4byte str_menu_enemy_060_802f26dc
	.4byte str_c_killtai_g_802f26ec
	.4byte str_KTA_Z_1_802f1ecc
	.4byte str_menu_monosiri_las_802f2654
	.4byte str_btl_un_super_killer_802f26f8
	.4byte str_btl_hlp_super_killer_802f270c
	.4byte str_menu_enemy_058_802f2724
	.4byte str_c_kilr_g_802f2734
	.4byte str_KIL_Z_1_802f1f0c
	.4byte str_menu_monosiri_las_802f2654
	.4byte str_btl_un_wanwan_802f2740
	.4byte str_btl_hlp_wanwan_802f2750
	.4byte str_menu_enemy_079_802f2760
	.4byte str_c_wanwan_802f2770
	.4byte str_WAN_Z_1_802f1730
	.4byte str_menu_monosiri_las_802f2654
	.4byte str_btl_un_super_mahorn_802f277c
	.4byte str_btl_hlp_super_mahorn_802f2790
	.4byte str_menu_enemy_071_802f27a8
	.4byte str_c_maho_b_802f27b8
	.4byte str_MAH_Z_M_802f27c4
	.4byte str_menu_monosiri_las_802f2654
	.4byte str_btl_un_super_mahorn__802f27cc
	.4byte str_btl_hlp_super_mahorn_802f27e8
	.4byte 0x00000000
	.4byte str_c_maho_b_802f27b8
	.4byte str_MAH_Z_M_802f27c4
	.4byte str_menu_monosiri_las_802f2654
	.4byte str_btl_un_karon_802f2804
	.4byte str_btl_hlp_karon_802f2814
	.4byte str_menu_enemy_044_802f2824
	.4byte str_c_karon_h_802f2834
	.4byte str_KRN_Z_1_802f0bb8
	.4byte str_menu_monosiri_las_802f2654
	.4byte str_btl_un_black_karon_802f2840
	.4byte str_btl_hlp_black_karon_802f2854
	.4byte str_menu_enemy_045_802f2868
	.4byte str_c_karon_b_h_802f2878
	.4byte str_KRN_Z_1_802f0bb8
	.4byte str_menu_monosiri_las_802f2654
	.4byte str_btl_un_bunbaba_802f2884
	.4byte str_btl_hlp_bunbaba_802f2894
	.4byte str_menu_enemy_196_802f28a4
	.4byte str_c_gonbaba_b_802f28b4
	.4byte str_GNB_Z_1_802f0d60
	.4byte str_menu_monosiri_las_802f2654
	.4byte str_btl_un_majolyne4_802f28c0
	.4byte str_btl_hlp_majyorin2_802f28d4
	.4byte str_menu_enemy_107_802f28e8
	.4byte str_c_majyorin_802f0fe0
	.4byte str_MJR_M_1_802f0fec
	.4byte str_menu_monosiri_nara_802f079c
	.4byte str_btl_un_marilyn4_802f28f8
	.4byte str_btl_hlp_maririn2_802f2908
	.4byte str_menu_enemy_111_802f291c
	.4byte str_c_maririn_802f1024
	.4byte str_MRR_M_1_802f1030
	.4byte str_menu_monosiri_nara_802f079c
	.4byte str_btl_un_rampell_802f1c14
	.4byte str_btl_hlp_ranperu_las_802f292c
	.4byte str_menu_enemy_125_802f2940
	.4byte str_c_ranpel_802f1c08
	.4byte str_Z_1_80422828
	.4byte str_menu_monosiri_nara_802f079c
	.4byte str_btl_un_rampell_802f1c14
	.4byte str_btl_hlp_ranperu_las_802f292c
	.4byte 0x00000000
	.4byte str_c_ranpel_802f1c08
	.4byte str_Z_1_80422828
	.4byte str_menu_monosiri_nara_802f079c
	.4byte str_btl_un_rampell_802f1c14
	.4byte str_btl_hlp_ranperu_las_802f292c
	.4byte 0x00000000
	.4byte str_c_ranpel_802f1c08
	.4byte str_Z_1_80422828
	.4byte str_menu_monosiri_nara_802f079c
	.4byte str_btl_un_rampell_802f1c14
	.4byte str_btl_hlp_ranperu_las_802f292c
	.4byte 0x00000000
	.4byte str_c_ranpel_802f1c08
	.4byte str_Z_1_80422828
	.4byte str_menu_monosiri_nara_802f079c
	.4byte str_btl_un_rampell_802f1c14
	.4byte str_btl_hlp_ranperu_las_802f292c
	.4byte 0x00000000
	.4byte str_c_ranpel_802f1c08
	.4byte str_Z_1_80422828
	.4byte str_menu_monosiri_nara_802f079c
	.4byte str_btl_un_rampell_802f1c14
	.4byte str_btl_hlp_ranperu_las_802f292c
	.4byte 0x00000000
	.4byte str_c_ranpel_802f1c08
	.4byte str_Z_1_80422828
	.4byte str_menu_monosiri_nara_802f079c
	.4byte str_btl_un_rampell_802f1c14
	.4byte str_btl_hlp_ranperu_las_802f292c
	.4byte 0x00000000
	.4byte str_c_ranpel_802f1c08
	.4byte str_Z_1_80422828
	.4byte str_menu_monosiri_nara_802f079c
	.4byte str_btl_un_rampell_802f1c14
	.4byte str_btl_hlp_ranperu_las_802f292c
	.4byte 0x00000000
	.4byte str_c_ranpel_802f1c08
	.4byte str_Z_1_80422828
	.4byte str_menu_monosiri_nara_802f079c
	.4byte str_btl_un_rampell_802f1c14
	.4byte str_btl_hlp_ranperu_las_802f292c
	.4byte 0x00000000
	.4byte str_c_ranpel_802f1c08
	.4byte str_Z_1_80422828
	.4byte str_menu_monosiri_nara_802f079c
	.4byte str_btl_un_koopa_802f1818
	.4byte str_btl_hlp_koopa_802f2950
	.4byte str_menu_enemy_149_802f2960
	.4byte str_c_koopa_802f184c
	.4byte str_KPA_Z_1_802f1854
	.4byte str_menu_monosiri_nara_802f079c
	.4byte str_btl_un_kamec_obaba_802f2970
	.4byte str_btl_hlp_kamec_obaba_802f2984
	.4byte str_menu_enemy_150_802f2998
	.4byte str_c_kamek_bb_802f29a8
	.4byte str_Z_1_80422828
	.4byte str_menu_monosiri_nara_802f079c
	.4byte str_btl_un_batten_leader_802f29b4
	.4byte str_btl_hlp_batsugalf_802f29cc
	.4byte str_menu_enemy_151_802f29e0
	.4byte str_c_shuryo_802f29f0
	.4byte str_Z_1_80422828
	.4byte str_menu_monosiri_las_802f2654
	.4byte str_btl_un_batten_satell_802f29fc
	.4byte str_btl_hlp_batsu_satell_802f2a14
	.4byte str_menu_enemy_152_802f2a2c
	.4byte str_c_shuryo_p_802f2a3c
	.4byte str_Z_1_80422828
	.4byte str_menu_monosiri_las_802f2654
	.4byte str_btl_un_black_peach_802f2a48
	.4byte str_btl_hlp_shadowqueen1_802f2a5c
	.4byte 0x00000000
	.4byte str_c_b_peach_b_802f2a74
	.4byte str_KRT_Z_1_802f1f90
	.4byte str_menu_monosiri_las_802f2654
	.4byte str_btl_un_shadow_queen_802f2a80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_c_q_kage_m_802f2a94
	.4byte str_KRT_Z_1_802f1f90
	.4byte str_menu_monosiri_las_802f2654
	.4byte str_btl_un_shadow_queen_802f2a80
	.4byte str_btl_hlp_shadowqueen2_802f2aa0
	.4byte str_menu_enemy_154_802f2ab8
	.4byte str_c_q_kage_m_802f2a94
	.4byte str_KRT_Z_1_802f1f90
	.4byte str_menu_monosiri_las_802f2654
	.4byte str_btl_un_shadow_queen_802f2a80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_c_b_hand_802f2ac8
	.4byte str_KRT_Z_1_802f1f90
	.4byte str_menu_monosiri_las_802f2654
	.4byte str_btl_un_shadow_queen_802f2a80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_c_s_hand_802f2ad4
	.4byte str_KRT_Z_1_802f1f90
	.4byte str_menu_monosiri_las_802f2654
	.4byte str_btl_un_yami_kuriboo_802f2ae0
	.4byte str_btl_hlp_yami_kuriboo_802f2af4
	.4byte str_menu_enemy_026_802f2b0c
	.4byte str_c_kuribo_y_802f2b1c
	.4byte str_KUR_Z_2_802f0794
	.4byte str_menu_monosiri_shiga_802f2b28
	.4byte str_btl_un_yami_patakuri_802f2b3c
	.4byte str_btl_hlp_yami_patakur_802f2b54
	.4byte str_menu_enemy_028_802f2b6c
	.4byte str_c_kuribo_y_802f2b1c
	.4byte str_PTK_Z_2_802f07e4
	.4byte str_menu_monosiri_shiga_802f2b28
	.4byte str_btl_un_yami_togekuri_802f2b7c
	.4byte str_btl_hlp_yami_togekur_802f2b94
	.4byte str_menu_enemy_027_802f2bac
	.4byte str_c_kuribo_y_802f2b1c
	.4byte str_TGK_Z_2_802f0820
	.4byte str_menu_monosiri_shiga_802f2b28
	.4byte str_btl_un_yami_noko_802f2bbc
	.4byte str_btl_hlp_yami_noko_802f2bd0
	.4byte str_menu_enemy_029_802f2be4
	.4byte str_c_yaminoko_802f2bf4
	.4byte str_NKT_Z_1_802f0ab0
	.4byte str_menu_monosiri_shiga_802f2b28
	.4byte str_btl_un_yami_pata_802f2c00
	.4byte str_btl_hlp_yami_pata_802f2c14
	.4byte str_menu_enemy_030_802f2c28
	.4byte str_c_yaminoko_802f2bf4
	.4byte str_PTP_Z_1_802f0b00
	.4byte str_menu_monosiri_shiga_802f2b28
	.4byte str_btl_un_badge_borodo_802f2c38
	.4byte str_btl_hlp_badge_borodo_802f2c4c
	.4byte str_menu_enemy_078_802f2c64
	.4byte str_c_borodo_t_802f2c74
	.4byte str_Z_1_80422828
	.4byte str_menu_monosiri_shiga_802f2b28
	.4byte str_btl_un_hyper_jyugem_802f2c80
	.4byte str_btl_hlp_hyper_jyugem_802f2c94
	.4byte str_menu_enemy_186_802f2cac
	.4byte str_c_jugemu_b_802f2cbc
	.4byte str_JGM_Z_1_802f121c
	.4byte str_menu_monosiri_shiga_802f2b28
	.4byte str_btl_un_hyper_togezo_802f2cc8
	.4byte str_btl_hlp_hyper_togezo_802f2cdc
	.4byte str_menu_enemy_173_802f2cf4
	.4byte str_c_togezo_b_802f2d04
	.4byte str_TGZ_Z_1_802f1260
	.4byte str_menu_monosiri_shiga_802f2b28
	.4byte str_btl_un_mahorn_802f2d10
	.4byte str_btl_hlp_mahorn_802f2d20
	.4byte str_menu_enemy_070_802f2d30
	.4byte str_c_maho_802f2d40
	.4byte str_MAH_Z_M_802f27c4
	.4byte str_menu_monosiri_shiga_802f2b28
	.4byte str_btl_un_pakkun_flower_802f2d48
	.4byte str_btl_hlp_pakkun_flowe_802f2d60
	.4byte str_menu_enemy_014_802f2d78
	.4byte str_c_pakflwr_802f2d88
	.4byte str_PKF_Z_1_802f0e2c
	.4byte str_menu_monosiri_shiga_802f2b28
	.4byte str_btl_un_hennya_802f2d94
	.4byte str_btl_hlp_hennya_802f2da4
	.4byte str_menu_enemy_022_802f2db4
	.4byte str_c_hannya_t_802f2dc4
	.4byte str_Z_1_80422828
	.4byte str_menu_monosiri_shiga_802f2b28
	.4byte str_btl_un_churantalar_802f2dd0
	.4byte str_btl_hlp_churantalar_802f2de4
	.4byte str_menu_enemy_176_802f2df8
	.4byte str_c_paid_b_802f2e08
	.4byte str_PAI_Z_1_802f0ec8
	.4byte str_menu_monosiri_shiga_802f2b28
	.4byte str_btl_un_yamitogedarum_802f2e14
	.4byte str_btl_hlp_yamitogedaru_802f2e2c
	.4byte str_menu_enemy_174_802f2e44
	.4byte str_c_togedaruma_b_802f2e54
	.4byte str_TGD_Z_1_802f0c54
	.4byte str_menu_monosiri_shiga_802f2b28
	.4byte str_btl_un_dokugassun_802f2e64
	.4byte str_btl_hlp_dokugassun_802f2e78
	.4byte str_menu_enemy_013_802f2e8c
	.4byte str_c_kmoon_g_802f2e9c
	.4byte str_Z_1_80422828
	.4byte str_menu_monosiri_shiga_802f2b28
	.4byte str_btl_un_basabasa_gree_802f2ea8
	.4byte str_btl_hlp_basabasa_gre_802f2ec0
	.4byte str_menu_enemy_177_802f2ed8
	.4byte str_c_basabasa_g_802f2ee8
	.4byte str_BSA_Z_1_802f1b4c
	.4byte str_menu_monosiri_shiga_802f2b28
	.4byte str_btl_un_giant_bomb_802f2ef8
	.4byte str_btl_hlp_giant_bomb_802f2f0c
	.4byte str_menu_enemy_182_802f2f20
	.4byte str_c_giant_802f2f30
	.4byte str_Z_1_80422828
	.4byte str_menu_monosiri_shiga_802f2b28
	.4byte str_btl_un_mahorn_custom_802f2f38
	.4byte str_btl_hlp_mahorn_custo_802f2f50
	.4byte str_menu_enemy_183_802f2f68
	.4byte str_c_maho_w_802f2f78
	.4byte str_MAH_Z_M_802f27c4
	.4byte str_menu_monosiri_shiga_802f2b28
	.4byte str_btl_un_mahorn_custom_802f2f84
	.4byte str_btl_hlp_mahorn_custo_802f2fa0
	.4byte 0x00000000
	.4byte str_c_maho_w_802f2f78
	.4byte str_MAH_Z_M_802f27c4
	.4byte str_menu_monosiri_shiga_802f2b28
	.4byte str_btl_un_zonbaba_802f2fc0
	.4byte str_btl_hlp_zonbaba_802f2fd0
	.4byte str_menu_enemy_195_802f2fe0
	.4byte str_c_gonbaba_z_802f2ff0
	.4byte str_GNB_Z_1_802f0d60
	.4byte str_menu_monosiri_shiga_802f2b28
	.4byte str_btl_un_crimson_met_802f2ffc
	.4byte str_btl_hlp_crimson_met_802f3010
	.4byte 0x00000000
	.4byte str_c_met_h_802f13bc
	.4byte str_MET_Z_1_802f1ac0
	.4byte str_menu_monosiri_tou_802f1148
	.4byte str_btl_un_crimson_patam_802f3024
	.4byte str_btl_hlp_crimson_pata_802f303c
	.4byte 0x00000000
	.4byte str_c_met_h_802f13bc
	.4byte str_PMT_Z_1_802f1e78
	.4byte str_menu_monosiri_tou_802f1148
	.4byte str_btl_un_crimson_patat_802f3054
	.4byte str_btl_hlp_crimson_pata_802f3070
	.4byte 0x00000000
	.4byte str_c_met_h_802f13bc
	.4byte str_PTM_Z_1_802f2198
	.4byte str_menu_monosiri_tou_802f1148
	.4byte str_btl_un_hyper_bomhei_802f308c
	.4byte str_btl_hlp_hyper_bomhei_802f30a0
	.4byte 0x00000000
	.4byte str_c_bomhey_h_802f30b8
	.4byte str_BOM_Z_1_802f12f4
	.4byte str_menu_monosiri_jon_802f30c4
	.4byte str_btl_un_ultra_bomhei_802f30d8
	.4byte str_btl_hlp_ultra_bomhei_802f30ec
	.4byte 0x00000000
	.4byte str_c_bomhey_m_802f3104
	.4byte str_BOM_Z_1_802f12f4
	.4byte str_menu_monosiri_jon_802f30c4
	.4byte str_btl_un_christine_802f3110
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_c_kuribo_802f0788
	.4byte str_KUR_Z_2_802f0794
	.4byte str_KUR_Z_2_802f0794
	.4byte str_btl_un_frankli_802f3124
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_c_kuribo_802f0788
	.4byte str_KUR_Z_2_802f0794
	.4byte str_KUR_Z_2_802f0794
	.4byte str_btl_un_frankli_802f3124
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_c_kuribo_802f0788
	.4byte str_KUR_Z_2_802f0794
	.4byte str_KUR_Z_2_802f0794
	.4byte str_btl_un_frankli_802f3124
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_c_kuribo_802f0788
	.4byte str_KUR_Z_2_802f0794
	.4byte str_KUR_Z_2_802f0794
	.4byte str_btl_un_act_mario_802f3134
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_c_kuribo_802f0788
	.4byte str_KUR_Z_2_802f0794
	.4byte str_KUR_Z_2_802f0794
	.4byte str_btl_un_act_clauda_802f3148
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_c_kuribo_802f0788
	.4byte str_KUR_Z_2_802f0794
	.4byte str_KUR_Z_2_802f0794
	.4byte str_btl_un_act_teresa_802f315c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_c_kuribo_802f0788
	.4byte str_KUR_Z_2_802f0794
	.4byte str_KUR_Z_2_802f0794
	.4byte str_btl_un_act_atmic_ter_802f3170
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_c_kuribo_802f0788
	.4byte str_KUR_Z_2_802f0794
	.4byte str_KUR_Z_2_802f0794
	.4byte str_btl_un_act_kinopio_802f3188
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_c_kuribo_802f0788
	.4byte str_KUR_Z_2_802f0794
	.4byte str_KUR_Z_2_802f0794
	.4byte str_btl_un_act_kinopiko_802f319c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_c_kuribo_802f0788
	.4byte str_KUR_Z_2_802f0794
	.4byte str_KUR_Z_2_802f0794
	.4byte str_btl_un_test_802f31b0
	.4byte str_btl_hlp_kuriboo_802f0768
	.4byte 0x00000000
	.4byte str_c_kuribo_802f0788
	.4byte str_KUR_Z_2_802f0794
	.4byte str_menu_monosiri_gor_802f0918
	.4byte str_btl_un_kanbu2_802f31bc
	.4byte str_btl_hlp_kanbu2_802f31cc
	.4byte 0x00000000
	.4byte str_c_kanbu_802f08d4
	.4byte str_Z_1_80422828
	.4byte str_menu_monosiri_gon_802f0b08
	.4byte str_btl_un_majolyne2_802f31dc
	.4byte str_btl_hlp_majyorin_802f0fbc
	.4byte 0x00000000
	.4byte str_c_majyorin_802f0fe0
	.4byte str_MJR_Z_1_802f31f0
	.4byte str_menu_monosiri_nara_802f079c
	.4byte str_btl_un_marilyn2_802f31f8
	.4byte str_btl_hlp_maririn_802f1004
	.4byte 0x00000000
	.4byte str_c_maririn_802f1024
	.4byte str_MRR_Z_1_802f3208
	.4byte str_menu_monosiri_shiga_802f2b28
	.4byte str_btl_un_vivian2_802f3210
	.4byte str_btl_hlp_vivian_802f1048
	.4byte 0x00000000
	.4byte str_c_vivian_802f1068
	.4byte str_PTR_Z_1_802f3220
	.4byte str_menu_monosiri_gor_802f0918
	.4byte str_btl_un_majolyne3_802f3228
	.4byte str_btl_hlp_majyorin_802f0fbc
	.4byte 0x00000000
	.4byte str_c_majyorin_802f0fe0
	.4byte str_MJR_Z_1_802f31f0
	.4byte str_menu_monosiri_gon_802f0b08
	.4byte str_btl_un_marilyn3_802f323c
	.4byte str_btl_hlp_maririn_802f1004
	.4byte 0x00000000
	.4byte str_c_maririn_802f1024
	.4byte str_MRR_Z_1_802f3208
	.4byte str_menu_monosiri_nara_802f079c
	.4byte str_btl_un_mecha_kuri_802f324c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_c_kuribo_802f0788
	.4byte str_KUR_Z_2_802f0794
	.4byte str_menu_monosiri_shiga_802f2b28
	.4byte str_btl_un_mecha_kame_802f3260
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_c_kuribo_802f0788
	.4byte str_KUR_Z_2_802f0794
	.4byte str_menu_monosiri_gor_802f0918
	.4byte str_btl_un_okorl_802f3274
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_c_kuribo_802f0788
	.4byte str_KUR_Z_2_802f0794
	.4byte str_menu_monosiri_gon_802f0b08
	.4byte str_btl_un_yowarl_802f3284
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_c_kuribo_802f0788
	.4byte str_KUR_Z_2_802f0794
	.4byte str_menu_monosiri_nara_802f079c
	.4byte str_btl_un_tuyonarl_802f3294
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_c_kuribo_802f0788
	.4byte str_KUR_Z_2_802f0794
	.4byte str_menu_monosiri_shiga_802f2b28
	.4byte str_btl_un_wanawana_802f32a4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_c_kuribo_802f0788
	.4byte str_KUR_Z_2_802f0794
	.4byte str_menu_monosiri_gor_802f0918
	.4byte str_btl_un_minarai_kamec_802f32b4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_c_kuribo_802f0788
	.4byte str_KUR_Z_2_802f0794
	.4byte str_menu_monosiri_gon_802f0b08
	.4byte str_btl_un_heiho_802f32cc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_c_kuribo_802f0788
	.4byte str_KUR_Z_2_802f0794
	.4byte str_menu_monosiri_nara_802f079c
	.4byte str_btl_un_dancing_heiho_802f32dc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_c_kuribo_802f0788
	.4byte str_KUR_Z_2_802f0794
	.4byte str_menu_monosiri_shiga_802f2b28
	.4byte str_btl_un_fire_heiho_802f32f4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_c_kuribo_802f0788
	.4byte str_KUR_Z_2_802f0794
	.4byte str_menu_monosiri_gor_802f0918
	.4byte str_btl_un_command_heiho_802f3308
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_c_kuribo_802f0788
	.4byte str_KUR_Z_2_802f0794
	.4byte str_menu_monosiri_gon_802f0b08
	.4byte str_btl_un_black_heiho_802f3320
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_c_kuribo_802f0788
	.4byte str_KUR_Z_2_802f0794
	.4byte str_menu_monosiri_nara_802f079c
	.4byte str_btl_un_hatty_802f3334
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_c_kuribo_802f0788
	.4byte str_KUR_Z_2_802f0794
	.4byte str_menu_monosiri_shiga_802f2b28
	.4byte str_btl_un_kohatty_802f3344
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_c_kuribo_802f0788
	.4byte str_KUR_Z_2_802f0794
	.4byte str_menu_monosiri_gor_802f0918
	.4byte str_btl_un_ufo_802f3354
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_c_kuribo_802f0788
	.4byte str_KUR_Z_2_802f0794
	.4byte str_menu_monosiri_gon_802f0b08
	.4byte str_btl_un_powan_802f3360
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_c_powan_802f3370
	.4byte str_Z_1_80422828
	.4byte str_menu_monosiri_nara_802f079c
	.4byte str_btl_un_fighter_802f3378
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_c_kuribo_802f0788
	.4byte str_KUR_Z_2_802f0794
	.4byte str_menu_monosiri_shiga_802f2b28
	.4byte str_btl_un_nancy_802f3388
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_c_kuribo_802f0788
	.4byte str_KUR_Z_2_802f0794
	.4byte str_KUR_Z_2_802f0794
	.4byte str_btl_un_master_802f3398
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_c_kuribo_802f0788
	.4byte str_KUR_Z_2_802f0794
	.4byte str_KUR_Z_2_802f0794
	.4byte str_btl_un_reporter_802f33a8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_c_kuribo_802f0788
	.4byte str_KUR_Z_2_802f0794
	.4byte str_KUR_Z_2_802f0794
	.4byte str_btl_un_hotdog_master_802f33b8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_c_kuribo_802f0788
	.4byte str_KUR_Z_2_802f0794
	.4byte str_KUR_Z_2_802f0794
	.4byte str_btl_un_marco_802f33d0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_c_kuribo_802f0788
	.4byte str_KUR_Z_2_802f0794
	.4byte str_KUR_Z_2_802f0794
	.4byte str_btl_un_tree_802f33e0
	.4byte 0x00000000
	.4byte str_menu_enemy_155_802f33ec
	.4byte str_c_kuribo_802f0788
	.4byte str_KUR_Z_2_802f0794
	.4byte str_KUR_Z_2_802f0794
	.4byte str_btl_un_switch_802f33fc
	.4byte 0x00000000
	.4byte str_menu_enemy_156_802f340c
	.4byte str_c_kuribo_802f0788
	.4byte str_KUR_Z_2_802f0794
	.4byte str_KUR_Z_2_802f0794
	.4byte str_btl_un_testnpc_802f341c
	.4byte 0x00000000
	.4byte str_menu_enemy_157_802f342c
	.4byte str_c_kuribo_802f0788
	.4byte str_KUR_Z_2_802f0794
	.4byte str_KUR_Z_2_802f0794
	.4byte str_btl_un_bomzou_802f343c
	.4byte str_btl_hlp_bomzou_802f344c
	.4byte str_menu_enemy_158_802f345c
	.4byte str_c_kuribo_802f0788
	.4byte str_KUR_Z_2_802f0794
	.4byte str_KUR_Z_2_802f0794
	.4byte str_btl_un_system_802f346c
	.4byte 0x00000000
	.4byte str_menu_enemy_159_802f347c
	.4byte str_c_kuribo_802f0788
	.4byte str_KUR_Z_2_802f0794
	.4byte str_KUR_Z_2_802f0794
	.4byte str_btl_un_christine_802f3110
	.4byte 0x00000000
	.4byte str_menu_enemy_162_802f348c
	.4byte str_c_kuribo_802f0788
	.4byte str_KUR_Z_2_802f0794
	.4byte str_KUR_Z_2_802f0794
	.4byte str_btl_un_mario_802f349c
	.4byte str_btl_hlp_mario_802f34ac
	.4byte str_menu_enemy_160_802f34bc
	.4byte str_c_kuribo_802f0788
	.4byte str_KUR_Z_2_802f0794
	.4byte str_KUR_Z_2_802f0794
	.4byte str_btl_un_koura_802f34cc
	.4byte 0x00000000
	.4byte str_menu_enemy_161_802f34dc
	.4byte str_c_kuribo_802f0788
	.4byte str_KUR_Z_2_802f0794
	.4byte str_KUR_Z_2_802f0794
	.4byte str_btl_un_christine_802f3110
	.4byte 0x00000000
	.4byte str_menu_enemy_162_802f348c
	.4byte str_c_kuribo_802f0788
	.4byte str_KUR_Z_2_802f0794
	.4byte str_KUR_Z_2_802f0794
	.4byte str_btl_un_nokotarou_802f34ec
	.4byte 0x00000000
	.4byte str_menu_enemy_163_802f3500
	.4byte str_c_kuribo_802f0788
	.4byte str_KUR_Z_2_802f0794
	.4byte str_KUR_Z_2_802f0794
	.4byte str_btl_un_yoshi_802f3510
	.4byte 0x00000000
	.4byte str_menu_enemy_164_802f3520
	.4byte str_c_kuribo_802f0788
	.4byte str_KUR_Z_2_802f0794
	.4byte str_KUR_Z_2_802f0794
	.4byte str_btl_un_clauda_802f3530
	.4byte 0x00000000
	.4byte str_menu_enemy_165_802f3540
	.4byte str_c_kuribo_802f0788
	.4byte str_KUR_Z_2_802f0794
	.4byte str_KUR_Z_2_802f0794
	.4byte str_btl_un_vivian_802f3550
	.4byte str_btl_hlp_vivian_party_802f3560
	.4byte str_menu_enemy_166_802f3578
	.4byte str_c_kuribo_802f0788
	.4byte str_KUR_Z_2_802f0794
	.4byte str_KUR_Z_2_802f0794
	.4byte str_btl_un_sanders_802f3588
	.4byte 0x00000000
	.4byte str_menu_enemy_167_802f3598
	.4byte str_c_kuribo_802f0788
	.4byte str_KUR_Z_2_802f0794
	.4byte str_KUR_Z_2_802f0794
	.4byte str_btl_un_chuchurina_802f35a8
	.4byte 0x00000000
	.4byte str_menu_enemy_168_802f35bc
	.4byte str_c_kuribo_802f0788
	.4byte str_KUR_Z_2_802f0794
	.4byte str_KUR_Z_2_802f0794
.endobj monosiriMessageTable

# .data:0x15A8 | 0x8036E4E8 | size: 0x34
.obj same_tbl_rampell_1, global
	.4byte 0x0000004D
	.4byte 0x00000087
	.4byte 0x0000004F
	.4byte 0x0000004E
	.4byte 0x00000088
	.4byte 0x00000089
	.4byte 0x0000008A
	.4byte 0x0000008B
	.4byte 0x0000008C
	.4byte 0x0000008D
	.4byte 0x0000008E
	.4byte 0x0000008F
	.4byte 0x00000000
.endobj same_tbl_rampell_1

# .data:0x15DC | 0x8036E51C | size: 0x34
.obj same_tbl_rampell_2, global
	.4byte 0x00000087
	.4byte 0x0000004D
	.4byte 0x0000004F
	.4byte 0x0000004E
	.4byte 0x00000088
	.4byte 0x00000089
	.4byte 0x0000008A
	.4byte 0x0000008B
	.4byte 0x0000008C
	.4byte 0x0000008D
	.4byte 0x0000008E
	.4byte 0x0000008F
	.4byte 0x00000000
.endobj same_tbl_rampell_2

# .data:0x1610 | 0x8036E550 | size: 0x34
.obj same_tbl_rampell_faker_1, global
	.4byte 0x0000004F
	.4byte 0x0000004D
	.4byte 0x00000087
	.4byte 0x0000004E
	.4byte 0x00000088
	.4byte 0x00000089
	.4byte 0x0000008A
	.4byte 0x0000008B
	.4byte 0x0000008C
	.4byte 0x0000008D
	.4byte 0x0000008E
	.4byte 0x0000008F
	.4byte 0x00000000
.endobj same_tbl_rampell_faker_1

# .data:0x1644 | 0x8036E584 | size: 0x34
.obj same_tbl_rampell_faker_2, global
	.4byte 0x0000004E
	.4byte 0x0000004D
	.4byte 0x00000087
	.4byte 0x0000004F
	.4byte 0x00000088
	.4byte 0x00000089
	.4byte 0x0000008A
	.4byte 0x0000008B
	.4byte 0x0000008C
	.4byte 0x0000008D
	.4byte 0x0000008E
	.4byte 0x0000008F
	.4byte 0x00000000
.endobj same_tbl_rampell_faker_2

# .data:0x1678 | 0x8036E5B8 | size: 0x34
.obj same_tbl_rampell_faker_3, global
	.4byte 0x00000088
	.4byte 0x0000004D
	.4byte 0x00000087
	.4byte 0x0000004F
	.4byte 0x0000004E
	.4byte 0x00000089
	.4byte 0x0000008A
	.4byte 0x0000008B
	.4byte 0x0000008C
	.4byte 0x0000008D
	.4byte 0x0000008E
	.4byte 0x0000008F
	.4byte 0x00000000
.endobj same_tbl_rampell_faker_3

# .data:0x16AC | 0x8036E5EC | size: 0x34
.obj same_tbl_rampell_faker_4, global
	.4byte 0x00000089
	.4byte 0x0000004D
	.4byte 0x00000087
	.4byte 0x0000004F
	.4byte 0x0000004E
	.4byte 0x00000088
	.4byte 0x0000008A
	.4byte 0x0000008B
	.4byte 0x0000008C
	.4byte 0x0000008D
	.4byte 0x0000008E
	.4byte 0x0000008F
	.4byte 0x00000000
.endobj same_tbl_rampell_faker_4

# .data:0x16E0 | 0x8036E620 | size: 0x34
.obj same_tbl_rampell_faker_5, global
	.4byte 0x0000008A
	.4byte 0x0000004D
	.4byte 0x00000087
	.4byte 0x0000004F
	.4byte 0x0000004E
	.4byte 0x00000088
	.4byte 0x00000089
	.4byte 0x0000008B
	.4byte 0x0000008C
	.4byte 0x0000008D
	.4byte 0x0000008E
	.4byte 0x0000008F
	.4byte 0x00000000
.endobj same_tbl_rampell_faker_5

# .data:0x1714 | 0x8036E654 | size: 0x34
.obj same_tbl_rampell_faker_6, global
	.4byte 0x0000008B
	.4byte 0x0000004D
	.4byte 0x00000087
	.4byte 0x0000004F
	.4byte 0x0000004E
	.4byte 0x00000088
	.4byte 0x00000089
	.4byte 0x0000008A
	.4byte 0x0000008C
	.4byte 0x0000008D
	.4byte 0x0000008E
	.4byte 0x0000008F
	.4byte 0x00000000
.endobj same_tbl_rampell_faker_6

# .data:0x1748 | 0x8036E688 | size: 0x34
.obj same_tbl_rampell_faker_7, global
	.4byte 0x0000008C
	.4byte 0x0000004D
	.4byte 0x00000087
	.4byte 0x0000004F
	.4byte 0x0000004E
	.4byte 0x00000088
	.4byte 0x00000089
	.4byte 0x0000008A
	.4byte 0x0000008B
	.4byte 0x0000008D
	.4byte 0x0000008E
	.4byte 0x0000008F
	.4byte 0x00000000
.endobj same_tbl_rampell_faker_7

# .data:0x177C | 0x8036E6BC | size: 0x34
.obj same_tbl_rampell_faker_8, global
	.4byte 0x0000008D
	.4byte 0x0000004D
	.4byte 0x00000087
	.4byte 0x0000004F
	.4byte 0x0000004E
	.4byte 0x00000088
	.4byte 0x00000089
	.4byte 0x0000008A
	.4byte 0x0000008B
	.4byte 0x0000008C
	.4byte 0x0000008E
	.4byte 0x0000008F
	.4byte 0x00000000
.endobj same_tbl_rampell_faker_8

# .data:0x17B0 | 0x8036E6F0 | size: 0x34
.obj same_tbl_rampell_faker_9, global
	.4byte 0x0000008E
	.4byte 0x0000004D
	.4byte 0x00000087
	.4byte 0x0000004F
	.4byte 0x0000004E
	.4byte 0x00000088
	.4byte 0x00000089
	.4byte 0x0000008A
	.4byte 0x0000008B
	.4byte 0x0000008C
	.4byte 0x0000008D
	.4byte 0x0000008F
	.4byte 0x00000000
.endobj same_tbl_rampell_faker_9

# .data:0x17E4 | 0x8036E724 | size: 0x34
.obj same_tbl_rampell_faker_10, global
	.4byte 0x0000008F
	.4byte 0x0000004D
	.4byte 0x00000087
	.4byte 0x0000004F
	.4byte 0x0000004E
	.4byte 0x00000088
	.4byte 0x00000089
	.4byte 0x0000008A
	.4byte 0x0000008B
	.4byte 0x0000008C
	.4byte 0x0000008D
	.4byte 0x0000008E
	.4byte 0x00000000
.endobj same_tbl_rampell_faker_10

# .data:0x1818 | 0x8036E758 | size: 0xC4
.obj battle_monosiri_same_tbl, global
	.4byte same_tbl_gesso
	.4byte same_tbl_gesso_arm_l
	.4byte same_tbl_gesso_arm_r
	.4byte same_tbl_rampell_1
	.4byte same_tbl_rampell_2
	.4byte same_tbl_rampell_faker_1
	.4byte same_tbl_rampell_faker_2
	.4byte same_tbl_rampell_faker_3
	.4byte same_tbl_rampell_faker_4
	.4byte same_tbl_rampell_faker_5
	.4byte same_tbl_rampell_faker_6
	.4byte same_tbl_rampell_faker_7
	.4byte same_tbl_rampell_faker_8
	.4byte same_tbl_rampell_faker_9
	.4byte same_tbl_rampell_faker_10
	.4byte same_tbl_majolyne_1
	.4byte same_tbl_majolyne_2
	.4byte same_tbl_majolyne_3
	.4byte same_tbl_majolyne_4
	.4byte same_tbl_marilyn_1
	.4byte same_tbl_marilyn_2
	.4byte same_tbl_marilyn_3
	.4byte same_tbl_marilyn_4
	.4byte same_tbl_vivian_1
	.4byte same_tbl_vivian_2
	.4byte same_tbl_koopa_1
	.4byte same_tbl_koopa_2
	.4byte same_tbl_kamec
	.4byte same_tbl_kamec_bunshin
	.4byte same_tbl_black_peach
	.4byte same_tbl_kamec_red
	.4byte same_tbl_kamec_red_bunshin
	.4byte same_tbl_kamec_white
	.4byte same_tbl_kamec_white_bunshin
	.4byte same_tbl_kamec_green
	.4byte same_tbl_kamec_green_bunshin
	.4byte same_tbl_super_mahorn
	.4byte same_tbl_super_mahorn_bunshin
	.4byte same_tbl_mahorn_custom
	.4byte same_tbl_mahorn_custom_bunshin
	.4byte same_tbl_kuriboo
	.4byte same_tbl_chorobon
	.4byte same_tbl_gundan_zako
	.4byte same_tbl_cortez
	.4byte same_tbl_magunum_battender
	.4byte same_tbl_magunum_battender_mkii
	.4byte same_tbl_moamoa
	.4byte unk_80417170
	.4byte 0x00000000
.endobj battle_monosiri_same_tbl

# .data:0x18DC | 0x8036E81C | size: 0x4
.obj gap_05_8036E81C_data, global
.hidden gap_05_8036E81C_data
	.4byte 0x00000000
.endobj gap_05_8036E81C_data

# .data:0x18E0 | 0x8036E820 | size: 0x8
.obj lbl_8036E820, global
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj lbl_8036E820

# 0x80416F50..0x80417180 | size: 0x230
.section .sdata, "wa"
.balign 8

# .sdata:0x0 | 0x80416F50 | size: 0x10
.obj same_tbl_gesso, global
	.4byte 0x00000008
	.4byte 0x00000009
	.4byte 0x0000000A
	.4byte 0x00000000
.endobj same_tbl_gesso

# .sdata:0x10 | 0x80416F60 | size: 0x10
.obj same_tbl_gesso_arm_l, global
	.4byte 0x00000009
	.4byte 0x00000008
	.4byte 0x0000000A
	.4byte 0x00000000
.endobj same_tbl_gesso_arm_l

# .sdata:0x20 | 0x80416F70 | size: 0x10
.obj same_tbl_gesso_arm_r, global
	.4byte 0x0000000A
	.4byte 0x00000008
	.4byte 0x00000009
	.4byte 0x00000000
.endobj same_tbl_gesso_arm_r

# .sdata:0x30 | 0x80416F80 | size: 0x14
.obj same_tbl_majolyne_1, global
	.4byte 0x0000001F
	.4byte 0x000000BD
	.4byte 0x000000C0
	.4byte 0x00000085
	.4byte 0x00000000
.endobj same_tbl_majolyne_1

# .sdata:0x44 | 0x80416F94 | size: 0x14
.obj same_tbl_majolyne_2, global
	.4byte 0x000000BD
	.4byte 0x0000001F
	.4byte 0x000000C0
	.4byte 0x00000085
	.4byte 0x00000000
.endobj same_tbl_majolyne_2

# .sdata:0x58 | 0x80416FA8 | size: 0x14
.obj same_tbl_majolyne_3, global
	.4byte 0x000000C0
	.4byte 0x0000001F
	.4byte 0x000000BD
	.4byte 0x00000085
	.4byte 0x00000000
.endobj same_tbl_majolyne_3

# .sdata:0x6C | 0x80416FBC | size: 0x14
.obj same_tbl_majolyne_4, global
	.4byte 0x00000085
	.4byte 0x0000001F
	.4byte 0x000000BD
	.4byte 0x000000C0
	.4byte 0x00000000
.endobj same_tbl_majolyne_4

# .sdata:0x80 | 0x80416FD0 | size: 0x14
.obj same_tbl_marilyn_1, global
	.4byte 0x00000020
	.4byte 0x000000BE
	.4byte 0x000000C1
	.4byte 0x00000086
	.4byte 0x00000000
.endobj same_tbl_marilyn_1

# .sdata:0x94 | 0x80416FE4 | size: 0x14
.obj same_tbl_marilyn_2, global
	.4byte 0x000000BE
	.4byte 0x00000020
	.4byte 0x000000C1
	.4byte 0x00000086
	.4byte 0x00000000
.endobj same_tbl_marilyn_2

# .sdata:0xA8 | 0x80416FF8 | size: 0x14
.obj same_tbl_marilyn_3, global
	.4byte 0x000000C1
	.4byte 0x00000020
	.4byte 0x000000BE
	.4byte 0x00000086
	.4byte 0x00000000
.endobj same_tbl_marilyn_3

# .sdata:0xBC | 0x8041700C | size: 0x14
.obj same_tbl_marilyn_4, global
	.4byte 0x00000086
	.4byte 0x00000020
	.4byte 0x000000BE
	.4byte 0x000000C1
	.4byte 0x00000000
.endobj same_tbl_marilyn_4

# .sdata:0xD0 | 0x80417020 | size: 0xC
.obj same_tbl_vivian_1, global
	.4byte 0x00000021
	.4byte 0x000000BF
	.4byte 0x00000000
.endobj same_tbl_vivian_1

# .sdata:0xDC | 0x8041702C | size: 0xC
.obj same_tbl_vivian_2, global
	.4byte 0x000000BF
	.4byte 0x00000021
	.4byte 0x00000000
.endobj same_tbl_vivian_2

# .sdata:0xE8 | 0x80417038 | size: 0xC
.obj same_tbl_koopa_1, global
	.4byte 0x0000003F
	.4byte 0x00000090
	.4byte 0x00000000
.endobj same_tbl_koopa_1

# .sdata:0xF4 | 0x80417044 | size: 0xC
.obj same_tbl_koopa_2, global
	.4byte 0x00000090
	.4byte 0x0000003F
	.4byte 0x00000000
.endobj same_tbl_koopa_2

# .sdata:0x100 | 0x80417050 | size: 0xC
.obj same_tbl_kamec, global
	.4byte 0x0000000C
	.4byte 0x0000000D
	.4byte 0x00000000
.endobj same_tbl_kamec

# .sdata:0x10C | 0x8041705C | size: 0xC
.obj same_tbl_kamec_bunshin, global
	.4byte 0x0000000D
	.4byte 0x0000000C
	.4byte 0x00000000
.endobj same_tbl_kamec_bunshin

# .sdata:0x118 | 0x80417068 | size: 0x18
.obj same_tbl_black_peach, global
	.4byte 0x00000094
	.4byte 0x00000096
	.4byte 0x00000097
	.4byte 0x00000098
	.4byte 0x00000095
	.4byte 0x00000000
.endobj same_tbl_black_peach

# .sdata:0x130 | 0x80417080 | size: 0xC
.obj same_tbl_kamec_red, global
	.4byte 0x00000031
	.4byte 0x00000032
	.4byte 0x00000000
.endobj same_tbl_kamec_red

# .sdata:0x13C | 0x8041708C | size: 0xC
.obj same_tbl_kamec_red_bunshin, global
	.4byte 0x00000032
	.4byte 0x00000031
	.4byte 0x00000000
.endobj same_tbl_kamec_red_bunshin

# .sdata:0x148 | 0x80417098 | size: 0xC
.obj same_tbl_kamec_white, global
	.4byte 0x00000033
	.4byte 0x00000034
	.4byte 0x00000000
.endobj same_tbl_kamec_white

# .sdata:0x154 | 0x804170A4 | size: 0xC
.obj same_tbl_kamec_white_bunshin, global
	.4byte 0x00000034
	.4byte 0x00000033
	.4byte 0x00000000
.endobj same_tbl_kamec_white_bunshin

# .sdata:0x160 | 0x804170B0 | size: 0xC
.obj same_tbl_kamec_green, global
	.4byte 0x00000035
	.4byte 0x00000036
	.4byte 0x00000000
.endobj same_tbl_kamec_green

# .sdata:0x16C | 0x804170BC | size: 0xC
.obj same_tbl_kamec_green_bunshin, global
	.4byte 0x00000036
	.4byte 0x00000035
	.4byte 0x00000000
.endobj same_tbl_kamec_green_bunshin

# .sdata:0x178 | 0x804170C8 | size: 0xC
.obj same_tbl_super_mahorn, global
	.4byte 0x00000080
	.4byte 0x00000081
	.4byte 0x00000000
.endobj same_tbl_super_mahorn

# .sdata:0x184 | 0x804170D4 | size: 0xC
.obj same_tbl_super_mahorn_bunshin, global
	.4byte 0x00000081
	.4byte 0x00000080
	.4byte 0x00000000
.endobj same_tbl_super_mahorn_bunshin

# .sdata:0x190 | 0x804170E0 | size: 0xC
.obj same_tbl_mahorn_custom, global
	.4byte 0x000000A9
	.4byte 0x000000AA
	.4byte 0x00000000
.endobj same_tbl_mahorn_custom

# .sdata:0x19C | 0x804170EC | size: 0xC
.obj same_tbl_mahorn_custom_bunshin, global
	.4byte 0x000000AA
	.4byte 0x000000A9
	.4byte 0x00000000
.endobj same_tbl_mahorn_custom_bunshin

# .sdata:0x1A8 | 0x804170F8 | size: 0xC
.obj same_tbl_kuriboo, global
	.4byte 0x00000001
	.4byte 0x00000024
	.4byte 0x00000000
.endobj same_tbl_kuriboo

# .sdata:0x1B4 | 0x80417104 | size: 0xC
.obj same_tbl_chorobon, global
	.4byte 0x00000010
	.4byte 0x00000015
	.4byte 0x00000000
.endobj same_tbl_chorobon

# .sdata:0x1C0 | 0x80417110 | size: 0x14
.obj same_tbl_gundan_zako, global
	.4byte 0x0000001C
	.4byte 0x00000064
	.4byte 0x00000065
	.4byte 0x00000066
	.4byte 0x00000000
.endobj same_tbl_gundan_zako

# .sdata:0x1D4 | 0x80417124 | size: 0x1C
.obj same_tbl_cortez, global
	.4byte 0x0000005D
	.4byte 0x0000005E
	.4byte 0x0000005F
	.4byte 0x00000060
	.4byte 0x00000061
	.4byte 0x00000062
	.4byte 0x00000000
.endobj same_tbl_cortez

# .sdata:0x1F0 | 0x80417140 | size: 0xC
.obj same_tbl_magunum_battender, global
	.4byte 0x00000022
	.4byte 0x00000023
	.4byte 0x00000000
.endobj same_tbl_magunum_battender

# .sdata:0x1FC | 0x8041714C | size: 0xC
.obj same_tbl_magunum_battender_mkii, global
	.4byte 0x00000079
	.4byte 0x0000007A
	.4byte 0x00000000
.endobj same_tbl_magunum_battender_mkii

# .sdata:0x208 | 0x80417158 | size: 0x18
.obj same_tbl_moamoa, global
	.4byte 0x0000006B
	.4byte 0x0000006E
	.4byte 0x0000006D
	.4byte 0x0000006C
	.4byte 0x0000006F
	.4byte 0x00000000
.endobj same_tbl_moamoa

# .sdata:0x220 | 0x80417170 | size: 0xC
.obj unk_80417170, global
	.4byte 0x0000003D
	.4byte 0x0000003E
	.4byte 0x00000000
.endobj unk_80417170

# .sdata:0x22C | 0x8041717C | size: 0x4
.obj gap_07_8041717C_sdata, global
.hidden gap_07_8041717C_sdata
	.4byte 0x00000000
.endobj gap_07_8041717C_sdata

# 0x80422828..0x80422850 | size: 0x28
.section .sdata2, "a"
.balign 8

# .sdata2:0x0 | 0x80422828 | size: 0x4
.obj str_Z_1_80422828, global
	.string "Z_1"
.endobj str_Z_1_80422828

# .sdata2:0x4 | 0x8042282C | size: 0x4
.obj str_Z_2_8042282c, global
	.string "Z_2"
.endobj str_Z_2_8042282c

# .sdata2:0x8 | 0x80422830 | size: 0x6
.obj str_c_met_80422830, global
	.string "c_met"
.endobj str_c_met_80422830
	.2byte 0x0000

# .sdata2:0x10 | 0x80422838 | size: 0x6
.obj str_c_pkr_80422838, global
	.string "c_pkr"
.endobj str_c_pkr_80422838
	.2byte 0x0000

# .sdata2:0x18 | 0x80422840 | size: 0x6
.obj str_c_pnk_80422840, global
	.string "c_pnk"
.endobj str_c_pnk_80422840
	.2byte 0x0000

# .sdata2:0x20 | 0x80422848 | size: 0x4
.obj str_S_3_80422848, global
	.string "S_3"
.endobj str_S_3_80422848

# .sdata2:0x24 | 0x8042284C | size: 0x4
.obj gap_09_8042284C_sdata2, global
.hidden gap_09_8042284C_sdata2
	.4byte 0x00000000
.endobj gap_09_8042284C_sdata2
