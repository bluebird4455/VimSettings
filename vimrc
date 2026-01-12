"--------------------------------------
" ★マッピングメモ★
"--------------------------------------
"| モード                                 | 再割当無し | 再割当有り |
"|----------------------------------------|------------|------------|
"| ノーマルモード＋ビジュアルモード       | noremap    | map        |
"| コマンドラインモード＋インサートモード | noremap!   | map!       |
"| ノーマルモード                         | nnoremap   | nmap       |
"| ビジュアル(選択)モード                 | vnoremap   | vmap       |
"| コマンドラインモード                   | cnoremap   | cmap       |
"| インサート(挿入)モード                 | inoremap   | imap       |

" マッピングに関するMEMO
" noreがつくものとつかないものの違い（mapとnoremapとか）
" noreがつかないものを使うと、キーの再割当てが発生する
" -> mapはキーシーケンスを展開した後、さらに別のマップを適用しようとする
" -> noremapは一度だけ展開する
" (例)
" map {A} {X}
" map {B} {A}
" 上のようにマッピングされていた場合、Bを押すとAが実行され、さらにAに割り当てられたXが実行される
" noremapだとマッピングを1度しか展開しない  混乱を避けるためにnore系を利用するのが無難かも

"<Leader>キー：バックスラッシュ(\)のこと

"--------------------------------------
" ★Plugin★
"  プラグイン設定はここに記述する。
"--------------------------------------

"" unite {{{ " 統合ユーザインターフェース(ランチャー)
"let g:unite_enable_start_insert=0
"" バッファ一覧を開く
"nmap <silent> <C-s><C-b> :<C-u>Unite buffer<CR>
"" 編集中のファイルが存在するディレクトリを開く
"nmap <silent> <C-s><C-f> :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
"" レジスタ一覧を開く
"nmap <silent> <C-s><C-r> :<C-u>Unite -buffer-name=register register<CR>
"" 最近使ったファイル一覧を開く
"nmap <silent> <C-s><C-m> :<C-u>Unite file_mru<CR>
"" バッファと最近使ったファイルの一覧を開く
"nmap <silent> <C-s><C-u> :<C-u>Unite buffer file_mru<CR>
"" 全部開く
"nmap <silent> <C-s><C-a> :<C-u>UniteWithBufferDir -buffer-name=files buffer file_mru bookmark file<CR>
"au FileType unite nmap <silent> <buffer> <expr> <C-j> unite#do_action('split')
"au FileType unite imap <silent> <buffer> <expr> <C-j> unite#do_action('split')
"au FileType unite nmap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
"au FileType unite imap <silent> <buffer> <expr> <C-l> unite#do_action('vsplit')
"au FileType unite nmap <silent> <buffer> <ESC><ESC> q
"au FileType unite imap <silent> <buffer> <ESC><ESC> <ESC>q
"" }}}

"" vim-submode {{{ " ウィンドウサイズの調整
"call submode#enter_with('bufmove', 'n', '', 's>', '<C-w>>')
"call submode#enter_with('bufmove', 'n', '', 's<', '<C-w><')
"call submode#enter_with('bufmove', 'n', '', 's+', '<C-w>+')
"call submode#enter_with('bufmove', 'n', '', 's-', '<C-w>-')
"call submode#map('bufmove', 'n', '', '>', '<C-w>>')
"call submode#map('bufmove', 'n', '', '<', '<C-w><')
"call submode#map('bufmove', 'n', '', '+', '<C-w>+')
"call submode#map('bufmove', 'n', '', '-', '<C-w>-')
"" }}}

"" yankround.vim {{{ " コピペ拡張
"nmap p <Plug>(yankround-p)
"nmap P <Plug>(yankround-P)
"nmap <C-p> <Plug>(yankround-prev)
"nmap <C-n> <Plug>(yankround-next)
"let g:yankround_max_history = 100
"let g:yankround_dir = '~/.vim/yankround'
"let g:yankround_use_region_hl = 1
""nnoremap <Leader><C-p> :<C-u>Unite yankround<CR>
"nmap <silent> <C-s><C-y> :<C-u>Unite yankround<CR>
"" }}}

"" im_control.vim {{{ " 日本語入力固定モード
"if has('gui_running')
"  " 「日本語入力固定モード」の動作モード
"  let IM_CtrlMode = 4
"  " GVimで<C-^>が使える場合の「日本語入力固定モード」切替キー
"  inoremap <silent> <C-z> <C-^><C-r>=IMState('FixMode')<CR>
"else
"  " 非GUIの場合(この例では「日本語入力固定モード」を無効化している)
"  let IM_CtrlMode = 0
"endif
"" 「日本語入力固定モード」をコマンドラインに表示するための設定
"set cmdheight=2
"" }}}

"" vim-indent-guides.vim {{{ " インデント可視化
"" vimを立ち上げたときに、自動的にvim-indent-guidesをオンにする
"let g:indent_guides_enable_on_vim_startup = 1
"" }}}

