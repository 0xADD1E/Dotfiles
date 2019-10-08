function! InitializeCoc()
  call coc#util#install()
  call coc#util#install_extensions([
  \ 'coc-snippets',
  \ 'coc-json',
  \ 'coc-tsserver',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-yaml',
  \ 'coc-highlight',
  \ 'coc-vetur',
  \ 'coc-rust-analyzer',
  \ 'coc-python',
  \ 'coc-git',
  \ 'coc-yank'
  \ ])
"'coc-rls',
endfunction

call plug#begin('~/.local/share/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'joshdick/onedark.vim'

Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf'

Plug 'itchyny/lightline.vim'
Plug 'w0rp/ale'
Plug 'machakann/vim-highlightedyank'
Plug 'andymass/vim-matchup'

Plug 'neoclide/coc.nvim', {'do': { -> InitializeCoc() } }

Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
call plug#end()

syntax on
colorscheme onedark
set hidden

"If we weren't started on a file, open NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif<Paste>

"Line Transpose Keybinds
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

"COC Setup
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
