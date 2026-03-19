.include "macros.inc"
.file "muj_05.o"

# 0x000032B8..0x0000342C | size: 0x174
.text
.balign 4

# .text:0x0 | 0x32B8 | size: 0x8C
.fn evt_dokuroiwa_command_check, local
/* 000032B8 0000337C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000032BC 00003380  7C 08 02 A6 */	mflr r0
/* 000032C0 00003384  90 01 00 14 */	stw r0, 0x14(r1)
/* 000032C4 00003388  38 00 00 07 */	li r0, 0x7
/* 000032C8 0000338C  81 03 00 18 */	lwz r8, 0x18(r3)
/* 000032CC 00003390  7C 09 03 A6 */	mtctr r0
.L_000032D0:
/* 000032D0 00003394  42 00 00 00 */	bdnz .L_000032D0
/* 000032D4 00003398  3C 80 00 00 */	lis r4, command_work@ha
/* 000032D8 0000339C  38 00 00 07 */	li r0, 0x7
/* 000032DC 000033A0  38 A4 00 00 */	addi r5, r4, command_work@l
/* 000032E0 000033A4  38 E0 00 00 */	li r7, 0x0
/* 000032E4 000033A8  3C 80 00 00 */	lis r4, command_seikai@ha
/* 000032E8 000033AC  80 C5 00 00 */	lwz r6, 0x0(r5)
/* 000032EC 000033B0  38 84 00 00 */	addi r4, r4, command_seikai@l
/* 000032F0 000033B4  38 A0 00 02 */	li r5, 0x2
/* 000032F4 000033B8  7C 09 03 A6 */	mtctr r0
.L_000032F8:
/* 000032F8 000033BC  7D 26 38 2E */	lwzx r9, r6, r7
/* 000032FC 000033C0  2C 09 00 00 */	cmpwi r9, 0x0
/* 00003300 000033C4  40 82 00 0C */	bne .L_0000330C
/* 00003304 000033C8  38 A0 00 00 */	li r5, 0x0
/* 00003308 000033CC  48 00 00 20 */	b .L_00003328
.L_0000330C:
/* 0000330C 000033D0  7C 04 38 2E */	lwzx r0, r4, r7
/* 00003310 000033D4  7C 09 00 00 */	cmpw r9, r0
/* 00003314 000033D8  41 82 00 0C */	beq .L_00003320
/* 00003318 000033DC  38 A0 00 01 */	li r5, 0x1
/* 0000331C 000033E0  48 00 00 0C */	b .L_00003328
.L_00003320:
/* 00003320 000033E4  38 E7 00 04 */	addi r7, r7, 0x4
/* 00003324 000033E8  42 00 FF D4 */	bdnz .L_000032F8
.L_00003328:
/* 00003328 000033EC  80 88 00 00 */	lwz r4, 0x0(r8)
/* 0000332C 000033F0  4B FF D6 7D */	bl evtSetValue
/* 00003330 000033F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 00003334 000033F8  38 60 00 02 */	li r3, 0x2
/* 00003338 000033FC  7C 08 03 A6 */	mtlr r0
/* 0000333C 00003400  38 21 00 10 */	addi r1, r1, 0x10
/* 00003340 00003404  4E 80 00 20 */	blr
.endfn evt_dokuroiwa_command_check

# .text:0x8C | 0x3344 | size: 0x64
.fn evt_dokuroiwa_command_set, local
/* 00003344 00003408  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 00003348 0000340C  7C 08 02 A6 */	mflr r0
/* 0000334C 00003410  90 01 00 24 */	stw r0, 0x24(r1)
/* 00003350 00003414  BF A1 00 14 */	stmw r29, 0x14(r1)
/* 00003354 00003418  7C 7D 1B 78 */	mr r29, r3
/* 00003358 0000341C  83 C3 00 18 */	lwz r30, 0x18(r3)
/* 0000335C 00003420  80 9E 00 00 */	lwz r4, 0x0(r30)
/* 00003360 00003424  4B FF D6 49 */	bl evtGetValue
/* 00003364 00003428  7C 7F 1B 78 */	mr r31, r3
/* 00003368 0000342C  2C 1F 00 07 */	cmpwi r31, 0x7
/* 0000336C 00003430  40 80 00 24 */	bge .L_00003390
/* 00003370 00003434  80 9E 00 04 */	lwz r4, 0x4(r30)
/* 00003374 00003438  7F A3 EB 78 */	mr r3, r29
/* 00003378 0000343C  4B FF D6 31 */	bl evtGetValue
/* 0000337C 00003440  3C 80 00 00 */	lis r4, command_work@ha
/* 00003380 00003444  57 E0 10 3A */	slwi r0, r31, 2
/* 00003384 00003448  38 84 00 00 */	addi r4, r4, command_work@l
/* 00003388 0000344C  80 84 00 00 */	lwz r4, 0x0(r4)
/* 0000338C 00003450  7C 64 01 2E */	stwx r3, r4, r0
.L_00003390:
/* 00003390 00003454  BB A1 00 14 */	lmw r29, 0x14(r1)
/* 00003394 00003458  38 60 00 02 */	li r3, 0x2
/* 00003398 0000345C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 0000339C 00003460  7C 08 03 A6 */	mtlr r0
/* 000033A0 00003464  38 21 00 20 */	addi r1, r1, 0x20
/* 000033A4 00003468  4E 80 00 20 */	blr
.endfn evt_dokuroiwa_command_set

# .text:0xF0 | 0x33A8 | size: 0x38
.fn evt_dokuroiwa_command_clear, local
/* 000033A8 0000346C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000033AC 00003470  7C 08 02 A6 */	mflr r0
/* 000033B0 00003474  3C 60 00 00 */	lis r3, command_work@ha
/* 000033B4 00003478  38 80 00 00 */	li r4, 0x0
/* 000033B8 0000347C  90 01 00 14 */	stw r0, 0x14(r1)
/* 000033BC 00003480  38 63 00 00 */	addi r3, r3, command_work@l
/* 000033C0 00003484  38 A0 00 1C */	li r5, 0x1c
/* 000033C4 00003488  80 63 00 00 */	lwz r3, 0x0(r3)
/* 000033C8 0000348C  4B FF D5 E1 */	bl memset
/* 000033CC 00003490  80 01 00 14 */	lwz r0, 0x14(r1)
/* 000033D0 00003494  38 60 00 02 */	li r3, 0x2
/* 000033D4 00003498  7C 08 03 A6 */	mtlr r0
/* 000033D8 0000349C  38 21 00 10 */	addi r1, r1, 0x10
/* 000033DC 000034A0  4E 80 00 20 */	blr
.endfn evt_dokuroiwa_command_clear

# .text:0x128 | 0x33E0 | size: 0x4C
.fn evt_dokuroiwa_command_init, local
/* 000033E0 000034A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 000033E4 000034A8  7C 08 02 A6 */	mflr r0
/* 000033E8 000034AC  3C 60 00 00 */	lis r3, mapalloc_base_ptr@ha
/* 000033EC 000034B0  38 80 00 1C */	li r4, 0x1c
/* 000033F0 000034B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 000033F4 000034B8  38 63 00 00 */	addi r3, r3, mapalloc_base_ptr@l
/* 000033F8 000034BC  80 63 00 00 */	lwz r3, 0x0(r3)
/* 000033FC 000034C0  4B FF D5 AD */	bl _mapAlloc
/* 00003400 000034C4  3C A0 00 00 */	lis r5, command_work@ha
/* 00003404 000034C8  38 80 00 00 */	li r4, 0x0
/* 00003408 000034CC  38 C5 00 00 */	addi r6, r5, command_work@l
/* 0000340C 000034D0  38 A0 00 1C */	li r5, 0x1c
/* 00003410 000034D4  90 66 00 00 */	stw r3, 0x0(r6)
/* 00003414 000034D8  4B FF D5 95 */	bl memset
/* 00003418 000034DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 0000341C 000034E0  38 60 00 02 */	li r3, 0x2
/* 00003420 000034E4  7C 08 03 A6 */	mtlr r0
/* 00003424 000034E8  38 21 00 10 */	addi r1, r1, 0x10
/* 00003428 000034EC  4E 80 00 20 */	blr
.endfn evt_dokuroiwa_command_init

# 0x00002A50..0x00003348 | size: 0x8F8
.rodata
.balign 8

# .rodata:0x0 | 0x2A50 | size: 0x3
.obj str_me_muj_00010700, local
	.string "me"
.endobj str_me_muj_00010700

# .rodata:0x3 | 0x2A53 | size: 0x1
.obj gap_03_00002A53_rodata, global
.hidden gap_03_00002A53_rodata
	.byte 0x00
.endobj gap_03_00002A53_rodata

# .rodata:0x4 | 0x2A54 | size: 0xB
.obj str_サンダース_muj_00010704, local
	.4byte 0x83548393
	.4byte 0x835F815B
	.byte 0x83, 0x58, 0x00
.endobj str_サンダース_muj_00010704

# .rodata:0xF | 0x2A5F | size: 0x1
.obj gap_03_00002A5F_rodata, global
.hidden gap_03_00002A5F_rodata
	.byte 0x00
.endobj gap_03_00002A5F_rodata

# .rodata:0x10 | 0x2A60 | size: 0x17
.obj str_SFX_STG5_THUNDERS_HI_muj_00010710, local
	.string "SFX_STG5_THUNDERS_HIT1"
.endobj str_SFX_STG5_THUNDERS_HI_muj_00010710

# .rodata:0x27 | 0x2A77 | size: 0x1
.obj gap_03_00002A77_rodata, global
.hidden gap_03_00002A77_rodata
	.byte 0x00
.endobj gap_03_00002A77_rodata

# .rodata:0x28 | 0x2A78 | size: 0xC
.obj str_stg5_muj_55_muj_00010728, local
	.string "stg5_muj_55"
.endobj str_stg5_muj_55_muj_00010728

# .rodata:0x34 | 0x2A84 | size: 0xC
.obj str_stg5_muj_56_muj_00010734, local
	.string "stg5_muj_56"
.endobj str_stg5_muj_56_muj_00010734

# .rodata:0x40 | 0x2A90 | size: 0xC
.obj str_stg5_muj_62_muj_00010740, local
	.string "stg5_muj_62"
.endobj str_stg5_muj_62_muj_00010740

# .rodata:0x4C | 0x2A9C | size: 0xC
.obj str_stg5_muj_63_muj_0001074c, local
	.string "stg5_muj_63"
.endobj str_stg5_muj_63_muj_0001074c

# .rodata:0x58 | 0x2AA8 | size: 0xC
.obj str_stg5_muj_69_muj_00010758, local
	.string "stg5_muj_69"
.endobj str_stg5_muj_69_muj_00010758

# .rodata:0x64 | 0x2AB4 | size: 0xE
.obj str_BGM_STG5_MUJ1_muj_00010764, local
	.string "BGM_STG5_MUJ1"
.endobj str_BGM_STG5_MUJ1_muj_00010764

# .rodata:0x72 | 0x2AC2 | size: 0x2
.obj gap_03_00002AC2_rodata, global
.hidden gap_03_00002AC2_rodata
	.2byte 0x0000
.endobj gap_03_00002AC2_rodata

# .rodata:0x74 | 0x2AC4 | size: 0x13
.obj str_サンダースへろへろ_muj_00010774, local
	.4byte 0x83548393
	.4byte 0x835F815B
	.4byte 0x835882D6
	.4byte 0x82EB82D6
	.byte 0x82, 0xEB, 0x00
.endobj str_サンダースへろへろ_muj_00010774

# .rodata:0x87 | 0x2AD7 | size: 0x1
.obj gap_03_00002AD7_rodata, global
.hidden gap_03_00002AD7_rodata
	.byte 0x00
.endobj gap_03_00002AD7_rodata

# .rodata:0x88 | 0x2AD8 | size: 0x11
.obj str_サンダースねむる_muj_00010788, local
	.4byte 0x83548393
	.4byte 0x835F815B
	.4byte 0x835882CB
	.4byte 0x82DE82E9
	.byte 0x00
.endobj str_サンダースねむる_muj_00010788

# .rodata:0x99 | 0x2AE9 | size: 0x3
.obj gap_03_00002AE9_rodata, global
.hidden gap_03_00002AE9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002AE9_rodata

# .rodata:0x9C | 0x2AEC | size: 0xC
.obj str_stg5_muj_45_muj_0001079c, local
	.string "stg5_muj_45"
.endobj str_stg5_muj_45_muj_0001079c

# .rodata:0xA8 | 0x2AF8 | size: 0xF
.obj str_BGM_EVT_ORGEL1_muj_000107a8, local
	.string "BGM_EVT_ORGEL1"
.endobj str_BGM_EVT_ORGEL1_muj_000107a8

# .rodata:0xB7 | 0x2B07 | size: 0x1
.obj gap_03_00002B07_rodata, global
.hidden gap_03_00002B07_rodata
	.byte 0x00
.endobj gap_03_00002B07_rodata

# .rodata:0xB8 | 0x2B08 | size: 0xC
.obj str_stg5_muj_46_muj_000107b8, local
	.string "stg5_muj_46"
.endobj str_stg5_muj_46_muj_000107b8

# .rodata:0xC4 | 0x2B14 | size: 0xF
.obj str_stg5_muj_34_03_muj_000107c4, local
	.string "stg5_muj_34_03"
.endobj str_stg5_muj_34_03_muj_000107c4

# .rodata:0xD3 | 0x2B23 | size: 0x1
.obj gap_03_00002B23_rodata, global
.hidden gap_03_00002B23_rodata
	.byte 0x00
.endobj gap_03_00002B23_rodata

# .rodata:0xD4 | 0x2B24 | size: 0xC
.obj str_stg5_muj_47_muj_000107d4, local
	.string "stg5_muj_47"
.endobj str_stg5_muj_47_muj_000107d4

# .rodata:0xE0 | 0x2B30 | size: 0x1A
.obj str_SFX_VOICE_MARIO_QUES_muj_000107e0, local
	.string "SFX_VOICE_MARIO_QUESTION1"
.endobj str_SFX_VOICE_MARIO_QUES_muj_000107e0

# .rodata:0xFA | 0x2B4A | size: 0x2
.obj gap_03_00002B4A_rodata, global
.hidden gap_03_00002B4A_rodata
	.2byte 0x0000
.endobj gap_03_00002B4A_rodata

# .rodata:0xFC | 0x2B4C | size: 0x1
.obj zero_muj_000107fc, local
	.byte 0x00
.endobj zero_muj_000107fc

# .rodata:0xFD | 0x2B4D | size: 0x3
.obj gap_03_00002B4D_rodata, global
.hidden gap_03_00002B4D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002B4D_rodata

# .rodata:0x100 | 0x2B50 | size: 0xC
.obj str_stg5_muj_48_muj_00010800, local
	.string "stg5_muj_48"
.endobj str_stg5_muj_48_muj_00010800

# .rodata:0x10C | 0x2B5C | size: 0x16
.obj str_SFX_VOICE_MARIO_FIND_muj_0001080c, local
	.string "SFX_VOICE_MARIO_FIND1"
