set relativenumber
set number
set scrolloff=3 " Keep 3 lines below and above the cursor

syntax on

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set softtabstop=4 
set expandtab

set modeline

autocmd vimenter * NERDTree
autocmd vimenter * wincmd p

" More syntax highlighting.
let python_highlight_all = 1

" Smart indenting
set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class


function! NERDTreeQuit()
  redir => buffersoutput
  silent buffers
  redir END
"                     1BufNo  2Mods.     3File           4LineNo
  let pattern = '^\s*\(\d\+\)\(.....\) "\(.*\)"\s\+line \(\d\+\)$'
  let windowfound = 0

  for bline in split(buffersoutput, "\n")
    let m = matchlist(bline, pattern)

    if (len(m) > 0)
      if (m[2] =~ '..a..')
        let windowfound = 1
      endif
    endif
  endfor

  if (!windowfound)
    quitall
  endif
endfunction
autocmd WinEnter * call NERDTreeQuit()

set background=dark
colorscheme molokai

"show cursorline
augroup CursorLine
au!
au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
au VimEnter,WinEnter,BufWinEnter * setlocal cursorcolumn
au WinLeave * setlocal nocursorline
au WinLeave * setlocal nocursorcolumn
augroup END
nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>

"make splits more natural
set splitbelow
set splitright

"Autocenter
nmap gg ggzz;
nmap G Gzz;
"


call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'Valloric/YouCompleteMe'
Plug 'nvie/vim-flake8'
Plug 'haya14busa/incsearch.vim'
call plug#end()

"better search
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
"show search results as you type them
set incsearch
set showmatch

"Tabs
nmap <F4> :tabn<CR>
imap <F4> <ESC> :tabn<CR>
nmap <F3> :tabp<CR>
imap <F3> <ESC> :tabp<CR>

nmap <C-t> :tabnew 
imap <C-t> <ESC>:tabnew


set clipboard^=unnamed
