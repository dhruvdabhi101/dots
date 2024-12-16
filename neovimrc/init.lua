require("theprimeagen")
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

local client = vim.lsp.start_client {
  name = "darkdownlsp",
  cmd = { "darkdownlsp" }
}

if not client then
  vim.notify("Do the client thing right")
  return
end

vim.api.nvim_create_autocmd({ "BufRead", "FileType" }, {
  pattern = "*.dd",
  callback = function()
    vim.lsp.buf_attach_client(0, client)
  end,
})

