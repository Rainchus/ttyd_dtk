#include "evt.h"
#include "evt_functions.h"

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

typedef struct DataTable {
    s32 unk_00;
    void* unk_04;
    s32 unk_08;
    s32 unk_0C;
} DataTable; //sizeof 0x10

typedef struct PoseTable {
    s32 poseID;
    char* poseStr;
} PoseTable;

u8 defence[] = {0, 0, 0, 0, 0, 0, 0, 0}; //unsure on length
u8 defence_attr[] = {0, 0, 0, 0, 0, 0, 0, 0}; //unsure on length

extern EvtScript btldefaultevt_Dummy;

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
    {0x0000001C, "KUR_S_1"},
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


typedef struct ActorPartBlueprint {
/* 0x00 */ s32 partsTotal;
/* 0x04 */ char* unk_04; //btl name?
/* 0x08 */ char* unk_08; //file to load for Actor
/* 0x0C */ s32 unk_0C;
/* 0x10 */ s32 unk_10;
/* 0x14 */ s32 unk_14;
/* 0x18 */ s32 unk_18;
/* 0x1C */ f32 unk_1C;
/* 0x20 */ f32 unk_20; //is this actually a float?
/* 0x24 */ f32 unk_24; //is this actually a float?
/* 0x28 */ f32 unk_28;
/* 0x2C */ char unk_2C[4]; //posOffset from pm64?
/* 0x30 */ s16 targetOffset[2]; //targetOffset from pm64?
/* 0x34 */ s16 opacity; //why is this s16?
/* 0x36 */ char unk_36[2]; //probably padding
/* 0x38 */ u8* defenseTable;
/* 0x3C */ u8* defenseAttr;
/* 0x40 */ s32 unk_40;
/* 0x44 */ s32 unk_44;
/* 0x48 */ PoseTable* poseTable;
} ActorPartBlueprint; // size = 0x4C

typedef struct BattleUnitKind {
	s32 mUnitType; //0x0
	char* unk_04;
    u8 field_0x8[0xC - 0x8]; //0x4
	u8 mDangerHP; //0xC
	u8 mPerilHP; //0xD
	u8 mLevel; //0xE
	u8 mBonusExp; //0xF
    s16 unk_10;
    s16 unk_12;
    s16 unk_14;
    s16 unk_16;
    s16 unk_18;
    s16 unk_1A;
    s16 unk_1C;
    s16 unk_1E;
    s32 unk_20;
    f32 unk_24;
    f32 unk_28;
    f32 unk_2C;
    f32 unk_30;
    f32 unk_34;
    f32 unk_38;
    f32 unk_3C;
    f32 unk_40;
    f32 unk_44;
    f32 unk_48;
    f32 unk_4C;
    f32 unk_50;
    f32 unk_54;
    f32 unk_58;
    f32 unk_5C;
    f32 unk_60;
    f32 unk_64;
    f32 unk_68;
    f32 unk_6C;
    f32 unk_70;
    f32 unk_74;
    f32 unk_78;
    f32 unk_7C;
    f32 unk_80;
    f32 unk_84;
    s32 unk_88;
    u8 unk_8C;
    u8 unk_8D;
    u8 unk_8E;
    u8 unk_8F;
    s32 unk_90;
    s32 unk_94;
    s32 unk_98;
    char* unk_9C;
    char* unk_A0;
    char* unk_A4;
    char* unk_A8;
    s16 unk_AC;
    s16 unk_AE;
    void* regist;
    u8 unk_B4;
    u8 unk_B5;
    u8 unk_B6;
    u8 unk_B7;
	void* mParts; //BattleWorkUnitPart*
	void* init_evt;
	DataTable* dataTable; //BattleDataEntry*
} BattleUnitKind; //sizeof 0xC4

char regist[] = {
    0x64, 0x6E, 0x64, 0x64,
    0x64, 0x64, 0x64, 0x64,
    0x64, 0x64, 0x64, 0x64,
    0x64, 0x64, 0x64, 0x6E,
    0x64, 0x64, 0x64, 0x64,
    0x64, 0x96,
};


ActorPartBlueprint parts[] = {
    {
    /*.partsTotal = */  1,
    /*.unk_04 = */       "btl_un_kuriboo",
    /*.unk_08 = */       "c_kuribo",
    /*.unk_0C = */       0x00000000,
    /*.unk_10 = */       0x00000000,
    /*.unk_14 = */       0x00000000,
    /*.unk_18 = */       0x00000000,
    /*.unk_1C = */       22.0f,
    /*.unk_20 = */       0.0f,
    /*.unk_24 = */       0.0f,
    /*.unk_28 = */       30.0f,
    /*.unk_2C = */       {0, 0, 0, 0},
    /*.targetOffset = */ {20, 30},
    /*.opacity = */      255,
    /*.unk_36 = */       {0, 0},
    /*.defenseTable = */ defence,
    /*.defenseAttr = */  defence_attr,
    /*.unk_40 = */       9,
    /*.unk_44 = */       0,
    /*.poseTable = */    pose_table,
    }
};

typedef enum BattleWeaponSpecialFlags {
	SPECIAL_UNGUARDABLE = 0x20000
} BattleWeaponSpecialFlags;

// typedef struct BattleWeapon {
// 	u8 field_0x0[0x18 - 0x0]; //0x0
// 	s8 mStylishCommandMultiplier; //0x18
// 	s8 field_0x19; //0x19
// 	s8 mBingoSlotChance; //0x1A
// 	s8 field_0x1B; //0x1B
// 	u8 field_0x1C[0x74 - 0x1C]; //0x1C
// 	BattleWeaponSpecialFlags special; //0x74
// 	u8 field_0x78[0xB0 - 0x78]; //0x78
// 	void* mAttackEvtScript; //0xB0
// 	u8 field_0xB4[0xC0 - 0xB4]; //0xB4
// } BattleWeapon; //sizeof 0xC0

