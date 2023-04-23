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

"Wrap
set wrap
" Leader
let mapleader=","

" Custom mappings 
nnoremap <leader><space> :set relativenumber!<cr>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
inoremap f<tab> function () {<cr><cr>}
" Switching buffer 
nnoremap <leader>nb :bnext<cr>
nnoremap <leader>np :bprev<cr>

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
colorscheme gruvbox

" No Swap File
set noswapfile

call plug#begin()

" Any valid git URL is allowed
Plug 'ghifarit53/tokyonight-vim'

" On-demand loading
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
