#!/bin/sh
# Script to convert just typed string to another layout (Eng <=> Rus)
# No Wayland support, works in X11 only, but without any daemons needed
# 2023.07.14

# Save current clipboard
CLIPBOARD_2_RESTORE=$(xsel -ob)

# Clean keys you use to call script (in my case it's ctrl-F12)
xdotool keyup --delay 20 Control_L+F12

# Clean modifiers we are going to use
xdotool keyup --delay 20 Shift_L+Home

# Select text up to current string beginning (if it doesn't work in your DE try to increase --delay)
xdotool key --delay 20 Shift_L+Home

# Send selection to sed, convert all to target layout, then send result to clipboard
xsel -o | sed "y/abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ[]{};':\",.\/<>?@#\$^&\`~фисвуапршолдьтщзйкыегмцчняФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯхъХЪжэЖЭбюБЮ№ёЁ/фисвуапршолдьтщзйкыегмцчняФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯхъХЪжэЖЭбю.БЮ,\"№;:?ёЁabcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ[]{};':\",.<>#\`~/" | xsel -bi

# Clean modifiers we are going to use
xdotool keyup Shift_L+Insert

# Paste clipboard into selection
xdotool key --delay 20 Shift_L+Insert

# Wipe clipboard
xsel --clear

# Restore clipboard
echo -n $CLIPBOARD_2_RESTORE | xsel -bi

# Switch keyboard layout
xdotool key Mode_switch

# Finally clean all modifiers used
xdotool keyup Shift_L+Control_L+Shift_L+Insert+Home

exit 0