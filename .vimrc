" vim bundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format
Plugin 'gmarik/vundle'

" We could also add repositories with a ".git" extension
Plugin 'scrooloose/nerdtree.git'

" To get plugins from Vim Scripts, you can reference the plugin
" by name as it appears on the site
Plugin 'Buffergator'

" vim-go plugins
"
Plugin 'fatih/vim-go'

" Now we can turn our filetype functionality back on
call vundle#end()
filetype plugin indent on


" display settings
syntax enable
syntax on
set cul
set ruler
set showcmd
set scrolloff=7
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set number
set history=1000
set hlsearch
set incsearch
filetype on
set iskeyword+=_,$,@,%,#,-

" -------------
" key mappings 
" -------------
" replace tab with spaces
nmap tt :%s/\t/    /g<CR>

