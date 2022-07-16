--   _____      _                       _
--  / ____|    | |                     | |
-- | |     ___ | | ___  _ __   ___  ___| |__   ___ _ __ ___   ___  ___
-- | |    / _ \| |/ _ \| '__| / __|/ __| '_ \ / _ \ '_ ` _ \ / _ \/ __|
-- | |___| (_) | | (_) | |    \__ \ (__| | | |  __/ | | | | |  __/\__ \
--  \_____\___/|_|\___/|_|    |___/\___|_| |_|\___|_| |_| |_|\___||___/

local colorschemes = {
    onedark = "onedark",
    gruvbox = "gruvbox",
    material = "material",
    test = "test",
}

local colorscheme = colorschemes.material

if colorscheme == "onedark" then
    require("colorschemes.onedark_scheme")
elseif colorscheme == "material" then
    require("colorschemes.material_scheme")
elseif colorscheme == "gruvbox" then
    vim.cmd("colorscheme gruvbox")
else
    vim.notify("[ERROR] - Unable to load a colorscheme with the name " .. colorscheme)
end
