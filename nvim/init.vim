""""""""""""""""""""""""""""""""""
" Sivin's Neovim Configuration
" still need to be improved
"
""""""""""""""""""""""""""""""""""


" Specify a directory for plugins
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.local/share/nvim/plugged')

" Utilities
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jeetsukumaran/vim-buffergator'

" Generic Programming Support
Plug 'jakedouglas/exuberant-ctags'
Plug 'Townk/vim-autoclose'

" Themes / Interface
Plug 'morhetz/gruvbox'
Plug 'dracula/vim'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'Yggdroot/indentLine'
Plug 'sheerun/vim-polyglot'

" Initialize plugin system
call plug#end()


""""""""""""""""""""""""""""""""""
" Configuration Section
"
""""""""""""""""""""""""""""""""""
if !exists("g:syntax_on")
    syntax enable
endif

" Set leader
let g:mapleader ="`"

" Enable mouse
if has('mouse')
    set mouse=a
endif

" Set unicode
set encoding=utf8


" Accessing system clipboard (copy/paste)
set clipboard=unnamedplus

" Show linenumbers
set nu
set ruler

" Auto-reloading a file in Vim as soon as it changed on disk
set autoread
set autowrite

" Set indent
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
" indentLine Plugin
"let g:indentLine_setColors = 0
let g:indentLine_char = '¦'

" Disable files backup, swap
set nobackup
set nowb
set noswapfile


""""""""""""""""""""""""""""""""""
" NERDTree Configuration
"
""""""""""""""""""""""""""""""""""

" Open/close NERDTree
map <C-n> :NERDTreeToggle<cr>

" Change default arrows
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
" Auto-open NERDTree when vim starts up if no files were specified
" vim not vim .
autocmd StdinReadPre * let s:std_in = 1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Show hidden files by default
" Otherwise press I (shift i)
" let g:NERDTreeShowHidden = 1

" Open automatically when vim starts up on opening a directory
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif


" Show ignored status (nerdtree-git-plugin)
" cost much time
" let g:NERDTreeShowIgnoredStatus = 1


""""""""""""""""""""""""""""""""""
" Airline Configuration
"
""""""""""""""""""""""""""""""""""

" Show tab line
let g:airline#extensions#tabline#enabled = 1 
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'


""""""""""""""""""""""""""""""""""
" CtrP Configuration
"
""""""""""""""""""""""""""""""""""

" Setup some default ignores
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
\}

" Use the nearest .git directory as the cwd
" This makes a lot of sense if you are working on a project that is in version
" control. It also supports works with .svn, .hg, .bzr.
let g:ctrlp_working_path_mode = 'ra'

" Use a leader instead of the actual named binding
nmap <leader>p :CtrlP<cr>

" Easy bindings for its various modes
nmap <leader>bb :CtrlPBuffer<cr>
nmap <leader>bm :CtrlPMixed<cr>
nmap <leader>bs :CtrlPMRU<cr>


""""""""""""""""""""""""""""""""""
" Built-in Buffers Configuration
"
""""""""""""""""""""""""""""""""""

" This allows buffers to be hidden if you've modified a buffer.
" This is almost a must if you wish to use buffers in this way.
set hidden

" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>T :enew<cr>

" Move to the next buffer
nmap <leader>l :bnext<cr>

" Move to the previous buffer
nmap <leader>h :bprevious<cr>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>bq :bp <BAR> bd #<cr>

" Show all open buffers and their status
nmap <leader>bl :ls<cr>


""""""""""""""""""""""""""""""""""
" Buffergator Configuration
"
"""""""""""""""""""""""""""""""""

" I want my own keymappings...
let g:buffergator_suppress_keymaps = 1


" Go to the previous buffer open
nmap <leader>jj :BuffergatorMruCyclePrev<cr>

" Go to the next buffer open
nmap <leader>kk :BuffergatorMruCycleNext<cr>

" View the entire list of buffers open
nmap <leader>bo :BuffergatorOpen<cr>

" Close buffers list
nmap <leader>bc :BuffergatorClose<cr>


""""""""""""""""""""""""""""""""""
" Theme and styling
"
""""""""""""""""""""""""""""""""""

colorscheme gruvbox
set background=dark
let g:airline_theme='gruvbox'


""""""""""""""""""""""""""""""""""
" Devicons Configuration
"
"""""""""""""""""""""""""""""""""

let g:webdevicons_enable = 1
let g:webdevicons_conceal_nerdtree_brackets = 1 " remove brackets 
let g:airline_powerline_fonts = 1
" adding to vim-airline's tabline 
let g:webdevicons_enable_airline_tabline = 1
" adding to vim-airline's statusline 
let g:webdevicons_enable_airline_statusline = 1
set guifont=UbuntuMono\ Nerd\ Font


if exists("g:loaded_webdevicons")
    call webdevicons#refresh()
endif


""""""""""""""""""""""""""""""""""
" Mappings Configuration
"
""""""""""""""""""""""""""""""""""

map <C-m> :TagbarToggle<cr>
