snmapet nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

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
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'wincent/command-t'
Plugin 'tpope/vim-endwise'
Plugin 'jiangmiao/auto-pairs'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'chrisbra/vim-diff-enhanced'
Plugin 'tpope/vim-rails'

"--------------------------------------
call vundle#end()
filetype plugin indent on

"THEME---------------------------------
set background=dark
color codeschool
"--------------------------------------

"Leader key----------------------------
let mapleader=","
"--------------------------------------

"Editor Styling"
set guifont=Monaco:h12
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
set laststatus=2

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

"vim-better-whitespace"
map <Leader>w :StripWhitespace<CR>

"vim-indent-guides"
" colorscheme tir_black
set ts=4 sw=4 et
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1

"BuffExplorer"
map <Leader>e :ToggleBufExplorer<CR>

"Fugitive"
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit -v -q<CR>
nnoremap <leader>ga :Gcommit --amend<CR>
nnoremap <leader>gt :Gcommit -v -q %<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>ge :Gedit<CR>
nnoremap <leader>gr :Gread<CR>
nnoremap <leader>gw :Gwrite<CR><CR>
nnoremap <leader>gl :silent! Glog<CR>
nnoremap <leader>gp :Ggrep<Space>
nnoremap <leader>gm :Gmove<Space>
nnoremap <leader>gb :Git branch<Space>
nnoremap <leader>go :Git checkout<Space>
nnoremap <leader>gps :Dispatch! git push<CR>
nnoremap <leader>gpl :Dispatch! git pull<CR>
nnoremap <leader>gpb  :execute ":Git push origin " . fugitive#head(0)<CR>
