function turn_on {
	doas wg-quick up wg0
	echo "1" > ~/.config/hypr/src/vpn-working
	echo "turned on"
}

function turn_off {
	doas wg-quick down wg0
	echo "0" > ~/.config/hypr/src/vpn-working
	echo "turned off"
}

working=$(<~/.config/hypr/src/vpn-working)
echo "$working"

if [ "$working" = "1" ]; then
	turn_off
else
	turn_on
fi

sh ~/.config/hypr/src/get-vpn-status.sh
