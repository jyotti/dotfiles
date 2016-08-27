" ------------------------------------------------------------------------------
" ~/.config/vim/***.vim
" ~/.config/nvim/init.vim
" ------------------------------------------------------------------------------

" ------------------------------------------------------------------------------
" Initialize

if &compatible
  set nocompatible
endif

" Set augroup.
augroup MyAutoCmd
  autocmd!
augroup END

let s:cache_home = empty($XDG_CACHE_HOME) ? expand('$HOME/.cache') : $XDG_CACHE_HOME
let s:config_home = empty($XDG_CONFIG_HOME) ? expand('$HOME/.config') : $XDG_CONFIG_HOME
let s:vim_home = s:config_home . '/vim'

function! CacheHome() abort
  return s:cache_home
endfunction

function! VimHome() abort
  return s:vim_home
endfunction

function! Msg(msg) abort
  "echo '### ' . a:msg
endfunction

if has('vim_starting')
  execute 'source' VimHome() . '/init.vim'
endif

execute 'source' VimHome() . '/dein.vim'

syntax enable
filetype plugin indent on

" ------------------------------------------------------------------------------
" Configure

execute 'source' VimHome() . '/basic.vim'
execute 'source' VimHome() . '/mapping.vim'

" ------------------------------------------------------------------------------
" Platform

"if has('nvim')
"  execute 'source' VimHome() . '/neovim.vim'
"endif

if has('gui_running')
  set guifont=Ricty\ Regular\ for\ Powerline:h14
endif