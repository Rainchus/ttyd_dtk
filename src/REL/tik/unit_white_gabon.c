#include "common_structs.h"
#include "evt.h"
#include "evt_functions.h"
#include "game/battle.h"

void btlevtcmd_get_turn(void);
void evt_eff64(void);
void btlevtcmd_SetUnitWork(void);
void btlevtcmd_AnimeChangePoseFromTable(void);
void btlevtcmd_check_battleflag(void);
void btlevtcmd_GetFirstAttackTarget(void);
void btlevtcmd_GetEnemyBelong(void);
void btlevtcmd_SamplingEnemy(void);
void btlevtcmd_ChoiceSamplingEnemy(void);
void btlevtcmd_CheckToken(void);
void btlevtcmd_EnemyItemUseCheck(void);
void btlevtcmd_StartWaitEvent(void);
void btlevtcmd_RunDataEventChild(void);
void evt_btl_camera_set_homing_unitparts(void);
void evt_sub_random(void);
void btlevtcmd_DrawLots(void);
void btlevtcmd_JumpSetting(void);
void evt_btl_camera_set_mode(void);
void evt_btl_camera_set_homing_unit(void);
void evt_btl_camera_set_moveSpeedLv(void);
void evt_btl_camera_set_zoom(void);
void btlevtcmd_WeaponAftereffect(void);
void btlevtcmd_AttackDeclare(void);
void btlevtcmd_WaitGuardMove(void);
void btlevtcmd_PayWeaponCost(void);
void btlevtcmd_AnimeChangePoseType(void);
void btlevtcmd_GetPos(void);
void btlevtcmd_FaceDirectionAdd(void);
void btlevtcmd_CalculateFaceDirection(void);
void btlevtcmd_ChangeFaceDirection(void);
void btlevtcmd_SetMoveSpeed(void);
void btlevtcmd_MovePosition(void);
void btlevtcmd_AnimeChangePoseType(void);
void btlevtcmd_CalculateFaceDirection(void);
void btlevtcmd_ChangeFaceDirection(void);
void evt_btl_camera_nomove_y_onoff(void);
void btlevtcmd_GetPosFloat(void);
void krb_get_dir(void);
void _krb_get_dir_tik_kuribo(void);
void btlevtcmd_AddScale(void);
void btlevtcmd_SetRotate(void);
void btlevtcmd_AnimeChangePose(void);
void btlevtcmd_GetUnitWork(void);
extern void btlevtcmd_CheckDamage(void);
extern void btlevtcmd_FaceDirectionSub(void);
extern void btlevtcmd_GetHitPos(void);
extern void btlevtcmd_GetHomePos(void);
extern void btlevtcmd_JumpContinue(void);
extern void btlevtcmd_JumpPosition(void);
extern void btlevtcmd_MoveDirectionAdd(void);
extern void btlevtcmd_PreCheckDamage(void);
extern void btlevtcmd_ResetFaceDirection(void);
extern void btlevtcmd_ResultACDefence(void);
extern void btlevtcmd_SetMoveSoundDataWork(void);
extern void btlevtcmd_StartAvoid(void);
extern void btlevtcmd_snd_se(void);
extern void evt_btl_camera_add_zoom(void);
extern void evt_btl_camera_shake_h(void);
extern void btlevtcmd_SetEventAttack(void);
extern void btlevtcmd_SetEventConfusion(void);
extern void btlevtcmd_SetEventDamage(void);
extern void btlevtcmd_SetEventWait(void);
extern void btlevtcmd_SetJumpSound(void);
extern void btlevtcmd_SetRunSound(void);
extern void btlevtcmd_SetWalkSound(void);
void btlevtcmd_GetSelectEnemy(void);
void btlevtcmd_CommandGetWeaponAddress(void);
void btlevtcmd_CommandPayWeaponCost(void);
void btlevtcmd_AcGetDifficulty(void);
void btlevtcmd_AcSetParamAll(void);
void btlevtcmd_AcSetFlag(void);
void btlevtcmd_GetStatusMg(void);
void btlevtcmd_GetHeight(void);
void btlevtcmd_GetBodyId(void);
void btlevtcmd_AnimeChangePose(void);  // already declared, skip
void btlevtcmd_ftof(void);
void btlevtcmd_WaitEventEnd(void);
void btlevtcmd_AnnounceMessage(void);
void evt_eff(void);
void evt_snd_sfxon_3d(void);
void evt_audience_acrobat_notry(void);
void _set_hustle(void);

