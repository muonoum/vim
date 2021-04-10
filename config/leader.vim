let mapleader = "\<space>"

nnoremap <leader><space> :bnext<cr>
nnoremap <leader><bs> :bprevious<cr>
nnoremap <leader>q :Sayonara<cr>
nnoremap <leader>% :lua require'junkbox.util'.source()<cr>
nnoremap <leader>- :vsplit $PWD<cr>
nnoremap <leader>cd :lcd %:p:h<cr>:pwd<cr>
nnoremap <leader>T :VT<cr>
nnoremap <leader># :Telescope buffers<cr>
nnoremap <leader>/ :Telescope live_grep<cr>
nnoremap <leader>@ :Telescope find_files<cr>

nnoremap <leader>G :vertical Git<cr>
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

nmap <silent> <leader>ww <Plug>(golden_ratio_resize)
nnoremap <leader>wf <C-w><Bar><C-w>_
nnoremap <leader>w= <C-w>=
nnoremap <leader>wo :only<cr>
nnoremap <leader>wr <C-w>r
nnoremap <leader>wc :close<cr>

nnoremap <leader>tw :set wrap!<cr>
nnoremap <leader>tg :GoldenRatioToggle<cr>
