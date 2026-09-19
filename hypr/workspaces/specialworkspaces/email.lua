-- Email --
--Toggle workspace
hl.bind(Mod .. " + " .. email_bind, hl.dsp.workspace.toggle_special("email"))
--Move to workspace
hl.bind(Mod .. " + " .. sendto_email_bind, hl.dsp.window.move({ workspace = "special:email", follow = false }))
-- If created empty, open (app)
hl.workspace_rule({workspace = "special:email",on_created_empty = email})
--Bind to workspace
hl.window_rule({match = { title = "Proton Mail: Sign-in - qutebrowser"},workspace = "special:email"})
-- Decoration rules
hl.workspace_rule({workspace = "special:email",gaps_out = 100})

