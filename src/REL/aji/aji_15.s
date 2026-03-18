.include "macros.inc"
.file "aji_15.o"

# 0x0000435C..0x00004474 | size: 0x118
.text
.balign 4

# .text:0x0 | 0x435C | size: 0x64
.fn peach_chk_aftershower, local
/* 0000435C 00004420  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 00004360 00004424  7C 08 02 A6 */	mflr r0
/* 00004364 00004428  90 01 00 14 */	stw r0, 0x14(r1)
/* 00004368 0000442C  BF C1 00 08 */	stmw r30, 0x8(r1)
/* 0000436C 00004430  7C 7E 1B 78 */	mr r30, r3
/* 00004370 00004434  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 00004374 00004438  48 00 1E C9 */	bl marioGetPtr
/* 00004378 0000443C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 0000437C 00004440  54 00 06 F7 */	rlwinm. r0, r0, 0, 27, 27
/* 00004380 00004444  41 82 00 18 */	beq .L_00004398
/* 00004384 00004448  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00004388 0000444C  7F C3 F3 78 */	mr r3, r30
/* 0000438C 00004450  38 A0 00 01 */	li r5, 0x1
/* 00004390 00004454  48 00 1E AD */	bl evtSetValue
/* 00004394 00004458  48 00 00 14 */	b .L_000043A8
.L_00004398:
/* 00004398 0000445C  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 0000439C 00004460  7F C3 F3 78 */	mr r3, r30
/* 000043A0 00004464  38 A0 00 00 */	li r5, 0x0
/* 000043A4 00004468  48 00 1E 99 */	bl evtSetValue
.L_000043A8:
/* 000043A8 0000446C  BB C1 00 08 */	lmw r30, 0x8(r1)
/* 000043AC 00004470  38 60 00 02 */	li r3, 0x2
/* 000043B0 00004474  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000043B4 00004478  7C 08 03 A6 */	mtlr r0
/* 000043B8 0000447C  38 21 00 10 */	addi r1, r1, 0x10
/* 000043BC 00004480  4E 80 00 20 */	blr
.endfn peach_chk_aftershower

