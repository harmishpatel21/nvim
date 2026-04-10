return {
  setup_catppuccin = function()
    vim.cmd.colorscheme("catppuccin")
  end,
  setup_tokyonight = function()
    require("tokyonight").setup({
      -- your configuration comes here
      -- or leave it empty to use the default settings
      style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker `night` and `day`
      light_style = "day", -- Bright style when `vim.o.background` is set to "light"
      transparent = true, -- Enable this to disable setting the background color
      terminal_colors = true, -- Enable this to display the "background" color when running in a terminal
      styles = {
        -- Style to be applied to different syntax groups
        comments = { italic = true },
        keywords = { italic = true },
        functions = {}, -- to enable `italic` for functions key
        variables = {}, -- to enable `italic` for variables key
        -- Background styles.
        sidebars = "dark", -- can be "dark", "transparent", "light"
        floats = "dark", -- can be "dark", "transparent", "light"
      },
      day_brightness = 0.3, -- Adjusts the brightness of the `day` style. Number between 0 and 1, from dull to bright.
      hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead.
      dim_inactive = false, -- Dims inactive windows.
      lualine_bold = false, -- When `true`, section name will be bold.
      on_colors = function(colors) end,
      on_highlights = function(highlights, colors) end,
    })
    vim.cmd.colorscheme("tokyonight")
  end,
  setup_rosepine = function()
    require("rose-pine").setup({
      variant = "auto", -- auto, main, moon, latte
      dark_variant = "main", -- main, moon
      disable_background = true,
      disable_float_background = true,
      disable_italics = true,
      --- @usage `contrast_background` effectively makes the main background darker to
      --- improve contrast with the various highlight groups. (default: `false`)
      contrast_background = true,
      --- @usage `store_view` is designed for `vim.opt.laststatus = 3` and will
      --- provide a more immersive experience.
      -- (default: `false`)
      store_view = false,
      bold_vert_split = false,
      disable_nvimtree_legacy_owner = false,
      dim_nc_background = false,
      --- @usage This option allows you to extend the highlight groups
      --- or override default values in `highlights`.
      --- @type fun(highlights: table, colors: table): table
      before_init = nil,
      --- @usage This option allows you to override highlight groups and colors after the theme has been initialized.
      --- @type fun(highlights: table, colors: table): table
      after_setup = nil,
    })
    vim.cmd.colorscheme("rose-pine")
  end,
} 