
" -- // plugin

" -- // vim-plug

call plug#begin('~/.vim/plugged')

Plug 'Shougo/unite.vim'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'rking/ag.vim'

Plug 'ujihisa/unite-colorscheme'
Plug 'bronson/vim-trailing-whitespace'

Plug 'Shougo/neocomplete.vim'
Plug 'ujihisa/neco-look'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

Plug 'Shougo/vimshell.vim'
Plug 'kassio/neoterm'

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'itchyny/lightline.vim'

Plug 'elmcast/elm-vim'

if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'w0rp/ale'
endif

if has('nvim')
  let g:deoplete#enable_at_startup = 1
elseif has('nvim')
  let g:neocomplete#enable_at_startup = 1
endif

" Plug 'vim-syntastic/syntastic'

" -- // colorscheme
Plug 'joshdick/onedark.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'aereal/vim-colors-japanesque'
Plug 'cocopon/iceberg.vim'
Plug 'vim-scripts/oceandeep'
Plug 'elmindreda/vimcolors'
Plug 'demorose/up.vim'
Plug 'andrwb/vim-lapis256'
Plug 'vyshane/vydark-vim-color'
Plug 'carlson-erik/wolfpack'
Plug 'gregsexton/Muon'
Plug 'lxmzhv/vim'
Plug 'romainl/Apprentice'
Plug 'noahfrederick/vim-hemisu'
Plug 'marlun/vim-starwars'
Plug 'jonathanfilip/vim-lucius'
Plug 'vim-scripts/vilight.vim'
Plug 'nanotech/jellybeans.vim'
Plug 'thomd/vim-wasabi-colorscheme'

call plug#end()

set t_Co=256
if has('nvim')
  set termguicolors
  colorscheme iceberg
" colorscheme wolfpack
elseif !has ('nvim')
  colorscheme iceberg
" colorscheme default
" colorscheme elflord
end

" -- // keep terminal background color
  autocmd ColorScheme * highlight Normal ctermbg=none guibg=none
  autocmd ColorScheme * highlight LineNr ctermbg=none guibg=none
" autocmd ColorScheme * highlight LineNr ctermfg=none guifg=none
  autocmd ColorScheme * highlight Pmenu guibg=#606060
  autocmd ColorScheme * highlight PmenuSel guifg=#dddd00 guibg=#1f82cd
  autocmd ColorScheme * highlight PmenuSbar guibg=#d6d6d6
  autocmd ColorScheme * highlight PmenuThumb guifg=#3cac3c
  syntax on

" -- // vimshell
let g:vimshell_prompt_expr = 'getcwd()." $ "'
let g:vimshell_prompt_pattern = '^\f\+ $ '
let g:vimshell_split_command = 'vsplit'
let g:vimshell_popup_command = 'vsplit'

" -- // terminal mode
set sh=fish
let g:terminal_color_0  = '#2e3436'
let g:terminal_color_1  = '#cc0000'
let g:terminal_color_2  = '#4e9a06'
let g:terminal_color_3  = '#c4a000'
let g:terminal_color_4  = '#3465a4'
let g:terminal_color_5  = '#75507b'
let g:terminal_color_6  = '#0b939b'
let g:terminal_color_7  = '#d3d7cf'
let g:terminal_color_8  = '#555753'
let g:terminal_color_9  = '#ef2929'
let g:terminal_color_10 = '#8ae234'
let g:terminal_color_11 = '#fce94f'
let g:terminal_color_12 = '#729fcf'
let g:terminal_color_13 = '#ad7fa8'
let g:terminal_color_14 = '#00f5e9'
let g:terminal_color_15 = '#eeeeec'
" autocmd ColorScheme * highlight VimshellPrompt ctermfg=none guifg=none

" -- // lightline
if has('nvim')
  let g:lightline = {
  \   'colorscheme': 'seoul256',
  \   'active': {
  \       'left': [
  \           ['mode','paste'],
  \           ['readonly','filename','modified'],
  \           ['ale'],
  \         ],
  \       'right': [
  \           ['percent'],
  \           ['filetype'],
  \         ],
  \     },
  \   'component_function': {
  \       'ale': 'ALEStatus'
  \     }
  \}
  function! ALEStatus()
    return ALEGetStatusLine()
  endfunction
