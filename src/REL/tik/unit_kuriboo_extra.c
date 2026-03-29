#include "common_structs.h"
#include "evt.h"
#include "evt_functions.h"
#include "game/battle.h"
#include "game/btlevt.h"
#include "dolphin/math.h"

#define KURIBOO_ATTACK_DAMAGE 1

extern EvtScript btldefaultevt_Dummy;
extern EvtScript btldefaultevt_Damage;
extern EvtScript subsetevt_confuse_flustered;

Defenses defence = {
    0,
    0,
    0,
    0,
    0,
};

DefensesAttr defence_attr = {
    0,
    0,
    0,
    0,
    0,
};

//?
DataTable data_table = {
    0x30,
    btldefaultevt_Dummy,
    0,
    0
};

static PoseTable pose_table[] = {
    {0x00000001, "KUR_N_1"},
    {0x00000002, "KUR_Y_1"},
    {0x00000009, "KUR_Y_1"},
    {0x00000005, "KUR_K_1"},
    {0x00000004, "KUR_I_1"},
    {0x00000003, "KUR_I_1"},
    {0x0000001C, "KUR_S_1"}, //idle
    {0x0000001D, "KUR_Q_1"},
    {0x0000001E, "KUR_Q_1"},
    {0x0000001F, "KUR_S_1"},
    {0x00000027, "KUR_D_1"},
    {0x00000032, "KUR_A_1"},
    {0x00000033, "KUR_A_2"},
    {0x0000002A, "KUR_R_1"},
    {0x00000029, "KUR_R_2"},
    {0x00000028, "KUR_W_1"},
    {0x00000038, "KUR_I_1"},
    {0x00000039, "KUR_I_1"},
    {0x00000041, "KUR_T_1"},
    {0x00000045, "KUR_S_1"},
};

static StatusVulnerability regist = {
/* sleep */     100,
/* stop */      110,
/* dizzy */     100,
/* poison */    100,
/* confuse */   100,
/* electric */  100,
/* burn */      100,
/* freeze */    100,
/* huge */      100,
/* tiny */      100,
/* atkUp */     100,
/* atkDown */   100,
/* defUp */     100,
/* defDown */   100,
/* allergic */  100,
/* fright */    110,
/* galeForce */ 100,
/* fast */      100,
/* slow */      100,
/* dodgy */     100,
/* invisible */ 100,
/* ohko */      150,
};

ActorPartBlueprint parts[] = { //called BattleUnitKindPart by ttyd-utils docs
    {
    /*.partsTotal = */                  1,
    /*.unk_04 = */                      "btl_un_kuriboo",
    /*.unk_08 = */                      "c_kuribo",
    /*mPartOffsetPos = */               {0.0f, 0.0f, 0.0f},
    /*mPartHitBaseOffset = */           {0.0f, 22.0f, 0.0f}, //where mario actually lands when jumping on said part
    /*mPartHitCursorBaseOffset = */     {0.0f, 30.0f, 0.0f},
    /*.targetOffset = */                {20, 30},
    /*.opacity = */                     255,
    /*.unk_36 = */                      {0, 0},
    /*.defenseTable = */                &defence,
    /*.defenseAttr = */                 &defence_attr,
    /*.unk_40 = */                      9,
    /*.unk_44 = */                      0,
    /*.poseTable = */                   pose_table,
    }
};

