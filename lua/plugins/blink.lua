return {
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        preset = "enter",
        ["<Tab>"] = { "select_next", "fallback" },
        ["<S-Tab>"] = { "select_prev", "fallback" },
        ["Space"] = {
          function(cmp)
            cmp.cancel()
          end,
        },
        ["<C-CR>"] = {
          function(cmp)
            cmp.cancel()
          end,
        },
        ["<S-CR>"] = {
          function(cmp)
            cmp.cancel()
          end,
        },
      },
      completion = { list = { selection = "auto_insert" } },
    },
  },
}
