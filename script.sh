#! /usr/bin/env bash

loops=0

while :
do
	loops=$((loops+1))
	./toRun.sh > result 2> error
	if [[ "$?" -ne 0 ]]; then
		cat result
		cat error
		echo "loops: $loops"
		exit 1
	fi
done
