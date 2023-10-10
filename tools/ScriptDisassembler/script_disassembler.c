#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

#include "script_mnemonic.c"

#define ARRAY_COUNT(arr) (sizeof(arr) / sizeof(arr[0]))
#define RESET_AND_APPEND_STRING(dest, resetChar, fillString, fillCount) \
    do { \
        memset((dest), (resetChar), sizeof(dest)); \
        for (int i = 0; i < (fillCount); i++) { \
            strcat((dest), (fillString)); \
        } \
    } while (0)

// #define COLORS
#ifdef COLORS
    #define ANSI_COLOR_BLACK   "\033[0;30m"
    #define ANSI_COLOR_RED     "\033[0;31m"
    #define ANSI_COLOR_GREEN   "\033[0;32m"
    #define ANSI_COLOR_YELLOW  "\033[0;33m"
    #define ANSI_COLOR_BLUE    "\033[0;34m"
    #define ANSI_COLOR_MAGENTA "\033[0;35m"
    #define ANSI_COLOR_CYAN    "\033[0;36m"
    #define ANSI_COLOR_WHITE   "\033[0;37m"
#else
    #define ANSI_COLOR_BLACK   ""
    #define ANSI_COLOR_RED     ""
    #define ANSI_COLOR_GREEN   ""
    #define ANSI_COLOR_YELLOW  ""
    #define ANSI_COLOR_BLUE    ""
    #define ANSI_COLOR_MAGENTA ""
    #define ANSI_COLOR_CYAN    ""
    #define ANSI_COLOR_WHITE   ""    
#endif

#define ANSI_COLOR_RESET   "\033[0m" // Reset text color and background


// #define DEBUG

#ifdef DEBUG
#define DEBUG_PRINT(fmt, ...) printf(fmt, ##__VA_ARGS__)
#else
#define DEBUG_PRINT(fmt, ...)
#endif

char* prefix = "	.4byte ";
char line[256]; // Assuming a maximum line length of 255 characters
char endLineAscii[256];
char endSymbolString[256];
char opcodeMnemonicString[32];
char tabCounterString[256];
char tabSpace[] = "   ";

char* StripNewLineCharacterFromString(char* textLine) {
    if (textLine != NULL) {
        size_t len = strlen(textLine);
        if (len > 0 && textLine[len - 1] == '\n') {
            textLine[len - 1] = '\0';
        }
    }
    return textLine;
}

#define IS_BETWEEN(x, upper, lower) ((x >= upper) && (x <= lower))

