set nocompatible
syntax on
filetype plugin indent on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
Plugin 'flazz/vim-colorschemes'

Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'vim-syntastic/syntastic'

Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'majutsushi/tagbar'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-scripts/a.vim' 

Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'Raimondi/delimitMate' 

Plugin 'jez/vim-superman'

Plugin 'christoomey/vim-tmux-navigator'

Plugin 'jez/vim-c0'
Plugin 'jez/vim-ispc'
Plugin 'kchmck/vim-coffee-script'
Plugin 'benmills/vimux'
Plugin 'itchyny/lightline.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'sheerun/vim-polyglot'
Plugin 'Valloric/YouCompleteMe'
Plugin 'wlangstroth/vim-racket'
call vundle#end()

filetype plugin indent on 
set backspace=indent,eol,start
set ruler
set showcmd
set incsearch
set hlsearch
set nu
syntax on 

set mouse=a

inoremap jj <Esc>`^

set laststatus=2


hi clear SignColumn 

"let g:airline_detect_paste=1

"let g:airline#extensiions#tabline#enabled=1

"let g:airline_theme='solarized'

colorscheme murphy

nmap <silent> <leader>t :NERDTreeTabsToggle<CR>

let g:syntastic_error_symbol= '✘'
let g:syntastic_warning_symbol = "▲"
augroup mySyntastic
	  au!
	    au FileType tex let b:syntastic_mode = "passive"
    augroup END


set tags=./tags;,~/.vimtags
" Sensible defaults
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1
" ----- majutsushi/tagbar settings -----
" Open/close tagbar with \b
nmap <silent> <leader>b :TagbarToggle<CR>

"let g:airline#extensions#hunks#non_zero_only = 1 

let delimitMate_expand_cr = 1
augroup mydelimitMate
 au!
 au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
 au FileType tex let b:delimitMate_quotes = ""
 au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
 au FileType python let b:delimitMate_nesting_quotes = ['"',"'"]
augroup END

noremap K :SuperMan <cword><CR>

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

let g:lightline = {}
let g:lightline.colorscheme = 'molokai'

if $COLORTERM == 'gnome-terminal'
  set t_Co=256
  endif

let g:lightline = {
  \   'colorscheme': 'molokai',
  \   'active': {
  \     'left':[ [ 'mode', 'paste' ],
  \              [ 'gitbranch', 'readonly', 'filename', 'modified' ]
  \     ]
  \   },
	\   'component': {
	\     'lineinfo': ' %3l:%-2v',
	\   },
  \   'component_function': {
  \     'gitbranch': 'fugitive#head',
  \   }
  \ }
let g:lightline.separator = {
	\   'left': '', 'right': ''
  \}
let g:lightline.subseparator = {
	\   'left': '', 'right': '' 
  \}

let g:lightline.tabline = {
  \   'left': [ ['tabs'] ],
  \   'right': [ ['close'] ]
  \ }

set showtabline=2  " Show tabline
set guioptions-=e  " Don't use GUI tabline

set foldmethod=indent
set foldlevel=99

nnoremap <space> za

let g:SimpylFold_docstring_preview=1

let g:ycm_key_list_previous_completion = ['<S-TAB>','<Up>']
let g:ycm_autoclose_preview_window_after_completion = 1
let g:syntastic_enable_racket_racket_checker = 1
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords"
