#include "evt.h"
#include "evt_functions.h"

// Types of battle unit (actors in battle - Goomba, System, Mario, etc.)
typedef enum BattleUnitType {
    INVALID_UNIT_TYPE = 0,
    
    // Enemies / bosses.
    GOOMBA = 0x01,
    PARAGOOMBA,
    SPIKY_GOOMBA,
    SPINIA,
    SPANIA,
    LORD_CRUMP_PROLOGUE,
    GUS,
    BLOOPER,
    LEFT_TENTACLE,
    RIGHT_TENTACLE,
    KOOPATROL,
    MAGIKOOPA,
    MAGIKOOPA_CLONE,
    KOOPA_TROOPA,
    PARATROOPA,
    FUZZY,
    DULL_BONES,
    BALD_CLEFT,
    BRISTLE,
    GOLD_FUZZY,
    FUZZY_HORDE,
    RED_BONES,
    HOOKTAIL,
    DARK_PUFF,
    PALE_PIRANHA,
    CLEFT,
    PIDER,
    X_NAUT,
    YUX,
    MINI_YUX,
    BELDAM_CH_2,
    MARILYN_CH_2,
    VIVIAN_CH_2,
    MAGNUS,
    X_FIST,
    GOOMBA_GLITZVILLE,
    KP_KOOPA,
    KP_PARATROOPA,
    POKEY,
    LAKITU,
    SPINY,
    HYPER_BALD_CLEFT,
    BOB_OMB,
    BANDIT,
    BIG_BANDIT,
    RED_SPIKY_BUZZY,
    SHADY_KOOPA,
    SHADY_PARATROOPA,
    RED_MAGIKOOPA,
    RED_MAGIKOOPA_CLONE,
    WHITE_MAGIKOOPA,
    WHITE_MAGIKOOPA_CLONE,
    GREEN_MAGIKOOPA,
    GREEN_MAGIKOOPA_CLONE,
    DARK_CRAW,
    HAMMER_BRO,
    BOOMERANG_BRO,
    FIRE_BRO,
    RED_CHOMP,
    DARK_KOOPATROL,
    IRON_CLEFT_RED,
    IRON_CLEFT_GREEN,
    BOWSER_CH_3,
    RAWK_HAWK,
    MACHO_GRUBBA,
    HYPER_GOOMBA,
    HYPER_PARAGOOMBA,
    HYPER_SPIKY_GOOMBA,
    CRAZEE_DAYZEE,
    AMAZY_DAYZEE,
    HYPER_CLEFT,
    BUZZY_BEETLE,
    SPIKE_TOP,
    SWOOPER,
    BOO,
    ATOMIC_BOO,
    DOOPLISS_CH_4_FIGHT_1,
    DOOPLISS_CH_4_INVINCIBLE,
    DOOPLISS_CH_4_FIGHT_2,
    GOOMBELLA_CH_4,
    KOOPS_CH_4,
    YOSHI_CH_4,
    FLURRIE_CH_4,
    EMBER,
    LAVA_BUBBLE,
    GREEN_FUZZY,
    FLOWER_FUZZY,
    PUTRID_PIRANHA,
    PARABUZZY,
    BILL_BLASTER,
    BULLET_BILL,
    BULKY_BOB_OMB,
    CORTEZ,
    CORTEZ_BONE_PILE,
    CORTEZ_SWORD,
    CORTEZ_HOOK,
    CORTEZ_RAPIER,
    CORTEZ_SABER,
    LORD_CRUMP_CH_5,
    X_NAUTS_CRUMP_FORMATION_1,
    X_NAUTS_CRUMP_FORMATION_2,
    X_NAUTS_CRUMP_FORMATION_3,
    RUFF_PUFF,
    POISON_POKEY,
    SPIKY_PARABUZZY,
    DARK_BOO,
    SMORG,
    SMORG_MIASMA_TENTACLE_A,
    SMORG_MIASMA_TENTACLE_B,
    SMORG_MIASMA_TENTACLE_C,
    SMORG_MIASMA_CLAW,
    ICE_PUFF,
    FROST_PIRANHA,
    MOON_CLEFT,
    Z_YUX,
    MINI_Z_YUX,
    X_YUX,
    MINI_X_YUX,
    X_NAUT_PHD,
    ELITE_X_NAUT,
    MAGNUS_2_0,
    X_PUNCH,
    SWOOPULA,
    PHANTOM_EMBER,
    BOMBSHELL_BILL_BLASTER,
    BOMBSHELL_BILL,
    CHAIN_CHOMP,
    DARK_WIZZERD,
    DARK_WIZZERD_CLONE,
    DRY_BONES,
    DARK_BONES,
    GLOOMTAIL,
    BELDAM_CH_8,
    MARILYN_CH_8,
    DOOPLISS_CH_8,
    DOOPLISS_CH_8_FAKE_MARIO,
    DOOPLISS_CH_8_GOOMBELLA,
    DOOPLISS_CH_8_KOOPS,
    DOOPLISS_CH_8_YOSHI,
    DOOPLISS_CH_8_FLURRIE,
    DOOPLISS_CH_8_VIVIAN,
    DOOPLISS_CH_8_BOBBERY,
    DOOPLISS_CH_8_MS_MOWZ,
    BOWSER_CH_8,
    KAMMY_KOOPA,
    GRODUS,
    GRODUS_X,
    SHADOW_QUEEN_PHASE_1,
    SHADOW_QUEEN_INVINCIBLE,
    SHADOW_QUEEN_PHASE_2,
    LEFT_RIGHT_HAND,
    DEAD_HANDS,
    GLOOMBA,
    PARAGLOOMBA,
    SPIKY_GLOOMBA,
    DARK_KOOPA,
    DARK_PARATROOPA,
    BADGE_BANDIT,
    DARK_LAKITU,
    SKY_BLUE_SPINY,
    WIZZERD,
    PIRANHA_PLANT,
    SPUNIA,
    ARANTULA,
    DARK_BRISTLE,
    POISON_PUFF,
    SWAMPIRE,
    BOB_ULK,
    ELITE_WIZZERD,
    ELITE_WIZZERD_CLONE,
    BONETAIL,
    
    // Unused enemies (which seem to have been later cuts).
    UNUSED_RED_BUZZY = 0xAC,
    UNUSED_RED_PARABUZZY,
    UNUSED_RED_SPIKY_PARABUZZY,
    UNUSED_HYPER_BOB_OMB,
    UNUSED_ULTRA_BOB_OMB,
    
    // Tutorial / epilogue actors.
    TUTORIAL_GOOMBELLA = 0xB1,
    TUTORIAL_FRANKLY_B2,
    TUTORIAL_FRANKLY_B3,
    TUTORIAL_FRANKLY_B4,
    EPILOGUE_DOOPLISS_MARIO,    // 0xB5
    EPILOGUE_FLURRIE,
    EPILOGUE_BOO,
    EPILOGUE_ATOMIC_BOO,
    EPILOGUE_MALE_TOAD,
    EPILOGUE_FEMALE_TOAD,
    
    // Unused actors.
    UNUSED_TEST,                 // 0xBB
    UNUSED_KANBU_2,
    UNUSED_BELDAM_2,
    UNUSED_MARILYN_2,
    UNUSED_VIVIAN_2,
    UNUSED_BELDAM_3,
    UNUSED_MARILYN_3,
    UNUSED_MECHA_KURI,          // 0xC2
    UNUSED_MECHA_KAME,
    UNUSED_OKORL,
    UNUSED_YOWARL,
    UNUSED_TUYONARL,
    UNUSED_WANAWANA,
    UNUSED_MINARAI_KAMEC,
    UNUSED_SHY_GUY,
    UNUSED_GROOVE_GUY,
    UNUSED_PYRO_GUY,
    UNUSED_SPY_GUY,
    UNUSED_ANTI_GUY,
    UNUSED_BZZAP,               // "hatty"
    UNUSED_MINI_BZZAP,          // "kohatty"
    UNUSED_UFO,
    UNUSED_PENNINGTON,
    UNUSED_FIGHTER,
    UNUSED_ZESS_T,
    UNUSED_MASTER,
    UNUSED_REPORTER,
    UNUSED_HOTDOG_MASTER,
    UNUSED_FLAVIO,
    
    // Special actors, mostly unused.
    // Actors 0xD8-0xD9 and 0xD8-0xDB tend to be treated specially in some
    // places, e.g. whether weapons are able to target an entity.
    UNUSED_TREE         = 0xD8,
    UNUSED_SWITCH       = 0xD9,
    UNUSED_TESTNPC      = 0xDA,
    BOMB_SQUAD_BOMB     = 0xDB,
    
    // System; the first BattleWorkUnit in every battle.
    SYSTEM              = 0xDC,
    // Used in the first Lord Crump battle?
    PROLOGUE_GOOMBELLA  = 0xDD,
    // Player party.
    MARIO               = 0xDE,
    SHELL_SHIELD        = 0xDF,
    GOOMBELLA           = 0xE0,
    KOOPS               = 0xE1,
    YOSHI               = 0xE2,
    FLURRIE             = 0xE3,
    VIVIAN              = 0xE4,
    BOBBERY             = 0xE5,
    MS_MOWZ             = 0xE6,
} BattleUnitType;

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
	BattleUnitType mUnitType; //0x0
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

typedef enum BattleWeaponSpecialFlags {
	SPECIAL_UNGUARDABLE = 0x20000
} BattleWeaponSpecialFlags;

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

//??
char regist[] = { //kuriboo regist
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
/* 0x00 */          GOOMBA,
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
/* init_evt */      init_event,
/* dataTable */     &data_table,
};
