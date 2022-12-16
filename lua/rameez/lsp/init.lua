local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
 return 
end

require("rameez.lsp.lsp-installer")
--require "rameez.lsp.mason"
require("rameez.lsp.handlers").setup()
require "rameez.lsp.null-ls"

