set nocompatible              " be iMproved, required

filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'JSON.vim'
Plugin 'c.vim'
Plugin 'a.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'othree/html5.vim'
Plugin 'mxw/vim-jsx'
Plugin 'moll/vim-node'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'vim-scripts/taglist.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'pangloss/vim-javascript'
Plugin 'w0rp/ale'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'mileszs/ack.vim'

call vundle#end()            " required

set encoding=utf-8
set noswapfile
set nobackup
set number
set expandtab
set history=100
set wrap
set showcmd
set ruler
set tabstop=2
set shiftwidth=2
set autoindent
set cindent

" set powerline
let g:Powerline_symbols='fancy'
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8

syntax on
filetype plugin indent on    " required
set hlsearch

" config nerdtree
:map <C-f> :NERDTree<CR>

let g:ale_fixers = {
\   'javascript': ['eslint'],
\}

let g:syntastic_javascript_checkers = ['eslint']
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_flow = 1
let g:ale_completion_enabled = 1
let g:jsx_ext_required = 0
let g:jsx_pragma_required = 1
