--  █████╗ ██╗   ██╗████████╗ ██████╗  ██████╗███╗   ███╗██████╗ ███████╗
-- ██╔══██╗██║   ██║╚══██╔══╝██╔═══██╗██╔════╝████╗ ████║██╔══██╗██╔════╝
-- ███████║██║   ██║   ██║   ██║   ██║██║     ██╔████╔██║██║  ██║███████╗
-- ██╔══██║██║   ██║   ██║   ██║   ██║██║     ██║╚██╔╝██║██║  ██║╚════██║
-- ██║  ██║╚██████╔╝   ██║   ╚██████╔╝╚██████╗██║ ╚═╝ ██║██████╔╝███████║
-- ╚═╝  ╚═╝ ╚═════╝    ╚═╝    ╚═════╝  ╚═════╝╚═╝     ╚═╝╚═════╝ ╚══════╝

-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Set .ejs files to use HTML filetype
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.ejs",
  callback = function()
    vim.bo.filetype = "html" -- Treat as HTML
  end,
})
