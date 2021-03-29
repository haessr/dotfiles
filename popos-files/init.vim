call plug#begin('~/.local/share/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jpo/vim-railscasts-theme'
Plug 'scrooloose/nerdtree'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'townk/vim-autoclose'
Plug 'tpope/vim-surround'
Plug 'svermeulen/vim-subversive' 
Plug 'sheerun/vim-polyglot'
Plug 'kien/ctrlp.vim'
Plug 'tomasiser/vim-code-dark'
Plug 'matze/vim-move'
Plug 'joshdick/onedark.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'cormacrelf/vim-colors-github'
" Golang required
"Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }


call plug#end()

set t_Co=256
set termguicolors
set number relativenumber
set smartindent
set cursorline
syntax enable
set termguicolors
"colorscheme github
"set background=dark
colorscheme dracula
highlight Normal ctermbg=NONE
set cindent
set visualbell
"color railscasts 
"color codedark
"colorscheme onedark
set background=dark
" if you use airline / lightline
let g:airline_theme='dracula'
"let g:airline_theme = 'github'
"let g:lightline = { 'colorscheme': 'github' }
set nocompatible
set tabpagemax=10
set expandtab
autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType python setlocal shiftwidth=4 tabstop=4 softtabstop=4


let $NVIM_TUI_ENABLE_TRUE_COLOR=1

"Personalizar las busquedas
nnoremap <esc><esc> :nohlsearch<return>
"set cursorline
set hlsearch
set incsearch
set ignorecase
set smartcase

"Moverse entre ventanas
nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

nnoremap <F4> :NERDTreeToggle<CR>
"au VimEnter *  NERDTree

"Mapear Ctrl+L al Esc
"nmap <c-l> <esc>
"imap <c-l> <esc>
"vmap <c-l> <esc>
"omap <c-l> <esc>

let g:ctrlp_working_path_mode = 'a'
let g:ctrlp_max_files=0
set clipboard=unnamedplus

" HEXOKINASE
"let g:Hexokinase_highlighters = [ 'virtual' ]
"
"let g:Hexokinase_optInPatterns = [
"\     'full_hex',
"\     'triple_hex',
"\     'rgb',
"\     'rgba',
"\     'hsl',
"\     'hsla',
"\     'colour_names'
"\ ]

"let g:Hexokinase_ftEnabled = [
"      \'css', 
"      \'html', 
"      \'javascript',
"      \'scss'
"      \]
"
