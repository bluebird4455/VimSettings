"--------------------------------------
" ★Display★
"--------------------------------------
" 以下のコマンドは :colorscheme の前に設定
" 行番号の色を設定
autocmd ColorScheme * highlight LineNr guifg=#ffdab9
autocmd ColorScheme * highlight CursorLineNr guifg=#ff7f50

" カラースキーム設定
" 配置場所：vim80-kaoriya-win64\vim80\colors\*.vim"
"colorscheme iceberg
colorscheme desert

set background=dark
syntax on "シンタックスカラーリングを設定する
set number "行番号を表示する
set title "編集中のファイル名を表示する
set showcmd "入力中のコマンドを表示する
set ruler "座標を表示する
set showmatch "閉じ括弧の入力時に対応する括弧を表示する
set matchtime=2 "showmatchの表示時間
set laststatus=2 "ステータスラインを常に表示する
set nowrap " 行を折り返し表示しない
set showtabline=2 "タブバーを常に表示する

set lines=33 " ウィンドウの縦幅
set columns=140 " ウィンドウの横幅

" フォント設定
set guifont=PlemolJP:h14

" カーソルの存在する行番号の色を変更するための設定
set cursorline "カーソル有効化
hi clear CursorLine "カーソルラインの色を無効化

" IMEの状態でカーソルの色を変更する
if has('multi_byte_ime')
"  highlight Cursor guifg=NONE guibg=Purple
  highlight CursorIM guifg=NONE guibg=Green
endif

"==============================================================================
" Vimエディタ .gvimrc 
"------------------------------------------------------------------------------
"  version : 2026/01/12 10:45
"  since   : 2017/11/08
"==============================================================================
