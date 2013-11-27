if has('gui_running')
    source $VIMRUNTIME/mswin.vim
    behave mswin
endif

" General " {{{
set nocompatible

set noswapfile

set hlsearch    " Highlight search
set ignorecase  " Ignore case
set smartcase   " Be case sensitive when input has a capital letter
set incsearch   " Incremental search
" " }}}

" Formatting " {{{
set tabstop=4       " Tell how many columns a tab counts for
set shiftwidth=4    " Tell how many columns text is indented with the reindent operations (<< and >>)
set softtabstop=4   " Tell how many spaces a <Tab> or a <BS> counts for
set expandtab       " Expand tab to spaces
set autoindent      " Auto indent depending on the file type
set textwidth=0     " Prevent auto-line break
" " }}}

" Visual " {{{
set linebreak
set showbreak=>

set listchars=eol:$,trail:·
" " }}}

" Scripts and Bundles " {{{
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

" Programming
Bundle 'Lokaltog/vim-easymotion'
Bundle 'davidhalter/jedi-vim'
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

" Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
let g:pymode_lint_write = 1 " Auto check on save
let g:pymode_lint_ignore = "E501"       " E501 line too long (137 > 79 characters) [pep8]
let g:pymode_lint_ignore .= ",E302"     " E302 expected 2 blank lines, found 0 [pep8]

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'

" Syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 1

" Autoremove unused whitespaces
let g:pymode_utils_whitespaces = 0

Bundle 'nathanaelkane/vim-indent-guides'
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2
let g:indent_guides_enable_on_vim_startup = 1


" Utility
Bundle 'scrooloose/nerdtree'
map <F2> :NERDTreeToggle<CR>


" Colorscheme
Bundle 'altercation/vim-colors-solarized'


if has('gui_running')
    set guifont=DejaVu\ Sans\ Mono\ 9
    set background=dark
    colorscheme solarized
    hi cursor guifg=yellow guibg=red
    hi comment guifg=#80a0ff
    hi todo gui=bold guibg=purple4
    hi error guibg=red4
    hi visual guifg=NONE guibg=NONE
else
    colorscheme default
    set background=dark

    " Disable the indent guides that cause black columns in console
    let g:indent_guides_enable_on_vim_startup = 0
endif

filetype plugin indent on  " Automatically detect file types.
" " }}}

" Fine tuning for file type
autocmd FileType python setlocal textwidth=120
autocmd FileType python set wrap
autocmd FileType css,html,htmlcheetah,htmldjango,rst,xhtml setlocal tabstop=2 shiftwidth=2 softtabstop=2

" Key mappings " {{{
nnoremap <silent> <C-H> :tabprevious<CR>
nnoremap <silent> <C-L> :tabnext<CR>
" move tab to left/right
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>
map ]} ]M
map [{ [M
nnoremap <leader>= :call pymode#TrimWhiteSpace()<CR>
" " }}}

set nofoldenable
