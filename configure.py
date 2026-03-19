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
            Object(NonMatching, "Runtime.PPCEABI.H/global_destructor_chain.c"),
            Object(NonMatching, "Runtime.PPCEABI.H/__init_cpp_exceptions.cpp"),
        ],
    },
    Rel('aaa',
        objects = [
            Object(Matching, "REL/aaa/aaa.s"),
            Object(Matching, "REL/aaa/aaa_00.s"),
            #Object(Matching, "REL/aaa/test.c"),
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
            #Object(Matching, "REL/eki/unit_sambo.s"), for some reason, this gets linked after unit_sambo_mummy and idk why
            Object(Matching, "REL/eki/unit_sambo_mummy.s"),
            Object(Matching, "REL/eki/unit_patatogemet.s"),
            Object(Matching, "REL/eki/unit_kurokumorn.s"),
            Object(Matching, "REL/eki/evt_lect_eki.s"),
        ]
    ),
    #should be equivalent, just some data shuffled around for some reason
    # Rel('end',
    #     objects = [
    #         Object(Matching, "REL/end/end.s"),
    #         Object(Matching, "REL/end/end_unknown.s"),
    #     ]
    # ),
    #should be equivalent, just some data shuffled around for some reason
    # Rel('gon',
    #     objects = [
    #         Object(Matching, "REL/gon/gon.s"),
    #         Object(Matching, "REL/gon/gon_00.s"),
    #         Object(Matching, "REL/gon/gon_01.s"),
    #         Object(Matching, "REL/gon/gon_02.s"),
    #         Object(Matching, "REL/gon/gon_03.s"),
    #         Object(Matching, "REL/gon/gon_04.s"),
    #         Object(Matching, "REL/gon/gon_05.s"),
    #         Object(Matching, "REL/gon/gon_06.s"),
    #         Object(Matching, "REL/gon/gon_07.s"),
    #         Object(Matching, "REL/gon/gon_08.s"),
    #         Object(Matching, "REL/gon/gon_09.s"),
    #         Object(Matching, "REL/gon/gon_10.s"),
    #         Object(Matching, "REL/gon/gon_11.s"),
    #         Object(Matching, "REL/gon/gon_12.s"),
    #         Object(Matching, "REL/gon/gon_bt00.s"),
    #         Object(Matching, "REL/gon/battle_database_gon.s"),
    #         Object(Matching, "REL/gon/unit_boss_gonbaba.s"),
    #         Object(Matching, "REL/gon/unit_honenoko.s"),
    #         Object(Matching, "REL/gon/unit_kuriboo.s"),
    #         Object(Matching, "REL/gon/unit_red_honenoko.s"),
    #         Object(Matching, "REL/gon/unit_nokonoko.s"),
    #         Object(Matching, "REL/gon/unit_patakuri.s"),
    #         Object(Matching, "REL/gon/unit_patapata.s"),
    #         Object(Matching, "REL/gon/unit_togekuri.s"),
    #         Object(Matching, "REL/gon/gon_13.s"),
    #         Object(Matching, "REL/gon/evt_lect_gon.s"),
    #     ]
    # ),
    # Rel('gor',
    #     objects = [
    #         Object(Matching, "REL/gor/gor.s"),
    #         Object(Matching, "REL/gor/gor_00.s"),
    #         Object(Matching, "REL/gor/gor_01.s"),
    #         Object(Matching, "REL/gor/gor_02.s"),
    #         Object(Matching, "REL/gor/gor_03.s"),
    #         Object(Matching, "REL/gor/gor_04.s"),
    #         Object(Matching, "REL/gor/gor_door.s"),
    #         Object(Matching, "REL/gor/evt_keijiban.s"),
    #         Object(Matching, "REL/gor/battle_database_gor.s"),
    #         Object(Matching, "REL/gor/unit_kuriboo.s"),
    #         Object(Matching, "REL/gor/unit_monban.s"),
    #         Object(Matching, "REL/gor/unit_gundan_zako.s"),
    #         Object(Matching, "REL/gor/unit_boss_kanbu1.s"),
    #         Object(Matching, "REL/gor/evt_yuuranking.s"),
    #         Object(Matching, "REL/gor/evt_goryuugijo.s"),
    #         Object(Matching, "REL/gor/gor_irai.s"),
    #         Object(Matching, "REL/gor/gor_10.s"),
    #         Object(Matching, "REL/gor/unit_npc_christine.s"),
    #         Object(Matching, "REL/gor/unit_lecture_christine.s"),
    #         Object(Matching, "REL/gor/unit_lecture_frankli.s"),
    #         Object(Matching, "REL/gor/unit_lecture_frankli_sac.s"),
    #         Object(Matching, "REL/gor/evt_lect_gor.s"),
    #         Object(Matching, "REL/gor/gor_12.s"),
    #         Object(Matching, "REL/gor/gor_11.s"),
    #     ]
    # ),
    # Rel('gra',
    #     objects = [
    #         Object(Matching, "REL/gra/gra_00.s"),
    #         Object(Matching, "REL/gra/gra_01.s"),
    #         Object(Matching, "REL/gra/gra_02.s"),
    #         Object(Matching, "REL/gra/gra_03.s"),
    #         Object(Matching, "REL/gra/gra_04.s"),
    #         Object(Matching, "REL/gra/gra_05.s"),
    #         Object(Matching, "REL/gra/gra_06.s"),
    #         Object(Matching, "REL/gra/gra.s"),
    #         Object(Matching, "REL/gra/evt_kagemario.s"),
    #         Object(Matching, "REL/gra/evt_iwamove.s"),
    #         Object(Matching, "REL/gra/battle_database_gra.s"),
    #         Object(Matching, "REL/gra/unit_kuriboo.s"),
    #         Object(Matching, "REL/gra/unit_faker_mario_gra.s"),
    #         Object(Matching, "REL/gra/unit_hyper_kuriboo.s"),
    #         Object(Matching, "REL/gra/unit_hyper_patakuri.s"),
    #         Object(Matching, "REL/gra/unit_hyper_togekuri.s"),
    #         Object(Matching, "REL/gra/unit_hyper_sinemon.s"),
    #         Object(Matching, "REL/gra/unit_pansy.s"),
    #         Object(Matching, "REL/gra/unit_twinkling_pansy.s"),
    #     ]
    # ),
    # Rel('hei',
    #     objects = [
    #         Object(Matching, "REL/hei/hei.s"),
    #         Object(Matching, "REL/hei/hei_00.s"),
    #         Object(Matching, "REL/hei/hei_01.s"),
    #         Object(Matching, "REL/hei/hei_02.s"),
    #         Object(Matching, "REL/hei/hei_03.s"),
    #         Object(Matching, "REL/hei/hei_04.s"),
    #         Object(Matching, "REL/hei/hei_05.s"),
    #         Object(Matching, "REL/hei/hei_06.s"),
    #         Object(Matching, "REL/hei/hei_07.s"),
    #         Object(Matching, "REL/hei/hei_08.s"),
    #         Object(Matching, "REL/hei/hei_09.s"),
    #         Object(Matching, "REL/hei/hei_10.s"),
    #         Object(Matching, "REL/hei/hei_11.s"),
    #         Object(Matching, "REL/hei/hei_12.s"),
    #         Object(Matching, "REL/hei/hei_13.s"),
    #         Object(Matching, "REL/hei/hei_bt00.s"),
    #         Object(Matching, "REL/hei/battle_database_hei.s"),
    #         Object(Matching, "REL/hei/unit_chorobon.s"),
    #         Object(Matching, "REL/hei/unit_chorobon_gundan.s"),
    #         Object(Matching, "REL/hei/unit_gold_chorobon.s"),
    #         Object(Matching, "REL/hei/unit_kuriboo.s"),
    #         Object(Matching, "REL/hei/unit_nokonoko.s"),
    #         Object(Matching, "REL/hei/unit_patakuri.s"),
    #         Object(Matching, "REL/hei/unit_patapata.s"),
    #         Object(Matching, "REL/hei/unit_togekuri.s"),
    #         Object(Matching, "REL/hei/unit_sinemon.s"),
    #         Object(Matching, "REL/hei/unit_sinnosuke.s"),
    #         Object(Matching, "REL/hei/unit_togedaruma.s"),
    #         Object(Matching, "REL/hei/unit_monochrome_sinemon.s"),
    #         Object(Matching, "REL/hei/evt_lect_hei.s"),
    #     ]
    # ),
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
