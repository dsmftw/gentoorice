execute pathogen#infect()

" COLORING
filetype plugin indent on       " load filetype-specific indent files
syntax on                       " enable syntax processing
let g:gruvbox_italic=1          " required by gruvbox
let g:gruvbox_termcolors=16     " required by gruvbox
"set termguicolors
colorscheme gruvbox
"let g:solarized_termcolors=256 " required by solarized
"colorscheme solarized
"colorscheme twilight
"if $COLORTERM == 'gnome-terminal'
"    set t_Co=256
"endif
"let base16colorspace=256
"colorscheme base16-default-dark
"colorscheme molokai
set background=dark

" SPACES/TABS
set tabstop=4           " number of visual spaces per TAB
"set softtabstop=4       " number of spaces in tab when editing
set expandtab           " tabs are spaces
set shiftwidth=4        " number of spaces to use for each step

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
set laststatus=2        " enable statusline on bottom
"set statusline+=%F      " add full path to statusline

" SEARCH
set ignorecase          " ignore case in search patterns
set smartcase           " unless uppercase char is typed
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
" turn off search highlight
nnoremap <Leader><space> :nohlsearch<CR>

" -----------SYNTASTIC-start---------------
map <Leader>s :SyntasticToggleMode<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

let g:syntastic_go_checkers = ['go']
" -----------SYNTASTIC-end-----------------

map <Leader>n :NERDTreeToggle<CR>
