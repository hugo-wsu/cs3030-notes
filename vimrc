"=================================================================
"  Revision  103
"  Modified  Sunday, 28 February 2021
"=================================================================
set exrc                                " if vimrc in local folder execute it
set encoding=utf-8
scriptencoding utf-8
setlocal foldmarker={,}
setlocal foldmethod=marker
setlocal foldcolumn=1
setlocal keywordprg=:help

"=================================================================
" Set the Leader Key {
"=================================================================
let g:mapleader = "\<Space>"            " set leader key
"} ===

"=================================================================
" Behavior {}
"=================================================================
set nowritebackup              " only in case you don't want a backup file while editing
set noswapfile                 " no swap files
set nobackup                   " Just overwrite the file
set printoptions=paper:letter,number:y,portrait:y
set shortmess+=filmnrxoOtT     " Abbrev. of messages (avoids 'hit enter')
set formatoptions+=cq          " Basic formatting of text and comments
set formatoptions-=t           " Don't automatically wrap text when typing
set wildmode=list:longest,full " Command <Tab> completion, list matches and
"  complete the longest common part, then,
"  cycle through the matches
set wildchar=<Tab>             " Use tab to move in the menu
"set wildchar=<Nul>
set mouse=a                    " on OSX press ALT and click
set backspace=2                " Set backspace
set backspace=indent,eol,start " Allow backspace over listed types

" Bind nohl
" Removes highlight of your last search
" ``<C>`` stands for ``CTRL`` and therefore ``<C-n>`` stands for ``CTRL+n``
noremap <C-n> <Esc>:nohl<CR>
inoremap <C-n> <Esc>:nohl<CR>i
"} ===


"=================================================================
" cTags {
"=================================================================
"let g:gen_tags#verbose = 1        " Give more feedback
let g:gen_tags#ctags_auto_gen = 1  " Auto generate ctags if in git
let g:gen_tags#use_cache_dir  = 1  " Put tags in git or else home cache
let g:loaded_gentags#gtags    = 1  " Disable gtags support not needed
nnoremap <Leader>t :GenCtags<CR>   " if tags didn't autogen force with <Leader>t

" Backup old style ctags generator
nnoremap <Leader>T
            \ :silent execute '!(rm tags)'<CR>
            \ :silent execute '!(ctags-exuberant -R -f %:p:h/tags *)&'<CR>
            \ :redraw!<CR>
            \ :echom 'Generated cTags'<CR>
            \ execute 'set tags=./tags;~/.vim/tags;tags;'
set tags=./tags;~/.vim/tags;tags;
"} ===

"=================================================================
" Vim Editing and Behavior {
"=================================================================
syntax enable                           " Enables syntax highlighing
set clipboard=unnamedplus               " Copy paste between vim and everything else
set nocompatible               " Be vim
filetype plugin indent on
if !has('nvim') && has('nolangremap')
    set nolangremap                " avoid mapping breaks
endif
set modeline                   " Files can use modeline(s)
set modelines=10               " Check top and bottom 10 lines for modelines(s)
set hidden                     " Required to keep multiple buffers open multiple buffers
set wildmenu                   " Use the wildmenu
                               "  then, cycle through the matches
set nostartofline              " Stay on current char on page commands
set nowrap                              " Display long lines as just one line
set visualbell                 " Don't beep, flash the screen instead
set belloff=all                         " Disable sound
set scrolloff=8                " Use a 8 line (horizontal) scroll offset
set noerrorbells
set sidescrolloff=5            " Use a 5 column (virtual) scroll offset
set virtualedit=onemore        " Allow you to move the cursor to the newline
set termencoding=utf-8         " Lets try using Unicode
set wildmenu
set pumheight=10                        " Makes popup menu smaller
set cmdheight=2                         " More space for displaying messages
set laststatus=0                        " Always display the status line
set undodir=~/.vim/undodir              " For undoing history
set undofile

"map sort function to a key
vnoremap <Leader>s :sort<CR>
"} ===



