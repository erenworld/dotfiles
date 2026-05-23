return {
  "mason-org/mason.nvim",
  dependencies = {
    "mason-org/mason-lspconfig.nvim",
  },
  config = function()
    -- import mason 
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")

    -- Active mason et personnalise les icônes
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      automatic_enable = true,
      ensure_installed = {
        -- Web / misc
        "cssls",
        "elmls",
        "graphql",
        "html",
        "lua_ls",
        "pylsp",
        "ruff",
        "sqlls",
        "svelte",
        "ts_ls",
        "yamlls",

        -- Rust
        "rust_analyzer",

        -- C / C++
        "clangd",

        -- Bash / shell
        "bashls",

        -- Docker
        "dockerls",
        "docker_compose_language_service",

        -- TOML (Cargo.toml)
        "taplo",

        -- JSON
        "jsonls",
      },
    })
  end,
}
