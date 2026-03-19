.include "macros.inc"
.file "unit_gold_chorobon.o"

# 0x000042A0..0x00004334 | size: 0x94
.text
.balign 4

# .text:0x0 | 0x42A0 | size: 0x94
.fn get_gold_chorobon_id, local
/* 000042A0 00004364  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 000042A4 00004368  7C 08 02 A6 */	mflr r0
/* 000042A8 0000436C  3C 80 00 00 */	lis r4, _battleWorkPointer@ha
/* 000042AC 00004370  90 01 00 24 */	stw r0, 0x24(r1)
/* 000042B0 00004374  BF 81 00 10 */	stmw r28, 0x10(r1)
/* 000042B4 00004378  7C 7C 1B 78 */	mr r28, r3
/* 000042B8 0000437C  3B A0 00 00 */	li r29, 0x0
/* 000042BC 00004380  83 E3 00 18 */	lwz r31, 0x18(r3)
/* 000042C0 00004384  83 C4 00 00 */	lwz r30, _battleWorkPointer@l(r4)
.L_000042C4:
/* 000042C4 00004388  7F C3 F3 78 */	mr r3, r30
/* 000042C8 0000438C  7F A4 EB 78 */	mr r4, r29
/* 000042CC 00004390  4B FF BD 35 */	bl BattleGetUnitPtr
/* 000042D0 00004394  28 03 00 00 */	cmplwi r3, 0x0
/* 000042D4 00004398  41 82 00 10 */	beq .L_000042E4
/* 000042D8 0000439C  80 03 00 04 */	lwz r0, 0x4(r3)
/* 000042DC 000043A0  2C 00 00 14 */	cmpwi r0, 0x14
/* 000042E0 000043A4  41 82 00 10 */	beq .L_000042F0
.L_000042E4:
/* 000042E4 000043A8  3B BD 00 01 */	addi r29, r29, 0x1
/* 000042E8 000043AC  2C 1D 00 40 */	cmpwi r29, 0x40
/* 000042EC 000043B0  41 80 FF D8 */	blt .L_000042C4
.L_000042F0:
/* 000042F0 000043B4  2C 1D 00 40 */	cmpwi r29, 0x40
/* 000042F4 000043B8  41 82 00 18 */	beq .L_0000430C
/* 000042F8 000043BC  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 000042FC 000043C0  7F 83 E3 78 */	mr r3, r28
/* 00004300 000043C4  7F A5 EB 78 */	mr r5, r29
/* 00004304 000043C8  4B FF BC FD */	bl evtSetValue
/* 00004308 000043CC  48 00 00 14 */	b .L_0000431C
.L_0000430C:
/* 0000430C 000043D0  80 9F 00 00 */	lwz r4, 0x0(r31)
/* 00004310 000043D4  7F 83 E3 78 */	mr r3, r28
/* 00004314 000043D8  38 A0 FF FF */	li r5, -0x1
/* 00004318 000043DC  4B FF BC E9 */	bl evtSetValue
.L_0000431C:
/* 0000431C 000043E0  BB 81 00 10 */	lmw r28, 0x10(r1)
/* 00004320 000043E4  38 60 00 02 */	li r3, 0x2
/* 00004324 000043E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 00004328 000043EC  7C 08 03 A6 */	mtlr r0
/* 0000432C 000043F0  38 21 00 20 */	addi r1, r1, 0x20
/* 00004330 000043F4  4E 80 00 20 */	blr
.endfn get_gold_chorobon_id

# 0x000028A8..0x00002A20 | size: 0x178
.rodata
.balign 8

# .rodata:0x0 | 0x28A8 | size: 0x15
.obj str_btl_un_gold_chorobon_hei_00008788, local
	.string "btl_un_gold_chorobon"
.endobj str_btl_un_gold_chorobon_hei_00008788

# .rodata:0x15 | 0x28BD | size: 0x3
.obj gap_03_000028BD_rodata, global
.hidden gap_03_000028BD_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000028BD_rodata

