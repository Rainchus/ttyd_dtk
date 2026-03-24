#!/usr/bin/env python3
"""
Paper Mario: The Thousand-Year Door — Dialogue Script Editor
Cross-platform GUI (Windows & Linux). Requires Python 3.8+ with tkinter.

Usage:
    python pmttyd_text_editor.py
    python pmttyd_text_editor.py path/to/script.txt
    
    ex: python ./tools/pmttyd_text_editor.py ./orig/G8ME01/files/msg/US/aaa_00.txt
"""

import tkinter as tk
from tkinter import filedialog, messagebox, font as tkfont
import re
import os
import json
from copy import deepcopy
from dataclasses import dataclass, field
from typing import List, Optional, Tuple


# ════════════════════════════════════════════════════
#  DATA MODEL & PARSER
# ════════════════════════════════════════════════════

# Matches any <tag> including <k>, <p>, <wait 250>, <housou>, etc.
TAG_PATTERN = re.compile(r'(<[^>]+>)')

# Matches label identifiers like pro_00, ep_31, ep_47, etc.
# Must contain at least one underscore followed by digits.
LABEL_RE = re.compile(r'\b([a-zA-Z][a-zA-Z0-9_]*_\d+)\b')


@dataclass
class Token:
    kind: str   # 'text' or 'tag'
    value: str


@dataclass
class DialogueBlock:
    label: str
    tokens: List[Token] = field(default_factory=list)

    def raw_text(self) -> str:
        return ''.join(t.value for t in self.tokens)

    def display_text(self) -> str:
        """Plain text with all tags stripped."""
        return ''.join(t.value for t in self.tokens if t.kind == 'text').strip()

    def tag_counts(self) -> dict:
        tags = [t.value for t in self.tokens if t.kind == 'tag']
        return {
            'k':      tags.count('<k>'),
            'p':      tags.count('<p>'),
            'wait':   sum(1 for t in tags if t.startswith('<wait')),
            'housou': tags.count('<housou>'),
        }


def _tokenise(text: str) -> List[Token]:
    """Split a raw string into Tag and Text tokens."""
    tokens = []
    for part in TAG_PATTERN.split(text):
        if not part:
            continue
        tokens.append(Token('tag' if TAG_PATTERN.fullmatch(part) else 'text', part))
    return tokens


def parse_file(raw: str) -> List[DialogueBlock]:
    """
    Parse a PMTTYD script file into DialogueBlock objects.

    The real on-disk format uses null bytes (\\x00) as separators between
    a <k> tag and the next block's label.  Labels also appear:
      - At the very start of the file
      - On their own line (possibly preceded by \\x00 / spaces)

    We scan for every LABEL_RE match and accept it when:
      - Nothing (or only whitespace/nulls) precedes it in the file, OR
      - The preceding non-whitespace/null character is '>' (end of a tag), OR
      - Everything before it on the current line is whitespace/nulls
        (i.e. the label is the first real token on its line).
    """
    candidates: List[Tuple[int, int, str]] = []

    for m in LABEL_RE.finditer(raw):
        start = m.start()
        prefix = raw[:start]

        # Strip nulls + whitespace from right end of prefix
        prefix_clean = prefix.rstrip('\x00 \t\r\n')

        # What's on the current line before this label?
        line_start = prefix.rfind('\n')
        before_on_line = prefix[line_start + 1:] if line_start >= 0 else prefix
        before_clean = before_on_line.strip('\x00 \t')

        valid = (
            prefix_clean == ''                      # start of file
            or prefix_clean.endswith('>')           # right after a tag (nulls stripped)
            or before_clean == ''                   # first token on line
            or TAG_PATTERN.fullmatch(before_clean)  # entire preceding content is one tag
        )
        if valid:
            candidates.append((start, m.end(), m.group(1)))

    if not candidates:
        # No labels found — wrap the whole file as one block
        return [DialogueBlock(label='block_00', tokens=_tokenise(raw))]

    blocks: List[DialogueBlock] = []
    for i, (lstart, lend, label) in enumerate(candidates):
        body_end = candidates[i + 1][0] if i + 1 < len(candidates) else len(raw)
        body = raw[lend:body_end]

        # Strip exactly one leading and one trailing null;
        # blocks_to_text owns all null separators.
        if body.startswith('\x00'):
            body = body[1:]
        if body.endswith('\x00'):
            body = body[:-1]
        blocks.append(DialogueBlock(label=label, tokens=_tokenise(body)))

    return blocks


def blocks_to_text(blocks: List[DialogueBlock]) -> str:
    """
    Reconstruct the file with exact null-byte structure:
      block 0:  label\x00body
      block N:  \x00label\x00body
      EOF:      extra trailing \x00
    """
    parts = []
    for i, b in enumerate(blocks):
        prefix = '' if i == 0 else '\x00'
        parts.append(prefix + b.label + '\x00' + b.raw_text())
    return ''.join(parts) + '\x00'


# ════════════════════════════════════════════════════
#  THEME
# ════════════════════════════════════════════════════

T = {
    'bg':        '#2b2b2b',
    'panel':     '#333333',
    'sidebar':   '#2f2f2f',
    'accent':    '#d4a843',
    'blue':      '#6ab0f5',
    'purple':    '#b07fd4',
    'text':      '#d8d0c0',
    'dim':       '#888880',
    'k_col':     '#d46a6a',   # <k>
    'p_col':     '#b07fd4',   # <p>
    'wait_col':  '#8fc06a',   # <wait>
    'hou_col':   '#e0904a',   # <housou>
    'sel_col':   '#6ab0f5',   # <select>
    'shake_col': '#d4a843',   # <shake> / </shake>
    'fmt_col':   '#a8c8a8',   # <small> <scale> <col> <dynamic> <s> <S>
    'icon_col':  '#c8a8d4',   # <icon>
    'ctrl_col':  '#f5a0a0',   # <o> <keyxon> <ITEM> <NUM> <dkey>
    'sel':       '#484840',
    'entry':     '#383838',
    'border':    '#505050',
    'ok':        '#6abf6a',
    'err':       '#d46a6a',
}


