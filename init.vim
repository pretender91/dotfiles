call plug#begin('~/.vim/plugged')

function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

Plug 'kien/ctrlp.vim'
Plug 'mhartington/oceanic-next'
Plug 'neomake/neomake'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'ntpeters/vim-better-whitespace'
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
Plug 'carlitux/deoplete-ternjs'
Plug 'elixir-lang/vim-elixir'
Plug 'thinca/vim-ref'
Plug 'awetzel/elixir.nvim', { 'do': 'yes \| ./install.sh' }
Plug 'tpope/vim-rails'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'othree/yajs.vim', { 'for': 'javascript' }
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'mustache/vim-mustache-handlebars', { 'for': [ 'mustache', 'handlebars', 'html.mustache', 'html.handlebars' ] }
Plug 'tpope/vim-cucumber', { 'for' : 'feature' }
Plug 'godlygeek/tabular'
Plug 'elmcast/elm-vim', { 'for' : 'elm' }
Plug 'crusoexia/vim-monokai'
Plug 'Valloric/MatchTagAlways'
Plug 'alvan/vim-closetag'
Plug 'bendavis78/vim-polymer'

call plug#end()

set encoding=utf-8
" tabs control
set expandtab
set smarttab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set shiftround

set nobackup
set noswapfile
syntax enable
set relativenumber
" yank to system clipboard
set clipboard=unnamedplus
" visual characters
set list
set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set showbreak=↪
"THEME
" let $NVIM_TUI_ENABLE_TRUE_COLOR=1
if (has("termguicolors"))
  set termguicolors
endif
set termguicolors
colorscheme monokai
set background=dark

"nerdtree
nnoremap <C-j> :bprevious<CR>
nnoremap <C-k> :bnext<CR>
nnoremap <C-q> :bd<CR>
"neomake
autocmd! BufWritePost * Neomake
let g:neomake_javascript_enabled_makers = ['eslint']
let s:eslint_path = system('PATH=$(npm bin):$PATH && which eslint')
let g:neomake_javascript_eslint_exe = substitute(s:eslint_path, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')

"airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='oceanicnext'
"nerdTree
map <C-n> :NERDTreeToggle<CR>
"deoplete
let g:deoplete#enable_at_startup = 1
let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = 0

"jsx
let g:jsx_ext_required = 0

let g:mta_filetypes = {
      \'javascript.jsx': 1,
      \'html' : 1,
      \'xhtml' : 1,
      \'xml' : 1,
      \'jinja' : 1,
      \}

let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.js"

nnoremap <C-t> :.s/>\zs\([^{]\+\)\ze</{translate('\1')}/g <CR>