# .rodata:0x18 | 0x28C0 | size: 0x1A
.obj str_SFX_BOSS_G_CHORO_DAM_hei_000087a0, local
	.string "SFX_BOSS_G_CHORO_DAMAGED1"
.endobj str_SFX_BOSS_G_CHORO_DAM_hei_000087a0

# .rodata:0x32 | 0x28DA | size: 0x2
.obj gap_03_000028DA_rodata, global
.hidden gap_03_000028DA_rodata
	.2byte 0x0000
.endobj gap_03_000028DA_rodata

# .rodata:0x34 | 0x28DC | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_hei_000087bc, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_hei_000087bc

# .rodata:0x49 | 0x28F1 | size: 0x3
.obj gap_03_000028F1_rodata, global
.hidden gap_03_000028F1_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000028F1_rodata

# .rodata:0x4C | 0x28F4 | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_hei_000087d4, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_hei_000087d4

# .rodata:0x60 | 0x2908 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_hei_000087e8, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_hei_000087e8

# .rodata:0x79 | 0x2921 | size: 0x3
.obj gap_03_00002921_rodata, global
.hidden gap_03_00002921_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002921_rodata

# .rodata:0x7C | 0x2924 | size: 0x8
.obj str_CBN_N_1_hei_00008804, local
	.string "CBN_N_1"
.endobj str_CBN_N_1_hei_00008804

# .rodata:0x84 | 0x292C | size: 0x8
.obj str_CBN_Y_1_hei_0000880c, local
	.string "CBN_Y_1"
.endobj str_CBN_Y_1_hei_0000880c

# .rodata:0x8C | 0x2934 | size: 0x8
.obj str_CBN_K_1_hei_00008814, local
	.string "CBN_K_1"
.endobj str_CBN_K_1_hei_00008814

# .rodata:0x94 | 0x293C | size: 0x8
.obj str_CBN_X_1_hei_0000881c, local
	.string "CBN_X_1"
.endobj str_CBN_X_1_hei_0000881c

# .rodata:0x9C | 0x2944 | size: 0x8
.obj str_CBN_S_1_hei_00008824, local
	.string "CBN_S_1"
.endobj str_CBN_S_1_hei_00008824

# .rodata:0xA4 | 0x294C | size: 0x8
.obj str_CBN_Q_1_hei_0000882c, local
	.string "CBN_Q_1"
.endobj str_CBN_Q_1_hei_0000882c

# .rodata:0xAC | 0x2954 | size: 0x8
.obj str_CBN_D_1_hei_00008834, local
	.string "CBN_D_1"
.endobj str_CBN_D_1_hei_00008834

# .rodata:0xB4 | 0x295C | size: 0x8
.obj str_CBN_A_1_hei_0000883c, local
	.string "CBN_A_1"
.endobj str_CBN_A_1_hei_0000883c

# .rodata:0xBC | 0x2964 | size: 0x8
.obj str_CBN_R_1_hei_00008844, local
	.string "CBN_R_1"
.endobj str_CBN_R_1_hei_00008844

# .rodata:0xC4 | 0x296C | size: 0x8
.obj str_CBN_W_1_hei_0000884c, local
	.string "CBN_W_1"
.endobj str_CBN_W_1_hei_0000884c

# .rodata:0xCC | 0x2974 | size: 0x8
.obj str_CBN_T_1_hei_00008854, local
	.string "CBN_T_1"
.endobj str_CBN_T_1_hei_00008854

# .rodata:0xD4 | 0x297C | size: 0xD
.obj str_c_chorobon_k_hei_0000885c, local
	.string "c_chorobon_k"
.endobj str_c_chorobon_k_hei_0000885c

# .rodata:0xE1 | 0x2989 | size: 0x3
.obj gap_03_00002989_rodata, global
.hidden gap_03_00002989_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00002989_rodata

# .rodata:0xE4 | 0x298C | size: 0x17
.obj str_SFX_BOSS_G_CHORO_MOV_hei_0000886c, local
	.string "SFX_BOSS_G_CHORO_MOVE1"
