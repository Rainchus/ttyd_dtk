import csv
import os

rel_path = "config/rel/"
dol_path = "config/dol/"
katakana_space = "　"

substring_list_to_omit = ["ptrarr", "savefpr", "savegpr", "restfpr", "restgpr", "savefpr"]
substring_list_to_local = [
"color_rotation_data", "size16x16_tex32x32_vtx",
"negone_one$374", "one_negone$373", "negone_one$360", "one_negone$359", "scale_data",
"work", "wp", "_sort", "zFill", "_callback_tpl", "attack_audience_event", "init_event",
"battle_entry_event", "damage_event", "_callback", "_wp", "actionCommandDisp", "star_stone_appear",
"size48x48_tex32x32_vtx", "size64x64_tex64x64_vtx", "defence", "defence_attr", "regist", "attack_event",
"wait_event", "party_win_reaction", "data_table", "party_win_reaction", "flyMain", "angleABf", "size32x32_tex32x32_vtx",
"size8x8_tex22x22_vtx", "_data", "compare", "_get_mario_hammer_lv", "main_dl", "evt_shake", "speed_data",
"__makeTechMenuFunc", "__makeTechMenuFunc", 'effIceDisp', 'effIceMain', 'size10x10_tex32x32_vtx', 'none_key', 'scale_dt', 'parts', 'entryToPath', 'sound_evt', 'window_desc', 'ResetFunctionInfo', 'ResetFunctionInfo', 'scale_dt', 'quake_evt', 'OnReset', 'WriteCallback', 'EraseCallback', 'get_ptr', 'main_star', '_init_param', 'effBombDisp', 'effBombMain', 'gRecvBuf', 'gRecvCB', 'Type', 'kaiten$412', 'mario_status_point_table', 'size16x16_tex64x64_vtx', 'parts', 'scale_data2', 'marioJumpStandData', 'quake_evt', 'main_evt', 'angleABTBL', 'seq_data', 'vx_data', 'anim_data_table', 'anime_data', 'size12x12_tex64x64_vtx', 'size16x16_tex64x64_vtx', 'sintbl', 'offset_tbl', 'parts', 'tex_us', 'tex_shadow_us', 'tex_lang5', 'tex_shadow_lang5', 'texid_tbl', 'parts', 'phase_event', 'sound_evt', 'AlarmHandler', 'OnReset', 'pose_table', 'a_data', 'y_data', 'effKemuri2Disp', 'size32x64_tex32x64_vtx', 'WriteCallback', 'EraseCallback', 'AlarmHandler', '_ac_disp_init', 'scale_dt', 'scale_dt2', 'color_tbl', 'col_tbl', 'next', 'stg_thruhammer_v', 'effKemuri2Main', 'get_ptr', 'wait_game_end', 'start_game', 'disp_3D_alpha', 'disp_3D', 'disp_2D', 'main_star', 'main_base', 'pressStartGX', 'colr', 'colg', 'colb', 'rendermodeFunc', 'callback', 'weapon', 'lens$301', 'texid_tbl', 'get_ptr', 'wait_game_end', 'start_game', 'disp_3D_alpha', 'disp_3D', 'disp_2D', 'main_star', 'main_base', 'star_stone_attack', 'tex_jp', 'tex_us', 'tex_lang3', 'tex_lang4', 'tex_lang6', '_power_table', '_check_guard_koura', 'quake_bgmode_evt', 'max_seq_num', 'a_data2', 'tex_shadow_lang3', 'tex_shadow_lang4', 'tex_lang6', 'tex_shadow_lang6', 'size8x8_tex32x32_vtx', 'kmr_a_1_v', 'stg__s_v', 'nice_event', 'msg_tbl', 'nice_event', 'party_id_table', 'party_icon_table', 'party_labelname_table', 'mario_status_icon_table', 'mario_status_name_table', 'mario_status_henka_table', 'gIsInitialized', 'BootInfo', 'LastState', 'size8x8_tex32x32_vtx', 'size64x64_tex32x32_vtx', 'size16x16_tex16x16_vtx', 'set_weapon', 'parse_format', 'Callback', 'msg_tbl', 'bom_dir', 'bom_spd', 'dead_event'
]

if not os.path.exists(rel_path):
    os.makedirs(rel_path)
    #print(f"Created directory: {rel_path}")

if not os.path.exists(dol_path):
    os.makedirs(dol_path)
    #print(f"Created directory: {dol_path}")

print("Writing yml to config/symbols.yml...")

with open('tools/us_symbols.csv', 'r') as csvfile:
    reader = csv.DictReader(csvfile)
    encountered_namespaces = set()
    symbol_counts = {}
    prevArea = "_main"

    with open('config/dol/dol_symbols.txt', 'w') as outputfile:
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

            if area == "_main":
                scope_string = "scope:global"
            else:
                scope_string = "scope:local"

            section_name = row['sec_name']
            ram_addr = row['ram_addr'][:8] #some ram_addr have multiple entries, just grab the first

            if row['size']:
                size_string = " size:0x" + row['size'].lstrip('0')
            else:
                size_string = ""

            if area != prevArea:
                outputfile.close() #close previous file, then open new area file
                outputfile = open(f'config/rel/{area}_symbols.txt', 'w')
                prevArea = area

            for substring in substring_list_to_local:
                if substring == name:
                    scope_string = "scope:local"
                    break

            if row['sec_type'] == "text":
                outputfile.write(f"{name} = {section_name}:0x{ram_addr}; //type:function{size_string} {scope_string}\n")
            else:
                outputfile.write(f"{name} = {section_name}:0x{ram_addr}; //type:object{size_string} {scope_string}\n")

outputfile.close()

