return {
  {
    "neovim/nvim-lspconfig",
    opts = function()
      local lspconfig = require("lspconfig")
      lspconfig.dartls.setup({
        cmd = { "dart", "language-server", "--protocol=lsp" },
      })
    end,
  },
  {
    "nvim-flutter/flutter-tools.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("flutter-tools").setup({
        flutter_path = nil,
        flutter_lookup_cmd = "asdf where flutter",
        fmv = false,
      })
    end,
  },
}
