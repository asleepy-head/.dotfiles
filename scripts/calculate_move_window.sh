# Direction: "next" or "prev"
DIR=$1

# Get the active workspace ID and the monitor name
ACTIVE_WS=$(hyprctl activeworkspace -j | jq '.id')
MONITOR=$(hyprctl activeworkspace -j | jq -r '.monitor')

# Set workspace boundaries based on the focused monitor
case "$MONITOR" in
    "DP-1") START=1; END=3 ;;
    "DP-2") START=4; END=6 ;;
    "DP-3") START=7; END=9 ;;
    *) exit 1 ;; # Fallback for undefined monitors
esac

# Calculate the next workspace
if [ "$DIR" = "next" ]; then
    NEXT_WS=$(( ACTIVE_WS + 1 ))
    if [ $NEXT_WS -gt $END ]; then NEXT_WS=$START; fi
elif [ "$DIR" = "prev" ]; then
    NEXT_WS=$(( ACTIVE_WS - 1 ))
    if [ $NEXT_WS -lt $START ]; then NEXT_WS=$END; fi
fi

# Dispatch the workspace switch
hyprctl dispatch "hl.dsp.window.move({ workspace = $NEXT_WS, follow = false})"
