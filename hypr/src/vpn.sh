TRUE="100"
TRUE_ICON=" "
FALSE="0"
FALSE_ICON=" "

function run_anyway() {  # функция для выполнения команды с doas
	while true; do
		eval "$1"  # бесконечно пытаемся выполнить команду

		if [ "$?" -eq "0" ]; then  # если команда выполнилась (код возврата 0), заканчиваем бесконечный цикл
			break
		fi
	done
}

function turn_on {
	echo "$TRUE" > ~/.config/hypr/src/vpn-working
	echo "$TRUE_ICON" > ~/.config/hypr/src/vpn-status
	doas wg-quick up wg0
	notify-send "VPN is working"
}

function turn_off {
	echo "$FALSE" > ~/.config/hypr/src/vpn-working
	echo "$FALSE_ICON" > ~/.config/hypr/src/vpn-status
	doas wg-quick down wg0
	notify-send "VPN stopped"
}

working=$(<~/.config/hypr/src/vpn-working)
echo "$working"

run_anyway "doas echo \"doas: Authentication managed\""  # на этом моменте если неправильно ввести пароль, если бы не было run_anyway, впн бы не включился
if [ "$working" -eq "$TRUE" ]; then
	turn_off
else
	turn_on
fi

# sh ~/.config/hypr/src/get-vpn-status.sh  # генерируем статус для waybar'а
