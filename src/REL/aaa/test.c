int testFunction(void) {
    short* temp = (short*)0x817FFFFE;
    *temp = 0xBEEF;
    return 1;
}