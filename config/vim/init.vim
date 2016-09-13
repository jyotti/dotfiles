" ------------------------------------------------------------------------------
" Initialize

" <Leader>
let g:mapleader = "\<Space>"
" <LocalLeader>
let g:maplocalleader = ","

" Load dein.
let s:dein_dir = CacheHome() . '/dein'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
if !isdirectory(s:dein_repo_dir)
  execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
endif
execute 'set runtimepath^=' . s:dein_repo_dir

" *** neovim ***
if !empty($PYENV_ROOT)
  call Msg('Found $PYENV_ROOT')
  let g:python3_host_prog = expand('$PYENV_ROOT/shims/python')
endif
