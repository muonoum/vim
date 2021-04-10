command! PackerSync packadd packer.nvim | lua require'plugin.packer'.sync()
command! -nargs=1 OtherBufDo  lua require'junkbox.util'.otherbufdo(<f-args>)
command! -nargs=1 HiddenBufDo lua require'junkbox.util'.hiddenbufdo(<f-args>)
