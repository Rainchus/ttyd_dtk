#include "evt.h"
#include "evt_functions.h"

void btlevtcmd_EnemyItemUseCheck(void);
void btlevtcmd_JumpSetting(void);
void btlevtcmd_GetEnemyBelong(void);
void btlevtcmd_SamplingEnemy(void);
void btlevtcmd_ChoiceSamplingEnemy(void);
void btlevtcmd_CheckToken(void);
void btlevtcmd_StartWaitEvent(void);
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
void evt_btl_camera_set_mode(void);
void evt_btl_camera_nomove_y_onoff(void);
void btlevtcmd_GetPosFloat(void);
void krb_get_dir(void);
void btlevtcmd_SetRotate(void);
void btlevtcmd_SetRotateOffset(void);
void btlevtcmd_AddScale(void);
void btlevtcmd_SetScale(void);
void btlevtcmd_SetDispOffset(void);
void btlevtcmd_AddRotate(void);
void btlevtcmd_GetRotate(void);
void btlevtcmd_AnimeChangePose(void);
void btlevtcmd_CheckStatus(void);
void btlevtcmd_GetUnitId(void);
void btlevtcmd_GetUnitWork(void);
void btlevtcmd_SetUnitWork(void);
void btlevtcmd_StatusWindowOnOff(void);
void btlevtcmd_AnimeChangePoseFromTable(void);
void get_attacker_tik_togekuri(void);
void evt_eff(void);
void evt_msg_print(void);

extern void btlevtcmd_CheckDamage(void);
extern void btlevtcmd_PreCheckDamage(void);
extern void btlevtcmd_ResultACDefence(void);
extern void btlevtcmd_StartAvoid(void);
extern void btlevtcmd_JumpContinue(void);
extern void btlevtcmd_JumpPosition(void);
extern void btlevtcmd_FaceDirectionSub(void);
extern void btlevtcmd_MoveDirectionAdd(void);
extern void btlevtcmd_GetHitPos(void);
extern void btlevtcmd_GetHomePos(void);
extern void btlevtcmd_ResetFaceDirection(void);
extern void btlevtcmd_SetMoveSoundDataWork(void);
extern void btlevtcmd_snd_se(void);
extern void evt_btl_camera_shake_h(void);
extern void evt_btl_camera_add_zoom(void);
extern void btlevtcmd_SetEventWait(void);
extern void btlevtcmd_SetEventAttack(void);
extern void btlevtcmd_SetEventDamage(void);
extern void btlevtcmd_SetEventConfusion(void);
extern void btlevtcmd_SetRunSound(void);
extern void btlevtcmd_SetWalkSound(void);
extern void btlevtcmd_SetJumpSound(void);
extern void subsetevt_confuse_flustered(void);
extern void btldefaultevt_Damage(void);

extern EvtScript weapon_tik_togekuri_attack;

