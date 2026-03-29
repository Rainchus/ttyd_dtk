#include "common_structs.h"
#include "evt.h"
#include "evt_functions.h"
#include "game/battle.h"
#include "game/btlevt.h"

API_CALLABLE(btlevtcmd_SetHomePos);

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
    CALL(btlevtcmd_AnimeChangePoseType, -2, 1, 42) //running anim
    CALL(btlevtcmd_GetPos, LVar3, LVar0, LVar1, LVar2)
    CALL(btlevtcmd_SetMoveSpeed, -2, FLOAT(2.250))
    ADD(LVar0, 50)
    CALL(btlevtcmd_MovePosition, -2, LVar0, 0, LVar2, 0, -1, 1)
    CALL(btlevtcmd_AnimeChangePoseType, -2, 1, 28) //stand still
    WAIT_FRAMES(30) //pm64 clubba waits 15 frames, so at 60fps that would be 30 frames

    CALL(btlevtcmd_AnimeChangePoseType, -2, 1, 50) //attack anim
    WAIT_FRAMES(18)
    
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
/* regist */                    &regist,
/* mNumParts */                 1,
/* unk_B5 */                    0,
/* unk_B6 */                    0,
/* unk_B7 */                    0,
/* mParts */                    &parts[0],
/* init_evt */                  init_event,
/* dataTable */                 &data_table,
};
