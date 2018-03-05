#!/bin/bash
for i in `seq 1 10`
do
	arrstore[$i]=`grep "$i" check | awk '{printf "%s\n",$2}'`
done
echo ${arrstore[8]}