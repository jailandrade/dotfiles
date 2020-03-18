set nocompatible
set cursorline
set nomodeline

" enable syntax
syntax on
syntax enable
colorscheme gruvbox
set background=dark

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
set softtabstop=2 tabstop=2 shiftwidth=2 expandtab

" paste mode
set pastetoggle=<F3>


"copy (write) highlighted text to .vimbuffer
"vmap <C-c> y:new ~/.vimbuffer<CR>VGp:x<CR> \| :!cat ~/.vimbuffer \| clip.exe
"<CR><CR>
"" paste from buffer
map <C-v> :r ~/.vimbuffer<CR>

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'scrooloose/syntastic'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'elzr/vim-json'
Plugin 'mxw/vim-jsx'
Plugin 'othree/html5.vim'
Plugin 'mattn/emmet-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'wakatime/vim-wakatime'
Plugin 'shutnik/jshint2.vim'
Plugin 'digitaltoad/vim-pug'
Plugin 'leafgarland/typescript-vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'herringtondarkholme/yats.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'scrooloose/nerdtree'
Plugin 'autozimu/languageclient-neovim'


call vundle#end()
filetype plugin indent on

let g:airline_theme='luna'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

set runtimepath+=~/.vim-plugins/LanguageClient-neovim
