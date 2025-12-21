return {
  "stevearc/conform.nvim",
  opts = {},
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")

    conform.setup({
      formatters_by_ft = {
        -- Web
        css = { "prettier" },
        graphql = { "prettier" },
        html = { "prettier" },
        json = { "prettier" },
        liquid = { "prettier" },
        markdown = { "prettier" },
        svelte = { "prettier" },
        yaml = { "prettier" },

        -- JS / TS
        javascript = { "prettier" },
        javascriptreact = { "prettier" },
        typescript = { "prettier" },
        typescriptreact = { "prettier" },

        -- Lua
        lua = { "stylua" },

        -- Python
        python = { "ruff_fix", "ruff_format" },

        -- Rust
        rust = { "rustfmt" },

        -- Go
        go = { "goimports", "gofmt" },

        -- Elm
        elm = { "elm_format" },
      },

      format_on_save = {
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
      },
    })

    vim.keymap.set({ "n", "v" }, "<leader>mp", function()
      conform.format({
        lsp_format = "fallback",
        async = false,
        timeout_ms = 1000,
      })
    end, { desc = "Format file or range (in visual mode)" })
  end,
}

