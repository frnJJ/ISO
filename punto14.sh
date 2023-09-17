

if [ $# -eq 3 ]; then
	if [ -d $1 ]; then
		cd $1'/'
		if [ $2 = '-b' ]; then
			for i in $(ls); do
				new=$i
				new+=$3
				echo $new
				mv $i $new
			done
		else
			if [ $2 = '-a' ]; then
				for i in $(ls); do
					new=$3
					new+=$i
					mv $i $new
				done
			fi
		fi
	else
		echo 'that directory doesn t exist' 
	fi
fi
exit 1


