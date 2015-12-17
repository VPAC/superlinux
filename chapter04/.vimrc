set nocompatible "use vim defaults rather than force compatibility with vi
set incsearch  "Incremental searching; vim will search for text as you enter it
set tabstop=4 "Sets tabs to four characters (default is eight)
" set number "Sets line numbers automatically
au BufWritePost   *.sh !chmod +x % "Converts .sh files to executable 
au BufWritePost   *.pl !chmod +x % "Converts .pl files to executable 
set switchbuf=usetab
nnoremap <F8> :sbnext<CR>
nnoremap <S-F8> :sbprevious<CR>
