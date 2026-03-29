#include "common_structs.h"

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
    void* unk_04; //??
    s32 unk_08;
    s32 unk_0C;
} DataTable; //sizeof 0x10

typedef struct BattleUnitKind {
/* 0x00 */ BattleUnitType mUnitType;
/* 0x04 */ char* mUnitName;
/* 0x08 */ s16 maxHP;
/* 0x0A */ s16 maxFP;
/* 0x0C */ s8 mDangerHP;
/* 0x0D */ s8 mPerilHP;
/* 0x0E */ s8 mLevel;
/* 0x0F */ s8 mBonusExp;
/* 0x10 */ s8 mBonusCoin;
/* 0x11 */ s8 mBonusCoinRate;
/* 0x12 */ s8 mBaseCoin;
/* 0x13 */ s8 mRunRate;
/* 0x14 */ s16 mPowerBounceSoftCap;
/* 0x16 */ s16 width;
/* 0x18 */ s16 height;
/* 0x1A */ s16 hitOffset[2];
/* 0x1E */ s16 unk_1E; //padding?
/* 0x20 */ Vec mCenterOffset;
/* 0x2C */ s16 mHpGaugeOffset[2];
/* 0x30 */ Vec mTalkTogeBaseOffset;
/* 0x3C */ Vec mHeldItemBaseOffset;
/* 0x48 */ Vec mBurnFlameOffset;
/* 0x54 */ f32 unk_54; // used in unknown Vivian function (0x80182cc4 in US)
/* 0x58 */ f32 unk_58; // used in unknown Vivian function (0x80182cc4 in US)
/* 0x5C */ Vec mBintaHitOffset;
/* 0x68 */ Vec mKissHitOffset;
/* 0x74 */ Vec mCutBaseOffset;
/* 0x80 */ f32 mCutWidth;
/* 0x84 */ f32 mCutHeight;
/* 0x88 */ u8 mTurnOrder;
/* 0x89 */ u8 mTurnOrderVariance;
/* 0x8A */ u8 mSwallowChance;
/* 0x8B */ u8 mSwallowAttributes;
/* 0x8C */ u8 mUltraHammerKnockChance; //(always 100 or 0)
/* 0x8D */ u8 mItemStealParam; //(always 20 or 0)
/* 0x8E */ u8 unk_8E; //padding?
/* 0x8F */ u8 unk_8F; //padding?
/* 0x90 */ Vec mStarPointDispOffset;
/* 0x9C */ char* mDamagedSfxName;
/* 0xA0 */ char* mFireDamageSfxName;
/* 0xA4 */ char* mIceDamageSfxName;
/* 0xA8 */ char* mExplosionDamageSfxName;
/* 0xAC */ s32 mDefaultAttributes; //BattleUnitAttribute_Flags
/* 0xB0 */ void* regist; //StatusVulnerability
/* 0xB4 */ s8 mNumParts;
/* 0xB5 */ u8 unk_B5; //padding?
/* 0xB6 */ u8 unk_B6; //padding?
/* 0xB7 */ u8 unk_B7; //padding?
/* 0xB8 */ void* mParts; //BattleWorkUnitPart*
/* 0xBC */ void* mInit_evt;
/* 0xC0 */ DataTable* dataTable; //BattleDataEntry*
} BattleUnitKind; //sizeof 0xC4

typedef enum BattleWeaponSpecialFlags {
	SPECIAL_UNGUARDABLE = 0x20000
} BattleWeaponSpecialFlags;

// All not listed are seemingly never used.
typedef enum AttackTargetClass_Flags {
    CannotTargetMarioOrShellShield = 0x1,
    CannotTargetPartner = 0x2,
    CannotTargetEnemy = 0x10,
    CannotTargetTreeOrSwitch = 0x20,
    CannotTargetSystemUnits = 0x40,// (units 0xda ~ 0xdd, more specifically)
    CannotTargetOppositeAlliance = 0x100,
    CannotTargetOwnAlliance = 0x200,
    CannotTargetSelf = 0x1000,
    CannotTargetSameSpecies = 0x2000,
    OnlyTargetSelf = 0x4000,
    OnlyTargetMario = 0x10000,
    OnlyTargetTreeOrSwitch = 0x20000,
    OnlyTargetPreferredParts = 0x100000, //(must have parts attribute 0x1/0x2)
    OnlyTargetSelectParts = 0x200000, //(must have parts attribute 0x1/0x2/0x4)
    SingleTarget = 0x1000000,
    MultipleTarget = 0x2000000,
    CannotTargetAnything =  0x80000000 //(returns no valid targets if set)
} AttackTargetClass_Flags;

// All not listed are seemingly never used.
typedef enum AttackTargetProperty_Flags {
    TATTLE_LIKE = 0x1,
    ATP_UNK_02 = 0x2,
    ATP_CANNOT_TARGET_CEILING = 0x4,
    ATP_CANNOT_TARGET_FLOATING = 0x8,
    ATP_CANNOT_TARGET_Grounded = 0x10, //e.g Tornado jump, hits all but grounded
    ATP_JUMP_LIKE = 0x1000,
    ATP_HAMMER_LIKE = 0x2000,
    ATP_SHELL_TOSS_LIKE = 0x4000,
    ATP_UNK_8000 = 0x8000,
    ATP_RECOIL_DAMAGE = 0x100000,
    ATP_CAN_ONLY_TARGET_FRONTMOST = 0x1000000,

    ATP_UNK_2000000 = 0x2000000,
    ATP_UNK_4000000 = 0x4000000,

    ATP_TARGET_SAME_ALLIANCE_DIRECTION = 0x10000000,
    ATP_TARGET_OPPOSITE_ALLIANCE_DIRECTION = 0x20000000,
} AttackTargetProperty_Flags;

// All not listed are seemingly never used.
typedef enum AttackSpecialProperty_Flags {
    ASP_BADGE_CAN_AFFECT_POWER = 0x1,
    ASP_STATUS_CAN_AFFECT_POWER = 0x2,
    ASP_IS_CHARGEABLE = 0x4,
    ASP_CANNOT_MISS = 0x8, //(still fails if target PartsAttribute 0x4000 and !0x40000)
    ASP_DIMINISHING_RETURNS_BY_HIT = 0x10,
    ASP_DIMINISHING_RETURNS_BY_TARGET = 0x20,
    ASP_PIERCES_DEFENSE = 0x40,
    ASP_CAN_BREAK_ICE = 0x80, //(does nothing, since it's also required that rand(100) < 0)
    ASP_IGNORE_TARGET_STATUS_VULNERABILITY = 0x100,
    ASP_UNK_200 = 0x200, //unknown, used by gale force
    ASP_IGNITES_IF_BURNED = 0x400, //(turns attacks fire-elemental if attacker is burned)
    ASP_UNK_800 = 0x800, //? makes Attack FX sounds?
    ASP_FLIP_SHELL_ENEMIES = 0x1000,
    ASP_FLIPS_BOMB_FLIPPABLE_ENEMIES = 0x2000,
    ASP_GROUNDS_WINGED_ENEMIES = 0x4000,
    ASP_UNK_8000 = 0x8000, //used at end of BattleCalculateDamage

    ASP_CAN_BE_USED_AS_CONFUSED_ACTION = 0x10000, //used at end of BattleCalculateDamage
    ASP_UNGUARDABLE = 0x20000, //used at end of BattleCalculateDamage
    ASP_UNK_40000 = 0x40000 //? if set and attacking enemy part w/attr 0x4000, won't stop attack
} AttackSpecialProperty_Flags;

// All not listed are seemingly never used.
typedef enum AttackCounterResistance_Flags {
    ACR_ELECTRIC = 1,
    ACR_TOP_SPIKY = 2,
    ACR_PREEMPTIVE_FRONT_SPIKY = 4,
    ACR_FRONT_SPIKY = 8,
    ACR_FIERY = 0x10,
    ACR_ICY = 0x20,
    ACR_POISON = 0x40,
    ACR_EXPLOSIVE = 0x80,
    ACR_VOLATILE_EXPLOSIVE = 0x100,
    ACR_PAYBACK = 0x200, //includes Return Postage
    ACR_HOLD_FAST = 0x400
} AttackCounterResistance_Flags;

