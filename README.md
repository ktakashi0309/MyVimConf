# MyVimConf

## 導入
$VIM(vim.exeのあるフォルダ)内にvimfiles/packを作成する
vimfiles/pack内に本リポジトリをcloneする。
gitが使えない場合はgithubからzipをダウンロードして解凍する。
$VIMに下記内容で_gvimrcを作成する。
source $VIM/vimfiles/pack/MyVimConf/_gvimrc
$VIMに下記内容で_vimrcを作成する。
source $VIM/vimfiles/pack/MyVimConf/_vimrc
プラグインを使わない気でいる場合は本リポジトリの_gvimrc,_vimrcだけを$VIMに配置してもよい

## プラグインの追加
起動時に自動でloadしてほしいプラグインはstartディレクトリにcloneする。
起動後にloadするプラグインはoptディレクトリにcloneする。
optにcloneし、opt/plugin_enable_vimrcでloadするとコメントアウトですぐ無効化できる
cloneした後は.gitを削除することを忘れない。
作成したプラグインのディレクトリ内にプラグイン特有の設定を記述した_gvimrc,_vimrcを作成すると自動で読み込まれる。