// AC/audience functions (kept from Goombella)
extern void btlevtcmd_AcSetDifficulty(void);
extern void btlevtcmd_SetupAC(void);
extern void btlevtcmd_StartAC(void);
extern void btlevtcmd_StopAC(void);
extern void btlevtcmd_ResultAC(void);
extern void btlevtcmd_GetResultAC(void);
extern void btlevtcmd_GetResultCountAC(void);
extern void btlevtcmd_ACRStart(void);
extern void btlevtcmd_ACRGetResult(void);
extern void btlevtcmd_AudienceDeclareACResult(void);
extern void btlevtcmd_AudienceDeclareAcrobatResult(void);
extern void btlevtcmd_ACSuccessEffect(void);
extern void btlevtcmd_ac_timing_flag_onoff(void);
extern void btlevtcmd_ac_timing_get_success_frame(void);
extern void btlevtcmd_GetResultPrizeLv(void);
extern void btlevtcmd_InviteApInfoReport(void);
extern void btlevtcmd_SetScale(void);
extern void btlevtcmd_SetFallAccel(void);
extern void btlevtcmd_GetFaceDirection(void);
extern void btlevtcmd_AddRotate(void);
extern void btlevtcmd_GetRotate(void);
extern void btlevtcmd_SetRotateOffset(void);
extern void btlevtcmd_MarioJumpPosition(void);
extern void btlevtcmd_MarioJumpParam(void);
extern void btlevtcmd_GetTakeoffPosition(void);
extern void btlevtcmd_GetMoveFrame(void);
extern void btlevtcmd_CommandGetWeaponActionLv(void);
extern void evt_audience_ap_recovery(void);
 
extern EvtScript btldefaultevt_Damage;
extern EvtScript subsetevt_confuse_flustered;

static Defenses defence = {
    0,
    0,
    0,
    0,
    0,
};

static DefensesAttr defence_attr = {
    0,
    0,
    0,
    0,
    0,
};

extern EvtScript btldefaultevt_Dummy;

//?
static DataTable data_table = {
    0x30,
    btldefaultevt_Dummy,
    0,
    0
};

