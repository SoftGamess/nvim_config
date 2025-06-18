return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      lspconfig.lua_ls.setup({ capabilities = capabilities })
      lspconfig.ocamllsp.setup({ capabilities = capabilities })
      lspconfig.clangd.setup({ capabilities = capabilities })
      lspconfig.rust_analyzer.setup({ capabilities = capabilities })
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
      vim.keymap.set('n', '<leader>of', vim.diagnostic.open_float, {})
      vim.keymap.set('n', '<leader>td',
        function()
          local new_config = not vim.diagnostic.config().virtual_text
          vim.diagnostic.config({ virtual_text = new_config })
        end,
        { desc = 'Toggle virtual text' })
      vim.diagnostic.config({
        virtual_text = { severity = { min = vim.diagnostic.severity.INFO }, true },
        underline = { severity = { min = vim.diagnostic.severity.INFO } },
        signs = { severity = { min = vim.diagnostic.severity.INFO } },
      })
    end
  },
  {
    "mason-org/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "mason-org/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "clangd", "ocamllsp", "rust_analyzer" }
      })
    end
  },
}
