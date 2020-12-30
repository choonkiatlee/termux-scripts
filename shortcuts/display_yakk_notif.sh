#!/bin/bash
dir="$(dirname "$(readlink -f "$0")")"
if (( ${#} == 0 )) ; then
    while read -r line ; do
        if [[ "${line}" == *"Your mailroom name is: "* ]]; then
            echo "${line#"Your mailroom name is: "}"
            termux-notification --id "termux_yakk_mailroom_name_notif" \
                    --title "Yakk Running. Current maillroom name is: " \
                    --content "${line#"Your mailroom name is: "}" \
                    --priority high \
                    --sound \
                    --vibrate 500,1000 \
                    --on-delete "bash $dir/kill_ssh_process.sh" \
                    --button1 "Kill Mailroom" \
                    --button1-action "bash $dir/kill_ssh_process.sh; termux-notification-remove termux_yakk_mailroom_name_notif"
        fi
    done
else
    echo "${@}"
fi
