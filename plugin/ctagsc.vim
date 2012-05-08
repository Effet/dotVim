" from vimer.cn
" http://www.vimer.cn/2009/10/%E6%8A%8Avim%E6%89%93%E9%80%A0%E6%88%90%E4%B8%80%E4%B8%AA%E7%9C%9F%E6%AD%A3%E7%9A%84ide2.html
"
map <F12> :call Do_CsTag()<CR>
nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>:copen<CR>
nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>:copen<CR>
nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>:copen<CR>
nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>:copen<CR>
nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>:copen<CR>
nmap <C-@>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>:copen<CR>
nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>:copen<CR>
function Do_CsTag()
  silent! exec "w"
  let dir = getcwd()
  if filereadable("tags")
    let tagsdeleted=delete("./"."tags")
    if(tagsdeleted!=0)
      echohl WarningMsg | echo "Fail to do tags! I cannot delete the tags" | echohl None
      return
    endif
  endif
  if has("cscope")
    silent! execute "cs kill -1"
  endif
  if filereadable("cscope.files")
    let csfilesdeleted=delete("./"."cscope.files")
    if(csfilesdeleted!=0)
      echohl WarningMsg | echo "Fail to do cscope! I cannot delete the cscope.files" | echohl None
      return
    endif
  endif
  if filereadable("cscope.out")
    let csoutdeleted=delete("./"."cscope.out")
    if(csoutdeleted!=0)
      echohl WarningMsg | echo "Fail to do cscope! I cannot delete the cscope.out" | echohl None
      return
    endif
  endif
  if(executable('ctags'))
    "silent! execute "!ctags -R --c-types=+p --fields=+S *"
    silent! execute "!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q ."
  endif
  if(executable('cscope') && has("cscope") )
    silent! execute "!find . -name '*.h' -o -name '*.c' -o -name '*.cpp' -o -name '*.java' -o -name '*.cs' > cscope.files"
    silent! execute "!cscope -b"
    execute "normal :"
    if filereadable("cscope.out")
      execute "cs add cscope.out"
    endif
  endif
  redraw!
endfunction

"进行Tlist的设置
"TlistUpdate可以更新tags
nnoremap <silent> <f8> :TlistToggle<CR>
"map <F3> :silent! Tlist<CR> "按下F3就可以呼出了
let Tlist_Ctags_Cmd='ctags' "因为我们放在环境变量里，所以可以直接执行
let Tlist_Use_Right_Window=0 "让窗口显示在右边，0的话就是显示在左边
let Tlist_Show_One_File=0 "让taglist可以同时展示多个文件的函数列表，如果想只有1个，设置为1
let Tlist_File_Fold_Auto_Close=1 "非当前文件，函数列表折叠隐藏
let Tlist_Exit_OnlyWindow=1 "当taglist是最后一个分割窗口时，自动推出vim
let Tlist_Process_File_Always=0 "是否一直处理tags.1:处理;0:不处理。不是一直实时更新tags，因为没有必要
let Tlist_Inc_Winwidth=0
