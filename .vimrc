" Vundle
" ======
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'pangloss/vim-javascript'
Plugin 'elzr/vim-json'

call vundle#end()

filetype plugin indent on

" General
" =======

set cursorline
set number
set list
set background=dark
set mouse=a
set nowrap

set expandtab
set shiftwidth=2
set softtabstop=2
set smartindent

set wildmenu

set shellcmdflag=-ic

autocmd FileType html setlocal expandtab shiftwidth=2 softtabstop=2
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4
autocmd FileType javascript setlocal expandtab shiftwidth=2 softtabstop=2

" make searches case-insensitive, unless they contain upper-case letters
set ignorecase
set smartcase
set incsearch

" Syntastic
" =========

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:npm_dir = substitute(system('npm bin'), '\n\+$', '', '')

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height = 5

" Work-specific settings
let g:syntastic_python_flake8_post_args='--ignore=E501,E128,E713,E265,E126,E113,F403,F503,E402,E226'
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = g:npm_dir . '/eslint'
"let g:syntastic_javascript_checkers = ['jshint']
"let g:syntastic_debug=5

" vim-javascript
" ==============

let g:javascript_enable_domhtmlcss = 1


" vim-json
" ========

let g:vim_json_syntax_conceal = 0

" jedi-vim
" ========

let g:jedi#show_call_signatures = "2"
autocmd FileType python setlocal completeopt-=preview
