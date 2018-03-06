#!/bin/bash
#Script to count no. of non-empty lines in a file 
fname="HelloWorld.sh"
i=0 #Counter initialization
if [ -s $fname ]; then
	echo File with the name $fname exists
	while read line
	do
		i=`expr $i + 1` # Incrementing the line no. 
		if [ -z "$line" ]; then
			i=`expr $i - 1` # Do not count the empty line. 
		fi
	done < $fname
	echo The no. of non-empty lines in the file $fname = $i
else
	echo File $fname does not exist!!
fi