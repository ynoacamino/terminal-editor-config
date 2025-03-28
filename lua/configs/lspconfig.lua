-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

lspconfig.servers = {
  "css-lsp",
  "docker-compose-language-service",
  "dockerfile-language-server",
  "eslint-lsp",
  "gopls",
  "html-lsp",
  "tailwindcss-language-server",
  "typescript-language-server",
}

-- EXAMPLE
local servers = { "html", "cssls", "gopls", "ts_ls", "tailwindcss", "dockerls", "docker_compose_language_service" }
local nvlsp = require "nvchad.configs.lspconfig"

nvlsp.defaults()

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end
