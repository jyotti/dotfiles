set nocompatible               " Be iMproved

if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Recommended to install
" After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
NeoBundle 'Shougo/vimproc'

" My Bundles here:
"
" Note: You don't set neobundle setting in .gvimrc!
" Original repos on github
"" vim git wrapper
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" color!!
NeoBundle 'altercation/solarized'
" contents assist
NeoBundle 'Shougo/neocomplcache'
" html/css helper
NeoBundle 'mattn/zencoding-vim'
NeoBundle 'scrooloose/nerdtree'
" colorful status line
NeoBundle 'Lokaltog/vim-powerline'
" vim-scripts repos
NeoBundle 'L9'
NeoBundle 'FuzzyFinder'
NeoBundle 'rails.vim'
" Non github repos
"" NeoBundle 'git://git.wincent.com/command-t.git'
" Non git repos
"" NeoBundle 'http://svn.macports.org/repository/macports/contrib/mpvim/'
"" NeoBundle 'https://bitbucket.org/ns9tks/vim-fuzzyfinder'

filetype plugin indent on     " Required!
"
" Brief help
" :NeoBundleList          - list configured bundles
" :NeoBundleInstall(!)    - install(update) bundles
" :NeoBundleClean(!)      - confirm(or auto-approve) removal of unused bundles
" Installation check.
NeoBundleCheck

" neocomplcache
let g:neocomplcache_enable_at_startup = 1

" load configs...
source ~/.vim/userautoload/basic.vim
source ~/.vim/userautoload/color.vim
source ~/.vim/userautoload/editor.vim
source ~/.vim/userautoload/search.vim
