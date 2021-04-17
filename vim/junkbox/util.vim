func! MergeDicts(a, b) abort
  let new = copy(a:a)
  for [k, v] in items(a:b)
    if type(v) == type({}) && type(get(new, k)) == type({})
      let new[k] = MergeDicts(new[k], v)
    else
      let new[k] = v
    end
  endfor
  return new
endf

func! MaxLength(xs)
  let l = 0
  for x in a:xs
    if len(x) > l
      let l = len(x)
    end
  endfor
  return l
endf

func! SequenceToDict(seq, v) abort
  if empty(a:seq) | return a:v | end
  let [head; tail] = a:seq
  return SequenceToDict(tail, {head: a:v})
endf

func! EscapeKeys(keys) abort
  let keys = a:keys
  let keys = substitute(keys, '\', '\\\\', 'g')
  let keys = substitute(keys, '<\([^<>]*\)>', '\\<\1>', 'g')
  let keys = substitute(keys, '"', '\\"', 'g')
  return keys
endf
