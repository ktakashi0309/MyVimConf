# MyVimConf

## 導入
gitが使えない方  
OneDriveで共有されている下記をダウンロードするとMyVimConfが入ったKaoriya-vimが使えます。
https://1drv.ms/f/s!AmB3qp3WRH4DlOk89_fRJb0SSMv6mA

gitが使える方  
kaoriya-vimを本家からダウンロードしてください。
$VIM(vim.exeのあるフォルダ)内にvimfiles/packディレクトリを作成する。
vimfiles/pack内に本リポジトリを--recursive でcloneする。  
$VIMに下記内容で_gvimrcを作成する。  
~~~
source $VIM/vimfiles/pack/MyVimConf/_gvimrc
~~~
$VIMに下記内容で_vimrcを作成する。  
~~~
source $VIM/vimfiles/pack/MyVimConf/_vimrc
~~~

## プラグインの追加
optディレクトリにプラグインのリポジトリをgit submoduleでcloneする。
opt/plugin_vimrcでプラグインのロード有無やプラグインに関する設定を記述する。
バイナリに依存するプラグインを導入する場合はバイナリをbinファルダに入れるとvim起動時にpathが通る
