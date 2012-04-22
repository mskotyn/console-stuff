set nocompatible
" See :h bs; 2 same as ":set backspace=indent,eol,start
set backspace=indent,eol,start
" Show the line and column number of the cursor position, separated by a comma. 
set ruler
" Show (partial) command in the last line of the screen.
set showcmd

set scrolljump=5                       " Number of lines to scroll when cursor gets off the screen.
set scrolloff=3                        " Number of lines to keep above and below the cursor.
set sidescrolloff=3                    " Number of columns to keep to the left and to the right of cursor.

" Both commands slow down the ui for remote host connection
set cursorline   " highlight the current line
"set cursorcolumn " highlight the current column

set novisualbell
set t_vb=
set splitbelow                          " Put the new window below the current one for splitting.
" Enable file type detection
filetype plugin indent on

set autoindent                          " Disable using :set noai
set smartindent                         " Disable using :set nosi
set shiftwidth=4                        " Number of spaces for (auto)indent
set softtabstop=4                       " Number of spaces insert/delete indent
set tabstop=4                           " Length of the TAB
"set sta
set expandtab                           " Replace TAB by spaces
set statusline=%-3.3n%f%h%m%r%w\[%{strlen(&ft)?&ft:'none'}]%=%-14(%l,%c%V%)%<%P
" Put a mode message on the last line.
set showmode

" Command-line completion operates in an enhanced mode.
set wildmenu

" When more than one match, list all matches and complete till longest common string.
set wildmode=list:longest

" The last window will have a status line always
set laststatus=2

set nowrap                              " Don't wrap lines.

set t_Co=256                            " Enable 256 colors.
"colo darkblue
colo wombat256                          " Use this color scheme
" Enable syntax highlighting
"syntax on                               " Override settings with defaults
syntax enable                           " Keep current color settings

set foldlevelstart=99                   " by default, open all folds
" The kind of folding used for the current window
set foldmethod=indent
set sm!

set completeopt=menu,longest,preview    " options for insert mode completion

set directory=~/.vimswaps,.,/tmp        " where to store swap files
set noswapfile                          " disable swap files, most of the time they are just annoying
set nobackup                            " don't make a (permanent) backup when saving files
set nowritebackup                       " don't make a (temporary) backup while saving files

" Ctrl+[hjkl] to navigate between windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Map Ctrl-Space to Ctr-x Ctrl-o (omnicomplete)
imap <Nul> <C-x><C-o>
" Show buffers list and prepare to switch buffer by F6
nmap <F6> :ls<CR>:b

" remove currently highlighted search by pressing Escape twice
"nnoremap <Esc><Esc> :nohlsearch<CR>

" Bind F5 to toggle tagbar window
"nmap <F5> :TagbarToggle<CR>

" Toggle Project
"nmap <F4> <Plug>ToggleProject

" Project plugin settings
"let g:proj_flags="imstST"
"let g:proj_window_width = 30

" Settings for python.vim
let python_highlight_builtins=1
let python_highlight_builtin_objs=1
let python_highlight_builtin_funcs=1
let python_highlight_exceptions=1
let python_highlight_string_formatting=1
let python_highlight_string_format=1
let python_highlight_string_templates=1
let python_highlight_indent_errors=1
let python_highlight_space_errors=1
let python_highlight_doctests=1
let python_highlight_all=1

" Load project specific vim script
autocmd BufRead,BufNewFile ~/sample_proj/* source ~/.vimproj/sample_proj.vim
