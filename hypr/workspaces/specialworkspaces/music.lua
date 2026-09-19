-- Music --
--toggle worskpace
hl.bind(Mod .. " + " .. music_bind, hl.dsp.workspace.toggle_special("music"))
--Move to workspace
hl.bind(Mod .. " + " .. sendto_music_bind, hl.dsp.window.move({ workspace = "special:music", follow = false }))

-- If created empty, open (app)
hl.workspace_rule({workspace = "special:music",on_created_empty = music})
--Bind window to workspace
hl.window_rule({match = { title = " Spotify - Web Player: Music for everyone - qutebrowser" },workspace = "music"})
-- Decoration rules
hl.workspace_rule({workspace = "special:music",gaps_out = 100})