# .text:0x64 | 0x43C0 | size: 0xB4
.fn peach_set_pos, local
/* 000043C0 00004484  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 000043C4 00004488  7C 08 02 A6 */	mflr r0
/* 000043C8 0000448C  90 01 00 44 */	stw r0, 0x44(r1)
/* 000043CC 00004490  39 61 00 40 */	addi r11, r1, 0x40
/* 000043D0 00004494  48 00 1E 6D */	bl _savefpr_29
/* 000043D4 00004498  BF C1 00 20 */	stmw r30, 0x20(r1)
/* 000043D8 0000449C  7C 7E 1B 78 */	mr r30, r3
/* 000043DC 000044A0  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 000043E0 000044A4  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 000043E4 000044A8  48 00 1E 59 */	bl evtGetFloat
/* 000043E8 000044AC  FF A0 08 90 */	fmr f29, f1
/* 000043EC 000044B0  80 9F 00 04 */	lwz r4, 0x4(r31)
/* 000043F0 000044B4  7F C3 F3 78 */	mr r3, r30
/* 000043F4 000044B8  48 00 1E 49 */	bl evtGetFloat
/* 000043F8 000044BC  FF C0 08 90 */	fmr f30, f1
/* 000043FC 000044C0  80 9F 00 08 */	lwz r4, 0x8(r31)
/* 00004400 000044C4  7F C3 F3 78 */	mr r3, r30
/* 00004404 000044C8  48 00 1E 39 */	bl evtGetFloat
/* 00004408 000044CC  FF E0 08 90 */	fmr f31, f1
/* 0000440C 000044D0  48 00 1E 31 */	bl marioGetPtr
/* 00004410 000044D4  3C 80 00 00 */	lis r4, vec3_aji_000149b4@ha
/* 00004414 000044D8  38 A4 00 00 */	addi r5, r4, vec3_aji_000149b4@l
/* 00004418 000044DC  80 05 00 00 */	lwz r0, 0x0(r5)
/* 0000441C 000044E0  80 85 00 04 */	lwz r4, 0x4(r5)
/* 00004420 000044E4  90 01 00 08 */	stw r0, 0x8(r1)
/* 00004424 000044E8  80 05 00 08 */	lwz r0, 0x8(r5)
/* 00004428 000044EC  90 81 00 0C */	stw r4, 0xc(r1)
/* 0000442C 000044F0  D3 A1 00 08 */	stfs f29, 0x8(r1)
/* 00004430 000044F4  90 01 00 10 */	stw r0, 0x10(r1)
/* 00004434 000044F8  80 01 00 08 */	lwz r0, 0x8(r1)
/* 00004438 000044FC  D3 C1 00 0C */	stfs f30, 0xc(r1)
/* 0000443C 00004500  D3 E1 00 10 */	stfs f31, 0x10(r1)
/* 00004440 00004504  80 81 00 0C */	lwz r4, 0xc(r1)
/* 00004444 00004508  90 03 00 8C */	stw r0, 0x8c(r3)
/* 00004448 0000450C  80 01 00 10 */	lwz r0, 0x10(r1)
/* 0000444C 00004510  90 83 00 90 */	stw r4, 0x90(r3)
/* 00004450 00004514  90 03 00 94 */	stw r0, 0x94(r3)
/* 00004454 00004518  38 60 00 02 */	li r3, 0x2
/* 00004458 0000451C  39 61 00 40 */	addi r11, r1, 0x40
/* 0000445C 00004520  48 00 1D E1 */	bl _restfpr_29
/* 00004460 00004524  BB C1 00 20 */	lmw r30, 0x20(r1)
/* 00004464 00004528  80 01 00 44 */	lwz r0, 0x44(r1)
/* 00004468 0000452C  7C 08 03 A6 */	mtlr r0
/* 0000446C 00004530  38 21 00 40 */	addi r1, r1, 0x40
/* 00004470 00004534  4E 80 00 20 */	blr
.endfn peach_set_pos

# 0x00003B10..0x00003CD0 | size: 0x1C0
.rodata
.balign 8

# .rodata:0x0 | 0x3B10 | size: 0xA
.obj str_S_door1_1_aji_00014978, local
	.string "S_door1_1"
.endobj str_S_door1_1_aji_00014978

# .rodata:0xA | 0x3B1A | size: 0x2
.obj gap_03_00003B1A_rodata, global
.hidden gap_03_00003B1A_rodata
	.2byte 0x0000
.endobj gap_03_00003B1A_rodata

# .rodata:0xC | 0x3B1C | size: 0xA
.obj str_S_door1_2_aji_00014984, local
	.string "S_door1_2"
.endobj str_S_door1_2_aji_00014984

# .rodata:0x16 | 0x3B26 | size: 0x2
.obj gap_03_00003B26_rodata, global
.hidden gap_03_00003B26_rodata
	.2byte 0x0000
.endobj gap_03_00003B26_rodata

# .rodata:0x18 | 0x3B28 | size: 0x7
.obj str_e_bero_aji_00014990, local
	.string "e_bero"
.endobj str_e_bero_aji_00014990

# .rodata:0x1F | 0x3B2F | size: 0x1
.obj gap_03_00003B2F_rodata, global
.hidden gap_03_00003B2F_rodata
	.byte 0x00
.endobj gap_03_00003B2F_rodata

# .rodata:0x20 | 0x3B30 | size: 0x7
.obj str_aji_16_aji_00014998, local
	.string "aji_16"
.endobj str_aji_16_aji_00014998

# .rodata:0x27 | 0x3B37 | size: 0x1
.obj gap_03_00003B37_rodata, global
.hidden gap_03_00003B37_rodata
	.byte 0x00
.endobj gap_03_00003B37_rodata

# .rodata:0x28 | 0x3B38 | size: 0x7
.obj str_w_bero_aji_000149a0, local
	.string "w_bero"
.endobj str_w_bero_aji_000149a0

