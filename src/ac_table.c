#include "dolphin/types.h"

typedef struct {
    s32 id;
    void (*main)(void*);
    void (*result)(void*);
    void (*disp)(void*);
    void (*delete)(void*);
} ActionCommandEntry;

extern void battleAcMain_TimingA(void*);
extern void battleAcResult_TimingA(void*);
extern void battleAcDisp_TimingA(void*);
extern void battleAcDelete_TimingA(void*);

extern void battleAcMain_TimingWide(void*);
extern void battleAcResult_TimingWide(void*);
extern void battleAcDisp_TimingWide(void*);
extern void battleAcDelete_TimingWide(void*);

extern void battleAcMain_StickKeepLeft(void*);
extern void battleAcResult_StickKeepLeft(void*);
extern void battleAcDisp_StickKeepLeft(void*);
extern void battleAcDelete_StickKeepLeft(void*);

extern void battleAcMain_LstRcKeep(void*);
extern void battleAcResult_LstRcKeep(void*);
extern void battleAcDisp_LstRcKeep(void*);
extern void battleAcDelete_LstRcKeep(void*);

extern void battleAcMain_Repeatedly(void*);
extern void battleAcResult_Repeatedly(void*);
extern void battleAcDisp_Repeatedly(void*);
extern void battleAcDelete_Repeatedly(void*);

extern void battleAcMain_RepeatedlyLv(void*);
extern void battleAcResult_RepeatedlyLv(void*);
extern void battleAcDisp_RepeatedlyLv(void*);
extern void battleAcDelete_RepeatedlyLv(void*);

extern void battleAcMain_Shot(void*);
extern void battleAcResult_Shot(void*);
extern void battleAcDisp_Shot(void*);
extern void battleAcDelete_Shot(void*);

extern void battleAcMain_ShotTarget(void*);
extern void battleAcResult_ShotTarget(void*);
extern void battleAcDisp_ShotTarget(void*);
extern void battleAcDelete_ShotTarget(void*);

extern void battleAcMain_StickRotate(void*);
extern void battleAcResult_StickRotate(void*);
extern void battleAcDisp_StickRotate(void*);
extern void battleAcDelete_StickRotate(void*);

extern void battleAcMain_ButtonDown(void*);
extern void battleAcResult_ButtonDown(void*);
extern void battleAcDisp_ButtonDown(void*);
extern void battleAcDelete_ButtonDown(void*);

extern void battleAcMain_PendulumCraneTiming(void*);
extern void battleAcResult_PendulumCraneTiming(void*);
extern void battleAcDisp_PendulumCraneTiming(void*);
extern void battleAcDelete_PendulumCraneTiming(void*);

extern void battleAcMain_CraneTiming(void*);
extern void battleAcResult_CraneTiming(void*);
extern void battleAcDisp_CraneTiming(void*);
extern void battleAcDelete_CraneTiming(void*);

extern void battleAcMain_AirGauge(void*);
extern void battleAcResult_AirGauge(void*);
extern void battleAcDisp_AirGauge(void*);
extern void battleAcDelete_AirGauge(void*);

extern void battleAcMain_PowerGauge(void*);
extern void battleAcResult_PowerGauge(void*);
extern void battleAcDisp_PowerGauge(void*);
extern void battleAcDelete_PowerGauge(void*);

extern void battleAcMain_PowerGaugeLv(void*);
extern void battleAcResult_PowerGaugeLv(void*);
extern void battleAcDisp_PowerGaugeLv(void*);
extern void battleAcDelete_PowerGaugeLv(void*);

extern void battleAcMain_PowerGaugeLv2(void*);
extern void battleAcResult_PowerGaugeLv2(void*);
extern void battleAcDisp_PowerGaugeLv2(void*);
extern void battleAcDelete_PowerGaugeLv2(void*);

extern void battleAcMain_SignalTiming(void*);
extern void battleAcResult_SignalTiming(void*);
extern void battleAcDisp_SignalTiming(void*);
extern void battleAcDelete_SignalTiming(void*);

extern void battleAcMain_GaugeTiming(void*);
extern void battleAcResult_GaugeTiming(void*);
extern void battleAcDisp_GaugeTiming(void*);
extern void battleAcDelete_GaugeTiming(void*);

extern void battleAcMain_GaugeTiming2(void*);
extern void battleAcResult_GaugeTiming2(void*);
extern void battleAcDisp_GaugeTiming2(void*);
extern void battleAcDelete_GaugeTiming2(void*);

