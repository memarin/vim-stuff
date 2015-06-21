set nocompatible
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
Plugin 'tpope/vim-surround'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'antlypls/vim-colors-codeschool'
Plugin 'wincent/command-t'
Plugin 'tpope/vim-endwise'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-rails'
Plugin 'godlygeek/tabular'
Plugin 'slim-template/vim-slim'
Plugin 'ecomba/vim-ruby-refactoring'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'SirVer/ultisnips'

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
set cpoptions+=$
set nu
hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>
nmap <Leader>sx :vsplit .vimrc<CR>

"Tabs"
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

"Nerdtree"
map <C-e> :NERDTreeToggle<CR>

"Airline"
set laststatus=2

"T-Command"
nmap <S-S> :CommandT

"Easy Motion"
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)

"vim-better-whitespace"
map <Leader>w :StripWhitespace<CR>

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

"Tabularize"
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>
vmap <Leader>a: :Tabularize /:\zs<CR>
nmap <Leader>a :Tabularize /
vmap <Leader>a :Tabularize /

"rails-vim"
nmap <Leader>rc :Econtroller<Space>
nmap <Leader>rm :Emodel<Space>
nmap <Leader>rv :Eview<Space>
nmap <Leader>rs :Estylesheet<Space>
nmap <Leader>rj :Ejavascript<Space>
nmap <Leader>rh :Ehelper<Space>
nmap <Leader>ri :Emigration<Space>
nmap <Leader>rl :Einitializer<CR>
nmap <Leader>rg :Elib<CR>

nmap <Leader>rra :A<CR>
nmap <Leader>rae :AE<CR>
nmap <Leader>ras :AS<CR>
nmap <Leader>rav :AV<CR>
nmap <Leader>rat :AT<CR>
nmap <Leader>rad :AD<CR>

nmap <Leader>rgc :Rgenerate controller<Space>
nmap <Leader>rgm :Rgenerate model<Space>
nmap <Leader>rgi :Rgenerate migration<Space>

nmap <Leader>f :find<Space>
