return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      { "<leader><space>", LazyVim.pick("files", { root = false, hidden = true }), desc = "Find Files (cwd)" },
    },
  },
}
