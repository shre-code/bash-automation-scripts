#!/bin/bash

THRESHOLD=80

USAGE=$(df / | grep / | awk '{print $5}' | sed 's/%//')

echo "Disk usage: $USAGE%"

if [ $USAGE -gt $THRESHOLD ]
then
    echo "WARNING: Disk usage exceeded threshold!"
else
    echo "Disk usage is normal."
fi
