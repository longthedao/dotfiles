let mapleader = '\' 
filetype plugin on
filetype plugin indent on

autocmd BufEnter * :set scroll=10 
syntax on

set encoding=UTF-8
set mouse=a 

set incsearch 
set hlsearch  

set tabstop=4 
set softtabstop=0
set shiftwidth=4
set number

set clipboard=unnamedplus

" color schemes
if has('termguicolors')
	set termguicolors
endif

" Remove background color neovim
if (has("autocmd") && !has("gui_running"))
  augroup colorset
    autocmd!
    let s:white = { "gui": "#ABB2BF", "cterm": "145", "cterm16" : "7" }
    autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": s:white }) 
  augroup END
endif

let g:onedark_termcolors=256
syntax on
colorscheme onedark 


" open new split panes to right and below
set splitright
set splitbelow

" MAPPING

" move line or visually selected block 
nnoremap <S-A-down> :m .+1<CR>==
nnoremap <S-A-up> :m .-2<CR>==
inoremap <S-A-down> <Esc>:m .+1<CR>==gi
inoremap <S-A-up> <Esc>:m .-2<CR>==gi
vnoremap <S-A-down> :m '>+1<CR>gv=gv
vnoremap <S-A-up> :m '<-2<CR>gv=gv

" open file in a text by placing text and gf
nnoremap gf :vert winc f<cr>

" split window
nnoremap ,s <C-W>s
nnoremap ,v <C-W>v
nnoremap ,q <C-W>q