# .rodata:0x2F | 0x3B3F | size: 0x1
.obj gap_03_00003B3F_rodata, global
.hidden gap_03_00003B3F_rodata
	.byte 0x00
.endobj gap_03_00003B3F_rodata

# .rodata:0x30 | 0x3B40 | size: 0xC
.obj str_kemuri_test_aji_000149a8, local
	.string "kemuri_test"
.endobj str_kemuri_test_aji_000149a8

# .rodata:0x3C | 0x3B4C | size: 0xC
.obj vec3_aji_000149b4, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj vec3_aji_000149b4

# .rodata:0x48 | 0x3B58 | size: 0x6
.obj str_mario_aji_000149c0, local
	.string "mario"
.endobj str_mario_aji_000149c0

# .rodata:0x4E | 0x3B5E | size: 0x2
.obj gap_03_00003B5E_rodata, global
.hidden gap_03_00003B5E_rodata
	.2byte 0x0000
.endobj gap_03_00003B5E_rodata

# .rodata:0x50 | 0x3B60 | size: 0x6
.obj str_P_S_1_aji_000149c8, local
	.string "P_S_1"
.endobj str_P_S_1_aji_000149c8

# .rodata:0x56 | 0x3B66 | size: 0x2
.obj gap_03_00003B66_rodata, global
.hidden gap_03_00003B66_rodata
	.2byte 0x0000
.endobj gap_03_00003B66_rodata

# .rodata:0x58 | 0x3B68 | size: 0x6
.obj str_P_T_1_aji_000149d0, local
	.string "P_T_1"
.endobj str_P_T_1_aji_000149d0

# .rodata:0x5E | 0x3B6E | size: 0x2
.obj gap_03_00003B6E_rodata, global
.hidden gap_03_00003B6E_rodata
	.2byte 0x0000
.endobj gap_03_00003B6E_rodata

# .rodata:0x60 | 0x3B70 | size: 0x6
.obj str_P_S_2_aji_000149d8, local
	.string "P_S_2"
.endobj str_P_S_2_aji_000149d8

# .rodata:0x66 | 0x3B76 | size: 0x2
.obj gap_03_00003B76_rodata, global
.hidden gap_03_00003B76_rodata
	.2byte 0x0000
.endobj gap_03_00003B76_rodata

# .rodata:0x68 | 0x3B78 | size: 0x6
.obj str_P_T_2_aji_000149e0, local
	.string "P_T_2"
.endobj str_P_T_2_aji_000149e0

# .rodata:0x6E | 0x3B7E | size: 0x2
.obj gap_03_00003B7E_rodata, global
.hidden gap_03_00003B7E_rodata
	.2byte 0x0000
.endobj gap_03_00003B7E_rodata

# .rodata:0x70 | 0x3B80 | size: 0xD
.obj str_peach_aji_35_aji_000149e8, local
	.string "peach_aji_35"
.endobj str_peach_aji_35_aji_000149e8

# .rodata:0x7D | 0x3B8D | size: 0x3
.obj gap_03_00003B8D_rodata, global
.hidden gap_03_00003B8D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003B8D_rodata

# .rodata:0x80 | 0x3B90 | size: 0xF
.obj str_peach_aji_35_1_aji_000149f8, local
	.string "peach_aji_35_1"
.endobj str_peach_aji_35_1_aji_000149f8

# .rodata:0x8F | 0x3B9F | size: 0x1
.obj gap_03_00003B9F_rodata, global
.hidden gap_03_00003B9F_rodata
	.byte 0x00
.endobj gap_03_00003B9F_rodata

# .rodata:0x90 | 0x3BA0 | size: 0x18
.obj str_SFX_PEACH_CHANGE_CLO_aji_00014a08, local
	.string "SFX_PEACH_CHANGE_CLOTH1"
.endobj str_SFX_PEACH_CHANGE_CLO_aji_00014a08

# .rodata:0xA8 | 0x3BB8 | size: 0x16
.obj str_SFX_PEACH_HANG_CLOTH_aji_00014a20, local
	.string "SFX_PEACH_HANG_CLOTH1"
