vim.g.mapleader = ","

local nnoremap = require("fedesilva.keymap").nnoremap
local nmap = require("fedesilva.keymap").nmap
local vmap = require("fedesilva.keymap").vnoremap

--nnoremap("<leader>pv", "<cmd>Ex<Cr>")
-- nnoremap(";", ":")
nnoremap("<space>", ":")
nnoremap("<leader>so", "<cmd>so %<cr>")
nnoremap("<leader>qa", "<cmd>qa!<cr>")
nnoremap("<leader>w", "<cmd>q<cr>")
nnoremap("<C-s>", "<cmd>w<cr>")

nmap("<leader>e", "<cmd>NvimTreeToggle<cr>")

--Better window navigation with arrows
nnoremap("<C-h>", "<c-w>h")
nnoremap("<C-j>", "<c-w>j")
nnoremap("<C-l>", "<c-w>l")
nnoremap("<C-k>", "<c-w>k")

--Resize with arrows
nnoremap("<C-r>k", "<cmd>resize +2<cr>")
nnoremap("<C-r>j", "<cmd>resize -2<cr>")


--Navigate buffers
nnoremap("<S-l>", "<cmd>bnext<cr>")
nnoremap("<S-h>", "<cmd>bprev<cr>")

-- Visual Move up and down
vmap("<A-j>", "<cmd>m .+1<cr>==")
vmap("p", '"_dP"') -- Paste without yanking
