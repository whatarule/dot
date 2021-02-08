
" -- // plugin

" -- // vim-plug
call plug#begin('~/.vim/plugged')
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'vim-scripts/camelcasemotion'

"if has('nvim')
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'w0rp/ale'
"elseif !has('nvim')
Plug 'Shougo/unite.vim'
Plug 'ujihisa/unite-colorscheme'
Plug 'Shougo/neocomplete.vim'
"endif

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'LeafCage/yankround.vim'
Plug 'Shougo/neoyank.vim'
Plug 'vim-scripts/mru.vim'
Plug 'Shougo/neomru.vim'

Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
"Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'tpope/vim-endwise'

Plug 'Shougo/vimshell.vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'itchyny/lightline.vim'
Plug 'glidenote/memolist.vim'
Plug 'bronson/vim-trailing-whitespace'

"Plug 'ujihisa/neco-look'
Plug 'ujihisa/neco-ghc'
Plug 'cespare/vim-toml'

Plug 'derekwyatt/vim-scala'
Plug 'udalov/kotlin-vim'
Plug 'rust-lang/rust.vim'
"Plug 'FrigoEU/psc-ide-vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

"Plug 'Olical/conjure', {'tag': 'v4.2.0'}
"Plug 'tpope/vim-dispatch'
"Plug 'clojure-vim/vim-jack-in'
"Plug 'radenling/vim-dispatch-neovim'
Plug 'liquidz/vim-iced' ", {'for': 'clojure'}
let g:iced_enable_default_key_mappings = v:true
Plug 'guns/vim-sexp' ", {'for': 'clojure'}
Plug 'tpope/vim-sexp-mappings-for-regular-people' ", {'for': 'clojure'}
Plug 'tpope/vim-repeat' ", {'for': 'clojure'}
Plug 'tpope/vim-surround' ", {'for': 'clojure'}
Plug 'jiangmiao/auto-pairs'
Plug 'bhurlow/vim-parinfer'

Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'prettier/vim-prettier', { 'do': 'yarn install'  }
Plug 'jonsmithers/vim-html-template-literals'

"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"if has('nvim')
"let g:deoplete#enable_at_startup = 1
"elseif !has('nvim')
"let g:neocomplete#enable_at_startup = 1
"endif
"set autochdir
"Plug 'prabirshrestha/vim-lsp'
"Plug 'lighttiger2505/deoplete-vim-lsp'
"Plug 'callmekohei/deoplete-fsharp'
"Plug 'callmekohei/deopletefs'
"set runtimepath+=\root\.vim\plugged\deoplete.nvim
"set runtimepath+=\root\.vim\plugged\deoplete-fsharp
""autocmd MyAutoCmd VimEnter *.fsx,*.fs call s:foo()
""function s:foo() abort
""  call deoplete#custom#option({
""      \   'auto_refresh_delay' : 20
""      \ , 'min_pattern_length' : 999
""      \ , 'ignore_case'        : v:true
""      \ , 'refresh_always'     : v:false
""      \ , 'ignore_sources' : {'fsharp':['member']}
""    \ })
""  call deoplete#enable()
""endfunction

"Plug 'mattn/vim-lsp-settings'
"let g:lsp_settings_servers_dir = '/root/.local/share/vim-lsp-settings/servers'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
"Plug 'neoclide/coc.nvim', {'do': { -> coc#util#build()}}
"let g:coc_global_extensions = ['coc-conjure']
xmap <leader>f <Plug>(coc-format-selected)
nmap <leader>f <Plug>(coc-format-selected)

au BufRead,BufNewFile *.sbt set filetype=scala
"au BufRead,BufNewFile *.java set filetype=java
"au BufRead,BufNewFile *.fs set filetype=fsharp
au BufRead,BufNewFile *.fsproj set filetype=xml

augroup HTMLANDXML
  autocmd!
  autocmd Filetype xml  inoremap <buffer> </ </<C-x><C-o><ESC>F<i
  autocmd Filetype html inoremap <buffer> </ </<C-x><C-o><ESC>F<i
augroup END

Plug 'sheerun/vim-polyglot'

"Plug 'fsharp/vim-fsharp', {
"  \ 'for': 'fsharp',
"  \ 'do':  'make fsautocomplete',
"  \}
"}

Plug 'rustushki/JavaImp.vim'
let g:JavaImpPaths =
  \ "/Library/Java/JavaVirtualMachines/amazon-corretto-8.jdk/Contents/Home,".
  \ $CLASSPATH

