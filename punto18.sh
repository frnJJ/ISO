#!/bin/bash
if [ $# -eq 1 ]; then 
	ok=1
	while [ $ok = 1 ]; do
		for user in $(who | cut -d ' ' -f 1); do
			if [ $user = $1 ]; then
				ok=0
			fi

		done
		sleep 10
		
	done
fi




