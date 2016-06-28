call plug#begin('~/.vim/plugged')

function! DoRemote(arg)
  UpdateRemotePlugins
endfunction

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

call plug#end()

set encoding=utf-8
set tabstop=2 shiftwidth=2 expandtab smarttab softtabstop=2
set nobackup
set noswapfile
syntax enable
set relativenumber
"THEME
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
colorscheme OceanicNext
set background=dark

"nerdtree
nnoremap <C-j> :bprevious<CR>
nnoremap <C-k> :bnext<CR>
nnoremap <C-q> :bd<CR>
"neomake
autocmd! BufWritePost * Neomake
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_javascript_eslint_exe = $HOME.'/.npm-global/lib/node_modules/eslint/bin/eslint.js'
"airline
let g:airline#extensions#tabline#enabled = 1
"nerdTree
map <C-n> :NERDTreeToggle<CR>
"deoplete
let g:deoplete#enable_at_startup = 1
let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = 0

"jsx
let g:jsx_ext_required = 0