// static PoseTable pose_table[] = {
//     {1, "d_luigi_Z_1"},
//     {28, "d_luigi_S_1"},
//     {3, "d_luigi_S_2"},
//     {4, "d_luigi_S_3"},
//     {5, "d_luigi_W_1"},
//     {6, "d_luigi_R_1"},
//     {7, "d_luigi_T_1"},
//     {8, "d_luigi_T_2"},
//     {9, "d_luigi_T_3A"},
//     {10, "d_luigi_T_3B"},
//     {11, "d_luigi_T_3C"},
//     {12, "d_luigi_T_3D"},
//     {13, "d_luigi_T_4"},
//     {14, "d_luigi_T_5A"},
//     {15, "d_luigi_T_5B"},
//     {16, "d_luigi_T_5C"},
//     {17, "d_luigi_T_5D"},
//     {18, "d_luigi_T_6"},
//     {19, "d_luigi_E_1"},
//     {20, "d_luigi_E_2"},
//     {21, "d_luigi_E_3"},
//     {22, "d_luigi_E_4"},
//     {23, "d_luigi_E_5"},
//     {24, "d_luigi_J_1B"},
//     {25, "d_luigi_J_1C"},
//     {26, "d_luigi_I_1"},
//     {27, "d_luigi_D_1"},
//     {2, "d_luigi_D_2"},
//     {29, "d_luigi_D_3"},
//     {30, "d_luigi_D_4"},
//     {31, "d_luigi_D_5"},
//     {32, "d_luigi_D_6"},
//     {33, "d_luigi_D_7"},
//     {34, "d_luigi_Y_1"},
//     {35, "d_luigi_Q_1"},
//     {36, "d_luigi_U_1"},
//     {37, "d_luigi_K_1"},
//     {38, "d_luigi_L_1A"},
//     {39, "d_luigi_L_1B"},
//     {40, "d_luigi_L_2"},
//     {41, "d_luigi_L_3"},
//     {42, "d_luigi_F_1A"},
//     {43, "d_luigi_F_1B"},
//     {44, "d_luigi_F_2"},
//     {45, "d_luigi_F_3"},
//     {46, "d_luigi_O_1A"},
//     {47, "d_luigi_O_1B"},
//     {48, "d_luigi_O_2"},
//     {49, "d_luigi_O_3"},
//     {50, "d_luigi_O_4"},
//     {51, "d_luigi_O_5"},
//     {52, "d_luigi_P_1"},
//     {53, "d_luigi_P_2"},
//     {54, "d_luigi_P_3"},
//     {55, "d_luigi_P_4"},
//     {56, "d_luigi_Z_1R"},
//     {57, "d_luigi_S_1R"},
//     {58, "d_luigi_S_2R"},
//     {59, "d_luigi_S_3R"},
//     {60, "d_luigi_W_1R"},
//     {61, "d_luigi_R_1R"},
//     {62, "d_luigi_T_1R"},
//     {63, "d_luigi_T_2R"},
//     {64, "d_luigi_T_3AR"},
//     {65, "d_luigi_T_3BR"},
//     {66, "d_luigi_T_3CR"},
//     {67, "d_luigi_T_3DR"},
//     {68, "d_luigi_T_4R"},
//     {69, "d_luigi_T_5AR"},
//     {70, "d_luigi_T_5BR"},
//     {71, "d_luigi_T_5CR"},
//     {72, "d_luigi_T_5DR"},
//     {73, "d_luigi_T_6R"},
//     {74, "d_luigi_E_1R"},
//     {75, "d_luigi_E_2R"},
//     {76, "d_luigi_E_3R"},
//     {77, "d_luigi_E_4R"},
//     {78, "d_luigi_E_5R"},
//     {79, "d_luigi_J_1BR"},
//     {80, "d_luigi_J_1CR"},
//     {81, "d_luigi_I_1R"},
//     {82, "d_luigi_D_1R"},
//     {83, "d_luigi_D_2R"},
//     {84, "d_luigi_D_3R"},
//     {85, "d_luigi_D_4R"},
//     {86, "d_luigi_D_5R"},
//     {87, "d_luigi_D_6R"},
//     {88, "d_luigi_D_7R"},
//     {89, "d_luigi_Y_1R"},
//     {90, "d_luigi_Q_1R"},
//     {91, "d_luigi_U_1R"},
//     {92, "d_luigi_K_1R"},
//     {93, "d_luigi_L_1AR"},
//     {94, "d_luigi_L_1BR"},
//     {95, "d_luigi_L_2R"},
//     {96, "d_luigi_L_3R"},
//     {97, "d_luigi_F_1AR"},
//     {98, "d_luigi_F_1BR"},
//     {99, "d_luigi_F_2R"},
//     {100, "d_luigi_F_3R"},
//     {101, "d_luigi_O_1AR"},
//     {102, "d_luigi_O_1BR"},
//     {103, "d_luigi_O_2R"},
//     {104, "d_luigi_O_3R"},
//     {105, "d_luigi_O_4R"},
//     {106, "d_luigi_O_5R"},
// };

static PoseTable pose_table[] = {
    {0x00000001, "gabon_N_1"},
    {0x00000002, "gabon_Y_1"},
    {0x00000009, "gabon_Y_1"},
    {0x00000005, "gabon_K_1"},
    {0x00000004, "KUR_I_1"},
    {0x00000003, "KUR_I_1"},
    {0x0000001C, "gabon_S_1"}, //idle
    {0x0000001D, "gabon_Q_1"},
    {0x0000001E, "gabon_Q_1"},
    {0x0000001F, "gabon_S_1"},
    {0x00000027, "gabon_D_1"},
    {0x00000032, "gabon_A_1"},
    {0x00000033, "gabon_A_2"},
    {0x0000002A, "gabon_R_1"},
    {0x00000029, "KUR_R_2"},
    {0x00000028, "gabon_W_1"},
    {0x00000038, "KUR_I_1"},
    {0x00000039, "KUR_I_1"},
    {0x00000041, "gabon_T_1"},
    {0x00000045, "gabon_S_1"},
};

