set nocompatible

nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

set incsearch

set relativenumber
set number

set pastetoggle=<f5>

set laststatus=2
let g:airline_powerline_fonts = 1

set spell spelllang=en_gb
set complete+=kspell

syntax enable

set list
set listchars=tab:▸\ ,eol:¬

colorscheme Tomorrow-Night-Eighties 

set expandtab           " enter spaces when tab is pressed
set textwidth=120       " break lines when line length increases
set tabstop=4           " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=4        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line

" split
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set ruler

set wildmenu

set showcmd 

set showmatch

set encoding=utf-8

filetype off

" Vundle section start

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree.git'

"Plugin 'ctrlpvim/ctrlp.vim.git'

Plugin 'bling/vim-airline.git'

Plugin 'terryma/vim-multiple-cursors'

"Plugin 'davidhalter/jedi-vim.git'

"Plugin 'jistr/vim-nerdtree-tabs'

"Plugin 'reedes/vim-lexical.git'

call vundle#end()

filetype plugin indent on
