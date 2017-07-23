set nocompatible              " be iMproved, required
filetype off                  " required
syntax on

set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
set number
set ignorecase
set fileformats=unix
set scrolloff=2
set number
set showmatch
set history=300
set hlsearch
set ruler
set encoding=utf-8
set cursorline

" These are needed for vim airline to work
set laststatus=2
set ttimeoutlen=50

if has("autocmd")
  " Drupal *.module and *.install files.
  augroup module
    autocmd BufRead,BufNewFile *.module set filetype=php
    autocmd BufRead,BufNewFile *.install set filetype=php
    autocmd BufRead,BufNewFile *.test set filetype=php
    autocmd BufRead,BufNewFile *.inc set filetype=php
    autocmd BufRead,BufNewFile *.profile set filetype=php
    autocmd BufRead,BufNewFile *.view set filetype=php
  augroup END
endif
syntax on


let mapleader = ","
let g:mapleader = ","

nnoremap <leader>w :w!<CR>
nnoremap <leader>nt :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>
" nnoremap <leader>f :CtrlP<CR>
" nnoremap <leader>r :CtrlPMixed<CR>
nnoremap <leader>w <C-W><C-W>
" nnoremap <leader>t :CtrlPTag<CR>
nnoremap <leader>m :e#<CR>
nnoremap <leader>f :FZF<CR>
nnoremap <leader>,f :Ag<CR>
nnoremap <leader>,com :Commits
nnoremap <leader>,gst :Gstatus<CR>
nnoremap <leader>,pu :Gpush origin master
" nnoremap <leader>,setup :NERDTreeToggle<CR>
nnoremap <leader>t :tabn<CR>
nnoremap <leader>T :tabp<CR>
nnoremap <leader>O :tabnew<CR>

" let g:ctrlp_dont_split = 'nerdtree'

let NERDTreeShowHidden = 1
let NERDTreeIgnore = ['\.git$', '\.idea$']

let g:ctrlp_custom_ignore = '\v[\/]vendor$'

let g:ctrlp_show_hidden = 1

" color file in .vim/colors
" colorscheme candystripe
colorscheme horseradish256

set directory=/tmp
set backupdir=~/.vim/backups/

execute pathogen#infect()

" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

