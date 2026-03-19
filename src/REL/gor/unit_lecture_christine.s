.include "macros.inc"
.file "unit_lecture_christine.o"

# 0x00011634..0x000118C0 | size: 0x28C
.text
.balign 4

# .text:0x0 | 0x11634 | size: 0x84
.fn _get_defence_ac_result, local
/* 00011634 00011700  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00011638 00011704  7C 08 02 A6 */	mflr r0
/* 0001163C 00011708  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00011640 0001170C  38 A0 00 00 */	li r5, 0x0
/* 00011644 00011710  90 01 00 14 */	stw r0, 0x14(r1)
/* 00011648 00011714  80 C4 00 00 */	lwz r6, _battleWorkPointer@l(r4)
/* 0001164C 00011718  80 E3 00 18 */	lwz r7, 0x18(r3)
/* 00011650 0001171C  80 06 1C B0 */	lwz r0, 0x1cb0(r6)
/* 00011654 00011720  80 87 00 00 */	lwz r4, 0x0(r7)
/* 00011658 00011724  2C 00 00 03 */	cmpwi r0, 0x3
/* 0001165C 00011728  41 82 00 44 */	beq .L_000116A0
/* 00011660 0001172C  40 80 00 14 */	bge .L_00011674
/* 00011664 00011730  2C 00 00 01 */	cmpwi r0, 0x1
/* 00011668 00011734  41 82 00 1C */	beq .L_00011684
/* 0001166C 00011738  40 80 00 20 */	bge .L_0001168C
/* 00011670 0001173C  48 00 00 30 */	b .L_000116A0
.L_00011674:
/* 00011674 00011740  2C 00 00 05 */	cmpwi r0, 0x5
/* 00011678 00011744  41 82 00 24 */	beq .L_0001169C
/* 0001167C 00011748  40 80 00 24 */	bge .L_000116A0
/* 00011680 0001174C  48 00 00 14 */	b .L_00011694
.L_00011684:
/* 00011684 00011750  38 A0 00 02 */	li r5, 0x2
/* 00011688 00011754  48 00 00 18 */	b .L_000116A0
.L_0001168C:
/* 0001168C 00011758  38 A0 00 03 */	li r5, 0x3
/* 00011690 0001175C  48 00 00 10 */	b .L_000116A0
.L_00011694:
/* 00011694 00011760  38 A0 00 01 */	li r5, 0x1
/* 00011698 00011764  48 00 00 08 */	b .L_000116A0
.L_0001169C:
/* 0001169C 00011768  38 A0 00 00 */	li r5, 0x0
.L_000116A0:
/* 000116A0 0001176C  4B FE EE 05 */	bl evtSetValue
/* 000116A4 00011770  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000116A8 00011774  38 60 00 02 */	li r3, 0x2
/* 000116AC 00011778  7C 08 03 A6 */	mtlr r0
/* 000116B0 0001177C  38 21 00 10 */	addi r1, r1, 0x10
/* 000116B4 00011780  4E 80 00 20 */	blr
.endfn _get_defence_ac_result

# .text:0x84 | 0x116B8 | size: 0x54
.fn _config_key_record, local
/* 000116B8 00011784  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000116BC 00011788  7C 08 02 A6 */	mflr r0
/* 000116C0 0001178C  90 01 00 14 */	stw r0, 0x14(r1)
/* 000116C4 00011790  38 00 00 04 */	li r0, 0x4
/* 000116C8 00011794  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 000116CC 00011798  80 83 00 18 */	lwz r4, 0x18(r3)
/* 000116D0 0001179C  3C 60 00 00 */	lis r3, _battleWorkPointer@ha
/* 000116D4 000117A0  38 63 00 00 */	addi r3, r3, _battleWorkPointer@l
/* 000116D8 000117A4  80 63 00 00 */	lwz r3, 0x0(r3)
/* 000116DC 000117A8  83 E4 00 00 */	lwz r31, 0x0(r4)
/* 000116E0 000117AC  3B C3 1D 1C */	addi r30, r3, 0x1d1c
/* 000116E4 000117B0  90 03 1C B0 */	stw r0, 0x1cb0(r3)
/* 000116E8 000117B4  7F C3 F3 78 */	mr r3, r30
/* 000116EC 000117B8  4B FE ED B9 */	bl BtlPad_WorkInit
/* 000116F0 000117BC  93 FE 00 18 */	stw r31, 0x18(r30)
/* 000116F4 000117C0  38 60 00 02 */	li r3, 0x2
/* 000116F8 000117C4  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 000116FC 000117C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00011700 000117CC  7C 08 03 A6 */	mtlr r0
/* 00011704 000117D0  38 21 00 10 */	addi r1, r1, 0x10
/* 00011708 000117D4  4E 80 00 20 */	blr
.endfn _config_key_record

