#!/usr/bin/env python3

###
# Generates build files for the project.
# This file also includes the project configuration,
# such as compiler flags and the object matching status.
#
# Usage:
#   python3 configure.py
#   ninja
#
# Append --help to see available options.
###

import argparse
import sys
from pathlib import Path
from typing import Any, Dict, List

from tools.project import (
    Object,
    ProgressCategory,
    ProjectConfig,
    calculate_progress,
    generate_build,
    is_windows,
)

# Game versions
DEFAULT_VERSION = 1
VERSIONS = [
    "G8MJ01",  # 0
    "G8ME01",  # 1
]

parser = argparse.ArgumentParser()
parser.add_argument(
    "mode",
    choices=["configure", "progress"],
    default="configure",
    help="script mode (default: configure)",
    nargs="?",
)
parser.add_argument(
    "-v",
    "--version",
    choices=VERSIONS,
    type=str.upper,
    default=VERSIONS[DEFAULT_VERSION],
    help="version to build",
)
parser.add_argument(
    "--build-dir",
    metavar="DIR",
    type=Path,
    default=Path("build"),
    help="base build directory (default: build)",
)
parser.add_argument(
    "--binutils",
    metavar="BINARY",
    type=Path,
    help="path to binutils (optional)",
)
parser.add_argument(
    "--compilers",
    metavar="DIR",
    type=Path,
    help="path to compilers (optional)",
)
parser.add_argument(
    "--map",
    action="store_true",
    help="generate map file(s)",
)
parser.add_argument(
    "--debug",
    action="store_true",
    help="build with debug info (non-matching)",
)
if not is_windows():
    parser.add_argument(
        "--wrapper",
        metavar="BINARY",
        type=Path,
        help="path to wibo or wine (optional)",
    )
parser.add_argument(
    "--dtk",
    metavar="BINARY | DIR",
    type=Path,
    help="path to decomp-toolkit binary or source (optional)",
)
parser.add_argument(
    "--objdiff",
    metavar="BINARY | DIR",
    type=Path,
    help="path to objdiff-cli binary or source (optional)",
)
parser.add_argument(
    "--sjiswrap",
    metavar="EXE",
    type=Path,
    help="path to sjiswrap.exe (optional)",
)
parser.add_argument(
    "--ninja",
    metavar="BINARY",
    type=Path,
    help="path to ninja binary (optional)",
)
parser.add_argument(
    "--verbose",
    action="store_true",
    help="print verbose output",
)
parser.add_argument(
    "--non-matching",
    dest="non_matching",
    action="store_true",
    help="builds equivalent (but non-matching) or modded objects",
)
parser.add_argument(
    "--warn",
    dest="warn",
    type=str,
    choices=["all", "off", "error"],
    help="how to handle warnings",
)
parser.add_argument(
    "--no-progress",
    dest="progress",
    action="store_false",
    help="disable progress calculation",
)
args = parser.parse_args()

config = ProjectConfig()
config.version = str(args.version)
version_num = VERSIONS.index(config.version)

# Apply arguments
config.build_dir = args.build_dir
config.dtk_path = args.dtk
config.objdiff_path = args.objdiff
config.binutils_path = args.binutils
config.compilers_path = args.compilers
config.generate_map = args.map
config.non_matching = args.non_matching
config.sjiswrap_path = args.sjiswrap
config.ninja_path = args.ninja
config.progress = args.progress
if not is_windows():
    config.wrapper = args.wrapper
# Don't build asm unless we're --non-matching
if not config.non_matching:
    config.asm_dir = None

# Tool versions
config.binutils_tag = "2.42-2"
config.compilers_tag = "20251118"
config.dtk_tag = "v1.8.3"
config.objdiff_tag = "v3.6.1"
config.sjiswrap_tag = "v1.2.2"
config.wibo_tag = "1.0.3"

# Project
config.config_path = Path("config") / config.version / "config.yml"
config.check_sha_path = Path("config") / config.version / "build.sha1"
config.asflags = [
    "-mgekko",
    "--strip-local-absolute",
    "-I include",
    f"-I build/{config.version}/include",
    f"--defsym BUILD_VERSION={version_num}",
]
config.ldflags = [
    "-fp hardware",
    "-nodefaults",
]
if args.debug:
    config.ldflags.append("-g")  # Or -gdwarf-2 for Wii linkers
if args.map:
    config.ldflags.append("-mapunused")
    # config.ldflags.append("-listclosure") # For Wii linkers

# Use for any additional files that should cause a re-configure when modified
config.reconfig_deps = []

# Optional numeric ID for decomp.me preset
# Can be overridden in libraries or objects
config.scratch_preset_id = None

# Base flags, common to most GC/Wii games.
# Generally leave untouched, with overrides added below.
cflags_base = [
    "-nodefaults",
    "-proc gekko",
    "-align powerpc",
    "-enum int",
    "-fp hardware",
    "-Cpp_exceptions off",
    "-O4,p",
    "-inline auto",
    '-pragma "cats off"',
    '-pragma "warn_notinlined off"',
    "-maxerrors 1",
    "-nosyspath",
    "-RTTI off",
    "-fp_contract on",
    "-str reuse",
    "-char unsigned",
    "-multibyte",  # For Wii compilers, replace with `-enc SJIS`
    #dtk-specific includes
    "-i include",
    f"-i build/{config.version}/include",
    f"-DBUILD_VERSION={version_num}",
    f"-DVERSION_{config.version}",
]

# Debug flags
if args.debug:
    # Or -sym dwarf-2 for Wii compilers
    cflags_base.extend(["-sym on", "-DDEBUG=1"])
else:
    cflags_base.append("-DNDEBUG=1")

# Warning flags
if args.warn == "all":
    cflags_base.append("-W all")
elif args.warn == "off":
    cflags_base.append("-W off")
elif args.warn == "error":
    cflags_base.append("-W error")

# Metrowerks library flags
cflags_runtime = [
    *cflags_base,
    "-use_lmw_stmw on",
    "-str reuse,pool,readonly",
    "-gccinc",
    "-common off",
    "-inline auto",
]

# REL flags
cflags_rel = [
    *cflags_base,
    "-sdata 0",
    "-sdata2 0",
]

config.linker_version = "GC/1.3.2"


