-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Rails
vim.keymap.set("n", "<leader>rs", function()
  Snacks.terminal.toggle("bin/rails server", { win = { position = "bottom" }, start_insert = false, auto_close = false })
end, { desc = "Toggle Rails Server" })

-- Override Ctrl+/ to open floating terminal instead of bottom split
vim.keymap.set({ "n", "t" }, "<c-/>", function()
  Snacks.terminal(nil, { cwd = LazyVim.root(), win = { position = "float" } })
end, { desc = "Terminal (Root Dir)" })
vim.keymap.set({ "n", "t" }, "<c-_>", function()
  Snacks.terminal(nil, { cwd = LazyVim.root(), win = { position = "float" } })
end, { desc = "which_key_ignore" })

