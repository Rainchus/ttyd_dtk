#include "evt.h"
#include "evt_functions.h"

extern char weapon_tik_kuriboo_attack[];

void btlevtcmd_SetEventWait(void);
void btlevtcmd_SetEventAttack(void);
void btlevtcmd_SetEventDamage(void);
void btlevtcmd_SetEventConfusion(void);
void btlevtcmd_AnimeSetPoseSoundTable(void);
void btlevtcmd_StartWaitEvent(void);
void btlevtcmd_OffAttribute(void);
void btlevtcmd_OffPartsAttribute(void);
void btlevtcmd_AnimeChangePoseType(void);
void btlevtcmd_AnimeSetPoseTable(void);
void btlevtcmd_ChangeDataTable(void);
void btlevtcmd_ReplaceParts(void);
void btlevtcmd_OnUnitFlag(void);
void btlevtcmd_snd_se(void);
void btlevtcmd_GetPos(void);
void btlevtcmd_SetPos(void);
void btlevtcmd_SetFallAccel(void);
void btlevtcmd_SetHomePos(void);
void btlevtcmd_ChangeKind(void);
void btlevtcmd_WaitAttackEnd(void);
void btlevtcmd_EnemyItemUseCheck(void);
void btlevtcmd_GetEnemyBelong(void);
void btlevtcmd_SamplingEnemy(void);
void btlevtcmd_ChoiceSamplingEnemy(void);
void btlevtcmd_CheckToken(void);
void evt_btl_camera_set_mode(void);
void evt_btl_camera_set_homing_unit(void);
void evt_btl_camera_set_moveSpeedLv(void);
void evt_btl_camera_set_zoom(void);
void btlevtcmd_WeaponAftereffect(void);
void btlevtcmd_AttackDeclare(void);
void btlevtcmd_WaitGuardMove(void);
void btlevtcmd_PayWeaponCost(void);
void btlevtcmd_GetHitPos(void);
void btlevtcmd_FaceDirectionAdd(void);
void btlevtcmd_CalculateFaceDirection(void);
void btlevtcmd_ChangeFaceDirection(void);
void btlevtcmd_SetMoveSpeed(void);
void btlevtcmd_DivePosition(void);
void btlevtcmd_AnimeChangePoseFromTable(void);
void evt_btl_camera_nomove_y_onoff(void);
void evt_btl_camera_set_mode(void);
void btlevtcmd_FaceDirectionSub(void);
void btlevtcmd_PreCheckDamage(void);
void btlevtcmd_StartAvoid(void);
void btlevtcmd_ResultACDefence(void);
void btlevtcmd_CheckDamage(void);
void btlevtcmd_ResetFaceDirection(void);
void btlevtcmd_SetMoveSoundDataWork(void);
void btlevtcmd_GetHomePos(void);
void evt_btl_camera_shake_h(void);
void evt_btl_camera_set_moveSpeedLv(void);
void evt_btl_camera_add_zoom(void);
void btlevtcmd_JumpPosition(void);
void btlevtcmd_SetRunSound(void);
void btlevtcmd_SetWalkSound(void);
void btlevtcmd_SetJumpSound(void);
void btlevtcmd_JumpContinue(void);
void btlevtcmd_check_battleflag(void);
void btlevtcmd_JumpSetting(void);
void btlevtcmd_GetFirstAttackTarget(void);
void btlevtcmd_MovePosition(void);
void btlevtcmd_GetPosFloat(void);
void krb_get_dir(void);
void btlevtcmd_SetRotate(void);
void btlevtcmd_MoveDirectionAdd(void);

extern EvtScript init_event;
extern EvtScript damage_event;
extern EvtScript subsetevt_confuse_flustered;
extern EvtScript btldefaultevt_Damage;
extern EvtScript btldefaultevt_Dummy;
extern EvtScript decide_attack_tik_kuribo; //comes from kuribo enemy (paragoomba with no wings is just a kuribo)

