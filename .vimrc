set nobackup
set nowritebackup
set noswapfile
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smarttab
set expandtab
filetype indent on
filetype on
filetype plugin on

set exrc
set secure

set colorcolumn=110
highlight ColorColumn ctermbg=darkgray

set tags=./tags;

augroup project
    autocmd!
    autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END

let &path.="/usr/include/c++/4.6/,/usr/include/"

" set background=light
colorscheme default
set guioptions=aegimt
set guifont=Monaco\ 10

" Tagbar shortcut
nmap <F8> :TagbarToggle<CR>
nnoremap <F2> :NERDTreeToggle<CR>
" CTags rebuild
noremap <F12> :!ctags -R --exclude='.git' .<CR>

set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'fatih/vim-go'

call vundle#end()
filetype plugin indent on
