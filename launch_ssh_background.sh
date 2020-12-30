#!/bin/bash

(sshd  2>/dev/null  && echo "Started openssh server")  || (dropbear && echo "Started dropbear server")   # Start SSH daemon
dir="$(dirname "$(readlink -f "$0")")"
bash $dir/display_ip_addr_notif.sh