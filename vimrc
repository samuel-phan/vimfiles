if has('gui_running')
    set guifont=DejaVu\ Sans\ Mono\ 9
    source $VIMRUNTIME/mswin.vim
    behave mswin
endif

set nocompatible
set ignorecase " Ignore case
set incsearch " Incremental search
set hlsearch " Highlight search

set linebreak
set showbreak=>

set ts=4 " tab stop : tell how many columns a tab counts for
set sw=4 " shift width : tell how many columns text is indented with the reindent operations (<< and >>)
set sts=4 " soft tab stop : tell how many spaces a <Tab> or a <BS> counts for
set et " expand tab to spaces
set ai " auto indent depending on the file type

set listchars=eol:$,trail:·

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" The bundles you install will be listed here
Bundle 'Lokaltog/vim-easymotion'
Bundle 'klen/python-mode'
Bundle 'davidhalter/jedi-vim'
Bundle 'scrooloose/nerdtree'
map <F2> :NERDTreeToggle<CR>

" Themes
Bundle 'junegunn/seoul256.vim'
Bundle 'altercation/vim-colors-solarized'

filetype plugin indent on

" The rest of your config follows here

"highlight normal guibg=#333333 guifg=grey
colorscheme seoul256
set background=dark

"hi question gui=NONE guifg=green
"hi moremsg gui=NONE guifg=green
"hi modemsg gui=NONE guifg=white
"hi visual guifg=blue guibg=cyan
hi cursor guifg=yellow guibg=red
"hi string guifg=#ff6060
"hi Statement gui=NONE
"hi type gui=NONE
"hi errormsg guibg=red guifg=black
"hi constant guifg=#ff8080
"hi title gui=none


" Python-mode
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
let g:pymode_rope = 0

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0

