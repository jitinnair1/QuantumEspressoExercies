#!/bin/bash
# Script to demonstrate looping using for-loop.
# This involves copying the contents of one file into several files.
FILE="HelloWorld.sh"
if [ -f $FILE ];
then
	echo "File $FILE exists! Copying contents now..." 
	for i in 0 1 2 3
	do
		cp $FILE $FILE.$i 
	done
else
	echo "File $FILE does not exist!"
fi