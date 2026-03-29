#include "evt.h"
#include "evt_functions.h"
#include "game/battle.h"
#include "game/btlevt.h"

API_CALLABLE(evt_btl_camera_set_moveto);

char testMessage[] = "TEST";


EVT_BEGIN(phase_event_frankli_tik_lecture) {
    CALL(btlevtcmd_CheckPhase, LVar0, 0x04000001)
    IF_INT_NE(LVar0, 0)
        CALL(btlevtcmd_get_turn, LVar0)
        IF_INT_EQ(LVar0, 1)
            CALL(btlevtcmd_StopWaitEvent, -3)
            CALL(btlevtcmd_AnimeChangePose, -3, 1, PTR("M_S_1"))
            CALL(btlevtcmd_SetTalkPose, -2, PTR("T_1"))
            CALL(btlevtcmd_SetStayPose, -2, PTR("S_1"))
            CALL(btlevtcmd_StatusWindowOnOff, 0)
            CALL(evt_msg_print, 2, PTR("mac_0_092_01"), 0, -2)

            //move cam to spiked goomba
            CALL(evt_btl_camera_set_mode, 0, 3)
            CALL(evt_btl_camera_set_moveto, 0, 71, 49, 213, 71, 35, 0, 30, 11)
            WAIT_FRAMES(30)
            CALL(evt_msg_toge, 1, 0, 0, 0)
            CALL(evt_msg_print, 2, PTR("mac_0_092_02"), 0, -2)

            //move cam to paragoomba

            CALL(evt_btl_camera_set_moveto, 0, 111, 85, 213, 111, 71, 0, 30, 11)
            WAIT_FRAMES(10)
            SET(GSW(11), 1) //set clubba to walk up
            WAIT_FRAMES(20)

            CALL(evt_msg_toge, 1, 0, 0, 0)
            CALL(evt_msg_print, 2, PTR("mac_0_092_03"), 0, -2)

            //extra: pan to clubba
            CALL(evt_btl_camera_set_moveto, 0, 155, 60, 213, 155, 35, 0, 30, 11)
            WAIT_FRAMES(30)
            CALL(evt_msg_toge, 1, 0, 0, 0)
            CALL(evt_msg_print, 2, PTR("frankli_new_msg"), 0, -2)


            CALL(btlevtcmd_ChangeFaceDirection, -2, -1)
            CALL(evt_btl_camera_set_mode, 0, 0)
            WAIT_FRAMES(60)
            CALL(evt_msg_print, 2, PTR("frankli_new_msg_2"), 0, -2)
            CALL(btlevtcmd_ChangeFaceDirection, -2, 1)
            WAIT_MS(1500)
            CALL(btlevtcmd_ChangeFaceDirection, -2, -1)

            //move cam back to frankli
            CALL(evt_btl_camera_set_mode, 0, 3)
            CALL(evt_btl_camera_set_moveto, 0, -60, 82, 340, -60, 60, 13, 30, 11)
            WAIT_FRAMES(30)
            CALL(evt_msg_print, 2, PTR("mac_0_092_05"), 0, -2)
            CALL(btlevtcmd_ChangeFaceDirection, -2, 1)
            CALL(btlevtcmd_StatusWindowOnOff, 1)
            CALL(evt_btl_camera_set_mode, 0, 0)
            GOTO(99)
        END_IF
    END_IF
    LABEL(99)
    RETURN
    END
};