else
  let g:lightline = {
  \   'colorscheme': 'seoul256',
  \   'active': {
  \       'left': [
  \           ['mode','paste'],
  \           ['readonly','filename','modified'],
  \         ],
  \       'right': [
  \           ['percent'],
  \           ['filetype'],
  \         ],
  \     },
  \}
endif


" statusline
" based on "http://qiita.com/tashua314/items/101f1bec368c75a90251"
" ステータスラインを常に表示(0:表示しない、1:2つ以上ウィンドウがある時だけ表示)
set laststatus=2
" ファイル名表示
set statusline+=\ %F
" 変更チェック表示
set statusline+=\ %m
" これ以降は右寄せ表示
set statusline+=%=
" 読み込み専用かどうか表示
set statusline+=%r
" ヘルプページなら[HELP]と表示
set statusline+=%h
" プレビューウインドウなら[Prevew]と表示
set statusline+=%w
" ale
set statusline+=%{ALEGetStatusLine()}
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
" file encoding
"set statusline+=[ENC=%{&fileencoding}]
" 現在行数/全行数
"set statusline+=[LOW=%l/%L]
set statusline+=\ |

" syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*



" -- // neoterm
let g:neoterm_position = 'vertical'

" -- // ale
" let g:ale_emit_conflict_warnings = 0
" let g:ale_linters = {
" \    'elm': ['make']
" \    'vim': ['vint']
" \}
let g:ale_sign_column_always = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

" let g:ale_set_loclist = 0
" let g:ale_set_quickfix = 1
" let g:ale_open_list = 1
" let g:ale_keep_list_window_open = 1

" -- // syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" -- // elm-vim
" syntastic
let g:elm_syntastic_show_warnings = 1
" neocomplete
call neocomplete#util#set_default_dictionary(
  \ 'g:neocomplete#sources#omni#input_patterns',
  \ 'elm',
  \ '\.')
" usage
let g:elm_jump_to_error = 0
let g:elm_make_output_file = "elm.js"
let g:elm_make_show_warnings = 1
let g:elm_browser_command = ""
let g:elm_detailed_complete = 1
let g:elm_format_autosave = 0
let g:elm_format_fail_silently = 0
let g:elm_setup_keybindings = 1



" -- // unite.vim
" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
let g:unite_source_history_yank_enable = 1
try
  let g:unite_source_rec_async_command='ag --nocolor --nogroup -g ""'
  call unite#filters#matcher_default#use(['matcher_fuzzy'])
catch
endtry
" search a file in the filetree
"nnoremap <space><space> :split<cr> :<C-u>Unite -start-insert file_rec/async<cr>
nnoremap <space><space> :vsplit<cr> <C-w>l :<C-u>Unite -start-insert file_rec/async<cr>
" reset not it is <C-l> normally
:nnoremap <space>r <Plug>(unite_restart)

" -- // ag.vim
" --- type ° to search the word in all files in the current dir
"nmap ° :Ag <c-r>=expand("<cword>")<cr><cr>
nnoremap <space>/ :Ag

" -- // vim-trailing-whitespace
autocmd BufWritePre * :FixWhitespace


" -- // neocomplete.vim
"Note: This option must be set in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

" -- // neco-look
let g:neocomplete#text_mode_filetypes = { "_" : 1 }