char* ParseHexForScriptSpecialValue(char* argString, int resultHex, int mnemonicResult) {
    if (mnemonicResult) {
        if (IS_BETWEEN(resultHex, -EVT_LOCAL_VAR_OFFSET, -EVT_LOCAL_VAR_OFFSET + 16)) {
            sprintf(argString, "LVar%d", resultHex - -EVT_LOCAL_VAR_OFFSET);
            return argString;
        }

        if (IS_BETWEEN(resultHex, -EVT_LOCAL_FLAG_OFFSET, -EVT_MAP_VAR_OFFSET)) {
            sprintf(argString, "GW(%d)", resultHex - -EVT_LOCAL_FLAG_OFFSET);
            return argString;
        }

        if (IS_BETWEEN(resultHex, -EVT_MAP_FLAG_OFFSET, -EVT_LOCAL_FLAG_OFFSET)) {
            sprintf(argString, "LFlag%d", resultHex - -EVT_MAP_FLAG_OFFSET);
            return argString;
        }

        if (IS_BETWEEN(resultHex, -EVT_AREA_FLAG_OFFSET, -EVT_MAP_FLAG_OFFSET)) {
            sprintf(argString, "GF(%d)", resultHex - -EVT_AREA_FLAG_OFFSET);
            return argString;
        }

        if (IS_BETWEEN(resultHex, -EVT_GAME_FLAG_OFFSET, -EVT_AREA_FLAG_OFFSET)) {
            sprintf(argString, "LSWF(%d)", resultHex - -EVT_GAME_FLAG_OFFSET);
            return argString;
        }

        if (IS_BETWEEN(resultHex, -EVT_AREA_BYTE_OFFSET, -EVT_GAME_FLAG_OFFSET)) {
            sprintf(argString, "GSWF(%d)", resultHex - -EVT_AREA_BYTE_OFFSET);
            return argString;
        }

        if (IS_BETWEEN(resultHex, -EVT_GAME_BYTE_OFFSET, -EVT_AREA_BYTE_OFFSET)) {
            sprintf(argString, "GSW(%d)", resultHex - -EVT_GAME_BYTE_OFFSET);
            return argString;
        }

        if (IS_BETWEEN(resultHex, -EVT_ARRAY_VAR_OFFSET, -EVT_GAME_BYTE_OFFSET)) {
            sprintf(argString, "UW(%d)", resultHex - -EVT_ARRAY_VAR_OFFSET);
            return argString;
        }

        if (IS_BETWEEN(resultHex, -EVT_ARRAY_FLAG_OFFSET, -EVT_ARRAY_VAR_OFFSET)) {
            sprintf(argString, "UF(%d)", resultHex - -EVT_ARRAY_FLAG_OFFSET);
            return argString;
        }

        //what is the actual range of fixed point floats??
        if (IS_BETWEEN(resultHex, -EVT_FIXED_OFFSET, -EVT_ARRAY_FLAG_OFFSET)) {
            sprintf(argString, "Float(%.3f)", ( (float)(resultHex - -230000000) / 1024.0f));
            return argString;
        }
    } else {
        if (IS_BETWEEN(resultHex, -EVT_LOCAL_VAR_OFFSET, -EVT_LOCAL_VAR_OFFSET + 16)) {
            sprintf(argString, "LW(%d)", resultHex - -EVT_LOCAL_VAR_OFFSET);
            return argString;
        }

        if (IS_BETWEEN(resultHex, -EVT_LOCAL_FLAG_OFFSET, -EVT_MAP_VAR_OFFSET)) {
            sprintf(argString, "GW(%d)", resultHex - -EVT_LOCAL_FLAG_OFFSET);
            return argString;
        }

        if (IS_BETWEEN(resultHex, -EVT_MAP_FLAG_OFFSET, -EVT_LOCAL_FLAG_OFFSET)) {
            sprintf(argString, "LF(%d)", resultHex - -EVT_MAP_FLAG_OFFSET);
            return argString;
        }

        if (IS_BETWEEN(resultHex, -EVT_AREA_FLAG_OFFSET, -EVT_MAP_FLAG_OFFSET)) {
            sprintf(argString, "GF(%d)", resultHex - -EVT_AREA_FLAG_OFFSET);
            return argString;
        }

        if (IS_BETWEEN(resultHex, -EVT_GAME_FLAG_OFFSET, -EVT_AREA_FLAG_OFFSET)) {
            sprintf(argString, "LSWF(%d)", resultHex - -EVT_GAME_FLAG_OFFSET);
            return argString;
        }

        if (IS_BETWEEN(resultHex, -EVT_AREA_BYTE_OFFSET, -EVT_GAME_FLAG_OFFSET)) {
            sprintf(argString, "GSWF(%d)", resultHex - -EVT_AREA_BYTE_OFFSET);
            return argString;
        }

        if (IS_BETWEEN(resultHex, -EVT_GAME_BYTE_OFFSET, -EVT_AREA_BYTE_OFFSET)) {
            sprintf(argString, "GSW(%d)", resultHex - -EVT_GAME_BYTE_OFFSET);
            return argString;
        }

        if (IS_BETWEEN(resultHex, -EVT_ARRAY_VAR_OFFSET, -EVT_GAME_BYTE_OFFSET)) {
            sprintf(argString, "UW(%d)", resultHex - -EVT_ARRAY_VAR_OFFSET);
            return argString;
        }

        if (IS_BETWEEN(resultHex, -EVT_ARRAY_FLAG_OFFSET, -EVT_ARRAY_VAR_OFFSET)) {
            sprintf(argString, "UF(%d)", resultHex - -EVT_ARRAY_FLAG_OFFSET);
            return argString;
        }

        //what is the actual range of fixed point floats??
        if (IS_BETWEEN(resultHex, -EVT_FIXED_OFFSET, -EVT_ARRAY_FLAG_OFFSET)) {
            sprintf(argString, "Float(%.3f)", ( (float)(resultHex - -230000000) / 1024.0f));
            return argString;
        }        
    }

    return argString;
}