# .text:0xD8 | 0x1170C | size: 0x118
.fn _krb_get_dir, local
/* 0001170C 000117D8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 00011710 000117DC  7C 08 02 A6 */	mflr r0
/* 00011714 000117E0  90 01 00 64 */	stw r0, 0x64(r1)
/* 00011718 000117E4  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 0001171C 000117E8  F3 E1 00 58 */	psq_st f31, 0x58(r1), 0, qr0
/* 00011720 000117EC  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 00011724 000117F0  F3 C1 00 48 */	psq_st f30, 0x48(r1), 0, qr0
/* 00011728 000117F4  DB A1 00 30 */	stfd f29, 0x30(r1)
/* 0001172C 000117F8  F3 A1 00 38 */	psq_st f29, 0x38(r1), 0, qr0
/* 00011730 000117FC  DB 81 00 20 */	stfd f28, 0x20(r1)
/* 00011734 00011800  F3 81 00 28 */	psq_st f28, 0x28(r1), 0, qr0
/* 00011738 00011804  BF C1 00 18 */	stmw r30, 0x18(r1)
/* 0001173C 00011808  7C 7E 1B 78 */	mr r30, r3
/* 00011740 0001180C  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00011744 00011810  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00011748 00011814  4B FE ED 5D */	bl evtGetFloat
/* 0001174C 00011818  FF 80 08 90 */	fmr f28, f1
/* 00011750 0001181C  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 00011754 00011820  7F C3 F3 78 */	mr r3, r30
/* 00011758 00011824  4B FE ED 4D */	bl evtGetFloat
/* 0001175C 00011828  FF A0 08 90 */	fmr f29, f1
/* 00011760 0001182C  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 00011764 00011830  7F C3 F3 78 */	mr r3, r30
/* 00011768 00011834  4B FE ED 3D */	bl evtGetFloat
/* 0001176C 00011838  FF C0 08 90 */	fmr f30, f1
/* 00011770 0001183C  80 9F 00 0C */	lwz r4, 0xc(r31)
/* 00011774 00011840  7F C3 F3 78 */	mr r3, r30
/* 00011778 00011844  4B FE ED 2D */	bl evtGetFloat
/* 0001177C 00011848  FF E0 08 90 */	fmr f31, f1
/* 00011780 0001184C  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 00011784 00011850  7F C3 F3 78 */	mr r3, r30
/* 00011788 00011854  4B FE ED 1D */	bl evtGetValue
/* 0001178C 00011858  3C 80 00 00 */	lis r4, zero_gor_0001f5fc@ha
/* 00011790 0001185C  EC 3E E0 28 */	fsubs f1, f30, f28
/* 00011794 00011860  C0 04 00 00 */	lfs f0, zero_gor_0001f5fc@l(r4)
/* 00011798 00011864  EC 5F E8 28 */	fsubs f2, f31, f29
/* 0001179C 00011868  7C 65 1B 78 */	mr r5, r3
/* 000117A0 0001186C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 000117A4 00011870  40 82 00 20 */	bne .L_000117C4
/* 000117A8 00011874  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 000117AC 00011878  40 82 00 18 */	bne .L_000117C4
/* 000117B0 0001187C  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 000117B4 00011880  7F C3 F3 78 */	mr r3, r30
/* 000117B8 00011884  4B FE EC ED */	bl evtSetValue
/* 000117BC 00011888  38 60 00 02 */	li r3, 0x2
/* 000117C0 0001188C  48 00 00 30 */	b .L_000117F0
.L_000117C4:
/* 000117C4 00011890  3C 60 00 00 */	lis r3, zero_gor_0001f5fc@ha
/* 000117C8 00011894  C0 63 00 00 */	lfs f3, zero_gor_0001f5fc@l(r3)
/* 000117CC 00011898  FC 80 18 90 */	fmr f4, f3
/* 000117D0 0001189C  4B FE EC D5 */	bl angleABf_1
/* 000117D4 000118A0  FC 00 08 1E */	fctiwz f0, f1
/* 000117D8 000118A4  80 9F 00 10 */	lwz r4, 0x10(r31)
/* 000117DC 000118A8  7F C3 F3 78 */	mr r3, r30
/* 000117E0 000118AC  D8 01 00 08 */	stfd f0, 0x8(r1)
/* 000117E4 000118B0  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 000117E8 000118B4  4B FE EC BD */	bl evtSetValue
/* 000117EC 000118B8  38 60 00 02 */	li r3, 0x2
.L_000117F0:
/* 000117F0 000118BC  E3 E1 00 58 */	psq_l f31, 0x58(r1), 0, qr0
/* 000117F4 000118C0  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 000117F8 000118C4  E3 C1 00 48 */	psq_l f30, 0x48(r1), 0, qr0
/* 000117FC 000118C8  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 00011800 000118CC  E3 A1 00 38 */	psq_l f29, 0x38(r1), 0, qr0
/* 00011804 000118D0  CB A1 00 30 */	lfd f29, 0x30(r1)
/* 00011808 000118D4  E3 81 00 28 */	psq_l f28, 0x28(r1), 0, qr0
/* 0001180C 000118D8  CB 81 00 20 */	lfd f28, 0x20(r1)
/* 00011810 000118DC  BB C1 00 18 */	lmw r30, 0x18(r1)
/* 00011814 000118E0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 00011818 000118E4  7C 08 03 A6 */	mtlr r0
/* 0001181C 000118E8  38 21 00 60 */	addi r1, r1, 0x60
/* 00011820 000118EC  4E 80 00 20 */	blr
.endfn _krb_get_dir

