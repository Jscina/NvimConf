return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = function()
        require("tokyonight").load({
          transparent = true,
          styles = {
            sidebars = "transparent",
            floats = "transparent",
          },
        })
      end,
    },
  },
}
