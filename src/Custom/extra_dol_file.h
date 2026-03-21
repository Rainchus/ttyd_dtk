#ifndef _EXTRA_DOL_FILE_
#define _EXTRA_DOL_FILE_

#include "dolphin/types.h"

typedef enum CameraId {
	CAMERA_OFFSCREEN = 0,
	CAMERA_OFFSCREEN2,
	CAMERA_SHADOW,
	CAMERA_BACKGROUND,
	CAMERA_3D,
	CAMERA_3D_EFFECTA,
	CAMERA_3D_IMAGE,
	CAMERA_3D_EFFECTB,
	CAMERA_2D,
	CAMERA_FADE,
	CAMERA_FADE2,
	CAMERA_DEBUG,
	CAMERA_DEBUG_3D
} CameraId;

typedef float mtx34[3][4];
typedef void (*DispCallback)(u32 cameraId, void *user);

enum {
    TEXT_ALIGNMENT_LEFT = 0,
    TEXT_ALIGNMENT_CENTER = 1,
    TEXT_ALIGNMENT_RIGHT = 2,
};

typedef struct MarioWork {
/* 0x000 */ char unk_00[0x12C];
/* 0x12C */ char curMap[16];
/* 0x13C */ char curArea[16];
/* 0x14C */ char unk_14C[0x2A];
/* 0x176 */ s16 storySequence;
} MarioWork;

extern MarioWork marioSt;

typedef struct Unk {
/* 0x000 */ char unk_00[0x178];
/* 0x178 */ u32 sw_flags[32]; //unknown size
} Unk;

extern Unk* gp;

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


#endif //_EXTRA_DOL_FILE_
