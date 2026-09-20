# 1. Safely create the target directory for today's date
TARGET_DIR="$HOME/Pictures/screenshots/$(date +'%Y-%m-%d')"
mkdir -p "$TARGET_DIR"

# 2. Run the screenshot pipeline
grim -g "$(slurp -d)" - | tee "$TARGET_DIR/$(date +'%H-%M-%S_select_area.png')" | wl-copy

# 3. Capture the exit status of the pipeline immediately
STATUS=$?

# 4. Check the status (0 = success, anything else = failure)
if [ $STATUS -eq 0 ]; then
    notify-send -t 5000 "Screenshot Captured" "Saved and copied to clipboard."
else
    notify-send -t 5000 "Screenshot Failed" "Something went wrong." -u critical
fi