extern char weapon_tik_patakuri_attack[];
extern char pose_sound_timing_table[];
extern char pose_table_tik_patakuri[];
extern char parts_tik_patakuri[];

static s32 data_table[] = {
    0x30,
    (s32)btldefaultevt_Dummy,
    0,
    0
};

static EVT_BEGIN(damage_event) {
    SET(LVarA, -2)
    SET(LVarB, 1)
    SCRIPT_SYNC(btldefaultevt_Damage)
    RETURN
    END
};

EVT_BEGIN(dmg_fall_event) {
    SET(LVarA, -2)
    SET(LVarB, 1)
    CALL(btlevtcmd_OffAttribute, LVarA, 4)
    CALL(btlevtcmd_OffPartsAttribute, LVarA, LVarB, 2048)
    CALL(btlevtcmd_AnimeChangePoseType, LVarA, LVarB, LVarE)
    WAIT_MS(1000)
    CALL(btlevtcmd_AnimeSetPoseTable, LVarA, LVarB, PTR(pose_table_tik_patakuri))
    CALL(btlevtcmd_ChangeDataTable, LVarA, PTR(data_table))
    CALL(btlevtcmd_ReplaceParts, LVarA, LVarB, PTR(parts_tik_patakuri), 1)
    CALL(btlevtcmd_OnUnitFlag, LVarA, 4)
    SET(LVarB, 1)
    CALL(btlevtcmd_AnimeChangePoseType, LVarA, LVarB, 39)
    CALL(btlevtcmd_snd_se, -2, PTR("SFX_ENM_FALL1"), FLOAT(-19531.250), 0, FLOAT(-19531.250))
    CALL(btlevtcmd_GetPos, LVarA, LVar0, LVar1, LVar2)
    SET(LVar1, 0)
    CALL(btlevtcmd_SetFallAccel, LVarA, FLOAT(1.000))
    CALL(btlevtcmd_JumpPosition, LVarA, LVar0, LVar1, LVar2, 10, -1)
    CALL(btlevtcmd_SetHomePos, LVarA, LVar0, LVar1, LVar2)
    CALL(btlevtcmd_snd_se, -2, PTR("SFX_ENM_KURI_MOVE1"), FLOAT(-19531.250), 0, FLOAT(-19531.250))
    WAIT_MS(500)
    CALL(btlevtcmd_ChangeKind, LVarA, 1)
    SCRIPT_SYNC(init_event)
    WAIT_FRAMES(1)
    CALL(btlevtcmd_AnimeChangePoseType, LVarA, LVarB, 39)
    RETURN
    END
};

EVT_BEGIN(patakuri_dmg_first_attack_pos) {
    CALL(btlevtcmd_GetPos, -2, LVar0, LVar1, LVar2)
    SET(LVar1, 10)
    CALL(btlevtcmd_SetPos, -2, LVar0, LVar1, LVar2)
    CALL(btlevtcmd_WaitAttackEnd)
    RETURN
    END
};

