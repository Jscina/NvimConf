return {
  "ahmedkhalf/project.nvim",
  config = function()
    require("project_nvim").setup({
      exlude_dirs = { "**/src-tauri/*" }, -- exclude tauri src
    })
  end,
}