typedef struct BattleWeapon {
/* 0x00 */ s32 unk_00;
/* 0x04 */ s32 unk_04;
/* 0x08 */ s32 unk_08;
/* 0x0C */ s32 unk_0C;
/* 0x10 */ u8 unk_10;
/* 0x11 */ u8 unk_11;
/* 0x12 */ u8 unk_12;
/* 0x13 */ u8 unk_13;
/* 0x14 */ f32 unk_14;
/* 0x18 */ u8 mStylishCommandMultiplier;
/* 0x19 */ u8 unk_19;
/* 0x1A */ u8 unk_1A;
/* 0x1B */ u8 unk_1B;
/* 0x1C */ void* mWeaponGetPowerDefault;
/* 0x20 */ s32 unk_20;
/* 0x24 */ s32 unk_24;
/* 0x28 */ s32 unk_28;
/* 0x2C */ s32 unk_2C;
/* 0x30 */ s32 unk_30;
/* 0x34 */ s32 unk_34;
/* 0x38 */ s32 unk_38;
/* 0x3C */ s32 unk_3C;
/* 0x40 */ s32 unk_40;
/* 0x44 */ s32 unk_44;
/* 0x48 */ s32 unk_48;
/* 0x4C */ s32 unk_4C;
/* 0x50 */ s32 unk_50;
/* 0x54 */ s32 unk_54;
/* 0x58 */ s32 unk_58;
/* 0x5C */ s32 unk_5C;
/* 0x60 */ s32 unk_60;
/* 0x64 */ u32 unk_flags1; //TODO: are these actually flags?
/* 0x68 */ u32 unk_flags2;  //TODO: are these actually flags?
/* 0x6C */ u8 unk_6C;
/* 0x6D */ u8 unk_6D;
/* 0x6E */ u8 unk_6E;
/* 0x6F */ u8 unk_6F;
/* 0x70 */ s32 unk_70;
/* 0x74 */ s32 unk_74; //tf is this
/* 0x78 */ s32 unk_78;
/* 0x7C */ u32 unk_flags3;  //TODO: are these actually flags?
/* 0x80 */ s32 unk_80;
/* 0x84 */ s32 unk_84;
/* 0x88 */ s32 unk_88;
/* 0x8C */ s32 unk_8C;
/* 0x90 */ s32 unk_90;
/* 0x94 */ s32 unk_94;
/* 0x98 */ s32 unk_98;
/* 0x9C */ s32 unk_9C;
/* 0xA0 */ s32 unk_A0;
/* 0xA4 */ s32 unk_A4;
/* 0xA8 */ s32 unk_A8;
/* 0xAC */ s32 unk_AC;
/* 0xB0 */ s32 unk_B0;
/* 0xB4 */ u8 unk_B4;
/* 0xB5 */ u8 unk_B5;
/* 0xB6 */ u8 unk_B6;
/* 0xB7 */ u8 unk_B7;
/* 0xB8 */ s32 unk_B8;
/* 0xBC */ s32 unk_BC;
} BattleWeapon; //sizeof 0xC0

s32 weaponGetPowerDefault(void); //unsure on signature

BattleWeapon weapon_tik_kuriboo_attack = {
/*.unk_00 = */       0x00000000,
/*.unk_04 = */       0x00000000,
/*.unk_08 = */       0x00000000,
/*.unk_0C = */       0x00000000,
/*.unk_10 = */       100,
/*.unk_11 = */       0,
/*.unk_12 = */       0,
/*.unk_13 = */       1,
/*.unk_14 = */       1.0f,
/*.unk_18 = */       1,
/*.unk_19 = */       1,
/*.unk_1A = */       1,
/*.unk_1B = */       1,
/*.unk_1C = */       weaponGetPowerDefault,
/*.unk_20 = */       0x00000001,
/*.unk_24 = */       0x00000000,
/*.unk_28 = */       0x00000000,
/*.unk_2C = */       0x00000000,
/*.unk_30 = */       0x00000000,
/*.unk_34 = */       0x00000000,
/*.unk_38 = */       0x00000000,
/*.unk_3C = */       0x00000000,
/*.unk_40 = */       0x00000000,
/*.unk_44 = */       0x00000000,
/*.unk_48 = */       0x00000000,
/*.unk_4C = */       0x00000000,
/*.unk_50 = */       0x00000000,
/*.unk_54 = */       0x00000000,
/*.unk_58 = */       0x00000000,
/*.unk_5C = */       0x00000000,
/*.unk_60 = */       0x00000000,
/*.unk_flags1 = */   0x01101260,
/*.unk_flags2 = */   0x20001000,
/*.unk_6C = */       0,
/*.unk_6D = */       0,
/*.unk_6E = */       3,
/*.unk_6F = */       2,
/*.unk_70 = */       0x00000000,
/*.unk_74 = */       0x00005087,
/*.unk_78 = */       0x00000000,
/*.unk_7C = */       0x80002004,
/*.unk_80 = */       0x00000000,
/*.unk_84 = */       0x00000000,
/*.unk_88 = */       0x00000000,
/*.unk_8C = */       0x00000000,
/*.unk_90 = */       0x00000000,
/*.unk_94 = */       0x00000000,
/*.unk_98 = */       0x00000000,
/*.unk_9C = */       0x00000000,
/*.unk_A0 = */       0x00000000,
/*.unk_A4 = */       0x00000000,
/*.unk_A8 = */       0x00000000,
/*.unk_AC = */       0x00000000,
/*.unk_B0 = */       0x00000000,
/*.unk_B4 = */       0,
/*.unk_B5 = */       0,
/*.unk_B6 = */       0,
/*.unk_B7 = */       100,
/*.unk_B8 = */       0x00000000,
/*.unk_BC = */       0x00000000,
};