# ════════════════════════════════════════════════════
#  MAIN APPLICATION
# ════════════════════════════════════════════════════

class App(tk.Tk):
    def __init__(self):
        super().__init__()
        self.title('PMTTYD Dialogue Editor')
        self.geometry('1280x780')
        self.minsize(900, 600)
        self.configure(bg=T['bg'])

        self.blocks: List[DialogueBlock] = []
        self.current_index: Optional[int] = None
        self.file_path: Optional[str] = None
        self.modified = False
        self._search_results: List[int] = []
        self._search_idx: int = -1
        self._suppress_label_trace = False

        self._fonts()
        self._ui()
        self._binds()
        self.protocol('WM_DELETE_WINDOW', self._on_close)

    # ─── fonts ────────────────────────────────────
    def _fonts(self):
        self.fn_mono  = tkfont.Font(family='Courier New', size=11)
        self.fn_bold  = tkfont.Font(family='Courier New', size=11, weight='bold')
        self.fn_label = tkfont.Font(family='Courier New', size=10, weight='bold')
        self.fn_ui    = tkfont.Font(family='TkDefaultFont', size=10)
        self.fn_small = tkfont.Font(family='TkDefaultFont', size=9)

    # ─── build UI ─────────────────────────────────
    def _ui(self):
        self._menu()
        self._toolbar()
        pane = tk.PanedWindow(self, orient=tk.HORIZONTAL,
                              bg=T['bg'], sashwidth=5,
                              sashrelief=tk.FLAT, sashpad=2)
        pane.pack(fill=tk.BOTH, expand=True)
        self._sidebar(pane)
        self._editor(pane)
        self._statusbar()

    # ─── menu ─────────────────────────────────────
    def _menu(self):
        def mkm(parent):
            return tk.Menu(parent, bg=T['panel'], fg=T['text'],
                           activebackground=T['sel'], activeforeground=T['accent'],
                           relief=tk.FLAT, tearoff=False)

        mb = mkm(self)
        self.config(menu=mb)

        fm = mkm(mb)
        mb.add_cascade(label='File', menu=fm)
        fm.add_command(label='Open...        Ctrl+O',    command=self.open_file)
        fm.add_command(label='Save           Ctrl+S',    command=self.save_file)
        fm.add_command(label='Save As...  Ctrl+Shift+S', command=self.save_as)
        fm.add_separator()
        fm.add_command(label='Export JSON...', command=self.export_json)
        fm.add_separator()
        fm.add_command(label='Quit', command=self._on_close)

        em = mkm(mb)
        mb.add_cascade(label='Edit', menu=em)
        em.add_command(label='Add Block',       command=self.add_block)
        em.add_command(label='Duplicate Block', command=self.duplicate_block)
        em.add_command(label='Delete Block',    command=self.delete_block)
        em.add_separator()
        em.add_command(label='Move Up',   command=self.move_up)
        em.add_command(label='Move Down', command=self.move_down)
        em.add_separator()
        em.add_command(label='Insert <k>',            command=lambda: self._ins('<k>'))
        em.add_command(label='Insert <p>',            command=lambda: self._ins('<p>'))
        em.add_command(label='Insert <wait...>',      command=self._wait_dialog)
        em.add_command(label='Insert <housou>',       command=lambda: self._ins('<housou>'))
        em.add_command(label='Insert <o> (choice)',   command=lambda: self._ins('<o>'))
        em.add_command(label='Insert <select...>',    command=self._select_dialog)
        em.add_command(label='Insert <shake>...</shake>', command=self._ins_wrap('<shake>', '</shake>'))
        em.add_command(label='Insert <small>',        command=lambda: self._ins('<small>'))
        em.add_command(label='Insert <scale...>',     command=self._scale_dialog)
        em.add_command(label='Insert <col...>...</col>', command=self._col_dialog)
        em.add_command(label='Insert <icon...>',      command=self._icon_dialog)
        em.add_command(label='Insert <keyxon>',       command=lambda: self._ins('<keyxon>'))
        em.add_command(label='Insert <dynamic...>',   command=self._dynamic_dialog)

        vm = mkm(mb)
        mb.add_cascade(label='View', menu=vm)
        vm.add_command(label='Preview Dialogue', command=self.open_preview)
        vm.add_command(label='Raw File View',    command=self.open_raw)

    # ─── toolbar ──────────────────────────────────
    def _toolbar(self):
        tb = tk.Frame(self, bg=T['panel'], height=44, pady=4)
        tb.pack(fill=tk.X, side=tk.TOP)
        tb.pack_propagate(False)

        def btn(text, cmd, fg=None):
            b = tk.Button(tb, text=text, command=cmd,
                          bg=T['entry'], fg=fg or T['accent'],
                          activebackground=T['sel'], activeforeground=fg or T['accent'],
                          relief=tk.FLAT, cursor='hand2',
                          font=self.fn_small, padx=8, pady=3, borderwidth=0)
            b.pack(side=tk.LEFT, padx=3)
            return b

        def sep():
            tk.Frame(tb, bg=T['border'], width=1).pack(side=tk.LEFT, fill=tk.Y, padx=6)

        btn('Open',      self.open_file)
        btn('Save',      self.save_file, T['ok'])
        sep()
        btn('+ Block',     self.add_block,       T['blue'])
        btn('Duplicate',   self.duplicate_block, T['blue'])
        btn('Delete',      self.delete_block,    T['err'])
        sep()
        btn('Up',    self.move_up)
        btn('Down',  self.move_down)
        sep()
        btn('<k>',      lambda: self._ins('<k>'),      T['k_col'])
        btn('<p>',      lambda: self._ins('<p>'),       T['p_col'])
        btn('<wait>',   self._wait_dialog,              T['wait_col'])
        btn('<housou>', lambda: self._ins('<housou>'),  T['hou_col'])
        btn('<o>',      lambda: self._ins('<o>'),       T['sel_col'])
        btn('<select>', self._select_dialog,            T['sel_col'])
        btn('<shake>',  lambda: self._ins_wrap('<shake>', '</shake>')(), T['shake_col'])
        btn('<icon>',   self._icon_dialog,              T['icon_col'])
        sep()
        btn('Preview', self.open_preview, T['purple'])
        btn('Raw',     self.open_raw,     T['dim'])
        sep()

        tk.Label(tb, text='Search:', bg=T['panel'], fg=T['dim'],
                 font=self.fn_small).pack(side=tk.LEFT)
        self._sv = tk.StringVar()
        self._sv.trace_add('write', lambda *_: self._search_do())
        tk.Entry(tb, textvariable=self._sv, width=18,
                 bg=T['entry'], fg=T['text'], insertbackground=T['accent'],
                 relief=tk.FLAT, font=self.fn_small).pack(side=tk.LEFT, padx=2)
        btn('Prev', self._search_prev, T['dim'])
        btn('Next', self._search_next, T['dim'])
        self._search_lbl = tk.Label(tb, text='', bg=T['panel'],
                                    fg=T['dim'], font=self.fn_small)
        self._search_lbl.pack(side=tk.LEFT, padx=4)

    # ─── sidebar ──────────────────────────────────
    def _sidebar(self, pane):
        sb = tk.Frame(pane, bg=T['sidebar'], width=240)
        pane.add(sb, minsize=160)

        hdr = tk.Frame(sb, bg=T['panel'])
        hdr.pack(fill=tk.X)
        tk.Label(hdr, text='DIALOGUE BLOCKS', bg=T['panel'], fg=T['accent'],
                 font=self.fn_label, padx=10, pady=6).pack(side=tk.LEFT)
        self._cnt_lbl = tk.Label(hdr, text='0', bg=T['panel'],
                                 fg=T['dim'], font=self.fn_small)
        self._cnt_lbl.pack(side=tk.RIGHT, padx=8)

        lf = tk.Frame(sb, bg=T['sidebar'])
        lf.pack(fill=tk.BOTH, expand=True)
        vsb = tk.Scrollbar(lf, bg=T['panel'], troughcolor=T['bg'])
        vsb.pack(side=tk.RIGHT, fill=tk.Y)
        self.listbox = tk.Listbox(lf, bg=T['sidebar'], fg=T['text'],
                                  selectbackground=T['sel'], selectforeground=T['accent'],
                                  font=self.fn_label, relief=tk.FLAT, borderwidth=0,
                                  highlightthickness=0, activestyle='none',
                                  yscrollcommand=vsb.set)
        self.listbox.pack(side=tk.LEFT, fill=tk.BOTH, expand=True)
        vsb.config(command=self.listbox.yview)
        self.listbox.bind('<<ListboxSelect>>', self._on_select)

        self._stats_v = tk.StringVar(value='No file open')
        tk.Label(sb, textvariable=self._stats_v, bg=T['panel'], fg=T['dim'],
                 font=self.fn_small, wraplength=220, justify=tk.LEFT,
                 padx=8, pady=6).pack(fill=tk.X, side=tk.BOTTOM)

    # ─── editor ───────────────────────────────────
    def _editor(self, pane):
        right = tk.Frame(pane, bg=T['bg'])
        pane.add(right, minsize=500)

        # Label bar
        lf = tk.Frame(right, bg=T['panel'])
        lf.pack(fill=tk.X)
        tk.Label(lf, text='Label:', bg=T['panel'], fg=T['dim'],
                 font=self.fn_small, padx=8, pady=5).pack(side=tk.LEFT)
        self._label_v = tk.StringVar()
        self._label_v.trace_add('write', self._on_label_change)
        self._label_e = tk.Entry(lf, textvariable=self._label_v, width=20,
                                 bg=T['entry'], fg=T['accent'],
                                 insertbackground=T['accent'],
                                 font=self.fn_label, relief=tk.FLAT,
                                 disabledbackground=T['panel'],
                                 disabledforeground=T['dim'])
        self._label_e.pack(side=tk.LEFT, padx=4, pady=5)
        self._info_lbl = tk.Label(lf, text='', bg=T['panel'],
                                  fg=T['dim'], font=self.fn_small)
        self._info_lbl.pack(side=tk.RIGHT, padx=10)

        # Editor + line numbers
        ef = tk.Frame(right, bg=T['bg'])
        ef.pack(fill=tk.BOTH, expand=True)

        self._lnum = tk.Text(ef, width=4, bg=T['panel'], fg=T['dim'],
                             font=self.fn_mono, state=tk.DISABLED,
                             relief=tk.FLAT, borderwidth=0, highlightthickness=0,
                             padx=4, pady=6)
        self._lnum.pack(side=tk.LEFT, fill=tk.Y)

        vsb2 = tk.Scrollbar(ef, bg=T['panel'])
        vsb2.pack(side=tk.RIGHT, fill=tk.Y)
        hsb2 = tk.Scrollbar(right, orient=tk.HORIZONTAL, bg=T['panel'])
        hsb2.pack(side=tk.BOTTOM, fill=tk.X)

        self.editor = tk.Text(ef, bg=T['bg'], fg=T['text'],
                              insertbackground=T['accent'],
                              selectbackground=T['sel'],
                              font=self.fn_mono, relief=tk.FLAT,
                              borderwidth=0, highlightthickness=0,
                              wrap=tk.NONE, padx=6, pady=6,
                              undo=True, maxundo=200,
                              yscrollcommand=vsb2.set,
                              xscrollcommand=hsb2.set)
        self.editor.pack(side=tk.LEFT, fill=tk.BOTH, expand=True)
        vsb2.config(command=self._sync_y)
        hsb2.config(command=self.editor.xview)

        self._setup_tags()
        self.editor.bind('<<Modified>>', self._on_modified)
        self.editor.bind('<KeyRelease>',  self._on_key)
        self._set_editor(False)

    # ─── statusbar ────────────────────────────────
    def _statusbar(self):
        sb = tk.Frame(self, bg=T['panel'], height=22)
        sb.pack(fill=tk.X, side=tk.BOTTOM)
        sb.pack_propagate(False)
        self._status_v = tk.StringVar(value='Ready — Open a file to begin')
        tk.Label(sb, textvariable=self._status_v, bg=T['panel'], fg=T['dim'],
                 font=self.fn_small, anchor='w', padx=10).pack(
                 side=tk.LEFT, fill=tk.X, expand=True)
        self._pos_v = tk.StringVar(value='Ln 1, Col 1')
        tk.Label(sb, textvariable=self._pos_v, bg=T['panel'], fg=T['dim'],
                 font=self.fn_small, padx=10).pack(side=tk.RIGHT)

    # ─── syntax tags ──────────────────────────────
    def _setup_tags(self):
        self.editor.tag_configure('t_k',    foreground=T['k_col'],    font=self.fn_bold)
        self.editor.tag_configure('t_p',    foreground=T['p_col'],    font=self.fn_bold)
        self.editor.tag_configure('t_w',    foreground=T['wait_col'], font=self.fn_bold)
        self.editor.tag_configure('t_h',    foreground=T['hou_col'],  font=self.fn_bold)
        self.editor.tag_configure('t_sel',  foreground=T['sel_col'],  font=self.fn_bold)
        self.editor.tag_configure('t_shk',  foreground=T['shake_col'],font=self.fn_bold)
        self.editor.tag_configure('t_fmt',  foreground=T['fmt_col'],  font=self.fn_bold)
        self.editor.tag_configure('t_icon', foreground=T['icon_col'], font=self.fn_bold)
        self.editor.tag_configure('t_ctrl', foreground=T['ctrl_col'], font=self.fn_bold)
        self.editor.tag_configure('t_gen',  foreground=T['blue'],     font=self.fn_bold)

    def _highlight(self):
        all_tags = ('t_k','t_p','t_w','t_h','t_sel','t_shk','t_fmt','t_icon','t_ctrl','t_gen')
        for tag in all_tags:
            self.editor.tag_remove(tag, '1.0', tk.END)
        content = self.editor.get('1.0', tk.END)
        for m in TAG_PATTERN.finditer(content):
            s, e = m.start(), m.end()
            v = m.group(0)
            if v == '<k>':
                tag = 't_k'
            elif v == '<p>':
                tag = 't_p'
            elif v.startswith('<wait'):
                tag = 't_w'
            elif v == '<housou>':
                tag = 't_h'
            elif v.startswith('<select') or v.startswith('<o>'):
                tag = 't_sel'
            elif v in ('<shake>', '</shake>'):
                tag = 't_shk'
            elif v.startswith('<icon'):
                tag = 't_icon'
            elif v in ('<small>', '<s>', '<S>', '</col>') or v.startswith('<col')                     or v.startswith('<scale') or v.startswith('<dynamic')                     or v == '</dynamic>':
                tag = 't_fmt'
            elif v in ('<o>', '<keyxon>', '<ITEM>', '<NUM>')                     or v.startswith('<dkey') or v == '</dkey>':
                tag = 't_ctrl'
            else:
                tag = 't_gen'
            self.editor.tag_add(tag, f'1.0+{s}c', f'1.0+{e}c')
        self._update_lnums()

    def _update_lnums(self):
        content = self.editor.get('1.0', tk.END)
        n = content.count('\n')
        nums = '\n'.join(str(i) for i in range(1, n + 2))
        self._lnum.config(state=tk.NORMAL)
        self._lnum.delete('1.0', tk.END)
        self._lnum.insert('1.0', nums)
        self._lnum.config(state=tk.DISABLED)

    def _sync_y(self, *a):
        self.editor.yview(*a)
        self._lnum.yview(*a)

    # ─── binds ────────────────────────────────────
    def _binds(self):
        self.bind('<Control-o>', lambda e: self.open_file())
        self.bind('<Control-s>', lambda e: self.save_file())
        self.bind('<Control-S>', lambda e: self.save_as())

    # ─── helpers ──────────────────────────────────
    def _set_editor(self, on: bool):
        state = tk.NORMAL if on else tk.DISABLED
        self.editor.config(state=state)
        self._label_e.config(state=state)

    def _set_modified(self, val: bool):
        self.modified = val
        title = 'PMTTYD Dialogue Editor'
        if self.file_path:
            title += f'  —  {os.path.basename(self.file_path)}'
        if val:
            title += ' *'
        self.title(title)

    def _status(self, msg: str):
        self._status_v.set(msg)

    # ─── listbox ──────────────────────────────────
    def _refresh_list(self, select: Optional[int] = None):
        self.listbox.delete(0, tk.END)
        for b in self.blocks:
            preview = b.display_text()
            if len(preview) > 32:
                preview = preview[:30] + '...'
            self.listbox.insert(tk.END, f'{b.label}  {preview}' if preview else b.label)
        self._cnt_lbl.config(text=str(len(self.blocks)))
        if select is not None and 0 <= select < len(self.blocks):
            self.listbox.selection_clear(0, tk.END)
            self.listbox.selection_set(select)
            self.listbox.see(select)
            self._load_block(select)

    def _on_select(self, _=None):
        sel = self.listbox.curselection()
        if not sel or sel[0] == self.current_index:
            return
        self._commit()
        self._load_block(sel[0])

    def _load_block(self, idx: int):
        self.current_index = idx
        block = self.blocks[idx]
        self._set_editor(True)

        self._suppress_label_trace = True
        self._label_v.set(block.label)
        self._suppress_label_trace = False

        self.editor.config(state=tk.NORMAL)
        self.editor.delete('1.0', tk.END)
        # Strip null bytes for display in editor
        display = block.raw_text().lstrip('\x00')
        self.editor.insert('1.0', display)
        self.editor.edit_reset()
        self.editor.edit_modified(False)
        self._highlight()
        self._update_info(block)
        self._status(f'Editing: {block.label}')

    def _commit(self):
        if self.current_index is None or not self.editor.edit_modified():
            return
        raw = self.editor.get('1.0', tk.END)
        if raw.endswith('\n'):
            raw = raw[:-1]
        block = self.blocks[self.current_index]
        block.tokens = _tokenise(raw)
        label = self._label_v.get().strip()
        if label and re.fullmatch(r'[a-zA-Z][a-zA-Z0-9_]*', label):
            block.label = label
        self._set_modified(True)
        self.editor.edit_modified(False)

    def _update_info(self, block: DialogueBlock):
        c = block.tag_counts()
        chars = len(block.display_text())
        self._info_lbl.config(
            text=f'<k>x{c["k"]}  <p>x{c["p"]}  <wait>x{c["wait"]}  {chars} chars')

    # ─── editor events ────────────────────────────
    def _on_modified(self, _=None):
        if self.editor.edit_modified():
            self._set_modified(True)

    def _on_key(self, _=None):
        self._highlight()
        try:
            ln, col = self.editor.index(tk.INSERT).split('.')
            self._pos_v.set(f'Ln {ln}, Col {int(col)+1}')
        except Exception:
            pass

    def _on_label_change(self, *_):
        if self._suppress_label_trace or self.current_index is None:
            return
        label = self._label_v.get().strip()
        valid = bool(re.fullmatch(r'[a-zA-Z][a-zA-Z0-9_]*', label))
        self._label_e.config(fg=T['accent'] if valid else T['err'])
        if valid:
            self._set_modified(True)

    # ─── file ops ─────────────────────────────────
    def open_file(self, path: str = ''):
        if self.modified:
            if not messagebox.askyesno('Unsaved Changes',
                                       'You have unsaved changes. Open anyway?'):
                return
        if not path:
            path = filedialog.askopenfilename(
                title='Open PMTTYD Script',
                filetypes=[('Text files', '*.txt'), ('All files', '*.*')])
        if not path:
            return
        try:
            with open(path, 'r', encoding='utf-8', errors='replace') as f:
                content = f.read()
            self.blocks = parse_file(content)
            self.file_path = path
            self.current_index = None
            self._set_editor(False)
            self._refresh_list()
            self._set_modified(False)
            self._update_stats()
            self._status(
                f'Opened: {os.path.basename(path)}  ({len(self.blocks)} blocks)')
        except Exception as e:
            messagebox.showerror('Error', f'Could not open file:\n{e}')

    def save_file(self):
        if not self.file_path:
            self.save_as(); return
        self._commit()
        try:
            with open(self.file_path, 'w', encoding='utf-8', newline='') as f:
                f.write(blocks_to_text(self.blocks))
            self._set_modified(False)
            self._status(f'Saved: {os.path.basename(self.file_path)}')
        except Exception as e:
            messagebox.showerror('Error', f'Could not save:\n{e}')

    def save_as(self):
        path = filedialog.asksaveasfilename(
            title='Save As', defaultextension='.txt',
            filetypes=[('Text files', '*.txt'), ('All files', '*.*')])
        if not path:
            return
        self.file_path = path
        self.save_file()

    def export_json(self):
        if not self.blocks:
            messagebox.showinfo('Export', 'No data to export.'); return
        self._commit()
        path = filedialog.asksaveasfilename(
            title='Export JSON', defaultextension='.json',
            filetypes=[('JSON files', '*.json')])
        if not path:
            return
        data = [{'label': b.label,
                 'display_text': b.display_text(),
                 'tokens': [{'kind': t.kind, 'value': t.value} for t in b.tokens]}
                for b in self.blocks]
        with open(path, 'w', encoding='utf-8') as f:
            json.dump(data, f, indent=2, ensure_ascii=False)
        self._status(f'Exported: {os.path.basename(path)}')

    # ─── block ops ────────────────────────────────
    def add_block(self):
        self._commit()
        label = f'new_{len(self.blocks):02d}'
        block = DialogueBlock(label=label, tokens=[Token('text', '\n')])
        idx = (self.current_index + 1) if self.current_index is not None \
              else len(self.blocks)
        self.blocks.insert(idx, block)
        self._refresh_list(idx)
        self._set_modified(True)

    def duplicate_block(self):
        if self.current_index is None: return
        self._commit()
        orig = self.blocks[self.current_index]
        new = DialogueBlock(label=orig.label + '_copy', tokens=deepcopy(orig.tokens))
        self.blocks.insert(self.current_index + 1, new)
        self._refresh_list(self.current_index + 1)
        self._set_modified(True)

    def delete_block(self):
        if self.current_index is None: return
        label = self.blocks[self.current_index].label
        if not messagebox.askyesno('Delete', f'Delete block "{label}"?'): return
        self.blocks.pop(self.current_index)
        new_idx = min(self.current_index, len(self.blocks) - 1)
        self.current_index = None
        if self.blocks:
            self._refresh_list(new_idx)
        else:
            self.listbox.delete(0, tk.END)
            self._set_editor(False)
            self.editor.config(state=tk.NORMAL)
            self.editor.delete('1.0', tk.END)
            self.editor.config(state=tk.DISABLED)
            self._cnt_lbl.config(text='0')
        self._set_modified(True)
        self._status(f'Deleted: {label}')

    def move_up(self):
        if self.current_index is None or self.current_index == 0: return
        self._commit()
        i = self.current_index
        self.blocks[i], self.blocks[i-1] = self.blocks[i-1], self.blocks[i]
        self._refresh_list(i - 1)
        self._set_modified(True)

    def move_down(self):
        if self.current_index is None or self.current_index >= len(self.blocks)-1:
            return
        self._commit()
        i = self.current_index
        self.blocks[i], self.blocks[i+1] = self.blocks[i+1], self.blocks[i]
        self._refresh_list(i + 1)
        self._set_modified(True)

    # ─── tag insertion ────────────────────────────
    def _ins(self, tag: str):
        if self.editor['state'] == tk.DISABLED: return
        self.editor.insert(tk.INSERT, tag)
        self._highlight()

    def _wait_dialog(self):
        dlg = tk.Toplevel(self)
        dlg.title('Insert <wait>')
        dlg.geometry('280x130')
        dlg.configure(bg=T['panel'])
        dlg.resizable(False, False)
        dlg.grab_set()
        tk.Label(dlg, text='Wait duration (ms):', bg=T['panel'],
                 fg=T['text'], font=self.fn_ui).pack(pady=(18, 4))
        v = tk.StringVar(value='250')
        e = tk.Entry(dlg, textvariable=v, bg=T['entry'], fg=T['accent'],
                     insertbackground=T['accent'], font=self.fn_mono,
                     relief=tk.FLAT, width=12, justify='center')
        e.pack(); e.select_range(0, tk.END); e.focus_set()

        def ok(*_):
            val = v.get().strip()
            if val.isdigit():
                self._ins(f'<wait {val}>')
                dlg.destroy()
            else:
                e.config(fg=T['err'])

        tk.Button(dlg, text='Insert', command=ok,
                  bg=T['wait_col'], fg='#000', relief=tk.FLAT,
                  font=self.fn_ui, padx=16, pady=4, cursor='hand2').pack(pady=12)
        dlg.bind('<Return>', ok)

    def _ins_wrap(self, open_tag, close_tag):
        """Return a callable that wraps selected text (or inserts both tags)."""
        def do():
            if self.editor['state'] == tk.DISABLED:
                return
            try:
                sel = self.editor.get(tk.SEL_FIRST, tk.SEL_LAST)
                self.editor.delete(tk.SEL_FIRST, tk.SEL_LAST)
                self.editor.insert(tk.INSERT, open_tag + sel + close_tag)
            except tk.TclError:
                self.editor.insert(tk.INSERT, open_tag + close_tag)
            self._highlight()
        return do

    def _select_dialog(self):
        dlg = tk.Toplevel(self)
        dlg.title('Insert <select>')
        dlg.geometry('320x200')
        dlg.configure(bg=T['panel'])
        dlg.resizable(False, False)
        dlg.grab_set()
        fields = [('Arg1 (type, 0=yn)', '0'), ('Arg2 (cols, 1=vert)', '1'),
                  ('Arg3 (x offset)', '0'), ('Arg4 (y offset)', '40')]
        vars_ = []
        for label, default in fields:
            row = tk.Frame(dlg, bg=T['panel'])
            row.pack(fill=tk.X, padx=12, pady=2)
            tk.Label(row, text=label, bg=T['panel'], fg=T['text'],
                     font=self.fn_small, width=22, anchor='w').pack(side=tk.LEFT)
            v = tk.StringVar(value=default)
            tk.Entry(row, textvariable=v, width=8, bg=T['entry'], fg=T['accent'],
                     insertbackground=T['accent'], relief=tk.FLAT,
                     font=self.fn_mono).pack(side=tk.LEFT, padx=4)
            vars_.append(v)
        def ok(*_):
            args = ' '.join(v.get().strip() for v in vars_)
            self._ins(f'<select {args}>')
            dlg.destroy()
        tk.Button(dlg, text='Insert', command=ok, bg=T['sel_col'], fg='#000',
                  relief=tk.FLAT, font=self.fn_ui, padx=16, pady=4,
                  cursor='hand2').pack(pady=10)
        dlg.bind('<Return>', ok)

    def _scale_dialog(self):
        dlg = tk.Toplevel(self)
        dlg.title('Insert <scale>')
        dlg.geometry('260x120')
        dlg.configure(bg=T['panel'])
        dlg.resizable(False, False)
        dlg.grab_set()
        tk.Label(dlg, text='Scale factor (e.g. 0.67):', bg=T['panel'],
                 fg=T['text'], font=self.fn_ui).pack(pady=(16, 4))
        v = tk.StringVar(value='0.67')
        e = tk.Entry(dlg, textvariable=v, bg=T['entry'], fg=T['accent'],
                     insertbackground=T['accent'], font=self.fn_mono,
                     relief=tk.FLAT, width=10, justify='center')
        e.pack(); e.select_range(0, tk.END); e.focus_set()
        def ok(*_):
            self._ins(f'<scale {v.get().strip()}>')
            dlg.destroy()
        tk.Button(dlg, text='Insert', command=ok, bg=T['fmt_col'], fg='#000',
                  relief=tk.FLAT, font=self.fn_ui, padx=16, pady=4,
                  cursor='hand2').pack(pady=10)
        dlg.bind('<Return>', ok)

    def _col_dialog(self):
        dlg = tk.Toplevel(self)
        dlg.title('Insert <col>')
        dlg.geometry('300x130')
        dlg.configure(bg=T['panel'])
        dlg.resizable(False, False)
        dlg.grab_set()
        tk.Label(dlg, text='Colour hex (e.g. c00000ff = RGBA):', bg=T['panel'],
                 fg=T['text'], font=self.fn_ui).pack(pady=(16, 4))
        v = tk.StringVar(value='c00000ff')
        e = tk.Entry(dlg, textvariable=v, bg=T['entry'], fg=T['accent'],
                     insertbackground=T['accent'], font=self.fn_mono,
                     relief=tk.FLAT, width=14, justify='center')
        e.pack(); e.select_range(0, tk.END); e.focus_set()
        def ok(*_):
            self._ins(f'<col {v.get().strip()}>')
            dlg.destroy()
        tk.Button(dlg, text='Insert <col>...</col>', command=ok,
                  bg=T['fmt_col'], fg='#000', relief=tk.FLAT, font=self.fn_ui,
                  padx=12, pady=4, cursor='hand2').pack(pady=10)
        dlg.bind('<Return>', ok)

    def _icon_dialog(self):
        dlg = tk.Toplevel(self)
        dlg.title('Insert <icon>')
        dlg.geometry('340x220')
        dlg.configure(bg=T['panel'])
        dlg.resizable(False, False)
        dlg.grab_set()
        fields = [('Icon name (e.g. HM, PAD_A)', 'HM'),
                  ('Scale (e.g. 0.6)',            '0.6'),
                  ('X offset',                   '-20'),
                  ('Y offset',                    '31'),
                  ('Z offset',                     '0')]
        vars_ = []
        for label, default in fields:
            row = tk.Frame(dlg, bg=T['panel'])
            row.pack(fill=tk.X, padx=12, pady=2)
            tk.Label(row, text=label, bg=T['panel'], fg=T['text'],
                     font=self.fn_small, width=24, anchor='w').pack(side=tk.LEFT)
            v = tk.StringVar(value=default)
            tk.Entry(row, textvariable=v, width=8, bg=T['entry'], fg=T['accent'],
                     insertbackground=T['accent'], relief=tk.FLAT,
                     font=self.fn_mono).pack(side=tk.LEFT, padx=4)
            vars_.append(v)
        def ok(*_):
            args = ' '.join(v.get().strip() for v in vars_)
            self._ins(f'<icon {args}>')
            dlg.destroy()
        tk.Button(dlg, text='Insert', command=ok, bg=T['icon_col'], fg='#000',
                  relief=tk.FLAT, font=self.fn_ui, padx=16, pady=4,
                  cursor='hand2').pack(pady=8)
        dlg.bind('<Return>', ok)

    def _dynamic_dialog(self):
        dlg = tk.Toplevel(self)
        dlg.title('Insert <dynamic>')
        dlg.geometry('260x120')
        dlg.configure(bg=T['panel'])
        dlg.resizable(False, False)
        dlg.grab_set()
        tk.Label(dlg, text='Dynamic index (e.g. 3):', bg=T['panel'],
                 fg=T['text'], font=self.fn_ui).pack(pady=(16, 4))
        v = tk.StringVar(value='3')
        e = tk.Entry(dlg, textvariable=v, bg=T['entry'], fg=T['accent'],
                     insertbackground=T['accent'], font=self.fn_mono,
                     relief=tk.FLAT, width=8, justify='center')
        e.pack(); e.select_range(0, tk.END); e.focus_set()
        def ok(*_):
            self._ins(f'<dynamic {v.get().strip()}>')
            dlg.destroy()
        tk.Button(dlg, text='Insert', command=ok, bg=T['fmt_col'], fg='#000',
                  relief=tk.FLAT, font=self.fn_ui, padx=16, pady=4,
                  cursor='hand2').pack(pady=10)
        dlg.bind('<Return>', ok)

    # ─── search ───────────────────────────────────
    def _search_do(self):
        q = self._sv.get().strip().lower()
        if not q:
            self._search_results = []; self._search_idx = -1
            self._search_lbl.config(text=''); return
        res = [i for i, b in enumerate(self.blocks)
               if q in b.label.lower() or q in b.display_text().lower()]
        self._search_results = res
        self._search_idx = 0 if res else -1
        self._search_lbl.config(
            text=f'{len(res)} found' if res else 'Not found')
        if res: self._jump_search()

    def _search_next(self):
        if not self._search_results: return
        self._search_idx = (self._search_idx + 1) % len(self._search_results)
        self._jump_search()

    def _search_prev(self):
        if not self._search_results: return
        self._search_idx = (self._search_idx - 1) % len(self._search_results)
        self._jump_search()

    def _jump_search(self):
        idx = self._search_results[self._search_idx]
        self._commit()
        self.listbox.selection_clear(0, tk.END)
        self.listbox.selection_set(idx)
        self.listbox.see(idx)
        self._load_block(idx)
        n, total = self._search_idx + 1, len(self._search_results)
        self._search_lbl.config(text=f'{n}/{total}')

    # ─── stats ────────────────────────────────────
    def _update_stats(self):
        if not self.blocks:
            self._stats_v.set('No file open'); return
        total_tags = sum(1 for b in self.blocks for t in b.tokens if t.kind == 'tag')
        total_chars = sum(len(b.display_text()) for b in self.blocks)
        fname = os.path.basename(self.file_path) if self.file_path else '?'
        self._stats_v.set(
            f'{fname}\nBlocks: {len(self.blocks)}\n'
            f'Tags: {total_tags}\nChars: {total_chars}')

    # ─── preview & raw ────────────────────────────
    def open_preview(self):
        if self.current_index is None:
            messagebox.showinfo('Preview', 'Select a block first.'); return
        self._commit()
        PreviewWindow(self, self.blocks[self.current_index])

    def open_raw(self):
        if not self.blocks:
            messagebox.showinfo('Raw View', 'No data loaded.'); return
        self._commit()
        RawViewWindow(self, blocks_to_text(self.blocks))

    # ─── close ────────────────────────────────────
    def _on_close(self):
        if self.modified:
            ans = messagebox.askyesnocancel('Quit', 'Save changes before quitting?')
            if ans is None: return
            if ans: self.save_file()
        self.destroy()


