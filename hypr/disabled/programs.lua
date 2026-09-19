
---############---
--## PROGRAMS ##--
---############---
--jump programs

-----------
-- NOTES --
-----------
--workspace notes

notes = "kitty --hold nvim ~/Notes/"

--Toggle workspace
hl.bind(Mod .. " + V",         hl.dsp.workspace.toggle_special("notes"))
--Move to workspace
hl.bind(Mod .. " + SHIFT + A", hl.dsp.window.move({ workspace = "special:notes", follow = false }))
--If empty, open 
hl.workspace_rule({workspace = "special:notes",on_created_empty = notes,gaps_out ={top=100,right=100,bottom=100,left=100}})

--------------------
-- AUDIO SETTINGS --
--------------------
--workspace audio settings

hl.workspace_rule({ workspace = "2",monitor = "DP-1" })

audiomixer = "kitty --hold pulsemixer"

--Toggle workspace
hl.bind(Mod .. " + A",         hl.dsp.focus({ workspace = "4" }))
--Move to workspace
hl.bind(Mod .. " + SHIFT + A", hl.dsp.window.move({ workspace = "name:audiosettings", follow = false }))
--If empty, open 
hl.workspace_rule({workspace = "name:audiosettings",on_created_empty = audiomixer,gaps_out ={top=100,right=100,bottom=100,left=100}})
--Bind to workspace
hl.window_rule({match = { title = "pulsemixer" },workspace = "name:audiosettings"})

-----------
-- MUSIC --
-----------
--workspace music

music = "qutebrowser -R --target window open.spotify.com"

--Toggle workspace
--hl.bind(Mod .. " + S",         hl.dsp.workspace.toggle("music"))
--Move to workspace
hl.bind(Mod .. " + SHIFT + S", hl.dsp.window.move({ workspace = "music", follow = false }))
--If empty, open 
hl.workspace_rule({workspace = "music",on_created_empty = music})
--Bind to workspace
hl.window_rule({match = { title = " Spotify - Web Player: Music for everyone - qutebrowser" },workspace = "music"})

---------------
-- MESSENGER --
---------------
--workspace messenger

messenger = "qutebrowser -B ~/.config/qutebrowser/discorddir  -R --target window discord.com/channels/@me"

--Toggle workspace
hl.bind(Mod .. " + D",         hl.dsp.workspace.toggle_special("messenger"))
--Move to workspace
hl.bind(Mod .. " + SHIFT + D", hl.dsp.window.move({ workspace = "special:messenger", follow = false }))
--If empty, open 
hl.workspace_rule({workspace = "special:messenger",on_created_empty = messenger})
--Bind to workspace
hl.window_rule({match = { initial_title = "http://discord.com/channels/@me - qutebrowser" },workspace = "special:messenger"})

-------------
-- BROWSER --
-------------
--workspace browser

browser	= "qutebrowser"

hl.bind(Mod .. " + F", hl.dsp.exec_cmd(browser))

--Toggle workspace
--Move to workspace
hl.bind(Mod .. " + SHIFT + F", hl.dsp.window.move({ workspace = "browser", follow = false }))
--If empty, open 
--Bind to workspace
hl.window_rule({match = { title = "DuckDuckGo Private Search Engine - qutebrowser"},workspace = "browser"})

-----------
-- EMAIL --
-----------
--workspace email

email = "qutebrowser -R --target window mail.proton.me/u/0"

--Toggle workspace
hl.bind(Mod .. " + BACKSPACE",         hl.dsp.workspace.toggle_special("email"))
--Move to workspace
hl.bind(Mod .. " + SHIFT + BACKSPACE", hl.dsp.window.move({ workspace = "special:email", follow = false }))
--If empty, open 
hl.workspace_rule({workspace = "special:email",on_created_empty = email,gaps_out = 100})
--Bind to workspace
hl.window_rule({match = { title = "Proton Mail: Sign-in - qutebrowser"},workspace = "special:email"})

-------------------
-- GAME LAUNCHER --
-------------------
--workspace game launcher


gamelauncher 	= "steam"

--Toggle workspace
hl.bind(Mod .. " + G",         hl.dsp.workspace.toggle_special("gamelauncher"))
--Move to workspace
hl.bind(Mod .. " + SHIFT + G", hl.dsp.window.move({ workspace = "special:gamelauncher", follow = false }))
--If empty, open 
hl.workspace_rule({workspace = "special:gamelauncher",on_created_empty = gamelauncher,gaps_out = 100})
--Bind to workspace
hl.window_rule({match = { class = gamelauncher},workspace = "special:gamelauncher",fullscreen_state = 0 })


-----------------
-- SCRATCHPAD  --
-----------------
--workspace scratchpad

--Toggle workspace
hl.bind(Mod .. " + Z",         hl.dsp.workspace.toggle_special("scratchpad"))
--Move to workspace
hl.bind(Mod .. " + SHIFT + Z", hl.dsp.window.move({ workspace = "special:scratchpad", follow = false }))

------------------
-- SCRATCHPAD 2 --
------------------
--workspace scratchpad 2

--Toggle workspace 
hl.bind(Mod .. " + X",         hl.dsp.workspace.toggle_special("scratchpad2"))
--Move to workspace
hl.bind(Mod .. " + SHIFT + X", hl.dsp.window.move({ workspace = "special:scratchpad2", follow = false }))

------------------
-- SCRATCHPAD 3 --
------------------
--workspace scratchpad 3

--Toggle workspace
hl.bind(Mod .. " + C",         hl.dsp.workspace.toggle_special("scratchpad3"))
--Move to workspace
hl.bind(Mod .. " + SHIFT + C", hl.dsp.window.move({ workspace = "special:scratchpad3", follow = false }))

--------------
-- TERMINAL --
--------------
--workspace terminal

--terminal, no workspace
terminal = "kitty"

--no workspace
hl.bind(Mod2 .. " + RETURN", hl.dsp.exec_cmd(terminal))

--Toggle workspace
hl.bind(Mod .. " + RETURN",         hl.dsp.workspace.toggle_special("terminal")) --Move to workspace
hl.bind(Mod .. " + SHIFT + RETURN", hl.dsp.window.move({ workspace = "special:terminal", follow = false }))
--If empty, open 
hl.workspace_rule({workspace = "special:terminal",on_created_empty = terminal})
