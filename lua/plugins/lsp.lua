return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        rust_analyzer = {
          standalone = true,
          settings = {
            ["rust-analyzer"] = {
              diagnostics = {
                enable = true,
                disabled = { "unresolved-proc-macro" },
                enableExperimental = true,
              },
              imports = {
                granularity = {
                  group = "module",
                },
                prefix = "self",
              },
              cargo = {
                features = { "ssr" },
                loadOutDirsFromCheck = true,
                buildScripts = {
                  enable = true,
                },
              },
              check = {
                features = { "ssr" },
              },
              -- Add clippy lints for Rust.
              checkOnSave = {
                features = { "ssr" },
                command = "clippy",
                extraArgs = { "--no-deps" },
              },
              procMacro = {
                enable = false,
              },
            },
          },
        },
      },
    },
  },
}
