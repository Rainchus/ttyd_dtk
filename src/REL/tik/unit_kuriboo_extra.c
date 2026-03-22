#include "evt.h"
#include "evt_functions.h"
 
extern char weapon_tik_kuriboo_attack[];
 
void btlevtcmd_AnimeChangePoseFromTable(void);
void btlevtcmd_check_battleflag(void);
void btlevtcmd_GetFirstAttackTarget(void);
void btlevtcmd_GetEnemyBelong(void);
void btlevtcmd_SamplingEnemy(void);
void btlevtcmd_ChoiceSamplingEnemy(void);
void btlevtcmd_CheckToken(void);
void btlevtcmd_EnemyItemUseCheck(void);
void btlevtcmd_StartWaitEvent(void);
 
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
void btlevtcmd_SetRotate(void);
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
    CALL(btlevtcmd_snd_se, -2, PTR("SFX_ENM_KURI_ATTACK1"), FLOAT(-19531.250), 0, FLOAT(-19531.250)) //??? FLOAT(-19531.250))
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

EVT_BEGIN(attack_event_double_headbonk_with_pos_reset) {
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
    // Initialize hit counter before the jump loop
    SET(LVarA, 0)
    LABEL(10)
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
    // Use final-hit damage flags on the second hit
    IF_INT_GT_OR_EQ(LVarA, 1)
        CALL(btlevtcmd_CheckDamage, -2, LVar3, LVar4, PTR(weapon_tik_kuriboo_attack), 0x00020100, LVar5)
    ELSE
        CALL(btlevtcmd_CheckDamage, -2, LVar3, LVar4, PTR(weapon_tik_kuriboo_attack), 256, LVar5)
    END_IF
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
    // If this was the first hit, reposition and go again
    IF_INT_LT_OR_EQ(LVarA, 0)
        ADD(LVarA, 1)
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
        GOTO(10)
    END_IF
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

EVT_BEGIN(decide_attack_tik_kuribo) {
    //wait on p2 to select an attack
    LABEL(0)
    LOOP(0)
        CALL(getPlayer2Input, LVar0) //get player input, either 0 for nothing, 1 for headbonk, 2 for double headbonk
        IF_INT_NE(LVar0, 0)
            BREAK_LOOP
        END_IF
        WAIT_FRAMES(1)
    END_LOOP

    //execute selected attack, use sync so it waits on script to finish executing before exiting
    IF_INT_EQ(LVar0, 1) //normal single headbonk
        SCRIPT_SYNC(attack_event)
        RETURN
    END_IF

    IF_INT_EQ(LVar0, 2)  //double headbonk
        SCRIPT_SYNC(attack_event_double_headbonk_with_pos_reset)
        RETURN
    END_IF

    IF_INT_EQ(LVar0, 3) //use item if held
        CALL(btlevtcmd_EnemyItemUseCheck, -2, LVar0)
        IF_INT_NE(LVar0, 0)
            SCRIPT_SYNC(LVar0)
            CALL(btlevtcmd_StartWaitEvent, -2)
            RETURN
        ELSE
            WAIT_FRAMES(1)
            GOTO(0)
        END_IF
    END_IF

    //if it got here, something unexpected has happened

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
