#!/bin/bash
source .var

x=$( printf "%x" $2 )

ipmitool -I lanplus -H $1 -U $USER -P $PASSWORD raw 0x30 0x30 0x02 0xff 0x$x

echo "Speed of $1 is set to $2"