" -- // basic configuration
inoremap <C-j> <Esc>
vnoremap <C-j> <Esc>
inoremap jj <Esc>
nnoremap <Esc><Esc> :nohlsearch<CR><Esc>
"nnoremap <C-j><C-j> :nohlsearch<CR><Esc>
noremap <S-h> ^
noremap <S-l> $
"noremap <C-a> ^
"noremap <C-e> $
noremap <S-j> }
noremap <S-k> {
"nnoremap <CR> o<Esc>
nnoremap <C-j> o<Esc>
noremap j gj
noremap k gk
"inoremap [ []<left>
"inoremap ( ()<left>
"inoremap { {}<left>

if has('nvim')
tnoremap <silent> <ESC> <C-\><C-n>
tnoremap <silent> <C-j> <C-\><C-n>
endif

" based on "http://itchyny.hatenablog.com/entry/2014/12/25/090000"
nnoremap Y y$
set display=lastline
set pumheight=10
set showmatch
set matchtime=1
nnoremap + <C-a>
nnoremap - <C-x>
augroup swapchoice-readonly
  autocmd!
  autocmd SwapExists * let v:swapchoice = 'o'
augroup END


" based on "http://qiita.com/okamos/items/d7fdbee03c4857b1ce20"
" matchit {{{
" if や for などの文字にも%で移動できるようになる
source $VIMRUNTIME/macros/matchit.vim
let b:match_ignorecase = 1
" }}}

" usability {{{
"" ターミナルの右端で文字を折り返さない
set nowrap

" tempファイルを作らない。編集中に電源落ちまくるし、とかいう人はコメントアウトで
set noswapfile

" ハイライトサーチを有効にする。文字列検索は /word とか * ね
set hlsearch
" 大文字小文字を区別しない(検索時)
set ignorecase
" ただし大文字を含んでいた場合は大文字小文字を区別する(検索時)
set smartcase

" カーソル位置が右下に表示される
set ruler
" 行番号を付ける
set number
" タブ文字の表示 ^I で表示されるよ
set list
" コマンドライン補完が強力になる
set wildmenu
" コマンドを画面の最下部に表示する
set showcmd
" クリップボードを共有する(設定しないとvimとのコピペが面倒です)
set clipboard=unnamed

" 改行時にインデントを引き継いで改行する
set autoindent
" インデントにつかわれる空白の数
set shiftwidth=2
" <Tab>押下時の空白数
set softtabstop=2
" <Tab>押下時に<Tab>ではなく、ホワイトスペースを挿入する
set expandtab
" <Tab>が対応する空白の数
set tabstop=2

" インクリメント、デクリメントを16進数にする(0x0とかにしなければ10進数です。007をインクリメントすると010になるのはデフォルト設定が8進数のため)
set nf=hex
" マウス使えます
set mouse=a


" }}}}}))]])]]))))}}}}}}

" :SyntaxInfo
" form "http://cohama.hateblo.jp/entry/2013/08/11/020849"
function! s:get_syn_id(transparent)
  let synid = synID(line("."), col("."), 1)
  if a:transparent
    return synIDtrans(synid)
  else
    return synid
  endif
endfunction
function! s:get_syn_attr(synid)
  let name = synIDattr(a:synid, "name")
  let ctermfg = synIDattr(a:synid, "fg", "cterm")
  let ctermbg = synIDattr(a:synid, "bg", "cterm")
  let guifg = synIDattr(a:synid, "fg", "gui")
  let guibg = synIDattr(a:synid, "bg", "gui")
  return {
        \ "name": name,
        \ "ctermfg": ctermfg,
        \ "ctermbg": ctermbg,
        \ "guifg": guifg,
        \ "guibg": guibg}
endfunction
function! s:get_syn_info()
  let baseSyn = s:get_syn_attr(s:get_syn_id(0))
  echo "name: " . baseSyn.name .
        \ " ctermfg: " . baseSyn.ctermfg .
        \ " ctermbg: " . baseSyn.ctermbg .
        \ " guifg: " . baseSyn.guifg .
        \ " guibg: " . baseSyn.guibg
  let linkedSyn = s:get_syn_attr(s:get_syn_id(1))
  echo "link to"
  echo "name: " . linkedSyn.name .
        \ " ctermfg: " . linkedSyn.ctermfg .
        \ " ctermbg: " . linkedSyn.ctermbg .
        \ " guifg: " . linkedSyn.guifg .
        \ " guibg: " . linkedSyn.guibg
endfunction
command! SyntaxInfo call s:get_syn_info()

