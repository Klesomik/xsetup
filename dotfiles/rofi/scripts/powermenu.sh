#!/bin/bash

rofi_command="rofi -theme themes/powermenu.rasi"

### Options ###
power_off=""
reboot=""
lock=""
suspend="鈴"
log_out=""
# Variable passed to rofi
options="$power_off\n$reboot\n$lock\n$suspend\n$log_out"

cmd_promptmenu="/home/klesomik/.config/rofi/scripts/promptmenu.sh"

chosen="$(echo -e "$options" | $rofi_command -dmenu -selected-row 2)"
case $chosen in
    $power_off)
        $cmd_promptmenu --yes-command "systemctl poweroff" --query "Shutdown?"
        ;;
    $reboot)
        $cmd_promptmenu --yes-command "systemctl reboot" --query "Reboot?"
        ;;
    $lock)
        betterlockscreen -l
        ;;
    $suspend)
        mpc -q pause
        amixer set Master mute
        systemctl suspend
        ;;
    $log_out)
        i3-msg exit
        ;;
esac
