#!/bin/bash
source .var

read -p "Enter IDRAC IP adress: " ip

read -p "Enter fan speed: " speed

x=$( printf "%x" $speed )

ipmitool -I lanplus -H $ip -U $USER -P $PASSWORD raw 0x30 0x30 0x02 0xff 0x$x

echo "Speed of $ip is set to $speed"
