" Pathogen load
filetype off

call pathogen#infect()
call pathogen#helptags()

set nocompatible
filetype plugin indent on

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

set colorcolumn=80

:set expandtab
:set tabstop=4
:set shiftwidth=4

au BufRead,BufNewFile *.qml set filetype=qml

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_pylint_args = ['--load-plugins', 'pylint_django']

let g:jedi#show_call_signatures = 3