void ParseScriptOpcodeAndArgs(unsigned short opcode, int argCount, FILE* file, char* curScriptLineBuffer, char* hexString, int mnemonicResult) {
    int labelCount = 0;
    for (int i = 0; i < argCount; i++) {
        char* argString = fgets(line, sizeof(line), file);
        argString = StripNewLineCharacterFromString(argString);
        argString = argString + strlen(prefix);

        //skip over 0x prefix
        if (argString[0] == '0' && argString[1] == 'x') {
            int resultHex = (unsigned int)strtol(hexString, NULL, 16);
            argString = ParseHexForScriptSpecialValue(argString, resultHex, mnemonicResult);
        } else {
            //is symbol
        }
        
        char comma_space[] = ", ";
        // Concatenate the malloced strings into curScriptLineBuffer
        char *reallocTemp = realloc(curScriptLineBuffer, strlen(curScriptLineBuffer) + strlen(argString) + sizeof(comma_space)); // +3 for ", " and null terminator
        if (reallocTemp == NULL) {
            // Handle realloc error
            perror("Memory allocation error");
            free(curScriptLineBuffer); // Free previously allocated memory
            exit(EXIT_FAILURE);
        }

        curScriptLineBuffer = reallocTemp;
        
        //append comma after symbol/hex if not the last iteration
        if (i != (argCount - 1)){ 
            strcat(argString, ", ");
        }

        strcat(curScriptLineBuffer, argString);
    }
}

int ParseScriptForReturnOrEnd(unsigned short opcode, unsigned short argCount, OpcodeIDAndString* mnemonicToUse) {
    //loop until all args have been parsed, but first check for return/end
    if (opcode == EVT_OPC_END_SCRIPT) {
        if (argCount == 0) {
            //is return, write end and exit loop
            printf("%s%s\n", tabCounterString, mnemonicToUse[opcode].mnemonicString);
            return 0;
        }
    } else if (opcode == EVT_OPC_END_EVT) {
        if (argCount == 0) {
            //is return, write return and restart loop
            printf("%s%s\n", tabCounterString, mnemonicToUse[opcode].mnemonicString);
            return 1;
        }
    } else {
        return 2;
    }
}

//args passed to main;
//argv[1] is name of file to parse
//argv[2] is name of object
//argv[3] is line number of ".obj objectName"

