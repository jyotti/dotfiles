dotfiles
========

dotfileの設定

    sh bootstrap.sh

確認しないで更新

    sh bootstrap.sh -f
## setting-powerline
* 対象とするpowerlineは[これ](https://powerline.readthedocs.org/en/latest/)
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

## other
個別でインスコするやつ

* [gvm](http://gvmtool.net/)
* pip
  * awscli
