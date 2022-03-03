#!/bin/bash
# to be croned every week
df -h | head -n 2 | tail -n 1 | awk -F " " '{print $2" "$5}' >> /home/ubuntu/Rapports/disk_usage.log
