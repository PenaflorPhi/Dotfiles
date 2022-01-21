#!/bin/sh
#Volume is between 0 and 65536

if [ "$1" != "Spotify" ]
then
	if [ "$1" == "Firefox" ]
	then
		paplay ~/.config/dunst/sounds/Save_and_Load.ogg
	elif [ "$1" == "qBittorrent" ]
	then
		paplay --volume=38000 ~/.config/dunst/sounds/Coin.ogg
	elif [ "$1" == "flameshot" ]
	then
		paplay ~/.config/dunst/sounds/Cursor_Ready.ogg
	else
		paplay ~/.config/dunst/sounds/Cursor_Move.ogg
	fi
fi


