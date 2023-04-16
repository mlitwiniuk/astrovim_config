return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"
    -- Check supported formatters and linters
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      -- Set a formatter
      null_ls.builtins.formatting.eslint,
      null_ls.builtins.formatting.stylua,
      null_ls.builtins.formatting.prettier,
      null_ls.builtins.formatting.erb_format,
      null_ls.builtins.formatting.prettier.with {
        filetypes = { "ruby", "rb", "html", "json", "yaml", "markdown" },
      },
    }
    -- table.insert(
    --   config.sources,
    --   null_ls.builtins.formatting.prettier.with {
    --     extra_filetypes = { "ruby", "rb" },
    --   }
    -- )
    return config -- return final config table
  end,
}