# ════════════════════════════════════════════════════
#  PREVIEW WINDOW
# ════════════════════════════════════════════════════

class PreviewWindow(tk.Toplevel):
    """Animated in-game style dialogue preview."""

    BOX_BG = '#12111e'
    BOX_FG = '#f4eecc'
    BOX_BD = '#6050a0'

    def __init__(self, parent, block: DialogueBlock):
        super().__init__(parent)
        self.title(f'Preview — {block.label}')
        self.configure(bg=T['bg'])
        self.resizable(False, False)
        self.grab_set()

        self.pages = self._split_pages(block)
        self.page_idx = 0
        self._after_id = None
        self._token_iter = iter([])
        self._char_buf: List[str] = []

        self._build()
        self._start_page()

    def _split_pages(self, block: DialogueBlock) -> List[List[Token]]:
        pages, current = [], []
        for t in block.tokens:
            if t.kind == 'tag' and t.value in ('<k>', '<p>'):
                pages.append(current); current = []
            else:
                current.append(t)
        if current:
            pages.append(current)
        return [p for p in pages
                if any(tok.kind == 'text' and tok.value.strip() for tok in p)]

    def _build(self):
        tk.Label(self, text='DIALOGUE PREVIEW', bg=T['bg'], fg=T['accent'],
                 font=('Courier New', 10, 'bold'), pady=8).pack()

        outer = tk.Frame(self, bg=self.BOX_BD, padx=3, pady=3)
        outer.pack(padx=30, pady=4)
        inner = tk.Frame(outer, bg=self.BOX_BG, width=960, height=160)
        inner.pack(); inner.pack_propagate(False)

        self._txt = tk.Text(inner, bg=self.BOX_BG, fg=self.BOX_FG,
                            font=('Courier New', 13), relief=tk.FLAT,
                            borderwidth=0, highlightthickness=0,
                            padx=16, pady=12, wrap=tk.WORD,
                            state=tk.DISABLED, cursor='arrow',
                            width=60, height=5)
        self._txt.pack(fill=tk.BOTH, expand=True)

        self._page_v = tk.StringVar()
        tk.Label(self, textvariable=self._page_v, bg=T['bg'],
                 fg=T['dim'], font=('Courier New', 9)).pack(pady=2)

        cf = tk.Frame(self, bg=T['bg'])
        cf.pack(pady=8)
        self._next_btn = tk.Button(cf, text='Next / Continue',
                                   command=self._next,
                                   bg=T['accent'], fg='#000', relief=tk.FLAT,
                                   font=('Courier New', 10, 'bold'),
                                   padx=20, pady=6, cursor='hand2')
        self._next_btn.pack(side=tk.LEFT, padx=4)
        tk.Button(cf, text='Close', command=self.destroy,
                  bg=T['entry'], fg=T['dim'], relief=tk.FLAT,
                  font=('Courier New', 10), padx=12, pady=6,
                  cursor='hand2').pack(side=tk.LEFT, padx=4)

        self.bind('<space>',  lambda e: self._next())
        self.bind('<Return>', lambda e: self._next())
        self.focus_set()

    def _start_page(self):
        if self.page_idx >= len(self.pages):
            self._txt.config(state=tk.NORMAL)
            self._txt.delete('1.0', tk.END)
            self._txt.insert('1.0', '-- End of dialogue --')
            self._txt.config(state=tk.DISABLED)
            self._next_btn.config(state=tk.DISABLED)
            self._page_v.set(f'Page {self.page_idx} / {len(self.pages)}')
            return
        self._page_v.set(f'Page {self.page_idx+1} / {len(self.pages)}')
        self._txt.config(state=tk.NORMAL)
        self._txt.delete('1.0', tk.END)
        self._txt.config(state=tk.DISABLED)
        self._char_buf = []
        self._token_iter = iter(self.pages[self.page_idx])
        self._next_token()

    def _next_token(self):
        try:
            tok = next(self._token_iter)
        except StopIteration:
            return
        if tok.kind == 'text':
            self._char_buf = list(tok.value)
            self._type()
        else:
            m = re.match(r'<wait\s+(\d+)>', tok.value)
            delay = int(m.group(1)) if m else 0
            self._after_id = self.after(delay, self._next_token)

    def _type(self):
        if not self._char_buf:
            self._next_token(); return
        ch = self._char_buf.pop(0)
        self._txt.config(state=tk.NORMAL)
        self._txt.insert(tk.END, ch)
        self._txt.config(state=tk.DISABLED)
        self._after_id = self.after(28, self._type)

    def _next(self):
        if self._after_id:
            self.after_cancel(self._after_id)
            self._after_id = None
            # Flush remaining text on this page immediately
            if self.page_idx < len(self.pages):
                full = ''.join(t.value for t in self.pages[self.page_idx]
                               if t.kind == 'text')
                self._txt.config(state=tk.NORMAL)
                self._txt.delete('1.0', tk.END)
                self._txt.insert('1.0', full)
                self._txt.config(state=tk.DISABLED)
            self._char_buf = []
            return
        self.page_idx += 1
        self._start_page()


