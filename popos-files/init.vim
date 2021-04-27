call plug#begin('~/.local/share/nvim/plugged')

"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'townk/vim-autoclose'
Plug 'tpope/vim-surround'
Plug 'svermeulen/vim-subversive' 
Plug 'kien/ctrlp.vim'
Plug 'matze/vim-move'
Plug 'janko/vim-test'
Plug 'tpope/vim-rails'
Plug 'vim-ruby/vim-ruby'
Plug 'pangloss/vim-javascript'
Plug 'tpope/vim-endwise'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'yonlu/omni.vim' 
Plug 'psliwka/vim-smoothie'
Plug 'ntk148v/vim-horizon'

call plug#end()

set t_Co=256
set termguicolors
set number relativenumber
set autoindent
set smartindent
set cursorline
syntax enable
colorscheme horizon
set termguicolors
"colorscheme omni
highlight Normal ctermbg=NONE
set visualbell
set background=dark
set nocompatible
set tabpagemax=10
set expandtab
"set spell spelllang=en_ca
let mapleader=" "
set guifont=Fira_Code_Retina:h15

" airline config
"let g:airline_theme='dracula'

" lightline config
let g:lightline = {'colorscheme' : 'horizon'}

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

nnoremap <leader>r :NERDTreeToggle<cr>

let g:ctrlp_working_path_mode = 'a'
let g:ctrlp_max_files=0
set clipboard=unnamedplus

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }

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
