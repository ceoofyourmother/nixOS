return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/typescript.nvim",
      init = function()
        require("lazyvim.util").lsp.on_attach(function(_, buffer)
          vim.keymap.set("n", "<leader>co", "TypescriptOrganizeImports", { buffer = buffer, desc = "Organize Imports" })
          vim.keymap.set("n", "<leader>cR", "TypescriptRenameFile", { desc = "Rename File", buffer = buffer })
        end)
      end,
      opts = {
        servers = {
          rust_analyzer = {
            mason = false,
            cmd = { vim.fn.expand("~/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/bin/rust-analyzer") },
            settings = {
              ["rust-analyzer"] = {
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
        },
        setup = {
          tsserver = function(_, opts)
            require("typescript").setup({ sever = opts })
            return true
          end,
        },
      },
    },
  },
}
