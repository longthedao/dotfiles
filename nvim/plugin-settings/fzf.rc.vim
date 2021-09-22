" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.config/nvim/plugin-settings/fzf-history'
let g:fzf_layout = { 'down': '~40%' }

let $FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --layout reverse --margin=1 --preview 'bat --color=always --line-range :300 {}'"

let $FZF_DEFAULT_COMMAND = 'rg --files --ignore-case --hidden -g "!{.git,node_modules,vendor}/*"'
command! -bang -nargs=? -complete=dir Files
     \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

map <S-f> :Files<CR>
map <leader>b :Buffers<CR>
nnoremap <leader>r :Rg<CR>
nnoremap <leader>t :Tags<CR>
nnoremap <leader>l :Lines<CR>
nnoremap <leader>m :Marks<CR>



