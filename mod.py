#!/usr/bin/env python3

import sys
import shutil
import subprocess
from pathlib import Path

VERSION = "G8ME01"
ISO_NAME = "Paper Mario - The Thousand-Year Door (USA).iso"

project_root = Path(__file__).parent
mod_root = project_root / "mod" / "root"
iso_path = project_root / "orig" / VERSION / ISO_NAME
pyisotools_dir = project_root / "tools" / "pyisotools"
rel_src_dir = project_root / "build" / VERSION
rel_dest = mod_root / "files" / "rel"

# Configure
print("Configuring...")
subprocess.run(
    [sys.executable, "configure.py", "--non-matching"],
    cwd=project_root,
    check=True,
)

# Build
print("Building...")
subprocess.run(
    ["ninja"],
    cwd=project_root,
    check=True,
)

# Extract ISO if mod/root doesn't exist
if not mod_root.exists():
    print("mod/root not found, extracting ISO...")
    if not iso_path.exists():
        sys.exit(f"ISO not found at {iso_path}")
    subprocess.run(
        [
            sys.executable, "-m", "pyisotools",
            str(iso_path),
            "E",
            "--dest", str(project_root / "mod"),
        ],
        cwd=pyisotools_dir,
        check=True,
    )
    print("Extraction done.")

# Copy RELs
print("Copying RELs...")
rel_dest.mkdir(parents=True, exist_ok=True)
rel_files = list(rel_src_dir.rglob("*.rel"))
if not rel_files:
    sys.exit(f"No REL files found in {rel_src_dir}")
for rel_file in rel_files:
    dest = rel_dest / rel_file.name
    print(f"  {rel_file.name}")
    shutil.copy2(rel_file, dest)
print(f"Copied {len(rel_files)} REL(s).")

# Copy DOL
print("Copying DOL...")
dol_src = rel_src_dir / "main.dol"
dol_dest = mod_root / "sys" / "main.dol"
if not dol_src.exists():
    sys.exit(f"DOL not found at {dol_src}")
shutil.copy2(dol_src, dol_dest)
print(f"  {dol_src.name}")

# Build ISO
print("Building ISO...")
subprocess.run(
    [
        sys.executable, "-m", "pyisotools",
        str(mod_root),
        "B",
    ],
    cwd=pyisotools_dir,
    check=True,
)

print("Done.")