.endobj str_SFX_PEACH_HANG_CLOTH_aji_00014a20

# .rodata:0xBE | 0x3BCE | size: 0x2
.obj gap_03_00003BCE_rodata, global
.hidden gap_03_00003BCE_rodata
	.2byte 0x0000
.endobj gap_03_00003BCE_rodata

# .rodata:0xC0 | 0x3BD0 | size: 0x7
.obj str_p_fuku_aji_00014a38, local
	.string "p_fuku"
.endobj str_p_fuku_aji_00014a38

# .rodata:0xC7 | 0x3BD7 | size: 0x1
.obj gap_03_00003BD7_rodata, global
.hidden gap_03_00003BD7_rodata
	.byte 0x00
.endobj gap_03_00003BD7_rodata

# .rodata:0xC8 | 0x3BD8 | size: 0x5
.obj str_fuku_aji_00014a40, local
	.string "fuku"
.endobj str_fuku_aji_00014a40

# .rodata:0xCD | 0x3BDD | size: 0x3
.obj gap_03_00003BDD_rodata, global
.hidden gap_03_00003BDD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003BDD_rodata

# .rodata:0xD0 | 0x3BE0 | size: 0x12
.obj str_SFX_PEACH_SHOWER1_aji_00014a48, local
	.string "SFX_PEACH_SHOWER1"
.endobj str_SFX_PEACH_SHOWER1_aji_00014a48

# .rodata:0xE2 | 0x3BF2 | size: 0x2
.obj gap_03_00003BF2_rodata, global
.hidden gap_03_00003BF2_rodata
	.2byte 0x0000
.endobj gap_03_00003BF2_rodata

# .rodata:0xE4 | 0x3BF4 | size: 0x12
.obj str_SFX_PEACH_SHOWER2_aji_00014a5c, local
	.string "SFX_PEACH_SHOWER2"
.endobj str_SFX_PEACH_SHOWER2_aji_00014a5c

# .rodata:0xF6 | 0x3C06 | size: 0x2
.obj gap_03_00003C06_rodata, global
.hidden gap_03_00003C06_rodata
	.2byte 0x0000
.endobj gap_03_00003C06_rodata

# .rodata:0xF8 | 0x3C08 | size: 0x8
.obj str_S_syawa_aji_00014a70, local
	.string "S_syawa"
.endobj str_S_syawa_aji_00014a70

# .rodata:0x100 | 0x3C10 | size: 0x19
.obj str_SFX_VOICE_PEACH_HAMM_aji_00014a78, local
	.string "SFX_VOICE_PEACH_HAMMING1"
.endobj str_SFX_VOICE_PEACH_HAMM_aji_00014a78

# .rodata:0x119 | 0x3C29 | size: 0x3
.obj gap_03_00003C29_rodata, global
.hidden gap_03_00003C29_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003C29_rodata

# .rodata:0x11C | 0x3C2C | size: 0x19
.obj str_SFX_VOICE_PEACH_HAMM_aji_00014a94, local
	.string "SFX_VOICE_PEACH_HAMMING2"
.endobj str_SFX_VOICE_PEACH_HAMM_aji_00014a94

# .rodata:0x135 | 0x3C45 | size: 0x3
.obj gap_03_00003C45_rodata, global
.hidden gap_03_00003C45_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003C45_rodata

# .rodata:0x138 | 0x3C48 | size: 0x19
.obj str_SFX_VOICE_PEACH_HAMM_aji_00014ab0, local
	.string "SFX_VOICE_PEACH_HAMMING3"
.endobj str_SFX_VOICE_PEACH_HAMM_aji_00014ab0

# .rodata:0x151 | 0x3C61 | size: 0x3
.obj gap_03_00003C61_rodata, global
.hidden gap_03_00003C61_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003C61_rodata

# .rodata:0x154 | 0x3C64 | size: 0xD
.obj str_peach_aji_36_aji_00014acc, local
	.string "peach_aji_36"
.endobj str_peach_aji_36_aji_00014acc

