
" ==============================================================
"
" Vim Configuration file
"
" For the first time on another machine, install Vundle and
" run :BundleInstall
"
" ==============================================================

" ==================================
" Vundle plugin manager
" ==================================
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" ==================================
" Plugins to install using Vundle
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
" ==================================
" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/nerdcommenter'
Bundle 'Lokaltog/vim-powerline'
Bundle 'Raimondi/delimitMate'
Bundle 'flazz/vim-colorschemes'
Bundle 'LaTeX-Box-Team/LaTeX-Box'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'kien/ctrlp.vim'
Bundle 'plasticboy/vim-markdown'


filetype plugin indent on     " required!


syntax on
set mouse=a		    " enable mouse for all modes
set history=50		" keep 50 lines of command line history
set ruler		    " show the cursor position all the times
set showcmd		    " display incomplete commands
set tabstop=4       " tab size
set expandtab       " always use spaces as tab
set softtabstop=4
set shiftwidth=4
let &t_Co=256       "Enable 256-color in terminal
set foldmethod=indent
set foldlevelstart=99   " unfold everything at the start
set laststatus=2    " always show statusline
set backspace=2     "make backspace work like most other apps
set scrolloff=3     " lines above/below cursor
set autoindent
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
colorscheme molokai

" only in v7.3 or higher
if v:version > 702
    set relativenumber
    set undofile        "keep an undofile
    set colorcolumn=85
endif

let mapleader = ","
let maplocalleader = "\\"

" searching and moving
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

" handle long lines
set wrap            "set softwrap
set textwidth=79
set formatoptions=qrn1
command! -nargs=* Wrap set wrap linebreak nolist

nnoremap ; :
au FocusLost * :wa      " save on losing focus


" move lines up and down
nnoremap - ddp
nnoremap _ ddkP
" upperclass the current word
inoremap <c-u> <esc>viwUei
nnoremap <c-u> viwU

" ==================================
" Key Bindings
" ==================================
nnoremap <F3> :NERDTreeToggle<CR>
nnoremap <F4> :TagbarToggle<CR>
set pastetoggle=<C-t>   " Prevent TAB pushing when doing copy & paste
" strip all trailing whitespaces in the file
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <leader>v V`]
" edit my vimrc on a vertical split
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
inoremap jj <ESC>

" Splitting windows
nnoremap <leader>w <C-w>v<C-w>l
" window navigation with ctrl + hjkl
nnoremap <C-k> :wincmd k<CR>
nnoremap <C-j> :wincmd j<CR>
nnoremap <C-h> :wincmd h<CR>
nnoremap <C-l> :wincmd l<CR>

"let g:NERDTreeDirArrows=0       "old school with no unicode chars

autocmd FileType tex setlocal tabstop=2 shiftwidth=2

" ==================================
" vim-indent-guides
" ==================================
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size=1
let g:indent_guides_start_level = 2

" ==================================
" Tagbar
" ==================================
" latex support for tagbar
let g:tagbar_type_tex = {
    \ 'ctagstype' : 'latex',
    \ 'kinds'     : [
        \ 's:sections',
        \ 'g:graphics:0:0',
        \ 'l:labels',
        \ 'r:refs:1:0',
        \ 'p:pagerefs:1:0'
    \ ],
    \ 'sort'    : 0,
\ }

" idl support for tagbar
let g:tagbar_type_idlang = {
    \ 'ctagstype' : 'IDL',
    \ 'kinds'     : [
        \ 'p:procedure',
        \ 'f:function'
    \ ],
    \ 'sort'      : 0,
\ }


if has("gui_running")
    set guifont=Consolas:h13    " set font for macvim
endif

" ==================================
" NERD Commenter
" ==================================
let g:NERDSpaceDelims=1


" ==================================
" ctrlp
" ==================================
let g:ctrlp_extensions = ['line']
