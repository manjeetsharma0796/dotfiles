" Syntax and numbering 
syntax on " Set syntax highlighting on
set nu    " Set line numbers

" Highlighting
set incsearch  " Incremental searh. Highlight as you type
set hlsearch   " Highlight search results once typed

" Backup
set nobackup

" Indentation
filetype indent on " turns onautoindent based on file type
set autoindent     " Auto indentation
set expandtab      " Converts tabs to spaces 
set tabstop=2      " Width of tab for a \t char read from file
set softtabstop=2  " Width of tab when tab key or backspace is pressed 
set shiftwidth=2   " Witdth of tab on identation
set smartindent

" Status 
set showcmd
set ruler
set laststatus=2

" Cursorline
set cursorline

"Wrap
set wrap

" Leader
let mapleader=","

" Custom mappings 
nnoremap <leader><space> :set relativenumber!<cr>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
inoremap f<tab> function () {<cr><cr>}

" AutoComplete
inoremap <leader><tab> <C-x><C-f>

" Switching buffer 
nnoremap <leader>n :bnext<cr>
nnoremap <leader>p :bprev<cr>

" Writing a file and saving it 
nnoremap <leader>w :w<cr>
" Quit vim 
nnoremap <leader>q :q<cr>
" Copying text to system clipboard
vnoremap <C-y> "*y

" Select a word
:map <space> viw 

"select all 
"copy all

" Autocommand to Indentation 
autocmd BufWritePre * :normal gg=G``
inoremap f<tab> function () {<cr><tab><cr>}<Up><Up><Up><esc>wi<Left>
nnoremap <leader>t :read !cat ~/bin/testFramework.js 

" color
colorscheme OceanicNext 
set termguicolors

" No Swap File
set noswapfile

call plug#begin()

" Any valid git URL is allowed
Plug 'ghifarit53/tokyonight-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/airblade/vim-gitgutter.git'

" On-demand loading
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'
Plug 'junegunn/fzf'
nnoremap <leader>t :NERDTreeToggle<cr>

set noshowmode
" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.

call plug#end()

" Airline
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1

" Start NERDTree and put the cursor back in the other window.
"autocmd VimEnter * NERDTree | wincmd p

" Fold Method
set foldmethod=indent
set foldnestmax=3

" Function map
inoremap f<tab> <esc>viwdiconst <esc>pa = function() {<cr>};<Up><esc>4w<Right>i

" Git gutter
let g:gitgutter_terminal_reports_focus=0
