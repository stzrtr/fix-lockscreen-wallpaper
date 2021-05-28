#!/bin/bash
clear
echo "- Creating directory 'Desktop Pictures' in /Library/Caches"
mkdir "/Library/Caches/Desktop Pictures"
echo "- Launching System Preferences -> Users & Groups"
echo "1. To get your UUID, click the padlock icon and type your password."
echo "2. Then right click to reveal 'Advanced Options...'"
echo "3. Find your UUID and copy (⌘C), then paste (⌘V) it here."
open -b com.apple.systempreferences /System/Library/PreferencePanes/Accounts.prefPane
read -p "- Please enter your UUID: " uuidvar
mkdir "/Library/Caches/Desktop Pictures/$uuidvar"
clear
echo "- Now reselect your wallpaper, you can close this window."
echo "- Created by midhrt (my carrd link: https://kznny.carrd.co)"
killall "System Preferences"
open -b com.apple.systempreferences /System/Library/PreferencePanes/DesktopScreenEffectsPref.prefPane
exit 0