
if [ $# -eq 3 ]; then
	if [ $3 = "mul" ]; then
	      echo `expr $1 '*' $2`
      	else	      
		echo `expr $1 $3 $2`
	fi
else 
	echo u need to send 3 parameters. 	
fi