.endobj str_SFX_VOICE_MARIO_FIND_muj_0001080c

# .rodata:0x122 | 0x2B72 | size: 0x2
.obj gap_03_00002B72_rodata, global
.hidden gap_03_00002B72_rodata
	.2byte 0x0000
.endobj gap_03_00002B72_rodata

# .rodata:0x124 | 0x2B74 | size: 0xC
.obj str_stg5_muj_49_muj_00010824, local
	.string "stg5_muj_49"
.endobj str_stg5_muj_49_muj_00010824

# .rodata:0x130 | 0x2B80 | size: 0x12
.obj str_stg5_muj_93_02_00_muj_00010830, local
	.string "stg5_muj_93_02_00"
.endobj str_stg5_muj_93_02_00_muj_00010830

# .rodata:0x142 | 0x2B92 | size: 0x2
.obj gap_03_00002B92_rodata, global
.hidden gap_03_00002B92_rodata
	.2byte 0x0000
.endobj gap_03_00002B92_rodata

# .rodata:0x144 | 0x2B94 | size: 0xF
.obj str_stg5_muj_93_02_muj_00010844, local
	.string "stg5_muj_93_02"
.endobj str_stg5_muj_93_02_muj_00010844

# .rodata:0x153 | 0x2BA3 | size: 0x1
.obj gap_03_00002BA3_rodata, global
.hidden gap_03_00002BA3_rodata
	.byte 0x00
.endobj gap_03_00002BA3_rodata

# .rodata:0x154 | 0x2BA4 | size: 0x7
.obj str_マルコ_muj_00010854, local
	.4byte 0x837D838B
	.byte 0x83, 0x52, 0x00
.endobj str_マルコ_muj_00010854

# .rodata:0x15B | 0x2BAB | size: 0x1
.obj gap_03_00002BAB_rodata, global
.hidden gap_03_00002BAB_rodata
	.byte 0x00
.endobj gap_03_00002BAB_rodata

# .rodata:0x15C | 0x2BAC | size: 0x6
.obj str_M_I_2_muj_0001085c, local
	.string "M_I_2"
.endobj str_M_I_2_muj_0001085c

# .rodata:0x162 | 0x2BB2 | size: 0x2
.obj gap_03_00002BB2_rodata, global
.hidden gap_03_00002BB2_rodata
	.2byte 0x0000
.endobj gap_03_00002BB2_rodata

# .rodata:0x164 | 0x2BB4 | size: 0xF
.obj str_stg5_muj_93_03_muj_00010864, local
	.string "stg5_muj_93_03"
.endobj str_stg5_muj_93_03_muj_00010864

# .rodata:0x173 | 0x2BC3 | size: 0x1
.obj gap_03_00002BC3_rodata, global
.hidden gap_03_00002BC3_rodata
	.byte 0x00
.endobj gap_03_00002BC3_rodata

# .rodata:0x174 | 0x2BC4 | size: 0x16
.obj str_stg5_muj_93_03_selec_muj_00010874, local
	.string "stg5_muj_93_03_select"
.endobj str_stg5_muj_93_03_selec_muj_00010874

# .rodata:0x18A | 0x2BDA | size: 0x2
.obj gap_03_00002BDA_rodata, global
.hidden gap_03_00002BDA_rodata
	.2byte 0x0000
.endobj gap_03_00002BDA_rodata

# .rodata:0x18C | 0x2BDC | size: 0x12
.obj str_stg5_muj_93_03_01_muj_0001088c, local
	.string "stg5_muj_93_03_01"
.endobj str_stg5_muj_93_03_01_muj_0001088c

# .rodata:0x19E | 0x2BEE | size: 0x2
.obj gap_03_00002BEE_rodata, global
.hidden gap_03_00002BEE_rodata
	.2byte 0x0000
.endobj gap_03_00002BEE_rodata

# .rodata:0x1A0 | 0x2BF0 | size: 0x12
.obj str_stg5_muj_93_03_02_muj_000108a0, local
	.string "stg5_muj_93_03_02"
.endobj str_stg5_muj_93_03_02_muj_000108a0

# .rodata:0x1B2 | 0x2C02 | size: 0x2
.obj gap_03_00002C02_rodata, global
.hidden gap_03_00002C02_rodata
	.2byte 0x0000
.endobj gap_03_00002C02_rodata

# .rodata:0x1B4 | 0x2C04 | size: 0x12
.obj str_stg5_muj_93_03_03_muj_000108b4, local
	.string "stg5_muj_93_03_03"
.endobj str_stg5_muj_93_03_03_muj_000108b4

# .rodata:0x1C6 | 0x2C16 | size: 0x2
.obj gap_03_00002C16_rodata, global
.hidden gap_03_00002C16_rodata
	.2byte 0x0000
.endobj gap_03_00002C16_rodata

# .rodata:0x1C8 | 0x2C18 | size: 0x6
.obj str_jewel_muj_000108c8, local
	.string "jewel"
.endobj str_jewel_muj_000108c8

# .rodata:0x1CE | 0x2C1E | size: 0x2
.obj gap_03_00002C1E_rodata, global
.hidden gap_03_00002C1E_rodata
	.2byte 0x0000
.endobj gap_03_00002C1E_rodata

# .rodata:0x1D0 | 0x2C20 | size: 0xF
.obj str_stg5_muj_93_05_muj_000108d0, local
	.string "stg5_muj_93_05"
.endobj str_stg5_muj_93_05_muj_000108d0

# .rodata:0x1DF | 0x2C2F | size: 0x1
.obj gap_03_00002C2F_rodata, global
.hidden gap_03_00002C2F_rodata
	.byte 0x00
.endobj gap_03_00002C2F_rodata

# .rodata:0x1E0 | 0x2C30 | size: 0xF
.obj str_stg5_muj_93_06_muj_000108e0, local
	.string "stg5_muj_93_06"
.endobj str_stg5_muj_93_06_muj_000108e0

# .rodata:0x1EF | 0x2C3F | size: 0x1
.obj gap_03_00002C3F_rodata, global
.hidden gap_03_00002C3F_rodata
	.byte 0x00
.endobj gap_03_00002C3F_rodata

# .rodata:0x1F0 | 0x2C40 | size: 0xF
.obj str_stg5_muj_93_07_muj_000108f0, local
	.string "stg5_muj_93_07"
.endobj str_stg5_muj_93_07_muj_000108f0

# .rodata:0x1FF | 0x2C4F | size: 0x1
.obj gap_03_00002C4F_rodata, global
.hidden gap_03_00002C4F_rodata
	.byte 0x00
.endobj gap_03_00002C4F_rodata

# .rodata:0x200 | 0x2C50 | size: 0xF
.obj str_stg5_muj_93_09_muj_00010900, local
	.string "stg5_muj_93_09"
.endobj str_stg5_muj_93_09_muj_00010900

# .rodata:0x20F | 0x2C5F | size: 0x1
.obj gap_03_00002C5F_rodata, global
.hidden gap_03_00002C5F_rodata
	.byte 0x00
.endobj gap_03_00002C5F_rodata

# .rodata:0x210 | 0x2C60 | size: 0xB
.obj str_エルモス１_muj_00010910, local
	.4byte 0x8347838B
	.4byte 0x83828358
	.byte 0x82, 0x50, 0x00
.endobj str_エルモス１_muj_00010910

# .rodata:0x21B | 0x2C6B | size: 0x1
.obj gap_03_00002C6B_rodata, global
.hidden gap_03_00002C6B_rodata
	.byte 0x00
.endobj gap_03_00002C6B_rodata

# .rodata:0x21C | 0x2C6C | size: 0xB
.obj str_A_ki_02_01_muj_0001091c, local
	.string "A_ki_02_01"
.endobj str_A_ki_02_01_muj_0001091c

# .rodata:0x227 | 0x2C77 | size: 0x1
.obj gap_03_00002C77_rodata, global
.hidden gap_03_00002C77_rodata
	.byte 0x00
.endobj gap_03_00002C77_rodata

# .rodata:0x228 | 0x2C78 | size: 0xB
.obj str_エルモス２_muj_00010928, local
	.4byte 0x8347838B
	.4byte 0x83828358
	.byte 0x82, 0x51, 0x00
.endobj str_エルモス２_muj_00010928

# .rodata:0x233 | 0x2C83 | size: 0x1
.obj gap_03_00002C83_rodata, global
.hidden gap_03_00002C83_rodata
	.byte 0x00
.endobj gap_03_00002C83_rodata

# .rodata:0x234 | 0x2C84 | size: 0x7
.obj str_w_bero_muj_00010934, local
	.string "w_bero"
.endobj str_w_bero_muj_00010934

# .rodata:0x23B | 0x2C8B | size: 0x1
.obj gap_03_00002C8B_rodata, global
.hidden gap_03_00002C8B_rodata
	.byte 0x00
.endobj gap_03_00002C8B_rodata

# .rodata:0x23C | 0x2C8C | size: 0x7
.obj str_muj_04_muj_0001093c, local
	.string "muj_04"
.endobj str_muj_04_muj_0001093c

# .rodata:0x243 | 0x2C93 | size: 0x1
.obj gap_03_00002C93_rodata, global
.hidden gap_03_00002C93_rodata
	.byte 0x00
.endobj gap_03_00002C93_rodata

# .rodata:0x244 | 0x2C94 | size: 0x7
.obj str_e_bero_muj_00010944, local
	.string "e_bero"
.endobj str_e_bero_muj_00010944

# .rodata:0x24B | 0x2C9B | size: 0x1
.obj gap_03_00002C9B_rodata, global
.hidden gap_03_00002C9B_rodata
	.byte 0x00
.endobj gap_03_00002C9B_rodata

# .rodata:0x24C | 0x2C9C | size: 0x7
.obj str_dou_00_muj_0001094c, local
	.string "dou_00"
.endobj str_dou_00_muj_0001094c

# .rodata:0x253 | 0x2CA3 | size: 0x1
.obj gap_03_00002CA3_rodata, global
.hidden gap_03_00002CA3_rodata
	.byte 0x00
.endobj gap_03_00002CA3_rodata

# .rodata:0x254 | 0x2CA4 | size: 0xB
.obj str_S_treeA_05_muj_00010954, local
	.string "S_treeA_05"
.endobj str_S_treeA_05_muj_00010954

# .rodata:0x25F | 0x2CAF | size: 0x1
.obj gap_03_00002CAF_rodata, global
.hidden gap_03_00002CAF_rodata
	.byte 0x00
.endobj gap_03_00002CAF_rodata

# .rodata:0x260 | 0x2CB0 | size: 0x19
.obj str_SFX_STG5_OBJ_TREE_SH_muj_00010960, local
	.string "SFX_STG5_OBJ_TREE_SHAKE1"
.endobj str_SFX_STG5_OBJ_TREE_SH_muj_00010960

# .rodata:0x279 | 0x2CC9 | size: 0x3
.obj gap_03_00002CC9_rodata, global
.hidden gap_03_00002CC9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002CC9_rodata

# .rodata:0x27C | 0x2CCC | size: 0x19
.obj str_SFX_STG5_OBJ_LEAF_SH_muj_0001097c, local
	.string "SFX_STG5_OBJ_LEAF_SHAKE1"
.endobj str_SFX_STG5_OBJ_LEAF_SH_muj_0001097c

# .rodata:0x295 | 0x2CE5 | size: 0x3
.obj gap_03_00002CE5_rodata, global
.hidden gap_03_00002CE5_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002CE5_rodata

# .rodata:0x298 | 0x2CE8 | size: 0x5
.obj str_S_ki_muj_00010998, local
	.string "S_ki"
.endobj str_S_ki_muj_00010998

# .rodata:0x29D | 0x2CED | size: 0x3
.obj gap_03_00002CED_rodata, global
.hidden gap_03_00002CED_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002CED_rodata

# .rodata:0x2A0 | 0x2CF0 | size: 0xF
.obj str_stg5_muj_33_01_muj_000109a0, local
	.string "stg5_muj_33_01"
.endobj str_stg5_muj_33_01_muj_000109a0

# .rodata:0x2AF | 0x2CFF | size: 0x1
.obj gap_03_00002CFF_rodata, global
.hidden gap_03_00002CFF_rodata
	.byte 0x00
.endobj gap_03_00002CFF_rodata

# .rodata:0x2B0 | 0x2D00 | size: 0xB
.obj str_A_ki_02_02_muj_000109b0, local
	.string "A_ki_02_02"
.endobj str_A_ki_02_02_muj_000109b0

# .rodata:0x2BB | 0x2D0B | size: 0x1
.obj gap_03_00002D0B_rodata, global
.hidden gap_03_00002D0B_rodata
	.byte 0x00
.endobj gap_03_00002D0B_rodata

# .rodata:0x2BC | 0x2D0C | size: 0x18
.obj str_SFX_STG5_THUNDERS_FA_muj_000109bc, local
	.string "SFX_STG5_THUNDERS_FALL1"
.endobj str_SFX_STG5_THUNDERS_FA_muj_000109bc

# .rodata:0x2D4 | 0x2D24 | size: 0x18
.obj str_SFX_STG5_THUNDERS_DO_muj_000109d4, local
	.string "SFX_STG5_THUNDERS_DOWN1"
.endobj str_SFX_STG5_THUNDERS_DO_muj_000109d4

# .rodata:0x2EC | 0x2D3C | size: 0x4
.obj str_F_1_muj_000109ec, local
	.string "F_1"
.endobj str_F_1_muj_000109ec

# .rodata:0x2F0 | 0x2D40 | size: 0x4
.obj str_S_1_muj_000109f0, local
	.string "S_1"
.endobj str_S_1_muj_000109f0

# .rodata:0x2F4 | 0x2D44 | size: 0xC
.obj str_stg5_muj_34_muj_000109f4, local
	.string "stg5_muj_34"
.endobj str_stg5_muj_34_muj_000109f4

# .rodata:0x300 | 0x2D50 | size: 0xF
.obj str_stg5_muj_34_01_muj_00010a00, local
	.string "stg5_muj_34_01"
.endobj str_stg5_muj_34_01_muj_00010a00

# .rodata:0x30F | 0x2D5F | size: 0x1
.obj gap_03_00002D5F_rodata, global
.hidden gap_03_00002D5F_rodata
	.byte 0x00
.endobj gap_03_00002D5F_rodata

# .rodata:0x310 | 0x2D60 | size: 0x7
.obj str_M_N_5B_muj_00010a10, local
	.string "M_N_5B"
.endobj str_M_N_5B_muj_00010a10

# .rodata:0x317 | 0x2D67 | size: 0x1
.obj gap_03_00002D67_rodata, global
.hidden gap_03_00002D67_rodata
	.byte 0x00
.endobj gap_03_00002D67_rodata

# .rodata:0x318 | 0x2D68 | size: 0xF
.obj str_stg5_muj_34_02_muj_00010a18, local
	.string "stg5_muj_34_02"
.endobj str_stg5_muj_34_02_muj_00010a18

# .rodata:0x327 | 0x2D77 | size: 0x1
.obj gap_03_00002D77_rodata, global
.hidden gap_03_00002D77_rodata
	.byte 0x00
