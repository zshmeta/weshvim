-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--

vim.opt.wrap = true

vim.opt.whichwrap:append("<,>,[,],h,l")

vim.opt.cmdheight = 2

-- Custom command to close Neovim, regardless of the window type
vim.api.nvim_create_user_command("Q", function()
  vim.cmd("qa")
end, {})
local function navTab()
  local tabCount = #vim.api.nvim_list_tabpages()
  local currentTab = vim.api.nvim_get_current_tabpage()
  local winCount = #vim.api.nvim_tabpage_list_wins(currentTab)
  local currentWin = vim.api.nvim_get_current_win()

  -- Move to the next tab if not on the last tab
  if currentTab < tabCount then
    vim.cmd("tabnext")
  else
    -- Cycle through windows within the current tab
    vim.cmd("wincmd w")
    -- If we're back at the first window, it means we've cycled through all; move to the first tab
    if vim.api.nvim_get_current_win() == currentWin then
      vim.cmd("tabfirst")
    end
  end
end

-- Register the function globally to make it accessible
_G.navTab = navTab
