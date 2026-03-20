#ifndef DRAWTEXT_H
#define DRAWTEXT_H

#include "dolphin/types.h"

#define LINE_HEIGHT_ADJUSTMENT_4(scale) (4.f * (scale))
#define LINE_HEIGHT_ADJUSTMENT_5(scale) (5.f * (scale))

#define LINE_HEIGHT 32
#define LINE_HEIGHT_FLOAT 32.f

#define COLOR_WHITE 0xFFFFFF00
#define COLOR_BLACK 0x00000000
#define COLOR_GRAYED_OUT 0x4B4B4B00
#define COLOR_BLUE 0x5B59DE00
#define COLOR_GREEN 0x1BBE2300
#define COLOR_RED 0xFF141400
#define COLOR_LIGHT_ORANGE 0xE6B22D00

inline u32 getColorWhite(u8 alpha)
{
    return COLOR_WHITE | alpha;
}

inline u32 getColorBlack(u8 alpha)
{
    return COLOR_BLACK | alpha;
}

inline u32 getColorGrayedOut(u8 alpha)
{
    return COLOR_GRAYED_OUT | alpha;
}

inline u32 getColorBlue(u8 alpha)
{
    return COLOR_BLUE | alpha;
}

inline u32 getColorGreen(u8 alpha)
{
    return COLOR_GREEN | alpha;
}

inline u32 getColorRed(u8 alpha)
{
    return COLOR_RED | alpha;
}

inline u32 getColorLightOrange(u8 alpha)
{
    return COLOR_LIGHT_ORANGE | alpha;
}

inline void getOnOffTextAndColor(u8 valueToCheck, const char **textOut, u32 *colorOut, u8 alpha)
{
    if (valueToCheck)
    {
        *textOut = "On";
        *colorOut = getColorGreen(alpha);
    }
    else
    {
        *textOut = "Off";
        *colorOut = getColorRed(alpha);
    }
}

inline void getYesNoTextAndColor(u8 valueToCheck, const char **textOut, u32 *colorOut, u8 alpha)
{
    if (valueToCheck)
    {
        *textOut = "Yes";
        *colorOut = getColorGreen(alpha);
    }
    else
    {
        *textOut = "No";
        *colorOut = getColorRed(alpha);
    }
}

inline u32 getCurrentOptionColor(u8 currentOption, u8 alpha)
{
    if (currentOption)
    {
        return getColorBlue(alpha);
    }
    else
    {
        return getColorWhite(alpha);
    }
}

float getTextMultilineIncrement(const char *text, float scale, u32 additionalLines);

float getTextWidth(const char *text, float scale);
float getTextHeight(const char *text, float scale);

void drawText(const char *text, float posX, float posY, float scale, float width, u32 color, u32 alignment);


void FontDrawStart(void);
void FontDrawEdge(void);
void FontDrawStart_alpha(u8 alpha);

inline void drawTextInit(u8 alpha, u8 drawFontEdge)
{
    FontDrawStart_alpha(alpha);

    // Check if the font edge should be on or off
    // FontDrawStart_alpha sets it to off by default
    if (drawFontEdge)
    {
        FontDrawEdge();
    }
}

#endif
