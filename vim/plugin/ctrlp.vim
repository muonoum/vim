" autocmd CursorHold * if expand('%') != 'ControlP' | echo | endif

let ctrlp_cmd = 'CtrlPCurWD'
let ctrlp_line_prefix = ' '

let ctrlp_custom_ignore = {
\ 'dir': '\v/(pack|.git$)',
\}

let g:ctrlp_prompt_mappings = {
\ 'ToggleFocus()':        [],
\ 'PrtSelectMove("j")':   ['<c-n>', '<down>'],
\ 'PrtSelectMove("k")':   ['<c-p>', '<up>'],
\ 'PrtHistory(-1)':       [],
\ 'PrtHistory(1)':        [],
\}

let g:ctrlp_status_func = {
\ 'main': 'CtrlPStatusline1',
\ 'prog': 'CtrlPStatusline2',
\}

func! CtrlPStatusline1(focus, byfname, regex, prev, item, next, marked)
  let components = [
  \ a:byfname,
  \ a:regex ? 'regex' : '',
  \ '%#StatusLineNC#'.a:prev.'%*'.
  \ ' ··'.a:item.'·· '.
  \ '%#StatusLineNC#'.a:next.'%*',
  \ a:marked,
  \ '%=%< '.getcwd(),
  \]

  let filtered = filter(components, '!empty(v:val)')
  return ' '.join(filtered, '  ').' '
endf

func! CtrlPStatusline2(str)
  return ' '.a:str.' %* %=%< '.getcwd().' %*'
endf

if executable('rg')
  let g:ctrlp_user_command = 'rg %s --files --vimgrep'
endif

" FIXME:

command! CtrlPGrep call ctrlp#init(CtrlPGrepId())

func! CtrlPGrepMatch(search)
  let str = a:search['str'] " TODO unngå at ctrlp lager pattern av input
  if empty(str) | return [] | endif

  let cmd = 'rg --vimgrep '.str.''
  let r = system(cmd)
  let matches = split(r, '\n')

  return matches
endf

let s:ctrlp_grep_var = {
\ 'init': 'CtrlPGrepInit()',
\ 'accept': 'CtrlPGrepAccept',
\ 'lname': 'grep',
\ 'sname': 'grep',
\ 'matcher':  {
\   'match': function('CtrlPGrepMatch'),
\   'arg_type': 'dict',
\ },
\ 'type': 'path',
\ 'sort': 0,
\}

if exists('g:ctrlp_ext_vars')
  call add(g:ctrlp_ext_vars, s:ctrlp_grep_var)
else
  let g:ctrlp_ext_vars = [s:ctrlp_grep_var]
endif

func! CtrlPGrepId()
  return g:ctrlp_builtins + len(g:ctrlp_ext_vars)
endf

func! CtrlPGrepInit()
  return []
endf

function! CtrlPGrepAccept(mode, str)
  call ctrlp#exit()
endfunction
