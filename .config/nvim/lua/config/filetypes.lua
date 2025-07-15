-- Force .ejs to be recognized as HTML
vim.filetype.add({
  extension = {
    ejs = "html", -- Map .ejs to HTML
  },
})

-- Add EJS tag highlighting to HTML files
vim.api.nvim_create_autocmd("FileType", {
  pattern = "html",
  callback = function()
    vim.cmd([[
      syntax match ejsTag /<%%\?\(-\|=\)\?/ containedin=htmlTag
      highlight link ejsTag Special
    ]])
  end,
})
