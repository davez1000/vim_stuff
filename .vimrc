set nocompatible              " be iMproved, required
filetype off                  " required
syntax on

set hidden
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
set nowrap
set relativenumber

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
nnoremap <leader>f :FZF!<CR>
nnoremap <leader>r :BTags<CR>
nnoremap <leader>,f :Ag!<CR>
" nnoremap :com :Commits
" nnoremap :gst :Gstatus
" nnoremap :gpu :Gpush
" nnoremap :dif :Gdiff
" nnoremap <leader>,setup :NERDTreeToggle<CR>
nnoremap <leader>t :tabn<CR>
nnoremap <leader>T :tabp<CR>
nnoremap <leader>O :tabnew<CR>
nnoremap <leader>q :q!<CR>
" Move current split pane into new tab.
nnoremap <leader>,T <C-W><S-T>
" Rotate current pane
nnoremap <leader>,* <C-W>r
" Remove highlighting from searches.
nnoremap <leader>,n :noh<CR>

" Position NERDTree window width.
nnoremap <leader>- <C-W><<CR>
nnoremap <leader>= <C-W>><CR>

" CTAGS, pick instead of choosing first one
nnoremap <C-]> g<C-]>

" Reload .vimrc.
nnoremap <C-S-R> :source $MYVIMRC<CR>

" Copy yanked text into command mode.
cnoremap <leader>p <C-R>"

" let g:ctrlp_dont_split = 'nerdtree'

let NERDTreeShowHidden = 1
let NERDTreeIgnore = ['\.git$', '\.idea$']
let NERDTreeWinSize = 60

" let g:ctrlp_custom_ignore = '\v[\/]vendor$'

" FZF open in tabs / splits etc.
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-h': 'split',
  \ 'ctrl-v': 'vsplit' }

let g:ctrlp_show_hidden = 1

" color file in .vim/colors
" colorscheme candystripe
colorscheme horseradish256

set directory=/tmp
set backupdir=~/.vim/backups/

let g:syntastic_php_phpcs_args = " --standard=Drupal --extensions=php,module,inc,install,test,profile,theme"

if executable('ag') 
  set grepprg=ag\ --nogroup\ --nocolor\ --column
  set grepformat=%f:%l:%c%m
endif

" Toggle relative numbers if need be.
function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
  else
    set relativenumber
  endif
endfunc
nnoremap <C-n> :call NumberToggle()<cr>

let NERDTreeShowLineNumbers=1

" autocmd VimEnter * NERDTree
" autocmd BufEnter * NERDTreeMirror
" autocmd VimEnter * wincmd w

execute pathogen#infect()

" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

