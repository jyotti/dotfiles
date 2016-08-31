" ------------------------------------------------------------------------------
" Key mapping

" Yで行末までヤンク - http://itchyny.hatenablog.com/entry/2014/12/25/090000
nnoremap Y y$

" Escの2回押しで検索ハイライトを消去
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" windowコマンドを<C-w>から`s`に置き換え
" http://qiita.com/tekkoc/items/98adcadfa4bdc8b5a6ca
"デフォルトのsを無効に
nnoremap s <Nop>

"window分割
nnoremap ss :<C-u>sp<CR>        "水平分割
nnoremap sv :<C-u>vs<CR>        "垂直分割

"windowの移動
nnoremap sh <C-w>h      "左へ
nnoremap sj <C-w>j      "下へ
nnoremap sk <C-w>k      "上へ
nnoremap sl <C-w>l      "右へ
nnoremap sw <C-w>w      "次のwindowへ

"windowの移動
nnoremap sH <C-w>H
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sr <C-w>r      "回転

"windowの大きさ
nnoremap s= <C-w>=        "揃える
nnoremap sO <C-w>=        "揃える
nnoremap so <C-w>_<C-w>|  "縦横最大化

"tab
nnoremap st :<C-u>tabnew<CR>
nnoremap sn gt          "次のタブ
nnoremap sp gT          "前のタブ

"close
nnoremap sq :<C-u>q<CR>
nnoremap sQ :<C-u>bd<CR