.endobj gap_03_00002D77_rodata

# .rodata:0x328 | 0x2D78 | size: 0xF
.obj str_stg5_muj_93_00_muj_00010a28, local
	.string "stg5_muj_93_00"
.endobj str_stg5_muj_93_00_muj_00010a28

# .rodata:0x337 | 0x2D87 | size: 0x1
.obj gap_03_00002D87_rodata, global
.hidden gap_03_00002D87_rodata
	.byte 0x00
.endobj gap_03_00002D87_rodata

# .rodata:0x338 | 0x2D88 | size: 0x9
.obj str_extparty_muj_00010a38, local
	.string "extparty"
.endobj str_extparty_muj_00010a38

# .rodata:0x341 | 0x2D91 | size: 0x3
.obj gap_03_00002D91_rodata, global
.hidden gap_03_00002D91_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002D91_rodata

# .rodata:0x344 | 0x2D94 | size: 0x10
.obj str_S_hige_iwa03_me_muj_00010a44, local
	.string "S_hige_iwa03_me"
.endobj str_S_hige_iwa03_me_muj_00010a44

# .rodata:0x354 | 0x2DA4 | size: 0x19
.obj str_SFX_STG5_ROCK_EYE_SH_muj_00010a54, local
	.string "SFX_STG5_ROCK_EYE_SHINE1"
.endobj str_SFX_STG5_ROCK_EYE_SH_muj_00010a54

# .rodata:0x36D | 0x2DBD | size: 0x3
.obj gap_03_00002DBD_rodata, global
.hidden gap_03_00002DBD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002DBD_rodata

# .rodata:0x370 | 0x2DC0 | size: 0xB
.obj str_toge_flush_muj_00010a70, local
	.string "toge_flush"
.endobj str_toge_flush_muj_00010a70

# .rodata:0x37B | 0x2DCB | size: 0x1
.obj gap_03_00002DCB_rodata, global
.hidden gap_03_00002DCB_rodata
	.byte 0x00
.endobj gap_03_00002DCB_rodata

# .rodata:0x37C | 0x2DCC | size: 0x10
.obj str_S_hige_iwa02_me_muj_00010a7c, local
	.string "S_hige_iwa02_me"
.endobj str_S_hige_iwa02_me_muj_00010a7c

# .rodata:0x38C | 0x2DDC | size: 0xC
.obj str_S_dkr_iwa02_muj_00010a8c, local
	.string "S_dkr_iwa02"
.endobj str_S_dkr_iwa02_muj_00010a8c

# .rodata:0x398 | 0x2DE8 | size: 0x13
.obj str_hagetaka_flush_n64_muj_00010a98, local
	.string "hagetaka_flush_n64"
.endobj str_hagetaka_flush_n64_muj_00010a98

# .rodata:0x3AB | 0x2DFB | size: 0x1
.obj gap_03_00002DFB_rodata, global
.hidden gap_03_00002DFB_rodata
	.byte 0x00
.endobj gap_03_00002DFB_rodata

# .rodata:0x3AC | 0x2DFC | size: 0xF
.obj str_stg5_muj_93_01_muj_00010aac, local
	.string "stg5_muj_93_01"
.endobj str_stg5_muj_93_01_muj_00010aac

# .rodata:0x3BB | 0x2E0B | size: 0x1
.obj gap_03_00002E0B_rodata, global
.hidden gap_03_00002E0B_rodata
	.byte 0x00
.endobj gap_03_00002E0B_rodata

# .rodata:0x3BC | 0x2E0C | size: 0x12
.obj str_stg5_muj_93_01_01_muj_00010abc, local
	.string "stg5_muj_93_01_01"
.endobj str_stg5_muj_93_01_01_muj_00010abc

# .rodata:0x3CE | 0x2E1E | size: 0x2
.obj gap_03_00002E1E_rodata, global
.hidden gap_03_00002E1E_rodata
	.2byte 0x0000
.endobj gap_03_00002E1E_rodata

# .rodata:0x3D0 | 0x2E20 | size: 0x6
.obj str_S_jel_muj_00010ad0, local
	.string "S_jel"
.endobj str_S_jel_muj_00010ad0

# .rodata:0x3D6 | 0x2E26 | size: 0x2
.obj gap_03_00002E26_rodata, global
.hidden gap_03_00002E26_rodata
	.2byte 0x0000
.endobj gap_03_00002E26_rodata

# .rodata:0x3D8 | 0x2E28 | size: 0x14
.obj str_SFX_STG5_JUWEL_SET1_muj_00010ad8, local
	.string "SFX_STG5_JUWEL_SET1"
.endobj str_SFX_STG5_JUWEL_SET1_muj_00010ad8

# .rodata:0x3EC | 0x2E3C | size: 0x8
.obj str_A_iwa01_muj_00010aec, local
	.string "A_iwa01"
.endobj str_A_iwa01_muj_00010aec

# .rodata:0x3F4 | 0x2E44 | size: 0xC
.obj str_A_iwa_atari_muj_00010af4, local
	.string "A_iwa_atari"
.endobj str_A_iwa_atari_muj_00010af4

# .rodata:0x400 | 0x2E50 | size: 0xA
.obj str_エルモスA_muj_00010b00, local
	.4byte 0x8347838B
	.4byte 0x83828358
	.2byte 0x4100
.endobj str_エルモスA_muj_00010b00

# .rodata:0x40A | 0x2E5A | size: 0x2
.obj gap_03_00002E5A_rodata, global
.hidden gap_03_00002E5A_rodata
	.2byte 0x0000
.endobj gap_03_00002E5A_rodata

# .rodata:0x40C | 0x2E5C | size: 0xA
.obj str_エルモスB_muj_00010b0c, local
	.4byte 0x8347838B
	.4byte 0x83828358
	.2byte 0x4200
.endobj str_エルモスB_muj_00010b0c

# .rodata:0x416 | 0x2E66 | size: 0x2
.obj gap_03_00002E66_rodata, global
.hidden gap_03_00002E66_rodata
	.2byte 0x0000
.endobj gap_03_00002E66_rodata

# .rodata:0x418 | 0x2E68 | size: 0xA
.obj str_エルモスC_muj_00010b18, local
	.4byte 0x8347838B
	.4byte 0x83828358
	.2byte 0x4300
.endobj str_エルモスC_muj_00010b18

# .rodata:0x422 | 0x2E72 | size: 0x2
.obj gap_03_00002E72_rodata, global
.hidden gap_03_00002E72_rodata
	.2byte 0x0000
.endobj gap_03_00002E72_rodata

# .rodata:0x424 | 0x2E74 | size: 0xA
.obj str_S_dkr_iwa_muj_00010b24, local
	.string "S_dkr_iwa"
.endobj str_S_dkr_iwa_muj_00010b24

# .rodata:0x42E | 0x2E7E | size: 0x2
.obj gap_03_00002E7E_rodata, global
.hidden gap_03_00002E7E_rodata
	.2byte 0x0000
.endobj gap_03_00002E7E_rodata

# .rodata:0x430 | 0x2E80 | size: 0x10
.obj str_SFX_STG5_QUAKE1_muj_00010b30, local
	.string "SFX_STG5_QUAKE1"
.endobj str_SFX_STG5_QUAKE1_muj_00010b30

# .rodata:0x440 | 0x2E90 | size: 0xD
.obj str_S_dokuro_iwa_muj_00010b40, local
	.string "S_dokuro_iwa"
.endobj str_S_dokuro_iwa_muj_00010b40

# .rodata:0x44D | 0x2E9D | size: 0x3
.obj gap_03_00002E9D_rodata, global
.hidden gap_03_00002E9D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002E9D_rodata

# .rodata:0x450 | 0x2EA0 | size: 0x1A
.obj str_SFX_STG5_OBJ_ROCK_WI_muj_00010b50, local
	.string "SFX_STG5_OBJ_ROCK_WINDOW1"
.endobj str_SFX_STG5_OBJ_ROCK_WI_muj_00010b50

# .rodata:0x46A | 0x2EBA | size: 0x2
.obj gap_03_00002EBA_rodata, global
.hidden gap_03_00002EBA_rodata
	.2byte 0x0000
.endobj gap_03_00002EBA_rodata

# .rodata:0x46C | 0x2EBC | size: 0xA
.obj str_S_dkr_iwa_muj_00010b6c, local
	.string "S-dkr_iwa"
.endobj str_S_dkr_iwa_muj_00010b6c

# .rodata:0x476 | 0x2EC6 | size: 0x2
.obj gap_03_00002EC6_rodata, global
.hidden gap_03_00002EC6_rodata
	.2byte 0x0000
.endobj gap_03_00002EC6_rodata

# .rodata:0x478 | 0x2EC8 | size: 0xF
.obj str_A_dkr_iwa_futa_muj_00010b78, local
	.string "A_dkr_iwa_futa"
.endobj str_A_dkr_iwa_futa_muj_00010b78

# .rodata:0x487 | 0x2ED7 | size: 0x1
.obj gap_03_00002ED7_rodata, global
.hidden gap_03_00002ED7_rodata
	.byte 0x00
.endobj gap_03_00002ED7_rodata

# .rodata:0x488 | 0x2ED8 | size: 0x11
.obj str_A_dkr_iwa_futa02_muj_00010b88, local
	.string "A_dkr_iwa_futa02"
.endobj str_A_dkr_iwa_futa02_muj_00010b88

# .rodata:0x499 | 0x2EE9 | size: 0x3
.obj gap_03_00002EE9_rodata, global
.hidden gap_03_00002EE9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002EE9_rodata

# .rodata:0x49C | 0x2EEC | size: 0x1B
.obj str_SFX_STG5_OBJ_BIG_ROC_muj_00010b9c, local
	.string "SFX_STG5_OBJ_BIG_ROCK_HIT1"
.endobj str_SFX_STG5_OBJ_BIG_ROC_muj_00010b9c

# .rodata:0x4B7 | 0x2F07 | size: 0x1
.obj gap_03_00002F07_rodata, global
.hidden gap_03_00002F07_rodata
	.byte 0x00
.endobj gap_03_00002F07_rodata

# .rodata:0x4B8 | 0x2F08 | size: 0x1C
.obj str_SFX_STG5_OBJ_BIG_ROC_muj_00010bb8, local
	.string "SFX_STG5_OBJ_BIG_ROCK_JUMP1"
.endobj str_SFX_STG5_OBJ_BIG_ROC_muj_00010bb8

# .rodata:0x4D4 | 0x2F24 | size: 0x1D
.obj str_SFX_STG5_OBJ_SMALL_R_muj_00010bd4, local
	.string "SFX_STG5_OBJ_SMALL_ROCK_HIT1"
.endobj str_SFX_STG5_OBJ_SMALL_R_muj_00010bd4

# .rodata:0x4F1 | 0x2F41 | size: 0x3
.obj gap_03_00002F41_rodata, global
.hidden gap_03_00002F41_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002F41_rodata

# .rodata:0x4F4 | 0x2F44 | size: 0x1E
.obj str_SFX_STG5_OBJ_SMALL_R_muj_00010bf4, local
	.string "SFX_STG5_OBJ_SMALL_ROCK_JUMP1"
.endobj str_SFX_STG5_OBJ_SMALL_R_muj_00010bf4

# .rodata:0x512 | 0x2F62 | size: 0x2
.obj gap_03_00002F62_rodata, global
.hidden gap_03_00002F62_rodata
	.2byte 0x0000
.endobj gap_03_00002F62_rodata

# .rodata:0x514 | 0x2F64 | size: 0x14
.obj str_SFX_OFF_WALL_BREAK1_muj_00010c14, local
	.string "SFX_OFF_WALL_BREAK1"
.endobj str_SFX_OFF_WALL_BREAK1_muj_00010c14

# .rodata:0x528 | 0x2F78 | size: 0xC
.obj str_capture_img_muj_00010c28, local
	.string "capture_img"
.endobj str_capture_img_muj_00010c28

# .rodata:0x534 | 0x2F84 | size: 0xF
.obj str_OFF_d_bom_ver2_muj_00010c34, local
	.string "OFF_d_bom_ver2"
.endobj str_OFF_d_bom_ver2_muj_00010c34

# .rodata:0x543 | 0x2F93 | size: 0x1
.obj gap_03_00002F93_rodata, global
.hidden gap_03_00002F93_rodata
	.byte 0x00
.endobj gap_03_00002F93_rodata

# .rodata:0x544 | 0x2F94 | size: 0xA
.obj str_offscreen_muj_00010c44, local
	.string "offscreen"
.endobj str_offscreen_muj_00010c44

# .rodata:0x54E | 0x2F9E | size: 0x2
.obj gap_03_00002F9E_rodata, global
.hidden gap_03_00002F9E_rodata
	.2byte 0x0000
.endobj gap_03_00002F9E_rodata

# .rodata:0x550 | 0x2FA0 | size: 0x4
.obj str_A_1_muj_00010c50, local
	.string "A_1"
.endobj str_A_1_muj_00010c50

# .rodata:0x554 | 0x2FA4 | size: 0xD
.obj str_A_dokuro_iwa_muj_00010c54, local
	.string "A_dokuro_iwa"
.endobj str_A_dokuro_iwa_muj_00010c54

# .rodata:0x561 | 0x2FB1 | size: 0x3
.obj gap_03_00002FB1_rodata, global
.hidden gap_03_00002FB1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002FB1_rodata

# .rodata:0x564 | 0x2FB4 | size: 0x19
.obj str_SFX_STG5_OBJ_ROCK_BR_muj_00010c64, local
	.string "SFX_STG5_OBJ_ROCK_BREAK1"
.endobj str_SFX_STG5_OBJ_ROCK_BR_muj_00010c64

# .rodata:0x57D | 0x2FCD | size: 0x3
.obj gap_03_00002FCD_rodata, global
.hidden gap_03_00002FCD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002FCD_rodata

# .rodata:0x580 | 0x2FD0 | size: 0x14
.obj str_BGM_FF_ENV_SUCCESS1_muj_00010c80, local
	.string "BGM_FF_ENV_SUCCESS1"
.endobj str_BGM_FF_ENV_SUCCESS1_muj_00010c80

# .rodata:0x594 | 0x2FE4 | size: 0xF
.obj str_stg5_muj_93_08_muj_00010c94, local
	.string "stg5_muj_93_08"
.endobj str_stg5_muj_93_08_muj_00010c94

# .rodata:0x5A3 | 0x2FF3 | size: 0x1
.obj gap_03_00002FF3_rodata, global
.hidden gap_03_00002FF3_rodata
	.byte 0x00
.endobj gap_03_00002FF3_rodata

# .rodata:0x5A4 | 0x2FF4 | size: 0x8
.obj str_jewel00_muj_00010ca4, local
	.string "jewel00"
.endobj str_jewel00_muj_00010ca4

# .rodata:0x5AC | 0x2FFC | size: 0x15
.obj str_SFX_STG5_JUWEL_FALL1_muj_00010cac, local
	.string "SFX_STG5_JUWEL_FALL1"
.endobj str_SFX_STG5_JUWEL_FALL1_muj_00010cac

