function run_anyway() {  # функция для выполнения команды с doas
	while true; do
		eval "$1"  # бесконечно пытаемся выполнить команду

		if [ $? -eq 0 ]; then  # если команда выполнилась (код возврата 0), заканчиваем бесконечный цикл
			break
		fi
	done
}

function turn_on {
	run_anyway "doas wg-quick up wg0"  # на этом моменте если неправильно ввести пароль, если бы не было run_anyway, впн бы не включился
	echo "1" > ~/.config/hypr/src/vpn-working
	notify-send "VPN is working"
}

function turn_off {
	run_anyway "doas wg-quick down wg0"
	echo "0" > ~/.config/hypr/src/vpn-working
	notify-send "VPN stopped"
}

working=$(<~/.config/hypr/src/vpn-working)
echo "$working"

if [ "$working" = "1" ]; then
	turn_off
else
	turn_on
fi

sh ~/.config/hypr/src/get-vpn-status.sh  # генерируем статус для waybar'а