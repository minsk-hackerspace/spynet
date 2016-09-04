#!/bin/sh

cd `dirname "$0"`

while true; do
	./retrieve_wifi_clients.sh
	sleep 60
done