# .rodata:0x5C1 | 0x3011 | size: 0x3
.obj gap_03_00003011_rodata, global
.hidden gap_03_00003011_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003011_rodata

# .rodata:0x5C4 | 0x3014 | size: 0x18
.obj str_SFX_STG5_JUWEL_LANDI_muj_00010cc4, local
	.string "SFX_STG5_JUWEL_LANDING1"
.endobj str_SFX_STG5_JUWEL_LANDI_muj_00010cc4

# .rodata:0x5DC | 0x302C | size: 0x12
.obj str_stg5_muj_93_08_01_muj_00010cdc, local
	.string "stg5_muj_93_08_01"
.endobj str_stg5_muj_93_08_01_muj_00010cdc

# .rodata:0x5EE | 0x303E | size: 0x2
.obj gap_03_0000303E_rodata, global
.hidden gap_03_0000303E_rodata
	.2byte 0x0000
.endobj gap_03_0000303E_rodata

# .rodata:0x5F0 | 0x3040 | size: 0x12
.obj str_stg5_muj_93_08_02_muj_00010cf0, local
	.string "stg5_muj_93_08_02"
.endobj str_stg5_muj_93_08_02_muj_00010cf0

# .rodata:0x602 | 0x3052 | size: 0x2
.obj gap_03_00003052_rodata, global
.hidden gap_03_00003052_rodata
	.2byte 0x0000
.endobj gap_03_00003052_rodata

# .rodata:0x604 | 0x3054 | size: 0xD
.obj str_A_dkr_iwa_01_muj_00010d04, local
	.string "A_dkr_iwa_01"
.endobj str_A_dkr_iwa_01_muj_00010d04

# .rodata:0x611 | 0x3061 | size: 0x3
.obj gap_03_00003061_rodata, global
.hidden gap_03_00003061_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003061_rodata

# .rodata:0x614 | 0x3064 | size: 0x14
.obj str_A_dkr_iwa_02_oku_01_muj_00010d14, local
	.string "A_dkr_iwa_02_oku_01"
.endobj str_A_dkr_iwa_02_oku_01_muj_00010d14

# .rodata:0x628 | 0x3078 | size: 0x10
.obj str_BGM_EVT_DANGER4_muj_00010d28, local
	.string "BGM_EVT_DANGER4"
.endobj str_BGM_EVT_DANGER4_muj_00010d28

# .rodata:0x638 | 0x3088 | size: 0xC
.obj str_stg5_muj_33_muj_00010d38, local
	.string "stg5_muj_33"
.endobj str_stg5_muj_33_muj_00010d38

# .rodata:0x644 | 0x3094 | size: 0xF
.obj str_treeA_05_ha_01_muj_00010d44, local
	.string "treeA_05_ha_01"
.endobj str_treeA_05_ha_01_muj_00010d44

# .rodata:0x653 | 0x30A3 | size: 0x1
.obj gap_03_000030A3_rodata, global
.hidden gap_03_000030A3_rodata
	.byte 0x00
.endobj gap_03_000030A3_rodata

# .rodata:0x654 | 0x30A4 | size: 0xF
.obj str_treeA_05_ha_05_muj_00010d54, local
	.string "treeA_05_ha_05"
.endobj str_treeA_05_ha_05_muj_00010d54

# .rodata:0x663 | 0x30B3 | size: 0x1
.obj gap_03_000030B3_rodata, global
.hidden gap_03_000030B3_rodata
	.byte 0x00
.endobj gap_03_000030B3_rodata

# .rodata:0x664 | 0x30B4 | size: 0xF
.obj str_treeA_05_ha_03_muj_00010d64, local
	.string "treeA_05_ha_03"
.endobj str_treeA_05_ha_03_muj_00010d64

# .rodata:0x673 | 0x30C3 | size: 0x1
.obj gap_03_000030C3_rodata, global
.hidden gap_03_000030C3_rodata
	.byte 0x00
.endobj gap_03_000030C3_rodata

# .rodata:0x674 | 0x30C4 | size: 0xF
.obj str_treeA_05_ha_04_muj_00010d74, local
	.string "treeA_05_ha_04"
.endobj str_treeA_05_ha_04_muj_00010d74

# .rodata:0x683 | 0x30D3 | size: 0x1
.obj gap_03_000030D3_rodata, global
.hidden gap_03_000030D3_rodata
	.byte 0x00
.endobj gap_03_000030D3_rodata

# .rodata:0x684 | 0x30D4 | size: 0xF
.obj str_treeA_05_ha_07_muj_00010d84, local
	.string "treeA_05_ha_07"
.endobj str_treeA_05_ha_07_muj_00010d84

# .rodata:0x693 | 0x30E3 | size: 0x1
.obj gap_03_000030E3_rodata, global
.hidden gap_03_000030E3_rodata
	.byte 0x00
.endobj gap_03_000030E3_rodata

# .rodata:0x694 | 0x30E4 | size: 0xF
.obj str_treeA_05_ha_02_muj_00010d94, local
	.string "treeA_05_ha_02"
.endobj str_treeA_05_ha_02_muj_00010d94

# .rodata:0x6A3 | 0x30F3 | size: 0x1
.obj gap_03_000030F3_rodata, global
.hidden gap_03_000030F3_rodata
	.byte 0x00
.endobj gap_03_000030F3_rodata

# .rodata:0x6A4 | 0x30F4 | size: 0xF
.obj str_treeA_05_ha_06_muj_00010da4, local
	.string "treeA_05_ha_06"
.endobj str_treeA_05_ha_06_muj_00010da4

# .rodata:0x6B3 | 0x3103 | size: 0x1
.obj gap_03_00003103_rodata, global
.hidden gap_03_00003103_rodata
	.byte 0x00
.endobj gap_03_00003103_rodata

# .rodata:0x6B4 | 0x3104 | size: 0x19
.obj str_SFX_STG5_OBJ_TREE_SH_muj_00010db4, local
	.string "SFX_STG5_OBJ_TREE_SHAKE2"
.endobj str_SFX_STG5_OBJ_TREE_SH_muj_00010db4

# .rodata:0x6CD | 0x311D | size: 0x3
.obj gap_03_0000311D_rodata, global
.hidden gap_03_0000311D_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_0000311D_rodata

# .rodata:0x6D0 | 0x3120 | size: 0xC
.obj str_item_kusa_1_muj_00010dd0, local
	.string "item_kusa_1"
.endobj str_item_kusa_1_muj_00010dd0

# .rodata:0x6DC | 0x312C | size: 0xB
.obj str_A_treeA_01_muj_00010ddc, local
	.string "A_treeA_01"
.endobj str_A_treeA_01_muj_00010ddc

# .rodata:0x6E7 | 0x3137 | size: 0x1
.obj gap_03_00003137_rodata, global
.hidden gap_03_00003137_rodata
	.byte 0x00
.endobj gap_03_00003137_rodata

# .rodata:0x6E8 | 0x3138 | size: 0xB
.obj str_treeA_01_m_muj_00010de8, local
	.string "treeA_01_m"
.endobj str_treeA_01_m_muj_00010de8

# .rodata:0x6F3 | 0x3143 | size: 0x1
.obj gap_03_00003143_rodata, global
.hidden gap_03_00003143_rodata
	.byte 0x00
.endobj gap_03_00003143_rodata

# .rodata:0x6F4 | 0x3144 | size: 0xC
.obj str_treeA_01_ha_muj_00010df4, local
	.string "treeA_01_ha"
.endobj str_treeA_01_ha_muj_00010df4

# .rodata:0x700 | 0x3150 | size: 0xB
.obj str_A_treeA_02_muj_00010e00, local
	.string "A_treeA_02"
.endobj str_A_treeA_02_muj_00010e00

# .rodata:0x70B | 0x315B | size: 0x1
.obj gap_03_0000315B_rodata, global
.hidden gap_03_0000315B_rodata
	.byte 0x00
.endobj gap_03_0000315B_rodata

# .rodata:0x70C | 0x315C | size: 0xB
.obj str_treeA_02_m_muj_00010e0c, local
	.string "treeA_02_m"
.endobj str_treeA_02_m_muj_00010e0c

# .rodata:0x717 | 0x3167 | size: 0x1
.obj gap_03_00003167_rodata, global
.hidden gap_03_00003167_rodata
	.byte 0x00
.endobj gap_03_00003167_rodata

# .rodata:0x718 | 0x3168 | size: 0xC
.obj str_treeA_02_ha_muj_00010e18, local
	.string "treeA_02_ha"
.endobj str_treeA_02_ha_muj_00010e18

# .rodata:0x724 | 0x3174 | size: 0xB
.obj str_A_treeA_03_muj_00010e24, local
	.string "A_treeA_03"
.endobj str_A_treeA_03_muj_00010e24

# .rodata:0x72F | 0x317F | size: 0x1
.obj gap_03_0000317F_rodata, global
.hidden gap_03_0000317F_rodata
	.byte 0x00
.endobj gap_03_0000317F_rodata

# .rodata:0x730 | 0x3180 | size: 0xB
.obj str_treeA_03_m_muj_00010e30, local
	.string "treeA_03_m"
.endobj str_treeA_03_m_muj_00010e30

# .rodata:0x73B | 0x318B | size: 0x1
.obj gap_03_0000318B_rodata, global
.hidden gap_03_0000318B_rodata
	.byte 0x00
.endobj gap_03_0000318B_rodata

# .rodata:0x73C | 0x318C | size: 0xC
.obj str_treeA_03_ha_muj_00010e3c, local
	.string "treeA_03_ha"
.endobj str_treeA_03_ha_muj_00010e3c

# .rodata:0x748 | 0x3198 | size: 0xB
.obj str_A_treeA_04_muj_00010e48, local
	.string "A_treeA_04"
.endobj str_A_treeA_04_muj_00010e48

# .rodata:0x753 | 0x31A3 | size: 0x1
.obj gap_03_000031A3_rodata, global
.hidden gap_03_000031A3_rodata
	.byte 0x00
.endobj gap_03_000031A3_rodata

# .rodata:0x754 | 0x31A4 | size: 0xB
.obj str_treeA_04_m_muj_00010e54, local
	.string "treeA_04_m"
.endobj str_treeA_04_m_muj_00010e54

# .rodata:0x75F | 0x31AF | size: 0x1
.obj gap_03_000031AF_rodata, global
.hidden gap_03_000031AF_rodata
	.byte 0x00
.endobj gap_03_000031AF_rodata

# .rodata:0x760 | 0x31B0 | size: 0xC
.obj str_treeA_04_ha_muj_00010e60, local
	.string "treeA_04_ha"
.endobj str_treeA_04_ha_muj_00010e60

# .rodata:0x76C | 0x31BC | size: 0xB
.obj str_A_treeB_03_muj_00010e6c, local
	.string "A_treeB_03"
.endobj str_A_treeB_03_muj_00010e6c

# .rodata:0x777 | 0x31C7 | size: 0x1
.obj gap_03_000031C7_rodata, global
.hidden gap_03_000031C7_rodata
	.byte 0x00
.endobj gap_03_000031C7_rodata

# .rodata:0x778 | 0x31C8 | size: 0xB
.obj str_treeB_03_m_muj_00010e78, local
	.string "treeB_03_m"
.endobj str_treeB_03_m_muj_00010e78

# .rodata:0x783 | 0x31D3 | size: 0x1
.obj gap_03_000031D3_rodata, global
.hidden gap_03_000031D3_rodata
	.byte 0x00
.endobj gap_03_000031D3_rodata

# .rodata:0x784 | 0x31D4 | size: 0xC
.obj str_treeB_03_ha_muj_00010e84, local
	.string "treeB_03_ha"
.endobj str_treeB_03_ha_muj_00010e84

# .rodata:0x790 | 0x31E0 | size: 0xF
.obj str_A_kuwa_move_01_muj_00010e90, local
	.string "A_kuwa_move_01"
.endobj str_A_kuwa_move_01_muj_00010e90

# .rodata:0x79F | 0x31EF | size: 0x1
.obj gap_03_000031EF_rodata, global
.hidden gap_03_000031EF_rodata
	.byte 0x00
.endobj gap_03_000031EF_rodata

# .rodata:0x7A0 | 0x31F0 | size: 0xF
.obj str_S_kuwa_move_01_muj_00010ea0, local
	.string "S_kuwa_move_01"
.endobj str_S_kuwa_move_01_muj_00010ea0

# .rodata:0x7AF | 0x31FF | size: 0x1
.obj gap_03_000031FF_rodata, global
.hidden gap_03_000031FF_rodata
	.byte 0x00
.endobj gap_03_000031FF_rodata

# .rodata:0x7B0 | 0x3200 | size: 0xF
.obj str_A_kuwa_move_02_muj_00010eb0, local
	.string "A_kuwa_move_02"
.endobj str_A_kuwa_move_02_muj_00010eb0

# .rodata:0x7BF | 0x320F | size: 0x1
.obj gap_03_0000320F_rodata, global
.hidden gap_03_0000320F_rodata
	.byte 0x00
.endobj gap_03_0000320F_rodata

# .rodata:0x7C0 | 0x3210 | size: 0xF
.obj str_S_kuwa_move_02_muj_00010ec0, local
	.string "S_kuwa_move_02"
.endobj str_S_kuwa_move_02_muj_00010ec0

# .rodata:0x7CF | 0x321F | size: 0x1
.obj gap_03_0000321F_rodata, global
.hidden gap_03_0000321F_rodata
	.byte 0x00
.endobj gap_03_0000321F_rodata

# .rodata:0x7D0 | 0x3220 | size: 0xF
.obj str_A_kuwa_move_03_muj_00010ed0, local
	.string "A_kuwa_move_03"
.endobj str_A_kuwa_move_03_muj_00010ed0

# .rodata:0x7DF | 0x322F | size: 0x1
.obj gap_03_0000322F_rodata, global
.hidden gap_03_0000322F_rodata
	.byte 0x00
.endobj gap_03_0000322F_rodata

# .rodata:0x7E0 | 0x3230 | size: 0xF
.obj str_S_kuwa_move_03_muj_00010ee0, local
	.string "S_kuwa_move_03"
.endobj str_S_kuwa_move_03_muj_00010ee0

# .rodata:0x7EF | 0x323F | size: 0x1
.obj gap_03_0000323F_rodata, global
.hidden gap_03_0000323F_rodata
	.byte 0x00
.endobj gap_03_0000323F_rodata

# .rodata:0x7F0 | 0x3240 | size: 0xF
.obj str_A_kuwa_move_04_muj_00010ef0, local
	.string "A_kuwa_move_04"
.endobj str_A_kuwa_move_04_muj_00010ef0

# .rodata:0x7FF | 0x324F | size: 0x1
.obj gap_03_0000324F_rodata, global
.hidden gap_03_0000324F_rodata
	.byte 0x00
.endobj gap_03_0000324F_rodata

# .rodata:0x800 | 0x3250 | size: 0xF
.obj str_S_kuwa_move_04_muj_00010f00, local
	.string "S_kuwa_move_04"
.endobj str_S_kuwa_move_04_muj_00010f00