# .rodata:0x161 | 0x3C71 | size: 0x3
.obj gap_03_00003C71_rodata, global
.hidden gap_03_00003C71_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003C71_rodata

# .rodata:0x164 | 0x3C74 | size: 0x7
.obj str_taoru2_aji_00014adc, local
	.string "taoru2"
.endobj str_taoru2_aji_00014adc

# .rodata:0x16B | 0x3C7B | size: 0x1
.obj gap_03_00003C7B_rodata, global
.hidden gap_03_00003C7B_rodata
	.byte 0x00
.endobj gap_03_00003C7B_rodata

# .rodata:0x16C | 0x3C7C | size: 0x6
.obj str_taoru_aji_00014ae4, local
	.string "taoru"
.endobj str_taoru_aji_00014ae4

# .rodata:0x172 | 0x3C82 | size: 0x2
.obj gap_03_00003C82_rodata, global
.hidden gap_03_00003C82_rodata
	.2byte 0x0000
.endobj gap_03_00003C82_rodata

# .rodata:0x174 | 0x3C84 | size: 0x6
.obj str_fuku2_aji_00014aec, local
	.string "fuku2"
.endobj str_fuku2_aji_00014aec

# .rodata:0x17A | 0x3C8A | size: 0x2
.obj gap_03_00003C8A_rodata, global
.hidden gap_03_00003C8A_rodata
	.2byte 0x0000
.endobj gap_03_00003C8A_rodata

# .rodata:0x17C | 0x3C8C | size: 0xD
.obj str_peach_aji_37_aji_00014af4, local
	.string "peach_aji_37"
.endobj str_peach_aji_37_aji_00014af4

# .rodata:0x189 | 0x3C99 | size: 0x3
.obj gap_03_00003C99_rodata, global
.hidden gap_03_00003C99_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003C99_rodata

# .rodata:0x18C | 0x3C9C | size: 0x6
.obj str_syawa_aji_00014b04, local
	.string "syawa"
.endobj str_syawa_aji_00014b04

# .rodata:0x192 | 0x3CA2 | size: 0x2
.obj gap_03_00003CA2_rodata, global
.hidden gap_03_00003CA2_rodata
	.2byte 0x0000
.endobj gap_03_00003CA2_rodata

# .rodata:0x194 | 0x3CA4 | size: 0x7
.obj str_A_furo_aji_00014b0c, local
	.string "A_furo"
.endobj str_A_furo_aji_00014b0c

# .rodata:0x19B | 0x3CAB | size: 0x1
.obj gap_03_00003CAB_rodata, global
.hidden gap_03_00003CAB_rodata
	.byte 0x00
.endobj gap_03_00003CAB_rodata

# .rodata:0x19C | 0x3CAC | size: 0x11
.obj str_軍団ザコエリート_aji_00014b14, local
	.4byte 0x8C529263
	.4byte 0x83558352
	.4byte 0x8347838A
	.4byte 0x815B8367
	.byte 0x00
.endobj str_軍団ザコエリート_aji_00014b14

# .rodata:0x1AD | 0x3CBD | size: 0x3
.obj gap_03_00003CBD_rodata, global
.hidden gap_03_00003CBD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003CBD_rodata

# .rodata:0x1B0 | 0x3CC0 | size: 0xF
.obj str_BGM_EVT_PEACH1_aji_00014b28, local
	.string "BGM_EVT_PEACH1"
.endobj str_BGM_EVT_PEACH1_aji_00014b28

# .rodata:0x1BF | 0x3CCF | size: 0x1
.obj gap_03_00003CCF_rodata, global
.hidden gap_03_00003CCF_rodata
	.byte 0x00
.endobj gap_03_00003CCF_rodata

# 0x0001BED0..0x0001CF50 | size: 0x1080
.data
.balign 8

# .data:0x0 | 0x1BED0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x1BED8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x1BEDC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x1BEE0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x1BEE4 | size: 0x4
.obj gap_04_0001BEE4_data, global
.hidden gap_04_0001BEE4_data
	.4byte 0x00000000
.endobj gap_04_0001BEE4_data

