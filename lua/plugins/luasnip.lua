return {
  {
    "L3MON4D3/LuaSnip",
    opts = function(_, opts)
      opts = vim.tbl_deep_extend("force", opts, {
        history = true,
        delete_check_events = "TextChanged",
      })

      require("luasnip.loaders.from_lua").load({
        paths = { vim.fn.stdpath("config") .. "/lua/plugins/snippets" },
      })
    end,
  },
}
