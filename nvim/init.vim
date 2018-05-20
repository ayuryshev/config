" sen Scripts-----------------------------
if &compatible
 set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/isk/.local/share/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/isk/.local/share/dein')
  call dein#begin('/home/isk/.local/share/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/isk/.local/share/dein/repos/github.com/Shougo/dein.vim')

  " Colorschemes
  call dein#add('morhetz/gruvbox')
  call dein#add('noahfrederick/vim-hemisu')
  call dein#add('ctrlpvim/ctrlp.vim')
  call dein#add('lifepillar/vim-solarized8')
  call dein#add('tyrannicaltoucan/vim-deep-space')
  call dein#add('zanglg/nova.vim')
  call dein#add('ericbn/vim-solarized')
  call dein#add('altercation/vim-colors-solarized')
  call dein#add('jsit/disco.vim')
  call dein#add('tomasr/molokai')
  call dein#add('nanotech/jellybeans.vim') 
  "call dein#add('fatih/molokai')
  call dein#add('fmoralesc/molokayo')
  call dein#add('hzchirs/vim-material')
  call dein#add('cjoshdick/onedark.vim')
	
  " Airline, devicons
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('ryanoasis/vim-devicons')

  " Navigation: NERDTree, easymotion, tagbar, buftabline
  call dein#add('scrooloose/nerdtree')
  "call dein#add('easymotion/vim-easymotion')
  "call dein#add('majutsushi/tagbar')
  call dein#add('ap/vim-buftabline')
  
  " Development in general: syntastic, deoplete, splitjoin
  call dein#add('vim-syntastic/syntastic')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('AndrewRadev/splitjoin.vim')
  call dein#add('SirVer/ultisnips')
  call dein#add('scrooloose/nerdcommenter')
  " Tables
  "call dein#add('dhruvasagar/vim-table-mode')

  " Golang
  call dein#add('fatih/vim-go')
  call dein#add('jodosha/vim-godebug')
  call dein#add('zchee/deoplete-go', {'build': 'make'})
  
" Python support
  call dein#add('vim-scripts/indentpython.vim')
  call dein#add('nvie/vim-flake8')
  call dein#add('hdima/python-syntax')
  call dein#add('zchee/deoplete-jedi')
  call dein#add('davidhalter/jedi-vim')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------
set termguicolors
set guifont=FantasqueSansMono\ Nerd\ Font\ Regular\ 14

set background=light
colorscheme gruvbox
let g:airline_powerline_fonts=1

set completeopt=menu,menuone    " Show popup menu, even if there is one entry
set pumheight=10                " Completion window max size
set number                      " Show line numbers

" vim-go
let g:go_fmt_command = "goimports"
let g:go_autodetect_gopath = 1
let g:go_list_type = "quickfix"
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_generate_tags = 1


"Jedi-vim
let g:jedi#force_py_version =3

set autowrite
set clipboard+=unnamedplus

"set tabstop=4
set sw=4
set ts=4
set sts=4

let mapleader = "\<Space>"
nnoremap <Leader>q :q<CR>
nnoremap <Leader>w :w<CR>

noremap <Leader>n :cnext<CR>
nnoremap <Leader>m :cprevious<CR>
nnoremap <Leader>c :cclose<CR>
nnoremap <Leader>t :NERDTreeToggle<CR>

nnoremap <Leader>. :bnext<CR>
nnoremap <Leader>, :bprev<CR>
" nnoremap <Leader>/ :Tagbar<CR>

autocmd FileType go nmap <Leader>b  <Plug>(go-build)
autocmd FileType go nmap <Leader>r  <Plug>(go-run)

" Use deoplete.
let g:deoplete#enable_at_startup = 1
" Use smartcase.
let g:deoplete#enable_smart_case = 1

" <C-h>, <BS>: close popup and delete backword char.
"inoremap <expr><C-h> deoplete#smart_close_popup()."\<C-h>"
"inoremap <expr><BS>  deoplete#smart_close_popup()."\<C-h>"
" inoremap <expr><tab> pumvisible() ?" \<C-n>" :   \<tab>"
" set keymap=russian-jcukenwin
:set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
:set iminsert=0
:set imsearch=0

let g:airline_detect_iminsert=1

" <CR>: close popup and save indent.
"inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
"function! s:my_cr_function() abort
"  return deoplete#close_popup() . \<CR>"
""endfunction

nnoremap <F10> :set bg=light<CR>
nnoremap <F09> :set bg=dark<CR>
nnoremap <F08> :set laststatus=0<CR>

imap <C-s> <Esc>

inoremap <expr><Down> pumvisible()? "\<C-n>" : "\<Down>"
inoremap <expr><Up> pumvisible()? "\<C-p>" : "\<Up>"
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

"nnoremap <silent> <Leader>r :set iminsert=1<CR><Esc>i
"nnoremap <silent> <Leader>e :set iminsert=0<CR><Esc>i

highlight Cursor gui=reverse guifg=bg guibg=fg
highlight Cursor gui=NONE guifg=bg guibg=fg
highlight lCursor guifg=NONE guibg=Cyan

:set cursorcolumn nocuc

