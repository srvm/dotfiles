" Specify a directory for plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'terryma/vim-multiple-cursors'
Plug 'easymotion/vim-easymotion'
Plug 'sheerun/vim-polyglot'
Plug 'yegappan/mru'
Plug 'flazz/vim-colorschemes'
Plug 'mileszs/ack.vim'
Plug 'drmingdrmer/vim-toggle-quickfix'

call plug#end()

" General configuration
filetype plugin indent on
syntax enable
set nowrap
set cursorline
set gdefault            " Use 'g' flag by default with :s/foo/bar/.
set encoding=utf8
set undolevels=1000
set history=50
set hidden
set number
set showmatch
set autoread
set noswapfile
set nobackup
set nofoldenable       " Disable folding
set colorcolumn=80


set scrolloff=5        " Show next 3 lines while scrolling.
set sidescrolloff=10   " Show next 5 columns while side-scrolling.
set sidescroll=1

 " Theme
colorscheme sorcerer

" Indent
set autoindent
set smartindent
autocmd FileType c,cpp,slang set cindent
autocmd FileType python setl ts=2 sw=2 sts=2 et

" Tabs
set smarttab
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

au BufNewFile,BufRead *.cu set syn=cpp
au BufNewFile,BufRead *.cuh set syn=cpp

" Plugin configuration
let g:airline_powerline_fonts = 1
let g:deoplete#enable_at_startup = 1
cnoreabbrev Ack Ack!

" General keyboard mappings
map! <C-f> <esc>
tnoremap <C-f> <C-\><C-n>
nnoremap <Space> :noh<CR>
nnoremap L $
nnoremap H ^
nnoremap <C-[> :cprevious<CR>
nnoremap <C-]> :cnext<CR>
nmap <C-\> <Plug>window:quickfix:toggle

" Plugin shortcuts
nnoremap <C-p> :FZF<CR>
nnoremap <C-T> :NERDTreeToggle<CR>

" Leader shortcuts
let mapleader = ","
nnoremap <Leader>m :MRU<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>a :Ack! <C-r><C-w><CR>
nnoremap <Leader>s <C-W>s
nnoremap <Leader>v <C-W>v

nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h
