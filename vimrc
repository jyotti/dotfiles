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

if has('vim_starting')
  execute 'source' VimHome() . '/init.vim'
endif

execute 'source' VimHome() . '/dein.vim'

if !has('vim_starting')
  syntax enable
  filetype plugin indent on
endif
