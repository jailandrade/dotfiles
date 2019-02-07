set nocompatible
set cursorline

" enable syntax
syntax on
syntax enable

" use this for show lightline
set laststatus=2

" Indentation
set autoindent

" set numbers line
set number

" set ignore case sensitive
set ignorecase

" hightlight search
set hlsearch

" format unix
set ffs=unix

" To enable moude
set mouse=a

" To use backspace
set backspace=indent,eol,start
set backspace=2

" tabs
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" paste mode
set pastetoggle=<F3>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

"copy (write) highlighted text to .vimbuffer
"vmap <C-c> y:new ~/.vimbuffer<CR>VGp:x<CR> \| :!cat ~/.vimbuffer \| clip.exe
"<CR><CR>
"" paste from buffer
map <C-v> :r ~/.vimbuffer<CR>

" fish shell
set shell=/bin/bash

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'pangloss/vim-javascript'
Plugin 'rust-lang/rust.vim'
Plugin 'derekwyatt/vim-scala'
Plugin 'elixir-lang/vim-elixir'
Plugin 'scrooloose/nerdtree'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'lumiliet/vim-twig'
Plugin 'elzr/vim-json'
Plugin 'mxw/vim-jsx'
Plugin 'stephpy/vim-yaml'
Plugin 'stanangeloff/php.vim'
Plugin 'isRuslan/vim-es6'
Plugin 'othree/html5.vim'
Plugin 'mattn/emmet-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'wakatime/vim-wakatime'
Plugin 'shutnik/jshint2.vim'
Plugin 'guns/vim-clojure-static'
Plugin 'tpope/vim-fireplace'
Plugin 'eagletmt/ghcmod-vim'
Plugin 'fatih/vim-go'
Plugin 'digitaltoad/vim-pug'
Plugin 'leafgarland/typescript-vim'
Plugin 'klen/python-mode'
Plugin 'jmcomets/vim-pony'
Plugin 'rgrinberg/vim-ocaml'
Plugin 'fidian/hexmode'

call vundle#end()
filetype plugin indent on

let g:airline_theme='luna'
