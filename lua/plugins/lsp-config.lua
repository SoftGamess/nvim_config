return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      vim.lsp.config["lua_ls"] = {
        filetypes = { 'lua' },
      }
      vim.lsp.config["ocamllsp"] = {
        filetypes = { 'ocaml' },
      }
      vim.lsp.config["clangd"] = {
        filetypes = { 'c', 'h' },
      }
      vim.lsp.config["rust_analyzer"] = {
        filetypes = { 'rs' },
      }
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