# .text:0x1F0 | 0x11824 | size: 0x40
.fn _battle_set_lecture_unit_id, local
/* 00011824 000118F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00011828 000118F4  7C 08 02 A6 */	mflr r0
/* 0001182C 000118F8  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 00011830 000118FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 00011834 00011900  93 E1 00 0C */	stw r31, 0xc(r1)
/* 00011838 00011904  80 A3 00 18 */	lwz r5, 0x18(r3)
/* 0001183C 00011908  83 E4 00 00 */	lwz r31, _battleWorkPointer@l(r4)
/* 00011840 0001190C  80 85 00 00 */	lwz r4, 0x0(r5)
/* 00011844 00011910  4B FE EC 61 */	bl evtGetValue
/* 00011848 00011914  90 7F 04 24 */	stw r3, 0x424(r31)
/* 0001184C 00011918  38 60 00 02 */	li r3, 0x2
/* 00011850 0001191C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00011854 00011920  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 00011858 00011924  7C 08 03 A6 */	mtlr r0
/* 0001185C 00011928  38 21 00 10 */	addi r1, r1, 0x10
/* 00011860 0001192C  4E 80 00 20 */	blr
.endfn _battle_set_lecture_unit_id

# .text:0x230 | 0x11864 | size: 0x5C
.fn _set_lecture_mode, local
/* 00011864 00011930  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00011868 00011934  7C 08 02 A6 */	mflr r0
/* 0001186C 00011938  3C A0 00 00 */	lis r5, _battleWorkPointer@ha
/* 00011870 0001193C  38 80 FF FD */	li r4, -0x3
/* 00011874 00011940  90 01 00 14 */	stw r0, 0x14(r1)
/* 00011878 00011944  93 E1 00 0C */	stw r31, 0xc(r1)
/* 0001187C 00011948  83 E5 00 00 */	lwz r31, _battleWorkPointer@l(r5)
/* 00011880 0001194C  4B FE EC 25 */	bl BattleTransID
/* 00011884 00011950  7C 60 1B 78 */	mr r0, r3
/* 00011888 00011954  7F E3 FB 78 */	mr r3, r31
/* 0001188C 00011958  7C 04 03 78 */	mr r4, r0
/* 00011890 0001195C  4B FE EC 15 */	bl BattleGetUnitPtr
/* 00011894 00011960  80 83 01 04 */	lwz r4, 0x104(r3)
/* 00011898 00011964  38 00 00 01 */	li r0, 0x1
/* 0001189C 00011968  64 84 40 00 */	oris r4, r4, 0x4000
/* 000118A0 0001196C  90 83 01 04 */	stw r4, 0x104(r3)
/* 000118A4 00011970  38 60 00 02 */	li r3, 0x2
/* 000118A8 00011974  90 1F 27 40 */	stw r0, 0x2740(r31)
/* 000118AC 00011978  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 000118B0 0001197C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000118B4 00011980  7C 08 03 A6 */	mtlr r0
/* 000118B8 00011984  38 21 00 10 */	addi r1, r1, 0x10
/* 000118BC 00011988  4E 80 00 20 */	blr
.endfn _set_lecture_mode

