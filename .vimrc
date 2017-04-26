" vim bundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format
" Plugin 'gmarik/vundle'

" We could also add repositories with a ".git" extension
Plugin 'scrooloose/nerdtree.git'

" To get plugins from Vim Scripts, you can reference the plugin
" by name as it appears on the site
" Plugin 'Buffergator'

" vim-go plugins
"
Plugin 'fatih/vim-go'

" indentpython
Plugin 'vim-scripts/indentpython.vim'

"indentlines
Plugin 'Yggdroot/indentLine'

"javascript
Plugin 'pangloss/vim-javascript'
Plugin 'crusoexia/vim-javascript-lib'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'othree/javascript-libraries-syntax.vim'

"command t
Plugin 'wincent/command-t'

"ctrlP
Plugin 'ctrlp.vim'

"antlr
Plugin 'dylon/vim-antlr'

"syntastic
Plugin 'Syntastic'

"ack
Plugin 'mileszs/ack.vim'

"fugitive
Plugin 'fugitive.vim'
" Now we can turn our filetype functionality back on
call vundle#end()

execute pathogen#infect()

filetype plugin indent on

" display settings
syntax enable
syntax on
set cul
set ruler
set showcmd
set scrolloff=7
set autoindent
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set number
set relativenumber
set history=1000
set hlsearch
set incsearch
filetype on
set iskeyword+=_,$,@,%,#,-
set mouse=n

" -------------
" key mappings 
" -------------

let mapleader = "."

" replace tab with spaces
nmap tt :%s/\t/    /g<CR>

" automatically check go lint when save
autocmd BufWritePost, FileWritePost *.go execute 'Lint' | cwindow

" open nerdtree when vim startup
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <C-n> :NERDTreeToggle<CR>

let g:go_fmt_command="goimports"

au BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 expandtab autoindent fileformat=unix
set encoding=utf-8
let g:indentLine_char = '¦'
let g:indentLine_color_term = 239

set conceallevel=1
let g:indentLine_conceallevel=1

set cursorcolumn
set cursorline

colorscheme monokai
set t_Co=256  " vim-monokai now only support 256 colours in terminal.

set directory-=.

" commandt
nmap <silent> <Leader>t <Plug>(CommandT)
nmap <silent> <Leader>b <Plug>(CommandTBuffer)
nmap <silent> <Leader>j <Plug>(CommandTJump)
set wildignore+=*.class,*.pyc
set wildignore+=**/node_modules
set wildignore+=**/tmp/cache
let g:CommandTNeverShowDotFiles=1
lef g:CommandTScanDotDirectories=1

" insert end/front of lines
nmap <Leader>ee vip<C-V>$A
nmap <Leader>ii vip<C-V>$I
nmap <Leader><CR> :noh<CR> 
nmap <Leader>a :Ack!<CR>

" antlr4
au BufRead,BufNewFile *.g4 set filetype=antlr4

set clipboard=unnamed

if executable('ag')
  "use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " for using ag with ack.vim
  let g:ackprg = 'ag --vimgrep'

  " use ag in ctrlp for listing files. lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --ignore ''.git'' --ignore ''.DS_Store'' --ignore ''node_modules'' --hidden -g ""'

  " ag is fast enough that we don't need to cache
  let g:ctrlp_use_caching = 0
endif

" set javascript-libraries-syntax used libraries
let g:used_javascript_libs = 'flux,react,underscore'

" syntastic settings
let g:syntastic_mode_map = { 'mode': 'passive',
  \ 'active_filetypes': ['javascript', 'sh'],
  \ 'passive_filetypes': [] }
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" disable concealing of double quotes
let g:vim_json_syntax_conceal = 0
