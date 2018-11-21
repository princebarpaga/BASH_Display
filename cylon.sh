#!/bin/bash
# 0 RED, 1 BLUE, 2 YELLOW, 3 GREEN

for value in {0..3}
do
        gpio mode $value out
done

while true
do
	gpio write 2 0
	gpio write 3 1
	sleep 0.25
	
	gpio write 3 0
	gpio write 2 1
	sleep 0.25

	gpio write 2 0
	gpio write 1 1
	sleep 0.25
	
	gpio write 1 0
	gpio write 0 1
	sleep 0.25

	gpio write 0 0
        gpio write 1 1
        sleep 0.25

        gpio write 1 0
        gpio write 2 1
        sleep 0.25
done

echo All done
