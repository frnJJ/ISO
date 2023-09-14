
select opc in Listar DondeEstoy QuienEsta 
do
	case $opc in
		"Listar")
			echo "contenido del directorio actual $(ls)"
			;;
		"DondeEstoy") 
		
			echo "el directorio actual es $(pwd)"
			;;
		"QuienEsta")
			echo "los usuarios actuales conectados son: $(w | )"
			;;

	esac
done


