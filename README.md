# MyVimConf

## 概要
VimのプラグインをVim標準のパッケージ管理機能で管理するためのリポジトリ。
つまりVimプラグインの集まりであるVimパッケージである。
プラグインの有効無効を簡単に切り替えできるよう一つのファイルで管理する。
また、一般的な_vimrc,_gvimrcも付随する。

## 導入
  
~~~
# kaoriyaVimをCドライブ直下にインストール
Invoke-WebRequest -uri https://github.com/koron/vim-kaoriya/releases/download/v8.1.1048-20190325/vim81-kaoriya-win64-8.1.1048-20190325.zip-OutFile $env:temp\gvim.zip
Expand-Archive $env:temp\gvim.zip -DestinationPath C:\
remove-item $env:temp\gvim.zip
# $VIM(vim.exeのあるフォルダ)内にvimfiles/packディレクトリを作成する。
cd C:\vim81-kaoriya-win64
New-Item vimfiles/pack -ItemType Directory
# $VIMに下記内容で_gvimrcを作成する。  
write-output 'source $VIM/vimfiles/pack/MyVimConf/_gvimrc'|out-file -Encoding ascii _gvimrc
# $VIMに下記内容で_vimrcを作成する。  
write-output 'source $VIM/vimfiles/pack/MyVimConf/_vimrc'|out-file -Encoding ascii _vimrc
# vimfiles/pack内に本リポジトリを--recursive でcloneする。  
cd vimfiles/pack
git clone --recursive https://github.com/ktakashi0309/MyVimConf.git
~~~

## プラグインの追加
optディレクトリにプラグインのリポジトリをgit submodule addする。
プラグインの中もsubmoduleがある場合はプラグインのディレクトリ内で
git submodule init
git submodule update
を実行する
opt/plugin_vimrcでプラグインのロード有無やプラグインに関する設定を記述する。
バイナリに依存するプラグインを導入する場合はバイナリをbinファルダに入れるとvim起動時にpathが通る