// All not listed are seemingly never used.
typedef enum AttackTargetWeighting_Flags {
    ATW_PREFER_MARIO = 0x1,
    ATW_PREFER_PARTNER = 0x2,
    ATW_PREFER_FRONT = 0x4,
    ATW_PREFER_BACK = 0x8,
    ATW_PREFER_SAME_ALLIANCE = 0x10,
    ATW_PREFER_OPPOSITE_ALLIANCE = 0x20,
    ATW_PREFER_LESS_HEALTHY = 0x100,
    ATW_GREATLY_PREFER_LESS_HEALTHY = 0x200,
    ATW_PREFER_LOWER_HP = 0x400,
    ATW_PREFER_HIGHER_HP = 0x800,
    ATW_PREFER_IN_PERIL = 0x1000,
    ATW_UNK_2000 = 0x2000,
    ATW_CHOOSE_WEIGHTED_RANDOMLY = 0x80000000
} AttackTargetWeighting_Flags;

typedef struct BattleWeapon {
/* 0x00 */ char* mNameMsg;
/* 0x04 */ s16 mIcon;
/* 0x08 */ s32 mItemId;
/* 0x0C */ char* mDescMsg;
/* 0x10 */ s8 mBaseAccuracy;
/* 0x11 */ s8 mBaseFpCost;
/* 0x12 */ s8 mBaseSpCost;
/* 0x13 */ s8 mSuperguardable;
/* 0x14 */ f32 unk_14; //? generally 1.0f or 0.0f
/* 0x18 */ u8 mStylishCommandMultiplier;
/* 0x19 */ u8 unk_19; //?
/* 0x1A */ s8 mBingoSlotIncChance;
/* 0x1B */ u8 unk_1B; //?
/* 0x1C */ void* mWeaponGetPowerDefault;
/* 0x20 */ s32 mBaseDamageParams[8];
/* 0x40 */ void* mBaseFpDamageFunction;
/* 0x44 */ s32 mBaseFpDamageParams[8];
/* 0x64 */ AttackTargetClass_Flags mTargetFlagsHigh;
/* 0x68 */ AttackTargetProperty_Flags mTargetFlagsLo;
/* 0x6C */ s8 mWeaponElementType;
/* 0x6D */ s8 mDamagePattern; //unknown usage
/* 0x6E */ s8 mWeaponAcLevel; //base difficulty, always 3 by default?
/* 0x6F */ s8 unk_6F; //always 2, seemingly unused
/* 0x70 */ char* mActionCommandMsg;
/* 0x74 */ AttackSpecialProperty_Flags mSpecialPropertyFlags; //tf is this
/* 0x78 */ AttackCounterResistance_Flags mResistanceFlags;
/* 0x7C */ AttackTargetWeighting_Flags mTargetWeightingFlags;  //TODO: are these actually flags?
/* 0x80 */ s8 mSleepChance;
/* 0x81 */ s8 mSleepTime;
/* 0x82 */ s8 mStopChance;
/* 0x83 */ s8 mStopTime;

/* 0x84 */ s8 mDizzyChance;
/* 0x85 */ s8 mDizzyTime;

/* 0x86 */ s8 mPoisonChance;
/* 0x87 */ s8 mPoisonTime;
/* 0x88 */ s8 mPoisonStrength;

/* 0x89 */ s8 mConfuseChance;
/* 0x8A */ s8 mConfuseTime;

/* 0x8B */ s8 mElectricChance;
/* 0x8C */ s8 mElectricTime;

/* 0x8D */ s8 mDodgyChance;
/* 0x8E */ s8 mDodgyTime;

/* 0x8F */ s8 mBurnChance;
/* 0x90 */ s8 mBurnTime;

/* 0x91 */ s8 mFreezeChance;
/* 0x92 */ s8 mFreezeTime;

/* 0x93 */ s8 mSizeChangeChance;
/* 0x94 */ s8 mSizeChangeTime;
/* 0x95 */ s8 mSizeChangeStrength;

/* 0x96 */ s8 mAtkChangeChance;
/* 0x97 */ s8 mAtkChangeTime;
/* 0x98 */ s8 mAtkChangeStrength;

/* 0x99 */ s8 mDefChangeChance;
/* 0x9A */ s8 mDefChangeTime;
/* 0x9B */ s8 mDefChangeStrength;

/* 0x9C */ s8 mAllergicChance;
/* 0x9D */ s8 mAllergicTime;

/* 0x9E */ s8 mOKHOChance;
/* 0x9F */ s8 mChargeStrength;

/* 0xA0 */ s8 mFastChance;
/* 0xA1 */ s8 mFastTime;

/* 0xA2 */ s8 mSlowChance;
/* 0xA3 */ s8 mSlowTime;

/* 0xA4 */ s8 mFrightChance;
/* 0xA5 */ s8 mGaleForceChance;
/* 0xA6 */ s8 mPaybackTime;
/* 0xA7 */ s8 mHoldFastTime;
/* 0xA8 */ s8 mInvisibleChance;
/* 0xA9 */ s8 mInvisibleTime;
/* 0xAA */ s8 mHpRegenTime;
/* 0xAB */ s8 mHpRegenStrength;
/* 0xAC */ s8 mFpRegenTime;
/* 0xAD */ s8 mFpRegenStrength;
/* 0xB0 */ EvtScript* mAttackScript;
/* 0xB4 */ s8 mBgA1A2FallWeight; //?
/* 0xB5 */ s8 mBgA1FallWeight; //?
/* 0xB6 */ s8 mBgA2FallWeight; //?
/* 0xB7 */ s8 mBgANoFallWeight; //?
/* 0xB8 */ s8 mBgBFallChance;
/* 0xB9 */ s8 mNozzleTurnChance;
/* 0xBA */ s8 mNozzleFireChance;
/* 0xBB */ s8 mCeilingFallChance;
/* 0xBC */ s8 mObjectFallChance;
/* 0xBD */ s8 unk_BD;
/* 0xBE */ s8 unk_BE[2];
} BattleWeapon; //sizeof 0xC0

