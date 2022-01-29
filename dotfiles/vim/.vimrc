" don't force compatibility with vi
set nocompatible

syntax enable

" Tab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent 

" Do not generate swap files
set noswapfile

" Undo directory
set nobackup
set undodir=~/.vim/undodir
set undofile

" Search while typing
set incsearch

" UI Tweaks
set number

" Search down in subfolders with :find <file>
" Provides tab-completiion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" Auto completion
" Ctrl+n
" Ctrl+x, ctrl+f for filenames

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'mbbill/undotree'

call plug#end()

colorscheme gruvbox
set background=dark

" Use space for extra commands
let mapleader = " "

" Go to different window
" Use Ctrl+w, v for a vertical new window (s for horizontal)
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" Show undotree with u
nnoremap <leader>u :UndotreeShow<CR>