Plug 'mattn/emmet-vim'
Plug 'Galooshi/vim-import-js'
Plug 'kristijanhusak/vim-js-file-import'
Plug 'ludovicchabant/vim-gutentags'
Plug 'gre/play2vim'
Plug 'digitaltoad/vim-pug'
Plug 'statianzo/vim-jade'
"au BufRead,BufNewFile,BufReadPre *.jade set filetype=pug

"Plug 'rking/ag.vim'
"Plug 'kassio/neoterm'
"Plug 'vim-syntastic/syntastic'

" -- // colorscheme
Plug 'joshdick/onedark.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'aereal/vim-colors-japanesque'
Plug 'vim-scripts/oceandeep'
Plug 'elmindreda/vimcolors'
Plug 'demorose/up.vim'
Plug 'andrwb/vim-lapis256'
Plug 'vyshane/vydark-vim-color'
Plug 'gregsexton/Muon'
Plug 'lxmzhv/vim'
Plug 'romainl/Apprentice'
Plug 'noahfrederick/vim-hemisu'
Plug 'marlun/vim-starwars'
Plug 'jonathanfilip/vim-lucius'
Plug 'vim-scripts/vilight.vim'
Plug 'nanotech/jellybeans.vim'
Plug 'thomd/vim-wasabi-colorscheme'

Plug 'carlson-erik/wolfpack'
Plug 'cocopon/iceberg.vim'
call plug#end()

" -- // initialize
"set all&
autocmd!

" -- // shell
set shell=bash
"set shell=/bin/bash
"set shell=/bin/bash\ -l\ -O\ expand_aliases
"set shell=fish
"set shell=/usr/bin/fish

" - // yank
"set clipboard=unnamed
"set clipboard+=unnamed
set clipboard+=unnamedplus

let mapleader = "\<Space>"
"<Leader>a :echo "Hello"<CR>
nnoremap <Space> <Nop>
let maplocalleader=" "

" -- // vimrc
noremap <C-d>e :<C-u>edit $MYVIMRC<cr>
noremap <C-d>s :<C-u>write<cr>:<C-u>source $MYVIMRC<cr>

" -- // keymap
" for us keyboard
nnoremap ; :
nnoremap : ;
vnoremap ; :
vnoremap : ;
" cancellation
noremap <C-j> <esc>
noremap! <C-j> <esc>
noremap! jj <esc>
nnoremap <silent><esc> :nohlsearch<cr>
nnoremap <C-j> :nohlsearch<cr>
"nnoremap jj :nohlsearch<cr>

" cursor move
noremap j gj
noremap k gk
noremap <S-h> ^
noremap <S-l> $
noremap <S-j> }
noremap <S-k> {
noremap <C-a> <home>
noremap! <C-a> <home>
noremap <C-e> <end>
noremap! <C-e> <end>

" edit utility
"nnoremap <cr> o<esc>
"inoremap [ []<left>
"inoremap ( ()<left>
"inoremap { {}<left>
"yankround
nmap <silent>p <Plug>(yankround-p)
nmap <silent>P <Plug>(yankround-P)
nmap gp <Plug>(yankround-gp)
nmap gP <Plug>(yankround-gP)
nmap <C-p> <Plug>(yankround-prev)
nmap <C-n> <Plug>(yankround-next)

" neosnippet
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)
"inoremap <expr><tab> pumvisible() ? "\<C-n>" :
"  \ neosnippet#expandable_or_jumpable() ?
"  \    "\<Plug>(neosnippet_expand_or_jump)" : "\<tab>"
snoremap <expr><TAB> neosnippet#expandable_or_jumpable() ?
  \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" window control
set splitright
set splitbelow
noremap <C-s> :<C-u>vsplit<cr>
noremap! <C-s> <esc> :<C-u>vsplit<cr>
noremap <C-l> <C-w>l
noremap <C-j><C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-h> <C-w>h
"noremap! <C-l> <C-w>l
"noremap! <A-j> <C-w>j
"noremap! <A-k> <C-w>k
"noremap! <C-h> <C-w>h
"noremap <C-\> <C-w>|
"noremap <C-^> <C-w>=

" tab control
noremap <S-t> :<C-u>tabnew<cr>
"noremap <C-t> :<C-u>tabnew<cr>:<C-u>cd<cr>:<C-u>FZF<cr>
"noremap <C-t> :<C-u>tabnew<cr>:<C-u>Denite -resume -immediately <cr>
"noremap <C-t> :<C-u>Denite buffer -immediately -default-action=tabopen <cr>
noremap <A-tab> gt
noremap! <A-tab> gt
noremap <S-tab> gT
noremap! <S-tab> gT

