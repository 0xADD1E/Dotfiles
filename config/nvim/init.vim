let g:coc_global_extensions = [ 
  \ 'coc-snippets',
  \ 'coc-json',
  \ 'coc-tsserver',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-yaml',
  \ 'coc-highlight',
  \ 'coc-vetur',
  \ 'coc-rls',
  \ 'coc-python',
  \ 'coc-git',
  \ 'coc-yank', 
  \ ]
"'coc-rust-analyzer'

call plug#begin('~/.local/share/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'edkolev/tmuxline.vim'
Plug 'joshdick/onedark.vim'

Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf'
Plug 'christoomey/vim-tmux-navigator'

Plug 'itchyny/lightline.vim'
Plug 'w0rp/ale'
Plug 'machakann/vim-highlightedyank'
Plug 'andymass/vim-matchup'

Plug 'neoclide/coc.nvim', {'do': 'yarn install'}

Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'

Plug 'prettier/vim-prettier', {'do': 'yarn install', 'branch': 'release/1.x'}
call plug#end()

syntax on
colorscheme onedark
set guifont=Fira\ Code:h11
set clipboard=unnamed
set hidden

"Airline Config
let g:airline#extensions#tabline#enabled = 1
let g:tmuxline_powerline_separators = 0

"If we weren't started on a file, open NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"Line Transpose Keybinds
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

"COC Setup
let g:airline#extensions#coc#enabled = 1
nnoremap <silent> <space>y  :<C-u>CocList -A --normal yank<cr>
"VSCode-esque completion
inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'

"Prettier
let g:prettier#config#print_width = 100
let g:prettier#config#tab_width = 4
let g:prettier#config#use_tabs = 'false'
let g:prettier#config#single_quote = 'true'

"Hard mode
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <Up> <Nop>

nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <Up> <Nop>

vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>
vnoremap <Up> <Nop>
