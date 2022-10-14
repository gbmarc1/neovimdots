-- entry point for lsp configs
local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
    return
end

require("mab.lsp.lsp-installer")
require("mab.lsp.handlers").setup()
require("mab.lsp.null-ls")
