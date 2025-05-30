local nvim_lsp = require("lspconfig")

return {
  nvim_lsp.rust_analyzer.setup({
    cmd = { "/home/joao/.cargo/bin/rust-analyzer" },
    settings = {
      ["rust-analyzer"] = {
        imports = {
          granularity = {
            group = "module",
          },
          prefix = "self",
        },
        cargo = {
          buildScripts = {
            enable = true,
          },
        },
        procMacro = {
          enable = true,
        },
      },
    },
  }),
}
