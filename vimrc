" Pathogen
execute pathogen#infect()

" Config
syntax on
set t_Co=256
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set backspace=2
set expandtab
set number
set hlsearch
set exrc
" Handle CSS with background data pngs
set synmaxcol=200

" Folding
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1

" Ensure start in buffer
" autocmd VimEnter * NERDTree
autocmd VimEnter * if !argc() | NERDTree | endif
autocmd VimEnter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Filetype syntax associations
au BufRead,BufNewFile *.ru,*.cap,*.rabl,*.arb,Guardfile,*.jbuilder set filetype=ruby
au BufRead,BufNewFile *.scss     set filetype=scss
au BufRead,BufNewFile *.jison    set filetype=yacc
au BufRead,BufNewFile *.jisonlex set filetype=javascript
au BufRead,BufNewFile *.fun      set filetype=sml

" Display line at col 80
if exists('+colorcolumn')
  let &colorcolumn = "80"
endif

let g:indentLine_color_term=0
let g:indentLine_char=' '

" Syntastic
" =========
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_always_populate_loc_list = 1

" Mappings
" ========

" Toggle nerdtree
map <C-n> :NERDTreeToggle<CR>

" Find current buffer in nerdtree
map <leader>r :NERDTreeFind<CR>

" Insert newline with Ctrl+C in insert mode
imap <C-c> <CR><Esc>O

" Colors
" ======

" Dark
"colorscheme Tomorrow-Night-Eighties
colorscheme hybrid
"colorscheme Monokai
"colorscheme wombat256
"colorscheme babymate256
"colorscheme grb256

" Light
"colorscheme beauty256