# Helper function for Dolphin libraries
def DolphinLib(lib_name: str, objects: List[Object]) -> Dict[str, Any]:
    return {
        "lib": lib_name,
        "mw_version": "GC/1.2.5n",
        "cflags": cflags_base,
        "progress_category": "sdk",
        "objects": objects,
    }


# Helper function for REL script objects
def Rel(lib_name: str, objects: List[Object]) -> Dict[str, Any]:
    return {
        "lib": lib_name,
        "mw_version": "GC/1.3.2",
        "cflags": cflags_rel,
        "progress_category": "game",
        "objects": objects,
    }


Matching = True                   # Object matches and should be linked
NonMatching = False               # Object does not match and should not be linked
Equivalent = config.non_matching  # Object should be linked when configured with --non-matching


# Object is only matching for specific versions
def MatchingFor(*versions):
    return config.version in versions


config.warn_missing_config = True
config.warn_missing_source = False
config.libs = [
    {
        "lib": "Runtime.PPCEABI.H",
        "mw_version": config.linker_version,
        "cflags": cflags_runtime,
        "progress_category": "sdk",  # str | List[str]
        "objects": [
            Object(Matching, "Runtime.PPCEABI.H/global_destructor_chain.c"),
            Object(Matching, "Runtime.PPCEABI.H/__init_cpp_exceptions.cpp"),
        ],
    },
    DolphinLib(
        "Custom",
        [
            #extra files added here
            Object(Matching, "Custom/extra_dol_file.c"),
        ]
    ),
    DolphinLib(
        "game",
        [
            #extra files added here
            Object(Matching, "mariost.s"),
            Object(Matching, "seq_logo.s"),
            Object(Matching, "swdrv.s"),
            Object(Matching, "msgdrv.s"),
        ]
    ),
    Rel('aaa',
        objects = [
            Object(Matching, "REL/aaa/aaa.s"),
            Object(Matching, "REL/aaa/aaa_00.s"),
            Object(Matching, "REL/aaa/test.c"),
        ]
    ),
    Rel('aji',
        objects = [
            Object(Matching, "REL/aji/aji.s"),
            Object(Matching, "REL/aji/aji_00.s"),
            Object(Matching, "REL/aji/aji_01.s"),
            Object(Matching, "REL/aji/aji_02.s"),
            Object(Matching, "REL/aji/aji_03.s"),
            Object(Matching, "REL/aji/aji_04.s"),
            Object(Matching, "REL/aji/aji_05.s"),
            Object(Matching, "REL/aji/aji_06.s"),
            Object(Matching, "REL/aji/aji_07.s"),
            Object(Matching, "REL/aji/aji_08.s"),
            Object(Matching, "REL/aji/aji_09.s"),
            Object(Matching, "REL/aji/aji_10.s"),
            Object(Matching, "REL/aji/aji_11.s"),
            Object(Matching, "REL/aji/aji_12.s"),
            Object(Matching, "REL/aji/aji_13.s"),
            Object(Matching, "REL/aji/aji_14.s"),
            Object(Matching, "REL/aji/aji_15.s"),
            Object(Matching, "REL/aji/aji_16.s"),
            Object(Matching, "REL/aji/aji_17.s"),
            Object(Matching, "REL/aji/aji_18.s"),
            Object(Matching, "REL/aji/aji_19.s"),
            Object(Matching, "REL/aji/battle_database_aji.s"),
            Object(Matching, "REL/aji/evt_shuryolight.s"),
            Object(Matching, "REL/aji/unit_barriern_custom_satellite.s"),
            Object(Matching, "REL/aji/unit_barriern_custom.s"),
            Object(Matching, "REL/aji/unit_barriern_satellite.s"),
            Object(Matching, "REL/aji/unit_barriern_z_satellite.s"),
            Object(Matching, "REL/aji/unit_barriern_z.s"),
            Object(Matching, "REL/aji/unit_barriern.s"),
            Object(Matching, "REL/aji/unit_boss_magnum_battender_mkII.s"),
            Object(Matching, "REL/aji/unit_gundan_zako_elite.s"),
            Object(Matching, "REL/aji/unit_gundan_zako_magician.s"),
            Object(Matching, "REL/aji/unit_gundan_zako.s"),
        ]
    ),
    Rel('bom',
        objects = [
            Object(Matching, "REL/bom/battle_database_bom.s"),
            Object(Matching, "REL/bom/bom_00.s"),
            Object(Matching, "REL/bom/bom_01.s"),
            Object(Matching, "REL/bom/bom_02.s"),
            Object(Matching, "REL/bom/bom_03.s"),
            Object(Matching, "REL/bom/bom_04.s"),
            Object(Matching, "REL/bom/bom.s"),
            Object(Matching, "REL/bom/unit_bllizard.s"),
            Object(Matching, "REL/bom/unit_ice_pakkun.s"),
            Object(Matching, "REL/bom/unit_kuriboo.s"),
        ]
    ),
    Rel('dmo',
        objects = [
            Object(Matching, "REL/dmo/dmo.s"),
            Object(Matching, "REL/dmo/dmo_00.s"),
        ]
    ),
    Rel('dou',
        objects = [
            Object(Matching, "REL/dou/dou.s"),
            Object(Matching, "REL/dou/dou_00.s"),
            Object(Matching, "REL/dou/dou_01.s"),
            Object(Matching, "REL/dou/dou_02.s"),
            Object(Matching, "REL/dou/dou_03.s"),
            Object(Matching, "REL/dou/dou_04.s"),
            Object(Matching, "REL/dou/dou_05.s"),
            Object(Matching, "REL/dou/dou_06.s"),
            Object(Matching, "REL/dou/dou_07.s"),
            Object(Matching, "REL/dou/dou_08.s"),
            Object(Matching, "REL/dou/dou_09.s"),
            Object(Matching, "REL/dou/dou_10.s"),
            Object(Matching, "REL/dou/dou_11.s"),
            Object(Matching, "REL/dou/battle_database_dou.s"),
            Object(Matching, "REL/dou/unit_kuriboo.s"),
            Object(Matching, "REL/dou/unit_bubble.s"),
            Object(Matching, "REL/dou/unit_killer.s"),
            Object(Matching, "REL/dou/unit_killer_cannon.s"),
            Object(Matching, "REL/dou/unit_heavy_bom.s"),
            Object(Matching, "REL/dou/unit_hermos.s"),
            Object(Matching, "REL/dou/dou_13.s"),
            Object(Matching, "REL/dou/dou_12.s"),
            Object(Matching, "REL/dou/unit_patamet.s"),
            Object(Matching, "REL/dou/evt_lect_dou.s"),
        ]
    ),
    Rel('eki',
        objects = [
            Object(Matching, "REL/eki/eki.s"),
            Object(Matching, "REL/eki/eki_00.s"),
            Object(Matching, "REL/eki/eki_01.s"),
            Object(Matching, "REL/eki/eki_02.s"),
            Object(Matching, "REL/eki/eki_03.s"),
            Object(Matching, "REL/eki/eki_04.s"),
            Object(Matching, "REL/eki/eki_05.s"),
            Object(Matching, "REL/eki/eki_06.s"),
            Object(Matching, "REL/eki/battle_database_eki.s"),
            Object(Matching, "REL/eki/unit_kuriboo.s"),
            Object(Matching, "REL/eki/unit_sambo.s"), #for some reason, this gets linked after unit_sambo_mummy and idk why
            Object(Matching, "REL/eki/unit_sambo_mummy.s"),
            Object(Matching, "REL/eki/unit_patatogemet.s"),
            Object(Matching, "REL/eki/unit_kurokumorn.s"),
            Object(Matching, "REL/eki/evt_lect_eki.s"),
        ]
    ),
    #should be equivalent, just some data shuffled around for some reason
    Rel('end',
        objects = [
            Object(Matching, "REL/end/end.s"),
            Object(Matching, "REL/end/end_unknown.s"),
        ]
    ),
    #should be equivalent, just some data shuffled around for some reason
    Rel('gon',
        objects = [
            Object(Matching, "REL/gon/gon.s"),
            Object(Matching, "REL/gon/gon_00.s"),
            Object(Matching, "REL/gon/gon_01.s"),
            Object(Matching, "REL/gon/gon_02.s"),
            Object(Matching, "REL/gon/gon_03.s"),
            Object(Matching, "REL/gon/gon_04.s"),
            Object(Matching, "REL/gon/gon_05.s"),
            Object(Matching, "REL/gon/gon_06.s"),
            Object(Matching, "REL/gon/gon_07.s"),
            Object(Matching, "REL/gon/gon_08.s"),
            Object(Matching, "REL/gon/gon_09.s"),
            Object(Matching, "REL/gon/gon_10.s"),
            Object(Matching, "REL/gon/gon_11.s"),
            Object(Matching, "REL/gon/gon_12.s"),
            Object(Matching, "REL/gon/gon_bt00.s"),
            Object(Matching, "REL/gon/battle_database_gon.s"),
            Object(Matching, "REL/gon/unit_boss_gonbaba.s"),
            Object(Matching, "REL/gon/unit_honenoko.s"),
            Object(Matching, "REL/gon/unit_kuriboo.s"),
            Object(Matching, "REL/gon/unit_red_honenoko.s"),
            Object(Matching, "REL/gon/unit_nokonoko.s"),
            Object(Matching, "REL/gon/unit_patakuri.s"),
            Object(Matching, "REL/gon/unit_patapata.s"),
            Object(Matching, "REL/gon/unit_togekuri.s"),
            Object(Matching, "REL/gon/gon_13.s"),
            Object(Matching, "REL/gon/evt_lect_gon.s"),
        ]
    ),
    Rel('gor',
        objects = [
            Object(Matching, "REL/gor/gor.s"),
            Object(Matching, "REL/gor/gor_00.s"),
            Object(Matching, "REL/gor/gor_01.s"),
            Object(Matching, "REL/gor/gor_02.s"),
            Object(Matching, "REL/gor/gor_03.s"),
            Object(Matching, "REL/gor/gor_04.s"),
            Object(Matching, "REL/gor/gor_door.s"),
            Object(Matching, "REL/gor/evt_keijiban.s"),
            Object(Matching, "REL/gor/battle_database_gor.s"),
            Object(Matching, "REL/gor/unit_kuriboo.s"),
            Object(Matching, "REL/gor/unit_monban.s"),
            Object(Matching, "REL/gor/unit_gundan_zako.s"),
            Object(Matching, "REL/gor/unit_boss_kanbu1.s"),
            Object(Matching, "REL/gor/evt_yuuranking.s"),
            Object(Matching, "REL/gor/evt_goryuugijo.s"),
            Object(Matching, "REL/gor/gor_irai.s"),
            Object(Matching, "REL/gor/gor_10.s"),
            Object(Matching, "REL/gor/unit_npc_christine.s"),
            Object(Matching, "REL/gor/unit_lecture_christine.s"),
            Object(Matching, "REL/gor/unit_lecture_frankli.s"),
            Object(Matching, "REL/gor/unit_lecture_frankli_sac.s"),
            Object(Matching, "REL/gor/evt_lect_gor.s"),
            Object(Matching, "REL/gor/gor_12.s"),
            Object(Matching, "REL/gor/gor_11.s"),
            Object(Matching, "REL/gor/gor_01_extra.c")
        ]
    ),
    Rel('gra',
        objects = [
            Object(Matching, "REL/gra/gra_00.s"),
            Object(Matching, "REL/gra/gra_01.s"),
            Object(Matching, "REL/gra/gra_02.s"),
            Object(Matching, "REL/gra/gra_03.s"),
            Object(Matching, "REL/gra/gra_04.s"),
            Object(Matching, "REL/gra/gra_05.s"),
            Object(Matching, "REL/gra/gra_06.s"),
            Object(Matching, "REL/gra/gra.s"),
            Object(Matching, "REL/gra/evt_kagemario.s"),
            Object(Matching, "REL/gra/evt_iwamove.s"),
            Object(Matching, "REL/gra/battle_database_gra.s"),
            Object(Matching, "REL/gra/unit_kuriboo.s"),
            Object(Matching, "REL/gra/unit_faker_mario_gra.s"),
            Object(Matching, "REL/gra/unit_hyper_kuriboo.s"),
            Object(Matching, "REL/gra/unit_hyper_patakuri.s"),
            Object(Matching, "REL/gra/unit_hyper_togekuri.s"),
            Object(Matching, "REL/gra/unit_hyper_sinemon.s"),
            Object(Matching, "REL/gra/unit_pansy.s"),
            Object(Matching, "REL/gra/unit_twinkling_pansy.s"),
        ]
    ),
    Rel('hei',
        objects = [
            Object(Matching, "REL/hei/hei.s"),
            Object(Matching, "REL/hei/hei_00.s"),
            Object(Matching, "REL/hei/hei_01.s"),
            Object(Matching, "REL/hei/hei_02.s"),
            Object(Matching, "REL/hei/hei_03.s"),
            Object(Matching, "REL/hei/hei_04.s"),
            Object(Matching, "REL/hei/hei_05.s"),
            Object(Matching, "REL/hei/hei_06.s"),
            Object(Matching, "REL/hei/hei_07.s"),
            Object(Matching, "REL/hei/hei_08.s"),
            Object(Matching, "REL/hei/hei_09.s"),
            Object(Matching, "REL/hei/hei_10.s"),
            Object(Matching, "REL/hei/hei_11.s"),
            Object(Matching, "REL/hei/hei_12.s"),
            Object(Matching, "REL/hei/hei_13.s"),
            Object(Matching, "REL/hei/hei_bt00.s"),
            Object(Matching, "REL/hei/battle_database_hei.s"),
            Object(Matching, "REL/hei/unit_chorobon.s"),
            Object(Matching, "REL/hei/unit_chorobon_gundan.s"),
            Object(Matching, "REL/hei/unit_gold_chorobon.s"),
            Object(Matching, "REL/hei/unit_kuriboo.s"),
            Object(Matching, "REL/hei/unit_nokonoko.s"),
            Object(Matching, "REL/hei/unit_patakuri.s"),
            Object(Matching, "REL/hei/unit_patapata.s"),
            Object(Matching, "REL/hei/unit_togekuri.s"),
            Object(Matching, "REL/hei/unit_sinemon.s"),
            Object(Matching, "REL/hei/unit_sinnosuke.s"),
            Object(Matching, "REL/hei/unit_togedaruma.s"),
            Object(Matching, "REL/hei/unit_monochrome_sinemon.s"),
            Object(Matching, "REL/hei/evt_lect_hei.s"),
        ]
    ),
    Rel('hom',
        objects = [
            Object(Matching, "REL/hom/hom.s"),
            Object(Matching, "REL/hom/hom_00.s"),
            Object(Matching, "REL/hom/hom_10.s"),
            Object(Matching, "REL/hom/hom_11.s"),
            Object(Matching, "REL/hom/hom_12.s"),
        ]
    ),
    Rel('jin',
        objects = [
            Object(Matching, "REL/jin/jin.s"),
            Object(Matching, "REL/jin/jin_00.s"),
            Object(Matching, "REL/jin/jin_01.s"),
            Object(Matching, "REL/jin/jin_02.s"),
            Object(Matching, "REL/jin/jin_03.s"),
            Object(Matching, "REL/jin/jin_04.s"),
            Object(Matching, "REL/jin/jin_05.s"),
            Object(Matching, "REL/jin/jin_06.s"),
            Object(Matching, "REL/jin/jin_07.s"),
            Object(Matching, "REL/jin/jin_08.s"),
            Object(Matching, "REL/jin/jin_09.s"),
            Object(Matching, "REL/jin/jin_10.s"),
            Object(Matching, "REL/jin/jin_11.s"),
            Object(Matching, "REL/jin/evt_kagemario.s"),
            Object(Matching, "REL/jin/unit_gullible_christine.s"),
            Object(Matching, "REL/jin/unit_gullible_clauda.s"),
            Object(Matching, "REL/jin/unit_gullible_nokotarou.s"),
            Object(Matching, "REL/jin/unit_gullible_yoshi.s"),
            Object(Matching, "REL/jin/battle_database_jin.s"),
            Object(Matching, "REL/jin/unit_faker_mario.s"),
            Object(Matching, "REL/jin/unit_atmic_teresa.s"),
            Object(Matching, "REL/jin/unit_boss_rampell.s"),
            Object(Matching, "REL/jin/unit_met.s"),
            Object(Matching, "REL/jin/unit_togemet.s"),
            Object(Matching, "REL/jin/unit_basabasa.s"),
            Object(Matching, "REL/jin/unit_teresa.s"),
        ]
    ),
    Rel('jon',
        objects = [
            Object(Matching, "REL/jon/jon_06.s"),
            Object(Matching, "REL/jon/jon.s"),
            Object(Matching, "REL/jon/jon_00.s"),
            Object(Matching, "REL/jon/jon_01.s"),
            Object(Matching, "REL/jon/jon_02.s"),
            Object(Matching, "REL/jon/jon_03.s"),
            Object(Matching, "REL/jon/jon_04.s"),
            Object(Matching, "REL/jon/jon_05.s"),
            Object(Matching, "REL/jon/battle_database_jon.s"),
            Object(Matching, "REL/jon/unit_boss_zonbaba.s"),
            Object(Matching, "REL/jon/unit_chorobon.s"),
            Object(Matching, "REL/jon/unit_hannya.s"),
            Object(Matching, "REL/jon/unit_hinnya.s"),
            Object(Matching, "REL/jon/unit_honenoko.s"),
            Object(Matching, "REL/jon/unit_yami_kuriboo.s"),
            Object(Matching, "REL/jon/unit_yami_patakuri.s"),
            Object(Matching, "REL/jon/unit_monochrome_sinemon.s"),
            Object(Matching, "REL/jon/unit_sambo.s"),
            Object(Matching, "REL/jon/unit_monochrome_kurokumorn.s"),
            Object(Matching, "REL/jon/unit_yami_togekuri.s"),
            Object(Matching, "REL/jon/unit_borodo.s"),
            Object(Matching, "REL/jon/unit_jyugem.s"),
            Object(Matching, "REL/jon/unit_bomhei.s"),
            Object(Matching, "REL/jon/unit_teresa.s"),
            Object(Matching, "REL/jon/unit_togezo.s"),
            Object(Matching, "REL/jon/unit_yami_noko.s"),
            Object(Matching, "REL/jon/unit_hyper_sinemon.s"),
            Object(Matching, "REL/jon/unit_patamet.s"),
            Object(Matching, "REL/jon/unit_ura_noko.s"),
            Object(Matching, "REL/jon/unit_flower_chorobon.s"),
            Object(Matching, "REL/jon/unit_yami_pata.s"),
            Object(Matching, "REL/jon/unit_heavy_bom.s"),
            Object(Matching, "REL/jon/unit_bubble.s"),
            Object(Matching, "REL/jon/unit_sambo_mummy.s"),
            Object(Matching, "REL/jon/unit_patatogemet.s"),
            Object(Matching, "REL/jon/unit_yamitogedaruma.s"),
            Object(Matching, "REL/jon/unit_wanwan.s"),
            Object(Matching, "REL/jon/unit_twinkling_pansy.s"),
            Object(Matching, "REL/jon/unit_togenoko_ace.s"),
            Object(Matching, "REL/jon/unit_super_mahorn.s"),
            Object(Matching, "REL/jon/unit_sinemon.s"),
            Object(Matching, "REL/jon/unit_purple_teresa.s"),
            Object(Matching, "REL/jon/unit_phantom.s"),
            Object(Matching, "REL/jon/unit_pakkun_flower.s"),
            Object(Matching, "REL/jon/unit_mahorn_custom.s"),
            Object(Matching, "REL/jon/unit_mahorn.s"),
            Object(Matching, "REL/jon/unit_karon.s"),
            Object(Matching, "REL/jon/unit_ice_pakkun.s"),
            Object(Matching, "REL/jon/unit_hyper_jyugem.s"),
            Object(Matching, "REL/jon/unit_hennya.s"),
            Object(Matching, "REL/jon/unit_giant_bomb.s"),
            Object(Matching, "REL/jon/unit_dokugassun.s"),
            Object(Matching, "REL/jon/unit_dark_keeper.s"),
            Object(Matching, "REL/jon/unit_burst_wanwan.s"),
            Object(Matching, "REL/jon/unit_bllizard.s"),
            Object(Matching, "REL/jon/unit_basabasa_chururu.s"),
            Object(Matching, "REL/jon/unit_basabasa_green.s"),
            Object(Matching, "REL/jon/unit_badge_borodo.s"),
            Object(Matching, "REL/jon/unit_piders.s"),
            Object(Matching, "REL/jon/unit_hyper_togezo.s"),
            Object(Matching, "REL/jon/unit_churantalar.s"),
        ]
    ),
    Rel('kpa',
        objects = [
            Object(Matching, "REL/kpa/kpa_02.s"),
            Object(Matching, "REL/kpa/kpa.s"),
            Object(Matching, "REL/kpa/kpa_00.s"),
            Object(Matching, "REL/kpa/kpa_01.s"),
            Object(Matching, "REL/kpa/kpa_06.s"),
            Object(Matching, "REL/kpa/kpa_03.s"),
            Object(Matching, "REL/kpa/kpa_04.s"),
            Object(Matching, "REL/kpa/kpa_05.s"),
            Object(Matching, "REL/kpa/kpa_07.s"),
        ]
    ),
    Rel('las',
        objects = [
            Object(Matching, "REL/las/las.s"),
            Object(Matching, "REL/las/las_00.s"),
            Object(Matching, "REL/las/las_01.s"),
            Object(Matching, "REL/las/las_02.s"),
            Object(Matching, "REL/las/las_03.s"),
            Object(Matching, "REL/las/las_04.s"),
            Object(Matching, "REL/las/las_05.s"),
            Object(Matching, "REL/las/las_06.s"),
            Object(Matching, "REL/las/las_07.s"),
            Object(Matching, "REL/las/las_08.s"),
            Object(Matching, "REL/las/las_09.s"),
            Object(Matching, "REL/las/las_10.s"),
            Object(Matching, "REL/las/las_11.s"),
            Object(Matching, "REL/las/las_12.s"),
            Object(Matching, "REL/las/las_13.s"),
            Object(Matching, "REL/las/las_14.s"),
            Object(Matching, "REL/las/las_15.s"),
            Object(Matching, "REL/las/las_16.s"),
            Object(Matching, "REL/las/las_17.s"),
            Object(Matching, "REL/las/las_18.s"),
            Object(Matching, "REL/las/las_19.s"),
            Object(Matching, "REL/las/las_20.s"),
            Object(Matching, "REL/las/las_21.s"),
            Object(Matching, "REL/las/las_22.s"),
            Object(Matching, "REL/las/las_23.s"),
            Object(Matching, "REL/las/las_24.s"),
            Object(Matching, "REL/las/las_25.s"),
            Object(Matching, "REL/las/las_26.s"),
            Object(Matching, "REL/las/las_27.s"),
            Object(Matching, "REL/las/las_28.s"),
            Object(Matching, "REL/las/las_29.s"),
            Object(Matching, "REL/las/battle_database_las.s"),
            Object(Matching, "REL/las/unit_boss_koopa.s"),
            Object(Matching, "REL/las/unit_boss_kamec_obaba.s"),
            Object(Matching, "REL/las/unit_boss_rampell_las.s"),
            Object(Matching, "REL/las/unit_boss_black_peach.s"),
            Object(Matching, "REL/las/unit_black_karon.s"),
            Object(Matching, "REL/las/unit_karon.s"),
            Object(Matching, "REL/las/las_30.s"),
            Object(Matching, "REL/las/unit_boss_batten_leader.s"),
            Object(Matching, "REL/las/unit_boss_batten_satellite.s"),
            Object(Matching, "REL/las/unit_boss_bunbaba.s"),
            Object(Matching, "REL/las/unit_super_killer.s"),
            Object(Matching, "REL/las/unit_super_killer_cannon.s"),
            Object(Matching, "REL/las/unit_super_mahorn.s"),
            Object(Matching, "REL/las/unit_wanwan.s"),
            Object(Matching, "REL/las/unit_basabasa_chururu.s"),
            Object(Matching, "REL/las/evt_shuryolight.s"),
            Object(Matching, "REL/las/unit_phantom.s"),
            Object(Matching, "REL/las/unit_heavy_bom.s"),
            Object(Matching, "REL/las/unit_honenoko.s"),
            Object(Matching, "REL/las/unit_red_honenoko.s"),
            Object(Matching, "REL/las/unit_boss_marilyn_las.s"),
            Object(Matching, "REL/las/unit_boss_majolyne_las.s"),
        ]
    ),
    Rel('moo',
        objects = [
            Object(Matching, "REL/moo/moo_00.s"),
            Object(Matching, "REL/moo/moo_01.s"),
            Object(Matching, "REL/moo/moo_02.s"),
            Object(Matching, "REL/moo/moo_03.s"),
            Object(Matching, "REL/moo/moo_04.s"),
            Object(Matching, "REL/moo/moo.s"),
            Object(Matching, "REL/moo/battle_database_moo.s"),
            Object(Matching, "REL/moo/unit_kuriboo.s"),
            Object(Matching, "REL/moo/moo_05.s"),
            Object(Matching, "REL/moo/moo_06.s"),
            Object(Matching, "REL/moo/moo_07.s"),
            Object(Matching, "REL/moo/unit_sinemon.s"),
            Object(Matching, "REL/moo/unit_barriern_z_satellite.s"),
            Object(Matching, "REL/moo/unit_barriern_z.s"),
            Object(Matching, "REL/moo/unit_hyper_sinemon.s"),
        ]
    ),
    Rel('mri',
        objects = [
            Object(Matching, "REL/mri/mri.s"),
            Object(Matching, "REL/mri/mri_00.s"),
            Object(Matching, "REL/mri/mri_01.s"),
            Object(Matching, "REL/mri/mri_02.s"),
            Object(Matching, "REL/mri/mri_03.s"),
            Object(Matching, "REL/mri/mri_04.s"),
            Object(Matching, "REL/mri/mri_05.s"),
            Object(Matching, "REL/mri/mri_06.s"),
            Object(Matching, "REL/mri/mri_07.s"),
            Object(Matching, "REL/mri/mri_08.s"),
            Object(Matching, "REL/mri/mri_09.s"),
            Object(Matching, "REL/mri/mri_10.s"),
            Object(Matching, "REL/mri/mri_11.s"),
            Object(Matching, "REL/mri/mri_12.s"),
            Object(Matching, "REL/mri/mri_13.s"),
            Object(Matching, "REL/mri/mri_14.s"),
            Object(Matching, "REL/mri/mri_15.s"),
            Object(Matching, "REL/mri/mri_16.s"),
            Object(Matching, "REL/mri/punidrv.s"),
            Object(Matching, "REL/mri/mri_puni.s"),
            Object(Matching, "REL/mri/battle_database_mri.s"),
            Object(Matching, "REL/mri/unit_kuriboo.s"),
            Object(Matching, "REL/mri/unit_boss_magnum_battender.s"),
            Object(Matching, "REL/mri/unit_gundan_zako.s"),
            Object(Matching, "REL/mri/unit_barriern.s"),
            Object(Matching, "REL/mri/unit_piders.s"),
            Object(Matching, "REL/mri/unit_barriern_satellite.s"),
            Object(Matching, "REL/mri/unit_dokugassun.s"),
            Object(Matching, "REL/mri/unit_pakkun_flower.s"),
            Object(Matching, "REL/mri/mri_17.s"),
            Object(Matching, "REL/mri/mri_20.s"),
            Object(Matching, "REL/mri/mri_18.s"),
            Object(Matching, "REL/mri/mri_19.s"),
            Object(Matching, "REL/mri/unit_boss_kanbu2.s"),
            Object(Matching, "REL/mri/unit_monochrome_kurokumorn.s"),
            Object(Matching, "REL/mri/unit_monochrome_pakkun.s"),
            Object(Matching, "REL/mri/evt_lect_mri.s"),
        ]
    ),
    Rel('muj',
        objects = [
            Object(Matching, "REL/muj/muj.s"),
            Object(Matching, "REL/muj/muj_00.s"),
            Object(Matching, "REL/muj/muj_01.s"),
            Object(Matching, "REL/muj/muj_02.s"),
            Object(Matching, "REL/muj/muj_03.s"),
            Object(Matching, "REL/muj/muj_04.s"),
            Object(Matching, "REL/muj/muj_05.s"),
            Object(Matching, "REL/muj/muj_10.s"),
            Object(Matching, "REL/muj/muj_11.s"),
            Object(Matching, "REL/muj/muj_12.s"),
            Object(Matching, "REL/muj/muj_20.s"),
            Object(Matching, "REL/muj/battle_database_muj.s"),
            Object(Matching, "REL/muj/unit_boss_cortez.s"),
            Object(Matching, "REL/muj/unit_boss_honeduka.s"),
            Object(Matching, "REL/muj/unit_boss_cortez_sword.s"),
            Object(Matching, "REL/muj/unit_boss_cortez_claw.s"),
            Object(Matching, "REL/muj/unit_boss_cortez_rapier.s"),
            Object(Matching, "REL/muj/unit_boss_cortez_saber.s"),
            Object(Matching, "REL/muj/unit_kuriboo.s"),
            Object(Matching, "REL/muj/unit_boss_kanbu3.s"),
            Object(Matching, "REL/muj/unit_boss_gundan_zako_group1.s"),
            Object(Matching, "REL/muj/unit_boss_gundan_zako_group2.s"),
            Object(Matching, "REL/muj/unit_boss_gundan_zako_group3.s"),
            Object(Matching, "REL/muj/unit_gundan_zako_magician.s"),
            Object(Matching, "REL/muj/unit_flower_chorobon.s"),
            Object(Matching, "REL/muj/unit_green_chorobon.s"),
            Object(Matching, "REL/muj/unit_poison_pakkun.s"),
            Object(Matching, "REL/muj/unit_hermos.s"),
            Object(Matching, "REL/muj/unit_pakkun_flower.s"),
            Object(Matching, "REL/muj/evt_lect_muj.s"),
            Object(Matching, "REL/muj/muj_21.s"),
        ]
    ),
    Rel('nok',
        objects = [
            Object(Matching, "REL/nok/nok.s"),
            Object(Matching, "REL/nok/nok_00.s"),
            Object(Matching, "REL/nok/nok_01.s"),
            Object(Matching, "REL/nok/unit_act_atmic_teresa.s"),
            Object(Matching, "REL/nok/unit_act_clauda.s"),
            Object(Matching, "REL/nok/unit_act_kinopiko.s"),
            Object(Matching, "REL/nok/unit_act_kinopio.s"),
            Object(Matching, "REL/nok/unit_act_mario.s"),
            Object(Matching, "REL/nok/unit_act_teresa.s"),
            Object(Matching, "REL/nok/battle_database_nok.s"),
        ]
    ),
    Rel('pik',
        objects = [
            Object(Matching, "REL/pik/pik.s"),
            Object(Matching, "REL/pik/pik_00.s"),
            Object(Matching, "REL/pik/pik_01.s"),
            Object(Matching, "REL/pik/pik_02.s"),
            Object(Matching, "REL/pik/pik_03.s"),
            Object(Matching, "REL/pik/pik_04.s"),
            Object(Matching, "REL/pik/battle_database_pik.s"),
            Object(Matching, "REL/pik/unit_purple_teresa.s"),
        ]
    ),
    Rel('rsh',
        objects = [
            Object(Matching, "REL/rsh/rsh.s"),
            Object(Matching, "REL/rsh/rsh_00.s"),
            Object(Matching, "REL/rsh/rsh_01.s"),
            Object(Matching, "REL/rsh/rsh_02.s"),
            Object(Matching, "REL/rsh/rsh_03.s"),
            Object(Matching, "REL/rsh/rsh_04.s"),
            Object(Matching, "REL/rsh/rsh_05.s"),
            Object(Matching, "REL/rsh/rsh_06.s"),
            Object(Matching, "REL/rsh/battle_database_rsh.s"),
            Object(Matching, "REL/rsh/unit_boss_moamoa.s"),
            Object(Matching, "REL/rsh/rsh_08.s"),
            Object(Matching, "REL/rsh/rsh_07.s"),
            Object(Matching, "REL/rsh/unit_boss_moamoa_tentacle_a.s"),
            Object(Matching, "REL/rsh/unit_boss_moamoa_tentacle_b.s"),
            Object(Matching, "REL/rsh/unit_boss_moamoa_tentacle_c.s"),
            Object(Matching, "REL/rsh/unit_boss_moamoa_mouth.s"),
        ]
    ),
    Rel('sys',
        objects = [
            Object(Matching, "REL/sys/sys.s"),
        ]
    ),
    Rel('tik',
        objects = [
            Object(Matching, "REL/tik/tik.s"),
            Object(Matching, "REL/tik/tik_00.s"),
            Object(Matching, "REL/tik/tik_01.s"),
            Object(Matching, "REL/tik/tik_02.s"),
            Object(Matching, "REL/tik/tik_03.s"),
            Object(Matching, "REL/tik/tik_04.s"),
            Object(Matching, "REL/tik/tik_05.s"),
            Object(Matching, "REL/tik/tik_06.s"),
            Object(Matching, "REL/tik/tik_07.s"),
            Object(Matching, "REL/tik/tik_08.s"),
            Object(Matching, "REL/tik/tik_09.s"),
            Object(Matching, "REL/tik/tik_10.s"),
            Object(Matching, "REL/tik/tik_13.s"),
            Object(Matching, "REL/tik/tik_11.s"),
            Object(Matching, "REL/tik/tik_12.s"),
            Object(Matching, "REL/tik/unit_boss_gesso.s"),
            Object(Matching, "REL/tik/battle_database_tik.s"),
            Object(Matching, "REL/tik/tik_14.s"),
            Object(Matching, "REL/tik/unit_boss_gesso_right_arm.s"),
            Object(Matching, "REL/tik/unit_boss_gesso_left_arm.s"),
            Object(Matching, "REL/tik/unit_kuriboo.s"),
            Object(Matching, "REL/tik/tik_21.s"),
            Object(Matching, "REL/tik/tik_15.s"),
            Object(Matching, "REL/tik/tik_16.s"),
            Object(Matching, "REL/tik/tik_17.s"),
            Object(Matching, "REL/tik/tik_18.s"),
            Object(Matching, "REL/tik/tik_19.s"),
            Object(Matching, "REL/tik/tik_20.s"),
            Object(Matching, "REL/tik/unit_hannya.s"),
            Object(Matching, "REL/tik/unit_hinnya.s"),
            Object(Matching, "REL/tik/unit_patakuri.s"),
            Object(Matching, "REL/tik/unit_togekuri.s"),
            Object(Matching, "REL/tik/unit_hammer_bros.s"),
            Object(Matching, "REL/tik/unit_kamec.s"),
            Object(Matching, "REL/tik/unit_patapata.s"),
            Object(Matching, "REL/tik/unit_togenoko.s"),
            Object(Matching, "REL/tik/unit_nokonoko.s"),
            Object(Matching, "REL/tik/evt_lect_tik.s"),
            Object(Matching, "REL/tik/unit_lecture_frankli_kuriboo.s"),
            Object(Matching, "REL/tik/unit_hennya.s"),
        ]
    ),
    Rel('tou',
        objects = [
            Object(Matching, "REL/tou/tou.s"),
            Object(Matching, "REL/tou/tou_00.s"),
            Object(Matching, "REL/tou/tou_01.s"),
            Object(Matching, "REL/tou/tou_02.s"),
            Object(Matching, "REL/tou/tou_04.s"),
            Object(Matching, "REL/tou/tou_05.s"),
            Object(Matching, "REL/tou/tou_06.s"),
            Object(Matching, "REL/tou/tou_07.s"),
            Object(Matching, "REL/tou/tou_08.s"),
            Object(Matching, "REL/tou/tou_09.s"),
            Object(Matching, "REL/tou/tou_10.s"),
            Object(Matching, "REL/tou/tou_11.s"),
            Object(Matching, "REL/tou/tou_12.s"),
            Object(Matching, "REL/tou/tou_13.s"),
            Object(Matching, "REL/tou/tou_20.s"),
            Object(Matching, "REL/tou/evt_lect_tou.s"),
        ]
    ),
    Rel('tou2',
        objects = [
            Object(Matching, "REL/tou2/tou_03.s"),
            Object(Matching, "REL/tou2/battle_database_tou.s"),
            Object(Matching, "REL/tou2/unit_boss_macho_gance.s"),
            Object(Matching, "REL/tou2/unit_boss_champion.s"),
            Object(Matching, "REL/tou2/tou2.s"),
            Object(Matching, "REL/tou2/unit_basabasa.s"),
            Object(Matching, "REL/tou2/unit_bomhei.s"),
            Object(Matching, "REL/tou2/unit_boomerang_bros.s"),
            Object(Matching, "REL/tou2/unit_borodo.s"),
            Object(Matching, "REL/tou2/unit_chorobon.s"),
            Object(Matching, "REL/tou2/unit_dark_keeper.s"),
            Object(Matching, "REL/tou2/unit_fire_bros.s"),
            Object(Matching, "REL/tou2/unit_flower_chorobon.s"),
            Object(Matching, "REL/tou2/unit_green_chorobon.s"),
            Object(Matching, "REL/tou2/unit_hammer_bros.s"),
            Object(Matching, "REL/tou2/unit_hennya.s"),
            Object(Matching, "REL/tou2/unit_hinnya.s"),
            Object(Matching, "REL/tou2/unit_honenoko.s"),
            Object(Matching, "REL/tou2/unit_iron_sinemon.s"),
            Object(Matching, "REL/tou2/unit_iron_sinemon2.s"),
            Object(Matching, "REL/tou2/unit_jyugem.s"),
            Object(Matching, "REL/tou2/unit_kurikuri.s"),
            Object(Matching, "REL/tou2/unit_piders.s"),
            Object(Matching, "REL/tou2/unit_sambo.s"),
            Object(Matching, "REL/tou2/unit_togedaruma.s"),
            Object(Matching, "REL/tou2/unit_togezo.s"),
            Object(Matching, "REL/tou2/unit_ura_noko.s"),
            Object(Matching, "REL/tou2/unit_ura_pata.s"),
            Object(Matching, "REL/tou2/unit_hannya.s"),
            Object(Matching, "REL/tou2/unit_hyper_sinnosuke.s"),
            Object(Matching, "REL/tou2/unit_kamec_green.s"),
            Object(Matching, "REL/tou2/unit_kamec_red.s"),
            Object(Matching, "REL/tou2/unit_kamec_white.s"),
            Object(Matching, "REL/tou2/unit_togenoko_ace.s"),
            Object(Matching, "REL/tou2/unit_burst_wanwan.s"),
            Object(Matching, "REL/tou2/unit_hyper_jyugem.s"),
            Object(Matching, "REL/tou2/unit_hyper_togezo.s"),
            Object(Matching, "REL/tou2/unit_wanawana.s"),
            Object(Matching, "REL/tou2/unit_boss_koopa_tou.s"),
            Object(Matching, "REL/tou2/unit_borodo_king.s"),
            Object(Matching, "REL/tou2/unit_nokonoko_fighter.s"),
            Object(Matching, "REL/tou2/unit_patapata_fighter.s"),
            Object(Matching, "REL/tou2/unit_crimson_togemet.s"),
            Object(Matching, "REL/tou2/unit_monochrome_kurokumorn.s"),
            Object(Matching, "REL/tou2/unit_monochrome_pakkun.s"),
        ]
    ),
    Rel('usu',
        objects = [
            Object(Matching, "REL/usu/usu.s"),
            Object(Matching, "REL/usu/usu_00.s"),
            Object(Matching, "REL/usu/usu_01.s"),
            Object(Matching, "REL/usu/evt_kagemario.s"),
            Object(Matching, "REL/usu/evt_lect_usu.s"),
        ]
    ),
    Rel('win',
        objects = [
            Object(Matching, "REL/win/win_00.s"),
            Object(Matching, "REL/win/win_01.s"),
            Object(Matching, "REL/win/win_02.s"),
            Object(Matching, "REL/win/win_03.s"),
            Object(Matching, "REL/win/win_04.s"),
            Object(Matching, "REL/win/win_05.s"),
            Object(Matching, "REL/win/win.s"),
            Object(Matching, "REL/win/battle_database_win.s"),
            Object(Matching, "REL/win/unit_kuriboo.s"),
            Object(Matching, "REL/win/unit_gundan_zako.s"),
            Object(Matching, "REL/win/unit_dokugassun.s"),
            Object(Matching, "REL/win/unit_pakkun_flower.s"),
            Object(Matching, "REL/win/win_06.s"),
            Object(Matching, "REL/win/unit_boss_vivian.s"),
            Object(Matching, "REL/win/unit_boss_majolyne.s"),
            Object(Matching, "REL/win/unit_boss_marilyn.s"),
            Object(Matching, "REL/win/unit_monochrome_sinemon.s"),
            Object(Matching, "REL/win/unit_monochrome_pakkun.s"),
            Object(Matching, "REL/win/unit_monochrome_kurokumorn.s"),
            Object(Matching, "REL/win/evt_lect_win.s"),
        ]
    ),
    Rel('yuu',
        objects = [
            Object(Matching, "REL/yuu/yuu_02.s"),
            Object(Matching, "REL/yuu/yuu_03.s"),
            Object(Matching, "REL/yuu/yuu.s"),
            Object(Matching, "REL/yuu/yuu_00.s"),
            Object(Matching, "REL/yuu/yuu_01.s"),
            Object(Matching, "REL/yuu/evt_yuuranking.s"),
            Object(Matching, "REL/yuu/evt_yuutitle.s"),
            Object(Matching, "REL/yuu/evt_yuucounter.s"),
            Object(Matching, "REL/yuu/evt_yuuminigame.s"),
            Object(Matching, "REL/yuu/evt_yuunpc.s"),
        ]
    ),
]


