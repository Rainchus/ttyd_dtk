import csv
import os

rel_path = "config/G8ME01/rels/"
dol_path = "config/G8ME01/"
katakana_space = "　"
dol_only = False

substring_list_to_omit = ["ptrarr", "savefpr", "savegpr", "restfpr", "restgpr", "savefpr"]
substring_list_to_local = [
    "color_rotation_data", "size16x16_tex32x32_vtx", "negone_one$374", "one_negone$373", "negone_one$360",
    "one_negone$359", "scale_data", "work", "wp", "_sort", "zFill", "_callback_tpl", "attack_audience_event",
    "init_event", "battle_entry_event", "damage_event", "_callback", "_wp", "actionCommandDisp",
    "star_stone_appear", "size48x48_tex32x32_vtx", "size64x64_tex64x64_vtx", "defence", "defence_attr", "regist",
    "attack_event", "wait_event", "party_win_reaction", "data_table", "flyMain", "angleABf",
    "size32x32_tex32x32_vtx", "size8x8_tex22x22_vtx", "_data", "compare", "_get_mario_hammer_lv", "main_dl",
    "evt_shake", "speed_data", "__makeTechMenuFunc", 'effIceDisp', 'effIceMain', 'size10x10_tex32x32_vtx',
    'none_key', 'scale_dt', 'parts', 'entryToPath', 'sound_evt', 'window_desc', 'ResetFunctionInfo', 'quake_evt',
    'OnReset', 'WriteCallback', 'EraseCallback', 'get_ptr', 'main_star', '_init_param', 'effBombDisp', 'effBombMain',
    'gRecvBuf', 'gRecvCB', 'Type', 'kaiten$412', 'mario_status_point_table', 'size16x16_tex64x64_vtx',
    'scale_data2', 'marioJumpStandData', 'main_evt', 'angleABTBL', 'seq_data', 'vx_data', 'anim_data_table',
    'anime_data', 'size12x12_tex64x64_vtx', 'sintbl', 'offset_tbl', 'tex_us', 'tex_shadow_us', 'tex_lang5',
    'tex_shadow_lang5', 'texid_tbl', 'phase_event', 'AlarmHandler', 'pose_table', 'a_data', 'y_data', 'effKemuri2Disp',
    'size32x64_tex32x64_vtx', '_ac_disp_init', 'scale_dt2', 'color_tbl', 'col_tbl', 'next', 'stg_thruhammer_v',
    'effKemuri2Main', 'wait_game_end', 'start_game', 'disp_3D_alpha', 'disp_3D', 'disp_2D', 'main_base',
    'pressStartGX', 'colr', 'colg', 'colb', 'rendermodeFunc', 'callback', 'weapon', 'lens$301', 'star_stone_attack',
    'tex_jp', 'tex_lang3', 'tex_lang4', 'tex_lang6', '_power_table', '_check_guard_koura', 'quake_bgmode_evt',
    'max_seq_num', 'a_data2', 'tex_shadow_lang3', 'tex_shadow_lang4', 'tex_shadow_lang6', 'size8x8_tex32x32_vtx',
    'kmr_a_1_v', 'stg__s_v', 'nice_event', 'msg_tbl', 'party_id_table', 'party_icon_table', 'party_labelname_table',
    'mario_status_icon_table', 'mario_status_name_table', 'mario_status_henka_table', 'gIsInitialized', 'BootInfo',
    'LastState', 'size64x64_tex32x32_vtx', 'size16x16_tex16x16_vtx', 'set_weapon', 'parse_format', 'Callback',
    'bom_dir', 'bom_spd', 'dead_event'
]

rel_name_and_sha1sum = {
    'moo': '6c64a522d758dc65b7d650de37ae9560dc68842b',
    'bom': 'dbf15e225a5421f331801a0c7a10f5d68316ef94',
    'tou': 'a6a696bf83c86647972e3181470dbe10e7fd8275',
    'tou2': 'bdb6a495734abaa1754de28db3c3dfb26459789f',
    'muj': 'fb12a2618040ebe3310184fed3dc0db3f6fcb54c',
    'las': 'b31c87418da3cdb214809610679619d9487f8191',
    'yuu': 'd1631fd60d0064d773098f46eeb787ddcff3aec6',
    'pik': 'f64f2fab00c5cbdb2d32d87cdde0a96ef08495dc',
    'jin': 'b6527aa781ec807a6e7f81893bd6863909986e77',
    'gor': '23b6de1981b4790548b7767d823bcea7e10e9765',
    'dmo': '4338a674a7073765d3b4a966d3efdd80e5a8fa27',
    'hei': '8c4278b5d815e5aed9c1f36c7e18b6922e6126ee',
    'hom': 'c32a360fc1badbf73905c4cdf8828531395f103d',
    'nok': '70a09f6f09772654391a86d41d2f3a47a8ec8060',
    'mri': 'fcb0bf6ec7be87ba959864c740203ef89184c15c',
    'end': '627a4744b7b20c534d10443c07dce6cc6567ddea',
    'usu': 'f7735563935f73dc34a2a591422ee36981a724a9',
    'gon': 'e17361b42bb4bc5a9d62c355975b773b98018368',
    'eki': 'a7e46734754529f5bc405ea12a5b2481fa8636b0',
    'sys': '0bacf3f0ddf7642615a8e5c3cf33940bb5ab71ca',
    'jon': '5000fab55292914fe8999e36ab9ee23c882f4c87',
    'dou': '2bb25ac6dce0fefe34a8233a960b8da7456ced11',
    'aaa': 'f5b44ff83064e9bf61c4122c3715a68161da8ad0',
    'rsh': 'dacc04c6d778813e5ce42db0ad1111c48894c0a1',
    'kpa': 'ed7b01c390f0f1d559463c31a4e0f7da2d994435',
    'aji': 'ce37fe134c24261fe870a9ef4389040ca6ea5bc8',
    'gra': 'a6c1de813d9e3a2b8d03a47b2b5417c3cd8cb427',
    'tik': '2721d98eff7db5a138afeefd312b70a60ec76a9e',
    'win': '27e8bd9b2286c73c1cf2555521b52b4c9e0fba49'
}