# 0x0000B9B0..0x0000BB00 | size: 0x150
.rodata
.balign 8

# .rodata:0x0 | 0xB9B0 | size: 0x11
.obj str_btl_un_christine_gor_0001f4b0, local
	.string "btl_un_christine"
.endobj str_btl_un_christine_gor_0001f4b0

# .rodata:0x11 | 0xB9C1 | size: 0x3
.obj gap_03_0000B9C1_rodata, global
.hidden gap_03_0000B9C1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000B9C1_rodata

# .rodata:0x14 | 0xB9C4 | size: 0x12
.obj str_SFX_PARTY_DAMAGE1_gor_0001f4c4, local
	.string "SFX_PARTY_DAMAGE1"
.endobj str_SFX_PARTY_DAMAGE1_gor_0001f4c4

# .rodata:0x26 | 0xB9D6 | size: 0x2
.obj gap_03_0000B9D6_rodata, global
.hidden gap_03_0000B9D6_rodata
	.2byte 0x0000
.endobj gap_03_0000B9D6_rodata

# .rodata:0x28 | 0xB9D8 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_gor_0001f4d8, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_gor_0001f4d8

# .rodata:0x3D | 0xB9ED | size: 0x3
.obj gap_03_0000B9ED_rodata, global
.hidden gap_03_0000B9ED_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000B9ED_rodata

# .rodata:0x40 | 0xB9F0 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_gor_0001f4f0, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_gor_0001f4f0

# .rodata:0x54 | 0xBA04 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_gor_0001f504, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_gor_0001f504

# .rodata:0x6D | 0xBA1D | size: 0x3
.obj gap_03_0000BA1D_rodata, global
.hidden gap_03_0000BA1D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000BA1D_rodata

# .rodata:0x70 | 0xBA20 | size: 0x6
.obj str_c_pkr_gor_0001f520, local
	.string "c_pkr"
.endobj str_c_pkr_gor_0001f520

# .rodata:0x76 | 0xBA26 | size: 0x2
.obj gap_03_0000BA26_rodata, global
.hidden gap_03_0000BA26_rodata
	.2byte 0x0000
.endobj gap_03_0000BA26_rodata

# .rodata:0x78 | 0xBA28 | size: 0x18
.obj str_SFX_PARTY_BATTLE_MOV_gor_0001f528, local
	.string "SFX_PARTY_BATTLE_MOVE1L"
.endobj str_SFX_PARTY_BATTLE_MOV_gor_0001f528

# .rodata:0x90 | 0xBA40 | size: 0x18
.obj str_SFX_PARTY_BATTLE_MOV_gor_0001f540, local
	.string "SFX_PARTY_BATTLE_MOVE1R"
.endobj str_SFX_PARTY_BATTLE_MOV_gor_0001f540

# .rodata:0xA8 | 0xBA58 | size: 0x17
.obj str_SFX_PARTY_BATTLE_JUM_gor_0001f558, local
	.string "SFX_PARTY_BATTLE_JUMP1"
.endobj str_SFX_PARTY_BATTLE_JUM_gor_0001f558

# .rodata:0xBF | 0xBA6F | size: 0x1
.obj gap_03_0000BA6F_rodata, global
.hidden gap_03_0000BA6F_rodata
	.byte 0x00
.endobj gap_03_0000BA6F_rodata

# .rodata:0xC0 | 0xBA70 | size: 0x1A
.obj str_SFX_PARTY_BATTLE_LAN_gor_0001f570, local
	.string "SFX_PARTY_BATTLE_LANDING1"