# Optional callback to adjust link order. This can be used to add, remove, or reorder objects.
# This is called once per module, with the module ID and the current link order.
#
# For example, this adds "dummy.c" to the end of the DOL link order if configured with --non-matching.
# "dummy.c" *must* be configured as a Matching (or Equivalent) object in order to be linked.
def link_order_callback(module_id: int, objects: List[str]) -> List[str]:
    # Don't modify the link order for matching builds
    if not config.non_matching:
        return objects
    if module_id == 0:  # DOL
        return objects + ["dummy.c"]
    return objects


# Uncomment to enable the link order callback.
# config.link_order_callback = link_order_callback


# Optional extra categories for progress tracking
# Adjust as desired for your project
config.progress_categories = [
    ProgressCategory("game", "Game Code"),
    ProgressCategory("sdk", "SDK Code"),
]
config.progress_each_module = args.verbose
# Optional extra arguments to `objdiff-cli report generate`
config.progress_report_args = [
    # Marks relocations as mismatching if the target value is different
    # Default is "functionRelocDiffs=none", which is most lenient
    # "--config functionRelocDiffs=data_value",
]

if args.mode == "configure":
    # Write build.ninja and objdiff.json
    generate_build(config)
elif args.mode == "progress":
    # Print progress information
    calculate_progress(config)
else:
    sys.exit("Unknown mode: " + args.mode)
