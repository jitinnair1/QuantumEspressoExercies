#!/bin/bash
arrval=(1 1 0 0 0 0 0 0 0 0)
for i in `seq 2 9`
do
	arrval[$i]=$(( ${arrval[$(( $i - 1 ))]} + ${arrval[$(( $i - 2 ))]} ))
done

for i in `seq 0 9`
do
	echo ${arrval[$i]}
done
