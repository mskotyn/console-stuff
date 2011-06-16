set nocompatible
set t_Co=256
"colo darkblue
colo wombat256
set shiftwidth=4
set ts=4
set sta
set expandtab
set statusline=%-3.3n\%f\%h%m%r%w\[%{strlen(&ft)?&ft:'none'}]%=%-14(%l,%c%V%)%<%P
set ai
set si

" Put a mode message on the last line.
set showmode

" Show (partial) command in the last line of the screen.
set showcmd

" Command-line completion operates in an enhanced mode.
set wildmenu

" When more than one match, list all matches and complete till longest common string.
set wildmode=list:longest

" Highlight the screen line of the cursor with CursorLine
set cursorline

" Show the line and column number of the cursor position, separated by a comma. 
set ruler

" See :h bs; 2 same as ":set backspace=indent,eol,start
set backspace=2

" The last window will have a status line always
set laststatus=2

" Enable file type detection
filetype plugin indent on

" Enable syntax highlighting
"syntax on " Override settings with defaults
syntax enable " Keep current color settings

" The kind of folding used for the current window
set foldmethod=indent

" Ctrl+[hjkl] to navigate between windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

