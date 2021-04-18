let mapleader = "\<space>"

if has('nvim')
  nnoremap <leader>dj :lua require('plenary').reload.reload_module('junkbox', true)<cr>

  nnoremap <leader>ff :Telescope find_files<cr>
  nnoremap <leader>fb :Telescope buffers<cr>
  nnoremap <leader>fl :Telescope current_buffer_fuzzy_find<cr>
  nnoremap <leader>5 :lua require'junkbox.util'.source()<cr>
  nnoremap <leader>/ :Telescope live_grep<cr>
  nnoremap <leader>gb :Telescope git_branches<cr>

  nnoremap <leader>pc :PackerCompile<cr>
  nnoremap <leader>px :PackerClean<cr>
  nnoremap <leader>pi :PackerInstall<cr>
  nnoremap <leader>ps :PackerSync<cr>
  nnoremap <leader>pu :PackerUpdate<cr>

  " if exists(':terminal')
  "   nnoremap <leader>T :vsplit<bar>:terminal<cr>
  " endif
else
  nnoremap <leader>ff :Files<cr>
  nnoremap <leader>fb :Buffers<cr>
  nnoremap <leader>fl :Lines<cr>
  nnoremap <leader>5 :source %<cr>
  nnoremap <leader>/ :Grep<cr>

  " if exists(':terminal')
  "   nnoremap <leader>T :vertical terminal<cr>
  " endif
endif

" nmap <leader>j %! jq .<cr>
" vmap <leader>64 c<c-r>=system('base64 --decode', @")<cr><esc>

nnoremap <silent> <leader>q :Sayonara<cr>
nnoremap <leader>~ :vsplit $HOME<cr>
nnoremap <leader>- :vsplit $PWD<cr>
" nnoremap <leader>cd :lcd %:p:h<cr>:pwd<cr>

nnoremap <leader>ge :Gedit :<cr>
nnoremap <leader>gv :vertical Git<cr>
nnoremap <leader>gp :Git push<cr>

nnoremap <leader>bb :buffers<cr>:buffer<space>
nnoremap <leader>bv :buffers<cr>:vertical sbuffer<space>
nnoremap <leader>ba :vertical ball<cr>
nnoremap <leader>bd :bdelete<cr>
nnoremap <leader>bD :OtherBuffersDo bdelete!<cr>
nnoremap <leader>bw :bwipeout<cr>
nnoremap <leader>bW :%bwipeout!<cr>
nnoremap <leader>bO :OtherBuffersDo bwipeout!<cr>
nnoremap <leader>bH :HiddenBuffersDo bwipeout!<cr>

nmap     <leader>wg <Plug>(golden_ratio_resize)
nnoremap <leader>wf <C-w><Bar><C-w>_

nnoremap <leader>tw :set wrap!<cr>
nnoremap <leader>tg :GoldenRatioToggle<cr>
