#!/bin/bash

for item in ls; do
	word=$($item | tr 'a' ' ' | tr 'A' ' ')
	cadena+=$word
done 
echo ${cadena^^}


echo $(ls | tr '[:lower:][:upper:]' '[:upper:][:lower:]' | tr -d 'aA')