"=================================================================
" Vim Look and Decorations {
"=================================================================
set ruler                   " Show the line / column number of cursor
set showcmd                 " Show the partially completed command
set number                  " Display line number"
set relativenumber                      " Set relative line numbers
set numberwidth=5           " Use 5 spaces for number column"
set textwidth=79            " Width of document (used by gd)
set nowrap                  " Don't automatically wrap on load
set commentstring=\ #\ %s   " This how fold markers look
set cursorline              " Highlight the current line
set visualbell              " Visual bell instead of beeping
set showtabline=2                       " Always show tabs
set signcolumn=yes                      " Add extra column for diagnostic
" Changes the shape of the cursor depending on the current mode
"if has('gui_running')
"    set guicursor=n-v-c:block-Cursor
"    set guicursor+=i:ver100-iCursor
"    set guicursor+=n-v-c:blinkon0
"    "set guicursor+=i:blinkwait10
"else
"    let &t_SI = "\<Esc>[6 q"
"    let &t_SR = "\<Esc>[4 q"
"    let &t_EI = "\<Esc>[2 q"
"endif
"} ===


"=================================================================
" Vim Search Options {
"=================================================================
set ignorecase             " Ignore case in search patterns
set infercase              " Don't ignore case in auto completion
                           "  but do Ignore it in search patterns
set smartcase              " Don't ignore case if pattern contains it
set incsearch              " Show the 'best match so far'
set wrapscan               " Search will wrap around the file
set hlsearch               " Highlight all matches
"} ===


"=================================================================
" Vim Indent and Programming Options {
"=================================================================
set autoindent                 " Keep indent level on new line
set nosmartindent              " Intelligent indenting for source code
set cindent                    " Intelligent indenting for source code
set cinkeys=0{,0},!^F,o,O,e    " default is: 0{,0},0),:,0#,!^F,o,O,e
set showmatch                  " Show matching brackets / parenthesis
set matchtime=5                " Show matching character for .3s
"} ===

"=================================================================
" Vertical indenting {
"=================================================================
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=4 softtabstop=4             " Insert 4 spaces for a tab
set shiftwidth=4                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
"} ===


"=================================================================
"  Revision  106
"  Modified  Thursday, 01 April 2021
"=================================================================

"=================================================================
" Mappings and Keybindings {
"     Every unnecessary keystroke that can be saved is good for
"     your health :)
"=================================================================
" zM   "Close all folds
" zR   "Open all folds

" Easier moving between tabs
nnoremap <Leader>n <Esc>:tabprevious<CR>
nnoremap <Leader>m <Esc>:tabnext<CR>

" Sort visual mode selected lines
vnoremap <Leader>s :sort<CR>

nnoremap <C-/> <Esc>:nohl<CR>   " Remove highlight from search
inoremap <C-/> <Esc>:nohl<CR>i  " Remove hightight from search

" mac os make <FN+Arrows> work as CTRL+Arrows
if has('macunix')
    map <ESC>[5~ <C-Up>
    map <ESC>[6~ <C-Down>
    map <ESC>OH <C-Left>
    map <ESC>OF <C-Right>
endif

" You can't stop me
cmap w!! w !sudo tee %
" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>

" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" TAB in general mode will move to text buffer
nnoremap <Leader><TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
" use ctr:+hjkl to move between split/vsplit panels
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da

" Tabs Navigation
nnoremap <Leader>1 1gt
nnoremap <Leader>2 2gt
nnoremap <Leader>3 3gt
nnoremap <Leader>4 4gt
nnoremap <Leader>5 5gt
nnoremap <Leader>6 6gt
nnoremap <Leader>7 7gt
nnoremap <Leader>8 8gt
nnoremap <Leader>9 9gt
nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>

" Copy and paste
"set clipboard=unnamed
"if has('clipboard') && !has('gui_running')
"    vnoremap <C-y> "+y
"    vnoremap <C-d> "+d
"    vnoremap <C-p> "+p
"    inoremap <C-v> <C-r><C-o>+
"endif

"} ===

"=================================================================
" Shift-K Help support {
"=================================================================
" Use <Shift-K> to lookup help for word under the cursor
augroup shift-K
    autocmd!
    autocmd FileType cpp set keywordprg=cppman
    autocmd FileType c set keywordprg=man\ -S3
augroup END
"} ===
