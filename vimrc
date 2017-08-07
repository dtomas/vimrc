" Pathogen load
filetype off

call pathogen#infect()
call pathogen#helptags()

set nocompatible
filetype plugin indent on

highlight RedundantWhitespace ctermbg=red guibg=red
match RedundantWhitespace /\s\+$\|\t/

noremap <silent> <F10> :NERDTreeToggle<CR>
let NERDTreeWinSize = 35 
let NERDTreeIgnore = ['\.pyc$', '\.pyo$', '\.swp$', '\~$', '__pycache__']

" VimTip 80: Restore cursor to file position in previous editing session
" " for unix/linux/solaris
set viminfo='10,\"100,:20,%,n~/.viminfo

set undofile                " Save undo's after file closes
set undodir=$HOME/.vim/undo " where to save undo histories
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo

set encoding=utf-8

" Disable read-only protection
set modifiable

" Disable backup files
set noswapfile
set nobackup

" Try to show at least three lines and two columns of context when
" scrolling
set scrolloff=8
set sidescrolloff=2

" Allow edit buffers to be hidden
set hidden

" Do not wrap line breaks
set nowrap

" Show line numbers
set number

set guioptions=m

let g:solarized_contrast="high"    "default value is normal
syntax enable
set background=light
colorscheme solarized

"set colorcolumn=100

":set expandtab
":set tabstop=4
":set shiftwidth=4

au BufRead,BufNewFile *.qml set filetype=qml

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_qml_checkers = []
" For Django projects
"let g:syntastic_python_pylint_args = ['--load-plugins', 'pylint_django']
let g:syntastic_python_flake8_args = ['--max-line-length', '100', '--max-complexity', '10', '--ignore=D100,D101,D105,D202,W503,D103,D102']

let g:jedi#show_call_signatures = 3

" For Python3 projects
"let g:syntastic_python_python_exec = 'python3'
"let g:jedi#force_py_version = 3
