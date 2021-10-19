"
"                __  ______  _______   __              __
"               / / / / __ \/ ____/ | / /___ _      __/ /
"              / /_/ / /_/ / /   /  |/ / __ \ | /| / / /
"             / __  / ____/ /___/ /|  / /_/ / |/ |/ /_/
"            /_/ /_/_/    \____/_/ |_/\____/|__/|__(_)
"
" .vimrc developed and maintained by HPCNow! staff


" ----------------------------------------------------------------------------
" PLUGINS INSTALLATION WITH VUNDLE
" ----------------------------------------------------------------------------

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'davidhalter/jedi-vim'
Plugin 'scrooloose/syntastic'
"Plugin 'klen/python-mode'
"Plugin 'edkolev/tmuxline.vim'
"Plugin 'Shougo/unite.vim'
"Plugin 'zxqfl/tabnine-vim'
call vundle#end()            " required

" filetype plugin indent on    " Essential for filetype plugins.
" To ignore plugin indent changes, instead use:
filetype plugin on


" ----------------------------------------------------------------------------
" OPTIONS
" ----------------------------------------------------------------------------
set encoding=utf-8
set nocompatible            " be iMproved, required
filetype off                " required
set autoindent              " Carry over indenting from previous line
set autoread                " Don't bother me hen a file changes
set autowrite               " Write on :next/:prev/^Z
set backspace=indent,eol,start
                            " Allow backspace beyond insertion point
set cindent                 " Automatic program indenting
set cinkeys-=0#             " Comments don't fiddle with indenting
set cino=                   " See :h cinoptions-values
set commentstring=\ \ #%s   " When folds are created, add them to this
set copyindent              " Make autoindent use the same chars as prev line
set cryptmethod=blowfish2   " Use a stronger cipher than the default
set directory-=.            " Don't store temp files in cwd
set encoding=utf8           " UTF-8 by default
set expandtab               " No tabs
set fileformats=unix,dos,mac  " Prefer Unix
set fillchars=vert:\ ,stl:\ ,stlnc:\ ,fold:-,diff:┄
                            " Unicode chars for diffs/folds, and rely on
                            " Colors for window borders
silent! set foldmethod=marker " Use braces by default
set formatoptions=tcqn1     " t - autowrap normal text
                            " c - autowrap comments
                            " q - gq formats comments
                            " n - autowrap lists
                            " 1 - break _before_ single-letter words
                            " 2 - use indenting from 2nd line of para
set hidden                  " Don't prompt to save hidden windows until exit
set history=200             " How many lines of history to save
set hlsearch                " Hilight searching
set ignorecase              " Case insensitive
set incsearch               " Search as you type
set infercase               " Completion recognizes capitalization
set laststatus=2            " Always show the status bar
set linebreak               " Break long lines by word, not char
set list                    " Show whitespace as special chars - see listchars
set listchars=tab:»\ ,extends:›,precedes:‹,nbsp:·,trail:· " Unicode characters for various things
set matchtime=2             " Tenths of second to hilight matching paren
set nomodeline              " teh hackerz!!!1
silent! set mouse=nvc       " Use the mouse, but not in insert mode
set nobackup                " No backups left after done editing
set nonumber                " No line numbers to start
set visualbell t_vb=        " No flashing or beeping at all
set nowritebackup           " No backups made while editing
set printoptions=paper:letter " US paper
set ruler                   " Show row/col and percentage
set scroll=4                " Number of lines to scroll with ^U/^D
set scrolloff=15            " Keep cursor away from this many chars top/bot
set sessionoptions-=options " Don't save runtimepath in Vim session (see tpope/vim-pathogen docs)
set shiftround              " Shift to certain columns, not just n spaces
set shiftwidth=2            " Number of spaces to shift for autoindent or >,<
set shortmess+=A            " Don't bother me when a swapfile exists
set showbreak=              " Show for lines that have been wrapped, like Emacs
set showmatch               " Hilight matching braces/parens/etc.
set sidescrolloff=3         " Keep cursor away from this many chars left/right
set smartcase               " Lets you search for ALL CAPS
set softtabstop=2           " Spaces 'feel' like tabs
set suffixes+=.pyc          " Ignore these files when tab-completing
set tabstop=2               " The One True Tab
set textwidth=0             " No wrapping by default
set wildmenu                " Show possible completions on command line
set wildmode=list:longest,full " List all options and complete
set wildignore=*.class,*.o,*~,*.pyc,.git,node_modules  " Ignore certain files in tab-completion


" ----------------------------------------------------------------------------
" SYNTASTIC SETUP
" ----------------------------------------------------------------------------
let g:syntastic_check_on_open=1         " check for errors when file is loaded
let g:syntastic_sh_checkers = ['shellcheck']
let g:syntastic_cs_checkers = ['code_checker']
let g:syntastic_mode_map={ 'mode': 'active',
                     \ 'active_filetypes': [],
                     \ 'passive_filetypes': ['html', 'handlebars'] }


" ----------------------------------------------------------------------------
" SYNTAX HIGHLIGHTING & COLORS SETUP
" ----------------------------------------------------------------------------
" enable syntax highlighting
syntax enable
set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set laststatus=2
" show line numbers
set number
" set tabs to have 4 spaces
set ts=4
" indent when moving to the next line while writing code
set autoindent
" expand tabs into spaces
set expandtab
" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4
" show a visual line under the cursor's current line
set cursorline
" show the matching part of the pair for [] {} and ()
set showmatch
" enable all Python syntax highlighting features
let python_highlight_all = 1
" airline
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline_enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#fnamemod = ':t'
"let g:airline_theme = 'kolor'
"let g:airline_theme = 'powerlineish'
let g:airline_theme = 'murmur'
set t_Co=256
set hidden
"Tmuxline
"let g:airline#extensions#tmuxline#enabled = 0
"let g:tmuxline_theme = 'icebert'

if exists('&colorcolumn')
    highlight ColorColumn ctermbg=DarkGrey
    set colorcolumn=120
endif

highlight ExtraWhitespace ctermbg=red guibg=red
" Show trailing whitespace:
match ExtraWhitespace /\s\+$/
" Show trailing whitespace and spaces before a tab:
"match ExtraWhitespace /\s\+$\| \+\ze\t/
" Show tabs that are not at the start of a line:
"match ExtraWhitespace /[^\t]\zs\t\+/
" Show spaces used for indenting (so you use only tabs for indenting).
"match ExtraWhitespace /^\t*\zs \+/

filetype plugin indent on

" ----------------------------------------------------------------------------
" KEY MAPS
" ----------------------------------------------------------------------------

" To open a new empty buffer
nmap <leader>T :enew<cr>
" Move to the next buffer
nmap <F12> :bnext<CR>
" Move to the previous buffer
nmap <F11> :bprevious<CR>
" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<CR>
" Show all open buffers and their status
nmap <leader>bl :ls<CR>
"nmap <F8> :TagbarToggle<CR>
" Nerdtree
map <F10> :NERDTreeToggle<CR>


" ----------------------------------------------------------------------------
" AUTOCMD
" ----------------------------------------------------------------------------

autocmd VimResized * :wincmd =  " Resize panes when window/terminal gets resize
augroup vimrc_autocmds
    autocmd!
    " highlight characters past column 120
    "autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
    "autocmd FileType python match Excess /\%120v.*/
    autocmd FileType python set nowrap
    augroup END

let g:tagbar_width=35
let g:tagbar_autofocus=1
