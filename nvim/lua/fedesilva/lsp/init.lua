local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require("fedesilva.lsp.configs")
require("fedesilva.lsp.handlers").setup()
require("fedesilva.lsp.null-ls")