// static PoseTable pose_table[] = {
//     {1, "gabon_Z_1"},
//     {2, "gabon_S_1"},
//     {3, "gabon_W_1"},
//     {4, "gabon_R_1"},
//     {0x0000001C, "gabon_A_1"},
//     {6, "gabon_A_2"},
//     {7, "gabon_D_1"},
//     {8, "gabon_Y_1"},
//     {9, "gabon_Q_1"},
//     {10, "gabon_N_1"},
//     {11, "gabon_N_2"},
//     {12, "gabon_K_1"},
//     {13, "gabon_T_1"},
// };

//??
static char regist[] = { //kuriboo regist
    0x64,
    0x6E,
    0x64,
    0x64,
    0x64,
    0x64,
    0x64,
    0x64,
    0x64,
    0x64,
    0x64,
    0x64,
    0x64,
    0x64,
    0x64,
    0x6E,
    0x64,
    0x64,
    0x64,
    0x64,
    0x64,
    0x96,
};


// ActorPartBlueprint parts[] = { //called BattleUnitKindPart by ttyd-utils docs
//     {
//     /*.partsTotal = */                  1,
//     /*.unk_04 = */                      "btl_un_kuriboo",
//     /*.unk_08 = */                      "c_gabon",
//     /*mPartOffsetPos = */               {0.0f, 0.0f, 0.0f},
//     /*mPartHitBaseOffset = */           {0.0f, 22.0f, 0.0f},
//     /*mPartHitCursorBaseOffset = */     {0.0f, 30.0f, 0.0f},
//     /*.targetOffset = */                {20, 30},
//     /*.opacity = */                     255,
//     /*.unk_36 = */                      {0, 0},
//     /*.defenseTable = */                defence,
//     /*.defenseAttr = */                 defence_attr,
//     /*.unk_40 = */                      9,
//     /*.unk_44 = */                      0,
//     /*.poseTable = */                   pose_table,
//     }
// };

static ActorPartBlueprint parts[] = { //called BattleUnitKindPart by ttyd-utils docs
    {
    /*.partsTotal = */                  1,
    /*.unk_04 = */                      "btl_un_white_gabon",
    /*.unk_08 = */                      "e_white_gabon",
    /*mPartOffsetPos = */               {0.0f, 0.0f, 0.0f},
    /*mPartHitBaseOffset = */           {0.0f, 37.0f, 0.0f}, //where mario actually lands when jumping on said part
    /*mPartHitCursorBaseOffset = */     {0.0f, 45.0f, 0.0f},
    /*.targetOffset = */                {20, 45},
    /*.opacity = */                     255,
    /*.unk_36 = */                      {0, 0},
    /*.defenseTable = */                &defence,
    /*.defenseAttr = */                 &defence_attr,
    /*.unk_40 = */                      9,
    /*.unk_44 = */                      0,
    /*.poseTable = */                   pose_table,
    }
};

s32 weaponGetPowerDefault(void); //unsure on signature