.endobj str_SFX_BOSS_G_CHORO_MOV_hei_0000886c

# .rodata:0xFB | 0x29A3 | size: 0x1
.obj gap_03_000029A3_rodata, global
.hidden gap_03_000029A3_rodata
	.byte 0x00
.endobj gap_03_000029A3_rodata

# .rodata:0xFC | 0x29A4 | size: 0x17
.obj str_SFX_BOSS_G_CHORO_WAI_hei_00008884, local
	.string "SFX_BOSS_G_CHORO_WAIT2"
.endobj str_SFX_BOSS_G_CHORO_WAI_hei_00008884

# .rodata:0x113 | 0x29BB | size: 0x1
.obj gap_03_000029BB_rodata, global
.hidden gap_03_000029BB_rodata
	.byte 0x00
.endobj gap_03_000029BB_rodata

# .rodata:0x114 | 0x29BC | size: 0x17
.obj str_SFX_BOSS_G_CHORO_WAI_hei_0000889c, local
	.string "SFX_BOSS_G_CHORO_WAIT1"
.endobj str_SFX_BOSS_G_CHORO_WAI_hei_0000889c

# .rodata:0x12B | 0x29D3 | size: 0x1
.obj gap_03_000029D3_rodata, global
.hidden gap_03_000029D3_rodata
	.byte 0x00
.endobj gap_03_000029D3_rodata

# .rodata:0x12C | 0x29D4 | size: 0x19
.obj str_SFX_BOSS_G_CHORO_ATT_hei_000088b4, local
	.string "SFX_BOSS_G_CHORO_ATTACK1"
.endobj str_SFX_BOSS_G_CHORO_ATT_hei_000088b4

# .rodata:0x145 | 0x29ED | size: 0x3
.obj gap_03_000029ED_rodata, global
.hidden gap_03_000029ED_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000029ED_rodata

# .rodata:0x148 | 0x29F0 | size: 0xC
.obj str_stg1_hei_43_hei_000088d0, local
	.string "stg1_hei_43"
.endobj str_stg1_hei_43_hei_000088d0

# .rodata:0x154 | 0x29FC | size: 0x6
.obj str_M_N_7_hei_000088dc, local
	.string "M_N_7"
.endobj str_M_N_7_hei_000088dc

# .rodata:0x15A | 0x2A02 | size: 0x2
.obj gap_03_00002A02_rodata, global
.hidden gap_03_00002A02_rodata
	.2byte 0x0000
.endobj gap_03_00002A02_rodata

# .rodata:0x15C | 0x2A04 | size: 0x1A
.obj str_SFX_BOSS_G_CHORO_LAN_hei_000088e4, local
	.string "SFX_BOSS_G_CHORO_LANDING1"
.endobj str_SFX_BOSS_G_CHORO_LAN_hei_000088e4

# .rodata:0x176 | 0x2A1E | size: 0x2
.obj gap_03_00002A1E_rodata, global
.hidden gap_03_00002A1E_rodata
	.2byte 0x0000
.endobj gap_03_00002A1E_rodata

# 0x000109E8..0x00011CF0 | size: 0x1308
.data
.balign 8

# .data:0x0 | 0x109E8 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x109F0 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x109F4 | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x109F8 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x109FC | size: 0x4
.obj gap_04_000109FC_data, global
.hidden gap_04_000109FC_data
	.4byte 0x00000000
.endobj gap_04_000109FC_data

# .data:0x18 | 0x10A00 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x10A08 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x10A0C | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x10A10 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x10A18 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x10A1C | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x10A20 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x10A24 | size: 0x4
.obj gap_04_00010A24_data, global
.hidden gap_04_00010A24_data
	.4byte 0x00000000
.endobj gap_04_00010A24_data

