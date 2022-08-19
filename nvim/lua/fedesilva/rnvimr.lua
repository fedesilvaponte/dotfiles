local nnoremap = require("fedesilva.keymap").nnoremap

vim.g.rnvimr_ex_enable = 1

--nnoremap("<leader>pv", "<cmd>Ex<Cr>")
-- nnoremap(";", ":")
nnoremap("<leader>r", "<cmd>RnvimrToggle<cr>")
