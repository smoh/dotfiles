" Neovim configuration
" ==================================
" Use vim-plug for pluggins
" https://github.com/junegunn/vim-plug
" ==================================
call plug#begin('~/.config/nvim/plugged')

" Group dependencies, vim-snippets depends on ultisnips
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'tpope/vim-fugitive'        " git wrapper
"Plug 'tpope/vim-markdown'
Plug 'tpope/vim-vinegar'         " enhance netrw
Plug 'scrooloose/nerdcommenter'
"Plug 'Lokaltog/vim-easymotion'   " easily cursor-jump to places
"Plug 'tpope/vim-surround'        " (un)surround stuff
Plug 'wellle/targets.vim'        " additional text objects
Plug 'Yggdroot/indentLine'       " vertical line indent guides
Plug 'bling/vim-airline'         " pretty status line
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'   " fuzzy finder

"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

"Plug 'mattn/emmet-vim'
"Plug 'othree/html5.vim'

"Plug 'junegunn/vim-easy-align'
Plug 'neomake/neomake'            " linting and make

"Plug 'luochen1990/rainbow'      " rainbow-ify parentheses
"Plug 'hdima/python-syntax'

Plug 'jpmv27/vim-project', {'branch': 'jpmv27_master'}

Plug 'LaTeX-Box-Team/LaTeX-Box'

Plug 'reedes/vim-lexical'
Plug 'vimwiki/vimwiki'

" Colorschemes
Plug 'fneu/breezy'
"Plug 'tpope/vim-vividchalk'
Plug 'ajh17/spacegray.vim'
"Plug 'albertorestifo/github.vim'
Plug 'freeo/vim-kalisi'
Plug 'NLKNguyen/papercolor-theme'

" Add plugins to &runtimepath
call plug#end()

filetype plugin indent on

" UltiSnips
let g:UltiSnipsExpandTrigger="<C-e>"
"let g:UltiSnipsEditSplit="vertical"
"
" vim-indent-guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size=1
let g:indent_guides_start_level = 2

"" NERD Commenter
"let g:NERDSpaceDelims=1

" CtrlP
"let g:ctrlp_extensions = ['tag']
"let g:ctrlp_show_hidden = 1
"let g:ctrlp_follow_symlinks = 1
"let g:ctrlp_custom_ignore = {
"   \ 'file': '\v\.(fits|pyc|o)$'
"   \ }
"nnoremap <C-p> :<C-u>CtrlPLastMode<CR>

" vim-airline
let g:airline#extensions#tabline#enabled = 1
"let g:airline_powerline_fonts = 1

" rainbow
"let g:rainbow_active = 1

" tagbar
let g:tagbar_vertical = 10
let g:tagbar_autoclose = 1

" Deoplete
let g:deoplete#enable_at_startup = 1

" ----------------------------------------------------------------------------
" My settings
" ----------------------------------------------------------------------------
syntax on
set mouse=a		      " enable mouse for all modes
set history=50		  " keep 50 lines of command line history
set ruler		        " show the cursor position all the times
set showcmd		      " display incomplete commands
set tabstop=2       " tab size
set expandtab       " always use spaces as tab
set softtabstop=2
set shiftwidth=2
let &t_Co=256       " enable 256-color in terminal
set foldmethod=indent
set foldlevelstart=99   " unfold everything at the start
set laststatus=2        " always show statusline
set backspace=indent,eol,start     " make backspace work like most other apps
set scrolloff=5     " lines above/below cursor
set autoindent      " keep indentation on the nwe line
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set nojoinspaces               " Only one space after '.','?','!' when joining
set encoding=utf-8
set background=dark
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:·

" Make sure backup and undo directories are there
if !isdirectory($HOME."/.vim/backups")
    call mkdir($HOME."/.vim/backups", "p")
endif
if !isdirectory($HOME."/.vim/undos")
    call mkdir($HOME."/.vim/undos", "p")
endif
if !isdirectory($HOME."/.vim/swaps")
    call mkdir($HOME."/.vim/swaps", "p")
endif
set undofile backup
set backupdir=~/.vim/backups   " Set directory for backup files
set undodir=~/.vim/undos
set directory=~/.vim/swaps

let mapleader = ' '            " Use spacebar as leader
let maplocalleader = "\\"

" searching and moving
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch

" more naturall splitting
set splitbelow
set splitright

