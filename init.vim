call plug#begin("~/.vim/plugged")
  " Plugin Section
  Plug 'dracula/vim'
  Plug 'joshdick/onedark.vim'
  Plug 'scrooloose/nerdtree'
  Plug 'ryanoasis/vim-devicons'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
  Plug 'pangloss/vim-javascript'
  Plug 'leafgarland/typescript-vim'
  Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
  Plug 'jparise/vim-graphql'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'jiangmiao/auto-pairs'
  Plug 'tpope/vim-commentary'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'mattn/emmet-vim'
  Plug 'ekalinin/Dockerfile.vim'
  Plug 'gosukiwi/vim-atom-dark'
  Plug 'vim-ruby/vim-ruby'
  Plug '2072/PHP-Indenting-for-VIm'
  Plug 'arcticicestudio/nord-vim'
  Plug 'tpope/vim-rails'
  Plug 'editorconfig/editorconfig-vim'
call plug#end()

"Config Section

if (has("termguicolors"))
 set termguicolors
endif

filetype plugin indent on
filetype on
filetype indent on
syntax on
syntax enable
set number relativenumber
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set colorcolumn=85

" set tabstop=2
" set shiftwidth=2
" set softtabstop=2
" set expandtab

au FileType php setlocal shiftwidth=4 softtabstop=4 tabstop=4 expandtab
au FileType css setlocal shiftwidth=4 softtabstop=4 tabstop=4 expandtab 
au FileType css let b:coc_suggest_disable = 1 
au FileType html setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
au FileType ruby setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
au FileType javascript setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
au FileType typescript setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
au FileType go setlocal shiftwidth=4 softtabstop=4 tabstop=4 noexpandtab
au FileType toml setlocal shiftwidth=2 softtabstop=2 tabstop=2 noexpandtab
au FileType markdown setlocal shiftwidth=2 softtabstop=2 tabstop=2 noexpandtab
au FileType yaml setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
au FileType json setlocal shiftwidth=3 softtabstop=3 tabstop=3 noexpandtab
au BufRead,BufNewFile *.tpl set filetype=html

set cursorline

" onedark theme configuration
let g:onedark_terminal_italics=1

" dracula theme configuration
"
" let g:dracula_bold = 1
" let g:dracula_italic = 1
" let g:dracula_underline = 1
" let g:dracula_undercurl = 1
" let g:dracula_inverse = 1
" let g:dracula_colorterm = 1

colorscheme dracula

let g:airline_theme='dracula'

if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''
let g:coc_global_extensions = ['coc-emmet', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']

" VIM Go Configuration
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_auto_type_info = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:rehash256 = 1

" PHP Configuration
"
let php_sql_query = 1
let php_htmlInStrings = 1
let php_baselib = 1
let php_oldStyle = 1
let php_noShortTags = 1
let php_parent_error_close = 1
let php_parent_error_open = 1

" Plaintext Configuration
"
let g:plaintex_delimiters = 1

let g:user_emmet_leader_key='<C-C>'

" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

autocmd FileType apache setlocal commentstring=#\ %s

" open new split panes to right and below
set splitright
set splitbelow
" turn terminal to normal mode with escape
tnoremap <Esc> <C-\><C-n>
" start terminal in insert mode
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
" open terminal on ctrl+n
function! OpenTerminal()
  split term://bash
  resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>


" use alt+hjkl to move between split/vsplit panels
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

augroup CustomCursorLine
au!    
au VimEnter * :hi! CursorLine gui=underline cterm=underline
augroup END

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear
