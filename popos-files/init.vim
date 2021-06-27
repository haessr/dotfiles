call plug#begin('~/.local/share/nvim/plugged')

"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
"Plug 'townk/vim-autoclose'
Plug 'tpope/vim-surround'
Plug 'svermeulen/vim-subversive' 
Plug 'kien/ctrlp.vim'
Plug 'matze/vim-move'
Plug 'janko/vim-test'
Plug 'tpope/vim-rails'
Plug 'sheerun/vim-polyglot'
"Plug 'vim-ruby/vim-ruby'
"Plug 'pangloss/vim-javascript'
"Plug 'jelera/vim-javascript-syntax'
Plug 'mxw/vim-jsx' 
Plug 'tpope/vim-endwise'
"Plug 'dracula/vim', { 'as': 'dracula' }
"Plug 'whatyouhide/vim-lengthmatters'
Plug 'yonlu/omni.vim' 
Plug 'psliwka/vim-smoothie'
Plug 'ntk148v/vim-horizon'
Plug 'w0rp/ale'
"Plug 'vim-syntastic/syntastic'
"Plug 'sbdchd/neoformat'
Plug 'jsit/sasscomplete.vim'
Plug 'mattn/emmet-vim'

call plug#end()

set t_Co=256
set termguicolors
set number relativenumber
set autoindent
set smartindent
set cursorline
syntax enable
set background=dark
colorscheme horizon
set termguicolors
"colorscheme omni
highlight Normal ctermbg=NONE
set visualbell
set nocompatible
set tabpagemax=10
set expandtab
"set spell spelllang=en_ca
let mapleader=" "
"set guifont=Fira_Code_Retina:h15

" Syntax highlight 

filetype on
filetype indent on
filetype plugin on



" airline config
"let g:airline_theme='dracula'

" lightline config
let g:lightline = {'colorscheme' : 'horizon'}

autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
"autocmd FileType ruby setlocal shiftwidth=2 tabstop=2 softtabstop=2
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
let NERDTreeShowHidden=1

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

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

" Ctrl+x Ctrl+o
autocmd FileType css,sass,scss setlocal omnifunc=sasscomplete#CompleteSass noci

" vim-emmet: Ctrl + y + ,
" Enable just for html/css
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
" Redefine trigger key
let g:user_emmet_leader_key='<C-Z>'

" # Typography 
" gnome-terminal cell spacing height 1.55 / font_size = 11

set guifont=Fira\ Code\ Retina:h15
set linespace=5
set textwidth=80
set colorcolumn=+1
set numberwidth=4
"set cursorline      " highlight current line
"set showmatch       " highlight matching <[{()}]>
"set autoindent      " set autoindenting on
set copyindent      " copy the indentation from previous line
"set spell spelllang=en_us
"set complete+=kspell
" CTRL + N or CTRL + P to complete current word