# .data:0x40 | 0x10A28 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x10A30 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x10A34 | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x10A38 | size: 0xC4
.obj unit_gold_chorobon_11_data_10A38, global
	.4byte 0x00000014
	.4byte str_btl_un_gold_chorobon_hei_00008788
	.4byte 0x000A0000
	.4byte 0x01011B00
	.4byte 0x0A640032
	.4byte 0x0005001C
	.4byte 0x00200005
	.4byte 0x00200000
	.4byte 0x00000000
	.4byte 0x41800000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
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
	.4byte 0x41A66666
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x41800000
	.4byte 0x00000000
	.4byte 0x41E00000
	.4byte 0x42000000
	.4byte 0x00000002
	.4byte 0x64140000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte str_SFX_BOSS_G_CHORO_DAM_hei_000087a0
	.4byte str_SFX_BTL_DAMAGE_FIRE1_hei_000087bc
	.4byte str_SFX_BTL_DAMAGE_ICE1_hei_000087d4
	.4byte str_SFX_BTL_DAMAGE_BIRIB_hei_000087e8
	.4byte 0x00040000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_gold_chorobon_11_data_10A38

# .data:0x114 | 0x10AFC | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x10B01 | size: 0x3
.obj gap_04_00010B01_data, global
.hidden gap_04_00010B01_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00010B01_data

# .data:0x11C | 0x10B04 | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x10B09 | size: 0x3
.obj gap_04_00010B09_data, global
.hidden gap_04_00010B09_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_00010B09_data

# .data:0x124 | 0x10B0C | size: 0x16
.obj regist, local
	.4byte 0x00000064
	.4byte 0x00646400
	.4byte 0x64006400
	.4byte 0x64000000
	.4byte 0x00640064
	.2byte 0x6400
.endobj regist

# .data:0x13A | 0x10B22 | size: 0x2
.obj gap_04_00010B22_data, global
.hidden gap_04_00010B22_data
	.2byte 0x0000
.endobj gap_04_00010B22_data

# .data:0x13C | 0x10B24 | size: 0x90
.obj pose_table, local
	.4byte 0x00000001
	.4byte str_CBN_N_1_hei_00008804
	.4byte 0x00000002
	.4byte str_CBN_Y_1_hei_0000880c
	.4byte 0x00000009
	.4byte str_CBN_Y_1_hei_0000880c
	.4byte 0x00000005
	.4byte str_CBN_K_1_hei_00008814
	.4byte 0x00000004
	.4byte str_CBN_X_1_hei_0000881c
	.4byte 0x00000003
	.4byte str_CBN_X_1_hei_0000881c
	.4byte 0x0000001C
	.4byte str_CBN_S_1_hei_00008824
	.4byte 0x0000001D
	.4byte str_CBN_Q_1_hei_0000882c
	.4byte 0x0000001E
	.4byte str_CBN_Q_1_hei_0000882c
	.4byte 0x0000001F
	.4byte str_CBN_S_1_hei_00008824
	.4byte 0x00000027
	.4byte str_CBN_D_1_hei_00008834
	.4byte 0x00000032
	.4byte str_CBN_A_1_hei_0000883c
	.4byte 0x0000002A
	.4byte str_CBN_R_1_hei_00008844
	.4byte 0x00000028
	.4byte str_CBN_W_1_hei_0000884c
	.4byte 0x00000038
	.4byte str_CBN_X_1_hei_0000881c
	.4byte 0x00000039
	.4byte str_CBN_X_1_hei_0000881c
	.4byte 0x00000041
	.4byte str_CBN_T_1_hei_00008854
	.4byte 0x00000045
	.4byte str_CBN_S_1_hei_00008824
.endobj pose_table