.endobj str_SFX_PARTY_BATTLE_LAN_gor_0001f570

# .rodata:0xDA | 0xBA8A | size: 0x2
.obj gap_03_0000BA8A_rodata, global
.hidden gap_03_0000BA8A_rodata
	.2byte 0x0000
.endobj gap_03_0000BA8A_rodata

# .rodata:0xDC | 0xBA8C | size: 0x8
.obj str_PKR_D_1_gor_0001f58c, local
	.string "PKR_D_1"
.endobj str_PKR_D_1_gor_0001f58c

# .rodata:0xE4 | 0xBA94 | size: 0xF
.obj str_mac_0_b_t2_015_gor_0001f594, local
	.string "mac_0_b_t2_015"
.endobj str_mac_0_b_t2_015_gor_0001f594

# .rodata:0xF3 | 0xBAA3 | size: 0x1
.obj gap_03_0000BAA3_rodata, global
.hidden gap_03_0000BAA3_rodata
	.byte 0x00
.endobj gap_03_0000BAA3_rodata

# .rodata:0xF4 | 0xBAA4 | size: 0x9
.obj str_PKR_A_2B_gor_0001f5a4, local
	.string "PKR_A_2B"
.endobj str_PKR_A_2B_gor_0001f5a4

# .rodata:0xFD | 0xBAAD | size: 0x3
.obj gap_03_0000BAAD_rodata, global
.hidden gap_03_0000BAAD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000BAAD_rodata

# .rodata:0x100 | 0xBAB0 | size: 0x9
.obj str_PKR_J_1A_gor_0001f5b0, local
	.string "PKR_J_1A"
.endobj str_PKR_J_1A_gor_0001f5b0

# .rodata:0x109 | 0xBAB9 | size: 0x3
.obj gap_03_0000BAB9_rodata, global
.hidden gap_03_0000BAB9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000BAB9_rodata

# .rodata:0x10C | 0xBABC | size: 0x15
.obj str_SFX_BTL_KURI_ATTACK1_gor_0001f5bc, local
	.string "SFX_BTL_KURI_ATTACK1"
.endobj str_SFX_BTL_KURI_ATTACK1_gor_0001f5bc

# .rodata:0x121 | 0xBAD1 | size: 0x3
.obj gap_03_0000BAD1_rodata, global
.hidden gap_03_0000BAD1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000BAD1_rodata

# .rodata:0x124 | 0xBAD4 | size: 0x4
.obj str_T_1_gor_0001f5d4, local
	.string "T_1"
.endobj str_T_1_gor_0001f5d4

# .rodata:0x128 | 0xBAD8 | size: 0x4
.obj str_S_1_gor_0001f5d8, local
	.string "S_1"
.endobj str_S_1_gor_0001f5d8

# .rodata:0x12C | 0xBADC | size: 0xF
.obj str_mac_0_b_t2_006_gor_0001f5dc, local
	.string "mac_0_b_t2_006"
.endobj str_mac_0_b_t2_006_gor_0001f5dc

# .rodata:0x13B | 0xBAEB | size: 0x1
.obj gap_03_0000BAEB_rodata, global
.hidden gap_03_0000BAEB_rodata
	.byte 0x00
.endobj gap_03_0000BAEB_rodata

# .rodata:0x13C | 0xBAEC | size: 0xF
.obj str_mac_0_b_t2_014_gor_0001f5ec, local
	.string "mac_0_b_t2_014"
.endobj str_mac_0_b_t2_014_gor_0001f5ec
	.byte 0x00

# .rodata:0x14C | 0xBAFC | size: 0x4
.obj zero_gor_0001f5fc, local
	.float 0
.endobj zero_gor_0001f5fc

# 0x00046F10..0x00047EE0 | size: 0xFD0
.data
.balign 8

# .data:0x0 | 0x46F10 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x46F18 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x46F1C | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x46F20 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x46F24 | size: 0x4
.obj gap_04_00046F24_data, global
.hidden gap_04_00046F24_data
	.4byte 0x00000000
.endobj gap_04_00046F24_data

# .data:0x18 | 0x46F28 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x46F30 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x46F34 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x46F38 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x46F40 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x46F44 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x46F48 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x46F4C | size: 0x4
.obj gap_04_00046F4C_data, global
.hidden gap_04_00046F4C_data
	.4byte 0x00000000