// typedef struct BattleWeapon {
// /* 0x00 */ s32 unk_00;
// /* 0x04 */ s32 unk_04;
// /* 0x08 */ s32 unk_08;
// /* 0x0C */ s32 unk_0C;
// /* 0x10 */ u8 unk_10;
// /* 0x11 */ u8 unk_11;
// /* 0x12 */ u8 unk_12;
// /* 0x13 */ u8 unk_13;
// /* 0x14 */ f32 unk_14;
// /* 0x18 */ u8 mStylishCommandMultiplier;
// /* 0x19 */ u8 unk_19;
// /* 0x1A */ u8 unk_1A;
// /* 0x1B */ u8 unk_1B;
// /* 0x1C */ void* mWeaponGetPowerDefault;
// /* 0x20 */ s32 unk_20;
// /* 0x24 */ s32 unk_24;
// /* 0x28 */ s32 unk_28;
// /* 0x2C */ s32 unk_2C;
// /* 0x30 */ s32 unk_30;
// /* 0x34 */ s32 unk_34;
// /* 0x38 */ s32 unk_38;
// /* 0x3C */ s32 unk_3C;
// /* 0x40 */ s32 unk_40;
// /* 0x44 */ s32 unk_44;
// /* 0x48 */ s32 unk_48;
// /* 0x4C */ s32 unk_4C;
// /* 0x50 */ s32 unk_50;
// /* 0x54 */ s32 unk_54;
// /* 0x58 */ s32 unk_58;
// /* 0x5C */ s32 unk_5C;
// /* 0x60 */ s32 unk_60;
// /* 0x64 */ u32 unk_flags1; //TODO: are these actually flags?
// /* 0x68 */ u32 unk_flags2;  //TODO: are these actually flags?
// /* 0x6C */ u8 unk_6C;
// /* 0x6D */ u8 unk_6D;
// /* 0x6E */ u8 unk_6E;
// /* 0x6F */ u8 unk_6F;
// /* 0x70 */ s32 unk_70;
// /* 0x74 */ s32 unk_74; //tf is this
// /* 0x78 */ s32 unk_78;
// /* 0x7C */ u32 unk_flags3;  //TODO: are these actually flags?
// /* 0x80 */ s32 unk_80;
// /* 0x84 */ s32 unk_84;
// /* 0x88 */ s32 unk_88;
// /* 0x8C */ s32 unk_8C;
// /* 0x90 */ s32 unk_90;
// /* 0x94 */ s32 unk_94;
// /* 0x98 */ s32 unk_98;
// /* 0x9C */ s32 unk_9C;
// /* 0xA0 */ s32 unk_A0;
// /* 0xA4 */ s32 unk_A4;
// /* 0xA8 */ s32 unk_A8;
// /* 0xAC */ s32 unk_AC;
// /* 0xB0 */ s32 unk_B0;
// /* 0xB4 */ u8 unk_B4;
// /* 0xB5 */ u8 unk_B5;
// /* 0xB6 */ u8 unk_B6;
// /* 0xB7 */ u8 unk_B7;
// /* 0xB8 */ s32 unk_B8;
// /* 0xBC */ s32 unk_BC;
// } BattleWeapon; //sizeof 0xC0