int main(int argc, char *argv[]) {
    int line_number = atoi(argv[3]);
    int inSwitchCounter[7] = {0, 0, 0, 0, 0, 0, 0};
    int switchTabCounterStart = 0;
    int switchCounter = 0;

    OpcodeIDAndString* mnemonicToUse;
    int mnemonicResult;
    if (argc == 5) {
        if (strncmp(argv[4], "-dtk", sizeof("-dtk")) == 0) {
            mnemonicToUse = dtk_mnemonic;
            mnemonicResult = 1;
        } else {
            mnemonicToUse = mnemonicStrings;
            mnemonicResult = 0;
        }
    } else {
        mnemonicToUse = mnemonicStrings;
        mnemonicResult = 0;
    }

    FILE *file = fopen(argv[1], "r");
    if (file == NULL) {
        perror("Error opening file");
        return 1;
    }

    // Read lines until the desired line
    // Can this be improved?
    int current_line = 1;
    while (current_line < line_number + 1) {
        if (fgets(line, sizeof(line), file) == NULL) {
            // Handle the case where the desired line doesn't exist
            printf("Line number not found in file\n");
            fclose(file);
            return 1;
        }
        current_line++;
    }

    int lineCount = current_line;
    printf("EvtScript %s = {\n", argv[2]);
    int tabCounter = 1;
    unsigned short prevOpcode = 0;

    while (1) {
        char* opcodeString = fgets(line, sizeof(line), file);
        unsigned int resultUInt;
        // Remove the newline character from opcodeString, if present
        opcodeString = StripNewLineCharacterFromString(opcodeString);

        //strip prefix from string
        opcodeString = opcodeString + strlen(prefix);
        resultUInt = (unsigned int)strtol(opcodeString, NULL, 16);
        unsigned short argCount = (resultUInt & 0xFFFF0000) >> 16;
        unsigned short opcode = resultUInt & 0x0000FFFF;

        RESET_AND_APPEND_STRING(tabCounterString, '\0', tabSpace, tabCounter);

        int opcodeResult = ParseScriptForReturnOrEnd(opcode, argCount, mnemonicToUse);

        if (opcodeResult == 0) {
            printf("};\n");
            break;
        } else if (opcodeResult == 1) {
            continue;
        } else { //is 2
            // Initialize curScriptLineBuffer as an empty string
            char *curScriptLineBuffer = malloc(1);
            curScriptLineBuffer[0] = '\0';
            char* curMnemonicString = mnemonicToUse[opcode].mnemonicString;


            // //track where cases for current switch should tab to
            // if (opcode == EVT_OPC_SWITCH) {
            //     switchCounter++;
            //     inSwitchCounter[switchCounter] = tabCounter + 1;
                
            // } else if (opcode == EVT_OPC_END_SWITCH) {
            //     tabCounter = inSwitchCounter[switchCounter];
            //     switchCounter--;
            // }

            // if (prevOpcode == EVT_OPC_SWITCH) {
            //     tabCounter--;
            // }

            if (mnemonicToUse[opcode].tabIncrement == 0 || mnemonicToUse[opcode].tabIncrement == 1) {
                if (opcode >= EVT_OPC_CASE_EQUAL && opcode <= EVT_OPC_CASE_BETWEEN) {
                    tabCounter = inSwitchCounter[switchCounter];
                }
                ParseScriptOpcodeAndArgs(opcode, argCount, file, curScriptLineBuffer, opcodeString, mnemonicResult);
                RESET_AND_APPEND_STRING(tabCounterString, '\0', tabSpace, tabCounter);

                // if (switchCounter != 0) {
                //     tabCounter = inSwitchCounter[switchCounter];
                // }



                
                tabCounter += mnemonicToUse[opcode].tabIncrement;

                if (opcode == EVT_OPC_SWITCH) {
                    switchCounter++;
                    inSwitchCounter[switchCounter] = tabCounter;
                }


                if (argCount == 0) {
                    printf("%s%s %s\n", tabCounterString, curMnemonicString, curScriptLineBuffer);
                } else {
                    printf("%s%s(%s)\n", tabCounterString, curMnemonicString, curScriptLineBuffer);
                }
            } else {
                if (opcode == EVT_OPC_END_SWITCH) {
                    tabCounter = inSwitchCounter[switchCounter];
                    switchCounter--;
                }
                tabCounter += mnemonicToUse[opcode].tabIncrement;

                RESET_AND_APPEND_STRING(tabCounterString, '\0', tabSpace, tabCounter);

                ParseScriptOpcodeAndArgs(opcode, argCount, file, curScriptLineBuffer, opcodeString, mnemonicResult);
                if (opcode == EVT_OPC_ELSE) {
                    tabCounter++;
                }
                printf("%s%s %s\n", tabCounterString, curMnemonicString, curScriptLineBuffer);
            }
            free(curScriptLineBuffer);
            curScriptLineBuffer = NULL;
        }
        prevOpcode = opcode;
    }
}
