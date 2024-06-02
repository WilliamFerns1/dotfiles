#!/bin/bash

# Get the selected item from Greenclip's history
selected_item=$(greenclip print | rofi -dmenu -p "Clipboard" -width 1000)

# Paste the selected item
echo -n "$selected_item" | xclip -selection clipboard