BattleWeapon weapon_tik_white_gabon_attack = {
#define WHITE_GABON_ATTACK_DAMAGE 5
/*.mNameMsg = */                NULL,
/*.mIcon = */                   0x0000,
/*.mItemId = */                 0x00000000,
/*.mDescMsg = */                NULL,
/*.mBaseAccuracy = */           100,
/*.mBaseFpCost = */             0,
/*.mBaseSpCost = */             0,
/*.mSuperguardable = */         1,
/*.unk_14 = */                  1.0f,
/*.mStylishCommandMultiplier = */  1,
/*.unk_19 = */                  1,
/*.mBingoSlotIncChance = */     1,
/*.unk_1B = */                  1,
/*.mWeaponGetPowerDefault = */  weaponGetPowerDefault,
/*.mBaseDamageParams = */       {WHITE_GABON_ATTACK_DAMAGE,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0,
                                0},

/*.mBaseFpDamageFunction = */   NULL,

/*.mBaseFpDamageParams = */     {0, 0, 0, 0, 0, 0, 0, 0},


/*.mTargetFlagsHigh = */        (SingleTarget |
                                OnlyTargetPreferredParts |
                                CannotTargetSelf |
                                CannotTargetOwnAlliance |
                                CannotTargetSystemUnits |
                                CannotTargetTreeOrSwitch),
                                
/*.mTargetFlagsLo = */          ATP_TARGET_OPPOSITE_ALLIANCE_DIRECTION | ATP_JUMP_LIKE,
/*.mWeaponElementType = */      0,
/*.mDamagePattern = */          0,
/*.mWeaponAcLevel = */          3,
/*.unk_6F = */                  2,
/*.mActionCommandMsg = */       NULL,

/*.mSpecialPropertyFlags = */   (ASP_BADGE_CAN_AFFECT_POWER |
                                ASP_STATUS_CAN_AFFECT_POWER |
                                ASP_IS_CHARGEABLE |
                                ASP_CAN_BREAK_ICE |
                                ASP_GROUNDS_WINGED_ENEMIES |
                                ASP_FLIP_SHELL_ENEMIES),

/*.mResistanceFlags = */        0,

/*.mTargetWeightingFlags = */   (ATW_CHOOSE_WEIGHTED_RANDOMLY |
                                ATW_UNK_2000 |
                                ATW_PREFER_FRONT),
/*.mSleepChance = */            0,
/*.mSleepTime = */              0,
/*.mStopChance = */             0,
/*.mStopTime = */               0,
/*.mDizzyChance = */            0,
/*.mDizzyTime = */              0,
/*.mPoisonChance = */           0,
/*.mPoisonTime = */             0,
/*.mPoisonStrength = */         0,
/*.mConfuseChance = */          0,
/*.mConfuseTime = */            0,
/*.mElectricChance = */         0,
/*.mElectricTime = */           0,
/*.mDodgyChance = */            0,
/*.mDodgyTime = */              0,
/*.mBurnChance = */             0,
/*.mBurnTime = */               0,
/*.mFreezeChance = */           0,
/*.mFreezeTime = */             0,
/*.mSizeChangeChance = */       0,
/*.mSizeChangeTime = */         0,
/*.mSizeChangeStrength = */     0,
/*.mAtkChangeChance = */        0,
/*.mAtkChangeTime = */          0,
/*.mAtkChangeStrength = */      0,
/*.mDefChangeChance = */        0,
/*.mDefChangeTime = */          0,
/*.mDefChangeStrength = */      0,
/*.mAllergicChance = */         0,
/*.mAllergicTime = */           0,
/*.mOKHOChance = */             0,
/*.mChargeStrength = */         0,
/*.mFastChance = */             0,
/*.mFastTime = */               0,
/*.mSlowChance = */             0,
/*.mSlowTime = */               0,
/*.mFrightChance = */           0,
/*.mGaleForceChance = */        0,
/*.mPaybackTime = */            0,
/*.mHoldFastTime = */           0,
/*.mInvisibleChance = */        0,
/*.mInvisibleTime = */          0,
/*.mHpRegenTime = */            0,
/*.mHpRegenStrength = */        0,
/*.mFpRegenTime = */            0,
/*.mFpRegenStrength = */        0,
/*.mAttackScript = */           NULL,
/*.mBgA1A2FallWeight = */       0,
/*.mBgA1FallWeight = */         0,
/*.mBgA2FallWeight = */         0,
/*.mBgANoFallWeight = */        100,
/*.mBgBFallChance = */          0,
/*.mNozzleTurnChance = */       0,
/*.mNozzleFireChance = */       0,
/*.mCeilingFallChance = */      0,
/*.mObjectFallChance = */       0,
/*.unk_BD = */                  0,
/*.unk_BE = */                  {0, 0}
};