typedef struct ItemDropData {
    /* 0x00 */ s32 item_id;
    /* 0x04 */ s16 hold_weight;
    /* 0x06 */ s16 drop_weight;
} ItemDropData;

typedef struct BattleUnitSetup {
    /* 0x00 */ BattleUnitKind* unit_kind_params;
    /* 0x04 */ s8              ally_status;
    /* 0x05 */ u8              _pad0[3];
    /* 0x08 */ s32             attack_phase;
    /* 0x0c */ Vec             position;
    /* 0x18 */ u32             addl_target_offset_x;
    /* 0x1c */ u32             battle_unit_work[4];
    /* 0x2c */ ItemDropData*   item_drop_table;
} BattleUnitSetup; /* size = 0x30 */

typedef struct PoseTable {
    s32 poseID;
    char* poseStr;
} PoseTable;

typedef struct Defenses {
    s8 normal;
    s8 fire;
    s8 ice;
    s8 bomb;
    s8 electric;
} Defenses;

typedef struct DefensesAttr { //TODO: is this the same, it lists the elements?
    s8 normal;
    s8 fire;
    s8 ice;
    s8 bomb;
    s8 electric;
} DefensesAttr;

typedef struct ActorPartBlueprint {
/* 0x00 */ s32 partsTotal;
/* 0x04 */ char* unk_04; //btl name?
/* 0x08 */ char* unk_08; //file to load for Actor
/* 0x0C */ Vec mPartOffsetPos;
/* 0x18 */ Vec mPartHitBaseOffset;
/* 0x24 */ Vec mPartHitCursorBaseOffset;
/* 0x30 */ s16 targetOffset[2]; //targetOffset from pm64?
/* 0x34 */ s16 opacity; //why is this s16?
/* 0x36 */ char unk_36[2]; //probably padding
/* 0x38 */ Defenses* defenseTable;
/* 0x3C */ DefensesAttr* defenseAttr;
/* 0x40 */ s32 unk_40;
/* 0x44 */ s32 unk_44;
/* 0x48 */ PoseTable* poseTable;
} ActorPartBlueprint; // size = 0x4C

// "Attribute"; e.g. btlevtcmd_OnAttribute / btlevtcmd_OffAttribute
// Flags stored in BattleUnitWork.attribute (u32 bitfield).
enum BattleUnitAttribute_Flags {
    // Acts like actor is 300 units further back, unless part attr 0x20000 is set.
    BATTLE_UNIT_ATR_MAPLIKEOBJ              = 0x1,

    // Unit is attached to the ceiling (e.g. Swooper hanging idle).
    BATTLE_UNIT_ATR_CEILING                 = 0x2,

    // Unit is floating / not grounded, regardless of actual height.
    BATTLE_UNIT_ATR_FLOATING                = 0x4,

    // Unit is permanently invisible (no display, but still targetable).
    BATTLE_UNIT_ATR_PERMANENT_INVISIBILITY  = 0x8,

    // Unit is veiled; used by Vivian's Veil move.
    BATTLE_UNIT_ATR_VEILED                  = 0x10,

