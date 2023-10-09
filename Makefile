script:
	gcc -O3 tools/ScriptDisassembler/script_disassembler.c -o tools/ScriptDisassembler/script_disassembler.elf

clean:
	rm -rf asm/ build/ obj/