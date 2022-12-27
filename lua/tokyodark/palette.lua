local color_gamma = require("tokyodark.utils").color_gamma
local gamma = require("tokyodark.config").gamma

local colors = {
    black = "#06080A",
    bg0 = "#11121D",
    bg1 = "#1A1B2A",
    bg2 = "#212234",
    bg3 = "#353945",
    bg4 = "#4A5057",
    bg5 = "#282c34",
    bg_red = "#FE6D85",
    bg_green = "#98C379",
    bg_blue = "#9FBBF3",
    diff_red = "#773440",
    diff_green = "#587738",
    diff_blue = "#2a3a5a",
    diff_add = "#1E2326",
    diff_change = "#262b3d",
    diff_delete = "#281B27",
    diff_text = "#1c4474",
    fg = "#A0A8CD",
    red = "#EE5396",
    orange = "#F6955B",
    yellow = "#F9F06B",
    green = "#25be6a",
    blue = "#33B1FF",
    cyan = "#3DDBD9",
    purple = "#BE95FF",
    grey = "#4A5057",
    none = "NONE",
}
local function gamma_correction(colors)
    local colors_corrected = {}
    for k, v in pairs(colors) do
        colors_corrected[k] = color_gamma(v, gamma)
    end
    return colors_corrected
end

return gamma_correction(colors)
