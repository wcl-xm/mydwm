#!/bin/zsh

print_date(){
	date '+%Y-%m-%d %H:%M:%S'
}

dwm_alsa () {
    VOL=$(amixer get Master | tail -n1 | sed -r "s/.*\[(.*)%\].*/\1/")
	VOLSTAT=$(amixer get Master | tail -n1 | sed -r "s/.*\[(.*)%\] \[(.*)\]/\2/")
    printf "%s" "$SEP1"
    if [ "$VOL" -eq 0 ] || [ "$VOLSTAT" = "off" ]; then
        printf "ﱝ"
    else
        printf " %s%%" "$VOL"
    fi
    printf "%s\n" "$SEP2"
}

xsetroot -name "| $(dwm_alsa) | $(print_date) |"

exit 0
