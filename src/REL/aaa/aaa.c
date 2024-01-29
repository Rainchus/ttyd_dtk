extern void _prolog();
extern void _epilog();

typedef void (*VoidFunc)(void);
extern const VoidFunc _ctors[];
extern const VoidFunc _dtors[];
void mapdelete_1_text_B4(void);

extern int aaa_00_init_evt_1_data_20CC[]; //evt script

void _unresolved(void) {
    
}

void _epilog(void) {
    const VoidFunc* dtors;
    mapdelete_1_text_B4();
    dtors = _dtors;
    while (*dtors != 0) {
        (**dtors)();
        dtors++;
    }
}

void _prolog(void) {
    const VoidFunc* ctors;
    ctors = _ctors;
    while (*ctors != 0) {
        (**ctors)();
        ctors++;
    }
    relSetEvtAddr("aaa_00", &aaa_00_init_evt_1_data_20CC);
}