    // Unit is behind a shell shield (e.g. Koopa shell).
    BATTLE_UNIT_ATR_SHELL_SHIELDED          = 0x20,

    // Shell shield is active; makes unit untargetable (per _btlSamplingEnemy).
    BATTLE_UNIT_ATR_SHELL_SHIELD_ENABLED    = 0x40,

    // Called "LimitSwitch" in Switch; used at end of BattleCalculateDamage,
    // but seemingly unreferenced by anything in practice.
    BATTLE_UNIT_ATR_LIMIT_SWITCH            = 0x100,

    // Disables zero-gravity floatiness (unit behaves normally in zero-g stages).
    BATTLE_UNIT_ATR_DISABLE_ZEROG_FLOAT     = 0x1000,

    // Disables zero-gravity inability to move.
    BATTLE_UNIT_ATR_DISABLE_ZEROG_IMMOBILE  = 0x2000,

    // Disables the knockback applied by Spin and Hammer attacks.
    BATTLE_UNIT_ATR_DISABLE_SPIN_HAMMER_KNOCKBACK = 0x4000,

    // Unit is undead; healing items deal damage, revival items revive it, etc.
    BATTLE_UNIT_ATR_UNDEAD                  = 0x10000,

    // Unit is a corpse (used by player characters and Dry Bones at 0 HP).
    BATTLE_UNIT_ATR_CORPSE                  = 0x20000,

    // Game Over triggers if all player-allied actors with this flag are KO'd.
    // Only set on Mario in the original game.
    BATTLE_UNIT_ATR_LEADER                  = 0x40000,

    // Checked in battleMakePhaseEvtTable and btlseqPhaseFirstProcess;
    // seemingly skips attack and phase events for the unit.
    BATTLE_UNIT_ATR_SKIP_PHASE_EVT          = 0x80000,

    // Disables the spin effect from Love Slap (Flurrie's move).
    BATTLE_UNIT_ATR_DISABLE_LOVE_SLAP_SPIN  = 0x200000,

    // Suppresses floating damage number effects (no numbers shown over unit).
    BATTLE_UNIT_ATR_DISABLE_DAMAGE_NUMBERS  = 0x400000,

    // Skips displaying all parts of the actor (entire unit is hidden).
    BATTLE_UNIT_ATR_DISPLAY_OFF             = 0x1000000,

    // Hides the HP gauge above the unit.
    BATTLE_UNIT_ATR_HP_GAUGE_OFF            = 0x2000000,

    // Checked in btlUnitPartsDisp; adjusts part rendering to use view angles
    // (used for actors that need billboard-style or camera-relative display).
    BATTLE_UNIT_ATR_VIEW_ANGLE_DISP         = 0x4000000,

    // Checked in BattleCheckConcluded; marks a dead actor as having already
    // been processed for end-of-battle conclusion logic.
    BATTLE_UNIT_ATR_CONCLUDED               = 0x10000000,

    // Hides the unit's shadow.
    BATTLE_UNIT_ATR_SHADOW_DISPLAY_OFF      = 0x20000000,

    // Unit cannot receive damage from any source.
    BATTLE_UNIT_ATR_DISABLE_DAMAGE          = 0x40000000,
};

typedef struct PointDropData {
/* 0x00 */ s32 max_stat_percent;
/* 0x04 */ s32 overall_drop_rate;
/* 0x08 */ s32 drop_count;
/* 0x0C */ s32 individual_drop_rate;
} PointDropData; //sizeof 0x10

typedef struct BattleGroupSetup {
/* 0x00 */ s32 num_enemies;
/* 0x04 */ BattleUnitSetup* enemy_data;
/* 0x08 */ s32 held_item_weight;
/* 0x0C */ s32 random_item_weight;
/* 0x10 */ s32 no_item_weight;
/* 0x14 */ PointDropData* hp_drop_table;  // pointer to PointDropData[5]
/* 0x18 */ PointDropData* fp_drop_table;  // pointer to PointDropData[5]
/* 0x1C */ s32 unk_1C;
} BattleGroupSetup; //sizeof 0x20
