set nocompatible              " be iMproved, required
filetype off                  " required
syntax on

set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent

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
" nnoremap <leader>f :CtrlP<CR>
nnoremap <leader>r :CtrlPMixed<CR>
nnoremap <leader>w <C-W><C-W>
nnoremap <leader>t :CtrlPTag<CR>
nnoremap <leader>m :e#<CR>
nnoremap <leader>f :FZF<CR>
nnoremap <leader>,f :Ag<CR>

" let g:ctrlp_dont_split = 'nerdtree'

let NERDTreeShowHidden = 1

let g:ctrlp_custom_ignore = '\v[\/]vendor$'

let g:ctrlp_show_hidden = 1

set number
set ignorecase

" color file in .vim/colors
" colorscheme candystripe
colorscheme horseradish256

execute pathogen#infect()