# ════════════════════════════════════════════════════
#  RAW VIEW WINDOW
# ════════════════════════════════════════════════════

class RawViewWindow(tk.Toplevel):
    def __init__(self, parent, content: str):
        super().__init__(parent)
        self.title('Raw File View')
        self.geometry('700x560')
        self.configure(bg=T['bg'])

        tk.Label(self, text='RAW FILE CONTENT  (read-only)',
                 bg=T['bg'], fg=T['accent'],
                 font=('Courier New', 10, 'bold'), pady=8).pack()

        frame = tk.Frame(self, bg=T['bg'])
        frame.pack(fill=tk.BOTH, expand=True, padx=10, pady=(0, 10))
        vsb = tk.Scrollbar(frame); vsb.pack(side=tk.RIGHT, fill=tk.Y)
        hsb = tk.Scrollbar(frame, orient=tk.HORIZONTAL)
        hsb.pack(side=tk.BOTTOM, fill=tk.X)
        t = tk.Text(frame, bg=T['panel'], fg=T['text'],
                    font=('Courier New', 10), relief=tk.FLAT,
                    borderwidth=0, highlightthickness=0, wrap=tk.NONE,
                    state=tk.DISABLED,
                    yscrollcommand=vsb.set, xscrollcommand=hsb.set)
        t.pack(fill=tk.BOTH, expand=True)
        vsb.config(command=t.yview); hsb.config(command=t.xview)

        # Replace null bytes with a visible marker for display
        display = content.replace('\x00', '\xb7')  # middle dot
        t.config(state=tk.NORMAL)
        t.insert('1.0', display)
        t.config(state=tk.DISABLED)

        for tname, pattern, color in [
            ('tk', r'<k>',          T['k_col']),
            ('tp', r'<p>',          T['p_col']),
            ('tw', r'<wait\s+\d+>', T['wait_col']),
            ('th', r'<housou>',     T['hou_col']),
            ('tg', r'<[^>]+>',      T['blue']),
        ]:
            t.tag_configure(tname, foreground=color,
                            font=('Courier New', 10, 'bold'))
            for m in re.finditer(pattern, display):
                t.tag_add(tname, f'1.0+{m.start()}c', f'1.0+{m.end()}c')

        tk.Button(self, text='Close', command=self.destroy,
                  bg=T['entry'], fg=T['dim'], relief=tk.FLAT,
                  font=('Courier New', 10), padx=16, pady=4,
                  cursor='hand2').pack(pady=6)


# ════════════════════════════════════════════════════
#  ENTRY POINT
# ════════════════════════════════════════════════════

if __name__ == '__main__':
    import sys
    app = App()
    if len(sys.argv) > 1 and os.path.isfile(sys.argv[1]):
        app.after(100, lambda: app.open_file(sys.argv[1]))
    app.mainloop()
