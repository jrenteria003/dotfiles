mate-settings-daemon &
mate-mouse-properties &
compton &
feh --bg-scale Pictures/linux-debian-wallpaper.jpg &

# Statusbar loop
while true; do
	xsetroot -name "$(hostname -I) $( date +"%F %R:%S" ) $(cat /sys/class/power_supply/BAT1/capacity) $(cat /sys/class/power_supply/BAT1/status)"
   	sleep 1s    # Update time every minute
done &

exec dwm