BattleWeapon weapon_tik_kuriboo_charge = {
/*.unk_00 = */       0x00000000,
/*.unk_04 = */       0x00000000,
/*.unk_08 = */       0x00000000,
/*.unk_0C = */       0x00000000,
/*.unk_10 = */       100,
/*.unk_11 = */       0,
/*.unk_12 = */       0,
/*.unk_13 = */       1,
/*.unk_14 = */       1.0f,
/*.unk_18 = */       1,
/*.unk_19 = */       1,
/*.unk_1A = */       1,
/*.unk_1B = */       1,
/*.unk_1C = */       weaponGetPowerDefault,
/*.unk_20 = */       0x00000001,
/*.unk_24 = */       0x00000000,
/*.unk_28 = */       0x00000000,
/*.unk_2C = */       0x00000000,
/*.unk_30 = */       0x00000000,
/*.unk_34 = */       0x00000000,
/*.unk_38 = */       0x00000000,
/*.unk_3C = */       0x00000000,
/*.unk_40 = */       0x00000000,
/*.unk_44 = */       0x00000000,
/*.unk_48 = */       0x00000000,
/*.unk_4C = */       0x00000000,
/*.unk_50 = */       0x00000000,
/*.unk_54 = */       0x00000000,
/*.unk_58 = */       0x00000000,
/*.unk_5C = */       0x00000000,
/*.unk_60 = */       0x00000000,
/*.unk_flags1 = */   0x01004020,
/*.unk_flags2 = */   0x20000000,
/*.unk_6C = */       0,
/*.unk_6D = */       0,
/*.unk_6E = */       3,
/*.unk_6F = */       2,
/*.unk_70 = */       0x00000000,
/*.unk_74 = */       0x00000108,
/*.unk_78 = */       0x000007FF,
/*.unk_7C = */       0x00000000,
/*.unk_80 = */       0x00000000,
/*.unk_84 = */       0x00000000,
/*.unk_88 = */       0x00000000,
/*.unk_8C = */       0x00000000,
/*.unk_90 = */       0x00000000,
/*.unk_94 = */       0x00000000,
/*.unk_98 = */       0x00000000,
/*.unk_9C = */       0x00000002, //charge amount
/*.unk_A0 = */       0x00000000,
/*.unk_A4 = */       0x00000000,
/*.unk_A8 = */       0x00000000,
/*.unk_AC = */       0x00000000,
/*.unk_B0 = */       0x00000000,
/*.unk_B4 = */       0,
/*.unk_B5 = */       0,
/*.unk_B6 = */       0,
/*.unk_B7 = */       100,
/*.unk_B8 = */       0x00000000,
/*.unk_BC = */       0x00000000,
};



EVT_BEGIN(wait_event) {
    CALL(btlevtcmd_AnimeChangePoseFromTable, -2, 1)
    RETURN
    END
};

EVT_BEGIN(damage_event) {
    SET(LVarA, -2)
    SET(LVarB, 1)
    SCRIPT_SYNC(btldefaultevt_Damage)
    RETURN
    END
};

EVT_BEGIN(phase_event) {
    RETURN
    END
};

