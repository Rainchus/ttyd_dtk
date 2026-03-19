.include "macros.inc"
.file "unit_act_kinopiko.o"

# 0x00001940..0x000019F0 | size: 0xB0
.rodata
.balign 8

# .rodata:0x0 | 0x1940 | size: 0x14
.obj str_btl_un_act_kinopiko_nok_000023a0, local
	.string "btl_un_act_kinopiko"
.endobj str_btl_un_act_kinopiko_nok_000023a0

# .rodata:0x14 | 0x1954 | size: 0x10
.obj str_SFX_BTL_DAMAGE1_nok_000023b4, local
	.string "SFX_BTL_DAMAGE1"
.endobj str_SFX_BTL_DAMAGE1_nok_000023b4

# .rodata:0x24 | 0x1964 | size: 0x15
.obj str_SFX_BTL_DAMAGE_FIRE1_nok_000023c4, local
	.string "SFX_BTL_DAMAGE_FIRE1"
.endobj str_SFX_BTL_DAMAGE_FIRE1_nok_000023c4

# .rodata:0x39 | 0x1979 | size: 0x3
.obj gap_03_00001979_rodata, global
.hidden gap_03_00001979_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_00001979_rodata

# .rodata:0x3C | 0x197C | size: 0x14
.obj str_SFX_BTL_DAMAGE_ICE1_nok_000023dc, local
	.string "SFX_BTL_DAMAGE_ICE1"
.endobj str_SFX_BTL_DAMAGE_ICE1_nok_000023dc

# .rodata:0x50 | 0x1990 | size: 0x19
.obj str_SFX_BTL_DAMAGE_BIRIB_nok_000023f0, local
	.string "SFX_BTL_DAMAGE_BIRIBIRI1"
.endobj str_SFX_BTL_DAMAGE_BIRIB_nok_000023f0

# .rodata:0x69 | 0x19A9 | size: 0x3
.obj gap_03_000019A9_rodata, global
.hidden gap_03_000019A9_rodata
	.byte 0x00, 0x00, 0x00
.endobj gap_03_000019A9_rodata

# .rodata:0x6C | 0x19AC | size: 0x8
.obj str_KNF_S_1_nok_0000240c, local
	.string "KNF_S_1"
.endobj str_KNF_S_1_nok_0000240c

# .rodata:0x74 | 0x19B4 | size: 0x8
.obj str_KNF_D_1_nok_00002414, local
	.string "KNF_D_1"
.endobj str_KNF_D_1_nok_00002414

# .rodata:0x7C | 0x19BC | size: 0x8
.obj str_KNF_R_1_nok_0000241c, local
	.string "KNF_R_1"
.endobj str_KNF_R_1_nok_0000241c

# .rodata:0x84 | 0x19C4 | size: 0x8
.obj str_KNF_W_1_nok_00002424, local
	.string "KNF_W_1"
.endobj str_KNF_W_1_nok_00002424

# .rodata:0x8C | 0x19CC | size: 0x8
.obj str_KNF_T_1_nok_0000242c, local
	.string "KNF_T_1"
.endobj str_KNF_T_1_nok_0000242c

# .rodata:0x94 | 0x19D4 | size: 0xE
.obj str_btl_un_teresa_nok_00002434, local
	.string "btl_un_teresa"
.endobj str_btl_un_teresa_nok_00002434

# .rodata:0xA2 | 0x19E2 | size: 0x2
.obj gap_03_000019E2_rodata, global
.hidden gap_03_000019E2_rodata
	.2byte 0x0000
.endobj gap_03_000019E2_rodata

# .rodata:0xA4 | 0x19E4 | size: 0xB
.obj str_c_kinopiko_nok_00002444, local
	.string "c_kinopiko"
.endobj str_c_kinopiko_nok_00002444

# .rodata:0xAF | 0x19EF | size: 0x1
.obj gap_03_000019EF_rodata, global
.hidden gap_03_000019EF_rodata
	.byte 0x00
.endobj gap_03_000019EF_rodata

# 0x000076C0..0x000078E0 | size: 0x220
.data
.balign 8

# .data:0x0 | 0x76C0 | size: 0x8
.obj negone_one$374, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$374

# .data:0x8 | 0x76C8 | size: 0x4
.obj neg_one$382, local
	.4byte 0xBF800000
.endobj neg_one$382

# .data:0xC | 0x76CC | size: 0x4
.obj __local_PI$383, local
	.4byte 0x40490FDB
.endobj __local_PI$383

# .data:0x10 | 0x76D0 | size: 0x4
.obj __local_3PIO2$385, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$385

# .data:0x14 | 0x76D4 | size: 0x4
.obj gap_04_000076D4_data, global
.hidden gap_04_000076D4_data
	.4byte 0x00000000
.endobj gap_04_000076D4_data

# .data:0x18 | 0x76D8 | size: 0x8
.obj one_negone$373, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$373

# .data:0x20 | 0x76E0 | size: 0x4
.obj __local_PIO2$384, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$384

# .data:0x24 | 0x76E4 | size: 0x4
.obj one$381, local
	.4byte 0x3F800000
.endobj one$381

# .data:0x28 | 0x76E8 | size: 0x8
.obj negone_one$360, local
	.4byte 0xBF800000
	.4byte 0x3F800000
.endobj negone_one$360

# .data:0x30 | 0x76F0 | size: 0x4
.obj neg_one$365, local
	.4byte 0xBF800000
.endobj neg_one$365

