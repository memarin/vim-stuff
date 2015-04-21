set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
lugin 'gmarik/Vundle.vim'

"Plugins-------------------------------
Plugin 'tpope/vim-fugitive'
Plugin 'L9'

Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin '29decibel/codeschool-vim-theme'
Plugin 'tomtom/tcomment_vim'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'scrooloose/syntastic'
Plugin 'mileszs/ack.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-surround'
Plugin 'mattn/emmet-vim'
Plugin 'kien/ctrlp.vim'
Plugin 'ntpeters/vim-better-whitespace'

"-------------------------------
call vundle#end()
filetype plugin indent on


"THEME-------------------------------
color codeschool
"------------------------------------

"Leader key--------------------------
let mapleader=","
"------------------------------------

"Editor Styling"
set guifont=Monaco:h14
let g:NERDTreeWinPos = "left"
set guioptions-=T
set guioptions-=r
set go-=L
autocmd User Rails let b:surround_{char2nr('-')} = "<% \r %>"
:set cpoptions+=$
:set nu
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

"Tabs"
:set tabstop=4
:set shiftwidth=4
:set expandtab

"Nerdtree"
map <C-e> :NERDTreeToggle<CR>

"Airline"
set laststatus=2 t

"Easy Motion"
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)

"T-Comment"
nmap <Leader>c :TComment<CR>

"Tagbar"
nmap <Leader>a :TagbarToggle<CR>

"Emmet"
let g:user_emmet_leader_key='<C-z>'
