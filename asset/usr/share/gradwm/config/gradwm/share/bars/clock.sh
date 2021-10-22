#!/usr/bin/env bash


##
## $ man date
## * https://www.utf8icons.com/search?query=clock
##


interval=0

clock() {
	printf " $(date '+%a, %Y-%m-%d %H:%M:%S') "
}

while true; do

	interval=$((interval + 1))

	sleep 1 && xsetroot -name "$(clock)"
done
