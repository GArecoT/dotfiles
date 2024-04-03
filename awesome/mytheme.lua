---------------------------
-- Default awesome theme --
---------------------------

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local gfs = require("gears.filesystem")
local themes_path = "/home/gabriel/.config/awesome/themes/catppuccin"

local theme = {}

theme.font          = "Inconsolata 9"
theme.wallpaper = "/home/gabriel/Imagens/10-12.jpg"
theme.fg_normal                                 = "#cdd6f4"
theme.fg_focus                                  = "#cba6f7"
theme.fg_urgent                                 = "#cdd6f4"
theme.bg_normal                                 = "#1E1E2E"
theme.bg_focus                                  = "#1E1E2E"
theme.bg_urgent                                 = "#f38ba8"
theme.border_width                              = dpi(1)
theme.border_normal                             = "#1E1E2E"
theme.border_focus                              = "#cba6f7"
theme.border_marked                             = "#cba6f7"
theme.tasklist_bg_focus                         = "#1E1E2E"
theme.titlebar_bg_focus                         = theme.bg_focus
theme.titlebar_bg_normal                        = theme.bg_normal
theme.titlebar_fg_focus                         = theme.fg_focus
theme.menu_height                               = dpi(16)
theme.menu_width                                = dpi(140)

local taglist_square_size = dpi(4)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
    taglist_square_size, theme.fg_normal
)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(
    taglist_square_size, theme.fg_normal
)

theme.menu_submenu_icon                         = themes_path .. "/icons/submenu.png"
theme.taglist_squares_sel                       = themes_path .. "/icons/square_sel.png"
theme.taglist_squares_unsel                     = themes_path .. "/icons/square_unsel.png"
theme.layout_tile                               = themes_path .. "/icons/tile.png"
theme.layout_tileleft                           = themes_path .. "/icons/tileleft.png"
theme.layout_tilebottom                         = themes_path .. "/icons/tilebottom.png"
theme.layout_tiletop                            = themes_path .. "/icons/tiletop.png"
theme.layout_fairv                              = themes_path .. "/icons/fairv.png"
theme.layout_fairh                              = themes_path .. "/icons/fairh.png"
theme.layout_spiral                             = themes_path .. "/icons/spiral.png"
theme.layout_dwindle                            = themes_path .. "/icons/dwindle.png"
theme.layout_max                                = themes_path .. "/icons/max.png"
theme.layout_fullscreen                         = themes_path .. "/icons/fullscreen.png"
theme.layout_magnifier                          = themes_path .. "/icons/magnifier.png"
theme.layout_floating                           = themes_path .. "/icons/floating.png"
theme.tasklist_plain_task_name                  = true
theme.tasklist_disable_icon                     = true
theme.useless_gap                               = dpi(0)
theme.titlebar_close_button_focus               = themes_path .. "/icons/titlebar/close_focus.png"
theme.titlebar_close_button_normal              = themes_path .. "/icons/titlebar/close_normal.png"
theme.titlebar_ontop_button_focus_active        = themes_path .. "/icons/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active       = themes_path .. "/icons/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive      = themes_path .. "/icons/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive     = themes_path .. "/icons/titlebar/ontop_normal_inactive.png"
theme.titlebar_sticky_button_focus_active       = themes_path .. "/icons/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active      = themes_path .. "/icons/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive     = themes_path .. "/icons/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive    = themes_path .. "/icons/titlebar/sticky_normal_inactive.png"
theme.titlebar_floating_button_focus_active     = themes_path .. "/icons/titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active    = themes_path .. "/icons/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive   = themes_path .. "/icons/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive  = themes_path .. "/icons/titlebar/floating_normal_inactive.png"
theme.titlebar_maximized_button_focus_active    = themes_path .. "/icons/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active   = themes_path .. "/icons/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = themes_path .. "/icons/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = themes_path .. "/icons/titlebar/maximized_normal_inactive.png"

-- Generate Awesome icon:
theme.awesome_icon = theme_assets.awesome_icon(
    theme.menu_height, theme.bg_focus, theme.fg_focus
)

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
