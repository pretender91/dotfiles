scriptencoding utf-8
set encoding=utf-8
syntax enable
set number
colorscheme OceanicNext
set background=dark
set t_Co=256
set tabstop=2 shiftwidth=2 expandtab smarttab et
set nocompatible
set showcmd
set mouse=a
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
"airline
set laststatus=2


"Turn backup off for git and etc
set nobackup
set nowb
set noswapfile

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'scrooloose/nerdTree'
Plugin 'othree/yajs.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'Chiel92/vim-autoformat'
Plugin 'mhartington/oceanic-next'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'chriskempson/base16-vim'
Plugin 'elixir-lang/vim-elixir'
Plugin 'othree/html5-syntax.vim'
Plugin 'othree/html5.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
call vundle#end()

filetype plugin indent on
"vim-autofromat
noremap <F2> :Autoformat<CR>
let g:autoformat_verbosemode=1
"NerdTree map
map <C-n> :NERDTreeToggle<CR>
"buffers
nnoremap <C-j> :bprevious<CR>
nnoremap <C-k> :bnext<CR>
"airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
"jshint
let JSHintUpdateWriteOnly=1
"ycm
let g:ycm_path_to_python_interpreter = '/usr/bin/python'
"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
