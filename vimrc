if has('gui_running')
    source $VIMRUNTIME/mswin.vim
    behave mswin
endif

set nocompatible
set noswapfile

set ignorecase " Ignore case
set smartcase " be case sensitive when input has a capital letter
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

" Set default pymode python options
let g:pymode_options = 1

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1
let g:pymode_lint_ignore = "E501"  " ignore too long line

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

" Autoremove unused whitespaces
let g:pymode_utils_whitespaces = 0

Bundle 'nathanaelkane/vim-indent-guides'
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2
let g:indent_guides_enable_on_vim_startup = 1

Bundle 'davidhalter/jedi-vim'
Bundle 'scrooloose/nerdtree'
map <F2> :NERDTreeToggle<CR>

" Themes
Bundle 'altercation/vim-colors-solarized'

" The rest of your config follows here

set background=dark
if has('gui_running')
    set guifont=DejaVu\ Sans\ Mono\ 9
    colorscheme solarized
    hi cursor guifg=yellow guibg=red
    hi comment guifg=#80a0ff
    hi todo gui=bold guibg=purple4
    hi error guibg=red4
    hi visual guifg=NONE guibg=NONE
endif

filetype plugin indent on
