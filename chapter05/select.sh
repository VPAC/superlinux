#!/bin/bash 
OPTIONS="Sedimentary Igneous Metamorphic Quit" 
select opt in $OPTIONS; do 
	if [ "$opt" = "Quit" ]; then 
		echo done 
	exit 
	elif [ "$opt" = "Sedimentary" ]; then 
	echo "Sedimentary rocks are formed by sedminentation of particles at or near the Earth's surface and within bodies of water." 
	elif [ "$opt" = "Igneous" ]; then 
	echo "Igneous rock forms through the cooling and solidification of magma or lava." 
	elif [ "$opt" = "Metamorphic" ]; then 
	echo "Metamorphic rocks are formed by subjecting any rock type -sedimentary rock, igneous rock or another older metamorphic rock - to different temperature and pressure conditions than those in which the original rock was formed." 
	else 
	echo "Select again; 1, 2, 3 or 4" 
	fi 
done 
