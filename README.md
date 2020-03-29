# MyVimConf

## 概要
* VimのプラグインをVim標準のパッケージ管理機能で管理するためのリポジトリ。
* つまりVimプラグインの集まりであるVimパッケージである。
* プラグインの有効無効を簡単に切り替えできるよう一つのファイルで管理する。
* また、一般的な_vimrc,_gvimrcも付随する。

## 依存
* git,vim,curlをインストールしてください。

### Ubuntu18.04の場合
```
sudo apt -y install build-essential ncurses-dev xorg-dev curl libgtk-3-dev git

git clone https://github.com/vim/vim.git ~/.local/share/vim
cd ~/.local/share/vim
./configure --with-features=huge --enable-fail-if-missing --enable-multibyte --with-x --enable-gui=gtk3 --enable-fontset --enable-gpm --enable-cscope
make

sudo make install

cd ~/.local/share
git clone https://github.com/ktakashi0309/MyVimConf.git
mkdir ~/.vim
echo 'source $HOME/.local/share/MyVimConf/vimrc' > ~/.vim/vimrc
echo 'source $HOME/.local/share/MyVimConf/gvimrc' > ~/.vim/gvimrc

```


## Rustを書く場合
* cargo,rlsをインストールしてください。`https://github.com/rust-lang/rls`

## Pythonの場合
* python3-venv flake8, pyls, mypy をインストール

### Ubuntu18.04の場合
```
sudo apt -y install python3-venv python3-pip
pip3 install flake8 python-language-server mypy
```


## Poetryの場合
### Ubuntu18.04の場合
* poetry環境の場合は`poetry shell`のあとgvimを起動します
```
pip3 install poetry
# 一度ログアウトが必要
poetry init
poetry add --dev autopep8
```


## Cの場合
* VisualStudioをインストールしてください
* VisualStudioからclandをインストールしてください
* clandにpathを通す必要があります。

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
plugin_vimrcでプラグインのロード有無やプラグインに関する設定を記述する。
