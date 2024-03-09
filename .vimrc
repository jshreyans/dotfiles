syntax on
set encoding=UTF-8
set noswapfile

set nu
set rnu

set lbr
set tw=500
set wrap

set scrolloff=10
set sidescrolloff=8
set sidescroll=1

"spaces instead of tabs
set expandtab
set smarttab

"1 tab = 2 spaces
set shiftwidth=2
set tabstop=2

set autoindent
set smartindent

"Show matching brackets when text indicator is over them
set showmatch

"When searching try to be smart about cases
set smartcase

"Highlight search results
set hlsearch

"construct statusline
let g:currentmode={
        \ 'n'   : 'NORMAL ',
        \ 'v'   : 'VISUAL ',
        \ 'i'   : 'INSERT ',
        \ 'c'   : 'COMMAND ',
        \ 'V'   : 'V.Line ',
        \ 'R'   : 'R ',
        \ 'Rv'  : 'V.Replace',
        \ "\<C-V>": 'V.Block',
        \ }
set statusline=%#PmenuSbar#\ %{toupper(g:currentmode[mode()])}%*\ %f%m%=\ %y\ %{&fileencoding?&fileencoding:&encoding}\[%{&fileformat}]\ %p%%\ %#PmenuSbar#\ \%l:%c\ %*\ %L\ 
set laststatus=2

"Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"vim-plug usage
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
    Plug 'preservim/nerdtree'
call plug#end()
