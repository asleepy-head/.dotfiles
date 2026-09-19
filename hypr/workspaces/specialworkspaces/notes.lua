
-- Notes --
--toggle worskpace
hl.bind(Mod .. " + " .. notes_bind, hl.dsp.workspace.toggle_special("notes"))
--Move to workspace
hl.bind(Mod .. " + " .. sendto_notes_bind, hl.dsp.window.move({ workspace = "special:notes", follow = false }))

-- If created empty, open (app)
hl.workspace_rule({workspace = "special:notes",on_created_empty = notes})
-- Decoration rules
hl.workspace_rule({workspace = "special:notes",gaps_out = 100})