# .data:0x18 | 0x1BEE8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x1BEF0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x1BEF4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x1BEF8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x1BF00 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x1BF04 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x1BF08 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x1BF0C | size: 0x4
.obj gap_04_0001BF0C_data, global
.hidden gap_04_0001BF0C_data
	.4byte 0x00000000
.endobj gap_04_0001BF0C_data

# .data:0x40 | 0x1BF10 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x1BF18 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x1BF1C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x1BF20 | size: 0x58
.obj e_door_close, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A799D
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_S_door1_1_aji_00014978
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_S_door1_2_aji_00014984
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e_door_close

# .data:0xA8 | 0x1BF78 | size: 0x58
.obj e_door_open, local
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A799D
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_S_door1_1_aji_00014978
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C80
	.4byte 0xF24A7680
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000000
	.4byte str_S_door1_2_aji_00014984
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x00000001
.endobj e_door_open

# .data:0x100 | 0x1BFD0 | size: 0x78
.obj bero_entry_data, local
	.4byte str_e_bero_aji_00014990
	.4byte 0x0001000A
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_aji_16_aji_00014998
	.4byte str_w_bero_aji_000149a0
	.4byte 0x00050005
	.4byte e_door_close
	.4byte e_door_open
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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

# .data:0x178 | 0x1C048 | size: 0xAC
.obj peach_evt_yuge, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000026
	.4byte 0xFE363C80
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x00000013
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFFE2
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000014
	.4byte 0xFE363C81
	.4byte 0x00020036
	.4byte 0xFE363C81
	.4byte 0x0000000A
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000003C
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte 0x00000000
	.4byte str_kemuri_test_aji_000149a8
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFFFFFFF1
	.4byte 0xF24A7E80
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000002BC
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peach_evt_yuge

