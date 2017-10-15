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

" fish shell
set shell=/bin/bash

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdcommenter'
Plugin 'pangloss/vim-javascript'
Plugin 'tpope/vim-rails'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'rust-lang/rust.vim'
Plugin 'derekwyatt/vim-scala'
Plugin 'elixir-lang/vim-elixir'
Plugin 'scrooloose/nerdtree'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'elzr/vim-json'
Plugin 'mxw/vim-jsx'
Plugin 'othree/html5.vim'
Plugin 'mattn/emmet-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'wakatime/vim-wakatime'

call vundle#end()
filetype plugin indent on

let g:airline_theme='luna'
