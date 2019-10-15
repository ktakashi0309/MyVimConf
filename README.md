# MyVimConf

## 概要
VimのプラグインをVim標準のパッケージ管理機能で管理するためのリポジトリ。
つまりVimプラグインの集まりであるVimパッケージである。
プラグインの有効無効を簡単に切り替えできるよう一つのファイルで管理する。
また、一般的な_vimrc,_gvimrcも付随する。

## 依存
vimをインストールしてください。
自動補完を利用する場合はnodejsがインストールされていてかつvim起動後に各言語のエクステンションとエクステンションが利用するlspのインストールが必要です。


## Rustの場合
vimを起動し
```
:CocInstall coc-rls
```
を実行してください

## Pythonの場合
vimを起動し、
```
:CocInstall coc-python
```
を実行してください

## 導入
  
Windows
```
# ホームディレクトリ内にvimfiles/packディレクトリを作成する。
cd ~
New-Item vimfiles/pack -ItemType Directory
# $HOMEに下記内容で_gvimrcを作成する。  
write-output 'source $HOME/vimfiles/pack/MyVimConf/_gvimrc'|out-file -Encoding ascii gvimrc
# $HOMEに下記内容で_vimrcを作成する。  
write-output 'source $HOME/vimfiles/pack/MyVimConf/_vimrc'|out-file -Encoding ascii vimrc
# vimfiles/pack内に本リポジトリを--recursive でcloneする。  
cd vimfiles/pack
git clone --recursive https://github.com/ktakashi0309/MyVimConf.git
```

Linux
```
# ホームディレクトリ内に.vim/packディレクトリを作成する。
cd ~
mkdir .vim
cd .vim
# _vimrcを作成する。  
echo 'source $HOME/.vim/pack/MyVimConf/_vimrc' > _vimrc
mkdir pack
cd pack
# リポジトリを--recursive でcloneする。  
git clone --recursive https://github.com/ktakashi0309/MyVimConf.git
```

## プラグインの追加
optディレクトリにプラグインのリポジトリをgit submodule addする。
プラグインの中もsubmoduleがある場合はプラグインのディレクトリ内で
```
git submodule init
git submodule update
```
を実行する
opt/plugin_vimrcでプラグインのロード有無やプラグインに関する設定を記述する。
バイナリに依存するプラグインを導入する場合はバイナリをbinファルダに入れるとvim起動時にpathが通る