# .data:0x224 | 0x1C0F4 | size: 0xC78
.obj peach_evt_syawa_main, local
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00002800
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000400
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte peach_chk_aftershower
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_aji_000149c0
	.4byte str_P_S_1_aji_000149c8
	.4byte str_P_T_1_aji_000149d0
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_aji_000149c0
	.4byte str_P_S_2_aji_000149d8
	.4byte str_P_T_2_aji_000149e0
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF8406BFC
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_35_aji_000149e8
	.4byte 0x00000000
	.4byte str_mario_aji_000149c0
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_35_1_aji_000149f8
	.4byte 0x00000000
	.4byte str_mario_aji_000149c0
	.4byte 0x00000021
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFFE2
	.4byte 0x00000082
	.4byte 0x00000150
	.4byte 0xFFFFFFE2
	.4byte 0x00000044
	.4byte 0xFFFFFFC6
	.4byte 0x00000578
	.4byte 0x0000000B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0xFFFFFFC4
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFFAB
	.4byte 0xFFFFFFC4
	.4byte 0xF24B3A80
	.4byte 0x00000021
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002001B
	.4byte 0xFE363C82
	.4byte 0xFFFFFFF6
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0xFFFFFFF1
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFE363C80
	.4byte 0xFE363C82
	.4byte 0xF24B3A80
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000019
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x00000019
	.4byte 0xFFFFFFD7
	.4byte 0xF24B3A80
	.4byte 0x00000021
	.4byte 0x0000006B
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0xFFFFFFE4
	.4byte 0xFFFFFFD3
	.4byte 0xF24B3A80
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x00000578
	.4byte 0x0001005B
	.4byte evt_mario_wait_move_end
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xF24A7A80
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000D
	.4byte 0x00000000
	.4byte 0x000003E8
	.4byte 0x0000012C
	.4byte 0x00010003
	.4byte 0x00000014
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000014
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000D
	.4byte 0x000003E8
	.4byte 0x00000320
	.4byte 0x000000C8
	.4byte 0x00010003
	.4byte 0x00000015
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000015
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFFFFFFD3
	.4byte 0xFFFFFFF1
	.4byte 0x00000258
	.4byte 0x00010003
	.4byte 0x0000000A
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0004005B
	.4byte peach_set_pos
	.4byte 0xF24A0A80
	.4byte 0xFD050F80
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000000A
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_PEACH_CHANGE_CLO_aji_00014a08
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte evt_snd_sfx_dist
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_PEACH_HANG_CLOTH_aji_00014a20
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_p_fuku_aji_00014a38
	.4byte 0x00000000
	.4byte 0xFFFFFFF6
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_p_fuku_aji_00014a38
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0xFFFFFFF6
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_p_fuku_aji_00014a38
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_fuku_aji_00014a40
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_checkanim
	.4byte str_fuku_aji_00014a40
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0001000A
	.4byte 0xFE363C81
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_PEACH_SHOWER1_aji_00014a48
	.4byte 0xFFFFFFD8
	.4byte 0x00000000
	.4byte 0xFFFFFFE2
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_PEACH_SHOWER2_aji_00014a5c
	.4byte 0xFFFFFFD8
	.4byte 0x00000000
	.4byte 0xFFFFFFE2
	.4byte 0xFE363C8A
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000C
	.4byte 0xF24A7A80
	.4byte 0xF24A7E80
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0006005B
	.4byte evt_mapobj_scale
	.4byte 0x00000001
	.4byte str_S_syawa_aji_00014a70
	.4byte 0xFE363C80
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005D
	.4byte peach_evt_yuge
	.4byte 0xFE363C89
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000002
	.4byte 0xFE363C83
	.4byte 0x00010022
	.4byte 0xFE363C83
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_PEACH_HAMM_aji_00014a78
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_PEACH_HAMM_aji_00014a94
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_PEACH_HAMM_aji_00014ab0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000031
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0007005B
	.4byte evt_map_set_fog
	.4byte 0x00000002
	.4byte 0x00000384
	.4byte 0x000005DC
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x0002005B
	.4byte evt_map_fog_onoff
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000C
	.4byte 0x00000384
	.4byte 0x00000000
	.4byte 0x00001388
	.4byte 0x00010003
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0007005B
	.4byte evt_map_set_fog
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0x000004B0
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_36_aji_00014acc
	.4byte 0x00000000
	.4byte str_mario_aji_000149c0
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_PEACH_SHOWER1_aji_00014a48
	.4byte 0xFFFFFFD8
	.4byte 0x00000000
	.4byte 0xFFFFFFE2
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8A
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000C
	.4byte 0xF24A7E80
	.4byte 0xF24A7A80
	.4byte 0x000001F4
	.4byte 0x00010003
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0006005B
	.4byte evt_mapobj_scale
	.4byte 0x00000001
	.4byte str_S_syawa_aji_00014a70
	.4byte 0xFE363C80
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0001005F
	.4byte 0xFE363C89
	.4byte 0x0001000A
	.4byte 0x00000708
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000D
	.4byte 0x00000000
	.4byte 0x00000384
	.4byte 0x00001388
	.4byte 0x00010003
	.4byte 0x00000003
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0007005B
	.4byte evt_map_set_fog
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0x000004B0
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x000000FF
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000003
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_map_fog_onoff
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_PEACH_HANG_CLOTH_aji_00014a20
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_taoru2_aji_00014adc
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_checkanim
	.4byte str_taoru2_aji_00014adc
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0001000A
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFF6
	.4byte 0x00000064
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_taoru_aji_00014ae4
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_taoru_aji_00014ae4
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_PEACH_HANG_CLOTH_aji_00014a20
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_taoru_aji_00014ae4
	.4byte 0x00000000
	.4byte 0xFFFFFFF6
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_taoru_aji_00014ae4
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0xFFFFFFF6
	.4byte 0x00000000
	.4byte 0x00000064
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_taoru_aji_00014ae4
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_taoru_aji_00014ae4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_checkanim
	.4byte str_taoru_aji_00014ae4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0001000A
	.4byte 0xFE363C81
	.4byte 0x0001000A
	.4byte 0x00000320
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_PEACH_HANG_CLOTH_aji_00014a20
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_fuku2_aji_00014aec
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_checkanim
	.4byte str_fuku2_aji_00014aec
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0001000A
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFF6
	.4byte 0x00000064
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0006005B
	.4byte evt_mapobj_trans
	.4byte 0x00000001
	.4byte str_p_fuku_aji_00014a38
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_p_fuku_aji_00014a38
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_PEACH_CHANGE_CLO_aji_00014a08
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_peach_set_condition
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000000
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xF24A7A80
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000D
	.4byte 0x00000320
	.4byte 0x000003E8
	.4byte 0x000000C8
	.4byte 0x00010003
	.4byte 0x00000016
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000016
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000D
	.4byte 0x000003E8
	.4byte 0x00000000
	.4byte 0x0000012C
	.4byte 0x00010003
	.4byte 0x00000017
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF24C0A80
	.4byte 0x00020034
	.4byte 0xFD050F80
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000017
	.4byte 0x00000021
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFFFFFFF1
	.4byte 0xFFFFFFD3
	.4byte 0x00000258
	.4byte 0x00010003
	.4byte 0x0000000B
	.4byte 0x0001005B
	.4byte evt_sub_intpl_msec_get_value
	.4byte 0x0004005B
	.4byte peach_set_pos
	.4byte 0xF24A0A80
	.4byte 0xFD050F80
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x0000000B
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_cont_onoff
	.4byte 0x00000001
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000001E
	.4byte 0x00000082
	.4byte 0x00000150
	.4byte 0x0000001E
	.4byte 0x0000003C
	.4byte 0xFFFFFFC6
	.4byte 0x000004E2
	.4byte 0x0000000B
	.4byte 0x0004005B
	.4byte evt_mario_mov_pos2
	.4byte 0x0000001E
	.4byte 0xFFFFFFD3
	.4byte 0xF24B3A80
	.4byte 0x0001005B
	.4byte evt_mario_wait_move_end
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_aji_000149c0
	.4byte str_P_S_2_aji_000149d8
	.4byte str_P_T_2_aji_000149e0
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_peach_aji_37_aji_00014af4
	.4byte 0x00000000
	.4byte str_mario_aji_000149c0
	.4byte 0x0004005B
	.4byte evt_npc_set_autotalkpose
	.4byte str_mario_aji_000149c0
	.4byte str_P_S_1_aji_000149c8
	.4byte str_P_T_1_aji_000149d0
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x000000A0
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000201
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000120
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF8406BFC
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x00000320
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peach_evt_syawa_main

