" Save buffer before closing
function! BufDel()
  if (getbufinfo(bufnr("%"))[0].changed)
    execute("w")
  endif

  execute("Bdelete")
endfunction

" Set key mappings
nmap <F6> :call BufDel()<CR>
