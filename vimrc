set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
Bundle 'scrooloose/nerdtree'
"Bundle 'fs111/pydoc'
Bundle 'majutsushi/tagbar'
Bundle 'scrooloose/nerdcommenter'
Bundle 'Lokaltog/vim-powerline'
Bundle 'Raimondi/delimitMate'
Bundle 'flazz/vim-colorschemes'
Bundle 'LaTeX-Box-Team/LaTeX-Box'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'vimwiki'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'plasticboy/vim-markdown'

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

syntax on
set mouse=a		"enable mouse
set history=50		" keep 50 lines of command line history
set ruler		    " show the cursor position all the time
set showcmd		    " display incomplete commands
set incsearch		" do incremental searching
set tabstop=4       " tab size
set expandtab       " always use spaces as tab 
set softtabstop=4
set shiftwidth=4
let &t_Co=256       "Enable 256-color in terminal
set hlsearch
set number		"show line number
set foldmethod=indent
set foldlevelstart=99
set foldlevel=99
set cursorline		"underline current line
colorscheme breeze



" Key Bindings
:map <F10> :NERDTreeToggle<CR>
:map <F11> :TagbarToggle<CR>
" Toggle line number
"nnoremap ln :call ToggleLineNumber()<CR>
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


let g:NERDTreeDirArrows=0       "old school with no unicode chars

autocmd FileType tex setlocal tabstop=2 shiftwidth=2

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

"imap <S-j> <Plug>delimitMateS-Tab

if has("gui_running")
    set guifont=Consolas:h13    " set font for macvim
endif

" window navigation with alt+hjkl
nmap <C-k> :wincmd k<CR>
nmap <C-j> :wincmd j<CR>
nmap <C-h> :wincmd h<CR>
nmap <C-l> :wincmd l<CR>

" Open bash term in the bottom
nmap <Leader>ob :ConqueTermSplit bash<CR><ESC>:resize 15<CR>a

set laststatus=2  "always show statusline
set wrap   "set softwrap

" Vim-wiki
let g:vimwiki_list = [{'syntax': 'markdown', 'ext': '.md'}]