EVT_BEGIN(attack_event_patakuri) {
    // CALL(btlevtcmd_EnemyItemUseCheck, -2, LVar0)
    // IF_INT_NE(LVar0, 0)
    //     SCRIPT_SYNC(LVar0)
    //     CALL(btlevtcmd_StartWaitEvent, -2)
    //     RETURN
    // END_IF
    CALL(btlevtcmd_GetEnemyBelong, -2, LVar0)
    CALL(btlevtcmd_SamplingEnemy, -2, LVar0, PTR(weapon_tik_patakuri_attack))
    CALL(btlevtcmd_ChoiceSamplingEnemy, PTR(weapon_tik_patakuri_attack), LVar3, LVar4)
    IF_INT_EQ(LVar3, -1)
        CALL(btlevtcmd_CheckToken, -2, 16, LVar0)
        IF_INT_NE(LVar0, 0)
            SCRIPT_SYNC(subsetevt_confuse_flustered)
            RETURN
        END_IF
        GOTO(99)
    END_IF
    CALL(evt_btl_camera_set_mode, 0, 8)
    CALL(evt_btl_camera_set_homing_unit, 0, -2, LVar3)
    CALL(evt_btl_camera_set_moveSpeedLv, 0, 1)
    CALL(evt_btl_camera_set_zoom, 0, 250)
    CALL(btlevtcmd_WeaponAftereffect, PTR(weapon_tik_patakuri_attack))
    CALL(btlevtcmd_AttackDeclare, -2, LVar3, LVar4)
    CALL(btlevtcmd_WaitGuardMove)
    CALL(btlevtcmd_PayWeaponCost, -2, PTR(weapon_tik_patakuri_attack))
    CALL(btlevtcmd_AnimeChangePoseType, -2, 1, 40)
    CALL(btlevtcmd_GetHitPos, LVar3, LVar4, LVar0, LVar1, LVar2)
    CALL(btlevtcmd_FaceDirectionAdd, LVar3, LVar0, 50)
    ADD(LVar1, 40)
    CALL(btlevtcmd_CalculateFaceDirection, -2, -1, LVar0, LVar2, 1, LVarF)
    CALL(btlevtcmd_ChangeFaceDirection, -2, LVarF)
    CALL(btlevtcmd_SetMoveSpeed, -2, FLOAT(4.000))
    CALL(btlevtcmd_DivePosition, -2, LVar0, LVar1, LVar2, 0, -16, 0, 0, -1)
    WAIT_MS(100)
    CALL(btlevtcmd_CalculateFaceDirection, -2, -1, LVar3, LVar4, 16, LVarF)
    CALL(btlevtcmd_ChangeFaceDirection, -2, LVarF)
    CALL(evt_btl_camera_set_mode, 0, 3)
    CALL(evt_btl_camera_nomove_y_onoff, 0, 1)
    CALL(btlevtcmd_AnimeChangePoseType, -2, 1, 50)
    CALL(btlevtcmd_FaceDirectionAdd, LVar3, LVar0, 50)
    CALL(btlevtcmd_SetMoveSpeed, -2, FLOAT(5.000))
    CALL(btlevtcmd_snd_se, -2, PTR("SFX_ENM_PATAKURI_MOVE2"), FLOAT(-19531.250), 0, FLOAT(-19531.250))
    CALL(btlevtcmd_DivePosition, -2, LVar0, LVar1, LVar2, 0, 5, 4, 0, 0)
    CALL(btlevtcmd_PreCheckDamage, -2, LVar3, LVar4, PTR(weapon_tik_patakuri_attack), 256, LVar5)
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
        GOTO(98)
        CASE_END
    END_SWITCH
    LABEL(90)
    CALL(btlevtcmd_snd_se, -2, PTR("SFX_ENM_PATAKURI_MOVE3"), FLOAT(-19531.250), 0, FLOAT(-19531.250))
    CALL(btlevtcmd_SetMoveSpeed, -2, FLOAT(5.000))
    CALL(btlevtcmd_GetHitPos, LVar3, LVar4, LVar0, LVar1, LVar2)
    CALL(btlevtcmd_FaceDirectionSub, LVar3, LVar0, 50)
    SUB(LVar1, 10)
    CALL(btlevtcmd_DivePosition, -2, LVar0, LVar1, LVar2, 0, -20, 1, 0, 0)
    CALL(btlevtcmd_AnimeChangePoseType, -2, 1, 69)
    WAIT_MS(500)
    GOTO(98)
    LABEL(91)
    CALL(btlevtcmd_snd_se, -2, PTR("SFX_ENM_PATAKURI_MOVE3"), FLOAT(-19531.250), 0, FLOAT(-19531.250))
    CALL(btlevtcmd_SetMoveSpeed, -2, FLOAT(5.000))
    CALL(btlevtcmd_GetHitPos, LVar3, LVar4, LVar0, LVar1, LVar2)
    SUB(LVar1, 10)
    CALL(btlevtcmd_DivePosition, -2, LVar0, LVar1, LVar2, 0, -16, 1, 0, 0)
    CALL(evt_btl_camera_shake_h, 0, 1, 1, 8, 0)
    CALL(evt_btl_camera_set_moveSpeedLv, 0, 2)
    CALL(evt_btl_camera_add_zoom, 0, -50)
    CALL(btlevtcmd_ResultACDefence, LVar3, PTR(weapon_tik_patakuri_attack))
    CALL(btlevtcmd_CheckDamage, -2, LVar3, LVar4, PTR(weapon_tik_patakuri_attack), 256, LVar5)
    GOTO(98)
    LABEL(98)
    CALL(evt_btl_camera_set_mode, 0, 0)
    CALL(btlevtcmd_SetMoveSoundDataWork, -2, PTR("SFX_ENM_PATAKURI_MOVE1"), PTR("SFX_ENM_PATAKURI_MOVE1"), 0, 15, 15, 0, 0)
    CALL(btlevtcmd_AnimeChangePoseType, -2, 1, 42)
    CALL(btlevtcmd_SetMoveSpeed, -2, FLOAT(7.000))
    CALL(btlevtcmd_GetHomePos, -2, LVar0, LVar1, LVar2)
    CALL(btlevtcmd_DivePosition, -2, LVar0, LVar1, LVar2, 0, -10, 0, 0, -2)
    LABEL(99)
    CALL(btlevtcmd_ResetFaceDirection, -2)
    CALL(btlevtcmd_StartWaitEvent, -2)
    RETURN
    END
};