.endobj gap_04_00046F4C_data

# .data:0x40 | 0x46F50 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x46F58 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x46F5C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x46F60 | size: 0xC4
.obj unit_lecture_christine_9_data_46F60, global
	.4byte 0x000000B1
	.4byte str_btl_un_christine_gor_0001f4b0
	.4byte 0x000A0000
	.4byte 0x01010100
	.4byte 0x00000064
	.4byte 0x0009001C
	.4byte 0x00180008
	.4byte 0x00180000
	.4byte 0x00000000
	.4byte 0x41600000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x41600000
	.4byte 0x00000000
	.4byte 0xC1200000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41600000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41600000
	.4byte 0x4179999A
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000FF00
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_PARTY_DAMAGE1_gor_0001f4c4
	.4byte str_SFX_BTL_DAMAGE_FIRE1_gor_0001f4d8
	.4byte str_SFX_BTL_DAMAGE_ICE1_gor_0001f4f0
	.4byte str_SFX_BTL_DAMAGE_BIRIB_gor_0001f504
	.4byte 0x02000000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_lecture_christine_9_data_46F60

# .data:0x114 | 0x47024 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x47029 | size: 0x3
.obj gap_04_00047029_data, global
.hidden gap_04_00047029_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00047029_data

# .data:0x11C | 0x4702C | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x47031 | size: 0x3
.obj gap_04_00047031_data, global
.hidden gap_04_00047031_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00047031_data

# .data:0x124 | 0x47034 | size: 0x16
.obj regist, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.2byte 0x0000
.endobj regist

# .data:0x13A | 0x4704A | size: 0x2
.obj gap_04_0004704A_data, global
.hidden gap_04_0004704A_data
	.2byte 0x0000
.endobj gap_04_0004704A_data

# .data:0x13C | 0x4704C | size: 0x10
.obj data_table, local
	.4byte 0x00000024
	.4byte lecture_christine_ac_counter_damage_event
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x14C | 0x4705C | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_christine_gor_0001f4b0
	.4byte str_c_pkr_gor_0001f520
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41C80000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41F00000
	.4byte 0x00000000
	.4byte 0x0014001E
	.4byte 0x00FF0000
	.4byte defence
	.4byte defence_attr
	.4byte 0x00880009
	.4byte 0x00000000
	.4byte pose_table_christine_stay
.endobj parts

# .data:0x198 | 0x470A8 | size: 0x30
.obj entry_lecture_frankli, local
	.4byte unit_lecture_frankli_9_data_47F30
	.4byte 0x02000000
	.4byte 0x04000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xC2340000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj entry_lecture_frankli

# .data:0x1C8 | 0x470D8 | size: 0x138
.obj init_event, local
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
	.4byte 0x0007005B
	.4byte btlevtcmd_SetWalkSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_PARTY_BATTLE_MOV_gor_0001f528
	.4byte str_SFX_PARTY_BATTLE_MOV_gor_0001f540
	.4byte 0x00000006
	.4byte 0x0000000C
	.4byte 0x00000010
	.4byte 0x0007005B
	.4byte btlevtcmd_SetRunSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_PARTY_BATTLE_MOV_gor_0001f528
	.4byte str_SFX_PARTY_BATTLE_MOV_gor_0001f540
	.4byte 0x00000000
	.4byte 0x00000009
	.4byte 0x00000003
	.4byte 0x0004005B
	.4byte btlevtcmd_SetJumpSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_PARTY_BATTLE_JUM_gor_0001f558
	.4byte str_SFX_PARTY_BATTLE_LAN_gor_0001f570
	.4byte 0x0001005B
	.4byte _set_lecture_mode
	.4byte 0x0004005B
	.4byte btlevtcmd_SpawnUnit
	.4byte 0xFE363C83
	.4byte entry_lecture_frankli
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C83
	.4byte 0x0002005B
	.4byte _battle_set_lecture_unit_id
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte btlevtcmd_ChangeFaceDirection
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitId
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte btlevtcmd_onoff_battleflag
	.4byte 0x00000001
	.4byte 0x00001000
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x300 | 0x47210 | size: 0x28
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

