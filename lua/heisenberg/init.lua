local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Load personal settings (before LazyVim defaults)
require("heisenberg.core.options")
require("heisenberg.core.keymaps")

require("lazy").setup(require("heisenberg.plugins"), {
  defaults = {
    -- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will be loaded during startup.
    -- If you want to lazy-load all plugins, set this to "all"
    lazy = false,
    -- Each plugin is lazy-loaded after the first call of its module. By default, this is the case for all modules in your plugin directory.
    -- You can disable this by setting the "lazy" option to false for your plugins.
    -- lazy = false,
    -- If you want to load all plugins from a plugin directory during startup, add a `LazyVim` prefix to the plugin directory in your `require("lazy").setup` call.
    -- For example: `require("lazy").setup("LazyVim.plugins", {})`
    -- This will load all plugins from the `LazyVim/plugins` directory during startup.
    -- See `:help lazy.nvim-plugins.LazyVim` for more details.
  },
  install = { colorscheme = { "catppuccin", "tokyonight", "rose-pine" } },
  checker = { enabled = false }, -- check for plugins updates each start-up
  performance = {
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = {
        "gzip",
        -- "matchit",
        -- "matchparen",
        -- "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
}) 
