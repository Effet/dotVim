au FileType c,cpp,cc nmap <f9>  :call CCC()<CR><CR>
"au FileType c,cpp,cc nmap <f10> :!./%<<CR>
au FileType c,cpp,cc nmap <f10> :!cat ./in \| ./%<<CR>
au FileType c,cpp,cc nmap <f11> :call CCC()<CR>:!gdb %<<CR>

" Compile C or C++ source code (single code)
function CCC()

  silent! exec "w"

  if &filetype == 'c'
    set makeprg=gcc\ %\ -o%<\ -lm -lcrypt -O2 -pipe -ansi
  elseif &filetype == 'cpp'
    set makeprg=g++\ %\ -o%<\ -lm -lcrypt -O2 -pipe
  endif

  "set makeprg+=\ -DONLINE_JUDGE

  silent! execute "make"
  silent! execute "cw"

  redraw!
endfunction

" vim: set ts=8 sw=2 fdm=marker:
