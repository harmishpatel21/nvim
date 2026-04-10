return {
  setup = function()
    local cmp = require("cmp")
    local lspconfig = require("lspconfig")

    -- LSP capabilities (for nvim-cmp)
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

    -- On_attach function for LSP servers
    local on_attach = function(client, bufnr)
      -- Enable completion
      cmp.setup.buffer({
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
        }, {
          { name = "buffer" },
          { name = "path" },
        }),
      })

      -- Keymaps for LSP
      local function map(mode, lhs, rhs, opts)
        vim.keymap.set(mode, lhs, rhs, { silent = true, noremap = true, buffer = bufnr, desc = opts.desc })
      end

      map("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
      map("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
      map("n", "gr", vim.lsp.buf.references, { desc = "Go to references" })
      map("n", "gi", vim.lsp.buf.implementation, { desc = "Go to implementation" })
      map("n", "K", vim.lsp.buf.hover, { desc = "Hover documentation" })
      map("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })
      map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
      map("n", "<leader>f", function() vim.lsp.buf.format({ async = true }) end, { desc = "Format document" })
    end

    -- Manual LSP server setup (for older mason-lspconfig)
    lspconfig.pyright.setup({
      capabilities = capabilities,
      on_attach = on_attach,
    })

    lspconfig.lua_ls.setup({
      capabilities = capabilities,
      on_attach = on_attach,
      settings = {
        Lua = {
          runtime = {
            version = "Lua51",
          },
          diagnostics = {
            globals = { "vim" },
          },
          workspace = {
            library = vim.api.nvim_get_runtime_file("lua", true),
            checkThirdParty = false,
          },
          telemetry = {
            enable = false,
          },
        },
      },
    })

    -- nvim-cmp setup (moved here to ensure it's available for on_attach)
    cmp.setup({
      snippet = {
        expand = function(args)
          vim.snippet.expand(args.body)
        end,
      },
      mapping = cmp.mapping.preset.insert({
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.abort(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
      }),
      sources = cmp.config.sources({
        { name = "nvim_lsp" },
      }, {
        { name = "buffer" },
        { name = "path" },
      }),
    })
  end,
} 
