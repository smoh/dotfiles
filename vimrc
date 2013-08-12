
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

" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
"Bundle 'plasticboy/vim-markdown'

filetype plugin indent on     " required!


syntax on
colorscheme desert256
set mouse=a		    " enable mouse for all modes
set history=50		" keep 50 lines of command line history
set ruler		    " show the cursor position all the times
set showcmd		    " display incomplete commands
set incsearch		" do incremental searching
set tabstop=4       " tab size
set expandtab       " always use spaces as tab 
set softtabstop=4
set shiftwidth=4
let &t_Co=256       "Enable 256-color in terminal
set hlsearch
set number		    "show line number
set foldmethod=indent
set foldlevelstart=99   " unfold everything at the start
set cursorline		"underline current line
set laststatus=2    " always show statusline
set wrap            "set softwrap
set backspace=2     "make backspace work like most other apps



" ==================================
" Key Bindings
" ==================================
:map <F10> :NERDTreeToggle<CR>
:map <F11> :TagbarToggle<CR>

" Toggle line number
" nnoremap ln :call ToggleLineNumber()<CR>
function! ToggleLineNumber()
  if &number == '0'
    set number
    echo "show line number"
  else
    set number!
    echo "hide line number"
  endif
endfunction

" Prevent TAB pushing when doing copy & paste
set pastetoggle=<C-t>

" window navigation with alt+hjkl
nmap <C-k> :wincmd k<CR>
nmap <C-j> :wincmd j<CR>
nmap <C-h> :wincmd h<CR>
nmap <C-l> :wincmd l<CR>



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
