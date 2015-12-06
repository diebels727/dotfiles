syntax on
set t_Co=256
set number

" preserve cursor column
set nostartofline

:set expandtab
:set tabstop=2
:set shiftwidth=2
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/     

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
