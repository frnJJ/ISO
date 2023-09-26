#!/bin/bash

vec=(34)


function push (){ 
	vec+=($valor1)
	return 0
}

function pop (){	
	i=`expr ${#vec[@]} - 1`
	echo valor de i= $i
	if [ $i -gt -1 ]; then
		unset vec[i] 
		return 0 
	fi

}

function length (){
 	echo ${#vec[@]} 	
	return ${#vec[@]} 
}

function prin (){
	
	echo ${vec[@]}

}

select op in "pus" "pop" "length" "print"
do
	case $op in
		pus)    read valor1
			push
			echo $?
		;;
	 	pop)  pop
		      echo $?
	     	;;
  		length) length
			echo $?
		;;
		print) 
			prin
	esac
done
exit 0

