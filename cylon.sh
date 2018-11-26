#!/bin/bash
# 0 GREEN, 1 YELLOW, 2 BLUE, 3 RED

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
