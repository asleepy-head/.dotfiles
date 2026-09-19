---##########---
--## LAPTOP ##--
---##########---

Mod = "SUPER"
Mod2 = "ALT" 

------------------
---- MONITORS ----
------------------

mon1 = "eDP-1"

--focus monitor, mod + 1-3
hl.bind(Mod .. " + 1",   hl.dsp.focus({ workspace = 1 }))
hl.bind(Mod .. " + 2",   hl.dsp.focus({ workspace = 2 }))
hl.bind(Mod .. " + 3",   hl.dsp.focus({ workspace = 3 }))

----------------
-- WORKSPACES --
----------------

--workspaces 1-3
hl.workspace_rule({workspace = 1,monitor = mon1,persistent = true})
hl.workspace_rule({workspace = 2,monitor = mon1,persistent = true,default = true})
hl.workspace_rule({workspace = 3,monitor = mon1,persistent = true})


