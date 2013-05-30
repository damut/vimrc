" needed for vundle
filetype off

" Use the .vim directory under windows instead of vimfiles
if has('win32') || has('win64')
	set runtimepath^=~/.vim
endif

" neede for vundle
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'jnwhiteh/vim-golang'
Bundle 'Blackrush/vim-gocode'
"Bundle 'Townk/vim-autoclose'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/syntastic'
"Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-eunuch'
" Needed for Snipmate
Bundle 'MarcWeber/vim-addon-mw-utils'
" Needed for Snipmate
Bundle 'tomtom/tlib_vim'
" Snipmate
Bundle 'garbas/vim-snipmate'
Bundle 'mattn/zencoding-vim'

" don't abandon buffer when unloaded
set hidden
" no compatibility for vi
set nocompatible
" use 256 colors in putty
set t_Co=256
" 4 spaces for tab
set tabstop=4
" also use 4 spaces for reindentation (<< and >>)
set shiftwidth=4
" use 4 spaces when pressing <tab>
set softtabstop=4
" use spaces instead of tab chars for indentation
set expandtab
" use utf-8 encoding
set encoding=utf-8
" show at least 3 lines above or below of the cursor
set scrolloff=3
" use visual bell instead of beeping
set visualbell
" show line and column number of the cursor position
set ruler
" show relative line number
set relativenumber
" Always show a status line
set laststatus=2
" ignore the case of letters whenn all are lower case
set ignorecase
" do a case sensitive search when there are uppercase letters in the search
" pattern
set smartcase
" highlight matching search string while typing a search command
set incsearch
" highlight search results
set hlsearch
" show matching brackets when on is newly inserted
set showmatch
" show tabs as > (with · for remaining space), $ as eol and · for trailing spaces
set listchars=tab:>·,trail:·
" don't use a swapfile
set noswapfile
" also delete tabs and eol with backspace
set backspace=indent,eol,start
" autmatically insert comment leader after pressing 'o' in command mode or
" <enter> in insert mode
set formatoptions+=cro
" :g/<search-string>/norm @h

" automatically save buffer when windows focus is lost
au FocusLost * silent! :wall

" use , as leader char
let mapleader=","

" reload snippets
nnoremap <leader>ss :call ReloadAllSnippets()<cr>
" edit and reload vimrc
nnoremap <leader>ev :e $MYVIMRC<cr>
nnoremap <leader>sv :so $MYVIMRC<cr>
" kill buffer without losing split window
nnoremap <leader>x :bp<cr>:bd#<cr>
" show/hide invisible chars
nmap <leader>l :set list!<cr>
" use tab to jump between matching braces
" nmap <tab> %
" remove all trailing whitespaces
nmap <leader>w :%s/\s\+$//<cr>:let @/=''<cr>
" remove search highlighting
nnoremap <leader><space> :noh<cr>
" use cursor keys to switch between windows
" use left/right cursor keys to switch buffers
nnoremap <left> :bn<cr>
nnoremap <right> :bp<cr>
" show spelling suggestions
imap <C-space> <C-x><C-o>
" move through autocompletion suggestions
nnoremap <up> <C-p>
nnoremap <down> <C-n>
" change active window
nnoremap <C-k> <C-w>k
nnoremap <C-j> <C-w>j
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
inoremap <C-k> <C-w>k
inoremap <C-j> <C-w>j
inoremap <C-h> <C-w>h
inoremap <C-l> <C-w>l

" use desert colorscheme
colorscheme desert

" enable syntax highlighting
syntax on
filetype plugin on
" needed for vundle
filetype plugin indent on
