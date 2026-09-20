NOTIF_TAG="capslock_status"
# Initialize to an impossible state so it doesn't trigger the "off" block on launch
LAST_STATE="INIT"

while true; do
    # Check the brightness files for any active capslock LEDs
    # If any file contains a number greater than 0, Caps Lock is ON
    if cat /sys/class/leds/*::capslock/brightness 2>/dev/null | grep -q '[1-9]'; then
        CURRENT_STATE="on"
    else
        CURRENT_STATE="off"
    fi

    # Only execute when the state physically changes
    if [ "$CURRENT_STATE" != "$LAST_STATE" ]; then
        if [ "$CURRENT_STATE" = "on" ]; then
            # Send the sticky notification
            notify-send -t 0 -u critical --hint=string:x-dunst-stack-tag:\$NOTIF_TAG "Caps Lock ON"
        else
            # Only send the clear signal if we are transitioning from an actual "on" state
            if [ "$LAST_STATE" = "on" ]; then
                notify-send -t 1 --hint=string:x-dunst-stack-tag:\$NOTIF_TAG " "
            fi
        fi
        LAST_STATE="$CURRENT_STATE"
    fi
    
    sleep 0.1
done
