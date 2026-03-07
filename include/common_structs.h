#ifndef _COMMON_STRUCTS_H_
#define _COMMON_STRUCTS_H_

#include "dolphin/types.h"
#include "enums.h"

//TODO: put this somewhere else
#define M_PI 3.141592653589793

typedef struct Vec {
    f32 x;
    f32 y;
    f32 z;
} Vec;

typedef struct Door {
   long unk_00;
   long unk_04;
   long unk_08;
   char const* unk_0C;
   char const* unk_10;
   char const* unk_14;
   char const* unk_18;
   char const* unk_1C;
   char const* unk_20;
   char const* unk_24;
   void* event1;
   long unk_2C;
   void* event2;
   char const* unk_38;
   long unk_3C;
   long unk_40;
   void* doorOpen;
   void* doorClose;
} Door;

typedef struct CameraEntry {
	u16 flags; //0x0
	u16 mode; //0x2
	u16 field_0x4; //0x4
	u16 field_0x6; //0x6, padding?
	f32 field_0x8; //0x8
	Vec cameraPos; //0xC
	Vec target; //0x18
	Vec cameraUp; //0x24
	f32 near; //0x30
	f32 far; //0x34
	f32 fovY; //0x38
	f32 aspect; //0x3C
	u8 field_0x40[0xF4 - 0x40]; //0x40
	u16 mScissor[4]; //0xF4, TODO retype?
	f32 mProjection[6]; //0xFC, TODO retype?
	f32 field_0x114; //0x114
	f32 field_0x118; //0x118
	Mtx view; //0x11C
	f32 bankRotation; //0x14C
	Vec postTranslation; //0x150
	Mtx44 projection; //0x15C
	s32 type; //0x19C
	u8 field_0x1A0[0x1E8 - 0x1A0]; //0x1A0
	u32 field_0x1E8; //0x1E8
	void* callback; //0x1EC
	Vec field_0x1F0; //0x1F0
	u32 field_0x1FC; //0x1FC, unknown
	Vec field_0x200; //0x200
	Vec field_0x20C; //0x20C
	u16 field_0x218; //0x218
	u16 field_0x21A; //0x21A
	u16 field_0x21C; //0x21C
	u16 field_0x21E; //0x21E
	u32 field_0x220; //0x220, unknown
	Vec field_0x224; //0x224
	Vec field_0x230; //0x230
	Vec field_0x23C; //0x23C
	Vec field_0x248; //0x248
	char name[0xC]; //0x254
} CameraEntry;

#endif //_COMMON_STRUCTS_H_