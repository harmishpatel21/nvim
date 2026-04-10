return {
  setup = function()
    local telescope = require("telescope")
    local builtin = require("telescope.builtin")

    -- Configure Telescope
    telescope.setup({
      defaults = {
        file_ignore_patterns = {
          "node_modules", -- Ignore node_modules directory
          ".git",         -- Ignore .git directory
          "venv",         -- Ignore Python virtual environments
          "build",        -- Ignore build directories
          "dist",         -- Ignore distribution directories
          "*.log",        -- Ignore log files
          "*.tmp",        -- Ignore temporary files
        },
      },
    })

    -- Keymaps
    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Find files' })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Live grep' })
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Find buffers' })
    vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Help tags' })

    if vim.fn.exists(":AvanteToggle") == 2 then
      vim.keymap.set('n', '<leader>aa', ":AvanteToggle<CR>", { desc = 'Avante: Toggle Chat Sidebar' })
    end

    if vim.fn.exists(":AvanteAsk") == 2 then
      vim.keymap.set('n', '<leader>aq', ":AvanteAsk<CR>", { desc = 'Avante: Ask about current file' })
    end
  end,
}
