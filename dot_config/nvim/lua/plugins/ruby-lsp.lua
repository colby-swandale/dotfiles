-- Override LazyVim ruby LSP defaults to use mise instead of Mason.
-- Mason's ruby-lsp/rubocop use the global Ruby version, which causes
-- Bundler::RubyVersionMismatch errors when the project requires a different version.
-- Using mise exec respects each project's .ruby-version/.tool-versions automatically.
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        ruby_lsp = {
          mason = false,
          cmd = { "mise", "exec", "--", "ruby-lsp" },
        },
        rubocop = {
          mason = false,
          cmd = { "mise", "exec", "--", "bundle", "exec", "rubocop", "--lsp" },
        },
      },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters = {
        rubocop = {
          command = "mise",
          prepend_args = { "exec", "--", "bundle", "exec", "rubocop" },
        },
      },
    },
  },
}
