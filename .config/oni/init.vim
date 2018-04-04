set nocompatible
set noswapfile

" Turn off statusbar, because it is externalized in Oni
set noshowmode
set noruler
set laststatus=0
set noshowcmd

set mouse=a
set list
set listchars=trail:·

filetype plugin indent on
set number
set smartcase
set nowrap
set cursorline
set gdefault           " Use 'g' flag by default with :s/foo/bar/.
set colorcolumn=80
set nofoldenable       " Disable folding

set scrolloff=5        " Show next 3 lines while scrolling.
set sidescrolloff=10   " Show next 5 columns while side-scrolling.
set sidescroll=1

" Indent
"set autoindent
"set smartindent
"autocmd FileType c,cpp,slang set cindent
autocmd FileType python setl ts=2 sw=2 sts=2 et

" Tabs
set expandtab
set shiftwidth=2
set softtabstop=2

au BufNewFile,BufRead *.cu set syn=cpp
au BufNewFile,BufRead *.cuh set syn=cpp

cnoreabbrev Ack Ack!

" General keyboard mappings
map! <C-f> <esc>
nnoremap <Space> :noh<CR>
nnoremap L $
nnoremap H ^
nnoremap <C-[> :cprevious<CR>
nnoremap <C-]> :cnext<CR>
nmap <C-\> <Plug>window:quickfix:toggle

" Leader shortcuts
let mapleader = ","
nnoremap <Leader>m :MRU<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>a :Ack! <C-r><C-w><CR>
nnoremap <Leader>s <C-W>s
nnoremap <Leader>v <C-W>v

" Plugin shortcuts
nnoremap <Leader>t :NERDTreeToggle<CR>

nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-H> <C-W>h
