---------------------------
-- Default awesome theme --
---------------------------

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local gfs = require("gears.filesystem")
local themes_path = gfs.get_themes_dir()

local theme = {}

theme.font = "monospace 11"

local theme = {}

theme.bg_normal = "#000000" -- Darker background
theme.bg_focus = "#262626" -- Slightly brighter for focus
theme.bg_urgent = "#fa4d56" -- Bright red for urgency
theme.bg_minimize = "#181818" -- Dimmed background for minimized
theme.bg_systray = theme.bg_normal -- Same as normal background

theme.fg_normal = "#b5bdc5" -- Lighter text color
theme.fg_focus = "#a665d0" -- Soft purple for focused text
theme.fg_urgent = "#fa4d56" -- Match urgent background color for contrast
theme.fg_minimize = "#474747" -- Muted color for minimized text

theme.useless_gap = dpi(0)
theme.border_width = dpi(0)
theme.border_normal = "#000000" -- Dark border
theme.border_focus = "#5080ff" -- Brighter border for focus
theme.border_marked = "#fa4d56" -- Marked border matches urgent

theme.tasklist_disable_icon = true

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- taglist_[]_[focus|urgent|occupied|empty|volatile]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- prompt_[fg|bg|fg_cursor|bg_cursor|font]
-- hotkeys_[bg|fg|border_width|border_color|shape|opacity|modifiers_fg|label_bg|label_fg|group_margin|font|description_font]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

-- Generate taglist squares:
local taglist_square_size = dpi(4)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(taglist_square_size, theme.fg_normal)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(taglist_square_size, theme.fg_normal)

-- Variables set for theming notifications:
-- notification_font
-- notification_[bg|fg]
-- notification_[width|height|margin]
-- notification_[border_color|border_width|shape|opacity]

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = themes_path .. "default/submenu.png"
theme.menu_height = dpi(15)
theme.menu_width = dpi(100)

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

theme.wallpaper = "~/Documents/wallpapers/warrior-black.png"

-- Generate Awesome icon:
theme.awesome_icon = theme_assets.awesome_icon(theme.menu_height, theme.bg_focus, theme.fg_focus)

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
