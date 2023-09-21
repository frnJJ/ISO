#!/bin/bash

" ">reportes.txt
if [ $# -eq 1 ]; then
	for user in $(cat /etc/passwd | cut -d ':' -f 1); do
		homeu=$(cat /etc/passwd | grep $user | cut -d ':' -f 6)
		cant=$(find $homeu -name "*$1" | wc -l)
		echo "user= $user has= $cant" >> reportes.txt 
	done  	
fi


