# 依存
* git,vim8.2,curlをインストールしてください。

## Ubuntu18.04の場合
```
sudo apt -y install build-essential ncurses-dev xorg-dev curl libgtk-3-dev git

git clone https://github.com/vim/vim.git ~/.local/share/vim
cd ~/.local/share/vim
./configure --with-features=huge --enable-fail-if-missing --enable-multibyte --with-x --enable-gui=gtk3 --enable-fontset --enable-gpm --enable-cscope
make
sudo make install
```

## Windowsの場合
* git for windowsをインストール
* kaoriya vim をダウンロード・解凍して%USERPROFILE%\AppData\Local においてPathを通す
* curl はデフォルトで入っている

# インストール方法
## Ubuntu18.04の場合
```
cd ~/.local/share
git clone https://github.com/ktakashi0309/MyVimConf.git
mkdir ~/.vim
echo 'source $HOME/.local/share/MyVimConf/vimrc' > ~/.vim/vimrc
echo 'source $HOME/.local/share/MyVimConf/gvimrc' > ~/.vim/gvimrc
```
## Windowsの場合
```
cd ~/AppData/Local
git clone https://github.com/ktakashi0309/MyVimConf.git
mkdir ~\vimfiles
write-output 'source $HOME\AppData\Local\MyVimConf\gvimrc'|out-file -Encoding ascii ~\vimfiles\gvimrc
write-output 'source $HOME\AppData\Local\MyVimConf\vimrc'|out-file -Encoding ascii ~\vimfiles\vimrc
```

# 各言語環境でのセットアップ

## Rust
* cargo,rlsをインストールしてください。`https://github.com/rust-lang/rls`

## Python
### Ubuntu18.04の場合
```
sudo apt -y install python3-venv python3-pip
pip3 install --update pip3
pip3 install flake8 python-language-server mypy
```
### Windowsの場合
* visual studioからpythonをインストールして下記のPathを一番上に追加
```
C:\Program Files (x86)\Microsoft Visual Studio\Shared\Python37_64\Scripts
C:\Program Files (x86)\Microsoft Visual Studio\Shared\Python37_64
```
* powershellで下記実行
```
pip install --upgrade --user pip
```
* 下記パスを一番上に追加(pythonのバージョンは合わせる)
```
%USERPROFILE%\AppData\Roaming\Python\Python37\Scripts
```
* powershellを開きなおして下記実行
```
pip install --user flake8 python-language-server mypy
```

## Poetry
* python環境をインストールしておく
### Ubuntu18.04の場合
* poetry環境の場合は`poetry shell`のあとgvimを起動します
```
pip3 install poetry
# 一度ログアウトが必要
poetry init
poetry add --dev autopep8
```

### Windowsの場合
```
pip install --user poetry
poetry init
poetry add --dev autopep8
```

## C言語
* VisualStudioをインストールしてください
* VisualStudioからclandをインストールしてください
* clandにpathを通す必要があります。
