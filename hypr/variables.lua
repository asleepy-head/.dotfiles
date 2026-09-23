-- VARIABLES --
---------------

Mod 		= "ALT"
home 		= "home/$USER/pillow/mnt"
-- Apps --
terminal	= "kitty"
browser 	= "qutebrowser" 
notes 		= terminal .. " nvim ~/mnt/Notes/"
audiosettings 	= "kitty -c ~/.config/.dotfiles/kitty/kitty2.conf --hold pulsemixer"
music 		= "qutebrowser -R --target window open.spotify.com"
messenger 	= "qutebrowser -B ~/.config/qutebrowser/discord -R --target window discord.com/channels/@me"
email 		= "qutebrowser -R --target window mail.proton.me/u/0"
launcher 	= "rofi -show drun -drun-display-format {name} -theme ~/.config/.dotfiles/rofi/alauncher.rasi"
gamelauncher 	= "steam"

-- Utility -- 
screenshot = "/home/$USER/.config/.dotfiles/scripts/screenshot.sh"
screenselect = "/home/$USER/.config/.dotfiles/scripts/screenselect.sh"
logout = "loginctl terminate-user $USER"
poweroff = "hyprshutdown -t 'Goodbye...' --post-cmd 'shutdown -P 0'"
reboot = "hyprshutdown -t 'Restarting...' --post-cmd 'reboot'"
volumeup = "wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 10%+"
volumedown = "wpctl set-volume @DEFAULT_AUDIO_SINK@ 10%-"

-- Scripts --
calculate_move_focus_prev = "/home/$USER/.config/.dotfiles/scripts/calculate_move_focus.sh prev"
calculate_move_focus_next = "/home/$USER/.config/.dotfiles/scripts/calculate_move_focus.sh next"

-- Keybinds --
-- Mod + (your_bind)
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

move_window_focus_up 		= "TAB + K"
move_window_focus_down		= "TAB + J"
move_window_focus_left 		= "TAB + H"
move_window_focus_right 	= "TAB + L"



-- Environment --
hl.env("XCURSOR_SIZE", "32")
--hl.env("XCURSOR_THEME", "pillows-cursor")
--hl.env("HYPRCURSOR_THEME", "blackv2")
--hl.env("HYPRCURSOR_SIZE", "blackv2")

hl.env("QT_SCALE_FACTOR","1.0")
-- 200% font scaling
hl.env("QT_FONT_DPI","192")

mon1 = "DP-1"
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

