#!/bin/bash

device=$( bluetoothctl devices | awk '{$1=""; print $0}' | rofi -dmenu -p "󰂯 Connect" )
device_mac=$( echo "$device" | awk '{print $1}' )
device_name=$( echo "$device" | awk '{$1=""; print $0}' )
echo -e "power on\nscan on\nconnect $device_mac" | bluetoothctl

if [[ $? -eq 0 ]]; then
	notify-send "Connected to $device_name"
else
	notify-send "Failed to connect with $device_name"
fi