# .data:0x1CC | 0x10BB4 | size: 0x78
.obj data_table, local
	.4byte 0x00000018
	.4byte counter_damage_event
	.4byte 0x0000001A
	.4byte counter_damage_event
	.4byte 0x00000019
	.4byte counter_damage_event
	.4byte 0x0000001B
	.4byte counter_damage_event
	.4byte 0x0000001C
	.4byte counter_damage_event
	.4byte 0x0000001D
	.4byte counter_damage_event
	.4byte 0x0000001E
	.4byte counter_damage_event
	.4byte 0x0000001F
	.4byte counter_damage_event
	.4byte 0x00000020
	.4byte counter_damage_event
	.4byte 0x00000021
	.4byte counter_damage_event
	.4byte 0x00000022
	.4byte counter_damage_event
	.4byte 0x00000023
	.4byte counter_damage_event
	.4byte 0x00000024
	.4byte counter_damage_event
	.4byte 0x00000030
	.4byte btldefaultevt_Dummy
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x244 | 0x10C2C | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_gold_chorobon_hei_00008788
	.4byte str_c_chorobon_k_hei_0000885c
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
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte pose_table
.endobj parts

# .data:0x290 | 0x10C78 | size: 0xC0
.obj weapon_gold_chorobon_attack, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x64000001
	.4byte 0x3F800000
	.4byte 0x01010101
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
	.4byte 0x01101260
	.4byte 0x20001000
	.4byte 0x00000302
	.4byte 0x00000000
	.4byte 0x00005007
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
.endobj weapon_gold_chorobon_attack

# .data:0x350 | 0x10D38 | size: 0x50
.obj pose_sound_timing_table, local
	.4byte str_CBN_S_1_hei_00008824
	.4byte 0x3F155555
	.4byte 0x00000000
	.4byte str_SFX_BOSS_G_CHORO_MOV_hei_0000886c
	.4byte 0x00000001
	.4byte str_CBN_S_1_hei_00008824
	.4byte 0x3F555555
	.4byte 0x00000000
	.4byte str_SFX_BOSS_G_CHORO_WAI_hei_00008884
	.4byte 0x00000001
	.4byte str_CBN_S_1_hei_00008824
	.4byte 0x3FCAAAAB
	.4byte 0x00000000
	.4byte str_SFX_BOSS_G_CHORO_WAI_hei_0000889c
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000001
.endobj pose_sound_timing_table

# .data:0x3A0 | 0x10D88 | size: 0x1EC
.obj gold_chorobon_rabbit_move, local
	.4byte 0x00010005
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte btlevtcmd_AddScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7B23
	.4byte 0xF24A798B
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010003
	.4byte 0x00000000
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0xFE363C85
	.4byte 0x00020036
	.4byte 0xFE363C8B
	.4byte 0xFE363C80
	.4byte 0x00020032
	.4byte 0xFE363C8C
	.4byte 0xFE363C8B
	.4byte 0x0002001A
	.4byte 0xFE363C8C
	.4byte 0x00000000
	.4byte 0x00020037
	.4byte 0xFE363C8C
	.4byte 0xFFFFFFFF
	.4byte 0x00000021
	.4byte 0x0002001B
	.4byte 0xFE363C8C
	.4byte 0xFE363C88
	.4byte 0x0002001D
	.4byte 0xFE363C8B
	.4byte 0x00000000
	.4byte 0x00020035
	.4byte 0xFE363C80
	.4byte 0xFE363C88
	.4byte 0x00000020
	.4byte 0x00020036
	.4byte 0xFE363C80
	.4byte 0xFE363C88
	.4byte 0x00000021
	.4byte 0x0005005B
	.4byte btlevtcmd_SetScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C86
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x00010005
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte btlevtcmd_AddScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7B23
	.4byte 0xF24A798B
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010004
	.4byte 0x00000000
	.4byte 0x00000020
	.4byte 0x0005005B
	.4byte btlevtcmd_SetScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0006005B
	.4byte btlevtcmd_snd_se
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_G_CHORO_ATT_hei_000088b4
	.4byte 0xF1194D80
	.4byte 0x00000000
	.4byte 0xF1194D80
	.4byte 0x00010005
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte btlevtcmd_AddScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7B23
	.4byte 0xF24A798B
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000021
	.4byte 0x00010005
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte btlevtcmd_AddScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A79DD
	.4byte 0xF24A7B75
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00000002
	.4byte 0x00000001
