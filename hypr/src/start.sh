# hyprpm reload -n

wl-paste --type text --watch cliphist store &
wl-paste --type image --watch cliphist store &

swww-daemon &
sh ~/.config/hypr/src/set-wallpaper.sh ~/Images/virus.png

brightnessctl set 25%
