#!/bin/bash

for var in {0..3}
do
	gpio mode $var out
done

for var in {0..15}
do
	./setbits.sh "$var"
	sleep 1
done

echo All done