" terminal mode for neovim
if has('nvim')
noremap <space><space> :<C-u>terminal<cr><C-u>fish<cr>
"noremap <space><space> :<C-u>terminal<cr><C-u>fish<cr><C-u>ls -la<cr>
"noremap <space><space> :<C-u>vsplit<cr>:<C-u>terminal<cr>fish<cr>ls -la<cr>
"tnoremap <silent> <esc> <C-\><C-n>
tnoremap jj <C-\><C-n>
tnoremap <silent><esc> <C-\><C-n>
tnoremap <C-j> <C-\><C-n>
tnoremap <C-t> <up>
tnoremap <C-g> <down>
tnoremap <C-s> :<C-u>vsplit<cr>
tnoremap <A-l> <C-w>l
tnoremap <A-j> <C-w>j
tnoremap <A-k> <C-w>k
tnoremap <A-h> <C-w>h
tnoremap <C-t> <C-\><C-n>:<C-u>tabnew<cr>
tnoremap <A-tab> <C-\><C-n>gt
tnoremap <S-tab> <C-\><C-n>gT
tnoremap ZZ <C-\><C-n>:q<cr>
endif

" command support
" fzf
noremap <C-f>d :<C-u>FZF<cr>
noremap <C-f>a :<C-u>cd<cr>:<C-u>FZF<cr>
" denite
if has('nvim')
nnoremap <C-d>b :<C-u>Denite buffer <cr>
nnoremap <C-d>r :<C-u>Denite file_rec <cr>
nnoremap <C-d>f :<C-u>Denite file_old <cr>
nnoremap <C-d>m :<C-u>Denite file_mru <cr>
nnoremap <C-d>y :<C-u>Denite neoyank <cr>
nnoremap <C-d>l :<C-u>Denite line <cr>
nnoremap <C-d>g :<C-u>Denite grep <cr>
nnoremap <C-d>h :<C-u>Denite help <cr>
" unite
elseif !has('nvim')
nnoremap <C-d>f :<C-u>Unite file_rec <cr>
endif
" cancellation
"noremap <C-:> q:
"noremap! <C-:> q:

" python
augroup Python
  autocmd!
  autocmd FileType python setl autoindent
  autocmd FileType python setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
  autocmd FileType python setl tabstop=2 expandtab shiftwidth=2 softtabstop=2
augroup end

unlet! g:python_highlight_all
unlet! g:python_no_doctest_code_highlight
unlet! g:python_no_doctest_highlight

" let gpython_highlight_all = 0
" let g:python_no_doctest_code_highlight = 1
  let g:python_no_doctest_highlight = 1

" rust
augroup Rust
  autocmd!
  autocmd FileType rust setl tabstop=2 expandtab shiftwidth=2 softtabstop=2
  syntax enable
  filetype plugin indent on
  let g:rustfmt_autosave = 1
augroup end

" go
"autocmd BufNewFile,BufRead *.go.tpl setfiletype go
"au BufRead,BufNewFile *.gohtml set filetype=gohtmltmpl
au BufRead,BufNewFile *.go.tpl set filetype=gohtmltmpl
autocmd BufNewFile,BufRead *.gohtml set hetype=cs

" toml
au BufRead,BufNewFile .air.conf set filetype=toml


set t_Co=256
if has('nvim')
" set termguicolors
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
" autocmd ColorScheme * highlight VimshellPrompt ctermfg=none guifg=none

" -- // terminal mode
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
  "function! ALEStatus()
  "  return ALEGetStatusLine()
  "endfunction
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
if !has('nvim')
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
endif


" -- // syntastic
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0



"" -- // ale
let g:ale_emit_conflict_warnings = 0
let g:ale_linters = {
  \  'haskell': ['ghc-mod','hlint']
  \, 'scala': ['scalac']
  \, 'elm': []
  \, 'java': ['scalac']
  \, 'kotlin': ['ale-kotlin']
  \}
" \  'vim': ['vint']
let g:ale_sign_column_always = 1
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

"let g:ale_set_loclist = 0
"let g:ale_set_quickfix = 1
"let g:ale_open_list = 1
"let g:ale_keep_list_window_open = 1


"--// vim-go
let g:go_fmt_command = "goimports"

