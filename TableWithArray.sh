#!/bin/bash
a=5
i=0
arr_val=(1 2 3 4 5 6 7 8 9 10)
for i in `seq 0 9`;
do
	pro=$((`expr ${arr_val[$i]}\*$a`)) #Product evaluated using array
	echo $pro
done