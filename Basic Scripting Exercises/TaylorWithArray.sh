#!/bin/bash

#Function to get factorial
factorial () { 				
    if (($1 == 0))
    then
        echo 1
        return
    else
        echo $(( $( factorial $(($1 - 1)) ) * $1 ))
    fi
}

#Function to get exponent
exponent () {				
	echo "scale=16; $1 ^ $2" | bc
		
}

theta=0.523599 #in radians

#Array for sign of alternating terms
signarray=(1 -1 1 -1 1)		

#Calculation of cos(x) terms
icos=(0 2 4 6 8)
for i in 0 1 2 3 4
do
	a=$(exponent $theta ${icos[$i]})
	b=$(factorial ${icos[$i]})
	cosarray[$i]=$(echo "scale=16; $a / $b * ${signarray[$i]}" | bc)
done

#Calculation of sin(x) terms
isin=(1 3 5 7 9)
i=0
while [[ $i -lt 5 ]]
do
	a=$(exponent $theta ${isin[$i]})
	b=$(factorial ${isin[$i]})
	sinarray[$i]=$(echo "scale=16; $a / $b * ${signarray[$i]}" | bc)
  i=$(( $i + 1 ))
done


#Sum of sin(x) terms
sinx=0
for i in ${sinarray[*]}; 
do
  sinx=$( echo "$sinx + $i" | bc -l )
done
echo "Sin(x): $sinx"

#Sum of cos(x) terms
cosx=0
for i in ${cosarray[*]}; 
do
  cosx=$( echo "$cosx + $i" | bc -l )
done
echo "Cos(x): $cosx"
