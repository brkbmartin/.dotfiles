" PLUGINS
set nocompatible
filetype off

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'bling/vim-airline'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdcommenter'
Plug 'airblade/vim-gitgutter'
Plug 'valloric/youcompleteme', { 'do': './install.py' }
Plug 'pangloss/vim-javascript'
Plug 'vim-airline/vim-airline-themes'
Plug 'easymotion/vim-easymotion'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-repeat'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-commentary'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-endwise'
Plug 'raimondi/delimitmate'
Plug 'terryma/vim-multiple-cursors'
Plug 'sjl/gundo.vim'
Plug 'plasticboy/vim-markdown'
Plug 'christoomey/vim-tmux-navigator'
Plug 'mxw/vim-jsx'
Plug 'elzr/vim-json'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'yggdroot/indentline'
Plug 'editorconfig/editorconfig-vim'
Plug 'edkolev/tmuxline.vim'
Plug 'edkolev/promptline.vim'
call plug#end()

syntax on
filetype plugin indent on

" LEADER KEY
let mapleader=","

" SECURITY
set modelines=0

" EDITOR
set number
set ruler
set visualbell
set encoding=utf-8

" WHITESPACE
set nowrap
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" SEARCH
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr>

" COLOR SCHEME
set t_Co=256
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
colorscheme solarized

" NERDTREE
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
let NERDTreeBookmarksFile=expand("$HOME/.cache/nerdtree/NERDTreeBookmarks")
map <C-o> :NERDTreeToggle<CR>

" SYNTASTIC
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=0

" CTRLP
let g:ctrlp_working_path_mode='cr'

" AIRLINE
let g:airline#extensions#tabline#enabled=1
let g:airline_powerline_fonts=1
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'

" TAGBAR
map <C-t> :TagbarToggle<CR>

" GITGUTTER
let g:gitgutter_sign_column_always=1 

" VIM-JAVASCRIPT
let g:javascript_plugin_jsdoc=1
let g:javascript_plugin_ngdoc=1
let g:javascript_plugin_flow=1

" EMMET
let g:user_emmet_mode='a'

" VIM-MARKDOWN 
let g:vim_markdown_folding_disabled=1
let g:vim_markdown_override_foldtext=0
let g:vim_markdown_new_list_item_indent=2

" VIM-JSX
let g:jsx_ext_required=0

" INDENTLINE
let g:indentLine_setColors=0
let g:indentLine_char='|'
let g:indentLine_concealcursor='inc'
let g:indentLine_conceallevel=2

" EDITORCONFIG
let g:EditorConfig_exclude_patterns=['fugitive://.*', 'scp://.*']
" let g:EditorConfig_exec_path = 'path/to/editorconfig/exe'

" TMUXLINE
let g:tmuxline_preset={
  \'a'                : [ '#S:#I' ],
  \'win'              : [ '#I', '#W' ],
  \'cwin'             : [ '#I', '#W' ],
  \'y'                : [ '%a', '%Y-%m-%d', '%l:%M%p' ],
  \'z'                : [ '#(whoami)' ],
  \'options'          : {'status-justify': 'left'}}

" PROMPTLINE
let g:promptline_preset={
      \'a'    : [ '\u' ],
      \'b'    : [ promptline#slices#vcs_branch() ],
      \'c'    : [ promptline#slices#git_status() ],
      \'y'    : [ '\w' ]}