# .data:0x34 | 0x76F4 | size: 0x4
.obj __local_PI$366, local
	.4byte 0x40490FDB
.endobj __local_PI$366

# .data:0x38 | 0x76F8 | size: 0x4
.obj __local_3PIO2$368, local
	.4byte 0x4096CBE4
.endobj __local_3PIO2$368

# .data:0x3C | 0x76FC | size: 0x4
.obj gap_04_000076FC_data, global
.hidden gap_04_000076FC_data
	.4byte 0x00000000
.endobj gap_04_000076FC_data

# .data:0x40 | 0x7700 | size: 0x8
.obj one_negone$359, local
	.4byte 0x3F800000
	.4byte 0xBF800000
.endobj one_negone$359

# .data:0x48 | 0x7708 | size: 0x4
.obj __local_PIO2$367, local
	.4byte 0x3FC90FDB
.endobj __local_PIO2$367

# .data:0x4C | 0x770C | size: 0x4
.obj one$364, local
	.4byte 0x3F800000
.endobj one$364

# .data:0x50 | 0x7710 | size: 0xC4
.obj unit_act_kinopiko_20_data_7710, global
	.4byte 0x000000BA
	.4byte str_btl_un_act_kinopiko_nok_000023a0
	.4byte 0x000A0000
	.4byte 0x01010100
	.4byte 0x00000064
	.4byte 0x0009001C
	.4byte 0x00180005
	.4byte 0x00190000
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
	.4byte str_SFX_BTL_DAMAGE1_nok_000023b4
	.4byte str_SFX_BTL_DAMAGE_FIRE1_nok_000023c4
	.4byte str_SFX_BTL_DAMAGE_ICE1_nok_000023dc
	.4byte str_SFX_BTL_DAMAGE_BIRIB_nok_000023f0
	.4byte 0x00000000
	.4byte regist
	.4byte 0x01000000
	.4byte parts
	.4byte init_event
	.4byte data_table
.endobj unit_act_kinopiko_20_data_7710

# .data:0x114 | 0x77D4 | size: 0x5
.obj defence, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence

# .data:0x119 | 0x77D9 | size: 0x3
.obj gap_04_000077D9_data, global
.hidden gap_04_000077D9_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_000077D9_data

# .data:0x11C | 0x77DC | size: 0x5
.obj defence_attr, local
	.4byte 0x00000000
	.byte 0x00
.endobj defence_attr

# .data:0x121 | 0x77E1 | size: 0x3
.obj gap_04_000077E1_data, global
.hidden gap_04_000077E1_data
	.byte 0x00, 0x00, 0x00
.endobj gap_04_000077E1_data

# .data:0x124 | 0x77E4 | size: 0x16
.obj regist, local
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.2byte 0x0000
.endobj regist

# .data:0x13A | 0x77FA | size: 0x2
.obj gap_04_000077FA_data, global
.hidden gap_04_000077FA_data
	.2byte 0x0000
.endobj gap_04_000077FA_data

# .data:0x13C | 0x77FC | size: 0x38
.obj pose_table, local
	.4byte 0x0000001C
	.4byte str_KNF_S_1_nok_0000240c
	.4byte 0x0000001F
	.4byte str_KNF_S_1_nok_0000240c
	.4byte 0x00000027
	.4byte str_KNF_D_1_nok_00002414
	.4byte 0x0000002A
	.4byte str_KNF_R_1_nok_0000241c
	.4byte 0x00000028
	.4byte str_KNF_W_1_nok_00002424
	.4byte 0x00000041
	.4byte str_KNF_T_1_nok_0000242c
	.4byte 0x00000045
	.4byte str_KNF_S_1_nok_0000240c
.endobj pose_table

# .data:0x174 | 0x7834 | size: 0x8
.obj data_table, local
	.4byte 0x00000000
	.4byte 0x00000000
.endobj data_table

# .data:0x17C | 0x783C | size: 0x4C
.obj parts, local
	.4byte 0x00000001
	.4byte str_btl_un_teresa_nok_00002434
	.4byte str_c_kinopiko_nok_00002444
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
	.4byte 0x00000009
	.4byte 0x00000000
	.4byte pose_table
.endobj parts

# .data:0x1C8 | 0x7888 | size: 0x24
.obj init_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_SetEventWait
	.4byte 0xFFFFFFFE
	.4byte wait_event
	.4byte 0x0002005B
	.4byte btlevtcmd_StartWaitEvent
	.4byte 0xFFFFFFFE
	.4byte 0x00000002
	.4byte 0x00000001
.endobj init_event

# .data:0x1EC | 0x78AC | size: 0x8
.obj damage_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj damage_event

# .data:0x1F4 | 0x78B4 | size: 0x8
.obj phase_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj phase_event

# .data:0x1FC | 0x78BC | size: 0x8
.obj attack_event, local
	.4byte 0x00000002
	.4byte 0x00000001
.endobj attack_event

# .data:0x204 | 0x78C4 | size: 0x18
.obj wait_event, local
	.4byte 0x0003005B
	.4byte btlevtcmd_AnimeChangePoseFromTable
	.4byte 0xFFFFFFFE
	.4byte 0x00000001
	.4byte 0x00000002
	.4byte 0x00000001
.endobj wait_event

# .data:0x21C | 0x78DC | size: 0x4
.obj gap_04_000078DC_data, global
.hidden gap_04_000078DC_data
	.4byte 0x00000000
.endobj gap_04_000078DC_data
