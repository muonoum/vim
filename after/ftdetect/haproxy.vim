func! s:isHaproxy() abort
  let filepath = expand("%:p")
  if filepath =~ '\v/hap-.+/.+\.cfg$' | return 1 | end
  if filepath =~ '\v/opt/ha/services/.+\.cfg$' | return 1 | end

  for i in getline(1, 15)
    if i =~ '\v^(listen|frontend|backend)'
      return 1
    end
  endfor
endf

augroup detectHaproxy
  autocmd BufRead * if s:isHaproxy() | set ft=haproxy | end
augroup END