// BattleWeapon weapon_tik_kuriboo_charge = {
// /*.unk_00 = */       0x00000000,
// /*.unk_04 = */       0x00000000,
// /*.unk_08 = */       0x00000000,
// /*.unk_0C = */       0x00000000,
// /*.unk_10 = */       100,
// /*.unk_11 = */       0,
// /*.unk_12 = */       0,
// /*.unk_13 = */       1,
// /*.unk_14 = */       1.0f,
// /*.unk_18 = */       1,
// /*.unk_19 = */       1,
// /*.unk_1A = */       1,
// /*.unk_1B = */       1,
// /*.unk_1C = */       weaponGetPowerDefault,
// /*.unk_20 = */       0x00000001,
// /*.unk_24 = */       0x00000000,
// /*.unk_28 = */       0x00000000,
// /*.unk_2C = */       0x00000000,
// /*.unk_30 = */       0x00000000,
// /*.unk_34 = */       0x00000000,
// /*.unk_38 = */       0x00000000,
// /*.unk_3C = */       0x00000000,
// /*.unk_40 = */       0x00000000,
// /*.unk_44 = */       0x00000000,
// /*.unk_48 = */       0x00000000,
// /*.unk_4C = */       0x00000000,
// /*.unk_50 = */       0x00000000,
// /*.unk_54 = */       0x00000000,
// /*.unk_58 = */       0x00000000,
// /*.unk_5C = */       0x00000000,
// /*.unk_60 = */       0x00000000,
// /*.unk_flags1 = */   0x01004020,
// /*.unk_flags2 = */   0x20000000,
// /*.unk_6C = */       0,
// /*.unk_6D = */       0,
// /*.unk_6E = */       3,
// /*.unk_6F = */       2,
// /*.unk_70 = */       0x00000000,
// /*.unk_74 = */       0x00000108,
// /*.unk_78 = */       0x000007FF,
// /*.unk_7C = */       0x00000000,
// /*.unk_80 = */       0x00000000,
// /*.unk_84 = */       0x00000000,
// /*.unk_88 = */       0x00000000,
// /*.unk_8C = */       0x00000000,
// /*.unk_90 = */       0x00000000,
// /*.unk_94 = */       0x00000000,
// /*.unk_98 = */       0x00000000,
// /*.unk_9C = */       0x00000002, //charge amount
// /*.unk_A0 = */       0x00000000,
// /*.unk_A4 = */       0x00000000,
// /*.unk_A8 = */       0x00000000,
// /*.unk_AC = */       0x00000000,
// /*.unk_B0 = */       0x00000000,
// /*.unk_B4 = */       0,
// /*.unk_B5 = */       0,
// /*.unk_B6 = */       0,
// /*.unk_B7 = */       100,
// /*.unk_B8 = */       0x00000000,
// /*.unk_BC = */       0x00000000,
// };

static EVT_BEGIN(wait_event) {
    CALL(btlevtcmd_AnimeChangePoseFromTable, -2, 1)
    RETURN
    END
};

static EVT_BEGIN(damage_event) {
    SET(LVarA, -2)
    SET(LVarB, 1)
    SCRIPT_SYNC(btldefaultevt_Damage)
    RETURN
    END
};

static EVT_BEGIN(phase_event) {
    RETURN
    END
};