# .data:0x328 | 0x47238 | size: 0x1D4
.obj lecture_christine_ac_counter_damage_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000027
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7E80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C82
	.4byte 0x00000019
	.4byte 0x00020035
	.4byte 0xFE363C83
	.4byte 0x00000019
	.4byte 0x000A005B
	.4byte btlevtcmd_DivePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000005
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte btlevtcmd_SetTalkPose
	.4byte 0xFFFFFFFE
	.4byte str_PKR_D_1_gor_0001f58c
	.4byte 0x0003005B
	.4byte btlevtcmd_SetStayPose
	.4byte 0xFFFFFFFE
	.4byte str_PKR_D_1_gor_0001f58c
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_mac_0_b_t2_015_gor_0001f594
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7E80
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0004005B
	.4byte btlevtcmd_TransStageFloorPosition
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00000014
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C82
	.4byte 0x0000000F
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0000000A
	.4byte 0xFFFFFFFF
	.4byte 0x00010009
	.4byte 0x0000001E
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFA
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000007
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFA
	.4byte 0x00000001
	.4byte 0x00000008
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFA
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj lecture_christine_ac_counter_damage_event

# .data:0x4FC | 0x4740C | size: 0x8
.obj phase_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0x504 | 0x47414 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x51C | 0x4742C | size: 0x4C
.obj attack_event, local
	.4byte 0x0001005E
	.4byte lecture_zutsuki_attack_event
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFA
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFA
	.4byte 0x00000001
	.4byte 0x00000004
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x568 | 0x47478 | size: 0xC0
.obj lec_weapon_zutsuki_1, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000000
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000001
	.4byte 0x00000001
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
	.4byte 0x01001260
	.4byte 0x20001004
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00015007
	.4byte 0x0000000C
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
.endobj lec_weapon_zutsuki_1

# .data:0x628 | 0x47538 | size: 0xC0
.obj lec_weapon_zutsuki_2, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
	.4byte 0x3F800000
	.4byte 0x01010101
	.4byte weaponGetPowerDefault
	.4byte 0x00000001
	.4byte 0x00000001
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
	.4byte 0x01001260
	.4byte 0x20001004
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00015007
	.4byte 0x0000000C
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
.endobj lec_weapon_zutsuki_2

