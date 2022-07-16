--     __                     _       _ __
--    / /   _________        (_)___  (_) /_
--   / /   / ___/ __ \______/ / __ \/ / __/
--  / /___(__  ) /_/ /_____/ / / / / / /_
-- /_____/____/ .___/     /_/_/ /_/_/\__/
--           /_/

local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require("lsp.lsp_installer")
require("lsp.handlers").setup()
require("lsp.null_ls_cfg")
