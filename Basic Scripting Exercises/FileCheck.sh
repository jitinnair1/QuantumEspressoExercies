#!/bin/bash
# Script to check the existence of a file in a directory.
# If the file exists, then its contents are copied to another file. FILE="hello"
FILE="hello"
if [ -f $FILE ];
then
     echo "File exists!"
     cp $FILE new 
else
     echo "File does not exist!  Exiting the script now..."
fi