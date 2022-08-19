local nnoremap = require("fedesilva.keymap").nnoremap

nnoremap("<leader>o", "<cmd>Telescope find_files<cr>")
nnoremap("<leader>f", "<cmd>Telescope live_grep<cr>")
nnoremap("<leader>f", "<cmd>Telescope live_grep<cr>")
local actions = require("telescope.actions")

require("telescope").setup({
  defaults = {
    file_ignore_patters = {"node_modules"},
    mappings = {
      i = {
          ["<esc>"] = actions.close,
      },
    },
  },
})


