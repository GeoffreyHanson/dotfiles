return {
  {
    "neovim/nvim-lspconfig",

    config = function()
      vim.lsp.enable({
        "nil_ls",
        "lua_ls",
        "pyright",
        "ruff",
        "marksman",
        "jsonls",
        "yamlls",
      })

      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(event)
          local opts = { buffer = event.buf }

          vim.keymap.set("n", "gd", function()
            Snacks.picker.lsp_definitions()
          end, vim.tbl_extend("force", opts, { desc = "Goto Definition" }))

          vim.keymap.set("n", "gr", function()
            Snacks.picker.lsp_references()
          end, vim.tbl_extend("force", opts, { desc = "References" }))

          vim.keymap.set("n", "gI", function()
            Snacks.picker.lsp_implementations()
          end, vim.tbl_extend("force", opts, { desc = "Goto Implementation" }))

          vim.keymap.set("n", "gy", function()
            Snacks.picker.lsp_type_definitions()
          end, vim.tbl_extend("force", opts, { desc = "Goto Type Definition" }))

          vim.keymap.set("n", "<leader>ss", function()
            Snacks.picker.lsp_symbols()
          end, vim.tbl_extend("force", opts, { desc = "LSP Symbols" }))

          vim.keymap.set("n", "<leader>sS", function()
            Snacks.picker.lsp_workspace_symbols()
          end, vim.tbl_extend("force", opts, { desc = "LSP Workspace Symbols" }))

          vim.keymap.set("n", "gD", vim.lsp.buf.declaration,
            vim.tbl_extend("force", opts, { desc = "Goto Declaration" }))

          vim.keymap.set("n", "K", vim.lsp.buf.hover,
            vim.tbl_extend("force", opts, { desc = "Hover" }))

          vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action,
            vim.tbl_extend("force", opts, { desc = "Code Action" }))

          vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename,
            vim.tbl_extend("force", opts, { desc = "Rename" }))
        end,
      })
    end,
  },
}
