" VIMRC - Saurav Muralidharan
" Created: 08/24/08
" Last Modified: 07/23/2013

filetype plugin indent on
set nocompatible

" Enable Pathogen autoload
" call pathogen#infect()

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Other plugins
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kien/ctrlp.vim'
Plugin 'yegappan/mru'
Plugin 'mileszs/ack.vim'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'bling/vim-airline'

call vundle#end()

set ofu=syntaxcomplete#Complete
syn on
set encoding=utf8
autocmd FileType c,cpp,slang set cindent
set undolevels=1000
set hidden
set history=50
set ignorecase
set smartcase
set gdefault
set showmatch
set number
set wildmenu
set expandtab

" Ignore binary files
set wildignore=*.o,*~
set wildmode=list:longest,full

" Auto read when a file is changed externally
set autoread
set nobackup
set noswapfile
set wmh=0
set ruler

" Folding
set foldmethod=syntax
set foldnestmax=10
set nofoldenable
set foldlevel=1

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" Remember info about open buffers on close
set viminfo^=%

set tw=0
set shiftwidth=2
set tabstop=2
set softtabstop=2
set nowrap
set noautoindent
set smartindent
set formatoptions+=r
if has('gui_running')
  set guifont=Liberation\ Mono\ 10
  set guioptions-=T
endif

" Remove trailing whitespaces and ^M chars
autocmd FileType c,cpp,java,php,javascript,python,twig,xml,yml autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))

" -- SEARCH OPT --
set incsearch
set hlsearch

" -- KEYBOARD MAPPINGS --

map! <C-f> <esc>

let mapleader = ","
nnoremap <Space> :noh<CR>
nnoremap L $
nnoremap H ^
noremap <M-j> 3<C-e>
noremap <M-k> 3<C-y>
nnoremap <Leader>m :MRU<CR>
nnoremap <Leader>z <C-z>
nnoremap <Leader>e :e .<CR>
nnoremap <Leader>v :e ~/.vimrc<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>b :BufExplorer<CR>
nnoremap <Leader>t :tabn<CR>
nnoremap <Leader>T :tabp<CR>

map <Leader>g :Ack 

nnoremap <C-P> :RainbowParenthesesToggle<CR>

" Tagbar
set shell=/bin/bash
nnoremap <C-T> :TagbarToggle<CR>

nnoremap <Leader>f za

" Window shortcuts
nnoremap <Leader>s <C-W>v

nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h

nnoremap j gj
nnoremap k gk

nmap <silent> <Leader>n :set nolist!<CR>

" For when you forget to sudo.. Really Write the file.
cmap w!! w !sudo tee % >/dev/null

" -- Status Line Config --

set laststatus=2
" set statusline=%<%F%h%m%r%h%w%y[%{CurDir()}%h]\ %{strftime(\"%c\",getftime(expand(\"%:p\")))}%=\ line:%l\/%L\ col:%c%V\ pos:%o\ %P 

set statusline=   " clear the statusline for when vimrc is reloaded
set statusline+=%-3.3n\                      " buffer number
set statusline+=%f\                          " file name
set statusline+=%h%m%r%w                     " flags
set statusline+=[%{strlen(&ft)?&ft:'none'},  " filetype
set statusline+=%{strlen(&fenc)?&fenc:&enc}, " encoding
set statusline+=%{&fileformat}]              " file format
set statusline+=%=                           " right align
set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}\  " highlight
set statusline+=%b,0x%-8B\                   " current char
set statusline+=%-14.(%l,%c%V%)\ %<%P        " offset

" -- TAB NAVIGATION (Firefox style) --

" -- PLUGIN STUFF --

let g:ctrlp_cmd = 'CtrlPMixed'

" -_ MISC _-

au BufNewFile,BufRead *.cu set syn=cpp
au BufNewFile,BufRead *.cuh set syn=cpp

if has('gui_running')
	colors solarized
	set background=dark
else
	colors marklar
	set mouse=a
endif