BattleWeapon weapon_tik_kuriboo_attack = {
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
/*.mBaseDamageParams = */       {KURIBOO_ATTACK_DAMAGE,
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

BattleWeapon weapon_tik_kuriboo_attack_charge = {
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
/*.mBaseDamageParams = */       {KURIBOO_ATTACK_DAMAGE,
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
/*.mChargeStrength = */         2, //charge for +2
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

#define MAX_LIL_OINKS 11

enum LilOinkFlags {
    LIL_OINK_FLAG_VISIBLE = 1,
    LIL_OINK_FLAG_ANIM_CHANGED = 2,
};

enum LilOinkTypes {
    LIL_OINK_TYPE_BLACK     = 0,
    LIL_OINK_TYPE_WHITE     = 1,
    LIL_OINK_TYPE_PINK      = 2,
    LIL_OINK_TYPE_PIKACHU   = 3,
    LIL_OINK_TYPE_SHROOM    = 4,
    LIL_OINK_TYPE_FLOWER    = 5,
    LIL_OINK_TYPE_STAR      = 6,
    LIL_OINK_TYPE_QUESTION  = 7,
    LIL_OINK_TYPE_SILVER    = 8,
    LIL_OINK_TYPE_GOLD      = 9,
};

enum LilOinkAnims {
    LIL_OINK_ANIM_0 = 0,
    LIL_OINK_ANIM_1 = 1,
    LIL_OINK_ANIM_2 = 2,
    LIL_OINK_ANIM_3 = 3,
    LIL_OINK_ANIM_4 = 4,
    LIL_OINK_ANIM_5 = 5,
};

typedef struct BoobooN64FXData {
    /* 0x000 */ s32 timeLeft;
    /* 0x004 */ s32 lifetime;
    /* 0x008 */ s32 flags[MAX_LIL_OINKS];
    /* 0x034 */ f32 x[MAX_LIL_OINKS];
    /* 0x060 */ f32 y[MAX_LIL_OINKS];
    /* 0x08C */ f32 z[MAX_LIL_OINKS];
    /* 0x0B8 */ f32 rot[MAX_LIL_OINKS];
    /* 0x0E4 */ u8 type[MAX_LIL_OINKS];
    /* 0x0EF */ s8 nextAnim[MAX_LIL_OINKS];
    /* 0x0FA */ u8 anim[MAX_LIL_OINKS];
    /* 0x105 */ u8 gfxFrame[MAX_LIL_OINKS];
    /* 0x110 */ f32 jumpOffset[MAX_LIL_OINKS];
    /* 0x13C */ s8 animTime[MAX_LIL_OINKS];
} BoobooN64FXData; // size = 0x148

/* The effect base struct, returned by effEntry() */
typedef struct EffectEntry {
    /* 0x00 */ u8  pad[0x08];
    /* 0x08 */ s32 numParts;        /* set to 1, likely effect type/variant */
    /* 0x0C */ void* workUnits;  /* heap-allocated array of 11 work units */
    /* 0x10 */ void* mainFunc;             /* pointer to effBoobooMain update function */
    /* 0x14 */ char* name;                 /* pointer to effect name string */
} EffectEntry;

// API_CALLABLE(SpawnBoobooEffect) {
//     Bytecode* args = script->args;
//     s32 outVar = *args++;
//     f32 x = evtGetValue(script, *args++);
//     f32 y = evtGetValue(script, *args++);
//     f32 z = evtGetValue(script, *args++);
//     s32 type = evtGetValue(script, *args++);

//     EffectEntry* effect = (EffectEntry*)effBoobooN64Entry();
//     BoobooN64FXData* data = (BoobooN64FXData*)effect->workUnits;

//     data->type[0] = type;
//     data->x[0] = x;
//     data->y[0] = y;
//     data->z[0] = z;
//     data->rot[0] = 270.0f;
//     data->flags[0] |= LIL_OINK_FLAG_VISIBLE;
//     data->flags[0] |= LIL_OINK_FLAG_ANIM_CHANGED;
//     data->nextAnim[0] = LIL_OINK_ANIM_2;

//     evtSetValue(script, outVar, (s32)effect);
//     return 2;
// }

API_CALLABLE(SpawnBoobooEffect) {
    Bytecode* args = script->args;
    s32 outVar = *args++;
    f32 x = evtGetValue(script, *args++);
    f32 y = evtGetValue(script, *args++);
    f32 z = evtGetValue(script, *args++);
    s32 i;
    f32 radius = 40.0f;

    EffectEntry* effect = (EffectEntry*)effBoobooN64Entry();
    BoobooN64FXData* data = (BoobooN64FXData*)effect->workUnits;

    for (i = 0; i < MAX_LIL_OINKS; i++) {
        f32 angle = (i * 360.0f / MAX_LIL_OINKS) * (M_PI / 180.0f);

        data->type[i] = i % 10;
        data->x[i] = x + (radius * sinf(angle));
        data->y[i] = y;
        data->z[i] = z + (radius * cosf(angle));
        data->rot[i] = 270.0f;  /* face left */
        data->flags[i] |= LIL_OINK_FLAG_VISIBLE;
        data->flags[i] |= LIL_OINK_FLAG_ANIM_CHANGED;
        data->nextAnim[i] = LIL_OINK_ANIM_2;
    }

    evtSetValue(script, outVar, (s32)effect);
    return 2;
}

// static EVT_BEGIN(attack_event) {
//     CALL(btlevtcmd_GetPos, -2, LVar0, LVar1, LVar2)
//     CALL(SpawnBoobooEffect, LVar3, LVar0, LVar1, LVar2, 0)
//     WAIT_FRAMES(180)
//     RETURN
//     END
// };

static EVT_BEGIN(attack_event) {
    CALL(btlevtcmd_check_battleflag, LVar0, 2)
    IF_INT_NE(LVar0, 0)
        WAIT_MS(750)
        CALL(btlevtcmd_GetFirstAttackTarget, LVar3, LVar4)
    ELSE
        CALL(btlevtcmd_GetEnemyBelong, -2, LVar0)
        CALL(btlevtcmd_SamplingEnemy, -2, LVar0, PTR(&weapon_tik_kuriboo_attack))
        CALL(btlevtcmd_ChoiceSamplingEnemy, PTR(&weapon_tik_kuriboo_attack), LVar3, LVar4)
    END_IF
    IF_INT_EQ(LVar3, -1)
        CALL(btlevtcmd_CheckToken, -2, 16, LVar0)
        IF_INT_NE(LVar0, 0)
            SCRIPT_SYNC(subsetevt_confuse_flustered)
            RETURN
        END_IF
        GOTO(99)
    END_IF
    CALL(btlevtcmd_EnemyItemUseCheck, -2, LVar0)
    IF_INT_NE(LVar0, 0)
        SCRIPT_SYNC(LVar0)
        CALL(btlevtcmd_StartWaitEvent, -2)
        RETURN
    END_IF
    CALL(btlevtcmd_JumpSetting, -2, 20, FLOAT(0.000), FLOAT(0.600))
    CALL(evt_btl_camera_set_mode, 0, 8)
    CALL(evt_btl_camera_set_homing_unit, 0, -2, LVar3)
    CALL(evt_btl_camera_set_moveSpeedLv, 0, 1)
    CALL(evt_btl_camera_set_zoom, 0, 250)
    CALL(btlevtcmd_WeaponAftereffect, PTR(&weapon_tik_kuriboo_attack))
    CALL(btlevtcmd_AttackDeclare, -2, LVar3, LVar4)
    CALL(btlevtcmd_WaitGuardMove)
    CALL(btlevtcmd_PayWeaponCost, -2, PTR(&weapon_tik_kuriboo_attack))
    CALL(btlevtcmd_AnimeChangePoseType, -2, 1, 42)
    CALL(btlevtcmd_GetPos, LVar3, LVar0, LVar1, LVar2)
    CALL(btlevtcmd_FaceDirectionAdd, LVar3, LVar0, 100)
    CALL(btlevtcmd_CalculateFaceDirection, -2, -1, LVar0, LVar2, 1, LVarF)
    CALL(btlevtcmd_ChangeFaceDirection, -2, LVarF)
    CALL(btlevtcmd_SetMoveSpeed, -2, FLOAT(4.000))
    CALL(btlevtcmd_MovePosition, -2, LVar0, 0, LVar2, 0, -1, 1)
    CALL(btlevtcmd_AnimeChangePoseType, -2, 1, 43)
    CALL(btlevtcmd_CalculateFaceDirection, -2, -1, LVar3, LVar4, 16, LVarF)
    CALL(btlevtcmd_ChangeFaceDirection, -2, LVarF)
    WAIT_MS(170)
    CALL(evt_btl_camera_set_mode, 0, 3)
    CALL(evt_btl_camera_nomove_y_onoff, 0, 1)
    BEGIN_THREAD
        CALL(btlevtcmd_GetPosFloat, -2, LVar5, LVar6, LVar7)
        SET(LVar8, 0)
        LOOP(32)
            CALL(btlevtcmd_GetPosFloat, -2, LVar9, LVarA, LVarB)
            CALL(krb_get_dir, LVar5, LVar6, LVar9, LVarA, LVar8)
            CALL(btlevtcmd_SetRotate, -2, 0, 0, LVar8)
            SET_FLOAT(LVar5, LVar9)
            SET_FLOAT(LVar6, LVarA)
            WAIT_FRAMES(1)
        END_LOOP
    END_THREAD
    BEGIN_THREAD
        LOOP(12)
            WAIT_FRAMES(1)
        END_LOOP
        SET(LVarF, 50)
        CALL(btlevtcmd_AnimeChangePoseType, -2, 1, LVarF)
    END_THREAD
    CALL(btlevtcmd_GetHitPos, LVar3, LVar4, LVar0, LVar1, LVar2)
    CALL(btlevtcmd_JumpPosition, -2, LVar0, LVar1, LVar2, 32, -1)
    CALL(btlevtcmd_PreCheckDamage, -2, LVar3, LVar4, PTR(&weapon_tik_kuriboo_attack), 256, LVar5)
    SWITCH(LVar5)
    CASE_OR_EQ(4)
        GOTO(90)
        CASE_END
    CASE_INT_EQ(3)
        CALL(btlevtcmd_StartAvoid, LVar3, 38)
        GOTO(90)
        CASE_END
    CASE_INT_EQ(6)
        CALL(btlevtcmd_StartAvoid, LVar3, 39)
        GOTO(90)
    CASE_INT_EQ(2)
        CALL(btlevtcmd_StartAvoid, LVar3, 40)
        GOTO(90)
    CASE_INT_EQ(1)
        GOTO(91)
        CASE_END
    CASE_DEFAULT
        GOTO(91)
        CASE_END
    END_SWITCH
    LABEL(90)
    CALL(btlevtcmd_JumpContinue, -2)
    CALL(btlevtcmd_SetRotate, -2, 0, 0, 0)
    SET(LVarF, 69)
    CALL(btlevtcmd_AnimeChangePoseType, -2, 1, LVarF)
    CALL(btlevtcmd_GetPos, -2, LVar0, LVar1, LVar2)
    CALL(btlevtcmd_MoveDirectionAdd, -2, LVar0, 30)
    CALL(btlevtcmd_JumpPosition, -2, LVar0, LVar1, LVar2, 20, -1)
    CALL(btlevtcmd_MoveDirectionAdd, -2, LVar0, 20)
    CALL(btlevtcmd_JumpPosition, -2, LVar0, LVar1, LVar2, 10, -1)
    WAIT_MS(500)
    GOTO(95)
    LABEL(91)
    CALL(evt_btl_camera_shake_h, 0, 1, 1, 8, 0)
    CALL(evt_btl_camera_set_moveSpeedLv, 0, 2)
    CALL(evt_btl_camera_add_zoom, 0, -50)
    CALL(btlevtcmd_snd_se, -2, PTR("SFX_ENM_KURI_ATTACK1"), FLOAT(-19531.250), 0, FLOAT(-19531.250))
    CALL(btlevtcmd_ResultACDefence, LVar3, PTR(&weapon_tik_kuriboo_attack))
    CALL(btlevtcmd_CheckDamage, -2, LVar3, LVar4, PTR(&weapon_tik_kuriboo_attack), 256, LVar5)
    CALL(btlevtcmd_SetRotate, -2, 0, 0, 0)
    SET(LVarF, 69)
    CALL(btlevtcmd_AnimeChangePoseType, -2, 1, LVarF)
    CALL(btlevtcmd_GetPos, -2, LVar0, LVar1, LVar2)
    SET(LVar1, 0)
    CALL(btlevtcmd_FaceDirectionSub, -2, LVar0, 40)
    CALL(btlevtcmd_JumpPosition, -2, LVar0, LVar1, LVar2, 30, -1)
    CALL(btlevtcmd_FaceDirectionSub, -2, LVar0, 20)
    CALL(btlevtcmd_JumpPosition, -2, LVar0, LVar1, LVar2, 12, -1)
    CALL(btlevtcmd_FaceDirectionSub, -2, LVar0, 10)
    CALL(btlevtcmd_JumpPosition, -2, LVar0, LVar1, LVar2, 6, -1)
    GOTO(95)
    LABEL(95)
    CALL(evt_btl_camera_set_mode, 0, 0)
    CALL(btlevtcmd_SetMoveSoundDataWork, -2, PTR("SFX_ENM_KURI_MOVE1"), PTR("SFX_ENM_KURI_MOVE2"), 0, 3, 3, 0, 0)
    CALL(btlevtcmd_AnimeChangePoseType, -2, 1, 41)
    CALL(btlevtcmd_SetMoveSpeed, -2, FLOAT(5.000))
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

BattleUnitKind unit_kuriboo_24_data_1CDA8 = {
/* 0x00 */                      GOOMBA, //controls what comes up when you tattle
/* 0x04 */                      "btl_un_gabon",
/* maxHP */                     2,
/* maxFP */                     0,
/* mDangerHP */                 1,
/* mPerilHP */                  1,
/* mLevel */                    7,
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
/* regist */                    &regist,
/* mNumParts */                 1,
/* unk_B5 */                    0,
/* unk_B6 */                    0,
/* unk_B7 */                    0,
/* mParts */                    &parts[0],
/* init_evt */                  init_event,
/* dataTable */                 &data_table,
};
