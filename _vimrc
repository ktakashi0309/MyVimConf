"色の指定
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
set fileencodings=iso-2022-jp,cp932,sjis,enc-jp,utf-8
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
"インサートモード時にemacsバインドで左右カーソル移動{
"補完が使えなくなるのでコメントアウト
"	inoremap <C-b> <Left>
"	inoremap <C-f> <Right>
"	inoremap <C-a> <C-o>^
"	inoremap <C-e> <C-o>$
"	inoremap <C-p> <Up>
"	inoremap <C-n> <Down>
"}
"バックアップ、スワップは作成しない{
  set nobackup
  set noswapfile
  set noundofile
"}

"行数表示
set number

"eolとtabを可視化する{
  set list
  set listchars=eol:↲,tab:▸»
  "特殊文字ストック$.<\~¶¬>\…->—>—-↲——»▸«
"}
"全角スペースの可視化{
  augroup highlightIdegraphicSpace
    autocmd!
    autocmd Colorscheme * highlight IdeographicSpace ctermbg=black guibg=black
    "tabの可視化文字の色指定
    "autocmd Colorscheme * hi SpecialKey guibg=NONE guifg=Gray40
    autocmd Colorscheme * hi! link SpecialKey Ignore
    "改行文字をtab文字と同じ色にする
    autocmd Colorscheme * hi! link NonText Ignore
    autocmd VimEnter,WinEnter * match IdeographicSpace /　/
  augroup END
"}

"Ctrl+Sで上書き保存}
  noremap <C-S>	:update<CR>
  vnoremap <C-S>	<C-C>:update<CR>
  inoremap <C-S>	<C-O>:update<CR>
"}

"netrw(ファイラー)がリモートコピーするときなどにプロンプトを出さない
let g:netrw_silent= 1

" pathを通す{
if has('vim_starting')
    let $PATH = $PATH . ";" . $VIM . "\\vimfiles\\pack\\MyVimConf\\bin;" . $VIM . "\\vimfiles\\pack\\MyVimConf\\bin\\python-3.7.1-embed-amd64"
end
"}

" BOM付きにする
set bomb

runtime! pack/MyVimConf/opt/plugin_vimrc
