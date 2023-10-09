import os
import sys
import subprocess

#filename = "build/G8ME01/aaa/asm/aaa_00.s"
if len(sys.argv) != 2:
    print("Usage: python3 disassemble_scripts_in_file.py <file_path>")
    print("For use with parsing dtk (decomp tool kit) .s file output as .4byte")
    sys.exit(1)
    
filename = sys.argv[1]

found_strings = []

binary_path = 'tools/ScriptDisassembler/script_disassembler.elf'

# Open the file for reading
with open(filename, 'r') as file:
    lines = file.readlines()

# Iterate over file and find data that is likely scripts
for i in range(len(lines) - 1):
    line = lines[i].strip()
    
    if line.startswith(".endobj"):
        # Check if the line starts with ".endobj"
        # If yes, extract the string after ".endobj" and add it to the list
        prev_prev_string = lines[i - 2].strip()
        prev_string = lines[i - 1].strip()
        found_string = lines[i].strip()

        if prev_prev_string == ".4byte 0x00000002" or prev_prev_string == ".4byte 0x00000001": #Return or End in script bytecode
            if prev_string == ".4byte 0x00000001": #End in script bytecode
                found_strings.append(found_string)

found_strings = [string[len(".endobj "):] for string in found_strings]

#parse lines of the file
for i in range(len(lines) - 1):
    line = lines[i].strip()  # Remove leading and trailing whitespace
    if line.startswith(".obj"):
        parts = line.split(".obj ")
        obj_name = parts[1]
        obj_name = obj_name.split(', ')[0]
        if obj_name in found_strings:
            #disassemble script in file
            command = [binary_path, filename, obj_name, str(i + 1), "-dtk"]
            try:
                #run the binary and capture the result
                result = subprocess.run(command, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True, check=True)
                print(result.stdout)

            except subprocess.CalledProcessError as e:
                print(e.stderr)
    