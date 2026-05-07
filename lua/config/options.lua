-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- 在 SSH 远程环境中，强制使用 OSC52 复制到本机系统剪切板
if vim.env.SSH_TTY or vim.env.SSH_CONNECTION then
  local osc52 = require("vim.ui.clipboard.osc52")

  vim.g.clipboard = {
    name = "OSC52",
    copy = {
      ["+"] = osc52.copy("+"),
      ["*"] = osc52.copy("*"),
    },
    paste = {
      ["+"] = osc52.paste("+"),
      ["*"] = osc52.paste("*"),
    },
  }
end

-- 让普通 y / yy / visual y 默认使用系统剪切板寄存器 +
vim.opt.clipboard = "unnamedplus"

-- 禁用自动格式化
vim.g.autoformat = false -- globally
vim.b.autoformat = false -- buffer-local
