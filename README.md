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
* poetry環境の場合は`poetry shell`のあとgvimを起動します

## 導入
  
Windows
```
cd ~
New-Item vimfiles/pack -ItemType Directory
write-output 'source $HOME/vimfiles/pack/MyVimConf/_gvimrc'|out-file -Encoding ascii vimfiles/gvimrc
write-output 'source $HOME/vimfiles/pack/MyVimConf/_vimrc'|out-file -Encoding ascii vimfiles/vimrc
cd vimfiles/pack
git clone --recursive https://github.com/ktakashi0309/MyVimConf.git
```

Linux
```
cd ~
mkdir -p .vim/pack
echo 'source $HOME/.vim/pack/MyVimConf/_vimrc' > .vim/_vimrc
echo 'source $HOME/.vim/pack/MyVimConf/_gvimrc' > .vim/_gvimrc
cd .vim/pack
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
