"-------------------------------------------------
" Key mapping
"-------------------------------------------------
" clear highlight
""nnoremap <Esc><Esc> :<C-u>set nohlsearch<Return>

" F11でインデントせずにペースト(ペーストモード利用)
" http://qiita.com/items/019250dbca167985fe32
""imap <F10> <nop>
""set pastetoggle=<F10>
"
" インサートモードでもhjklで移動
""inoremap <C-j> <Down>
""inoremap <C-k> <Up>
""inoremap <C-h> <Left>
""inoremap <C-l> <Right>

" タブ移動を簡単にする
" http://doruby.kbmj.com/aisi/20091218/Vim__
""nnoremap <silent> <leader>tf :<c-u>tabfirst<cr>
""nnoremap <silent> <leader>tl :<c-u>tablast<cr>
""nnoremap <silent> <leader>tn :<c-u>tabnext<cr>
""nnoremap <silent> <leader>tN :<c-u>tabNext<cr>
""nnoremap <silent> <leader>tp :<c-u>tabprevious<cr>
""nnoremap <silent> <leader>te :<c-u>tabedit<cr>
""nnoremap <silent> <leader>tc :<c-u>tabclose<cr>
""nnoremap <silent> <leader>to :<c-u>tabonly<cr>
""nnoremap <silent> <leader>ts :<c-u>tabs<cr>
