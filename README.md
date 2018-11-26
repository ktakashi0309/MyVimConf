# MyVimConf

## 導入
$VIM(vim.exeのあるフォルダ)内にvimfiles/packを作成する
vimfiles/pack内に本リポジトリをcloneする。
gitが使えない場合はgithubからzipをダウンロードして解凍する。
$VIMに下記内容で_gvimrcを作成する。
source $VIM/vimfiles/pack/MyVimConf/_gvimrc
$VIMに下記内容で_vimrcを作成する。
source $VIM/vimfiles/pack/MyVimConf/_vimrc

## プラグインの追加
起動時に自動で読み込んでほしいプラグインはstartディレクトリにcloneする。
起動後に読み込むプラグインはoptディレクトリにcloneする。
cloneした後は.gitを削除することを忘れない。
