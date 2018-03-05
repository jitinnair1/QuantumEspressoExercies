#!/bin/bash
# Script to evaluate integer and real expressions. 
a=2; b=3; c=7
i=`expr $a + 2` # Integer expression
j=`expr $b + $c` # Integer expression
k=`echo "scale=16;$c/$b" | bc` # Real expression 
echo i=$i, j=$j, k=$k