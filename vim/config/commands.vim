if has('nvim')
  command! -nargs=1 OtherBuffersDo  lua require'junkbox.util'.otherbufdo(<f-args>)
  command! -nargs=1 HiddenBuffersDo lua require'junkbox.util'.hiddenbufdo(<f-args>)
  command! PackerSync packadd packer.nvim | lua require'plugin.packer'.sync()
else
  command! -nargs=1 OtherBuffersDo call OtherBuffersDo(<f-args>)
  command! -nargs=1 HiddenBuffersDo call HiddenBuffersDo(<f-args>)

  func! HiddenBuffersDo(op)
    let cmds = []

    for b in filter(range(1, bufnr('$')), 'bufexists(v:val)')
      if bufwinnr(b) < 1
        let cmd = printf('%d%s', b, a:op)
        call add(cmds, cmd)
      endif
    endfor

    execute join(cmds, '|')
  endf

  func! OtherBuffersDo(op)
    let buffers = filter(range(1, bufnr('$')), 'bufexists(v:val)')
    if len(buffers) == 0 | return | endif
    let active = winbufnr(winnr())
    let cmds = []

    let first = get(buffers, 0, -1)
    if active != first
        call add(cmds, printf('%d,%d-%s', first, active, a:op))
    endif

    if active != get(buffers, -1, -1)
        call add(cmds, printf('%d+,$%s', active, a:op))
    endif

    execute join(cmds, '|')
  endf
end
