import csv
import os
import shutil

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
	.text       type:code align:32
	.ctors      type:rodata align:32
	.dtors      type:rodata align:32
	.rodata     type:rodata align:32
	.data       type:data align:32"""

if not os.path.exists(rel_path):
    os.makedirs(rel_path)
    #print(f"Created directory: {rel_path}")

if not os.path.exists(dol_path):
    os.makedirs(dol_path)
    #print(f"Created directory: {dol_path}")

# Define the source and destination directories
source_directory = 'rels/bin'
destination_directory = 'config/G8ME01/rels'

# Ensure the destination directory exists
os.makedirs(destination_directory, exist_ok=True)

# Loop through all files in the source directory with the .rel extension
for filename in os.listdir(source_directory):
    if filename.endswith('.rel'):
        # Extract the name before the extension
        name_without_extension = os.path.splitext(filename)[0]
        
        # Create the destination folder if it doesn't exist
        destination_folder = os.path.join(destination_directory, name_without_extension)
        os.makedirs(destination_folder, exist_ok=True)
        
        # Copy the file to the destination folder
        source_path = os.path.join(source_directory, filename)
        destination_path = os.path.join(destination_folder, filename)
        shutil.copy2(source_path, destination_path)

with open('tools/us_symbols.csv', 'r') as csvfile:
    reader = csv.DictReader(csvfile)
    encountered_namespaces = set()
    symbol_counts = {}
    prevArea = "_main"

    with open('config/G8ME01/dol_symbols.txt', 'w') as outputfile:
        symbols_yaml = open(f'config/G8ME01/config.yml', 'w')
        symbols_yaml.write(f"object: config/G8ME01/main.dol\n")
        symbols_yaml.write(f"hash: bc62d5e4674d139fd50d6c05694b34f955e37039\n")
        symbols_yaml.write(f"symbols: config/G8ME01/dol_symbols.txt\n")
        symbols_yaml.write(f"splits: config/G8ME01/splits.txt\n\n")
        symbols_yaml.write(f"modules:\n")
        
        for row in reader:
            name = row['name']
            if not name:
                continue

            skip_current_iteration = False

            for substring in substring_list_to_omit:
                if substring in name:
                    #print(f"{name}")
                    skip_current_iteration = True
                    break

            if skip_current_iteration == True:
                continue

            if katakana_space in name: #remove spaces and replace with underscores
                name = name.replace(katakana_space, "_")
                
            area = row['area']

            words = name.split()  # Split the string by spaces
            name = ' '.join(words[:1])
            sec_offset = row['sec_offset'][:8]
            ram_addr = row['ram_addr'][:8] #some ram_addr have multiple entries, just grab the first
            addr_to_use = ""
            
            section_name = row['sec_name']

            if area == "_main":
                addr_to_use = ram_addr
            else:
                addr_to_use = sec_offset
            
            if addr_to_use is None or addr_to_use == '':
                continue

            if area == "_main":
                scope_string = "scope:global"
            else:
                if dol_only == False:
                    scope_string = "scope:local"
                    

            if row['size']:
                size_string = " size:0x" + row['size'].lstrip('0')
            else:
                size_string = ""
            #root, extension = os.path.splitext(filename)
            if area != prevArea:
                #temporary
                if area == "mri" or area == "end":
                    continue
                # #end of temporary
                outputfile.close() #close previous file, then open new area file
                if not os.path.exists(f"config/G8ME01/rels/{area}"):
                    os.makedirs(f"config/G8ME01/rels/{area}")
                symbols_yaml.write(f"- object: config/G8ME01/rels/{area}/{area}.rel\n")
                symbols_yaml.write(f"  hash: {rel_name_and_sha1sum.get(area, 'UNKNOWN')}\n")
                symbols_yaml.write(f"  symbols: config/G8ME01/rels/{area}/symbols.txt\n")
                symbols_yaml.write(f"  splits: config/G8ME01/rels/{area}/splits.txt\n")
                if area != "_main":
                    rel_split_file = open(f'config/G8ME01/rels/{area}/splits.txt', 'w')
                    rel_split_file.write(f"{split_file_text}\n")
                    if area != "pik":
                        rel_split_file.write(f"	.bss        type:bss align:32\n")
                    rel_split_file.close()

                outputfile = open(f'config/G8ME01/rels/{area}/symbols.txt', 'w')
                prevArea = area

            for substring in substring_list_to_local:
                if substring == name:
                    scope_string = "scope:local"
                    break

            if name == "_unresolved" or name == "_prolog" or name == "_epilog":
                scope_string = "scope:global"

            if row['sec_type'] == "text":
                outputfile.write(f"{name} = {section_name}:0x{addr_to_use}; //type:function{size_string} {scope_string}\n")
            else:
                outputfile.write(f"{name} = {section_name}:0x{addr_to_use}; //type:object{size_string} {scope_string}\n")

outputfile.close()

