return {
  -- Mason and Mason LSPConfig (ensure they load first)
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        automatic_setup = false, -- Disable automatic setup
      })
    end,
  },

  -- Telescope
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("heisenberg.plugins.telescope").setup()
    end,
  },

  -- Colorschemes
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("heisenberg.plugins.colorscheme").setup_catppuccin()
    end,
  },
  {
    "folke/tokyonight.nvim",
    name = "tokyonight",
    priority = 1000,
    config = function()
      require("heisenberg.plugins.colorscheme").setup_tokyonight()
    end,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    config = function()
      require("heisenberg.plugins.colorscheme").setup_rosepine()
    end,
  },

  -- Commenting
  {
    "numToStr/Comment.nvim",
    opts = {},
    lazy = false, -- Load on startup
    config = function()
      require("heisenberg.plugins.comment").setup()
    end,
  },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("heisenberg.plugins.treesitter").setup()
    end,
  },
  
  -- Autocomplete Braces (nvim-autopairs)
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = { noremap = true, silent = true, },
    config = function()
      require("heisenberg.plugins.autocomplete-braces").setup()
    end,
  },

  -- Pyright (LSP, nvim-cmp)
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "hrsh7th/nvim-cmp",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
    },
    config = function()
      require("heisenberg.plugins.pyright").setup()
    end,
  },

} 