split_file_text = """Sections:
	.text       type:code align:4
	.ctors      type:rodata align:4
	.dtors      type:rodata align:4
	.rodata     type:rodata align:8"""

#               Name | Address    | Size       | File Off
#              .init | 0x80003100 | 0x24D0     | 0x100
#              .text | 0x800055E0 | 0x2B9B40   | 0x25E0
#             .ctors | 0x802BF120 | 0x4        | 0x2BC120
#             .dtors | 0x802BF140 | 0x8        | 0x2BC140
#            .rodata | 0x802BF160 | 0x45072    | 0x2BC160
#              .data | 0x803041E0 | 0xC117B    | 0x3011E0
#               .bss | 0x803C5360 | 0x4FBB0    | 0x0
#             .sdata | 0x80414F20 | 0x964C     | 0x3C2360
#              .sbss | 0x8041E580 | 0xEA4      | 0x0
#            .sdata2 | 0x8041F440 | 0xA0A4     | 0x3CB9C0
#              .sbss2 | 0x80429500 | 0x40C      | 0x0
dol_sections = {
    ".init": [0x80003100, 0x24D0],
    ".text": [0x800055E0, 0x2B9B40],
    ".ctors": [0x802BF120, 0x4],
    ".dtors": [0x802BF140, 0x8],
    ".rodata": [0x802BF160, 0x45072],
    ".data": [0x803041E0, 0xC117B],
    ".bss": [0x803C5360, 0x4FBB0],
    ".sdata": [0x80414F20, 0x964C],
    ".sbss": [0x8041E580, 0xEA4],
    ".sdata2": [0x8041F440, 0xA0A4],
    ".sbss2": [0x80429500, 0x40C]
}

if not os.path.exists(rel_path):
    os.makedirs(rel_path)

if not os.path.exists(dol_path):
    os.makedirs(dol_path)

def writeToYaml(shasum_file, symbols_yaml, splits_map):
    shasum_file.write(f"{rel_name_and_sha1sum.get(area, 'UNKNOWN')}  build/G8ME01/{area}/{area}.rel\n")
    symbols_yaml.write(f"- object: orig/G8ME01/files/rel/{area}.rel\n")
    symbols_yaml.write(f"  hash: {rel_name_and_sha1sum.get(area, 'UNKNOWN')}\n")
    symbols_yaml.write(f"  symbols: config/G8ME01/rels/{area}/symbols.txt\n")
    symbols_yaml.write(f"  splits: config/G8ME01/rels/{area}/splits.txt\n")
    for n_namespace in splits_map.get(prev_area, {}):
        namespace_conv = n_namespace.replace(".a", "").replace(" ", "/")
        splits_file.write(f"\n{namespace_conv}:\n")
        for n_section_name in splits_map[prev_area][n_namespace]:
            n_section = splits_map[prev_area][n_namespace][n_section_name]
            splits_file.write(f"\t{n_section_name} start:{n_section['start']} end:{n_section['end']}\n")