# .data:0xE9C | 0x1CD6C | size: 0xFC
.obj peach_evt_syawa_init, local
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_p_fuku_aji_00014a38
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_taoru_aji_00014ae4
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte evt_mapobj_scale
	.4byte 0x00000001
	.4byte str_S_syawa_aji_00014a70
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_syawa_aji_00014b04
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_get_mode
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_kill_party
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_taoru_aji_00014ae4
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_taoru_aji_00014ae4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_checkanim
	.4byte str_taoru_aji_00014ae4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0001000A
	.4byte 0xFE363C81
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_furo_aji_00014b0c
	.4byte 0x00000000
	.4byte peach_evt_syawa_main
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj peach_evt_syawa_init

# .data:0xF98 | 0x1CE68 | size: 0xE8
.obj aji_15_init_evt_2_data_1CE68, global
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x00000175
	.4byte 0x0002005B
	.4byte evt_npc_check_delete
	.4byte str_軍団ザコエリート_aji_00014b14
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_get_mode
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_set_mode
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_npc_check_delete
	.4byte str_軍団ザコエリート_aji_00014b14
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_PEACH1_aji_00014b28
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000200
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_PEACH1_aji_00014b28
	.4byte 0x0002005B
	.4byte evt_snd_envoff
	.4byte 0x00000200
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_snd_set_rev_mode
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte peach_evt_syawa_init
	.4byte 0x00020018
	.4byte 0xF8406BE7
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF8406BE7
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0001005C
	.4byte evt_emergency_2_data_1E408
	.4byte 0x00000002
	.4byte 0x00000001
.endobj aji_15_init_evt_2_data_1CE68