# .rodata:0x80F | 0x325F | size: 0x1
.obj gap_03_0000325F_rodata, global
.hidden gap_03_0000325F_rodata
	.byte 0x00
.endobj gap_03_0000325F_rodata

# .rodata:0x810 | 0x3260 | size: 0xF
.obj str_A_kuwa_move_05_muj_00010f10, local
	.string "A_kuwa_move_05"
.endobj str_A_kuwa_move_05_muj_00010f10

# .rodata:0x81F | 0x326F | size: 0x1
.obj gap_03_0000326F_rodata, global
.hidden gap_03_0000326F_rodata
	.byte 0x00
.endobj gap_03_0000326F_rodata

# .rodata:0x820 | 0x3270 | size: 0xF
.obj str_S_kuwa_move_05_muj_00010f20, local
	.string "S_kuwa_move_05"
.endobj str_S_kuwa_move_05_muj_00010f20

# .rodata:0x82F | 0x327F | size: 0x1
.obj gap_03_0000327F_rodata, global
.hidden gap_03_0000327F_rodata
	.byte 0x00
.endobj gap_03_0000327F_rodata

# .rodata:0x830 | 0x3280 | size: 0xF
.obj str_A_kuwa_move_06_muj_00010f30, local
	.string "A_kuwa_move_06"
.endobj str_A_kuwa_move_06_muj_00010f30

# .rodata:0x83F | 0x328F | size: 0x1
.obj gap_03_0000328F_rodata, global
.hidden gap_03_0000328F_rodata
	.byte 0x00
.endobj gap_03_0000328F_rodata

# .rodata:0x840 | 0x3290 | size: 0xF
.obj str_S_kuwa_move_06_muj_00010f40, local
	.string "S_kuwa_move_06"
.endobj str_S_kuwa_move_06_muj_00010f40

# .rodata:0x84F | 0x329F | size: 0x1
.obj gap_03_0000329F_rodata, global
.hidden gap_03_0000329F_rodata
	.byte 0x00
.endobj gap_03_0000329F_rodata

# .rodata:0x850 | 0x32A0 | size: 0xF
.obj str_A_kuwa_move_07_muj_00010f50, local
	.string "A_kuwa_move_07"
.endobj str_A_kuwa_move_07_muj_00010f50

# .rodata:0x85F | 0x32AF | size: 0x1
.obj gap_03_000032AF_rodata, global
.hidden gap_03_000032AF_rodata
	.byte 0x00
.endobj gap_03_000032AF_rodata

# .rodata:0x860 | 0x32B0 | size: 0xF
.obj str_S_kuwa_move_07_muj_00010f60, local
	.string "S_kuwa_move_07"
.endobj str_S_kuwa_move_07_muj_00010f60

# .rodata:0x86F | 0x32BF | size: 0x1
.obj gap_03_000032BF_rodata, global
.hidden gap_03_000032BF_rodata
	.byte 0x00
.endobj gap_03_000032BF_rodata

# .rodata:0x870 | 0x32C0 | size: 0xE
.obj str_ENV_STG5_MUJ7_muj_00010f70, local
	.string "ENV_STG5_MUJ7"
.endobj str_ENV_STG5_MUJ7_muj_00010f70

# .rodata:0x87E | 0x32CE | size: 0x2
.obj gap_03_000032CE_rodata, global
.hidden gap_03_000032CE_rodata
	.2byte 0x0000
.endobj gap_03_000032CE_rodata

# .rodata:0x880 | 0x32D0 | size: 0x16
.obj str_SFX_STG5_MARCO_MOVE1_muj_00010f80, local
	.string "SFX_STG5_MARCO_MOVE1L"
.endobj str_SFX_STG5_MARCO_MOVE1_muj_00010f80

# .rodata:0x896 | 0x32E6 | size: 0x2
.obj gap_03_000032E6_rodata, global
.hidden gap_03_000032E6_rodata
	.2byte 0x0000
.endobj gap_03_000032E6_rodata

# .rodata:0x898 | 0x32E8 | size: 0x16
.obj str_SFX_STG5_MARCO_MOVE1_muj_00010f98, local
	.string "SFX_STG5_MARCO_MOVE1R"
.endobj str_SFX_STG5_MARCO_MOVE1_muj_00010f98

# .rodata:0x8AE | 0x32FE | size: 0x2
.obj gap_03_000032FE_rodata, global
.hidden gap_03_000032FE_rodata
	.2byte 0x0000
.endobj gap_03_000032FE_rodata

# .rodata:0x8B0 | 0x3300 | size: 0x7
.obj str_S_mizu_muj_00010fb0, local
	.string "S_mizu"
.endobj str_S_mizu_muj_00010fb0

# .rodata:0x8B7 | 0x3307 | size: 0x1
.obj gap_03_00003307_rodata, global
.hidden gap_03_00003307_rodata
	.byte 0x00
.endobj gap_03_00003307_rodata

# .rodata:0x8B8 | 0x3308 | size: 0x7
.obj str_item00_muj_00010fb8, local
	.string "item00"
.endobj str_item00_muj_00010fb8

# .rodata:0x8BF | 0x330F | size: 0x1
.obj gap_03_0000330F_rodata, global
.hidden gap_03_0000330F_rodata
	.byte 0x00
.endobj gap_03_0000330F_rodata

# .rodata:0x8C0 | 0x3310 | size: 0x9
.obj str_sunlight_muj_00010fc0, local
	.string "sunlight"
.endobj str_sunlight_muj_00010fc0

# .rodata:0x8C9 | 0x3319 | size: 0x3
.obj gap_03_00003319_rodata, global
.hidden gap_03_00003319_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003319_rodata

# .rodata:0x8CC | 0x331C | size: 0xD
.obj str_sunlight_n64_muj_00010fcc, local
	.string "sunlight_n64"
.endobj str_sunlight_n64_muj_00010fcc

# .rodata:0x8D9 | 0x3329 | size: 0x3
.obj gap_03_00003329_rodata, global
.hidden gap_03_00003329_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003329_rodata

# .rodata:0x8DC | 0x332C | size: 0xD
.obj str_mobj_recover_muj_00010fdc, local
	.string "mobj_recover"
.endobj str_mobj_recover_muj_00010fdc

# .rodata:0x8E9 | 0x3339 | size: 0x3
.obj gap_03_00003339_rodata, global
.hidden gap_03_00003339_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00003339_rodata

# .rodata:0x8EC | 0x333C | size: 0x8
.obj str_item_01_muj_00010fec, local
	.string "item_01"
.endobj str_item_01_muj_00010fec

# .rodata:0x8F4 | 0x3344 | size: 0x4
.obj gap_03_00003344_rodata, global
.hidden gap_03_00003344_rodata
	.4byte 0x00000000
.endobj gap_03_00003344_rodata

# 0x00013258..0x000169D0 | size: 0x3778
.data
.balign 8

# .data:0x0 | 0x13258 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x13260 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x13264 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x13268 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x1326C | size: 0x4
.obj gap_04_0001326C_data, global
.hidden gap_04_0001326C_data
	.4byte 0x00000000
.endobj gap_04_0001326C_data

# .data:0x18 | 0x13270 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x13278 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x1327C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x13280 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x13288 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x1328C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x13290 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x13294 | size: 0x4
.obj gap_04_00013294_data, global
.hidden gap_04_00013294_data
	.4byte 0x00000000
.endobj gap_04_00013294_data

# .data:0x40 | 0x13298 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x132A0 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x132A4 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x132A8 | size: 0x70
.obj sanders_rotate, local
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x00000000
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C83
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0005005B
	.4byte evt_npc_set_rotate
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj sanders_rotate

# .data:0xC0 | 0x13318 | size: 0x34
.obj sanders_nakama_sub, local
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte str_me_muj_00010700
	.4byte 0x00020032
	.4byte 0xFE363C89
	.4byte 0x00000003
	.4byte 0x0001005E
	.4byte all_party_lecture_19_data_3CAB0
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj sanders_nakama_sub

# .data:0xF4 | 0x1334C | size: 0x2B4
.obj sanders_nakama, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_move_behind_mario
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_me_muj_00010700
	.4byte str_サンダース_muj_00010704
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_muj_00010700
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_THUNDERS_HI_muj_00010710
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_me_muj_00010700
	.4byte 0x00000200
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_55_muj_00010728
	.4byte 0x00000000
	.4byte str_me_muj_00010700
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF8B
	.4byte 0x0000007D
	.4byte 0x00000165
	.4byte 0xFFFFFF8B
	.4byte 0x0000003F
	.4byte 0x00000006
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_me_muj_00010700
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_me_muj_00010700
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000E1
	.4byte 0x0000001E
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_me_muj_00010700
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x000000B4
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0x000000C8
	.4byte 0x0001005C
	.4byte sanders_rotate
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_me_muj_00010700
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x000000B4
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0x000000C8
	.4byte 0x0001005C
	.4byte sanders_rotate
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_me_muj_00010700
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x000000B4
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0x000000C8
	.4byte 0x0001005C
	.4byte sanders_rotate
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte str_me_muj_00010700
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x000000B4
	.4byte 0x00020032
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C83
	.4byte 0x000000C8
	.4byte 0x0001005C
	.4byte sanders_rotate
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg5_muj_56_muj_00010734
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_62_muj_00010740
	.4byte 0x00000000
	.4byte str_me_muj_00010700
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg5_muj_63_muj_0001074c
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_69_muj_00010758
	.4byte 0x00000000
	.4byte str_me_muj_00010700
	.4byte 0x0001005E
	.4byte sanders_nakama_sub
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG5_MUJ1_muj_00010764
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x000000EF
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_npc_return_interrupt
	.4byte str_me_muj_00010700
	.4byte 0x00000002
	.4byte 0x00000001
.endobj sanders_nakama

# .data:0x3A8 | 0x13600 | size: 0xCC
.obj sanders_init, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010026
	.4byte 0x000000EB
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_me_muj_00010700
	.4byte str_サンダースへろへろ_muj_00010774
	.4byte 0x0002002F
	.4byte 0x000000EB
	.4byte 0x000000ED
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_muj_00010700
	.4byte 0xFFFFFF8E
	.4byte 0x00000016
	.4byte 0x00000016
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_me_muj_00010700
	.4byte str_サンダースへろへろ_muj_00010774
	.4byte 0x00010024
	.4byte 0x000000EE
	.4byte 0x0004005B
	.4byte evt_npc_reaction_flag_onoff
	.4byte 0x00000001
	.4byte str_me_muj_00010700
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_me_muj_00010700
	.4byte 0x00000008
	.4byte sanders_nakama
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_muj_00010700
	.4byte 0xFFFFFF8E
	.4byte 0x00000016
	.4byte 0x00000016
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_me_muj_00010700
	.4byte str_サンダースねむる_muj_00010788
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_サンダース_muj_00010704
	.4byte 0x00000200
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj sanders_init

# .data:0x474 | 0x136CC | size: 0x8
.obj itemsel_table01, local
	.4byte 0x00000046
	.4byte 0xFFFFFFFF
.endobj itemsel_table01

# .data:0x47C | 0x136D4 | size: 0x118
.obj sanders_talk_sub, local
	.4byte 0x0003005B
	.4byte evt_snd_bgmoff_f
	.4byte 0x00000200
	.4byte 0x000007D0
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_45_muj_0001079c
	.4byte 0x00000000
	.4byte str_me_muj_00010700
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_ORGEL1_muj_000107a8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF8B
	.4byte 0x0000007D
	.4byte 0x00000165
	.4byte 0xFFFFFF8B
	.4byte 0x0000003F
	.4byte 0x00000006
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x00000258
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_46_muj_000107b8
	.4byte 0x00000000
	.4byte str_me_muj_00010700
	.4byte 0x0003005B
	.4byte evt_npc_set_tribe
	.4byte str_me_muj_00010700
	.4byte str_サンダースねむる_muj_00010788
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_サンダース_muj_00010704
	.4byte 0x00000200
	.4byte 0x0004005B
	.4byte evt_npc_reaction_flag_onoff
	.4byte 0x00000001
	.4byte str_me_muj_00010700
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte evt_npc_change_interrupt
	.4byte str_me_muj_00010700
	.4byte 0x00000008
	.4byte sanders_nakama
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x000000EE
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj sanders_talk_sub

# .data:0x594 | 0x137EC | size: 0x2C8
.obj sanders_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x0002002F
	.4byte 0x000000EB
	.4byte 0x000000ED
	.4byte 0x0003005B
	.4byte evt_pouch_check_item
	.4byte 0x00000046
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_34_03_muj_000107c4
	.4byte 0x00000000
	.4byte str_me_muj_00010700
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_win_item_select
	.4byte 0x00000000
	.4byte itemsel_table01
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_pouch_remove_item
	.4byte 0x00000046
	.4byte 0xFE363C80
	.4byte 0x0001005C
	.4byte sanders_talk_sub
	.4byte 0x00000021
	.4byte 0x00010024
	.4byte 0x000000EE
	.4byte 0x00020018
	.4byte 0xF84067C2
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_47_muj_000107d4
	.4byte 0x00000000
	.4byte str_me_muj_00010700
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_QUES_muj_000107e0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000000
	.4byte zero_muj_000107fc
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000003
	.4byte zero_muj_000107fc
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000003C
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00020032
	.4byte 0xF84067C2
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_48_muj_00010800
	.4byte 0x00000000
	.4byte str_me_muj_00010700
	.4byte 0x0000006B
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte 0x00007D00
	.4byte 0x0003005B
	.4byte evt_snd_bgmoff_f
	.4byte 0x00000200
	.4byte 0x00000BB8
	.4byte 0x00010005
	.4byte 0x00000064
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0x0000012C
	.4byte 0x0003005B
	.4byte evt_snd_bgm_freq
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0001000A
	.4byte 0x00000032
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_VOICE_MARIO_FIND_muj_0001080c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000000
	.4byte zero_muj_000107fc
	.4byte 0x00000000
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
	.4byte 0x00000003
	.4byte zero_muj_000107fc
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
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg5_muj_49_muj_00010824
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj sanders_talk

# .data:0x85C | 0x13AB4 | size: 0x60
.obj marco_init, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010024
	.4byte 0x000000F1
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_me_muj_00010700
	.4byte 0x00000117
	.4byte 0x00000000
	.4byte 0xFFFFFFBD
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_me_muj_00010700
	.4byte 0x0000005A
	.4byte 0x00020018
	.4byte 0xF84067C5
	.4byte 0x00000000
	.4byte 0x0002005D
	.4byte marco_hanauta
	.4byte 0xFD050F82
	.4byte 0x00000021
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj marco_init

