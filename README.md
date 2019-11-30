# MyVimConf

## 概要
* VimのプラグインをVim標準のパッケージ管理機能で管理するためのリポジトリ。
* つまりVimプラグインの集まりであるVimパッケージである。
* プラグインの有効無効を簡単に切り替えできるよう一つのファイルで管理する。
* また、一般的な_vimrc,_gvimrcも付随する。

## 依存
* vimをインストールしてください。
* gitをインストールしてください。


## Rustを書く場合
* cargo,rlsをインストールしてください。`https://github.com/rust-lang/rls`

## Pythonの場合
* flake8をインストールしてください。`https://pypi.org/project/flake8/`
* pylsをインストールしてください。`https://pypi.org/project/python-language-server/`
* poetry環境の場合は`poetry shell`を実行した後にvimを起動します

## 導入
  
Windows
```
cd ~
New-Item vimfiles/pack -ItemType Directory
write-output 'source $HOME/vimfiles/pack/MyVimConf/_gvimrc'|out-file -Encoding ascii gvimrc
write-output 'source $HOME/vimfiles/pack/MyVimConf/_vimrc'|out-file -Encoding ascii vimrc
cd vimfiles/pack
git clone --recursive https://github.com/ktakashi0309/MyVimConf.git
```

Linux
```
cd ~
mkdir -p .vim/pack
cd .vim
echo 'source $HOME/.vim/pack/MyVimConf/_vimrc' > _vimrc
echo 'source $HOME/.vim/pack/MyVimConf/_gvimrc' > _gvimrc
cd pack
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
