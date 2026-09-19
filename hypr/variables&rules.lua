-- VARIABLES --
---------------

Mod 		= "SUPER"

userdir 	= "/home/pillow/"

-- Apps --
terminal	= "kitty"
browser 	= "qutebrowser" 
notes 		= terminal .. " nvim ~/Notes/"
audiosettings 	= "kitty -c ~/.config/kitty/kitty2.conf --hold pulsemixer"
music 		= "qutebrowser -R --target window open.spotify.com"
messenger 	= "qutebrowser -B ~/.config/qutebrowser/discorddir  -R --target window discord.com/channels/@me"
email 		= "qutebrowser -R --target window mail.proton.me/u/0"
launcher 	= "rofi -show drun -drun-display-format {name} -theme ~/.config/rofi/alauncher.rasi"
gamelauncher 	= "steam"

-- Utility -- 
screenshot = userdir .. ".local/bin/screenshot.sh"
screenselect = userdir .. ".local/bin/screenselect.sh"
logout = "loginctl terminate-user $USER"
poweroff = "hyprshutdown -t 'Goodbye...' --post-cmd 'shutdown -P 0'"
reboot = "hyprshutdown -t 'Restarting...' --post-cmd 'reboot'"
volumeup = "wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 10%+"
volumedown = "wpctl set-volume @DEFAULT_AUDIO_SINK@ 10%-"

-- Keybinds --
--Mod + (your_bind)
closewindow_bind	= "Q"
screenselect_bind 	= "W"
screenshot_bind 	= "SHIFT + W"
launcher_bind 		= "R"
togglefloat_bind 	= "T"

audiosettings_bind		= "A"
sendto_audiosettings_bind 	= "SHIFT + A"

music_bind 			= "S"
sendto_music_bind 		= "SHIFT + S"

messenger_bind	 		= "D"
sendto_messenger_bind 		= "SHIFT + D"

browser_bind 			= "F"
sendto_browser_bind 		= "SHIFT + F"

gamelauncher_bind 		= "G"
sendto_gamelauncher_bind 	= "SHIFT + G"

terminalworkspace_bind		= "Z"
sendto_terminalworkspace_bind	= "SHIFT + Z"

terminalworkspace2_bind		= "X"
sendto_terminalworkspace2_bind	= "SHIFT + X"

terminalworkspace3_bind		= "C"
sendto_terminalworkspace3_bind	= "SHIFT + C"

scratchpad3_bind 		= "C"
sendto_scratchpad3_bind 	= "SHIFT + C"

notes_bind			= "V"
sendto_notes_bind		= "SHIFT + V"

terminal_bind 			= "RETURN"
sendto_terminal_bind 		= "SHIFT + RETURN"

email_bind 			= "BACKSPACE"
sendto_email_bind 		= "SHIFT + BACKSPACE"

logout_bind 			= "ESCAPE"
reboot_bind			= "HOME"
poweroff_bind			= "DELETE"

volumeup_mouse_bind 		= "SHIFT + mouse_down"
volumedown_mouse_bind 		= "SHIFT + mouse_up"
volumeup_keyboard_bind		= "EQUAL"
volumedown_keyboard_bind 	= "MINUS"



-- Environment --
hl.env("XCURSOR_SIZE", "32")
--hl.env("XCURSOR_THEME", "pillows-cursor")
--hl.env("HYPRCURSOR_THEME", "blackv2")
--hl.env("HYPRCURSOR_SIZE", "blackv2")

hl.env("QT_SCALE_FACTOR","1.0")
-- 200% font scaling
hl.env("QT_FONT_DPI","192")

-- DEVICES --
-------------
-- optional devices configurations

-- KEYBOARD --
hl.config({input = {kb_layout  = "us", kb_variant = "", kb_model = "", kb_options = "", kb_rules = "", follow_mouse = 1, sensitivity = 0, touchpad = {natural_scroll = false} }})
-- -1.0 - 1.0, 0 (sensitivity) means no modification.

-- TRACK PAD --
hl.gesture({fingers = 3, direction = "horizontal", action = "workspace"})

-- WORKSPACES --
----------------
-- workspaces and monitors


mon1 = "eDP-1"
mon2 = "DP-2"
mon3 = "DP-3"
mon1_mode = "1920x1080"
mon2_mode = "1920x1080"
mon3_mode = "1920x1080"

mon1_position = "0x0"
mon2_position = "1920x0"
mon3_position = "3840x0"

mon1_scale = "1"
mon2_scale = "1"
mon3_scale = "1"
mon1_persistent = true
mon2_persistent = true
mon3_persistent = true

--workspaces 1-3
hl.monitor({output = mon1, mode = mon1_mode, position = mon1_position, scale = mon1_scale})

hl.workspace_rule({workspace = 1,monitor = mon1,persistent = mon1_persistent})
hl.workspace_rule({workspace = 2,monitor = mon1,persistent = mon1_persistent, default = true})
hl.workspace_rule({workspace = 3,monitor = mon1,persistent = mon1_persistent})

--workspaces 4-6
hl.monitor({output = mon2,mode = mon2_mode,position = mon2_position,scale = mon2_scale})
hl.workspace_rule({workspace = 4,monitor = mon2,persistent = mon2_persistent})
hl.workspace_rule({workspace = 5,monitor = mon2,persistent = mon2_persistent, default = true})
hl.workspace_rule({workspace = 6,monitor = mon2,persistent = mon2_persistent})

--workspaces 7-9
hl.monitor({output = mon3,mode = mon1_mode,position = mon3_position,scale = mon3_scale})
hl.workspace_rule({workspace = 7,monitor = mon3,persistent = mon3_persistent})
hl.workspace_rule({workspace = 8,monitor = mon3,persistent = mon3_persistent, default = true})
hl.workspace_rule({workspace = 9,monitor = mon3,persistent = mon3_persistent})

-- NO WORSPACE --
-----------------

-- Terminal --
--open
hl.bind(Mod .. " + " .. terminal_bind, hl.dsp.exec_cmd(terminal))

--hl.window_rule({
 -- match = {workspace = "r[1-9]"},

--})

-- Browser --
--toggle worskpace
hl.bind(Mod .. " + " .. browser_bind, hl.dsp.exec_cmd(browser))

-- MISC --
----------

-- Fix some dragging issues with XWayland
hl.window_rule({
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

-- Ignore maximize requests from all apps. You'll probably like this.
local suppressMaximizeRule = hl.window_rule({
    name  = "suppress-maximize-events",
    match = { class = ".*" },

    suppress_event = "maximize",
})
-- suppressMaximizeRule:set_enabled(false)

hl.config({
    binds = {
        scroll_event_delay = 85, -- Fixes scroll freezing/passing to apps
    },
})


hl.window_rule({
  match = {
    focus = true
  },
--  gaps_out = 0
})
