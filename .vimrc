set number
syntax on

" size of a hard tabstop
set tabstop=4

" size of an "indent"
set shiftwidth=4

" a combination of spaces and tabs are used to simulate tab stops at a width
" other than the (hard)tabstop
set softtabstop=4

" make "tab" insert indents instead of tabs at the beginning of a line
set smarttab

" always uses spaces instead of tab characters
set expandtab


" Ooops forgot to open file as root?
" This'll force it in (be careful it's owned by root for a reason)
cmap w!!! %!sudo tee > /dev/null %

