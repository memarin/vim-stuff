set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

"Plugins-------------------------------
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'bling/vim-airline'
Plugin '29decibel/codeschool-vim-theme'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-endwise'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-rails'
Plugin 'godlygeek/tabular'
Plugin 'slim-template/vim-slim'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'SirVer/ultisnips'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-vinegar'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-markdown'
Plugin 'rking/ag.vim'

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
set relativenumber
set guifont=Monaco:h12
let g:NERDTreeWinPos = "left"
set guioptions-=T
set guioptions-=r
set guioptions-=e
set go-=L
set hlsearch
set listchars=tab:▸\ ,eol:¬
autocmd User Rails let b:surround_{char2nr('-')} = "<% \r %>"
set cpoptions+=$
"nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>
set cursorline! cursorcolumn!
nmap <Leader>sx :vsplit ~/.vimrc<CR>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

"Buffers"
nnoremap <C-x> :bprev<CR>
nnoremap <C-c> :bnext<CR>
nnoremap <C-b> :bd<CR>

:hi TabLineFill ctermfg=LightGreen ctermbg=DarkGreen
:hi TabLine ctermfg=Blue ctermbg=Yellow
:hi TabLineSel ctermfg=Red ctermbg=Yellow
"switch line numbering"
:au FocusLost * :set number
:au FocusGained * :set relativenumber
"MAPPINGS-------------------------------

"Tabs"
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
let g:airline#extensions#tabline#enabled = 1
nmap <Leader>tc :tabclose<CR>

"Nerdtree"
map <Leader>n :NERDTreeToggle<CR>

"Airline"
set laststatus=2

"Easy Motion"
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)

"vim-better-whitespace"
map <Leader>w :StripWhitespace<CR>
highlight ExtraWhitespace ctermbg=red

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

"UltiSnips"
nmap <Leader>ue :UltiSnipsEdit<CR>

"Ctrlp.vim"
map <Leader>c :CtrlP<CR>

"vim-commentary"
map <Leader>t gcc

"pry-byebug"
map <Leader>b obinding.pry<ESC>
