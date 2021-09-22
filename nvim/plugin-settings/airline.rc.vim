hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE guifg=NONE ctermfg=NONE
hi! LineNr  ctermfg=8 ctermbg=NONE guifg=#65737e guibg=NONE

let g:airline_theme='base16_ocean'

let g:airline_powerline_fonts = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#buffer_nr_show = 1

" Key binding
nnoremap <silent> <localLeader>[ :bp<CR>
nnoremap <silent> <localLeader>] :bn<CR>
nnoremap <silent> <localLeader>w :bdelete<CR>
