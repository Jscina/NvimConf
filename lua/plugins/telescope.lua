return {
  "nvim-telescope/telescope.nvim",
  config = function()
    require("telescope").setup({})
    require("telescope").load_extension("projects")
  end,
}
