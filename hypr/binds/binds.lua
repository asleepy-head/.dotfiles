



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

-- Move/resize window, Mod & drag LMB/RMB 
hl.bind(Mod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(Mod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })


-- Terminal --
--open
hl.bind(Mod .. " + " .. terminal_bind, hl.dsp.exec_cmd(terminal))

--hl.window_rule({
 -- match = {workspace = "r[1-9]"},

--})

-- Browser --
--toggle worskpace
hl.bind(Mod .. " + " .. browser_bind, hl.dsp.exec_cmd(browser))