extern void battleAcMain_MonosiriTarget(void*);
extern void battleAcResult_MonosiriTarget(void*);
extern void battleAcDisp_MonosiriTarget(void*);
extern void battleAcDelete_MonosiriTarget(void*);

//new
extern void battleAcMain_TimingB(void*);
extern void battleAcResult_TimingB(void*);
extern void battleAcDisp_TimingB(void*);
extern void battleAcDelete_TimingB(void*);

ActionCommandEntry ActionCommandList[] = {
    { 0x01, battleAcMain_TimingA,             battleAcResult_TimingA,             battleAcDisp_TimingA,             battleAcDelete_TimingA             },
    { 0x0B, battleAcMain_TimingWide,          battleAcResult_TimingWide,          battleAcDisp_TimingWide,          battleAcDelete_TimingWide          },
    { 0x03, battleAcMain_StickKeepLeft,       battleAcResult_StickKeepLeft,       battleAcDisp_StickKeepLeft,       battleAcDelete_StickKeepLeft       },
    { 0x04, battleAcMain_LstRcKeep,           battleAcResult_LstRcKeep,           battleAcDisp_LstRcKeep,           battleAcDelete_LstRcKeep           },
    { 0x05, battleAcMain_Repeatedly,          battleAcResult_Repeatedly,          battleAcDisp_Repeatedly,          battleAcDelete_Repeatedly          },
    { 0x06, battleAcMain_RepeatedlyLv,        battleAcResult_RepeatedlyLv,        battleAcDisp_RepeatedlyLv,        battleAcDelete_RepeatedlyLv        },
    { 0x07, battleAcMain_Shot,                battleAcResult_Shot,                battleAcDisp_Shot,                battleAcDelete_Shot                },
    { 0x08, battleAcMain_ShotTarget,          battleAcResult_ShotTarget,          battleAcDisp_ShotTarget,          battleAcDelete_ShotTarget          },
    { 0x09, battleAcMain_StickRotate,         battleAcResult_StickRotate,         battleAcDisp_StickRotate,         battleAcDelete_StickRotate         },
    { 0x0A, battleAcMain_ButtonDown,          battleAcResult_ButtonDown,          battleAcDisp_ButtonDown,          battleAcDelete_ButtonDown          },
    { 0x0C, battleAcMain_PendulumCraneTiming, battleAcResult_PendulumCraneTiming, battleAcDisp_PendulumCraneTiming, battleAcDelete_PendulumCraneTiming },
    { 0x0D, battleAcMain_CraneTiming,         battleAcResult_CraneTiming,         battleAcDisp_CraneTiming,         battleAcDelete_CraneTiming         },
    { 0x0E, battleAcMain_AirGauge,            battleAcResult_AirGauge,            battleAcDisp_AirGauge,            battleAcDelete_AirGauge            },
    { 0x0F, battleAcMain_PowerGauge,          battleAcResult_PowerGauge,          battleAcDisp_PowerGauge,          battleAcDelete_PowerGauge          },
    { 0x10, battleAcMain_PowerGaugeLv,        battleAcResult_PowerGaugeLv,        battleAcDisp_PowerGaugeLv,        battleAcDelete_PowerGaugeLv        },
    { 0x11, battleAcMain_PowerGaugeLv2,       battleAcResult_PowerGaugeLv2,       battleAcDisp_PowerGaugeLv2,       battleAcDelete_PowerGaugeLv2       },
    { 0x12, battleAcMain_SignalTiming,        battleAcResult_SignalTiming,        battleAcDisp_SignalTiming,        battleAcDelete_SignalTiming        },
    { 0x13, battleAcMain_GaugeTiming,         battleAcResult_GaugeTiming,         battleAcDisp_GaugeTiming,         battleAcDelete_GaugeTiming         },
    { 0x14, battleAcMain_GaugeTiming2,        battleAcResult_GaugeTiming2,        battleAcDisp_GaugeTiming2,        battleAcDelete_GaugeTiming2        },
    { 0x15, battleAcMain_MonosiriTarget,      battleAcResult_MonosiriTarget,      battleAcDisp_MonosiriTarget,      battleAcDelete_MonosiriTarget      },
    { 0x00, NULL,                             NULL,                               NULL,                             NULL                               },
};
