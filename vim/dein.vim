" ------------------------------------------------------------------------------
" Configure dein

let s:dein_dir = CacheHome() . '/dein'
let s:toml_file = VimHome() . '/dein.toml'
let s:lazy_toml_file = VimHome() . '/deinlazy.toml'

" load dein
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)
  call dein#load_toml(s:toml_file,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml_file, {'lazy': 1})
  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif
