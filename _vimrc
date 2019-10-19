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
"}
""全角スペースの可視化{
"  augroup highlightIdegraphicSpace
"    autocmd!
"    autocmd Colorscheme * highlight IdeographicSpace ctermbg=black guibg=black
"    "tabの可視化文字の色指定
"    "autocmd Colorscheme * hi SpecialKey guibg=NONE guifg=Gray40
"    autocmd Colorscheme * hi! link SpecialKey Ignore
"    "改行文字をtab文字と同じ色にする
"    autocmd Colorscheme * hi! link NonText Ignore
"    autocmd VimEnter,WinEnter * match IdeographicSpace /　/
"  augroup END
""}
"
""Ctrl+Sで上書き保存}
"  noremap <C-S>	:update<CR>
"  vnoremap <C-S>	<C-C>:update<CR>
"  inoremap <C-S>	<C-O>:update<CR>
""}
"
""netrw(ファイラー)がリモートコピーするときなどにプロンプトを出さない
"" let g:netrw_silent= 1

" BOM付きにする
set bomb

" netrwの履歴保存ファイルの作成を停止
let g:netrw_dirhistmax=0

" 未保存でもbackgroundへ行ける
set hidden
"autocmd FileType netrw setl bufhidden=wipe
"
"
"" netrwがウィンドウに表示されていないときにすぐにバッファから削除
"" function! QuitNetrw()
""   for i in range(1, bufnr($))
""     if buflisted(i)
""       if getbufvar(i, '&filetype') == "netrw"
""         silent exe 'bwipeout ' . i
""       endif
""     endif
""   endfor
"" endfunction
"" autocmd VimLeavePre * call QuitNetrw()
"
"" scala辞書
"autocmd FileType scala :set dictionary=$VIM/vimfiles/pack/MyVimConf/dict/scala.dict
"
" 補完の挙動
set completeopt=menuone,noselect

runtime! pack/MyVimConf/opt/plugin_vimrc
