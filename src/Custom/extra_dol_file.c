#include "evt.h"
#include "mod/drawText.h"

typedef float mtx34[3][4];

enum {
    TEXT_ALIGNMENT_LEFT = 0,
    TEXT_ALIGNMENT_CENTER = 1,
    TEXT_ALIGNMENT_RIGHT = 2,
};

#define CAM_kDebug3d 12U

typedef void (*DispCallback)(u32 cameraId, void *user);

void dispEntry(u32 cameraId, u8 renderMode, float order, DispCallback callback, void *user);
void fontmgrTexSetup(void);
char *strchr(const char *s, int c);
char* strncpy(const char *s, const char*, int size);
void PSMTXTrans(mtx34 mtx, float x, float y, float z);
void PSMTXTransApply(const mtx34 src, mtx34 dst, float x, float y, float z);
void PSMTXScale(mtx34 mtx, float xScale, float yScale, float zScale);
void FontDrawColor(u32*);
void FontDrawMessageMtx(mtx34 matrix, const char *message);
u16 FontGetMessageWidth(const char *message);

float getTextWidth(const char *text, float scale)
{
    s32 textWidth;
    if (!text)
    {
        return 0.f;
    }

    textWidth = (s32)(FontGetMessageWidth(text));
    return ((f32)(textWidth)) * scale;
}

// Set width to 0 or less to not have a width limit
static void
    drawTextMain(const char *text, float posX, float posY, float scale, float width, u32 color, u32 alignment)
{
    u8 hasWidthLimit;
    float textWidthScaled;
    float scaleX;
    // Make sure the text isn't an empty string
    if (text[0] == '\0')
    {
        return;
    }

    // Get the width of the text if it is needed
    hasWidthLimit = width > 0.f;

    if ((alignment == TEXT_ALIGNMENT_CENTER) || (alignment == TEXT_ALIGNMENT_RIGHT) || hasWidthLimit)
    {
        textWidthScaled = getTextWidth(text, scale);
    }

    // Handle aligning the text
    switch (alignment)
    {
        case TEXT_ALIGNMENT_CENTER:
        {
            // Make sure a width limit was provided, and that the text's width does not reach/exceed the width limit
            if (hasWidthLimit && (textWidthScaled < width))
            {
                posX += (width / 2.f) - (textWidthScaled / 2.f);
            }
            break;
        }
        case TEXT_ALIGNMENT_RIGHT:
        {
            posX -= textWidthScaled;
            break;
        }
        default:
        {
            break;
        }
    }

    // Handle the width limit if one was provided
    scaleX = scale;

    if (hasWidthLimit && (textWidthScaled > width))
    {
        scaleX = (width / textWidthScaled) * scale;

        // If aligning the text to the right, account for the new X scale
        if (alignment == TEXT_ALIGNMENT_RIGHT)
        {
            posX += textWidthScaled - width;
        }
    }

    // Draw the text
    {
    mtx34 mtxScale;
    mtx34 mtxTrans;
    PSMTXScale(mtxScale, scaleX, scale, scale);
    PSMTXTransApply(mtxScale, mtxTrans, posX, posY, 0.f);
    FontDrawColor(&color);
    FontDrawMessageMtx(mtxTrans, text);
    }
}

// Credits to Jdaster64 for writing the original code for this function
__declspec(dllexport) void drawText(const char *text, float posX, float posY, float scale, float width, u32 color, u32 alignment)
{
    char buf[128];
    s32 maxLength = sizeof(buf) - 1;
    const float lineDecrement = LINE_HEIGHT_FLOAT * scale;
    s32 lineLength;

    // Draw each individual line
    while (1)
    {
        // Find the end of the current line
        const char *newline = strchr(text, '\n');

        // If a newline is not found, then currently at the last line
        if (!newline)
        {
            break;
        }

        // Copy this line to the temporary buffer and append a null byte
        lineLength = newline - text;

        // Make sure the current line won't be an empty string
        if (lineLength > 0)
        {
            char *tempBuf;
            // Prevent a buffer overflow
            if (lineLength > maxLength)
            {
                lineLength = maxLength;
            }

            tempBuf = strncpy(buf, text, lineLength);
            tempBuf[lineLength] = '\0';

            drawTextMain(tempBuf, posX, posY, scale, width, color, alignment);
        }

        // Advance to the next line
        text = newline + 1;
        posY -= lineDecrement;
    }

    // Draw the rest of the text
    drawTextMain(text, posX, posY, scale, width, color, alignment);
}

// Simple function for drawing text. Would need to be modified to properly handle multi-line text, and a function other than
// `FontDrawString` would need to be used to make use of the vanilla game's text commands.
void drawText2(const char *text, float posX, float posY, float scale, u32 color)
{
    // Initalize text drawing
    drawTextInit(0xFF, 1);

    // Set the text color and scale
    FontDrawColor(&color);
    FontDrawScale(scale);

    // Draw the text
    FontDrawString(posX, posY, text);
}



void drawHelloWorld(u32 cameraId, void *user) {
    //when this is too large, it shifts the memory card to an address where it fails to be read from
    //aka, it's probably missing an align somewhere
    const char message[] = "Test"; 
    (void)cameraId;
    (void)user;
    drawText2(message, -232.f, 120.f, 0.7f, getColorWhite(0xFF));
}

void drawOnDebugLayer(DispCallback func, float order)
{
    dispEntry(CAM_kDebug3d, 2, order, func, 0);
}


void makeKey(void);

static u32 init = 0;

void renderCustomText(void) {
    //calling these does work, but fontmgrTexSetup() must have been called elsewhere first
    if (init == 0) {
        init = 1;
        fontmgrTexSetup();
        return;
    }
    drawOnDebugLayer((void*)drawHelloWorld, 0.f);
}

API_CALLABLE_GLOBAL(swSetWrapper) {
    Bytecode* args = script->args;
    swSet(*args++);
    return 2;
}
