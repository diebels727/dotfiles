set nocompatible  " required for Vundle
filetype off      " required for Vundle
set hidden
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVin/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'user/L9', {'name': 'newL9'}
call vundle#end()
filetype plugin indent on     " required!


syntax on
set t_Co=256 " Allow 256 colors in terminal
set gfn=Droid\ Sans\ mono\ 12
set go-=T " Disable the toolbar in gvim
set number " Turn on line numbers
set mouse=a " Copying from buffer doesn't copy the line numbers
" yank,cut,paste
vmap <C-C> "+y
vmap <C-X> "+d
vmap <C-V> "+p"
" Tell VIM during motion commands to try to preserve column where cursor is positioned
set nostartofline
" Close buffer with Ctrl+Q
nnoremap <C-Q> :bd<CR>
map <leader>f :NERDTreeToggle<CR>
map <leader>b :LustyJuggler<CR>
map <leader>p :CtrlP<CR>
let g:ctrlp_working_path_mode = 'a'
:set expandtab
:set tabstop=2
:set shiftwidth=2
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/     
" Remap navigation keys
map ss :call ToggleSplit()<CR>
function! ToggleSplit()
  if len(tabpagebuflist()) > 1
    :close
  else
    :vsplit
  endif
endfunction

"Rotate buffer right
map <C-;> :call MoveRight()<CR>
" Switch between buffers with Shift+H and Shift+L
nnoremap <S-H> :bprevious<CR>
nnoremap <S-L> :bnext<CR>

function! MoveRight()
  if len(tabpagebuflist()) > 1
    :exe "normal \<C-W>\<C-w>"
  else
    :bnext
  endif
endfunction

function! MoveLeft()
  if len(tabpagebuflist()) > 1
    :exe "normal \<C-W>\<C-w>"
  else
    :bprev
  endif
endfunction
map <C-W> ciw'<C-R>"'

inoremap <C-h> <left>
inoremap <C-l> <right>
inoremap <C-k> <up>
inoremap <C-j> <down>

inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
inoremap  <PageUp> <NOP>
inoremap  <PageDown> <NOP>

noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <PageUp>  <NOP>
noremap   <PageDown>   <NOP>
noremap   <Right>  <NOP>
set cursorline