" -- // memolist
let g:memolist_path = expand('~/Dropbox/memorandom')
let g:memolist_template_dir_path = '~/Dropbox/memorandom/template'
let g:memolist_memo_suffix = 'mrd'

if has('nvim')
  let g:memolist_denite = 1
  let g:memolist_denite_option = '-default-action=vsplit'
elseif !has('nvim')
  let g:memolist_unite = 1
  let g:memolist_unite_option = '-vertical -start-insert'
endif
let g:memolist_gfixgrep = 1

nnoremap <space>mn :<C-u>vsplit<cr>:<C-u>MemoNew<CR>
nnoremap <space>ml :<C-u>MemoList<CR>
nnoremap <space>mg :<C-u>vsplit<cr>:<C-u>MemoGrep<CR>

" -- // vim-trailing-whitespace
autocmd BufWritePre * :FixWhitespace

" -- // neosnippet
" For conceal markers.
let g:neosnippet#snippets_directory='~/.vim/plugged/neosnippet-snippets/neosnippets'
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

" -- // nerdtree
let g:nerdtree_tabs_open_on_console_startup=1
let g:NERDTreeMinimalUI=1
let g:NERDTreeShowBookmarks=1
let g:NERDTreeShowHidden=1

" autoclose
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTred") && b:NERDTree.isTabTree()) | q | endif


" -- // denite.nvim
if has('nvim')
  autocmd FileType denite call s:denite_my_settings()
  function! s:denite_my_settings() abort
    nnoremap <silent><buffer><expr> <CR>
    \ denite#do_map('do_action')
    nnoremap <silent><buffer><expr> d
    \ denite#do_map('do_action', 'delete')
    nnoremap <silent><buffer><expr> p
    \ denite#do_map('do_action', 'preview')
    nnoremap <silent><buffer><expr> q
    \ denite#do_map('quit')
    nnoremap <silent><buffer><expr> i
    \ denite#do_map('open_filter_buffer')
    nnoremap <silent><buffer><expr> <Space>
    \ denite#do_map('toggle_select').'j'
  endfunction

" call denite#custom#var('file_rec', 'command', ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])
  call denite#custom#var('file_rec', 'command', ['rg', '--files', '--glob', '!.git', ''])
  call denite#custom#source('file_rec', 'matchers', ['mather_fuzzy'])

" call denite#custom#var('grep', 'command', ['ag'])
" call denite#custom#var('grep', 'default_opts', ['-i', '--vimgrep'])
" call denite#custom#var('grep', 'recursive_opts', [])
" call denite#custom#var('grep', 'pattern_opt', [])
" call denite#custom#var('grep', 'separator', ['--'])
" call denite#custom#var('grep', 'final_opts', [])

  call denite#custom#var('grep', 'command', ['rg'])
  call denite#custom#var('grep', 'default_opts', ['--vimgrep', '--no-heading'])
  call denite#custom#var('grep', 'recursive_opts', [])
  call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
  call denite#custom#var('grep', 'separator', ['--'])
  call denite#custom#var('grep', 'final_opts', [])

  call denite#custom#map('insert', '<C-j>', '<denite:leave_mode>', 'noremap')
  call denite#custom#map('insert', 'ZZ', '<denite:leave_mode>', 'noremap')
" call denite#custom#map(
"       \ 'insert',
"       \ '<C-j>',
"       \ '<denite:move_to_next_line>',
"       \ 'noremap'
"       \)
" call denite#custom#map(
"       \ 'insert',
"       \ '<C-k>',
"       \ '<denite:move_to_previous_line>',
"       \ 'noremap'
"       \)
endif

" -- // unite.vim
" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
if !has('nvim')
  let g:unite_source_history_yank_enable = 1
  try
    let g:unite_source_rec_async_command='ag --nocolor --nogroup -g ""'
    call unite#filters#matcher_default#use(['matcher_fuzzy'])
  catch
  endtry
endif

" -- // neocomplete.vim
"Note: This option must be set in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
if !has('nvim')
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
endif

" -- // neco-look
let g:neocomplete#text_mode_filetypes = { "_" : 1 }



" -- // ag.vim
" --- type ° to search the word in all files in the current dir
"nmap ° :Ag <c-r>=expand("<cword>")<cr><cr>
"nnoremap <space>/ :Ag

" -- // neoterm
"let g:neoterm_position = 'vertical'



" -- // basic configuration

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
set mouse-=a


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


