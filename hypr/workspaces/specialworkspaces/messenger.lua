
-- Messenger --
--toggle worskpace
hl.bind(Mod .. " + " .. messenger_bind, hl.dsp.workspace.toggle_special("messenger"))
--Move to workspace
hl.bind(Mod .. " + " .. sendto_messenger_bind, hl.dsp.window.move({ workspace = "special:messenger", follow = false }))

-- If created empty, open (app)
hl.workspace_rule({workspace = "special:messenger",on_created_empty = messenger})
--Bind to workspace
hl.window_rule({match = { initial_title = "http://discord.com/channels/@me - qutebrowser" },workspace = "special:messenger"})
-- Decoration rules
hl.workspace_rule({workspace = "special:messenger",gaps_out = 100})
