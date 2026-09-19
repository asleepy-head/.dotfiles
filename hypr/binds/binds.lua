



---###########---
--## UTILITY ##--
---###########---
--jump utility

-----------
-- TOOLS --
-----------
--utility tools

--close window
local closeWindowBind = hl.bind(Mod .. " + " .. closewindow_bind, hl.dsp.window.close())

--screenshot
hl.bind(Mod .. " + " .. screenshot_bind, hl.dsp.exec_cmd(screenshot))
hl.bind(Mod .. " + " .. screenselect_bind, hl.dsp.exec_cmd(screenselect))

--emoji picker 
--hl.bind(Mod .. " + E", hl.dsp.exec_cmd("rofi -modi emoji -show emoji"))

--clipboard

--launcher 
--menu = "rofi -show drun -drun-display-format {name} -theme ~/.config/rofi/alauncher.rasi"
hl.bind(Mod .. " + " .. launcher_bind, hl.dsp.exec_cmd(launcher))



--toggle float
hl.bind(Mod .. " + " .. togglefloat_bind, hl.dsp.window.float({ action = "toggle" }))

-- Power/State --
hl.bind(Mod .. " + " .. logout_bind, hl.dsp.exec_cmd(logout))
hl.bind(Mod .. " + " .. reboot_bind, hl.dsp.exec_cmd(reboot))
hl.bind(Mod .. " + " .. poweroff_bind, hl.dsp.exec_cmd(poweroff))

-- Volume --
hl.bind(Mod .. " + " .. volumeup_mouse_bind, hl.dsp.exec_cmd(volumeup))
hl.bind(Mod .. " + " .. volumedown_mouse_bind, hl.dsp.exec_cmd(volumedown))

hl.bind(Mod .. " + " .. volumeup_keyboard_bind, hl.dsp.exec_cmd(volumeup), {repeating = true})
hl.bind(Mod .. " + " .. volumedown_keyboard_bind, hl.dsp.exec_cmd(volumedown), {repeating = true})

-- MULTIMEDIA KEYS --
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = false})
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = false})
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),
{ locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),
{ locked = true, repeating = true })
-- Requires playerctl
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })

-- Move/resize window, Mod & drag LMB/RMB 
hl.bind(Mod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(Mod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