with open('tools/us_symbols.csv', 'r', encoding='utf-8') as csvfile:
    reader = csv.DictReader(csvfile)
    encountered_namespaces = set()
    symbol_counts = {}
    prev_area = "_main"
    prevNamespace = None
    prevSection = None
    split_section_start = None
    split_section_end = None
    splits_map = {}

    shasum_file = open('orig/G8ME01.sha1', 'w', encoding='utf-8')
    shasum_file.write(f"bc62d5e4674d139fd50d6c05694b34f955e37039  build/G8ME01/main.dol\n")

    symbols_file = open('config/G8ME01/dol_symbols.txt', 'w', encoding='utf-8')
    splits_file = open('config/G8ME01/splits.txt', 'w', encoding='utf-8')
    splits_file.write("""Sections:
	.init       type:code
	.text       type:code
	.ctors      type:rodata
	.dtors      type:rodata
	.rodata     type:rodata
	.data       type:data
	.bss        type:bss
	.sdata      type:data
	.sbss       type:bss
	.sdata2     type:rodata
	.sbss2      type:bss
""")

    symbols_yaml = open(f'config/G8ME01/config.yml', 'w', encoding='utf-8')
    symbols_yaml.write(f"object: orig/G8ME01/sys/main.dol\n")
    symbols_yaml.write(f"hash: bc62d5e4674d139fd50d6c05694b34f955e37039\n")
    symbols_yaml.write(f"symbols: config/G8ME01/dol_symbols.txt\n")
    symbols_yaml.write(f"splits: config/G8ME01/splits.txt\n")
    symbols_yaml.write(f"mw_comment_version: 10 # GC 2.6 linker\n\n")
    symbols_yaml.write(f"modules:\n")
    
    for row in reader:
        name = row['name']
        area = row['area']

        if not name:
            continue

        skip_current_iteration = False

        for substring in substring_list_to_omit:
            if substring in name:
                skip_current_iteration = True
                break

        if skip_current_iteration == True:
            continue

        if katakana_space in name: #remove spaces and replace with underscores
            name = name.replace(katakana_space, "_")
            
        

        words = name.split()  # Split the string by spaces
        name = ' '.join(words[:1])
        sec_offset = row['sec_offset'][:8]
        ram_addr = row['ram_addr'][:8] #some ram_addr have multiple entries, just grab the first
        addr_to_use = ""

        section_name = row['sec_name']
        namespace = row['namespace']

        if area == "_main":
            addr_to_use = ram_addr
        else:
            addr_to_use = sec_offset
        
        if addr_to_use is None or addr_to_use == '':
            continue

        scope_string = "scope:global"
        if area != "_main":
            scope_string = "scope:local"

        if row['size']:
            size_string = " size:0x" + row['size'].lstrip('0')
        else:
            size_string = ""

        if namespace != prevNamespace or section_name != prevSection:
            if prevNamespace is not None:
                splits = splits_map.get(prev_area, {})
                sections = splits.get(prevNamespace, {})
                section = sections.get(prevSection, {})
                if 'end' in section:
                    print(f"{prev_area} {prevNamespace} {prevSection} is duplicated")
                    exit(1)
                section['start'] = f"0x{split_section_start}"
                end = addr_to_use
                if split_section_end is not None and int(addr_to_use, 16) <= split_section_end:
                    end = split_section_end
                else:
                    end = int(addr_to_use, 16)
                if prev_area == "_main":
                    section_end = dol_sections[prevSection][0] + dol_sections[prevSection][1]
                    if end > section_end:
                        end = section_end
                section['end'] = hex(end)
                sections[prevSection] = section
                splits[prevNamespace] = sections
                splits_map[prev_area] = splits

            prevNamespace = namespace
            prevSection = section_name
            split_section_start = addr_to_use
        if row['size']:
            split_section_end = int(addr_to_use, 16) + int(row['size'], 16)

        #check if a new symbols file needs to be created
        #if so, write data pertaining to sections of the file
        if area != prev_area:
            symbols_file.close()
            writeToYaml(shasum_file, symbols_yaml, splits_map)
            if area != "_main":
                splits_file.close()
                splits_file = open(f'config/G8ME01/rels/{area}/splits.txt', 'w', encoding='utf-8')
                splits_file.write(f"{split_file_text}\n")
                if area == "mri":
                    splits_file.write(f"	.data       type:data align:32\n")
                else:
                    splits_file.write(f"	.data       type:data align:8\n")
                if area != "pik":
                    splits_file.write(f"	.bss        type:bss align:8\n")

            symbols_file = open(f'config/G8ME01/rels/{area}/symbols.txt', 'w', encoding='utf-8')
            prev_area = area

        #strings found multiple times in the dol should be scoped to local
        for substring in substring_list_to_local:
            if substring == name:
                scope_string = "scope:local"
                break

        #special rel sections that need to be global
        if name == "_unresolved" or name == "_prolog" or name == "_epilog":
            scope_string = "scope:global"

        if name == 'gTRKInterruptVectorTable':
            sym_type = 'label'
        elif row['sec_type'] == "text":
            sym_type = 'function'
        else:
            sym_type = 'object'
        symbols_file.write(f"{name} = {section_name}:0x{addr_to_use}; // type:{sym_type}{size_string} {scope_string}\n")
    
    for namespace in splits_map.get(prev_area, {}):
        splits_file.write(f"\n{namespace}:\n")
        for section_name in splits_map[prev_area][namespace]:
            section = splits_map[prev_area][namespace][section_name]
            splits_file.write(f"\t{section_name} start:{section['start']} end:{section['end']}\n")

    symbols_file.close()
    splits_file.close()
    shasum_file.close()