.endobj gold_chorobon_rabbit_move

# .data:0x58C | 0x10F74 | size: 0x30
.obj entry_chorogun, local
	.4byte unit_chorobon_gundan_11_data_10028
	.4byte 0x01000000
	.4byte 0x04000004
	.4byte 0x42960000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
.endobj entry_chorogun

# .data:0x5BC | 0x10FA4 | size: 0x10C
.obj call_chorogun_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_CBN_S_1_hei_00008824
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_btl_camera_set_prilimit
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000001
	.4byte 0x00000003
	.4byte 0x000A005B
	.4byte evt_btl_camera_set_moveto
	.4byte 0x00000001
	.4byte 0x00000078
	.4byte 0x00000028
	.4byte 0x000000C8
	.4byte 0x00000078
	.4byte 0xFFFFFFF6
	.4byte 0xFFFFFE0C
	.4byte 0x0000001E
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x0000003C
	.4byte 0x0001005B
	.4byte btlevtcmd_reset_move_color_lv_all
	.4byte 0x0005005B
	.4byte evt_msg_print
	.4byte 0x00000002
	.4byte str_stg1_hei_43_hei_000088d0
	.4byte 0x00000000
	.4byte 0xFFFFFFFE
	.4byte 0x0002005B
	.4byte btlevtcmd_StatusWindowOnOff
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000001
	.4byte 0x00000000
	.4byte 0x0002005B
	.4byte evt_btl_camera_set_prilimit
	.4byte 0x00000000
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0000006E
	.4byte 0x0001000A
	.4byte 0x000001F4
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFD
	.4byte 0x00000001
	.4byte str_M_N_7_hei_000088dc
	.4byte 0x00000070
	.4byte 0x0001005B
	.4byte chorogun_appear_11_text_2FD4
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFD
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj call_chorogun_event

# .data:0x6C8 | 0x110B0 | size: 0xC8
.obj escape_chorogun_event_11_data_110B0, global
	.4byte 0x0001000A
	.4byte 0x000007D0
	.4byte 0x0002005B
	.4byte get_gold_chorobon_id
	.4byte 0xFE363C84
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitId
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0xFFFFFFFF
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFE363C84
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000021
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFE363C84
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitId
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C8A
	.4byte 0x0001005E
	.4byte unk_evt_hei_00019ea8_11_data_102A8
	.4byte 0x0001005B
	.4byte chorogun_escape_all_11_text_297C
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFE363C84
	.4byte 0x00000002
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte btlevtcmd_KillUnit
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x00000001
.endobj escape_chorogun_event_11_data_110B0

# .data:0x790 | 0x11178 | size: 0xAC
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
	.4byte btldefaultevt_Confuse
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x0001005E
	.4byte chorogun_entry_11_data_10998
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
	.4byte btlevtcmd_AnimeSetPoseSoundTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte pose_sound_timing_table
	.4byte 0x0004005B
	.4byte btlevtcmd_SetJumpSound
	.4byte 0xFFFFFFFE
	.4byte str_SFX_BOSS_G_CHORO_MOV_hei_0000886c
	.4byte str_SFX_BOSS_G_CHORO_LAN_hei_000088e4
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x83C | 0x11224 | size: 0x20C
.obj damage_event, local
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C80
	.4byte 0x0003005B
	.4byte btlevtcmd_GetUnitId
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0x00020019
	.4byte 0xFE363C81
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckDamageCode
	.4byte 0xFFFFFFFE
	.4byte 0x00000200
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_CheckDamageCode
	.4byte 0xFFFFFFFE
	.4byte 0x00000800
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020019
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitAttackEnd
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C8A
	.4byte 0x0001005E
	.4byte unk_evt_hei_00019ea8_11_data_102A8
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x0001005B
	.4byte chorogun_escape_all_11_text_297C
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C83
	.4byte 0x0003005B
	.4byte btlevtcmd_KillUnit
	.4byte 0xFE363C83
	.4byte 0x00000000
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x0001005E
	.4byte btldefaultevt_Damage
	.4byte 0x0004005B
	.4byte btlevtcmd_GetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xFE363C80
	.4byte 0x00020018
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0002001C
	.4byte 0xFE363C80
	.4byte 0x00000007
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005B
	.4byte btlevtcmd_WaitAttackEnd
	.4byte 0x0004005B
	.4byte btlevtcmd_SpawnUnit
	.4byte 0xFE363C83
	.4byte entry_chorogun
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0xFE363C83
	.4byte 0x0001005E
	.4byte call_chorogun_event
	.4byte 0x0004005B
	.4byte btlevtcmd_SetUnitWork
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00010004
	.4byte 0x00000063
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00000021
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x00000002
	.4byte 0x00000001
