#!/bin/bash
# to be croned weekly
#0 0 * * 0

#check for folder existance and create if not
[ ! -d /home/$USER/Rapports/ ] && mkdir -p /home/$USER/Rapports/

# Get the date and format it approriately
now=$(date +%Y-%m-%d)

# Get the master volume Totral size and how much % is used
du=$(df -h | head -n 2 | tail -n 1 | awk -F " " '{print $2" "$5}')

#concatenate date and usefull data
output="$now $du"

#logging into a file
echo $output >> /home/$USER/Rapports/disk_usage.log
