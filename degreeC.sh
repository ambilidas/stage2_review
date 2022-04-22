#!/bin/bash

echo "enter 0 for converting to Farenheat $ enter 1 for converting to degreeC";
read a;
echo "enter temp to be converted:";
read value;


function conversion(){

case $a in

	0)
		if [[ $value -ge 32 && $value -le 212 ]]
		then
 
			degF=$(echo $value 1.8 32 | awk '{printf "%f" , $1*$2+$3}');
			echo "DegC to DegF : "$degF;
		else
			echo "enter a valid input";
		fi
	;;

	1)
		if [[ $value -ge 32 && $value -le 212 ]]
		then
			degC=$(echo $value 32 0.55 | awk '{printf "%f" ,($1-$2)*$3}');
			echo "DegF to DegC :" $degC;
		else
			echo "enter a valid input";
		fi
	;;	

	*)
		echo "enter valid input";
	;;
esac

}

conversion $value;