# .data:0x8BC | 0x13B14 | size: 0x248
.obj marco_talk, local
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010024
	.4byte 0x000000F1
	.4byte 0x00020018
	.4byte 0xF84067C5
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFD050F82
	.4byte 0x0002005B
	.4byte evt_msg_close
	.4byte str_stg5_muj_93_02_00_muj_00010830
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xF84067C5
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF84067C3
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_pouch_check_item
	.4byte 0x00000047
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF84067C6
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_93_02_muj_00010844
	.4byte 0x00000000
	.4byte str_マルコ_muj_00010854
	.4byte 0x00020018
	.4byte 0xF84067C4
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_I_2_muj_0001085c
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xF84067C6
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_93_03_muj_00010864
	.4byte 0x00000000
	.4byte str_マルコ_muj_00010854
	.4byte 0x0003005B
	.4byte evt_msg_select
	.4byte 0x00000000
	.4byte str_stg5_muj_93_03_selec_muj_00010874
	.4byte 0x00010022
	.4byte 0xFE363C80
	.4byte 0x00010024
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg5_muj_93_03_01_muj_0001088c
	.4byte 0x00010024
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg5_muj_93_03_02_muj_000108a0
	.4byte 0x00010024
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_msg_print_add
	.4byte 0x00000000
	.4byte str_stg5_muj_93_03_03_muj_000108b4
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_jewel_muj_000108c8
	.4byte 0x00000047
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000010
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_item_flag_on
	.4byte str_jewel_muj_000108c8
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_item_get_item
	.4byte str_jewel_muj_000108c8
	.4byte 0x00000031
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_93_05_muj_000108d0
	.4byte 0x00000000
	.4byte str_マルコ_muj_00010854
	.4byte 0x00000021
	.4byte 0x00000020
	.4byte 0x00020018
	.4byte 0xFD050F8C
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_93_06_muj_000108e0
	.4byte 0x00000000
	.4byte str_マルコ_muj_00010854
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_93_07_muj_000108f0
	.4byte 0x00000000
	.4byte str_マルコ_muj_00010854
	.4byte 0x00020032
	.4byte 0xFD050F8C
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010024
	.4byte 0x000000F2
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_93_09_muj_00010900
	.4byte 0x00000000
	.4byte str_マルコ_muj_00010854
	.4byte 0x00000031
	.4byte 0x00000002
	.4byte 0x00000001
.endobj marco_talk

# .data:0xB04 | 0x13D5C | size: 0x10
.obj erumosu_regl, local
	.4byte 0x0001000B
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj erumosu_regl

# .data:0xB14 | 0x13D6C | size: 0x5C
.obj erumosu_a_dead, local
	.4byte 0x00020032
	.4byte 0xF84067C1
	.4byte 0x00000001
	.4byte 0x0001005F
	.4byte 0xFD050F80
	.4byte 0x0001005F
	.4byte 0xFD050F82
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_エルモス１_muj_00010910
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte str_A_ki_02_01_muj_0001091c
	.4byte 0x00000000
	.4byte sanders_kyushutsu_sub
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj erumosu_a_dead

# .data:0xB70 | 0x13DC8 | size: 0x30
.obj erumosu_b_dead, local
	.4byte 0x0001005F
	.4byte 0xFD050F81
	.4byte 0x0001005F
	.4byte 0xFD050F83
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_エルモス２_muj_00010928
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj erumosu_b_dead

# .data:0xBA0 | 0x13DF8 | size: 0x1CC
.obj npcEnt, local
	.4byte str_サンダース_muj_00010704
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte sanders_init
	.4byte 0x00000000
	.4byte sanders_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_マルコ_muj_00010854
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte marco_init
	.4byte 0x00000000
	.4byte marco_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_エルモス１_muj_00010910
	.4byte 0x00000608
	.4byte 0x00000000
	.4byte npc_init_evt
	.4byte erumosu_regl
	.4byte 0x00000000
	.4byte erumosu_a_dead
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x00000007
	.4byte str_エルモス２_muj_00010928
	.4byte 0x00000608
	.4byte 0x00000000
	.4byte npc_init_evt
	.4byte erumosu_regl
	.4byte 0x00000000
	.4byte erumosu_b_dead
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x3F800000
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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

# .data:0xD6C | 0x13FC4 | size: 0x114
.obj npcEnt_after, local
	.4byte str_サンダース_muj_00010704
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte sanders_init
	.4byte 0x00000000
	.4byte sanders_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_マルコ_muj_00010854
	.4byte 0x00000600
	.4byte 0x00000000
	.4byte marco_init
	.4byte 0x00000000
	.4byte marco_talk
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj npcEnt_after

# .data:0xE80 | 0x140D8 | size: 0xB4
.obj bero_entry_data, local
	.4byte str_w_bero_muj_00010934
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_muj_04_muj_0001093c
	.4byte str_e_bero_muj_00010944
	.4byte 0x00010001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_e_bero_muj_00010944
	.4byte 0x00000000
	.4byte 0x00004E20
	.4byte 0x000186A0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte str_dou_00_muj_0001094c
	.4byte str_w_bero_muj_00010934
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

# .data:0xF34 | 0x1418C | size: 0x6C
.obj hammer_sub, local
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_treeA_05_muj_00010954
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_OBJ_TREE_SH_muj_00010960
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_OBJ_LEAF_SH_muj_0001097c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_S_ki_muj_00010998
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hammer_sub

# .data:0xFA0 | 0x141F8 | size: 0x28
.obj hammer_event, local
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte str_A_ki_02_01_muj_0001091c
	.4byte 0x00000000
	.4byte hammer_sub
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj hammer_event

# .data:0xFC8 | 0x14220 | size: 0x3E8
.obj sanders_kyushutsu_sub, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x000000EB
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_33_01_muj_000109a0
	.4byte 0x00000000
	.4byte str_サンダース_muj_00010704
	.4byte 0x0003005B
	.4byte evt_snd_bgmoff_f
	.4byte 0x00000200
	.4byte 0x000007D0
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0xFFFFFF92
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_サンダース_muj_00010704
	.4byte 0x0000010E
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_サンダース_muj_00010704
	.4byte 0xFFFFFFAB
	.4byte 0x000000C8
	.4byte 0x00000017
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFF59
	.4byte 0x00000026
	.4byte 0xF24CD280
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0xFFFFFFFF
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000005A
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x00000020
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_サンダース_muj_00010704
	.4byte 0x0000005A
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_サンダース_muj_00010704
	.4byte 0xFFFFFF6A
	.4byte 0x000000C8
	.4byte 0x00000017
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000000
	.4byte 0xFFFFFFC9
	.4byte 0x00000043
	.4byte 0xF24CD280
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0xFFFFFFFF
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_ki_02_02_muj_000109b0
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_サンダース_muj_00010704
	.4byte 0x00020010
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000000
	.4byte str_サンダース_muj_00010704
	.4byte 0x00000400
	.4byte 0x0000006B
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_THUNDERS_FA_muj_000109bc
	.4byte 0x00000055
	.4byte 0x00000028
	.4byte 0x00000017
	.4byte 0xFE363C8A
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_サンダース_muj_00010704
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001C
	.4byte 0xFE363C81
	.4byte 0x00000017
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8A
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_THUNDERS_DO_muj_000109d4
	.4byte 0x00000055
	.4byte 0x00000028
	.4byte 0x00000017
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_サンダース_muj_00010704
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001C
	.4byte 0xFE363C81
	.4byte 0x00000017
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_サンダース_muj_00010704
	.4byte str_F_1_muj_000109ec
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0003005B
	.4byte evt_npc_set_anim
	.4byte str_サンダース_muj_00010704
	.4byte str_S_1_muj_000109f0
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_サンダース_muj_00010704
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_ORGEL1_muj_000107a8
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_34_muj_000109f4
	.4byte 0x00000000
	.4byte str_サンダース_muj_00010704
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0xFFFFFF97
	.4byte 0x00000078
	.4byte 0x00000144
	.4byte 0xFFFFFF97
	.4byte 0x0000003E
	.4byte 0x00000003
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_34_01_muj_00010a00
	.4byte 0x00000000
	.4byte str_me_muj_00010700
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x0002005B
	.4byte evt_mario_set_pose
	.4byte str_M_N_5B_muj_00010a10
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_mario_dispflag_onoff
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_34_02_muj_00010a18
	.4byte 0x00000000
	.4byte str_サンダース_muj_00010704
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG5_MUJ1_muj_00010764
	.4byte 0x0001005C
	.4byte hammer_event
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000002
	.4byte 0x00000001
.endobj sanders_kyushutsu_sub

# .data:0x13B0 | 0x14608 | size: 0x34
.obj erumosu_guruguru, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte muj_npc_guruguru_19_text_5E8
	.4byte 0xFE363C80
	.4byte 0xFFFFFF8D
	.4byte 0xFFFFFFF1
	.4byte 0x00000001
	.4byte 0xF24A6680
	.4byte 0x00000BB8
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj erumosu_guruguru

# .data:0x13E4 | 0x1463C | size: 0x2C
.obj erumosu_guruguru_dir, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_set_dir_to_target
	.4byte 0xFE363C80
	.4byte str_サンダース_muj_00010704
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj erumosu_guruguru_dir

# .data:0x1410 | 0x14668 | size: 0xFC
.obj sanders_kyushutsu, local
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_サンダース_muj_00010704
	.4byte 0xFFFFFFA8
	.4byte 0x000000C8
	.4byte 0xFFFFFFDE
	.4byte 0x00020018
	.4byte 0xF84067C1
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_エルモス１_muj_00010910
	.4byte 0xFFFFFF62
	.4byte 0x00000017
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_エルモス２_muj_00010928
	.4byte 0xFFFFFFBC
	.4byte 0x00000017
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_link
	.4byte str_エルモス１_muj_00010910
	.4byte str_エルモス２_muj_00010928
	.4byte 0x0003005B
	.4byte evt_npc_set_battle_info
	.4byte str_エルモス１_muj_00010910
	.4byte 0x00000008
	.4byte 0x0003005B
	.4byte evt_npc_set_battle_info
	.4byte str_エルモス２_muj_00010928
	.4byte 0x00000008
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_エルモス１_muj_00010910
	.4byte 0x0002005D
	.4byte erumosu_guruguru
	.4byte 0xFD050F80
	.4byte 0x0002005D
	.4byte erumosu_guruguru_dir
	.4byte 0xFD050F82
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte str_エルモス２_muj_00010928
	.4byte 0x0002005D
	.4byte erumosu_guruguru
	.4byte 0xFD050F81
	.4byte 0x0002005D
	.4byte erumosu_guruguru_dir
	.4byte 0xFD050F83
	.4byte 0x00000020
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte str_A_ki_02_01_muj_0001091c
	.4byte 0x00000000
	.4byte sanders_kyushutsu_sub
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj sanders_kyushutsu

# .data:0x150C | 0x14764 | size: 0x8
.obj marco_hanauta, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj marco_hanauta

# .data:0x1514 | 0x1476C | size: 0x150
.obj marco_and_jewel, local
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
	.4byte 0x000001F4
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000001
	.4byte 0x0000005A
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000001
	.4byte 0x00000219
	.4byte 0x00000028
	.4byte 0xF24C5A80
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_93_00_muj_00010a28
	.4byte 0x00000000
	.4byte str_extparty_muj_00010a38
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000001
	.4byte 0x0000010E
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte evt_party_move_pos2
	.4byte 0x00000001
	.4byte 0x00000117
	.4byte 0xFFFFFFBD
	.4byte 0xF24C5A80
	.4byte 0x0005005B
	.4byte evt_party_get_pos
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_マルコ_muj_00010854
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_マルコ_muj_00010854
	.4byte 0x0000005A
	.4byte 0x0002005D
	.4byte marco_hanauta
	.4byte 0xFD050F82
	.4byte 0x0002005B
	.4byte evt_mario_clear_party
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x000000F1
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj marco_and_jewel

# .data:0x1664 | 0x148BC | size: 0x138
.obj blueeye_flush, local
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_hige_iwa03_me_muj_00010a44
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFFF4
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000002
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_ROCK_EYE_SH_muj_00010a54
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_muj_000107fc
	.4byte str_toge_flush_muj_00010a70
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_hige_iwa03_me_muj_00010a44
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000002
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_ROCK_EYE_SH_muj_00010a54
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_muj_000107fc
	.4byte str_toge_flush_muj_00010a70
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj blueeye_flush

# .data:0x179C | 0x149F4 | size: 0x138
.obj redeye_flush, local
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_hige_iwa02_me_muj_00010a7c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFFF4
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000002
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_ROCK_EYE_SH_muj_00010a54
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_muj_000107fc
	.4byte str_toge_flush_muj_00010a70
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_hige_iwa02_me_muj_00010a7c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x00000002
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_ROCK_EYE_SH_muj_00010a54
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x000F005B
	.4byte evt_eff
	.4byte zero_muj_000107fc
	.4byte str_toge_flush_muj_00010a70
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj redeye_flush

# .data:0x18D4 | 0x14B2C | size: 0xCC
.obj dokuroiwa_flush, local
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_dkr_iwa02_muj_00010a8c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x0000000A
	.4byte 0xFE363C8A
	.4byte 0x0003005B
	.4byte evt_sub_random
	.4byte 0x00000005
	.4byte 0xFE363C8B
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFE363C8A
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0xFE363C8B
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_ROCK_EYE_SH_muj_00010a54
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte zero_muj_000107fc
	.4byte str_hagetaka_flush_n64_muj_00010a98
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xF24A7E80
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dokuroiwa_flush

# .data:0x19A0 | 0x14BF8 | size: 0x1C
.obj command_seikai, local
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000001
.endobj command_seikai

# .data:0x19BC | 0x14C14 | size: 0x8
.obj itemsel_table, local
	.4byte 0x00000047
	.4byte 0xFFFFFFFF
.endobj itemsel_table

# .data:0x19C4 | 0x14C1C | size: 0x1FC
.obj dokuroiwa_touch, local
	.4byte 0x0003005B
	.4byte evt_pouch_check_item
	.4byte 0x00000047
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_toge
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_93_01_muj_00010aac
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x000000F0
	.4byte 0x0002005B
	.4byte evt_party_stop
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_msg_print_party
	.4byte str_stg5_muj_93_01_01_muj_00010abc
	.4byte 0x0002005B
	.4byte evt_party_run
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xF84067C4
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_win_item_select
	.4byte 0x00000000
	.4byte itemsel_table
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_jel_muj_00010ad0
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_JUWEL_SET1_muj_00010ad8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_jel_muj_00010ad0
	.4byte 0x00000001
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x00000190
	.4byte 0x0001005C
	.4byte blueeye_flush
	.4byte 0x0001005C
	.4byte redeye_flush
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xF24A7A80
	.4byte 0xF24A7E80
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0006005B
	.4byte evt_mapobj_scale
	.4byte 0x00000001
	.4byte str_S_hige_iwa02_me_muj_00010a7c
	.4byte 0xF24A7E80
	.4byte 0xFE363C80
	.4byte 0xF24A7E80
	.4byte 0x0006005B
	.4byte evt_mapobj_scale
	.4byte 0x00000001
	.4byte str_S_hige_iwa03_me_muj_00010a44
	.4byte 0xF24A7E80
	.4byte 0xFE363C80
	.4byte 0xF24A7E80
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_mario_dump_item
	.4byte 0x00000047
	.4byte 0x00020032
	.4byte 0xF84067C3
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dokuroiwa_touch

