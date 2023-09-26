#!/bin/bash


select opc in 16 17 18 'salir'
do
	case $opc in	
		
		16) echo reporte.txt
		;;
		17) echo ejercicio17
		;;
		18) echo cada10segundos
		;;
		'salir') echo saliendo...
			exit 0
	esac
done


