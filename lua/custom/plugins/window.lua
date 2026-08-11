-- Function to open a centered floating window with a blank buffer
local function open_float()
  local buf = vim.api.nvim_create_buf(false, true) -- Create scratch buffer
  local width = math.floor(vim.o.columns * 0.8)
  local height = math.floor(vim.o.lines * 0.8)
  local row = math.floor((vim.o.lines - height) / 2)
  local col = math.floor((vim.o.columns - width) / 2)

  vim.api.nvim_open_win(buf, true, {
    relative = "editor",
    width = width,
    height = height,
    row = row,
    col = col,
    style = "minimal",
    border = "rounded",
  })
end

-- Keymap to toggle it with <leader>f
vim.keymap.set('n', '<C-w>f', open_float, { noremap = true, silent = true, desc = "Open float" })
