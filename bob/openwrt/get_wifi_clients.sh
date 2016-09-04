#!/bin/sh 

#Station 50:46:5d:7f:aa:d7 (on wlan0)

export PATH=/bin:/sbin:/usr/bin:/usr/sbin

#while read cmd; do

stations=`iw dev wlan0 station dump | grep '^Station' | cut -d' ' -f2`

for s in $stations; do

	inactive_time=`iw dev wlan0 station get $s | grep inactive | awk '{print $3}'`
	
	[ $inactive_time -gt 60000 ] && continue

	dhcp_lease="`grep $s /tmp/dhcp.leases`"
	if [ -z "$dhcp_lease" ]; then
		echo "- $s - - -"
	else
		echo "$dhcp_lease"
	fi
done

#done

