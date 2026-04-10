return {
  setup = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "javascript",
        "typescript",
        "lua",
        "python",
        "html",
        "css",
        "json",
        "markdown",
        "markdown_inline",
      },
      sync_install = false,
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = { enable = true, },
    })
  end,
} 