static EVT_BEGIN(attack_event) {
    CALL(btlevtcmd_check_battleflag, LVar0, 2)
    IF_INT_NE(LVar0, 0)
        WAIT_MS(750)
        CALL(btlevtcmd_GetFirstAttackTarget, LVar3, LVar4)
    ELSE
        CALL(btlevtcmd_GetEnemyBelong, -2, LVar0)
        CALL(btlevtcmd_SamplingEnemy, -2, LVar0, PTR(&weapon_tik_white_gabon_attack))
        CALL(btlevtcmd_ChoiceSamplingEnemy, PTR(&weapon_tik_white_gabon_attack), LVar3, LVar4)
    END_IF
    IF_INT_EQ(LVar3, -1)
        CALL(btlevtcmd_CheckToken, -2, 16, LVar0)
        IF_INT_NE(LVar0, 0)
            SCRIPT_SYNC(subsetevt_confuse_flustered)
            RETURN
        END_IF
        GOTO(99)
    END_IF
    CALL(btlevtcmd_JumpSetting, -2, 20, FLOAT(0.000), FLOAT(0.600))
    CALL(evt_btl_camera_set_mode, 0, 8)
    CALL(evt_btl_camera_set_homing_unit, 0, -2, LVar3)
    CALL(evt_btl_camera_set_moveSpeedLv, 0, 1)
    CALL(evt_btl_camera_set_zoom, 0, 250)
    CALL(btlevtcmd_WeaponAftereffect, PTR(&weapon_tik_white_gabon_attack))
    CALL(btlevtcmd_AttackDeclare, -2, LVar3, LVar4)
    CALL(btlevtcmd_WaitGuardMove)
    CALL(btlevtcmd_PayWeaponCost, -2, PTR(&weapon_tik_white_gabon_attack))
    CALL(btlevtcmd_AnimeChangePoseType, -2, 1, 40) //walking anim
    CALL(btlevtcmd_GetPos, LVar3, LVar0, LVar1, LVar2)
    CALL(btlevtcmd_SetMoveSpeed, -2, FLOAT(1.500))
    ADD(LVar0, 50)
    CALL(btlevtcmd_MovePosition, -2, LVar0, 0, LVar2, 0, -1, 1)
    CALL(btlevtcmd_AnimeChangePoseType, -2, 1, 28) //stand still
    WAIT_FRAMES(30) //pm64 clubba waits 15 frames, so at 60fps that would be 30 frames

    CALL(btlevtcmd_AnimeChangePoseType, -2, 1, 50) //attack anim
    WAIT_FRAMES(18)
    //TODO: do damage event here
    CALL(btlevtcmd_ResultACDefence, LVar3, PTR(&weapon_tik_white_gabon_attack))
    CALL(btlevtcmd_CheckDamage, -2, LVar3, LVar4, PTR(&weapon_tik_white_gabon_attack), 256, LVar5)
    WAIT_FRAMES(30)
    
    // --- Return home ---
    LABEL(95)
    CALL(evt_btl_camera_set_mode, 0, 0)
    CALL(btlevtcmd_SetMoveSoundDataWork, -2, PTR("SFX_ENM_KURI_MOVE1"), PTR("SFX_ENM_KURI_MOVE2"), 0, 3, 3, 0, 0)
    CALL(btlevtcmd_AnimeChangePoseType, -2, 1, 42)   // gabon_R_1 (run back)
    CALL(btlevtcmd_SetMoveSpeed, -2, FLOAT(3.500))
    CALL(btlevtcmd_GetHomePos, -2, LVar0, LVar1, LVar2)
    CALL(btlevtcmd_MovePosition, -2, LVar0, LVar1, LVar2, 0, -2, 0)
    
    LABEL(99)
    CALL(btlevtcmd_ResetFaceDirection, -2)
    CALL(btlevtcmd_StartWaitEvent, -2)
    RETURN
    END
};

static EVT_BEGIN(init_event) {
    CALL(btlevtcmd_SetEventWait, -2, PTR(wait_event))
    CALL(btlevtcmd_SetEventAttack, -2, PTR(attack_event))
    CALL(btlevtcmd_SetEventDamage, -2, PTR(damage_event))
    CALL(btlevtcmd_SetEventConfusion, -2, PTR(attack_event))
    CALL(btlevtcmd_SetRunSound, -2, PTR("SFX_ENM_KURI_MOVE1"), PTR("SFX_ENM_KURI_MOVE2"), 0, 6, 6)
    CALL(btlevtcmd_SetWalkSound, -2, PTR("SFX_ENM_KURI_MOVE1"), PTR("SFX_ENM_KURI_MOVE2"), 0, 6, 6)
    CALL(btlevtcmd_SetJumpSound, -2, PTR("SFX_ENM_KURI_JUMP1"), PTR("SFX_ENM_KURI_LANDING1"))
    CALL(btlevtcmd_StartWaitEvent, -2)
    RETURN
    END
};

