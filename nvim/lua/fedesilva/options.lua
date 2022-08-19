local options = {
  nu = true,
  relativenumber = true,
  tabstop = 2,
  softtabstop = 2,
  shiftwidth = 2,
  expandtab = true,
  hlsearch = false,
  incsearch = true,
  mouse = 'a',
  swapfile = false,
  smartindent = true,
  wrap = true,
  completeopt = { "menuone", "noselect" }, -- mostly just for cmp
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.g.neoformat_try_node_exe = 1

-- Autosave of lost focus
vim.api.nvim_create_autocmd(
    { "FocusLost" },
    { pattern = { "*.*" }, command = "wa", nested = true }
)

-- Run prettier on buffer write
vim.api.nvim_create_autocmd(
    { "BufWritePre" },
    { pattern = { "*.ts", "*.json", "*.tsx", "*.js", "*.jsx", "*.html" }, command = "Neoformat" }
)




--vim.opt.clipboard = 'unnamedplus'  -- system clipboard
--
