#!/usr/bin/env python3

import sys
import re
from pathlib import Path

if len(sys.argv) < 2:
    print("Usage: python parse_splits.py <splits_file_or_directory>")
    sys.exit(1)

input_path = Path(sys.argv[1])

# Collect all splits.txt files to process
if input_path.is_dir():
    splits_files = list(input_path.rglob("splits.txt"))
else:
    splits_files = [input_path]

if not splits_files:
    sys.exit(f"No splits.txt files found in {input_path}")

all_rel_entries = []

for splits_file in splits_files:
    # Determine area name from the splits file's parent directory name
    area = splits_file.parent.name

    content = splits_file.read_text(encoding="utf-8")
    lines = content.splitlines()

    new_lines = []
    objects = []

    for line in lines:
        # Match unit header lines like "dmo_00.o:"
        m = re.match(r'^(\S+\.o):\s*$', line)
        if m:
            obj_name = m.group(1)
            # Strip .o extension to get base name
            base = Path(obj_name).stem
            new_unit = f"REL/{area}/{base}.s:"
            new_lines.append(new_unit)
            objects.append(f'REL/{area}/{base}.s')
        else:
            new_lines.append(line)

    # Write updated splits.txt
    splits_file.write_text("\n".join(new_lines) + "\n", encoding="utf-8")
    print(f"Updated {splits_file}")

    # Collect for configure.py output
    all_rel_entries.append((area, objects))

# Output configure.py Rel() blocks
print("\n# Add to configure.py libs:\n")
for area, objects in all_rel_entries:
    print(f"    Rel('{area}',")
    print(f"        objects = [")
    for obj in objects:
        print(f'            Object(Matching, "{obj}"),')
    print(f"        ]")
    print(f"    ),")