EVT_BEGIN(attack_event) {
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
    CALL(btlevtcmd_snd_se, -2, PTR("SFX_ENM_KURI_ATTACK1"), FLOAT(-19531.250), 0, FLOAT(-19531.250)) //??? FLOAT(-19531.250))
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

EVT_BEGIN(attack_event_double_headbonk_with_pos_reset) {
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
        CASE_END
    CASE_INT_EQ(2)
        CALL(btlevtcmd_StartAvoid, LVar3, 40)
        GOTO(90)
        CASE_END
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
    CALL(btlevtcmd_snd_se, -2, PTR("SFX_ENM_KURI_ATTACK1"), FLOAT(-19531.250), 0, FLOAT(-19531.250)) //??? FLOAT(-19531.250))
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

EVT_BEGIN(attack_event_multi_headbonk) {
    CALL(btlevtcmd_EnemyItemUseCheck, -2, LVar0)
    IF_INT_NE(LVar0, 0)
        SCRIPT_SYNC(LVar0)
        CALL(btlevtcmd_StartWaitEvent, -2)
        RETURN
    END_IF
    SET(LVarC, PTR(&weapon_tik_kuriboo_attack))
    CALL(btlevtcmd_JumpSetting, -2, 20, FLOAT(0.000), FLOAT(0.699))
    CALL(btlevtcmd_GetEnemyBelong, -2, LVar0)
    CALL(btlevtcmd_SamplingEnemy, -2, LVar0, LVarC)
    CALL(btlevtcmd_ChoiceSamplingEnemy, LVarC, LVar3, LVar4)
    IF_INT_EQ(LVar3, -1)
        GOTO(99)
    END_IF
    CALL(btlevtcmd_WeaponAftereffect, LVarC)
    CALL(btlevtcmd_AttackDeclare, -2, LVar3, LVar4)
    CALL(btlevtcmd_WaitGuardMove)
    CALL(btlevtcmd_PayWeaponCost, -2, LVarC)
    CALL(btlevtcmd_RunDataEventChild, -2, 7)
    CALL(evt_btl_camera_set_mode, 0, 11)
    CALL(evt_btl_camera_set_homing_unitparts, 0, -2, 1, LVar3, LVar4)
    CALL(evt_btl_camera_set_moveSpeedLv, 0, 2)
    CALL(evt_btl_camera_set_zoom, 0, 200)
    CALL(btlevtcmd_AnimeChangePoseType, -2, 1, 42)
    CALL(btlevtcmd_SetMoveSpeed, -2, FLOAT(3.000))
    CALL(btlevtcmd_GetTakeoffPosition, -2, LVar3, LVar4, LVar0, LVar1, LVar2)
    CALL(btlevtcmd_CalculateFaceDirection, -2, -1, LVar0, LVar2, 1, LVarF)
    CALL(btlevtcmd_ChangeFaceDirection, -2, LVarF)
    CALL(btlevtcmd_GetMoveFrame, -2, LVar0, LVar1, LVar2, 0, LVarE)
    CALL(btlevtcmd_MovePosition, -2, LVar0, LVar1, LVar2, LVarE, -1, 0)
    CALL(btlevtcmd_CalculateFaceDirection, -2, -1, LVar3, LVar4, 16, LVarF)
    CALL(btlevtcmd_ChangeFaceDirection, -2, LVarF)

    //always do multibonk. the normal single attack is already a 50/50 on happening
    //randomly decides 2 - 6(?) hits
    CALL(evt_sub_random, 4, LVarB)
    ADD(LVarB, 2)
    // CALL(btlevtcmd_DrawLots, LVar0, 2, 50, 50)
    // SWITCH(LVar0)
    // CASE_INT_EQ(0)
    //     SET(LVarB, 0)
    // CASE_INT_EQ(1)
    //     CALL(evt_sub_random, 4, LVarB)
    //     ADD(LVarB, 1)
    // END_SWITCH
    SET(LVarA, 0)
    LABEL(10)
    IF_INT_GT_OR_EQ(LVarA, 1)
        CALL(btlevtcmd_PreCheckDamage, -2, LVar3, LVar4, LVarC, 0x00100100, LVar5)
    ELSE
        CALL(btlevtcmd_PreCheckDamage, -2, LVar3, LVar4, LVarC, 256, LVar5)
    END_IF
    SWITCH(LVar5)
    CASE_OR_EQ(2)
    CASE_OR_EQ(3)
    CASE_OR_EQ(6)
    CASE_OR_EQ(4)
        CASE_END
    CASE_INT_EQ(1)
    CASE_DEFAULT
        WAIT_MS(1000)
    END_SWITCH
    IF_INT_LT_OR_EQ(LVarA, 0)
        CALL(btlevtcmd_AnimeChangePose, -2, 1, PTR("PKR_A_2B")) //this probably needs to be changed
        WAIT_FRAMES(20)
    END_IF
    CALL(btlevtcmd_AnimeChangePose, -2, 1, PTR("PKR_J_1A")) //this probably needs to be changed
    BEGIN_THREAD
        WAIT_FRAMES(15)
        CALL(btlevtcmd_snd_se, -2, PTR("SFX_BTL_KURI_ATTACK1"), FLOAT(-19531.250), 0, FLOAT(-19531.250))
    END_THREAD
    CALL(btlevtcmd_JumpSetting, -2, 20, FLOAT(0.000), FLOAT(0.699))
    IF_INT_GT_OR_EQ(LVarA, LVarB)
        CALL(btlevtcmd_GetHitPos, LVar3, LVar4, LVar0, LVar1, LVar2)
        ADD(LVar2, 5)
        CALL(btlevtcmd_SetRotateOffset, -2, 0, 14, 0)
        CALL(btlevtcmd_SetRotate, -2, 0, 0, 0)
        BEGIN_CHILD_THREAD
            WAIT_FRAMES(15)
            LOOP(6)
                CALL(btlevtcmd_GetFaceDirection, -2, LVar0)
                MUL(LVar0, -30)
                CALL(btlevtcmd_AddRotate, -2, 0, 0, LVar0)
                WAIT_FRAMES(1)
            END_LOOP
        END_CHILD_THREAD
        CALL(btlevtcmd_MarioJumpPosition, -2, LVar0, LVar1, LVar2, 36, 3, -1)
    ELSE
        CALL(btlevtcmd_SetRotateOffset, -2, 0, 14, 0)
        BEGIN_CHILD_THREAD
            CALL(btlevtcmd_GetPosFloat, -2, LVar5, LVar6, LVar7)
            SET(LVar8, 0)
            LOOP(36)
                CALL(btlevtcmd_GetPosFloat, -2, LVarC, LVarD, LVarE)
                CALL(_krb_get_dir_tik_kuribo, LVar5, LVar6, LVarC, LVarD, LVar8)
                CALL(btlevtcmd_GetRotate, -2, LVar0, LVar1, LVar2)
                CALL(btlevtcmd_SetRotate, -2, LVar0, LVar1, LVar8)
                SET_FLOAT(LVar5, LVarC)
                SET_FLOAT(LVar6, LVarD)
                WAIT_FRAMES(1)
            END_LOOP
        END_CHILD_THREAD
        CALL(btlevtcmd_GetHitPos, LVar3, LVar4, LVar0, LVar1, LVar2)
        ADD(LVar2, 5)
        CALL(btlevtcmd_MarioJumpPosition, -2, LVar0, LVar1, LVar2, 36, 0, -1)
    END_IF
    IF_INT_NE(LVar5, 1)
        IF_INT_EQ(LVar5, 3)
            CALL(btlevtcmd_StartAvoid, LVar3, 38)
        END_IF
        IF_INT_EQ(LVar5, 6)
            CALL(btlevtcmd_StartAvoid, LVar3, 39)
        END_IF
        IF_INT_EQ(LVar5, 2)
            CALL(btlevtcmd_StartAvoid, LVar3, 40)
        END_IF
        CALL(btlevtcmd_JumpContinue, -2)
        CALL(btlevtcmd_SetRotateOffset, -2, 0, 0, 0)
        CALL(btlevtcmd_SetRotate, -2, 0, 0, 0)
        CALL(btlevtcmd_AnimeChangePose, -2, 1, PTR("PKR_S_1")) //probably needs changed
        CALL(btlevtcmd_SetFallAccel, -2, FLOAT(0.699))
        CALL(btlevtcmd_GetPos, -2, LVar0, LVar1, LVar2)
        CALL(btlevtcmd_MoveDirectionAdd, -2, LVar0, 30)
        CALL(btlevtcmd_JumpPosition, -2, LVar0, LVar1, LVar2, 20, -1)
        CALL(btlevtcmd_MoveDirectionAdd, -2, LVar0, 20)
        CALL(btlevtcmd_JumpPosition, -2, LVar0, LVar1, LVar2, 10, -1)
        WAIT_MS(500)
        GOTO(95)
    END_IF
    CALL(btlevtcmd_SetScale, -2, FLOAT(1.000), FLOAT(1.000), FLOAT(1.000))
    LOOP(4)
        CALL(btlevtcmd_AddScale, -2, FLOAT(0.079), FLOAT(-0.119), 0)
        WAIT_FRAMES(1)
    END_LOOP
    CALL(btlevtcmd_SetScale, -2, FLOAT(1.000), FLOAT(1.000), FLOAT(1.000))
    BEGIN_THREAD
        CALL(evt_btl_camera_set_moveSpeedLv, 0, 0)
        CALL(evt_btl_camera_set_zoom, 0, FLOAT(162.500))
        WAIT_FRAMES(10)
        CALL(evt_btl_camera_set_moveSpeedLv, 0, 2)
        CALL(evt_btl_camera_set_zoom, 0, 200)
    END_THREAD
    IF_INT_LT(LVarA, LVarB)
        CALL(btlevtcmd_ResultACDefence, LVar3, LVarC)
        CALL(btlevtcmd_CheckDamage, -2, LVar3, LVar4, LVarC, 0, LVar5)
        ADD(LVarA, 1)
        GOTO(10)
    ELSE
        CALL(btlevtcmd_ResultACDefence, LVar3, LVarC)
        CALL(btlevtcmd_CheckDamage, -2, LVar3, LVar4, LVarC, 256, LVar5)
    END_IF
    LABEL(90)
    BEGIN_CHILD_THREAD
        CALL(btlevtcmd_GetRotate, -2, FLOAT(-19531.250), FLOAT(-19531.250), LVar6)
        IF_INT_LT(LVar6, 0)
            MUL(LVar6, -1)
        END_IF
        CALL(btlevtcmd_GetFaceDirection, -2, LVar0)
        MUL(LVar6, LVar0)
        DIV(LVar6, 15)
        SET(LVar7, 15)
        LABEL(20)
        CALL(btlevtcmd_AddRotate, -2, 0, 0, LVar6)
        SUB(LVar7, 1)
        WAIT_FRAMES(1)
        IF_INT_GT_OR_EQ(LVar7, 1)
            GOTO(20)
        END_IF
        CALL(btlevtcmd_SetRotate, -2, 0, 0, 0)
    END_CHILD_THREAD
    CALL(btlevtcmd_SetFallAccel, -2, FLOAT(0.699))
    CALL(btlevtcmd_GetPos, -2, LVar0, LVar1, LVar2)
    CALL(btlevtcmd_GetHomePos, -2, FLOAT(-19531.250), LVar1, FLOAT(-19531.250))
    CALL(btlevtcmd_FaceDirectionSub, -2, LVar0, 60)
    CALL(btlevtcmd_JumpPosition, -2, LVar0, LVar1, LVar2, 30, -1)
    CALL(btlevtcmd_SetFallAccel, -2, FLOAT(0.600))
    CALL(btlevtcmd_FaceDirectionSub, -2, LVar0, 20)
    CALL(btlevtcmd_JumpPosition, -2, LVar0, LVar1, LVar2, 12, -1)
    CALL(btlevtcmd_FaceDirectionSub, -2, LVar0, 8)
    CALL(btlevtcmd_JumpPosition, -2, LVar0, LVar1, LVar2, 8, -1)
    LABEL(95)
    CALL(evt_btl_camera_set_mode, 0, 0)
    CALL(evt_btl_camera_set_moveSpeedLv, 0, 1)
    CALL(btlevtcmd_SetMoveSpeed, -2, FLOAT(6.000))
    CALL(btlevtcmd_AnimeChangePoseType, -2, 1, 40)
    CALL(btlevtcmd_GetHomePos, -2, LVar0, LVar1, LVar2)
    CALL(btlevtcmd_MovePosition, -2, LVar0, LVar1, LVar2, 0, -1, 0)
    LABEL(99)
    CALL(btlevtcmd_ResetFaceDirection, -2)
    CALL(btlevtcmd_StartWaitEvent, -2)
    RETURN
    END
};

s32 BattlePadMultiCheckNow(s32 port, u32 buttonMask);

//if A pressed, do normal headbonk
//if B pressed, do double headbonk
//if Y pressed, used item if one exist
API_CALLABLE(getPlayer2Input) {
    Bytecode* args = script->args;

    if (BattlePadMultiCheckNow(1, 0x100)) { //A button
        evtSetValue(script, *args++, 1);
    } else if (BattlePadMultiCheckNow(1, 0x200)) { //B button
        evtSetValue(script, *args++, 2);
    } else if (BattlePadMultiCheckNow(1, 0x800)) { //Y button
        evtSetValue(script, *args++, 3);
    }  else {
        evtSetValue(script, *args++, 0);
    }

    return 2;
}

extern EvtScript unk_evt_803537c4;
extern char partyWeapon_ChristineKiss[];

EVT_BEGIN(attack_event_kiss) {
    // --- Enemy target selection ---
    CALL(btlevtcmd_check_battleflag, LVar0, 2)
    IF_INT_NE(LVar0, 0)
        WAIT_MS(750)
        CALL(btlevtcmd_GetFirstAttackTarget, LVar3, LVar4)
    ELSE
        CALL(btlevtcmd_GetEnemyBelong, -2, LVar0)
        CALL(btlevtcmd_SamplingEnemy, -2, LVar0, PTR(partyWeapon_ChristineKiss))
        CALL(btlevtcmd_ChoiceSamplingEnemy, PTR(partyWeapon_ChristineKiss), LVar3, LVar4)
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

    // --- Setup ---
    SET(LVarC, PTR(partyWeapon_ChristineKiss))
    CALL(btlevtcmd_JumpSetting, -2, 20, FLOAT(0.000), FLOAT(0.699))
    CALL(btlevtcmd_WeaponAftereffect, LVarC)
    CALL(btlevtcmd_AttackDeclare, -2, LVar3, LVar4)
    CALL(btlevtcmd_WaitGuardMove)
    CALL(btlevtcmd_PayWeaponCost, -2, LVarC)

    // --- Camera ---
    CALL(evt_btl_camera_set_mode, 0, 7)
    CALL(evt_btl_camera_set_homing_unit, 0, -2, -2)
    CALL(evt_btl_camera_set_moveSpeedLv, 0, 1)
    CALL(evt_btl_camera_set_zoom, 0, 250)
    CALL(btlevtcmd_CalculateFaceDirection, -2, -1, LVar3, LVar4, 16, LVarF)
    CALL(btlevtcmd_ChangeFaceDirection, -2, LVarF)

    // --- AC setup (hardcoded difficulty 0 since enemies don't have action levels) ---
    CALL(btlevtcmd_AcSetDifficulty, -2, 0)
    CALL(btlevtcmd_AcGetDifficulty, LVar0)
    SUB(LVar0, 3)
    SWITCH(LVar0)
    CASE_INT_LT_OR_EQ(-3)
        SET(LVar0, 27)
        SET(LVar1, 20)
    CASE_INT_EQ(-2)
        SET(LVar0, 25)
        SET(LVar1, 28)
    CASE_INT_EQ(-1)
        SET(LVar0, 23)
        SET(LVar1, 30)
    CASE_INT_EQ(0)
        SET(LVar0, 23)
        SET(LVar1, 30)
    CASE_INT_EQ(1)
        SET(LVar0, 23)
        SET(LVar1, 30)
    CASE_INT_EQ(2)
        SET(LVar0, 23)
        SET(LVar1, 30)
    CASE_DEFAULT
        SET(LVar0, 23)
        SET(LVar1, 32)
    END_SWITCH
    CALL(btlevtcmd_AcSetParamAll, 16, 220, 70, 0, 0, LVar0, LVar1, 0)
    CALL(btlevtcmd_AcSetFlag, 0)
    CALL(btlevtcmd_SetupAC, -2, 5, 3, 60)
    WAIT_FRAMES(22)
    CALL(btlevtcmd_StartAC, 1)

    // --- Move toward target ---
    CALL(btlevtcmd_GetStatusMg, -2, LVar6)
    MULF(LVar6, 12)
    CALL(btlevtcmd_GetPos, LVar3, LVar0, LVar1, LVar2)
    CALL(btlevtcmd_FaceDirectionAdd, LVar3, LVar0, LVar6)
    CALL(btlevtcmd_GetStatusMg, LVar3, LVar6)
    MULF(LVar6, 12)
    CALL(btlevtcmd_FaceDirectionAdd, LVar3, LVar0, LVar6)
    CALL(btlevtcmd_MovePosition, -2, LVar0, LVar1, LVar2, 200, -1, 0)

    // --- AC result ---
    CALL(btlevtcmd_ResultAC)
    CALL(btlevtcmd_GetResultAC, LVar0)
    IF_BITS_SET(LVar0, 2)
        CALL(btlevtcmd_GetPos, -2, LVar0, LVar1, LVar2)
        CALL(btlevtcmd_GetHeight, -2, LVar6)
        ADD(LVar1, LVar6)
        CALL(btlevtcmd_GetResultPrizeLv, -5, 0, LVar6)
        CALL(btlevtcmd_ACSuccessEffect, LVar6, LVar0, LVar1, LVar2)
    END_IF
    CALL(btlevtcmd_GetResultAC, LVar6)
    CALL(btlevtcmd_StopAC)
    CALL(btlevtcmd_CalculateFaceDirection, -2, -1, LVar3, LVar4, 16, LVarF)
    CALL(btlevtcmd_ChangeFaceDirection, -2, LVarF)
    CALL(evt_btl_camera_set_moveSpeedLv, 0, 2)
    CALL(evt_btl_camera_set_zoom, 0, 350)
    CALL(btlevtcmd_snd_se, -2, PTR("SFX_BTL_KURI_KISS1"), FLOAT(-19531.250), 0, FLOAT(-19531.250))

    // Kiss pose (replaces PKR_O_1 + GetBodyId)
    CALL(btlevtcmd_AnimeChangePoseType, -2, 1, 43)
    WAIT_MS(200)

    // --- Kiss effect ---
    CALL(btlevtcmd_GetPos, -2, LVar0, LVar1, LVar2)
    CALL(btlevtcmd_FaceDirectionAdd, -2, LVar0, 15)
    ADD(LVar1, 30)
    CALL(btlevtcmd_GetFaceDirection, -2, LVarE)
    MUL(LVarE, 45)
    CALL(evt_eff, 0, PTR("kiss"), 1, LVar0, LVar1, LVar2, LVarE, 0, 0, 0, 0, 0, 0, 0)

    // --- Damage / hustle thread ---
    BEGIN_THREAD_TID(LVarF)
        IF_BITS_SET(LVar6, 2)
            CALL(btlevtcmd_GetPos, LVar3, LVar0, LVar1, LVar2)
            ADD(LVar2, 15)
            CALL(btlevtcmd_GetHeight, LVar3, LVarF)
            CALL(btlevtcmd_GetStatusMg, LVar3, LVarE)
            MULF(LVarF, LVarE)
            DIV(LVarF, 2)
            ADD(LVar1, LVarF)
            CALL(evt_eff, 0, PTR("recovery"), 6, LVar0, LVar1, LVar2, 0, 0, 0, 0, 0, 0, 0, 0)
            CALL(evt_snd_sfxon_3d, PTR("SFX_BTL_KURI_CHEER_KISS1"), LVar0, LVar1, LVar2, 0)
            WAIT_FRAMES(40)
            CALL(btlevtcmd_GetResultPrizeLv, -5, 0, LVar6)
            CALL(btlevtcmd_AudienceDeclareACResult, LVarC, LVar6)
            // _set_hustle removed - party member only
        ELSE
            WAIT_FRAMES(40)
            CALL(btlevtcmd_AudienceDeclareACResult, LVarC, -1)
            CALL(btlevtcmd_CheckDamage, -2, LVar3, LVar4, LVarC, 0x20000100, LVar5)
        END_IF
    END_THREAD

    // --- ACR timing window ---
    CALL(btlevtcmd_ftof, 24, LVar0)
    CALL(btlevtcmd_ftof, 48, LVar1)
    CALL(btlevtcmd_ACRStart, -2, LVar0, LVar1, LVar1, 0)
    CALL(btlevtcmd_ACRGetResult, LVar7, LVar8)
    IF_INT_GT_OR_EQ(LVar7, 2)
        CALL(btlevtcmd_AudienceDeclareAcrobatResult, LVarC, 1, 0, 0, 0)
        // Jump/celebrate poses (replaces PKR_J_1B and PKR_Y_1)
        CALL(btlevtcmd_AnimeChangePoseType, -2, 1, 50)
        WAIT_MS(166)
        CALL(btlevtcmd_AnimeChangePoseType, -2, 1, 43)
        WAIT_MS(167)
    ELSE
        CALL(evt_audience_acrobat_notry)
        WAIT_FRAMES(20)
    END_IF

    CALL(btlevtcmd_SetUnitWork, -2, 2, 1)

    // IF_BITS_SET(LVar6, 2)
    //     CALL(btlevtcmd_AnnounceMessage, 0, 0, 0, PTR("msg_st_chg_mario_quick"), 60)
    // ELSE
    //     WAIT_MS(500)
    // END_IF

    // --- Cleanup (WaitEventEnd replaced with wait for thread to finish) ---
    CALL(evt_btl_camera_set_mode, 0, 0)
    CALL(evt_btl_camera_set_moveSpeedLv, 0, 1)
    WAIT_FRAMES(40)
    CALL(btlevtcmd_ResetFaceDirection, -2)
    CALL(evt_audience_ap_recovery)
    CALL(btlevtcmd_InviteApInfoReport)
    CALL(btlevtcmd_SetMoveSpeed, -2, FLOAT(6.000))
    CALL(btlevtcmd_AnimeChangePoseType, -2, 1, 40)
    CALL(btlevtcmd_GetHomePos, -2, LVar0, LVar1, LVar2)
    CALL(btlevtcmd_MovePosition, -2, LVar0, LVar1, LVar2, 0, -1, 0)
    LABEL(99)
    CALL(btlevtcmd_ResetFaceDirection, -2)
    CALL(btlevtcmd_StartWaitEvent, -2)
    RETURN
    END
};

EVT_BEGIN(decide_attack_tik_kuribo) {
    // If already charged, skip lottery and go straight to attack (consumes charge)
    CALL(btlevtcmd_GetUnitWork, -2, 0, LVar0)
    IF_INT_NE(LVar0, 0)
        CALL(btlevtcmd_SetUnitWork, -2, 0, 0)
        SCRIPT_SYNC(attack_event_multi_headbonk)
        RETURN
    END_IF

    // Check lifetime charge counter (slot 1) — if already charged twice, always attack
    CALL(btlevtcmd_GetUnitWork, -2, 1, LVar0)
    IF_INT_GT_OR_EQ(LVar0, 2)
        SCRIPT_SYNC(attack_event_multi_headbonk)
        RETURN
    END_IF

    CALL(btlevtcmd_get_turn, LVar0)
    IF_INT_LT_OR_EQ(LVar0, 1)
        CALL(btlevtcmd_DrawLots, LVar0, 2, 25, 75)
    ELSE
        CALL(btlevtcmd_DrawLots, LVar0, 2, 25, 25)
    END_IF
    IF_INT_EQ(LVar0, 1)
        // Increment lifetime charge counter
        CALL(btlevtcmd_GetUnitWork, -2, 1, LVar0)
        ADD(LVar0, 1)
        CALL(btlevtcmd_SetUnitWork, -2, 1, LVar0)
        SET(LVar9, PTR(&weapon_tik_kuriboo_charge))
        CALL(btlevtcmd_PayWeaponCost, -2, LVar9)
        CALL(btlevtcmd_SetUnitWork, -2, 0, 1)
        CALL(evt_btl_camera_set_mode, 0, 7)
        CALL(evt_btl_camera_set_homing_unit, 0, -2, -1)
        CALL(evt_btl_camera_set_moveSpeedLv, 0, 2)
        CALL(evt_btl_camera_set_zoom, 0, 300)
        WAIT_FRAMES(40)
        CALL(btlevtcmd_GetPos, -2, LVar0, LVar1, LVar2)
        ADD(LVar1, 15)
        ADD(LVar2, 10)
        CALL(btlevtcmd_snd_se, -2, PTR("SFX_ENM_CHARGE1"), FLOAT(-19531.250), 0, FLOAT(-19531.250))
        CALL(evt_eff64, 0, PTR("crystal_n64"), 7, LVar0, LVar1, LVar2, FLOAT(1.500), 60, 0, 0, 0, 0, 0, 0)
        WAIT_MS(1000)
        BEGIN_THREAD
            CALL(evt_btl_camera_set_mode, 0, 3)
            CALL(btlevtcmd_GetPos, -2, LVar0, LVar1, LVar2)
            CALL(btlevtcmd_JumpSetting, -2, 20, 0, FLOAT(1.000))
            CALL(btlevtcmd_JumpPosition, -2, LVar0, LVar1, LVar2, 20, -1)
            WAIT_MS(500)
            CALL(evt_btl_camera_set_mode, 0, 0)
        END_THREAD
        CALL(btlevtcmd_CheckDamage, -2, -2, 1, LVar9, 256, LVar5)
        RETURN
    ELSE
        SCRIPT_SYNC(attack_event_multi_headbonk)
    END_IF

    RETURN
    END
};

EVT_BEGIN(init_event_kuribo_new) {
    CALL(btlevtcmd_SetEventWait, -2, PTR(wait_event))
    CALL(btlevtcmd_SetEventAttack, -2, PTR(decide_attack_tik_kuribo))
    CALL(btlevtcmd_SetEventDamage, -2, PTR(damage_event))
    CALL(btlevtcmd_SetEventConfusion, -2, PTR(decide_attack_tik_kuribo))
    CALL(btlevtcmd_SetRunSound, -2, PTR("SFX_ENM_KURI_MOVE1"), PTR("SFX_ENM_KURI_MOVE2"), 0, 6, 6)
    CALL(btlevtcmd_SetWalkSound, -2, PTR("SFX_ENM_KURI_MOVE1"), PTR("SFX_ENM_KURI_MOVE2"), 0, 6, 6)
    CALL(btlevtcmd_SetJumpSound, -2, PTR("SFX_ENM_KURI_JUMP1"), PTR("SFX_ENM_KURI_LANDING1"))
    CALL(btlevtcmd_StartWaitEvent, -2)
    RETURN
    END
};


#define UNIT_KURIBO 1
// unit_kuriboo_24_data_1CDA8
// BattleUnitKind unit_tik_kuribo = {
BattleUnitKind unit_kuriboo_24_data_1CDA8 = {
/* 0x00 */          UNIT_KURIBO,
/* 0x04 */          "btl_un_kuriboo",
/* 0x08 */          {0, 2, 0, 0},
/* mDangerHP */     1,
/* mPerilHP */      1,
/* mLevel */        7,
/* mBonusExp*/      0,
/* unk_10 */        316,
/* unk_12 */        70,
/* unk_14 */        0x270F,
/* unk_16 */        0x0017,
/* unk_18 */        0x0019,
/* unk_1A */        0x0005,
/* unk_1C */        0x0019,
/* unk_1E */        0x0000,
/* unk_20 */        0x00000000,
/* unk_24 */        12.0f,
/* unk_28 */        0.0f,
/* unk_2C */        0.0f,
/* unk_30 */        0.0f,
/* unk_34 */        0.0f,
/* unk_38 */        0.0f,
/* unk_3C */        12.0f,
/* unk_40 */        0.0f,
/* unk_44 */        -10.0f,
/* unk_48 */        0.0f,
/* unk_4C */        0.0f,
/* unk_50 */        0.0f,
/* unk_54 */        0.0f,
/* unk_58 */        0.0f,
/* unk_5C */        11.5f,
/* unk_60 */        0.0f,
/* unk_64 */        0.0f,
/* unk_68 */        11.5f,
/* unk_6C */        18.5f,
/* unk_70 */        0.0f,
/* unk_74 */        0.0f,
/* unk_78 */        12.0f,
/* unk_7C */        0.0f,
/* unk_80 */        23.0f,
/* unk_84 */        25.0f,
/* unk_88 */        0x00000002,
/* unk_8C */        100,
/* unk_8D */        20,
/* unk_8E */        0,
/* unk_8F */        0,
/* unk_90 */        0,
/* unk_94 */        0,
/* unk_98 */        0,
/* unk_9C */        "SFX_ENM_KURI_DAMAGED1",
/* unk_A0 */        "SFX_BTL_DAMAGE_FIRE1",
/* unk_A4 */        "SFX_BTL_DAMAGE_ICE1",
/* unk_A8 */        "SFX_BTL_DAMAGE_BIRIBIRI1",
/* unk_AC */        0x0004,
/* unk_AE */        0x0000,
/* regist */        regist,

/* unk_B4 */        1,
/* unk_B5 */        0,
/* unk_B6 */        0,
/* unk_B7 */        0,
/* mParts */        &parts[0],
/* init_evt */      init_event_kuribo_new,
/* dataTable */     &data_table,
};


// EVT_BEGIN(init_event_kuribo_new) {

//     // LOOP(0)
//     //     CALL(getPlayer2Input, LVar0) //get player input, either 0 for nothing, 1 for headbonk, 2 for double headbonk
//     //     IF_INT_NE(LVar0, 0)
//     //         BREAK_LOOP
//     //     END_IF
//     //     WAIT_FRAMES(1)
//     // END_LOOP

//     // IF_INT_EQ(LVar0, 1) //normal headbonk
//     //     CALL(btlevtcmd_SetEventAttack, -2, PTR(attack_event))
//     //     CALL(btlevtcmd_SetEventConfusion, -2, PTR(attack_event))
//     // ELSE
//     //     CALL(btlevtcmd_SetEventAttack, -2, PTR(attack_event_double_headbonk_with_pos_reset))
//     //     CALL(btlevtcmd_SetEventConfusion, -2, PTR(attack_event_double_headbonk_with_pos_reset))
//     // END_IF

//     CALL(btlevtcmd_SetEventWait, -2, PTR(wait_event))
//     CALL(btlevtcmd_SetEventDamage, -2, PTR(damage_event))
    
//     CALL(btlevtcmd_SetRunSound, -2, PTR("SFX_ENM_KURI_MOVE1"), PTR("SFX_ENM_KURI_MOVE2"), 0, 6, 6)
//     CALL(btlevtcmd_SetWalkSound, -2, PTR("SFX_ENM_KURI_MOVE1"), PTR("SFX_ENM_KURI_MOVE2"), 0, 6, 6)
//     CALL(btlevtcmd_SetJumpSound, -2, PTR("SFX_ENM_KURI_JUMP1"), PTR("SFX_ENM_KURI_LANDING1"))
//     CALL(btlevtcmd_StartWaitEvent, -2)
//     RETURN
//     END
// };
