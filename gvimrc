"フォント設定{
if has('win64')
  set guifont=Cascadia_Code:h10:cANSI:qDRAFT,consolas:h10
  set guifontwide=MS_Gothic:h10
endif
"}

"アンチエイリアス設定
set renderoptions=type:directx,renmode:5

"無名レジスタに入れるデータを、*レジスタ(クリップボード)にも入れる
set clipboard=unnamedplus

"insert modeの<S-Insert>を貼り付けに
imap <S-Insert> <C-o>p

"ウィンドウ位置の保存{
  let g:save_window_file =expand('$VIMRUNTIME\vimwinpos')
  augroup SaveWindow
    autocmd!
    autocmd VimLeavePre * call s:save_window()
    function! s:save_window()
      let options = [
        \ 'set columns=' . &columns,
        \ 'set lines=' . &lines,
        \ 'winpos ' . getwinposx() . ' ' . getwinposy(),
        \ ]
      call writefile(options, g:save_window_file)
    endfunction
  augroup END
  if filereadable(g:save_window_file)
    execute 'source' g:save_window_file
  endif
"}

""TOhtmlコマンドカスタマイズ{
let html_no_pre = 1
let g:html_prevent_copy = "n"
let g:html_font = "Consolas"
function TOMyhtmlFunc()
  TOhtml
  w
  !start %:p
  sleep 2
  call delete(expand("%:p"))
  bd
endfunction
command TOhtmlAndDelete call TOMyhtmlFunc()
""}
"
if filereadable(expand(plug_home."/onehalf/vim/colors/onehalfdark.vim"))
  colorscheme onehalfdark
endif