# .data:0x1BC0 | 0x14E18 | size: 0xB4
.obj case_event_entry, local
	.4byte 0x00020032
	.4byte 0xFAA2B58A
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte str_A_iwa01_muj_00010aec
	.4byte 0x00000000
	.4byte iwa01_hammer
	.4byte 0xFD050F85
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000004
	.4byte 0x00000001
	.4byte str_A_iwa01_muj_00010aec
	.4byte 0x00000000
	.4byte iwa01_ride_a
	.4byte 0xFD050F86
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_A_iwa_atari_muj_00010af4
	.4byte 0x00000000
	.4byte iwa02_ride
	.4byte 0xFD050F87
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x0000000D
	.4byte 0x00000001
	.4byte str_A_iwa_atari_muj_00010af4
	.4byte 0x00000000
	.4byte iwa02_hammer
	.4byte 0xFD050F88
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000004
	.4byte 0x00000001
	.4byte str_A_iwa_atari_muj_00010af4
	.4byte 0x00000000
	.4byte iwa02_ride_a
	.4byte 0xFD050F89
	.4byte 0x00000002
	.4byte 0x00000001
.endobj case_event_entry

# .data:0x1C74 | 0x14ECC | size: 0xA8
.obj case_event_delete, local
	.4byte 0x00020019
	.4byte 0xFD050F85
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte evt_del_case_evt
	.4byte 0x00000000
	.4byte 0xFD050F85
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFD050F86
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte evt_del_case_evt
	.4byte 0x00000000
	.4byte 0xFD050F86
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFD050F87
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte evt_del_case_evt
	.4byte 0x00000000
	.4byte 0xFD050F87
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFD050F88
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte evt_del_case_evt
	.4byte 0x00000000
	.4byte 0xFD050F88
	.4byte 0x00000021
	.4byte 0x00020019
	.4byte 0xFD050F89
	.4byte 0xFFFFFFFF
	.4byte 0x0003005B
	.4byte evt_del_case_evt
	.4byte 0x00000000
	.4byte 0xFD050F89
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj case_event_delete

# .data:0x1D1C | 0x14F74 | size: 0x2EC
.obj penalty_event, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFD050F82
	.4byte 0x0002005B
	.4byte evt_msg_close
	.4byte str_stg5_muj_93_02_00_muj_00010830
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_エルモスA_muj_00010b00
	.4byte 0x40000020
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_エルモスB_muj_00010b0c
	.4byte 0x40000020
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_エルモスC_muj_00010b18
	.4byte 0x40000020
	.4byte 0x0000006B
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFFE9
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0xFFFFFFEC
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_エルモスB_muj_00010b0c
	.4byte 0xFE363C80
	.4byte 0x000000DC
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_エルモスB_muj_00010b0c
	.4byte 0x0000005A
	.4byte 0x000A005B
	.4byte evt_npc_glide_position
	.4byte str_エルモスB_muj_00010b0c
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0xFE363C82
	.4byte 0x000003E8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFFE4
	.4byte 0x00020035
	.4byte 0xFE363C82
	.4byte 0x00000030
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_エルモスC_muj_00010b18
	.4byte 0xFE363C80
	.4byte 0x000000D2
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_エルモスC_muj_00010b18
	.4byte 0x0000005A
	.4byte 0x000A005B
	.4byte evt_npc_glide_position
	.4byte str_エルモスC_muj_00010b18
	.4byte 0xFE363C80
	.4byte 0x0000000A
	.4byte 0xFE363C82
	.4byte 0x000003E8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_エルモスA_muj_00010b00
	.4byte 0xFE363C80
	.4byte 0x000000C8
	.4byte 0xFE363C82
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_エルモスA_muj_00010b00
	.4byte 0x0000005A
	.4byte 0x000A005B
	.4byte evt_npc_glide_position
	.4byte str_エルモスA_muj_00010b00
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x000003E8
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x000000C8
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_get_motion
	.4byte 0xFE363C8A
	.4byte 0x00020018
	.4byte 0xFE363C8A
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x000C005B
	.4byte evt_eff_fukidashi
	.4byte 0x00000000
	.4byte zero_muj_000107fc
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
	.4byte 0x0003005B
	.4byte evt_npc_set_battle_info
	.4byte str_エルモスA_muj_00010b00
	.4byte 0x00000007
	.4byte 0x0002005B
	.4byte evt_npc_battle_start
	.4byte str_エルモスA_muj_00010b00
	.4byte 0x0001005B
	.4byte evt_npc_wait_battle_end
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_エルモスA_muj_00010b00
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_エルモスB_muj_00010b0c
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_エルモスC_muj_00010b18
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFD050F8A
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFD050F8C
	.4byte 0x00000001
	.4byte 0x00020032
	.4byte 0xFD050F8D
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_dokuroiwa_command_clear
	.4byte 0x0002005D
	.4byte marco_hanauta
	.4byte 0xFD050F82
	.4byte 0x0001005E
	.4byte case_event_delete
	.4byte 0x0001005E
	.4byte case_event_entry
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj penalty_event

# .data:0x2008 | 0x15260 | size: 0x84
.obj cam_shake, local
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x0000000A
	.4byte 0x0000001E
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF25A1A80
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x00000064
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A8A
	.4byte 0xF24A7A80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj cam_shake

# .data:0x208C | 0x152E4 | size: 0x6C
.obj cam_shake2, local
	.4byte 0x0005005B
	.4byte evt_sub_intpl_init
	.4byte 0x0000000B
	.4byte 0x0000000A
	.4byte 0x00000000
	.4byte 0x0000001E
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_sub_intpl_get_value
	.4byte 0x0002003D
	.4byte 0xFE363C80
	.4byte 0xF25A1A80
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xFE363C80
	.4byte 0xF24A7A80
	.4byte 0x00000064
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj cam_shake2

# .data:0x20F8 | 0x15350 | size: 0x1F4
.obj answer_event, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x0000020D
	.4byte 0x00000077
	.4byte 0x00000248
	.4byte 0x0000020D
	.4byte 0x00000017
	.4byte 0x0000002A
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0001005C
	.4byte dokuroiwa_flush
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0001005C
	.4byte dokuroiwa_flush
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0001005C
	.4byte dokuroiwa_flush
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0001005C
	.4byte dokuroiwa_flush
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0001005C
	.4byte dokuroiwa_flush
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_dkr_iwa_muj_00010b24
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_QUAKE1_muj_00010b30
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C89
	.4byte 0x0002005D
	.4byte cam_shake
	.4byte 0xFE363C8A
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000165
	.4byte 0x0000007D
	.4byte 0x0000014F
	.4byte 0x00000227
	.4byte 0x00000045
	.4byte 0x0000005A
	.4byte 0x000003E8
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0001005F
	.4byte 0xFE363C8A
	.4byte 0x0001005E
	.4byte cam_shake2
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C89
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_dokuro_iwa_muj_00010b40
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_OBJ_ROCK_WI_muj_00010b50
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_S_dkr_iwa_muj_00010b6c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_dkr_iwa_futa_muj_00010b78
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_dkr_iwa_futa02_muj_00010b88
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_map_checkanim
	.4byte str_S_dkr_iwa_muj_00010b6c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0001000A
	.4byte 0xFE363C81
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00020032
	.4byte 0xF84067CD
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte case_event_delete
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj answer_event

# .data:0x22EC | 0x15544 | size: 0x124
.obj iwa01_hammer, local
	.4byte 0x00020018
	.4byte 0xFAA2B58A
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF84067C3
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_hige_iwa03_me_muj_00010a44
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_OBJ_BIG_ROC_muj_00010b9c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte blueeye_flush
	.4byte 0x0003005B
	.4byte evt_dokuroiwa_command_set
	.4byte 0xFD050F8A
	.4byte 0x00000001
	.4byte 0x00020035
	.4byte 0xFD050F8A
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_dokuroiwa_command_check
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFFE2
	.4byte 0x0001005C
	.4byte penalty_event
	.4byte 0x00020032
	.4byte 0xFD050F85
	.4byte 0xFFFFFFFF
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0001005C
	.4byte answer_event
	.4byte 0x00020032
	.4byte 0xFD050F85
	.4byte 0xFFFFFFFF
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000021
	.4byte 0x0001000A
	.4byte 0x0000012C
	.4byte 0x00020032
	.4byte 0xFAA2B58A
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj iwa01_hammer

# .data:0x2410 | 0x15668 | size: 0x50
.obj iwa01_ride_a, local
	.4byte 0x00020018
	.4byte 0xF84067C3
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_hige_iwa03_me_muj_00010a44
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_OBJ_BIG_ROC_muj_00010bb8
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj iwa01_ride_a

# .data:0x2460 | 0x156B8 | size: 0x108
.obj iwa02_ride, local
	.4byte 0x0002005B
	.4byte evt_mario_chk_hipbump
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFD050F8D
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFD050F8D
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xF84067C3
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0001005C
	.4byte redeye_flush
	.4byte 0x0003005B
	.4byte evt_dokuroiwa_command_set
	.4byte 0xFD050F8A
	.4byte 0x00000002
	.4byte 0x00020035
	.4byte 0xFD050F8A
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_dokuroiwa_command_check
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mario_get_pos
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFFFFFFE2
	.4byte 0x0001005C
	.4byte penalty_event
	.4byte 0x00020032
	.4byte 0xFD050F87
	.4byte 0xFFFFFFFF
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000002
	.4byte 0x0001005C
	.4byte answer_event
	.4byte 0x00020032
	.4byte 0xFD050F87
	.4byte 0xFFFFFFFF
	.4byte 0x0001005B
	.4byte evt_exit_case_evt
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj iwa02_ride

# .data:0x2568 | 0x157C0 | size: 0x50
.obj iwa02_hammer, local
	.4byte 0x00020018
	.4byte 0xF84067C3
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_hige_iwa02_me_muj_00010a7c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_OBJ_SMALL_R_muj_00010bd4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj iwa02_hammer

# .data:0x25B8 | 0x15810 | size: 0x70
.obj iwa02_ride_a, local
	.4byte 0x0002005B
	.4byte evt_mario_chk_hipbump
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF84067C3
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_hige_iwa02_me_muj_00010a7c
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_OBJ_SMALL_R_muj_00010bf4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj iwa02_ride_a

# .data:0x2628 | 0x15880 | size: 0x14
.obj iwa02_nonride_a, local
	.4byte 0x00020032
	.4byte 0xFD050F8D
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj iwa02_nonride_a

# .data:0x263C | 0x15894 | size: 0x23C
.obj bombwall_bomb, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0001000A
	.4byte 0x000000C8
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_dokuro_iwa_muj_00010b40
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_OFF_WALL_BREAK1_muj_00010c14
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0002005B
	.4byte evt_img_entry
	.4byte str_capture_img_muj_00010c28
	.4byte 0x0003005B
	.4byte evt_img_set_paper
	.4byte str_capture_img_muj_00010c28
	.4byte str_OFF_d_bom_ver2_muj_00010c34
	.4byte 0x0002005B
	.4byte evt_offscreen_entry
	.4byte str_offscreen_muj_00010c44
	.4byte 0x0004005B
	.4byte evt_mapobj_set_offscreen
	.4byte 0x00000001
	.4byte str_S_dokuro_iwa_muj_00010b40
	.4byte str_offscreen_muj_00010c44
	.4byte 0x0006005B
	.4byte evt_offscreen_get_boundingbox2
	.4byte str_offscreen_muj_00010c44
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xFE363C8D
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFBD3E280
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xFBD3E280
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_img_alloc_capture
	.4byte str_capture_img_muj_00010c28
	.4byte 0x00000000
	.4byte str_offscreen_muj_00010c44
	.4byte 0x00000001
	.4byte 0xFE363C8A
	.4byte 0xFE363C8B
	.4byte 0xFE363C8C
	.4byte 0xFE363C8D
	.4byte 0x0002005B
	.4byte evt_img_clear_virtual_point
	.4byte str_capture_img_muj_00010c28
	.4byte 0x0003005B
	.4byte evt_img_set_paper_anim
	.4byte str_capture_img_muj_00010c28
	.4byte str_A_1_muj_00010c50
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_dokuro_iwa_muj_00010b40
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_dokuro_iwa_muj_00010c54
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_img_wait_animend
	.4byte str_capture_img_muj_00010c28
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_dokuro_iwa_muj_00010b40
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_dokuro_iwa_muj_00010c54
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_mapobj_clear_offscreen
	.4byte 0x00000001
	.4byte str_S_dokuro_iwa_muj_00010b40
	.4byte 0x0003005B
	.4byte evt_img_free_capture
	.4byte str_capture_img_muj_00010c28
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_img_free_capture
	.4byte str_capture_img_muj_00010c28
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_img_onoff
	.4byte str_capture_img_muj_00010c28
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_img_release
	.4byte str_capture_img_muj_00010c28
	.4byte 0x0002005B
	.4byte evt_offscreen_delete
	.4byte str_offscreen_muj_00010c44
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_mario_party_use_check
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj bombwall_bomb

