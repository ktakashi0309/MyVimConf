"色の指定
set t_Co=256
set termguicolors
colorscheme desert
"自動改行をなくす
set textwidth=0
"折り返し時にもインデントを有効にする
set breakindent
"ウィンドウ幅で改行を挿入しない
set formatoptions=q
"ツールバーの非表示
set guioptions-=T
"メニューバーの非表示
set guioptions-=m
"全角文字フォント(guifontwide)を使用するためにvimシステムのエンコードをutf-8にする
set encoding=utf-8
"新規作成するファイルをutf-8で保存
set fileencoding=utf-8
"ファイルを開く際の自動判別優先順位
set fileencodings=utf-8,iso-2022-jp,cp932,sjis,enc-jp
"ステータスラインを2行にする
set stal=2
"タブ幅を半角4にする
set tabstop=2
"ステータスラインにエンコード等を表示する
set statusline=%<%f%m%r%h%w%{'[fenc='.&fenc.'][ff='.&ff.']'}%Y%=%l,%c%V%8P
"自動インデント時の幅をタブ一個分に設定
set shiftwidth=2
"タブ入力を複数の空白入力に置き換える
set expandtab 
"オートインデントを有効にする
set autoindent
"折り返し時もインデントを有効にする
set breakindent
"カーソル移動で行間移動
set whichwrap=b,s,h,l,<,>,[,],~
"バックアップ、スワップは作成しない{
  set nobackup
  set noswapfile
  set noundofile
"}

"行数表示
set number

"eolとtabを可視化する{
  scriptencoding utf-8
  set list
  set listchars=tab:»-,eol:↲,extends:»,precedes:«,nbsp:%
  autocmd Colorscheme * hi! link SpecialKey Ignore
  autocmd Colorscheme * hi! link NonText Ignore
"}

" BOM付きにする
set bomb

" netrwの履歴保存ファイルの作成を停止
let g:netrw_dirhistmax=0

" 未保存でもbackgroundへ行ける
set hidden

" 補完の挙動
set completeopt=menuone,noselect
inoremap <expr> <cr> pumvisible() ? "\<c-y>\<cr>" : "\<cr>"

" ファイルツリーの表示形式、1にするとls -laのような表示になります
let g:netrw_liststyle=1
" ヘッダを非表示にする
let g:netrw_banner=0
" サイズを(K,M,G)で表示する
let g:netrw_sizestyle="H"
" 日付フォーマットを yyyy/mm/dd(曜日) hh:mm:ss で表示する
let g:netrw_timefmt="%Y/%m/%d(%a) %H:%M:%S"
" プレビューウィンドウを垂直分割で表示する
let g:netrw_preview=1

runtime! pack/MyVimConf/plugin_vimrc
