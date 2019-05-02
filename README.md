# MyVimConf

## 概要
VimのプラグインをVim標準のパッケージ管理機能で管理するためのリポジトリ。
つまりVimプラグインの集まりであるVimパッケージである。
プラグインの有効無効を簡単に切り替えできるよう一つのファイルで管理する。
また、一般的な_vimrc,_gvimrcも付随する。

## 導入
  
kaoriya-vimを本家からダウンロードしてください。
~~~
# $VIM(vim.exeのあるフォルダ)内にvimfiles/packディレクトリを作成する。
New-Item vimfiles/pack -ItemType Directory
# vimfiles/pack内に本リポジトリを--recursive でcloneする。  
cd vimfiles/pack
git clone --recursive https://github.com/ktakashi0309/MyVimConf.git
cd ../..
# $VIMに下記内容で_gvimrcを作成する。  
write-output 'source $VIM/vimfiles/pack/MyVimConf/_gvimrc'|out-file _gvimrc
# $VIMに下記内容で_vimrcを作成する。  
write-output 'source $VIM/vimfiles/pack/MyVimConf/_vimrc'|out-file _vimrc
~~~

## プラグインの追加
optディレクトリにプラグインのリポジトリをgit submodule addする。
opt/plugin_vimrcでプラグインのロード有無やプラグインに関する設定を記述する。
バイナリに依存するプラグインを導入する場合はバイナリをbinファルダに入れるとvim起動時にpathが通る

## 備考
opt/plugin_vimrcは___vimrcとgvimrcの両方から呼ばれることに注意！
これはプラグインの設定をvimrc用とgvimrc用の二つ用意する煩雑さを回避する苦肉の策である。
