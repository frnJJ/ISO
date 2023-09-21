
for user in $(cat /etc/passwd | cut -d ":" -f 1); do
	cant=$(find * -user $user | wc -l ) 
	echo "$user has $cant files." >> prof.txt
done


