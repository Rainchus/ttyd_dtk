#include "evt.h"
#include "mod/drawText.h"
#include "src/Custom/extra_dol_file.h"

//NOTE: if rodata grows too much, the memory card breaks? probably a missing align somewhere

#define GREEN_DURATION 3.0f

static int flagID = 0;
static int prevFlagID = -1;
static float greenTimer = 0.0f;

static u32 init = 0;

// Simple function for drawing text. Would need to be modified to properly handle multi-line text, and a function other than
// `FontDrawString` would need to be used to make use of the vanilla game's text commands.
void drawText2(const char *text, float posX, float posY, float scale, u32 color) {
    // Initalize text drawing
    drawTextInit(0xFF, 1);

    // Set the text color and scale
    FontDrawColor(&color);
    FontDrawScale(scale);

    // Draw the text
    FontDrawString(posX, posY, text);
}

void drawLastSetFlag(u32 cameraId, void *user) {
    char buffer[16];
    memset(buffer, 0, sizeof(buffer));

    (void)cameraId;
    (void)user;
    sprintf(buffer, "F: %d", flagID);
    if (greenTimer > 0.0f) {
        drawText2(buffer, -232.f, 135.f, 0.7f, getColorGreen(0xFF));
    } else {
        drawText2(buffer, -232.f, 135.f, 0.7f, getColorWhite(0xFF));
    }
}

void drawSequence(u32 cameraId, void* user) {
    char buffer[16];
    
    memset(buffer, 0, sizeof(buffer));

    (void)cameraId;
    (void)user;
    sprintf(buffer, "S: %d", marioSt.storySequence);

    drawText2(buffer, -232.f, 120.f, 0.7f, getColorWhite(0xFF));  
}

void drawCurMap(u32 cameraId, void* user) {
    char buffer[16];
    
    memset(buffer, 0, sizeof(buffer));

    (void)cameraId;
    (void)user;
    sprintf(buffer, "M: %s", marioSt.curMap);

    drawText2(buffer, -232.f, 105.f, 0.7f, getColorWhite(0xFF));  
}

void drawOnDebugLayer(DispCallback func, float order) {
    dispEntry(CAMERA_DEBUG_3D, 2, order, func, 0);
}

void renderCustomText(void) {
    //call fontmgrTexSetup() here instead of elsewhere first
    if (init == 0) {
        init = 1;
        fontmgrTexSetup();
        return;
    }

    if (greenTimer > 0.0f) {
        greenTimer -= 1.0f / 60.0f;
        if (greenTimer < 0.0f) {
            greenTimer = 0.0f;
        }
    }

    drawOnDebugLayer((void*)drawLastSetFlag, 0.f);
    drawOnDebugLayer((void*)drawSequence, 0.f);
    drawOnDebugLayer((void*)drawCurMap, 0.f);
}

void swSetNew(s32 value) {
    s32 word_index;
    s32 bit_index;

    flagID = value;
    greenTimer = GREEN_DURATION;

    word_index = value / 32;
    bit_index  = value % 32;

    gp->sw_flags[word_index] |= (1 << bit_index);
}

u8 checkButtonComboEveryFrame(u32 combo) {
    return (keyGetButton(0) & combo) == combo;
}

//returns key pressed by padID
u32 autoMashTextCheck(u32 padID) {
    #define CONTROLLER_0 0
    //if holding Y, automash text
    if ((keyGetButton(CONTROLLER_0) & PAD_Y) == 0) {
        return keyGetButtonTrg(padID);
    } else {
        return PAD_B; //B button
    }
}

/*
API_CALLABLE_GLOBAL(swSetWrapper) {
    Bytecode* args = script->args;
    swSet(*args++);
    return 2;
}
*/