" only in v7.3 or higher
if v:version > 702
  set relativenumber
else
  set number
endif

" ----------------------------------------------------------------------------
" Mappings
" ----------------------------------------------------------------------------
let mapleader = ' '

" remove all highlights (search clear)
noremap <leader>sc :noh<CR>

" jk for escaping
inoremap jk <Esc>
"xnoremap jk <Esc>
cnoremap jk <C-c>

" Movement in insert mode
inoremap <C-h> <C-o>h
inoremap <C-l> <C-o>a
inoremap <C-j> <C-o>j
inoremap <C-k> <C-o>k

" window navigation with ctrl + hjkl
nnoremap <C-k> :wincmd k<CR>
nnoremap <C-j> :wincmd j<CR>
nnoremap <C-h> :wincmd h<CR>
nnoremap <C-l> :wincmd l<CR>

" edit my vimrc on a vertical split
nnoremap <leader>ev :e $MYVIMRC<cr>
nnoremap <leader>elv :e ~/.vimrc.local<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" find file -  open netrw
"nnoremap <leader>ff :e.<CR>
nnoremap <leader>ff :Files<CR>
nnoremap <leader>ft :Tags<CR>
nnoremap <leader>fd :e.<CR>


" move to next and previous buffers
nnoremap <leader>bn :bnext<CR>
nnoremap <leader>bp :bprevious<CR>
" buffer finder
nnoremap <leader>bb :Buffers<CR>
" delete buffer
nnoremap <leader>bd :bdelete<CR>
nnoremap <leader>bD :%bdelete<CR>

" toggle paste
nnoremap <leader>tp :set paste!<cr>
" toggle relative line number
nnoremap <leader>tr :set relativenumber!<CR>
" toggle tag bar
nnoremap <leader>tt :TagbarToggle<CR>
" toggle light/dark background
nnoremap <leader>tb :let &background = ( &background == "dark"? "light" : "dark" )<CR>
" toggle 80 character colorcolumn
nnoremap <leader>tc :let &colorcolumn = ( &colorcolumn == "80"? "" : "80" )<CR>
" toggle indent guides
nnoremap <leader>ti :IndentLinesToggle<cr>
" toggle spell check
function ToggleSpellCheck()
  if g:lexical#spell == 0
    let g:lexical#spell = 1
  else
    let g:lexical#spell = 0
  endif
  edit
endfunction
nnoremap <leader>ts :call ToggleSpellCheck()<CR>

" go to tag in a horizontal split
nnoremap <leader>gt :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
" go to tag in a vertical split
nnoremap <leader>gtv :vsp <CR>:exec("tag ".expand("<cword>"))<CR>

" git stuff
nnoremap <leader>gs :Gstatus<CR>

nnoremap <leader>; :Commands<CR>
xnoremap <leader>; :Commands<CR>

" ----------------------------------------------------------------------------
" FileType specific settings
" ----------------------------------------------------------------------------
" Python
autocmd FileType python setlocal tabstop=4 shiftwidth=4
autocmd FileType python :iabbrev imnp import numpy as np<CR>

" Latex
autocmd FileType tex setlocal shiftwidth=2 tabstop=2
let g:tex_conceal=""

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Local config
if filereadable($HOME . "/.vimrc.local")
  source ~/.vimrc.local
endif

" Spell check
augroup lexical
  autocmd!
  autocmd FileType markdown,mkd call lexical#init()
  autocmd FileType textile call lexical#init()
  autocmd FileType tex call lexical#init()
  autocmd FileType text call lexical#init()
augroup END

" neomake
"let g:neomake_python_enabled_makers = ['pyflakes']
autocmd! BufWritePost * Neomake

set background=dark
"set termguicolors

" vimwiki

let g:vimwiki_list = [{'path': '~/vimwiki/',
                     \ 'syntax': 'markdown', 'ext': '.md'}]
let g:nv_directories = ['~/vimwiki', ]
nnoremap <leader>nv :NV<CR>

" ----------------------------------------------------------------------------
" :Root | Change directory to the root of the Git repository
" ----------------------------------------------------------------------------
function! s:root()
  let root = systemlist('git rev-parse --show-toplevel')[0]
  if v:shell_error
    echo 'Not in git repo'
  else
    execute 'lcd' root
    echo 'Changed directory to: '.root
  endif
endfunction
command! Root call s:root()
