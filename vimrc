set nocompatible
filetype off

execute pathogen#infect()

syntax on                       " enable syntax processing
filetype plugin indent on       " load filetype-specific indent files


" COLOR SCHEME

" background fix for base16 shell colors
"if filereadable(expand("~/.vimrc_background"))
"    let base16colorspace=256
"    source ~/.vimrc_background
"endif

set background=dark
set termguicolors
let g:gruvbox_italic=1          " required by gruvbox
"let g:gruvbox_termcolors=16
colorscheme gruvbox
"if $COLORTERM == 'gnome-terminal'
"    set t_Co=256
"endif
"set t_ut=
"let base16colorspace=256
"colorscheme base16-default-dark


" SPACES/TABS
set tabstop=4           " number of visual spaces per TAB
"set softtabstop=4       " number of spaces in tab when editing
set expandtab           " tabs are spaces
set shiftwidth=4        " number of spaces to use for each step


" FORGET ARROW KEYS
noremap <Up> <nop>
noremap <Down> <nop>
noremap <Left> <nop>
noremap <Right> <nop>
inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>


" UI
set number              " show current line number
set relativenumber      " show relative line numbers
"set showcmd             " show command in bottom bar
"set cursorline          " highlight current line
"hi cursorline cterm=none
"hi cursorlinenr ctermfg=red
set wildmenu            " visual autocomplete for command menu
set showmatch           " highlight matching [{()}]
set nowrap              " do not wrap lines
"set statusline+=%F      " add full path to statusline


" SEARCH
set ignorecase          " ignore case in search patterns
set smartcase           " unless uppercase char is typed
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
" turn off search highlight
nnoremap <Leader><space> :nohlsearch<CR>


" PLUGINS & KEYMAPPING

" -----------AIRLINE-------------
set laststatus=2        " enable airline
let g:airline_powerline_fonts = 1
let g:airline_theme = 'base16_default'
" -----------AIRLINE-------------

" -----------CtrlP---------------
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_switch_buffer = 'et'
" -----------CtrlP---------------

" -----------SYNTASTIC-----------
map <Leader>s :SyntasticToggleMode<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

let g:syntastic_go_checkers = ['go']
" -----------SYNTASTIC-----------

"map <Leader>n :NERDTreeToggle<CR>
