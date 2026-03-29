#include "evt.h"
#include "evt_functions.h"
#include "game/battle.h"
#include "game/btlevt.h"

API_CALLABLE(get_attacker_tik_togekuri);

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

EVT_BEGIN(attack_event_multi_headbonk2) {
    CALL(btlevtcmd_EnemyItemUseCheck, -2, LVar0)
    IF_INT_NE(LVar0, 0)
        SCRIPT_SYNC(LVar0)
        CALL(btlevtcmd_StartWaitEvent, -2)
        RETURN
    END_IF
    SET(LVarC, PTR(weapon_tik_togekuri_attack))
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

    // Always do multibonk. The normal single attack is already a 50/50 on happening.
    // Randomly decides 2-4 hits.
    CALL(evt_sub_random, 2, LVarB)
    ADD(LVarB, 2)
    SET(LVarA, 0)

    // ---------------------------------------------------------------
    // LABEL(10): top of the bonk loop
    // ---------------------------------------------------------------
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

    // On first hit only: crouch/ready pose then wait before jumping
    IF_INT_LT_OR_EQ(LVarA, 0)
        CALL(btlevtcmd_AnimeChangePose, -2, 1, PTR("TGK_A_2"))
        WAIT_FRAMES(20)
    END_IF

    // Start thread to switch to spike-forward attack pose mid-jump (12 frames in)
    BEGIN_THREAD
        LOOP(12)
            WAIT_FRAMES(1)
        END_LOOP
        CALL(btlevtcmd_AnimeChangePoseType, -2, 1, 51)
    END_THREAD
    BEGIN_THREAD
        WAIT_FRAMES(15)
        CALL(btlevtcmd_snd_se, -2, PTR("SFX_ENM_KURI_ATTACK1"), FLOAT(-19531.250), 0, FLOAT(-19531.250))
    END_THREAD

    CALL(btlevtcmd_JumpSetting, -2, 20, FLOAT(0.000), FLOAT(0.699))
    IF_INT_GT_OR_EQ(LVarA, LVarB)
        // Final hit — spin animation
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
        // Intermediate hit — rolling animation
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

    // --- Miss / dodge handling ---
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
        CALL(btlevtcmd_AnimeChangePose, -2, 1, PTR("TGK_S_1"))
        CALL(btlevtcmd_SetFallAccel, -2, FLOAT(0.699))
        CALL(btlevtcmd_GetPos, -2, LVar0, LVar1, LVar2)
        CALL(btlevtcmd_MoveDirectionAdd, -2, LVar0, 30)
        CALL(btlevtcmd_JumpPosition, -2, LVar0, LVar1, LVar2, 20, -1)
        CALL(btlevtcmd_MoveDirectionAdd, -2, LVar0, 20)
        CALL(btlevtcmd_JumpPosition, -2, LVar0, LVar1, LVar2, 10, -1)
        WAIT_MS(500)
        GOTO(95)
    END_IF

    // --- Hit squish effect ---
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

    // Loop back for another hit, or deal final damage
    IF_INT_LT(LVarA, LVarB)
        CALL(btlevtcmd_ResultACDefence, LVar3, LVarC)
        CALL(btlevtcmd_CheckDamage, -2, LVar3, LVar4, LVarC, 0, LVar5)
        ADD(LVarA, 1)
        GOTO(10)
    ELSE
        CALL(btlevtcmd_ResultACDefence, LVar3, LVarC)
        CALL(btlevtcmd_CheckDamage, -2, LVar3, LVar4, LVarC, 256, LVar5)
    END_IF

    // --- Return bounce ---
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

    // --- Return home ---
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

EVT_BEGIN(decide_attack_tik_togekuri) {
    // //wait on p2 to select an attack
    // LABEL(0)
    // LOOP(0)
    //     CALL(getPlayer2Input, LVar0) //get player input, either 0 for nothing, 1 for headbonk, 2 for double headbonk
    //     IF_INT_NE(LVar0, 0)
    //         BREAK_LOOP
    //     END_IF
    //     WAIT_FRAMES(1)
    // END_LOOP

    // //execute selected attack, use sync so it waits on script to finish executing before exiting
    // IF_INT_EQ(LVar0, 1) //normal single headbonk
    //     SCRIPT_SYNC(attack_event)
    //     RETURN
    // END_IF

    // IF_INT_EQ(LVar0, 2)  //double headbonk
    //     SCRIPT_SYNC(attack_event)
    //     RETURN
    // END_IF

    // IF_INT_EQ(LVar0, 3) //use item if held
    //     CALL(btlevtcmd_EnemyItemUseCheck, -2, LVar0)
    //     IF_INT_NE(LVar0, 0)
    //         SCRIPT_SYNC(LVar0)
    //         CALL(btlevtcmd_StartWaitEvent, -2)
    //         RETURN
    //     ELSE
    //         WAIT_FRAMES(1)
    //         GOTO(0)
    //     END_IF
    // END_IF

    //if it got here, something unexpected has happened

    SCRIPT_SYNC(PTR(attack_event_multi_headbonk2))

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
