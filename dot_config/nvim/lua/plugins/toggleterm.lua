return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      size = function(term)
        if term.direction == "horizontal" then
          return 15
        elseif term.direction == "vertical" then
          return vim.o.columns * 0.4
        end
      end,
      shell = "/opt/homebrew/bin/fish",
      shade_terminals = true,
      start_in_insert = false,
    },
  },
}