BattleUnitKind unit_tik_white_gabon = {
/* 0x00 */                      UNUSED_KANBU_2, //controls what comes up when you tattle
/* 0x04 */                      "btl_un_white_gabon",
/* maxHP */                     8,
/* maxFP */                     0,
/* mDangerHP */                 4,
/* mPerilHP */                  1,
/* mLevel */                    13,
/* mBonusExp*/                  0,
/* mBonusCoin */                1,
/* mBonusCoinRate */            60,
/* mBaseCoin */                 0,
/* mRunRate */                  70,
/* mPowerBounceSoftCap */       9999,
/* width */                     23,
/* height */                    25,
/* hitOffset */                 {5, 25},
/* unk_1E */                    0x0000, //padding
/* mCenterOffset */             {0, 12.0f, 0.0f},
/* mHpGaugeOffset */            {0, 0},
/* mTalkTogeBaseOffset */       {0.0f, 0.0f, 0.0f},
/* mHeldItemBaseOffset */       {12.0f, 0.0f, -10.0f},
/* mBurnFlameOffset */          {12.0f, 0.0f, -10.0f},
/* unk_54 */                    0.0f,
/* unk_58 */                    0.0f,
/* mBintaHitOffset */           {11.5f, 0.0f, 0.0f},
/* mKissHitOffset */            {11.5f, 18.5f, 0.0f},
/* mCutBaseOffset */            {0.0f, 12.0f, 0.0f},
/* mCutWidth */                 23.0f,
/* mCutHeight */                25.0f,
/* mTurnOrder */                0,
/* mTurnOrderVariance */        0,
/* mSwallowChance */            0,
/* mSwallowAttributes */        2,
/* mUltraHammerKnockChance */   100, //always 100 or 0
/* mItemStealParam */           20, //always 20 or 0
/* unk_8E */                    0, //padding
/* unk_8F */                    0, //padding
/* mStarPointDispOffset */      {0.0f, 0.0f, 0.0f},
/* mDamagedSfxName */           "SFX_ENM_KURI_DAMAGED1",
/* mFireDamageSfxName */        "SFX_BTL_DAMAGE_FIRE1",
/* mIceDamageSfxName */         "SFX_BTL_DAMAGE_ICE1",
/* mExplosionDamageSfxName */   "SFX_BTL_DAMAGE_BIRIBIRI1",
/* mDefaultAttributes */        0x00040000,
/* regist */                    regist,
/* mNumParts */                 1,
/* unk_B5 */                    0,
/* unk_B6 */                    0,
/* unk_B7 */                    0,
/* mParts */                    &parts[0],
/* init_evt */                  init_event,
/* dataTable */                 &data_table,
};

// BattleUnitKind unit_kuriboo_24_data_1CDA8 = {
// /* 0x00 */                      UNUSED_TEST, //controls what comes up when you tattle
// /* 0x04 */                      "btl_un_kuriboo",
// /* maxHP */                     8,
// /* maxFP */                     0,
// /* mDangerHP */                 4,
// /* mPerilHP */                  1,
// /* mLevel */                    13,
// /* mBonusExp*/                  0,
// /* mBonusCoin */                1,
// /* mBonusCoinRate */            60,
// /* mBaseCoin */                 0,
// /* mRunRate */                  70,
// /* mPowerBounceSoftCap */       9999,
// /* width */                     23,
// /* height */                    25,
// /* hitOffset */                 {5, 25},
// /* unk_1E */                    0x0000, //padding
// /* mCenterOffset */             {0, 12.0f, 0.0f},
// /* mHpGaugeOffset */            {0, 0},
// /* mTalkTogeBaseOffset */       {0.0f, 0.0f, 0.0f},
// /* mHeldItemBaseOffset */       {12.0f, 0.0f, -10.0f},
// /* mBurnFlameOffset */          {12.0f, 0.0f, -10.0f},
// /* unk_54 */                    0.0f,
// /* unk_58 */                    0.0f,
// /* mBintaHitOffset */           {11.5f, 0.0f, 0.0f},
// /* mKissHitOffset */            {11.5f, 18.5f, 0.0f},
// /* mCutBaseOffset */            {0.0f, 12.0f, 0.0f},
// /* mCutWidth */                 23.0f,
// /* mCutHeight */                25.0f,
// /* mTurnOrder */                0,
// /* mTurnOrderVariance */        0,
// /* mSwallowChance */            0,
// /* mSwallowAttributes */        2,
// /* mUltraHammerKnockChance */   100, //always 100 or 0
// /* mItemStealParam */           20, //always 20 or 0
// /* unk_8E */                    0, //padding
// /* unk_8F */                    0, //padding
// /* mStarPointDispOffset */      {0.0f, 0.0f, 0.0f},
// /* mDamagedSfxName */           "SFX_ENM_KURI_DAMAGED1",
// /* mFireDamageSfxName */        "SFX_BTL_DAMAGE_FIRE1",
// /* mIceDamageSfxName */         "SFX_BTL_DAMAGE_ICE1",
// /* mExplosionDamageSfxName */   "SFX_BTL_DAMAGE_BIRIBIRI1",
// /* mDefaultAttributes */        0x00040000,
// /* regist */        regist,
// /* mNumParts */        1,
// /* unk_B5 */        0,
// /* unk_B6 */        0,
// /* unk_B7 */        0,
// /* mParts */        &parts[0],
// /* init_evt */      init_event,
// /* dataTable */     &data_table,
// };