.endobj damage_event

# .data:0xA48 | 0x11430 | size: 0x78
.obj counter_damage_event, local
	.4byte 0x0005005B
	.4byte btlevtcmd_SetScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0x00020032
	.4byte 0xFE363C8A
	.4byte 0xFFFFFFFE
	.4byte 0x00020032
	.4byte 0xFE363C8B
	.4byte 0x00000001
	.4byte 0x0003005B
	.4byte btlevtcmd_GetDamageCode
	.4byte 0xFE363C8A
	.4byte 0xFE363C80
	.4byte 0x0001005E
	.4byte subsetevt_counter_damage
	.4byte 0x0003005B
	.4byte btlevtcmd_GetHp
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0002001D
	.4byte 0xFE363C80
	.4byte 0x00000001
	.4byte 0x0001005E
	.4byte return_event
	.4byte 0x00000021
	.4byte 0x00000002
	.4byte 0x00000001
.endobj counter_damage_event

# .data:0xAC0 | 0x114A8 | size: 0x60
.obj return_event, local
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x0000002A
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xF24A8A80
	.4byte 0xF24A7CE6
	.4byte 0x0005005B
	.4byte btlevtcmd_GetHomePos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0x00000028
	.4byte 0x0001005E
	.4byte gold_chorobon_rabbit_move
	.4byte 0x00000002
	.4byte 0x00000001
.endobj return_event

