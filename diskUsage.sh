#!/bin/bash
# to be croned every week
#check for folder existance
[ ! -d /home/$USER/Rapports/ ] && mkdir -p /home/$USER/Rapports/

now=$(date +%Y-%m-%d)
du=$(df -h | head -n 2 | tail -n 1 | awk -F " " '{print $2" "$5}')
output="$now $du"

echo $output >> /home/$USER/Rapports/disk_usage.log
