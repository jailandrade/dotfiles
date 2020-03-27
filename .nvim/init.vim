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

set clipboard=unnamed

call plug#begin(stdpath('data') . '/plugged')

Plug 'scrooloose/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/syntastic'
Plug 'editorconfig/editorconfig-vim'
Plug 'elzr/vim-json'
Plug 'mxw/vim-jsx'
Plug 'othree/html5.vim'
Plug 'mattn/emmet-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'wakatime/vim-wakatime'
Plug 'shutnik/jshint2.vim'
Plug 'digitaltoad/vim-pug'
Plug 'leafgarland/typescript-vim'
Plug 'airblade/vim-gitgutter'
Plug 'herringtondarkholme/yats.vim'
Plug 'sheerun/vim-polyglot'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'junegunn/fzf'
Plug 'jceb/vim-orgmode'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
call plug#end()

let g:airline_theme='luna'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

set hidden

let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
    \ 'python': ['/usr/local/bin/pyls'],
    \ 'haskell': ['hie-wrapper', '--lsp'],
    \ }

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

let g:deoplete#enable_at_startup = 1
