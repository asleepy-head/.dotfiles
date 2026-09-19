-----------------
 -- AUTOSTART --
-----------------

hl.on("hyprland.start", function () 
    
    --hl.exec_cmd("/home/$USER/.local/bin/mystartupscript")

    hl.exec_cmd("systemctl --user start hyprland-session.target")
    hl.exec_cmd("/home/$USER/.local/bin/capslocknotify.sh")
        
    --focus monitor
    hl.dsp.window.move({ monitor = "DP-2" })
    
    hl.exec_cmd("waybar")
    hl.exec_cmd("awww-daemon")
    --hl.exec_cmd("systemctl --user start hyprpolkitagent")
    hl.exec_cmd("systemctl --user enable --now opentabletdriver.service")
    --hl.exec_cmd("wl-paste --watch clipvault store")
    
end)

hl.on("hyprland.shutdown", function()
    os.execute("systemctl --user stop hyprland-session.target && sleep 0.1")

    -- uses a blocking exec function and sleeps a bit to give things time to close
    -- you might also want to kill troublesome/crashing non-systemd background services here:
    -- os.execute("pkill wallpaperthing; systemctl --user stop hyprland-session.target && sleep 0.1")
end)

