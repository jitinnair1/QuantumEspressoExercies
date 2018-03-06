#!/bin/bash
a=5
i=0
for i in `seq 1 10`;
do
	pro=$((`expr $a\*$i`))
	echo $pro
done