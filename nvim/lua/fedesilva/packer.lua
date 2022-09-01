local fn = vim.fn
local packer = require('packer')

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Have packer use a popup window
packer.init({
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "rounded" })
    end,
  },
})

local useFunction = function(use)
  use 'wbthomason/packer.nvim'
  use 'nvim-lua/popup.nvim'
  use "JoosepAlviste/nvim-ts-context-commentstring"
  use "numToStr/Comment.nvim"

  -- Colors
  use 'folke/tokyonight.nvim'
  use 'sainnhe/sonokai'


  use 'sbdchd/neoformat'

  --Treesitter
  use "nvim-treesitter/nvim-treesitter"
  use "p00f/nvim-ts-rainbow"

  use "nvim-lua/plenary.nvim"
  use "nvim-telescope/telescope.nvim"
  use { "kyazdani42/nvim-tree.lua", requires = { "kyazdani42/nvim-web-devicons" } }

  use('jose-elias-alvarez/null-ls.nvim')
  use('MunifTanjim/prettier.nvim')

  --Snippets
  use("L3MON4D3/LuaSnip") --snippet engine


  --Completion
  use({ "hrsh7th/nvim-cmp" }) -- The completion plugin
  use("hrsh7th/cmp-path")
  use("hrsh7th/cmp-buffer") -- buffer completions

  use("saadparwaiz1/cmp_luasnip") -- snippet completions

  use 'gisphm/vim-gitignore'
  -- use{'kevinhwang91/rnvimr', requires = 'rbgrouleff/bclose.vim' } -- Ranger plugin
  packer.use {'glepnir/dashboard-nvim'}

  --LSP
  use("neovim/nvim-lspconfig")
  use("hrsh7th/cmp-nvim-lsp")
  use("williamboman/nvim-lsp-installer")

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- GIT
  use('lewis6991/gitsigns.nvim')
end

return packer.startup(useFunction)
