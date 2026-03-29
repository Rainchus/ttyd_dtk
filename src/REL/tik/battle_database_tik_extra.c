#include "evt.h"
#include "evt_functions.h"
#include "common_structs.h"
#include "game/battle.h"

/* External symbol declarations */
extern BattleUnitKind unit_tik_white_gabon;
extern BattleUnitKind unit_tik_gabon;
extern BattleUnitKind unit_tik_gabon_during_frankli_lecture;
extern BattleUnitKind unit_kuriboo_24_data_1CDA8;
extern BattleUnitKind unit_togekuri_24_data_23200;
extern BattleUnitKind unit_patakuri_24_data_21B48;
extern BattleUnitKind unit_lecture_frankli_kuriboo_24_data_2FF60;

extern ItemDropData battle_item_kurikuri[];
extern ItemDropData battle_item_togekuri[];
extern ItemDropData battle_item_patakuri[];

BattleUnitSetup btlparty_tik_tik_01_01_off_1[] = {
    {
    /* unit_kind_params */  &unit_kuriboo_24_data_1CDA8,
    /* ally_status */       1,
    /* 0x05 */              { 0, 0, 0 },
    /* attack_phase */      0x04000004,
    /* position */          { 20.0f, 0.0f, -10.0f },
    /* addl_target_offset_x */  0,
    /* battle_unit_work */  { 0, 0, 0, 0 },
    /* item_drop_table */   battle_item_kurikuri,
    },
    {
    /* unit_kind_params */  &unit_togekuri_24_data_23200,
    /* ally_status */       1,
    /* 0x05 */              { 0, 0, 0 },
    /* attack_phase */      0x04000004,
    /* position */          { 60.0f, 0.0f, 0.0f },
    /* addl_target_offset_x */  0,
    /* battle_unit_work */  { 0, 0, 0, 0 },
    /* item_drop_table */   battle_item_togekuri,
    },
    {
    /* unit_kind_params */  &unit_patakuri_24_data_21B48,
    /* ally_status */       1,
    /* 0x05 */              { 0, 0, 0 },
    /* attack_phase */      0x04000004,
    /* position */          { 100.0f, 40.0f, 10.0f },
    /* addl_target_offset_x */  0,
    /* battle_unit_work */  { 0, 0, 0, 0 },
    /* item_drop_table */   battle_item_patakuri,
    },
    {
    /* unit_kind_params */  &unit_lecture_frankli_kuriboo_24_data_2FF60,
    /* ally_status */       1,
    /* 0x05 */              { 0, 0, 0 },
    /* attack_phase */      0x04000004,
    /* position */          { 240.0f, 0.0f, 20.0f },
    /* addl_target_offset_x */  0,
    /* battle_unit_work */  { 0, 0, 0, 0 },
    /* item_drop_table */   NULL,
    },

    //extra entries
    {
    /* unit_kind_params */  &unit_tik_gabon_during_frankli_lecture,
    /* ally_status */       1,
    /* 0x05 */              { 0, 0, 0 },
    /* attack_phase */      0x04000004,
    /* position */          { 240.0f, 0.0f, 30.0f },
    /* addl_target_offset_x */  0,
    /* battle_unit_work */  { 0, 0, 0, 0 },
    /* item_drop_table */   battle_item_kurikuri,
    },
    // {
    // /* unit_kind_params */  &unit_tik_white_gabon,
    // /* ally_status */       1,
    // /* 0x05 */              { 0, 0, 0 },
    // /* attack_phase */      0x04000004,
    // /* position */          { 180.0f, 0.0f, 30.0f },
    // /* addl_target_offset_x */  0,
    // /* battle_unit_work */  { 0, 0, 0, 0 },
    // /* item_drop_table */   battle_item_kurikuri,
    // },
};

extern PointDropData battle_heart_drop_param_default[];
extern PointDropData battle_flower_drop_param_default[];

BattleGroupSetup btlgrp_tik_tik_01_01_off_1 = {
    ARRAY_COUNT(btlparty_tik_tik_01_01_off_1),
    btlparty_tik_tik_01_01_off_1,
    0,
    0,
    100,
    battle_heart_drop_param_default,
    battle_flower_drop_param_default,
    5,
};
