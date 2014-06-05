dotfiles
========

実行

    sh bootstrap.sh

確認しない

    sh bootstrap.sh -f
## powerline
powerlineを適用させるのに苦労したため、忘れないようにメモ  
[このサイト](https://coderwall.com/p/yiot4q)のままやればいい。vim-pluginがBundle形式になってるけど。


* 対象とするpowerlineは[これ][powerline]
* fontはRicty
* iTerm2、tmux、vim(kaoriya)も使う

### 手順
iTerm2、tmux、vimはインスコされているとして...

1. brewでRictyをインスコするときに、powerline適用fontをオプション指定

        brew tap sanemat/font
        brew install --powerline --vim-powerline ricty

1. fontをMacに適用させる

        brew info ricty
    表示された通りにやっておけばおけ

1. iTerm2のfontをpowerline用に変更 [このあたり参照](https://coderwall.com/p/yiot4q)

1. vimにpowerlineプラグインとかを設定。[powerline](https://powerline.readthedocs.org/en/latest/overview.html#vim-statusline)に説明がある


        NeoBundle 'Lokaltog/powerline', { 'rtp' : 'powerline/bindings/vim'}

        set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
        set guifont=Ricty\ Regular\ for\ Powerline
        set statusline=2


[powerline]: https://powerline.readthedocs.org/en/latest/

## other
個別でインスコするやつ

* [gvm](http://gvmtool.net/)
* pipやgemとか