"" lexima.vim {{{ " 括弧自動補完
"" }}}

"" ljsdoc.vim {{{ " Javascript JSdoc補完機能
"nmap <silent> <C-l> ?function<cr>:noh<cr><Plug>(jsdoc)
"" }}}

"" EasyMotion.vim {{{ " Vim-EasyMotion カーソル移動系
"map <Space> <Plug>(easymotion-s2)
"" }}}

"--------------------------------------
" ★Encode★
"--------------------------------------
" 下記の指定は環境によって文字化けする可能性があるので適宜変更する
set encoding=UTF-8 "文字コードをUTF-8にする
set fileencodings=set fileencodings=utf-8,iso-2022-jp,euc-jp,sjis "ファイルを開いた時の文字コードを適宜判別する
set termencoding=UTF-8 "文字コードをUTF-8にする
scriptencoding cp932 "WindowsでKaoriya GVimを使うので内部エンコーディングはcp932

"--------------------------------------
" ★File★
"--------------------------------------
set hidden "ファイル変更中でも他のファイルを開けるようにする
set autoread "ファイル内容が変更されると自動読み込みする
" ステータスラインにファイル名などを表示
set statusline=%F%m%r%h%w\%=[TYPE=%Y]\[FORMAT=%{&ff}]\[ENC=%{&fileencoding}]\[LOW=%l/%L]
"set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
syntax on "構文強調表示を有効

"--------------------------------------
" ★Backup★
"--------------------------------------
set backupdir=$HOME/.vim/backup "バックアップディレクトリを指定する
set browsedir=buffer "ファイル保存ダイアログの初期ディレクトリをバッファファイル位置に設定
set directory=$HOME/.vim/tmp "スワップファイルディレクトリを指定する
set history=1000 "履歴保存数
set noundofile "Undoファイルを作成しない

" Vimのスワップファイルが存在した場合、読み込みモードで開く
augroup swapchoice-readonly
  autocmd!
  autocmd SwapExists * let v:swapchoice = 'o'
augroup END

"--------------------------------------
" ★Search★
"--------------------------------------
set incsearch "インクリメンタルサーチを行う
set hlsearch "検索結果をハイライトする
set ignorecase "検索時に文字の大小を区別しない
set smartcase "検索時に大文字を含んでいたら大小を区別する
set wrapscan "検索をファイルの先頭へループする


"--------------------------------------
" ★Editor★
"--------------------------------------
set cindent "C言語のインデントに従って自動インデントを行う
set shiftwidth=2 "行頭での<Tab>の幅
set tabstop=2 "行頭以外での<Tab>の幅
set expandtab "<Tab>の代わりに<Space>を挿入する
set softtabstop=2 "expandtabで<Tab>が対応する<Space>の数
set backspace=indent,eol,start
set whichwrap=b,s,h,l,<,>,[,] "カーソルを行頭、行末で止まらないようにする
set clipboard=unnamed "クリップボードを利用する

"" 空白文字を表示
set list "タブ、行末等の不可視文字を表示する
set listchars=tab:^>,trail:_,eol:$
" scriptencoding utf-8 "これ入れないと下記が反映されない ←下記の全角スペース表示設定のためにコメント化

""""""""""""""""""""""""""""""
"全角スペースを表示
""""""""""""""""""""""""""""""
"コメント以外で全角スペースを指定しているので scriptencodingと、
"このファイルのエンコードが一致するよう注意！
"全角スペースが強調表示されない場合、ここでscriptencodingを指定すると良い。
"scriptencoding cp932

"デフォルトのZenkakuSpaceを定義
function! ZenkakuSpace()
  highlight ZenkakuSpace cterm=underline ctermfg=darkgrey gui=underline guifg=darkgrey "ctermbg=Red guibg=Red
endfunction

if has('syntax')
  augroup ZenkakuSpace
    autocmd!
    " ZenkakuSpaceをカラーファイルで設定するなら次の行は削除
    autocmd ColorScheme       * call ZenkakuSpace()
    " 全角スペースのハイライト指定
    autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
    autocmd VimEnter,WinEnter * match ZenkakuSpace '\%u3000'
  augroup END
  call ZenkakuSpace()
endif

scriptencoding utf-8 "これ入れないと下記が反映されない

"--------------------------------------
" ★KeyMap★
"--------------------------------------
" *****挿入モード*****
" 'Ctrl-*'でコマンドモードでの移動を可能にする
"   h,j,k,lで上下左右にカーソル移動
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
" 'jj'でノーマルモードに戻る
inoremap <silent> jj <ESC>

" 自動的に閉じ括弧を補完する
"inoremap { {}<LEFT>
"inoremap {<Enter> {}<Left><CR><ESC><S-o>
"inoremap ( ()<LEFT>
"inoremap (<Enter> ()<Left><CR><ESC><S-o>
"inoremap [ []<LEFT>
"inoremap < <><LEFT>


