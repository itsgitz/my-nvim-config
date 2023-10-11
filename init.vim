call plug#begin("~/.vim/plugged")
  " Plugin Section
  Plug 'neovim/nvim-lspconfig'
  Plug 'dracula/vim' 
  Plug 'scrooloose/nerdtree'
  Plug 'ryanoasis/vim-devicons'
  Plug 'pangloss/vim-javascript'
  Plug 'peitalin/vim-jsx-typescript'
  Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
  Plug 'jparise/vim-graphql'
  Plug 'maxmellon/vim-jsx-pretty'
  Plug 'jiangmiao/auto-pairs'
  Plug 'tpope/vim-commentary'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  " Plug 'mattn/emmet-vim'
  Plug 'ekalinin/Dockerfile.vim'
  Plug 'editorconfig/editorconfig-vim'
  " Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-fugitive'
  Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
  Plug 'norcalli/nvim-colorizer.lua'
  Plug 'szw/vim-maximizer'

  "
  " nvim-cmp plugins
  "
  Plug 'neovim/nvim-lspconfig'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-cmdline'
  Plug 'hrsh7th/nvim-cmp'

  " For vsnip users.
  Plug 'hrsh7th/cmp-vsnip'
  Plug 'hrsh7th/vim-vsnip'
  Plug 'hrsh7th/vim-vsnip-integ'

  " For luasnip users.
  Plug 'L3MON4D3/LuaSnip'
  Plug 'saadparwaiz1/cmp_luasnip'

  " For ultisnips users.
  Plug 'SirVer/ultisnips'
  Plug 'quangnguyen30192/cmp-nvim-ultisnips'

  " For snippy users.
  Plug 'dcampos/nvim-snippy'
  Plug 'dcampos/cmp-snippy'
  "
  " nvim-cmp plugins
  "
  Plug 'quick-lint/quick-lint-js', {'rtp': 'plugin/vim/quick-lint-js.vim', 'tag': '2.16.0'}
  Plug 'posva/vim-vue'
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
" set number relativenumber
set number
set hidden
set nobackup
set nowritebackup
set cmdheight=2
set updatetime=300
set showcmd
set showmatch
set clipboard=unnamed
set colorcolumn=80
set autoread
set wildmenu
set so=7
set hid
set ignorecase
set incsearch
set lazyredraw
set magic
set smarttab
set ai
set si
set wrap

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set splitbelow
set splitright

au FileType python setlocal shiftwidth=4 softtabstop=4 tabstop=4 expandtab
au FileType php setlocal shiftwidth=4 softtabstop=4 tabstop=4 expandtab
au FileType css setlocal shiftwidth=4 softtabstop=4 tabstop=4 expandtab 
au FileType html setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
au FileType ruby setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
au FileType javascript setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
au FileType typescript setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
au FileType typescriptreact setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
au FileType go setlocal shiftwidth=4 softtabstop=4 tabstop=4 noexpandtab
au FileType toml setlocal shiftwidth=2 softtabstop=2 tabstop=2 noexpandtab
au FileType markdown setlocal shiftwidth=2 softtabstop=2 tabstop=2 noexpandtab
au FileType yaml setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
au FileType xml setlocal shiftwidth=2 softtabstop=2 tabstop=2 expandtab
au FileType json setlocal shiftwidth=3 softtabstop=3 tabstop=3 noexpandtab
au FileType sh setlocal shiftwidth=4 softtabstop=4 tabstop=4 noexpandtab
au BufRead,BufNewFile *.tpl set filetype=html
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact
autocmd BufNewFile,BufRead, *.blade.php set filetype=html
autocmd BufNewFile,BufRead *.ejs set filetype=html
autocmd BufNewFile,BufRead *.ts set filetype=typescript
autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear

set cursorline

" onedark theme configuration
" let g:onedark_terminal_italics=1

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

let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''

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

" JavaScript configuration
let g:javascript_plugin_flow = 1
let g:javascript_plugin_jsdoc = 1

" Plaintext Configuration
"
let g:plaintex_delimiters = 1

let g:vim_jsx_pretty_highlight_close_tag = 0
let g:typescript_indent_disable = 1
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''

" Emmet configuration
" let g:user_emmet_leader_key='<C-C>'

" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

autocmd FileType apache setlocal commentstring=#\ %s


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

"
" Typescript React Configuration
" dark red
hi tsxTagName guifg=#E06C75
hi tsxComponentName guifg=#E06C75
hi tsxCloseComponentName guifg=#E06C75

" orange
hi tsxCloseString guifg=#F99575
hi tsxCloseTag guifg=#F99575
hi tsxCloseTagName guifg=#F99575
hi tsxAttributeBraces guifg=#F99575
hi tsxEqual guifg=#F99575

" yellow
hi tsxAttrib guifg=#F8BD7F cterm=italic

" light-grey
hi tsxTypeBraces guifg=#999999
" dark-grey
hi tsxTypes guifg=#666666

hi ReactState guifg=#C176A7
hi ReactProps guifg=#D19A66
hi ApolloGraphQL guifg=#CB886B
hi Events ctermfg=204 guifg=#56B6C2
hi ReduxKeywords ctermfg=204 guifg=#C678DD
hi ReduxHooksKeywords ctermfg=204 guifg=#C176A7
hi WebBrowser ctermfg=204 guifg=#56B6C2
hi ReactLifeCycleMethods ctermfg=204 guifg=#D19A66

" maximize current split or return to previous
noremap <C-w>m :MaximizerToggle<CR>

lua require('init')
