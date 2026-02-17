-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local function rails_server()
  local Terminal = require("toggleterm.terminal").Terminal
  local rails = Terminal:new({
    cmd = "bin/rails server",
    id = 2,
    direction = "horizontal",
    close_on_exit = false,
  })
  rails:toggle()
end

local function docker_up()
  local Terminal = require("toggleterm.terminal").Terminal
  local docker = Terminal:new({
    cmd = "docker compose up",
    id = 3,
    direction = "horizontal",
    close_on_exit = false,
  })
  docker:toggle()
end

local function docker_down()
  local terms = require("toggleterm.terminal")
  local docker = terms.get(3)
  if docker then
    docker:send("\x03") -- Ctrl-C
    vim.defer_fn(function()
      docker:send("docker compose down")
    end, 500)
  end
end

-- Rails
vim.keymap.set("n", "<leader>rs", rails_server, { desc = "Toggle Rails Server" })
vim.keymap.set("n", "<leader>rl", "<cmd>2ToggleTerm<cr>", { desc = "View Rails Logs" })

-- Docker
vim.keymap.set("n", "<leader>Du", docker_up, { desc = "Docker Compose Up" })
vim.keymap.set("n", "<leader>Dd", docker_down, { desc = "Docker Compose Down" })
vim.keymap.set("n", "<leader>Dl", "<cmd>3ToggleTerm<cr>", { desc = "View Docker Logs" })

-- Override Ctrl+/ to open floating terminal instead of bottom split
vim.keymap.set({ "n", "t" }, "<c-/>", function()
  Snacks.terminal(nil, { cwd = LazyVim.root(), win = { position = "float" } })
end, { desc = "Terminal (Root Dir)" })
vim.keymap.set({ "n", "t" }, "<c-_>", function()
  Snacks.terminal(nil, { cwd = LazyVim.root(), win = { position = "float" } })
end, { desc = "which_key_ignore" })

