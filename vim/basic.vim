" ------------------------------------------------------------------------------
" View

set number
set ruler
" カーソルの上または下に表示する最小限の行数
set scrolloff=5
" テキストの自動折り返し 0=折り返さない
set textwidth=0
" no beep
set vb t_vb=

" Vimの外部で変更されたことが判明したとき、自動的に読み直す
set autoread
" 保存しなくても他のファイルを開けるようにする
set hidden

" backup
set nobackup
set noswapfile

" 自動改行の振る舞い :help fo-table
" r - insert-mode<Enter>でコメントを自動挿入
" o - normal-mode<o>でコメントを自動挿入
set formatoptions-=ro     " コメントの自動挿入は不要

" コマンドラインの高さ
set cmdheight=2

" --- powerlineを想定した設定 ---
" ステータス行を常に表示する
set laststatus=2
" タブの表示
set showtabline=2       " Always display the tabline, even if there is only one tab
" モードの表示
set noshowmode          " Hide the default mode text (e.g. -- INSERT -- below the statusline)

" GUIオプション gvimなど
if has('gui_running')
  set guioptions+=a
endif

" ------------------------------------------------------------------------------
" Edit

" <BS>でインデントや改行を削除できるようにする
set backspace=indent,eol,start

" 行頭や行末の回りこみ移動
"  b - <BS>     normal,visual
"  s - <Space>  normal,visual
"  < - <Left>   normal,visual
"  > - <Right>  normal,visual
"  ~ - "~"      normal
"  [ - <Left>   insert,replace
"  ] - <Right>  insert,replace
set whichwrap=b,s                 " <BS><Space>のみ

" ファイルブラウザの初期ディレクトリ
"  last,buffer,current,{path}
set browsedir=buffer

" 長いテキスト行でも描画 :help 'display'
"set display=lastline

" 補完メニューの高さ
set pumheight=10

" 括弧を強調表示
set showmatch
" showmatchに反応してジャンプするまでの秒数
set matchtime=1

" modelineは使わないので無効にする
set nomodeline

" vimでヤンクしたらクリップボードにも反映
set clipboard+=unnamed

" すべてのモードでマウスを有効に
set mouse=a
set ttymouse=xterm2

" ------------------------------------------------------------------------------
" Indent

" <Tab>をSpaceに変換する
set expandtab

" 改行したときにインデント幅を自動で設定
set autoindent

" { 等でも自動インデント
set smartindent

" 画面で表示する<Tab>の空白数
set tabstop=2

" <Tab>の挿入や<BS>の使用等の編集操作をするときに、<Tab>が対応する空白の数
set softtabstop=2

" インデントの空白の数
set shiftwidth=2

" 行頭の余白内で<Tab>を打ち込むと、'shiftwidth'の数だけインデントする
set smarttab

" ------------------------------------------------------------------------------
" Search

" インクリメンタルサーチ
set incsearch
" 検索文字のハイライト
set hlsearch
" 最後まで検索したら先頭へ戻る
set wrapscan
" 大文字小文字無視
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase

" ------------------------------------------------------------------------------
" Cursor

" カーソル行ハイライト
set cursorline
" numberのみハイライト
"hi clear CursorLine
highlight CursorLine ctermbg=black guibg=black

" カレントウィンドウのみカーソルハイライト
augroup cch
  autocmd! cch
  autocmd WinLeave * set nocursorline
  autocmd WinEnter,BufRead * set cursorline
augroup END