# .data:0x6E8 | 0x475F8 | size: 0x8E8
.obj lecture_zutsuki_attack_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFA
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000003
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte lec_weapon_zutsuki_1
	.4byte 0x00000020
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte lec_weapon_zutsuki_2
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000014
	.4byte 0xF24A7A80
	.4byte 0xF24A7D4C
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C8C
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte 0xFE363C8C
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x00020018
	.4byte 0xFE363C83
	.4byte 0xFFFFFFFF
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
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
	.4byte 0xFE363C8C
	.4byte 0x0003005B
	.4byte btlevtcmd_RunDataEventChild
	.4byte 0xFFFFFFFE
	.4byte 0x00000007
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x0006005B
	.4byte evt_btl_camera_set_homing_unitparts
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002A
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A8680
	.4byte 0x0007005B
	.4byte btlevtcmd_GetTakeoffPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
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
	.4byte 0x0007005B
	.4byte btlevtcmd_GetMoveFrame
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFE363C8E
	.4byte 0x0008005B
	.4byte btlevtcmd_MovePosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C8E
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
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
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKR_A_2B_gor_0001f5a4
	.4byte 0x00010009
	.4byte 0x00000014
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_PKR_J_1A_gor_0001f5b0
	.4byte 0x0000006B
	.4byte 0x00010009
	.4byte 0x0000000F
	.4byte 0x0003005B
	.4byte evt_snd_sfxon
	.4byte str_SFX_BTL_KURI_ATTACK1_gor_0001f5bc
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000014
	.4byte 0xF24A7A80
	.4byte 0xF24A7D4C
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotateOffset
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x0000000E
	.4byte 0x00000000
	.4byte 0x0000006E
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
	.4byte 0x00000024
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPosFloat
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0xFE363C8E
	.4byte 0x0006005B
	.4byte _krb_get_dir
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0xFE363C88
	.4byte 0x0005005B
	.4byte btlevtcmd_GetRotate
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C88
	.4byte 0x00020034
	.4byte 0xFE363C85
	.4byte 0xFE363C8C
	.4byte 0x00020034
	.4byte 0xFE363C86
	.4byte 0xFE363C8D
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
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000005
	.4byte 0x0008005B
	.4byte btlevtcmd_MarioJumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000024
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFA
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0003005B
	.4byte btlevtcmd_SetTalkPose
	.4byte 0xFFFFFFFA
	.4byte str_T_1_gor_0001f5d4
	.4byte 0x0003005B
	.4byte btlevtcmd_SetStayPose
	.4byte 0xFFFFFFFA
	.4byte str_S_1_gor_0001f5d8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_mac_0_b_t2_006_gor_0001f5dc
	.4byte 0x00000000
	.4byte 0xFFFFFFFA
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010003
	.4byte 0x0000000B
	.4byte 0x0004005B
	.4byte btlevtcmd_PadCheckTrigger
	.4byte 0x00000000
	.4byte 0x00000100
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000000B
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x00000032
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x00010024
	.4byte 0x00000007
	.4byte 0x0003005B
	.4byte btlevtcmd_SetTalkPose
	.4byte 0xFFFFFFFA
	.4byte str_T_1_gor_0001f5d4
	.4byte 0x0003005B
	.4byte btlevtcmd_SetStayPose
	.4byte 0xFFFFFFFA
	.4byte str_S_1_gor_0001f5d8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_mac_0_b_t2_014_gor_0001f5ec
	.4byte 0x00000000
	.4byte 0xFFFFFFFA
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010003
	.4byte 0x0000000C
	.4byte 0x0004005B
	.4byte btlevtcmd_PadCheckTrigger
	.4byte 0x00000000
	.4byte 0x00000200
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000000C
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x00000032
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0001005B
	.4byte evt_msg_continue
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x00000031
	.4byte 0x0000006B
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0xF24D0480
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_zoom
	.4byte 0x00000000
	.4byte 0x000000C8
	.4byte 0x0000006D
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFA
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0002005B
	.4byte _config_key_record
	.4byte 0x00000100
	.4byte 0x00010024
	.4byte 0x00000007
	.4byte 0x0002005B
	.4byte _config_key_record
	.4byte 0x00000200
	.4byte 0x00000031
	.4byte 0x0003005B
	.4byte btlevtcmd_ResultACDefence
	.4byte 0xFE363C83
	.4byte 0xFE363C8C
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C8C
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x0002005B
	.4byte _get_defence_ac_result
	.4byte 0xFE363C80
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFA
	.4byte 0x00000003
	.4byte 0x00000004
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFA
	.4byte 0x00000003
	.4byte 0x00000005
	.4byte 0x00010024
	.4byte 0x00000003
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFA
	.4byte 0x00000003
	.4byte 0x00000006
	.4byte 0x00000031
	.4byte 0x00020035
	.4byte 0xFE363C8A
	.4byte 0x00000001
	.4byte 0x0000006E
	.4byte 0x0005005B
	.4byte btlevtcmd_GetRotate
	.4byte 0xFFFFFFFE
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0xFE363C86
	.4byte 0x0002001A
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x00020037
	.4byte 0xFE363C86
	.4byte 0xFFFFFFFF
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte btlevtcmd_GetFaceDirection
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020037
	.4byte 0xFE363C86
	.4byte 0xFE363C80
	.4byte 0x00020038
	.4byte 0xFE363C86
	.4byte 0x0000000F
	.4byte 0x00020032
	.4byte 0xFE363C87
	.4byte 0x0000000F
	.4byte 0x00010003
	.4byte 0x00000014
	.4byte 0x0005005B
	.4byte btlevtcmd_AddRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C86
	.4byte 0x00020036
	.4byte 0xFE363C87
	.4byte 0x00000001
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0002001D
	.4byte 0xFE363C87
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000014
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte btlevtcmd_SetRotate
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000070
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7D4C
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xF1194D80
	.4byte 0xFE363C81
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0000003C
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000001E
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7CE6
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
	.4byte 0x00000008
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000008
	.4byte 0xFFFFFFFF
	.4byte 0x00010003
	.4byte 0x0000005F
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_SetMoveSpeed
	.4byte 0xFFFFFFFE
	.4byte 0xF24A9280
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000028
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
	.4byte 0xFFFFFFFF
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
	.4byte 0x00000000
.endobj lecture_zutsuki_attack_event
