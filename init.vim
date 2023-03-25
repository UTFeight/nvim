let mapleader=" "
set number
set rnu
set termguicolors
set fillchars+=eob:\
set softtabstop
set tabstop=3
set shiftwidth=3

" Highlights the cursor line number
highlight CursorLineNr guifg=#fabd2f cterm=italic gui=italic
highlight LineNr guifg=#fabd2f cterm=italic gui=italic


augroup CursorLine
	autocmd!
	autocmd VimEnter,WinEnter,BufWinEnter * highlight CursorLineNr gui=bold,italic
augroup END

" set hls
set cursorline
set cursorlineopt=number

filetype plugin on

call plug#begin("/home/kobruh/.vim/plugged/")
Plug 'lambdalisue/fern.vim'
"Plug 'rhysd/vim-clang-format'

" Colorschemes
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'morhetz/gruvbox'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'romgrk/doom-one.vim' " Emacs doom default theme
Plug 'dracula/vim'
Plug 'altercation/solarized'
Plug 'tomasr/molokai'
Plug 'sonph/onehalf'
" Plug 'nurmine/Zenburn' " Errorneus
Plug 'gosukiwi/vim-atom-dark'
Plug 'NLKNguyen/papercolor-theme'
Plug 'jacoborus/tender.vim'
Plug 'sjl/badwolf/'
Plug 'nordtheme/vim'
Plug 'nanotech/jellybeans.vim'
Plug 'sindresorhus/hyper-snazzy'
Plug 'rakr/vim-one'
Plug 'mhartington/oceanic-next'
Plug 'ayu-theme/ayu-vim'
Plug 'ciaranm/inkpot'
Plug 'kyoz/purify'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'sainnhe/gruvbox-material'
Plug 'sainnhe/everforest'
Plug 'sainnhe/sonokai'
Plug 'sainnhe/edge'

Plug 'preservim/nerdcommenter'

" File Explorer
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'

" Surrounding Editing (e.g. change quotes, brackets, etc.)
Plug 'tpope/vim-surround'
"-----> cs<first char><second char> ;to change surrounding <First Char> with <Second Char>

" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
"Plug 'agude/vim-eldar'
"Plug 'EdenEast/nightfox.nvim'
"Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/remote', 'do': ':UpdateRemotePlugins' }
" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim' " needed for previews
"Plug 'yuki-yano/fzf-preview.vim', { 'branch': 'release/rpc' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Chiel92/vim-autoformat'
"Plug 'kevinhwang91/rnvimr'  " 文件浏览器

Plug 'neoclide/coc.nvim', {'branch': 'release'}
" CocInstall coc-snippets
" CocInstall coc-rust-analyzer
" CocInstall coc-python
" CocInstall coc-clangd
" CocInstall coc-toml
" CocInstall coc-pairs
" CocInstall coc-prettier

Plug 'samirettali/shebang.nvim'
" Plug 'honza/vim-snippets'
"Plug 'neoclide/coc-denite'
"Plug 'ayu-theme/ayu-vim'
"Plug 'joshdick/onedark.vim'
"Plug 'dracula/vim', { 'as': 'dracula' }
"Plug 'itchyny/lightline.vim'
"Plug 'Yggdroot/indentLine' " Hate that shit (!) I think that was this one
" Plug 'sheerun/vim-polyglot'
" Plug 'golang/lint'
"Plug 'mg979/vim-xtabline'  " 精致的顶栏
" Plug 'mbbill/undotree'     " Undo Tree
"Plug 'liuchengxu/vista.vim' " 打开函数与变量列表
"Plug 'lambdalisue/suda.vim' " :sudowrite 或者 :sw 就等于sudo vim ...


Plug 'github/copilot.vim'
" |---> Requires: git clone https://github.com/github/copilot.vim.git ~/.config/nvim/pack/github/start/copilot.vim

call plug#end()

"------------------
" VIM KEY BINDINGS |
"------------------

map <F2> <ESC>:w<CR>:!chmod +x %;./%<CR>
noremap! <C-BS> <C-w>
noremap! <C-h> <C-w>

"----------------
"		COC-CONFIG   |
"--------------------------------
" :CocInstall coc-snippets	     |
" :CocInstall coc-json	         |
" :CocInstall coc-rust-analyzer	 |
" :CocInstall coc-python	       |
" :CocInstall coc-pairs	         |
" :CocInstall coc-clangd	       |
"--------------------------------
inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<TAB>"
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

"----------------
" NERD COMMENTER |
"-------------------------------------------------------------------
" Use compact syntax for prettified multi-line comments 					  |
" G C Comment out the current line or text selected in visual mode. |
"-------------------------------------------------------------------

" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1

map gc <Plug>NERDCommenterToggle

"---------------
"    COPILOT    |
"--------------------------------------
" Ctrl+D to select next suggestion	   |
" Ctrl+A to select previous suggestion |
" Ctrl+ESC to dismiss the panel		     |
" Ctrl+S to open the panel		         |
"--------------------------------------

" let b:copilot_enabled = v:true

imap <C-D> <Plug>(copilot-next)
imap <C-A> <Plug>(copilot-previous)
imap <C-ESC> <Plug>(copilot-dismiss)

inoremap <C-S> <Esc>:execute 'Copilot panel'<CR>

"----------------
"    AIRLINE     |
"---------------------------
" :AirlineTheme gruvbox		  |
" Use triangular separators |
"---------------------------

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#show_splits = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_close_button = 1

"---------------
"  COLORSCHEME  |
"---------------

colorscheme gruvbox


"----------------
"   NERD TREE    |
"--------------------------------
" C-a to toggle NERDTree	 |
" C-n to open NERDTree	  	 |
" C-t to toggle NERDTree         |
" C-f to find file in NERDTree   |
" <leader>n to focus NERDTree    |
"--------------------------------

let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
let NERDTreeShowBookmarks=1
" let NERDTreeShowLineNumbers=1
let NERDTreeWinPos="right"
let NERDTreeWinSize=30
let g:NERDTreeDirArrowExpandable = ' '
let g:NERDTreeDirArrowCollapsible = ' '

" Hide the current working directory in NERDTree
augroup nerdtreehidecwd
	autocmd!
	autocmd FileType nerdtree setlocal conceallevel=3
				\ | syntax match NERDTreeHideCWD #^[</].*$# conceal
				\ | setlocal concealcursor=n
augroup end

map <C-a> :NERDTreeToggle<CR>
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

"----------------
"      FZF       |
"----------------

" Use ripgrep for fzf (Copilot)
let g:fzf_command_prefix = 'rg --files --hidden --follow --glob "!.git/*"'
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.4 } }
let g:fzf_preview_window = 'right:50%'
let g:fzf_preview_file = 'cat {}'
let g:fzf_preview_file = 'bat --style=numbers --color=always {}'


"---------------
"    SHEBANG    |
"---------------

let g:shebang_commands = { 'rs': '/usr/bin/env run-cargo-script' } " #!/usr/bin/env run-cargo-script

"--------------
"   TERMINAL   |
"--------------
" :terminal
" :term

set shell=/bin/zsh

"----------------
"     CONFIG     |
"----------------
" :Config "Opens config file"

command Config :e $MYVIMRC

