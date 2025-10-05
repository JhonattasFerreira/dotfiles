return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      -- Se quiser redefinir a lista de parsers que serão instalados:
      opts.ensure_installed = {
        "bash",
        "html",
        "javascript",
        "json",          -- inclua só "json", não "jsonc"
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
      }
      -- Adicionar jsonc à lista de ignorados para não instalar
      opts.ignore_install = opts.ignore_install or {}
      table.insert(opts.ignore_install, "jsonc")
    end,
  },
}