# .data:0xB20 | 0x11508 | size: 0x7D0
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
	.4byte 0x0003005B
	.4byte btlevtcmd_GetEnemyBelong
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x0004005B
	.4byte btlevtcmd_SamplingEnemy
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte weapon_gold_chorobon_attack
	.4byte 0x0004005B
	.4byte btlevtcmd_ChoiceSamplingEnemy
	.4byte weapon_gold_chorobon_attack
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
	.4byte weapon_gold_chorobon_attack
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
	.4byte weapon_gold_chorobon_attack
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
	.4byte 0x00000064
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePoseType
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000028
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xF24A8A80
	.4byte 0xF24A7CE6
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C85
	.4byte 0xFE363C86
	.4byte 0xFE363C87
	.4byte 0x00020032
	.4byte 0xFE363C86
	.4byte 0x00000000
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionAdd
	.4byte 0xFE363C83
	.4byte 0xFE363C85
	.4byte 0x00000032
	.4byte 0x00020032
	.4byte 0xFE363C88
	.4byte 0x00000032
	.4byte 0x0001005E
	.4byte gold_chorobon_rabbit_move
	.4byte 0x00010009
	.4byte 0x00000014
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
	.4byte 0x00000028
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x0000003C
	.4byte 0x00000000
	.4byte 0xF24A7D4C
	.4byte 0x0006005B
	.4byte btlevtcmd_GetHitPos
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020036
	.4byte 0xFE363C82
	.4byte 0x00000002
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0xFFFFFFFF
	.4byte 0x0007005B
	.4byte btlevtcmd_PreCheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_gold_chorobon_attack
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
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xF24A8680
	.4byte 0xF24A7B4C
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x00000005
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0005005B
	.4byte btlevtcmd_JumpSetting
	.4byte 0xFFFFFFFE
	.4byte 0x00000000
	.4byte 0xF24A8080
	.4byte 0xF24A7B4C
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFE363C83
	.4byte 0xFE363C80
	.4byte 0x0000001E
	.4byte 0x00020032
	.4byte 0xFE363C81
	.4byte 0x00000000
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000000
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_CBN_N_1_hei_00008804
	.4byte 0x0001000A
	.4byte 0x000003E8
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x0000005B
	.4byte 0x00010005
	.4byte 0x00000004
	.4byte 0x0005005B
	.4byte btlevtcmd_AddScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7AD1
	.4byte 0xF24A7A06
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
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
	.4byte weapon_gold_chorobon_attack
	.4byte 0x0007005B
	.4byte btlevtcmd_CheckDamage
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C83
	.4byte 0xFE363C84
	.4byte weapon_gold_chorobon_attack
	.4byte 0x00000100
	.4byte 0xFE363C85
	.4byte 0x00010005
	.4byte 0x00000004
	.4byte 0x0005005B
	.4byte btlevtcmd_AddScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7A2F
	.4byte 0xF24A7AFA
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000028
	.4byte 0x0003005B
	.4byte btlevtcmd_SetFallAccel
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7D4C
	.4byte 0x0005005B
	.4byte btlevtcmd_SetScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000014
	.4byte 0xFFFFFFFF
	.4byte 0x00010005
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte btlevtcmd_AddScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7B23
	.4byte 0xF24A798B
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x0004005B
	.4byte btlevtcmd_FaceDirectionSub
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000014
	.4byte 0x0005005B
	.4byte btlevtcmd_SetScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x0000000A
	.4byte 0xFFFFFFFF
	.4byte 0x00010005
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte btlevtcmd_AddScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7B23
	.4byte 0xF24A798B
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010005
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte btlevtcmd_AddScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A79DD
	.4byte 0xF24A7B75
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010005
	.4byte 0x00000002
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_CBN_A_1_hei_0000883c
	.4byte 0x0005005B
	.4byte btlevtcmd_GetPos
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00020035
	.4byte 0xFE363C81
	.4byte 0x0000001E
	.4byte 0x0005005B
	.4byte btlevtcmd_SetScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0xF24A7E80
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0xFE363C81
	.4byte 0xFE363C82
	.4byte 0x00000006
	.4byte 0xFFFFFFFF
	.4byte 0x00010009
	.4byte 0x00000010
	.4byte 0x0007005B
	.4byte btlevtcmd_JumpPosition
	.4byte 0xFFFFFFFE
	.4byte 0xFE363C80
	.4byte 0x00000000
	.4byte 0xFE363C82
	.4byte 0x00000006
	.4byte 0xFFFFFFFF
	.4byte 0x0004005B
	.4byte btlevtcmd_AnimeChangePose
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte str_CBN_S_1_hei_00008824
	.4byte 0x0005005B
	.4byte btlevtcmd_AddScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7B23
	.4byte 0xF24A798B
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x0005005B
	.4byte btlevtcmd_AddScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A7B23
	.4byte 0xF24A798B
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010005
	.4byte 0x00000002
	.4byte 0x0005005B
	.4byte btlevtcmd_AddScale
	.4byte 0xFFFFFFFE
	.4byte 0xF24A79DD
	.4byte 0xF24A7B75
	.4byte 0x00000000
	.4byte 0x00010009
	.4byte 0x00000001
	.4byte 0x00000006
	.4byte 0x00010009
	.4byte 0x0000000A
	.4byte 0x00010004
	.4byte 0x00000062
	.4byte 0x00010003
	.4byte 0x00000062
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_mode
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000002
	.4byte 0x0003005B
	.4byte evt_btl_camera_nomove_y_onoff
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0001005E
	.4byte return_event
	.4byte 0x0003005B
	.4byte evt_btl_camera_set_moveSpeedLv
	.4byte 0x00000000
	.4byte 0x00000001
	.4byte 0x00010003
	.4byte 0x00000063
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x12F0 | 0x11CD8 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event
