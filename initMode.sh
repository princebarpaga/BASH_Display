#!/bin/bash
# 0 RED, 1 BLUE, 2 YELLOW, 3 GREEN

for value in {0..3}
do
	echo $value
	gpio mode $value out
	gpio write $value 0
done


echo All done
