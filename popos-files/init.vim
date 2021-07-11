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
"Plug 'sheerun/vim-polyglot'
Plug 'vim-ruby/vim-ruby'
Plug 'yuezk/vim-js'
"Plug 'pangloss/vim-javascript'
"Plug 'jelera/vim-javascript-syntax'
Plug 'mxw/vim-jsx'
"Plug 'maxmellon/vim-jsx-pretty'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-commentary'
"gcc to comment/uncomment
"Check https://github.com/tomtom/tcomment_vim
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
Plug 'tpope/vim-ragtag'
Plug 'cakebaker/scss-syntax.vim'
Plug 'shmargum/vim-sass-colors'

call plug#end()

set t_Co=256

set number relativenumber
set autoindent
set smartindent
set cursorline
"syntax enable
syntax on
set background=dark
colorscheme horizon
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"
let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"

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




"Personalizar las busquedas
nnoremap <esc><esc> :nohlsearch<return>

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
" gnome-terminal cell spacing height 1.50 / font_size = 11

set guifont=Fira\ Code\ Retina:h15
"if has("gui_gtk2")
"  set guifont=Droid\ Sans\ Mono\ 13
"elseif has("gui_macvim")
"  set guifont=Menlo\ Regular:h14
"elseif has("gui_win32")
"  set guifont=Consolas:h11:cANSI
"endif
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

"autocmd FileType apache setlocal commentstring=#\ %s

"inoremap <C-b>p (<Enter>)<Esc><S-o>
inoremap <C-b>b {<Enter>}<Esc><S-o>
"inoremap <C-b>s [<Enter>]<Esc><S-o>
