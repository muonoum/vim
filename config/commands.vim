command! -nargs=1 OtherBuffersDo  lua require'junkbox.util'.otherbufdo(<f-args>)
command! -nargs=1 HiddenBuffersDo lua require'junkbox.util'.hiddenbufdo(<f-args>)
command! PackerSync packadd packer.nvim | lua require'plugin.packer'.sync()
command! -nargs=* T botright split | terminal <args>
command! -nargs=* VT botright vsplit | terminal <args>
