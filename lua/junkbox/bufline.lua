local function bufline()
  local buffers = vim.api.nvim_list_bufs()
  local active = vim.fn.winbufnr(vim.fn.winnr())

  for i=1,#buffers do

  end
end

return {
  bufline = bufline,
}
