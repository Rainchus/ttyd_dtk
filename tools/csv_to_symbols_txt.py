import csv
import os

rel_path = "config/G8MJ01/rels/"
dol_path = "config/G8MJ01/"
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

DOL_HASH = 'cf559d97fef1b3efb8788126250aee88f0491410'

rel_name_and_sha1sum = {
    'aaa':  '66d0e5d1d2e2901c5efd282ed4da5af6938f9461',
    'aji':  '56af821581e0503402b73f8932a30138a1cfbba8',
    'bom':  'c0846b6084fb85690b3a555ce471973fa7e0d7b1',
    'dig':  'f3b088b23a295fb09dadca1ebc256969dc1ea27c',
    'dmo':  '5bd9d6fae723924295807c144bfb20ff9dba64c3',
    'dou':  '9560fa09485f1e02e43a07834ec4b8af47547551',
    'eki':  'd5eb271be7483d4b01e8160fc46ed754dd1b58af',
    'end':  'f577f264bbdc10969ca25f7dbc84833c9564c1ed',
    'gon':  '4d51e63a545aa2d867887f4a113b073de948956c',
    'gor':  '3bf36642758ea61254b1e4d1b3d3fc89cecb30f4',
    'gra':  'ec1704b208654ec1f32a7023bad9f942de392e8a',
    'hei':  'a7e27f05a88a80af3e44de29e50ee0563d62ad17',
    'hom':  'f1a3590713ca8b06c73cd8fff8dab29bea9a3bfb',
    'jin':  'd8124f1e405053a6e27cf4c69df9990fef730c36',
    'jon':  '319e3737b003d87c2f124b83489ad65a93f03479',
    'kpa':  '9f5d731b152343afc51279df109a121fe7d9302a',
    'las':  'e15faef89101b32f4b7a337058c65b3aba910aa3',
    'moo':  '357e5b6724557e4eb76f5d70324c860217f6c81a',
    'mri':  '11d11bf8f75eee99fcc304c67fdd414d7f8c85fc',
    'muj':  '10b4f37b948497e48db829c42915e0b23a097fd5',
    'nok':  '54dd220f5ee9f3f496c33479ff474da062f635ee',
    'pik':  '80acba59e6d4d4aea017dbecfabbbddd6461115d',
    'qiz':  '0ba6626026cdc093c56ebb87a6995dcb2c2fa679',
    'rsh':  'cd279de6fa8d76af5640fab8fb37f9e95d365624',
    'sys':  '1243496d414bfde2482d2206121208858cecedea',
    'tik':  '39bad771291224ccd2b4e3b87361d3f2563d1643',
    'tou':  '0b45e0f8d204e8ee394eb33f52b59658b08ccb15',
    'tou2': 'dfb56dca8cc27fd24c0da1d812329b37383827c0',
    'usu':  '21dcf5444bf9d6f4af7f4ac53d9b9d6aaa4d80f9',
    'win':  '3f212ac788e4885ca68649cc7949d3488888e0b8',
    'yuu':  '10f5980e6c0e1d725cdf97e63d48477c45a5f628',
}

split_file_text = """Sections:
	.text       type:code align:4
	.ctors      type:rodata align:4
	.dtors      type:rodata align:4
	.rodata     type:rodata align:8"""

dol_sections = {
    ".init":   [0x80003100, 0x2444],
    ".text":   [0x800055E0, 0x2BB8EC],
    ".dtors":  [0x802C0F00, 0x4],
    ".rodata": [0x802C0F20, 0x41CE8],
    ".data":   [0x80302C20, 0xBEBBC],
    ".sdata":  [0x8040F260, 0x90F4],
    ".sdata2": [0x80419380, 0x9BDC],
    ".bss":    [0x803C17E0, 0x4DA70],
    ".sbss":   [0x80418360, 0x1018],
    ".sbss2":  [0x80422F60, 0x404],
}

if not os.path.exists(rel_path):
    os.makedirs(rel_path)

if not os.path.exists(dol_path):
    os.makedirs(dol_path)

def writeToYaml(shasum_file, symbols_yaml, splits_map):
    shasum_file.write(f"{rel_name_and_sha1sum.get(area, 'UNKNOWN')}  build/G8MJ01/{area}/{area}.rel\n")
    symbols_yaml.write(f"- object: orig/G8MJ01/files/rel/{area}.rel\n")
    symbols_yaml.write(f"  hash: {rel_name_and_sha1sum.get(area, 'UNKNOWN')}\n")
    symbols_yaml.write(f"  symbols: config/G8MJ01/rels/{area}/symbols.txt\n")
    symbols_yaml.write(f"  splits: config/G8MJ01/rels/{area}/splits.txt\n")
    for n_namespace in splits_map.get(prev_area, {}):
        namespace_conv = n_namespace.replace(".a", "").replace(" ", "/")
        splits_file.write(f"\n{namespace_conv}:\n")
        for n_section_name in splits_map[prev_area][n_namespace]:
            n_section = splits_map[prev_area][n_namespace][n_section_name]
            splits_file.write(f"\t{n_section_name} start:{n_section['start']} end:{n_section['end']}\n")

with open('tools/jp_symbols.csv', 'r', encoding='utf-8') as csvfile:
    reader = csv.DictReader(csvfile)
    encountered_namespaces = set()
    symbol_counts = {}
    prev_area = "_main"
    prevNamespace = None
    prevSection = None
    split_section_start = None
    split_section_end = None
    splits_map = {}

    shasum_file = open('orig/G8MJ01.sha1', 'w', encoding='utf-8')
    shasum_file.write(f"{DOL_HASH}  build/G8MJ01/main.dol\n")

    symbols_file = open('config/G8MJ01/dol_symbols.txt', 'w', encoding='utf-8')
    splits_file = open('config/G8MJ01/splits.txt', 'w', encoding='utf-8')
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

    symbols_yaml = open(f'config/G8MJ01/config.yml', 'w', encoding='utf-8')
    symbols_yaml.write(f"object: orig/G8MJ01/sys/main.dol\n")
    symbols_yaml.write(f"hash: {DOL_HASH}\n")
    symbols_yaml.write(f"symbols: config/G8MJ01/dol_symbols.txt\n")
    symbols_yaml.write(f"splits: config/G8MJ01/splits.txt\n")
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

        if skip_current_iteration:
            continue

        if katakana_space in name:
            name = name.replace(katakana_space, "_")

        words = name.split()
        name = ' '.join(words[:1])
        sec_offset = row['sec_offset'][:8]
        ram_addr = row['ram_addr'][:8]
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
                if 'end' not in section:
                    section['start'] = f"0x{split_section_start}"
                    end = int(addr_to_use, 16)
                    if split_section_end is not None and end <= split_section_end:
                        end = split_section_end
                    if prev_area == "_main" and prevSection in dol_sections:
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

        if area != prev_area:
            symbols_file.close()
            writeToYaml(shasum_file, symbols_yaml, splits_map)
            if area != "_main":
                splits_file.close()
                splits_file = open(f'config/G8MJ01/rels/{area}/splits.txt', 'w', encoding='utf-8')
                splits_file.write(f"{split_file_text}\n")
                if area == "mri":
                    splits_file.write(f"	.data       type:data align:32\n")
                else:
                    splits_file.write(f"	.data       type:data align:8\n")
                if area != "pik" and area != "qiz":
                    splits_file.write(f"	.bss        type:bss align:8\n")

            symbols_file = open(f'config/G8MJ01/rels/{area}/symbols.txt', 'w', encoding='utf-8')
            prev_area = area

        for substring in substring_list_to_local:
            if substring == name:
                scope_string = "scope:local"
                break

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