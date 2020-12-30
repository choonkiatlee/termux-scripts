#!/bin/bash
# Print only our current ip address
IP_ADDR=`ip -4 addr show wlan0 | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*'`
dir="$(dirname "$(readlink -f "$0")")"
termux-notification --id "termux_ip_addr_notif" \
                    --title "SSH Server Running. Current IP Address: " \
                    --content $IP_ADDR \
                    --priority high \
                    --sound \
                    --vibrate 500,1000 \
                    --on-delete "bash $dir/kill_ssh_process.sh" \
                    --button1 "Kill SSH Connection" \
                    --button1-action "bash $dir/kill_ssh_process.sh; termux-notification-remove termux_ip_addr_notif"
                    # --action "termux-toast $IP_ADDR" 
