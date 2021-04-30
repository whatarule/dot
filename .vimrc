
" -- // initialize
"set all&
autocmd!

source .vimrc.plug
source .vimrc.set
source .vimrc.keymap

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