# .data:0x2878 | 0x15AD0 | size: 0x4D4
.obj dokuroiwa_bomb, local
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_e_bero_muj_00010944
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_dokuro_iwa_muj_00010b40
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_OBJ_ROCK_BR_muj_00010c64
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006B
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000400
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000001
	.4byte str_BGM_FF_ENV_SUCCESS1_muj_00010c80
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000201
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000120
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_cam_shake
	.4byte 0x00000004
	.4byte 0xF24A7A9E
	.4byte 0xF24A7A80
	.4byte 0x000003E8
	.4byte 0x0000006D
	.4byte 0x0001005E
	.4byte bombwall_bomb
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_dkr_iwa_futa02_muj_00010b88
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF84067C5
	.4byte 0x00000000
	.4byte 0x0001005F
	.4byte 0xFD050F82
	.4byte 0x0002005B
	.4byte evt_msg_close
	.4byte str_stg5_muj_93_02_00_muj_00010830
	.4byte 0x00000021
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_マルコ_muj_00010854
	.4byte 0x0000005A
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x00000118
	.4byte 0x00000073
	.4byte 0x0000014D
	.4byte 0x00000118
	.4byte 0x00000037
	.4byte 0xFFFFFFF5
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte evt_npc_flag_onoff
	.4byte 0x00000001
	.4byte str_マルコ_muj_00010854
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_npc_get_position
	.4byte str_マルコ_muj_00010854
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_マルコ_muj_00010854
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000E1
	.4byte 0x0000001E
	.4byte 0x0007005B
	.4byte evt_npc_jump_position_nohit
	.4byte str_マルコ_muj_00010854
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x000000E1
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_93_08_muj_00010c94
	.4byte 0x00000000
	.4byte str_マルコ_muj_00010854
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_jewel00_muj_00010ca4
	.4byte 0x00000047
	.4byte 0x000000E1
	.4byte 0x000000C8
	.4byte 0xFFFFFFE7
	.4byte 0x0000000D
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte str_jewel00_muj_00010ca4
	.4byte 0x0003005B
	.4byte evt_item_flag_on
	.4byte 0xFE363C88
	.4byte 0x00000010
	.4byte 0x0003005B
	.4byte evt_item_set_gravity
	.4byte 0xFE363C88
	.4byte 0xF24A7E80
	.4byte 0x0003005B
	.4byte evt_item_set_bound_rate
	.4byte 0xFE363C88
	.4byte 0xF24A7D4C
	.4byte 0x0003005B
	.4byte evt_item_set_jump_power
	.4byte 0xFE363C88
	.4byte 0xF24A7A80
	.4byte 0x0003005B
	.4byte evt_item_set_bound_limit
	.4byte 0xFE363C88
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0x00000023
	.4byte 0x0003005B
	.4byte evt_item_set_bound_next_speed
	.4byte 0xFE363C88
	.4byte 0xFE363C80
	.4byte 0x0000006B
	.4byte 0x0005005B
	.4byte evt_item_get_position
	.4byte str_jewel00_muj_00010ca4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_JUWEL_FALL1_muj_00010cac
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0xFE363C8A
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_item_get_position
	.4byte str_jewel00_muj_00010ca4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0002001C
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0002005B
	.4byte evt_snd_sfxoff
	.4byte 0xFE363C8A
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_JUWEL_LANDI_muj_00010cc4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0000006D
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_マルコ_muj_00010854
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x000005DC
	.4byte 0x0009005B
	.4byte evt_cam3d_evt_set
	.4byte 0x000000E1
	.4byte 0x00000073
	.4byte 0x0000014D
	.4byte 0x000000E1
	.4byte 0x00000037
	.4byte 0xFFFFFFF5
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_マルコ_muj_00010854
	.4byte 0x000000E1
	.4byte 0xFFFFFFCE
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_93_08_01_muj_00010cdc
	.4byte 0x00000000
	.4byte str_マルコ_muj_00010854
	.4byte 0x0005005B
	.4byte evt_item_set_position
	.4byte str_jewel00_muj_00010ca4
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_マルコ_muj_00010854
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_マルコ_muj_00010854
	.4byte 0x0000010E
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_マルコ_muj_00010854
	.4byte 0x0000005A
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_マルコ_muj_00010854
	.4byte 0x000000F0
	.4byte 0xFFFFFFCE
	.4byte 0x00000000
	.4byte 0xF24B6A80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_93_08_02_muj_00010cf0
	.4byte 0x00000000
	.4byte str_マルコ_muj_00010854
	.4byte 0x0004005B
	.4byte evt_mario_set_dir
	.4byte 0x0000010E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_party_set_dir
	.4byte 0x00000000
	.4byte 0x0000010E
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_npc_set_ry
	.4byte str_マルコ_muj_00010854
	.4byte 0x0000010E
	.4byte 0x0007005B
	.4byte evt_npc_move_position
	.4byte str_マルコ_muj_00010854
	.4byte 0x00000064
	.4byte 0xFFFFFFCE
	.4byte 0x00000000
	.4byte 0xF24C5A80
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_npc_set_position
	.4byte str_マルコ_muj_00010854
	.4byte 0x00000000
	.4byte 0xFFFFFC18
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_cam3d_evt_off
	.4byte 0x000001F4
	.4byte 0x0000000B
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00020032
	.4byte 0xF5DE0180
	.4byte 0x000000F2
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dokuroiwa_bomb

# .data:0x2D4C | 0x15FA4 | size: 0x1EC
.obj dokuroiwa_init, local
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_jel_muj_00010ad0
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_dkr_iwa_futa02_muj_00010b88
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0001005B
	.4byte evt_dokuroiwa_command_init
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x000000F2
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_S_dokuro_iwa_muj_00010b40
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_dokuro_iwa_muj_00010c54
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_e_bero_muj_00010944
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF84067C3
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte evt_mapobj_scale
	.4byte 0x00000001
	.4byte str_S_hige_iwa02_me_muj_00010a7c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x0006005B
	.4byte evt_mapobj_scale
	.4byte 0x00000001
	.4byte str_S_hige_iwa03_me_muj_00010a44
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte evt_mapobj_flag_onoff
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte str_S_jel_muj_00010ad0
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x00020032
	.4byte 0xFD050F8A
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFD050F8C
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFD050F8D
	.4byte 0x00000000
	.4byte 0x00020018
	.4byte 0xF84067C3
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000009
	.4byte 0x00000001
	.4byte str_A_dkr_iwa_01_muj_00010d04
	.4byte 0x00000000
	.4byte dokuroiwa_touch
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00020018
	.4byte 0xF84067CD
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte case_event_entry
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte str_A_iwa_atari_muj_00010af4
	.4byte 0x00000000
	.4byte iwa02_nonride_a
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_S_dkr_iwa_muj_00010b6c
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_dkr_iwa_futa_muj_00010b78
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte evt_hitobj_onoff
	.4byte str_A_dkr_iwa_futa02_muj_00010b88
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x00000021
	.4byte 0x0002005B
	.4byte evt_paper_entry
	.4byte str_OFF_d_bom_ver2_muj_00010c34
	.4byte 0x0007005B
	.4byte evt_run_case_evt
	.4byte 0x0000000F
	.4byte 0x00000001
	.4byte str_A_dkr_iwa_02_oku_01_muj_00010d14
	.4byte 0x00000000
	.4byte dokuroiwa_bomb
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj dokuroiwa_init

# .data:0x2F38 | 0x16190 | size: 0x68
.obj muj_05_first, local
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_DANGER4_muj_00010d28
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_bero_exec_wait
	.4byte 0x00010000
	.4byte 0x0001005B
	.4byte evt_mario_normalize
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000000
	.4byte str_stg5_muj_33_muj_00010d38
	.4byte 0x00000000
	.4byte str_サンダース_muj_00010704
	.4byte 0x00020032
	.4byte 0xF84067C0
	.4byte 0x00000001
	.4byte 0x0002005B
	.4byte evt_mario_key_onoff
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj muj_05_first

# .data:0x2FA0 | 0x161F8 | size: 0x2D0
.obj yure_yashi_ha1, local
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x000001F4
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_treeA_05_ha_01_muj_00010d44
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_treeA_05_ha_05_muj_00010d54
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020034
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C82
	.4byte 0xF24A7C80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_treeA_05_ha_03_muj_00010d64
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_treeA_05_ha_04_muj_00010d74
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00020034
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002003B
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_treeA_05_ha_07_muj_00010d84
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0002003C
	.4byte 0xFE363C82
	.4byte 0xF24A7C80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_treeA_05_ha_02_muj_00010d94
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_treeA_05_ha_06_muj_00010da4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x000000EB
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000D
	.4byte 0x00000002
	.4byte 0x00000000
	.4byte 0x000007D0
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_treeA_05_ha_01_muj_00010d44
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_treeA_05_ha_05_muj_00010d54
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020034
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x0002003C
	.4byte 0xFE363C82
	.4byte 0xF24A7C80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_treeA_05_ha_03_muj_00010d64
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_treeA_05_ha_04_muj_00010d74
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00020034
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0002003B
	.4byte 0xFE363C82
	.4byte 0xFE363C80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_treeA_05_ha_07_muj_00010d84
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0002003C
	.4byte 0xFE363C82
	.4byte 0xF24A7C80
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_treeA_05_ha_02_muj_00010d94
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_treeA_05_ha_06_muj_00010da4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x000000EB
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj yure_yashi_ha1

# .data:0x3270 | 0x164C8 | size: 0x160
.obj yure_yashi, local
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte evt_mapobj_get_position
	.4byte str_S_treeA_05_muj_00010954
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0006005B
	.4byte evt_snd_sfxon_3d
	.4byte str_SFX_STG5_OBJ_TREE_SH_muj_00010db4
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte yure_yashi_ha1
	.4byte 0x0001000A
	.4byte 0x00000064
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0x00000001
	.4byte 0xFFFFFFFF
	.4byte 0x00000320
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_treeA_05_muj_00010954
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x000000EB
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte evt_sub_intpl_msec_init
	.4byte 0x0000000B
	.4byte 0xFFFFFFFF
	.4byte 0x00000001
	.4byte 0x000007D0
	.4byte 0x00010005
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_sub_intpl_msec_get_value_para
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x0006005B
	.4byte evt_mapobj_rotate
	.4byte 0x00000000
	.4byte str_S_treeA_05_muj_00010954
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00020018
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000021
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x000000EB
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x00000006
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj yure_yashi

# .data:0x33D0 | 0x16628 | size: 0x50
.obj evt_kusa_1, local
	.4byte 0x0003005B
	.4byte evt_item_delete_check
	.4byte str_item_kusa_1_muj_00010dd0
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_kusa_1_muj_00010dd0
	.4byte 0x000000B1
	.4byte 0x000000EB
	.4byte 0x00000000
	.4byte 0x0000005A
	.4byte 0x00000004
	.4byte 0xF84067D5
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj evt_kusa_1

# .data:0x3420 | 0x16678 | size: 0x90
.obj tree_tbl, local
	.4byte 0x00000005
	.4byte str_A_treeA_01_muj_00010ddc
	.4byte str_treeA_01_m_muj_00010de8
	.4byte str_treeA_01_ha_muj_00010df4
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte str_A_treeA_02_muj_00010e00
	.4byte str_treeA_02_m_muj_00010e0c
	.4byte str_treeA_02_ha_muj_00010e18
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte str_A_treeA_03_muj_00010e24
	.4byte str_treeA_03_m_muj_00010e30
	.4byte str_treeA_03_ha_muj_00010e3c
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte str_A_treeA_04_muj_00010e48
	.4byte str_treeA_04_m_muj_00010e54
	.4byte str_treeA_04_ha_muj_00010e60
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000005
	.4byte str_A_treeB_03_muj_00010e6c
	.4byte str_treeB_03_m_muj_00010e78
	.4byte str_treeB_03_ha_muj_00010e84
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000007
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj tree_tbl

# .data:0x34B0 | 0x16708 | size: 0x80
.obj kusa_tbl, local
	.4byte 0x00000001
	.4byte str_A_kuwa_move_01_muj_00010e90
	.4byte str_S_kuwa_move_01_muj_00010ea0
	.4byte evt_kusa_1
	.4byte 0x00000001
	.4byte str_A_kuwa_move_02_muj_00010eb0
	.4byte str_S_kuwa_move_02_muj_00010ec0
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_A_kuwa_move_03_muj_00010ed0
	.4byte str_S_kuwa_move_03_muj_00010ee0
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_A_kuwa_move_04_muj_00010ef0
	.4byte str_S_kuwa_move_04_muj_00010f00
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_A_kuwa_move_05_muj_00010f10
	.4byte str_S_kuwa_move_05_muj_00010f20
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_A_kuwa_move_06_muj_00010f30
	.4byte str_S_kuwa_move_06_muj_00010f40
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte str_A_kuwa_move_07_muj_00010f50
	.4byte str_S_kuwa_move_07_muj_00010f60
	.4byte 0x00000000
	.4byte 0x00000004
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj kusa_tbl

# .data:0x3530 | 0x16788 | size: 0x248
.obj muj_05_init_evt_19_data_16788, global
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010024
	.4byte 0x000000EA
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_EVT_DANGER4_muj_00010d28
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG5_MUJ7_muj_00010f70
	.4byte 0x00010024
	.4byte 0x000000EE
	.4byte 0x0002005B
	.4byte evt_snd_bgmoff
	.4byte 0x00000200
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG5_MUJ7_muj_00010f70
	.4byte 0x0000002A
	.4byte 0x0003005B
	.4byte evt_snd_bgmon
	.4byte 0x00000200
	.4byte str_BGM_STG5_MUJ1_muj_00010764
	.4byte 0x0003005B
	.4byte evt_snd_envon
	.4byte 0x00000110
	.4byte str_ENV_STG5_MUJ7_muj_00010f70
	.4byte 0x00000031
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte bero_entry_data
	.4byte 0x0001005B
	.4byte evt_bero_get_info
	.4byte 0x0001005E
	.4byte evt_bero_info_run
	.4byte 0x00020018
	.4byte 0xF84067C1
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_npc_setup
	.4byte npcEnt
	.4byte 0x00000020
	.4byte 0x0002005B
	.4byte evt_npc_setup
	.4byte npcEnt_after
	.4byte 0x00000021
	.4byte 0x0007005B
	.4byte evt_npc_sound_data_set
	.4byte str_マルコ_muj_00010854
	.4byte str_SFX_STG5_MARCO_MOVE1_muj_00010f80
	.4byte str_SFX_STG5_MARCO_MOVE1_muj_00010f98
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0xF1194D80
	.4byte 0x0004005B
	.4byte evt_map_playanim
	.4byte str_S_mizu_muj_00010fb0
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte hammer_event
	.4byte 0x00010022
	.4byte 0xF5DE0180
	.4byte 0x00010024
	.4byte 0x000000EA
	.4byte 0x00020018
	.4byte 0xF84067C0
	.4byte 0x00000000
	.4byte 0x0001005C
	.4byte muj_05_first
	.4byte 0x00000021
	.4byte 0x0001005C
	.4byte sanders_kyushutsu
	.4byte 0x0001005C
	.4byte yure_yashi
	.4byte 0x00010024
	.4byte 0x000000F0
	.4byte 0x0001005C
	.4byte marco_and_jewel
	.4byte 0x00000031
	.4byte 0x0001005C
	.4byte dokuroiwa_init
	.4byte 0x0002001D
	.4byte 0xF5DE0180
	.4byte 0x00000112
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item00_muj_00010fb8
	.4byte 0x00000049
	.4byte 0xFFFFFF06
	.4byte 0x00000000
	.4byte 0xFFFFFF92
	.4byte 0x00000000
	.4byte 0xF84067C7
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x000F005B
	.4byte evt_eff64
	.4byte str_sunlight_muj_00010fc0
	.4byte str_sunlight_n64_muj_00010fcc
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
	.4byte 0x0008005B
	.4byte evt_mobj_recovery_blk
	.4byte str_mobj_recover_muj_00010fdc
	.4byte 0x0000000C
	.4byte 0x0000007D
	.4byte 0x0000003C
	.4byte 0xFFFFFFA6
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0009005B
	.4byte evt_item_entry
	.4byte str_item_01_muj_00010fec
	.4byte 0x0000007D
	.4byte 0x0000018B
	.4byte 0xFFFFFFF1
	.4byte 0x00000078
	.4byte 0x00000010
	.4byte 0xF840718B
	.4byte 0x00000000
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte tree_tbl
	.4byte 0x0001005E
	.4byte evt_sub_tree_access_entry
	.4byte 0x00020032
	.4byte 0xFE363C80
	.4byte kusa_tbl
	.4byte 0x0001005E
	.4byte evt_sub_kusa_access_entry
	.4byte 0x00000002
	.4byte 0x00000001
.endobj muj_05_init_evt_19_data_16788

# 0x00000018..0x00000020 | size: 0x8
.section .bss, "wa", @nobits
.balign 8

# .bss:0x0 | 0x18 | size: 0x4
.obj command_work, local
	.skip 0x4
.endobj command_work

# .bss:0x4 | 0x1C | size: 0x4
.obj gap_05_0000001C_bss, global
.hidden gap_05_0000001C_bss
	.skip 0x4
.endobj gap_05_0000001C_bss
