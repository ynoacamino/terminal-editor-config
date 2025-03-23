vim.api.nvim_create_autocmd("FileType", {
  pattern = "go",
  callback = function()
    vim.bo.tabstop = 4 -- Define que un tab equivale a 4 espacios
    vim.bo.shiftwidth = 4 -- Indica el ancho de la indentación al usar >> o <<
    vim.bo.softtabstop = 4 -- Controla cuántos espacios se usan al presionar Tab
    vim.bo.expandtab = false -- Usa tabulaciones en lugar de espacios
  end,
})
