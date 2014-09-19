" ==============================================================
" Vim Configuration file
"
" Requires Vundle plugin manager
" ==============================================================

" ==================================
" Vundle plugin manager
" ==================================
set nocompatible               " be iMproved
filetype off                   " required!

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" ==================================
" Plugins to install using Vundle
" NOTE: comments after Bundle command are not allowed..
" ==================================
" My Bundles here:
" original repos on github
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdcommenter'
Plugin 'bling/vim-airline'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/syntastic'
Plugin 'noah/vim256-color'
Plugin 'LaTeX-Box-Team/LaTeX-Box'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-markdown'
Plugin 'vim-scripts/ZoomWin'
Plugin 'mattn/emmet-vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'smoh/vim-snippets'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" ==================================
" My other settings
" ==================================
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

" only in v7.3 or higher
if v:version > 702
    set relativenumber
    set undofile        "keep an undofile
    set colorcolumn=85
else
    set number
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
vnoremap ; :
au FocusLost * :wa      " save on losing focus


" move lines up and down
nnoremap - ddp
nnoremap _ ddkP
" upperclass the current word
inoremap <leader>u <esc>viwUei
nnoremap <leader>u viwU

" ==================================
" Key Bindings
" ==================================
nnoremap <leader>nt :NERDTreeTabsToggle<cr><cr>
nnoremap <leader>tb :TagbarToggle<cr>
set pastetoggle=<C-t>   " Prevent TAB pushing when doing copy & paste
" strip all trailing whitespaces in the file
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <leader>v V`]
" edit my vimrc on a vertical split
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>
nnoremap <leader>egv <C-w><C-v><C-l>:e ~/dotfiles/vimrc<cr>
nnoremap <leader>sv <C-w><C-v><C-l>:source $MYVIMRC<cr>
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
" NERD Tree
" ==================================
let NERDTreeIgnore = ['.png$[[file]]']


" ==================================
" vim-indent-guides
" ==================================
let g:indent_guides_enable_on_vim_startup = 1
"let g:indent_guides_guide_size=1
let g:indent_guides_start_level = 2
let g:indent_guides_auto_colors = 0


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

" markdown support for tagbar
let g:tagbar_type_markdown = {
    \ 'ctagstype': 'markdown',
    \ 'kinds'    : [
        \ 'h:headings'
    \ ],
    \ 'sort'     : 0,
\ }


" ==================================
" NERD Commenter
" ==================================
let g:NERDSpaceDelims=1



" ==================================
" ctrlp
" ==================================
let g:ctrlp_extensions = ['line']
let g:ctrlp_show_hidden = 1
let g:ctrlp_follow_symlinks = 1
let g:ctrlp_custom_ignore = {
    \ 'file': '\v\.(fits|pyc)$',
    \ 'dir' : 'data'}
nnoremap <C-p> :<C-u>CtrlPLastMode<CR>


" ==================================
" vim-airline
" ==================================
let g:airline#extensions#tabline#enabled = 1


" ==================================
" ultisnips
" ==================================
let g:UltiSnipsExpandTrigger="<leader>t"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