static EVT_BEGIN(wait_event_patakuri) {
    CALL(btlevtcmd_AnimeChangePoseFromTable, -2, 1)
    LABEL(0)
    WAIT_FRAMES(30)
    GOTO(0)
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
        CALL(btlevtcmd_SamplingEnemy, -2, LVar0, PTR(weapon_tik_kuriboo_attack))
        CALL(btlevtcmd_ChoiceSamplingEnemy, PTR(weapon_tik_kuriboo_attack), LVar3, LVar4)
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
    CALL(btlevtcmd_WeaponAftereffect, PTR(weapon_tik_kuriboo_attack))
    CALL(btlevtcmd_AttackDeclare, -2, LVar3, LVar4)
    CALL(btlevtcmd_WaitGuardMove)
    CALL(btlevtcmd_PayWeaponCost, -2, PTR(weapon_tik_kuriboo_attack))
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
    CALL(btlevtcmd_PreCheckDamage, -2, LVar3, LVar4, PTR(weapon_tik_kuriboo_attack), 256, LVar5)
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
    CALL(btlevtcmd_ResultACDefence, LVar3, PTR(weapon_tik_kuriboo_attack))
    CALL(btlevtcmd_CheckDamage, -2, LVar3, LVar4, PTR(weapon_tik_kuriboo_attack), 256, LVar5)
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

static EVT_BEGIN(wait_event) {
    CALL(btlevtcmd_AnimeChangePoseFromTable, -2, 1)
    RETURN
    END
};

//if A pressed, do normal headbonk
//if B pressed, do double headbonk
//if Y pressed, used item if one exist
API_CALLABLE(getPlayer2Input);

EVT_BEGIN(decide_attack_tik_patakuri) {
    SCRIPT_SYNC(attack_event_patakuri)
    RETURN
    END
};

EVT_BEGIN(init_event) {
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

EVT_BEGIN(init_event_patakuri) {
    CALL(btlevtcmd_SetEventWait, -2, PTR(wait_event_patakuri))
    CALL(btlevtcmd_SetEventAttack, -2, PTR(decide_attack_tik_patakuri))
    CALL(btlevtcmd_SetEventDamage, -2, PTR(damage_event))
    CALL(btlevtcmd_SetEventConfusion, -2, PTR(decide_attack_tik_patakuri))
    CALL(btlevtcmd_AnimeSetPoseSoundTable, -2, 1, PTR(pose_sound_timing_table))
    CALL(btlevtcmd_StartWaitEvent, -2)
    RETURN
    END
};