" *****ノーマルモード*****
" 置換コマンドを入力することができる。（<M-/>はAlt + m）
nnoremap <M-/> :%s/old/new/gc
" 'Y'で[カーソルから行末までコピーする]'y$'に変更（元は[一行をコピーする]）
nnoremap Y y$
"" 数字のインクリメント、デグリメント
nnoremap + <C-a>
nnoremap - <C-x>
" 矢印キーなら行内を上下に移動できるようにする
nnoremap <Down> gj
nnoremap <Up> gk

"" ウィンドウ分割設定
" 小文字's'のマッピングを無効化
nnoremap s <Nop>
" ウィンドウ分割
nnoremap ss :<C-u>sp<CR> " 水平分割
nnoremap sv :<C-u>vs<CR> " 垂直分割
" 分割したウィンドウ間の移動
nnoremap sj <C-w>j " 下に移動
nnoremap sk <C-w>k " 上に移動
nnoremap sl <C-w>l " 右に移動
nnoremap sh <C-w>h " 左に移動
nnoremap sw <C-w>w " 次に移動
" 分割したウィンドウを移動
nnoremap sJ <C-w>J " 下に移動
nnoremap sK <C-w>K " 上に移動
nnoremap sL <C-w>L " 右に移動
nnoremap sH <C-w>H " 次に移動
nnoremap sr <C-w>r " 回転
" ウィンドウサイズの調整
nnoremap so <C-w>_<C-w>| " 縦横最大化
nnoremap s= <C-w>= " 大きさを揃える
nnoremap sO <C-w>= " 大きさを揃える
" タブページ
nnoremap st :<C-u>tabnew<CR> " 新規タブ
nnoremap sn gt " 次のタブに切り替え
nnoremap sp gT " 前のタブに切り替え
" 閉じる
nnoremap sq :<C-u>q<CR> " ウィンドウを閉じる
nnoremap sQ :<C-u>bd<CR> " バッファを閉じる
" 不明
"nnoremap sN :<C-u>bn<CR> " 不明
"nnoremap sP :<C-u>bp<CR> " 不明

" true/falseの切り替え
function! BooleanToggle()
  let l:word = expand("<cword>")
  let l:bool = {'true': 'false', 'false': 'true'}
  if has_key(l:bool, l:word)
    let l:tmp = @a
    let @a = l:bool[l:word]
    execute 'normal "_diw'
    execute 'normal "aP'
    let @a = l:tmp
  endif
endfunction
nnoremap <silent> <LEADER>+ :call BooleanToggle()<CR>

" 複数行をまとめて連続でインデント
vnoremap > >gv
vnoremap < <gv

let mapleader = "\<Space>"

"--------------------------------------
" ★Display★
"  補足：_gvimrc
"--------------------------------------
set number "行番号を表示する
set relativenumber "相対行番号を表示する
set display=lastline "一行の表示文字数を上げる
set pumheight=10 "補完メニューの高さ
set title "編集中のファイル名を表示する
set showcmd "入力中のコマンドを表示する
set ruler "座標を表示する
set showmatch "閉じ括弧の入力時に対応する括弧を表示する
set matchtime=2 "showmatchの表示時間
set laststatus=2 "ステータスラインを常に表示する


""""""""""""""""""""""""""""""""""""""""""""""""
"相対行番号を絶対行番号を切り替える
""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <C-k> :<C-u>setlocal relativenumber!<CR>


""""""""""""""""""""""""""""""""""""""""""""""""
"挿入モード時、ステータスラインの色を変更
""""""""""""""""""""""""""""""""""""""""""""""""
let g:hi_insert = 'highlight StatusLine guifg=firebrick3 guibg=wheat gui=none ctermfg=blue ctermbg=yellow cterm=none'

if has('syntax')
  augroup InsertHook
    autocmd!
    autocmd InsertEnter * call s:StatusLine('Enter')
    autocmd InsertLeave * call s:StatusLine('Leave')
  augroup END
endif

let s:slhlcmd = ''
function! s:StatusLine(mode)
  if a:mode == 'Enter'
    silent! let s:slhlcmd = 'highlight ' . s:GetHighlight('StatusLine')
    silent exec g:hi_insert
  else
    highlight clear StatusLine
    silent exec s:slhlcmd
  endif
endfunction

function! s:GetHighlight(hi)
  redir => hl
  exec 'highlight '.a:hi
  redir END
  let hl = substitute(hl, '[\r\n]', '', 'g')
  let hl = substitute(hl, 'xxx', '', '')
  return hl
endfunction

"==============================================================================
" Vimエディタ .vimrc 
"------------------------------------------------------------------------------
"  version : 2026/01/12 10:42
"  since   : 2017/11/08
"==============================================================================