EVT_BEGIN(dmg_avoid_counter_thorn_head_event_tik) {
    WAIT_FRAMES(30)
    CALL(btlevtcmd_GetPos, -2, LVar0, LVar1, LVar2)
    CALL(btlevtcmd_CheckStatus, -2, 10, LVar3)
    IF_INT_NE(LVar3, 0)
        ADD(LVar1, 50)
        GOTO(90)
    END_IF
    CALL(btlevtcmd_CheckStatus, -2, 11, LVar3)
    IF_INT_NE(LVar3, 0)
        ADD(LVar1, 30)
        GOTO(90)
    END_IF
    ADD(LVar1, 40)
    GOTO(90)
    LABEL(90)
    CALL(evt_eff, 0, PTR("toge_flush"), 0, LVar0, LVar1, LVar2, 60, 0, 0, 0, 0, 0, 0, 0)
    CALL(btlevtcmd_GetUnitId, -6, LVar0)
    IF_INT_NE(LVar0, -1)
        CALL(btlevtcmd_GetUnitWork, -6, 0, LVar0)
        IF_INT_EQ(LVar0, 0)
            CALL(get_attacker_tik_togekuri, LVar0)
            IF_INT_EQ(LVar0, 2)
                RETURN
            END_IF
            WAIT_MS(2500)
            CALL(btlevtcmd_StatusWindowOnOff, 0)
            CALL(btlevtcmd_ChangeFaceDirection, -6, -1)
            CALL(get_attacker_tik_togekuri, LVar0)
            IF_INT_EQ(LVar0, 0)
                CALL(evt_msg_print, 2, PTR("mac_0_092_06"), 0, -6)
            ELSE
                CALL(evt_msg_print, 2, PTR("mac_0_092_07"), 0, -6)
            END_IF
            CALL(btlevtcmd_SetUnitWork, -6, 0, 1)
            CALL(btlevtcmd_ChangeFaceDirection, -6, 1)
            CALL(btlevtcmd_StatusWindowOnOff, 1)
        END_IF
    END_IF
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

static EVT_BEGIN(attack_event) {
    // CALL(btlevtcmd_EnemyItemUseCheck, -2, LVar0)
    // IF_INT_NE(LVar0, 0)
    //     SCRIPT_SYNC(LVar0)
    //     CALL(btlevtcmd_StartWaitEvent, -2)
    //     RETURN
    // END_IF
    CALL(btlevtcmd_JumpSetting, -2, 20, FLOAT(0.000), FLOAT(0.600))
    CALL(btlevtcmd_GetEnemyBelong, -2, LVar0)
    CALL(btlevtcmd_SamplingEnemy, -2, LVar0, PTR(weapon_tik_togekuri_attack))
    CALL(btlevtcmd_ChoiceSamplingEnemy, PTR(weapon_tik_togekuri_attack), LVar3, LVar4)
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
    CALL(btlevtcmd_WeaponAftereffect, PTR(weapon_tik_togekuri_attack))
    CALL(btlevtcmd_AttackDeclare, -2, LVar3, LVar4)
    CALL(btlevtcmd_WaitGuardMove)
    CALL(btlevtcmd_PayWeaponCost, -2, PTR(weapon_tik_togekuri_attack))
    CALL(btlevtcmd_AnimeChangePoseType, -2, 1, 42)
    CALL(btlevtcmd_GetPos, LVar3, LVar0, LVar1, LVar2)
    CALL(btlevtcmd_FaceDirectionAdd, LVar3, LVar0, 80)
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
    CALL(btlevtcmd_AnimeChangePoseType, -2, 1, 50)
    CALL(btlevtcmd_SetRotateOffset, -2, 0, 15, 0)
    BEGIN_THREAD
        CALL(btlevtcmd_GetPosFloat, -2, LVar5, LVar6, LVar7)
        SET(LVar8, 0)
        LOOP(28)
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
        CALL(btlevtcmd_AnimeChangePoseType, -2, 1, 51)
    END_THREAD
    CALL(btlevtcmd_GetHitPos, LVar3, LVar4, LVar0, LVar1, LVar2)
    ADD(LVar2, 2)
    SUB(LVar1, 4)
    CALL(btlevtcmd_JumpPosition, -2, LVar0, LVar1, LVar2, 28, -1)
    CALL(btlevtcmd_PreCheckDamage, -2, LVar3, LVar4, PTR(weapon_tik_togekuri_attack), 256, LVar5)
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
    CALL(btlevtcmd_JumpContinue, -2)
    CALL(btlevtcmd_snd_se, -2, PTR("SFX_ENM_KURI_LANDING_MISS1"), FLOAT(-19531.250), 0, FLOAT(-19531.250))
    CALL(btlevtcmd_SetDispOffset, -2, 0, FLOAT(-12.000), 0)
    CALL(btlevtcmd_AnimeChangePose, -2, 1, PTR("TGK_D_1"))
    WAIT_FRAMES(40)
    CALL(btlevtcmd_AnimeChangePose, -2, 1, PTR("TGK_A_2"))
    CALL(btlevtcmd_SetDispOffset, -2, 0, 0, 0)
    CALL(btlevtcmd_SetRotateOffset, -2, 0, 12, 0)
    BEGIN_CHILD_THREAD
        CALL(btlevtcmd_GetRotate, -2, FLOAT(-19531.250), FLOAT(-19531.250), LVar6)
        DIV(LVar6, 10)
        MUL(LVar6, -1)
        SET(LVar7, 10)
        LABEL(10)
        CALL(btlevtcmd_AddRotate, -2, 0, 0, LVar6)
        SUB(LVar7, 1)
        WAIT_FRAMES(1)
        IF_INT_GT_OR_EQ(LVar7, 1)
            GOTO(10)
        END_IF
        CALL(btlevtcmd_AnimeChangePose, -2, 1, PTR("TGK_K_1"))
        CALL(btlevtcmd_SetRotate, -2, 0, 0, 0)
    END_CHILD_THREAD
    CALL(btlevtcmd_GetPos, -2, LVar0, LVar1, LVar2)
    CALL(btlevtcmd_MoveDirectionAdd, -2, LVar0, -30)
    CALL(btlevtcmd_JumpPosition, -2, LVar0, LVar1, LVar2, 20, -1)
    CALL(btlevtcmd_SetRotateOffset, -2, 0, 0, 0)
    WAIT_FRAMES(40)
    GOTO(95)
    LABEL(91)
    CALL(evt_btl_camera_shake_h, 0, 1, 1, 8, 0)
    CALL(evt_btl_camera_set_moveSpeedLv, 0, 2)
    CALL(evt_btl_camera_add_zoom, 0, -50)
    LOOP(4)
        CALL(btlevtcmd_AddScale, -2, FLOAT(0.079), FLOAT(-0.119), 0)
        WAIT_FRAMES(1)
    END_LOOP
    CALL(btlevtcmd_SetScale, -2, FLOAT(1.000), FLOAT(1.000), FLOAT(1.000))
    CALL(btlevtcmd_ResultACDefence, LVar3, PTR(weapon_tik_togekuri_attack))
    CALL(btlevtcmd_CheckDamage, -2, LVar3, LVar4, PTR(weapon_tik_togekuri_attack), 256, LVar5)
    CALL(btlevtcmd_AnimeChangePoseType, -2, 1, 43)
    BEGIN_CHILD_THREAD
        CALL(btlevtcmd_GetRotate, -2, FLOAT(-19531.250), FLOAT(-19531.250), LVar6)
        DIV(LVar6, 10)
        MUL(LVar6, -1)
        SET(LVar7, 10)
        LABEL(20)
        CALL(btlevtcmd_AddRotate, -2, 0, 0, LVar6)
        SUB(LVar7, 1)
        WAIT_FRAMES(1)
        IF_INT_GT_OR_EQ(LVar7, 1)
            GOTO(20)
        END_IF
        CALL(btlevtcmd_SetRotate, -2, 0, 0, 0)
    END_CHILD_THREAD
    CALL(btlevtcmd_GetPos, -2, LVar0, LVar1, LVar2)
    SET(LVar1, 0)
    CALL(btlevtcmd_FaceDirectionSub, -2, LVar0, 40)
    CALL(btlevtcmd_JumpPosition, -2, LVar0, LVar1, LVar2, 28, -1)
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

s32 BattlePadMultiCheckNow(s32 port, u32 buttonMask);
//if A pressed, do normal headbonk
//if B pressed, do double headbonk
//if Y pressed, used item if one exist
static API_CALLABLE(getPlayer2Input) {
    Bytecode* args = script->args;

    if (BattlePadMultiCheckNow(1, 0x100)) { //A button
        evtSetValue(script, *args++, 1); //only has 1 attack, so return 1
    } else if (BattlePadMultiCheckNow(1, 0x200)) { //B button
        evtSetValue(script, *args++, 2);
    } else if (BattlePadMultiCheckNow(1, 0x800)) { //Y button
        evtSetValue(script, *args++, 3);
    } else {
        evtSetValue(script, *args++, 0);
    }

    return 2;
}

EVT_BEGIN(decide_attack_tik_togekuri) {
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
        SCRIPT_SYNC(attack_event)
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

EVT_BEGIN(init_event_tik_togekuri) {
    CALL(btlevtcmd_SetEventWait, -2, PTR(wait_event))
    CALL(btlevtcmd_SetEventAttack, -2, PTR(decide_attack_tik_togekuri))
    CALL(btlevtcmd_SetEventDamage, -2, PTR(damage_event))
    CALL(btlevtcmd_SetEventConfusion, -2, PTR(decide_attack_tik_togekuri))
    CALL(btlevtcmd_SetRunSound, -2, PTR("SFX_ENM_TOGEKURI_MOVE1"), PTR("SFX_ENM_TOGEKURI_MOVE2"), 0, 6, 6)
    CALL(btlevtcmd_SetWalkSound, -2, PTR("SFX_ENM_TOGEKURI_MOVE1"), PTR("SFX_ENM_TOGEKURI_MOVE2"), 0, 6, 6)
    CALL(btlevtcmd_SetJumpSound, -2, PTR("SFX_ENM_KURI_JUMP1"), PTR("SFX_ENM_KURI_LANDING1"))
    CALL(btlevtcmd_StartWaitEvent, -2)
    RETURN
    END
};
