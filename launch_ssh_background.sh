#!/bin/bash

(sshd  2>/dev/null  && echo "Started openssh server")  || (dropbear && echo "Started dropbear server")   # Start SSH daemon

bash display_ip_addr_notif.sh