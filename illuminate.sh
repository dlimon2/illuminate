#!/bin/bash
# I L L U M I N A T E
# Screen brightness utility for Linx Desktop using xrandr
# Idea and script by Daniel Limon (github.com/dlimon2)
echo "░░▒▒▓▓██ I L L U M I N A T E"
echo "Screen brightness utility for Linux Desktop"
echo -e "Script by Daniel Limon (github.com/dlimon2)\n"

# Get connected monitors
show_monitors() {
    xrandr | awk '/ connected/ {print $1}'
}

# Set brightness
set_brightness() {
    xrandr --output "$1" --brightness "$brightness"
}

# Check if options passed on script run
if [ "$#" -eq 0 ]; then
    echo "Usage: $0 <brightness>"
    echo "<brightness> value between 0.0 and 1.0"
    exit 1
fi

# Get brightness parameter
brightness=$1

# Change brightness for every monitor connected
for monitor in $(show_monitors); do
    set_brightness "$monitor"
    echo ">>> Screen brightness for $monitor changed to $brightness"
done
