#!/bin/sh


# schema:
# CREATE TABLE log (timestamp integer, connected_at integer, mac text, ip text, hostname text);

cd `dirname "$0"`

clients=`ssh -i ./ssh/id_rsa_get_wifi root@192.168.128.2 /root/bin/get_wifi_clients.sh`
# 1452157745 50:46:5d:7f:aa:d7 192.168.100.79 android-b99837e65ed1ab0 01:50:46:5d:7f:aa:d7

if [ $? != 0 ]; then
	echo "Client list retrieving failed" >&2
	exit 1
fi

if [ -z "$clients" ]; then
	exit 0
fi

#echo "$clients" | awk "{print \"INSERT INTO log (timestamp, connected_at, mac, ip, hostname) VALUES (`date +%s`, \"\$1\", '\"\$2\"', '\"\$3\"', '\"\$4\"');\"}" | sqlite3 wifi_clients.sqlite
echo "$clients" | awk "{print \"INSERT INTO log (timestamp, connected_at, mac, ip, hostname) VALUES (`date +%s`, NULL, '\"\$2\"', '\"\$3\"', '\"\$4\"');\"}" | sqlite3 wifi_clients.sqlite

echo "$clients" | while read timestamp mac ip host id; do
	user=`sqlite3 wifi_clients.sqlite "SELECT nick FROM people,devices WHERE devices.people_id=people.id and lower(devices.mac)=lower('$mac');"`
#	if [ -n "$user" ]; then
#		echo $user $mac
#	fi
	curl "http://hackerspace.by/events/add?name=bob&event_type=presence&password=XXXXXXXXX&value=$user" > /dev/null 2>&1
done
