is_on=$(<~/.config/hypr/src/vpn-working)

if [ "$is_on" = "1" ]; then
	echo " on" > ~/.config/hypr/src/vpn-status
else
	echo " off" > ~/.config/hypr/src/vpn-status
fi
